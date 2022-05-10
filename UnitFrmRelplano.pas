unit UnitFrmRelplano;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  QRCtrls, QuickRpt, ExtCtrls;

type
  TFrmRelplano = class(TForm)
    GroupBox2: TGroupBox;
    rb1: TRadioButton;
    rb2: TRadioButton;
    GroupBox1: TGroupBox;
    cbmes: TComboBox;
    bt1: TBitBtn;
    bt2: TBitBtn;
    QuickRep1: TQuickRep;
    PageFooterBand1: TQRBand;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    DetailBand1: TQRBand;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRDBText1: TQRDBText;
    PageHeaderBand1: TQRBand;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    QRLabel24: TQRLabel;
    QRSysData3: TQRSysData;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    qrtitulo: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText4: TQRDBText;
    Query1: TZQuery;
    Query1codigo: TStringField;
    Query1descricao: TStringField;
    Query1chave: TStringField;
    Query1deb1: TFloatField;
    Query1deb2: TFloatField;
    Query1deb3: TFloatField;
    Query1deb4: TFloatField;
    Query1deb5: TFloatField;
    Query1deb6: TFloatField;
    Query1deb7: TFloatField;
    Query1deb8: TFloatField;
    Query1deb9: TFloatField;
    Query1deb10: TFloatField;
    Query1deb11: TFloatField;
    Query1deb12: TFloatField;
    Query1cred1: TFloatField;
    Query1cred2: TFloatField;
    Query1cred3: TFloatField;
    Query1cred4: TFloatField;
    Query1cred5: TFloatField;
    Query1cred6: TFloatField;
    Query1cred7: TFloatField;
    Query1cred8: TFloatField;
    Query1cred9: TFloatField;
    Query1cred10: TFloatField;
    Query1cred11: TFloatField;
    Query1cred12: TFloatField;
    Query1saldoant: TFloatField;
    procedure bt1Click(Sender: TObject);
    procedure bt2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure rb1Click(Sender: TObject);
    procedure rb2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelplano: TFrmRelplano;

implementation

uses UnitFrmRelCadPlano, UnitFrmRelGeralPlano, Unitdm;

{$R *.DFM}

