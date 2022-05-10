unit UnitFrmResumoVendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons, QRCtrls, QuickRpt, ExtCtrls, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFrmResumoVendas = class(TForm)
    Label4: TLabel;
    Label5: TLabel;
    lbOperador: TLabel;
    lbfornecedor: TLabel;
    Label42: TLabel;
    bt1: TBitBtn;
    bt2: TBitBtn;
    medatainicial: TMaskEdit;
    medatafinal: TMaskEdit;
    edfornecedor: TEdit;
    movvenda: TZQuery;
    movvendaqtd: TFloatField;
    movvendatotal: TFloatField;
    movvendanome: TStringField;
    movvendaapelido: TStringField;
    movvendacusto: TFloatField;
    movvendavendedor: TIntegerField;
    QuickRep4: TQuickRep;
    QRGroup1: TQRGroup;
    QRDBText24: TQRDBText;
    QRBand10: TQRBand;
    QRExpr21: TQRExpr;
    QRExpr23: TQRExpr;
    QRDBText11: TQRDBText;
    qrcusto1: TQRExpr;
    QRBand11: TQRBand;
    QRLabel3: TQRLabel;
    QRExpr1: TQRExpr;
    QRBand12: TQRBand;
    QRLabel54: TQRLabel;
    qrtituloatend: TQRLabel;
    QRLabel56: TQRLabel;
    QRSysData10: TQRSysData;
    QRSysData11: TQRSysData;
    QRSysData12: TQRSysData;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRBand13: TQRBand;
    QRLabel66: TQRLabel;
    QRLabel67: TQRLabel;
    QRBand14: TQRBand;
    QRLabel68: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel63: TQRLabel;
    qrcusto: TQRLabel;
    qrcusto2: TQRExpr;
    QRExpr4: TQRExpr;
    qrcusto3: TQRExpr;
    QRExpr9: TQRExpr;
    QRExpr10: TQRExpr;
    movvendaproduto: TIntegerField;
    Label1: TLabel;
    cbLocal: TComboBox;
    Label2: TLabel;
    lbproduto: TLabel;
    Label6: TLabel;
    edproduto: TEdit;
    Label3: TLabel;
    cbtipo: TComboBox;
    chCusto: TCheckBox;
    procedure bt2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure medatainicialExit(Sender: TObject);
    procedure medatafinalExit(Sender: TObject);
    procedure edfornecedorExit(Sender: TObject);
    procedure edfornecedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bt1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbLocalExit(Sender: TObject);
    procedure edprodutoExit(Sender: TObject);
    procedure edprodutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmResumoVendas: TFrmResumoVendas;

implementation

uses Unitdm, UnitFrmCadFornecedores, UnitFrmCadProdutos, UnitFrmPrincipal;

{$R *.dfm}

procedure TFrmResumoVendas.bt2Click(Sender: TObject);
begin
  close;
end;

procedure TFrmResumoVendas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = CHR(13) Then
     Begin
       try
         perform(WM_NextDlgCtl,0,0);
         Key := CHR(0);
       except
       end;
     End;
end;

procedure TFrmResumoVendas.medatainicialExit(Sender: TObject);
begin
  if medatainicial.text<>'  /  /    ' then
  begin
  Try
     StrToDate(medatainicial.Text) ;
  Except
  begin
     application.MessageBox('Data Inválida!','Atenção',mb_Ok+mb_iconerror);
     medatainicial.setfocus;
  end;
  end;
  end;
end;

procedure TFrmResumoVendas.medatafinalExit(Sender: TObject);
begin
  if MeDataFinal.text<>'  /  /    ' then
  begin
  Try
     StrToDate(MeDataFinal.Text) ;
     If StrToDate(MeDataInicial.Text) > StrToDate(MeDataFinal.Text) then
        Begin
           MessageBox(Handle, 'Data inferior à data inicial de pesquisa!!', 'Atenção', mb_IconWarning or mb_Ok);
           medatafinal.text:='';
           medatainicial.text:='';
           MeDatainicial.SetFocus;
        End;
  Except
  begin
     application.MessageBox('Data Inválida!','Atenção',mb_Ok+mb_iconerror);
     MeDataFinal.setfocus;
  end;
  end;
  end;
end;

procedure TFrmResumoVendas.edfornecedorExit(Sender: TObject);
begin
  if edfornecedor.Text<>'' then
     begin
        dm.fornecedores.close;
        dm.fornecedores.sql.clear;
        dm.fornecedores.sql.add('select * from fornecedores');
        dm.fornecedores.sql.add('where codigo = '+edfornecedor.text);
        dm.fornecedores.open;
        if dm.fornecedores.RecordCount<1 then
           begin
             application.MessageBox('Profissional não Localizado','Atenção',mb_ok+mb_iconinformation);
             edfornecedor.SetFocus;
           end
           else
             lbfornecedor.Caption:=dm.fornecedoresapelido.value;
     end;
