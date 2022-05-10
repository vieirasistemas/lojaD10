unit UnitFrmRelGeralPlano;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, Db, DBTables, ADODB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFrmRelGeralPlano = class(TForm)
    QuickRep1 : TQuickRep;
    PageFooterBand1 : TQRBand;
    ColumnHeaderBand1 : TQRBand;
    DetailBand1 : TQRBand;
    QRLabel1 : TQRLabel;
    QRExpr2 : TQRExpr;
    QRLabel2 : TQRLabel;
    QRExpr3 : TQRExpr;
    QRLabel3 : TQRLabel;
    QRExpr4 : TQRExpr;
    QRLabel4 : TQRLabel;
    QRExpr5 : TQRExpr;
    QRLabel5 : TQRLabel;
    QRExpr6 : TQRExpr;
    PageHeaderBand1: TQRBand;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    QRLabel24: TQRLabel;
    QRSysData3: TQRSysData;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel6: TQRLabel;
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
  private
  end;

var
  FrmRelGeralPlano: TFrmRelGeralPlano;

implementation

uses Unitdm;

{$R *.DFM}

end.
