unit UnitFrmPedidos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Mask, DBCtrls, Buttons, ComCtrls,
  ExtCtrls, EditAlinhado, DB, DBTables, Unit2, Printers, QRCtrls, QuickRpt,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, DateUtils;

type
  TFrmPedidos = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    medatainicial: TMaskEdit;
    medatafinal: TMaskEdit;
    bt1: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    btcritica: TBitBtn;
    btliberar: TBitBtn;
    btnf: TBitBtn;
    btboleto: TBitBtn;
    dspedido: TDataSource;
    Label31: TLabel;
    edclienteI: TEdit;
    lbclienteI: TLabel;
    sb: TStatusBar;
    chliberacao: TCheckBox;
    DBGrid2: TDBGrid;
    dsmovpedido: TDataSource;
    QuickRep1: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    qrunit1: TQRLabel;
    QRLabel4: TQRLabel;
    qrtotal1: TQRLabel;
    QRLabel7: TQRLabel;
    DetailBand1: TQRBand;
    qrunit2: TQRDBText;
    qrtotal2: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    qritem: TQRExpr;
    PageHeaderBand1: TQRBand;
    QRLabel19: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel25: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText21: TQRDBText;
    QRShape1: TQRShape;
    QRLabel9: TQRLabel;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel34: TQRLabel;
    QRDBText29: TQRDBText;
    QRLabel35: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText9: TQRDBText;
    QRSysData1: TQRSysData;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel20: TQRLabel;
    qrcpf: TQRDBText;
    qrrg: TQRDBText;
    SummaryBand1: TQRBand;
    subtotal1: TQRLabel;
    descontop1: TQRLabel;
    liquido1: TQRLabel;
    descontop2: TQRLabel;
    liquido2: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRLabel21: TQRLabel;
    Panel1: TPanel;
    btnovo: TBitBtn;
    btgravar: TBitBtn;
    btalterar: TBitBtn;
    btexcluir: TBitBtn;
    btcancelar: TBitBtn;
    P_Dados: TPanel;
    Label17: TLabel;
    edcliente: TEdit;
    lbcliente: TLabel;
    Label40: TLabel;
    Label1: TLabel;
    edcodigo: TEdit;
    lbproduto: TLabel;
    lbf11: TLabel;
    Label7: TLabel;
    edqtd: TEdit;
    Label8: TLabel;
    cbunidade: TComboBox;
    Label9: TLabel;
    edunitario: TEditAlinh;
    Label16: TLabel;
    Label13: TLabel;
    Label2: TLabel;
    lbnumero: TLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel27: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText14: TQRDBText;
    qrpedido: TZQuery;
    qrpedidonome: TStringField;
    qrpedidopedido: TIntegerField;
    qrpedidodata: TDateField;
    qrpedidocliente: TIntegerField;
    qrpedidovendedor: TIntegerField;
    qrpedidoitens: TFloatField;
    qrpedidototal: TFloatField;
    qrpedidoliberacao: TDateField;
    qrpedidonf: TStringField;
    qrpedidotipo: TStringField;
    qrmovpedido: TZQuery;
    qrtotalizador: TZQuery;
    qrtotalizadoritens: TLargeintField;
    qrtotalizadordesconto: TFloatField;
    qrtotalizadortotal: TFloatField;
    qratualizar: TZQuery;
    editens: TLabel;
    edsubtotal: TLabel;
    Query1: TZQuery;
    qrmovpedidovenda: TIntegerField;
    qrmovpedidoproduto: TIntegerField;
    qrmovpedidonome: TStringField;
    qrmovpedidound: TStringField;
    qrmovpedidoqtd: TFloatField;
    qrmovpedidounit: TFloatField;
    qrmovpedidototal: TFloatField;
    qrmovpedidoseq: TIntegerField;
    qrmovpedidoicms: TFloatField;
    qrult_nf: TZQuery;
    qrult_nfdocumento: TStringField;
    btRefaturar: TBitBtn;
    qrtotalE: TZQuery;
    qrtotalEtotalicms: TFloatField;
    Label11: TLabel;
    cbvendedor: TComboBox;
    QRDBText1: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText26: TQRDBText;
    qrMovEstoque: TZQuery;
    qrMovEstoqueproduto: TIntegerField;
    qrMovEstoqueund: TStringField;
    qrMovEstoqueqtd: TFloatField;
    qrMovEstoqueVlrTotal: TFloatField;
    Label18: TLabel;
    eddescR: TEditAlinh;
    Label19: TLabel;
    eddescP: TEditAlinh;
    Label24: TLabel;
    edtotal: TLabel;
    Label25: TLabel;
    eddesc: TEditAlinh;
    qrmovpedidodescp: TFloatField;
    qrmovpedidodescv: TFloatField;
    QRLabel22: TQRLabel;
    btrelatorio: TBitBtn;
    qrdesc1: TQRLabel;
    qrdesc2: TQRDBText;
    qrpedidosubtotal: TFloatField;
    qrpedidodescp: TFloatField;
    BitBtn4: TBitBtn;
    QRLabel23: TQRLabel;
    QRDBText27: TQRDBText;
    LBQTD: TLabel;
    Label27: TLabel;
    qrtotalizadorqtd: TFloatField;
    QRExpr1: TQRExpr;
    BitBtn1: TBitBtn;
    QRLabel26: TQRLabel;
    QRLabel31: TQRLabel;
    QRDBText28: TQRDBText;
    QRLabel32: TQRLabel;
    procedure btnovoClick(Sender: TObject);
    procedure ednumeroEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edcodigoExit(Sender: TObject);
    procedure cbunidadeExit(Sender: TObject);
    procedure btcancelarClick(Sender: TObject);
    procedure edcodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CbEmpresaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure edparcelasKeyPress(Sender: TObject; var Key: Char);
    procedure btgravarClick(Sender: TObject);
    procedure bt1Click(Sender: TObject);
    procedure TabSheet1Exit(Sender: TObject);
    procedure medatainicialExit(Sender: TObject);
    procedure medatafinalExit(Sender: TObject);
    procedure meliberacaoExit(Sender: TObject);
    procedure btcriticaClick(Sender: TObject);
    procedure btliberarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btexcluirClick(Sender: TObject);
    procedure btalterarClick(Sender: TObject);
    procedure edunitarioExit(Sender: TObject);
    procedure edclienteIExit(Sender: TObject);
    procedure edfornecedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbtipoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbunidadeEnter(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edclienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edqtdEnter(Sender: TObject);
    procedure TabSheet2Enter(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure btnfClick(Sender: TObject);
    procedure edclienteExit(Sender: TObject);
    procedure edclienteIKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btboletoClick(Sender: TObject);
    procedure cbvendedorExit(Sender: TObject);
    procedure cbvendedorEnter(Sender: TObject);
    procedure edclienteEnter(Sender: TObject);
    procedure edcodigoEnter(Sender: TObject);
    procedure edqtdExit(Sender: TObject);
    procedure edunitarioEnter(Sender: TObject);
    procedure eddescRExit(Sender: TObject);
    procedure eddescPExit(Sender: TObject);
    procedure eddescEnter(Sender: TObject);
    procedure eddescExit(Sender: TObject);
    procedure btrelatorioClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btRefaturarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPedidos: TFrmPedidos;
  antlocal,anterior,LocOrigem,antestoque,itens,total,
  saldodesc,subtotal,desc,descr,vlrcompra,vlrparcela,saldoparc,
  vlrtotal,VlrDesc,icms,aliqiss,antreserva,reducao,ipi,vlripi,
  P_estoqueext,qtds,qtd,desconto,P_reserva,P_desconto,
  P_IcmsRetido,atraso,juros,multa,valoratraso,totalprodutos,
  qtdL,E_qtd,qtdI,n_notas,notas_imp,nf_qtd,nf_peso:real;
  P_cliente,mes,v,ultpedido,ultnf,qtdparc,i,
  CONTADOR,novo,itensnf,itenspg,iRetorno,
  iDecimal,N_faturas,casas,nnotas,itensnota,nlinhas,
  iTransacao,iConta,iValorRestante,
  iQuantasTransacoes,iVezes,iSubtotal:integer;
  dataparc:Tdatetime;
  notafiscal,dia,dataliberacao,
  mascara,P_Liberado,P_obs,MensagemLiberacao,
  M_localizado,busca,N_motivo,N_cancelada,
  pagtoem,recebido,descontovenda,mensagem,
  produto,sTipoDesconto,aliquota,nomeproduto,
  sTipoQtde,sPercValor,sAcreDesc,qtdprod,vlrunit,
  Pdesconto,descricao,usu,cFormaPGTO,labelResta,
  E_local,documento,V_agrupada,cValor,cConteudo:string;
  Valorbase,valoricms:DOUBLE;
  IMPRESSORA:TextFile;
  Liberar,PedidoCotacao,check,
  ClickedOK,Imp_Cab,Imp_cartao,Conf_Cartao,
  Gerencial: Boolean;
  cArquivo : TextFile;
  R_hora,cNSU,cNomeRede,nomearquivo,cNumeroCupom,cLinha: string;
  cValorPago: TStrings;
  lFlag     : longbool;
  vData,cIdentificacao: TDateTime;
  dtAtual, dtAntiga : TDateTime;
  NDias : integer;
  P_vendedor,P_parcelas,P_obra,
  P_prazo,P_intervalo,P_tabela:integer;
  P_itens,P_subtotal,
  P_total,P_comissao,
  vlrcheques,P_DescP:real;
  P_formapagto,P_data,P_vencto,
  P_cfop,P_conta,P_tipo:string;

implementation

uses Unitdm, UnitFrmCadclientes,
  UnitFrmPrincipal, UEnvioNfe, UnitFrmCadProdutos, UnitFrmReceber;

{$R *.dfm}

function InputQueryMask(const ACaption, APrompt: String;
var Value: String; Mask: String = ''; PasswdChar: Char = '*'): Boolean;
function GetAveCharSize(Canvas: TCanvas): TPoint;
var
I: Integer;
Buffer: array[0..51] of Char;
begin
for I := 0 to 25 do
Buffer[I] := Chr(I + Ord('A'));
for I := 0 to 25 do
Buffer[I + 26] := Chr(I + Ord('a'));
GetTextExtentPoint(Canvas.Handle, Buffer, 52, TSize(Result));
Result.X := Result.X div 52;
end;
var
Form: TForm;
Prompt: TLabel;
MkEdit: TMaskEdit;
DialogUnits: TPoint;
ButtonTop, ButtonWidth, ButtonHeight: Integer;
begin
Result := False;
Form := TForm.Create(Application);
with Form do
try
Canvas.Font := Font;
DialogUnits := GetAveCharSize(Canvas);
BorderStyle := bsDialog;
Caption := ACaption;
ClientWidth := MulDiv(180, DialogUnits.X, 4);
ClientHeight := MulDiv(63, DialogUnits.Y, 8);
Position := poScreenCenter;
Prompt := TLabel.Create(Form);

with Prompt do
begin
Parent := Form;
AutoSize := True;
Left := MulDiv(8, DialogUnits.X, 4);
Top := MulDiv(8, DialogUnits.Y, 8);
Caption := APrompt;
end;

MkEdit := TMaskEdit.Create(Form);
with MkEdit do
begin
Parent := Form;
MkEdit.EditMask := Mask;
Left := Prompt.Left;
Top := MulDiv(19, DialogUnits.Y, 8);
Width := MulDiv(164, DialogUnits.X, 4);
MaxLength := 255;
PasswordChar := PasswdChar;
Text := Value;
SelectAll;
end;

ButtonTop := MulDiv(41, DialogUnits.Y, 8);
ButtonWidth := MulDiv(50, DialogUnits.X, 4);
ButtonHeight := MulDiv(14, DialogUnits.Y, 8);

with TButton.Create(Form) do
begin
Parent := Form;
Caption := 'Ok';
ModalResult := mrOk;
Default := True;
SetBounds(MulDiv(38, DialogUnits.X, 4), ButtonTop, ButtonWidth,
ButtonHeight);
end;
with TButton.Create(Form) do
begin
Parent := Form;
Caption := 'Cancel';
ModalResult := mrCancel;
Cancel := True;
SetBounds(MulDiv(92, DialogUnits.X, 4), ButtonTop, ButtonWidth,
ButtonHeight);
end;
if ShowModal = mrOk then
begin
Value := MkEdit.Text;
Result := True;
end;
finally
Form.Free;
end;
end;

function StrToPChar(const Str: string): PChar;
{Converte String em Pchar}
type
  TRingIndex = 0..7;
var
  Ring: array[TRingIndex] of PChar;
  RingIndex: TRingIndex;
  Ptr: PChar;
begin
  Ptr := @Str[Length(Str)];
  Inc(Ptr);
  if Ptr^ = #0 then
  begin
  Result := @Str[1];
  end
  else
  begin
  Result := StrAlloc(Length(Str)+1);
  RingIndex := (RingIndex + 1) mod (High(TRingIndex) + 1);
  StrPCopy(Result,Str);
  StrDispose(Ring[RingIndex]);
  Ring[RingIndex]:= Result;
  end;
end;

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

function AnoBiSexto(Ayear: Integer): Boolean;
begin
// Verifica se o ano � Bi-Sexto
Result := (AYear mod 4 = 0) and ((AYear mod 100 <> 0) or
(AYear mod 400 = 0));
end;

function DiasPorMes(Ayear, AMonth: Integer): Integer;
const DaysInMonth: array[1..12] of Integer = (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
begin
Result := DaysInMonth[AMonth];
if (AMonth = 2) and AnoBiSexto(AYear) then
Inc(Result);
end;

Procedure TotalizarMovPedido;
begin
  FrmPedidos.qrtotalizador.Close;
  FrmPedidos.qrtotalizador.SQL.Clear;
  FrmPedidos.qrtotalizador.SQL.Add('select count(*) as itens,sum(qtd) as qtd, sum(descv) as desconto, sum(total) as total from movpedido');
  FrmPedidos.qrtotalizador.SQL.Add('where venda = '+FrmPedidos.lbnumero.Caption);
  FrmPedidos.qrtotalizador.Open;
  v:=dm.MovPedido.RecordCount;
  itens:=FrmPedidos.qrtotalizadoritens.Value;
  total:=FrmPedidos.qrtotalizadortotal.Value;
  FrmPedidos.LBQTD.Caption:=FloatToStr(FrmPedidos.qrtotalizadorqtd.Value);
  FrmPedidos.editens.Caption:=FloatToStr(itens);
  FrmPedidos.edsubtotal.Caption:=formatfloat('#,##0.00',total);
  if FrmPedidos.eddescR.Text<>'' then
     FrmPedidos.edtotal.Caption:=formatfloat('#,##0.00',StringToFloat(FrmPedidos.edsubtotal.Caption)-StringToFloat(FrmPedidos.eddescR.Text))
  else
     FrmPedidos.edtotal.Caption:=formatfloat('#,##0.00',total);
end;

procedure InserirItemP;
begin
  Try
    v:=v+1;

    dm.produtos.close;
    dm.produtos.sql.clear;
    dm.produtos.sql.add('select * from produtos');
    dm.produtos.sql.add('where codigo = '+FrmPedidos.edcodigo.text);
    dm.produtos.open;

    dm.movpedido.Close;
    dm.movpedido.SQL.Clear;
    dm.movpedido.SQL.Add('select * from movpedido');
    dm.movpedido.SQL.Add('where (1=2)');
    dm.movpedido.open;
    dm.MovPedido.Insert;
    dm.MovPedidovenda.Value:=StrToInt(FrmPedidos.lbnumero.Caption);
    dm.MovPedidoseq.Value:=v;
    dm.MovPedidoproduto.Value:=StrToInt(FrmPedidos.Edcodigo.Text);
    dm.MovPedidound.Value:=FrmPedidos.cbunidade.Text;
    dm.movpedidoqtd.Value:=StrToFloat(FrmPedidos.edqtd.Text);
    dm.MovPedidounit.Value:=StringToFloat(FrmPedidos.edunitario.Text);
    dm.movpedidodescp.Value:=StrToFloat(FrmPedidos.eddesc.Text);
    dm.MovPedidototal.Value:=StringToFloat(FrmPedidos.edunitario.Text)*StringToFloat(FrmPedidos.edqtd.Text);
    dm.movpedidobaseicms.Value:=StringToFloat(FrmPedidos.edunitario.Text)*StringToFloat(FrmPedidos.edqtd.Text);
    dm.MovPedidoicms.Value:=0;
    dm.MovPedido.post;
    FrmPedidos.qrmovpedido.close;
    FrmPedidos.qrmovpedido.Open;
    FrmPedidos.qrmovpedido.Last;
    TotalizarMovPedido;
    dm.MovPedido.Close;
  Except
     application.MessageBox('Erro ao Inserir Dados','Aten��o',mb_Ok+mb_iconerror);
     dm.MovPedido.Cancel;
  end;
  FrmPedidos.Edcodigo.text:='';
  FrmPedidos.lbproduto.Caption:='';
  FrmPedidos.cbunidade.Text:='';
  FrmPedidos.edqtd.Text:='';
  FrmPedidos.EdUnitario.text:='';
  FrmPedidos.eddesc.text:='';
  FrmPedidos.Edcodigo.SetFocus;
end;

procedure AtualizarVencidos;
begin
//        dm.docreceberGeral.Close;
//        dm.docreceberGeral.SQL.Clear;
//        dm.docreceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
//        dm.docreceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
//        dm.docreceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
//        dm.docreceberGeral.SQL.Add('from clientes C, docreceber D');
//        dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo) and (pgto is null) and (vencto<CURDATE())');
//        dm.docreceberGeral.SQL.Add('and (D.cliente = '+IntToStr(P_cliente)+')');
//        dm.docreceberGeral.Open;
//
//        while not dm.docreceberGeral.Eof do
//              begin
//                atraso:=0;
//                atraso:=Int(date-dm.docreceberGeralvencto.value);
//                if atraso>dm.parametrosatraso.Value then
//                   begin
//                     juros:=(dm.parametrosJuros1.value*dm.docreceberGeralliquido.value)/100/30*atraso;
//                     multa:=(dm.docreceberGeralliquido.value*dm.parametrosMulta1.value)/100;
//                     valoratraso:=dm.docreceberGeralliquido.Value+juros+multa;
//
//                     FrmPedidos.qratualizar.Close;
//                     FrmPedidos.qratualizar.SQL.Clear;
//                     FrmPedidos.qratualizar.SQL.Add('update docreceber set');
//                     FrmPedidos.qratualizar.SQL.Add('juros1 = :juros,');
//                     FrmPedidos.qratualizar.SQL.Add('multa1 = :multa,');
//                     FrmPedidos.qratualizar.SQL.Add('atraso = :atraso,');
//                     FrmPedidos.qratualizar.SQL.Add('valoratraso = :valoratraso');
//                     FrmPedidos.qratualizar.sql.add('where cod = '+chr(39)+IntToStr(dm.docreceberGeralcod.Value)+chr(39));
//                     FrmPedidos.qratualizar.Params[0].Value := juros;
//                     FrmPedidos.qratualizar.Params[1].Value := multa;
//                     FrmPedidos.qratualizar.Params[2].Value := atraso;
//                     FrmPedidos.qratualizar.Params[3].Value := valoratraso;
//                     FrmPedidos.qratualizar.ExecSQL;
//                   end;
//                dm.docreceberGeral.Next;
//              end;
//        dm.docreceberGeral.Close;
//        dm.docreceberGeral.SQL.Clear;
//        dm.docreceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
//        dm.docreceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
//        dm.docreceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
//        dm.docreceberGeral.SQL.Add('from clientes C, docreceber D');
//        dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo) and (pgto is null) and (vencto<CURDATE())');
//        dm.docreceberGeral.SQL.Add('and (D.cliente = '+IntToStr(P_cliente)+')');
//        dm.docreceberGeral.Open;
end;

procedure DocAberto;
begin
//      if dm.parametrosatraso.Value>0 then
//         begin
//           MensagemLiberacao:='Cliente com Car�ncia de Atraso';
//           AtualizarVencidos;
//           if dm.docreceberGeral.RecordCount>0 then
//              Liberar:=false
//           else
//              Liberar:=true;
//         end
//         else
//         begin
//           dm.clientes.close;
//           dm.clientes.sql.clear;
//           dm.clientes.sql.add('select * from clientes');
//           dm.clientes.SQL.Add('where (codigo = '+IntToStr(P_cliente)+')');
//           dm.clientes.open;
//           if dm.clientesLimiteCredito.Value>0 then
//              begin
//                MensagemLiberacao:='Cliente com Limite Ultrapassado';
//                dm.Totaldocreceber.Close;
//                dm.Totaldocreceber.SQL.Clear;
//                dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
//                dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
//                dm.Totaldocreceber.SQL.Add('and (D.cliente = '+IntToStr(P_cliente)+')');
//                dm.Totaldocreceber.open;
//                if dm.Totaldocrecebertotal.Value+FrmPedidos.qrpedidototal.Value>dm.clientesLimiteCredito.Value then
//                   Liberar:=false
//                else
//                   Liberar:=true;
//              end
//              else
//                Liberar:=true;
//         end;
end;

procedure desabilita;
begin
  FrmPedidos.btnovo.enabled:=false;
  FrmPedidos.btexcluir.enabled:=false;
  FrmPedidos.btalterar.enabled:=false;
  FrmPedidos.btRefaturar.enabled:=false;
  FrmPedidos.btgravar.enabled:=true;
  FrmPedidos.btcancelar.Caption:='Cancelar';
  FrmPedidos.P_Dados.Enabled:=true;
end;

procedure habilita;
begin
  dm.usuarios.close;
  dm.usuarios.Open;
  dm.usuarios.Locate('nome',FrmPrincipal.sb.Panels[3].Text,[]);
  FrmPedidos.btcancelar.Caption:='Sair';
  FrmPedidos.btnovo.enabled:=true;
  FrmPedidos.btexcluir.enabled:=true;
  FrmPedidos.btalterar.enabled:=true;
  FrmPedidos.btRefaturar.enabled:=true;
  FrmPedidos.btgravar.enabled:=false;
  FrmPedidos.P_Dados.Enabled:=false;
end;

procedure limpar;
begin
  FrmPedidos.edcodigo.text:='';
  FrmPedidos.eddescR.text:='';
  FrmPedidos.eddescP.text:='';
  FrmPedidos.edqtd.text:='';
  FrmPedidos.cbunidade.text:='';
  FrmPedidos.editens.Caption:='';
  FrmPedidos.edcliente.text:='';
  FrmPedidos.lbnumero.Caption:='';
  FrmPedidos.edunitario.text:='';
  FrmPedidos.edsubtotal.Caption:='';
  FrmPedidos.edtotal.Caption:='';
  FrmPedidos.lbproduto.caption:='';
  FrmPedidos.lbcliente.caption:='';
  FrmPedidos.cbvendedor.Text:=FrmPrincipal.sb.Panels[3].Text;
  dm.usuarios.Open;
  dm.usuarios.Locate('nome',FrmPedidos.sb.Panels[3].Text,[]);
  if dm.usuariosparametros.value='0' then
     FrmPedidos.cbvendedor.Enabled:=false
  else
     FrmPedidos.cbvendedor.Enabled:=true;
end;

procedure atualiza;
begin
  dm.pedidos.Close;
  dm.pedidos.SQL.Clear;
  dm.pedidos.SQL.Add('select * from pedidos');
  dm.pedidos.SQL.Add('where pedido = '+IntToStr(FrmPedidos.qrpedidopedido.value));
  dm.pedidos.open;
  FrmPedidos.lbnumero.Caption:=IntToStr(dm.pedidospedido.value);
  FrmPedidos.edcliente.Text:=IntToStr(dm.pedidoscliente.value);

  dm.MovPedido.Close;
  dm.MovPedido.SQL.Clear;
  dm.movpedido.SQL.Add('select * from movpedido');
  dm.movpedido.SQL.Add('where venda = '+chr(39)+IntToStr(dm.pedidospedido.Value)+chr(39));
  dm.movpedido.SQL.Add('order by seq');
  dm.movpedido.open;

  FrmPedidos.qrmovpedido.Close;
  FrmPedidos.qrmovpedido.SQL.Clear;
  FrmPedidos.qrmovpedido.SQL.Add('select M.venda,M.produto,P.nome,M.und,M.qtd,M.descp,M.descv,');
  FrmPedidos.qrmovpedido.SQL.Add('M.unit,M.total,M.seq,M.icms');
  FrmPedidos.qrmovpedido.SQL.Add('from movpedido M, produtos P');
  FrmPedidos.qrmovpedido.SQL.Add('where M.produto=P.codigo');
  FrmPedidos.qrmovpedido.SQL.Add('and M.venda = '+chr(39)+FrmPedidos.lbnumero.Caption+chr(39));
  FrmPedidos.qrmovpedido.SQL.Add('order by nome');
  FrmPedidos.qrmovpedido.open;

  Totalizarmovpedido;
  dm.clientes.close;
  dm.clientes.sql.clear;
  dm.clientes.sql.add('select * from clientes');
  dm.clientes.sql.add('where codigo = '+IntToStr(dm.pedidoscliente.Value));
  dm.clientes.open;
  FrmPedidos.lbcliente.caption:=dm.clientesnome.Value;
  if dm.pedidosvendedor.Value>0 then
     begin
       dm.fornecedores.close;
       dm.fornecedores.sql.clear;
       dm.fornecedores.sql.add('select * from fornecedores');
       dm.fornecedores.sql.add('where codigo = '+IntToStr(dm.pedidosvendedor.Value));
       dm.fornecedores.open;
       FrmPedidos.cbvendedor.Text:=dm.fornecedoresapelido.Value;
     end
     else
       FrmPedidos.cbvendedor.Text:='';
  Totalizarmovpedido;

  if dm.pedidossubtotal.Value<>FrmPedidos.qrtotalizadortotal.Value then
     begin
       P_subtotal := FrmPedidos.qrtotalizadortotal.Value;
       P_total    := P_subtotal;

       FrmPedidos.qratualizar.close;
       FrmPedidos.qratualizar.sql.clear;
       FrmPedidos.qratualizar.sql.add('update pedidos set');
       FrmPedidos.qratualizar.sql.add('subtotal = :P_subtotal,');
       FrmPedidos.qratualizar.sql.add('total = :P_total');
       FrmPedidos.qratualizar.SQL.Add('where pedido = '+chr(39)+FrmPedidos.lbnumero.Caption+chr(39));
       FrmPedidos.qratualizar.Params[0].Value := P_subtotal;
       FrmPedidos.qratualizar.Params[1].Value := P_total;
       FrmPedidos.qratualizar.ExecSQL;

       dm.pedidos.Close;
       dm.pedidos.SQL.Clear;
       dm.pedidos.SQL.Add('select * from pedidos');
       dm.pedidos.SQL.Add('where pedido = '+FrmPedidos.lbnumero.Caption);
       dm.pedidos.open;

       FrmPedidos.qrpedido.Close;
       FrmPedidos.qrpedido.Open;
       FrmPedidos.qrpedido.Locate('pedido',FrmPedidos.lbnumero.Caption,[]);
     end;

  if dm.pedidosdesconto.Value>0 then
     FrmPedidos.eddescR.Text:=formatfloat('#,##0.00',dm.pedidosdesconto.Value)
  else
     FrmPedidos.eddescR.Text:='';
  if dm.pedidosdescp.Value>0 then
     FrmPedidos.eddescP.Text:=formatfloat('0.00',dm.pedidosdescp.Value)
  else
     FrmPedidos.eddescP.Text:='';
  if dm.pedidossubtotal.Value>0 then
     FrmPedidos.edsubtotal.Caption:=formatfloat('#,##0.00',dm.pedidossubtotal.Value)
  else
     FrmPedidos.edsubtotal.Caption:='';
  if dm.pedidostotal.Value>0 then
     FrmPedidos.edtotal.Caption:=formatfloat('#,##0.00',dm.pedidostotal.Value)
  else
     FrmPedidos.edtotal.Caption:='';

  dm.vendaformaspagto.Close;
  dm.vendaformaspagto.SQL.Clear;
  dm.vendaformaspagto.SQL.Add('select * from vendaformaspagto');
  dm.vendaformaspagto.SQL.Add('where venda = '+chr(39)+FrmPedidos.lbnumero.Caption+chr(39));
  dm.vendaformaspagto.Open;
  if dm.vendaformaspagto.RecordCount<1 then
     begin
       dm.vendaformaspagto.Insert;
       dm.vendaformaspagtovenda.Value:=FrmPedidos.lbnumero.Caption;
       dm.vendaformaspagtoformapagto.Value:=dm.pedidosformapagto.Value;
       dm.vendaformaspagtoparcelas.Value:=dm.pedidosparcelas.Value;
       dm.vendaformaspagtocliente.Value:=dm.pedidoscliente.Value;
       dm.vendaformaspagtointervalo.Value:=dm.pedidosintervalo.Value;
       dm.vendaformaspagtoprazo.Value:=dm.pedidosprazo.Value;
       dm.vendaformaspagtovalor.Value:=dm.pedidostotal.Value;
       dm.vendaformaspagtotipo.Value:='P';
       dm.vendaformaspagto.Post;
       dm.vendaformaspagto.Close;
       dm.vendaformaspagto.Open;
     end;
end;

procedure TFrmPedidos.btnovoClick(Sender: TObject);
begin
  DBGrid2.OnDblClick:=DBGrid2DblClick;
  novo:=1;
  itens:=0;
  subtotal:=0;
  total:=0;
  VlrDesc:=0;
  descr:=0;
  vlrcheques:=0;
  desabilita;
  limpar;
  dm.parametros.close;
  dm.parametros.SQL.Clear;
  dm.parametros.SQL.Add('select * from parametros');
  dm.parametros.Open;
  ultpedido:=dm.parametrospedido.Value+1;

  qratualizar.close;
  qratualizar.sql.clear;
  qratualizar.sql.add('update parametros set');
  qratualizar.sql.add('pedido = :ultpedido');
  qratualizar.Params[0].Value := ultpedido;
  qratualizar.ExecSQL;

  lbnumero.Caption:=IntToStr(ultpedido);
  qrmovpedido.Close;
  qrmovpedido.SQL.Clear;
  qrmovpedido.SQL.Add('select M.venda,M.produto,P.nome,M.und,M.qtd,M.descp,M.descv,');
  qrmovpedido.SQL.Add('M.unit,M.total,M.seq,M.icms');
  qrmovpedido.SQL.Add('from movpedido M, produtos P');
  qrmovpedido.SQL.Add('where M.produto=P.codigo');
  qrmovpedido.SQL.Add('and M.venda = '+chr(39)+lbnumero.Caption+chr(39));
  qrmovpedido.SQL.Add('order by seq');
  qrmovpedido.open;

  edcliente.SetFocus;
end;

procedure TFrmPedidos.ednumeroEnter(Sender: TObject);
begin
      edcliente.SetFocus;
end;

procedure TFrmPedidos.FormShow(Sender: TObject);
begin
      dm.fornecedores.close;
      dm.fornecedores.sql.clear;
      dm.fornecedores.sql.add('select * from fornecedores');
      dm.fornecedores.sql.add('where funcao = '+chr(39)+'VENDEDOR'+chr(39));
      dm.fornecedores.sql.add('order by nome');
      dm.fornecedores.open;
      cbvendedor.Items.Clear;
      while not dm.fornecedores.Eof do
            begin
              if dm.fornecedoresapelido.Value<>'' then
                 cbvendedor.Items.Add(dm.fornecedoresapelido.Value);
              dm.fornecedores.Next;
            end;

      habilita;
      DBGrid2.OnDblClick:=nil;
      dm.parametros.Close;
      dm.parametros.Open;
      PageControl1.ActivePageIndex := 1;
      medatainicial.Text:=DateToStr(date);
      medatafinal.Text:=DateToStr(date);
      bt1.Click;
      limpar;
      dm.movpedido.Close;

      dm.parametros.Open;
      casas:=2;
      mascara:='#,##0.';
      for i:=1 to casas do
          begin
            mascara:=mascara+'0';
          end;
      dm.movpedidounit.DisplayFormat:=mascara;
end;

procedure TFrmPedidos.FormKeyPress(Sender: TObject; var Key: Char);
begin
      if Key = CHR(13) Then
         Begin
            perform(WM_NextDlgCtl,0,0);
            Key := CHR(0);
         End;
end;

procedure TFrmPedidos.edcodigoExit(Sender: TObject);
begin
  if edcodigo.Text<>'' then
     begin
        dm.produtos.close;
        dm.produtos.sql.clear;
        dm.produtos.sql.add('select * from produtos');
        dm.produtos.sql.add('where codigo = '+edcodigo.text);
        dm.produtos.open;
        if dm.produtos.RecordCount>0 then
           begin
             edcodigo.Text:=IntToStr(dm.produtoscodigo.Value);
             lbproduto.Caption:=dm.produtosnome.value;
             EdUnitario.Text:=formatfloat(mascara,dm.produtos.FieldByName('atacado').AsFloat);
             if qrmovpedido.Locate('produto',edcodigo.Text,[]) then
                begin
                  if application.MessageBox('Lan�ar Novamente','Produto j� Lan�ado',mb_yesno+mb_iconquestion+MB_DEFBUTTON2)=id_yes then
                     begin
                       cbunidade.Items.Clear;
                       cbunidade.Text:=dm.produtosundext.Value;
                       if dm.produtosundint.Value<>dm.produtosundext.Value then
                          begin
                            cbunidade.Items.Add(dm.produtosundint.Value);
                            cbunidade.Items.Add(dm.produtosundext.Value);
                          end;
                     end
                     else
                     begin
                       edcodigo.SelStart:=0;
                       edcodigo.SelLength:=length(edcodigo.Text);
                       edcodigo.SetFocus;
                     end;
                end
                else
                begin
                  cbunidade.Items.Clear;
                  cbunidade.Text:=dm.produtosundext.Value;
                  if dm.produtosundint.Value<>dm.produtosundext.Value then
                     begin
                       cbunidade.Items.Add(dm.produtosundint.Value);
                       cbunidade.Items.Add(dm.produtosundext.Value);
                     end;
                end;
           end
           else
           begin
             application.MessageBox('Produto n�o Localizado','Aten��o',mb_ok+mb_iconinformation);
             edcodigo.Text:='';
             edcodigo.SetFocus;
           end;
     end;
  edcodigo.Color:=clWindow;
end;

procedure TFrmPedidos.cbunidadeExit(Sender: TObject);
begin
{
  if cbunidade.Text='' then
     cbunidade.Text:=dm.produtosundext.Value
  else
  begin
     if cbunidade.Text=dm.produtosundint.Value then
        EdUnitario.Text:=formatfloat(mascara,dm.produtos.FieldByName('atacado').AsFloat)
     else if cbunidade.Text=dm.produtosundext.Value then
        EdUnitario.Text:=formatfloat('#,##0.00',dm.produtos.FieldByName('atacado').AsFloat)
     else
     begin
        application.MessageBox('Unidade Inv�lida','Aten��o',mb_ok+MB_ICONERROR);
        cbunidade.SelStart:=0;
        cbunidade.SelLength:=length(cbunidade.Text);
        cbunidade.SetFocus;
     end;
  end;
}
  cbunidade.Color:=clWindow;
end;

procedure TFrmPedidos.btcancelarClick(Sender: TObject);
begin
      if btnovo.Enabled=false then
         begin
           if application.messagebox('Confirma Cancelamento?','Cancelar Pedido',mb_yesno+mb_iconquestion)=id_yes then
              begin
                dm.movpedido.Close;
                habilita;
                limpar;
              end;
         end
         else
           close;
end;

procedure TFrmPedidos.edcodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_escape then
     btcancelar.Click;
    //F11 - consulta dos produtos
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

procedure TFrmPedidos.CbEmpresaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if key=vk_escape then
         btcancelar.Click;
end;

procedure TFrmPedidos.DBGrid2DblClick(Sender: TObject);
begin
  if btnovo.Enabled=false then
     begin
      if application.messagebox('Confirma Exclus�o','Excluir Item',mb_yesno+mb_iconquestion)=id_yes then
         begin
           edcodigo.Text:=IntToStr(dm.movpedidoproduto.value);
           edqtd.Text:=FloatToStr(dm.movpedidoqtd.Value);
           cbunidade.Text:=dm.movpedidound.Value;
           edunitario.Text:=formatfloat(mascara,dm.movpedidounit.Value);

           qratualizar.close;
           qratualizar.sql.clear;
           qratualizar.sql.add('delete from movpedido');
           qratualizar.sql.add('where (venda ='+lbnumero.Caption+')');
           qratualizar.sql.add('and (produto ='+IntToStr(qrmovpedidoproduto.Value)+')');
           qratualizar.ExecSQL;

           dm.movpedido.Close;
           dm.movpedido.Open;

           qrmovpedido.Close;
           qrmovpedido.SQL.Clear;
           qrmovpedido.SQL.Add('select M.venda,M.produto,P.nome,M.und,M.qtd,M.descp,M.descv,');
           qrmovpedido.SQL.Add('M.unit,M.total,M.seq,M.icms');
           qrmovpedido.SQL.Add('from movpedido M, produtos P');
           qrmovpedido.SQL.Add('where M.produto=P.codigo');
           qrmovpedido.SQL.Add('and M.venda = '+chr(39)+lbnumero.Caption+chr(39));
           qrmovpedido.SQL.Add('order by nome');
           qrmovpedido.open;

           Totalizarmovpedido;

           edcodigo.SetFocus;
         end;
     end;
end;

procedure TFrmPedidos.edparcelasKeyPress(Sender: TObject; var Key: Char);
begin
      if ((Key in ['0'..'9'] = False) and
         (Word(Key) <> VK_BACK)) then
         Key := #0;
end;

procedure TFrmPedidos.btgravarClick(Sender: TObject);
begin
  DBGrid2.OnDblClick:=nil;
  if novo=1 then
     begin
       R_hora:=TimeToStr(time);
       qratualizar.Close;
       qratualizar.SQL.Clear;
       qratualizar.SQL.Add('CALL sp_i_rastro(:r_data, :r_hora, :r_operador, :r_rotina, :r_operacao, :r_historico, :r_favorecido, :r_valor, :r_obs)');
       qratualizar.Params[0].Value := date;
       qratualizar.Params[1].Value := R_hora;
       qratualizar.Params[2].Value := FrmPrincipal.sb.Panels[3].Text;
       qratualizar.Params[3].Value := 'PEDIDOS';
       qratualizar.Params[4].Value := 'I';
       qratualizar.Params[5].Value := lbnumero.Caption+' '+lbcliente.Caption;
       qratualizar.Params[6].Value := StrToInt(edcliente.Text);
       qratualizar.Params[7].Value := StringToFloat(edtotal.Caption);
       qratualizar.Params[8].Value := cbvendedor.Text;
       qratualizar.ExecSQL;

       dm.pedidos.Close;
       dm.pedidos.SQL.Clear;
       dm.pedidos.SQL.Add('select * from pedidos');
       dm.pedidos.SQL.Add('where pedido = '+chr(39)+lbnumero.Caption+chr(39));
       dm.pedidos.open;
       dm.pedidos.Insert;
       dm.pedidospedido.Value:=StrToInt(lbnumero.Caption);
       dm.fornecedores.close;
       dm.fornecedores.sql.clear;
       dm.fornecedores.sql.add('select * from fornecedores');
       dm.fornecedores.sql.add('where apelido = '+chr(39)+cbvendedor.text+chr(39));
       dm.fornecedores.open;
       dm.pedidosvendedor.Value:=dm.fornecedorescodigo.Value;
       dm.pedidostipo.Value:='SV';
       dm.pedidositens.Value:=itens;

       dm.parametros.Close;
       dm.parametros.Open;

       P_IcmsRetido:=0;
       dm.pedidosIcmsRetido.Value:=P_IcmsRetido;
       dm.pedidoscliente.Value:=StrToInt(edcliente.Text);
       dm.pedidosformapagto.Value:='OU';
       dm.pedidoscfop.Value:='5101';
       dm.pedidosdata.Value:=date;
       dm.pedidoscomissao.Value:=0;
       dm.pedidosparcelas.Value:=1;
       dm.pedidosprazo.Value:=0;
       dm.pedidosintervalo.Value:=0;
       dm.pedidosdescp.Value:=0;
       dm.pedidosdesconto.Value:=0;
       dm.pedidosconta.Value:='';
       dm.pedidosDigitado.Value:=FrmPrincipal.sb.Panels[3].Text;
       dm.pedidossubtotal.Value:=StringToFloat(edsubtotal.Caption);
       dm.pedidostotal.Value:=StringToFloat(edtotal.Caption);
       dm.pedidos.Post;
       dm.pedidos.Close;
       dm.pedidos.Open;
//           dm.movpedido.Close;
     end
     else
     begin
       Totalizarmovpedido;
       P_comissao:=0;P_parcelas:=1;P_prazo:=0;P_intervalo:=0;P_obra:=0;P_vendedor:=0;
       P_itens:=qrtotalizadoritens.Value;
       dm.parametros.Close;
       dm.parametros.Open;
       P_IcmsRetido:=0;
       P_obra:=0;
       P_cliente:=StrToInt(edcliente.Text);
       P_formapagto:='OU';
       P_data:=copy(DateToStr(qrpedidodata.Value),7,4)+'/'+
       copy(DateToStr(qrpedidodata.Value),4,2)+'/'+
       copy(DateToStr(qrpedidodata.Value),1,2);
       P_parcelas:=1;
       P_prazo:=0;
       P_intervalo:=0;
       P_conta:=dm.ContasCorrenteconta.Value;
       P_tabela:=1;
       P_total:=StringToFloat(edtotal.Caption);
       P_subtotal:=StringToFloat(edsubtotal.Caption);
       P_tipo:='SV';
       P_cfop:='5101';
       if eddescP.Text<>'' then
          P_DescP:=StringToFloat(eddescP.Text)
       else
          P_DescP:=0;
       if eddescR.Text<>'' then
          P_desconto:=StringToFloat(eddescR.Text)
       else
          P_desconto:=0;
       dm.fornecedores.close;
       dm.fornecedores.sql.clear;
       dm.fornecedores.sql.add('select * from fornecedores');
       dm.fornecedores.sql.add('where apelido = '+chr(39)+cbvendedor.text+chr(39));
       dm.fornecedores.open;
       P_vendedor:=dm.fornecedorescodigo.Value;

       R_hora:=TimeToStr(time);
       qratualizar.Close;
       qratualizar.SQL.Clear;
       qratualizar.SQL.Add('CALL sp_i_rastro(:r_data, :r_hora, :r_operador, :r_rotina, :r_operacao, :r_historico, :r_favorecido, :r_valor, :r_obs)');
       qratualizar.Params[0].Value := date;
       qratualizar.Params[1].Value := R_hora;
       qratualizar.Params[2].Value := FrmPrincipal.sb.Panels[3].Text;
       qratualizar.Params[3].Value := 'PEDIDOS';
       qratualizar.Params[4].Value := 'A';
       qratualizar.Params[5].Value := lbnumero.Caption+' '+lbcliente.Caption;
       qratualizar.Params[6].Value := StrToInt(edcliente.Text);
       qratualizar.Params[7].Value := StringToFloat(edtotal.Caption);
       qratualizar.Params[8].Value := cbvendedor.Text;
       qratualizar.ExecSQL;

       qratualizar.close;
       qratualizar.sql.clear;
       qratualizar.sql.add('update pedidos set');
       qratualizar.sql.add('vendedor = :P_vendedor,');
       qratualizar.sql.add('itens = :P_itens,');
       qratualizar.sql.add('subtotal = :P_subtotal,');
       qratualizar.sql.add('desconto = :P_desconto,');
       qratualizar.sql.add('total = :P_total,');
       qratualizar.sql.add('formapagto = :P_formapagto,');
       qratualizar.sql.add('data = :P_data,');
       qratualizar.sql.add('comissao = :P_comissao,');
       qratualizar.sql.add('parcelas = :P_parcelas,');
       qratualizar.sql.add('prazo = :P_prazo,');
       qratualizar.sql.add('intervalo = :P_intervalo,');
       qratualizar.sql.add('vencto = :P_vencto,');
       qratualizar.sql.add('conta = :P_conta,');
       qratualizar.sql.add('tabela = :P_tabela,');
       qratualizar.sql.add('cliente = :P_cliente,');
       qratualizar.sql.add('IcmsRetido = :P_IcmsRetido,');
       qratualizar.sql.add('DescP = :P_DescP,');
       qratualizar.sql.add('tipo = :P_tipo,');
       qratualizar.sql.add('cfop = :P_cfop');
       qratualizar.SQL.Add('where pedido = '+chr(39)+lbnumero.Caption+chr(39));
       qratualizar.Params[0].Value := P_vendedor;
       qratualizar.Params[1].Value := P_itens;
       qratualizar.Params[2].Value := P_subtotal;
       qratualizar.Params[3].Value := P_desconto;
       qratualizar.Params[4].Value := P_total;
       qratualizar.Params[5].Value := P_formapagto;
       qratualizar.Params[6].Value := P_data;
       qratualizar.Params[7].Value := P_comissao;
       qratualizar.Params[8].Value := P_parcelas;
       qratualizar.Params[9].Value := P_prazo;
       qratualizar.Params[10].Value := P_intervalo;
       qratualizar.Params[11].Value := P_vencto;
       qratualizar.Params[12].Value := P_conta;
       qratualizar.Params[13].Value := P_tabela;
       qratualizar.Params[14].Value := P_cliente;
       qratualizar.Params[15].Value := P_IcmsRetido;
       qratualizar.Params[16].Value := P_DescP;
       qratualizar.Params[17].Value := P_tipo;
       qratualizar.Params[18].Value := P_cfop;
       qratualizar.ExecSQL;
       dm.pedidos.Close;
       dm.pedidos.Open;
//           dm.movpedido.Close;
     end;
//      limpar;
  habilita;
  btnovo.SetFocus;
end;

procedure TFrmPedidos.bt1Click(Sender: TObject);
begin
  qrpedido.Close;
  qrpedido.SQL.Clear;
  qrpedido.SQL.Add('select C.nome,P.pedido,P.data,P.cliente,P.vendedor,P.itens,P.total,P.subtotal,P.descp,P.liberacao,P.nf,P.tipo');
  qrpedido.SQL.Add('from clientes C, pedidos P');
  qrpedido.SQL.Add('where (P.cliente=C.codigo)');
  if chliberacao.Checked=false then
     qrpedido.SQL.Add('and (P.liberacao is null)');
  dm.usuarios.Open;
  dm.usuarios.Locate('nome',FrmPedidos.sb.Panels[3].Text,[]);
  if dm.usuariosparametros.value='0' then
     begin
       dm.fornecedores.close;
       dm.fornecedores.sql.clear;
       dm.fornecedores.sql.add('select * from fornecedores');
       dm.fornecedores.sql.add('where apelido = '+chr(39)+FrmPedidos.sb.Panels[3].Text+chr(39));
       dm.fornecedores.open;
       qrpedido.SQL.Add('and (P.vendedor = '+dm.fornecedorescodigo.AsString+')');
     end;
  if (medatainicial.Text<>'  /  /    ') and
     (medatafinal.Text<>'  /  /    ') then
     begin
      if chliberacao.Checked=false then
         qrpedido.SQL.Add('and (P.data between '+chr(39)+
         copy(medatainicial.text,7,4)+'/'+copy(medatainicial.text,4,2)+'/'+
         copy(medatainicial.text,1,2)+chr(39)+' and '+chr(39)+
         copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
         copy(MeDataFinal.text,1,2)+chr(39)+')')
      else
         qrpedido.SQL.Add('and (P.liberacao between '+chr(39)+
         copy(medatainicial.text,7,4)+'/'+copy(medatainicial.text,4,2)+'/'+
         copy(medatainicial.text,1,2)+chr(39)+' and '+chr(39)+
         copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
         copy(MeDataFinal.text,1,2)+chr(39)+')');
     end;
  if edclienteI.Text<>'' then
     qrpedido.SQL.Add('and (C.nome = '+chr(39)+lbclienteI.Caption+chr(39)+')');
  qrpedido.SQL.Add('order by P.pedido');
  qrpedido.open;
end;

procedure TFrmPedidos.TabSheet1Exit(Sender: TObject);
begin
      bt1.Click;
end;

procedure TFrmPedidos.medatainicialExit(Sender: TObject);
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

procedure TFrmPedidos.medatafinalExit(Sender: TObject);
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

procedure TFrmPedidos.meliberacaoExit(Sender: TObject);
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

procedure TFrmPedidos.btcriticaClick(Sender: TObject);
begin
      dm.parametros.Close;
      dm.parametros.Open;
      qrdesc1.Enabled:=false;
      qrdesc2.Enabled:=false;
      atualiza;
      Quickrep1.preview;
end;

procedure Liberacao;
begin
      if application.messagebox('Confirma Libera��o do Pedido?','Aten��o',mb_yesno+mb_iconquestion)=id_yes then
         begin
           dm.parametros.Close;
           dm.parametros.Open;
           check:=true;

           R_hora:=TimeToStr(time);
           dm.pedidos.Close;
           dm.pedidos.SQL.Clear;
           dm.pedidos.SQL.Add('select * from pedidos');
           dm.pedidos.SQL.Add('where pedido = '+chr(39)+IntToStr(FrmPedidos.qrpedidopedido.value)+chr(39));
           dm.pedidos.open;

           FrmPedidos.qratualizar.Close;
           FrmPedidos.qratualizar.SQL.Clear;
           FrmPedidos.qratualizar.SQL.Add('CALL sp_i_rastro(:r_data, :r_hora, :r_operador, :r_rotina, :r_operacao, :r_historico, :r_favorecido, :r_valor, :r_obs)');
           FrmPedidos.qratualizar.Params[0].Value := date;
           FrmPedidos.qratualizar.Params[1].Value := R_hora;
           FrmPedidos.qratualizar.Params[2].Value := FrmPrincipal.sb.Panels[3].Text;
           FrmPedidos.qratualizar.Params[3].Value := 'PEDIDOS';
           FrmPedidos.qratualizar.Params[4].Value := 'B';
           FrmPedidos.qratualizar.Params[5].Value := 'PEDIDO: '+formatfloat('0000',dm.pedidospedido.value);
           FrmPedidos.qratualizar.Params[6].Value := StrToInt(FrmPedidos.edcliente.Text);
           FrmPedidos.qratualizar.Params[7].Value := StringToFloat(FrmPedidos.edtotal.Caption);
           FrmPedidos.qratualizar.Params[8].Value := FrmPedidos.cbvendedor.Text;
           FrmPedidos.qratualizar.ExecSQL;

       if check=true then
          begin
           dm.pedidos.Close;
           dm.pedidos.SQL.Clear;
           dm.pedidos.SQL.Add('select * from pedidos');
           dm.pedidos.SQL.Add('where pedido = '+chr(39)+IntToStr(FrmPedidos.qrpedidopedido.value)+chr(39));
           dm.pedidos.open;

           dm.movpedido.First;
           dm.MovEstoque.Close;
           dm.MovEstoque.SQL.Clear;
           dm.movestoque.SQL.Add('select * from movestoque');
           dm.movestoque.SQL.Add('where (documento='+chr(39)+IntToStr(dm.pedidospedido.Value)+chr(39)+')');
           dm.movestoque.SQL.Add('and (favorecido='+IntToStr(dm.pedidoscliente.Value)+')');
           dm.movestoque.SQL.Add('and (tipomov='+chr(39)+dm.pedidostipo.Value+chr(39)+')');
           dm.movestoque.open;
           dm.parametros.Close;
           dm.parametros.Open;

            vlrdesc:=0;
            if dm.pedidosdesconto.Value>0 then
               begin
                 vlrdesc:=dm.pedidosdesconto.Value;
                 saldodesc:=0;
                 itens:=dm.movpedido.RecordCount;
               end;

           dm.movpedido.First;
           while not dm.movpedido.Eof do
                 begin
                   dm.produtos.close;
                   dm.produtos.sql.clear;
                   dm.produtos.sql.add('select * from produtos');
                   dm.produtos.sql.add('where codigo = '+IntToStr(dm.movpedidoproduto.Value));
                   dm.produtos.open;

                   dm.movestoque.Insert;
                   dm.movestoquedata.Value:=date;
                   dm.movestoqueTipoMov.Value:=dm.pedidostipo.Value;
                   dm.movestoquefavorecido.Value:=dm.pedidoscliente.Value;
                   dm.movestoqueproduto.Value:=dm.movpedidoproduto.Value;
                   if dm.movpedidound.Value=dm.produtosundint.Value then
                      begin
                        dm.movestoqueund.Value:=dm.movpedidound.Value;
                        dm.movestoqueqtd.Value:=dm.movpedidoqtd.Value;
                        dm.movestoqueVlrUnit.Value:=dm.movpedidounit.Value;
                      end
                      else
                      begin
                        dm.movestoqueund.Value:=dm.produtosundint.Value;
                        dm.movestoqueqtd.Value:=dm.movpedidoqtd.Value*dm.produtosqtdemb.Value;
                        dm.movestoqueVlrUnit.Value:=dm.movpedidounit.Value/dm.produtosqtdemb.Value;
                      end;

                   dm.movestoquedesconto.Value:=0;
                   if dm.pedidosdescp.Value>0 then
                      begin
                        if itens>1 then
                           begin
                             dm.movestoquedesconto.Value:=round(dm.movpedidototal.Value*dm.pedidosdescp.Value)/100;
                             saldodesc:=saldodesc+dm.movestoquedesconto.Value;
                           end
                           else
                             dm.movestoquedesconto.Value:=vlrdesc-saldodesc;
                      end;
                   dm.movestoqueVlrTotal.Value:=(dm.movestoqueVlrUnit.Value*dm.movestoqueqtd.Value)-
                   dm.movestoquedesconto.Value;
                   dm.movestoqueVlrUnit.Value:=dm.movestoqueVlrTotal.Value/dm.movestoqueqtd.Value;

//                   dm.movestoqueVlrTotal.Value:=dm.movpedidototal.Value;
                   dm.movestoquebaseicms.Value:=dm.movpedidobaseicms.Value;
//                   dm.movestoquedesconto.Value:=dm.movpedidodescv.Value;
                   dm.movestoquedocumento.Value:=IntToStr(dm.pedidospedido.value);
                   dm.movestoquevendedor.Value:=dm.pedidosvendedor.Value;
//                   dm.movestoqueicms.Value:=dm.movpedidoicms.Value;
                   dm.movestoquelocal.Value:=FrmPrincipal.sb.Panels[7].Text;
                   dm.movestoque.Post;

                   if copy(dm.pedidostipo.Value,1,1)='S' then
                      antestoque:=dm.produtosestoque.Value-dm.movestoqueqtd.Value
                   else if copy(dm.pedidostipo.Value,1,1)='E' then
                      antestoque:=dm.produtosestoque.Value+dm.movestoqueqtd.Value;

                   FrmPedidos.qratualizar.close;
                   FrmPedidos.qratualizar.sql.clear;
                   FrmPedidos.qratualizar.sql.add('update produtos set');
                   FrmPedidos.qratualizar.sql.add('estoque = :antestoque');
                   FrmPedidos.qratualizar.sql.add('where codigo = '+IntToStr(dm.movpedidoproduto.Value));
                   FrmPedidos.qratualizar.Params[0].Value := antestoque;
                   FrmPedidos.qratualizar.ExecSQL;

                   dm.movpedido.Next;
                   itens:=itens-1;
                 end;

           if (dm.pedidostipo.Value='SV') {or (dm.pedidostipo.Value='SS') }then
              begin
                dm.vendaformaspagto.Close;
                dm.vendaformaspagto.SQL.Clear;
                dm.vendaformaspagto.SQL.Add('select * from vendaformaspagto');
                dm.vendaformaspagto.SQL.Add('where venda = '+chr(39)+FrmPedidos.lbnumero.Caption+chr(39));
                dm.vendaformaspagto.Open;
                while not dm.vendaformaspagto.Eof do
                      begin
                         vlrcompra:=dm.vendaformaspagtovalor.Value;
                         qtdparc:=dm.vendaformaspagtoparcelas.Value;
                         vlrparcela:=trunc(vlrcompra/qtdparc*100)/100;
                         saldoparc:=vlrcompra-vlrparcela*qtdparc;
                         dataparc:=date;

                         dm.docreceber.Close;
                         dm.docreceber.SQL.Clear;
                         dm.docreceber.SQL.Add('select * from docreceber');
                         dm.docreceber.SQL.Add('where (1=2)');
                         dm.docreceber.Open;

                         for i:=1 to qtdparc do
                            begin
                             dm.docreceber.Insert;
                             dm.docreceberempresa.Value:=StrToInt(FrmPrincipal.sb.Panels[7].text);
                             dm.docrecebercliente.Value:=dm.pedidoscliente.Value;
                             dm.docrecebertipo.Value:=dm.vendaformaspagtoformapagto.Value;
                             dm.docreceberlocalcob.Value:=dm.parametroscontabanco.Value;
                             if qtdparc=1 then
                                dm.docreceberdoc.Value:=IntToStr(dm.pedidospedido.value)
                             else
                                dm.docreceberdoc.Value:=IntToStr(dm.pedidospedido.value)+'-'+IntToStr(i);
                             dm.docreceberemissao.Value:=date;
                             if i=1 then
                                begin
                                  dm.docrecebervalor.Value:=vlrparcela+saldoparc;
                                  dataparc:=dataparc+dm.vendaformaspagtoprazo.Value;
                                  dia:=copy(DateTimeToStr(dataparc),1,2);
                                end
                                else
                                begin
                                  dm.docrecebervalor.Value:=vlrparcela;
                                  dataparc:=dataparc+dm.vendaformaspagtointervalo.Value;
                                end;
                             dm.docrecebervencto.Value:=dataparc;
                             dm.docreceberliquido.Value:=dm.docrecebervalor.Value;
                             dm.docrecebercomissao.Value:=dm.clientesperc.Value;
                             if dm.pedidostipo.Value='SV' then
                                dm.docreceberBol_gerado.Value:='V'
                             else
                                dm.docreceberBol_gerado.Value:='S';
                             dm.docrecebervendedor.Value:=dm.pedidosvendedor.Value;
                             dm.docreceber.Post;

                             FrmPedidos.qratualizar.Close;
                             FrmPedidos.qratualizar.SQL.Clear;
                             FrmPedidos.qratualizar.SQL.Add('CALL sp_i_rastro(:r_data, :r_hora, :r_operador, :r_rotina, :r_operacao, :r_historico, :r_favorecido, :r_valor, :r_obs)');
                             FrmPedidos.qratualizar.Params[0].Value := date;
                             FrmPedidos.qratualizar.Params[1].Value := R_hora;
                             FrmPedidos.qratualizar.Params[2].Value := FrmPrincipal.sb.Panels[3].Text;
                             FrmPedidos.qratualizar.Params[3].Value := 'DOC. RECEBER';
                             FrmPedidos.qratualizar.Params[4].Value := 'I';
                             FrmPedidos.qratualizar.Params[5].Value := dm.docreceberdoc.Value;
                             FrmPedidos.qratualizar.Params[6].Value := dm.pedidoscliente.Value;
                             FrmPedidos.qratualizar.Params[7].Value := dm.docreceberliquido.Value;
                             FrmPedidos.qratualizar.Params[8].Value := 'Referente ao Pedido: '+IntToStr(FrmPedidos.qrpedidopedido.value)+' - Pagto em: '+dm.vendaformaspagtoformapagto.Value;
                             FrmPedidos.qratualizar.ExecSQL;
                            end;
                         dm.vendaformaspagto.Next;
                      end;
                 dm.docreceber.Close;
              end;

           dataliberacao:=copy(DateToStr(date),7,4)+'/'+copy(DateToStr(date),4,2)+'/'+copy(DateToStr(date),1,2);
           P_Liberado:='S';
           FrmPedidos.qratualizar.Close;
           FrmPedidos.qratualizar.SQL.Clear;
           FrmPedidos.qratualizar.SQL.Add('update pedidos set');
           FrmPedidos.qratualizar.SQL.Add('liberacao = :dataliberacao,');
           FrmPedidos.qratualizar.SQL.Add('Liberado = :P_Liberado');
           FrmPedidos.qratualizar.SQL.Add('where pedido = '+chr(39)+IntToStr(dm.pedidospedido.Value)+chr(39));
           FrmPedidos.qratualizar.Params[0].Value := dataliberacao;
           FrmPedidos.qratualizar.Params[1].Value := P_Liberado;
           FrmPedidos.qratualizar.ExecSQL;

           if dm.pedidostipo.Value='SS' then
              begin
                busca := '';
                ClickedOK := InputQuery('Nota de Servi�o', 'Digite o N� da Nota de Servi�o', busca);
                if ClickedOK then
                   begin
                     FrmPedidos.qratualizar.Close;
                     FrmPedidos.qratualizar.SQL.Clear;
                     FrmPedidos.qratualizar.SQL.Add('update pedidos set');
                     FrmPedidos.qratualizar.sql.add('nf = :busca');
                     FrmPedidos.qratualizar.SQL.Add('where pedido = '+IntToStr(dm.pedidospedido.Value));
                     FrmPedidos.qratualizar.Params[0].Value := busca;
                     FrmPedidos.qratualizar.ExecSQL;

                     FrmPedidos.qratualizar.Close;
                     FrmPedidos.qratualizar.SQL.Clear;
                     FrmPedidos.qratualizar.SQL.Add('update docreceber set');
                     FrmPedidos.qratualizar.sql.add('nf = :busca');
                     FrmPedidos.qratualizar.SQL.Add('where (doc = '+chr(39)+IntToStr(dm.pedidospedido.Value)+chr(39)+')');
                     FrmPedidos.qratualizar.SQL.Add('and (cliente = '+IntToStr(dm.pedidoscliente.Value)+')');
                     FrmPedidos.qratualizar.Params[0].Value := busca;
                     FrmPedidos.qratualizar.ExecSQL;
                   end;
              end;

           dm.movestoque.Close;
           FrmPedidos.qrpedido.Close;
           FrmPedidos.qrpedido.Open;
           FrmPedidos.qrpedido.Locate('pedido',dm.pedidospedido.Value,[]);
          end;
         end;
     FrmPedidos.btcritica.Enabled:=true;
     FrmPedidos.btliberar.Enabled:=true;
     FrmPedidos.btnf.Enabled:=true;
     FrmPedidos.btboleto.Enabled:=true;
     FrmPedidos.btnf.SetFocus;
end;

procedure TFrmPedidos.btliberarClick(Sender: TObject);
begin
      if not qrpedidoliberacao.IsNull then
         application.messagebox('Pedido j� Liberado','Opera��o Imposs�vel',mb_ok+MB_ICONINFORMATION)
      else
      begin
        dm.pedidos.Close;
        dm.pedidos.SQL.Clear;
        dm.pedidos.SQL.Add('select * from pedidos');
        dm.pedidos.SQL.Add('where pedido = '+IntToStr(qrpedidopedido.value));
        dm.pedidos.open;
        if dm.pedidosformapagto.IsNull then
           begin
             application.MessageBox('Efetue o Fechamento do Pedido','Aten��o',mb_Ok+MB_ICONWARNING);
             PageControl1.ActivePageIndex := 0;
           end
           else
           begin
             P_cliente:=qrpedidocliente.value;
             dm.clientes.close;
             dm.clientes.sql.clear;
             dm.clientes.sql.add('select * from clientes');
             dm.clientes.sql.add('where codigo = '+IntToStr(P_cliente));
             dm.clientes.open;
{             dm.parametros.Close;
             dm.parametros.Open;
             DocAberto;
             if liberar=false then
                begin
                  dm.usuarios.Open;
                  dm.usuarios.Locate('nome',FrmPrincipal.sb.Panels[3].Text,[]);
                  if dm.usuariospedidos.value='5' then
                     begin
                       if application.messagebox('Confirma Libera��o?',StrToPChar(MensagemLiberacao),mb_yesno+MB_ICONQUESTION)=id_yes then
                          Liberacao;
                     end
                  else if dm.usuariospedidos.value='2' then
                     application.messagebox('Contate o Administrador',StrToPChar(MensagemLiberacao),mb_ok+MB_ICONERROR);
                end
                else
}                  Liberacao;
           end;
      end;
end;

procedure TFrmPedidos.DBGrid1DblClick(Sender: TObject);
begin
      PageControl1.ActivePageIndex := 0;
end;

procedure TFrmPedidos.btexcluirClick(Sender: TObject);
begin
   if application.MessageBox('Confirma Exclus�o?','Excluir Pedido',mb_yesno+mb_iconquestion+MB_DEFBUTTON2)=id_yes then
      begin
        qratualizar.Close;
        qratualizar.SQL.Clear;
        qratualizar.SQL.Add('delete from movpedido');
        qratualizar.SQL.Add('where venda = '+chr(39)+lbnumero.Caption+chr(39));
        qratualizar.ExecSQL;

        qratualizar.Close;
        qratualizar.SQL.Clear;
        qratualizar.SQL.Add('delete from vendaformaspagto');
        qratualizar.SQL.Add('where venda = '+chr(39)+lbnumero.Caption+chr(39));
        qratualizar.ExecSQL;
        dm.vendaformaspagto.Close;

        R_hora:=TimeToStr(time);
        qratualizar.Close;
        qratualizar.SQL.Clear;
        qratualizar.SQL.Add('CALL sp_i_rastro(:r_data, :r_hora, :r_operador, :r_rotina, :r_operacao, :r_historico, :r_favorecido, :r_valor, :r_obs)');
        qratualizar.Params[0].Value := date;
        qratualizar.Params[1].Value := R_hora;
        qratualizar.Params[2].Value := FrmPrincipal.sb.Panels[3].Text;
        qratualizar.Params[3].Value := 'PEDIDOS';
        qratualizar.Params[4].Value := 'E';
        qratualizar.Params[5].Value := lbnumero.Caption+' '+lbcliente.Caption;
        qratualizar.Params[6].Value := StrToInt(edcliente.Text);
        qratualizar.Params[7].Value := StringToFloat(edtotal.Caption);
        qratualizar.Params[8].Value := '';
        qratualizar.ExecSQL;

        qratualizar.Close;
        qratualizar.SQL.Clear;
        qratualizar.SQL.Add('delete from pedidos');
        qratualizar.SQL.Add('where pedido = '+chr(39)+lbnumero.Caption+chr(39));
        qratualizar.ExecSQL;
        qrmovpedido.Close;
        limpar;
      end;
end;

procedure TFrmPedidos.btalterarClick(Sender: TObject);
begin
  if lbnumero.Caption='' then
     begin
       showmessage('Consulte um Pedido!!!');
       exit;
     end;

  dm.pedidos.Close;
  dm.pedidos.SQL.Clear;
  dm.pedidos.SQL.Add('select * from pedidos');
  dm.pedidos.SQL.Add('where pedido = '+lbnumero.Caption);
  dm.pedidos.open;
  if not dm.pedidosliberacao.IsNull then
     begin
       showmessage('Pedido j� enviado pro Caixa!!!');
       exit;
     end;

  DBGrid2.OnDblClick:=DBGrid2DblClick;
  novo:=2;
  desabilita;
  edcodigo.SetFocus;
end;

procedure TFrmPedidos.edunitarioExit(Sender: TObject);
var
vlrunit,vlrproduto:real;
begin
  if edunitario.Text<>'' then
     begin
        dm.usuarios.Close;
        dm.usuarios.Open;
        dm.usuarios.Locate('nome',FrmPrincipal.sb.Panels[3].Text,[]);
        edunitario.Text:=formatfloat(mascara,StringToFloat(edunitario.Text));
        vlrunit:=StringToFloat(edunitario.Text);
        if cbunidade.Text<>dm.produtosundint.Value then
           begin
              vlrproduto:=dm.produtosatacado.Value;
              if vlrunit<vlrproduto then
                 begin
                    if application.messagebox('Deseja Proseguir','Pre�o inferior a tabela de venda',mb_yesno+mb_iconquestion)=id_no then
                       edunitario.SetFocus
                 end;
           end
           else
           begin
              vlrproduto:=dm.produtosatacado.Value;
              if vlrunit<vlrproduto then
                 begin
                   if application.messagebox('Deseja Proseguir','Pre�o inferior a tabela de venda',mb_yesno+mb_iconquestion)=id_no then
                      edunitario.SetFocus
                 end;
           end;
     end;
  edunitario.Color:=clWindow;
end;

procedure TFrmPedidos.edclienteIExit(Sender: TObject);
begin
      if edclienteI.Text<>'' then
         begin
            dm.clientes.close;
            dm.clientes.sql.clear;
            dm.clientes.sql.add('select * from clientes');
            dm.clientes.sql.add('where codigo = '+edclienteI.text);
            dm.clientes.open;
            if dm.clientes.RecordCount<1 then
               begin
                 application.MessageBox('Cliente n�o Localizado','Aten��o',mb_ok+mb_iconinformation);
                 edclienteI.SetFocus;
               end
               else
                 lbclienteI.Caption:=dm.clientesnome.value;
         end
         else
           lbclienteI.Caption:='';
end;

procedure TFrmPedidos.edfornecedorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_f10 then
     begin
       try
         Application.CreateForm(TFrmCadclientes, FrmCadclientes);
         FrmCadclientes.showmodal;
       finally
         FrmCadclientes.Release;
         FrmCadclientes:=nil;
       end;
     end;
end;

procedure TFrmPedidos.cbtipoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if key=vk_escape then
         btcancelar.Click;
end;

procedure TFrmPedidos.cbunidadeEnter(Sender: TObject);
begin
  cbunidade.Color:=$0080FFFF;
      if dm.produtosundext.Value=dm.produtosundint.Value then
         begin
           cbunidade.Text:=dm.produtosundint.Value;
           edunitario.SetFocus;
         end;
end;

procedure TFrmPedidos.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
busca:string;
ClickedOK: Boolean;
begin
      if key=vk_escape then
         btcancelar.Click;

      if key=vk_f3 then
         begin
           qrpedido.First;
           while not qrpedido.Eof do
                 begin
                   atualiza;
                   if not qrpedidoliberacao.IsNull then
                      begin
                         dm.pedidos.Close;
                         dm.pedidos.SQL.Clear;
                         dm.pedidos.SQL.Add('select * from pedidos');
                         dm.pedidos.SQL.Add('where pedido = '+chr(39)+IntToStr(FrmPedidos.qrpedidopedido.value)+chr(39));
                         dm.pedidos.open;

                         qratualizar.close;
                         qratualizar.sql.clear;
                         qratualizar.sql.add('delete from movestoque');
                         qratualizar.SQL.Add('where (documento='+chr(39)+IntToStr(dm.pedidospedido.Value)+chr(39)+')');
                         qratualizar.SQL.Add('and (favorecido='+IntToStr(dm.pedidoscliente.Value)+')');
                         qratualizar.SQL.Add('and (tipomov='+chr(39)+dm.pedidostipo.Value+chr(39)+')');
                         qratualizar.ExecSQL;

                         dm.MovEstoque.Close;
                         dm.MovEstoque.SQL.Clear;
                         dm.movestoque.SQL.Add('select * from movestoque');
                         dm.movestoque.SQL.Add('where (documento='+chr(39)+IntToStr(dm.pedidospedido.Value)+chr(39)+')');
                         dm.movestoque.SQL.Add('and (favorecido='+IntToStr(dm.pedidoscliente.Value)+')');
                         dm.movestoque.SQL.Add('and (tipomov='+chr(39)+dm.pedidostipo.Value+chr(39)+')');
                         dm.movestoque.open;
                         if dm.movestoque.RecordCount<1 then
                            begin
                               dm.MovPedido.Close;
                               dm.MovPedido.SQL.Clear;
                               dm.movpedido.SQL.Add('select * from movpedido');
                               dm.movpedido.SQL.Add('where venda = '+chr(39)+IntToStr(dm.pedidospedido.Value)+chr(39));
                               dm.movpedido.SQL.Add('order by seq');
                               dm.movpedido.open;

                               dm.parametros.Close;
                               dm.parametros.Open;

                                vlrdesc:=0;
                                if dm.pedidosdesconto.Value>0 then
                                   begin
                                     vlrdesc:=dm.pedidosdesconto.Value;
                                     saldodesc:=0;
                                     itens:=dm.movpedido.RecordCount;
                                   end;

                               while not dm.movpedido.Eof do
                                     begin
                                       dm.produtos.close;
                                       dm.produtos.sql.clear;
                                       dm.produtos.sql.add('select * from produtos');
                                       dm.produtos.sql.add('where codigo = '+IntToStr(dm.movpedidoproduto.Value));
                                       dm.produtos.open;

                                       dm.movestoque.Insert;
                                       dm.movestoquedata.Value:=dm.pedidosliberacao.Value;
                                       dm.movestoqueTipoMov.Value:=dm.pedidostipo.Value;
                                       dm.movestoquefavorecido.Value:=dm.pedidoscliente.Value;
                                       dm.movestoqueproduto.Value:=dm.movpedidoproduto.Value;
                                       if dm.movpedidound.Value=dm.produtosundint.Value then
                                          begin
                                            dm.movestoqueund.Value:=dm.movpedidound.Value;
                                            dm.movestoqueqtd.Value:=dm.movpedidoqtd.Value;
                                            dm.movestoqueVlrUnit.Value:=dm.movpedidounit.Value;
                                          end
                                          else
                                          begin
                                            dm.movestoqueund.Value:=dm.produtosundint.Value;
                                            dm.movestoqueqtd.Value:=dm.movpedidoqtd.Value*dm.produtosqtdemb.Value;
                                            dm.movestoqueVlrUnit.Value:=dm.movpedidounit.Value/dm.produtosqtdemb.Value;
                                          end;

                                       dm.movestoquedesconto.Value:=0;
                                       if dm.pedidosdescp.Value>0 then
                                          begin
                                            if itens>1 then
                                               begin
                                                 dm.movestoquedesconto.Value:=round(dm.movpedidototal.Value*dm.pedidosdescp.Value)/100;
                                                 saldodesc:=saldodesc+dm.movestoquedesconto.Value;
                                               end
                                               else
                                                 dm.movestoquedesconto.Value:=vlrdesc-saldodesc;
                                          end;
                                       dm.movestoqueVlrTotal.Value:=(dm.movestoqueVlrUnit.Value*dm.movestoqueqtd.Value)-
                                       dm.movestoquedesconto.Value;
                                       dm.movestoqueVlrUnit.Value:=dm.movestoqueVlrTotal.Value/dm.movestoqueqtd.Value;

                                       dm.movestoquebaseicms.Value:=dm.movpedidobaseicms.Value;
                                       dm.movestoquedocumento.Value:=IntToStr(dm.pedidospedido.value);
                                       dm.movestoquevendedor.Value:=dm.pedidosvendedor.Value;
                    //                   dm.movestoqueicms.Value:=dm.movpedidoicms.Value;
                                       dm.movestoquelocal.Value:=FrmPrincipal.sb.Panels[7].Text;
                                       dm.movestoque.Post;

                                       if copy(dm.pedidostipo.Value,1,1)='S' then
                                          antestoque:=dm.produtosestoque.Value-dm.movestoqueqtd.Value
                                       else if copy(dm.pedidostipo.Value,1,1)='E' then
                                          antestoque:=dm.produtosestoque.Value+dm.movestoqueqtd.Value;

                                       FrmPedidos.qratualizar.close;
                                       FrmPedidos.qratualizar.sql.clear;
                                       FrmPedidos.qratualizar.sql.add('update produtos set');
                                       FrmPedidos.qratualizar.sql.add('estoque = :antestoque');
                                       FrmPedidos.qratualizar.sql.add('where codigo = '+IntToStr(dm.movpedidoproduto.Value));
                                       FrmPedidos.qratualizar.Params[0].Value := antestoque;
                                       FrmPedidos.qratualizar.ExecSQL;

                                       dm.movpedido.Next;
                                       itens:=itens-1;
                                     end;
                            end
                            else
                            begin
                              E_local:=FrmPrincipal.sb.Panels[7].Text;
                              FrmPedidos.qratualizar.close;
                              FrmPedidos.qratualizar.sql.clear;
                              FrmPedidos.qratualizar.sql.add('update movestoque set');
                              FrmPedidos.qratualizar.sql.add('local = :E_local');
                              FrmPedidos.qratualizar.SQL.Add('where (documento='+chr(39)+IntToStr(dm.pedidospedido.Value)+chr(39)+')');
                              FrmPedidos.qratualizar.SQL.Add('and (favorecido='+IntToStr(dm.pedidoscliente.Value)+')');
                              FrmPedidos.qratualizar.SQL.Add('and (tipomov='+chr(39)+dm.pedidostipo.Value+chr(39)+')');
                              FrmPedidos.qratualizar.Params[0].Value := E_local;
                              FrmPedidos.qratualizar.ExecSQL;
                            end;
                      end;
                   qrpedido.Next;
                 end;
           showmessage('Processamento Finalizado!!!');
         end;

      if key=vk_f7 then
         begin
           busca := '';
           ClickedOK := InputQuery('Digite a Observa��o', 'Observa��o do Pedido', busca);
           if ClickedOK then
              begin
                if busca<>'' then
                   begin
                     qratualizar.close;
                     qratualizar.sql.clear;
                     qratualizar.sql.add('update pedidos set');
                     qratualizar.sql.add('obs = :busca');
                     qratualizar.SQL.Add('where pedido = '+IntToStr(qrpedidopedido.Value));
                     qratualizar.Params[0].Value := busca;
                     qratualizar.ExecSQL;
                     dm.pedidos.Close;
                     dm.pedidos.Open;
                   end;
              end;
         end;
      if key=vk_f11 then
         begin
           busca := '';
           ClickedOK := InputQuery('Localizar Nota Fiscal', 'Digite o No. da Nota Fiscal', busca);
           if ClickedOK then
              begin
                if busca<>'' then
                   begin
                     qrpedido.Close;
                     qrpedido.SQL.Clear;
                     qrpedido.SQL.Add('select C.fantasia as nome,P.pedido,P.data,P.cliente,P.vendedor,P.itens,P.total,P.subtotal,P.descp,P.liberacao,P.nf,P.tipo');
                     qrpedido.SQL.Add('from clientes C, pedidos P');
                     qrpedido.SQL.Add('where (P.cliente=C.codigo)');
                     qrpedido.SQL.Add('and (P.nf = '+busca+')');
                     qrpedido.SQL.Add('order by P.pedido');
                     qrpedido.open;
                   end;
                DBGrid1.SetFocus;
              end;
         end
      else if key=vk_f12 then
         begin
           busca := '';
           ClickedOK := InputQuery('Localizar Pedido', 'Digite o No. do Pedido', busca);
           if ClickedOK then
              begin
                if busca<>'' then
                   begin
                     qrpedido.Close;
                     qrpedido.SQL.Clear;
                     qrpedido.SQL.Add('select C.fantasia as nome,P.pedido,P.data,P.cliente,P.vendedor,P.itens,P.total,P.subtotal,P.descp,P.liberacao,P.nf,P.tipo');
                     qrpedido.SQL.Add('from clientes C, pedidos P');
                     qrpedido.SQL.Add('where (P.cliente=C.codigo)');
                     qrpedido.SQL.Add('and (P.pedido = '+busca+')');
                     qrpedido.SQL.Add('order by P.pedido');
                     qrpedido.open;
                   end;
                DBGrid1.SetFocus;
              end;
         end;
end;

procedure TFrmPedidos.edclienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_f10 then
     begin
       try
         Application.CreateForm(TFrmCadclientes, FrmCadclientes);
         FrmCadclientes.showmodal;
       finally
         FrmCadclientes.Release;
         FrmCadclientes:=nil;
       end;
     end;
end;

procedure TFrmPedidos.edqtdEnter(Sender: TObject);
begin
  edqtd.Color:=$0080FFFF;
      if edcodigo.Text='' then
         begin
           application.MessageBox('Escolha um Produto','Aten��o',mb_ok+MB_ICONERROR);
           edcodigo.SetFocus;
         end;
end;

procedure TFrmPedidos.TabSheet2Enter(Sender: TObject);
begin
  if lbnumero.Caption<>'' then
     begin
       dm.pedidos.Close;
       dm.pedidos.SQL.Clear;
       dm.pedidos.SQL.Add('select * from pedidos');
       dm.pedidos.SQL.Add('where pedido = '+lbnumero.Caption);
       dm.pedidos.open;
       if dm.pedidos.RecordCount>0 then
          begin
            if btgravar.Enabled=true then
               btgravar.Click;
          end;
       qrpedido.Open;
       qrpedido.Locate('pedido',lbnumero.Caption,[]);
     end;
end;

procedure TFrmPedidos.DBGrid1CellClick(Column: TColumn);
begin
  atualiza;
end;

procedure TFrmPedidos.DBGrid1TitleClick(Column: TColumn);
var
campo:string;
begin
      campo:=column.fieldname;
      application.processmessages;
      qrpedido.Close;
      qrpedido.SQL.Clear;
      qrpedido.SQL.Add('select C.fantasia as nome,P.pedido,P.data,P.cliente,P.vendedor,P.itens,P.total,P.subtotal,P.descp,P.liberacao,P.nf,P.tipo');
      qrpedido.SQL.Add('from clientes C, pedidos P');
      qrpedido.SQL.Add('where (P.cliente=C.codigo)');
      if chliberacao.Checked=false then
         qrpedido.SQL.Add('and (P.data between '+chr(39)+
         copy(medatainicial.text,7,4)+'/'+copy(medatainicial.text,4,2)+'/'+
         copy(medatainicial.text,1,2)+chr(39)+' and '+chr(39)+
         copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
         copy(MeDataFinal.text,1,2)+chr(39)+')')
      else
         qrpedido.SQL.Add('and (P.liberacao between '+chr(39)+
         copy(medatainicial.text,7,4)+'/'+copy(medatainicial.text,4,2)+'/'+
         copy(medatainicial.text,1,2)+chr(39)+' and '+chr(39)+
         copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
         copy(MeDataFinal.text,1,2)+chr(39)+')');
      if edclienteI.Text<>'' then
         qrpedido.SQL.Add('and (C.nome = '+chr(39)+lbclienteI.Caption+chr(39)+')');
      qrpedido.sql.add('order by '+campo);
      qrpedido.open;
end;

procedure TFrmPedidos.btnfClick(Sender: TObject);
begin
  if qrpedidoliberacao.IsNull then
     begin
       application.MessageBox('Libere o Pedido','Aten��o',mb_ok+MB_ICONINFORMATION);
       btliberar.SetFocus;
     end
     else
     begin
      try
        dm.parametros.Close;
        dm.parametros.Open;
        atualiza;
        Application.CreateForm(TfEnvioNfe, fEnvioNfe);

        fEnvioNfe.edtEmitCNPJ.Text:=dm.parametroscnpj.Value;
        fEnvioNfe.edtEmitIE.Text:=dm.parametrosie.Value;
        fEnvioNfe.edtEmitRazao.Text:=dm.parametrosrazaosocial.Value;
        fEnvioNfe.edtEmitFantasia.Text:=dm.parametrosfantasia.Value;
        fEnvioNfe.edtEmitFone.Text:=dm.parametrosddd.Value+dm.parametrosfone1.Value;
        fEnvioNfe.edtEmitCEP.Text:=dm.parametroscep.Value;
        fEnvioNfe.edtEmitLogradouro.Text:=dm.parametrosendereco.Value;
        fEnvioNfe.edtEmitNumero.Text:=IntToStr(dm.parametrosnumero.Value);
        fEnvioNfe.edtEmitComp.Text:='';
        fEnvioNfe.edtEmitBairro.Text:=dm.parametrosbairro.Value;
        fEnvioNfe.edtEmitCidade.Text:=dm.parametroscidade.Value;
        fEnvioNfe.edtEmitUF.Text:=dm.parametrosEstado.Value;

        dm.municipios.close;
        dm.municipios.sql.clear;
        dm.municipios.sql.add('select * from municipios');
        dm.municipios.sql.add('where UF = '+chr(39)+dm.parametrosEstado.Value+chr(39));
        dm.municipios.sql.add('and Municipio = '+chr(39)+dm.parametroscidade.Value+chr(39));
        dm.municipios.open;

        fEnvioNfe.edtEmitCodCidade.Text:=dm.municipiosCodigo.Value;

        dm.clientes.close;
        dm.clientes.sql.clear;
        dm.clientes.sql.add('select * from clientes');
        dm.clientes.sql.add('where codigo = '+IntToStr(qrpedidocliente.Value));
        dm.clientes.open;

        fEnvioNfe.edtDestCNPJ.Text:=dm.clientescpf.Value;
        if dm.clientesrg.Value<>'' then
           fEnvioNfe.edtDestIE.Text:=dm.clientesrg.Value
        else
           fEnvioNfe.edtDestIE.Text:='';
        fEnvioNfe.edtDestRazao.Text:=dm.clientesnome.Value;
        fEnvioNfe.edtDestFantasia.Text:=dm.clientesfantasia.Value;
        fEnvioNfe.edtDestFone.Text:=dm.clientesfone1.Value;
        fEnvioNfe.edtDestCEP.Text:=dm.clientescep.Value;
        fEnvioNfe.edtDestLogradouro.Text:=dm.clientesendereco.Value;
        fEnvioNfe.edtDestNumero.Text:='0';
        fEnvioNfe.edtDestComp.Text:='';
        fEnvioNfe.edtDestBairro.Text:=dm.clientesbairro.Value;
        fEnvioNfe.edtDestCidade.Text:=dm.clientescidade.Value;
        fEnvioNfe.edtDestUF.Text:=dm.clientesestado.Value;

        dm.municipios.close;
        dm.municipios.sql.clear;
        dm.municipios.sql.add('select * from municipios');
        dm.municipios.sql.add('where UF = '+chr(39)+dm.clientesestado.Value+chr(39));
        dm.municipios.sql.add('and Municipio = '+chr(39)+dm.clientescidade.Value+chr(39));
        dm.municipios.open;

        fEnvioNfe.edtDestCodCidade.Text:=dm.municipiosCodigo.Value;

        dm.pedidos.Close;
        dm.pedidos.SQL.Clear;
        dm.pedidos.SQL.Add('select * from pedidos');
        dm.pedidos.SQL.Add('where pedido = '+IntToStr(qrpedidopedido.value));
        dm.pedidos.open;
        fEnvioNfe.lbtipo.Caption:=dm.pedidostipo.Value;
        if dm.pedidostipo.Value='SV' then
           fEnvioNfe.cbPagamento.Text:='1 - � prazo'
        else
           fEnvioNfe.cbPagamento.Text:='2 - Outros';
        fEnvioNfe.edNatureza.Text:=dm.cfopdescricao.Value;
        fEnvioNfe.edModelo.Text:='55';
        fEnvioNfe.edSerie.Text:='1';
        fEnvioNfe.edCfop.Text:=dm.cfopcodigo.Value;
        if copy(dm.pedidostipo.Value,1,1)='E' then
           fEnvioNfe.cbtipo.Text:='0 - Entrada'
        else if copy(dm.pedidostipo.Value,1,1)='S' then
           fEnvioNfe.cbtipo.Text:='1 - Sa�da';

        if not qrpedidonf.IsNull then
           fEnvioNfe.edNota.Text:=qrpedidonf.Value
        else
        begin
          qrult_nf.close;
          qrult_nf.sql.clear;
          qrult_nf.sql.add('select documento from nf');
          qrult_nf.SQL.Add('where (tipo = '+chr(39)+'S'+chr(39)+')');
          qrult_nf.sql.add('order by documento desc');
          qrult_nf.open;
          if qrult_nf.RecordCount>0 then
             fEnvioNfe.edNota.Text:=IntToStr(StrToInt(qrult_nfdocumento.Value)+1)
          else
             fEnvioNfe.edNota.Text:='1';
        end;
        fEnvioNfe.edEmissao.Text:=DateToStr(date);
        fEnvioNfe.cbImpressao.Text:='1 - Retrato';
        if dm.pedidosprazo.Value>0 then
           fEnvioNfe.cbPagamento.Text:='1 - � prazo'
        else
           fEnvioNfe.cbPagamento.Text:='0 - � vista';
        fEnvioNfe.edValorProdutos.Text:=formatfloat('0.00',qrpedidototal.value);
        fEnvioNfe.edValorNota.Text:=formatfloat('0.00',qrpedidototal.value);
        fEnvioNfe.edvlrfatura.Text:=formatfloat('0.00',qrpedidototal.value);
        fEnvioNfe.edvlrliqfatura.Text:=formatfloat('0.00',qrpedidototal.value);
        fEnvioNfe.edvenctofatura.Text:=DateToStr(date);
        if dm.parametrosCRT.Value = '3' then
           begin
              if dm.cfopicms.value>0 then
                 begin
                   qrtotalE.close;
                   qrtotalE.sql.clear;
                   qrtotalE.sql.add('select sum(baseicms) as totalicms from movestoque');
                   qrtotalE.SQL.Add('where (documento = '+chr(39)+IntToStr(qrpedidopedido.value)+chr(39)+')');
                   qrtotalE.SQL.Add('and (TipoMov = '+chr(39)+dm.pedidostipo.Value+chr(39)+')');
                   qrtotalE.open;
                   fEnvioNfe.edBaseIcms.Text:=formatfloat('0.00',qrtotalEtotalicms.value);
                   fEnvioNfe.edValorIcms.Text:=FormatFloat('0.00',(qrtotalEtotalicms.value*dm.cfopicms.value)/100);
                   fEnvioNfe.edAliquota.Text:=FloatToStr(dm.cfopicms.value);
                 end
                 else
                 begin
                   fEnvioNfe.edBaseIcms.Text:='0.00';
                   fEnvioNfe.edValorIcms.Text:='0.00';
                   fEnvioNfe.edAliquota.Text:='0';
                 end;
           end
           else
           begin
             fEnvioNfe.edBaseIcms.Text:='0.00';
             fEnvioNfe.edValorIcms.Text:='0.00';
             fEnvioNfe.edAliquota.Text:='0';
           end;
{        if V_agrupada='' then
           begin
             documento:=IntToStr(qrpedidopedido.value);
             qratualizar.close;
             qratualizar.sql.clear;
             qratualizar.sql.add('update movestoque set');
             qratualizar.sql.add('venda_agrupada = :documento');
             qratualizar.SQL.Add('where (documento = '+chr(39)+IntToStr(qrpedidopedido.value)+chr(39)+')');
             qratualizar.SQL.Add('and (TipoMov = '+chr(39)+dm.pedidostipo.Value+chr(39)+')');
             qratualizar.Params[0].Value := documento;
             qratualizar.ExecSQL;
           end;
        if qrpedidonf.IsNull then
           begin
             fEnvioNfe.btMontar.Enabled:=true;
             fEnvioNfe.e_chavenfe:='';
           end
           else
           begin
             fEnvioNfe.btMontar.Enabled:=false;
             dm.nf.Close;
             dm.nf.SQL.Clear;
             dm.nf.SQL.Add('select * from nf');
             dm.nf.SQL.Add('where (tipo = '+chr(39)+'S'+chr(39)+')');
             dm.nf.SQL.Add('and (documento = '+chr(39)+qrpedidonf.Value+chr(39)+')');
             dm.nf.open;
             fEnvioNfe.e_chavenfe:=dm.nfchavenfe.Value;
           end;
}        fEnvioNfe.lbvenda.Caption:=IntToStr(qrpedidopedido.value);
        fEnvioNfe.showmodal;
      finally
        fEnvioNfe.Release;
        fEnvioNfe:=nil;
        bt1.Click;
      end;
    end;
end;

procedure TFrmPedidos.edclienteExit(Sender: TObject);
begin
  if edcliente.text<>'' then
     begin
       dm.clientes.close;
       dm.clientes.sql.clear;
       dm.clientes.sql.add('select * from clientes');
       dm.clientes.sql.add('where codigo = '+edcliente.Text);
       dm.clientes.open;
       if dm.clientes.RecordCount>0 then
          lbcliente.Caption:=dm.clientesfantasia.Value
       else
          lbcliente.Caption:='';
     end;
  edcliente.Color:=clWindow;
end;

procedure TFrmPedidos.edclienteIKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_f10 then
     begin
       try
         Application.CreateForm(TFrmCadclientes, FrmCadclientes);
         FrmCadclientes.showmodal;
       finally
          FrmCadclientes.Release;
          FrmCadclientes:=nil;
       end;
     end;
end;

procedure TFrmPedidos.btboletoClick(Sender: TObject);
begin
  dm.usuarios.Open;
  dm.usuarios.Locate('nome',sb.Panels[3].Text,[]);
  if dm.usuarioscontasreceber.value='0' then
     application.MessageBox('Acesso n�o Permitido','Aten��o',mb_ok+MB_ICONINFORMATION)
  else
  begin
    try
      Application.CreateForm(TFrmReceber, FrmReceber);
      FrmReceber.showmodal;
    finally
      FrmReceber.Release;
      FrmReceber:=nil;
    end;
  end;
end;

procedure TFrmPedidos.cbvendedorExit(Sender: TObject);
begin
  if cbvendedor.Text<>'' then
     begin
       dm.fornecedores.close;
       dm.fornecedores.sql.clear;
       dm.fornecedores.sql.add('select * from fornecedores');
       dm.fornecedores.sql.add('where apelido = '+chr(39)+cbvendedor.text+chr(39));
       dm.fornecedores.open;
       if dm.fornecedores.RecordCount<1 then
          begin
            showmessage('Vendedor n�o Cadastrado');
            cbvendedor.SetFocus;
          end;
     end
     else
     begin
       application.MessageBox('Escolha um Vendedor(a)','Aten��o',mb_ok+MB_ICONERROR);
       cbvendedor.SetFocus;
     end;
  cbvendedor.Color:=clWindow;
end;

procedure TFrmPedidos.cbvendedorEnter(Sender: TObject);
begin
  cbvendedor.Color:=$0080FFFF;
//  if cbvendedor.Text<>'' then
//     edqtd.SetFocus;
end;

procedure TFrmPedidos.edclienteEnter(Sender: TObject);
begin
  edcliente.Color:=$0080FFFF;
end;

procedure TFrmPedidos.edcodigoEnter(Sender: TObject);
begin
  edcodigo.Color:=$0080FFFF;
end;

procedure TFrmPedidos.edqtdExit(Sender: TObject);
begin
  if (edqtd.Text='') or (edqtd.Text='0') then
     edqtd.Text:='1';
  edqtd.Color:=clWindow;
end;

procedure TFrmPedidos.edunitarioEnter(Sender: TObject);
begin
  edunitario.Color:=$0080FFFF;
end;

procedure TFrmPedidos.eddescRExit(Sender: TObject);
begin
  if eddescR.Text<>''then
     begin
       eddescR.Text:=formatfloat('#,##0.00',StringToFloat(eddescR.Text));
       edtotal.Caption:=formatfloat('#,##0.00',StringToFloat(edsubtotal.Caption)-StringToFloat(eddescR.Text));
       eddescP.Text:=formatfloat('0.00',(StringToFloat(eddescR.Text)/StringToFloat(edsubtotal.Caption))*100);
     end;
end;

procedure TFrmPedidos.eddescPExit(Sender: TObject);
begin
  if eddescP.Text<>'' then
     begin
       subtotal:=StringToFloat(edsubtotal.Caption);
       eddescP.Text:=formatfloat('0.00',StringToFloat(eddescP.Text));
       edtotal.Caption:=formatfloat('#,##0.00',subtotal-(subtotal*StringToFloat(eddescP.Text))/100);
       eddescR.Text:=formatfloat('#,##0.00',StringToFloat(edsubtotal.Caption)-StringToFloat(edtotal.Caption));
     end;
end;

procedure TFrmPedidos.eddescEnter(Sender: TObject);
begin
  eddesc.Color:=$0080FFFF;
end;

procedure TFrmPedidos.eddescExit(Sender: TObject);
begin
  if eddesc.Text<>'' then
     begin
       eddesc.Text:=formatfloat('0.00',StringToFloat(eddesc.Text));
       VlrDesc:=StringToFloat(edunitario.Text)-(StringToFloat(edunitario.Text)*StringToFloat(eddesc.Text))/100;
     end
     else
       eddesc.Text:='0';
  InserirItemP;
  eddesc.Color:=clWindow;
end;

procedure TFrmPedidos.btrelatorioClick(Sender: TObject);
begin
  dm.parametros.Close;
  dm.parametros.Open;
  qrdesc1.Enabled:=false;
  qrdesc2.Enabled:=false;
  atualiza;
  Quickrep1.preview;
end;

procedure TFrmPedidos.BitBtn4Click(Sender: TObject);
begin
   try
     dm.ZConnection1.Connected:=false;
     dm.ZConnection1.Database:='vieir463_gestor_gynbox';
     dm.ZConnection1.HostName:='vieirasistemas.com.br';
     dm.ZConnection1.User:='vieir463_cliente';
     dm.ZConnection1.Password:='AW3se4DR5ft6*#';
     dm.ZConnection1.Connected:=true;
   except
     application.messagebox('Tente Novamente','Aten��o! Sistema Fora do Ar',mb_ok+mb_iconexclamation);
   end;
end;

procedure TFrmPedidos.BitBtn1Click(Sender: TObject);
begin
{  if application.MessageBox('Confirma Opera��o?','Gerar N.F.C.e',mb_yesno+mb_iconquestion+MB_DEFBUTTON2)=id_yes then
     begin
       dm.venda.Close;
       dm.venda.SQL.Clear;
       dm.venda.SQL.Add('select * from venda');
       dm.venda.SQL.Add('where vendaI='+chr(39)+IntToStr(dm.pedidospedido.Value)+chr(39));
       dm.venda.Open;
       if dm.venda.RecordCount<1 then
          begin
            dm.venda.Insert;
            dm.vendavendaI.Value:=IntToStr(dm.pedidospedido.Value);
            dm.vendavendedor.Value:=dm.pedidosvendedor.Value;
            dm.vendadesconto.Value:=dm.pedidosdesconto.Value;
            dm.vendasubtotal.Value:=dm.pedidossubtotal.Value;
            dm.vendaitens.Value:=dm.movpedido.RecordCount;
            dm.vendatotal.Value:=dm.pedidostotal.Value;
            dm.vendafechada.Value:='S';
            dm.vendacliente.Value:=dm.pedidoscliente.Value;
            dm.vendaformapagto.Value:=copy(cbformapgto.Text,1,2);
            dm.vendadata.Value:=dm.pedidosdata.Value;
            dm.vendaOperador.Value:=FrmPrincipal.sb.Panels[3].Text;
            dm.vendalocal.asstring := FrmPrincipal.sb.Panels[7].Text;
            dm.venda.Post;
          end;
       try
         Application.CreateForm(TFrmVenda, FrmVenda);
         FrmVenda.showmodal;
       finally
         FrmVenda.Release;
         FrmVenda:=nil;
       end;
     end;
}
end;

procedure TFrmPedidos.btRefaturarClick(Sender: TObject);
begin
  if lbnumero.Caption='' then
     begin
       showmessage('Consulte um Pedido!!!');
       exit;
     end;

  dm.pedidos.Close;
  dm.pedidos.SQL.Clear;
  dm.pedidos.SQL.Add('select * from pedidos');
  dm.pedidos.SQL.Add('where pedido = '+lbnumero.Caption);
  dm.pedidos.open;
  if not dm.pedidosliberacao.IsNull then
     begin
       if application.messagebox('Deseja Liberar pra Enviar Novamente?','Pedido j� enviado pro Caixa!!!',mb_yesno+mb_iconquestion)=id_yes then
          begin
            P_Liberado:='N';
            FrmPedidos.qratualizar.Close;
            FrmPedidos.qratualizar.SQL.Clear;
            FrmPedidos.qratualizar.SQL.Add('update pedidos set');
            FrmPedidos.qratualizar.SQL.Add('Liberado = :P_Liberado,');
            FrmPedidos.qratualizar.SQL.Add('liberacao = null,');
            FrmPedidos.qratualizar.SQL.Add('n_doc = null');
            FrmPedidos.qratualizar.SQL.Add('where pedido = '+lbnumero.Caption);
            FrmPedidos.qratualizar.Params[0].Value := P_Liberado;
            FrmPedidos.qratualizar.ExecSQL;
          end;
       exit;
     end;

  if application.messagebox('Confirma Libera��o do Pedido?','Aten��o',mb_yesno+mb_iconquestion)=id_yes then
     begin
       dm.parametros.Close;
       dm.parametros.Open;
       check:=true;

       R_hora:=TimeToStr(time);

       FrmPedidos.qratualizar.Close;
       FrmPedidos.qratualizar.SQL.Clear;
       FrmPedidos.qratualizar.SQL.Add('CALL sp_i_rastro(:r_data, :r_hora, :r_operador, :r_rotina, :r_operacao, :r_historico, :r_favorecido, :r_valor, :r_obs)');
       FrmPedidos.qratualizar.Params[0].Value := date;
       FrmPedidos.qratualizar.Params[1].Value := R_hora;
       FrmPedidos.qratualizar.Params[2].Value := FrmPrincipal.sb.Panels[3].Text;
       FrmPedidos.qratualizar.Params[3].Value := 'PEDIDOS';
       FrmPedidos.qratualizar.Params[4].Value := 'B';
       FrmPedidos.qratualizar.Params[5].Value := 'PEDIDO: '+formatfloat('0000',dm.pedidospedido.value);
       FrmPedidos.qratualizar.Params[6].Value := StrToInt(FrmPedidos.edcliente.Text);
       FrmPedidos.qratualizar.Params[7].Value := StringToFloat(FrmPedidos.edtotal.Caption);
       FrmPedidos.qratualizar.Params[8].Value := FrmPedidos.cbvendedor.Text;
       FrmPedidos.qratualizar.ExecSQL;

       dataliberacao:=copy(DateToStr(date),7,4)+'/'+copy(DateToStr(date),4,2)+'/'+copy(DateToStr(date),1,2);
       P_Liberado:='S';
       FrmPedidos.qratualizar.Close;
       FrmPedidos.qratualizar.SQL.Clear;
       FrmPedidos.qratualizar.SQL.Add('update pedidos set');
       FrmPedidos.qratualizar.SQL.Add('liberacao = :dataliberacao,');
       FrmPedidos.qratualizar.SQL.Add('Liberado = :P_Liberado,');
       FrmPedidos.qratualizar.SQL.Add('n_doc = null');
       FrmPedidos.qratualizar.SQL.Add('where pedido = '+lbnumero.Caption);
       FrmPedidos.qratualizar.Params[0].Value := dataliberacao;
       FrmPedidos.qratualizar.Params[1].Value := P_Liberado;
       FrmPedidos.qratualizar.ExecSQL;
     end;
end;

end.
