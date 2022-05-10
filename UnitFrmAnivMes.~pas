unit UnitFrmAnivMes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, QRCtrls, QuickRpt, ExtCtrls, StdCtrls, Buttons, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFrmAnivMes = class(TForm)
    QuickRep3: TQuickRep;
    QRBand3: TQRBand;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRBand4: TQRBand;
    QRLabel35: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel32: TQRLabel;
    QRBand5: TQRBand;
    QRExpr13: TQRExpr;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRBand6: TQRBand;
    QRLabel40: TQRLabel;
    QRSysData7: TQRSysData;
    QRLabel41: TQRLabel;
    QRSysData8: TQRSysData;
    QRLabel42: TQRLabel;
    QRSysData9: TQRSysData;
    qrtitulo: TQRLabel;
    QRImage5: TQRImage;
    Label1: TLabel;
    edmes: TEdit;
    bt1: TBitBtn;
    bt2: TBitBtn;
    Query1: TZQuery;
    Query1codigo: TIntegerField;
    Query1tipo: TStringField;
    Query1cnpj: TStringField;
    Query1ie: TStringField;
    Query1im: TStringField;
    Query1cpf: TStringField;
    Query1rg: TStringField;
    Query1nome: TStringField;
    Query1endereco: TStringField;
    Query1bairro: TStringField;
    Query1cidade: TStringField;
    Query1estado: TStringField;
    Query1cep: TStringField;
    Query1fone3: TStringField;
    Query1email: TStringField;
    Query1homepage: TStringField;
    Query1obs: TStringField;
    Query1contato: TStringField;
    Query1empresa: TIntegerField;
    Query1fantasia: TStringField;
    Query1fone1: TStringField;
    Query1fone2: TStringField;
    Query1tfone1: TStringField;
    Query1tfone2: TStringField;
    Query1dtnasc: TDateField;
    procedure bt2Click(Sender: TObject);
    procedure bt1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAnivMes: TFrmAnivMes;

implementation

uses Unitdm;

{$R *.dfm}

procedure TFrmAnivMes.bt2Click(Sender: TObject);
begin
  close;
end;

procedure TFrmAnivMes.bt1Click(Sender: TObject);
begin
  if edmes.text<>'' then
     begin
        query1.close;
        query1.sql.clear;
        query1.sql.add('select * from clientes');
        query1.sql.add('where (EXTRACT(MONTH FROM dtnasc) = '+edmes.Text+')');
        query1.sql.add('order by nome');
        query1.open;
        qrtitulo.Caption:='Aniversariantes do Mês: '+edmes.Text;
        Quickrep3.preview;
     end;
end;

end.
