unit UnitFrmNotasFiscais;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, Mask, EditAlinhado, ComCtrls,
  DBCtrls, DB, DBTables, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ExtCtrls, jpeg, QRCtrls, QuickRpt;

type
  TFrmNotasFiscais = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    gbnf: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    cbtipo: TComboBox;
    EdCfop: TEdit;
    eddocumento: TEdit;
    EdSerie: TEdit;
    meemissao: TMaskEdit;
    merecepcao: TMaskEdit;
    edvlrcontabil: TEditAlinh;
    edbasecalculo: TEditAlinh;
    edicms: TEditAlinh;
    edvlricms: TEditAlinh;
    edvlripi: TEditAlinh;
    edvlrisentas: TEditAlinh;
    edvlroutras: TEditAlinh;
    edbasesubst: TEditAlinh;
    edicmssubst: TEditAlinh;
    TabSheet3: TTabSheet;
    DBGrid1: TDBGrid;
    gbmovestoque: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    cbunidade: TComboBox;
    gbdocpagar: TGroupBox;
    Label26: TLabel;
    Label29: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    mevencto: TMaskEdit;
    edqtd: TEditAlinh;
    edvlrunit: TEditAlinh;
    eddocum: TEdit;
    edvalordoc: TEditAlinh;
    edlocalcob: TEdit;
    GroupBox1: TGroupBox;
    Label13: TLabel;
    Label33: TLabel;
    lbdoc: TLabel;
    lbfavorecido: TLabel;
    lbdata: TLabel;
    Label35: TLabel;
    StatusBar1: TStatusBar;
    StatusBar2: TStatusBar;
    GroupBox3: TGroupBox;
    Label34: TLabel;
    Label36: TLabel;
    lbdocI: TLabel;
    lbfavorecidoI: TLabel;
    lbdataI: TLabel;
    Label40: TLabel;
    DBGrid3: TDBGrid;
    cbtipodoc: TComboBox;
    Label41: TLabel;
    meemissaodoc: TMaskEdit;
    Label37: TLabel;
    edfavorecido: TEdit;
    lbnomefavorecido: TLabel;
    Label6: TLabel;
    medatainicial: TMaskEdit;
    Label39: TLabel;
    medatafinal: TMaskEdit;
    btfiltrar: TBitBtn;
    btlocalizar: TBitBtn;
    rbentrada: TRadioButton;
    rbsaida: TRadioButton;
    dsconsulta: TDataSource;
    cbmotivo: TComboBox;
    lbmotivo: TLabel;
    edobs: TEdit;
    lbobs: TLabel;
    dsMovEstoque: TDataSource;
    DBGrid2: TDBGrid;
    cbplconta: TComboBox;
    Label45: TLabel;
    qrvlrtotal: TLabel;
    qrqtd: TLabel;
    qrconsulta: TZQuery;
    qrconsultadocumento: TStringField;
    qrconsultafavorecido: TIntegerField;
    qrconsultatipo: TStringField;
    qrconsultaemissao: TDateField;
    qrconsultarecepcao: TDateField;
    qrconsultavlrcontabil: TFloatField;
    qrconsultabasecalculo: TFloatField;
    qrconsultanome: TStringField;
    qrconsultacancelada: TStringField;
    qrMovEstoque: TZQuery;
    qrMovEstoquedocumento: TStringField;
    qrMovEstoquefavorecido: TIntegerField;
    qrMovEstoqueproduto: TIntegerField;
    qrMovEstoquedata: TDateField;
    qrMovEstoqueTipoMov: TStringField;
    qrMovEstoqueund: TStringField;
    qrMovEstoqueqtd: TFloatField;
    qrMovEstoqueVlrUnit: TFloatField;
    qrMovEstoqueVlrTotal: TFloatField;
    Panel3: TPanel;
    btnovo: TBitBtn;
    btgravar: TBitBtn;
    btalterar: TBitBtn;
    btexcluir: TBitBtn;
    btrelatorio: TBitBtn;
    btcancelar: TBitBtn;
    qratualizar: TZQuery;
    qrtotalizar: TZQuery;
    qrtotalizarN_qtd: TLargeintField;
    qrtotalizarTotalGeral: TFloatField;
    btnovoE: TBitBtn;
    btgravarE: TBitBtn;
    btexcluirE: TBitBtn;
    BitBtn4: TBitBtn;
    btnovoD: TBitBtn;
    btgravarD: TBitBtn;
    btexcluirD: TBitBtn;
    BitBtn5: TBitBtn;
    Label3: TLabel;
    qrMovEstoquelote: TStringField;
    edproduto: TEdit;
    Label5: TLabel;
    Label8: TLabel;
    lbnomeproduto: TLabel;
    Label30: TLabel;
    qrMovEstoquenome: TStringField;
    Label4: TLabel;
    edvlrfrete: TEditAlinh;
    QuickRep1: TQuickRep;
    QRGroup1: TQRGroup;
    qr1: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel25: TQRLabel;
    QRDBText11: TQRDBText;
    QRBand1: TQRBand;
    qr2: TQRDBText;
    qr3: TQRDBText;
    qr5: TQRExpr;
    qr6: TQRExpr;
    QRDBText3: TQRDBText;
    PageHeaderBand1: TQRBand;
    QRShape1: TQRShape;
    qrtitulo: TQRLabel;
    QRLabel21: TQRLabel;
    QRSysData4: TQRSysData;
    QRSysData3: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel30: TQRLabel;
    PageFooterBand1: TQRBand;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel24: TQRLabel;
    QRExpr18: TQRExpr;
    QRImage1: TQRImage;
    StatusBar3: TStatusBar;
    procedure BitBtn11Click(Sender: TObject);
    procedure btnovoClick(Sender: TObject);
    procedure btalterarClick(Sender: TObject);
    procedure btcancelarClick(Sender: TObject);
    procedure meemissaoExit(Sender: TObject);
    procedure merecepcaoExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edvlrcontabilExit(Sender: TObject);
    procedure edbasecalculoExit(Sender: TObject);
    procedure edicmsExit(Sender: TObject);
    procedure edvlricmsExit(Sender: TObject);
    procedure edvlripiExit(Sender: TObject);
    procedure edvlrisentasExit(Sender: TObject);
    procedure edvlroutrasExit(Sender: TObject);
    procedure edbasesubstExit(Sender: TObject);
    procedure edicmssubstExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbtipoExit(Sender: TObject);
    procedure btgravarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btlocalizarClick(Sender: TObject);
    procedure btnovoEClick(Sender: TObject);
    procedure cbunidadeExit(Sender: TObject);
    procedure edvlrunitExit(Sender: TObject);
    procedure edqtdExit(Sender: TObject);
    procedure btgravarEClick(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure btexcluirEClick(Sender: TObject);
    procedure btexcluirClick(Sender: TObject);
    procedure merecepcaoEnter(Sender: TObject);
    procedure cbtipomovimentoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edvalordocExit(Sender: TObject);
    procedure mevenctoExit(Sender: TObject);
    procedure btnovoDClick(Sender: TObject);
    procedure cbtipodocKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btgravarDClick(Sender: TObject);
    procedure meemissaodocExit(Sender: TObject);
    procedure CbEmpresaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btexcluirDClick(Sender: TObject);
    procedure DBGrid3CellClick(Column: TColumn);
    procedure btrelatorioClick(Sender: TObject);
    procedure edfavorecidoExit(Sender: TObject);
    procedure medatainicialExit(Sender: TObject);
    procedure medatafinalExit(Sender: TObject);
    procedure btfiltrarClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edobsExit(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure eddocumentoExit(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cbplcontaExit(Sender: TObject);
    procedure btanteriorClick(Sender: TObject);
    procedure btproximoClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure edfavorecidoKeyPress(Sender: TObject; var Key: Char);
    procedure edprodutoExit(Sender: TObject);
    procedure edvlrfreteExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmNotasFiscais: TFrmNotasFiscais;
  vlrcompra,vlripi,anterior,
  antestoque,antlocal,vlrDoc,
  VlMedio,A,B,P_estoqueext,
  P_ipi,P_frete,P_icmscred,P_custo,
  P_vlr1,P_vlr2,P_vlr3,P_vlr4,P_vlr5,P_unit1,
  P_unit2,P_unit3,P_unit4,P_unit5,
  comissao,icmsdeb,impfed,adm,lucro,base,
  fator,E_qtd,E_VlrTotal,P_qtd_ultentrada,
  P_vlr_ultentrada:real;
  opcao,mes,i:integer;
  ClickedOK,check:boolean;
  busca,P_ult_entrada:string;

implementation

uses Unitdm, UnitFrmCadFornecedores, UnitFrmCadClientes, UnitFrmPrincipal,
  UnitFrmCadProdutos;

{$R *.dfm}

function StringToFloat(s : string) : Extended;
{ Filtra uma string qualquer, convertendo as suas partes
  num�ricas para sua representa��o decimal, por exemplo:
  'R$ 1.200,00' para 1200,00 '1AB34TZ' para 134}
var
  i :Integer;
  t : string;
  SeenDecimal,SeenSgn : Boolean;
begin
  t := '';
  SeenDecimal := False;
  SeenSgn := False;
  {Percorre os caracteres da string:}
  for i := Length(s) downto 0 do
  {Filtra a string, aceitando somente n�meros e separador decimal:}
  if (s[i] in ['0'..'9', '-','+',DecimalSeparator]) then
  begin
  if (s[i] = DecimalSeparator) and (not SeenDecimal) then
  begin
  t := s[i] + t;
  SeenDecimal := True;
  end
  else if (s[i] in ['+','-']) and (not SeenSgn) and (i = 1) then
  begin
  t := s[i] + t;
  SeenSgn := True;
  end
  else if s[i] in ['0'..'9'] then
  begin
  t := s[i] + t;
  end;
  end;
  Result := StrToFloat(t);
end;

procedure AtualizaProdutos;
begin
      dm.produtos.close;
      dm.produtos.sql.clear;
      dm.produtos.sql.add('select * from produtos');
      dm.produtos.sql.add('where codigo = '+IntToStr(FrmNotasFiscais.qrMovEstoqueproduto.Value));
      dm.produtos.open;

      if copy(FrmNotasFiscais.qrMovEstoqueTipoMov.Value,1,1)='E' then
         antestoque:=dm.produtosestoque.Value+FrmNotasFiscais.qrMovEstoqueqtd.Value
      else if copy(FrmNotasFiscais.qrMovEstoqueTipoMov.Value,1,1)='S' then
        antestoque:=dm.produtosestoque.Value-FrmNotasFiscais.qrMovEstoqueqtd.Value;

      dm.parametros.Close;
      dm.parametros.Open;
      P_ult_entrada:=copy(FrmNotasFiscais.merecepcao.Text,7,4)+'/'+
      copy(FrmNotasFiscais.merecepcao.Text,4,2)+'/'+
      copy(FrmNotasFiscais.merecepcao.Text,1,2);
      P_qtd_ultentrada:=FrmNotasFiscais.qrMovEstoqueqtd.Value;
      P_vlr_ultentrada:=FrmNotasFiscais.qrMovEstoqueVlrUnit.Value;

      if copy(FrmNotasFiscais.qrMovEstoqueTipoMov.Value,1,2)='EC' then
         begin
           P_ult_entrada:=copy(FrmNotasFiscais.lbdata.Caption,7,4)+'/'+
           copy(FrmNotasFiscais.lbdata.Caption,4,2)+'/'+
           copy(FrmNotasFiscais.lbdata.Caption,1,2);
           P_qtd_ultentrada:=FrmNotasFiscais.qrMovEstoqueqtd.Value;
           P_vlr_ultentrada:=FrmNotasFiscais.qrMovEstoqueVlrUnit.Value;
           vlrcompra:=FrmNotasFiscais.qrMovEstoqueVlrUnit.Value;
           VlMedio:=0;
         end;
      FrmNotasFiscais.qratualizar.close;
      FrmNotasFiscais.qratualizar.sql.clear;
      FrmNotasFiscais.qratualizar.sql.add('update produtos set');
      FrmNotasFiscais.qratualizar.sql.add('estoque = :antestoque');
      FrmNotasFiscais.qratualizar.sql.add('compra = :vlrcompra');
      FrmNotasFiscais.qratualizar.sql.add('where codigo = '+IntToStr(FrmNotasFiscais.qrMovEstoqueproduto.Value));
      FrmNotasFiscais.qratualizar.Params[0].Value := antestoque;
      FrmNotasFiscais.qratualizar.Params[1].Value := vlrcompra;
      FrmNotasFiscais.qratualizar.ExecSQL;
end;

procedure TotalizarEstoque;
begin
  FrmNotasFiscais.qrtotalizar.sql.clear;
  FrmNotasFiscais.qrtotalizar.sql.add('select count(*) as N_qtd, sum(vlrtotal) as TotalGeral from movestoque');
  FrmNotasFiscais.qrtotalizar.sql.add('where (documento ='+chr(39)+FrmNotasFiscais.lbdoc.Caption+chr(39)+')');
  FrmNotasFiscais.qrtotalizar.sql.add('and (favorecido ='+FrmNotasFiscais.edfavorecido.Text+')');
  FrmNotasFiscais.qrtotalizar.open;
  if FrmNotasFiscais.qrtotalizarTotalGeral.Value>0 then
     begin
       FrmNotasFiscais.qrqtd.Caption:='Itens:  '+FloatToStr(FrmNotasFiscais.qrtotalizarN_qtd.Value);
       FrmNotasFiscais.qrvlrtotal.Caption:='Total Geral R$  '+formatfloat('#,##0.00',FrmNotasFiscais.qrtotalizarTotalGeral.Value);
     end
     else
     begin
       FrmNotasFiscais.qrqtd.Caption:='Itens:  0';
       FrmNotasFiscais.qrvlrtotal.Caption:='Total Geral R$  0,00';
     end;
end;

procedure Atualiza;
begin
  dm.NF.Close;
  dm.NF.sql.clear;
  dm.NF.sql.add('select * from nf');
  dm.NF.sql.add('where (documento ='+chr(39)+FrmNotasFiscais.qrconsultadocumento.Value+chr(39)+')');
  dm.NF.sql.add('and (tipo ='+chr(39)+FrmNotasFiscais.qrconsultatipo.Value+chr(39)+')');
  dm.NF.sql.add('and (favorecido ='+IntToStr(FrmNotasFiscais.qrconsultafavorecido.Value)+')');
  dm.NF.open;

  if dm.NFtipo.Value='E' then
     begin
       FrmNotasFiscais.cbtipo.Text:='ENTRADA';
       FrmNotasFiscais.edfavorecido.Text:=IntToStr(dm.NFfavorecido.Value);
       dm.Fornecedores.close;
       dm.Fornecedores.sql.clear;
       dm.Fornecedores.sql.add('select * from fornecedores');
       dm.Fornecedores.sql.add('where codigo = '+IntToStr(dm.NFfavorecido.Value));
       dm.Fornecedores.open;
       FrmNotasFiscais.lbnomefavorecido.caption:=dm.Fornecedoresnome.Value;
       FrmNotasFiscais.lbfavorecido.caption:=dm.Fornecedoresnome.Value;
       FrmNotasFiscais.lbfavorecidoI.caption:=dm.Fornecedoresnome.Value;
     end
     else
     begin
       FrmNotasFiscais.cbtipo.Text:='SA�DA';
       FrmNotasFiscais.edfavorecido.Text:=IntToStr(dm.NFfavorecido.Value);
       dm.Clientes.close;
       dm.Clientes.sql.clear;
       dm.Clientes.sql.add('select * from clientes');
       dm.Clientes.sql.add('where codigo = '+IntToStr(dm.NFfavorecido.Value));
       dm.Clientes.open;
       FrmNotasFiscais.lbnomefavorecido.caption:=dm.Clientesnome.Value;
       FrmNotasFiscais.lbfavorecido.caption:=dm.Clientesnome.Value;
       FrmNotasFiscais.lbfavorecidoI.caption:=dm.Clientesnome.Value;
     end;

  FrmNotasFiscais.eddocumento.Text:=dm.NFdocumento.Value;
  FrmNotasFiscais.lbdoc.caption:=dm.NFdocumento.Value;
  FrmNotasFiscais.lbdocI.caption:=dm.NFdocumento.Value;
  if dm.NFemissao.value<>StrToDate('30/12/1899') then
     FrmNotasFiscais.meemissao.Text:=DateToStr(dm.NFemissao.value)
  else
     FrmNotasFiscais.meemissao.Text:='';
  if dm.NFrecepcao.value<>StrToDate('30/12/1899') then
     begin
       FrmNotasFiscais.merecepcao.Text:=DateToStr(dm.NFrecepcao.value);
       FrmNotasFiscais.lbdata.Caption:=DateToStr(dm.NFrecepcao.value);
       FrmNotasFiscais.lbdataI.Caption:=DateToStr(dm.NFrecepcao.value);
     end
     else
     begin
       FrmNotasFiscais.merecepcao.Text:='';
       FrmNotasFiscais.lbdata.Caption:='';
       FrmNotasFiscais.lbdataI.Caption:='';
     end;
  FrmNotasFiscais.EdSerie.Text:=dm.NFserie.Value;
  FrmNotasFiscais.EdCfop.Text:=dm.NFcfop.Value;
  if not dm.NFvlrcontabil.IsNull then
     FrmNotasFiscais.edvlrcontabil.Text:=formatfloat('#,##0.00',dm.NFvlrcontabil.value)
  else
     FrmNotasFiscais.edvlrcontabil.Text:='';
  if not dm.NFbasecalculo.IsNull then
     FrmNotasFiscais.edbasecalculo.Text:=formatfloat('#,##0.00',dm.NFbasecalculo.value)
  else
     FrmNotasFiscais.edbasecalculo.Text:='';
  if dm.nfvlrfrete.Value>0 then
     FrmNotasFiscais.edvlrfrete.Text:=formatfloat('#,##0.00',dm.nfvlrfrete.value)
  else
     FrmNotasFiscais.edvlrfrete.Text:='';
  if not dm.NFicmsp.IsNull then
     FrmNotasFiscais.edicms.Text:=formatfloat('0.00',dm.NFicmsp.value)
  else
     FrmNotasFiscais.edicms.Text:='';
  if not dm.NFvlricms.IsNull then
     FrmNotasFiscais.edvlricms.Text:=formatfloat('#,##0.00',dm.NFvlricms.value)
  else
     FrmNotasFiscais.edvlricms.Text:='';
  if not dm.NFvlripi.IsNull then
     FrmNotasFiscais.edvlripi.Text:=formatfloat('#,##0.00',dm.NFvlripi.value)
  else
     FrmNotasFiscais.edvlripi.Text:='';
  if not dm.NFvlrisentas.IsNull then
     FrmNotasFiscais.edvlrisentas.Text:=formatfloat('#,##0.00',dm.NFvlrisentas.value)
  else
     FrmNotasFiscais.edvlrisentas.Text:='';
  if not dm.NFvlroutras.IsNull then
     FrmNotasFiscais.edvlroutras.Text:=formatfloat('#,##0.00',dm.NFvlroutras.value)
  else
     FrmNotasFiscais.edvlroutras.Text:='';
  if not dm.NFbasesubst.IsNull then
     FrmNotasFiscais.edbasesubst.Text:=formatfloat('#,##0.00',dm.NFbasesubst.value)
  else
     FrmNotasFiscais.edbasesubst.Text:='';
  if not dm.NFicmssubst.IsNull then
     FrmNotasFiscais.edicmssubst.Text:=formatfloat('#,##0.00',dm.NFicmssubst.value)
  else
     FrmNotasFiscais.edicmssubst.Text:='';

  FrmNotasFiscais.qrmovestoque.Close;
  FrmNotasFiscais.qrmovestoque.SQL.Clear;
  FrmNotasFiscais.qrmovestoque.SQL.Add('select E.documento,E.favorecido,E.produto,E.data,E.TipoMov,');
  FrmNotasFiscais.qrmovestoque.SQL.Add('E.und,E.qtd,E.VlrUnit,E.VlrTotal,P.nome,E.lote');
  FrmNotasFiscais.qrmovestoque.SQL.Add('from movestoque E, produtos P');
  FrmNotasFiscais.qrmovestoque.SQL.Add('where (E.produto=P.codigo)');
  FrmNotasFiscais.qrmovestoque.SQL.Add('and (E.documento = '+chr(39)+FrmNotasFiscais.lbdoc.Caption+chr(39)+')');
  FrmNotasFiscais.qrmovestoque.SQL.Add('and (E.favorecido = '+FrmNotasFiscais.edfavorecido.Text+')');
  FrmNotasFiscais.qrmovestoque.Open;
  TotalizarEstoque;

  dm.MovEstoque.sql.clear;
  dm.MovEstoque.sql.add('select * from movestoque');
  dm.MovEstoque.sql.add('where (documento ='+chr(39)+FrmNotasFiscais.lbdoc.Caption+chr(39)+')');
  dm.MovEstoque.sql.add('and (favorecido ='+FrmNotasFiscais.edfavorecido.Text+')');
  dm.MovEstoque.open;

  dm.DocPagarGeral.Close;
  dm.DocPagarGeral.SQL.Clear;
  dm.DocPagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
  dm.DocPagarGeral.SQL.Add('D.tipo,D.localcob,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
  dm.DocPagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
  dm.DocPagarGeral.SQL.Add('from fornecedores F, docpagar D');
  dm.DocPagarGeral.SQL.Add('where (D.fornecedor=F.codigo)');
  dm.DocPagarGeral.sql.add('and (D.doc = '+FrmNotasFiscais.lbdocI.Caption+')');
  dm.DocPagarGeral.sql.add('and (F.nome ='+chr(39)+FrmNotasFiscais.lbnomefavorecido.Caption+chr(39)+')');
  dm.DocPagarGeral.SQL.Add('order by D.vencto');
  dm.DocPagarGeral.Open;
end;

procedure AtualizaE;
begin
      dm.MovEstoque.Close;
      dm.MovEstoque.SQL.Clear;
      dm.MovEstoque.SQL.Add('select * from movestoque');
      dm.MovEstoque.SQL.Add('where (produto = '+IntToStr(FrmNotasFiscais.qrMovEstoqueproduto.Value)+')');
      dm.MovEstoque.SQL.Add('and (favorecido = '+IntToStr(FrmNotasFiscais.qrMovEstoquefavorecido.Value)+')');
      dm.MovEstoque.SQL.Add('and (documento = '+chr(39)+FrmNotasFiscais.qrMovEstoquedocumento.Value+chr(39)+')');
      dm.MovEstoque.SQL.Add('and (tipomov = '+chr(39)+'EC'+chr(39)+')');
      dm.MovEstoque.Open;

      dm.produtos.close;
      dm.produtos.sql.clear;
      dm.produtos.sql.add('select * from produtos');
      dm.produtos.sql.add('where codigo = '+IntToStr(dm.MovEstoqueproduto.Value));
      dm.produtos.open;
      FrmNotasFiscais.edproduto.Text:=IntToStr(dm.MovEstoqueproduto.Value);
      FrmNotasFiscais.lbnomeproduto.Caption:=dm.produtosnome.Value;
      FrmNotasFiscais.cbunidade.Text:=dm.MovEstoqueund.Value;
      FrmNotasFiscais.edqtd.Text:=FloatToStr(dm.MovEstoqueqtd.Value);
      FrmNotasFiscais.edvlrunit.Text:=formatfloat('#,##0.00',dm.MovEstoqueVlrUnit.Value);

end;

procedure ExcluirMov;
begin
  dm.parametros.Open;
  dm.MovEstoque.Close;
  dm.MovEstoque.SQL.Clear;
  dm.MovEstoque.SQL.Add('select * from movestoque');
  dm.MovEstoque.SQL.Add('where (documento = '+chr(39)+FrmNotasFiscais.eddocumento.Text+chr(39)+')');
  dm.MovEstoque.SQL.Add('and (favorecido = '+FrmNotasFiscais.edfavorecido.Text+')');
  dm.MovEstoque.Open;
  while not dm.MovEstoque.Eof do
        begin
           dm.produtos.close;
           dm.produtos.sql.clear;
           dm.produtos.sql.add('select * from produtos');
           dm.produtos.sql.add('where codigo = '+IntToStr(dm.MovEstoqueproduto.Value));
           dm.produtos.open;

           mes:=StrToInt(copy(FrmNotasFiscais.merecepcao.Text,4,2));
           if copy(FrmNotasFiscais.cbtipo.Text,1,1)='E' then
              antestoque:=dm.produtosestoque.Value-dm.MovEstoqueqtd.Value
           else if copy(FrmNotasFiscais.cbtipo.Text,1,1)='S' then
              antestoque:=dm.produtosestoque.Value+dm.MovEstoqueqtd.Value;

           FrmNotasFiscais.qratualizar.close;
           FrmNotasFiscais.qratualizar.sql.clear;
           FrmNotasFiscais.qratualizar.sql.add('update produtos set');
           FrmNotasFiscais.qratualizar.sql.add('estoque = :antestoque');
           FrmNotasFiscais.qratualizar.sql.add('where codigo = '+IntToStr(dm.MovEstoqueproduto.Value));
           FrmNotasFiscais.qratualizar.Params[0].Value := antestoque;
           FrmNotasFiscais.qratualizar.ExecSQL;

           dm.MovEstoque.Next;
        end;

  FrmNotasFiscais.qratualizar.sql.clear;
  FrmNotasFiscais.qratualizar.sql.add('delete from movestoque');
  FrmNotasFiscais.qratualizar.sql.add('where (documento ='+chr(39)+FrmNotasFiscais.lbdoc.Caption+chr(39)+')');
  FrmNotasFiscais.qratualizar.sql.add('and (favorecido ='+FrmNotasFiscais.edfavorecido.Text+')');
  FrmNotasFiscais.qratualizar.ExecSQL;

  if copy(FrmNotasFiscais.cbtipo.Text,1,1)='E' then
     begin
       FrmNotasFiscais.qratualizar.Close;
       FrmNotasFiscais.qratualizar.SQL.Clear;
       FrmNotasFiscais.qratualizar.SQL.Add('delete from docpagar');
       FrmNotasFiscais.qratualizar.sql.add('where (doc like'+chr(39)+FrmNotasFiscais.eddocumento.Text+'%'+chr(39)+')');
       FrmNotasFiscais.qratualizar.sql.add('and (fornecedor ='+FrmNotasFiscais.edfavorecido.Text+')');
       FrmNotasFiscais.qratualizar.ExecSQL;
     end
     else
     begin
       FrmNotasFiscais.qratualizar.Close;
       FrmNotasFiscais.qratualizar.SQL.Clear;
       FrmNotasFiscais.qratualizar.SQL.Add('delete from docreceber');
       FrmNotasFiscais.qratualizar.sql.add('where (nf like'+chr(39)+FrmNotasFiscais.eddocumento.Text+'%'+chr(39)+')');
       FrmNotasFiscais.qratualizar.sql.add('and (cliente ='+FrmNotasFiscais.edfavorecido.Text+')');
       FrmNotasFiscais.qratualizar.ExecSQL;
     end;
end;

procedure limpar;
begin
        FrmNotasFiscais.cbtipo.OnExit:=FrmNotasFiscais.cbtipoExit;
        FrmNotasFiscais.edfavorecido.OnExit:=FrmNotasFiscais.edfavorecidoExit;
        FrmNotasFiscais.meemissao.OnExit:=FrmNotasFiscais.meemissaoExit;
        FrmNotasFiscais.merecepcao.OnExit:=FrmNotasFiscais.merecepcaoExit;
        FrmNotasFiscais.edvlrcontabil.OnExit:=FrmNotasFiscais.edvlrcontabilExit;
        FrmNotasFiscais.edbasecalculo.OnExit:=FrmNotasFiscais.edbasecalculoExit;
        FrmNotasFiscais.edicms.OnExit:=FrmNotasFiscais.edicmsExit;
        FrmNotasFiscais.edvlricms.OnExit:=FrmNotasFiscais.edvlricmsExit;
        FrmNotasFiscais.edvlripi.OnExit:=FrmNotasFiscais.edvlripiExit;
        FrmNotasFiscais.edvlrisentas.OnExit:=FrmNotasFiscais.edvlrisentasExit;
        FrmNotasFiscais.edvlroutras.OnExit:=FrmNotasFiscais.edvlroutrasExit;
        FrmNotasFiscais.edbasesubst.OnExit:=FrmNotasFiscais.edbasesubstExit;
        FrmNotasFiscais.edicmssubst.OnExit:=FrmNotasFiscais.edicmssubstExit;

        FrmNotasFiscais.cbtipo.text:='';
        FrmNotasFiscais.edfavorecido.text:='';
        FrmNotasFiscais.lbnomefavorecido.caption:='';
        FrmNotasFiscais.lbfavorecido.caption:='';
        FrmNotasFiscais.lbfavorecidoI.caption:='';
        FrmNotasFiscais.EdCfop.text:='';
        FrmNotasFiscais.eddocumento.text:='';
        FrmNotasFiscais.lbdoc.caption:='';
        FrmNotasFiscais.lbdocI.caption:='';
        FrmNotasFiscais.EdSerie.text:='';
        FrmNotasFiscais.meemissao.text:='';
        FrmNotasFiscais.merecepcao.text:='';
        FrmNotasFiscais.lbdata.caption:='';
        FrmNotasFiscais.lbdataI.caption:='';
        FrmNotasFiscais.edvlrcontabil.text:='';
        FrmNotasFiscais.edbasecalculo.text:='';
        FrmNotasFiscais.edvlrfrete.text:='';
        FrmNotasFiscais.edicms.text:='';
        FrmNotasFiscais.edvlricms.text:='';
        FrmNotasFiscais.edvlripi.text:='';
        FrmNotasFiscais.edvlrisentas.text:='';
        FrmNotasFiscais.edvlroutras.text:='';
        FrmNotasFiscais.edbasesubst.text:='';
        FrmNotasFiscais.edicmssubst.text:='';
end;

procedure desabilita;
begin
        FrmNotasFiscais.btnovo.enabled:=false;
        FrmNotasFiscais.btalterar.enabled:=false;
        FrmNotasFiscais.btexcluir.enabled:=false;
        FrmNotasFiscais.btrelatorio.enabled:=false;
        FrmNotasFiscais.btgravar.enabled:=true;
        FrmNotasFiscais.gbnf.enabled:=true;
end;

procedure habilita;
begin
  dm.usuarios.Close;
  dm.usuarios.Open;
  dm.usuarios.Locate('nome',frmprincipal.sb.Panels[3].Text,[]);
  FrmNotasFiscais.btnovo.enabled:=true;
  FrmNotasFiscais.btalterar.enabled:=true;
  FrmNotasFiscais.btexcluir.enabled:=true;
  FrmNotasFiscais.btrelatorio.enabled:=true;
  FrmNotasFiscais.btgravar.enabled:=false;
  FrmNotasFiscais.gbnf.enabled:=false;
end;

procedure desabilitaE;
begin
        FrmNotasFiscais.btnovoE.enabled:=false;
        FrmNotasFiscais.btexcluirE.enabled:=false;
        FrmNotasFiscais.btgravarE.enabled:=true;
        FrmNotasFiscais.gbmovestoque.enabled:=true;
end;

procedure habilitaE;
begin
        FrmNotasFiscais.btnovoE.enabled:=true;
        FrmNotasFiscais.btexcluirE.enabled:=true;
        FrmNotasFiscais.btgravarE.enabled:=false;
        FrmNotasFiscais.gbmovestoque.enabled:=false;
end;

procedure desabilitaD;
begin
        FrmNotasFiscais.btnovoD.enabled:=false;
        FrmNotasFiscais.btexcluirD.enabled:=false;
        FrmNotasFiscais.btgravarD.enabled:=true;
        FrmNotasFiscais.gbdocpagar.enabled:=true;
end;

procedure habilitaD;
begin
        FrmNotasFiscais.btnovoD.enabled:=true;
        FrmNotasFiscais.btexcluirD.enabled:=true;
        FrmNotasFiscais.btgravarD.enabled:=false;
        FrmNotasFiscais.gbdocpagar.enabled:=false;
end;

procedure LimparE;
begin
        dm.parametros.Close;
        dm.parametros.Open;
        FrmNotasFiscais.edproduto.Text:='';
        FrmNotasFiscais.lbnomeproduto.Caption:='';
        FrmNotasFiscais.cbunidade.Text:='';
        FrmNotasFiscais.edqtd.Text:='';
        FrmNotasFiscais.edvlrunit.Text:='';
end;

procedure LimparD;
begin
        FrmNotasFiscais.cbtipodoc.Text:='';
        FrmNotasFiscais.eddocum.Text:='';
        FrmNotasFiscais.meemissaodoc.Text:='';
        FrmNotasFiscais.mevencto.Text:='';
        FrmNotasFiscais.edvalordoc.Text:='';
        FrmNotasFiscais.edlocalcob.Text:='';
        FrmNotasFiscais.cbplconta.Text:='';
end;

procedure AtualizaD;
begin
    if dm.DocPagarGeraltipo.Value='' then
       FrmNotasFiscais.cbtipodoc.text:=''
    else
    begin
       dm.formapagto.close;
       dm.formapagto.SQL.Clear;
       dm.formapagto.SQL.Add('select * from formapagto');
       dm.formapagto.Open;
       dm.formapagto.Locate('codigo',dm.DocPagarGeraltipo.Value,[]);
       FrmNotasFiscais.cbtipodoc.text:=dm.formapagtocodigo.Value+' - '+dm.formapagtodescricao.Value;
    end;
  FrmNotasFiscais.eddocum.Text:=dm.DocPagarGeraldoc.Value;
  if dm.DocPagarGeralemissao.Value<>StrToDate('30/12/1899') then
     FrmNotasFiscais.meemissaodoc.Text:=DateToStr(dm.DocPagarGeralemissao.Value)
  else
     FrmNotasFiscais.meemissaodoc.Text:='';
  if dm.DocPagarGeralvencto.Value<>StrToDate('30/12/1899') then
     FrmNotasFiscais.mevencto.Text:=DateToStr(dm.DocPagarGeralvencto.Value)
  else
     FrmNotasFiscais.mevencto.Text:='';
  if not dm.DocPagarGeralvalor.IsNull then
     FrmNotasFiscais.edvalordoc.Text:=formatfloat('#,##0.00',dm.DocPagarGeralvalor.value)
  else
     FrmNotasFiscais.edvalordoc.Text:='';
end;

procedure TFrmNotasFiscais.BitBtn11Click(Sender: TObject);
begin
        close;
end;

procedure TFrmNotasFiscais.btnovoClick(Sender: TObject);
begin
        opcao:=1;
        desabilita;
        limpar;
        cbtipo.SetFocus;
end;

procedure TFrmNotasFiscais.btalterarClick(Sender: TObject);
begin
        opcao:=2;
        desabilita;
        cbtipo.SetFocus;
end;

procedure TFrmNotasFiscais.btcancelarClick(Sender: TObject);
begin
        if btnovo.Enabled=false then
           begin
             habilita;
             limpar;
           end
           else
             close;
end;

procedure TFrmNotasFiscais.meemissaoExit(Sender: TObject);
begin
        if meemissao.text<>'  /  /    ' then
        Try
           StrToDate(meemissao.Text) ;
        Except
        begin
           application.MessageBox('Data Inv�lida!','Aten��o',mb_Ok+mb_iconerror);
           meemissao.setfocus;
        end;
        end;
end;

procedure TFrmNotasFiscais.merecepcaoExit(Sender: TObject);
begin
        if merecepcao.text<>'  /  /    ' then
        Try
           StrToDate(merecepcao.Text) ;
        Except
        begin
           application.MessageBox('Data Inv�lida!','Aten��o',mb_Ok+mb_iconerror);
           merecepcao.setfocus;
        end;
        end;
end;

procedure TFrmNotasFiscais.FormKeyPress(Sender: TObject; var Key: Char);
begin
        if Key = CHR(13) Then
           Begin
              perform(WM_NextDlgCtl,0,0);
              Key := CHR(0);
           End;
end;

procedure TFrmNotasFiscais.edvlrcontabilExit(Sender: TObject);
begin
        if edvlrcontabil.Text<>'' then
           begin
             edvlrcontabil.Text:=formatfloat('#,##0.00',StringToFloat(edvlrcontabil.text));
             edbasecalculo.Text:=formatfloat('#,##0.00',StringToFloat(edvlrcontabil.text));
           end;
end;

procedure TFrmNotasFiscais.edbasecalculoExit(Sender: TObject);
begin
        if edbasecalculo.Text<>'' then
           edbasecalculo.Text:=formatfloat('#,##0.00',StringToFloat(edbasecalculo.text));
end;

procedure TFrmNotasFiscais.edicmsExit(Sender: TObject);
begin
        if edicms.Text<>'' then
           begin
             edicms.Text:=formatfloat('0.00',StringToFloat(edicms.text));
             edvlricms.Text:=formatfloat('0.00',StringToFloat(edicms.text)*StringToFloat(edbasecalculo.text)/100);
           end;
end;

procedure TFrmNotasFiscais.edvlricmsExit(Sender: TObject);
begin
        if edvlricms.Text<>'' then
           edvlricms.Text:=formatfloat('#,##0.00',StringToFloat(edvlricms.text));
end;

procedure TFrmNotasFiscais.edvlripiExit(Sender: TObject);
begin
        if edvlripi.Text<>'' then
           edvlripi.Text:=formatfloat('#,##0.00',StringToFloat(edvlripi.text));
end;

procedure TFrmNotasFiscais.edvlrisentasExit(Sender: TObject);
begin
        if edvlrisentas.Text<>'' then
           edvlrisentas.Text:=formatfloat('#,##0.00',StringToFloat(edvlrisentas.text));
end;

procedure TFrmNotasFiscais.edvlroutrasExit(Sender: TObject);
begin
        if edvlroutras.Text<>'' then
           edvlroutras.Text:=formatfloat('#,##0.00',StringToFloat(edvlroutras.text));
end;

procedure TFrmNotasFiscais.edbasesubstExit(Sender: TObject);
begin
        if edbasesubst.Text<>'' then
           edbasesubst.Text:=formatfloat('#,##0.00',StringToFloat(edbasesubst.text));
end;

procedure TFrmNotasFiscais.edicmssubstExit(Sender: TObject);
begin
        if edicmssubst.Text<>'' then
           edicmssubst.Text:=formatfloat('#,##0.00',StringToFloat(edicmssubst.text));
        btgravar.Click;
end;

procedure TFrmNotasFiscais.FormShow(Sender: TObject);
begin
  medatainicial.Text:=DateToStr(date);
  medatafinal.Text:=DateToStr(date);
  btfiltrar.Click;
  PageControl1.ActivePageIndex := 0;
  dm.DocPagarGeral.Close;
  limpar;

  dm.formapagto.Close;
  dm.formapagto.SQL.Clear;
  dm.formapagto.SQL.Add('select * from formapagto');
  dm.formapagto.Open;
  cbtipodoc.Items.Clear;
  while not dm.formapagto.Eof do
        begin
          cbtipodoc.Items.Add(dm.formapagtocodigo.Value+' - '+
          dm.formapagtodescricao.Value);
          dm.formapagto.Next;
        end;

  dm.PlanoContas.Close;
  dm.PlanoContas.SQL.Clear;
  dm.PlanoContas.SQL.Add('select * from planocontas');
  dm.PlanoContas.open;
  cbplconta.Items.Clear;
  while not dm.PlanoContas.Eof do
        begin
          cbplconta.Items.add(dm.PlanoContaschave.value);
          dm.PlanoContas.Next;
        end;
end;

procedure TFrmNotasFiscais.cbtipoExit(Sender: TObject);
begin
        if cbtipo.Text='' then
            cbtipo.SetFocus
        else
        begin
          if (copy(cbtipo.Text,1,1)<>'E') and
             (copy(cbtipo.Text,1,1)<>'S') then
             begin
                application.MessageBox('Tipo de Nota Fiscal Inv�lido','Aten��o',mb_ok+mb_iconerror);
                cbtipo.SetFocus;
             end;
        end;
end;

procedure TFrmNotasFiscais.btgravarClick(Sender: TObject);
var
N_emissao,N_recepcao,
N_serie,N_cfop:string;
N_vlrcontabil,N_basecalculo,N_icmsp,
N_vlricms,N_vlripi,N_vlrisentas,N_vlrfrete,
N_vlroutras,N_basesubst,N_icmssubst:real;
N_favorecido:integer;
begin
      if opcao=1 then
         begin
           try
             dm.NF.sql.clear;
             dm.NF.sql.add('select * from nf');
             dm.NF.sql.add('where (documento ='+chr(39)+eddocumento.Text+chr(39)+')');
             dm.NF.sql.add('and (tipo ='+chr(39)+copy(cbtipo.text,1,1)+chr(39)+')');
             dm.NF.sql.add('and (favorecido ='+edfavorecido.Text+')');
             dm.NF.open;
             dm.NF.Insert;
             dm.NFtipo.Value:=copy(cbtipo.Text,1,1);
             dm.NFfavorecido.Value:=StrToInt(edfavorecido.Text);
             dm.NFdocumento.Value:=eddocumento.Text;
             if meemissao.Text<>'  /  /    ' then
                dm.NFemissao.Value:=StrToDate(meemissao.Text);
             if merecepcao.Text<>'  /  /    ' then
               dm.NFrecepcao.Value:=StrToDate(merecepcao.Text);
             dm.NFserie.Value:=EdSerie.Text;
             dm.NFcfop.Value:=EdCfop.Text;
             if edvlrcontabil.Text<>'' then
                dm.NFvlrcontabil.value:=StringToFloat(edvlrcontabil.Text);
             if edbasecalculo.Text<>'' then
                dm.NFbasecalculo.value:=StringToFloat(edbasecalculo.Text);
             if edicms.Text<>'' then
                dm.NFicmsp.value:=StringToFloat(edicms.Text);
             if edvlricms.Text<>'' then
                dm.NFvlricms.value:=StringToFloat(edvlricms.Text);
             if edvlripi.Text<>'' then
                dm.NFvlripi.value:=StringToFloat(edvlripi.Text);
             if edvlrisentas.Text<>'' then
                dm.NFvlrisentas.value:=StringToFloat(edvlrisentas.Text);
             if edvlroutras.Text<>'' then
                dm.NFvlroutras.value:=StringToFloat(edvlroutras.Text);
             if edbasesubst.Text<>'' then
                dm.NFbasesubst.value:=StringToFloat(edbasesubst.Text);
             if edicmssubst.Text<>'' then
                dm.NFicmssubst.value:=StringToFloat(edicmssubst.Text);
             if edvlrfrete.Text<>'' then
                dm.nfvlrfrete.value:=StringToFloat(edvlrfrete.Text);
             dm.NF.Post;
             dm.NF.Close;

             R_hora:=TimeToStr(time);
             dm.rastro.Close;
             dm.rastro.SQL.Clear;
             dm.rastro.SQL.Add('select * from rastro');
             dm.rastro.SQL.Add('where (1=2)');
             dm.rastro.Open;
             dm.rastro.Insert;
             dm.rastrodata.Value:=date;
             dm.rastrohora.Value:=R_hora;
             dm.rastrooperador.Value:=FrmPrincipal.sb.Panels[3].Text;
             dm.rastrorotina.Value:='NOTA FISCAL';
             dm.rastrooperacao.Value:='I';
             dm.rastrohistorico.Value:=eddocumento.Text+' - '+lbfavorecido.Caption;
             dm.rastrofavorecido.Value:=StrToInt(edfavorecido.Text);
             if edvlrcontabil.Text<>'' then
                dm.rastrovalor.Value:=StringToFloat(edvlrcontabil.Text);
             dm.rastro.Post;
             dm.rastro.Close;
           except
             application.MessageBox('Erro ao Inserir Registro','Aten��o',mb_Ok+mb_iconerror);
             btcancelar.Click;
           end;
//           dm.NF.Locate('documento;favorecido',varArrayOf([eddocumento.text,cbfavorecido.text]),[]);
           lbfavorecido.caption:=lbnomefavorecido.Caption;
           lbfavorecidoI.caption:=lbnomefavorecido.Caption;
           lbdoc.caption:=dm.NFdocumento.Value;
           lbdocI.caption:=dm.NFdocumento.Value;
           FrmNotasFiscais.lbdata.Caption:=merecepcao.Text;
           FrmNotasFiscais.lbdataI.Caption:=merecepcao.Text;
         end
         else
         begin
           try
              R_hora:=TimeToStr(time);
              dm.rastro.Close;
              dm.rastro.SQL.Clear;
              dm.rastro.SQL.Add('select * from rastro');
              dm.rastro.SQL.Add('where (1=2)');
              dm.rastro.Open;
              dm.rastro.Insert;
              dm.rastrodata.Value:=date;
              dm.rastrohora.Value:=R_hora;
              dm.rastrooperador.Value:=FrmPrincipal.sb.Panels[3].Text;
             dm.rastrorotina.Value:='NOTA FISCAL';
             dm.rastrooperacao.Value:='A';
             dm.rastrohistorico.Value:=eddocumento.Text+' - '+lbfavorecido.Caption;
             dm.rastrofavorecido.Value:=StrToInt(edfavorecido.Text);
             if edvlrcontabil.Text<>'' then
                dm.rastrovalor.Value:=StringToFloat(edvlrcontabil.Text);
             dm.rastro.Post;
             dm.rastro.Close;

             N_vlrcontabil:=0;
             N_basecalculo:=0;
             N_icmsp:=0;
             N_vlricms:=0;
             N_vlripi:=0;
             N_vlrisentas:=0;
             N_vlroutras:=0;
             N_basesubst:=0;
             N_icmssubst:=0;
             N_favorecido:=0;
             N_vlrfrete:=0;

             if edfavorecido.Text<>'' then
                N_favorecido:=StrToInt(edfavorecido.Text);
             if meemissao.Text<>'  /  /    ' then
                N_emissao:=copy(meemissao.text,7,4)+'/'+
                copy(meemissao.text,4,2)+'/'+copy(meemissao.text,1,2)
             else
                N_emissao:='0000/00/00';
             if merecepcao.Text<>'  /  /    ' then
                N_recepcao:=copy(merecepcao.text,7,4)+'/'+
                copy(merecepcao.text,4,2)+'/'+copy(merecepcao.text,1,2)
             else
                N_recepcao:='0000/00/00';
             N_serie:=EdSerie.Text;
             N_cfop:=EdCfop.Text;
             if edvlrcontabil.Text<>'' then
                N_vlrcontabil:=StringToFloat(edvlrcontabil.Text);
             if edbasecalculo.Text<>'' then
                N_basecalculo:=StringToFloat(edbasecalculo.Text);
             if edicms.Text<>'' then
                N_icmsp:=StringToFloat(edicms.Text);
             if edvlricms.Text<>'' then
                N_vlricms:=StringToFloat(edvlricms.Text);
             if edvlripi.Text<>'' then
                N_vlripi:=StringToFloat(edvlripi.Text);
             if edvlrisentas.Text<>'' then
                N_vlrisentas:=StringToFloat(edvlrisentas.Text);
             if edvlroutras.Text<>'' then
                N_vlroutras:=StringToFloat(edvlroutras.Text);
             if edbasesubst.Text<>'' then
                N_basesubst:=StringToFloat(edbasesubst.Text);
             if edicmssubst.Text<>'' then
                N_icmssubst:=StringToFloat(edicmssubst.Text);
             if edvlrfrete.Text<>'' then
                N_vlrfrete:=StringToFloat(edvlrfrete.Text);

             qratualizar.close;
             qratualizar.sql.clear;
             qratualizar.sql.add('update NF set');
             qratualizar.sql.add('emissao = :N_emissao,');
             qratualizar.sql.add('recepcao = :N_recepcao,');
             qratualizar.sql.add('serie = :N_serie,');
             qratualizar.sql.add('cfop = :N_cfop,');
             qratualizar.sql.add('vlrcontabil = :N_vlrcontabil,');
             qratualizar.sql.add('basecalculo = :N_basecalculo,');
             qratualizar.sql.add('icmsp = :N_icmsp,');
             qratualizar.sql.add('vlricms = :N_vlricms,');
             qratualizar.sql.add('vlripi = :N_vlripi,');
             qratualizar.sql.add('vlrisentas = :N_vlrisentas,');
             qratualizar.sql.add('vlroutras = :N_vlroutras,');
             qratualizar.sql.add('basesubst = :N_basesubst,');
             qratualizar.sql.add('icmssubst = :N_icmssubst,');
             qratualizar.sql.add('favorecido = :N_favorecido,');
             qratualizar.sql.add('vlrfrete = :N_vlrfrete');
             qratualizar.sql.add('where (documento ='+chr(39)+eddocumento.Text+chr(39)+')');
             qratualizar.sql.add('and (tipo ='+chr(39)+copy(cbtipo.text,1,1)+chr(39)+')');
             qratualizar.Params[0].Value := N_emissao;
             qratualizar.Params[1].Value := N_recepcao;
             qratualizar.Params[2].Value := N_serie;
             qratualizar.Params[3].Value := N_cfop;
             qratualizar.Params[4].Value := N_vlrcontabil;
             qratualizar.Params[5].Value := N_basecalculo;
             qratualizar.Params[6].Value := N_icmsp;
             qratualizar.Params[7].Value := N_vlricms;
             qratualizar.Params[8].Value := N_vlripi;
             qratualizar.Params[9].Value := N_vlrisentas;
             qratualizar.Params[10].Value := N_vlroutras;
             qratualizar.Params[11].Value := N_basesubst;
             qratualizar.Params[12].Value := N_icmssubst;
             qratualizar.Params[13].Value := N_favorecido;
             qratualizar.Params[14].Value := N_vlrfrete;
             qratualizar.ExecSQL;

{             qratualizar.close;
             qratualizar.sql.clear;
             qratualizar.sql.add('update MovEstoque set');
             qratualizar.sql.add('favorecido = :N_favorecido');
             qratualizar.sql.add('where (documento ='+chr(39)+eddocumento.Text+chr(39)+')');
             qratualizar.sql.add('and (TipoMov ='+chr(39)+'EC'+chr(39)+')');
             qratualizar.Params[0].Value := N_favorecido;
             qratualizar.ExecSQL;
}
           except
             application.MessageBox('Erro ao Atualizar Registro','Aten��o',mb_Ok+mb_iconerror);
             btcancelar.Click;
           end;
         end;
      habilita;

      qrconsulta.Close;
      qrconsulta.SQL.Clear;
      qrconsulta.SQL.Add('select N.documento,N.favorecido,N.tipo,N.emissao,N.recepcao,');
      qrconsulta.SQL.Add('N.vlrcontabil,N.basecalculo,F.nome,N.cancelada');
      if copy(cbtipo.text,1,1)='E' then
         begin
           qrconsulta.SQL.Add('from nf N, fornecedores F');
           qrconsulta.SQL.Add('where (N.favorecido=F.codigo)');
           qrconsulta.SQL.Add('and (N.tipo = '+chr(39)+'E'+chr(39)+')');
           qrconsulta.SQL.Add('and (N.recepcao = '+chr(39)+
           copy(merecepcao.text,7,4)+'/'+copy(merecepcao.text,4,2)+'/'+
           copy(merecepcao.text,1,2)+chr(39)+')');
           qrconsulta.SQL.Add('order by N.recepcao');
         end
         else
         begin
           qrconsulta.SQL.Add('from nf N, clientes F');
           qrconsulta.SQL.Add('where (N.favorecido=F.codigo)');
           qrconsulta.SQL.Add('and (N.tipo = '+chr(39)+'S'+chr(39)+')');
           qrconsulta.SQL.Add('and (N.emissao = '+chr(39)+
           copy(meemissao.text,7,4)+'/'+copy(meemissao.text,4,2)+'/'+
           copy(meemissao.text,1,2)+chr(39)+')');
           qrconsulta.SQL.Add('order by N.emissao');
         end;
      qrconsulta.open;
      qrconsulta.Locate('documento',eddocumento.Text,[]);
      atualiza;
end;

procedure TFrmNotasFiscais.DBGrid1DblClick(Sender: TObject);
begin
  Atualiza;
  PageControl1.ActivePageIndex := 1;
end;

procedure TFrmNotasFiscais.btlocalizarClick(Sender: TObject);
var
busca:string;
ClickedOK: Boolean;
begin
      busca := '';
      ClickedOK := InputQuery('Localiza��o por Nota Fiscal', 'Digite o n�mero da nota', busca);
      if ClickedOK then
         begin
           qrconsulta.Close;
           qrconsulta.SQL.Clear;
           qrconsulta.SQL.Add('select N.documento,N.favorecido,N.tipo,N.emissao,N.recepcao,');
           qrconsulta.SQL.Add('N.vlrcontabil,N.basecalculo,F.nome,N.cancelada');
           if copy(cbtipo.text,1,1)='E' then
              begin
                qrconsulta.SQL.Add('from nf N, fornecedores F');
                qrconsulta.SQL.Add('where (N.favorecido=F.codigo)');
                qrconsulta.SQL.Add('and (N.tipo = '+chr(39)+'E'+chr(39)+')');
                qrconsulta.SQL.Add('and (N.documento = '+chr(39)+busca+chr(39)+')');
                qrconsulta.SQL.Add('order by N.recepcao');
              end
              else
              begin
                qrconsulta.SQL.Add('from nf N, clientes F');
                qrconsulta.SQL.Add('where (N.favorecido=F.codigo)');
                qrconsulta.SQL.Add('and (N.tipo = '+chr(39)+'S'+chr(39)+')');
                qrconsulta.SQL.Add('and (N.documento = '+chr(39)+busca+chr(39)+')');
                qrconsulta.SQL.Add('order by N.emissao');
              end;
           qrconsulta.open;
           atualiza
         end
         else
           limpar;
end;

procedure TFrmNotasFiscais.btnovoEClick(Sender: TObject);
begin
      if (lbdoc.Caption<>'') and (lbfavorecido.Caption<>'') then
         begin
           cbunidade.OnExit:=cbunidadeExit;
           edqtd.OnExit:=edqtdExit;
           edvlrunit.OnExit:=edvlrunitExit;
           LimparE;
           desabilitaE;
           edproduto.SetFocus;
         end;
end;

procedure TFrmNotasFiscais.cbunidadeExit(Sender: TObject);
begin
      if cbunidade.Text='' then
         cbunidade.SetFocus;
end;

procedure TFrmNotasFiscais.edvlrunitExit(Sender: TObject);
begin
        if edvlrunit.Text<>'' then
           edvlrunit.Text:=formatfloat('#,##0.00',StringToFloat(edvlrunit.text));
end;

procedure TFrmNotasFiscais.edqtdExit(Sender: TObject);
begin
        if edqtd.Text='' then
           edqtd.SetFocus;
end;

procedure TFrmNotasFiscais.btgravarEClick(Sender: TObject);
begin
      if (edproduto.Text<>'') and (edqtd.Text<>'') then
         begin
           dm.parametros.Open;
           try
//           if not dm.MovEstoque.Locate('produto',edcodigo.text,[]) then
//              begin
                dm.MovEstoque.Insert;
                dm.MovEstoquedata.Value:=StrToDate(lbdata.caption);
                dm.MovEstoqueTipoMov.Value:='EC';
                dm.MovEstoqueproduto.Value:=dm.produtoscodigo.Value;
                dm.MovEstoquelocal.Value:='1';
                if cbunidade.Text=dm.produtosundint.Value then
                   begin
                     dm.MovEstoqueund.Value:=cbunidade.Text;
                     dm.MovEstoqueqtd.Value:=StrToFloat(edqtd.Text);
                     dm.MovEstoqueVlrUnit.Value:=StringToFloat(edvlrunit.Text);
                   end
                   else
                   begin
                     dm.MovEstoqueund.Value:=dm.produtosundint.Value;
                     dm.MovEstoqueqtd.Value:=StrToFloat(edqtd.Text)*dm.produtosqtdemb.Value;
                     dm.MovEstoqueVlrUnit.Value:=StringToFloat(edvlrunit.Text)/dm.produtosqtdemb.Value;
                   end;
                dm.MovEstoqueVlrTotal.Value:=StrToFloat(edqtd.Text)*StringToFloat(edvlrunit.Text);
                dm.MovEstoquedocumento.Value:=lbdoc.Caption;
                dm.MovEstoquefavorecido.Value:=StrToInt(edfavorecido.Text);
                dm.movestoquelocal.Value := FrmPrincipal.sb.Panels[7].Text;
                dm.MovEstoque.Post;

                 R_hora:=TimeToStr(time);
                 dm.rastro.Close;
                 dm.rastro.SQL.Clear;
                 dm.rastro.SQL.Add('select * from rastro');
                 dm.rastro.SQL.Add('where (1=2)');
                 dm.rastro.Open;
                 dm.rastro.Insert;
                 dm.rastrodata.Value:=date;
                 dm.rastrohora.Value:=R_hora;
                 dm.rastrooperador.Value:=FrmPrincipal.sb.Panels[3].Text;
                 dm.rastrorotina.Value:='MOV. ESTOQUE';
                 dm.rastrooperacao.Value:='I';
                 dm.rastrohistorico.Value:='EC '+lbnomeproduto.Caption+' - '+edqtd.Text;
                 dm.rastrofavorecido.Value:=StrToInt(edproduto.Text);
                 dm.rastroobs.Value:=FrmPrincipal.sb.Panels[7].text+' - '+FrmPrincipal.Panel2.Caption+' - '+eddocumento.Text;
                 dm.rastro.Post;
                 dm.rastro.Close;


                dm.MovEstoque.Close;
                dm.MovEstoque.Open;
                dm.MovEstoque.Last;
                qrMovEstoque.Close;
                qrMovEstoque.Open;
                qrMovEstoque.Locate('produto',IntToStr(dm.produtoscodigo.Value),[]);
              except
                application.MessageBox('Erro ao Inserir Produto','Aten��o',mb_Ok+MB_ICONINFORMATION);
                dm.MovEstoque.Cancel;
                edproduto.setfocus;
              end;

           edproduto.Text:='';
           cbunidade.Text:='';
           edqtd.Text:='';
           edvlrunit.Text:='';
           TotalizarEstoque;
         end;
      habilitaE;
      LimparE;
      btnovoE.SetFocus;
end;

procedure TFrmNotasFiscais.DBGrid2CellClick(Column: TColumn);
begin
  if btnovo.Enabled=true then
     AtualizaE
  else
     edproduto.SetFocus;
end;

procedure TFrmNotasFiscais.btexcluirEClick(Sender: TObject);
begin
      if edproduto.Text='' then
         begin
           application.MessageBox('Escolha um produto','Aten��o',mb_ok+mb_iconinformation);
           DBGrid2.SetFocus;
         end
         else
         begin
           if Application.Messagebox ('Confirma exclus�o do registro?','Aten��o', mb_yesno+mb_iconquestion+MB_DEFBUTTON2)=id_yes then
              begin
                 dm.parametros.Open;
                 dm.produtos.Close;
                 dm.produtos.SQL.Clear;
                 dm.produtos.SQL.Add('select * from produtos');
                 dm.produtos.SQL.Add('where codigo = '+edproduto.Text);
                 dm.produtos.open;

                 if copy(cbtipo.Text,1,1)='E' then
                    antestoque:=dm.produtosestoque.Value-StrToFloat(edqtd.Text)
                 else if copy(cbtipo.Text,1,1)='S' then
                    antestoque:=dm.produtosestoque.Value+StrToFloat(edqtd.Text);

                 qratualizar.close;
                 qratualizar.sql.clear;
                 qratualizar.sql.add('update produtos set');
                 qratualizar.sql.add('estoque = :antestoque');
                 qratualizar.sql.add('where codigo = '+IntToStr(dm.produtoscodigo.Value));
                 qratualizar.Params[0].Value := antestoque;
                 qratualizar.ExecSQL;

                 qratualizar.Close;
                 qratualizar.SQL.Clear;
                 qratualizar.SQL.Add('delete from movestoque');
                 qratualizar.SQL.Add('where (documento= '+chr(39)+lbdoc.Caption+chr(39)+')');
                 qratualizar.SQL.Add('and (produto= '+IntToStr(dm.produtoscodigo.Value)+')');
                 qratualizar.SQL.Add('and (favorecido= '+edfavorecido.Text+')');
                 qratualizar.ExecSQL;

                 dm.MovEstoque.Close;
                 dm.MovEstoque.Open;
                 qrMovEstoque.Close;
                 qrMovEstoque.Open;
                 LimparE;
                 TotalizarEstoque;
              end;
         end;
end;

procedure TFrmNotasFiscais.btexcluirClick(Sender: TObject);
begin
      if eddocumento.text='' then
         begin
            application.MessageBox('Selecione uma Nota Fiscal','Aten��o',mb_ok+mb_iconinformation);
            DBGrid1.SetFocus;
         end
         else
         begin
            if Application.Messagebox ('Ao excluir a nota fiscal, toda '+#13+
            'a movimenta��o do estoque e Docs � pagar'+#13+
            'ser�o exclu�dos. Confirma opera��o?','Aten��o', mb_yesno+mb_iconquestion+MB_DEFBUTTON2)=id_yes then
               begin
                  dm.rastro.Close;
                  dm.rastro.SQL.Clear;
                  dm.rastro.SQL.Add('select * from rastro');
                  dm.rastro.SQL.Add('where (1=2)');
                  dm.rastro.Open;
                  dm.rastro.Insert;
                  dm.rastrodata.Value:=date;
                  dm.rastrohora.Value:=TimeToStr(time);
                  dm.rastrooperador.Value:=FrmPrincipal.sb.Panels[3].Text;
                  dm.rastrorotina.Value:='NOTA FISCAL';
                  dm.rastrohistorico.Value:=eddocumento.Text+' - FAVORECIDO: '+lbfavorecido.Caption;
                  dm.rastrooperacao.Value:='E';
                  DM.rastrofavorecido.Value:=StrToInt(edfavorecido.Text);
                  dm.rastro.Post;
                  dm.rastro.Close;

                  dm.NF.Close;
                  dm.NF.sql.clear;
                  dm.NF.sql.add('select * from nf');
                  dm.NF.sql.add('where (documento ='+chr(39)+eddocumento.Text+chr(39)+')');
                  dm.NF.sql.add('and (tipo ='+chr(39)+copy(cbtipo.text,1,1)+chr(39)+')');
                  dm.NF.sql.add('and (favorecido ='+edfavorecido.Text+')');
                  dm.NF.open;
                  ExcluirMov;
                  qratualizar.Close;
                  qratualizar.SQL.Clear;
                  qratualizar.SQL.Add('delete from nf');
                  qratualizar.sql.add('where (documento ='+chr(39)+eddocumento.Text+chr(39)+')');
                  qratualizar.sql.add('and (tipo ='+chr(39)+copy(cbtipo.text,1,1)+chr(39)+')');
                  qratualizar.sql.add('and (favorecido ='+edfavorecido.Text+')');
                  qratualizar.ExecSQL;

                  if (medatainicial.Text<>'  /  /    ') and
                     (medatafinal.Text<>'  /  /    ') then
                     btfiltrar.Click
                  else
                  begin
                    medatainicial.Text:=DateToStr(date);
                    medatafinal.Text:=DateToStr(date);
                    btfiltrar.Click;
                  end;
                  limpar;
               end;
         end;
end;

procedure TFrmNotasFiscais.merecepcaoEnter(Sender: TObject);
begin
        if merecepcao.text='  /  /    ' then
           begin
             merecepcao.text:=DateToStr(date);
             merecepcao.SelStart:=0;
             merecepcao.SelLength:=length(merecepcao.Text);
           end;
end;

procedure TFrmNotasFiscais.cbtipomovimentoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
        if key=vk_escape then
           begin
              cbunidade.OnExit:=nil;
              edqtd.OnExit:=nil;
              edvlrunit.OnExit:=nil;
              LimparE;
              habilitaE;
              btnovoe.SetFocus;
           end;
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
        if key=vk_f12 then
           btgravarE.Click;
end;

procedure TFrmNotasFiscais.edvalordocExit(Sender: TObject);
begin
        if edvalordoc.Text<>'' then
           begin
             edvalordoc.Text:=formatfloat('#,##0.00',StringToFloat(edvalordoc.text));
             if (cbtipodoc.Text<>'') and (eddocum.Text<>'') and
                (mevencto.Text<>'  /  /    ') and (edvalordoc.Text<>'') then
                begin
                  R_hora:=TimeToStr(time);
                  dm.rastro.Close;
                  dm.rastro.SQL.Clear;
                  dm.rastro.SQL.Add('select * from rastro');
                  dm.rastro.SQL.Add('where (1=2)');
                  dm.rastro.Open;
                  dm.rastro.Insert;
                  dm.rastrodata.Value:=date;
                  dm.rastrohora.Value:=R_hora;
                  dm.rastrooperador.Value:=FrmPrincipal.sb.Panels[3].Text;
                  dm.rastrorotina.Value:='DOC. PAGAR';
                  dm.rastrooperacao.Value:='I';
                  dm.rastrohistorico.Value:=eddocum.Text+' '+
                  lbfavorecidoI.Caption;
                  dm.rastrofavorecido.Value:=StrToInt(edfavorecido.Text);
                  dm.rastrovalor.Value:=StringToFloat(edvalordoc.Text);
                  dm.rastro.Post;
                  dm.rastro.Close;

                  dm.DocPagar.Close;
                  dm.DocPagar.SQL.Clear;
                  dm.DocPagar.SQL.Add('select * from docpagar');
                  dm.DocPagar.SQL.Add('where (nf = '+lbdocI.Caption+')');
                  dm.DocPagar.Open;
                  dm.DocPagar.Insert;
                  dm.DocPagarfornecedor.Value:=StrToInt(edfavorecido.text);
//                  dm.docpagarnf.Value:=StrToInt(lbdocI.Caption);
                  dm.DocPagarfixa.Value:='N';
                  dm.DocPagartipo.Value:=copy(cbtipodoc.Text,1,2);
                  dm.DocPagardoc.Value:=eddocum.Text;
                  dm.DocPagarlocalcob.Value:=edlocalcob.Text;
                  if cbplconta.Text<>'' then
                     begin
                       dm.PlanoContas.Open;
                       if dm.PlanoContas.Locate('chave',cbplconta.Text,[]) then
                          dm.DocPagarplconta.Value:=dm.PlanoContascodigo.value;
                     end;
                  if meemissaodoc.Text<>'  /  /    ' then
                     dm.DocPagaremissao.Value:=StrToDate(meemissaodoc.Text);
                  if mevencto.Text<>'  /  /    ' then
                     dm.DocPagarvencto.Value:=StrToDate(mevencto.Text);
                  if edvalordoc.Text<>'' then
                     dm.DocPagarvalor.Value:=StringToFloat(edvalordoc.Text);
                  dm.DocPagarOperador.Value:=frmprincipal.sb.Panels[3].Text;
                  dm.DocPagarData_Operacao.Value:=date;
                  dm.DocPagarHora_Operacao.Value:=TimeToStr(time);
                  dm.DocPagar.Post;
                  dm.DocPagar.Close;
                  dm.DocPagar.Open;
                  dm.DocPagarGeral.Close;
                  dm.DocPagarGeral.Open;

                  if vlrDoc>0 then
                     begin
                       vlrDoc:=vlrDoc-StringToFloat(edvalordoc.Text);
                       edvalordoc.Text:=formatfloat('#,##0.00',vlrDoc);
                       mevencto.Text:='';
                       eddocum.SetFocus;
                     end
                     else
                       LimparD;
                end
                else
                begin
                  application.MessageBox('Campos n�o preenchidos','Aten��o',mb_ok);
                  cbtipodoc.SetFocus;
                end;
           end;
end;

procedure TFrmNotasFiscais.mevenctoExit(Sender: TObject);
begin
        if mevencto.text<>'  /  /    ' then
        Try
           StrToDate(mevencto.Text) ;
        Except
        begin
           application.MessageBox('Data Inv�lida!','Aten��o',mb_Ok+mb_iconerror);
           mevencto.setfocus;
        end;
        end;
end;

procedure TFrmNotasFiscais.btnovoDClick(Sender: TObject);
begin
        if (lbdocI.Caption<>'') and (lbfavorecidoI.Caption<>'') and
           (copy(cbtipo.Text,1,1)='E')then
           begin
              mevencto.OnExit:=mevenctoExit;
              edvalordoc.OnExit:=edvalordocExit;
              LimparD;
              desabilitaD;
              if edvlrcontabil.Text<>'' then
                 vlrDoc:=StringToFloat(edvlrcontabil.Text);
              cbtipodoc.SetFocus;
           end;
end;

procedure TFrmNotasFiscais.cbtipodocKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key=vk_escape then
           begin
              cbtipodoc.OnExit:=nil;
              eddocum.OnExit:=nil;
              mevencto.OnExit:=nil;
              edvalordoc.OnExit:=nil;
              edlocalcob.OnExit:=nil;
              LimparD;
              habilitaD;
              btnovoD.SetFocus;
           end;
        if key=vk_f12 then
           btgravarD.Click;
end;

procedure TFrmNotasFiscais.btgravarDClick(Sender: TObject);
begin
        habilitaD;
        LimparD;
end;

procedure TFrmNotasFiscais.meemissaodocExit(Sender: TObject);
begin
        if meemissaodoc.text<>'  /  /    ' then
        Try
           StrToDate(meemissaodoc.Text) ;
        Except
        begin
           application.MessageBox('Data Inv�lida!','Aten��o',mb_Ok+mb_iconerror);
           meemissaodoc.setfocus;
        end;
        end;
end;

procedure TFrmNotasFiscais.CbEmpresaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key=vk_escape then
           begin
              cbtipo.OnExit:=nil;
              edfavorecido.OnExit:=nil;
              EdCfop.OnExit:=nil;
              eddocumento.OnExit:=nil;
              EdSerie.OnExit:=nil;
              meemissao.OnExit:=nil;
              merecepcao.OnExit:=nil;
              edvlrcontabil.OnExit:=nil;
              edbasecalculo.OnExit:=nil;
              edicms.OnExit:=nil;
              edvlricms.OnExit:=nil;
              edvlripi.OnExit:=nil;
              edvlrisentas.OnExit:=nil;
              edvlroutras.OnExit:=nil;
              edbasesubst.OnExit:=nil;
              edicmssubst.OnExit:=nil;
              btcancelar.Click;
           end;
        if key=vk_f10 then
           begin
             if copy(cbtipo.Text,1,1)='E' then
                begin
                  try
                    Application.CreateForm(TFrmCadFornecedores, FrmCadFornecedores);
                    FrmCadFornecedores.showmodal;
                  finally
                    FrmCadFornecedores.Release;
                    FrmCadFornecedores:=nil;
                  end;
                end
                else
                begin
                  try
                    Application.CreateForm(TFrmCadClientes, FrmCadClientes);
                    FrmCadClientes.showmodal;
                  finally
                    FrmCadClientes.Release;
                    FrmCadClientes:=nil;
                  end;
                end;
           end;
        if key=vk_f12 then
           btgravar.Click;
end;

procedure TFrmNotasFiscais.btexcluirDClick(Sender: TObject);
begin
        if eddocum.Text='' then
           begin
             application.MessageBox('Escolha um Documento','Aten��o',mb_ok+mb_iconinformation);
             DBGrid3.SetFocus;
           end
           else
           begin
             if Application.Messagebox ('Confirma exclus�o do registro?','Aten��o', Mb_YesNo+mb_iconexclamation) = id_yes then
                begin
                  dm.rastro.Close;
                  dm.rastro.SQL.Clear;
                  dm.rastro.SQL.Add('select * from rastro');
                  dm.rastro.SQL.Add('where (1=2)');
                  dm.rastro.Open;
                  dm.rastro.Insert;
                  dm.rastrodata.Value:=date;
                  dm.rastrohora.Value:=TimeToStr(time);
                  dm.rastrooperador.Value:=FrmPrincipal.sb.Panels[3].Text;
                  dm.rastrorotina.Value:='DOC. PAGAR';
                  dm.rastrooperacao.Value:='E';
                  dm.rastrohistorico.Value:=eddocum.Text+' '+
                  lbfavorecidoI.Caption;
                  dm.rastrofavorecido.Value:=StrToInt(edfavorecido.Text);
                  dm.rastrovalor.Value:=StringToFloat(edvalordoc.Text);
                  dm.rastro.Post;
                  dm.rastro.Close;

                  qratualizar.Close;
                  qratualizar.SQL.Clear;
                  qratualizar.SQL.Add('delete from docpagar');
                  qratualizar.sql.add('where (doc ='+chr(39)+eddocum.Text+chr(39)+')');
                  qratualizar.sql.add('and (fornecedor ='+edfavorecido.text+')');
                  qratualizar.ExecSQL;

                  dm.DocPagarGeral.Close;
                  dm.DocPagarGeral.Open;
                  LimparD;
                end;
           end;
end;

procedure TFrmNotasFiscais.DBGrid3CellClick(Column: TColumn);
begin
        atualizaD;
end;

procedure TFrmNotasFiscais.btrelatorioClick(Sender: TObject);
begin
  Atualiza;
  QuickRep1.Preview;
end;

procedure TFrmNotasFiscais.edfavorecidoExit(Sender: TObject);
begin
        if edfavorecido.Text<>'' then
           begin
             if copy(cbtipo.Text,1,1)='E' then
                begin
                  dm.Fornecedores.close;
                  dm.Fornecedores.sql.clear;
                  dm.Fornecedores.sql.add('select * from fornecedores');
                  dm.Fornecedores.sql.add('where codigo = '+edfavorecido.text);
                  dm.Fornecedores.open;
                  if dm.Fornecedores.RecordCount<1 then
                     begin
                       application.MessageBox('Favorecido n�o Cadastrado','Aten��o',mb_ok+mb_iconinformation);
                       edfavorecido.SetFocus;
                     end
                     else
                       lbnomefavorecido.Caption:=dm.Fornecedoresnome.Value;
                end
             else if copy(cbtipo.Text,1,1)='S' then
                begin
                  dm.Clientes.close;
                  dm.Clientes.sql.clear;
                  dm.Clientes.sql.add('select * from clientes');
                  dm.Clientes.sql.add('where codigo = '+edfavorecido.text);
                  dm.Clientes.open;
                  if dm.Clientes.RecordCount<1 then
                     begin
                       application.MessageBox('Favorecido n�o Cadastrado','Aten��o',mb_ok+mb_iconinformation);
                       edfavorecido.SetFocus;
                     end
                     else
                       lbnomefavorecido.Caption:=dm.Clientesnome.Value;
                end;
           end
           else
             edfavorecido.SetFocus;
end;

procedure TFrmNotasFiscais.medatainicialExit(Sender: TObject);
begin
        if MeDataInicial.text<>'  /  /    ' then
        begin
        Try
           StrToDate(MeDataInicial.Text) ;
        Except
        begin
           application.MessageBox('Data Inv�lida!','Aten��o',mb_Ok+mb_iconerror);
           MeDataInicial.setfocus;
        end;
        end;
        end;
end;

procedure TFrmNotasFiscais.medatafinalExit(Sender: TObject);
begin
        if MeDataFinal.text<>'  /  /    ' then
        begin
        Try
           StrToDate(MeDataFinal.Text) ;
           If StrToDate(MeDataInicial.Text) > StrToDate(MeDataFinal.Text) then
              Begin
                 MessageBox(Handle, 'Data inferior � data inicial de pesquisa!!', 'Aten��o', mb_IconWarning or mb_Ok);
                 MeDataFinal.SetFocus;
              End;
        Except
        begin
           application.MessageBox('Data Inv�lida!','Aten��o',mb_Ok+mb_iconerror);
           MeDataFinal.setfocus;
        end;
        end;
        end;
end;

procedure TFrmNotasFiscais.btfiltrarClick(Sender: TObject);
begin
  if (medatainicial.Text<>'  /  /    ') and
     (medatafinal.Text<>'  /  /    ') then
     begin
       qrconsulta.Close;
       qrconsulta.SQL.Clear;
       qrconsulta.SQL.Add('select N.documento,N.favorecido,N.tipo,N.emissao,N.recepcao,');
       qrconsulta.SQL.Add('N.vlrcontabil,N.basecalculo,F.nome,N.cancelada');
       if rbentrada.Checked then
          begin
            qrconsulta.SQL.Add('from nf N, fornecedores F');
            qrconsulta.SQL.Add('where (N.favorecido=F.codigo)');
            qrconsulta.SQL.Add('and (N.tipo = '+chr(39)+'E'+chr(39)+')');
            qrconsulta.SQL.Add('and (N.recepcao between '+chr(39)+
            copy(medatainicial.text,7,4)+'/'+copy(medatainicial.text,4,2)+'/'+
            copy(medatainicial.text,1,2)+chr(39)+' and '+chr(39)+
            copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
            copy(MeDataFinal.text,1,2)+chr(39)+')');
            qrconsulta.SQL.Add('order by N.recepcao');
          end
          else
          begin
            qrconsulta.SQL.Add('from nf N, clientes F');
            qrconsulta.SQL.Add('where (N.favorecido=F.codigo)');
            qrconsulta.SQL.Add('and (N.tipo = '+chr(39)+'S'+chr(39)+')');
            qrconsulta.SQL.Add('and (N.emissao between '+chr(39)+
            copy(medatainicial.text,7,4)+'/'+copy(medatainicial.text,4,2)+'/'+
            copy(medatainicial.text,1,2)+chr(39)+' and '+chr(39)+
            copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
            copy(MeDataFinal.text,1,2)+chr(39)+')');
            qrconsulta.SQL.Add('order by N.emissao');
          end;
       qrconsulta.open;
       if qrconsulta.RecordCount>0 then
          atualiza
       else
          limpar;
     end
     else
     begin
       showmessage('Digite o per�odo da Consulta');
       medatainicial.SetFocus;
     end;
end;

procedure TFrmNotasFiscais.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
     begin
           Atualiza;
           PageControl1.ActivePageIndex := 1;
     end;

      if key=vk_f11 then
         begin
           busca := dm.nfchaveNfe.Value;
           ClickedOK := InputQuery('Chave NFE', 'Retorno', busca);
         end;

      if key=vk_f4 then
         begin
           Atualiza;      
           DBGrid1.Height:=153;
           cbmotivo.Text:='';
           edobs.Text:='';
           cbmotivo.SetFocus;
         end;
end;

procedure TFrmNotasFiscais.edobsExit(Sender: TObject);
var
N_obs,N_motivo,N_cancelada:string;
begin
      if cbmotivo.Text<>'' then
         begin
            if Application.Messagebox ('Confirma Cancelamento de Nota Fiscal?','Aten��o', Mb_YesNo+mb_iconexclamation) = id_yes then
               begin
                 dm.rastro.Close;
                 dm.rastro.SQL.Clear;
                 dm.rastro.SQL.Add('select * from rastro');
                 dm.rastro.SQL.Add('where (1=2)');
                 dm.rastro.Open;
                 dm.rastro.Insert;
                 dm.rastrodata.Value:=date;
                 dm.rastrohora.Value:=TimeToStr(time);
                 dm.rastrooperador.Value:=FrmPrincipal.sb.Panels[3].Text;
                 dm.rastrorotina.Value:='NOTA FISCAL';
                 dm.rastrooperacao.Value:='C';
                 dm.rastrohistorico.Value:='N�: '+eddocumento.Text;
                 dm.rastrofavorecido.Value:=StrToInt(edfavorecido.Text);
                 dm.rastrovalor.Value:=StringToFloat(edvlrcontabil.Text);
                 dm.rastro.Post;
                 dm.rastro.Close;

                 dm.NF.Close;
                 dm.NF.sql.clear;
                 dm.NF.sql.add('select * from nf');
                 dm.NF.sql.add('where (documento ='+chr(39)+eddocumento.Text+chr(39)+')');
                 dm.NF.sql.add('and (tipo ='+chr(39)+copy(cbtipo.text,1,1)+chr(39)+')');
                 dm.NF.sql.add('and (favorecido ='+edfavorecido.Text+')');
                 dm.NF.open;
                 ExcluirMov;
                 N_motivo:=cbmotivo.Text;
                 N_obs:=edobs.Text;
                 N_cancelada:='S';

                 qratualizar.close;
                 qratualizar.sql.clear;
                 qratualizar.sql.add('update NF set');
                 qratualizar.sql.add('motivo = :N_motivo,');
                 qratualizar.sql.add('obs = :N_obs,');
                 qratualizar.sql.add('cancelada = :N_cancelada');
                 qratualizar.sql.add('where (documento ='+chr(39)+eddocumento.Text+chr(39)+')');
                 qratualizar.sql.add('and (tipo ='+chr(39)+copy(cbtipo.text,1,1)+chr(39)+')');
                 qratualizar.sql.add('and (favorecido ='+edfavorecido.Text+')');
                 qratualizar.Params[0].Value := N_motivo;
                 qratualizar.Params[1].Value := N_obs;
                 qratualizar.Params[2].Value := N_cancelada;
                 qratualizar.ExecSQL;
                 DBGrid1.Height:=201;
                 qrconsulta.Close;
                 qrconsulta.Open;
                 qrconsulta.Locate('documento',eddocumento.Text,[]);
               end;
         end
         else
         begin
           N_cancelada:='N';

           qratualizar.close;
           qratualizar.sql.clear;
           qratualizar.sql.add('update NF set');
           qratualizar.sql.add('cancelada = :N_cancelada');
           qratualizar.sql.add('where (documento ='+chr(39)+eddocumento.Text+chr(39)+')');
           qratualizar.sql.add('and (tipo ='+chr(39)+copy(cbtipo.text,1,1)+chr(39)+')');
           qratualizar.sql.add('and (favorecido ='+edfavorecido.Text+')');
           qratualizar.Params[0].Value := N_cancelada;
           qratualizar.ExecSQL;
           DBGrid1.Height:=201;
           qrconsulta.Close;
           qrconsulta.Open;
           qrconsulta.Locate('documento',eddocumento.Text,[]);
         end;
end;

procedure TFrmNotasFiscais.DBGrid1CellClick(Column: TColumn);
begin
        Atualiza;
end;

procedure TFrmNotasFiscais.eddocumentoExit(Sender: TObject);
begin
      if eddocumento.Text='' then
         eddocumento.SetFocus
end;

procedure TFrmNotasFiscais.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
      if qrconsultacancelada.Value='S' then
         begin
           Dbgrid1.Canvas.Font.Color:= clred;
           Dbgrid1.DefaultDrawDataCell(Rect, dbgrid1.columns[datacol].field, State);
         end
         else
         begin
           Dbgrid1.Canvas.Font.Color:= clblack;
           Dbgrid1.DefaultDrawDataCell(Rect, dbgrid1.columns[datacol].field, State);
         end;
end;

procedure TFrmNotasFiscais.cbplcontaExit(Sender: TObject);
begin
      if cbplconta.Text<>'' then
         begin
            dm.PlanoContas.Open;
            if not dm.PlanoContas.Locate('chave',cbplconta.Text,[]) then
               begin
                 application.MessageBox('Conta n�o Cadastrada','Aten��o',mb_ok+mb_iconinformation);
                 cbplconta.SetFocus;
               end
               else
               begin
                 if length(dm.PlanoContascodigo.Value)<8 then
                    begin
                      application.MessageBox('Conta inv�lida. Escolha outra conta','Aten��o',mb_ok+mb_iconinformation);
                      cbplconta.SetFocus;
                    end;
               end;
         end;
end;

procedure TFrmNotasFiscais.btanteriorClick(Sender: TObject);
begin
      qrconsulta.Prior;
      atualiza;
end;

procedure TFrmNotasFiscais.btproximoClick(Sender: TObject);
begin
      qrconsulta.Next;
      atualiza;
end;

procedure TFrmNotasFiscais.BitBtn4Click(Sender: TObject);
begin
  if btnovoE.Enabled=false then
     begin
       habilitaE;
       LimparE;
     end
     else
       close;
end;

procedure TFrmNotasFiscais.BitBtn5Click(Sender: TObject);
begin
  if btnovoD.Enabled=false then
     begin
        habilitaD;
        LimparD;
     end
     else
       close;
end;

procedure TFrmNotasFiscais.edfavorecidoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if ((Key in ['0'..'9'] = False) and
     (Word(Key) <> VK_BACK)) then
     Key := #0;
end;

procedure TFrmNotasFiscais.edprodutoExit(Sender: TObject);
begin
  if edproduto.Text<>'' then
     begin
       dm.produtos.close;
       dm.produtos.sql.clear;
       dm.produtos.sql.add('select * from produtos');
       dm.produtos.sql.add('where codigo = '+edproduto.text);
       dm.produtos.open;
       if dm.produtos.RecordCount<1 then
          begin
            application.MessageBox('Produto n�o Cadastrado','Aten��o',mb_ok+mb_iconinformation);
            edproduto.SetFocus;
          end
          else
          begin
            lbnomeproduto.Caption:=dm.produtosnome.Value;
            edvlrunit.Text:=formatfloat('#,##0.00',dm.produtoscompra.Value);
            cbunidade.Text:=dm.produtosundext.Value;
            cbunidade.Items.Clear;
            cbunidade.Items.Add(dm.produtosundext.AsString);
            cbunidade.Items.Add(dm.produtosundint.AsString);
          end;
     end
     else
       edproduto.SetFocus;
end;

procedure TFrmNotasFiscais.edvlrfreteExit(Sender: TObject);
begin
  if edvlrfrete.Text<>'' then
     edvlrfrete.Text:=formatfloat('#,##0.00',StringToFloat(edvlrfrete.text));
end;

end.



