unit UnitFrmCadProdutosRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, DBTables, Mask, RLXLSFilter, RLFilters,
  RLPDFFilter, RLDraftFilter, RLReport, Grids, DBGrids, ZAbstractRODataset,
  ComObj, ZAbstractDataset, ZDataset, QRCtrls, QuickRpt, ExtCtrls, jpeg, Gauges;

type
  TFrmCadProdutosRel = class(TForm)
    bt1: TBitBtn;
    bt2: TBitBtn;
    Label10: TLabel;
    cbativo: TComboBox;
    query1: TZQuery;
    query1codigo: TIntegerField;
    query1nome: TStringField;
    query1compra: TFloatField;
    query1estoque: TFloatField;
    query1venda: TFloatField;
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    qr1: TQRDBText;
    qr3: TQRDBText;
    qr6: TQRExpr;
    QRDBText2: TQRDBText;
    QRExpr3: TQRExpr;
    PageHeaderBand1: TQRBand;
    QRLabel15: TQRLabel;
    qrtituloII: TQRLabel;
    QRLabel21: TQRLabel;
    QRSysData4: TQRSysData;
    QRSysData3: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel13: TQRLabel;
    QRExpr18: TQRExpr;
    QRExpr8: TQRExpr;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    PageFooterBand1: TQRBand;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    GroupBox1: TGroupBox;
    rbgeral: TRadioButton;
    rbPositivo: TRadioButton;
    rbzerado: TRadioButton;
    qrempresa: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText1: TQRDBText;
    query1ncm: TStringField;
    Label2: TLabel;
    cbgrupo: TComboBox;
    qrendereco: TQRLabel;
    qrcnpj: TQRLabel;
    produtos_locais: TZQuery;
    produtos_locaiscodigo: TIntegerField;
    produtos_locaisproduto: TIntegerField;
    produtos_locaislocal: TStringField;
    produtos_locaisquantidade: TFloatField;
    edcliente: TEdit;
    lbcliente: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    chExcel: TCheckBox;
    QRLabel8: TQRLabel;
    QRExpr4: TQRExpr;
    QRLabel9: TQRLabel;
    QRExpr5: TQRExpr;
    query1atacado: TFloatField;
    QRExpr6: TQRExpr;
    procedure bt2Click(Sender: TObject);
    procedure bt1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Memo1Enter(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edclienteExit(Sender: TObject);
    procedure edclienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadProdutosRel: TFrmCadProdutosRel;
  casas,i:integer;
  E_doc,mascara:string;

implementation

uses Unitdm, UnitFrmCadFornecedores, UnitFrmPrincipal;

{$R *.dfm}

procedure TFrmCadProdutosRel.bt2Click(Sender: TObject);
begin
        close;
end;

procedure TFrmCadProdutosRel.bt1Click(Sender: TObject);
  var
    FieldName,nometabela : string;
    Excel:variant;
    Linha:integer;
    qryF : TZQuery;
begin
  dm.parametros.Close;
  dm.parametros.Open;

  FieldName     :=  'Estoque';

  query1.close;
  query1.SQL.Clear;
  query1.SQL.Add('Select Codigo, Nome, Compra, ncm, Venda, Atacado, Estoque From produtos ');
  if cbativo.Text<>'' then
  begin
    query1.sql.add('where (ativo = '+chr(39)+copy(cbativo.text,1,1)+chr(39)+')');

    if cbgrupo.Text<>'' then
       query1.sql.add('and (grupo = '+chr(39)+copy(cbgrupo.Text,1,4)+chr(39)+')');
    if edcliente.Text<>'' then
       query1.sql.add('and (fornecedor = '+edcliente.Text+')');

    if rbPositivo.Checked=true then
      query1.SQL.Add('and (Estoque>0)')
    else if rbzerado.Checked=true then
      query1.SQL.Add('and (Estoque<=0)');
  end
  else
  begin
    if rbPositivo.Checked=true then
      query1.SQL.Add('where (Estoque>0)')
    else if rbzerado.Checked=true then
      query1.SQL.Add('where (Estoque<=0)');
    if cbgrupo.Text<>'' then
       query1.sql.add('and (grupo = '+chr(39)+copy(cbgrupo.Text,1,4)+chr(39)+')');
    if edcliente.Text<>'' then
       query1.sql.add('and (fornecedor = '+edcliente.Text+')');
  end;
  query1.SQL.Add('order by nome');
  query1.open;

  qrtituloII.Caption        :=  'Relat�rio - Estoque F�sico';
  if cbgrupo.Text<>'' then
     qrtituloII.Caption     :=  qrtituloII.Caption+' - Grupo: '+cbgrupo.Text;
  qrempresa.Caption         :=  frmprincipal.Panel2.Caption;
  qrempresa.Caption       :=  dm.parametrosfantasia.value;
  qrendereco.Caption      :=  dm.parametrosendereco.Value+' - '+dm.parametrosbairro.value;
  qrcnpj.Caption          :=  dm.parametroscnpj.Value;
  if chExcel.Checked=false then
     QuickRep1.preview
  else
  begin
     Excel := CreateOleObject('Excel.Application');
     Excel.Visible :=True;
     Excel.WorkBooks.Open('C:\Gestor\base.xlsx');
     Excel.WorkBooks[1].Sheets[1].Cells[1,1]:='Codigo';
     Excel.WorkBooks[1].Sheets[1].Cells[1,2]:='Nome';
     Excel.WorkBooks[1].Sheets[1].Cells[1,3]:='Compra';
     Excel.WorkBooks[1].Sheets[1].Cells[1,4]:='Varejo';
     Excel.WorkBooks[1].Sheets[1].Cells[1,5]:='Atacado';
     Excel.WorkBooks[1].Sheets[1].Cells[1,6]:='Estoque';
     Excel.WorkBooks[1].Sheets[1].Cells[1,7]:='Estoque Compra';
     Excel.WorkBooks[1].Sheets[1].Cells[1,8]:='Estoque Venda';
     Excel.WorkBooks[1].Sheets[1].Cells[1,9]:='NCM';
     Excel.WorkBooks[1].Sheets[1].Cells[1,10]:='Fornecedor';
     query1.First;
     Linha:=2;
     While not query1.Eof do
          Begin
            Excel.WorkBooks[1].Sheets[1].Cells[Linha,1]:=query1codigo.value;
            Excel.WorkBooks[1].Sheets[1].Cells[Linha,2]:=query1nome.Value;
            Excel.WorkBooks[1].Sheets[1].Cells[Linha,3]:=query1compra.Value;
            Excel.WorkBooks[1].Sheets[1].Cells[Linha,4]:=query1venda.Value;
            Excel.WorkBooks[1].Sheets[1].Cells[Linha,5]:=query1atacado.Value;
            Excel.WorkBooks[1].Sheets[1].Cells[Linha,6]:=query1estoque.Value;
            Excel.WorkBooks[1].Sheets[1].Cells[Linha,7]:=query1compra.Value*query1estoque.Value;
            Excel.WorkBooks[1].Sheets[1].Cells[Linha,8]:=query1venda.Value*query1estoque.Value;
            Excel.WorkBooks[1].Sheets[1].Cells[Linha,9]:=query1.FieldByName('ncm').AsString;

            qryF              :=  TZQuery.Create(nil);
            qryF.Connection   :=  dm.ZConnection1;
            qryF.SQL.Add('select nome from fornecedores');
            qryF.sql.add('where codigo = '+query1.FieldByName('fornecedor').AsString);
            qryF.Open;
            Excel.WorkBooks[1].Sheets[1].Cells[Linha,10]:=qryF.FieldByName('nome').AsString;

            qryF.Free;

            query1.Next;
            Linha:=Linha+1;
            Application.ProcessMessages;
          end;
  end;
end;

procedure TFrmCadProdutosRel.FormShow(Sender: TObject);
begin
  dm.Grupos.Close;
  dm.Grupos.SQL.Clear;
  dm.Grupos.SQL.Add('select * from grupos');
  dm.Grupos.SQL.Add('order by codigo');
  dm.Grupos.Open;
  cbgrupo.Items.Clear;
  while not dm.Grupos.Eof do
        begin
          cbgrupo.Items.Add(dm.Gruposcodigo.Value+' '+dm.Gruposdescricao.value);
          dm.Grupos.Next;
        end;
end;

procedure TFrmCadProdutosRel.Memo1Enter(Sender: TObject);
begin
        bt1.setfocus;
end;

procedure TFrmCadProdutosRel.FormKeyPress(Sender: TObject; var Key: Char);
begin
        if key=#13 then
        begin
           SelectNext(activecontrol,True,True);
           key:=#0;
        end;
end;

procedure TFrmCadProdutosRel.edclienteExit(Sender: TObject);
begin
  if edcliente.Text<>'' then
     begin
        dm.fornecedores.close;
        dm.fornecedores.sql.clear;
        dm.fornecedores.sql.add('select * from fornecedores');
        dm.fornecedores.sql.add('where codigo = '+edcliente.text);
        dm.fornecedores.open;
        if dm.fornecedores.RecordCount<1 then
           begin
             application.MessageBox('Fornecedor n�o Localizado','Aten��o',mb_ok+mb_iconinformation);
             edcliente.SetFocus;
           end
           else
             lbcliente.Caption:=dm.fornecedoresnome.value;
     end
     else
       lbcliente.Caption:='';
end;

procedure TFrmCadProdutosRel.edclienteKeyDown(Sender: TObject;
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

end.
