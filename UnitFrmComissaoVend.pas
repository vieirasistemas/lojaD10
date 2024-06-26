unit UnitFrmComissaoVend;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, QRCtrls, QuickRpt, ExtCtrls, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, jpeg;

type
  TFrmComissaoVend = class(TForm)
    qrMovEstoque: TZQuery;
    qrMovEstoqueqtd: TFloatField;
    qrMovEstoqueVlrTotal: TFloatField;
    qrMovEstoquenome: TStringField;
    qrMovEstoquenomefornecedor: TStringField;
    ZQuery1: TZQuery;
    ZQuery1nome: TStringField;
    ZQuery1ValorTotal: TFloatField;
    QuickRep2: TQuickRep;
    QRGroup1: TQRGroup;
    qr1: TQRDBText;
    QRLabel6: TQRLabel;
    QRBand1: TQRBand;
    QRExpr10: TQRExpr;
    QRExpr11: TQRExpr;
    QRExpr14: TQRExpr;
    QRExpr16: TQRExpr;
    QRBand2: TQRBand;
    QRLabel10: TQRLabel;
    qrEn3: TQRExpr;
    qrSa3: TQRExpr;
    QRExpr17: TQRExpr;
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
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel33: TQRLabel;
    QRBand4: TQRBand;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRBand5: TQRBand;
    QRLabel29: TQRLabel;
    QRExpr28: TQRExpr;
    QRExpr18: TQRExpr;
    QRExpr19: TQRExpr;
    QuickRep1: TQuickRep;
    PageFooterBand1: TQRBand;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRLabel9: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    DetailBand1: TQRBand;
    QRExpr9: TQRExpr;
    qrcliente: TQRDBText;
    QRExpr4: TQRExpr;
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
    QRExpr5: TQRExpr;
    QRLabel1: TQRLabel;
    Label4: TLabel;
    Label5: TLabel;
    lbfornecedor: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    bt1: TBitBtn;
    bt2: TBitBtn;
    medatainicial: TMaskEdit;
    medatafinal: TMaskEdit;
    edfornecedor: TEdit;
    GroupBox2: TGroupBox;
    rb1: TRadioButton;
    rb2: TRadioButton;
    ZQuery1ValorCom: TFloatField;
    qrMovEstoquevlrcom: TFloatField;
    procedure bt2Click(Sender: TObject);
    procedure medatainicialExit(Sender: TObject);
    procedure medatafinalExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure bt1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmComissaoVend: TFrmComissaoVend;
  vlrvenda,com,vlrcomissao:double;

implementation

uses Unitdm;

{$R *.dfm}

procedure TFrmComissaoVend.bt2Click(Sender: TObject);
begin
  close;
end;

procedure TFrmComissaoVend.medatainicialExit(Sender: TObject);
begin
        if medatainicial.text<>'  /  /    ' then
        begin
        Try
           StrToDate(medatainicial.Text) ;
        Except
        begin
           application.MessageBox('Data Inv�lida!','Aten��o',mb_Ok+mb_iconerror);
           medatainicial.setfocus;
        end;
        end;
        end;
end;

procedure TFrmComissaoVend.medatafinalExit(Sender: TObject);
begin
        if MeDataFinal.text<>'  /  /    ' then
        begin
        Try
           StrToDate(MeDataFinal.Text) ;
           If StrToDate(MeDataInicial.Text) > StrToDate(MeDataFinal.Text) then
              Begin
                 MessageBox(Handle, 'Data inferior � data inicial de pesquisa!!', 'Aten��o', mb_IconWarning or mb_Ok);
                 medatafinal.text:='';
                 medatainicial.text:='';
                 MeDatainicial.SetFocus;
              End;
        Except
        begin
           application.MessageBox('Data Inv�lida!','Aten��o',mb_Ok+mb_iconerror);
           MeDataFinal.setfocus;
        end;
        end;
        end;
end;

procedure TFrmComissaoVend.FormKeyPress(Sender: TObject; var Key: Char);
begin
        if key=#13 then
        begin
           SelectNext(activecontrol,True,True);
           key:=#0;
        end;
end;

procedure TFrmComissaoVend.FormShow(Sender: TObject);
begin
{
  qratualizar.Close;
  qratualizar.SQL.Clear;
  qratualizar.SQL.Add('update fornecedores set');
  qratualizar.SQL.Add('DtDemissao = null');
  qratualizar.sql.add('where DtDemissao = '+chr(39)+'0000-00-00'+chr(39));
  qratualizar.ExecSQL;
}
end;

