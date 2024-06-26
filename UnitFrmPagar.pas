unit UnitFrmPagar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Buttons, DBCtrls, Mask, ComCtrls,
  ExtCtrls, DB, DBTables, EditAlinhado, RLReport, RLXLSFilter, RLFilters,
  RLPDFFilter, RLDraftFilter, QRCtrls, QuickRpt, UnitFunDatas, Unit2, jpeg,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFrmPagar = class(TForm)
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    Label31: TLabel;
    edfornecedorI: TEdit;
    lbfornecedorI: TLabel;
    DBGrid1: TDBGrid;
    Label29: TLabel;
    MeDataInicial: TMaskEdit;
    Label5: TLabel;
    MeDataFinal: TMaskEdit;
    medtinicial: TMaskEdit;
    Label25: TLabel;
    Label38: TLabel;
    medtfinal: TMaskEdit;
    cbtipoI: TComboBox;
    Label7: TLabel;
    meinicial: TMaskEdit;
    Label37: TLabel;
    Label39: TLabel;
    mefinal: TMaskEdit;
    btconsultar: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Label35: TLabel;
    lbtotal: TLabel;
    Label30: TLabel;
    lbliquidados: TLabel;
    lbaberto: TLabel;
    Label32: TLabel;
    Label6: TLabel;
    lbvencidos: TLabel;
    lbvencer: TLabel;
    Label28: TLabel;
    GroupBox1: TGroupBox;
    rb1: TRadioButton;
    rb2: TRadioButton;
    rb5: TRadioButton;
    rbgeral: TRadioButton;
    eddoc: TEdit;
    Label41: TLabel;
    edvlrdoc: TEditAlinh;
    Label43: TLabel;
    Label40: TLabel;
    SpeedButton3: TSpeedButton;
    edautorizacao: TEdit;
    Label26: TLabel;
    TabSheet3: TTabSheet;
    Panel3: TPanel;
    btnovo: TBitBtn;
    btgravar: TBitBtn;
    btalterar: TBitBtn;
    btexcluir: TBitBtn;
    btrelatorio: TBitBtn;
    btcancelar: TBitBtn;
    P_dados: TPanel;
    Label3: TLabel;
    edfornecedor: TEdit;
    lbfornecedor: TLabel;
    Label1: TLabel;
    EdDocumento: TEdit;
    Label14: TLabel;
    cbtipo: TComboBox;
    Label10: TLabel;
    rbsim: TRadioButton;
    rbnao: TRadioButton;
    meemissao: TMaskEdit;
    Label2: TLabel;
    Label15: TLabel;
    mevencto: TMaskEdit;
    Label16: TLabel;
    edvalor: TEditAlinh;
    Label13: TLabel;
    EdLocal: TEdit;
    Label17: TLabel;
    EdJurosVlr: TEditAlinh;
    Label18: TLabel;
    EdJurosPerc: TEdit;
    Label20: TLabel;
    EdMultaPerc: TEdit;
    Label21: TLabel;
    eddesc: TEditAlinh;
    Label22: TLabel;
    mepgtoate: TMaskEdit;
    Label9: TLabel;
    cbplconta: TComboBox;
    Label19: TLabel;
    Memo1: TMemo;
    P_Baixar: TPanel;
    Label4: TLabel;
    cbconta: TComboBox;
    Label11: TLabel;
    cbplanoconta: TComboBox;
    Label27: TLabel;
    eddocorigem: TEdit;
    Label8: TLabel;
    mepagto: TMaskEdit;
    Label23: TLabel;
    EdJuros: TEdit;
    Label24: TLabel;
    EdDesconto: TEdit;
    Label12: TLabel;
    edvalorpago: TEdit;
    Label33: TLabel;
    cbplanojuros: TComboBox;
    lbcodigo: TLabel;
    Label42: TLabel;
    BitBtn1: TBitBtn;
    Panel1: TPanel;
    btbaixar: TBitBtn;
    btconfirmar: TBitBtn;
    btprimeiro: TBitBtn;
    btanterior: TBitBtn;
    btproximo: TBitBtn;
    btultimo: TBitBtn;
    Label34: TLabel;
    cbpagtoem: TComboBox;
    lbccger: TLabel;
    RLReport2: TRLReport;
    RLBand6: TRLBand;
    RLDBText11: TRLDBText;
    qrentrada: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText5: TRLDBText;
    RLBand7: TRLBand;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel20: TRLLabel;
    RLBand8: TRLBand;
    RLBand9: TRLBand;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLBand10: TRLBand;
    RLLabel25: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLDBResult4: TRLDBResult;
    RLDBResult5: TRLDBResult;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    qrdescricao: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText1: TRLDBText;
    RLBand2: TRLBand;
    RLLabel2: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel1: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel7: TRLLabel;
    RLBand3: TRLBand;
    RLBand4: TRLBand;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLBand5: TRLBand;
    RLLabel4: TRLLabel;
    RLDBResult3: TRLDBResult;
    QuickRep2: TQuickRep;
    QRBand2: TQRBand;
    QRLabel3: TQRLabel;
    QRShape4: TQRShape;
    QRLabel27: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel28: TQRLabel;
    QRDBText9: TQRDBText;
    QRShape8: TQRShape;
    QRShape5: TQRShape;
    QRShape10: TQRShape;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel6: TQRLabel;
    QRCPF: TQRDBText;
    QRCNPJ: TQRDBText;
    QRLabel7: TQRLabel;
    QRExpr1: TQRExpr;
    QRShape12: TQRShape;
    QRLabel8: TQRLabel;
    QRShape14: TQRShape;
    QRLabel9: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel13: TQRLabel;
    QRShape13: TQRShape;
    QRVALOR: TQRLabel;
    qrpagamentoem: TQRLabel;
    QRShape15: TQRShape;
    QRLabel35: TQRLabel;
    QRLabel34: TQRLabel;
    QRShape16: TQRShape;
    QRLabel2: TQRLabel;
    QREMITENTE: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText11: TQRDBText;
    QRShape6: TQRShape;
    RLSystemInfo4: TRLSystemInfo;
    RLSystemInfo5: TRLSystemInfo;
    RLSystemInfo6: TRLSystemInfo;
    RLLabel6: TRLLabel;
    RLSystemInfo7: TRLSystemInfo;
    RLSystemInfo8: TRLSystemInfo;
    RLSystemInfo9: TRLSystemInfo;
    RLLabel12: TRLLabel;
    Label44: TLabel;
    QRShape1: TQRShape;
    QRLabel14: TQRLabel;
    qratualizar: TZQuery;
    qrrazaoI: TRLDBText;
    RLDBText15: TRLDBText;
    RLLabel19: TRLLabel;
    RLDBText16: TRLDBText;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    qrtitulo: TRLLabel;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLLabel26: TRLLabel;
    RLDBText10: TRLDBText;
    qrtituloI: TRLLabel;
    RLSystemInfo10: TRLSystemInfo;
    RLSystemInfo11: TRLSystemInfo;
    RLSystemInfo12: TRLSystemInfo;
    Label36: TLabel;
    Edbanco: TEdit;
    Label45: TLabel;
    edagencia: TEdit;
    Label46: TLabel;
    EdCC: TEdit;
    Label47: TLabel;
    Edcheque: TEdit;
    edccger: TEdit;
    Label48: TLabel;
    chvale: TCheckBox;
    chVALEI: TCheckBox;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btcancelarClick(Sender: TObject);
    procedure btnovoClick(Sender: TObject);
    procedure btalterarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btgravarClick(Sender: TObject);
    procedure meemissaoExit(Sender: TObject);
    procedure mevenctoExit(Sender: TObject);
    procedure mepgtoateExit(Sender: TObject);
    procedure mepagtoExit(Sender: TObject);
    procedure EdValorExit(Sender: TObject);
    procedure EdJurosVlrExit(Sender: TObject);
    procedure EdJurosPercExit(Sender: TObject);
    procedure EdMultaPercExit(Sender: TObject);
    procedure eddescExit(Sender: TObject);
    procedure EdJurosExit(Sender: TObject);
    procedure EdDescontoExit(Sender: TObject);
    procedure edvalorpagoExit(Sender: TObject);
    procedure btbaixarClick(Sender: TObject);
    procedure btconfirmarClick(Sender: TObject);
    procedure cbcontaExit(Sender: TObject);
    procedure cbplanocontaExit(Sender: TObject);
    procedure btprimeiroClick(Sender: TObject);
    procedure btanteriorClick(Sender: TObject);
    procedure btproximoClick(Sender: TObject);
    procedure btultimoClick(Sender: TObject);
    procedure EdObsBaixaExit(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btexcluirClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MeDataInicialExit(Sender: TObject);
    procedure MeDataFinalExit(Sender: TObject);
    procedure cbplanojurosExit(Sender: TObject);
    procedure CbEmpresaExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure EdDocumentoExit(Sender: TObject);
    procedure edfornecedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edfornecedorExit(Sender: TObject);
    procedure btconsultarClick(Sender: TObject);
    procedure edfornecedorIExit(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cbcontaEnter(Sender: TObject);
    procedure cbplanocontaEnter(Sender: TObject);
    procedure cbplanojurosEnter(Sender: TObject);
    procedure mepagtoEnter(Sender: TObject);
    procedure btrelatorioClick(Sender: TObject);
    procedure cbplcontaExit(Sender: TObject);
    procedure medtinicialExit(Sender: TObject);
    procedure medtfinalExit(Sender: TObject);
    procedure meinicialExit(Sender: TObject);
    procedure mefinalExit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure SpeedButton3Click(Sender: TObject);
    procedure edfornecedorEnter(Sender: TObject);
    procedure EdDocumentoEnter(Sender: TObject);
    procedure cbtipoEnter(Sender: TObject);
    procedure meemissaoEnter(Sender: TObject);
    procedure mevenctoEnter(Sender: TObject);
    procedure edvalorEnter(Sender: TObject);
    procedure EdLocalEnter(Sender: TObject);
    procedure EdJurosVlrEnter(Sender: TObject);
    procedure EdJurosPercEnter(Sender: TObject);
    procedure EdMultaPercEnter(Sender: TObject);
    procedure eddescEnter(Sender: TObject);
    procedure mepgtoateEnter(Sender: TObject);
    procedure cbplcontaEnter(Sender: TObject);
    procedure Memo1Enter(Sender: TObject);
    procedure cbpagtoemEnter(Sender: TObject);
    procedure eddocorigemEnter(Sender: TObject);
    procedure edvalorpagoEnter(Sender: TObject);
    procedure EdDescontoEnter(Sender: TObject);
    procedure EdJurosEnter(Sender: TObject);
    procedure cbtipoExit(Sender: TObject);
    procedure EdLocalExit(Sender: TObject);
    procedure Memo1Exit(Sender: TObject);
    procedure cbpagtoemExit(Sender: TObject);
    procedure eddocorigemExit(Sender: TObject);
    procedure edccgerExit(Sender: TObject);
    procedure EdchequeExit(Sender: TObject);
    procedure MeDataInicialEnter(Sender: TObject);
    procedure MeDataFinalEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPagar: TFrmPagar;
  opcao:integer;
  vencidos,vencer,atraso,juros,
  multa,valoratraso,pago:real;
  busca,R_hora:string;
  ClickedOK:boolean;

implementation

uses Unitdm, UnitFrmCadfornecedores, UnitFrmPrincipal;

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

function BuscaDireita(Busca,Text : string) : integer;
{Pesquisa um caractere � direita da string,
 retornando sua posi��o}
var n,retorno : integer;
begin
retorno := 0;
for n := length(Text) downto 1 do
  begin
  if Copy(Text,n,1) = Busca then
  begin
  retorno := n;
  break;
  end;
  end;
Result := retorno;
end;

function InserePonto(texto: string): string;
var i:integer;s:string;
begin
   i:=1;
   s:='';
   while (i<=length(texto)) do
   begin
      if not (texto[i] in ['.',',']) then
         s:=s+texto[i]
      else if texto[i]=','then
      begin
         texto[i]:='.';
         s:=s+texto[i];
      end;
      Inc(i);
   end;
   InserePonto := s;
end;

procedure LimparConsulta;
begin
      FrmPagar.lbvencidos.Caption:='';
      FrmPagar.lbvencer.Caption:='';
      FrmPagar.lbaberto.Caption:='';
      FrmPagar.lbliquidados.Caption:='';
      FrmPagar.lbtotal.Caption:='';
      FrmPagar.cbtipoI.Text:='';
      FrmPagar.MeDataInicial.Text:='';
      FrmPagar.MeDataFinal.Text:='';
      FrmPagar.medtinicial.Text:='';
      FrmPagar.medtfinal.Text:='';
      FrmPagar.MeInicial.Text:='';
      FrmPagar.MeFinal.Text:='';
      FrmPagar.edfornecedorI.Text:='';
      FrmPagar.lbfornecedorI.Caption:='';
      dm.docpagarGeral.Close;
end;

procedure limparbaixa;
begin
        FrmPagar.cbconta.Text:='';
        FrmPagar.cbplanoconta.Text:='';
        FrmPagar.cbplanojuros.Text:='';
        FrmPagar.mepagto.Text:='';
        FrmPagar.eddocorigem.Text:='';
        FrmPagar.EdJuros.Text:='';
        FrmPagar.EdDesconto.Text:='';
        FrmPagar.edvalorpago.Text:='';
end;

procedure AtualizarVencidas;
begin
        dm.docpagarGeral.Close;
        dm.docpagarGeral.SQL.Clear;
        dm.docpagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,D.tipo,D.localcob,');
        dm.docpagarGeral.SQL.Add('D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
        dm.docpagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
        dm.docpagarGeral.SQL.Add('from fornecedores F, docpagar D');
        dm.docpagarGeral.SQL.Add('where (D.fornecedor=F.codigo) and (pgto is null) and (vencto<CURDATE())');
        dm.docpagarGeral.Open;

        while not dm.docpagarGeral.Eof do
              begin
                atraso:=0;
                atraso:=Int(date-dm.docpagarGeralvencto.value);
                juros:=(dm.docpagarGeralpercjuros.value*dm.docpagarGeralvalor.value)/100/30*atraso;
                multa:=(dm.docpagarGeralvalor.value*dm.docpagarGeralmulta.value)/100;
                valoratraso:=dm.docpagarGeralvalor.Value+juros+multa;

                FrmPagar.qratualizar.Close;
                FrmPagar.qratualizar.SQL.Clear;
                FrmPagar.qratualizar.SQL.Add('update docpagar set');
                FrmPagar.qratualizar.SQL.Add('juros1 = :juros,');
                FrmPagar.qratualizar.SQL.Add('multa1 = :multa,');
                FrmPagar.qratualizar.SQL.Add('atraso = :atraso,');
                FrmPagar.qratualizar.SQL.Add('valoratraso = :valoratraso');
                FrmPagar.qratualizar.sql.add('where cod = '+chr(39)+IntToStr(dm.docpagarGeralcod.Value)+chr(39));
                FrmPagar.qratualizar.Params[0].Value := juros;
                FrmPagar.qratualizar.Params[1].Value := multa;
                FrmPagar.qratualizar.Params[2].Value := atraso;
                FrmPagar.qratualizar.Params[3].Value := valoratraso;
                FrmPagar.qratualizar.ExecSQL;
                dm.docpagarGeral.Next;
              end;
end;

procedure AtualizaraVencer;
begin
        dm.docpagarGeral.Close;
        dm.docpagarGeral.SQL.Clear;
        dm.docpagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,D.tipo,D.localcob,');
        dm.docpagarGeral.SQL.Add('D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
        dm.docpagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
        dm.docpagarGeral.SQL.Add('from fornecedores F, docpagar D');
        dm.docpagarGeral.SQL.Add('where (D.fornecedor=F.codigo) and (pgto is null) and (vencto>=CURDATE())');
        dm.docpagarGeral.Open;

        while not dm.docpagarGeral.Eof do
              begin
                atraso:=0;
                juros:=0;
                multa:=0;
                valoratraso:=dm.docpagarGeralvalor.Value;

                FrmPagar.qratualizar.Close;
                FrmPagar.qratualizar.SQL.Clear;
                FrmPagar.qratualizar.SQL.Add('update docpagar set');
                FrmPagar.qratualizar.SQL.Add('juros1 = :juros,');
                FrmPagar.qratualizar.SQL.Add('multa1 = :multa,');
                FrmPagar.qratualizar.SQL.Add('atraso = :atraso,');
                FrmPagar.qratualizar.SQL.Add('valoratraso = :valoratraso');
                FrmPagar.qratualizar.sql.add('where cod = '+chr(39)+IntToStr(dm.docpagarGeralcod.Value)+chr(39));
                FrmPagar.qratualizar.Params[0].Value := juros;
                FrmPagar.qratualizar.Params[1].Value := multa;
                FrmPagar.qratualizar.Params[2].Value := atraso;
                FrmPagar.qratualizar.Params[3].Value := valoratraso;
                FrmPagar.qratualizar.ExecSQL;
                dm.docpagarGeral.Next;
              end;
end;

procedure EmAberto;
begin
        AtualizaraVencer;
        AtualizarVencidas;
        vencer:=0;
        vencidos:=0;

        dm.Totaldocpagar.Close;
        dm.Totaldocpagar.SQL.Clear;
        dm.Totaldocpagar.SQL.Add('select sum(valor) as total from docpagar');
        dm.Totaldocpagar.SQL.Add('where (pgto is null) and (vencto>=CURDATE())');
        dm.Totaldocpagar.Open;
        if dm.Totaldocpagartotal.Value>0 then
           vencer:=dm.Totaldocpagar['total'];

        dm.Totaldocpagar.Close;
        dm.Totaldocpagar.SQL.Clear;
        dm.Totaldocpagar.SQL.Add('select sum(valor) as total from docpagar');
        dm.Totaldocpagar.SQL.Add('where (pgto is null) and (vencto<CURDATE())');
        dm.Totaldocpagar.open;
        if dm.Totaldocpagartotal.Value>0 then
           vencidos:=dm.Totaldocpagar['total'];

        FrmPagar.lbvencidos.Caption:=formatfloat('#,##0.00',vencidos);
        FrmPagar.lbvencer.Caption:=formatfloat('#,##0.00',vencer);
        FrmPagar.lbaberto.Caption:=formatfloat('#,##0.00',vencer+vencidos);

        dm.docpagarGeral.Close;
        dm.docpagarGeral.SQL.Clear;
        dm.docpagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
        dm.docpagarGeral.SQL.Add('D.tipo,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
        dm.docpagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
        dm.docpagarGeral.SQL.Add('from fornecedores F, docpagar D');
        dm.docpagarGeral.SQL.Add('where (D.fornecedor=F.codigo) and (pgto is null)');
        dm.docpagarGeral.SQL.Add('order by D.vencto');
        dm.docpagarGeral.Open;
end;

procedure vencidas;
begin
        AtualizarVencidas;
        vencidos:=0;
        dm.Totaldocpagar.Close;
        dm.Totaldocpagar.SQL.Clear;
        dm.Totaldocpagar.SQL.Add('select sum(valoratraso) as total from docpagar');
        dm.Totaldocpagar.SQL.Add('where (pgto is null) and (vencto<CURDATE())');
        dm.Totaldocpagar.open;
        if dm.Totaldocpagartotal.Value>0 then
           begin
             vencidos:=dm.Totaldocpagar['total'];
             FrmPagar.lbvencidos.Caption:=formatfloat('#,##0.00',vencidos);
           end
           else
             FrmPagar.lbvencidos.Caption:='0.00';

        dm.docpagarGeral.Close;
        dm.docpagarGeral.SQL.Clear;
        dm.docpagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
        dm.docpagarGeral.SQL.Add('D.tipo,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
        dm.docpagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
        dm.docpagarGeral.SQL.Add('from fornecedores F, docpagar D');
        dm.docpagarGeral.SQL.Add('where (D.fornecedor=F.codigo) and (pgto is null) and (vencto<CURDATE())');
        dm.docpagarGeral.SQL.Add('order by D.vencto');
        dm.docpagarGeral.Open;
end;

procedure avencer;
begin
        AtualizaraVencer;
        vencer:=0;
        dm.Totaldocpagar.Close;
        dm.Totaldocpagar.SQL.Clear;
        dm.Totaldocpagar.SQL.Add('select sum(valor) as total from docpagar');
        dm.Totaldocpagar.SQL.Add('where (pgto is null) and (vencto>=CURDATE())');
        dm.Totaldocpagar.Open;
        if dm.Totaldocpagartotal.Value>0 then
           begin
             vencer:=dm.Totaldocpagar['total'];
             FrmPagar.lbvencer.Caption:=formatfloat('#,##0.00',vencer);
             FrmPagar.lbaberto.Caption:=formatfloat('#,##0.00',vencer);
           end
           else
           begin
             FrmPagar.lbvencer.Caption:='0.00';
             FrmPagar.lbaberto.Caption:='0.00';
           end;

        dm.docpagarGeral.Close;
        dm.docpagarGeral.SQL.Clear;
        dm.docpagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,D.tipo,D.localcob,');
        dm.docpagarGeral.SQL.Add('D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
        dm.docpagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
        dm.docpagarGeral.SQL.Add('from fornecedores F, docpagar D');
        dm.docpagarGeral.SQL.Add('where (D.fornecedor=F.codigo) and (pgto is null) and (vencto>=CURDATE())');
        dm.docpagarGeral.SQL.Add('order by D.vencto');
        dm.docpagarGeral.Open;
end;

procedure Atualiza;
begin
    dm.docpagar.Close;
    dm.docpagar.SQL.Clear;
    dm.docpagar.SQL.Add('select * from docpagar');
    dm.docpagar.SQL.Add('where cod = '+IntToStr(dm.docpagarGeralcod.Value));
    dm.docpagar.Open;
    FrmPagar.lbcodigo.Caption:=IntToStr(dm.docpagarcod.value);
    FrmPagar.edfornecedor.Text:=IntToStr(dm.docpagarfornecedor.Value);
    dm.fornecedores.open;
    if dm.fornecedores.Locate('codigo',dm.docpagarfornecedor.Value,[]) then
       FrmPagar.lbfornecedor.Caption:=dm.fornecedoresnome.value
    else
       FrmPagar.lbfornecedor.Caption:='';
    if dm.docpagarfixa.Value='S' then
       FrmPagar.rbsim.Checked:=true
    else
       FrmPagar.rbnao.Checked:=true;
    if dm.docpagartipo.Value='' then
       FrmPagar.cbtipo.text:=''
    else
    begin
       dm.formapagto.close;
       dm.formapagto.SQL.Clear;
       dm.formapagto.SQL.Add('select * from formapagto');
       dm.formapagto.Open;
       dm.formapagto.Locate('codigo',dm.docpagartipo.Value,[]);
       FrmPagar.cbtipo.text:=dm.formapagtocodigo.Value+' - '+dm.formapagtodescricao.Value;
    end;
//    FrmPagar.cbtipo.text:=dm.docpagartipo.Value;
    FrmPagar.EdDocumento.Text:=dm.docpagardoc.Value;
    if dm.docpagaremissao.value<>StrToDate('30/12/1899') then
       FrmPagar.meemissao.Text:=DateToStr(dm.docpagaremissao.Value)
    else
       FrmPagar.meemissao.Text:='';
    if dm.docpagarvencto.value<>StrToDate('30/12/1899') then
       FrmPagar.mevencto.Text:=DateToStr(dm.docpagarvencto.Value)
    else
       FrmPagar.mevencto.Text:='';
    if not dm.docpagarvalor.IsNull then
       FrmPagar.EdValor.Text:=formatfloat('#,##0.00',dm.docpagarvalor.Value)
    else
       FrmPagar.EdValor.Text:='';
    FrmPagar.EdLocal.Text:=dm.docpagarlocalcob.Value;
    if not dm.docpagarvlrjuros.IsNull then
       FrmPagar.EdJurosVlr.Text:=formatfloat('#,##0.00',dm.docpagarvlrjuros.Value)
    else
       FrmPagar.EdJurosVlr.Text:='';
    if not dm.docpagarpercjuros.IsNull then
       FrmPagar.EdJurosPerc.Text:=formatfloat('0.00',dm.docpagarpercjuros.Value)
    else
       FrmPagar.EdJurosPerc.Text:='';
    if not dm.docpagarmulta.IsNull then
       FrmPagar.EdMultaPerc.Text:=formatfloat('0.00',dm.docpagarmulta.Value)
    else
       FrmPagar.EdMultaPerc.Text:='';
    if not dm.docpagardescontopgto.IsNull then
       FrmPagar.eddesc.Text:=formatfloat('#,##0.00',dm.docpagardescontopgto.Value)
    else
       FrmPagar.eddesc.Text:='';
    if dm.docpagarpgtoI.value<>StrToDate('30/12/1899') then
       FrmPagar.mepgtoate.Text:=DateToStr(dm.docpagarpgtoI.Value)
    else
       FrmPagar.mepgtoate.Text:='';
    FrmPagar.memo1.Text:=dm.docpagarobs.Value;
    dm.planocontas.Open;
    if dm.planocontas.Locate('codigo',dm.docpagarplconta.Value,[]) then
       FrmPagar.cbplconta.Text:=dm.planocontaschave.Value
    else
       FrmPagar.cbplconta.Text:='';
    if not dm.docpagarbanco.IsNull then
       FrmPagar.Edbanco.Text:=IntToStr(dm.docpagarbanco.Value)
    else
       FrmPagar.Edbanco.Text:='';
    FrmPagar.edagencia.Text:=dm.docpagarag.Value;
    if dm.docpagarContaCorrente.Value>0 then
       FrmPagar.EdCC.Text:=IntToStr(dm.docpagarContaCorrente.Value)
    else
       FrmPagar.EdCC.Text:='';
    if not dm.docpagarcheque.IsNull then
       FrmPagar.Edcheque.Text:=IntToStr(dm.docpagarcheque.Value)
    else
       FrmPagar.Edcheque.Text:='';

    FrmPagar.eddocorigem.Text:=dm.docpagardocorigem.Value;
    dm.contascorrente.open;
    if dm.contascorrente.Locate('conta',dm.docpagarconta.Value,[]) then
       FrmPagar.cbconta.Text:=dm.contascorrentedescricao.Value
    else
       FrmPagar.cbconta.Text:='';
    dm.planocontas.Open;
    if dm.planocontas.Locate('codigo',dm.docpagarplanoconta.Value,[]) then
       FrmPagar.cbplanoconta.Text:=dm.planocontaschave.Value
    else
       FrmPagar.cbplanoconta.Text:='';
    if dm.docpagarpgto.value<>StrToDate('30/12/1899') then
       FrmPagar.mepagto.Text:=DateToStr(dm.docpagarpgto.Value)
    else
       FrmPagar.mepagto.Text:='';
    if not dm.docpagarjuros.IsNull then
       FrmPagar.EdJuros.Text:=formatfloat('#,##0.00',dm.docpagarjuros.Value)
    else
       FrmPagar.EdJuros.Text:='';
    if dm.planocontas.Locate('codigo',dm.docpagarplanojuros.Value,[]) then
       FrmPagar.cbplanojuros.Text:=dm.planocontaschave.Value
    else
       FrmPagar.cbplanojuros.Text:='';
    if not dm.docpagardesconto.IsNull then
       FrmPagar.EdDesconto.Text:=formatfloat('#,##0.00',dm.docpagardesconto.Value)
    else
       FrmPagar.EdDesconto.Text:='';
    if not dm.docpagarvalorpago.IsNull then
       FrmPagar.edvalorpago.Text:=formatfloat('#,##0.00',dm.docpagarvalorpago.Value)
    else
       FrmPagar.edvalorpago.Text:='';
    if dm.docpagarpagtoem.Value='0' then
       FrmPagar.cbpagtoem.Text:='0-DINHEIRO'
    else if dm.docpagarpagtoem.Value='1' then
       FrmPagar.cbpagtoem.Text:='1-SAQUE'
    else if dm.docpagarpagtoem.Value='2' then
       FrmPagar.cbpagtoem.Text:='2-CHEQUE'
    else if dm.docpagarpagtoem.Value='3' then
       FrmPagar.cbpagtoem.Text:='3-DOC'
    else if dm.docpagarpagtoem.Value='4' then
       FrmPagar.cbpagtoem.Text:='4-INTERNET'
    else if dm.docpagarpagtoem.Value='5' then
       FrmPagar.cbpagtoem.Text:='5-CART�O CR�DITO'
    else if dm.docpagarpagtoem.Value='6' then
       FrmPagar.cbpagtoem.Text:='6-CART�O D�BITO'
    else if dm.docpagarpagtoem.Value='7' then
       FrmPagar.cbpagtoem.Text:='7-D�BITO AUTOM�TICO'
    else
       FrmPagar.cbpagtoem.Text:='';
    if dm.docpagarvale.Value='S' then
       FrmPagar.chvale.Checked:=true
    else
       FrmPagar.chvale.Checked:=false;
end;

procedure desabilita;
begin
        FrmPagar.btbaixar.enabled:=false;
        FrmPagar.btprimeiro.enabled:=false;
        FrmPagar.btanterior.enabled:=false;
        FrmPagar.btproximo.enabled:=false;
        FrmPagar.btultimo.enabled:=false;
        FrmPagar.btnovo.enabled:=false;
        FrmPagar.btalterar.enabled:=false;
        FrmPagar.btexcluir.enabled:=false;
        FrmPagar.btrelatorio.enabled:=false;
        FrmPagar.btgravar.enabled:=true;
        FrmPagar.btcancelar.Caption:='Cancelar';
        FrmPagar.chvale.Checked:=false;
        FrmPagar.P_dados.enabled:=true;
        FrmPagar.P_Baixar.enabled:=false;
end;

procedure habilita;
begin
        dm.usuarios.Open;
        dm.usuarios.Locate('nome',FrmPrincipal.sb.Panels[3].Text,[]);
{        if dm.usuarioscontaspagar.value='1' then
           begin
                FrmPagar.btgravar.enabled:=false;
                FrmPagar.btbaixar.enabled:=false;
                FrmPagar.btnovo.Enabled:=false;
                FrmPagar.btexcluir.Enabled:=false;
                FrmPagar.btalterar.Enabled:=false;
                FrmPagar.btprimeiro.Enabled:=true;
                FrmPagar.btanterior.Enabled:=true;
                FrmPagar.btproximo.Enabled:=true;
                FrmPagar.btultimo.Enabled:=true;
                FrmPagar.btrelatorio.enabled:=false;
           end
        else if dm.usuarioscontasPagar.value='2' then
           begin
                FrmPagar.btbaixar.enabled:=false;
                FrmPagar.btgravar.enabled:=false;
                FrmPagar.btnovo.Enabled:=true;
                FrmPagar.btexcluir.Enabled:=false;
                FrmPagar.btalterar.Enabled:=false;
                FrmPagar.btprimeiro.Enabled:=true;
                FrmPagar.btanterior.Enabled:=true;
                FrmPagar.btproximo.Enabled:=true;
                FrmPagar.btultimo.Enabled:=true;
                FrmPagar.btrelatorio.enabled:=false;
           end
        else if dm.usuarioscontasPagar.value='3' then
           begin
                FrmPagar.btbaixar.enabled:=false;
                FrmPagar.btgravar.enabled:=false;
                FrmPagar.btnovo.Enabled:=true;
                FrmPagar.btexcluir.Enabled:=false;
                FrmPagar.btalterar.Enabled:=true;
                FrmPagar.btprimeiro.Enabled:=true;
                FrmPagar.btanterior.Enabled:=true;
                FrmPagar.btproximo.Enabled:=true;
                FrmPagar.btultimo.Enabled:=true;
                FrmPagar.btrelatorio.enabled:=false;
           end
        else if dm.usuarioscontasPagar.value='4' then
           begin
                FrmPagar.btbaixar.enabled:=false;
                FrmPagar.btgravar.enabled:=false;
                FrmPagar.btnovo.Enabled:=true;
                FrmPagar.btexcluir.Enabled:=true;
                FrmPagar.btalterar.Enabled:=true;
                FrmPagar.btprimeiro.Enabled:=true;
                FrmPagar.btanterior.Enabled:=true;
                FrmPagar.btproximo.Enabled:=true;
                FrmPagar.btultimo.Enabled:=true;
                FrmPagar.btrelatorio.enabled:=true;
           end
        else if dm.usuarioscontasPagar.value='5' then
           begin
}                FrmPagar.btbaixar.enabled:=true;
                FrmPagar.btgravar.enabled:=false;
                FrmPagar.btnovo.Enabled:=true;
                FrmPagar.btexcluir.Enabled:=true;
                FrmPagar.btalterar.Enabled:=true;
                FrmPagar.btprimeiro.Enabled:=true;
                FrmPagar.btanterior.Enabled:=true;
                FrmPagar.btproximo.Enabled:=true;
                FrmPagar.btultimo.Enabled:=true;
                FrmPagar.btrelatorio.enabled:=true;
{           end
        else if dm.usuarioscontasPagar.value='6' then
           begin
                FrmPagar.btbaixar.enabled:=true;
                FrmPagar.btgravar.enabled:=false;
                FrmPagar.btnovo.Enabled:=true;
                FrmPagar.btexcluir.Enabled:=false;
                FrmPagar.btalterar.Enabled:=false;
                FrmPagar.btprimeiro.Enabled:=true;
                FrmPagar.btanterior.Enabled:=true;
                FrmPagar.btproximo.Enabled:=true;
                FrmPagar.btultimo.Enabled:=true;
                FrmPagar.btrelatorio.enabled:=false;
           end;
}        FrmPagar.btbaixar.Enabled:=true;
        FrmPagar.P_dados.enabled:=false;
        FrmPagar.btcancelar.Caption:='Sair';
end;

procedure limpar;
begin
//        FrmPagar.CbEmpresa.Text:='';
        FrmPagar.edfornecedor.Text:='';
        FrmPagar.lbfornecedor.Caption:='';
        FrmPagar.cbtipo.Text:='';
        FrmPagar.EdDocumento.Text:='';
        FrmPagar.meemissao.Text:='';
        FrmPagar.mevencto.Text:='';
        FrmPagar.EdValor.Text:='';
        FrmPagar.EdLocal.Text:='';
        FrmPagar.EdJurosVlr.Text:='';
        FrmPagar.EdJurosPerc.Text:='';
        FrmPagar.EdMultaPerc.Text:='';
        FrmPagar.eddesc.Text:='';
        FrmPagar.mepgtoate.Text:='';
        FrmPagar.Memo1.Lines.Clear;
        FrmPagar.cbconta.Text:='';
        FrmPagar.cbplanoconta.Text:='';
        FrmPagar.mepagto.Text:='';
        FrmPagar.EdJuros.Text:='';
        FrmPagar.EdDesconto.Text:='';
        FrmPagar.edvalorpago.Text:='';
end;

procedure TFrmPagar.FormKeyPress(Sender: TObject; var Key: Char);
begin
        if Key = CHR(13) Then
           Begin
              perform(WM_NextDlgCtl,0,0);
              Key := CHR(0);
           End;
end;

procedure TFrmPagar.btcancelarClick(Sender: TObject);
begin
  if btnovo.Enabled=false then
     begin
          P_Baixar.Enabled:=false;
          habilita;
          limpar;
     end
     else
          close;
end;

procedure TFrmPagar.btnovoClick(Sender: TObject);
begin
        opcao:=1;
        desabilita;
        limparbaixa;
        edfornecedor.SetFocus;
end;

procedure TFrmPagar.btalterarClick(Sender: TObject);
begin
        opcao:=2;
        desabilita;
        edfornecedor.SetFocus;
end;

procedure TFrmPagar.FormShow(Sender: TObject);
begin
      dm.parametros.Close;
      dm.parametros.Open;
      LimparConsulta;
      habilita;

      dm.formapagto.Close;
      dm.formapagto.SQL.Clear;
      dm.formapagto.SQL.Add('select * from formapagto');
      dm.formapagto.Open;
      cbtipo.Items.Clear;
      cbtipoI.Items.Clear;
      while not dm.formapagto.Eof do
            begin
              cbtipo.Items.Add(dm.formapagtocodigo.Value+' - '+
              dm.formapagtodescricao.Value);
              cbtipoI.Items.Add(dm.formapagtocodigo.Value+' - '+
              dm.formapagtodescricao.Value);
              dm.formapagto.Next;
            end;

      dm.planocontas.Close;
      dm.planocontas.SQL.Clear;
      dm.planocontas.SQL.Add('select * from planocontas');
      dm.planocontas.SQL.Add('order by codigo');
      dm.planocontas.open;
      cbplanoconta.Items.Clear;
      cbplanojuros.Items.Clear;
      cbplconta.Items.Clear;
      while not dm.planocontas.Eof do
            begin
              cbplconta.Items.add(dm.planocontaschave.value);
              cbplanoconta.Items.add(dm.planocontaschave.value);
              cbplanojuros.Items.add(dm.planocontaschave.value);
              dm.planocontas.Next;
            end;

      dm.contascorrente.Close;
      dm.contascorrente.SQL.Clear;
      dm.contascorrente.SQL.Add('select * from contascorrente');
      dm.contascorrente.Open;
      cbconta.Items.Clear;
      while not dm.contascorrente.Eof do
            begin
              cbconta.Items.Add(dm.contascorrentedescricao.Value);
              dm.contascorrente.Next;
            end;
end;

procedure TFrmPagar.btgravarClick(Sender: TObject);
var
D_empresa,D_fornecedor,D_banco,D_cheque:integer;
D_tipo,D_doc,D_Fixa,D_emissao,
D_vencto,D_localcob,D_obs,D_pgtoI,D_plconta,
D_vale,D_ag,D_ContaCorrente:String;
D_valor,D_vlrjuros,D_Percjuros,
D_multa,D_descontopgto:real;
begin
      if (meemissao.Text='  /  /    ') or
         (edfornecedor.Text='') or
         (mevencto.Text='  /  /    ') or
         (edvalor.Text='') then
         begin
           application.MessageBox('� obrigat�rio preencher: FORNECEDOR, EMISS�O, VENCIMENTO E VALOR','Aten��o',mb_Ok+mb_iconerror);
           edfornecedor.SetFocus;
         end
         else
         begin
          if opcao=1 then
             begin
               try
                dm.docpagar.Close;
                dm.docpagar.SQL.Clear;
                dm.docpagar.SQL.Add('select * from docpagar');
                dm.docpagar.SQL.Add('where (doc = '+chr(39)+eddocumento.text+chr(39)+')');
                dm.docpagar.SQL.Add('and (fornecedor = '+edfornecedor.Text+')');
                dm.docpagar.Open;
                dm.docpagar.Insert;
                dm.docpagarfornecedor.Value:=StrToInt(edfornecedor.text);
                if rbsim.Checked then
                   dm.docpagarfixa.Value:='S'
                else
                   dm.docpagarfixa.Value:='N';
                if cbtipo.text<>'' then
                   dm.docpagartipo.Value:=copy(cbtipo.Text,1,2);
                dm.docpagardoc.Value:=EdDocumento.Text;
                if meemissao.Text<>'  /  /    ' then
                   dm.docpagaremissao.Value:=StrToDate(meemissao.text);
                if mevencto.Text<>'  /  /    ' then
                   dm.docpagarvencto.Value:=StrToDate(mevencto.text);
                if edvalor.Text<>'' then
                   dm.docpagarvalor.Value:=StringToFloat(edvalor.text);
                dm.docpagarlocalcob.Value:=EdLocal.Text;
                if EdJurosVlr.Text<>'' then
                   dm.docpagarvlrjuros.Value:=StringToFloat(EdJurosVlr.text);
                if EdJurosPerc.Text<>'' then
                   dm.docpagarpercjuros.Value:=StrToFloat(EdJurosPerc.text);
                if EdMultaPerc.Text<>'' then
                   dm.docpagarmulta.Value:=StrToFloat(EdMultaPerc.text);
                if eddesc.Text<>'' then
                   dm.docpagardescontopgto.Value:=StringToFloat(eddesc.text);
                if mepgtoate.Text<>'  /  /    ' then
                   dm.docpagarpgtoI.Value:=StrToDate(mepgtoate.text);
                if cbplconta.Text<>'' then
                   begin
                     dm.planocontas.Open;
                     if dm.planocontas.Locate('chave',cbplconta.Text,[]) then
                        dm.docpagarplconta.Value:=dm.planocontascodigo.value;
                   end;
                if edbanco.Text<>'' then
                   dm.docpagarbanco.Value:=StrToInt(Edbanco.text);
                dm.docpagarag.Value:=edagencia.Text;
                if EdCC.Text<>'' then
                   dm.docpagarContaCorrente.Value:=StrToInt(EdCC.Text);
                if edcheque.Text<>'' then
                   dm.docpagarcheque.Value:=StrToInt(Edcheque.text);
                dm.docpagarobs.Value:=memo1.Text;
                dm.docpagarOperador.Value:=FrmPrincipal.sb.Panels[3].Text;
                dm.docpagarData_Operacao.Value:=date;
                dm.docpagarHora_Operacao.Value:=TimeToStr(time);
                if chvale.Checked=true then
                   dm.docpagarvale.Value:='S'
                else
                   dm.docpagarvale.Value:='N';
                dm.docpagar.Post;
                dm.docpagar.Close;
                dm.docpagar.Open;
                lbcodigo.Caption:=IntToStr(dm.docpagarcod.value);

                R_hora:=TimeToStr(time);
                dm.rastro.Close;
                dm.rastro.SQL.Clear;
                dm.rastro.SQL.Add('select * from rastro');
                dm.rastro.SQL.Add('where (data = '+chr(39)+
                copy(DateToStr(date),7,4)+'/'+copy(DateToStr(date),4,2)+'/'+
                copy(DateToStr(date),1,2)+chr(39)+')');
                dm.rastro.SQL.Add('and (operador='+chr(39)+FrmPrincipal.sb.Panels[3].Text+chr(39)+')');
                dm.rastro.SQL.Add('and (hora='+chr(39)+R_hora+chr(39)+')');
                dm.rastro.Open;
                dm.rastro.Insert;
                dm.rastrodata.Value:=date;
                dm.rastrohora.Value:=R_hora;
                dm.rastrooperador.Value:=FrmPrincipal.sb.Panels[3].Text;
                dm.rastrorotina.Value:='DOC. PAGAR';
                dm.rastrooperacao.Value:='I';
                dm.rastrohistorico.Value:=EdDocumento.Text+' '+
                lbfornecedor.Caption;
                dm.rastrofavorecido.Value:=StrToInt(edfornecedor.Text);
                dm.rastrovalor.Value:=StringToFloat(edvalor.Text);
                dm.rastro.Post;
                dm.rastro.Close;
               except
                application.MessageBox('Erro ao Inserir o Registro','Aten��o',mb_Ok+mb_iconerror);
                btcancelar.Click;
               end;
             end
          else if opcao=2 then
             begin
               try
                 D_fornecedor:=0;
                 D_tipo:='';
                 D_doc:='';
                 D_Fixa:='';
                 D_emissao:='';
                 D_vencto:='';
                 D_localcob:='';
                 D_obs:='';
                 D_pgtoI:='';
                 D_plconta:='';
                 D_valor:=0;
                 D_vlrjuros:=0;
                 D_Percjuros:=0;
                 D_multa:=0;
                 D_descontopgto:=0;
                 D_banco:=0;
                 D_cheque:=0;

{                 if cbempresa.Text<>'' then
                    begin
                      dm.Empresas.Open;
                      dm.Empresas.Locate('nome',cbempresa.Text,[]);
                      D_empresa:=dm.Empresascod.Value;
                    end;
}                 D_fornecedor:=StrToInt(edfornecedor.text);
                 if rbsim.Checked then
                    D_fixa:='S'
                 else
                    D_fixa:='N';
                 if cbtipo.text<>'' then
                    D_tipo:=copy(cbtipo.Text,1,2);
                 D_doc:=EdDocumento.Text;
                 if meemissao.Text<>'  /  /    ' then
                    D_emissao:=copy(meemissao.text,7,4)+'/'+
                    copy(meemissao.text,4,2)+'/'+copy(meemissao.text,1,2);
                 if mevencto.Text<>'  /  /    ' then
                    D_vencto:=copy(mevencto.text,7,4)+'/'+
                    copy(mevencto.text,4,2)+'/'+copy(mevencto.text,1,2);
                 if edvalor.Text<>'' then
                    D_valor:=StringToFloat(edvalor.text);
                 D_localcob:=EdLocal.Text;
                 if EdJurosVlr.Text<>'' then
                    D_vlrjuros:=StringToFloat(EdJurosVlr.text);
                 if EdJurosPerc.Text<>'' then
                    D_percjuros:=StrToFloat(EdJurosPerc.text);
                 if EdMultaPerc.Text<>'' then
                    D_multa:=StrToFloat(EdMultaPerc.text);
                 if eddesc.Text<>'' then
                    D_descontopgto:=StringToFloat(eddesc.text);
                 if mepgtoate.Text<>'  /  /    ' then
                    D_pgtoI:=copy(mepgtoate.text,7,4)+'/'+
                    copy(mepgtoate.text,4,2)+'/'+copy(mepgtoate.text,1,2)
                 else
                    D_pgtoI:='0000/00/00';
                 D_obs:=memo1.Text;
                if cbplconta.Text<>'' then
                   begin
                     dm.planocontas.Open;
                     if dm.planocontas.Locate('chave',cbplconta.Text,[]) then
                        D_plconta:=dm.planocontascodigo.value;
                   end;
                 if edbanco.Text<>'' then
                    D_banco:=StrToInt(Edbanco.text);
                 D_ag:=edagencia.Text;
                 D_ContaCorrente:=EdCC.Text;
                 if edcheque.Text<>'' then
                    D_cheque:=StrToInt(Edcheque.text);
                if chvale.Checked=true then
                   D_vale:='S'
                else
                   D_vale:='N';

                 R_hora:=TimeToStr(time);
                 dm.rastro.Close;
                 dm.rastro.SQL.Clear;
                 dm.rastro.SQL.Add('select * from rastro');
                 dm.rastro.SQL.Add('where (data = '+chr(39)+
                 copy(DateToStr(date),7,4)+'/'+copy(DateToStr(date),4,2)+'/'+
                 copy(DateToStr(date),1,2)+chr(39)+')');
                 dm.rastro.SQL.Add('and (operador='+chr(39)+FrmPrincipal.sb.Panels[3].Text+chr(39)+')');
                 dm.rastro.SQL.Add('and (hora='+chr(39)+R_hora+chr(39)+')');
                 dm.rastro.Open;
                 dm.rastro.Insert;
                 dm.rastrodata.Value:=date;
                 dm.rastrohora.Value:=R_hora;
                 dm.rastrooperador.Value:=FrmPrincipal.sb.Panels[3].Text;
                 dm.rastrorotina.Value:='DOC. PAGAR';
                 dm.rastrooperacao.Value:='A';
                 dm.rastrohistorico.Value:=EdDocumento.Text+' '+
                 lbfornecedor.Caption;
                 dm.rastrofavorecido.Value:=StrToInt(edfornecedor.Text);
                 dm.rastrovalor.Value:=StringToFloat(edvalor.Text);
                 dm.rastro.Post;
                 dm.rastro.Close;

                 qratualizar.close;
                 qratualizar.sql.clear;
                 qratualizar.sql.add('update docpagar set');
//                 qratualizar.sql.add('empresa = :D_empresa,');
                 qratualizar.sql.add('fornecedor = :D_fornecedor,');
                 qratualizar.sql.add('tipo = :D_tipo,');
                 qratualizar.sql.add('doc = :D_doc,');
                 qratualizar.sql.add('Fixa = :D_Fixa,');
                 qratualizar.sql.add('emissao = :D_emissao,');
                 qratualizar.sql.add('vencto = :D_vencto,');
                 qratualizar.sql.add('localcob = :D_localcob,');
                 qratualizar.sql.add('obs = :D_obs,');
                 qratualizar.sql.add('pgtoI = :D_pgtoI,');
                 qratualizar.sql.add('valor = :D_valor,');
                 qratualizar.sql.add('vlrjuros = :D_vlrjuros,');
                 qratualizar.sql.add('Percjuros = :D_Percjuros,');
                 qratualizar.sql.add('multa = :D_multa,');
                 qratualizar.sql.add('descontopgto = :descontopgto,');
                 qratualizar.sql.add('plconta = :D_plconta,');
                 qratualizar.sql.add('banco = :D_banco,');
                 qratualizar.sql.add('ag = :D_ag,');
                 qratualizar.sql.add('ContaCorrente = :D_ContaCorrente,');
                 qratualizar.sql.add('cheque = :D_cheque,');
                 qratualizar.sql.add('vale = :D_vale');
                 qratualizar.SQL.Add('where cod ='+lbcodigo.Caption);
                 qratualizar.Params[0].Value := D_fornecedor;
                 qratualizar.Params[1].Value := D_tipo;
                 qratualizar.Params[2].Value := D_doc;
                 qratualizar.Params[3].Value := D_Fixa;
                 qratualizar.Params[4].Value := D_emissao;
                 qratualizar.Params[5].Value := D_vencto;
                 qratualizar.Params[6].Value := D_localcob;
                 qratualizar.Params[7].Value := D_obs;
                 qratualizar.Params[8].Value := D_pgtoI;
                 qratualizar.Params[9].Value := D_valor;
                 qratualizar.Params[10].Value := D_vlrjuros;
                 qratualizar.Params[11].Value := D_Percjuros;
                 qratualizar.Params[12].Value := D_multa;
                 qratualizar.Params[13].Value := D_descontopgto;
                 qratualizar.Params[14].Value := D_plconta;
                 qratualizar.Params[15].Value := D_banco;
                 qratualizar.Params[16].Value := D_ag;
                 qratualizar.Params[17].Value := D_ContaCorrente;
                 qratualizar.Params[18].Value := D_cheque;
                 qratualizar.Params[19].Value := D_vale;
                 qratualizar.ExecSQL;
               except
                 application.MessageBox('Erro ao Atualizar Registro!','Aten��o',mb_Ok+mb_iconerror);
                 btcancelar.Click;
               end;
             end;
          habilita;
          btnovo.SetFocus;
         end;
end;

procedure TFrmPagar.meemissaoExit(Sender: TObject);
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
  meemissao.Color:=clWindow;
end;

procedure TFrmPagar.mevenctoExit(Sender: TObject);
begin
        if mevencto.text<>'  /  /    ' then
        begin
        Try
           StrToDate(mevencto.Text) ;
           If StrToDate(meemissao.Text) > StrToDate(mevencto.Text) then
              Begin
                 MessageBox(Handle, 'Data de Vencimento inferior � Data de Emiss�o!!', 'Aten��o', mb_IconWarning or mb_Ok);
                 mevencto.SetFocus;
              End;
        Except
        begin
           application.MessageBox('Data Inv�lida!','Aten��o',mb_Ok+mb_iconerror);
           mevencto.setfocus;
        end;
        end;
        end;
  mevencto.Color:=clWindow;
end;

procedure TFrmPagar.mepgtoateExit(Sender: TObject);
begin
        if mepgtoate.text<>'  /  /    ' then
        Try
           StrToDate(mepgtoate.Text) ;
        Except
        begin
           application.MessageBox('Data Inv�lida!','Aten��o',mb_Ok+mb_iconerror);
           mepgtoate.setfocus;
        end;
        end;
  mepgtoate.Color:=clWindow;
end;

procedure TFrmPagar.mepagtoExit(Sender: TObject);
begin
        if mepagto.text<>'  /  /    ' then
        Try
           StrToDate(mepagto.Text) ;
        Except
        begin
           application.MessageBox('Data Inv�lida!','Aten��o',mb_Ok+mb_iconerror);
           mepagto.setfocus;
        end;
        end;
  mepagto.Color:=clWindow;
end;

procedure TFrmPagar.EdValorExit(Sender: TObject);
begin
        if edvalor.Text<>'' then
           edvalor.Text:=formatfloat('#,##0.00',StringToFloat(edvalor.text));
  edvalor.Color:=clWindow;
end;

procedure TFrmPagar.EdJurosVlrExit(Sender: TObject);
begin
        if EdJurosVlr.Text<>'' then
           EdJurosVlr.Text:=formatfloat('#,##0.00',StringToFloat(EdJurosVlr.text));
  EdJurosVlr.Color:=clWindow;
end;

procedure TFrmPagar.EdJurosPercExit(Sender: TObject);
begin
        if EdJurosPerc.Text<>'' then
           EdJurosPerc.Text:=formatfloat('0.00',StringToFloat(EdJurosPerc.text));
  EdJurosPerc.Color:=clWindow;
end;

procedure TFrmPagar.EdMultaPercExit(Sender: TObject);
begin
        if EdMultaPerc.Text<>'' then
           EdMultaPerc.Text:=formatfloat('0.00',StringToFloat(EdMultaPerc.text));
  EdMultaPerc.Color:=clWindow;
end;

procedure TFrmPagar.eddescExit(Sender: TObject);
begin
        if eddesc.Text<>'' then
           eddesc.Text:=formatfloat('#,##0.00',StringToFloat(eddesc.text));
  eddesc.Color:=clWindow;
end;

procedure TFrmPagar.EdJurosExit(Sender: TObject);
begin
        if EdJuros.Text<>'' then
           begin
             EdJuros.Text:=formatfloat('#,##0.00',StringToFloat(EdJuros.text));
             edvalorpago.Text:=formatfloat('#,##0.00',StringToFloat(edvalorpago.text)+StringToFloat(EdJuros.text));
           end;
  EdJuros.Color:=clWindow;
end;

procedure TFrmPagar.EdDescontoExit(Sender: TObject);
begin
        if EdDesconto.Text<>'' then
           begin
             EdDesconto.Text:=formatfloat('#,##0.00',StringToFloat(EdDesconto.text));
             edvalorpago.Text:=formatfloat('#,##0.00',StringToFloat(edvalorpago.text)-StringToFloat(EdDesconto.text));
           end;
  EdDesconto.Color:=clWindow;
end;

procedure TFrmPagar.edvalorpagoExit(Sender: TObject);
begin
        if edvalorpago.Text<>'' then
           edvalorpago.Text:=formatfloat('#,##0.00',StringToFloat(edvalorpago.text));
  edvalorpago.Color:=clWindow;
end;

procedure TFrmPagar.btbaixarClick(Sender: TObject);
var
texto:string;
begin
//  if dm.docpagarGeralAutorizado.Value='S' then
//     begin
        if ((edvalorpago.Text='') or (edvalorpago.Text='0,00')) and (mepagto.text='  /  /    ') then
           begin
             limparbaixa;
             opcao:=3;
             edvalorpago.Text:=formatfloat('#,##0.00',dm.docpagarvalor.value);
             cbplanoconta.Text:=cbplconta.Text;
             P_Baixar.Enabled:=true;
             btconfirmar.Enabled:=true;
             btbaixar.Enabled:=false;
             dm.planocontas.Open;
             cbplanoconta.Text:='';
             cbconta.SetFocus;
           end
           else
           begin
             if Application.Messagebox ('Deseja cancelar baixa?','T�tulo J� Baixado', Mb_YesNo+mb_iconquestion) = id_yes then
                begin
                   busca := '';
                   ClickedOK := InputQuery('Digite Motivo do Cancelamento', 'Cancelamento da Baixa', busca);
                   R_hora:=TimeToStr(time);
                   dm.rastro.Close;
                   dm.rastro.SQL.Clear;
                   dm.rastro.SQL.Add('select * from rastro');
                   dm.rastro.SQL.Add('where (data = '+chr(39)+
                   copy(DateToStr(date),7,4)+'/'+copy(DateToStr(date),4,2)+'/'+
                   copy(DateToStr(date),1,2)+chr(39)+')');
                   dm.rastro.SQL.Add('and (operador='+chr(39)+FrmPrincipal.sb.Panels[3].Text+chr(39)+')');
                   dm.rastro.SQL.Add('and (hora='+chr(39)+R_hora+chr(39)+')');
                   dm.rastro.Open;
                   dm.rastro.Insert;
                   dm.rastrodata.Value:=date;
                   dm.rastrohora.Value:=R_hora;
                   dm.rastrooperador.Value:=FrmPrincipal.sb.Panels[3].Text;
                   dm.rastrorotina.Value:='DOC. PAGAR';
                   dm.rastrooperacao.Value:='C';
                   dm.rastrohistorico.Value:=EdDocumento.Text+' '+
                   lbfornecedor.Caption;
                   dm.rastrofavorecido.Value:=StrToInt(edfornecedor.Text);
                   dm.rastrovalor.Value:=StringToFloat(edvalorpago.Text);
                   dm.rastro.Post;
                   dm.rastro.Close;

                   qratualizar.close;
                   qratualizar.sql.clear;
                   qratualizar.sql.add('update docpagar set');
                   qratualizar.sql.add('conta = null,');
                   qratualizar.sql.add('centrocusto = null,');
                   qratualizar.sql.add('planoconta = null,');
                   qratualizar.sql.add('pgto = null,');
                   qratualizar.sql.add('juros = null,');
                   qratualizar.sql.add('planojuros = null,');
                   qratualizar.sql.add('desconto = null,');
                   qratualizar.sql.add('valorpago = null,');
                   qratualizar.sql.add('obsI = null,');
                   qratualizar.sql.add('docorigem = null');
                   qratualizar.SQL.Add('where cod ='+lbcodigo.Caption);
                   qratualizar.ExecSQL;

                   //Financeiro
                   dm.financeiro.Close;
                   dm.financeiro.SQL.Clear;
                   dm.financeiro.SQL.Add('select * from financeiro');
                   dm.financeiro.SQL.Add('where data = '+chr(39)+
                   copy(mepagto.text,7,4)+'/'+copy(mepagto.text,4,2)+'/'+
                   copy(mepagto.text,1,2)+chr(39));
                   dm.financeiro.open;
                   dm.financeiro.insert;
                   if cbconta.Text<>'' then
                      begin
                        if dm.contascorrente.Locate('descricao',cbconta.text,[]) then
                           dm.financeiroconta.Value:=dm.contascorrenteconta.value;
                      end;
                   dm.financeirodata.Value:=StrToDate(mepagto.text);
                   dm.financeirodoc.Value:=EdDocumento.Text;
                   dm.financeirodocorigem.Value:=eddocorigem.text;
                   dm.financeirohistorico.Value:='Vlr ref cancel. da baixa '+lbfornecedor.Caption;
                   if cbplanoconta.Text<>'' then
                      begin
                           dm.planocontas.Open;
                           if dm.planocontas.Locate('chave',cbplanoconta.Text,[]) then
                              dm.financeiroplanoconta.Value:=dm.planocontascodigo.value;
                      end;
                   dm.financeirotipo.value:='E';
                   dm.financeirocredito.Value:=StringToFloat(edvalorpago.Text);
                   dm.financeiro.Post;

                   limparbaixa;
                   btconsultar.Click;
                   dm.docpagarGeral.Locate('doc',eddocumento.Text,[]);
                end;
           end;
end;

procedure TFrmPagar.btconfirmarClick(Sender: TObject);
var
tam,tamI:integer;
D_conta,D_centrocusto,D_planoconta,
D_pgto,D_planojuros,D_obsI,D_docorigem,
D_pagtoem,n:String;
D_juros,D_desconto,D_valorpago:real;
begin
  dm.parametros.Close;
  dm.parametros.Open;
  if Application.Messagebox ('Confirma Baixa?','Aten��o', Mb_YesNo+mb_iconquestion) = id_yes then
     begin
        if opcao=3 then
           begin
             D_conta:='';
             D_centrocusto:='';
             D_planoconta:='';
             D_pgto:='';
             D_planojuros:='';
             D_docorigem:='';
             D_juros:=0;
             D_desconto:=0;
             D_valorpago:=0;

             //Baixa do Documento
             if cbconta.Text<>'' then
                begin
                  if dm.contascorrente.Locate('descricao',cbconta.text,[]) then
                     D_conta:=dm.contascorrenteconta.value;
                end;
             if cbplanoconta.Text<>'' then
                begin
                  dm.planocontas.Open;
                  if dm.planocontas.Locate('chave',cbplanoconta.Text,[]) then
                     D_planoconta:=dm.planocontascodigo.value;
                end;
             D_obsI:=memo1.Text;
             if mepagto.Text<>'  /  /    ' then
                D_pgto:=copy(mepagto.text,7,4)+'/'+
                copy(mepagto.text,4,2)+'/'+copy(mepagto.text,1,2);
             if EdJuros.Text<>'' then
                D_juros:=StringToFloat(EdJuros.text);
             if cbplanojuros.Text<>'' then
                begin
                  dm.planocontas.Open;
                  if dm.planocontas.Locate('chave',cbplanojuros.Text,[]) then
                     D_planojuros:=dm.planocontascodigo.value;
                end;
             if EdDesconto.Text<>'' then
                D_desconto:=StringToFloat(EdDesconto.text);
             if edvalorpago.Text<>'' then
                D_valorpago:=StringToFloat(edvalorpago.text);
             D_docorigem:=eddocorigem.Text;
             D_pagtoem:=copy(cbpagtoem.Text,1,1);

             R_hora:=TimeToStr(time);
             dm.rastro.Close;
             dm.rastro.SQL.Clear;
             dm.rastro.SQL.Add('select * from rastro');
             dm.rastro.SQL.Add('where (data = '+chr(39)+
             copy(DateToStr(date),7,4)+'/'+copy(DateToStr(date),4,2)+'/'+
             copy(DateToStr(date),1,2)+chr(39)+')');
             dm.rastro.SQL.Add('and (operador='+chr(39)+FrmPrincipal.sb.Panels[3].Text+chr(39)+')');
             dm.rastro.SQL.Add('and (hora='+chr(39)+R_hora+chr(39)+')');
             dm.rastro.Open;
             dm.rastro.Insert;
             dm.rastrodata.Value:=date;
             dm.rastrohora.Value:=R_hora;
             dm.rastrooperador.Value:=FrmPrincipal.sb.Panels[3].Text;
             dm.rastrorotina.Value:='DOC. PAGAR';
             dm.rastrooperacao.Value:='B';
             dm.rastrohistorico.Value:=EdDocumento.Text+' '+
             lbfornecedor.Caption;
             dm.rastrofavorecido.Value:=StrToInt(edfornecedor.Text);
             dm.rastrovalor.Value:=StringToFloat(edvalorpago.Text);
             dm.rastro.Post;
             dm.rastro.Close;

             qratualizar.close;
             qratualizar.sql.clear;
             qratualizar.sql.add('update docpagar set');
             qratualizar.sql.add('conta = :D_conta,');
             qratualizar.sql.add('centrocusto = :D_centrocusto,');
             qratualizar.sql.add('planoconta = :D_planoconta,');
             qratualizar.sql.add('pgto = :D_pgto,');
             qratualizar.sql.add('juros = :D_juros,');
             qratualizar.sql.add('planojuros = :D_planojuros,');
             qratualizar.sql.add('desconto = :desconto,');
             qratualizar.sql.add('valorpago = :D_valorpago,');
             qratualizar.sql.add('obs = :D_obsI,');
             qratualizar.sql.add('docorigem = :D_docorigem,');
             qratualizar.sql.add('pagtoem = :D_pagtoem');
             qratualizar.SQL.Add('where cod ='+lbcodigo.Caption);
             qratualizar.Params[0].Value := D_conta;
             qratualizar.Params[1].Value := D_centrocusto;
             qratualizar.Params[2].Value := D_planoconta;
             qratualizar.Params[3].Value := D_pgto;
             qratualizar.Params[4].Value := D_juros;
             qratualizar.Params[5].Value := D_planojuros;
             qratualizar.Params[6].Value := D_desconto;
             qratualizar.Params[7].Value := D_valorpago;
             qratualizar.Params[8].Value := D_obsI;
             qratualizar.Params[9].Value := D_docorigem;
             qratualizar.Params[10].Value := D_pagtoem;
             qratualizar.ExecSQL;

             //Financeiro
             dm.financeiro.Close;
             dm.financeiro.SQL.Clear;
             dm.financeiro.SQL.Add('select * from financeiro');
             dm.financeiro.SQL.Add('where data = '+chr(39)+
             copy(mepagto.text,7,4)+'/'+copy(mepagto.text,4,2)+'/'+
             copy(mepagto.text,1,2)+chr(39));
             dm.financeiro.open;
             dm.financeiro.insert;
             dm.financeiroconta.Value:=D_conta;
             dm.financeirodata.Value:=StrToDate(mepagto.text);
             dm.financeirodoc.Value:=EdDocumento.Text;
             dm.financeirodocorigem.Value:=eddocorigem.text;
             dm.fornecedores.close;
             dm.fornecedores.sql.clear;
             dm.fornecedores.sql.add('select * from fornecedores');
             dm.fornecedores.sql.add('where codigo = '+edfornecedor.text);
             dm.fornecedores.open;
             dm.financeirohistorico.Value:='Vlr ref pagto '+dm.fornecedoresnome.Value;
             if cbplanoconta.Text<>'' then
                begin
                     dm.planocontas.Open;
                     if dm.planocontas.Locate('chave',cbplanoconta.Text,[]) then
                        dm.financeiroplanoconta.Value:=dm.planocontascodigo.value;
                end;
             dm.financeirotipo.value:='D';
             if (edvalorpago.Text<>'') and (edjuros.Text='') then
                dm.financeirodebito.Value:=StringToFloat(edvalorpago.Text)
             else if (edvalorpago.Text<>'') and (edjuros.Text<>'') then
                dm.financeirodebito.Value:=StringToFloat(edvalorpago.Text)-StringToFloat(edjuros.Text);
             dm.financeiroOperador.Value:=FrmPrincipal.sb.Panels[3].Text;
             dm.financeiroData_Operacao.Value:=date;
             dm.financeiroHora_Operacao.Value:=TimeToStr(time);
             dm.financeiro.Post;

             if (cbplanojuros.Text<>'') and (edjuros.Text<>'') then
                begin
                   dm.financeiro.insert;
                   dm.financeiroconta.Value:=D_conta;
                   dm.financeirodata.Value:=StrToDate(mepagto.text);
                   dm.financeirodoc.Value:=EdDocumento.Text;
                   dm.financeirodocorigem.Value:=eddocorigem.text;
                   dm.financeirohistorico.Value:='Vlr ref pagto juros '+lbfornecedor.Caption;
                   if cbplanojuros.Text<>'' then
                      begin
                           dm.planocontas.Open;
                           if dm.planocontas.Locate('chave',cbplanojuros.Text,[]) then
                              dm.financeiroplanoconta.Value:=dm.planocontascodigo.value;
                      end;
                   dm.financeirotipo.value:='D';
                   if EdJuros.Text<>'' then
                      dm.financeirodebito.Value:=StringToFloat(EdJuros.Text);
                   dm.financeiroOperador.Value:=FrmPrincipal.sb.Panels[3].Text;
                   dm.financeiroData_Operacao.Value:=date;
                   dm.financeiroHora_Operacao.Value:=TimeToStr(time);
                   dm.financeiro.Post;
                end;

             if StringToFloat(edvalorpago.text)<StringToFloat(edvalor.text) then
                begin
                  if Application.Messagebox ('Confirma Lan�amento?','Pagamento por Conta', Mb_YesNo+mb_iconquestion) = id_yes then
                     begin
                        Try
                          dm.docpagar.Close;
                          dm.docpagar.SQL.Clear;
                          dm.docpagar.SQL.Add('select * from docpagar');
                          dm.docpagar.SQL.Add('where (fornecedor = '+edfornecedor.Text+')');
                          dm.docpagar.SQL.Add('and (doc = '+chr(39)+EdDocumento.Text+chr(39)+')');
                          dm.docpagar.Open;
                          dm.docpagar.Insert;
                          if edfornecedor.Text<>'' then
                             dm.docpagarfornecedor.Value:=StrToInt(edfornecedor.text);
                          if cbtipo.text<>'' then
                             dm.docpagartipo.Value:=copy(cbtipo.Text,1,2);

                          tam:=length(EdDocumento.Text);
                          if BuscaDireita('/',EdDocumento.text)>0 then
                             begin
                               tamI:=tam-1;
                               n:=formatfloat('00',StrToInt(copy(EdDocumento.text,tamI,2))+1);
                               dm.docpagardoc.value:=copy(EdDocumento.text,1,BuscaDireita('/',EdDocumento.text)-1)+
                               '/'+n;
                             end
                             else
                               dm.docpagardoc.value:=EdDocumento.Text+'/01';
                          EdDocumento.Text:=dm.docpagardoc.value;
                          if meemissao.Text<>'  /  /    ' then
                             dm.docpagaremissao.Value:=StrToDate(mepagto.text);
                          if mevencto.Text<>'  /  /    ' then
                             dm.docpagarvencto.Value:=StrToDate(mevencto.text);
                          if edvalor.Text<>'' then
                             dm.docpagarvalor.Value:=StringToFloat(edvalor.text)-StringToFloat(edvalorpago.text);
                          if EdJurosVlr.Text<>'' then
                             dm.docpagarvlrjuros.Value:=StringToFloat(EdJurosVlr.text);
                          if EdJurosPerc.Text<>'' then
                             dm.docpagarpercjuros.Value:=StrToFloat(EdJurosPerc.text);
                          if EdMultaPerc.Text<>'' then
                             dm.docpagarmulta.Value:=StrToFloat(EdMultaPerc.text);
                          if eddesc.Text<>'' then
                             dm.docpagardescontopgto.Value:=StringToFloat(eddesc.text);
                          if mepgtoate.Text<>'  /  /    ' then
                             dm.docpagarpgtoI.Value:=StrToDate(mepgtoate.text);
                          if cbplconta.Text<>'' then
                             begin
                               dm.planocontas.Open;
                               if dm.planocontas.Locate('chave',cbplconta.Text,[]) then
                                  dm.docpagarplconta.Value:=dm.planocontascodigo.value;
                             end;
                          dm.docpagarlocalcob.Value:=EdLocal.Text;
                          dm.docpagarobs.Value:=memo1.Text;
                          dm.docpagar.Post;
                          dm.docpagar.Close;
                          dm.docpagar.Open;
//                              dm.docpagar.Last;
                          atualiza;
                          limparbaixa;
                        Except
                          application.MessageBox('Erro ao Inserir Registro!','Aten��o',mb_Ok+mb_iconerror);
                          limpar;
                        end;
                     end;
                end;

             P_Baixar.Enabled:=false;
             btconfirmar.Enabled:=false;
             btbaixar.Enabled:=true;
             btconsultar.Click;
             dm.docpagarGeral.Close;
             dm.docpagarGeral.Open;
             dm.docpagarGeral.Locate('doc',eddocumento.Text,[]);
             if rbsim.Checked then
                begin
                  mevencto.Text:=DateToStr(StrToDate(mevencto.Text)+30);
                  btnovo.Click;
                end;
           end;
     end
     else
     begin
       P_Baixar.Enabled:=false;
       btconfirmar.Enabled:=false;
       btbaixar.Enabled:=true;
       btconsultar.Click;
       limparbaixa;
       dm.docpagarGeral.Locate('doc',eddocumento.Text,[]);
     end;
end;

procedure TFrmPagar.cbcontaExit(Sender: TObject);
begin
        if cbconta.Text<>'' then
           begin
             if not dm.contascorrente.Locate('descricao',cbconta.text,[]) then
                begin
                  application.MessageBox('Conta n�o Cadastrada','Aten��o',mb_ok+mb_iconinformation);
                  cbconta.text:='';
                  cbconta.SetFocus;
                end;
           end;
  cbconta.Color:=clWindow;
end;

procedure TFrmPagar.cbplanocontaExit(Sender: TObject);
begin
      if cbplanoconta.Text<>'' then
         begin
            dm.planocontas.Open;
            if not dm.planocontas.Locate('chave',cbplanoconta.Text,[]) then
               begin
                 application.MessageBox('Conta n�o Cadastrada','Aten��o',mb_ok+mb_iconinformation);
                 cbplanoconta.SetFocus;
               end
               else
               begin
                 if length(dm.planocontascodigo.Value)<8 then
                    begin
                      application.MessageBox('Conta inv�lida. Escolha outra conta','Aten��o',mb_ok+mb_iconinformation);
                      cbplanoconta.SetFocus;
                    end;
               end;
         end;
  cbplanoconta.Color:=clWindow;
end;

procedure TFrmPagar.btprimeiroClick(Sender: TObject);
begin
        dm.docpagarGeral.First;
        Atualiza;
end;

procedure TFrmPagar.btanteriorClick(Sender: TObject);
begin
        dm.docpagarGeral.prior;
        Atualiza;
end;

procedure TFrmPagar.btproximoClick(Sender: TObject);
begin
        dm.docpagarGeral.next;
        Atualiza;
end;

procedure TFrmPagar.btultimoClick(Sender: TObject);
begin
        dm.docpagarGeral.last;
        Atualiza;
end;

procedure TFrmPagar.EdObsBaixaExit(Sender: TObject);
begin
        btconfirmar.Click;
end;

procedure TFrmPagar.DBGrid1DblClick(Sender: TObject);
begin
        atualiza;
        PageControl1.ActivePageIndex := 0;
end;

procedure TFrmPagar.btexcluirClick(Sender: TObject);
begin
        if edfornecedor.Text='' then
           begin
              application.MessageBox('Selecione um Fornecedor','Aten��o',mb_ok+mb_iconinformation);
              PageControl1.ActivePageIndex := 1;
              dbgrid1.SetFocus;
           end
           else
           begin
              if Application.Messagebox ('Deseja excluir o registro?','Aten��o', Mb_YesNoCancel+mb_iconquestion) = id_yes then
                 begin
                    busca := '';
                    ClickedOK := InputQuery('Digite Motivo da Exclus�o', 'Exclus�o do T�tulo', busca);
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
                    dm.rastrooperacao.Value:='E';
                    dm.rastrohistorico.Value:=EdDocumento.Text+' '+
                    lbfornecedor.Caption;
                    dm.rastrofavorecido.Value:=StrToInt(edfornecedor.Text);
                    dm.rastrovalor.Value:=StringToFloat(edvalor.Text);
                    dm.rastroobs.Value:=busca;
                    dm.rastro.Post;
                    dm.rastro.Close;

                    qratualizar.Close;
                    qratualizar.SQL.Clear;
                    qratualizar.SQL.Add('delete from docpagar');
                    qratualizar.sql.add('where cod = '+lbcodigo.caption);
                    qratualizar.ExecSQL;
                    limpar;
                    btconsultar.Click;
                 end;
           end;
end;

procedure TFrmPagar.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
D_autorizado,D_DataAutorizacao,D_AutorizadoPor:string;
begin
  if Key = 13 then
     begin
       dm.docpagar.Close;
       dm.docpagar.SQL.Clear;
       dm.docpagar.SQL.Add('select * from docpagar');
       dm.docpagar.SQL.Add('where cod = '+IntToStr(dm.docpagarGeralcod.Value));
       dm.docpagar.Open;
       atualiza;
       PageControl1.ActivePageIndex := 0;
     end
  else if key=vk_f5 then
     begin
       dm.usuarios.Open;
       dm.usuarios.Locate('nome',FrmPrincipal.sb.Panels[3].Text,[]);
       if dm.usuarioscontaspagar.Value='5' then
          begin
           if Application.Messagebox ('Confirma Opera��o?','Autoriza��o de Pagamento', Mb_YesNo+mb_iconquestion) = id_yes then
              begin
               lbcodigo.Caption:=IntToStr(dm.docpagarGeralcod.value);
               D_DataAutorizacao:=copy(DateToStr(date),7,4)+'/'+
               copy(DateToStr(date),4,2)+'/'+copy(DateToStr(date),1,2);
               if dm.docpagarGeralAutorizado.Value='S' then
                  D_autorizado:='N'
               else
                  D_autorizado:='S';
               D_AutorizadoPor:=FrmPrincipal.sb.Panels[3].Text;
               qratualizar.close;
               qratualizar.sql.clear;
               qratualizar.sql.add('update docpagar set');
               qratualizar.sql.add('DataAutorizacao = :D_DataAutorizacao,');
               qratualizar.sql.add('autorizado = :D_autorizado,');
               qratualizar.sql.add('AutorizadoPor = :D_AutorizadoPor');
               qratualizar.SQL.Add('where cod ='+lbcodigo.Caption);
               qratualizar.Params[0].Value := D_DataAutorizacao;
               qratualizar.Params[1].Value := D_autorizado;
               qratualizar.Params[2].Value := D_AutorizadoPor;
               qratualizar.ExecSQL;
               dm.docpagarGeral.Close;
               dm.docpagarGeral.Open;
               dm.docpagarGeral.Locate('cod',lbcodigo.Caption,[]);
              end;
          end
          else
           application.MessageBox('Contate o Administrador','Opera��o n�o Autorizada',mb_Ok+MB_ICONINFORMATION);
     end;
end;

procedure TFrmPagar.MeDataInicialExit(Sender: TObject);
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

procedure TFrmPagar.MeDataFinalExit(Sender: TObject);
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

procedure TFrmPagar.cbplanojurosExit(Sender: TObject);
begin
        if cbplanojuros.Text<>'' then
           begin
                dm.planocontas.Open;
                if not dm.planocontas.Locate('chave',cbplanojuros.Text,[]) then
                   begin
                      application.MessageBox('Conta n�o Cadastrada','Aten��o',mb_ok+mb_iconinformation);
                      cbplanojuros.SetFocus;
                   end
                   else
                   begin
                      if length(dm.planocontascodigo.Value)<8 then
                         begin
                            application.MessageBox('Conta inv�lida. Escolha outra conta','Aten��o',mb_ok+mb_iconinformation);
                            cbplanojuros.SetFocus;
                         end;
                   end;
           end
           else
                if edjuros.Text<>'' then
                   cbplanojuros.setfocus;
  cbplanojuros.Color:=clWindow;
end;

procedure TFrmPagar.CbEmpresaExit(Sender: TObject);
begin
{        if cbempresa.Text<>'' then
           begin
             dm.Empresas.Open;
             if not dm.Empresas.Locate('nome',cbempresa.Text,[]) then
                begin
                  application.MessageBox('Empresa n�o Cadastrada','Aten��o',mb_ok+mb_iconinformation);
                  cbempresa.SetFocus;
                end;
           end;
}end;

procedure TFrmPagar.SpeedButton1Click(Sender: TObject);
begin
  dm.parametros.Close;
  dm.parametros.Open;
  if rb2.Checked then
     begin
       if edccger.Text='' then
          qrtitulo.Caption:='Relat�rio Documentos � Pagar - � Vencer'
       else
          qrtitulo.Caption:='Relat�rio Documentos � Pagar - � Vencer da Empresa: '+lbccger.Caption;
     end
  else if rb1.Checked then
     begin
       if edccger.Text='' then
          qrtitulo.Caption:='Relat�rio Documentos � Pagar - Vencidos'
       else
          qrtitulo.Caption:='Relat�rio Documentos � Pagar - Vencidos da Empresa: '+lbccger.Caption;
     end
  else
  begin
     if edccger.Text='' then
        qrtitulo.Caption:='Relat�rio Documentos � Pagar'
     else
        qrtitulo.Caption:='Relat�rio Documentos � Pagar da Empresa: '+lbccger.Caption;
  end;
  if mefinal.Text<>'  /  /    ' then
     begin
       if edccger.Text='' then
          qrtituloI.Caption:='Documentos Pagos em '+meinicial.Text+' � '+mefinal.Text
       else
          qrtituloI.Caption:='Documentos Pagos em '+meinicial.Text+' � '+mefinal.Text+' - Empresa: '+lbccger.Caption;
       RLReport2.preview;
     end
     else
       RLReport1.preview;
end;

procedure TFrmPagar.EdDocumentoExit(Sender: TObject);
begin
      if eddocumento.Text<>'' then
         begin
           if opcao=1 then
              begin
                dm.docpagar.Close;
                dm.docpagar.SQL.Clear;
                dm.docpagar.SQL.Add('select * from docpagar');
                dm.docpagar.SQL.Add('where (doc = '+chr(39)+eddocumento.text+chr(39)+')');
                dm.docpagar.SQL.Add('and (fornecedor = '+edfornecedor.Text+')');
                dm.docpagar.Open;
                if dm.docpagar.RecordCount>0 then
                   begin
                     showmessage('Documento j� Lan�ado');
                     EdDocumento.SelStart:=0;
                     EdDocumento.SelLength:=length(EdDocumento.Text);
                     EdDocumento.SetFocus;
                   end;
              end;
         end;
  EdDocumento.Color:=clWindow;
end;

procedure TFrmPagar.edfornecedorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
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

procedure TFrmPagar.edfornecedorExit(Sender: TObject);
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
                 application.MessageBox('Fornecedor n�o Localizado','Aten��o',mb_ok+mb_iconinformation);
                 edfornecedor.SetFocus;
               end
               else
                 lbfornecedor.Caption:=dm.fornecedoresnome.value;
         end;
  edfornecedor.Color:=clWindow;
end;

procedure TFrmPagar.btconsultarClick(Sender: TObject);
begin
        lbvencidos.Caption:='';
        lbvencer.Caption:='';
        lbaberto.Caption:='';
        lbliquidados.Caption:='';
        lbtotal.Caption:='';
        //Consulta por Doc. Vencidos
        if rb1.Checked then
           begin
             //Vencidos
             if (MeDataFinal.text='  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (mefinal.text='  /  /    ') and
                (edfornecedorI.Text='') and
                (edccger.Text='') and
                (cbtipoI.Text='') then
                begin
                  LimparConsulta;
                  vencidas;
                end

             //Vencidos por Conta gerencial
             else if (MeDataFinal.text='  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (mefinal.text='  /  /    ') and
                (edfornecedorI.Text='') and
                (edccger.Text<>'') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocpagar.Close;
                  dm.Totaldocpagar.SQL.Clear;
                  dm.Totaldocpagar.SQL.Add('select sum(D.valor) as total from fornecedores F, docpagar D');
                  dm.Totaldocpagar.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.Totaldocpagar.SQL.Add('and (D.vencto<CURDATE())');
                  dm.Totaldocpagar.sql.add('and (D.plconta like '+chr(39)+edccger.text+'%'+chr(39)+')');
                  dm.Totaldocpagar.open;

                  dm.docpagarGeral.Close;
                  dm.docpagarGeral.SQL.Clear;
                  dm.docpagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.docpagarGeral.SQL.Add('D.tipo,D.localcob,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docpagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.docpagarGeral.SQL.Add('from fornecedores F, docpagar D');
                  dm.docpagarGeral.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null) and (D.vencto<CURDATE())');
                  dm.docpagarGeral.sql.add('and (D.plconta like '+chr(39)+edccger.text+'%'+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('order by D.vencto,nome');
                  dm.docpagarGeral.Open;
                end

             //Vencidos por Fornecedor
             else if (MeDataFinal.text='  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (mefinal.text='  /  /    ') and
                (edfornecedorI.Text<>'') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocpagar.Close;
                  dm.Totaldocpagar.SQL.Clear;
                  dm.Totaldocpagar.SQL.Add('select sum(D.valor) as total from fornecedores F, docpagar D');
                  dm.Totaldocpagar.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.Totaldocpagar.SQL.Add('and (D.vencto<CURDATE()) and');
                  dm.Totaldocpagar.SQL.Add('(D.fornecedor = '+edfornecedorI.text+')');
                  dm.Totaldocpagar.open;

                  dm.docpagarGeral.Close;
                  dm.docpagarGeral.SQL.Clear;
                  dm.docpagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.docpagarGeral.SQL.Add('D.tipo,D.localcob,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docpagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.docpagarGeral.SQL.Add('from fornecedores F, docpagar D');
                  dm.docpagarGeral.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.docpagarGeral.SQL.Add('and (D.vencto<CURDATE()) and');
                  dm.docpagarGeral.SQL.Add('(D.fornecedor = '+edfornecedorI.text+')');
                  dm.docpagarGeral.SQL.Add('order by D.vencto,nome');
                  dm.docpagarGeral.Open;
                end

             //Vencidos por Tipo do Documento
             else if (MeDataFinal.text='  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (mefinal.text='  /  /    ') and
                (lbfornecedorI.caption='') and
                (cbtipoI.Text<>'') then
                begin
                  dm.Totaldocpagar.Close;
                  dm.Totaldocpagar.SQL.Clear;
                  dm.Totaldocpagar.SQL.Add('select sum(D.valor) as total from fornecedores F, docpagar D');
                  dm.Totaldocpagar.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.Totaldocpagar.SQL.Add('and (D.vencto<CURDATE()) and');
                  dm.Totaldocpagar.SQL.Add('(D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.open;
                  if dm.Totaldocpagartotal.Value>0 then
                     lbvencidos.Caption:=formatfloat('#,##0.00',dm.Totaldocpagar['total'])
                  else
                     lbvencidos.Caption:='';

                  dm.docpagarGeral.Close;
                  dm.docpagarGeral.SQL.Clear;
                  dm.docpagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.docpagarGeral.SQL.Add('D.tipo,D.localcob,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docpagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.docpagarGeral.SQL.Add('from fornecedores F, docpagar D');
                  dm.docpagarGeral.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.docpagarGeral.SQL.Add('and (D.vencto<CURDATE()) and');
                  dm.docpagarGeral.SQL.Add('(D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('order by D.vencto,nome');
                  dm.docpagarGeral.Open;
                end

             //Vencidos por Vencimento
             else if (MeDataFinal.text='  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (mefinal.text='  /  /    ') and
                (lbfornecedorI.caption='') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocpagar.Close;
                  dm.Totaldocpagar.SQL.Clear;
                  dm.Totaldocpagar.SQL.Add('select sum(D.valor) as total from fornecedores F, docpagar D');
                  dm.Totaldocpagar.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.Totaldocpagar.SQL.Add('and (D.vencto<CURDATE()) and');
                  dm.Totaldocpagar.SQL.Add('(D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.open;

                  dm.docpagarGeral.Close;
                  dm.docpagarGeral.SQL.Clear;
                  dm.docpagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.docpagarGeral.SQL.Add('D.tipo,D.localcob,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docpagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.docpagarGeral.SQL.Add('from fornecedores F, docpagar D');
                  dm.docpagarGeral.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.docpagarGeral.SQL.Add('and (D.vencto<CURDATE()) and');
                  dm.docpagarGeral.SQL.Add('(D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('order by D.vencto,nome');
                  dm.docpagarGeral.Open;
                end

             //Vencidos por Emiss�o
             else if (MeDataFinal.text<>'  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (mefinal.text='  /  /    ') and
                (lbfornecedorI.caption='') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocpagar.Close;
                  dm.Totaldocpagar.SQL.Clear;
                  dm.Totaldocpagar.SQL.Add('select sum(D.valor) as total from fornecedores F, docpagar D');
                  dm.Totaldocpagar.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.Totaldocpagar.SQL.Add('and (D.vencto<CURDATE()) and');
                  dm.Totaldocpagar.SQL.Add('(D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.open;

                  dm.docpagarGeral.Close;
                  dm.docpagarGeral.SQL.Clear;
                  dm.docpagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.docpagarGeral.SQL.Add('D.tipo,D.localcob,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docpagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.docpagarGeral.SQL.Add('from fornecedores F, docpagar D');
                  dm.docpagarGeral.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.docpagarGeral.SQL.Add('and (D.vencto<CURDATE()) and');
                  dm.docpagarGeral.SQL.Add('(D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('order by D.emissao');
                  dm.docpagarGeral.Open;
                end

             //Vencidos por Emiss�o e Vencimento
             else if (MeDataFinal.text<>'  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (mefinal.text='  /  /    ') and
                (lbfornecedorI.caption='') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocpagar.Close;
                  dm.Totaldocpagar.SQL.Clear;
                  dm.Totaldocpagar.SQL.Add('select sum(D.valor) as total from fornecedores F, docpagar D');
                  dm.Totaldocpagar.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.Totaldocpagar.SQL.Add('and (D.vencto<CURDATE()) and');
                  dm.Totaldocpagar.SQL.Add('(D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.open;

                  dm.docpagarGeral.Close;
                  dm.docpagarGeral.SQL.Clear;
                  dm.docpagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.docpagarGeral.SQL.Add('D.tipo,D.localcob,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docpagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.docpagarGeral.SQL.Add('from fornecedores F, docpagar D');
                  dm.docpagarGeral.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.docpagarGeral.SQL.Add('and (D.vencto<CURDATE()) and');
                  dm.docpagarGeral.SQL.Add('(D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('order by D.vencto,nome');
                  dm.docpagarGeral.Open;
                end

             //Vencidos por Emiss�o e Vencimento e Fornecedor
             else if (MeDataFinal.text<>'  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (mefinal.text='  /  /    ') and
                (lbfornecedorI.caption<>'') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocpagar.Close;
                  dm.Totaldocpagar.SQL.Clear;
                  dm.Totaldocpagar.SQL.Add('select sum(D.valor) as total from fornecedores F, docpagar D');
                  dm.Totaldocpagar.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.Totaldocpagar.SQL.Add('and (D.vencto<CURDATE()) and');
                  dm.Totaldocpagar.SQL.Add('(D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.SQL.Add('and (D.fornecedor = '+edfornecedorI.text+')');
                  dm.Totaldocpagar.open;

                  dm.docpagarGeral.Close;
                  dm.docpagarGeral.SQL.Clear;
                  dm.docpagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.docpagarGeral.SQL.Add('D.tipo,D.localcob,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docpagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.docpagarGeral.SQL.Add('from fornecedores F, docpagar D');
                  dm.docpagarGeral.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.docpagarGeral.SQL.Add('and (D.vencto<CURDATE()) and');
                  dm.docpagarGeral.SQL.Add('(D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('and (D.fornecedor = '+edfornecedorI.text+')');
                  dm.docpagarGeral.SQL.Add('order by D.vencto,nome');
                  dm.docpagarGeral.Open;
                end

             //Vencidos por Emiss�o e Vencimento e Tipo
             else if (MeDataFinal.text<>'  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (mefinal.text='  /  /    ') and
                (lbfornecedorI.caption='') and
                (cbtipoI.Text<>'') then
                begin
                  dm.Totaldocpagar.Close;
                  dm.Totaldocpagar.SQL.Clear;
                  dm.Totaldocpagar.SQL.Add('select sum(D.valor) as total from fornecedores F, docpagar D');
                  dm.Totaldocpagar.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.Totaldocpagar.SQL.Add('and (D.vencto<CURDATE()) and');
                  dm.Totaldocpagar.SQL.Add('(D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.open;

                  dm.docpagarGeral.Close;
                  dm.docpagarGeral.SQL.Clear;
                  dm.docpagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.docpagarGeral.SQL.Add('D.tipo,D.localcob,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docpagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.docpagarGeral.SQL.Add('from fornecedores F, docpagar D');
                  dm.docpagarGeral.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.docpagarGeral.SQL.Add('and (D.vencto<CURDATE()) and');
                  dm.docpagarGeral.SQL.Add('(D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('order by D.vencto,nome');
                  dm.docpagarGeral.Open;
                end

             //Vencidos por Emiss�o e Fornecedor
             else if (MeDataFinal.text<>'  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (mefinal.text='  /  /    ') and
                (lbfornecedorI.caption<>'') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocpagar.Close;
                  dm.Totaldocpagar.SQL.Clear;
                  dm.Totaldocpagar.SQL.Add('select sum(D.valor) as total from fornecedores F, docpagar D');
                  dm.Totaldocpagar.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.Totaldocpagar.SQL.Add('and (D.vencto<CURDATE()) and');
                  dm.Totaldocpagar.SQL.Add('(D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.SQL.Add('and (D.fornecedor = '+edfornecedorI.text+')');
                  dm.Totaldocpagar.open;

                  dm.docpagarGeral.Close;
                  dm.docpagarGeral.SQL.Clear;
                  dm.docpagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.docpagarGeral.SQL.Add('D.tipo,D.localcob,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docpagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.docpagarGeral.SQL.Add('from fornecedores F, docpagar D');
                  dm.docpagarGeral.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.docpagarGeral.SQL.Add('and (D.vencto<CURDATE()) and');
                  dm.docpagarGeral.SQL.Add('(D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('and (D.fornecedor = '+edfornecedorI.text+')');
                  dm.docpagarGeral.SQL.Add('order by D.emissao');
                  dm.docpagarGeral.Open;
                end

             //Vencidos por Emiss�o e Tipo
             else if (MeDataFinal.text<>'  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (mefinal.text='  /  /    ') and
                (lbfornecedorI.caption='') and
                (cbtipoI.Text<>'') then
                begin
                  dm.Totaldocpagar.Close;
                  dm.Totaldocpagar.SQL.Clear;
                  dm.Totaldocpagar.SQL.Add('select sum(D.valor) as total from fornecedores F, docpagar D');
                  dm.Totaldocpagar.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.Totaldocpagar.SQL.Add('and (D.vencto<CURDATE()) and');
                  dm.Totaldocpagar.SQL.Add('(D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.open;

                  dm.docpagarGeral.Close;
                  dm.docpagarGeral.SQL.Clear;
                  dm.docpagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.docpagarGeral.SQL.Add('D.tipo,D.localcob,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docpagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.docpagarGeral.SQL.Add('from fornecedores F, docpagar D');
                  dm.docpagarGeral.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.docpagarGeral.SQL.Add('and (D.vencto<CURDATE()) and');
                  dm.docpagarGeral.SQL.Add('(D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('order by D.emissao');
                  dm.docpagarGeral.Open;
                end

             //Vencidos por Per�odo e fornecedor
             else if (MeDataFinal.text='  /  /    ') and
                (mefinal.text='  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (lbfornecedorI.caption<>'') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocpagar.Close;
                  dm.Totaldocpagar.SQL.Clear;
                  dm.Totaldocpagar.SQL.Add('select sum(D.valor) as total from fornecedores F, docpagar D');
                  dm.Totaldocpagar.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.Totaldocpagar.SQL.Add('and (D.vencto<CURDATE()) and');
                  dm.Totaldocpagar.SQL.Add('(D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.SQL.Add('and (D.fornecedor = '+edfornecedorI.text+')');
                  dm.Totaldocpagar.open;

                  dm.docpagarGeral.Close;
                  dm.docpagarGeral.SQL.Clear;
                  dm.docpagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.docpagarGeral.SQL.Add('D.tipo,D.localcob,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docpagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.docpagarGeral.SQL.Add('from fornecedores F, docpagar D');
                  dm.docpagarGeral.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.docpagarGeral.SQL.Add('and (D.vencto<CURDATE()) and');
                  dm.docpagarGeral.SQL.Add('(D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('and (D.fornecedor = '+edfornecedorI.text+')');
                  dm.docpagarGeral.SQL.Add('order by D.vencto,nome');
                  dm.docpagarGeral.Open;
                end

             //Vencidos por Per�odo e Tipo
             else if (MeDataFinal.text='  /  /    ') and
                (mefinal.text='  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (lbfornecedorI.caption='') and
                (cbtipoI.Text<>'') then
                begin
                  dm.Totaldocpagar.Close;
                  dm.Totaldocpagar.SQL.Clear;
                  dm.Totaldocpagar.SQL.Add('select sum(D.valor) as total from fornecedores F, docpagar D');
                  dm.Totaldocpagar.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.Totaldocpagar.SQL.Add('and (D.vencto<CURDATE()) and');
                  dm.Totaldocpagar.SQL.Add('(D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.open;

                  dm.docpagarGeral.Close;
                  dm.docpagarGeral.SQL.Clear;
                  dm.docpagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.docpagarGeral.SQL.Add('D.tipo,D.localcob,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docpagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.docpagarGeral.SQL.Add('from fornecedores F, docpagar D');
                  dm.docpagarGeral.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.docpagarGeral.SQL.Add('and (D.vencto<CURDATE()) and');
                  dm.docpagarGeral.SQL.Add('(D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('order by D.vencto,nome');
                  dm.docpagarGeral.Open;
                end;
             if dm.Totaldocpagartotal.Value>0 then
                begin
                  vencidos:=dm.Totaldocpagar['total'];
                  lbvencidos.Caption:=formatfloat('#,##0.00',vencidos);
                  lbaberto.Caption:=formatfloat('#,##0.00',vencidos)
                end;
           end
        //Consulta por Doc. � Vencer
        else if rb2.Checked then
           begin
             //� Vencer
             if (MeDataFinal.text='  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (mefinal.text='  /  /    ') and
                (edfornecedorI.Text='') and
                (edccger.Text='') and
                (cbtipoI.Text='') then
                begin
                  LimparConsulta;
                  avencer;
                end

             //� Vencer por Conta Gerencial
             else if (MeDataFinal.text='  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (mefinal.text='  /  /    ') and
                (edfornecedorI.Text='') and
                (edccger.Text<>'') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocpagar.Close;
                  dm.Totaldocpagar.SQL.Clear;
                  dm.Totaldocpagar.SQL.Add('select sum(D.valor) as total from fornecedores F, docpagar D');
                  dm.Totaldocpagar.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.Totaldocpagar.SQL.Add('and (D.vencto>=CURDATE())');
                  dm.Totaldocpagar.sql.add('and (D.plconta like '+chr(39)+edccger.text+'%'+chr(39)+')');
                  dm.Totaldocpagar.open;

                  dm.docpagarGeral.Close;
                  dm.docpagarGeral.SQL.Clear;
                  dm.docpagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.docpagarGeral.SQL.Add('D.tipo,D.localcob,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docpagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.docpagarGeral.SQL.Add('from fornecedores F, docpagar D');
                  dm.docpagarGeral.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null) and (D.vencto>=CURDATE())');
                  dm.docpagarGeral.sql.add('and (D.plconta like '+chr(39)+edccger.text+'%'+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('order by D.vencto,nome');
                  dm.docpagarGeral.Open;
                end

             //� Vencer por fornecedor
             else if (MeDataFinal.text='  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (mefinal.text='  /  /    ') and
                (edfornecedorI.Text<>'') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocpagar.Close;
                  dm.Totaldocpagar.SQL.Clear;
                  dm.Totaldocpagar.SQL.Add('select sum(D.valor) as total from fornecedores F, docpagar D');
                  dm.Totaldocpagar.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.Totaldocpagar.SQL.Add('and (D.vencto>=CURDATE()) and');
                  dm.Totaldocpagar.SQL.Add('(D.fornecedor = '+edfornecedorI.text+')');
                  dm.Totaldocpagar.open;

                  dm.docpagarGeral.Close;
                  dm.docpagarGeral.SQL.Clear;
                  dm.docpagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.docpagarGeral.SQL.Add('D.tipo,D.localcob,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docpagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.docpagarGeral.SQL.Add('from fornecedores F, docpagar D');
                  dm.docpagarGeral.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.docpagarGeral.SQL.Add('and (D.vencto>=CURDATE()) and');
                  dm.docpagarGeral.SQL.Add('(D.fornecedor = '+edfornecedorI.text+')');
                  dm.docpagarGeral.SQL.Add('order by D.vencto,nome');
                  dm.docpagarGeral.Open;
                end

             //� Vencer por Tipo do Documento
             else if (MeDataFinal.text='  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (mefinal.text='  /  /    ') and
                (lbfornecedorI.caption='') and
                (cbtipoI.Text<>'') then
                begin
                  dm.Totaldocpagar.Close;
                  dm.Totaldocpagar.SQL.Clear;
                  dm.Totaldocpagar.SQL.Add('select sum(D.valor) as total from fornecedores F, docpagar D');
                  dm.Totaldocpagar.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.Totaldocpagar.SQL.Add('and (D.vencto>=CURDATE()) and');
                  dm.Totaldocpagar.SQL.Add('(D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.open;

                  dm.docpagarGeral.Close;
                  dm.docpagarGeral.SQL.Clear;
                  dm.docpagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.docpagarGeral.SQL.Add('D.tipo,D.localcob,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docpagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.docpagarGeral.SQL.Add('from fornecedores F, docpagar D');
                  dm.docpagarGeral.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.docpagarGeral.SQL.Add('and (D.vencto>=CURDATE()) and');
                  dm.docpagarGeral.SQL.Add('(D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('order by D.vencto,nome');
                  dm.docpagarGeral.Open;
                end

             //� Vencer por Per�odo
             else if (MeDataFinal.text='  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (mefinal.text='  /  /    ') and
                (lbfornecedorI.caption='') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocpagar.Close;
                  dm.Totaldocpagar.SQL.Clear;
                  dm.Totaldocpagar.SQL.Add('select sum(D.valor) as total from fornecedores F, docpagar D');
                  dm.Totaldocpagar.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.Totaldocpagar.SQL.Add('and (D.vencto>=CURDATE()) and');
                  dm.Totaldocpagar.SQL.Add('(D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.open;

                  dm.docpagarGeral.Close;
                  dm.docpagarGeral.SQL.Clear;
                  dm.docpagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.docpagarGeral.SQL.Add('D.tipo,D.localcob,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docpagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.docpagarGeral.SQL.Add('from fornecedores F, docpagar D');
                  dm.docpagarGeral.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.docpagarGeral.SQL.Add('and (D.vencto>=CURDATE()) and');
                  dm.docpagarGeral.SQL.Add('(D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('order by D.vencto,nome');
                  dm.docpagarGeral.Open;
                end

             //� Vencer por Emiss�o
             else if (MeDataFinal.text<>'  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (mefinal.text='  /  /    ') and
                (lbfornecedorI.caption='') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocpagar.Close;
                  dm.Totaldocpagar.SQL.Clear;
                  dm.Totaldocpagar.SQL.Add('select sum(D.valor) as total from fornecedores F, docpagar D');
                  dm.Totaldocpagar.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.Totaldocpagar.SQL.Add('and (D.vencto>=CURDATE()) and');
                  dm.Totaldocpagar.SQL.Add('(D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.open;

                  dm.docpagarGeral.Close;
                  dm.docpagarGeral.SQL.Clear;
                  dm.docpagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.docpagarGeral.SQL.Add('D.tipo,D.localcob,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docpagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.docpagarGeral.SQL.Add('from fornecedores F, docpagar D');
                  dm.docpagarGeral.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.docpagarGeral.SQL.Add('and (D.vencto>=CURDATE()) and');
                  dm.docpagarGeral.SQL.Add('(D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('order by D.vencto,nome');
                  dm.docpagarGeral.Open;
                end

             //� Vencer por Emiss�o e Vencimento
             else if (MeDataFinal.text<>'  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (mefinal.text='  /  /    ') and
                (lbfornecedorI.caption='') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocpagar.Close;
                  dm.Totaldocpagar.SQL.Clear;
                  dm.Totaldocpagar.SQL.Add('select sum(D.valor) as total from fornecedores F, docpagar D');
                  dm.Totaldocpagar.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.Totaldocpagar.SQL.Add('and (D.vencto>=CURDATE()) and');
                  dm.Totaldocpagar.SQL.Add('(D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.open;

                  dm.docpagarGeral.Close;
                  dm.docpagarGeral.SQL.Clear;
                  dm.docpagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.docpagarGeral.SQL.Add('D.tipo,D.localcob,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docpagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.docpagarGeral.SQL.Add('from fornecedores F, docpagar D');
                  dm.docpagarGeral.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.docpagarGeral.SQL.Add('and (D.vencto>=CURDATE()) and');
                  dm.docpagarGeral.SQL.Add('(D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('order by D.vencto,nome');
                  dm.docpagarGeral.Open;
                end

             //� Vencer por Emiss�o e Vencimento e Fornecedor
             else if (MeDataFinal.text<>'  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (mefinal.text='  /  /    ') and
                (lbfornecedorI.caption<>'') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocpagar.Close;
                  dm.Totaldocpagar.SQL.Clear;
                  dm.Totaldocpagar.SQL.Add('select sum(D.valor) as total from fornecedores F, docpagar D');
                  dm.Totaldocpagar.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.Totaldocpagar.SQL.Add('and (D.vencto>=CURDATE()) and');
                  dm.Totaldocpagar.SQL.Add('(D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.SQL.Add('and (D.fornecedor = '+edfornecedorI.text+')');
                  dm.Totaldocpagar.open;

                  dm.docpagarGeral.Close;
                  dm.docpagarGeral.SQL.Clear;
                  dm.docpagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.docpagarGeral.SQL.Add('D.tipo,D.localcob,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docpagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.docpagarGeral.SQL.Add('from fornecedores F, docpagar D');
                  dm.docpagarGeral.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.docpagarGeral.SQL.Add('and (D.vencto>=CURDATE()) and');
                  dm.docpagarGeral.SQL.Add('(D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('and (D.fornecedor = '+edfornecedorI.text+')');
                  dm.docpagarGeral.SQL.Add('order by D.vencto,nome');
                  dm.docpagarGeral.Open;
                end

             //� Vencer por Emiss�o e Vencimento e Tipo
             else if (MeDataFinal.text<>'  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (mefinal.text='  /  /    ') and
                (lbfornecedorI.caption='') and
                (cbtipoI.Text<>'') then
                begin
                  dm.Totaldocpagar.Close;
                  dm.Totaldocpagar.SQL.Clear;
                  dm.Totaldocpagar.SQL.Add('select sum(D.valor) as total from fornecedores F, docpagar D');
                  dm.Totaldocpagar.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.Totaldocpagar.SQL.Add('and (D.vencto>=CURDATE()) and');
                  dm.Totaldocpagar.SQL.Add('(D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.open;

                  dm.docpagarGeral.Close;
                  dm.docpagarGeral.SQL.Clear;
                  dm.docpagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.docpagarGeral.SQL.Add('D.tipo,D.localcob,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docpagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.docpagarGeral.SQL.Add('from fornecedores F, docpagar D');
                  dm.docpagarGeral.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.docpagarGeral.SQL.Add('and (D.vencto>=CURDATE()) and');
                  dm.docpagarGeral.SQL.Add('(D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('order by D.vencto,nome');
                  dm.docpagarGeral.Open;
                end

             //� Vencer por Emiss�o por Fornecedor
             else if (MeDataFinal.text<>'  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (mefinal.text='  /  /    ') and
                (lbfornecedorI.caption<>'') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocpagar.Close;
                  dm.Totaldocpagar.SQL.Clear;
                  dm.Totaldocpagar.SQL.Add('select sum(D.valor) as total from fornecedores F, docpagar D');
                  dm.Totaldocpagar.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.Totaldocpagar.SQL.Add('and (D.vencto>=CURDATE()) and');
                  dm.Totaldocpagar.SQL.Add('(D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.SQL.Add('and (D.fornecedor = '+edfornecedorI.text+')');
                  dm.Totaldocpagar.open;

                  dm.docpagarGeral.Close;
                  dm.docpagarGeral.SQL.Clear;
                  dm.docpagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.docpagarGeral.SQL.Add('D.tipo,D.localcob,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docpagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.docpagarGeral.SQL.Add('from fornecedores F, docpagar D');
                  dm.docpagarGeral.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.docpagarGeral.SQL.Add('and (D.vencto>=CURDATE()) and');
                  dm.docpagarGeral.SQL.Add('(D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('and (D.fornecedor = '+edfornecedorI.text+')');
                  dm.docpagarGeral.SQL.Add('order by D.vencto,nome');
                  dm.docpagarGeral.Open;
                end

             //� Vencer por Emiss�o por Tipo
             else if (MeDataFinal.text<>'  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (mefinal.text='  /  /    ') and
                (lbfornecedorI.caption='') and
                (cbtipoI.Text<>'') then
                begin
                  dm.Totaldocpagar.Close;
                  dm.Totaldocpagar.SQL.Clear;
                  dm.Totaldocpagar.SQL.Add('select sum(D.valor) as total from fornecedores F, docpagar D');
                  dm.Totaldocpagar.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.Totaldocpagar.SQL.Add('and (D.vencto>=CURDATE()) and');
                  dm.Totaldocpagar.SQL.Add('(D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.open;

                  dm.docpagarGeral.Close;
                  dm.docpagarGeral.SQL.Clear;
                  dm.docpagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.docpagarGeral.SQL.Add('D.tipo,D.localcob,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docpagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.docpagarGeral.SQL.Add('from fornecedores F, docpagar D');
                  dm.docpagarGeral.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.docpagarGeral.SQL.Add('and (D.vencto>=CURDATE()) and');
                  dm.docpagarGeral.SQL.Add('(D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('order by D.vencto,nome');
                  dm.docpagarGeral.Open;
                end

             //� Vencer por Vencimento e fornecedor
             else if (MeDataFinal.text='  /  /    ') and
                (mefinal.text='  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (lbfornecedorI.caption<>'') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocpagar.Close;
                  dm.Totaldocpagar.SQL.Clear;
                  dm.Totaldocpagar.SQL.Add('select sum(D.valor) as total from fornecedores F, docpagar D');
                  dm.Totaldocpagar.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.Totaldocpagar.SQL.Add('and (D.vencto>=CURDATE()) and');
                  dm.Totaldocpagar.SQL.Add('(D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.SQL.Add('and (D.fornecedor = '+edfornecedorI.text+')');
                  dm.Totaldocpagar.open;

                  dm.docpagarGeral.Close;
                  dm.docpagarGeral.SQL.Clear;
                  dm.docpagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.docpagarGeral.SQL.Add('D.tipo,D.localcob,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docpagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.docpagarGeral.SQL.Add('from fornecedores F, docpagar D');
                  dm.docpagarGeral.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.docpagarGeral.SQL.Add('and (D.vencto>=CURDATE()) and');
                  dm.docpagarGeral.SQL.Add('(D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('and (D.fornecedor = '+edfornecedorI.text+')');
                  dm.docpagarGeral.SQL.Add('order by D.vencto,nome');
                  dm.docpagarGeral.Open;
                end

             //� Vencer por Vencimento e Tipo
             else if (MeDataFinal.text='  /  /    ') and
                (mefinal.text='  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (lbfornecedorI.caption='') and
                (cbtipoI.Text<>'') then
                begin
                  dm.Totaldocpagar.Close;
                  dm.Totaldocpagar.SQL.Clear;
                  dm.Totaldocpagar.SQL.Add('select sum(D.valor) as total from fornecedores F, docpagar D');
                  dm.Totaldocpagar.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.Totaldocpagar.SQL.Add('and (D.vencto>=CURDATE()) and');
                  dm.Totaldocpagar.SQL.Add('(D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.open;

                  dm.docpagarGeral.Close;
                  dm.docpagarGeral.SQL.Clear;
                  dm.docpagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.docpagarGeral.SQL.Add('D.tipo,D.localcob,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docpagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.docpagarGeral.SQL.Add('from fornecedores F, docpagar D');
                  dm.docpagarGeral.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.docpagarGeral.SQL.Add('and (D.vencto>=CURDATE()) and');
                  dm.docpagarGeral.SQL.Add('(D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('order by D.vencto,nome');
                  dm.docpagarGeral.Open;
                end;
             if dm.Totaldocpagartotal.Value>0 then
                begin
                  vencer:=dm.Totaldocpagar['total'];
                  lbvencer.Caption:=formatfloat('#,##0.00',vencer);
                  lbaberto.Caption:=formatfloat('#,##0.00',vencer);
                end;
           end
        //Consulta por Doc. Em Aberto
        else if rb5.Checked then
           begin
             //Em aberto
             if (MeDataFinal.text='  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (mefinal.text='  /  /    ') and
                (edfornecedorI.Text='') and
                (edccger.text='') and
                (cbtipoI.Text='') then
                begin
                  LimparConsulta;
                  EmAberto;
                end

             //Em aberto por fornecedor
             else if (MeDataFinal.text='  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (mefinal.text='  /  /    ') and
                (edccger.text='') and
                (edfornecedorI.Text<>'') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocpagar.Close;
                  dm.Totaldocpagar.SQL.Clear;
                  dm.Totaldocpagar.SQL.Add('select sum(D.valor) as total from fornecedores F, docpagar D');
                  dm.Totaldocpagar.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.Totaldocpagar.SQL.Add('and (D.vencto<CURDATE()) and');
                  dm.Totaldocpagar.SQL.Add('(D.fornecedor = '+edfornecedorI.text+')');
                  dm.Totaldocpagar.open;
                  if dm.Totaldocpagartotal.Value>0 then
                     begin
                       vencidos:=dm.Totaldocpagar['total'];
                       lbvencidos.Caption:=formatfloat('#,##0.00',vencidos);
                       lbaberto.Caption:=formatfloat('#,##0.00',vencidos)
                     end;

                  dm.Totaldocpagar.Close;
                  dm.Totaldocpagar.SQL.Clear;
                  dm.Totaldocpagar.SQL.Add('select sum(D.valor) as total from fornecedores F, docpagar D');
                  dm.Totaldocpagar.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.Totaldocpagar.SQL.Add('and (D.vencto>=CURDATE()) and');
                  dm.Totaldocpagar.SQL.Add('(D.fornecedor = '+edfornecedorI.text+')');
                  dm.Totaldocpagar.open;
                  if dm.Totaldocpagartotal.Value>0 then
                     begin
                       vencer:=dm.Totaldocpagar['total'];
                       lbvencer.Caption:=formatfloat('#,##0.00',vencer);
                       lbaberto.Caption:=formatfloat('#,##0.00',vencidos+vencer);
                     end;

                  dm.docpagarGeral.Close;
                  dm.docpagarGeral.SQL.Clear;
                  dm.docpagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.docpagarGeral.SQL.Add('D.tipo,D.localcob,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docpagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.docpagarGeral.SQL.Add('from fornecedores F, docpagar D');
                  dm.docpagarGeral.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.docpagarGeral.SQL.Add('and (D.fornecedor = '+edfornecedorI.text+')');
                  dm.docpagarGeral.SQL.Add('order by D.vencto,nome');
                  dm.docpagarGeral.Open;
                end

             //Em aberto por tipo
             else if (MeDataFinal.text='  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (mefinal.text='  /  /    ') and
                (edfornecedorI.Text='') and
                (edccger.text='') and
                (cbtipoI.Text<>'') then
                begin
                  dm.Totaldocpagar.Close;
                  dm.Totaldocpagar.SQL.Clear;
                  dm.Totaldocpagar.SQL.Add('select sum(D.valor) as total from fornecedores F, docpagar D');
                  dm.Totaldocpagar.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.Totaldocpagar.SQL.Add('and (D.vencto<CURDATE()) and');
                  dm.Totaldocpagar.SQL.Add('(D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.open;
                  if dm.Totaldocpagartotal.Value>0 then
                     begin
                       vencidos:=dm.Totaldocpagar['total'];
                       lbvencidos.Caption:=formatfloat('#,##0.00',vencidos);
                       lbaberto.Caption:=formatfloat('#,##0.00',vencidos)
                     end;

                  dm.Totaldocpagar.Close;
                  dm.Totaldocpagar.SQL.Clear;
                  dm.Totaldocpagar.SQL.Add('select sum(D.valor) as total from fornecedores F, docpagar D');
                  dm.Totaldocpagar.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.Totaldocpagar.SQL.Add('and (D.vencto>=CURDATE()) and');
                  dm.Totaldocpagar.SQL.Add('(D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.open;
                  if dm.Totaldocpagartotal.Value>0 then
                     begin
                       vencer:=dm.Totaldocpagar['total'];
                       lbvencer.Caption:=formatfloat('#,##0.00',vencer);
                       lbaberto.Caption:=formatfloat('#,##0.00',vencidos+vencer);
                     end;

                  dm.docpagarGeral.Close;
                  dm.docpagarGeral.SQL.Clear;
                  dm.docpagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.docpagarGeral.SQL.Add('D.tipo,D.localcob,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docpagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.docpagarGeral.SQL.Add('from fornecedores F, docpagar D');
                  dm.docpagarGeral.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.docpagarGeral.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('order by D.vencto,nome');
                  dm.docpagarGeral.Open;
                end

             //Em aberto + conta gerencial
             else if (mefinal.text='  /  /    ') and
                (MeDataFinal.text='  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (edccger.text<>'') and
                (edfornecedorI.text='') and
                (eddoc.text='') and
                (edvlrdoc.text='') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocpagar.Close;
                  dm.Totaldocpagar.SQL.Clear;
                  dm.Totaldocpagar.SQL.Add('select sum(D.valor) as total from fornecedores F, docpagar D');
                  dm.Totaldocpagar.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.Totaldocpagar.SQL.Add('and (D.vencto<CURDATE())');
                  dm.Totaldocpagar.sql.add('and (D.plconta like '+chr(39)+edccger.text+'%'+chr(39)+')');
                  dm.Totaldocpagar.open;
                  if dm.Totaldocpagartotal.Value>0 then
                     begin
                       vencidos:=dm.Totaldocpagar['total'];
                       lbvencidos.Caption:=formatfloat('#,##0.00',vencidos);
                       lbaberto.Caption:=formatfloat('#,##0.00',vencidos)
                     end;

                  dm.Totaldocpagar.Close;
                  dm.Totaldocpagar.SQL.Clear;
                  dm.Totaldocpagar.SQL.Add('select sum(D.valor) as total from fornecedores F, docpagar D');
                  dm.Totaldocpagar.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.Totaldocpagar.SQL.Add('and (D.vencto>=CURDATE())');
                  dm.Totaldocpagar.sql.add('and (D.plconta like '+chr(39)+edccger.text+'%'+chr(39)+')');
                  dm.Totaldocpagar.open;
                  if dm.Totaldocpagartotal.Value>0 then
                     begin
                       vencer:=dm.Totaldocpagar['total'];
                       lbvencer.Caption:=formatfloat('#,##0.00',vencer);
                       lbaberto.Caption:=formatfloat('#,##0.00',vencidos+vencer);
                     end;

                  dm.docpagarGeral.Close;
                  dm.docpagarGeral.SQL.Clear;
                  dm.docpagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.docpagarGeral.SQL.Add('D.tipo,D.localcob,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docpagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.docpagarGeral.SQL.Add('from fornecedores F, docpagar D');
                  dm.docpagarGeral.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.docpagarGeral.sql.add('and (D.plconta like '+chr(39)+edccger.text+'%'+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('order by D.vencto,nome');
                  dm.docpagarGeral.Open;
                end

             //Em aberto + conta gerencial + vencimento
             else if (mefinal.text='  /  /    ') and
                (MeDataFinal.text='  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (edccger.text<>'') and
                (edfornecedorI.text='') and
                (eddoc.text='') and
                (edvlrdoc.text='') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocpagar.Close;
                  dm.Totaldocpagar.SQL.Clear;
                  dm.Totaldocpagar.SQL.Add('select sum(D.valor) as total from fornecedores F, docpagar D');
                  dm.Totaldocpagar.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.Totaldocpagar.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.SQL.Add('and (D.vencto<CURDATE())');
                  dm.Totaldocpagar.sql.add('and (D.plconta like '+chr(39)+edccger.text+'%'+chr(39)+')');
                  dm.Totaldocpagar.open;
                  if dm.Totaldocpagartotal.Value>0 then
                     begin
                       vencidos:=dm.Totaldocpagar['total'];
                       lbvencidos.Caption:=formatfloat('#,##0.00',vencidos);
                       lbaberto.Caption:=formatfloat('#,##0.00',vencidos)
                     end;

                  dm.Totaldocpagar.Close;
                  dm.Totaldocpagar.SQL.Clear;
                  dm.Totaldocpagar.SQL.Add('select sum(D.valor) as total from fornecedores F, docpagar D');
                  dm.Totaldocpagar.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.Totaldocpagar.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.SQL.Add('and (D.vencto>=CURDATE())');
                  dm.Totaldocpagar.sql.add('and (D.plconta like '+chr(39)+edccger.text+'%'+chr(39)+')');
                  dm.Totaldocpagar.open;
                  if dm.Totaldocpagartotal.Value>0 then
                     begin
                       vencer:=dm.Totaldocpagar['total'];
                       lbvencer.Caption:=formatfloat('#,##0.00',vencer);
                       lbaberto.Caption:=formatfloat('#,##0.00',vencidos+vencer);
                     end;

                  dm.docpagarGeral.Close;
                  dm.docpagarGeral.SQL.Clear;
                  dm.docpagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.docpagarGeral.SQL.Add('D.tipo,D.localcob,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docpagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.docpagarGeral.SQL.Add('from fornecedores F, docpagar D');
                  dm.docpagarGeral.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.docpagarGeral.sql.add('and (D.plconta like '+chr(39)+edccger.text+'%'+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('order by D.vencto,nome');
                  dm.docpagarGeral.Open;
                end

             //Em aberto por vencimento
             else if (MeDataFinal.text='  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (mefinal.text='  /  /    ') and
                (edccger.text='') and
                (edfornecedorI.Text='') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocpagar.Close;
                  dm.Totaldocpagar.SQL.Clear;
                  dm.Totaldocpagar.SQL.Add('select sum(D.valor) as total from fornecedores F, docpagar D');
                  dm.Totaldocpagar.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.Totaldocpagar.SQL.Add('and (D.vencto<CURDATE()) and');
                  dm.Totaldocpagar.SQL.Add('(D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(medtfinal.text,7,4)+'/'+copy(medtfinal.text,4,2)+'/'+
                  copy(medtfinal.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.open;
                  if dm.Totaldocpagartotal.Value>0 then
                     begin
                       vencidos:=dm.Totaldocpagar['total'];
                       lbvencidos.Caption:=formatfloat('#,##0.00',vencidos);
                       lbaberto.Caption:=formatfloat('#,##0.00',vencidos)
                     end;

                  dm.Totaldocpagar.Close;
                  dm.Totaldocpagar.SQL.Clear;
                  dm.Totaldocpagar.SQL.Add('select sum(D.valor) as total from fornecedores F, docpagar D');
                  dm.Totaldocpagar.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.Totaldocpagar.SQL.Add('and (D.vencto>=CURDATE()) and');
                  dm.Totaldocpagar.SQL.Add('(D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(medtfinal.text,7,4)+'/'+copy(medtfinal.text,4,2)+'/'+
                  copy(medtfinal.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.open;
                  if dm.Totaldocpagartotal.Value>0 then
                     begin
                       vencer:=dm.Totaldocpagar['total'];
                       lbvencer.Caption:=formatfloat('#,##0.00',vencer);
                       lbaberto.Caption:=formatfloat('#,##0.00',vencidos+vencer);
                     end;

                  dm.docpagarGeral.Close;
                  dm.docpagarGeral.SQL.Clear;
                  dm.docpagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.docpagarGeral.SQL.Add('D.tipo,D.localcob,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docpagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.docpagarGeral.SQL.Add('from fornecedores F, docpagar D');
                  dm.docpagarGeral.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.docpagarGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(medtfinal.text,7,4)+'/'+copy(medtfinal.text,4,2)+'/'+
                  copy(medtfinal.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('order by D.vencto,nome');
                  dm.docpagarGeral.Open;
                end

             //Em aberto por vencimento e fornecedor
             else if (MeDataFinal.text='  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (mefinal.text='  /  /    ') and
                (edfornecedorI.Text<>'') and
                (edccger.text='') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocpagar.Close;
                  dm.Totaldocpagar.SQL.Clear;
                  dm.Totaldocpagar.SQL.Add('select sum(D.valor) as total from fornecedores F, docpagar D');
                  dm.Totaldocpagar.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.Totaldocpagar.SQL.Add('and (D.vencto<CURDATE()) and');
                  dm.Totaldocpagar.SQL.Add('(D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(medtfinal.text,7,4)+'/'+copy(medtfinal.text,4,2)+'/'+
                  copy(medtfinal.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.SQL.Add('and (D.fornecedor = '+edfornecedorI.text+')');
                  dm.Totaldocpagar.open;
                  if dm.Totaldocpagartotal.Value>0 then
                     begin
                       vencidos:=dm.Totaldocpagar['total'];
                       lbvencidos.Caption:=formatfloat('#,##0.00',vencidos);
                       lbaberto.Caption:=formatfloat('#,##0.00',vencidos)
                     end;

                  dm.Totaldocpagar.Close;
                  dm.Totaldocpagar.SQL.Clear;
                  dm.Totaldocpagar.SQL.Add('select sum(D.valor) as total from fornecedores F, docpagar D');
                  dm.Totaldocpagar.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.Totaldocpagar.SQL.Add('and (D.vencto>=CURDATE()) and');
                  dm.Totaldocpagar.SQL.Add('(D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(medtfinal.text,7,4)+'/'+copy(medtfinal.text,4,2)+'/'+
                  copy(medtfinal.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.SQL.Add('and (D.fornecedor = '+edfornecedorI.text+')');
                  dm.Totaldocpagar.open;
                  if dm.Totaldocpagartotal.Value>0 then
                     begin
                       vencer:=dm.Totaldocpagar['total'];
                       lbvencer.Caption:=formatfloat('#,##0.00',vencer);
                       lbaberto.Caption:=formatfloat('#,##0.00',vencidos+vencer);
                     end;

                  dm.docpagarGeral.Close;
                  dm.docpagarGeral.SQL.Clear;
                  dm.docpagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.docpagarGeral.SQL.Add('D.tipo,D.localcob,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docpagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.docpagarGeral.SQL.Add('from fornecedores F, docpagar D');
                  dm.docpagarGeral.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.docpagarGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(medtfinal.text,7,4)+'/'+copy(medtfinal.text,4,2)+'/'+
                  copy(medtfinal.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('and (D.fornecedor = '+edfornecedorI.text+')');
                  dm.docpagarGeral.SQL.Add('order by D.vencto,nome');
                  dm.docpagarGeral.Open;
                end

             //Em aberto por vencimento e tipo
             else if (MeDataFinal.text='  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (mefinal.text='  /  /    ') and
                (edfornecedorI.Text='') and
                (edccger.text='') and
                (cbtipoI.Text<>'') then
                begin
                  dm.Totaldocpagar.Close;
                  dm.Totaldocpagar.SQL.Clear;
                  dm.Totaldocpagar.SQL.Add('select sum(D.valor) as total from fornecedores F, docpagar D');
                  dm.Totaldocpagar.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.Totaldocpagar.SQL.Add('and (D.vencto<CURDATE()) and');
                  dm.Totaldocpagar.SQL.Add('(D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(medtfinal.text,7,4)+'/'+copy(medtfinal.text,4,2)+'/'+
                  copy(medtfinal.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.open;
                  if dm.Totaldocpagartotal.Value>0 then
                     begin
                       vencidos:=dm.Totaldocpagar['total'];
                       lbvencidos.Caption:=formatfloat('#,##0.00',vencidos);
                       lbaberto.Caption:=formatfloat('#,##0.00',vencidos)
                     end;

                  dm.Totaldocpagar.Close;
                  dm.Totaldocpagar.SQL.Clear;
                  dm.Totaldocpagar.SQL.Add('select sum(D.valor) as total from fornecedores F, docpagar D');
                  dm.Totaldocpagar.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.Totaldocpagar.SQL.Add('and (D.vencto>=CURDATE()) and');
                  dm.Totaldocpagar.SQL.Add('(D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(medtfinal.text,7,4)+'/'+copy(medtfinal.text,4,2)+'/'+
                  copy(medtfinal.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.open;
                  if dm.Totaldocpagartotal.Value>0 then
                     begin
                       vencer:=dm.Totaldocpagar['total'];
                       lbvencer.Caption:=formatfloat('#,##0.00',vencer);
                       lbaberto.Caption:=formatfloat('#,##0.00',vencidos+vencer);
                     end;

                  dm.docpagarGeral.Close;
                  dm.docpagarGeral.SQL.Clear;
                  dm.docpagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.docpagarGeral.SQL.Add('D.tipo,D.localcob,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docpagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.docpagarGeral.SQL.Add('from fornecedores F, docpagar D');
                  dm.docpagarGeral.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.docpagarGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(medtfinal.text,7,4)+'/'+copy(medtfinal.text,4,2)+'/'+
                  copy(medtfinal.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('order by D.vencto,nome');
                  dm.docpagarGeral.Open;
                end

             //Em aberto por emissao e tipo
             else if (MeDataFinal.text<>'  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (mefinal.text='  /  /    ') and
                (edfornecedorI.Text='') and
                (edccger.text='') and
                (cbtipoI.Text<>'') then
                begin
                  dm.Totaldocpagar.Close;
                  dm.Totaldocpagar.SQL.Clear;
                  dm.Totaldocpagar.SQL.Add('select sum(D.valor) as total from fornecedores F, docpagar D');
                  dm.Totaldocpagar.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.Totaldocpagar.SQL.Add('and (D.vencto<CURDATE()) and');
                  dm.Totaldocpagar.SQL.Add('(D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.open;
                  if dm.Totaldocpagartotal.Value>0 then
                     begin
                       vencidos:=dm.Totaldocpagar['total'];
                       lbvencidos.Caption:=formatfloat('#,##0.00',vencidos);
                       lbaberto.Caption:=formatfloat('#,##0.00',vencidos)
                     end;

                  dm.Totaldocpagar.Close;
                  dm.Totaldocpagar.SQL.Clear;
                  dm.Totaldocpagar.SQL.Add('select sum(D.valor) as total from fornecedores F, docpagar D');
                  dm.Totaldocpagar.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.Totaldocpagar.SQL.Add('and (D.vencto>=CURDATE()) and');
                  dm.Totaldocpagar.SQL.Add('(D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.open;
                  if dm.Totaldocpagartotal.Value>0 then
                     begin
                       vencer:=dm.Totaldocpagar['total'];
                       lbvencer.Caption:=formatfloat('#,##0.00',vencer);
                       lbaberto.Caption:=formatfloat('#,##0.00',vencidos+vencer);
                     end;

                  dm.docpagarGeral.Close;
                  dm.docpagarGeral.SQL.Clear;
                  dm.docpagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.docpagarGeral.SQL.Add('D.tipo,D.localcob,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docpagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.docpagarGeral.SQL.Add('from fornecedores F, docpagar D');
                  dm.docpagarGeral.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.docpagarGeral.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('order by D.vencto,nome');
                  dm.docpagarGeral.Open;
                end;
           end
           else
           begin
             //Liquidados por periodo
             if (mefinal.text<>'  /  /    ') and
                (MeDataFinal.text='  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (edccger.text='') and
                (edfornecedorI.text='') and
                (eddoc.text='') and
                (edvlrdoc.text='') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocpagar.Close;
                  dm.Totaldocpagar.SQL.Clear;
                  dm.Totaldocpagar.SQL.Add('select sum(D.valorpago) as total from fornecedores F, docpagar D');
                  dm.Totaldocpagar.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is not null)');
                  dm.Totaldocpagar.SQL.Add('and (D.pgto between '+chr(39)+
                  copy(meinicial.text,7,4)+'/'+copy(meinicial.text,4,2)+'/'+
                  copy(meinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeFinal.text,7,4)+'/'+copy(MeFinal.text,4,2)+'/'+
                  copy(MeFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.open;
                  if dm.Totaldocpagartotal.Value>0 then
                     lbliquidados.Caption:=formatfloat('#,##0.00',dm.Totaldocpagar['total'])
                  else
                     lbliquidados.Caption:='';

                  dm.docpagarGeral.Close;
                  dm.docpagarGeral.SQL.Clear;
                  dm.docpagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.docpagarGeral.SQL.Add('D.tipo,D.localcob,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docpagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.docpagarGeral.SQL.Add('from fornecedores F, docpagar D');
                  dm.docpagarGeral.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is not null)');
                  dm.docpagarGeral.SQL.Add('and (D.pgto between '+chr(39)+
                  copy(meinicial.text,7,4)+'/'+copy(meinicial.text,4,2)+'/'+
                  copy(meinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeFinal.text,7,4)+'/'+copy(MeFinal.text,4,2)+'/'+
                  copy(MeFinal.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('order by D.pgto');
                  dm.docpagarGeral.Open;
                end

             //Liquidados por periodo + conta gerencial
             else if (mefinal.text<>'  /  /    ') and
                (MeDataFinal.text='  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (edccger.text<>'') and
                (edfornecedorI.text='') and
                (eddoc.text='') and
                (edvlrdoc.text='') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocpagar.Close;
                  dm.Totaldocpagar.SQL.Clear;
                  dm.Totaldocpagar.SQL.Add('select sum(D.valorpago) as total from fornecedores F, docpagar D');
                  dm.Totaldocpagar.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is not null)');
                  dm.Totaldocpagar.SQL.Add('and (D.pgto between '+chr(39)+
                  copy(meinicial.text,7,4)+'/'+copy(meinicial.text,4,2)+'/'+
                  copy(meinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeFinal.text,7,4)+'/'+copy(MeFinal.text,4,2)+'/'+
                  copy(MeFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.sql.add('and (D.plconta like '+chr(39)+edccger.text+'%'+chr(39)+')');
                  dm.Totaldocpagar.open;
                  if dm.Totaldocpagartotal.Value>0 then
                     lbliquidados.Caption:=formatfloat('#,##0.00',dm.Totaldocpagar['total'])
                  else
                     lbliquidados.Caption:='';

                  dm.docpagarGeral.Close;
                  dm.docpagarGeral.SQL.Clear;
                  dm.docpagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.docpagarGeral.SQL.Add('D.tipo,D.localcob,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docpagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.docpagarGeral.SQL.Add('from fornecedores F, docpagar D');
                  dm.docpagarGeral.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is not null)');
                  dm.docpagarGeral.SQL.Add('and (D.pgto between '+chr(39)+
                  copy(meinicial.text,7,4)+'/'+copy(meinicial.text,4,2)+'/'+
                  copy(meinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeFinal.text,7,4)+'/'+copy(MeFinal.text,4,2)+'/'+
                  copy(MeFinal.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.sql.add('and (D.plconta like '+chr(39)+edccger.text+'%'+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('order by D.pgto');
                  dm.docpagarGeral.Open;
                end

             //Liquidados por periodo e fornecedor
             else if (mefinal.text<>'  /  /    ') and
                (MeDataFinal.text='  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (edfornecedorI.text<>'') and
                (eddoc.text='') and
                (edvlrdoc.text='') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocpagar.Close;
                  dm.Totaldocpagar.SQL.Clear;
                  dm.Totaldocpagar.SQL.Add('select sum(D.valorpago) as total from fornecedores F, docpagar D');
                  dm.Totaldocpagar.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is not null)');
                  dm.Totaldocpagar.SQL.Add('and (D.pgto between '+chr(39)+
                  copy(meinicial.text,7,4)+'/'+copy(meinicial.text,4,2)+'/'+
                  copy(meinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeFinal.text,7,4)+'/'+copy(MeFinal.text,4,2)+'/'+
                  copy(MeFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.SQL.Add('and (D.fornecedor = '+edfornecedorI.text+')');
                  dm.Totaldocpagar.open;
                  if dm.Totaldocpagartotal.Value>0 then
                     lbliquidados.Caption:=formatfloat('#,##0.00',dm.Totaldocpagar['total'])
                  else
                     lbliquidados.Caption:='';

                  dm.docpagarGeral.Close;
                  dm.docpagarGeral.SQL.Clear;
                  dm.docpagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.docpagarGeral.SQL.Add('D.tipo,D.localcob,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docpagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.docpagarGeral.SQL.Add('from fornecedores F, docpagar D');
                  dm.docpagarGeral.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is not null)');
                  dm.docpagarGeral.SQL.Add('and (D.pgto between '+chr(39)+
                  copy(meinicial.text,7,4)+'/'+copy(meinicial.text,4,2)+'/'+
                  copy(meinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeFinal.text,7,4)+'/'+copy(MeFinal.text,4,2)+'/'+
                  copy(MeFinal.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('and (D.fornecedor = '+edfornecedorI.text+')');
                  dm.docpagarGeral.SQL.Add('order by D.pgto');
                  dm.docpagarGeral.Open;
                end

             //Liquidados por periodo e tipo
             else if (mefinal.text<>'  /  /    ') and
                (MeDataFinal.text='  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (edfornecedorI.text='') and
                (eddoc.text='') and
                (edvlrdoc.text='') and
                (cbtipoI.Text<>'') then
                begin
                  dm.Totaldocpagar.Close;
                  dm.Totaldocpagar.SQL.Clear;
                  dm.Totaldocpagar.SQL.Add('select sum(D.valorpago) as total from fornecedores F, docpagar D');
                  dm.Totaldocpagar.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is not null)');
                  dm.Totaldocpagar.SQL.Add('and (D.pgto between '+chr(39)+
                  copy(meinicial.text,7,4)+'/'+copy(meinicial.text,4,2)+'/'+
                  copy(meinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeFinal.text,7,4)+'/'+copy(MeFinal.text,4,2)+'/'+
                  copy(MeFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.open;
                  if dm.Totaldocpagartotal.Value>0 then
                     lbliquidados.Caption:=formatfloat('#,##0.00',dm.Totaldocpagar['total'])
                  else
                     lbliquidados.Caption:='';

                  dm.docpagarGeral.Close;
                  dm.docpagarGeral.SQL.Clear;
                  dm.docpagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.docpagarGeral.SQL.Add('D.tipo,D.localcob,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docpagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.docpagarGeral.SQL.Add('from fornecedores F, docpagar D');
                  dm.docpagarGeral.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is not null)');
                  dm.docpagarGeral.SQL.Add('and (D.pgto between '+chr(39)+
                  copy(meinicial.text,7,4)+'/'+copy(meinicial.text,4,2)+'/'+
                  copy(meinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeFinal.text,7,4)+'/'+copy(MeFinal.text,4,2)+'/'+
                  copy(MeFinal.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('order by D.pgto');
                  dm.docpagarGeral.Open;
                end

             //Emitidos por periodo
             else if (mefinal.text='  /  /    ') and
                (MeDataFinal.text<>'  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (edfornecedorI.text='') and
                (chvaleI.Checked=false) and
                (eddoc.text='') and
                (edvlrdoc.text='') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocpagar.Close;
                  dm.Totaldocpagar.SQL.Clear;
                  dm.Totaldocpagar.SQL.Add('select sum(D.valor) as total from fornecedores F, docpagar D');
                  dm.Totaldocpagar.SQL.Add('where (D.fornecedor=F.codigo)');
                  dm.Totaldocpagar.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.open;
                  if dm.Totaldocpagartotal.Value>0 then
                     lbtotal.Caption:=formatfloat('#,##0.00',dm.Totaldocpagar['total'])
                  else
                     lbtotal.Caption:='';

                  dm.docpagarGeral.Close;
                  dm.docpagarGeral.SQL.Clear;
                  dm.docpagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.docpagarGeral.SQL.Add('D.tipo,D.localcob,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docpagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.docpagarGeral.SQL.Add('from fornecedores F, docpagar D');
                  dm.docpagarGeral.SQL.Add('where (D.fornecedor=F.codigo)');
                  dm.docpagarGeral.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('order by D.emissao');
                  dm.docpagarGeral.Open;
                end

             //Vale Emitidos por periodo
             else if (mefinal.text='  /  /    ') and
                (MeDataFinal.text<>'  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (edfornecedorI.text='') and
                (chvaleI.Checked=true) and
                (eddoc.text='') and
                (edvlrdoc.text='') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocpagar.Close;
                  dm.Totaldocpagar.SQL.Clear;
                  dm.Totaldocpagar.SQL.Add('select sum(D.valor) as total from fornecedores F, docpagar D');
                  dm.Totaldocpagar.SQL.Add('where (D.fornecedor=F.codigo)');
                  dm.Totaldocpagar.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.SQL.Add('and (D.vale ='+chr(39)+'S'+chr(39)+')');
                  dm.Totaldocpagar.open;
                  if dm.Totaldocpagartotal.Value>0 then
                     lbtotal.Caption:=formatfloat('#,##0.00',dm.Totaldocpagar['total'])
                  else
                     lbtotal.Caption:='';

                  dm.docpagarGeral.Close;
                  dm.docpagarGeral.SQL.Clear;
                  dm.docpagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.docpagarGeral.SQL.Add('D.tipo,D.localcob,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docpagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.docpagarGeral.SQL.Add('from fornecedores F, docpagar D');
                  dm.docpagarGeral.SQL.Add('where (D.fornecedor=F.codigo)');
                  dm.docpagarGeral.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('and (D.vale ='+chr(39)+'S'+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('order by D.emissao');
                  dm.docpagarGeral.Open;
                end

             //Emitidos por periodo e fornecedor
             else if (MeDataFinal.text<>'  /  /    ') and
                (MeFinal.text='  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (eddoc.text='') and
                (edvlrdoc.text='') and
                (edfornecedorI.text<>'') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocpagar.Close;
                  dm.Totaldocpagar.SQL.Clear;
                  dm.Totaldocpagar.SQL.Add('select sum(D.valor) as total from fornecedores F, docpagar D');
                  dm.Totaldocpagar.SQL.Add('where (D.fornecedor=F.codigo)');
                  dm.Totaldocpagar.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.SQL.Add('and (D.fornecedor = '+edfornecedorI.text+')');
                  dm.Totaldocpagar.open;
                  if dm.Totaldocpagartotal.Value>0 then
                     lbtotal.Caption:=formatfloat('#,##0.00',dm.Totaldocpagar['total'])
                  else
                     lbtotal.Caption:='';

                  dm.docpagarGeral.Close;
                  dm.docpagarGeral.SQL.Clear;
                  dm.docpagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.docpagarGeral.SQL.Add('D.tipo,D.localcob,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docpagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.docpagarGeral.SQL.Add('from fornecedores F, docpagar D');
                  dm.docpagarGeral.SQL.Add('where (D.fornecedor=F.codigo)');
                  dm.docpagarGeral.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('and (D.fornecedor = '+edfornecedorI.text+')');
                  dm.docpagarGeral.SQL.Add('order by D.emissao');
                  dm.docpagarGeral.Open;
                end

             //Emitidos e Liquidados por periodo e fornecedor
             else if (MeDataFinal.text<>'  /  /    ') and
                (MeFinal.text<>'  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (eddoc.text='') and
                (edvlrdoc.text='') and
                (edfornecedorI.text<>'') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocpagar.Close;
                  dm.Totaldocpagar.SQL.Clear;
                  dm.Totaldocpagar.SQL.Add('select sum(D.valor) as total from fornecedores F, docpagar D');
                  dm.Totaldocpagar.SQL.Add('where (D.fornecedor=F.codigo)');
                  dm.Totaldocpagar.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.SQL.Add('and (D.pgto between '+chr(39)+
                  copy(meinicial.text,7,4)+'/'+copy(meinicial.text,4,2)+'/'+
                  copy(meinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeFinal.text,7,4)+'/'+copy(MeFinal.text,4,2)+'/'+
                  copy(MeFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.SQL.Add('and (D.fornecedor = '+edfornecedorI.text+')');
                  dm.Totaldocpagar.open;
                  if dm.Totaldocpagartotal.Value>0 then
                     lbtotal.Caption:=formatfloat('#,##0.00',dm.Totaldocpagar['total'])
                  else
                     lbtotal.Caption:='';

                  dm.docpagarGeral.Close;
                  dm.docpagarGeral.SQL.Clear;
                  dm.docpagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.docpagarGeral.SQL.Add('D.tipo,D.localcob,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docpagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.docpagarGeral.SQL.Add('from fornecedores F, docpagar D');
                  dm.docpagarGeral.SQL.Add('where (D.fornecedor=F.codigo)');
                  dm.docpagarGeral.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('and (D.pgto between '+chr(39)+
                  copy(meinicial.text,7,4)+'/'+copy(meinicial.text,4,2)+'/'+
                  copy(meinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeFinal.text,7,4)+'/'+copy(MeFinal.text,4,2)+'/'+
                  copy(MeFinal.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('and (D.fornecedor = '+edfornecedorI.text+')');
                  dm.docpagarGeral.SQL.Add('order by D.emissao');
                  dm.docpagarGeral.Open;
                end

             //Emitidos por periodo e tipo
             else if (MeDataFinal.text<>'  /  /    ') and
                (MeFinal.text='  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (edfornecedorI.text='') and
                (eddoc.text='') and
                (edvlrdoc.text='') and
                (cbtipoI.Text<>'') then
                begin
                  dm.Totaldocpagar.Close;
                  dm.Totaldocpagar.SQL.Clear;
                  dm.Totaldocpagar.SQL.Add('select sum(D.valor) as total from fornecedores F, docpagar D');
                  dm.Totaldocpagar.SQL.Add('where (D.fornecedor=F.codigo)');
                  dm.Totaldocpagar.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.open;
                  if dm.Totaldocpagartotal.Value>0 then
                     lbtotal.Caption:=formatfloat('#,##0.00',dm.Totaldocpagar['total'])
                  else
                     lbtotal.Caption:='';

                  dm.docpagarGeral.Close;
                  dm.docpagarGeral.SQL.Clear;
                  dm.docpagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.docpagarGeral.SQL.Add('D.tipo,D.localcob,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docpagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.docpagarGeral.SQL.Add('from fornecedores F, docpagar D');
                  dm.docpagarGeral.SQL.Add('where (D.fornecedor=F.codigo)');
                  dm.docpagarGeral.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('order by D.emissao');
                  dm.docpagarGeral.Open;
                end

             //Vencimento no periodo
             else if (mefinal.text='  /  /    ') and
                (MeDataFinal.text='  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (eddoc.text='') and
                (edvlrdoc.text='') and
                (edccger.text='') and
                (edfornecedorI.text='') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocpagar.Close;
                  dm.Totaldocpagar.SQL.Clear;
                  dm.Totaldocpagar.SQL.Add('select sum(D.valor) as total from fornecedores F, docpagar D');
                  dm.Totaldocpagar.SQL.Add('where (D.fornecedor=F.codigo)');
                  dm.Totaldocpagar.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(MeDtInicial.text,7,4)+'/'+copy(MeDtInicial.text,4,2)+'/'+
                  copy(MeDtInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(medtfinal.text,7,4)+'/'+copy(medtfinal.text,4,2)+'/'+
                  copy(medtfinal.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.open;
                  if dm.Totaldocpagartotal.Value>0 then
                     lbtotal.Caption:=formatfloat('#,##0.00',dm.Totaldocpagar['total'])
                  else
                     lbtotal.Caption:='';

                  dm.docpagarGeral.Close;
                  dm.docpagarGeral.SQL.Clear;
                  dm.docpagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.docpagarGeral.SQL.Add('D.tipo,D.localcob,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docpagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.docpagarGeral.SQL.Add('from fornecedores F, docpagar D');
                  dm.docpagarGeral.SQL.Add('where (D.fornecedor=F.codigo)');
                  dm.docpagarGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(MeDtInicial.text,7,4)+'/'+copy(MeDtInicial.text,4,2)+'/'+
                  copy(MeDtInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(medtfinal.text,7,4)+'/'+copy(medtfinal.text,4,2)+'/'+
                  copy(medtfinal.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('order by D.vencto,nome');
                  dm.docpagarGeral.Open;
                end

             //Vencimento no periodo + conta gerencial
             else if (mefinal.text='  /  /    ') and
                (MeDataFinal.text='  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (eddoc.text='') and
                (edvlrdoc.text='') and
                (edccger.text<>'') and
                (edfornecedorI.text='') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocpagar.Close;
                  dm.Totaldocpagar.SQL.Clear;
                  dm.Totaldocpagar.SQL.Add('select sum(D.valor) as total from fornecedores F, docpagar D');
                  dm.Totaldocpagar.SQL.Add('where (D.fornecedor=F.codigo)');
                  dm.Totaldocpagar.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(MeDtInicial.text,7,4)+'/'+copy(MeDtInicial.text,4,2)+'/'+
                  copy(MeDtInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(medtfinal.text,7,4)+'/'+copy(medtfinal.text,4,2)+'/'+
                  copy(medtfinal.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.sql.add('and (D.plconta like '+chr(39)+edccger.text+'%'+chr(39)+')');
                  dm.Totaldocpagar.open;
                  if dm.Totaldocpagartotal.Value>0 then
                     lbtotal.Caption:=formatfloat('#,##0.00',dm.Totaldocpagar['total'])
                  else
                     lbtotal.Caption:='';

                  dm.docpagarGeral.Close;
                  dm.docpagarGeral.SQL.Clear;
                  dm.docpagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.docpagarGeral.SQL.Add('D.tipo,D.localcob,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docpagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.docpagarGeral.SQL.Add('from fornecedores F, docpagar D');
                  dm.docpagarGeral.SQL.Add('where (D.fornecedor=F.codigo)');
                  dm.docpagarGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(MeDtInicial.text,7,4)+'/'+copy(MeDtInicial.text,4,2)+'/'+
                  copy(MeDtInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(medtfinal.text,7,4)+'/'+copy(medtfinal.text,4,2)+'/'+
                  copy(medtfinal.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.sql.add('and (D.plconta like '+chr(39)+edccger.text+'%'+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('order by D.vencto,nome');
                  dm.docpagarGeral.Open;
                end

             //Vencimento no periodo por fornecedor
             else if (mefinal.text='  /  /    ') and
                (MeDataFinal.text='  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (eddoc.text='') and
                (edvlrdoc.text='') and
                (edfornecedorI.text<>'') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocpagar.Close;
                  dm.Totaldocpagar.SQL.Clear;
                  dm.Totaldocpagar.SQL.Add('select sum(D.valor) as total from fornecedores F, docpagar D');
                  dm.Totaldocpagar.SQL.Add('where (D.fornecedor=F.codigo)');
                  dm.Totaldocpagar.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(MeDtInicial.text,7,4)+'/'+copy(MeDtInicial.text,4,2)+'/'+
                  copy(MeDtInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(medtfinal.text,7,4)+'/'+copy(medtfinal.text,4,2)+'/'+
                  copy(medtfinal.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.SQL.Add('and (D.fornecedor = '+edfornecedorI.text+')');
                  dm.Totaldocpagar.open;
                  if dm.Totaldocpagartotal.Value>0 then
                     lbtotal.Caption:=formatfloat('#,##0.00',dm.Totaldocpagar['total'])
                  else
                     lbtotal.Caption:='';

                  dm.docpagarGeral.Close;
                  dm.docpagarGeral.SQL.Clear;
                  dm.docpagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.docpagarGeral.SQL.Add('D.tipo,D.localcob,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docpagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.docpagarGeral.SQL.Add('from fornecedores F, docpagar D');
                  dm.docpagarGeral.SQL.Add('where (D.fornecedor=F.codigo)');
                  dm.docpagarGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(MeDtInicial.text,7,4)+'/'+copy(MeDtInicial.text,4,2)+'/'+
                  copy(MeDtInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(medtfinal.text,7,4)+'/'+copy(medtfinal.text,4,2)+'/'+
                  copy(medtfinal.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('and (D.fornecedor = '+edfornecedorI.text+')');
                  dm.docpagarGeral.SQL.Add('order by D.vencto,nome');
                  dm.docpagarGeral.Open;
                end

             //Vencimento no periodo por tipo
             else if (mefinal.text='  /  /    ') and
                (MeDataFinal.text='  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (eddoc.text='') and
                (edvlrdoc.text='') and
                (edfornecedorI.text='') and
                (cbtipoI.Text<>'') then
                begin
                  dm.Totaldocpagar.Close;
                  dm.Totaldocpagar.SQL.Clear;
                  dm.Totaldocpagar.SQL.Add('select sum(D.valor) as total from fornecedores F, docpagar D');
                  dm.Totaldocpagar.SQL.Add('where (D.fornecedor=F.codigo)');
                  dm.Totaldocpagar.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(MeDtInicial.text,7,4)+'/'+copy(MeDtInicial.text,4,2)+'/'+
                  copy(MeDtInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(medtfinal.text,7,4)+'/'+copy(medtfinal.text,4,2)+'/'+
                  copy(medtfinal.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.open;
                  if dm.Totaldocpagartotal.Value>0 then
                     lbtotal.Caption:=formatfloat('#,##0.00',dm.Totaldocpagar['total'])
                  else
                     lbtotal.Caption:='';

                  dm.docpagarGeral.Close;
                  dm.docpagarGeral.SQL.Clear;
                  dm.docpagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.docpagarGeral.SQL.Add('D.tipo,D.localcob,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docpagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.docpagarGeral.SQL.Add('from fornecedores F, docpagar D');
                  dm.docpagarGeral.SQL.Add('where (D.fornecedor=F.codigo)');
                  dm.docpagarGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(MeDtInicial.text,7,4)+'/'+copy(MeDtInicial.text,4,2)+'/'+
                  copy(MeDtInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(medtfinal.text,7,4)+'/'+copy(medtfinal.text,4,2)+'/'+
                  copy(medtfinal.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('order by D.vencto,nome');
                  dm.docpagarGeral.Open;
                end

             //Emitidos com Vencimento
             else if (mefinal.text='  /  /    ') and
                (MeDataFinal.text<>'  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (edfornecedorI.text='') and
                (eddoc.text='') and
                (edvlrdoc.text='') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocpagar.Close;
                  dm.Totaldocpagar.SQL.Clear;
                  dm.Totaldocpagar.SQL.Add('select sum(D.valor) as total from fornecedores F, docpagar D');
                  dm.Totaldocpagar.SQL.Add('where (D.fornecedor=F.codigo)');
                  dm.Totaldocpagar.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(MeDtInicial.text,7,4)+'/'+copy(MeDtInicial.text,4,2)+'/'+
                  copy(MeDtInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.open;
                  if dm.Totaldocpagartotal.Value>0 then
                     lbtotal.Caption:=formatfloat('#,##0.00',dm.Totaldocpagar['total'])
                  else
                     lbtotal.Caption:='';

                  dm.docpagarGeral.Close;
                  dm.docpagarGeral.SQL.Clear;
                  dm.docpagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.docpagarGeral.SQL.Add('D.tipo,D.localcob,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docpagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.docpagarGeral.SQL.Add('from fornecedores F, docpagar D');
                  dm.docpagarGeral.SQL.Add('where (D.fornecedor=F.codigo)');
                  dm.docpagarGeral.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(MeDtInicial.text,7,4)+'/'+copy(MeDtInicial.text,4,2)+'/'+
                  copy(MeDtInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('order by D.emissao');
                  dm.docpagarGeral.Open;
                end

             //Emitidos com Vencimento e Pagamento
             else if (mefinal.text<>'  /  /    ') and
                (MeDataFinal.text<>'  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (edfornecedorI.text='') and
                (eddoc.text='') and
                (edvlrdoc.text='') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocpagar.Close;
                  dm.Totaldocpagar.SQL.Clear;
                  dm.Totaldocpagar.SQL.Add('select sum(D.valor) as total from fornecedores F, docpagar D');
                  dm.Totaldocpagar.SQL.Add('where (D.fornecedor=F.codigo)');
                  dm.Totaldocpagar.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(MeDtInicial.text,7,4)+'/'+copy(MeDtInicial.text,4,2)+'/'+
                  copy(MeDtInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.SQL.Add('and (D.pgto between '+chr(39)+
                  copy(meinicial.text,7,4)+'/'+copy(meinicial.text,4,2)+'/'+
                  copy(meinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeFinal.text,7,4)+'/'+copy(MeFinal.text,4,2)+'/'+
                  copy(MeFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.open;
                  if dm.Totaldocpagartotal.Value>0 then
                     lbtotal.Caption:=formatfloat('#,##0.00',dm.Totaldocpagar['total'])
                  else
                     lbtotal.Caption:='';

                  dm.docpagarGeral.Close;
                  dm.docpagarGeral.SQL.Clear;
                  dm.docpagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.docpagarGeral.SQL.Add('D.tipo,D.localcob,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docpagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.docpagarGeral.SQL.Add('from fornecedores F, docpagar D');
                  dm.docpagarGeral.SQL.Add('where (D.fornecedor=F.codigo)');
                  dm.docpagarGeral.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(MeDtInicial.text,7,4)+'/'+copy(MeDtInicial.text,4,2)+'/'+
                  copy(MeDtInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('and (D.pgto between '+chr(39)+
                  copy(meinicial.text,7,4)+'/'+copy(meinicial.text,4,2)+'/'+
                  copy(meinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeFinal.text,7,4)+'/'+copy(MeFinal.text,4,2)+'/'+
                  copy(MeFinal.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('order by D.emissao');
                  dm.docpagarGeral.Open;
                end

             //Emitidos com Vencimento e Pagamento por Fornecedor
             else if (mefinal.text<>'  /  /    ') and
                (MeDataFinal.text<>'  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (edfornecedorI.text<>'') and
                (eddoc.text='') and
                (edvlrdoc.text='') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocpagar.Close;
                  dm.Totaldocpagar.SQL.Clear;
                  dm.Totaldocpagar.SQL.Add('select sum(D.valor) as total from fornecedores F, docpagar D');
                  dm.Totaldocpagar.SQL.Add('where (D.fornecedor=F.codigo)');
                  dm.Totaldocpagar.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(MeDtInicial.text,7,4)+'/'+copy(MeDtInicial.text,4,2)+'/'+
                  copy(MeDtInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.SQL.Add('and (D.pgto between '+chr(39)+
                  copy(meinicial.text,7,4)+'/'+copy(meinicial.text,4,2)+'/'+
                  copy(meinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeFinal.text,7,4)+'/'+copy(MeFinal.text,4,2)+'/'+
                  copy(MeFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.SQL.Add('and (D.fornecedor = '+edfornecedorI.text+')');
                  dm.Totaldocpagar.open;
                  if dm.Totaldocpagartotal.Value>0 then
                     lbtotal.Caption:=formatfloat('#,##0.00',dm.Totaldocpagar['total'])
                  else
                     lbtotal.Caption:='';

                  dm.docpagarGeral.Close;
                  dm.docpagarGeral.SQL.Clear;
                  dm.docpagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.docpagarGeral.SQL.Add('D.tipo,D.localcob,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docpagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.docpagarGeral.SQL.Add('from fornecedores F, docpagar D');
                  dm.docpagarGeral.SQL.Add('where (D.fornecedor=F.codigo)');
                  dm.docpagarGeral.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(MeDtInicial.text,7,4)+'/'+copy(MeDtInicial.text,4,2)+'/'+
                  copy(MeDtInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('and (D.pgto between '+chr(39)+
                  copy(meinicial.text,7,4)+'/'+copy(meinicial.text,4,2)+'/'+
                  copy(meinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeFinal.text,7,4)+'/'+copy(MeFinal.text,4,2)+'/'+
                  copy(MeFinal.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('and (D.fornecedor = '+edfornecedorI.text+')');
                  dm.docpagarGeral.SQL.Add('order by D.emissao');
                  dm.docpagarGeral.Open;
                end

             //Emitidos com Vencimento por fornecedor
             else if (mefinal.text='  /  /    ') and
                (MeDataFinal.text<>'  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (eddoc.text='') and
                (edvlrdoc.text='') and
                (edfornecedorI.text<>'') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocpagar.Close;
                  dm.Totaldocpagar.SQL.Clear;
                  dm.Totaldocpagar.SQL.Add('select sum(D.valor) as total from fornecedores F, docpagar D');
                  dm.Totaldocpagar.SQL.Add('where (D.fornecedor=F.codigo)');
                  dm.Totaldocpagar.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(MeDtInicial.text,7,4)+'/'+copy(MeDtInicial.text,4,2)+'/'+
                  copy(MeDtInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.SQL.Add('and (D.fornecedor = '+edfornecedorI.text+')');
                  dm.Totaldocpagar.open;
                  if dm.Totaldocpagartotal.Value>0 then
                     lbtotal.Caption:=formatfloat('#,##0.00',dm.Totaldocpagar['total'])
                  else
                     lbtotal.Caption:='';

                  dm.docpagarGeral.Close;
                  dm.docpagarGeral.SQL.Clear;
                  dm.docpagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.docpagarGeral.SQL.Add('D.tipo,D.localcob,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docpagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.docpagarGeral.SQL.Add('from fornecedores F, docpagar D');
                  dm.docpagarGeral.SQL.Add('where (D.fornecedor=F.codigo)');
                  dm.docpagarGeral.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(MeDtInicial.text,7,4)+'/'+copy(MeDtInicial.text,4,2)+'/'+
                  copy(MeDtInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('and (D.fornecedor = '+edfornecedorI.text+')');
                  dm.docpagarGeral.SQL.Add('order by D.emissao');
                  dm.docpagarGeral.Open;
                end

             //por fornecedor
             else if (mefinal.text='  /  /    ') and
                (MeDataFinal.text='  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (eddoc.text='') and
                (edvlrdoc.text='') and
                (edfornecedorI.text<>'') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocpagar.Close;
                  dm.Totaldocpagar.SQL.Clear;
                  dm.Totaldocpagar.SQL.Add('select sum(D.valor) as total from fornecedores F, docpagar D');
                  dm.Totaldocpagar.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.Totaldocpagar.SQL.Add('and (D.vencto<CURDATE()) and');
                  dm.Totaldocpagar.SQL.Add('(D.fornecedor = '+edfornecedorI.text+')');
                  dm.Totaldocpagar.open;
                  if dm.Totaldocpagartotal.Value>0 then
                     lbvencidos.Caption:=formatfloat('#,##0.00',dm.Totaldocpagar['total'])
                  else
                     lbvencidos.Caption:='';

                  dm.Totaldocpagar.Close;
                  dm.Totaldocpagar.SQL.Clear;
                  dm.Totaldocpagar.SQL.Add('select sum(D.valor) as total from fornecedores F, docpagar D');
                  dm.Totaldocpagar.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.Totaldocpagar.SQL.Add('and (D.vencto>=CURDATE()) and');
                  dm.Totaldocpagar.SQL.Add('(D.fornecedor = '+edfornecedorI.text+')');
                  dm.Totaldocpagar.open;
                  if dm.Totaldocpagartotal.Value>0 then
                     lbvencer.Caption:=formatfloat('#,##0.00',dm.Totaldocpagar['total'])
                  else
                     lbvencer.Caption:='';

                  dm.Totaldocpagar.Close;
                  dm.Totaldocpagar.SQL.Clear;
                  dm.Totaldocpagar.SQL.Add('select sum(D.valor) as total from fornecedores F, docpagar D');
                  dm.Totaldocpagar.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.Totaldocpagar.SQL.Add('and (D.fornecedor = '+edfornecedorI.text+')');
                  dm.Totaldocpagar.open;
                  if dm.Totaldocpagartotal.Value>0 then
                     lbaberto.Caption:=formatfloat('#,##0.00',dm.Totaldocpagar['total'])
                  else
                     lbaberto.Caption:='';

                  dm.Totaldocpagar.Close;
                  dm.Totaldocpagar.SQL.Clear;
                  dm.Totaldocpagar.SQL.Add('select sum(D.valor) as total from fornecedores F, docpagar D');
                  dm.Totaldocpagar.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is not null)');
                  dm.Totaldocpagar.SQL.Add('and (D.fornecedor = '+edfornecedorI.text+')');
                  dm.Totaldocpagar.open;
                  if dm.Totaldocpagartotal.Value>0 then
                     lbliquidados.Caption:=formatfloat('#,##0.00',dm.Totaldocpagar['total'])
                  else
                     lbliquidados.Caption:='';

                  dm.Totaldocpagar.Close;
                  dm.Totaldocpagar.SQL.Clear;
                  dm.Totaldocpagar.SQL.Add('select sum(D.valor) as total from fornecedores F, docpagar D');
                  dm.Totaldocpagar.SQL.Add('where (D.fornecedor=F.codigo)');
                  dm.Totaldocpagar.SQL.Add('and (D.fornecedor = '+edfornecedorI.text+')');
                  dm.Totaldocpagar.open;
                  if dm.Totaldocpagartotal.Value>0 then
                     lbtotal.Caption:=formatfloat('#,##0.00',dm.Totaldocpagar['total'])
                  else
                     lbtotal.Caption:='';

                  dm.docpagarGeral.Close;
                  dm.docpagarGeral.SQL.Clear;
                  dm.docpagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.docpagarGeral.SQL.Add('D.tipo,D.localcob,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docpagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.docpagarGeral.SQL.Add('from fornecedores F, docpagar D');
                  dm.docpagarGeral.SQL.Add('where (D.fornecedor=F.codigo)');
                  dm.docpagarGeral.SQL.Add('and (D.fornecedor = '+edfornecedorI.text+')');
                  dm.docpagarGeral.SQL.Add('order by D.vencto,nome');
                  dm.docpagarGeral.Open;
                end

             //por Vlr Documento
             else if (mefinal.text='  /  /    ') and
                (MeDataFinal.text='  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (edfornecedorI.text='') and
                (eddoc.text='') and
                (edvlrdoc.text<>'') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocpagar.Close;
                  dm.Totaldocpagar.SQL.Clear;
                  dm.Totaldocpagar.SQL.Add('select sum(D.valor) as total from fornecedores F, docpagar D');
                  dm.Totaldocpagar.SQL.Add('where (D.fornecedor=F.codigo)');
                  dm.Totaldocpagar.SQL.Add('and (D.valor ='+InserePonto(edvlrdoc.text)+')');
                  dm.Totaldocpagar.open;
                  if dm.Totaldocpagartotal.Value>0 then
                     lbtotal.Caption:=formatfloat('#,##0.00',dm.Totaldocpagar['total'])
                  else
                     lbtotal.Caption:='';

                  dm.docpagarGeral.Close;
                  dm.docpagarGeral.SQL.Clear;
                  dm.docpagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.docpagarGeral.SQL.Add('D.tipo,D.localcob,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docpagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.docpagarGeral.SQL.Add('from fornecedores F, docpagar D');
                  dm.docpagarGeral.SQL.Add('where (D.fornecedor=F.codigo)');
                  dm.docpagarGeral.SQL.Add('and (D.valor ='+InserePonto(edvlrdoc.text)+')');
                  dm.docpagarGeral.SQL.Add('order by D.emissao');
                  dm.docpagarGeral.Open;
                end

             //Emitidos com Vencimento por tipo
             else if (mefinal.text<>'  /  /    ') and
                (MeDataFinal.text<>'  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (edfornecedorI.text='') and
                (eddoc.text='') and
                (edvlrdoc.text='') and
                (cbtipoI.Text<>'') then
                begin
                  dm.Totaldocpagar.Close;
                  dm.Totaldocpagar.SQL.Clear;
                  dm.Totaldocpagar.SQL.Add('select sum(D.valor) as total from fornecedores F, docpagar D');
                  dm.Totaldocpagar.SQL.Add('where (D.fornecedor=F.codigo)');
                  dm.Totaldocpagar.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(MeDtInicial.text,7,4)+'/'+copy(MeDtInicial.text,4,2)+'/'+
                  copy(MeDtInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.Totaldocpagar.open;
                  if dm.Totaldocpagartotal.Value>0 then
                     lbtotal.Caption:=formatfloat('#,##0.00',dm.Totaldocpagar['total'])
                  else
                     lbtotal.Caption:='';

                  dm.docpagarGeral.Close;
                  dm.docpagarGeral.SQL.Clear;
                  dm.docpagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.docpagarGeral.SQL.Add('D.tipo,D.localcob,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docpagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.docpagarGeral.SQL.Add('from fornecedores F, docpagar D');
                  dm.docpagarGeral.SQL.Add('where (D.fornecedor=F.codigo)');
                  dm.docpagarGeral.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(MeDtInicial.text,7,4)+'/'+copy(MeDtInicial.text,4,2)+'/'+
                  copy(MeDtInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('order by D.emissao');
                  dm.docpagarGeral.Open;
                end

             //Por Documento
             else if (mefinal.text='  /  /    ') and
                (MeDataFinal.text='  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (edfornecedorI.text='') and
                (eddoc.text<>'') and
                (edvlrdoc.text='') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocpagar.Close;
                  dm.Totaldocpagar.SQL.Clear;
                  dm.Totaldocpagar.SQL.Add('select sum(D.valor) as total from fornecedores F, docpagar D');
                  dm.Totaldocpagar.SQL.Add('where (D.fornecedor=F.codigo)');
                  dm.Totaldocpagar.SQL.Add('and (D.doc like '+chr(39)+eddoc.text+'%'+chr(39)+')');
                  dm.Totaldocpagar.open;
                  if dm.Totaldocpagartotal.Value>0 then
                     lbtotal.Caption:=formatfloat('#,##0.00',dm.Totaldocpagar['total'])
                  else
                     lbtotal.Caption:='';

                  dm.docpagarGeral.Close;
                  dm.docpagarGeral.SQL.Clear;
                  dm.docpagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.docpagarGeral.SQL.Add('D.tipo,D.localcob,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docpagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.docpagarGeral.SQL.Add('from fornecedores F, docpagar D');
                  dm.docpagarGeral.SQL.Add('where (D.fornecedor=F.codigo)');
                  dm.docpagarGeral.SQL.Add('and (D.doc like '+chr(39)+eddoc.text+'%'+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('order by D.emissao');
                  dm.docpagarGeral.Open;
                end

             //Por Autoriza��o
             else if (mefinal.text='  /  /    ') and
                (MeDataFinal.text='  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (edfornecedorI.text='') and
                (eddoc.text='') and
                (edautorizacao.text<>'') and
                (edvlrdoc.text='') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocpagar.Close;
                  dm.Totaldocpagar.SQL.Clear;
                  dm.Totaldocpagar.SQL.Add('select sum(D.valor) as total from fornecedores F, docpagar D');
                  dm.Totaldocpagar.SQL.Add('where (D.fornecedor=F.codigo)');
                  dm.Totaldocpagar.SQL.Add('and (D.autorizacao = '+chr(39)+edautorizacao.text+chr(39)+')');
                  dm.Totaldocpagar.open;
                  if dm.Totaldocpagartotal.Value>0 then
                     lbtotal.Caption:=formatfloat('#,##0.00',dm.Totaldocpagar['total'])
                  else
                     lbtotal.Caption:='';

                  dm.docpagarGeral.Close;
                  dm.docpagarGeral.SQL.Clear;
                  dm.docpagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.docpagarGeral.SQL.Add('D.tipo,D.localcob,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docpagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.docpagarGeral.SQL.Add('from fornecedores F, docpagar D');
                  dm.docpagarGeral.SQL.Add('where (D.fornecedor=F.codigo)');
                  dm.docpagarGeral.SQL.Add('and (D.autorizacao = '+chr(39)+edautorizacao.text+chr(39)+')');
                  dm.docpagarGeral.SQL.Add('order by D.emissao');
                  dm.docpagarGeral.Open;
                end;

           end;
end;

procedure TFrmPagar.edfornecedorIExit(Sender: TObject);
begin
      if edfornecedorI.Text<>'' then
         begin
            dm.fornecedores.close;
            dm.fornecedores.sql.clear;
            dm.fornecedores.sql.add('select * from fornecedores');
            dm.fornecedores.sql.add('where codigo = '+edfornecedorI.text);
            dm.fornecedores.open;
            if dm.fornecedores.RecordCount<1 then
               begin
                 application.MessageBox('Fornecedor n�o Localizado','Aten��o',mb_ok+mb_iconinformation);
                 edfornecedorI.SetFocus;
               end
               else
                 lbfornecedorI.Caption:=dm.fornecedoresnome.value;
         end
         else
           lbfornecedorI.Caption:='';
end;

procedure TFrmPagar.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
      if (dm.docpagarGeralpgto.isnull) and (dm.docpagargeralVencto.value<date) then
      Dbgrid1.Canvas.Font.Color:= clred;
      Dbgrid1.DefaultDrawDataCell(Rect, dbgrid1.columns[datacol].field, State);
      if dm.docpagarGeralAutorizado.Value='S' then
         Dbgrid1.Canvas.Font.Style:= [fsbold]
      else
         Dbgrid1.Canvas.Font.Style:= [];
      if (dm.docpagarGeralpgto.isnull) and (dm.docpagargeralVencto.value>=date) then
      Dbgrid1.Canvas.Font.Color:= clblack;
      Dbgrid1.DefaultDrawDataCell(Rect, dbgrid1.columns[datacol].field, State);
      Dbgrid1.Canvas.Font.Style:=[];
      if dm.docpagarGeralAutorizado.Value='S' then
         Dbgrid1.Canvas.Font.Style:= [fsbold]
      else
         Dbgrid1.Canvas.Font.Style:= [];
      if not dm.docpagarGeralpgto.isnull then
      Dbgrid1.Canvas.Font.Color:= clblue;
      Dbgrid1.DefaultDrawDataCell(Rect, dbgrid1.columns[datacol].field, State);
      Dbgrid1.Canvas.Font.Style:=[];
      Dbgrid1.Canvas.Font.Style:= [];
end;

procedure TFrmPagar.cbcontaEnter(Sender: TObject);
begin
  cbconta.Color:=$0080FFFF;
end;

procedure TFrmPagar.cbplanocontaEnter(Sender: TObject);
begin
  cbplanoconta.Color:=$0080FFFF;
end;

procedure TFrmPagar.cbplanojurosEnter(Sender: TObject);
begin
  cbplanojuros.Color:=$0080FFFF;
end;

procedure TFrmPagar.mepagtoEnter(Sender: TObject);
begin
  mepagto.Color:=$0080FFFF;
      if mepagto.text='  /  /    ' then
         begin
           mepagto.Text:=DateToStr(date);
           mepagto.SelStart:=0;
           mepagto.SelLength:=length(mepagto.Text);
         end;
end;

procedure TFrmPagar.btrelatorioClick(Sender: TObject);
begin
      PageControl1.ActivePageIndex := 1;
end;

procedure TFrmPagar.cbplcontaExit(Sender: TObject);
begin
      if cbplconta.Text<>'' then
         begin
            dm.planocontas.Open;
            if not dm.planocontas.Locate('chave',cbplconta.Text,[]) then
               begin
                 application.MessageBox('Conta n�o Cadastrada','Aten��o',mb_ok+mb_iconinformation);
                 cbplconta.SetFocus;
               end
               else
               begin
                 if length(dm.planocontascodigo.Value)<8 then
                    begin
                      application.MessageBox('Conta inv�lida. Escolha outra conta','Aten��o',mb_ok+mb_iconinformation);
                      cbplconta.SetFocus;
                    end;
               end;
         end;
  cbplconta.Color:=clWindow;
end;

procedure TFrmPagar.medtinicialExit(Sender: TObject);
begin
        if medtinicial.text<>'  /  /    ' then
        begin
        Try
           StrToDate(medtinicial.Text) ;
        Except
        begin
           application.MessageBox('Data Inv�lida!','Aten��o',mb_Ok+mb_iconerror);
           medtinicial.setfocus;
        end;
        end;
        end;
end;

procedure TFrmPagar.medtfinalExit(Sender: TObject);
begin
        if medtfinal.text<>'  /  /    ' then
        begin
        Try
           StrToDate(medtfinal.Text) ;
           If StrToDate(MeDtInicial.Text) > StrToDate(medtfinal.Text) then
              Begin
                 MessageBox(Handle, 'Data inferior � data inicial de pesquisa!!', 'Aten��o', mb_IconWarning or mb_Ok);
                 medtfinal.SetFocus;
              End;
        Except
        begin
           application.MessageBox('Data Inv�lida!','Aten��o',mb_Ok+mb_iconerror);
           medtfinal.setfocus;
        end;
        end;
        end;
end;

procedure TFrmPagar.meinicialExit(Sender: TObject);
begin
        if meinicial.text<>'  /  /    ' then
        begin
        Try
           StrToDate(meinicial.Text) ;
        Except
        begin
           application.MessageBox('Data Inv�lida!','Aten��o',mb_Ok+mb_iconerror);
           meinicial.setfocus;
        end;
        end;
        end;
end;

procedure TFrmPagar.mefinalExit(Sender: TObject);
begin
        if mefinal.text<>'  /  /    ' then
        begin
        Try
           StrToDate(mefinal.Text) ;
           If StrToDate(MeInicial.Text) > StrToDate(mefinal.Text) then
              Begin
                 MessageBox(Handle, 'Data inferior � data inicial de pesquisa!!', 'Aten��o', mb_IconWarning or mb_Ok);
                 mefinal.SetFocus;
              End;
        Except
        begin
           application.MessageBox('Data Inv�lida!','Aten��o',mb_Ok+mb_iconerror);
           mefinal.setfocus;
        end;
        end;
        end;
end;

procedure TFrmPagar.SpeedButton2Click(Sender: TObject);
begin
        close;
end;

procedure TFrmPagar.BitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure TFrmPagar.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  dm.docpagar.Close;
  dm.docpagar.SQL.Clear;
  dm.docpagar.SQL.Add('select * from docpagar');
  dm.docpagar.SQL.Add('where cod = '+IntToStr(dm.docpagarGeralcod.Value));
  dm.docpagar.Open;

  dm.contascorrente.Open;
  dm.contascorrente.Locate('conta',dm.docpagarconta.Value,[]);

  dm.fornecedores.Close;
  dm.fornecedores.SQL.Clear;
  dm.fornecedores.SQL.Add('select * from fornecedores');
  dm.fornecedores.SQL.Add('where codigo = '+IntToStr(dm.docpagarfornecedor.Value));
  dm.fornecedores.Open;
  if dm.fornecedorestipo.Value='J' then
     begin
       QRCPF.Enabled:=false;
       QRCNPJ.Enabled:=true;
     end
     else
     begin
       QRCPF.Enabled:=true;
       QRCNPJ.Enabled:=false;
     end;

  QRVALOR.Caption:='VALOR R$ '+formatfloat('#,##0.00',DM.docpagarvalorpago.Value)+' ('+NumeroParaExtenso(DM.docpagarvalorpago.Value)+')';

  if dm.docpagarpagtoem.Value='0' then
     qrpagamentoem.Caption:='PAGAMENTO EM DINHEIRO'
  else if dm.docpagarpagtoem.Value='1' then
     qrpagamentoem.Caption:='PAGAMENTO POR SAQUE'
  else if dm.docpagarpagtoem.Value='2' then
     qrpagamentoem.Caption:='PAGAMENTO POR CHEQUE'
  else if dm.docpagarpagtoem.Value='3' then
     qrpagamentoem.Caption:='PAGAMENTO POR DOC'
  else if dm.docpagarpagtoem.Value='4' then
     qrpagamentoem.Caption:='PAGAMENTO PELA INTERNET'
  else if dm.docpagarpagtoem.Value='5' then
     qrpagamentoem.Caption:='PAGAMENTO PELO CART�O CR�DITO'
  else if dm.docpagarpagtoem.Value='6' then
     qrpagamentoem.Caption:='PAGAMENTO PELO CART�O D�BITO'
  else if dm.docpagarpagtoem.Value='7' then
     qrpagamentoem.Caption:='D�BITO AUTOM�TICO'
  else
     qrpagamentoem.Caption:='';

//  qrdatapgto.caption:='S�o Lu�s, '+DataExtenso(dm.docpagarpgto.value);


end;

procedure TFrmPagar.SpeedButton3Click(Sender: TObject);
begin
  if mefinal.Text<>'' then
     begin
       QREMITENTE.Caption:=lbccger.Caption;
       if dm.docpagarGeral.RecordCount>0 then
          QuickRep2.Preview
       else
       begin
         Application.MessageBox('Preencha o Per�odo do Pagamento e clique em Consultar','Aten��o',mb_ok+MB_ICONERROR);
         medtfinal.SetFocus;
       end;
     end
     else
     begin
       Application.MessageBox('Preencha o Per�odo do Pagamento','Aten��o',mb_ok+MB_ICONINFORMATION);
       medtfinal.SetFocus;
     end;
end;

procedure TFrmPagar.edfornecedorEnter(Sender: TObject);
begin
  edfornecedor.Color:=$0080FFFF;
end;

procedure TFrmPagar.EdDocumentoEnter(Sender: TObject);
begin
  EdDocumento.Color:=$0080FFFF;
end;

procedure TFrmPagar.cbtipoEnter(Sender: TObject);
begin
  cbtipo.Color:=$0080FFFF;
end;

procedure TFrmPagar.meemissaoEnter(Sender: TObject);
begin
  meemissao.Color:=$0080FFFF;
end;

procedure TFrmPagar.mevenctoEnter(Sender: TObject);
begin
  mevencto.Color:=$0080FFFF;
end;

procedure TFrmPagar.edvalorEnter(Sender: TObject);
begin
  edvalor.Color:=$0080FFFF;
end;

procedure TFrmPagar.EdLocalEnter(Sender: TObject);
begin
  EdLocal.Color:=$0080FFFF;
end;

procedure TFrmPagar.EdJurosVlrEnter(Sender: TObject);
begin
  EdJurosVlr.Color:=$0080FFFF;
end;

procedure TFrmPagar.EdJurosPercEnter(Sender: TObject);
begin
  EdJurosPerc.Color:=$0080FFFF;
end;

procedure TFrmPagar.EdMultaPercEnter(Sender: TObject);
begin
  EdMultaPerc.Color:=$0080FFFF;
end;

procedure TFrmPagar.eddescEnter(Sender: TObject);
begin
  eddesc.Color:=$0080FFFF;
end;

procedure TFrmPagar.mepgtoateEnter(Sender: TObject);
begin
  mepgtoate.Color:=$0080FFFF;
end;

procedure TFrmPagar.cbplcontaEnter(Sender: TObject);
begin
  cbplconta.Color:=$0080FFFF;
end;

procedure TFrmPagar.Memo1Enter(Sender: TObject);
begin
  Memo1.Color:=$0080FFFF;
end;

procedure TFrmPagar.cbpagtoemEnter(Sender: TObject);
begin
  cbpagtoem.Color:=$0080FFFF;
end;

procedure TFrmPagar.eddocorigemEnter(Sender: TObject);
begin
  eddocorigem.Color:=$0080FFFF;
end;

procedure TFrmPagar.edvalorpagoEnter(Sender: TObject);
begin
  edvalorpago.Color:=$0080FFFF;
end;

procedure TFrmPagar.EdDescontoEnter(Sender: TObject);
begin
  EdDesconto.Color:=$0080FFFF;
end;

procedure TFrmPagar.EdJurosEnter(Sender: TObject);
begin
  EdJuros.Color:=$0080FFFF;
end;

procedure TFrmPagar.cbtipoExit(Sender: TObject);
begin
  cbtipo.Color:=clWindow;
end;

procedure TFrmPagar.EdLocalExit(Sender: TObject);
begin
  EdLocal.Color:=clWindow;
end;

procedure TFrmPagar.Memo1Exit(Sender: TObject);
begin
  Memo1.Color:=clWindow;
end;

procedure TFrmPagar.cbpagtoemExit(Sender: TObject);
begin
  cbpagtoem.Color:=clWindow;
end;

procedure TFrmPagar.eddocorigemExit(Sender: TObject);
begin
  eddocorigem.Color:=clWindow;
end;

procedure TFrmPagar.edccgerExit(Sender: TObject);
begin
  if edccger.Text<>'' then
     begin
        dm.planocontas.Open;
        if not dm.planocontas.Locate('codigo',edccger.Text,[]) then
           begin
             application.MessageBox('Conta n�o Localizada','Aten��o',mb_ok+mb_iconinformation);
             edccger.SetFocus;
           end
           else
             lbccger.Caption:=dm.planocontasdescricao.Value;
     end
     else
       lbccger.Caption:='';
end;

procedure TFrmPagar.EdchequeExit(Sender: TObject);
begin
  if copy(cbtipo.text,1,2)='CP' then
     begin
      if opcao=1 then
        begin
          if (edbanco.Text<>'') and (edagencia.Text<>'') and (EdCC.Text<>'') and (Edcheque.Text<>'') then
             begin
               dm.docpagar.Close;
               dm.docpagar.SQL.Clear;
               dm.docpagar.SQL.Add('select * from docpagar');
               dm.docpagar.SQL.Add('where (banco = '+Edbanco.text+')');
               dm.docpagar.SQL.Add('and (ag = '+chr(39)+edagencia.text+chr(39)+')');
               dm.docpagar.SQL.Add('and (ContaCorrente = '+chr(39)+EdCC.text+chr(39)+')');
               dm.docpagar.SQL.Add('and (cheque = '+Edcheque.Text+')');
               dm.docpagar.Open;
               if dm.docpagar.RecordCount>0 then
                  begin
                    dm.docpagarGeral.Close;
                    dm.docpagarGeral.SQL.Clear;
                    dm.docpagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,D.tipo,D.localcob,');
                    dm.docpagarGeral.SQL.Add('D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                    dm.docpagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                    dm.docpagarGeral.SQL.Add('from fornecedores F, docpagar D');
                    dm.docpagarGeral.SQL.Add('where (D.fornecedor=F.codigo)');
                    dm.docpagarGeral.SQL.Add('and (D.cod = '+IntToStr(dm.docpagarcod.Value)+')');
                    dm.docpagarGeral.SQL.Add('order by D.vencto');
                    dm.docpagarGeral.Open;
                    showmessage('Cheque j� Lan�ado');
                    btcancelar.Click;
                    atualiza;
                  end;
             end
             else
             begin
               application.MessageBox('Preencha o Banco, Ag�ncia, Conta Corrente e N� Cheque!','Aten��o',mb_Ok+mb_iconerror);
               edbanco.setfocus;
             end;
        end;
     end;
end;

procedure TFrmPagar.MeDataInicialEnter(Sender: TObject);
begin
      if MeDataInicial.Text='  /  /    ' then
         begin
           MeDataInicial.Text:=DateToStr(date);
           MeDataInicial.SelStart:=0;
           MeDataInicial.SelLength:=length(MeDataInicial.Text);
         end;
end;

procedure TFrmPagar.MeDataFinalEnter(Sender: TObject);
begin
      if MeDataFinal.Text='  /  /    ' then
         begin
           MeDataFinal.Text:=DateToStr(date);
           MeDataFinal.SelStart:=0;
           MeDataFinal.SelLength:=length(MeDataFinal.Text);
         end;
end;

end.
