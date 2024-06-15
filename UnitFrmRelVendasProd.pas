unit UnitFrmRelVendasProd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons, QRCtrls, QuickRpt, ExtCtrls, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFrmRelVendasProd = class(TForm)
    Label4: TLabel;
    Label5: TLabel;
    bt1: TBitBtn;
    bt2: TBitBtn;
    medatainicial: TMaskEdit;
    medatafinal: TMaskEdit;
    edcliente: TEdit;
    lbfavorecido: TLabel;
    Label8: TLabel;
    Label1: TLabel;
    qrMovEstoque: TZQuery;
    qrMovEstoqueqtd: TFloatField;
    qrMovEstoqueVlrTotal: TFloatField;
    qrMovEstoquenome: TStringField;
    QuickRep1: TQuickRep;
    PageFooterBand1: TQRBand;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRLabel9: TQRLabel;
    QRDBText1: TQRDBText;
    DetailBand1: TQRBand;
    QRExpr9: TQRExpr;
    qrcliente: TQRDBText;
    PageHeaderBand1: TQRBand;
    QRLabel22: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel23: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel24: TQRLabel;
    QRSysData3: TQRSysData;
    qrtitulo: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    SummaryBand1: TQRBand;
    QRExpr12: TQRExpr;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRExpr1: TQRExpr;
    qrMovEstoquecompra: TFloatField;
    QRLabel5: TQRLabel;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    lbfornecedor: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    edfornecedor: TEdit;
    GroupBox2: TGroupBox;
    rb1: TRadioButton;
    rb2: TRadioButton;
    QuickRep2: TQuickRep;
    QRGroup1: TQRGroup;
    qr1: TQRDBText;
    QRLabel6: TQRLabel;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRLabel10: TQRLabel;
    qrEn3: TQRExpr;
    qrSa3: TQRExpr;
    QRBand3: TQRBand;
    QRShape1: TQRShape;
    QRLabel15: TQRLabel;
    qrtitulo2: TQRLabel;
    QRLabel21: TQRLabel;
    QRSysData4: TQRSysData;
    QRSysData5: TQRSysData;
    QRSysData6: TQRSysData;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRBand4: TQRBand;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRBand5: TQRBand;
    QRLabel29: TQRLabel;
    QRExpr28: TQRExpr;
    QRExpr18: TQRExpr;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    qrMovEstoquenomefornecedor: TStringField;
    QRExpr10: TQRExpr;
    QRExpr11: TQRExpr;
    QRExpr14: TQRExpr;
    QRExpr15: TQRExpr;
    QRExpr16: TQRExpr;
    QRExpr17: TQRExpr;
    QRExpr19: TQRExpr;
    ZQuery1: TZQuery;
    ZQuery1nome: TStringField;
    ZQuery1ValorTotal: TFloatField;
    ZQuery1VlrCusto: TFloatField;
    QRLabel1: TQRLabel;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    procedure bt2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edclienteExit(Sender: TObject);
    procedure medatainicialExit(Sender: TObject);
    procedure medatafinalExit(Sender: TObject);
    procedure bt1Click(Sender: TObject);
    procedure edfornecedorExit(Sender: TObject);
    procedure edfornecedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelVendasProd: TFrmRelVendasProd;

implementation

uses Unitdm, UnitFrmCadFornecedores;

{$R *.dfm}

function AnoBiSexto(Ayear: Integer): Boolean;
begin
// Verifica se o ano é Bi-Sexto
Result := (AYear mod 4 = 0) and ((AYear mod 100 <> 0) or
(AYear mod 400 = 0));
end;