procedure TFrmComissaoVend.bt1Click(Sender: TObject);
var
  qry : TZQuery;
begin
  if
    (medatainicial.Text='  /  /    ') and
    (medatafinal.Text='  /  /    ')
  then
  begin
    application.MessageBox('Per�odo Inv�lido','Aten��o',mb_ok+mb_iconinformation);
    medatainicial.SetFocus;
    Exit;
  end;

  qry              :=  TZQuery.Create(nil);
  qry.Connection   :=  dm.ZConnection1;
  qry.Close;
  qry.SQL.Clear;
  qry.SQL.Add('update movestoque set');
  qry.SQL.Add('vlrcom = VlrTotal*0.015');
  qry.SQL.Add('where vlrcom = 0 ');
  qry.SQL.Add('and (tipomov= '+chr(39)+'SV'+chr(39)+')');
  qry.SQL.Add('and (data between '+chr(39)+
  copy(medatainicial.text,7,4)+'/'+copy(medatainicial.text,4,2)+'/'+
  copy(medatainicial.text,1,2)+chr(39)+' and '+chr(39)+
  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
  copy(MeDataFinal.text,1,2)+chr(39)+')');
  qry.ExecSQL;
  qry.Free;

  dm.parametros.Close;
  dm.parametros.Open;

  if rb2.Checked then
     begin
        qrtitulo2.Caption:='Comiss�o dos Vendedores em '+medatainicial.text+' � '+medatafinal.text;
        qrMovEstoque.Close;
        qrMovEstoque.SQL.Clear;
        qrMovEstoque.SQL.Add('select F.apelido as nomefornecedor,P.nome,sum(E.qtd) as qtd,sum(E.VlrTotal) as VlrTotal,sum(E.vlrcom) as vlrcom');
        qrMovEstoque.SQL.Add('from movestoque E, produtos P, fornecedores F');
        qrMovEstoque.SQL.Add('where (E.vendedor=F.codigo) and (E.produto=P.codigo)');
        qrMovEstoque.SQL.Add('and (E.tipomov= '+chr(39)+'SV'+chr(39)+')');
        qrMovEstoque.SQL.Add('and (E.data between '+chr(39)+
        copy(medatainicial.text,7,4)+'/'+copy(medatainicial.text,4,2)+'/'+
        copy(medatainicial.text,1,2)+chr(39)+' and '+chr(39)+
        copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
        copy(MeDataFinal.text,1,2)+chr(39)+')');
        if edfornecedor.Text<>'' then
           begin
             qrMovEstoque.sql.add('and (E.vendedor = '+chr(39)+edfornecedor.Text+chr(39)+')');
             qrtitulo2.Caption:=qrtitulo2.Caption+' - Vendedor(a): '+lbfornecedor.Caption;
           end;
        qrMovEstoque.SQL.Add('GROUP BY F.apelido,P.nome');
        qrMovEstoque.SQL.Add('order by F.apelido,P.nome');
        qrMovEstoque.Open;
        QuickRep2.Preview;
     end
     else
     begin
        qrtitulo.Caption:='Comiss�o dos Vendedores em '+medatainicial.text+' � '+medatafinal.text;
        ZQuery1.Close;
        ZQuery1.SQL.Clear;
        ZQuery1.SQL.Add('select F.apelido as nome,sum(E.VlrTotal) as ValorTotal, sum(E.vlrcom) as ValorCom');
        ZQuery1.SQL.Add('from movestoque E, fornecedores F');
        ZQuery1.SQL.Add('where (E.vendedor=F.codigo)');
        ZQuery1.SQL.Add('and (E.tipomov= '+chr(39)+'SV'+chr(39)+')');
        ZQuery1.SQL.Add('and (E.data between '+chr(39)+
        copy(medatainicial.text,7,4)+'/'+copy(medatainicial.text,4,2)+'/'+
        copy(medatainicial.text,1,2)+chr(39)+' and '+chr(39)+
        copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
        copy(MeDataFinal.text,1,2)+chr(39)+')');
        if edfornecedor.Text<>'' then
           begin
             ZQuery1.sql.add('and (E.vendedor = '+chr(39)+edfornecedor.Text+chr(39)+')');
             qrtitulo.Caption:=qrtitulo.Caption+' - Vendedor(a): '+lbfornecedor.Caption;
           end;
        ZQuery1.SQL.Add('GROUP BY F.apelido');
        ZQuery1.SQL.Add('order by F.apelido');
        ZQuery1.Open;
        QuickRep1.Preview;
     end;
end;

end.