end;

procedure TFrmResumoVendas.edfornecedorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_f10 then
     begin
       try
         Application.CreateForm(TFrmCadFornecedores, FrmCadFornecedores);
         FrmCadFornecedores.showmodal;
       finally
         FrmCadFornecedores.Release;
         FrmCadFornecedores:=nil;
       end;
     end;
end;

procedure TFrmResumoVendas.bt1Click(Sender: TObject);
begin
  if
    (medatainicial.Text='  /  /    ') and
    (medatafinal.Text='  /  /    ')
  then
  begin
    application.MessageBox('Período Inválido','Atenção',mb_ok+mb_iconinformation);
    medatainicial.SetFocus;
    Exit;
  end;
  qrtituloatend.Caption:='Resumo de Vendas em '+medatainicial.text+' à '+medatafinal.text;

  dm.parametros.close;
  dm.parametros.sql.clear;
  dm.parametros.sql.add('select * from parametros');
  dm.parametros.sql.add('where fantasia = '+chr(39)+FrmPrincipal.Panel2.Caption+chr(39));
  dm.parametros.open;

  movvenda.Close;
  movvenda.SQL.Clear;
  movvenda.SQL.Add('select M.vendedor,M.produto,sum(M.qtd) as qtd,sum(M.VlrTotal) as total,P.nome,F.apelido,P.custo');
  movvenda.SQL.Add('from movestoque M, produtos P, fornecedores F');
  movvenda.SQL.Add('where M.produto=P.codigo and M.vendedor=F.codigo');
  movvenda.SQL.Add('and M.data between '+chr(39)+
  copy(medatainicial.text,7,4)+'/'+copy(medatainicial.text,4,2)+'/'+
  copy(medatainicial.text,1,2)+chr(39)+' and '+chr(39)+
  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
  copy(MeDataFinal.text,1,2)+chr(39));
  if cbtipo.Text<>'' then
     movvenda.SQL.Add('and M.TipoMov = '+chr(39)+copy(cbtipo.text,1,2)+chr(39));
  if edfornecedor.Text<>'' then
     movvenda.SQL.Add('and M.vendedor = '+edfornecedor.Text);
  if edproduto.Text<>'' then
     movvenda.SQL.Add('and M.produto = '+edproduto.Text);
  if cbLocal.Text<>'' then
     begin
       dm.parametros.close;
       dm.parametros.sql.clear;
       dm.parametros.sql.add('select * from parametros');
       dm.parametros.sql.add('where fantasia = '+chr(39)+cbLocal.Text+chr(39));
       dm.parametros.open;
       movvenda.SQL.Add('and M.local = '+chr(39)+ dm.empresasCodigo.AsString +chr(39));
     end;
  movvenda.SQL.Add('group by M.vendedor,M.produto');
  movvenda.SQL.Add('order by F.apelido,P.nome');
  movvenda.open;

  if chCusto.Checked=false then
     begin
       qrcusto.Enabled:=false;
       qrcusto1.Enabled:=false;
       qrcusto2.Enabled:=false;
       qrcusto3.Enabled:=false;
     end
     else
     begin
       qrcusto.Enabled:=true;
       qrcusto1.Enabled:=true;
       qrcusto2.Enabled:=true;
       qrcusto3.Enabled:=true;
     end;

  QuickRep4.Preview;
end;

procedure TFrmResumoVendas.FormShow(Sender: TObject);
begin
  dm.empresas.close;
  dm.empresas.sql.clear;
  dm.empresas.sql.add('select * from locais_estoque');
  dm.empresas.open;
  cbLocal.Items.Clear;
  while not dm.empresas.Eof do
        begin
          cbLocal.Items.Add(dm.empresasNome.Value);
          dm.empresas.Next;
        end;
end;

procedure TFrmResumoVendas.cbLocalExit(Sender: TObject);
begin
  if cblocal.Text <> '' then
     begin
        dm.empresas.open;
        if not(dm.empresas.locate('nome', cblocal.text, [LoCaseInsensitive])) then
        begin
          Showmessage('Empresa inválida!');
          cblocal.SetFocus;
        end;
     end;
end;

procedure TFrmResumoVendas.edprodutoExit(Sender: TObject);
begin
  if edproduto.Text<>'' then
     begin
        dm.produtos.close;
        dm.produtos.sql.clear;
        dm.produtos.sql.add('select * from produtos');
        dm.produtos.sql.add('where codigo = '+edproduto.Text);
        dm.produtos.open;
        if dm.produtos.RecordCount<1 then
          begin
            application.MessageBox('Produto não Localizado','Atenção',mb_ok+mb_iconinformation);
            edproduto.SetFocus;
          end
          else
            lbproduto.Caption:=dm.produtosnome.value;
     end
     else
       lbproduto.Caption:='';
end;

procedure TFrmResumoVendas.edprodutoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_f10 then
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