function DiasPorMes(Ayear, AMonth: Integer): Integer;
const DaysInMonth: array[1..12] of Integer = (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
begin
Result := DaysInMonth[AMonth];
if (AMonth = 2) and AnoBiSexto(AYear) then
Inc(Result);
end;

procedure TFrmRelVendasProd.bt2Click(Sender: TObject);
begin
  close;
end;

procedure TFrmRelVendasProd.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
     SelectNext(activecontrol,True,True);
     key:=#0;
  end;
end;

procedure TFrmRelVendasProd.edclienteExit(Sender: TObject);
begin
  if edcliente.Text<>'' then
     begin
        dm.Clientes.close;
        dm.Clientes.sql.clear;
        dm.Clientes.sql.add('select * from clientes');
        dm.Clientes.sql.add('where codigo = '+edcliente.text);
        dm.Clientes.open;
        if dm.Clientes.RecordCount<1 then
           begin
             application.MessageBox('Cliente não Localizado','Atenção',mb_ok+mb_iconinformation);
             edcliente.Text:='';
             lbfavorecido.Caption:='';
             edcliente.SetFocus;
           end
           else
             lbfavorecido.Caption:=dm.Clientesnome.value;
     end;
end;

procedure TFrmRelVendasProd.medatainicialExit(Sender: TObject);
begin
  if medatainicial.text<>'  /  /    ' then
  begin
  Try
     StrToDate(medatainicial.Text) ;
  Except
  begin
     application.MessageBox('Data Inválida!','Atenção',mb_Ok+mb_iconerror);
     medatainicial.setfocus;
  end;
  end;
  end;
end;

procedure TFrmRelVendasProd.medatafinalExit(Sender: TObject);
begin
  if MeDataFinal.text<>'  /  /    ' then
  begin
  Try
     StrToDate(MeDataFinal.Text) ;
     If StrToDate(MeDataInicial.Text) > StrToDate(MeDataFinal.Text) then
        Begin
           MessageBox(Handle, 'Data inferior à data inicial de pesquisa!!', 'Atenção', mb_IconWarning or mb_Ok);
           medatafinal.text:='';
           medatainicial.text:='';
           MeDatainicial.SetFocus;
        End;
  Except
  begin
     application.MessageBox('Data Inválida!','Atenção',mb_Ok+mb_iconerror);
     MeDataFinal.setfocus;
  end;
  end;
  end;
end;

procedure TFrmRelVendasProd.bt1Click(Sender: TObject);
begin
  if
    (medatainicial.Text='  /  /    ') and
    (medatafinal.Text='  /  /    ')
  then
  begin
    application.MessageBox('Período Inválido','Atenção',mb_ok+mb_iconinformation);
    medatainicial.SetFocus;
    Exit;
  end;

  dm.parametros.Close;
  dm.parametros.Open;

  if rb2.Checked then
     begin
        qrtitulo2.Caption:='Relatório de Venda de Produtos em '+medatainicial.text+' à '+medatafinal.text;
        qrMovEstoque.Close;
        qrMovEstoque.SQL.Clear;
        qrMovEstoque.SQL.Add('select F.nome as nomefornecedor,P.nome,sum(E.qtd) as qtd,sum(E.VlrTotal) as VlrTotal,sum(E.qtd*P.compra) as compra');
        qrMovEstoque.SQL.Add('from movestoque E, produtos P, fornecedores F');
        qrMovEstoque.SQL.Add('where (E.produto=P.codigo) and (P.fornecedor=F.codigo)');
        qrMovEstoque.SQL.Add('and (E.tipomov= '+chr(39)+'SV'+chr(39)+')');
        qrMovEstoque.SQL.Add('and (E.data between '+chr(39)+
        copy(medatainicial.text,7,4)+'/'+copy(medatainicial.text,4,2)+'/'+
        copy(medatainicial.text,1,2)+chr(39)+' and '+chr(39)+
        copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
        copy(MeDataFinal.text,1,2)+chr(39)+')');
        if edcliente.Text<>'' then
           begin
             qrMovEstoque.sql.add('and (E.favorecido = '+chr(39)+edcliente.Text+chr(39)+')');
             qrtitulo2.Caption:=qrtitulo2.Caption+' - Cliente: '+lbfavorecido.Caption;
           end;
        if edfornecedor.Text<>'' then
           begin
             qrMovEstoque.sql.add('and (P.fornecedor = '+chr(39)+edfornecedor.Text+chr(39)+')');
             qrtitulo2.Caption:=qrtitulo2.Caption+' - Fornecedor: '+lbfornecedor.Caption;
           end;
        qrMovEstoque.SQL.Add('GROUP BY F.nome,P.nome');
        qrMovEstoque.SQL.Add('order by F.nome,P.nome');
        qrMovEstoque.Open;
        QuickRep2.Preview;
     end
     else
     begin
        qrtitulo.Caption:='Relatório de Venda de Produtos em '+medatainicial.text+' à '+medatafinal.text;
        ZQuery1.Close;
        ZQuery1.SQL.Clear;
        ZQuery1.SQL.Add('select F.nome,sum(E.VlrTotal) as ValorTotal, sum(E.qtd*P.compra) as VlrCusto');
        ZQuery1.SQL.Add('from movestoque E, produtos P, fornecedores F');
        ZQuery1.SQL.Add('where (E.produto=P.codigo) and (P.fornecedor=F.codigo)');
        ZQuery1.SQL.Add('and (E.tipomov= '+chr(39)+'SV'+chr(39)+')');
        ZQuery1.SQL.Add('and (E.data between '+chr(39)+
        copy(medatainicial.text,7,4)+'/'+copy(medatainicial.text,4,2)+'/'+
        copy(medatainicial.text,1,2)+chr(39)+' and '+chr(39)+
        copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
        copy(MeDataFinal.text,1,2)+chr(39)+')');
        if edcliente.Text<>'' then
           begin
             ZQuery1.sql.add('and (E.favorecido = '+chr(39)+edcliente.Text+chr(39)+')');
             qrtitulo.Caption:=qrtitulo.Caption+' - Cliente: '+lbfavorecido.Caption;
           end;
        if edfornecedor.Text<>'' then
           begin
             ZQuery1.sql.add('and (P.fornecedor = '+chr(39)+edfornecedor.Text+chr(39)+')');
             qrtitulo.Caption:=qrtitulo.Caption+' - Fornecedor: '+lbfornecedor.Caption;
           end;
        ZQuery1.SQL.Add('GROUP BY F.nome');
        ZQuery1.SQL.Add('order by F.nome');
        ZQuery1.Open;
        QuickRep1.Preview;
     end;
end;

procedure TFrmRelVendasProd.edfornecedorExit(Sender: TObject);
begin
  if edfornecedor.Text<>'' then
     begin
        dm.fornecedores.close;
        dm.fornecedores.sql.clear;
        dm.fornecedores.sql.add('select * from fornecedores');
        dm.fornecedores.sql.add('where codigo = '+edfornecedor.text);
        dm.fornecedores.open;
        if dm.fornecedores.RecordCount<1 then
           begin
             application.MessageBox('Fornecedor não Localizado','Atenção',mb_ok+mb_iconinformation);
             edfornecedor.SetFocus;
           end
           else
             lbfornecedor.Caption:=dm.fornecedoresnome.value;
     end;
end;

procedure TFrmRelVendasProd.edfornecedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key=vk_f10 then
     begin
       try
         Application.CreateForm(TFrmCadfornecedores, FrmCadfornecedores);
         FrmCadfornecedores.showmodal;
       finally
         FrmCadfornecedores.Release;
         FrmCadfornecedores:=nil;
       end;
     end;
end;

procedure TFrmRelVendasProd.FormShow(Sender: TObject);
var
dia:string;
begin
  medatainicial.Text:=DateToStr(date);
  dia:=IntToStr(DiasPorMes(StrToInt(copy(medatainicial.text,7,4)), StrToInt(copy(medatainicial.text,4,2))));
  medatafinal.Text:=dia+'/'+copy(medatainicial.text,4,2)+'/'+copy(medatainicial.text,7,4);
  medatainicial.Text:='01/'+copy(medatainicial.text,4,2)+'/'+copy(medatainicial.text,7,4);
end;

end.
