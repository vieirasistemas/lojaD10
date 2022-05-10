unit UnitFrmEtiquetasImp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, RLReport, RLBarcode, QuickRpt, ExtCtrls, QRCtrls,
  Barcode, StdCtrls, Buttons, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, jpeg;

type
  TFrmEtiquetasImp = class(TForm)
    RLReport7: TRLReport;
    RLBand7: TRLBand;
    RLDBText2: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBBarcode3: TRLDBBarcode;
    RLDBText8: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBBarcode4: TRLDBBarcode;
    lbname1: TRLLabel;
    lbname2: TRLLabel;
    lbname3: TRLLabel;
    lbname4: TRLLabel;
    Label10: TLabel;
    lbproduto: TLabel;
    Label5: TLabel;
    edproduto: TEdit;
    btrelatorio: TBitBtn;
    Query1: TZQuery;
    Query1codigo: TIntegerField;
    Query1nome: TStringField;
    Query1venda: TFloatField;
    DataSource1: TDataSource;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLImage2: TRLImage;
    RLImage1: TRLImage;
    procedure RLBand7BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure btrelatorioClick(Sender: TObject);
    procedure edprodutoExit(Sender: TObject);
    procedure edprodutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEtiquetasImp: TFrmEtiquetasImp;

implementation

uses Unitdm, UnitFrmCadProdutos;

{$R *.dfm}

procedure TFrmEtiquetasImp.RLBand7BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  lbname1.Caption:=copy(Query1nome.Value,1,18);
  lbname2.Caption:=copy(Query1nome.Value,19,18);
  lbname3.Caption:=copy(Query1nome.Value,1,18);
  lbname4.Caption:=copy(Query1nome.Value,19,18);
end;

procedure TFrmEtiquetasImp.btrelatorioClick(Sender: TObject);
var
i,linhas:integer;
begin
  if (edproduto.text<>'') then
     begin
      query1.Close;
      query1.SQL.Clear;
      query1.SQL.Add('select * from produtos');
      query1.sql.add('where (codigo = '+edproduto.text+')');
      query1.Open;
//      for i:=1 to linhas do
          RLReport7.Print;
     end;
end;

procedure TFrmEtiquetasImp.edprodutoExit(Sender: TObject);
begin
  if edproduto.Text<>'' then
     begin
      dm.produtos.close;
      dm.produtos.sql.clear;
      dm.produtos.sql.add('select * from produtos');
      dm.produtos.sql.add('where codigo = '+chr(39)+edproduto.text+chr(39));
      dm.produtos.open;
      if dm.produtos.RecordCount<1 then
         begin
           application.MessageBox('Produto n�o Localizado','Aten��o',mb_ok+mb_iconinformation);
           edproduto.Text:='';
         end
         else
           lbproduto.Caption:=dm.produtosnome.Value;
     end;
  edproduto.Color:=clWindow;
end;

procedure TFrmEtiquetasImp.edprodutoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_f11 then
     begin
       try
         Application.CreateForm(TFrmCadProdutos, FrmCadProdutos);
         FrmCadProdutos.showmodal;
       finally
         FrmCadProdutos.Release;
         FrmCadProdutos:=nil;
       end;
     end;
end;

end.
