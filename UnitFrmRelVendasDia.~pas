unit UnitFrmRelVendasDia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, QRCtrls, QuickRpt, ExtCtrls;

type
  TFrmRelVendasDia = class(TForm)
    Label4: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    medatainicial: TMaskEdit;
    medatafinal: TMaskEdit;
    bt1: TBitBtn;
    bt2: TBitBtn;
    cbempresa: TComboBox;
    ZQuery1: TZQuery;
    ZQuery1Bruto: TFloatField;
    ZQuery1Desconto: TFloatField;
    ZQuery1Total: TFloatField;
    QuickRep1: TQuickRep;
    PageFooterBand1: TQRBand;
    QRLabel25: TQRLabel;
    QRLabel2: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRLabel5: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel10: TQRLabel;
    DetailBand1: TQRBand;
    QRExpr11: TQRExpr;
    QRExpr12: TQRExpr;
    QRExpr13: TQRExpr;
    QRExpr14: TQRExpr;
    PageHeaderBand1: TQRBand;
    QRLabel22: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel23: TQRLabel;
    QRSysData3: TQRSysData;
    QRLabel6: TQRLabel;
    QRSysData4: TQRSysData;
    qrtitulo: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    SummaryBand1: TQRBand;
    QRLabel8: TQRLabel;
    QRExpr15: TQRExpr;
    QRExpr16: TQRExpr;
    QRExpr17: TQRExpr;
    ZQuery1data: TDateField;
    lbOperador: TLabel;
    cboperador: TComboBox;
    procedure medatainicialExit(Sender: TObject);
    procedure medatafinalExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure bt2Click(Sender: TObject);
    procedure cbempresaExit(Sender: TObject);
    procedure bt1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelVendasDia: TFrmRelVendasDia;

implementation

uses Unitdm;

{$R *.dfm}

procedure TFrmRelVendasDia.medatainicialExit(Sender: TObject);
begin
        if MeDataInicial.text<>'  /  /    ' then
        begin
        Try
           StrToDate(MeDataInicial.Text) ;
        Except
        begin
           application.MessageBox('Data Inválida!','Atenção',mb_Ok+mb_iconerror);
           MeDataInicial.setfocus;
        end;
        end;
        end;
end;

procedure TFrmRelVendasDia.medatafinalExit(Sender: TObject);
begin
        if MeDataFinal.text<>'  /  /    ' then
        begin
        Try
           StrToDate(MeDataFinal.Text) ;
           If StrToDate(MeDataInicial.Text) > StrToDate(MeDataFinal.Text) then
              Begin
                 MessageBox(Handle, 'Data inferior à data inicial de pesquisa!!', 'Atenção', mb_IconWarning or mb_Ok);
                 MeDataFinal.SetFocus;
              End;
        Except
        begin
           application.MessageBox('Data Inválida!','Atenção',mb_Ok+mb_iconerror);
           MeDataFinal.setfocus;
        end;
        end;
        end;
end;

procedure TFrmRelVendasDia.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
     SelectNext(activecontrol,True,True);
     key:=#0;
  end;
end;

procedure TFrmRelVendasDia.FormShow(Sender: TObject);
begin
  dm.fornecedores.close;
  dm.fornecedores.sql.clear;
  dm.fornecedores.sql.add('select * from fornecedores');
  dm.fornecedores.sql.add('where funcao = '+chr(39)+'VENDEDOR'+chr(39));
  dm.fornecedores.sql.add('order by nome');
  dm.fornecedores.open;
  cboperador.Items.Clear;
  while not dm.fornecedores.Eof do
        begin
          cboperador.Items.Add(dm.fornecedoresapelido.Value);
          dm.fornecedores.Next;
        end;

  dm.empresas.Close;
  dm.empresas.Open;
  cbempresa.Items.Clear;
  while not dm.empresas.Eof do
        begin
          cbempresa.Items.Add(dm.empresasNome.Value);
          dm.empresas.Next;
        end;
end;

procedure TFrmRelVendasDia.bt2Click(Sender: TObject);
begin
  close;
end;

procedure TFrmRelVendasDia.cbempresaExit(Sender: TObject);
begin
  if cbempresa.Text <> '' then
     begin
        dm.empresas.open;
        if not(dm.empresas.locate('nome', cbempresa.text, [LoCaseInsensitive])) then
        begin
          Showmessage('Empresa inválida!');
          cbempresa.SetFocus;
        end;
     end;
end;

procedure TFrmRelVendasDia.bt1Click(Sender: TObject);
begin
  dm.parametros.close;
  dm.parametros.sql.clear;
  dm.parametros.sql.add('select * from parametros');
  dm.parametros.sql.add('where fantasia like '+chr(39)+'%CENTRO DE DISTRIBUIÇAO%'+chr(39));
  dm.parametros.open;

  qrtitulo.Caption:='Vendas do Período de '+medatainicial.text+' à '+medatafinal.text;
  ZQuery1.Close;
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select data,sum(subtotal) as Bruto,sum(desconto) as Desconto,sum(total) as Total from venda');
  ZQuery1.SQL.Add('where (data between '+chr(39)+
  copy(medatainicial.text,7,4)+'/'+copy(medatainicial.text,4,2)+'/'+
  copy(medatainicial.text,1,2)+chr(39)+' and '+chr(39)+
  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
  copy(MeDataFinal.text,1,2)+chr(39)+')');
  ZQuery1.SQL.Add('and (formapagto<> '+chr(39)+'PC'+chr(39)+')');
  ZQuery1.SQL.Add('and (fechada= '+chr(39)+'S'+chr(39)+')');
  if cboperador.Text<>'' then
     begin
       dm.fornecedores.close;
       dm.fornecedores.sql.clear;
       dm.fornecedores.sql.add('select * from fornecedores');
       dm.fornecedores.sql.add('where apelido = '+chr(39)+cboperador.Text+chr(39));
       dm.fornecedores.open;
       ZQuery1.SQL.Add('and (vendedor = '+IntToStr(dm.fornecedorescodigo.Value)+')');
       qrtitulo.Caption:=qrtitulo.Caption+' - Vendedor(a): '+cboperador.Text;
     end;
  if cbempresa.Text <> '' then
     begin
       ZQuery1.SQL.Add('and (local = '+chr(39)+ dm.empresasCodigo.AsString +chr(39)+')');
       qrtitulo.Caption:=qrtitulo.Caption+' - Filial: '+cbempresa.Text;
     end;
  ZQuery1.SQL.Add('group by data');
  ZQuery1.open;
  QuickRep1.Preview;
end;

end.
