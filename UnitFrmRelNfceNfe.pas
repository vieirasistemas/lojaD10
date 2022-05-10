unit UnitFrmRelNfceNfe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, QRCtrls, QuickRpt, ExtCtrls;

type
  TFrmRelNfceNfe = class(TForm)
    Label4: TLabel;
    Label5: TLabel;
    medatainicial: TMaskEdit;
    medatafinal: TMaskEdit;
    bt1: TBitBtn;
    bt2: TBitBtn;
    GroupBox2: TGroupBox;
    rbNFCe: TRadioButton;
    rbNFE: TRadioButton;
    QuickRep2: TQuickRep;
    QRBand3: TQRBand;
    QRDBText5: TQRDBText;
    QRDBText9: TQRDBText;
    qrantII: TQRExpr;
    QRBand5: TQRBand;
    QRShape12: TQRShape;
    QRLabel24: TQRLabel;
    qrtituloI: TQRLabel;
    QRLabel26: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData5: TQRSysData;
    QRSysData6: TQRSysData;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    qrantIII: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRBand6: TQRBand;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRBand7: TQRBand;
    QRLabel38: TQRLabel;
    QRExpr4: TQRExpr;
    QRLabel2: TQRLabel;
    qrconsulta: TZQuery;
    qrconsultavendaI: TStringField;
    qrconsultaDescricao: TStringField;
    qrconsultacliente: TIntegerField;
    qrconsultanome: TStringField;
    qrconsultasubtotal: TFloatField;
    qrconsultadesconto: TFloatField;
    qrconsultatotal: TFloatField;
    qrconsultaitens: TFloatField;
    qrconsultadata: TDateField;
    qrconsultanf: TIntegerField;
    qrconsultaprotocolo_nfce: TStringField;
    qrconsultanfse: TIntegerField;
    QRDBText2: TQRDBText;
    qrNFCE: TQRLabel;
    qrNFE: TQRLabel;
    qrNFE2: TQRDBText;
    qrNFCE2: TQRDBText;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure bt1Click(Sender: TObject);
    procedure bt2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelNfceNfe: TFrmRelNfceNfe;

implementation

uses Unitdm;

{$R *.dfm}

procedure TFrmRelNfceNfe.FormKeyPress(Sender: TObject; var Key: Char);
begin
        if key=#13 then
        begin
           SelectNext(activecontrol,True,True);
           key:=#0;
        end;
end;

procedure TFrmRelNfceNfe.bt1Click(Sender: TObject);
begin
  if (medatainicial.text<>'  /  /    ') and (MeDataFinal.text<>'  /  /    ') then
     begin
        qrconsulta.Close;
        qrconsulta.SQL.Clear;
        qrconsulta.SQL.Add('select V.vendaI,P.Descricao,V.cliente,C.nome,');
        qrconsulta.SQL.Add('V.subtotal,V.desconto,V.total, V.itens,V.data,V.nf,V.protocolo_nfce,V.nfse');
        qrconsulta.SQL.Add('from venda V, clientes C, formapagto P');
        qrconsulta.SQL.Add('where (V.cliente=C.codigo) and (V.formapagto=P.codigo)');
        qrconsulta.SQL.Add('and (V.fechada= '+chr(39)+'S'+chr(39)+')');
        qrconsulta.SQL.Add('and (V.data between '+chr(39)+
        copy(medatainicial.text,7,4)+'/'+copy(medatainicial.text,4,2)+'/'+
        copy(medatainicial.text,1,2)+chr(39)+' and '+chr(39)+
        copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
        copy(MeDataFinal.text,1,2)+chr(39)+')');
        if rbNFCe.Checked=true then
           begin
             qrconsulta.SQL.Add('and (V.protocolo_nfce is not null)');
             qrconsulta.SQL.Add('order by V.data,V.vendaI');
             qrtituloI.Caption:='Relatório de NFCe do Período de '+medatainicial.Text+' à '+medatafinal.Text;
             qrNFCE.Enabled:=true;
             qrNFCE2.Enabled:=true;
             qrNFE.Enabled:=false;
             qrNFE2.Enabled:=false;
           end
           else
           begin
             qrconsulta.SQL.Add('and (V.nf is not null)');
             qrconsulta.SQL.Add('order by V.nf');
             qrtituloI.Caption:='Relatório de NFE do Período de '+medatainicial.Text+' à '+medatafinal.Text;
             qrNFE.Enabled:=true;
             qrNFE2.Enabled:=true;
             qrNFCE.Enabled:=false;
             qrNFCE2.Enabled:=false;
           end;
        qrconsulta.open;
        QuickRep2.Preview;
     end;
end;

procedure TFrmRelNfceNfe.bt2Click(Sender: TObject);
begin
  close;
end;

end.
