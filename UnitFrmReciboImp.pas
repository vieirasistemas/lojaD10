unit UnitFrmReciboImp;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, DBTables, ECC_Justifica,
  jpeg;

type
  TFrmReciboImp = class(TForm)
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    qrdata1: TQRLabel;
    memo2: TQRECC_Memo;
    qrvalor1: TQRLabel;
    qrtitulo1: TQRLabel;
    qrtitulo: TQRLabel;
    qrvalor: TQRLabel;
    memo1: TQRECC_Memo;
    qrdata: TQRLabel;
    QRShape1: TQRShape;
    QRImage1: TQRImage;
    QRImage3: TQRImage;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
  private
  end;

var
  FrmReciboImp: TFrmReciboImp;

implementation

uses Unitdm;

{$R *.DFM}

end.