procedure TFrmRelplano.bt1Click(Sender: TObject);
begin
      dm.parametros.Close;
      dm.parametros.Open;
      Query1.close;
      if cbmes.text='JANEIRO' then
         begin
            QRExpr3.Expression:='saldoant';
            QRExpr4.Expression:='deb1';
            QRExpr5.Expression:='cred1';
            QRExpr6.Expression:='saldoant+cred1-deb1';
         end;
      if cbmes.text='FEVEREIRO' then
         begin
            QRExpr3.Expression:='saldoant+cred1-deb1';
            QRExpr4.Expression:='deb2';
            QRExpr5.Expression:='cred2';
            QRExpr6.Expression:='saldoant+cred1+cred2-deb1-deb2';
         end;
      if cbmes.text='MARÇO' then
         begin
            QRExpr3.Expression:='saldoant+cred1+cred2-deb1-deb2';
            QRExpr4.Expression:='deb3';
            QRExpr5.Expression:='cred3';
            QRExpr6.Expression:='saldoant+cred1+cred2+cred3-deb1-deb2-deb3';
         end;
      if cbmes.text='ABRIL' then
         begin
            QRExpr3.Expression:='saldoant+cred1+cred2+cred3-deb1-deb2-deb3';
            QRExpr4.Expression:='deb4';
            QRExpr5.Expression:='cred4';
            QRExpr6.Expression:='saldoant+cred1+cred2+cred3+cred4-deb1-deb2-deb3-deb4';
         end;
      if cbmes.text='MAIO' then
         begin
            QRExpr3.Expression:='saldoant+cred1+cred2+cred3+cred4-deb1-deb2-deb3-deb4';
            QRExpr4.Expression:='deb5';
            QRExpr5.Expression:='cred5';
            QRExpr6.Expression:='saldoant+cred1+cred2+cred3+cred4+cred5-deb1-deb2-deb3-deb4-deb5';
         end;
      if cbmes.text='JUNHO' then
         begin
            QRExpr3.Expression:='saldoant+cred1+cred2+cred3+cred4+cred5-deb1-deb2-deb3-deb4-deb5';
            QRExpr4.Expression:='deb6';
            QRExpr5.Expression:='cred6';
            QRExpr6.Expression:='saldoant+cred1+cred2+cred3+cred4+cred5+cred6-deb1-deb2-deb3-deb4-deb5-deb6';
         end;
      if cbmes.text='JULHO' then
         begin
            QRExpr3.Expression:='saldoant+cred1+cred2+cred3+cred4+cred5+cred6-deb1-deb2-deb3-deb4-deb5-deb6';
            QRExpr4.Expression:='deb7';
            QRExpr5.Expression:='cred7';
            QRExpr6.Expression:='saldoant+cred1+cred2+cred3+cred4+cred5+cred6+cred7-deb1-deb2-deb3-deb4-deb5-deb6-deb7';
         end;
      if cbmes.text='AGOSTO' then
         begin
            QRExpr3.Expression:='saldoant+cred1+cred2+cred3+cred4+cred5+cred6+cred7-deb1-deb2-deb3-deb4-deb5-deb6-deb7';
            QRExpr4.Expression:='deb8';
            QRExpr5.Expression:='cred8';
            QRExpr6.Expression:='saldoant+cred1+cred2+cred3+cred4+cred5+cred6+cred7+cred8-deb1-deb2-deb3-deb4-deb5-deb6-deb7-deb8';
         end;
      if cbmes.text='SETEMBRO' then
         begin
            QRExpr3.Expression:='saldoant+cred1+cred2+cred3+cred4+cred5+cred6+cred7+cred8-deb1-deb2-deb3-deb4-deb5-deb6-deb7-deb8';
            QRExpr4.Expression:='deb9';
            QRExpr5.Expression:='cred9';
            QRExpr6.Expression:='saldoant+cred1+cred2+cred3+cred4+cred5+cred6+cred7+cred8+cred9-deb1-deb2-deb3-deb4-deb5-deb6-deb7-deb8-deb9';
         end;
      if cbmes.text='OUTUBRO' then
         begin
            QRExpr3.Expression:='saldoant+cred1+cred2+cred3+cred4+cred5+cred6+cred7+cred8+cred9-deb1-deb2-deb3-deb4-deb5-deb6-deb7-deb8-deb9';
            QRExpr4.Expression:='deb10';
            QRExpr5.Expression:='cred10';
            QRExpr6.Expression:='saldoant+cred1+cred2+cred3+cred4+cred5+cred6+cred7+cred8+cred9+cred10-deb1-deb2-deb3-deb4-deb5-deb6-deb7-deb8-deb9-deb10';
         end;
      if cbmes.text='NOVEMBRO' then
         begin
            QRExpr3.Expression:='saldoant+cred1+cred2+cred3+cred4+cred5+cred6+cred7+cred8+cred9+cred10-deb1-deb2-deb3-deb4-deb5-deb6-deb7-deb8-deb9-deb10';
            QRExpr4.Expression:='deb11';
            QRExpr5.Expression:='cred11';
            QRExpr6.Expression:='saldoant+cred1+cred2+cred3+cred4+cred5+cred6+cred7+cred8+cred9+cred10+cred11-deb1-deb2-deb3-deb4-deb5-deb6-deb7-deb8-deb9-deb10-deb11';
         end;
      if cbmes.text='DEZEMBRO' then
         begin
            QRExpr3.Expression:='saldoant+cred1+cred2+cred3+cred4+cred5+cred6+cred7+cred8+cred9+cred10+cred11-deb1-deb2-deb3-deb4-deb5-deb6-deb7-deb8-deb9-deb10-deb11';
            QRExpr4.Expression:='deb12';
            QRExpr5.Expression:='cred12';
            QRExpr6.Expression:='saldoant+cred1+cred2+cred3+cred4+cred5+cred6+cred7+cred8+cred9+cred10+cred11+cred12-deb1-deb2-deb3-deb4-deb5-deb6-deb7-deb8-deb9-deb10-deb11-deb12';
         end;
      Query1.open;
      qrtitulo.Caption:='Demonstrativo Plano de Contas - Mês: '+cbmes.text;
      if rb1.checked then
         Quickrep1.preview
      else
         Quickrep1.print;
end;

procedure TFrmRelplano.bt2Click(Sender: TObject);
begin
        close;
end;

procedure TFrmRelplano.FormKeyPress(Sender: TObject; var Key: Char);
begin
        if Key = CHR(13) Then
           Begin
              perform(WM_NextDlgCtl,0,0);
              Key := CHR(0);
           End;
end;

procedure TFrmRelplano.rb1Click(Sender: TObject);
begin
  bt1.Caption:='Visualizar';
end;

procedure TFrmRelplano.rb2Click(Sender: TObject);
begin
  bt1.Caption:='Imprimir';
end;

end.
