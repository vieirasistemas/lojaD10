unit UnitFrmReceber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, DBCtrls, Mask, Grids, DBGrids, ComCtrls,
  EditAlinhado, ExtCtrls, DB, DBTables, TeEngine, Series, TeeProcs, Chart,
  Unit2, QRCtrls, QuickRpt, jpeg, ComObj, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  TFrmReceber = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    rb1: TRadioButton;
    rb2: TRadioButton;
    Label7: TLabel;
    cbtipoI: TComboBox;
    Label29: TLabel;
    Label5: TLabel;
    Label31: TLabel;
    btconsultar: TSpeedButton;
    SpeedButton1: TSpeedButton;
    DBGrid1: TDBGrid;
    edclienteI: TEdit;
    lbclienteI: TLabel;
    rb5: TRadioButton;
    MeDataInicial: TMaskEdit;
    MeDataFinal: TMaskEdit;
    Label25: TLabel;
    Label38: TLabel;
    medtinicial: TMaskEdit;
    medtfinal: TMaskEdit;
    Label37: TLabel;
    Label39: TLabel;
    meinicial: TMaskEdit;
    mefinal: TMaskEdit;
    lbvencidos: TLabel;
    Label6: TLabel;
    lbvencer: TLabel;
    Label28: TLabel;
    lbaberto: TLabel;
    Label32: TLabel;
    lbliquidados: TLabel;
    Label30: TLabel;
    lbtotal: TLabel;
    Label35: TLabel;
    rbgeral: TRadioButton;
    TabSheet3: TTabSheet;
    Chart1: TChart;
    Series1: TBarSeries;
    mevenctoinicial: TMaskEdit;
    mevenctofinal: TMaskEdit;
    Label8: TLabel;
    Label40: TLabel;
    SpeedButton3: TSpeedButton;
    edclienteII: TEdit;
    lbclienteII: TLabel;
    Label42: TLabel;
    eddoc: TEdit;
    Label41: TLabel;
    edvlrdoc: TEditAlinh;
    Label43: TLabel;
    Label48: TLabel;
    chquebrar: TCheckBox;
    ednossonumero: TEdit;
    Label49: TLabel;
    SpeedButton4: TSpeedButton;
    QuickRep2: TQuickRep;
    QRGroup2: TQRGroup;
    QRBand3: TQRBand;
    QRBand4: TQRBand;
    QRLabel14: TQRLabel;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRBand7: TQRBand;
    QRLabel38: TQRLabel;
    QRExpr8: TQRExpr;
    QRExpr9: TQRExpr;
    QRImage1: TQRImage;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRShape2: TQRShape;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape3: TQRShape;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRShape4: TQRShape;
    qrvalor: TQRLabel;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRDBText5: TQRDBText;
    QRLabel10: TQRLabel;
    QRShape8: TQRShape;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    QRShape9: TQRShape;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    qrcnpj: TQRLabel;
    qrie: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    qrcnpjI: TQRDBText;
    qrieI: TQRDBText;
    QRLabel22: TQRLabel;
    QRMemo1: TQRMemo;
    qrrodape: TQRMemo;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRLabel27: TQRLabel;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    SpeedButton5: TSpeedButton;
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRImage2: TQRImage;
    QRDBText21: TQRDBText;
    QRShape16: TQRShape;
    QRLabel9: TQRLabel;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRLabel29: TQRLabel;
    QRShape18: TQRShape;
    QRDBText24: TQRDBText;
    QRLabel30: TQRLabel;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRDBText25: TQRDBText;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRLabel33: TQRLabel;
    QRShape23: TQRShape;
    QRLabel34: TQRLabel;
    QRShape24: TQRShape;
    QRLabel35: TQRLabel;
    QRShape25: TQRShape;
    QRLabel36: TQRLabel;
    QRShape26: TQRShape;
    QRLabel37: TQRLabel;
    QRImage3: TQRImage;
    QRDBText26: TQRDBText;
    QRLabel28: TQRLabel;
    QRShape17: TQRShape;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRLabel39: TQRLabel;
    QRShape27: TQRShape;
    QRDBText29: TQRDBText;
    QRLabel40: TQRLabel;
    QRShape28: TQRShape;
    QRDBText30: TQRDBText;
    QRLabel41: TQRLabel;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRLabel42: TQRLabel;
    QRShape31: TQRShape;
    QRLabel43: TQRLabel;
    QRShape32: TQRShape;
    QRLabel44: TQRLabel;
    QRShape33: TQRShape;
    QRLabel45: TQRLabel;
    QRShape34: TQRShape;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRShape35: TQRShape;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    TitleBand1: TQRBand;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRDBText38: TQRDBText;
    QRDBText39: TQRDBText;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    lbcompra: TQRLabel;
    lbvalor: TQRLabel;
    lbvendedor: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    qrvencto1: TQRLabel;
    qrparc1: TQRLabel;
    qrvencto2: TQRLabel;
    qrparc2: TQRLabel;
    qrvencto3: TQRLabel;
    qrparc3: TQRLabel;
    qrvencto4: TQRLabel;
    qrparc4: TQRLabel;
    qrvencto5: TQRLabel;
    qrparc5: TQRLabel;
    qrvencto6: TQRLabel;
    qrparc6: TQRLabel;
    qrvencto7: TQRLabel;
    qrparc7: TQRLabel;
    qrvencto8: TQRLabel;
    qrparc8: TQRLabel;
    qrvencto9: TQRLabel;
    qrparc9: TQRLabel;
    qrvencto10: TQRLabel;
    qrparc10: TQRLabel;
    qrvencto11: TQRLabel;
    qrparc11: TQRLabel;
    qrvencto12: TQRLabel;
    qrparc12: TQRLabel;
    qr1: TQRLabel;
    qr2: TQRLabel;
    qr3: TQRLabel;
    qr4: TQRLabel;
    qr5: TQRLabel;
    qr6: TQRLabel;
    qr7: TQRLabel;
    qr8: TQRLabel;
    qr9: TQRLabel;
    qr10: TQRLabel;
    qr11: TQRLabel;
    qr12: TQRLabel;
    P_dados: TPanel;
    Label3: TLabel;
    edcliente: TEdit;
    lbcliente: TLabel;
    lbcodigo: TLabel;
    Label13: TLabel;
    EdDocumento: TEdit;
    Label11: TLabel;
    cbtipo: TComboBox;
    Label9: TLabel;
    EdLocal: TEdit;
    Label14: TLabel;
    meemissao: TMaskEdit;
    Label15: TLabel;
    mevencto: TMaskEdit;
    Label16: TLabel;
    edvalor: TEditAlinh;
    Label18: TLabel;
    edliquido: TEditAlinh;
    Label10: TLabel;
    EdNossoNum: TEdit;
    Label12: TLabel;
    Edbanco: TEdit;
    Label20: TLabel;
    edagencia: TEdit;
    Label21: TLabel;
    EdCC: TEdit;
    Label22: TLabel;
    Edcheque: TEdit;
    Label17: TLabel;
    Memo1: TMemo;
    Label26: TLabel;
    P_Baixar: TPanel;
    Label1: TLabel;
    cbconta: TComboBox;
    Label27: TLabel;
    eddocorigem: TEdit;
    Label4: TLabel;
    edvalorpago: TEditAlinh;
    Label2: TLabel;
    mepagto: TMaskEdit;
    Label23: TLabel;
    edjuros: TEditAlinh;
    cbplanoconta: TComboBox;
    Label19: TLabel;
    Label24: TLabel;
    eddesconto: TEditAlinh;
    cbplanojuros: TComboBox;
    Label33: TLabel;
    BitBtn1: TBitBtn;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    rbPagos: TRadioButton;
    ednf: TEdit;
    Label58: TLabel;
    chExcel: TCheckBox;
    Panel3: TPanel;
    btprimeiro: TBitBtn;
    btanterior: TBitBtn;
    btproximo: TBitBtn;
    btultimo: TBitBtn;
    btnovo: TBitBtn;
    btgravar: TBitBtn;
    btalterar: TBitBtn;
    btexcluir: TBitBtn;
    btcancelar: TBitBtn;
    btRecibo: TBitBtn;
    Panel1: TPanel;
    btbaixar: TBitBtn;
    btconfirmar: TBitBtn;
    qratualizar: TZQuery;
    Label34: TLabel;
    edmulta: TEditAlinh;
    medatabase: TMaskEdit;
    Label36: TLabel;
    procedure btnovoClick(Sender: TObject);
    procedure btalterarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btexcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbtipoExit(Sender: TObject);
    procedure meemissaoExit(Sender: TObject);
    procedure mevenctoExit(Sender: TObject);
    procedure EdValorExit(Sender: TObject);
    procedure EdLiquidoExit(Sender: TObject);
    procedure btgravarClick(Sender: TObject);
    procedure MeDataInicialExit(Sender: TObject);
    procedure MeDataFinalExit(Sender: TObject);
    procedure btconsultarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btbaixarClick(Sender: TObject);
    procedure cbcontaExit(Sender: TObject);
    procedure cbplanocontaExit(Sender: TObject);
    procedure mepagtoExit(Sender: TObject);
    procedure EdJurosExit(Sender: TObject);
    procedure EdDescontoExit(Sender: TObject);
    procedure edvalorpagoExit(Sender: TObject);
    procedure btconfirmarClick(Sender: TObject);
    procedure cbplanojurosExit(Sender: TObject);
    procedure btprimeiroClick(Sender: TObject);
    procedure btanteriorClick(Sender: TObject);
    procedure btproximoClick(Sender: TObject);
    procedure btultimoClick(Sender: TObject);
    procedure btcancelarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure mepagtoEnter(Sender: TObject);
    procedure edclienteExit(Sender: TObject);
    procedure edclienteIExit(Sender: TObject);
    procedure edclienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure meemissaoEnter(Sender: TObject);
    procedure rbgeralClick(Sender: TObject);
    procedure medtinicialExit(Sender: TObject);
    procedure medtfinalExit(Sender: TObject);
    procedure meinicialExit(Sender: TObject);
    procedure mefinalExit(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cbplanojurosEnter(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure mevenctoinicialExit(Sender: TObject);
    procedure mevenctofinalExit(Sender: TObject);
    procedure edclienteIIExit(Sender: TObject);
    procedure edvlrdocExit(Sender: TObject);
    procedure MeDataInicialEnter(Sender: TObject);
    procedure MeDataFinalEnter(Sender: TObject);
    procedure Memo1Exit(Sender: TObject);
    procedure btReciboClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure EdDocumentoExit(Sender: TObject);
    procedure TitleBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure BitBtn1Click(Sender: TObject);
    procedure Memo1Enter(Sender: TObject);
    procedure edclienteEnter(Sender: TObject);
    procedure EdDocumentoEnter(Sender: TObject);
    procedure ednfEnter(Sender: TObject);
    procedure cbtipoEnter(Sender: TObject);
    procedure mevenctoEnter(Sender: TObject);
    procedure edvalorEnter(Sender: TObject);
    procedure edliquidoEnter(Sender: TObject);
    procedure EdNossoNumEnter(Sender: TObject);
    procedure EdbancoEnter(Sender: TObject);
    procedure edagenciaEnter(Sender: TObject);
    procedure EdCCEnter(Sender: TObject);
    procedure EdchequeEnter(Sender: TObject);
    procedure EdLocalEnter(Sender: TObject);
    procedure ednfExit(Sender: TObject);
    procedure EdNossoNumExit(Sender: TObject);
    procedure EdbancoExit(Sender: TObject);
    procedure edagenciaExit(Sender: TObject);
    procedure EdCCExit(Sender: TObject);
    procedure EdchequeExit(Sender: TObject);
    procedure EdLocalExit(Sender: TObject);
    procedure cbcontaEnter(Sender: TObject);
    procedure cbplanocontaEnter(Sender: TObject);
    procedure edvalorpagoEnter(Sender: TObject);
    procedure eddescontoEnter(Sender: TObject);
    procedure eddocorigemEnter(Sender: TObject);
    procedure edjurosEnter(Sender: TObject);
    procedure eddocorigemExit(Sender: TObject);
    procedure edmultaEnter(Sender: TObject);
    procedure edmultaExit(Sender: TObject);
    procedure medatabaseEnter(Sender: TObject);
    procedure medatabaseExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmReceber: TFrmReceber;
  i,opcao:integer;
  totalgeral,vencidos,vencer,pago,atraso,
  D_liquido,juros,multa,valoratraso:real;
  R_hora,busca:string;
  ClickedOK:boolean;
  Excel : Variant;
  Linha:Integer;

implementation

uses Unitdm, UnitFrmReceberImp,
  UnitFrmCadclientes, UnitFrmRecibo, UnitFrmPrincipal;

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

procedure AtualizarVencidos;
begin
        dm.docreceberGeral.Close;
        dm.docreceberGeral.SQL.Clear;
        dm.docreceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
        dm.docreceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
        dm.docreceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
        dm.docreceberGeral.SQL.Add('from clientes C, docreceber D');
//        dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo) and (pgto is null) and (vencto<CURDATE())');
        dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo) and (pgto is null)');
        dm.docreceberGeral.SQL.Add('and (D.vencto < '+chr(39)+
        copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
        copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
        if FrmReceber.edclienteI.text<>'' then
           dm.docreceberGeral.SQL.Add('and (D.cliente = '+FrmReceber.edclienteI.text+')');
        dm.docreceberGeral.Open;

        dm.parametros.Open;
        while not dm.docreceberGeral.Eof do
              begin
                atraso:=0;
                atraso:=Int(StrToDate(FrmReceber.medatabase.text)-dm.docreceberGeralvencto.value);
                juros:=(dm.parametrosJuros1.value*dm.docreceberGeralliquido.value)/100/30*atraso;
                multa:=(dm.docreceberGeralliquido.value*dm.parametrosMulta1.value)/100;
                valoratraso:=dm.docreceberGeralliquido.Value+juros+multa;

                FrmReceber.qratualizar.Close;
                FrmReceber.qratualizar.SQL.Clear;
                FrmReceber.qratualizar.SQL.Add('update docreceber set');
                FrmReceber.qratualizar.SQL.Add('juros1 = :juros,');
                FrmReceber.qratualizar.SQL.Add('multa1 = :multa,');
                FrmReceber.qratualizar.SQL.Add('atraso = :atraso,');
                FrmReceber.qratualizar.SQL.Add('valoratraso = :valoratraso');
                FrmReceber.qratualizar.sql.add('where cod = '+chr(39)+IntToStr(dm.docreceberGeralcod.Value)+chr(39));
                FrmReceber.qratualizar.Params[0].Value := juros;
                FrmReceber.qratualizar.Params[1].Value := multa;
                FrmReceber.qratualizar.Params[2].Value := atraso;
                FrmReceber.qratualizar.Params[3].Value := valoratraso;
                FrmReceber.qratualizar.ExecSQL;
                dm.docreceberGeral.Next;
              end;
end;

procedure ZerarJurosMulta;
begin
      FrmReceber.qratualizar.Close;
      FrmReceber.qratualizar.SQL.Clear;
      FrmReceber.qratualizar.SQL.Add('update docreceber set');
      FrmReceber.qratualizar.SQL.Add('juros1 = null,');
      FrmReceber.qratualizar.SQL.Add('multa1 = null,');
      FrmReceber.qratualizar.SQL.Add('atraso = null,');
      FrmReceber.qratualizar.SQL.Add('valoratraso = liquido');
      FrmReceber.qratualizar.ExecSQL;
end;

procedure LimparConsulta;
begin
      FrmReceber.lbvencidos.Caption:='';
      FrmReceber.lbvencer.Caption:='';
      FrmReceber.lbaberto.Caption:='';
      FrmReceber.lbliquidados.Caption:='';
      FrmReceber.lbtotal.Caption:='';
      dm.docreceberGeral.Close;
end;

procedure vencidas;
begin
        AtualizarVencidos;
        vencidos:=0;
        dm.Totaldocreceber.Close;
        dm.Totaldocreceber.SQL.Clear;
        dm.Totaldocreceber.SQL.Add('select sum(liquido) as total from docreceber');
        dm.Totaldocreceber.SQL.Add('where (pgto is null)');
        dm.Totaldocreceber.SQL.Add('and (vencto < '+chr(39)+
        copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
        copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
        if FrmReceber.edclienteI.text<>'' then
           dm.Totaldocreceber.SQL.Add('and (cliente = '+FrmReceber.edclienteI.text+')');
        dm.Totaldocreceber.open;
        if dm.Totaldocrecebertotal.Value>0 then
           begin
             vencidos:=dm.Totaldocreceber['total'];
             FrmReceber.lbvencidos.Caption:=formatfloat('#,##0.00',vencidos);
           end
           else
             FrmReceber.lbvencidos.Caption:='0.00';

        dm.docreceberGeral.Close;
        dm.docreceberGeral.SQL.Clear;
        dm.docreceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
        dm.docreceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
        dm.docreceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
        dm.docreceberGeral.SQL.Add('from clientes C, docreceber D');
        dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo) and (pgto is null)');
        dm.docreceberGeral.SQL.Add('and (D.vencto < '+chr(39)+
        copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
        copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
        if FrmReceber.edclienteI.text<>'' then
           dm.docreceberGeral.SQL.Add('and (D.cliente = '+FrmReceber.edclienteI.text+')');
        if FrmReceber.chquebrar.Checked=true then
           dm.docreceberGeral.SQL.Add('order by C.nome,D.vencto')
        else
           dm.docreceberGeral.SQL.Add('order by D.vencto');
        dm.docreceberGeral.Open;
end;

procedure avencer;
begin
        ZerarJurosMulta;
        vencer:=0;
        dm.Totaldocreceber.Close;
        dm.Totaldocreceber.SQL.Clear;
        dm.Totaldocreceber.SQL.Add('select sum(liquido) as total from docreceber');
        dm.Totaldocreceber.SQL.Add('where (pgto is null)');
        dm.Totaldocreceber.SQL.Add('and (vencto >= '+chr(39)+
        copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
        copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
        dm.Totaldocreceber.Open;
        if dm.Totaldocrecebertotal.Value>0 then
           begin
             vencer:=dm.Totaldocreceber['total'];
             FrmReceber.lbvencer.Caption:=formatfloat('#,##0.00',vencer);
           end
           else
             FrmReceber.lbvencer.Caption:='0.00';

        dm.docreceberGeral.Close;
        dm.docreceberGeral.SQL.Clear;
        dm.docreceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
        dm.docreceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
        dm.docreceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
        dm.docreceberGeral.SQL.Add('from clientes C, docreceber D');
        dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo) and (pgto is null)');
        dm.docreceberGeral.SQL.Add('and (D.vencto >= '+chr(39)+
        copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
        copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
        if FrmReceber.chquebrar.Checked=true then
           dm.docreceberGeral.SQL.Add('order by C.nome,D.vencto')
        else
           dm.docreceberGeral.SQL.Add('order by D.vencto');
        dm.docreceberGeral.Open;
end;

procedure EmAberto;
begin
        ZerarJurosMulta;
        AtualizarVencidos;
        vencer:=0;
        vencidos:=0;

        dm.Totaldocreceber.Close;
        dm.Totaldocreceber.SQL.Clear;
        dm.Totaldocreceber.SQL.Add('select sum(liquido) as total from docreceber');
        dm.Totaldocreceber.SQL.Add('where (pgto is null)');
        dm.Totaldocreceber.SQL.Add('and (vencto >= '+chr(39)+
        copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
        copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
        dm.Totaldocreceber.Open;
        if dm.Totaldocrecebertotal.Value>0 then
           vencer:=dm.Totaldocreceber['total'];

        dm.Totaldocreceber.Close;
        dm.Totaldocreceber.SQL.Clear;
        dm.Totaldocreceber.SQL.Add('select sum(liquido) as total from docreceber');
        dm.Totaldocreceber.SQL.Add('where (pgto is null)');
        dm.Totaldocreceber.SQL.Add('and (vencto < '+chr(39)+
        copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
        copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
        dm.Totaldocreceber.open;
        if dm.Totaldocrecebertotal.Value>0 then
           vencidos:=dm.Totaldocreceber['total'];

        FrmReceber.lbvencidos.Caption:=formatfloat('#,##0.00',vencidos);
        FrmReceber.lbvencer.Caption:=formatfloat('#,##0.00',vencer);
        FrmReceber.lbaberto.Caption:=formatfloat('#,##0.00',vencer+vencidos);

        dm.docreceberGeral.Close;
        dm.docreceberGeral.SQL.Clear;
        dm.docreceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
        dm.docreceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
        dm.docreceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
        dm.docreceberGeral.SQL.Add('from clientes C, docreceber D');
        dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo) and (pgto is null)');
        if FrmReceber.chquebrar.Checked=true then
           dm.docreceberGeral.SQL.Add('order by C.nome,D.vencto')
        else
           dm.docreceberGeral.SQL.Add('order by D.vencto');
        dm.docreceberGeral.Open;
end;

procedure Atualiza;
begin
        dm.docreceber.Close;
        dm.docreceber.SQL.Clear;
        dm.docreceber.SQL.Add('select * from docreceber');
        dm.docreceber.sql.add('where cod = '+IntToStr(dm.docreceberGeralcod.Value));
        dm.docreceber.Open;
        FrmReceber.lbcodigo.Caption:=IntToStr(dm.docrecebercod.value);


        if not dm.docrecebercliente.IsNull then
           begin
             dm.clientes.close;
             dm.clientes.sql.clear;
             dm.clientes.sql.add('select * from clientes');
             dm.clientes.sql.add('where codigo = '+IntToStr(dm.docrecebercliente.Value));
             dm.clientes.open;
             if dm.clientes.RecordCount>0 then
                begin
                  FrmReceber.edcliente.Text:=IntToStr(dm.docrecebercliente.Value);
                  FrmReceber.lbcliente.Caption:=dm.clientesnome.value;
                end
                else
                begin
                  FrmReceber.edcliente.Text:='';
                  FrmReceber.lbcliente.Caption:='';
                end;
           end;

        if dm.docrecebertipo.Value='' then
           FrmReceber.cbtipo.text:=''
        else
        begin
           dm.formapagto.Open;
           dm.formapagto.Locate('codigo',dm.docrecebertipo.Value,[]);
           FrmReceber.cbtipo.text:=dm.formapagtocodigo.Value+' - '+dm.formapagtodescricao.Value;
        end;
        FrmReceber.EdDocumento.Text:=dm.docreceberdoc.Value;
        FrmReceber.ednf.Text:=dm.docrecebernf.Value;
        if dm.docreceberemissao.value<>StrToDate('30/12/1899') then
           FrmReceber.meemissao.Text:=DateToStr(dm.docreceberemissao.Value)
        else
           FrmReceber.meemissao.Text:='';
        if dm.docrecebervencto.value<>StrToDate('30/12/1899') then
           FrmReceber.mevencto.Text:=DateToStr(dm.docrecebervencto.Value)
        else
           FrmReceber.mevencto.Text:='';
        if not dm.docrecebervalor.IsNull then
           FrmReceber.EdValor.Text:=formatfloat('#,##0.00',dm.docrecebervalor.Value)
        else
           FrmReceber.EdValor.Text:='';
        if not dm.docreceberliquido.IsNull then
           FrmReceber.EdLiquido.Text:=formatfloat('#,##0.00',dm.docreceberliquido.Value)
        else
           FrmReceber.EdLiquido.Text:='';
        FrmReceber.EdLocal.Text:=dm.docreceberlocalcob.Value;
        FrmReceber.EdNossoNum.Text:=dm.docreceberN_Numero.Value;
        if not dm.docreceberbanco.IsNull then
           FrmReceber.Edbanco.Text:=IntToStr(dm.docreceberbanco.Value)
        else
           FrmReceber.Edbanco.Text:='';
        FrmReceber.edagencia.Text:=dm.docreceberag.Value;
        FrmReceber.EdCC.Text:=dm.docreceberContaCorrente.Value;
        if not dm.docrecebercheque.IsNull then
           FrmReceber.Edcheque.Text:=IntToStr(dm.docrecebercheque.Value)
        else
           FrmReceber.Edcheque.Text:='';
        FrmReceber.memo1.Text:=dm.docreceberobs.Value;

        dm.contascorrente.open;
        if dm.contascorrente.Locate('conta',dm.docreceberconta.Value,[]) then
           FrmReceber.cbconta.Text:=dm.contascorrentedescricao.Value
        else
           FrmReceber.cbconta.Text:='';
        dm.PlanoContas.Open;
        if dm.PlanoContas.Locate('codigo',dm.docreceberplanoconta.Value,[]) then
           FrmReceber.cbplanoconta.Text:=dm.PlanoContaschave.Value
        else
           FrmReceber.cbplanoconta.Text:='';
        if dm.docreceberpgto.value<>StrToDate('30/12/1899') then
           FrmReceber.mepagto.Text:=DateToStr(dm.docreceberpgto.Value)
        else
           FrmReceber.mepagto.Text:='';
        if not dm.docreceberjuros.IsNull then
           FrmReceber.EdJuros.Text:=formatfloat('#,##0.00',dm.docreceberjuros.Value)
        else
           FrmReceber.EdJuros.Text:='';
        if not dm.docrecebermulta.IsNull then
           FrmReceber.edmulta.Text:=formatfloat('#,##0.00',dm.docrecebermulta.Value)
        else
           FrmReceber.edmulta.Text:='';
        if dm.PlanoContas.Locate('codigo',dm.docreceberplanojuros.Value,[]) then
           FrmReceber.cbplanojuros.Text:=dm.PlanoContaschave.Value
        else
           FrmReceber.cbplanojuros.Text:='';
        if not dm.docreceberdesconto.IsNull then
           FrmReceber.EdDesconto.Text:=formatfloat('#,##0.00',dm.docreceberdesconto.Value)
        else
           FrmReceber.EdDesconto.Text:='';
        if not dm.docrecebervalorpago.IsNull then
           FrmReceber.edvalorpago.Text:=formatfloat('#,##0.00',dm.docrecebervalorpago.Value)
        else
           FrmReceber.edvalorpago.Text:='';

  dm.parametros.Close;
  dm.parametros.Open;
end;

procedure desabilita;
begin
  FrmReceber.btprimeiro.enabled:=false;
  FrmReceber.btanterior.enabled:=false;
  FrmReceber.btproximo.enabled:=false;
  FrmReceber.btultimo.enabled:=false;
  FrmReceber.btnovo.enabled:=false;
  FrmReceber.btalterar.enabled:=false;
  FrmReceber.btexcluir.enabled:=false;
  FrmReceber.btRecibo.enabled:=false;
  FrmReceber.btcancelar.Caption:='Cancelar';
  FrmReceber.btgravar.enabled:=true;
  FrmReceber.P_dados.enabled:=true;
  FrmReceber.btbaixar.enabled:=false;
  FrmReceber.P_Baixar.enabled:=false;
end;

procedure habilita;
begin
{        dm.usuarios.close;
        dm.usuarios.Open;
        dm.usuarios.Locate('nome',FrmPrincipal.sb.Panels[3].Text,[]);
        FrmReceber.btRecibo.enabled:=true;
        if dm.usuarioscontasreceber.value='1' then
           begin
             FrmReceber.btgravar.enabled:=false;
             FrmReceber.btbaixar.enabled:=false;
             FrmReceber.btnovo.Enabled:=false;
             FrmReceber.btexcluir.Enabled:=false;
             FrmReceber.btalterar.Enabled:=false;
             FrmReceber.btprimeiro.Enabled:=true;
             FrmReceber.btanterior.Enabled:=true;
             FrmReceber.btproximo.Enabled:=true;
             FrmReceber.btultimo.Enabled:=true;
             FrmReceber.P_dados.enabled:=false;
           end
        else if dm.usuarioscontasreceber.value='2' then
           begin
             FrmReceber.btbaixar.enabled:=false;
             FrmReceber.btgravar.enabled:=false;
             FrmReceber.btnovo.Enabled:=true;
             FrmReceber.btexcluir.Enabled:=false;
             FrmReceber.btalterar.Enabled:=false;
             FrmReceber.btprimeiro.Enabled:=true;
             FrmReceber.btanterior.Enabled:=true;
             FrmReceber.btproximo.Enabled:=true;
             FrmReceber.btultimo.Enabled:=true;
             FrmReceber.P_dados.enabled:=false;
           end
        else if dm.usuarioscontasreceber.value='3' then
           begin
             FrmReceber.btbaixar.enabled:=false;
             FrmReceber.btgravar.enabled:=false;
             FrmReceber.btnovo.Enabled:=true;
             FrmReceber.btexcluir.Enabled:=false;
             FrmReceber.btalterar.Enabled:=true;
             FrmReceber.btprimeiro.Enabled:=true;
             FrmReceber.btanterior.Enabled:=true;
             FrmReceber.btproximo.Enabled:=true;
             FrmReceber.btultimo.Enabled:=true;
             FrmReceber.P_dados.enabled:=false;
           end
        else if dm.usuarioscontasreceber.value='4' then
           begin
             FrmReceber.btbaixar.enabled:=false;
             FrmReceber.btgravar.enabled:=false;
             FrmReceber.btnovo.Enabled:=true;
             FrmReceber.btexcluir.Enabled:=true;
             FrmReceber.btalterar.Enabled:=true;
             FrmReceber.btprimeiro.Enabled:=true;
             FrmReceber.btanterior.Enabled:=true;
             FrmReceber.btproximo.Enabled:=true;
             FrmReceber.btultimo.Enabled:=true;
             FrmReceber.P_dados.enabled:=false;
           end
        else if dm.usuarioscontasreceber.value='5' then
           begin
}             FrmReceber.btbaixar.enabled:=true;
             FrmReceber.btgravar.enabled:=false;
             FrmReceber.btnovo.Enabled:=true;
             FrmReceber.btexcluir.Enabled:=true;
             FrmReceber.btalterar.Enabled:=true;
             FrmReceber.btprimeiro.Enabled:=true;
             FrmReceber.btanterior.Enabled:=true;
             FrmReceber.btRecibo.Enabled:=true;
             FrmReceber.btproximo.Enabled:=true;
             FrmReceber.btultimo.Enabled:=true;
             FrmReceber.P_dados.enabled:=false;
{           end
        else if dm.usuarioscontasreceber.value='6' then
           begin
             FrmReceber.btbaixar.enabled:=true;
             FrmReceber.btgravar.enabled:=false;
             FrmReceber.btnovo.Enabled:=true;
             FrmReceber.btexcluir.Enabled:=false;
             FrmReceber.btalterar.Enabled:=false;
             FrmReceber.btprimeiro.Enabled:=true;
             FrmReceber.btanterior.Enabled:=true;
             FrmReceber.btproximo.Enabled:=true;
             FrmReceber.btultimo.Enabled:=true;
             FrmReceber.P_dados.enabled:=false;
           end;
}        FrmReceber.btcancelar.Caption:='Sair';
        FrmReceber.P_Baixar.enabled:=false;
end;

procedure limpar;
begin
        FrmReceber.edcliente.Text:='';
        FrmReceber.lbcliente.Caption:='';
        FrmReceber.cbtipo.Text:='';
        FrmReceber.EdDocumento.Text:='';
        FrmReceber.meemissao.Text:='';
        FrmReceber.mevencto.Text:='';
        FrmReceber.EdValor.Text:='';
        FrmReceber.EdLiquido.Text:='';
        FrmReceber.EdLocal.Text:='';
        FrmReceber.EdNossoNum.Text:='';
        FrmReceber.Edbanco.Text:='';
        FrmReceber.edagencia.Text:='';
        FrmReceber.EdCC.Text:='';
        FrmReceber.Edcheque.Text:='';
        FrmReceber.Memo1.Lines.Clear;
        FrmReceber.cbconta.Text:='';
        FrmReceber.cbplanoconta.Text:='';
        FrmReceber.mepagto.Text:='';
        FrmReceber.EdJuros.Text:='';
        FrmReceber.EdDesconto.Text:='';
        FrmReceber.edvalorpago.Text:='';
end;

procedure limparbaixa;
begin
        FrmReceber.cbconta.Text:='';
        FrmReceber.cbplanoconta.Text:='';
        FrmReceber.cbplanojuros.Text:='';
        FrmReceber.mepagto.Text:='';
        FrmReceber.eddocorigem.Text:='';
        FrmReceber.EdJuros.Text:='';
        FrmReceber.EdDesconto.Text:='';
        FrmReceber.edvalorpago.Text:='';
end;

procedure TFrmReceber.btnovoClick(Sender: TObject);
begin
        opcao:=1;
        desabilita;
        limparbaixa;
        edcliente.SetFocus;
end;

procedure TFrmReceber.btalterarClick(Sender: TObject);
begin
        opcao:=2;
        desabilita;
        edcliente.SetFocus;
end;

procedure TFrmReceber.FormKeyPress(Sender: TObject; var Key: Char);
begin
        if Key = CHR(13) Then
           Begin
              perform(WM_NextDlgCtl,0,0);
              Key := CHR(0);
           End;
end;

procedure TFrmReceber.btexcluirClick(Sender: TObject);
begin
  if edcliente.text='' then
     begin
        application.MessageBox('Selecione um Documento','Aten��o',mb_ok+mb_iconinformation);
        PageControl1.ActivePageIndex := 1;
        dbgrid1.SetFocus;
     end
     else
     begin
        if Application.Messagebox ('Deseja excluir o registro?','Aten��o', Mb_YesNo+mb_iconquestion) = id_yes then
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
              dm.rastrorotina.Value:='DOC. RECEBER';
              dm.rastrooperacao.Value:='E';
              dm.rastrohistorico.Value:=EdDocumento.Text+' '+
              lbcliente.Caption+' '+EdNossoNum.Text;
              dm.rastrofavorecido.Value:=StrToInt(edcliente.Text);
              dm.rastrovalor.Value:=StringToFloat(edliquido.Text);
              dm.rastroobs.Value:=busca;
              dm.rastro.Post;
              dm.rastro.Close;

              qratualizar.Close;
              qratualizar.SQL.Clear;
              qratualizar.SQL.Add('delete from docreceber');
              qratualizar.SQL.Add('where (cod = '+chr(39)+lbcodigo.Caption+chr(39)+')');
              qratualizar.ExecSQL;
              limpar;
              btconsultar.Click;
           end;
     end;
end;

procedure TFrmReceber.FormShow(Sender: TObject);
begin
      dm.parametros.Close;
      dm.parametros.Open;
      LimparConsulta;
      habilita;

      dm.PlanoContas.Close;
      dm.PlanoContas.SQL.Clear;
      dm.planocontas.SQL.Add('select * from planocontas');
      dm.planocontas.SQL.Add('order by codigo');
      dm.planocontas.Open;
      cbplanoconta.Items.Clear;
      cbplanojuros.Items.Clear;
      while not dm.planocontas.Eof do
            begin
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

      medatabase.Text:=DateToStr(date);
      PageControl1.ActivePageIndex := 0;
end;

procedure TFrmReceber.cbtipoExit(Sender: TObject);
begin
  if cbtipo.Text<>'' then
     begin
       dm.formapagto.Open;
       if not dm.formapagto.Locate('codigo',copy(cbtipo.Text,1,2),[]) then
          begin
            application.MessageBox('Forma Pagamento Inv�lida','Aten��o',mb_ok+mb_iconinformation);
            cbtipo.SetFocus;
          end
          else
          begin
            if copy(cbtipo.Text,1,2)='BB' then
               begin
                 dm.parametros.Open;
                 EdLocal.Text:=dm.parametroscontabanco.Value;
               end
               else
                 EdLocal.Text:='';
          end;
     end;
  cbtipo.Color:=clWindow;
end;

procedure TFrmReceber.meemissaoExit(Sender: TObject);
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

procedure TFrmReceber.mevenctoExit(Sender: TObject);
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

procedure TFrmReceber.EdValorExit(Sender: TObject);
begin
      if edvalor.Text<>'' then
         begin
           edvalor.Text:=formatfloat('#,##0.00',StringToFloat(edvalor.text));
           EdLiquido.Text:=edvalor.Text;
         end;
  edvalor.Color:=clWindow;
end;

procedure TFrmReceber.EdLiquidoExit(Sender: TObject);
begin
  if EdLiquido.Text<>'' then
     EdLiquido.Text:=formatfloat('#,##0.00',StringToFloat(EdLiquido.text));
  EdLiquido.Color:=clWindow;
end;

procedure TFrmReceber.btgravarClick(Sender: TObject);
var
D_cliente,D_banco,
D_cheque,D_vendedor:integer;
D_tipo,D_doc,D_emissao,D_vencto,D_localcob,
D_N_Numero,D_ag,D_ContaCorrente,D_obs,
D_nf:String;
D_valor,D_comissao:real;
begin
      if (mevencto.Text='  /  /    ') and (edvalor.Text='') then
         begin
           application.MessageBox('Preenchimento do Vencimento e Valor Obrigat�rio','Aten��o',mb_Ok+mb_iconerror);
           edcliente.SetFocus;
         end
         else
         begin
          if opcao=1 then
             begin
               Try
                 dm.docreceber.Close;
                 dm.docreceber.SQL.Clear;
                 dm.docreceber.SQL.Add('select * from docreceber');
                 dm.docreceber.SQL.Add('where (cliente = '+edcliente.Text+')');
                 dm.docreceber.SQL.Add('and (doc = '+chr(39)+EdDocumento.Text+chr(39)+')');
                 dm.docreceber.Open;
                 dm.docreceber.Insert;
                 if edcliente.Text<>'' then
                    dm.docrecebercliente.Value:=StrToInt(edcliente.text);
                 if cbtipo.text<>'' then
                    dm.docrecebertipo.Value:=copy(cbtipo.Text,1,2);
                 dm.docreceberdoc.Value:=EdDocumento.Text;
                 if meemissao.Text<>'  /  /    ' then
                    dm.docreceberemissao.Value:=StrToDate(meemissao.text);
                 if mevencto.Text<>'  /  /    ' then
                    dm.docrecebervencto.Value:=StrToDate(mevencto.text);
                 if edvalor.Text<>'' then
                    dm.docrecebervalor.Value:=StringToFloat(edvalor.text);
                 if EdLiquido.Text<>'' then
                    dm.docreceberliquido.Value:=StringToFloat(EdLiquido.text);
                 dm.docreceberlocalcob.Value:=EdLocal.Text;
                 if EdNossoNum.Text<>'' then
                    dm.docreceberN_Numero.Value:=EdNossoNum.Text;
                 if edbanco.Text<>'' then
                    dm.docreceberbanco.Value:=StrToInt(Edbanco.text);
                 dm.docreceberag.Value:=edagencia.Text;
                 dm.docreceberContaCorrente.Value:=EdCC.Text;
                 if edcheque.Text<>'' then
                    dm.docrecebercheque.Value:=StrToInt(Edcheque.text);
                 dm.docrecebernf.Value:=ednf.Text;
                 dm.docreceberobs.Value:=memo1.Text;
                 dm.docreceber.Post;
                 dm.docreceber.Close;
                 dm.docreceber.Open;
                 lbcodigo.Caption:=IntToStr(dm.docrecebercod.value);

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
                 dm.rastrorotina.Value:='DOC. RECEBER';
                 dm.rastrooperacao.Value:='I';
                 dm.rastrohistorico.Value:=EdDocumento.Text+' '+
                 lbcliente.Caption+' '+EdNossoNum.Text;
                 dm.rastrofavorecido.Value:=StrToInt(edcliente.Text);
                 dm.rastrovalor.Value:=StringToFloat(edliquido.Text);
                 dm.rastro.Post;
                 dm.rastro.Close;

                 dm.docreceberGeral.Close;
                 dm.docreceberGeral.SQL.Clear;
                 dm.docreceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                 dm.docreceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                 dm.docreceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                 dm.docreceberGeral.SQL.Add('from clientes C, docreceber D');
                 dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                 dm.docreceberGeral.SQL.Add('and (D.cod = '+lbcodigo.Caption+')');
                 dm.docreceberGeral.SQL.Add('and (D.vencto < '+chr(39)+
                 copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
                 copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
                 dm.docreceberGeral.Open;
               Except
                 application.MessageBox('Erro ao Inserir Registro!','Aten��o',mb_Ok+mb_iconerror);
                 limpar;
               end;
             end
          else if opcao=2 then
             begin
               try
                 D_vendedor:=0;
                 D_cliente:=0;
                 D_banco:=0;
                 D_cheque:=0;
                 D_tipo:='';
                 D_doc:='';
                 D_emissao:='';
                 D_vencto:='';
                 D_localcob:='';
                 D_N_Numero:='';
                 D_ag:='';
                 D_ContaCorrente:='';
                 D_obs:='';
                 D_valor:=0;
                 D_liquido:=0;
                 D_comissao:=0;

                 if edcliente.Text<>'' then
                    D_cliente:=StrToInt(edcliente.text);
                 if cbtipo.text<>'' then
                    D_tipo:=copy(cbtipo.Text,1,2);
                 D_doc:=EdDocumento.Text;
                 if meemissao.Text<>'  /  /    ' then
                    D_emissao:=copy(meemissao.text,7,4)+'/'+
                    copy(meemissao.text,4,2)+'/'+copy(meemissao.text,1,2)
                 else
                    D_emissao:='0000/00/00';
                 if mevencto.Text<>'  /  /    ' then
                    D_vencto:=copy(mevencto.text,7,4)+'/'+
                    copy(mevencto.text,4,2)+'/'+copy(mevencto.text,1,2)
                 else
                    D_vencto:='0000/00/00';
                 if edvalor.Text<>'' then
                    D_valor:=StringToFloat(edvalor.text);
                 if EdLiquido.Text<>'' then
                    D_liquido:=StringToFloat(EdLiquido.text);
                 D_localcob:=EdLocal.Text;
                 D_N_Numero:=EdNossoNum.Text;
                 if edbanco.Text<>'' then
                    D_banco:=StrToInt(Edbanco.text);
                 D_ag:=edagencia.Text;
                 D_ContaCorrente:=EdCC.Text;
                 if edcheque.Text<>'' then
                    D_cheque:=StrToInt(Edcheque.text);
                 D_obs:=memo1.Text;
                 D_nf:=ednf.Text;

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
                 dm.rastrorotina.Value:='DOC. RECEBER';
                 dm.rastrooperacao.Value:='A';
                 dm.rastrohistorico.Value:=EdDocumento.Text+' '+
                 lbcliente.Caption+' '+EdNossoNum.Text;
                 dm.rastrofavorecido.Value:=StrToInt(edcliente.Text);
                 dm.rastrovalor.Value:=StringToFloat(edliquido.Text);
                 dm.rastro.Post;
                 dm.rastro.Close;

                 qratualizar.close;
                 qratualizar.sql.clear;
                 qratualizar.sql.add('update docreceber set');
                 qratualizar.sql.add('cliente = :D_cliente,');
                 qratualizar.sql.add('banco = :D_banco,');
                 qratualizar.sql.add('cheque = :D_cheque,');
                 qratualizar.sql.add('tipo = :D_tipo,');
                 qratualizar.sql.add('doc = :D_doc,');
                 qratualizar.sql.add('emissao = :D_emissao,');
                 qratualizar.sql.add('vencto = :D_vencto,');
                 qratualizar.sql.add('localcob = :D_localcob,');
                 qratualizar.sql.add('N_Numero = :D_N_Numero,');
                 qratualizar.sql.add('ag = :D_ag,');
                 qratualizar.sql.add('ContaCorrente = :D_ContaCorrente,');
                 qratualizar.sql.add('obs = :D_obs,');
                 qratualizar.sql.add('valor = :D_valor,');
                 qratualizar.sql.add('liquido = :D_liquido,');
                 qratualizar.sql.add('nf = :D_nf');
                 qratualizar.SQL.Add('where cod ='+lbcodigo.Caption);
                 qratualizar.Params[0].Value := D_cliente;
                 qratualizar.Params[1].Value := D_banco;
                 qratualizar.Params[2].Value := D_cheque;
                 qratualizar.Params[3].Value := D_tipo;
                 qratualizar.Params[4].Value := D_doc;
                 qratualizar.Params[5].Value := D_emissao;
                 qratualizar.Params[6].Value := D_vencto;
                 qratualizar.Params[7].Value := D_localcob;
                 qratualizar.Params[8].Value := D_N_Numero;
                 qratualizar.Params[9].Value := D_ag;
                 qratualizar.Params[10].Value := D_ContaCorrente;
                 qratualizar.Params[11].Value := D_obs;
                 qratualizar.Params[12].Value := D_valor;
                 qratualizar.Params[13].Value := D_liquido;
                 qratualizar.Params[14].Value := D_nf;
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

procedure TFrmReceber.MeDataInicialExit(Sender: TObject);
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

procedure TFrmReceber.MeDataFinalExit(Sender: TObject);
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

procedure TFrmReceber.btconsultarClick(Sender: TObject);
begin
        ZerarJurosMulta;
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
                (edclienteI.Text='') and
                (cbtipoI.Text='') then
                begin
                  LimparConsulta;
                  vencidas;
                end

             //Vencidos por Cliente
             else if (MeDataFinal.text='  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (mefinal.text='  /  /    ') and
                (edclienteI.Text<>'') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.Totaldocreceber.SQL.Add('and (vencto < '+chr(39)+
                  copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
                  copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (D.cliente = '+edclienteI.text+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     lbvencidos.Caption:=formatfloat('#,##0.00',dm.Totaldocreceber['total'])
                  else
                     lbvencidos.Caption:='';
                  vencidas;

                  dm.docreceberGeral.Close;
                  dm.docreceberGeral.SQL.Clear;
                  dm.docreceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.docreceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docreceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.docreceberGeral.SQL.Add('from clientes C, docreceber D');
                  dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.docreceberGeral.SQL.Add('and (D.vencto < '+chr(39)+
                  copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
                  copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.cliente = '+edclienteI.text+')');
                  if chquebrar.Checked=true then
                     dm.docreceberGeral.SQL.Add('order by C.nome,D.vencto')
                  else
                     dm.docreceberGeral.SQL.Add('order by D.vencto');
                  dm.docreceberGeral.Open;
                end

             //Vencidos por Tipo do Documento
             else if (MeDataFinal.text='  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (mefinal.text='  /  /    ') and
                (lbclienteI.caption='') and
                (cbtipoI.Text<>'') then
                begin
                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.Totaldocreceber.SQL.Add('and (vencto < '+chr(39)+
                  copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
                  copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     lbvencidos.Caption:=formatfloat('#,##0.00',dm.Totaldocreceber['total'])
                  else
                     lbvencidos.Caption:='';

                  dm.docreceberGeral.Close;
                  dm.docreceberGeral.SQL.Clear;
                  dm.docreceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.docreceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docreceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.docreceberGeral.SQL.Add('from clientes C, docreceber D');
                  dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.docreceberGeral.SQL.Add('and (D.vencto < '+chr(39)+
                  copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
                  copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  if chquebrar.Checked=true then
                     dm.docreceberGeral.SQL.Add('order by C.nome,D.vencto')
                  else
                     dm.docreceberGeral.SQL.Add('order by D.vencto');
                  dm.docreceberGeral.Open;
                end

             //Vencidos por Vencimento
             else if (MeDataFinal.text='  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (mefinal.text='  /  /    ') and
                (lbclienteI.caption='') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.Totaldocreceber.SQL.Add('and (vencto < '+chr(39)+
                  copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
                  copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     lbvencidos.Caption:=formatfloat('#,##0.00',dm.Totaldocreceber['total'])
                  else
                     lbvencidos.Caption:='';

                  dm.docreceberGeral.Close;
                  dm.docreceberGeral.SQL.Clear;
                  dm.docreceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.docreceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docreceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.docreceberGeral.SQL.Add('from clientes C, docreceber D');
                  dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.docreceberGeral.SQL.Add('and (D.vencto < '+chr(39)+
                  copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
                  copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  if chquebrar.Checked=true then
                     dm.docreceberGeral.SQL.Add('order by C.nome,D.vencto')
                  else
                     dm.docreceberGeral.SQL.Add('order by D.vencto');
                  dm.docreceberGeral.Open;
                end

             //Vencidos por Emiss�o
             else if (MeDataFinal.text<>'  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (mefinal.text='  /  /    ') and
                (lbclienteI.caption='') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.Totaldocreceber.SQL.Add('and (vencto < '+chr(39)+
                  copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
                  copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     lbvencidos.Caption:=formatfloat('#,##0.00',dm.Totaldocreceber['total'])
                  else
                     lbvencidos.Caption:='';

                  dm.docreceberGeral.Close;
                  dm.docreceberGeral.SQL.Clear;
                  dm.docreceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.docreceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docreceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.docreceberGeral.SQL.Add('from clientes C, docreceber D');
                  dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.docreceberGeral.SQL.Add('and (D.vencto < '+chr(39)+
                  copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
                  copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  if chquebrar.Checked=true then
                     dm.docreceberGeral.SQL.Add('order by C.nome,D.vencto')
                  else
                     dm.docreceberGeral.SQL.Add('order by D.vencto');
                  dm.docreceberGeral.Open;
                end

             //Vencidos por Emiss�o e Vencimento
             else if (MeDataFinal.text<>'  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (mefinal.text='  /  /    ') and
                (lbclienteI.caption='') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.Totaldocreceber.SQL.Add('and (vencto < '+chr(39)+
                  copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
                  copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     lbvencidos.Caption:=formatfloat('#,##0.00',dm.Totaldocreceber['total'])
                  else
                     lbvencidos.Caption:='';

                  dm.docreceberGeral.Close;
                  dm.docreceberGeral.SQL.Clear;
                  dm.docreceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.docreceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docreceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.docreceberGeral.SQL.Add('from clientes C, docreceber D');
                  dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.docreceberGeral.SQL.Add('and (D.vencto < '+chr(39)+
                  copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
                  copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  if chquebrar.Checked=true then
                     dm.docreceberGeral.SQL.Add('order by C.nome,D.vencto')
                  else
                     dm.docreceberGeral.SQL.Add('order by D.vencto');
                  dm.docreceberGeral.Open;
                end

             //Vencidos por Emiss�o e Vencimento e cliente
             else if (MeDataFinal.text<>'  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (mefinal.text='  /  /    ') and
                (lbclienteI.caption<>'') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.Totaldocreceber.SQL.Add('and (vencto < '+chr(39)+
                  copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
                  copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (D.cliente = '+edclienteI.text+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     lbvencidos.Caption:=formatfloat('#,##0.00',dm.Totaldocreceber['total'])
                  else
                     lbvencidos.Caption:='';

                  dm.docreceberGeral.Close;
                  dm.docreceberGeral.SQL.Clear;
                  dm.docreceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.docreceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docreceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.docreceberGeral.SQL.Add('from clientes C, docreceber D');
                  dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.docreceberGeral.SQL.Add('and (D.vencto < '+chr(39)+
                  copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
                  copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.cliente = '+edclienteI.text+')');
                  if chquebrar.Checked=true then
                     dm.docreceberGeral.SQL.Add('order by C.nome,D.vencto')
                  else
                     dm.docreceberGeral.SQL.Add('order by D.vencto');
                  dm.docreceberGeral.Open;
                end

             //Vencidos por Emiss�o e Vencimento e Tipo
             else if (MeDataFinal.text<>'  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (mefinal.text='  /  /    ') and
                (lbclienteI.caption='') and
                (cbtipoI.Text<>'') then
                begin
                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.Totaldocreceber.SQL.Add('and (vencto < '+chr(39)+
                  copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
                  copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     lbvencidos.Caption:=formatfloat('#,##0.00',dm.Totaldocreceber['total'])
                  else
                     lbvencidos.Caption:='';

                  dm.docreceberGeral.Close;
                  dm.docreceberGeral.SQL.Clear;
                  dm.docreceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.docreceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docreceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.docreceberGeral.SQL.Add('from clientes C, docreceber D');
                  dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.docreceberGeral.SQL.Add('and (D.vencto < '+chr(39)+
                  copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
                  copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  if chquebrar.Checked=true then
                     dm.docreceberGeral.SQL.Add('order by C.nome,D.vencto')
                  else
                     dm.docreceberGeral.SQL.Add('order by D.vencto');
                  dm.docreceberGeral.Open;
                end

             //Vencidos por Vencimento e Cliente
             else if (MeDataFinal.text='  /  /    ') and
                (mefinal.text='  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (lbclienteI.caption<>'') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.Totaldocreceber.SQL.Add('and (vencto < '+chr(39)+
                  copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
                  copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (D.cliente = '+edclienteI.text+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     lbvencidos.Caption:=formatfloat('#,##0.00',dm.Totaldocreceber['total'])
                  else
                     lbvencidos.Caption:='';

                  dm.docreceberGeral.Close;
                  dm.docreceberGeral.SQL.Clear;
                  dm.docreceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.docreceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docreceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.docreceberGeral.SQL.Add('from clientes C, docreceber D');
                  dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.docreceberGeral.SQL.Add('and (D.vencto < '+chr(39)+
                  copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
                  copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.cliente = '+edclienteI.text+')');
                  if chquebrar.Checked=true then
                     dm.docreceberGeral.SQL.Add('order by C.nome,D.vencto')
                  else
                     dm.docreceberGeral.SQL.Add('order by D.vencto');
                  dm.docreceberGeral.Open;
                end

             //Vencidos por Vencimento e Tipo
             else if (MeDataFinal.text='  /  /    ') and
                (mefinal.text='  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (lbclienteI.caption='') and
                (cbtipoI.Text<>'') then
                begin
                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.Totaldocreceber.SQL.Add('and (vencto < '+chr(39)+
                  copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
                  copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     lbvencidos.Caption:=formatfloat('#,##0.00',dm.Totaldocreceber['total'])
                  else
                     lbvencidos.Caption:='';

                  dm.docreceberGeral.Close;
                  dm.docreceberGeral.SQL.Clear;
                  dm.docreceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.docreceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docreceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.docreceberGeral.SQL.Add('from clientes C, docreceber D');
                  dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.docreceberGeral.SQL.Add('and (D.vencto < '+chr(39)+
                  copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
                  copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  if chquebrar.Checked=true then
                     dm.docreceberGeral.SQL.Add('order by C.nome,D.vencto')
                  else
                     dm.docreceberGeral.SQL.Add('order by D.vencto');
                  dm.docreceberGeral.Open;
                end;
           end
        //Consulta por Doc. � Vencer
        else if rb2.Checked then
           begin
             //� Vencer
             if (MeDataFinal.text='  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (mefinal.text='  /  /    ') and
                (edclienteI.Text='') and
                (cbtipoI.Text='') then
                begin
                  LimparConsulta;
                  avencer;
                end

             //� Vencer por Cliente
             else if (MeDataFinal.text='  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (mefinal.text='  /  /    ') and
                (edclienteI.Text<>'') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.Totaldocreceber.SQL.Add('and (vencto >= '+chr(39)+
                  copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
                  copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (D.cliente = '+edclienteI.text+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     lbvencer.Caption:=formatfloat('#,##0.00',dm.Totaldocreceber['total'])
                  else
                     lbvencer.Caption:='';

                  dm.docreceberGeral.Close;
                  dm.docreceberGeral.SQL.Clear;
                  dm.docreceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.docreceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docreceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.docreceberGeral.SQL.Add('from clientes C, docreceber D');
                  dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.docreceberGeral.SQL.Add('and (D.vencto >= '+chr(39)+
                  copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
                  copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.cliente = '+edclienteI.text+')');
                  if chquebrar.Checked=true then
                     dm.docreceberGeral.SQL.Add('order by C.nome,D.vencto')
                  else
                     dm.docreceberGeral.SQL.Add('order by D.vencto');
                  dm.docreceberGeral.Open;
                end

             //� Vencer por Tipo do Documento
             else if (MeDataFinal.text='  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (mefinal.text='  /  /    ') and
                (lbclienteI.caption='') and
                (cbtipoI.Text<>'') then
                begin
                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.Totaldocreceber.SQL.Add('and (vencto >= '+chr(39)+
                  copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
                  copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     lbvencer.Caption:=formatfloat('#,##0.00',dm.Totaldocreceber['total'])
                  else
                     lbvencer.Caption:='';

                  dm.docreceberGeral.Close;
                  dm.docreceberGeral.SQL.Clear;
                  dm.docreceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.docreceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docreceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.docreceberGeral.SQL.Add('from clientes C, docreceber D');
                  dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.docreceberGeral.SQL.Add('and (D.vencto >= '+chr(39)+
                  copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
                  copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  if chquebrar.Checked=true then
                     dm.docreceberGeral.SQL.Add('order by C.nome,D.vencto')
                  else
                     dm.docreceberGeral.SQL.Add('order by D.vencto');
                  dm.docreceberGeral.Open;
                end

             //� Vencer por Per�odo de Vencimento
             else if (MeDataFinal.text='  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (mefinal.text='  /  /    ') and
                (lbclienteI.caption='') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.Totaldocreceber.SQL.Add('and (vencto >= '+chr(39)+
                  copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
                  copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     lbvencer.Caption:=formatfloat('#,##0.00',dm.Totaldocreceber['total'])
                  else
                     lbvencer.Caption:='';

                  dm.docreceberGeral.Close;
                  dm.docreceberGeral.SQL.Clear;
                  dm.docreceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.docreceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docreceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.docreceberGeral.SQL.Add('from clientes C, docreceber D');
                  dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.docreceberGeral.SQL.Add('and (D.vencto >= '+chr(39)+
                  copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
                  copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  if chquebrar.Checked=true then
                     dm.docreceberGeral.SQL.Add('order by C.nome,D.vencto')
                  else
                     dm.docreceberGeral.SQL.Add('order by D.vencto');
                  dm.docreceberGeral.Open;
                end

             //� Vencer por Per�odo de Emiss�o
             else if (MeDataFinal.text<>'  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (mefinal.text='  /  /    ') and
                (lbclienteI.caption='') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.Totaldocreceber.SQL.Add('and (vencto >= '+chr(39)+
                  copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
                  copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     lbvencer.Caption:=formatfloat('#,##0.00',dm.Totaldocreceber['total'])
                  else
                     lbvencer.Caption:='';

                  dm.docreceberGeral.Close;
                  dm.docreceberGeral.SQL.Clear;
                  dm.docreceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.docreceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docreceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.docreceberGeral.SQL.Add('from clientes C, docreceber D');
                  dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.docreceberGeral.SQL.Add('and (D.vencto >= '+chr(39)+
                  copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
                  copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  if chquebrar.Checked=true then
                     dm.docreceberGeral.SQL.Add('order by C.nome,D.vencto')
                  else
                     dm.docreceberGeral.SQL.Add('order by D.vencto');
                  dm.docreceberGeral.Open;
                end

             //� Vencer por Per�odo de Emiss�o e Vencimento
             else if (MeDataFinal.text<>'  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (mefinal.text='  /  /    ') and
                (lbclienteI.caption='') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.Totaldocreceber.SQL.Add('and (vencto >= '+chr(39)+
                  copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
                  copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     lbvencer.Caption:=formatfloat('#,##0.00',dm.Totaldocreceber['total'])
                  else
                     lbvencer.Caption:='';

                  dm.docreceberGeral.Close;
                  dm.docreceberGeral.SQL.Clear;
                  dm.docreceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.docreceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docreceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.docreceberGeral.SQL.Add('from clientes C, docreceber D');
                  dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.docreceberGeral.SQL.Add('and (D.vencto >= '+chr(39)+
                  copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
                  copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  if chquebrar.Checked=true then
                     dm.docreceberGeral.SQL.Add('order by C.nome,D.vencto')
                  else
                     dm.docreceberGeral.SQL.Add('order by D.vencto');
                  dm.docreceberGeral.Open;
                end

             //� Vencer por Per�odo de Emiss�o e Vencimento e Cliente
             else if (MeDataFinal.text<>'  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (mefinal.text='  /  /    ') and
                (lbclienteI.caption<>'') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.Totaldocreceber.SQL.Add('and (vencto >= '+chr(39)+
                  copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
                  copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (D.cliente = '+edclienteI.text+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     lbvencer.Caption:=formatfloat('#,##0.00',dm.Totaldocreceber['total'])
                  else
                     lbvencer.Caption:='';

                  dm.docreceberGeral.Close;
                  dm.docreceberGeral.SQL.Clear;
                  dm.docreceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.docreceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docreceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.docreceberGeral.SQL.Add('from clientes C, docreceber D');
                  dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.docreceberGeral.SQL.Add('and (D.vencto >= '+chr(39)+
                  copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
                  copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.cliente = '+edclienteI.text+')');
                  if chquebrar.Checked=true then
                     dm.docreceberGeral.SQL.Add('order by C.nome,D.vencto')
                  else
                     dm.docreceberGeral.SQL.Add('order by D.vencto');
                  dm.docreceberGeral.Open;
                end

             //� Vencer por Per�odo de Emiss�o e Vencimento e Tipo
             else if (MeDataFinal.text<>'  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (mefinal.text='  /  /    ') and
                (lbclienteI.caption='') and
                (cbtipoI.Text<>'') then
                begin
                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.Totaldocreceber.SQL.Add('and (vencto >= '+chr(39)+
                  copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
                  copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     lbvencer.Caption:=formatfloat('#,##0.00',dm.Totaldocreceber['total'])
                  else
                     lbvencer.Caption:='';

                  dm.docreceberGeral.Close;
                  dm.docreceberGeral.SQL.Clear;
                  dm.docreceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.docreceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docreceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.docreceberGeral.SQL.Add('from clientes C, docreceber D');
                  dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.docreceberGeral.SQL.Add('and (D.vencto >= '+chr(39)+
                  copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
                  copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  if chquebrar.Checked=true then
                     dm.docreceberGeral.SQL.Add('order by C.nome,D.vencto')
                  else
                     dm.docreceberGeral.SQL.Add('order by D.vencto');
                  dm.docreceberGeral.Open;
                end

             //� Vencer por Per�do de Vencimento e Cliente
             else if (MeDataFinal.text='  /  /    ') and
                (mefinal.text='  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (lbclienteI.caption<>'') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.Totaldocreceber.SQL.Add('and (vencto >= '+chr(39)+
                  copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
                  copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (D.cliente = '+edclienteI.text+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     lbvencer.Caption:=formatfloat('#,##0.00',dm.Totaldocreceber['total'])
                  else
                     lbvencer.Caption:='';

                  dm.docreceberGeral.Close;
                  dm.docreceberGeral.SQL.Clear;
                  dm.docreceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.docreceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docreceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.docreceberGeral.SQL.Add('from clientes C, docreceber D');
                  dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.docreceberGeral.SQL.Add('and (D.vencto >= '+chr(39)+
                  copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
                  copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.cliente = '+edclienteI.text+')');
                  if chquebrar.Checked=true then
                     dm.docreceberGeral.SQL.Add('order by C.nome,D.vencto')
                  else
                     dm.docreceberGeral.SQL.Add('order by D.vencto');
                  dm.docreceberGeral.Open;
                end

             //� Vencer por Per�do de Emiss�o e Cliente
             else if (MeDataFinal.text<>'  /  /    ') and
                (mefinal.text='  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (lbclienteI.caption<>'') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.Totaldocreceber.SQL.Add('and (vencto >= '+chr(39)+
                  copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
                  copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (D.cliente = '+edclienteI.text+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     lbvencer.Caption:=formatfloat('#,##0.00',dm.Totaldocreceber['total'])
                  else
                     lbvencer.Caption:='';

                  dm.docreceberGeral.Close;
                  dm.docreceberGeral.SQL.Clear;
                  dm.docreceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.docreceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docreceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.docreceberGeral.SQL.Add('from clientes C, docreceber D');
                  dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.docreceberGeral.SQL.Add('and (D.vencto >= '+chr(39)+
                  copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
                  copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.cliente = '+edclienteI.text+')');
                  if chquebrar.Checked=true then
                     dm.docreceberGeral.SQL.Add('order by C.nome,D.vencto')
                  else
                     dm.docreceberGeral.SQL.Add('order by D.emissao');
                  dm.docreceberGeral.Open;
                end

             //� Vencer por Per�do de Vencimento e Tipo
             else if (MeDataFinal.text='  /  /    ') and
                (mefinal.text='  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (lbclienteI.caption='') and
                (cbtipoI.Text<>'') then
                begin
                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.Totaldocreceber.SQL.Add('and (vencto >= '+chr(39)+
                  copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
                  copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     lbvencer.Caption:=formatfloat('#,##0.00',dm.Totaldocreceber['total'])
                  else
                     lbvencer.Caption:='';

                  dm.docreceberGeral.Close;
                  dm.docreceberGeral.SQL.Clear;
                  dm.docreceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.docreceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docreceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.docreceberGeral.SQL.Add('from clientes C, docreceber D');
                  dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.docreceberGeral.SQL.Add('and (D.vencto >= '+chr(39)+
                  copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
                  copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  if chquebrar.Checked=true then
                     dm.docreceberGeral.SQL.Add('order by C.nome,D.vencto')
                  else
                     dm.docreceberGeral.SQL.Add('order by D.vencto');
                  dm.docreceberGeral.Open;
                end;
           end
        //Consulta por Doc. Pagos
        else if rbPagos.Checked then
           begin
             ZerarJurosMulta;
             //Pagos por Cliente
             if (MeDataFinal.text='  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (mefinal.text='  /  /    ') and
                (edclienteI.Text<>'') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is not null) and (D.valorpago>0)');
                  dm.Totaldocreceber.SQL.Add('and (D.cliente = '+edclienteI.text+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     lbliquidados.Caption:=formatfloat('#,##0.00',dm.Totaldocreceber['total'])
                  else
                     lbliquidados.Caption:='';

                  dm.docreceberGeral.Close;
                  dm.docreceberGeral.SQL.Clear;
                  dm.docreceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.docreceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docreceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.docreceberGeral.SQL.Add('from clientes C, docreceber D');
                  dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is not null) and (D.valorpago>0)');
                  dm.docreceberGeral.SQL.Add('and (D.cliente = '+edclienteI.text+')');
                  if chquebrar.Checked=true then
                     dm.docreceberGeral.SQL.Add('order by C.nome,D.vencto')
                  else
                     dm.docreceberGeral.SQL.Add('order by D.vencto');
                  dm.docreceberGeral.Open;
                end

             //Pagos por Tipo do Documento
             else if (MeDataFinal.text='  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (mefinal.text='  /  /    ') and
                (lbclienteI.caption='') and
                (cbtipoI.Text<>'') then
                begin
                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is not null) and (D.valorpago>0)');
                  dm.Totaldocreceber.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     lbliquidados.Caption:=formatfloat('#,##0.00',dm.Totaldocreceber['total'])
                  else
                     lbliquidados.Caption:='';

                  dm.docreceberGeral.Close;
                  dm.docreceberGeral.SQL.Clear;
                  dm.docreceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.docreceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docreceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.docreceberGeral.SQL.Add('from clientes C, docreceber D');
                  dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is not null) and (D.valorpago>0)');
                  dm.docreceberGeral.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  if chquebrar.Checked=true then
                     dm.docreceberGeral.SQL.Add('order by C.nome,D.vencto')
                  else
                     dm.docreceberGeral.SQL.Add('order by D.vencto');
                  dm.docreceberGeral.Open;
                end

             //Pagos por Per�odo de Vencimento
             else if (MeDataFinal.text='  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (mefinal.text='  /  /    ') and
                (lbclienteI.caption='') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is not null) and (D.valorpago>0)');
                  dm.Totaldocreceber.SQL.Add('and (vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     lbliquidados.Caption:=formatfloat('#,##0.00',dm.Totaldocreceber['total'])
                  else
                     lbliquidados.Caption:='';

                  dm.docreceberGeral.Close;
                  dm.docreceberGeral.SQL.Clear;
                  dm.docreceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.docreceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docreceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.docreceberGeral.SQL.Add('from clientes C, docreceber D');
                  dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is not null) and (D.valorpago>0)');
                  dm.docreceberGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  if chquebrar.Checked=true then
                     dm.docreceberGeral.SQL.Add('order by C.nome,D.vencto')
                  else
                     dm.docreceberGeral.SQL.Add('order by D.vencto');
                  dm.docreceberGeral.Open;
                end

             //Pagos por Per�odo de Emiss�o
             else if (MeDataFinal.text<>'  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (mefinal.text='  /  /    ') and
                (lbclienteI.caption='') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is not null) and (D.valorpago>0)');
                  dm.Totaldocreceber.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     lbliquidados.Caption:=formatfloat('#,##0.00',dm.Totaldocreceber['total'])
                  else
                     lbliquidados.Caption:='';

                  dm.docreceberGeral.Close;
                  dm.docreceberGeral.SQL.Clear;
                  dm.docreceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.docreceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docreceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.docreceberGeral.SQL.Add('from clientes C, docreceber D');
                  dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is not null) and (D.valorpago>0)');
                  dm.docreceberGeral.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  if chquebrar.Checked=true then
                     dm.docreceberGeral.SQL.Add('order by C.nome,D.vencto')
                  else
                     dm.docreceberGeral.SQL.Add('order by D.vencto');
                  dm.docreceberGeral.Open;
                end

             //Pagos por Per�odo de Emiss�o e Vencimento
             else if (MeDataFinal.text<>'  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (mefinal.text='  /  /    ') and
                (lbclienteI.caption='') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is not null) and (D.valorpago>0)');
                  dm.Totaldocreceber.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     lbliquidados.Caption:=formatfloat('#,##0.00',dm.Totaldocreceber['total'])
                  else
                     lbliquidados.Caption:='';

                  dm.docreceberGeral.Close;
                  dm.docreceberGeral.SQL.Clear;
                  dm.docreceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.docreceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docreceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.docreceberGeral.SQL.Add('from clientes C, docreceber D');
                  dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is not null) and (D.valorpago>0)');
                  dm.docreceberGeral.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  if chquebrar.Checked=true then
                     dm.docreceberGeral.SQL.Add('order by C.nome,D.vencto')
                  else
                     dm.docreceberGeral.SQL.Add('order by D.vencto');
                  dm.docreceberGeral.Open;
                end

             //Pagos por Per�odo de Emiss�o e Vencimento e Cliente
             else if (MeDataFinal.text<>'  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (mefinal.text='  /  /    ') and
                (lbclienteI.caption<>'') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is not null) and (D.valorpago>0)');
                  dm.Totaldocreceber.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (D.cliente = '+edclienteI.text+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     lbliquidados.Caption:=formatfloat('#,##0.00',dm.Totaldocreceber['total'])
                  else
                     lbliquidados.Caption:='';

                  dm.docreceberGeral.Close;
                  dm.docreceberGeral.SQL.Clear;
                  dm.docreceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.docreceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docreceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.docreceberGeral.SQL.Add('from clientes C, docreceber D');
                  dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is not null) and (D.valorpago>0)');
                  dm.docreceberGeral.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.cliente = '+edclienteI.text+')');
                  if chquebrar.Checked=true then
                     dm.docreceberGeral.SQL.Add('order by C.nome,D.vencto')
                  else
                     dm.docreceberGeral.SQL.Add('order by D.vencto');
                  dm.docreceberGeral.Open;
                end

             //Pagos por Per�odo de Emiss�o e Vencimento e Tipo
             else if (MeDataFinal.text<>'  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (mefinal.text='  /  /    ') and
                (lbclienteI.caption='') and
                (cbtipoI.Text<>'') then
                begin
                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is not null) and (D.valorpago>0)');
                  dm.Totaldocreceber.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     lbliquidados.Caption:=formatfloat('#,##0.00',dm.Totaldocreceber['total'])
                  else
                     lbliquidados.Caption:='';

                  dm.docreceberGeral.Close;
                  dm.docreceberGeral.SQL.Clear;
                  dm.docreceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.docreceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docreceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.docreceberGeral.SQL.Add('from clientes C, docreceber D');
                  dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is not null) and (D.valorpago>0)');
                  dm.docreceberGeral.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  if chquebrar.Checked=true then
                     dm.docreceberGeral.SQL.Add('order by C.nome,D.vencto')
                  else
                     dm.docreceberGeral.SQL.Add('order by D.vencto');
                  dm.docreceberGeral.Open;
                end

             //Pagos por Per�do de Vencimento e Cliente
             else if (MeDataFinal.text='  /  /    ') and
                (mefinal.text='  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (lbclienteI.caption<>'') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is not null) and (D.valorpago>0)');
                  dm.Totaldocreceber.SQL.Add('and (vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (D.cliente = '+edclienteI.text+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     lbliquidados.Caption:=formatfloat('#,##0.00',dm.Totaldocreceber['total'])
                  else
                     lbliquidados.Caption:='';

                  dm.docreceberGeral.Close;
                  dm.docreceberGeral.SQL.Clear;
                  dm.docreceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.docreceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docreceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.docreceberGeral.SQL.Add('from clientes C, docreceber D');
                  dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is not null) and (D.valorpago>0)');
                  dm.docreceberGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.cliente = '+edclienteI.text+')');
                  if chquebrar.Checked=true then
                     dm.docreceberGeral.SQL.Add('order by C.nome,D.vencto')
                  else
                     dm.docreceberGeral.SQL.Add('order by D.vencto');
                  dm.docreceberGeral.Open;
                end

             //PAgos por Per�do de Emiss�o e Cliente
             else if (MeDataFinal.text<>'  /  /    ') and
                (mefinal.text='  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (lbclienteI.caption<>'') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is not null) and (D.valorpago>0)');
                  dm.Totaldocreceber.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (D.cliente = '+edclienteI.text+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     lbliquidados.Caption:=formatfloat('#,##0.00',dm.Totaldocreceber['total'])
                  else
                     lbliquidados.Caption:='';

                  dm.docreceberGeral.Close;
                  dm.docreceberGeral.SQL.Clear;
                  dm.docreceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.docreceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docreceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.docreceberGeral.SQL.Add('from clientes C, docreceber D');
                  dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is not null) and (D.valorpago>0)');
                  dm.docreceberGeral.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.cliente = '+edclienteI.text+')');
                  if chquebrar.Checked=true then
                     dm.docreceberGeral.SQL.Add('order by C.nome,D.vencto')
                  else
                     dm.docreceberGeral.SQL.Add('order by D.emissao');
                  dm.docreceberGeral.Open;
                end

             //Pagos por Per�do de Vencimento e Tipo
             else if (MeDataFinal.text='  /  /    ') and
                (mefinal.text='  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (lbclienteI.caption='') and
                (cbtipoI.Text<>'') then
                begin
                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is not null) and (D.valorpago>0)');
                  dm.Totaldocreceber.SQL.Add('and (vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     lbliquidados.Caption:=formatfloat('#,##0.00',dm.Totaldocreceber['total'])
                  else
                     lbliquidados.Caption:='';

                  dm.docreceberGeral.Close;
                  dm.docreceberGeral.SQL.Clear;
                  dm.docreceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.docreceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docreceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.docreceberGeral.SQL.Add('from clientes C, docreceber D');
                  dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is not null) and (D.valorpago>0)');
                  dm.docreceberGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  if chquebrar.Checked=true then
                     dm.docreceberGeral.SQL.Add('order by C.nome,D.vencto')
                  else
                     dm.docreceberGeral.SQL.Add('order by D.vencto');
                  dm.docreceberGeral.Open;
                end;
           end
        //Consulta por Doc. Em Aberto
        else if rb5.Checked then
           begin
             //Em aberto
             if (MeDataFinal.text='  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (mefinal.text='  /  /    ') and
                (edclienteI.Text='') and
                (cbtipoI.Text='') then
                begin
                  LimparConsulta;
                  EmAberto;
                end

             //Em aberto por cliente
             else if (MeDataFinal.text='  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (mefinal.text='  /  /    ') and
                (edclienteI.Text<>'') and
                (cbtipoI.Text='') then
                begin
                  LimparConsulta;
                  EmAberto;

                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.Totaldocreceber.SQL.Add('and (vencto < '+chr(39)+
                  copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
                  copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (D.cliente = '+edclienteI.text+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     begin
                       vencidos:=dm.Totaldocreceber['total'];
                       lbvencidos.Caption:=formatfloat('#,##0.00',vencidos);
                       lbaberto.Caption:=formatfloat('#,##0.00',vencidos)
                     end;

                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.Totaldocreceber.SQL.Add('and (vencto >= '+chr(39)+
                  copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
                  copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (D.cliente = '+edclienteI.text+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     begin
                       vencer:=dm.Totaldocreceber['total'];
                       lbvencer.Caption:=formatfloat('#,##0.00',vencer);
                       lbaberto.Caption:=formatfloat('#,##0.00',vencidos+vencer);
                     end;

                  dm.docreceberGeral.Close;
                  dm.docreceberGeral.SQL.Clear;
                  dm.docreceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.docreceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docreceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.docreceberGeral.SQL.Add('from clientes C, docreceber D');
                  dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.docreceberGeral.SQL.Add('and (D.cliente = '+edclienteI.text+')');
                  if chquebrar.Checked=true then
                     dm.docreceberGeral.SQL.Add('order by C.nome,D.vencto')
                  else
                     dm.docreceberGeral.SQL.Add('order by D.vencto');
                  dm.docreceberGeral.Open;
                end


             //Em aberto por tipo
             else if (MeDataFinal.text='  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (mefinal.text='  /  /    ') and
                (edclienteI.Text='') and
                (cbtipoI.Text<>'') then
                begin
                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.Totaldocreceber.SQL.Add('and (vencto < '+chr(39)+
                  copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
                  copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     begin
                       vencidos:=dm.Totaldocreceber['total'];
                       lbvencidos.Caption:=formatfloat('#,##0.00',vencidos);
                       lbaberto.Caption:=formatfloat('#,##0.00',vencidos)
                     end;

                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.Totaldocreceber.SQL.Add('and (vencto >= '+chr(39)+
                  copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
                  copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     begin
                       vencer:=dm.Totaldocreceber['total'];
                       lbvencer.Caption:=formatfloat('#,##0.00',vencer);
                       lbaberto.Caption:=formatfloat('#,##0.00',vencidos+vencer);
                     end;

                  dm.docreceberGeral.Close;
                  dm.docreceberGeral.SQL.Clear;
                  dm.docreceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.docreceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docreceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.docreceberGeral.SQL.Add('from clientes C, docreceber D');
                  dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.docreceberGeral.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  if chquebrar.Checked=true then
                     dm.docreceberGeral.SQL.Add('order by C.nome,D.vencto')
                  else
                     dm.docreceberGeral.SQL.Add('order by D.vencto');
                  dm.docreceberGeral.Open;
                end

             //Em aberto por per�odo de vencimento
             else if (MeDataFinal.text='  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (mefinal.text='  /  /    ') and
                (edclienteI.Text='') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.Totaldocreceber.SQL.Add('and (vencto < '+chr(39)+
                  copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
                  copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(medtfinal.text,7,4)+'/'+copy(medtfinal.text,4,2)+'/'+
                  copy(medtfinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     begin
                       vencidos:=dm.Totaldocreceber['total'];
                       lbvencidos.Caption:=formatfloat('#,##0.00',vencidos);
                       lbaberto.Caption:=formatfloat('#,##0.00',vencidos)
                     end;

                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.Totaldocreceber.SQL.Add('and (vencto >= '+chr(39)+
                  copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
                  copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(medtfinal.text,7,4)+'/'+copy(medtfinal.text,4,2)+'/'+
                  copy(medtfinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     begin
                       vencer:=dm.Totaldocreceber['total'];
                       lbvencer.Caption:=formatfloat('#,##0.00',vencer);
                       lbaberto.Caption:=formatfloat('#,##0.00',vencidos+vencer);
                     end;

                  dm.docreceberGeral.Close;
                  dm.docreceberGeral.SQL.Clear;
                  dm.docreceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.docreceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docreceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.docreceberGeral.SQL.Add('from clientes C, docreceber D');
                  dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.docreceberGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(medtfinal.text,7,4)+'/'+copy(medtfinal.text,4,2)+'/'+
                  copy(medtfinal.text,1,2)+chr(39)+')');
                  if chquebrar.Checked=true then
                     dm.docreceberGeral.SQL.Add('order by C.nome,D.vencto')
                  else
                     dm.docreceberGeral.SQL.Add('order by D.vencto');
                  dm.docreceberGeral.Open;
                end

             //Em aberto por per�odo de emiss�o
             else if (MeDataFinal.text<>'  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (mefinal.text='  /  /    ') and
                (edclienteI.Text='') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.Totaldocreceber.SQL.Add('and (vencto < '+chr(39)+
                  copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
                  copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     begin
                       vencidos:=dm.Totaldocreceber['total'];
                       lbvencidos.Caption:=formatfloat('#,##0.00',vencidos);
                       lbaberto.Caption:=formatfloat('#,##0.00',vencidos)
                     end;

                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.Totaldocreceber.SQL.Add('and (vencto >= '+chr(39)+
                  copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
                  copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     begin
                       vencer:=dm.Totaldocreceber['total'];
                       lbvencer.Caption:=formatfloat('#,##0.00',vencer);
                       lbaberto.Caption:=formatfloat('#,##0.00',vencidos+vencer);
                     end;

                  dm.docreceberGeral.Close;
                  dm.docreceberGeral.SQL.Clear;
                  dm.docreceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.docreceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docreceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.docreceberGeral.SQL.Add('from clientes C, docreceber D');
                  dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.docreceberGeral.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  if chquebrar.Checked=true then
                     dm.docreceberGeral.SQL.Add('order by C.nome,D.vencto')
                  else
                     dm.docreceberGeral.SQL.Add('order by D.vencto');
                  dm.docreceberGeral.Open;
                end

             //Em aberto por per�odo de vencimento e cliente
             else if (MeDataFinal.text='  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (mefinal.text='  /  /    ') and
                (edclienteI.Text<>'') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.Totaldocreceber.SQL.Add('and (vencto < '+chr(39)+
                  copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
                  copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(medtfinal.text,7,4)+'/'+copy(medtfinal.text,4,2)+'/'+
                  copy(medtfinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (D.cliente = '+edclienteI.text+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     begin
                       vencidos:=dm.Totaldocreceber['total'];
                       lbvencidos.Caption:=formatfloat('#,##0.00',vencidos);
                       lbaberto.Caption:=formatfloat('#,##0.00',vencidos)
                     end;

                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.Totaldocreceber.SQL.Add('and (vencto >= '+chr(39)+
                  copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
                  copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(medtfinal.text,7,4)+'/'+copy(medtfinal.text,4,2)+'/'+
                  copy(medtfinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (D.cliente = '+edclienteI.text+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     begin
                       vencer:=dm.Totaldocreceber['total'];
                       lbvencer.Caption:=formatfloat('#,##0.00',vencer);
                       lbaberto.Caption:=formatfloat('#,##0.00',vencidos+vencer);
                     end;

                  dm.docreceberGeral.Close;
                  dm.docreceberGeral.SQL.Clear;
                  dm.docreceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.docreceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docreceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.docreceberGeral.SQL.Add('from clientes C, docreceber D');
                  dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.docreceberGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(medtfinal.text,7,4)+'/'+copy(medtfinal.text,4,2)+'/'+
                  copy(medtfinal.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.cliente = '+edclienteI.text+')');
                  if chquebrar.Checked=true then
                     dm.docreceberGeral.SQL.Add('order by C.nome,D.vencto')
                  else
                     dm.docreceberGeral.SQL.Add('order by D.vencto');
                  dm.docreceberGeral.Open;
                end

             //Em aberto por per�odo de emiss�o e vencimento
             else if (MeDataFinal.text<>'  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (mefinal.text='  /  /    ') and
                (edclienteI.Text='') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.Totaldocreceber.SQL.Add('and (vencto < '+chr(39)+
                  copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
                  copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(medtfinal.text,7,4)+'/'+copy(medtfinal.text,4,2)+'/'+
                  copy(medtfinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     begin
                       vencidos:=dm.Totaldocreceber['total'];
                       lbvencidos.Caption:=formatfloat('#,##0.00',vencidos);
                       lbaberto.Caption:=formatfloat('#,##0.00',vencidos)
                     end;

                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.Totaldocreceber.SQL.Add('and (vencto >= '+chr(39)+
                  copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
                  copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(medtfinal.text,7,4)+'/'+copy(medtfinal.text,4,2)+'/'+
                  copy(medtfinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     begin
                       vencer:=dm.Totaldocreceber['total'];
                       lbvencer.Caption:=formatfloat('#,##0.00',vencer);
                       lbaberto.Caption:=formatfloat('#,##0.00',vencidos+vencer);
                     end;

                  dm.docreceberGeral.Close;
                  dm.docreceberGeral.SQL.Clear;
                  dm.docreceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.docreceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docreceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.docreceberGeral.SQL.Add('from clientes C, docreceber D');
                  dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.docreceberGeral.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(medtfinal.text,7,4)+'/'+copy(medtfinal.text,4,2)+'/'+
                  copy(medtfinal.text,1,2)+chr(39)+')');
                  if chquebrar.Checked=true then
                     dm.docreceberGeral.SQL.Add('order by C.nome,D.vencto')
                  else
                     dm.docreceberGeral.SQL.Add('order by D.vencto');
                  dm.docreceberGeral.Open;
                end

             //Em aberto por per�odo de emiss�o e vencimento e Cliente
             else if (MeDataFinal.text<>'  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (mefinal.text='  /  /    ') and
                (edclienteI.Text<>'') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.Totaldocreceber.SQL.Add('and (vencto < '+chr(39)+
                  copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
                  copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(medtfinal.text,7,4)+'/'+copy(medtfinal.text,4,2)+'/'+
                  copy(medtfinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (D.cliente = '+edclienteI.text+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     begin
                       vencidos:=dm.Totaldocreceber['total'];
                       lbvencidos.Caption:=formatfloat('#,##0.00',vencidos);
                       lbaberto.Caption:=formatfloat('#,##0.00',vencidos)
                     end;

                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.Totaldocreceber.SQL.Add('and (vencto >= '+chr(39)+
                  copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
                  copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(medtfinal.text,7,4)+'/'+copy(medtfinal.text,4,2)+'/'+
                  copy(medtfinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (D.cliente = '+edclienteI.text+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     begin
                       vencer:=dm.Totaldocreceber['total'];
                       lbvencer.Caption:=formatfloat('#,##0.00',vencer);
                       lbaberto.Caption:=formatfloat('#,##0.00',vencidos+vencer);
                     end;

                  dm.docreceberGeral.Close;
                  dm.docreceberGeral.SQL.Clear;
                  dm.docreceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.docreceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docreceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.docreceberGeral.SQL.Add('from clientes C, docreceber D');
                  dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.docreceberGeral.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(medtfinal.text,7,4)+'/'+copy(medtfinal.text,4,2)+'/'+
                  copy(medtfinal.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.cliente = '+edclienteI.text+')');
                  if chquebrar.Checked=true then
                     dm.docreceberGeral.SQL.Add('order by C.nome,D.vencto')
                  else
                     dm.docreceberGeral.SQL.Add('order by D.vencto');
                  dm.docreceberGeral.Open;
                end

             //Em aberto por per�odo de emiss�o e vencimento e Tipo
             else if (MeDataFinal.text<>'  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (mefinal.text='  /  /    ') and
                (edclienteI.Text='') and
                (cbtipoI.Text<>'') then
                begin
                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.Totaldocreceber.SQL.Add('and (vencto < '+chr(39)+
                  copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
                  copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(medtfinal.text,7,4)+'/'+copy(medtfinal.text,4,2)+'/'+
                  copy(medtfinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     begin
                       vencidos:=dm.Totaldocreceber['total'];
                       lbvencidos.Caption:=formatfloat('#,##0.00',vencidos);
                       lbaberto.Caption:=formatfloat('#,##0.00',vencidos)
                     end;

                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.Totaldocreceber.SQL.Add('and (vencto >= '+chr(39)+
                  copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
                  copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(medtfinal.text,7,4)+'/'+copy(medtfinal.text,4,2)+'/'+
                  copy(medtfinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     begin
                       vencer:=dm.Totaldocreceber['total'];
                       lbvencer.Caption:=formatfloat('#,##0.00',vencer);
                       lbaberto.Caption:=formatfloat('#,##0.00',vencidos+vencer);
                     end;

                  dm.docreceberGeral.Close;
                  dm.docreceberGeral.SQL.Clear;
                  dm.docreceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.docreceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docreceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.docreceberGeral.SQL.Add('from clientes C, docreceber D');
                  dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.docreceberGeral.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(medtfinal.text,7,4)+'/'+copy(medtfinal.text,4,2)+'/'+
                  copy(medtfinal.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  if chquebrar.Checked=true then
                     dm.docreceberGeral.SQL.Add('order by C.nome,D.vencto')
                  else
                     dm.docreceberGeral.SQL.Add('order by D.vencto');
                  dm.docreceberGeral.Open;
                end

             //Em aberto por per�odo de emiss�o e cliente
             else if (MeDataFinal.text<>'  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (mefinal.text='  /  /    ') and
                (edclienteI.Text<>'') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.Totaldocreceber.SQL.Add('and (vencto < '+chr(39)+
                  copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
                  copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (D.cliente = '+edclienteI.text+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     begin
                       vencidos:=dm.Totaldocreceber['total'];
                       lbvencidos.Caption:=formatfloat('#,##0.00',vencidos);
                       lbaberto.Caption:=formatfloat('#,##0.00',vencidos)
                     end;

                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.Totaldocreceber.SQL.Add('and (vencto >= '+chr(39)+
                  copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
                  copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (D.cliente = '+edclienteI.text+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     begin
                       vencer:=dm.Totaldocreceber['total'];
                       lbvencer.Caption:=formatfloat('#,##0.00',vencer);
                       lbaberto.Caption:=formatfloat('#,##0.00',vencidos+vencer);
                     end;

                  dm.docreceberGeral.Close;
                  dm.docreceberGeral.SQL.Clear;
                  dm.docreceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.docreceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docreceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.docreceberGeral.SQL.Add('from clientes C, docreceber D');
                  dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.docreceberGeral.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.cliente = '+edclienteI.text+')');
                  if chquebrar.Checked=true then
                     dm.docreceberGeral.SQL.Add('order by C.nome,D.vencto')
                  else
                     dm.docreceberGeral.SQL.Add('order by D.vencto');
                  dm.docreceberGeral.Open;
                end

             //Em aberto por per�odo de vencimento e tipo
             else if (MeDataFinal.text='  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (mefinal.text='  /  /    ') and
                (edclienteI.Text='') and
                (cbtipoI.Text<>'') then
                begin
                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.Totaldocreceber.SQL.Add('and (vencto < '+chr(39)+
                  copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
                  copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(medtfinal.text,7,4)+'/'+copy(medtfinal.text,4,2)+'/'+
                  copy(medtfinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     begin
                       vencidos:=dm.Totaldocreceber['total'];
                       lbvencidos.Caption:=formatfloat('#,##0.00',vencidos);
                       lbaberto.Caption:=formatfloat('#,##0.00',vencidos)
                     end;

                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.Totaldocreceber.SQL.Add('and (vencto >= '+chr(39)+
                  copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
                  copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(medtfinal.text,7,4)+'/'+copy(medtfinal.text,4,2)+'/'+
                  copy(medtfinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     begin
                       vencer:=dm.Totaldocreceber['total'];
                       lbvencer.Caption:=formatfloat('#,##0.00',vencer);
                       lbaberto.Caption:=formatfloat('#,##0.00',vencidos+vencer);
                     end;

                  dm.docreceberGeral.Close;
                  dm.docreceberGeral.SQL.Clear;
                  dm.docreceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.docreceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docreceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.docreceberGeral.SQL.Add('from clientes C, docreceber D');
                  dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.docreceberGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(medtfinal.text,7,4)+'/'+copy(medtfinal.text,4,2)+'/'+
                  copy(medtfinal.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  if chquebrar.Checked=true then
                     dm.docreceberGeral.SQL.Add('order by C.nome,D.vencto')
                  else
                     dm.docreceberGeral.SQL.Add('order by D.vencto');
                  dm.docreceberGeral.Open;
                end;
           end
           else
           begin
             //Liquidados por periodo
             if (mefinal.text<>'  /  /    ') and
                (MeDataFinal.text='  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (edclienteI.text='') and
                (cbtipoI.Text='') then
                begin
                  ZerarJurosMulta;
                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.valorpago) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is not null)');
                  dm.Totaldocreceber.SQL.Add('and (D.pgto between '+chr(39)+
                  copy(meinicial.text,7,4)+'/'+copy(meinicial.text,4,2)+'/'+
                  copy(meinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeFinal.text,7,4)+'/'+copy(MeFinal.text,4,2)+'/'+
                  copy(MeFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     lbliquidados.Caption:=formatfloat('#,##0.00',dm.Totaldocreceber['total'])
                  else
                     lbliquidados.Caption:='';

                  dm.docreceberGeral.Close;
                  dm.docreceberGeral.SQL.Clear;
                  dm.docreceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.docreceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docreceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.docreceberGeral.SQL.Add('from clientes C, docreceber D');
                  dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is not null)');
                  dm.docreceberGeral.SQL.Add('and (D.pgto between '+chr(39)+
                  copy(meinicial.text,7,4)+'/'+copy(meinicial.text,4,2)+'/'+
                  copy(meinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeFinal.text,7,4)+'/'+copy(MeFinal.text,4,2)+'/'+
                  copy(MeFinal.text,1,2)+chr(39)+')');
                  if chquebrar.Checked=true then
                     dm.docreceberGeral.SQL.Add('order by C.nome,D.pgto')
                  else
                     dm.docreceberGeral.SQL.Add('order by D.pgto');
                  dm.docreceberGeral.Open;
                end

             //Liquidados por periodo e cliente
             else if (mefinal.text<>'  /  /    ') and
                (MeDataFinal.text='  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (edclienteI.text<>'') and
                (cbtipoI.Text='') then
                begin
                  ZerarJurosMulta;
                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.valorpago) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is not null)');
                  dm.Totaldocreceber.SQL.Add('and (D.pgto between '+chr(39)+
                  copy(meinicial.text,7,4)+'/'+copy(meinicial.text,4,2)+'/'+
                  copy(meinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeFinal.text,7,4)+'/'+copy(MeFinal.text,4,2)+'/'+
                  copy(MeFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (D.cliente = '+edclienteI.text+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     lbliquidados.Caption:=formatfloat('#,##0.00',dm.Totaldocreceber['total'])
                  else
                     lbliquidados.Caption:='';

                  dm.docreceberGeral.Close;
                  dm.docreceberGeral.SQL.Clear;
                  dm.docreceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.docreceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docreceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.docreceberGeral.SQL.Add('from clientes C, docreceber D');
                  dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is not null)');
                  dm.docreceberGeral.SQL.Add('and (D.pgto between '+chr(39)+
                  copy(meinicial.text,7,4)+'/'+copy(meinicial.text,4,2)+'/'+
                  copy(meinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeFinal.text,7,4)+'/'+copy(MeFinal.text,4,2)+'/'+
                  copy(MeFinal.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.cliente = '+edclienteI.text+')');
                  if chquebrar.Checked=true then
                     dm.docreceberGeral.SQL.Add('order by C.nome,D.pgto')
                  else
                     dm.docreceberGeral.SQL.Add('order by D.pgto');
                  dm.docreceberGeral.Open;
                end

             //Liquidados por periodo e tipo
             else if (mefinal.text<>'  /  /    ') and
                (MeDataFinal.text='  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (edclienteI.text='') and
                (cbtipoI.Text<>'') then
                begin
                  ZerarJurosMulta;
                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.valorpago) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is not null)');
                  dm.Totaldocreceber.SQL.Add('and (D.pgto between '+chr(39)+
                  copy(meinicial.text,7,4)+'/'+copy(meinicial.text,4,2)+'/'+
                  copy(meinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeFinal.text,7,4)+'/'+copy(MeFinal.text,4,2)+'/'+
                  copy(MeFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     lbliquidados.Caption:=formatfloat('#,##0.00',dm.Totaldocreceber['total'])
                  else
                     lbliquidados.Caption:='';

                  dm.docreceberGeral.Close;
                  dm.docreceberGeral.SQL.Clear;
                  dm.docreceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.docreceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docreceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.docreceberGeral.SQL.Add('from clientes C, docreceber D');
                  dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is not null)');
                  dm.docreceberGeral.SQL.Add('and (D.pgto between '+chr(39)+
                  copy(meinicial.text,7,4)+'/'+copy(meinicial.text,4,2)+'/'+
                  copy(meinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeFinal.text,7,4)+'/'+copy(MeFinal.text,4,2)+'/'+
                  copy(MeFinal.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  if chquebrar.Checked=true then
                     dm.docreceberGeral.SQL.Add('order by C.nome,D.pgto')
                  else
                     dm.docreceberGeral.SQL.Add('order by D.pgto');
                  dm.docreceberGeral.Open;
                end

             //Emitidos por periodo
             else if (mefinal.text='  /  /    ') and
                (MeDataFinal.text<>'  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (edclienteI.text='') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo)');
                  dm.Totaldocreceber.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     lbtotal.Caption:=formatfloat('#,##0.00',dm.Totaldocreceber['total'])
                  else
                     lbtotal.Caption:='';

                  dm.docreceberGeral.Close;
                  dm.docreceberGeral.SQL.Clear;
                  dm.docreceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.docreceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docreceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.docreceberGeral.SQL.Add('from clientes C, docreceber D');
                  dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo)');
                  dm.docreceberGeral.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  if chquebrar.Checked=true then
                     dm.docreceberGeral.SQL.Add('order by C.nome,D.emissao,D.vencto')
                  else
                     dm.docreceberGeral.SQL.Add('order by D.emissao,D.vencto');
                  dm.docreceberGeral.Open;
                end

             //Emitidos por periodo e cliente
             else if (mefinal.text='  /  /    ') and
                (MeDataFinal.text<>'  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (edclienteI.text<>'') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo)');
                  dm.Totaldocreceber.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (D.cliente = '+edclienteI.text+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     lbtotal.Caption:=formatfloat('#,##0.00',dm.Totaldocreceber['total'])
                  else
                     lbtotal.Caption:='';

                  dm.docreceberGeral.Close;
                  dm.docreceberGeral.SQL.Clear;
                  dm.docreceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.docreceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docreceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.docreceberGeral.SQL.Add('from clientes C, docreceber D');
                  dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo)');
                  dm.docreceberGeral.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.cliente = '+edclienteI.text+')');
                  if chquebrar.Checked=true then
                     dm.docreceberGeral.SQL.Add('order by C.nome,D.emissao,D.vencto')
                  else
                     dm.docreceberGeral.SQL.Add('order by D.emissao,D.vencto');
                  dm.docreceberGeral.Open;
                end

             //Emitidos e Liquidados por periodo e cliente
             else if (mefinal.text<>'  /  /    ') and
                (MeDataFinal.text<>'  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (edclienteI.text<>'') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo)');
                  dm.Totaldocreceber.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (D.pgto between '+chr(39)+
                  copy(meinicial.text,7,4)+'/'+copy(meinicial.text,4,2)+'/'+
                  copy(meinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeFinal.text,7,4)+'/'+copy(MeFinal.text,4,2)+'/'+
                  copy(MeFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (D.cliente = '+edclienteI.text+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     lbtotal.Caption:=formatfloat('#,##0.00',dm.Totaldocreceber['total'])
                  else
                     lbtotal.Caption:='';

                  dm.docreceberGeral.Close;
                  dm.docreceberGeral.SQL.Clear;
                  dm.docreceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.docreceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docreceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.docreceberGeral.SQL.Add('from clientes C, docreceber D');
                  dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo)');
                  dm.docreceberGeral.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.pgto between '+chr(39)+
                  copy(meinicial.text,7,4)+'/'+copy(meinicial.text,4,2)+'/'+
                  copy(meinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeFinal.text,7,4)+'/'+copy(MeFinal.text,4,2)+'/'+
                  copy(MeFinal.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.cliente = '+edclienteI.text+')');
                  if chquebrar.Checked=true then
                     dm.docreceberGeral.SQL.Add('order by C.nome,D.emissao,D.vencto')
                  else
                     dm.docreceberGeral.SQL.Add('order by D.emissao,D.vencto');
                  dm.docreceberGeral.Open;
                end

             //Emitidos por periodo e tipo
             else if (mefinal.text='  /  /    ') and
                (MeDataFinal.text<>'  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (edclienteI.text='') and
                (cbtipoI.Text<>'') then
                begin
                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo)');
                  dm.Totaldocreceber.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     lbtotal.Caption:=formatfloat('#,##0.00',dm.Totaldocreceber['total'])
                  else
                     lbtotal.Caption:='';

                  dm.docreceberGeral.Close;
                  dm.docreceberGeral.SQL.Clear;
                  dm.docreceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.docreceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docreceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.docreceberGeral.SQL.Add('from clientes C, docreceber D');
                  dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo)');
                  dm.docreceberGeral.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  if chquebrar.Checked=true then
                     dm.docreceberGeral.SQL.Add('order by C.nome,D.emissao,D.vencto')
                  else
                     dm.docreceberGeral.SQL.Add('order by D.emissao,D.vencto');
                  dm.docreceberGeral.Open;
                end

             //Vencimento no periodo
             else if (mefinal.text='  /  /    ') and
                (MeDataFinal.text='  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (edclienteI.text='') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo)');
                  dm.Totaldocreceber.SQL.Add('and (vencto between '+chr(39)+
                  copy(MeDtInicial.text,7,4)+'/'+copy(MeDtInicial.text,4,2)+'/'+
                  copy(MeDtInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(medtfinal.text,7,4)+'/'+copy(medtfinal.text,4,2)+'/'+
                  copy(medtfinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     lbtotal.Caption:=formatfloat('#,##0.00',dm.Totaldocreceber['total'])
                  else
                     lbtotal.Caption:='';

                  dm.docreceberGeral.Close;
                  dm.docreceberGeral.SQL.Clear;
                  dm.docreceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.docreceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docreceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.docreceberGeral.SQL.Add('from clientes C, docreceber D');
                  dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo)');
                  dm.docreceberGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(MeDtInicial.text,7,4)+'/'+copy(MeDtInicial.text,4,2)+'/'+
                  copy(MeDtInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(medtfinal.text,7,4)+'/'+copy(medtfinal.text,4,2)+'/'+
                  copy(medtfinal.text,1,2)+chr(39)+')');
                  if chquebrar.Checked=true then
                     dm.docreceberGeral.SQL.Add('order by C.nome,D.vencto')
                  else
                     dm.docreceberGeral.SQL.Add('order by D.vencto');
                  dm.docreceberGeral.Open;
                end

             //Vencimento no periodo por cliente
             else if (mefinal.text='  /  /    ') and
                (MeDataFinal.text='  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (edclienteI.text<>'') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo)');
                  dm.Totaldocreceber.SQL.Add('and (vencto between '+chr(39)+
                  copy(MeDtInicial.text,7,4)+'/'+copy(MeDtInicial.text,4,2)+'/'+
                  copy(MeDtInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(medtfinal.text,7,4)+'/'+copy(medtfinal.text,4,2)+'/'+
                  copy(medtfinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (D.cliente = '+edclienteI.text+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     lbtotal.Caption:=formatfloat('#,##0.00',dm.Totaldocreceber['total'])
                  else
                     lbtotal.Caption:='';

                  dm.docreceberGeral.Close;
                  dm.docreceberGeral.SQL.Clear;
                  dm.docreceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.docreceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docreceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.docreceberGeral.SQL.Add('from clientes C, docreceber D');
                  dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo)');
                  dm.docreceberGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(MeDtInicial.text,7,4)+'/'+copy(MeDtInicial.text,4,2)+'/'+
                  copy(MeDtInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(medtfinal.text,7,4)+'/'+copy(medtfinal.text,4,2)+'/'+
                  copy(medtfinal.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.cliente = '+edclienteI.text+')');
                  if chquebrar.Checked=true then
                     dm.docreceberGeral.SQL.Add('order by C.nome,D.vencto')
                  else
                     dm.docreceberGeral.SQL.Add('order by D.vencto');
                  dm.docreceberGeral.Open;
                end

             //Vencimento no periodo por tipo
             else if (mefinal.text='  /  /    ') and
                (MeDataFinal.text='  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (edclienteI.text='') and
                (cbtipoI.Text<>'') then
                begin
                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo)');
                  dm.Totaldocreceber.SQL.Add('and (vencto between '+chr(39)+
                  copy(MeDtInicial.text,7,4)+'/'+copy(MeDtInicial.text,4,2)+'/'+
                  copy(MeDtInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(medtfinal.text,7,4)+'/'+copy(medtfinal.text,4,2)+'/'+
                  copy(medtfinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     lbtotal.Caption:=formatfloat('#,##0.00',dm.Totaldocreceber['total'])
                  else
                     lbtotal.Caption:='';

                  dm.docreceberGeral.Close;
                  dm.docreceberGeral.SQL.Clear;
                  dm.docreceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.docreceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docreceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.docreceberGeral.SQL.Add('from clientes C, docreceber D');
                  dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo)');
                  dm.docreceberGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(MeDtInicial.text,7,4)+'/'+copy(MeDtInicial.text,4,2)+'/'+
                  copy(MeDtInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(medtfinal.text,7,4)+'/'+copy(medtfinal.text,4,2)+'/'+
                  copy(medtfinal.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  if chquebrar.Checked=true then
                     dm.docreceberGeral.SQL.Add('order by C.nome,D.vencto')
                  else
                     dm.docreceberGeral.SQL.Add('order by D.vencto');
                  dm.docreceberGeral.Open;
                end

             //Emitidos com Vencimento
             else if (mefinal.text='  /  /    ') and
                (MeDataFinal.text<>'  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (edclienteI.text='') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo)');
                  dm.Totaldocreceber.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (vencto between '+chr(39)+
                  copy(MeDtInicial.text,7,4)+'/'+copy(MeDtInicial.text,4,2)+'/'+
                  copy(MeDtInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     lbtotal.Caption:=formatfloat('#,##0.00',dm.Totaldocreceber['total'])
                  else
                     lbtotal.Caption:='';

                  dm.docreceberGeral.Close;
                  dm.docreceberGeral.SQL.Clear;
                  dm.docreceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.docreceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docreceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.docreceberGeral.SQL.Add('from clientes C, docreceber D');
                  dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo)');
                  dm.docreceberGeral.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(MeDtInicial.text,7,4)+'/'+copy(MeDtInicial.text,4,2)+'/'+
                  copy(MeDtInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  if chquebrar.Checked=true then
                     dm.docreceberGeral.SQL.Add('order by C.nome,D.emissao,D.vencto')
                  else
                     dm.docreceberGeral.SQL.Add('order by D.emissao,D.vencto');
                  dm.docreceberGeral.Open;
                end

             //Emitidos com Vencimento e Pagamento
             else if (mefinal.text<>'  /  /    ') and
                (MeDataFinal.text<>'  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (edclienteI.text='') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo)');
                  dm.Totaldocreceber.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (vencto between '+chr(39)+
                  copy(MeDtInicial.text,7,4)+'/'+copy(MeDtInicial.text,4,2)+'/'+
                  copy(MeDtInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (D.pgto between '+chr(39)+
                  copy(meinicial.text,7,4)+'/'+copy(meinicial.text,4,2)+'/'+
                  copy(meinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeFinal.text,7,4)+'/'+copy(MeFinal.text,4,2)+'/'+
                  copy(MeFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     lbtotal.Caption:=formatfloat('#,##0.00',dm.Totaldocreceber['total'])
                  else
                     lbtotal.Caption:='';

                  dm.docreceberGeral.Close;
                  dm.docreceberGeral.SQL.Clear;
                  dm.docreceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.docreceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docreceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.docreceberGeral.SQL.Add('from clientes C, docreceber D');
                  dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo)');
                  dm.docreceberGeral.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(MeDtInicial.text,7,4)+'/'+copy(MeDtInicial.text,4,2)+'/'+
                  copy(MeDtInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.pgto between '+chr(39)+
                  copy(meinicial.text,7,4)+'/'+copy(meinicial.text,4,2)+'/'+
                  copy(meinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeFinal.text,7,4)+'/'+copy(MeFinal.text,4,2)+'/'+
                  copy(MeFinal.text,1,2)+chr(39)+')');
                  if chquebrar.Checked=true then
                     dm.docreceberGeral.SQL.Add('order by C.nome,D.emissao,D.vencto')
                  else
                     dm.docreceberGeral.SQL.Add('order by D.emissao,D.vencto');
                  dm.docreceberGeral.Open;
                end

             //Emitidos com Vencimento e Pagamento por Cliente
             else if (mefinal.text<>'  /  /    ') and
                (MeDataFinal.text<>'  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (edclienteI.text<>'') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo)');
                  dm.Totaldocreceber.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (vencto between '+chr(39)+
                  copy(MeDtInicial.text,7,4)+'/'+copy(MeDtInicial.text,4,2)+'/'+
                  copy(MeDtInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (D.pgto between '+chr(39)+
                  copy(meinicial.text,7,4)+'/'+copy(meinicial.text,4,2)+'/'+
                  copy(meinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeFinal.text,7,4)+'/'+copy(MeFinal.text,4,2)+'/'+
                  copy(MeFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (D.cliente = '+edclienteI.text+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     lbtotal.Caption:=formatfloat('#,##0.00',dm.Totaldocreceber['total'])
                  else
                     lbtotal.Caption:='';

                  dm.docreceberGeral.Close;
                  dm.docreceberGeral.SQL.Clear;
                  dm.docreceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.docreceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docreceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.docreceberGeral.SQL.Add('from clientes C, docreceber D');
                  dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo)');
                  dm.docreceberGeral.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(MeDtInicial.text,7,4)+'/'+copy(MeDtInicial.text,4,2)+'/'+
                  copy(MeDtInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.pgto between '+chr(39)+
                  copy(meinicial.text,7,4)+'/'+copy(meinicial.text,4,2)+'/'+
                  copy(meinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeFinal.text,7,4)+'/'+copy(MeFinal.text,4,2)+'/'+
                  copy(MeFinal.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.cliente = '+edclienteI.text+')');
                  if chquebrar.Checked=true then
                     dm.docreceberGeral.SQL.Add('order by C.nome,D.emissao,D.vencto')
                  else
                     dm.docreceberGeral.SQL.Add('order by D.emissao,D.vencto');
                  dm.docreceberGeral.Open;
                end

             //Emitidos com Vencimento por cliente
             else if (mefinal.text='  /  /    ') and
                (MeDataFinal.text<>'  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (edclienteI.text<>'') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo)');
                  dm.Totaldocreceber.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (vencto between '+chr(39)+
                  copy(MeDtInicial.text,7,4)+'/'+copy(MeDtInicial.text,4,2)+'/'+
                  copy(MeDtInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (D.cliente = '+edclienteI.text+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     lbtotal.Caption:=formatfloat('#,##0.00',dm.Totaldocreceber['total'])
                  else
                     lbtotal.Caption:='';

                  dm.docreceberGeral.Close;
                  dm.docreceberGeral.SQL.Clear;
                  dm.docreceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.docreceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docreceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.docreceberGeral.SQL.Add('from clientes C, docreceber D');
                  dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo)');
                  dm.docreceberGeral.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(MeDtInicial.text,7,4)+'/'+copy(MeDtInicial.text,4,2)+'/'+
                  copy(MeDtInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.cliente = '+edclienteI.text+')');
                  if chquebrar.Checked=true then
                     dm.docreceberGeral.SQL.Add('order by C.nome,D.emissao,D.vencto')
                  else
                     dm.docreceberGeral.SQL.Add('order by D.emissao,D.vencto');
                  dm.docreceberGeral.Open;
                end

             //Emitidos com Vencimento por tipo
             else if (mefinal.text='  /  /    ') and
                (MeDataFinal.text<>'  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (edclienteI.text='') and
                (cbtipoI.Text<>'') then
                begin
                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo)');
                  dm.Totaldocreceber.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (vencto between '+chr(39)+
                  copy(MeDtInicial.text,7,4)+'/'+copy(MeDtInicial.text,4,2)+'/'+
                  copy(MeDtInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     lbtotal.Caption:=formatfloat('#,##0.00',dm.Totaldocreceber['total'])
                  else
                     lbtotal.Caption:='';

                  dm.docreceberGeral.Close;
                  dm.docreceberGeral.SQL.Clear;
                  dm.docreceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.docreceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docreceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.docreceberGeral.SQL.Add('from clientes C, docreceber D');
                  dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo)');
                  dm.docreceberGeral.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(MeDtInicial.text,7,4)+'/'+copy(MeDtInicial.text,4,2)+'/'+
                  copy(MeDtInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  if chquebrar.Checked=true then
                     dm.docreceberGeral.SQL.Add('order by C.nome,D.emissao,D.vencto')
                  else
                     dm.docreceberGeral.SQL.Add('order by D.emissao,D.vencto');
                  dm.docreceberGeral.Open;
                end

             //por cliente
             else if (mefinal.text='  /  /    ') and
                (MeDataFinal.text='  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (edclienteI.text<>'') and
                (cbtipoI.Text='') then
                begin
                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.Totaldocreceber.SQL.Add('and (vencto < '+chr(39)+
                  copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
                  copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (D.cliente = '+edclienteI.text+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     lbvencidos.Caption:=formatfloat('#,##0.00',dm.Totaldocreceber['total'])
                  else
                     lbvencidos.Caption:='';

                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.Totaldocreceber.SQL.Add('and (vencto >= '+chr(39)+
                  copy(FrmReceber.medatabase.text,7,4)+'/'+copy(FrmReceber.medatabase.text,4,2)+'/'+
                  copy(FrmReceber.medatabase.text,1,2)+chr(39)+')');
                  dm.Totaldocreceber.SQL.Add('and (D.cliente = '+edclienteI.text+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     lbvencer.Caption:=formatfloat('#,##0.00',dm.Totaldocreceber['total'])
                  else
                     lbvencer.Caption:='';

                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.Totaldocreceber.SQL.Add('and (D.cliente = '+edclienteI.text+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     lbaberto.Caption:=formatfloat('#,##0.00',dm.Totaldocreceber['total'])
                  else
                     lbaberto.Caption:='';

                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is not null)');
                  dm.Totaldocreceber.SQL.Add('and (D.cliente = '+edclienteI.text+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     lbliquidados.Caption:=formatfloat('#,##0.00',dm.Totaldocreceber['total'])
                  else
                     lbliquidados.Caption:='';

                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo)');
                  dm.Totaldocreceber.SQL.Add('and (D.cliente = '+edclienteI.text+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     lbtotal.Caption:=formatfloat('#,##0.00',dm.Totaldocreceber['total'])
                  else
                     lbtotal.Caption:='';

                  dm.docreceberGeral.Close;
                  dm.docreceberGeral.SQL.Clear;
                  dm.docreceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.docreceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docreceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.docreceberGeral.SQL.Add('from clientes C, docreceber D');
                  dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo)');
                  dm.docreceberGeral.SQL.Add('and (D.cliente = '+edclienteI.text+')');
                  if chquebrar.Checked=true then
                     dm.docreceberGeral.SQL.Add('order by C.nome,D.emissao,D.vencto')
                  else
                     dm.docreceberGeral.SQL.Add('order by D.emissao,D.vencto');
                  dm.docreceberGeral.Open;
                end

             //Por Documento
             else if (eddoc.Text<>'') then
                begin
                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo)');
                  dm.Totaldocreceber.SQL.Add('and (D.doc like '+chr(39)+eddoc.text+'%'+chr(39)+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     lbtotal.Caption:=formatfloat('#,##0.00',dm.Totaldocreceber['total'])
                  else
                     lbtotal.Caption:='';

                  dm.docreceberGeral.Close;
                  dm.docreceberGeral.SQL.Clear;
                  dm.docreceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.docreceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docreceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.docreceberGeral.SQL.Add('from clientes C, docreceber D');
                  dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo)');
                  dm.docreceberGeral.SQL.Add('and (D.doc like '+chr(39)+eddoc.text+'%'+chr(39)+')');
                  if chquebrar.Checked=true then
                     dm.docreceberGeral.SQL.Add('order by C.nome,D.emissao,D.vencto')
                  else
                     dm.docreceberGeral.SQL.Add('order by D.emissao,D.vencto');
                  dm.docreceberGeral.Open;
                end

             //Por Nosso Numero
             else if (ednossonumero.Text<>'') then
                begin
                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo)');
                  dm.Totaldocreceber.SQL.Add('and (D.N_numero like '+chr(39)+'%'+ednossonumero.text+'%'+chr(39)+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     lbtotal.Caption:=formatfloat('#,##0.00',dm.Totaldocreceber['total'])
                  else
                     lbtotal.Caption:='';

                  dm.docreceberGeral.Close;
                  dm.docreceberGeral.SQL.Clear;
                  dm.docreceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.docreceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docreceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.docreceberGeral.SQL.Add('from clientes C, docreceber D');
                  dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo)');
                  dm.docreceberGeral.SQL.Add('and (D.N_numero like '+chr(39)+'%'+ednossonumero.text+'%'+chr(39)+')');
                  dm.docreceberGeral.SQL.Add('order by D.N_numero,D.cliente,D.nf');
                  dm.docreceberGeral.Open;
                end

             //Por Valor do Documento
             else if (edvlrdoc.Text<>'') then
                begin
                  dm.Totaldocreceber.Close;
                  dm.Totaldocreceber.SQL.Clear;
                  dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
                  dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo)');
                  dm.Totaldocreceber.SQL.Add('and (D.valor ='+InserePonto(edvlrdoc.text)+')');
                  dm.Totaldocreceber.open;
                  if dm.Totaldocrecebertotal.Value>0 then
                     lbtotal.Caption:=formatfloat('#,##0.00',dm.Totaldocreceber['total'])
                  else
                     lbtotal.Caption:='';

                  dm.docreceberGeral.Close;
                  dm.docreceberGeral.SQL.Clear;
                  dm.docreceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.docreceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.docreceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.docreceberGeral.SQL.Add('from clientes C, docreceber D');
                  dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo)');
                  dm.docreceberGeral.SQL.Add('and (D.valor ='+InserePonto(edvlrdoc.text)+')');
                  if chquebrar.Checked=true then
                     dm.docreceberGeral.SQL.Add('order by C.nome,D.emissao,D.vencto')
                  else
                     dm.docreceberGeral.SQL.Add('order by D.emissao,D.vencto');
                  dm.docreceberGeral.Open;
                end;
           end;
end;

procedure TFrmReceber.DBGrid1DblClick(Sender: TObject);
begin
        atualiza;
        PageControl1.ActivePageIndex := 0;
end;

procedure TFrmReceber.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if Key = 13 then
           begin
              dm.docreceber.Close;
              dm.docreceber.SQL.Clear;
              dm.docreceber.SQL.Add('select * from docreceber');
              dm.docreceber.sql.add('where cod = '+IntToStr(dm.docreceberGeralcod.Value));
              dm.docreceber.Open;
              atualiza;
              PageControl1.ActivePageIndex := 0;
           end;
end;

procedure TFrmReceber.btbaixarClick(Sender: TObject);
var
texto:string;
begin
  if (EdDocumento.Text<>'') and (mevencto.Text<>'  /  /    ') and (edliquido.Text<>'') then
     begin  
        if (mepagto.text='  /  /    ') then
           begin
             dm.parametros.Close;
             dm.parametros.Open;
             limparbaixa;
             dm.planocontas.Open;
             dm.contascorrente.Open;
             if dm.contascorrente.Locate('conta',dm.parametroscontabanco.Value,[]) then
                cbconta.Text:=dm.contascorrentedescricao.Value
             else
                cbconta.Text:='';
             opcao:=3;
             mepagto.Text:=DateToStr(date);
             atraso:=0;
             atraso:=Int(date-StrToDate(mevencto.Text));
             if atraso>0 then
                begin
                  juros:=(dm.parametrosJuros1.value*StringToFloat(edliquido.Text))/100/30*atraso;
                  multa:=(StringToFloat(edliquido.Text)*dm.parametrosMulta1.value)/100;
                  valoratraso:=StringToFloat(edliquido.Text)+juros+multa;
                end
                else
                begin
                  juros := 0;
                  multa := 0;
                  atraso := 0;
                  valoratraso:=StringToFloat(edliquido.Text);
                end;
             if juros+multa>0 then
                EdJuros.Text:=formatfloat('#,##0.00',juros+multa)
             else
                EdJuros.Text:='';
             edvalorpago.Text:=edliquido.Text;
             P_Baixar.Enabled:=true;
             btconfirmar.Enabled:=true;
             btbaixar.Enabled:=false;
{             if cbconta.Text='' then
                begin
                  if dm.contascorrente.Locate('conta',dm.parametrosConta.Value,[]) then
                     cbconta.Text:=dm.contascorrentedescricao.Value
                  else
                     cbconta.Text:='';
                end;
             if cbplanoconta.Text='' then
                begin
                  if dm.planocontas.Locate('codigo',dm.parametrosreceberprazo.Value,[]) then
                     cbplanoconta.Text:=dm.planocontaschave.Value
                  else
                     cbplanoconta.Text:='';
                end;
}             cbconta.SetFocus;
           end
           else
           begin
             dm.usuarios.Open;
             dm.usuarios.Locate('nome',FrmPrincipal.sb.Panels[3].Text,[]);
             if dm.usuarioscontasreceber.value='5' then
                begin
                   if Application.Messagebox ('Deseja cancelar baixa?','T�tulo J� Baixado', Mb_YesNo+mb_iconquestion) = id_yes then
                      begin
                         busca := '';
                         ClickedOK := InputQuery('Digite Motivo do Cancelamento', 'Cancelamento da Baixa', busca);
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
                         dm.rastrorotina.Value:='DOC. RECEBER';
                         dm.rastrooperacao.Value:='C';
                         dm.rastrohistorico.Value:=EdDocumento.Text+' '+
                         lbcliente.Caption+' '+EdNossoNum.Text;
                         dm.rastrofavorecido.Value:=StrToInt(edcliente.Text);
                         dm.rastrovalor.Value:=StringToFloat(edvalorpago.Text);
                         dm.rastroobs.Value:=busca;
                         dm.rastro.Post;
                         dm.rastro.Close;

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
                         dm.financeirohistorico.Value:='Vlr ref cancelamento da baixa '+lbcliente.Caption;
                         if cbplanoconta.Text<>'' then
                            begin
                                 dm.planocontas.Open;
                                 if dm.planocontas.Locate('chave',cbplanoconta.Text,[]) then
                                    dm.financeiroplanoconta.Value:=dm.planocontascodigo.value;
                            end;
                         dm.financeirotipo.value:='D';
                         dm.financeirodebito.Value:=StringToFloat(edvalorpago.Text);
                         dm.financeiro.Post;

                         qratualizar.close;
                         qratualizar.sql.clear;
                         qratualizar.sql.add('update docreceber set');
                         qratualizar.sql.add('conta = null,');
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
                         limparbaixa;
                      end;
                end
                else
                  application.MessageBox('Contate o Aten��o para cancelar baixa','T�tulo J� Baixado',mb_ok+MB_ICONERROR);
           end;
     end;
end;

procedure TFrmReceber.cbcontaExit(Sender: TObject);
begin
  if cbconta.Text<>'' then
     begin
       dm.contascorrente.Open;
       if not dm.contascorrente.Locate('descricao',cbconta.text,[]) then
          begin
            application.MessageBox('Conta n�o Cadastrada','Aten��o',mb_ok+mb_iconinformation);
            cbconta.text:='';
            cbconta.SetFocus;
          end;
     end;
  cbconta.Color:=clWindow;
end;

procedure TFrmReceber.cbplanocontaExit(Sender: TObject);
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

procedure TFrmReceber.mepagtoExit(Sender: TObject);
begin
        if mepagto.text<>'  /  /    ' then
        Try
           StrToDate(mepagto.Text) ;
           if dm.usuarioscontasreceber.Value<>'5' then
              begin
                if StrToDate(mepagto.Text)<>date then
                   begin
                     application.MessageBox('Data de Pagamento Inferior a Data Atual!','Aten��o',mb_Ok+mb_iconerror);
                     mepagto.setfocus;
                   end;
              end
              else
              begin
                atraso:=0;
                atraso:=Int(StrToDate(mepagto.Text)-StrToDate(mevencto.Text));
                if atraso>0 then
                   begin
                     juros:=(dm.parametrosJuros1.value*StringToFloat(edliquido.Text))/100/30*atraso;
                     multa:=(StringToFloat(edliquido.Text)*dm.parametrosMulta1.value)/100;
                     valoratraso:=StringToFloat(edliquido.Text)+juros+multa;
                   end
                   else
                   begin
                     juros := 0;
                     multa := 0;
                     atraso := 0;
                     valoratraso:=StringToFloat(edliquido.Text);
                   end;
                if juros+multa>0 then
                   EdJuros.Text:=formatfloat('#,##0.00',juros+multa)
                else
                   EdJuros.Text:='';
                edvalorpago.Text:=edliquido.Text;
              end;
        Except
        begin
           application.MessageBox('Data Inv�lida!','Aten��o',mb_Ok+mb_iconerror);
           mepagto.setfocus;
        end;
        end;
  mepagto.Color:=clWindow;
end;

procedure TFrmReceber.EdJurosExit(Sender: TObject);
begin
  if EdJuros.Text<>'' then
     begin
       EdJuros.Text:=formatfloat('#,##0.00',StringToFloat(EdJuros.text));
       edvalorpago.Text:=formatfloat('#,##0.00',StringToFloat(edliquido.text)+
       StringToFloat(EdJuros.text));
     end;
  EdJuros.Color:=clWindow;
end;

procedure TFrmReceber.EdDescontoExit(Sender: TObject);
begin
  if EdDesconto.Text<>'' then
     begin
       EdDesconto.Text:=formatfloat('#,##0.00',StringToFloat(EdDesconto.text));
       edvalorpago.Text:=formatfloat('#,##0.00',StringToFloat(edvalorpago.text)-StringToFloat(EdDesconto.text));
     end;
  EdDesconto.Color:=clWindow;
end;

procedure TFrmReceber.edvalorpagoExit(Sender: TObject);
begin
      if edvalorpago.Text<>'' then
         begin
           edvalorpago.Text:=formatfloat('#,##0.00',StringToFloat(edvalorpago.text));
           if edvalorpago.Text=edliquido.Text then
              edjuros.Text:='';
         end;
  edvalorpago.Color:=clWindow;
end;

procedure TFrmReceber.btconfirmarClick(Sender: TObject);
var
tam,tamI:integer;
D_conta,D_planoconta,
D_pgto,D_planojuros,D_obsI,D_docorigem,n:String;
D_juros,D_desconto,D_multa,D_valorpago:real;
begin
      dm.parametros.Close;
      dm.parametros.Open;
      if (cbconta.Text<>'') and (cbplanoconta.Text<>'') and
         (mepagto.Text<>'  /  /    ') and (edvalorpago.Text<>'') then
         begin
            if Application.Messagebox ('Confirma Baixa?','Aten��o', Mb_YesNo+mb_iconquestion) = id_yes then
               begin
                  if opcao=3 then
                     begin
                       D_conta:='';
                       D_planoconta:='';
                       D_pgto:='';
                       D_planojuros:='';
                       D_obsI:='';
                       D_docorigem:='';
                       D_juros:=0;
                       D_multa:=0;
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
                       if mepagto.Text<>'  /  /    ' then
                          D_pgto:=copy(mepagto.text,7,4)+'/'+
                          copy(mepagto.text,4,2)+'/'+copy(mepagto.text,1,2)
                       else
                          D_pgto:='0000/00/00';
                       if edvalorpago.Text<>'' then
                          D_valorpago:=StringToFloat(edvalorpago.text);
                       if edmulta.Text<>'' then
                          D_multa:=StringToFloat(edmulta.text);
                       if edvalorpago.text=edliquido.text then
                          D_juros:=0
                       else
                       begin
                         if EdJuros.Text<>'' then
                            D_juros:=StringToFloat(EdJuros.text);
                       end;
                       if cbplanojuros.Text<>'' then
                          begin
                            dm.planocontas.Open;
                            if dm.planocontas.Locate('chave',cbplanojuros.Text,[]) then
                               D_planojuros:=dm.planocontascodigo.value;
                          end;
                       if EdDesconto.Text<>'' then
                          D_desconto:=StringToFloat(EdDesconto.text);
                       D_docorigem:=eddocorigem.Text;

                       qratualizar.close;
                       qratualizar.sql.clear;
                       qratualizar.sql.add('update docreceber set');
                       qratualizar.sql.add('conta = :D_conta,');
                       qratualizar.sql.add('planoconta = :D_planoconta,');
                       qratualizar.sql.add('pgto = :D_pgto,');
                       qratualizar.sql.add('juros = :D_juros,');
                       qratualizar.sql.add('planojuros = :D_planojuros,');
                       qratualizar.sql.add('desconto = :desconto,');
                       qratualizar.sql.add('valorpago = :D_valorpago,');
                       qratualizar.sql.add('obsI = :D_obsI,');
                       qratualizar.sql.add('docorigem = :D_docorigem,');
                       qratualizar.sql.add('multa = :D_multa');
                       qratualizar.SQL.Add('where cod ='+lbcodigo.Caption);
                       qratualizar.Params[0].Value := D_conta;
                       qratualizar.Params[1].Value := D_planoconta;
                       qratualizar.Params[2].Value := D_pgto;
                       qratualizar.Params[3].Value := D_juros;
                       qratualizar.Params[4].Value := D_planojuros;
                       qratualizar.Params[5].Value := D_desconto;
                       qratualizar.Params[6].Value := D_valorpago;
                       qratualizar.Params[7].Value := D_obsI;
                       qratualizar.Params[8].Value := D_docorigem;
                       qratualizar.Params[9].Value := D_multa;
                       qratualizar.ExecSQL;

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
                       dm.rastrorotina.Value:='DOC. RECEBER';
                       dm.rastrooperacao.Value:='B';
                       dm.rastrohistorico.Value:=EdDocumento.Text+' '+
                       lbcliente.Caption+' '+EdNossoNum.Text;
                       dm.rastrofavorecido.Value:=StrToInt(edcliente.Text);
                       dm.rastrovalor.Value:=StringToFloat(edvalorpago.Text);
                       dm.rastroobs.Value:='BAIXA MANUAL';
                       dm.rastro.Post;
                       dm.rastro.Close;

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
                       if StringToFloat(edvalorpago.text)<StringToFloat(edliquido.text) then
                          dm.financeirohistorico.Value:='Vlr ref rec por conta '+lbcliente.Caption
                       else
                          dm.financeirohistorico.Value:='Vlr ref rec '+lbcliente.Caption;
                       if cbplanoconta.Text<>'' then
                          begin
                               dm.planocontas.Open;
                               if dm.planocontas.Locate('chave',cbplanoconta.Text,[]) then
                                  dm.financeiroplanoconta.Value:=dm.planocontascodigo.value;
                          end;
                       dm.financeirotipo.value:='C';
                       if (edvalorpago.Text<>'') and (cbplanojuros.Text='') then
                          dm.financeirocredito.Value:=StringToFloat(edvalorpago.Text)
                       else if (edvalorpago.Text<>'') and (cbplanojuros.Text<>'') then
                          dm.financeirocredito.Value:=StringToFloat(edvalorpago.Text)-StringToFloat(edjuros.Text);
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
                             dm.financeirohistorico.Value:='Vlr ref rec juros '+lbcliente.Caption;
                             if cbplanojuros.Text<>'' then
                                begin
                                     dm.planocontas.Open;
                                     if dm.planocontas.Locate('chave',cbplanojuros.Text,[]) then
                                        dm.financeiroplanoconta.Value:=dm.planocontascodigo.value;
                                end;
                             dm.financeirotipo.value:='C';
                             if EdJuros.Text<>'' then
                                dm.financeirocredito.Value:=StringToFloat(EdJuros.Text);
                             dm.financeiroOperador.Value:=FrmPrincipal.sb.Panels[3].Text;
                             dm.financeiroData_Operacao.Value:=date;
                             dm.financeiroHora_Operacao.Value:=TimeToStr(time);
                             dm.financeiro.Post;
                          end;

                       if StringToFloat(edvalorpago.text)<StringToFloat(edliquido.text) then
                          begin
                            if Application.Messagebox ('Confirma Lan�amento?','Pagamento por Conta', Mb_YesNo+mb_iconquestion) = id_yes then
                               begin
                                  Try
                                    dm.docreceber.Close;
                                    dm.docreceber.SQL.Clear;
                                    dm.docreceber.SQL.Add('select * from docreceber');
                                    dm.docreceber.SQL.Add('where (cliente = '+edcliente.Text+')');
                                    dm.docreceber.SQL.Add('and (doc = '+chr(39)+EdDocumento.Text+chr(39)+')');
                                    dm.docreceber.Open;
                                    dm.docreceber.Insert;
                                    if edcliente.Text<>'' then
                                       dm.docrecebercliente.Value:=StrToInt(edcliente.text);
                                    if cbtipo.text<>'' then
                                       dm.docrecebertipo.Value:=copy(cbtipo.Text,1,2);

                                    tam:=length(EdDocumento.Text);
                                    if BuscaDireita('/',EdDocumento.text)>0 then
                                       begin
                                         tamI:=tam-1;
                                         n:=formatfloat('00',StrToInt(copy(EdDocumento.text,tamI,2))+1);
                                         dm.docreceberdoc.value:=copy(EdDocumento.text,1,BuscaDireita('/',EdDocumento.text)-1)+
                                         '/'+n;
                                       end
                                       else
                                         dm.docreceberdoc.value:=EdDocumento.Text+'/01';
                                    dm.docreceberobs.Value:='DOC. GERADO POR PAGTO. POR CONTA DO DOC. '+
                                    EdDocumento.Text+' - VLR R$ '+edliquido.text;
                                    EdDocumento.Text:=dm.docreceberdoc.value;
                                    if meemissao.Text<>'  /  /    ' then
                                       dm.docreceberemissao.Value:=StrToDate(mepagto.text);
                                    if mevencto.Text<>'  /  /    ' then
                                       dm.docrecebervencto.Value:=StrToDate(mevencto.text);
                                    if edvalor.Text<>'' then
                                       dm.docrecebervalor.Value:=StringToFloat(edliquido.text)-StringToFloat(edvalorpago.text);
                                    if EdLiquido.Text<>'' then
                                       dm.docreceberliquido.Value:=StringToFloat(edliquido.text)-StringToFloat(edvalorpago.text);
                                    dm.docreceberlocalcob.Value:=EdLocal.Text;
                                    dm.docreceberN_Numero.Value:=EdNossoNum.Text;
                                    if edbanco.Text<>'' then
                                       dm.docreceberbanco.Value:=StrToInt(Edbanco.text);
                                    dm.docreceberag.Value:=edagencia.Text;
                                    dm.docreceberContaCorrente.Value:=EdCC.Text;
                                    if edcheque.Text<>'' then
                                       dm.docrecebercheque.Value:=StrToInt(Edcheque.text);
                                    dm.docreceber.Post;
                                    dm.docreceber.Close;
                                    dm.docreceber.Open;

                                    D_liquido:=0;
                                    D_liquido:=StringToFloat(edvalorpago.text);
                                    qratualizar.close;
                                    qratualizar.sql.clear;
                                    qratualizar.sql.add('update docreceber set');
                                    qratualizar.sql.add('liquido = :D_liquido');
                                    qratualizar.SQL.Add('where cod ='+lbcodigo.Caption);
                                    qratualizar.Params[0].Value := D_liquido;
                                    qratualizar.ExecSQL;

                                    atualiza;
                                    limparbaixa;
                                  Except
                                    application.MessageBox('Erro ao Inserir Registro!','Aten��o',mb_Ok+mb_iconerror);
                                    limpar;
                                  end;
                               end;
                          end;
                     end;
               end
               else
                 limparbaixa;
             P_Baixar.Enabled:=false;
             btconfirmar.Enabled:=false;
             btbaixar.Enabled:=true;
             btconsultar.Click;
             dm.docreceberGeral.Locate('doc',eddocumento.Text,[]);
         end
         else
         begin
           application.MessageBox('Preencha: Conta Corrente, Pl. Contas, Data Pgto e Valor Pago','Aten��o',mb_Ok+mb_iconerror);
           limparbaixa;
           P_Baixar.Enabled:=false;
           btconfirmar.Enabled:=false;
           btbaixar.Enabled:=true;
           btbaixar.SetFocus;
         end;
end;

procedure TFrmReceber.cbplanojurosExit(Sender: TObject);
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

procedure TFrmReceber.btprimeiroClick(Sender: TObject);
begin
        dm.docreceberGeral.First;
        atualiza;
end;

procedure TFrmReceber.btanteriorClick(Sender: TObject);
begin
        dm.docreceberGeral.prior;
        atualiza;
end;

procedure TFrmReceber.btproximoClick(Sender: TObject);
begin
        dm.docreceberGeral.next;
        atualiza;
end;

procedure TFrmReceber.btultimoClick(Sender: TObject);
begin
        dm.docreceberGeral.last;
        atualiza;
end;

procedure TFrmReceber.btcancelarClick(Sender: TObject);
begin
        if btnovo.Enabled=false then
           begin
                habilita;
                limpar;
           end
           else
                close;
end;

procedure TFrmReceber.SpeedButton1Click(Sender: TObject);
begin
  if chExcel.Checked=false then
     begin
      dm.parametros.Close;
      dm.parametros.Open;
      Application.CreateForm(TFrmReceberImp, FrmReceberImp);
      FrmReceberImp.qrrazao.DataField:='razaosocial';
      FrmReceberImp.qrrazao.DataSource:=dm.dsparametros;
      FrmReceberImp.qrrazaoI.DataField:='razaosocial';
      FrmReceberImp.qrrazaoI.DataSource:=dm.dsparametros;
      if rb2.Checked then
         begin
           FrmReceberImp.qrtitulo.Caption:='Relat�rio Documentos � Receber - � Vencer';
           FrmReceberImp.qrtituloII.Caption:='Relat�rio Documentos � Receber - � Vencer';
           if chquebrar.Checked=false then
              FrmReceberImp.RLReport2.preview
           else
              FrmReceberImp.QuickRep1.preview
         end
      else if rb5.Checked then
         begin
           FrmReceberImp.qrtitulo.Caption:='Relat�rio Documentos � Receber - em Aberto';
           FrmReceberImp.qrtituloII.Caption:='Relat�rio Documentos � Receber - em Aberto';
           if chquebrar.Checked=false then
              FrmReceberImp.RLReport2.preview
           else
              FrmReceberImp.QuickRep1.preview
         end
      else if rb1.Checked then
         begin
           FrmReceberImp.qrtitulo.Caption:='Relat�rio Documentos � Receber - Vencidos';
           FrmReceberImp.qrtituloII.Caption:='Relat�rio Documentos � Receber - Vencidos';
           if chquebrar.Checked=false then
              FrmReceberImp.RLReport2.preview
           else
              FrmReceberImp.QuickRep1.preview
         end
         else
         begin
           FrmReceberImp.qrtituloI.Caption:='Relat�rio Documentos � Receber';
           FrmReceberImp.qrtituloII.Caption:='Relat�rio Documentos � Receber';
           if chquebrar.Checked=false then
              FrmReceberImp.RLReport1.preview
           else
              FrmReceberImp.QuickRep1.preview
         end;
      FrmReceberImp.Release;
      FrmReceberImp:=nil;
     end
     else
     begin
      Excel := CreateOleObject('Excel.Application');
      Excel.Visible :=True;
      Excel.WorkBooks.Open('C:\Gestor Trasnp\teste.xls');
      if rb2.Checked then
         Excel.WorkBooks[1].Sheets[1].Cells[1,1]:='Relat�rio Documentos � Receber - � Vencer'
      else if rb5.Checked then
         Excel.WorkBooks[1].Sheets[1].Cells[1,1]:='Relat�rio Documentos � Receber - em Aberto'
      else if rb1.Checked then
         Excel.WorkBooks[1].Sheets[1].Cells[1,1]:='Relat�rio Documentos � Receber - Vencidos'
      else
         Excel.WorkBooks[1].Sheets[1].Cells[1,1]:='Relat�rio Documentos � Receber';
      Excel.WorkBooks[1].Sheets[1].Cells[3,1]:='Cliente';
      Excel.WorkBooks[1].Sheets[1].Cells[3,2]:='Documento';
      Excel.WorkBooks[1].Sheets[1].Cells[3,3]:='Nota Fiscal';
      Excel.WorkBooks[1].Sheets[1].Cells[3,4]:='Emiss�o';
      Excel.WorkBooks[1].Sheets[1].Cells[3,5]:='Valor';
      Excel.WorkBooks[1].Sheets[1].Cells[3,6]:='Vencto';
      Excel.WorkBooks[1].Sheets[1].Cells[3,7]:='Pagamento';
      Excel.WorkBooks[1].Sheets[1].Cells[3,8]:='Vlr Pago';
      Excel.WorkBooks[1].Sheets[1].Cells[3,9]:='Atraso';
      Excel.WorkBooks[1].Sheets[1].Cells[3,10]:='Juros';
      Excel.WorkBooks[1].Sheets[1].Cells[3,11]:='Multa';
      Excel.WorkBooks[1].Sheets[1].Cells[3,12]:='Vlr Atraso';
      dm.docreceberGeral.First;
      Linha:=4;
      While not dm.docreceberGeral.Eof do
           Begin
             Excel.WorkBooks[1].Sheets[1].Cells[Linha,1]:=dm.docreceberGeralnome.value;
             Excel.WorkBooks[1].Sheets[1].Cells[Linha,2]:=dm.docreceberGeraldoc.Value;
             Excel.WorkBooks[1].Sheets[1].Cells[Linha,3]:=dm.docreceberGeralnf.Value;
             Excel.WorkBooks[1].Sheets[1].Cells[Linha,4]:=dm.docreceberGeralemissao.Value;
             Excel.WorkBooks[1].Sheets[1].Cells[Linha,5]:=dm.docreceberGeralliquido.Value;
             Excel.WorkBooks[1].Sheets[1].Cells[Linha,6]:=dm.docreceberGeralvencto.Value;
             if dm.docreceberGeralvalorpago.Value>0 then
                begin
                  Excel.WorkBooks[1].Sheets[1].Cells[Linha,7]:=dm.docreceberGeralpgto.Value;
                  Excel.WorkBooks[1].Sheets[1].Cells[Linha,8]:=dm.docreceberGeralvalorpago.Value;
                end;
             Excel.WorkBooks[1].Sheets[1].Cells[Linha,9]:=dm.docreceberGeralatraso.Value;
             Excel.WorkBooks[1].Sheets[1].Cells[Linha,10]:=dm.docreceberGeraljuros1.Value;
             Excel.WorkBooks[1].Sheets[1].Cells[Linha,11]:=dm.docreceberGeralmulta1.Value;
             Excel.WorkBooks[1].Sheets[1].Cells[Linha,12]:=dm.docreceberGeralvaloratraso.Value;
             dm.docreceberGeral.Next;
             Linha:=Linha+1;
           end;
     end;
end;

procedure TFrmReceber.mepagtoEnter(Sender: TObject);
begin
  mepagto.Color:=$0080FFFF;
      if mepagto.text='  /  /    ' then
         begin
           mepagto.Text:=DateToStr(date);
           mepagto.SelStart:=0;
           mepagto.SelLength:=length(mepagto.Text);
         end;
end;

procedure TFrmReceber.edclienteExit(Sender: TObject);
begin
  if edcliente.Text<>'' then
     begin
        dm.clientes.close;
        dm.clientes.sql.clear;
        dm.clientes.sql.add('select * from clientes');
        dm.clientes.sql.add('where codigo = '+edcliente.text);
        dm.clientes.open;
        if dm.clientes.RecordCount<1 then
           begin
             application.MessageBox('Cliente n�o Localizado','Aten��o',mb_ok+mb_iconinformation);
             edcliente.SetFocus;
           end
           else
             lbcliente.Caption:=dm.clientesnome.value;
     end;
  edcliente.Color:=clWindow;
end;

procedure TFrmReceber.edclienteIExit(Sender: TObject);
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

procedure TFrmReceber.edclienteKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmReceber.meemissaoEnter(Sender: TObject);
begin
  meemissao.Color:=$0080FFFF;
      if meemissao.Text='  /  /    ' then
         begin
           meemissao.Text:=DateToStr(date);
           meemissao.SelStart:=0;
           meemissao.SelLength:=length(meemissao.Text);
         end;
end;

procedure TFrmReceber.rbgeralClick(Sender: TObject);
begin
      LimparConsulta;
end;

procedure TFrmReceber.medtinicialExit(Sender: TObject);
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

procedure TFrmReceber.medtfinalExit(Sender: TObject);
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

procedure TFrmReceber.meinicialExit(Sender: TObject);
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

procedure TFrmReceber.mefinalExit(Sender: TObject);
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

procedure TFrmReceber.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
      if (dm.docreceberGeralpgto.isnull) and (dm.docrecebergeralVencto.value<date) then
      Dbgrid1.Canvas.Font.Color:= clred;
      Dbgrid1.DefaultDrawDataCell(Rect, dbgrid1.columns[datacol].field, State);
      if (dm.docreceberGeralpgto.isnull) and (dm.docrecebergeralVencto.value>=date) and
      (dm.docreceberGeralN_numero.Value='') then
      Dbgrid1.Canvas.Font.Color:= clblack;
      Dbgrid1.DefaultDrawDataCell(Rect, dbgrid1.columns[datacol].field, State);
{      if (dm.docreceberGeralpgto.isnull) and (dm.docrecebergeralVencto.value>=date) and
      (dm.docreceberGeralN_numero.Value<>'') then
      Dbgrid1.Canvas.Font.Color:= clMaroon;
      Dbgrid1.DefaultDrawDataCell(Rect, dbgrid1.columns[datacol].field, State);
}      if not dm.docreceberGeralpgto.isnull then
      Dbgrid1.Canvas.Font.Color:= clblue;
      Dbgrid1.DefaultDrawDataCell(Rect, dbgrid1.columns[datacol].field, State);
end;

procedure TFrmReceber.cbplanojurosEnter(Sender: TObject);
begin
  cbplanojuros.Color:=$0080FFFF;
{      if (cbplanojuros.Text='') and (edjuros.Text<>'') then
         begin
           if dm.planocontas.Locate('codigo',dm.parametrosReceberJuros.Value,[]) then
              cbplanojuros.Text:=dm.planocontaschave.Value
           else
              cbplanojuros.Text:='';
         end;
}end;

procedure TFrmReceber.SpeedButton3Click(Sender: TObject);
begin
       totalgeral:=0;
       vencer:=0;
       pago:=0;
       if (mevenctoinicial.text<>'  /  /    ') and
          (mevenctofinal.text<>'  /  /    ') then
          begin
            dm.Totaldocreceber.Close;
            dm.Totaldocreceber.SQL.Clear;
            dm.Totaldocreceber.SQL.Add('select sum(liquido) as total from docreceber');
            dm.Totaldocreceber.SQL.Add('where (vencto between '+chr(39)+
            copy(mevenctoinicial.text,7,4)+'/'+copy(mevenctoinicial.text,4,2)+'/'+
            copy(mevenctoinicial.text,1,2)+chr(39)+' and '+chr(39)+
            copy(mevenctofinal.text,7,4)+'/'+copy(mevenctofinal.text,4,2)+'/'+
            copy(mevenctofinal.text,1,2)+chr(39)+')');
            if edclienteII.Text<>'' then
               dm.Totaldocreceber.SQL.Add('and (cliente = '+edclienteII.text+')');
            dm.Totaldocreceber.open;
            if dm.Totaldocrecebertotal.Value>0 then
               totalgeral:=dm.Totaldocreceber['total'];

            dm.Totaldocreceber.Close;
            dm.Totaldocreceber.SQL.Clear;
            dm.Totaldocreceber.SQL.Add('select sum(valorpago) as total from docreceber');
            dm.Totaldocreceber.SQL.Add('where (pgto is not null)');
            dm.Totaldocreceber.SQL.Add('and (vencto between '+chr(39)+
            copy(mevenctoinicial.text,7,4)+'/'+copy(mevenctoinicial.text,4,2)+'/'+
            copy(mevenctoinicial.text,1,2)+chr(39)+' and '+chr(39)+
            copy(mevenctofinal.text,7,4)+'/'+copy(mevenctofinal.text,4,2)+'/'+
            copy(mevenctofinal.text,1,2)+chr(39)+')');
            if edclienteII.Text<>'' then
               dm.Totaldocreceber.SQL.Add('and (cliente = '+edclienteII.text+')');
            dm.Totaldocreceber.open;
            if dm.Totaldocrecebertotal.Value>0 then
               pago:=dm.Totaldocreceber['total'];

            vencer:=totalgeral-pago;

            series1.Clear;
            series1.Add(totalgeral, 'Total Geral', $00408000 ) ;
            series1.Add(pago, 'Total Pago', clblue ) ;
            series1.Add(vencer, 'Total � Receber', clred ) ;

            With Chart1.Title.Text do
            begin
              Clear;
              Add('Gr�fico - Documentos � Receber no P�riodo de : '+
              mevenctoinicial.text+' � '+mevenctofinal.text);
            end;
            Chart1.Repaint;
          end;
end;

procedure TFrmReceber.mevenctoinicialExit(Sender: TObject);
begin
        if mevenctoinicial.text<>'  /  /    ' then
        begin
        Try
           StrToDate(mevenctoinicial.Text) ;
        Except
        begin
           application.MessageBox('Data Inv�lida!','Aten��o',mb_Ok+mb_iconerror);
           mevenctoinicial.setfocus;
        end;
        end;
        end;
end;

procedure TFrmReceber.mevenctofinalExit(Sender: TObject);
begin
        if mevenctofinal.text<>'  /  /    ' then
        begin
        Try
           StrToDate(mevenctofinal.Text) ;
           If StrToDate(mevenctoinicial.Text) > StrToDate(mevenctofinal.Text) then
              Begin
                 MessageBox(Handle, 'Data inferior � data inicial de pesquisa!!', 'Aten��o', mb_IconWarning or mb_Ok);
                 mevenctofinal.SetFocus;
              End;
        Except
        begin
           application.MessageBox('Data Inv�lida!','Aten��o',mb_Ok+mb_iconerror);
           mevenctofinal.setfocus;
        end;
        end;
        end;
end;

procedure TFrmReceber.edclienteIIExit(Sender: TObject);
begin
      if edclienteII.Text<>'' then
         begin
            dm.clientes.close;
            dm.clientes.sql.clear;
            dm.clientes.sql.add('select * from clientes');
            dm.clientes.sql.add('where codigo = '+edclienteII.text);
            dm.clientes.open;
            if dm.clientes.RecordCount<1 then
               begin
                 application.MessageBox('Cliente n�o Localizado','Aten��o',mb_ok+mb_iconinformation);
                 edclienteII.SetFocus;
               end
               else
                 lbclienteII.Caption:=dm.clientesnome.value;
         end;
end;

procedure TFrmReceber.edvlrdocExit(Sender: TObject);
begin
      if edvlrdoc.Text<>'' then
         edvlrdoc.Text:=formatfloat('#,##0.00',StringToFloat(edvlrdoc.text));
end;

procedure TFrmReceber.MeDataInicialEnter(Sender: TObject);
begin
      if MeDataInicial.Text='  /  /    ' then
         begin
           MeDataInicial.Text:=DateToStr(date);
           MeDataInicial.SelStart:=0;
           MeDataInicial.SelLength:=length(MeDataInicial.Text);
         end;
end;

procedure TFrmReceber.MeDataFinalEnter(Sender: TObject);
begin
      if MeDataFinal.Text='  /  /    ' then
         begin
           MeDataFinal.Text:=DateToStr(date);
           MeDataFinal.SelStart:=0;
           MeDataFinal.SelLength:=length(MeDataFinal.Text);
         end;
end;

procedure TFrmReceber.Memo1Exit(Sender: TObject);
begin
      btgravar.Click;
  Memo1.Color:=clWindow;
end;

procedure TFrmReceber.btReciboClick(Sender: TObject);
begin
       try
         Application.CreateForm(TFrmRecibo, FrmRecibo);
         if edliquido.Text<>'' then
            begin
              FrmRecibo.edvalor.Text:=edliquido.Text;
              FrmRecibo.edsacado.Text:=lbcliente.Caption;
              FrmRecibo.Memo1.Text:='Quita��o do documento '+EdDocumento.Text;
            end;
         FrmRecibo.showmodal;
       finally
         FrmRecibo.Release;
         FrmRecibo:=nil;
       end;
end;

procedure TFrmReceber.SpeedButton4Click(Sender: TObject);
begin
      if eddoc.text<>'' then
         begin
           dm.docreceber.Close;
           dm.docreceber.SQL.Clear;
           dm.docreceber.SQL.Add('select * from docreceber');
           dm.docreceber.sql.add('where cod = '+IntToStr(dm.docreceberGeralcod.Value));
           dm.docreceber.Open;

           dm.clientes.close;
           dm.clientes.sql.clear;
           dm.clientes.sql.add('select * from clientes');
           dm.clientes.sql.add('where codigo = '+IntToStr(dm.docrecebercliente.Value));
           dm.clientes.open;
           if length(dm.clientescpf.Value)>11 then
              begin
                qrcnpjI.DataField:='cnpj';
                qrieI.DataField:='ie';
              end
              else
              begin
                qrcnpjI.DataField:='cpf';
                qrieI.DataField:='rg';
              end;

           dm.Totaldocreceber.Close;
           dm.Totaldocreceber.SQL.Clear;
           dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
           dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo)');
           dm.Totaldocreceber.SQL.Add('and (D.doc like '+chr(39)+eddoc.text+'%'+chr(39)+')');
           dm.Totaldocreceber.open;
           if dm.Totaldocrecebertotal.Value>0 then
              qrvalor.Caption:=formatfloat('#,##0.00',dm.Totaldocreceber['total'])
           else
              qrvalor.Caption:='';

           dm.parametros.Close;
           dm.parametros.Open;
           qrrodape.Lines.Clear;
           qrrodape.Lines.Add('Reconhe�o(emos) a exatid�o desta DUPLICATA DE VENDA MERCANTIL E/OU PRESTA��O DE SERVI�OS, na import�ncia acima que pagarei(emos) � '+dm.parametrosrazaosocial.Value+', ou � sua Ordem na pra�a e vencimento acima indicados.');
           QuickRep2.Preview;
         end;
end;

procedure TFrmReceber.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
      qrmemo1.Lines.Clear;
      QRMemo1.Lines.Add(NumeroParaExtenso(dm.docreceberGeralliquido.Value));
end;

procedure TFrmReceber.FormCreate(Sender: TObject);
begin
{      dm.parametros.Close;
      dm.parametros.SQL.Clear;
      dm.parametros.SQL.Add('select * from parametros');
      dm.parametros.Open;
      if dm.parametrospathfiguraboleto.AsString<>'' then
         begin
           QRImage1.Picture.LoadFromFile(dm.parametrospathfiguraboleto.AsString);
           QRImage2.Picture.LoadFromFile(dm.parametrospathfiguraboleto.AsString);
           QRImage3.Picture.LoadFromFile(dm.parametrospathfiguraboleto.AsString);
         end;
}end;

procedure TFrmReceber.SpeedButton5Click(Sender: TObject);
begin
      if eddoc.text<>'' then
         begin
           dm.docreceber.Close;
           dm.docreceber.SQL.Clear;
           dm.docreceber.SQL.Add('select * from docreceber');
           dm.docreceber.sql.add('where cod = '+IntToStr(dm.docreceberGeralcod.Value));
           dm.docreceber.Open;

           dm.clientes.close;
           dm.clientes.sql.clear;
           dm.clientes.sql.add('select * from clientes');
           dm.clientes.sql.add('where codigo = '+IntToStr(dm.docrecebercliente.Value));
           dm.clientes.open;
           dm.parametros.Close;
           dm.parametros.Open;
           i:=1;
           qr1.Enabled:=false;
           qr2.Enabled:=false;
           qr3.Enabled:=false;
           qr4.Enabled:=false;
           qr5.Enabled:=false;
           qr6.Enabled:=false;
           qr7.Enabled:=false;
           qr8.Enabled:=false;
           qr9.Enabled:=false;
           qr10.Enabled:=false;
           qr11.Enabled:=false;
           qr12.Enabled:=false;
           qrvencto1.caption:='';
           qrvencto2.caption:='';
           qrvencto3.caption:='';
           qrvencto4.caption:='';
           qrvencto5.caption:='';
           qrvencto6.caption:='';
           qrvencto7.caption:='';
           qrvencto8.caption:='';
           qrvencto9.caption:='';
           qrvencto10.caption:='';
           qrvencto11.caption:='';
           qrvencto12.caption:='';
           qrparc1.caption:='';
           qrparc2.caption:='';
           qrparc3.caption:='';
           qrparc4.caption:='';
           qrparc5.caption:='';
           qrparc6.caption:='';
           qrparc7.caption:='';
           qrparc8.caption:='';
           qrparc9.caption:='';
           qrparc10.caption:='';
           qrparc11.caption:='';
           qrparc12.caption:='';
           dm.docreceberGeral.First;
           while not dm.docreceberGeral.Eof do
                 begin
                   if i=1 then
                      begin
                        qr1.Enabled:=true;
                        qrvencto1.Caption:=DateToStr(dm.docreceberGeralvencto.Value);
                        qrparc1.Caption:=formatfloat('#,##0.00',dm.docreceberGeralliquido.Value);
                      end
                   else if i=2 then
                      begin
                        qr2.Enabled:=true;
                        qrvencto2.Caption:=DateToStr(dm.docreceberGeralvencto.Value);
                        qrparc2.Caption:=formatfloat('#,##0.00',dm.docreceberGeralliquido.Value);
                      end
                   else if i=3 then
                      begin
                        qr3.Enabled:=true;
                        qrvencto3.Caption:=DateToStr(dm.docreceberGeralvencto.Value);
                        qrparc3.Caption:=formatfloat('#,##0.00',dm.docreceberGeralliquido.Value);
                      end
                   else if i=4 then
                      begin
                        qr4.Enabled:=true;
                        qrvencto4.Caption:=DateToStr(dm.docreceberGeralvencto.Value);
                        qrparc4.Caption:=formatfloat('#,##0.00',dm.docreceberGeralliquido.Value);
                      end
                   else if i=5 then
                      begin
                        qr5.Enabled:=true;
                        qrvencto5.Caption:=DateToStr(dm.docreceberGeralvencto.Value);
                        qrparc5.Caption:=formatfloat('#,##0.00',dm.docreceberGeralliquido.Value);
                      end
                   else if i=6 then
                      begin
                        qr6.Enabled:=true;
                        qrvencto6.Caption:=DateToStr(dm.docreceberGeralvencto.Value);
                        qrparc6.Caption:=formatfloat('#,##0.00',dm.docreceberGeralliquido.Value);
                      end
                   else if i=7 then
                      begin
                        qr7.Enabled:=true;
                        qrvencto7.Caption:=DateToStr(dm.docreceberGeralvencto.Value);
                        qrparc7.Caption:=formatfloat('#,##0.00',dm.docreceberGeralliquido.Value);
                      end
                   else if i=8 then
                      begin
                        qr8.Enabled:=true;
                        qrvencto8.Caption:=DateToStr(dm.docreceberGeralvencto.Value);
                        qrparc8.Caption:=formatfloat('#,##0.00',dm.docreceberGeralliquido.Value);
                      end
                   else if i=9 then
                      begin
                        qr9.Enabled:=true;
                        qrvencto9.Caption:=DateToStr(dm.docreceberGeralvencto.Value);
                        qrparc9.Caption:=formatfloat('#,##0.00',dm.docreceberGeralliquido.Value);
                      end
                   else if i=10 then
                      begin
                        qr10.Enabled:=true;
                        qrvencto10.Caption:=DateToStr(dm.docreceberGeralvencto.Value);
                        qrparc10.Caption:=formatfloat('#,##0.00',dm.docreceberGeralliquido.Value);
                      end
                   else if i=11 then
                      begin
                        qr11.Enabled:=true;
                        qrvencto11.Caption:=DateToStr(dm.docreceberGeralvencto.Value);
                        qrparc11.Caption:=formatfloat('#,##0.00',dm.docreceberGeralliquido.Value);
                      end
                   else if i=12 then
                      begin
                        qr12.Enabled:=true;
                        qrvencto12.Caption:=DateToStr(dm.docreceberGeralvencto.Value);
                        qrparc12.Caption:=formatfloat('#,##0.00',dm.docreceberGeralliquido.Value);
                      end;
                   i:=i+1;
                   dm.docreceberGeral.Next;
                 end;


           QuickRep1.Preview;
         end;
end;

procedure TFrmReceber.EdDocumentoExit(Sender: TObject);
begin
  if eddocumento.Text<>'' then
     begin
       if opcao=1 then
          begin
            dm.docreceber.Close;
            dm.docreceber.SQL.Clear;
            dm.docreceber.SQL.Add('select * from docreceber');
            dm.docreceber.SQL.Add('where (doc = '+chr(39)+eddocumento.text+chr(39)+')');
            dm.docreceber.SQL.Add('and (cliente = '+edcliente.Text+')');
            dm.docreceber.Open;
            if dm.docreceber.RecordCount>0 then
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

procedure TFrmReceber.TitleBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    dm.docreceber.Close;
    dm.docreceber.SQL.Clear;
    dm.docreceber.SQL.Add('select * from docreceber');
    dm.docreceber.sql.add('where cod = '+IntToStr(dm.docreceberGeralcod.Value));
    dm.docreceber.Open;
    lbvalor.caption:=lbtotal.Caption;
    lbcompra.caption:=DateToStr(dm.docreceberemissao.Value);

    dm.clientes.close;
    dm.clientes.sql.clear;
    dm.clientes.sql.add('select * from clientes');
    dm.clientes.sql.add('where codigo = '+IntToStr(dm.docrecebercliente.Value));
    dm.clientes.open;
end;

procedure TFrmReceber.BitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure TFrmReceber.Memo1Enter(Sender: TObject);
begin
  Memo1.Color:=$0080FFFF;
  if Memo1.Text<>'' then
     begin
       Memo1.SelStart:=0;
       Memo1.SelLength:=length(Memo1.Text);
     end;
end;

procedure TFrmReceber.edclienteEnter(Sender: TObject);
begin
  edcliente.Color:=$0080FFFF;
end;

procedure TFrmReceber.EdDocumentoEnter(Sender: TObject);
begin
  EdDocumento.Color:=$0080FFFF;
end;

procedure TFrmReceber.ednfEnter(Sender: TObject);
begin
  ednf.Color:=$0080FFFF;
end;

procedure TFrmReceber.cbtipoEnter(Sender: TObject);
begin
  cbtipo.Color:=$0080FFFF;
end;

procedure TFrmReceber.mevenctoEnter(Sender: TObject);
begin
  mevencto.Color:=$0080FFFF;
end;

procedure TFrmReceber.edvalorEnter(Sender: TObject);
begin
  edvalor.Color:=$0080FFFF;
end;

procedure TFrmReceber.edliquidoEnter(Sender: TObject);
begin
  edliquido.Color:=$0080FFFF;
end;

procedure TFrmReceber.EdNossoNumEnter(Sender: TObject);
begin
  EdNossoNum.Color:=$0080FFFF;
end;

procedure TFrmReceber.EdbancoEnter(Sender: TObject);
begin
  Edbanco.Color:=$0080FFFF;
end;

procedure TFrmReceber.edagenciaEnter(Sender: TObject);
begin
  edagencia.Color:=$0080FFFF;
end;

procedure TFrmReceber.EdCCEnter(Sender: TObject);
begin
  EdCC.Color:=$0080FFFF;
end;

procedure TFrmReceber.EdchequeEnter(Sender: TObject);
begin
  Edcheque.Color:=$0080FFFF;
end;

procedure TFrmReceber.EdLocalEnter(Sender: TObject);
begin
  EdLocal.Color:=$0080FFFF;
end;

procedure TFrmReceber.ednfExit(Sender: TObject);
begin
  ednf.Color:=clWindow;
end;

procedure TFrmReceber.EdNossoNumExit(Sender: TObject);
begin
  EdNossoNum.Color:=clWindow;
end;

procedure TFrmReceber.EdbancoExit(Sender: TObject);
begin
  Edbanco.Color:=clWindow;
end;

procedure TFrmReceber.edagenciaExit(Sender: TObject);
begin
  edagencia.Color:=clWindow;
end;

procedure TFrmReceber.EdCCExit(Sender: TObject);
begin
  EdCC.Color:=clWindow;
end;

procedure TFrmReceber.EdchequeExit(Sender: TObject);
begin
  if copy(cbtipo.text,1,2)='CP' then
     begin
      if opcao=1 then
        begin
          if (edbanco.Text<>'') and (edagencia.Text<>'') and (EdCC.Text<>'') and (Edcheque.Text<>'') then
             begin
               dm.docreceber.Close;
               dm.docreceber.SQL.Clear;
               dm.docreceber.SQL.Add('select * from docreceber');
               dm.docreceber.SQL.Add('where (banco = '+Edbanco.text+')');
               dm.docreceber.SQL.Add('and (ag = '+chr(39)+edagencia.text+chr(39)+')');
               dm.docreceber.SQL.Add('and (ContaCorrente = '+chr(39)+EdCC.text+chr(39)+')');
               dm.docreceber.SQL.Add('and (cheque = '+Edcheque.Text+')');
               dm.docreceber.Open;
               if dm.docreceber.RecordCount>0 then
                  begin
                    dm.docreceberGeral.Close;
                    dm.docreceberGeral.SQL.Clear;
                    dm.docreceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                    dm.docreceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                    dm.docreceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                    dm.docreceberGeral.SQL.Add('from clientes C, docreceber D');
                    dm.docreceberGeral.SQL.Add('where (D.cliente=C.codigo)');
                    dm.docreceberGeral.SQL.Add('and (D.cod = '+IntToStr(dm.docrecebercod.Value)+')');
                    dm.docreceberGeral.Open;
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
  Edcheque.Color:=clWindow;
end;

procedure TFrmReceber.EdLocalExit(Sender: TObject);
begin
  EdLocal.Color:=clWindow;
end;

procedure TFrmReceber.cbcontaEnter(Sender: TObject);
begin
  cbconta.Color:=$0080FFFF;
end;

procedure TFrmReceber.cbplanocontaEnter(Sender: TObject);
begin
  cbplanoconta.Color:=$0080FFFF;
end;

procedure TFrmReceber.edvalorpagoEnter(Sender: TObject);
begin
  edvalorpago.Color:=$0080FFFF;
end;

procedure TFrmReceber.eddescontoEnter(Sender: TObject);
begin
  eddesconto.Color:=$0080FFFF;
end;

procedure TFrmReceber.eddocorigemEnter(Sender: TObject);
begin
  eddocorigem.Color:=$0080FFFF;
end;

procedure TFrmReceber.edjurosEnter(Sender: TObject);
begin
  edjuros.Color:=$0080FFFF;
end;

procedure TFrmReceber.eddocorigemExit(Sender: TObject);
begin
  eddocorigem.Color:=clWindow;
end;

procedure TFrmReceber.edmultaEnter(Sender: TObject);
begin
  edmulta.Color:=$0080FFFF;
end;

procedure TFrmReceber.edmultaExit(Sender: TObject);
begin
  if edmulta.Text<>'' then
     begin
       edmulta.Text:=formatfloat('#,##0.00',StringToFloat(edmulta.text));
       edvalorpago.Text:=formatfloat('#,##0.00',StringToFloat(edliquido.text)+
       StringToFloat(edmulta.text));
     end;
  edmulta.Color:=clWindow;
end;

procedure TFrmReceber.medatabaseEnter(Sender: TObject);
begin
  if medatabase.Text='  /  /    ' then
     begin
       medatabase.Text:=DateToStr(date);
       medatabase.SelStart:=0;
       medatabase.SelLength:=length(medatabase.Text);
     end;
end;

procedure TFrmReceber.medatabaseExit(Sender: TObject);
begin
  if medatabase.text<>'  /  /    ' then
  begin
  Try
     StrToDate(medatabase.Text) ;
  Except
  begin
     application.MessageBox('Data Inv�lida!','Aten��o',mb_Ok+mb_iconerror);
     medatabase.setfocus;
  end;
  end;
  end;
end;

end.
