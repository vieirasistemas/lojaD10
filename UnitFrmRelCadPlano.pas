unit UnitFrmRelCadPlano;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, Db, DBTables, ADODB,
  Buttons, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFrmRelCadPlano = class(TForm)
    QuickRep1 : TQuickRep;
    PageFooterBand1 : TQRBand;
    ColumnHeaderBand1 : TQRBand;
    DetailBand1 : TQRBand;
    QRExpr3 : TQRExpr;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel16: TQRLabel;
    QRDBText10: TQRDBText;
    GroupBox2: TGroupBox;
    rb1: TRadioButton;
    rb2: TRadioButton;
    bt1: TBitBtn;
    bt2: TBitBtn;
    Query1: TZQuery;
    Query1codigo: TStringField;
    Query1descricao: TStringField;
    procedure bt2Click(Sender: TObject);
    procedure bt1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
  end;

var
  FrmRelCadPlano: TFrmRelCadPlano;

implementation

uses Unitdm;

{$R *.DFM}

procedure TFrmRelCadPlano.bt2Click(Sender: TObject);
begin
      close;  
end;

procedure TFrmRelCadPlano.bt1Click(Sender: TObject);
begin
      dm.parametros.Close;
      dm.parametros.Open;
      Query1.close;
      Query1.open;
      if rb1.checked then
         Quickrep1.preview
      else
         Quickrep1.print;
end;

procedure TFrmRelCadPlano.FormKeyPress(Sender: TObject; var Key: Char);
begin
        if Key = CHR(13) Then
           Begin
              perform(WM_NextDlgCtl,0,0);
              Key := CHR(0);
           End;
end;

end.
