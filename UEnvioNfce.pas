//duvidas pode me chamar no whats 51 99501-7059

unit UEnvioNfce;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, Buttons, OleCtrls, SHDocVw,
  //uses necessarias
  ACBrDFeReport, ACBrDFeDANFeReport, ACBrNFeNotasFiscais, PcnNfe, ACBrDFeUtil,
  ACBrNFeDANFEClass, ACBrNFeDANFeRLClass,  ACBrUtil, pcnConversaoNFe, pcnConversao,
  ACBrBase, ACBrNFe, IniFiles, ACBrDFe, ACBrDFeSSL, Spin, blcksock, TypInfo, FileCtrl,
  ACBrDANFCeFortesFr, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset;


const
  SELDIRHELP = 1000;

    
type
  TfEnvioNfce = class(TForm)
    GroupBox1: TGroupBox;
    lbvenda: TLabel;
    Label57: TLabel;
    PageControl1: TPageControl;
    TabSheet4: TTabSheet;
    Label12: TLabel;
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
    Label61: TLabel;
    edtEmitCNPJ: TEdit;
    edtEmitRazao: TEdit;
    edtEmitFantasia: TEdit;
    edtEmitFone: TEdit;
    edtEmitCEP: TEdit;
    edtEmitLogradouro: TEdit;
    edtEmitNumero: TEdit;
    edtEmitComp: TEdit;
    edtEmitBairro: TEdit;
    edtEmitCodCidade: TEdit;
    edtEmitCidade: TEdit;
    edtEmitUF: TEdit;
    rbCRT: TRadioGroup;
    edempresa: TEdit;
    TabSheet1: TTabSheet;
    Label4: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label25: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label85: TLabel;
    edtDestCNPJ: TEdit;
    edtDestRazao: TEdit;
    edtDestFone: TEdit;
    edtDestCEP: TEdit;
    edtDestLogradouro: TEdit;
    edtDestNumero: TEdit;
    edtDestComp: TEdit;
    edtDestBairro: TEdit;
    edtDestCodCidade: TEdit;
    edtDestCidade: TEdit;
    edtDestUF: TEdit;
    cbIndIEDest: TComboBox;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label60: TLabel;
    edNatureza: TEdit;
    edModelo: TEdit;
    edSerie: TEdit;
    edNota: TEdit;
    edEmissao: TEdit;
    cbImpressao: TComboBox;
    cbPagamento: TComboBox;
    edBaseIcms: TEdit;
    edValorIcms: TEdit;
    edValorProdutos: TEdit;
    edValorNota: TEdit;
    edCfop: TEdit;
    TabSheet3: TTabSheet;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    lbtipo: TLabel;
    edCodigo: TEdit;
    edDescricao: TEdit;
    edUnd: TEdit;
    edNcm: TEdit;
    edQtd: TEdit;
    edUnitario: TEdit;
    edTotal: TEdit;
    gbNormal: TGroupBox;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    edCst: TEdit;
    edBaseProduto: TEdit;
    edAliquota: TEdit;
    edIcmsProduto: TEdit;
    gbSimples: TGroupBox;
    Label56: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    edCSOSN: TEdit;
    edPCred: TEdit;
    edVCred: TEdit;
    TabSheet7: TTabSheet;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    ednrfatura: TEdit;
    edvlrfatura: TEdit;
    edvlrdescfatura: TEdit;
    edvlrliqfatura: TEdit;
    edvenctofatura: TEdit;
    btMontar: TButton;
    btatualizarnfe: TButton;
    btnInutilizar: TButton;
    btnConsultarChave: TButton;
    btnCancelarChave: TButton;
    btnImprimir: TButton;
    memoObs: TMemo;
    ACBrNFe1: TACBrNFe;
    OpenDialog1: TOpenDialog;
    pgRespostas: TPageControl;
    TabSheet8: TTabSheet;
    MemoResp: TMemo;
    TabSheet9: TTabSheet;
    WBResposta: TWebBrowser;
    TabSheet10: TTabSheet;
    memoLog: TMemo;
    TabSheet11: TTabSheet;
    trvwDocumento: TTreeView;
    TabSheet12: TTabSheet;
    memoRespWS: TMemo;
    Dados: TTabSheet;
    MemoDados: TMemo;
    TabSheet13: TTabSheet;
    cbSSLLib: TComboBox;
    lSSLLib: TLabel;
    lCryptLib: TLabel;
    cbCryptLib: TComboBox;
    lHttpLib: TLabel;
    cbHttpLib: TComboBox;
    lXmlSign: TLabel;
    cbXmlSignLib: TComboBox;
    Label62: TLabel;
    edtNumSerie: TEdit;
    sbtnNumSerie: TSpeedButton;
    btnDataValidade: TButton;
    TabSheet14: TTabSheet;
    Label86: TLabel;
    sbPathNFe: TSpeedButton;
    edtPathNFe: TEdit;
    Label87: TLabel;
    edtPathCan: TEdit;
    Label88: TLabel;
    edtPathCCe: TEdit;
    Label89: TLabel;
    edtPathInu: TEdit;
    Label91: TLabel;
    edtPathEvento: TEdit;
    sbPathEvento: TSpeedButton;
    sbPathInu: TSpeedButton;
    sbPathCCe: TSpeedButton;
    sbPathCan: TSpeedButton;
    TabSheet15: TTabSheet;
    GroupBox4: TGroupBox;
    Label92: TLabel;
    lTimeOut: TLabel;
    lSSLLib1: TLabel;
    cbxVisualizar: TCheckBox;
    cbUF: TComboBox;
    rgTipoAmb: TRadioGroup;
    cbxSalvarSOAP: TCheckBox;
    seTimeOut: TSpinEdit;
    cbSSLType: TComboBox;
    TabSheet16: TTabSheet;
    GroupBox3: TGroupBox;
    sbtnPathSalvar: TSpeedButton;
    Label93: TLabel;
    Label94: TLabel;
    Label95: TLabel;
    Label96: TLabel;
    Label97: TLabel;
    Label98: TLabel;
    Label99: TLabel;
    spPathSchemas: TSpeedButton;
    edtPathLogs: TEdit;
    cbFormaEmissao: TComboBox;
    cbxAtualizarXML: TCheckBox;
    cbxExibirErroSchema: TCheckBox;
    edtFormatoAlerta: TEdit;
    cbModeloDF: TComboBox;
    cbxRetirarAcentos: TCheckBox;
    cbVersaoDF: TComboBox;
    edtIdToken: TEdit;
    edtToken: TEdit;
    edtPathSchemas: TEdit;
    btnSalvarConfig: TBitBtn;
    btnStatusServ: TButton;
    ACBrNFeDANFCeFortes1: TACBrNFeDANFCeFortes;
    Label13: TLabel;
    edtEmitIE: TEdit;
    movestoque: TZQuery;
    movestoqueproduto: TIntegerField;
    movestoqueqtd: TFloatField;
    movestoqueVlrUnit: TFloatField;
    movestoqueVlrTotal: TFloatField;
    movestoqueund: TStringField;
    qratualizar: TZQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnInutilizarClick(Sender: TObject);
    procedure btnDataValidadeClick(Sender: TObject);
    procedure sbtnNumSerieClick(Sender: TObject);
    procedure ACBrNFe1GerarLog(const ALogLine: String;
      var Tratado: Boolean);
    procedure ACBrNFe1StatusChange(Sender: TObject);
    procedure btnCancelarChaveClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnSalvarConfigClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnStatusServClick(Sender: TObject);
    procedure sbtnPathSalvarClick(Sender: TObject);
    procedure spPathSchemasClick(Sender: TObject);
    procedure sbPathNFeClick(Sender: TObject);
    procedure sbPathCanClick(Sender: TObject);
    procedure sbPathCCeClick(Sender: TObject);
    procedure sbPathInuClick(Sender: TObject);
    procedure sbPathEventoClick(Sender: TObject);
    procedure PathClick(Sender: TObject);
    procedure btMontarClick(Sender: TObject);
    procedure btatualizarnfeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure LoadXML(RetWS: String; MyWebBrowser: TWebBrowser);
    procedure GravarConfiguracao;
    procedure LerConfiguracao;
    procedure ConfigurarComponente;
    procedure AtualizarSSLLibsCombo;
    procedure AlimentarNFe(NumDFe: String);
  end;

var
  fEnvioNfce: TfEnvioNfce;
  idprod : integer;

implementation

uses Frm_SelecionarCertificado, Frm_Status, Unitdm, UnitFrmVenda;

{$R *.dfm}

procedure TfEnvioNfce.PathClick(Sender: TObject);
var
  Dir: string;
begin
  if Length(TEdit(Sender).Text) <= 0 then
     Dir := ApplicationPath
  else
     Dir := TEdit(Sender).Text;

  if SelectDirectory(Dir, [sdAllowCreate, sdPerformCreate, sdPrompt],SELDIRHELP) then
    TEdit(Sender).Text := Dir;
end;

procedure TfEnvioNfce.AtualizarSSLLibsCombo;
begin
  cbSSLLib.ItemIndex     := Integer(ACBrNFe1.Configuracoes.Geral.SSLLib);
  cbCryptLib.ItemIndex   := Integer(ACBrNFe1.Configuracoes.Geral.SSLCryptLib);
  cbHttpLib.ItemIndex    := Integer(ACBrNFe1.Configuracoes.Geral.SSLHttpLib);
  cbXmlSignLib.ItemIndex := Integer(ACBrNFe1.Configuracoes.Geral.SSLXmlSignLib);

  cbSSLType.Enabled := (ACBrNFe1.Configuracoes.Geral.SSLHttpLib in [httpWinHttp, httpOpenSSL]);
end;

procedure TfEnvioNfce.ConfigurarComponente;
var
  Ok : Boolean;
begin
  ACBrNFe1.Configuracoes.Certificados.NumeroSerie := edtNumSerie.Text;

  ACBrNFe1.DANFE := ACBrNFeDANFCeFortes1;

  ACBrNFe1.SSL.DescarregarCertificado;

  with ACBrNFe1.Configuracoes.Geral do
  begin
    SSLLib        := TSSLLib(cbSSLLib.ItemIndex);
    SSLCryptLib   := TSSLCryptLib(cbCryptLib.ItemIndex);
    SSLHttpLib    := TSSLHttpLib(cbHttpLib.ItemIndex);
    SSLXmlSignLib := TSSLXmlSignLib(cbXmlSignLib.ItemIndex);

    AtualizarSSLLibsCombo;

    AtualizarXMLCancelado := cbxAtualizarXML.Checked;

    Salvar           := False; //aqui
    ExibirErroSchema := True;
    RetirarAcentos   := cbxRetirarAcentos.Checked;
    FormatoAlerta    := edtFormatoAlerta.Text;
    FormaEmissao     := TpcnTipoEmissao(cbFormaEmissao.ItemIndex);
    ModeloDF         := TpcnModeloDF(cbModeloDF.ItemIndex);
    VersaoDF         := TpcnVersaoDF(cbVersaoDF.ItemIndex);

    IdCSC            := edtIdToken.Text;
    CSC              := edtToken.Text;
    VersaoQRCode     := veqr200;
  end;

  with ACBrNFe1.Configuracoes.WebServices do
  begin
    UF         := cbUF.Text;
    Ambiente   := StrToTpAmb(Ok,IntToStr(rgTipoAmb.ItemIndex+1));
    Visualizar := False;//aqui
    Salvar     := False;//aqui
  end;

  ACBrNFe1.SSL.SSLType := TSSLType(cbSSLType.ItemIndex);

  //aqui
  with ACBrNFe1.Configuracoes.Arquivos do
  begin
    Salvar           := True;
    SepararPorMes    := True;
    AdicionarLiteral := True;
    EmissaoPathNFe   := True;
    SalvarEvento     := True;
    SepararPorCNPJ   := False;
    SepararPorModelo := False;
    PathSchemas      := edtPathSchemas.Text;
    PathNFe          := edtPathNFe.Text;
    PathInu          := edtPathInu.Text;
    PathEvento       := edtPathEvento.Text;
    PathSalvar       := edtPathNFe.Text;
  end; //

  if ACBrNFe1.DANFE <> nil then
  begin
    ACBrNFe1.DANFE.TipoDANFE := tiNFCe;
    ACBrNFe1.DANFE.Logo      := ''; // logomarca da empresa em bmp
    ACBrNFe1.DANFE.PathPDF   := edtPathNFe.Text + FormatDateTime('YYYYMM',Date) + '\NFCe\';

    ACBrNFe1.DANFE.MargemDireita  := 7;
    ACBrNFe1.DANFE.MargemEsquerda := 7;
    ACBrNFe1.DANFE.MargemSuperior := 5;
    ACBrNFe1.DANFE.MargemInferior := 5;
  end;
end;

procedure TfEnvioNfce.LerConfiguracao;
var
  IniFile: String;
  Ini: TIniFile;
  StreamMemo: TMemoryStream;
begin
  IniFile := ChangeFileExt(ParamStr(0), '.ini');

  Ini := TIniFile.Create(IniFile);
  try
    cbSSLLib.ItemIndex     := Ini.ReadInteger('Certificado', 'SSLLib',     0);
    cbCryptLib.ItemIndex   := Ini.ReadInteger('Certificado', 'CryptLib',   0);
    cbHttpLib.ItemIndex    := Ini.ReadInteger('Certificado', 'HttpLib',    0);
    cbXmlSignLib.ItemIndex := Ini.ReadInteger('Certificado', 'XmlSignLib', 0);
    edtNumSerie.Text       := Ini.ReadString( 'Certificado', 'NumSerie',   '');

    cbxAtualizarXML.Checked     := Ini.ReadBool(   'Geral', 'AtualizarXML',     True);
    cbxExibirErroSchema.Checked := Ini.ReadBool(   'Geral', 'ExibirErroSchema', True);
    edtFormatoAlerta.Text       := Ini.ReadString( 'Geral', 'FormatoAlerta',    'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.');
    cbFormaEmissao.ItemIndex    := Ini.ReadInteger('Geral', 'FormaEmissao',     0);
    cbModeloDF.ItemIndex        := Ini.ReadInteger('Geral', 'ModeloDF',         0);

    cbVersaoDF.ItemIndex      := Ini.ReadInteger('Geral', 'VersaoDF',       0);
    edtIdToken.Text           := Ini.ReadString( 'Geral', 'IdToken',        '');
    edtToken.Text             := Ini.ReadString( 'Geral', 'Token',          '');
    cbxRetirarAcentos.Checked := Ini.ReadBool(   'Geral', 'RetirarAcentos', True);
    edtPathLogs.Text          := Ini.ReadString( 'Geral', 'PathSalvar',     PathWithDelim(ExtractFilePath(Application.ExeName))+'Logs');
    edtPathSchemas.Text       := Ini.ReadString( 'Geral', 'PathSchemas',    PathWithDelim(ExtractFilePath(Application.ExeName))+'Schemas\'+GetEnumName(TypeInfo(TpcnVersaoDF), integer(cbVersaoDF.ItemIndex) ));

    cbUF.ItemIndex := cbUF.Items.IndexOf(Ini.ReadString('WebService', 'UF', 'SP'));

    rgTipoAmb.ItemIndex   := Ini.ReadInteger('WebService', 'Ambiente',   0);
    cbxVisualizar.Checked := Ini.ReadBool(   'WebService', 'Visualizar', False);
    cbxSalvarSOAP.Checked := Ini.ReadBool(   'WebService', 'SalvarSOAP', False);
    seTimeOut.Value       := Ini.ReadInteger('WebService', 'TimeOut',    5000);
    cbSSLType.ItemIndex   := Ini.ReadInteger('WebService', 'SSLType',    0);

    edtPathNFe.Text             := Ini.ReadString('Arquivos', 'PathNFe',          '');
    edtPathCan.Text             := Ini.ReadString('Arquivos', 'PathCan',          '');
    edtPathInu.Text             := Ini.ReadString('Arquivos', 'PathInu',          '');
    edtPathCCe.Text             := Ini.ReadString('Arquivos', 'PathCCe',          '');
    edtPathEvento.Text          := Ini.ReadString('Arquivos', 'PathEvento',       '');

    edtEmitCNPJ.Text       := Ini.ReadString('Emitente', 'CNPJ',        '');
    edtEmitIE.Text         := Ini.ReadString('Emitente', 'IE',          '');
    edtEmitRazao.Text      := Ini.ReadString('Emitente', 'RazaoSocial', '');
    edtEmitFantasia.Text   := Ini.ReadString('Emitente', 'Fantasia',    '');
    edtEmitFone.Text       := Ini.ReadString('Emitente', 'Fone',        '');
    edtEmitCEP.Text        := Ini.ReadString('Emitente', 'CEP',         '');
    edtEmitLogradouro.Text := Ini.ReadString('Emitente', 'Logradouro',  '');
    edtEmitNumero.Text     := Ini.ReadString('Emitente', 'Numero',      '');
    edtEmitComp.Text       := Ini.ReadString('Emitente', 'Complemento', '');
    edtEmitBairro.Text     := Ini.ReadString('Emitente', 'Bairro',      '');
    edtEmitCodCidade.Text  := Ini.ReadString('Emitente', 'CodCidade',   '');
    edtEmitCidade.Text     := Ini.ReadString('Emitente', 'Cidade',      '');
    edtEmitUF.Text         := Ini.ReadString('Emitente', 'UF',          '');

    rbCRT.ItemIndex        := Ini.ReadInteger('Emitente', 'CRT', 2);

    ConfigurarComponente;
  finally
    Ini.Free;
  end;
end;

procedure TfEnvioNfce.GravarConfiguracao;
var
  IniFile: String;
  Ini: TIniFile;
  StreamMemo: TMemoryStream;
begin
  IniFile := ChangeFileExt(ParamStr(0), '.ini');

  Ini := TIniFile.Create(IniFile);
  try
    Ini.WriteInteger('Certificado', 'SSLLib',     cbSSLLib.ItemIndex);
    Ini.WriteInteger('Certificado', 'CryptLib',   cbCryptLib.ItemIndex);
    Ini.WriteInteger('Certificado', 'HttpLib',    cbHttpLib.ItemIndex);
    Ini.WriteInteger('Certificado', 'XmlSignLib', cbXmlSignLib.ItemIndex);
    Ini.WriteString( 'Certificado', 'NumSerie',   edtNumSerie.Text);

    Ini.WriteBool(   'Geral', 'AtualizarXML',     cbxAtualizarXML.Checked);
    Ini.WriteBool(   'Geral', 'ExibirErroSchema', cbxExibirErroSchema.Checked);
    Ini.WriteString( 'Geral', 'FormatoAlerta',    edtFormatoAlerta.Text);
    Ini.WriteInteger('Geral', 'FormaEmissao',     cbFormaEmissao.ItemIndex);
    Ini.WriteInteger('Geral', 'ModeloDF',         cbModeloDF.ItemIndex);
    Ini.WriteInteger('Geral', 'VersaoDF',         cbVersaoDF.ItemIndex);
    Ini.WriteString( 'Geral', 'IdToken',          edtIdToken.Text);
    Ini.WriteString( 'Geral', 'Token',            edtToken.Text);
    Ini.WriteBool(   'Geral', 'RetirarAcentos',   cbxRetirarAcentos.Checked);
    Ini.WriteString( 'Geral', 'PathSalvar',       edtPathLogs.Text);
    Ini.WriteString( 'Geral', 'PathSchemas',      edtPathSchemas.Text);

    Ini.WriteString( 'WebService', 'UF',         cbUF.Text);
    Ini.WriteInteger('WebService', 'Ambiente',   rgTipoAmb.ItemIndex);
    Ini.WriteBool(   'WebService', 'Visualizar', cbxVisualizar.Checked);
    Ini.WriteBool(   'WebService', 'SalvarSOAP', cbxSalvarSOAP.Checked);
    Ini.WriteInteger('WebService', 'TimeOut',    seTimeOut.Value);
    Ini.WriteInteger('WebService', 'SSLType',    cbSSLType.ItemIndex);

    Ini.WriteString('Arquivos', 'PathNFe',          edtPathNFe.Text);
    Ini.WriteString('Arquivos', 'PathCan',          edtPathCan.Text);
    Ini.WriteString('Arquivos', 'PathInu',          edtPathInu.Text);
    Ini.WriteString('Arquivos', 'PathCCe',          edtPathCCe.Text);
    Ini.WriteString('Arquivos', 'PathEvento',       edtPathEvento.Text);

    Ini.WriteString('Emitente', 'CNPJ',        edtEmitCNPJ.Text);
    Ini.WriteString('Emitente', 'IE',          edtEmitIE.Text);
    Ini.WriteString('Emitente', 'RazaoSocial', edtEmitRazao.Text);
    Ini.WriteString('Emitente', 'Fantasia',    edtEmitFantasia.Text);
    Ini.WriteString('Emitente', 'Fone',        edtEmitFone.Text);
    Ini.WriteString('Emitente', 'CEP',         edtEmitCEP.Text);
    Ini.WriteString('Emitente', 'Logradouro',  edtEmitLogradouro.Text);
    Ini.WriteString('Emitente', 'Numero',      edtEmitNumero.Text);
    Ini.WriteString('Emitente', 'Complemento', edtEmitComp.Text);
    Ini.WriteString('Emitente', 'Bairro',      edtEmitBairro.Text);
    Ini.WriteString('Emitente', 'CodCidade',   edtEmitCodCidade.Text);
    Ini.WriteString('Emitente', 'Cidade',      edtEmitCidade.Text);
    Ini.WriteString('Emitente', 'UF',          edtEmitUF.Text);
    Ini.WriteInteger('Emitente', 'CRT',        rbCRT.ItemIndex);

    ConfigurarComponente;
  finally
    Ini.Free;
  end;
end;

procedure TfEnvioNfce.LoadXML(RetWS: String; MyWebBrowser: TWebBrowser);
begin
  ACBrUtil.WriteToTXT(PathWithDelim(ExtractFileDir(application.ExeName)) + 'temp.xml',
                      ACBrUtil.ConverteXMLtoUTF8(RetWS), False, False);

  MyWebBrowser.Navigate(PathWithDelim(ExtractFileDir(application.ExeName)) + 'temp.xml');

  if ACBrNFe1.NotasFiscais.Count > 0then
    MemoResp.Lines.Add('Empresa: ' + ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.xNome);
end;

procedure TfEnvioNfce.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfEnvioNfce.btnInutilizarClick(Sender: TObject);
var
  Modelo, Serie, Ano, NumeroInicial, NumeroFinal, Justificativa: String;
begin
 Ano := '';
 if not(InputQuery('WebServices Inutilização ', 'Ano',    Ano)) then
    exit;
 Modelo := '';
 if not(InputQuery('WebServices Inutilização ', 'Modelo', Modelo)) then
    exit;
 Serie := '';
 if not(InputQuery('WebServices Inutilização ', 'Serie',  Serie)) then
    exit;
 NumeroInicial := '';
 if not(InputQuery('WebServices Inutilização ', 'Número Inicial', NumeroInicial)) then
    exit;
 NumeroFinal := '';
 if not(InputQuery('WebServices Inutilização ', 'Número Final', NumeroFinal)) then
    exit;
 Justificativa := '';
 if not(InputQuery('WebServices Inutilização ', 'Justificativa', Justificativa)) then
    exit;

  ACBrNFe1.WebServices.Inutiliza(edtEmitCNPJ.Text, Justificativa, StrToInt(Ano), StrToInt(Modelo), StrToInt(Serie), StrToInt(NumeroInicial), StrToInt(NumeroFinal));

  MemoResp.Lines.Text :=  ACBrNFe1.WebServices.Inutilizacao.RetWS;
  memoRespWS.Lines.Text :=  ACBrNFe1.WebServices.Inutilizacao.RetornoWS;
  LoadXML(ACBrNFe1.WebServices.Inutilizacao.RetornoWS, WBResposta);

  pgRespostas.ActivePageIndex := 1;

  MemoDados.Lines.Add('');
  MemoDados.Lines.Add('Inutilização');
  MemoDados.Lines.Add('tpAmb: ' + TpAmbToStr(ACBrNFe1.WebServices.Inutilizacao.tpAmb));
  MemoDados.Lines.Add('verAplic: ' + ACBrNFe1.WebServices.Inutilizacao.verAplic);
  MemoDados.Lines.Add('cStat: ' + IntToStr(ACBrNFe1.WebServices.Inutilizacao.cStat));
  MemoDados.Lines.Add('xMotivo: ' + ACBrNFe1.WebServices.Inutilizacao.xMotivo);
  MemoDados.Lines.Add('cUF: ' + IntToStr(ACBrNFe1.WebServices.Inutilizacao.cUF));
  MemoDados.Lines.Add('Ano: ' + IntToStr(ACBrNFe1.WebServices.Inutilizacao.Ano));
  MemoDados.Lines.Add('CNPJ: ' + ACBrNFe1.WebServices.Inutilizacao.CNPJ);
  MemoDados.Lines.Add('Modelo: ' + IntToStr(ACBrNFe1.WebServices.Inutilizacao.Modelo));
  MemoDados.Lines.Add('Serie: ' + IntToStr(ACBrNFe1.WebServices.Inutilizacao.Serie));
  MemoDados.Lines.Add('NumeroInicial: ' + IntToStr(ACBrNFe1.WebServices.Inutilizacao.NumeroInicial));
  MemoDados.Lines.Add('NumeroInicial: ' + IntToStr(ACBrNFe1.WebServices.Inutilizacao.NumeroFinal));
  MemoDados.Lines.Add('dhRecbto: ' + DateTimeToStr(ACBrNFe1.WebServices.Inutilizacao.dhRecbto));
  MemoDados.Lines.Add('Protocolo: ' + ACBrNFe1.WebServices.Inutilizacao.Protocolo);

end;

procedure TfEnvioNfce.btnDataValidadeClick(Sender: TObject);
begin
  ShowMessage(FormatDateBr(ACBrNFe1.SSL.CertDataVenc));
end;

procedure TfEnvioNfce.sbtnNumSerieClick(Sender: TObject);
var
  I: Integer;
//  ASerie: String;
  AddRow: Boolean;
begin
  ACBrNFe1.SSL.LerCertificadosStore;
  AddRow := False;

  frmSelecionarCertificado := TfrmSelecionarCertificado.Create(Self);
  with frmSelecionarCertificado.StringGrid1 do
  begin
    ColWidths[0] := 220;
    ColWidths[1] := 250;
    ColWidths[2] := 120;
    ColWidths[3] := 80;
    ColWidths[4] := 150;

    Cells[0, 0] := 'Num.Série';
    Cells[1, 0] := 'Razão Social';
    Cells[2, 0] := 'CNPJ';
    Cells[3, 0] := 'Validade';
    Cells[4, 0] := 'Certificadora';
  end;

  for I := 0 to ACBrNFe1.SSL.ListaCertificados.Count-1 do
  begin
    with ACBrNFe1.SSL.ListaCertificados[I] do
    begin
//      ASerie := NumeroSerie;

      if (CNPJ <> '') then
      begin
        with frmSelecionarCertificado.StringGrid1 do
        begin
          if Addrow then
            RowCount := RowCount + 1;

          Cells[0, RowCount-1] := NumeroSerie;
          Cells[1, RowCount-1] := RazaoSocial;
          Cells[2, RowCount-1] := CNPJ;
          Cells[3, RowCount-1] := FormatDateBr(DataVenc);
          Cells[4, RowCount-1] := Certificadora;

          AddRow := True;
        end;
      end;
    end;
  end;

  frmSelecionarCertificado.ShowModal;

  if frmSelecionarCertificado.ModalResult = mrOK then
    edtNumSerie.Text := frmSelecionarCertificado.StringGrid1.Cells[0, frmSelecionarCertificado.StringGrid1.Row];
end;

procedure TfEnvioNfce.ACBrNFe1GerarLog(const ALogLine: String;
  var Tratado: Boolean);
begin
  memoLog.Lines.Add(ALogLine);
end;

procedure TfEnvioNfce.ACBrNFe1StatusChange(Sender: TObject);
begin
  case ACBrNFe1.Status of
    stIdle:
      begin
        if ( frmStatus <> nil ) then
          frmStatus.Hide;
      end;

    stNFeStatusServico:
      begin
        if ( frmStatus = nil ) then
          frmStatus := TfrmStatus.Create(Application);

        frmStatus.lblStatus.Caption := 'Verificando Status do servico...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;

    stNFeRecepcao:
      begin
        if ( frmStatus = nil ) then
          frmStatus := TfrmStatus.Create(Application);

        frmStatus.lblStatus.Caption := 'Enviando dados da NFe...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;

    stNfeRetRecepcao:
      begin
        if ( frmStatus = nil ) then
          frmStatus := TfrmStatus.Create(Application);

        frmStatus.lblStatus.Caption := 'Recebendo dados da NFe...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;

    stNfeConsulta:
      begin
        if ( frmStatus = nil ) then
          frmStatus := TfrmStatus.Create(Application);

        frmStatus.lblStatus.Caption := 'Consultando NFe...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;

    stNfeCancelamento:
      begin
        if ( frmStatus = nil ) then
          frmStatus := TfrmStatus.Create(Application);

        frmStatus.lblStatus.Caption := 'Enviando cancelamento de NFe...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;

    stNfeInutilizacao:
      begin
        if ( frmStatus = nil ) then
          frmStatus := TfrmStatus.Create(Application);

        frmStatus.lblStatus.Caption := 'Enviando pedido de Inutilização...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;

    stNFeRecibo:
      begin
        if ( frmStatus = nil ) then
          frmStatus := TfrmStatus.Create(Application);

        frmStatus.lblStatus.Caption := 'Consultando Recibo de Lote...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;

    stNFeCadastro:
      begin
        if ( frmStatus = nil ) then
          frmStatus := TfrmStatus.Create(Application);

        frmStatus.lblStatus.Caption := 'Consultando Cadastro...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;

    stNFeEmail:
      begin
        if ( frmStatus = nil ) then
          frmStatus := TfrmStatus.Create(Application);

        frmStatus.lblStatus.Caption := 'Enviando Email...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;

    stNFeCCe:
      begin
        if ( frmStatus = nil ) then
          frmStatus := TfrmStatus.Create(Application);

        frmStatus.lblStatus.Caption := 'Enviando Carta de Correção...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;

    stNFeEvento:
      begin
        if ( frmStatus = nil ) then
          frmStatus := TfrmStatus.Create(Application);

        frmStatus.lblStatus.Caption := 'Enviando Evento...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;
  end;

  Application.ProcessMessages;
end;

procedure TfEnvioNfce.btnCancelarChaveClick(Sender: TObject);
var
  Chave, idLote, CNPJ, Protocolo, Justificativa: string;
begin
  Chave := '';
  if not(InputQuery('WebServices Eventos: Cancelamento', 'Chave da NF-e', Chave)) then
     exit;
  Chave := Trim(OnlyNumber(Chave));
  idLote := '1';
  if not(InputQuery('WebServices Eventos: Cancelamento', 'Identificador de controle do Lote de envio do Evento', idLote)) then
     exit;
  CNPJ := copy(Chave,7,14);
  if not(InputQuery('WebServices Eventos: Cancelamento', 'CNPJ ou o CPF do autor do Evento', CNPJ)) then
     exit;
  Protocolo:='';
  if not(InputQuery('WebServices Eventos: Cancelamento', 'Protocolo de Autorização', Protocolo)) then
     exit;
  Justificativa := 'Justificativa do Cancelamento';
  if not(InputQuery('WebServices Eventos: Cancelamento', 'Justificativa do Cancelamento', Justificativa)) then
     exit;

  ACBrNFe1.EventoNFe.Evento.Clear;

  with ACBrNFe1.EventoNFe.Evento.New do
  begin
    infEvento.chNFe := Chave;
    infEvento.CNPJ   := CNPJ;
    infEvento.dhEvento := now;
    infEvento.tpEvento := teCancelamento;
    infEvento.detEvento.xJust := Justificativa;
    infEvento.detEvento.nProt := Protocolo;
  end;

  ACBrNFe1.EnviarEvento(StrToInt(idLote));

  MemoResp.Lines.Text := ACBrNFe1.WebServices.EnvEvento.RetWS;
  memoRespWS.Lines.Text := ACBrNFe1.WebServices.EnvEvento.RetornoWS;
  LoadXML(ACBrNFe1.WebServices.EnvEvento.RetornoWS, WBResposta);
end;

procedure TfEnvioNfce.btnImprimirClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione a NFe';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFe (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';

  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Arquivos.PathSalvar;

  if OpenDialog1.Execute then
  begin
    ACBrNFe1.NotasFiscais.Clear;
    ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName,False);
    ACBrNFe1.NotasFiscais.Imprimir;
  end;
end;

procedure TfEnvioNfce.btnSalvarConfigClick(Sender: TObject);
begin
  GravarConfiguracao;
end;

procedure TfEnvioNfce.FormCreate(Sender: TObject);
var
  T: TSSLLib;
  I: TpcnTipoEmissao;
  J: TpcnModeloDF;
  K: TpcnVersaoDF;
  U: TSSLCryptLib;
  V: TSSLHttpLib;
  X: TSSLXmlSignLib;
  Y: TSSLType;
begin
  cbSSLLib.Items.Clear;
  for T := Low(TSSLLib) to High(TSSLLib) do
    cbSSLLib.Items.Add( GetEnumName(TypeInfo(TSSLLib), integer(T) ) );
  cbSSLLib.ItemIndex := 0;

  cbCryptLib.Items.Clear;
  for U := Low(TSSLCryptLib) to High(TSSLCryptLib) do
    cbCryptLib.Items.Add( GetEnumName(TypeInfo(TSSLCryptLib), integer(U) ) );
  cbCryptLib.ItemIndex := 0;

  cbHttpLib.Items.Clear;
  for V := Low(TSSLHttpLib) to High(TSSLHttpLib) do
    cbHttpLib.Items.Add( GetEnumName(TypeInfo(TSSLHttpLib), integer(V) ) );
  cbHttpLib.ItemIndex := 0;

  cbXmlSignLib.Items.Clear;
  for X := Low(TSSLXmlSignLib) to High(TSSLXmlSignLib) do
    cbXmlSignLib.Items.Add( GetEnumName(TypeInfo(TSSLXmlSignLib), integer(X) ) );
  cbXmlSignLib.ItemIndex := 0;

  cbSSLType.Items.Clear;
  for Y := Low(TSSLType) to High(TSSLType) do
    cbSSLType.Items.Add( GetEnumName(TypeInfo(TSSLType), integer(Y) ) );
  cbSSLType.ItemIndex := 0;

  cbFormaEmissao.Items.Clear;
  for I := Low(TpcnTipoEmissao) to High(TpcnTipoEmissao) do
     cbFormaEmissao.Items.Add( GetEnumName(TypeInfo(TpcnTipoEmissao), integer(I) ) );
  cbFormaEmissao.ItemIndex := 0;

  cbModeloDF.Items.Clear;
  for J := Low(TpcnModeloDF) to High(TpcnModeloDF) do
     cbModeloDF.Items.Add( GetEnumName(TypeInfo(TpcnModeloDF), integer(J) ) );
  cbModeloDF.ItemIndex := 0;

  cbVersaoDF.Items.Clear;
  for K := Low(TpcnVersaoDF) to High(TpcnVersaoDF) do
     cbVersaoDF.Items.Add( GetEnumName(TypeInfo(TpcnVersaoDF), integer(K) ) );
  cbVersaoDF.ItemIndex := 0;

  LerConfiguracao;
  pgRespostas.ActivePageIndex := 0;
  PageControl1.ActivePageIndex := 0;

end;

procedure TfEnvioNfce.btnStatusServClick(Sender: TObject);
begin
  ACBrNFe1.WebServices.StatusServico.Executar;

  MemoResp.Lines.Text := ACBrNFe1.WebServices.StatusServico.RetWS;
  memoRespWS.Lines.Text := ACBrNFe1.WebServices.StatusServico.RetornoWS;
  LoadXML(ACBrNFe1.WebServices.StatusServico.RetornoWS, WBResposta);

  pgRespostas.ActivePageIndex := 1;

  MemoDados.Lines.Add('');
  MemoDados.Lines.Add('Status Serviço');
  MemoDados.Lines.Add('tpAmb: '    +TpAmbToStr(ACBrNFe1.WebServices.StatusServico.tpAmb));
  MemoDados.Lines.Add('verAplic: ' +ACBrNFe1.WebServices.StatusServico.verAplic);
  MemoDados.Lines.Add('cStat: '    +IntToStr(ACBrNFe1.WebServices.StatusServico.cStat));
  MemoDados.Lines.Add('xMotivo: '  +ACBrNFe1.WebServices.StatusServico.xMotivo);
  MemoDados.Lines.Add('cUF: '      +IntToStr(ACBrNFe1.WebServices.StatusServico.cUF));
  MemoDados.Lines.Add('dhRecbto: ' +DateTimeToStr(ACBrNFe1.WebServices.StatusServico.dhRecbto));
  MemoDados.Lines.Add('tMed: '     +IntToStr(ACBrNFe1.WebServices.StatusServico.TMed));
  MemoDados.Lines.Add('dhRetorno: '+DateTimeToStr(ACBrNFe1.WebServices.StatusServico.dhRetorno));
  MemoDados.Lines.Add('xObs: '     +ACBrNFe1.WebServices.StatusServico.xObs);
end;

procedure TfEnvioNfce.sbtnPathSalvarClick(Sender: TObject);
begin
  PathClick(edtPathLogs);
end;

procedure TfEnvioNfce.spPathSchemasClick(Sender: TObject);
begin
  PathClick(edtPathSchemas);
end;

procedure TfEnvioNfce.sbPathNFeClick(Sender: TObject);
begin
  PathClick(edtPathNFe);
end;

procedure TfEnvioNfce.sbPathCanClick(Sender: TObject);
begin
  PathClick(edtPathCan);
end;

procedure TfEnvioNfce.sbPathCCeClick(Sender: TObject);
begin
  PathClick(edtPathCCe);
end;

procedure TfEnvioNfce.sbPathInuClick(Sender: TObject);
begin
  PathClick(edtPathInu);
end;

procedure TfEnvioNfce.sbPathEventoClick(Sender: TObject);
begin
  PathClick(edtPathEvento);
end;

procedure TfEnvioNfce.AlimentarNFe(NumDFe: String);
var
  Ok: Boolean;
  BaseCalculo,
  ValorICMS: Double;
begin
  with ACBrNFe1.NotasFiscais.Add.NFe do
  begin
    Ide.natOp     := edNatureza.Text;
    case cbPagamento.ItemIndex of
      0 : Ide.indPag    := ipVista;
      1 : Ide.indPag    := ipPrazo;
      2 : Ide.indPag    := ipOutras;
    end;
    Ide.modelo    := StrToInt(edModelo.Text);
    Ide.serie     := StrToInt(edSerie.Text);
    Ide.nNF       := StrToInt(NumDFe);
    Ide.cNF       := GerarCodigoDFe(Ide.nNF);
    Ide.dEmi      := now;
    Ide.dSaiEnt   := now;
    Ide.hSaiEnt   := now;
    Ide.tpNF      := tnSaida;
    Ide.tpEmis    := TpcnTipoEmissao(cbFormaEmissao.ItemIndex);
    Ide.tpAmb     := ACBrNFe1.Configuracoes.WebServices.Ambiente;  //Lembre-se de trocar esta variavel quando for para ambiente de producao
    Ide.cUF       := UFtoCUF(edtEmitUF.Text);
    Ide.cMunFG    := StrToInt(edtEmitCodCidade.Text);
    Ide.finNFe    := fnNormal;
    Ide.tpImp     := tiNFCe;
    Ide.indFinal  := cfConsumidorFinal;
    Ide.indPres   := pcPresencial;

    // Valores aceitos:
    // iiSemOperacao, iiOperacaoSemIntermediador, iiOperacaoComIntermediador
//    Ide.indIntermed := iiSemOperacao;

//     Ide.dhCont := date;
//     Ide.xJust  := 'Justificativa Contingencia';
    Emit.CNPJCPF           := edtEmitCNPJ.Text;
    Emit.IE                := edtEmitIE.Text;
    Emit.xNome             := edtEmitRazao.Text;
    Emit.xFant             := edtEmitFantasia.Text;

    Emit.EnderEmit.fone    := edtEmitFone.Text;
    Emit.EnderEmit.CEP     := StrToInt(edtEmitCEP.Text);
    Emit.EnderEmit.xLgr    := edtEmitLogradouro.Text;
    Emit.EnderEmit.nro     := edtEmitNumero.Text;
    Emit.EnderEmit.xCpl    := edtEmitComp.Text;
    Emit.EnderEmit.xBairro := edtEmitBairro.Text;
    Emit.EnderEmit.cMun    := StrToInt(edtEmitCodCidade.Text);
    Emit.EnderEmit.xMun    := edtEmitCidade.Text;
    Emit.EnderEmit.UF      := edtEmitUF.Text;
    Emit.enderEmit.cPais   := 1058;
    Emit.enderEmit.xPais   := 'BRASIL';
    Emit.IEST := '';

    case rbCRT.ItemIndex of
      0 : Emit.CRT  := crtRegimeNormal;
      1 : Emit.CRT  := crtSimplesNacional;
      2 : Emit.CRT  := crtSimplesExcessoReceita;
    end;

    // Na NFC-e o Destinatário é opcional
    if edtDestRazao.Text <> '' then
      begin
        Dest.CNPJCPF           := edtDestCNPJ.Text;
        Dest.xNome             := edtDestRazao.Text;

        Dest.EnderDest.Fone    := edtDestFone.Text;
        Dest.EnderDest.CEP     := StrToInt(edtDestCEP.Text);
        Dest.EnderDest.xLgr    := edtDestLogradouro.Text;
        Dest.EnderDest.nro     := edtDestNumero.Text;
        Dest.EnderDest.xCpl    := edtDestComp.Text;
        Dest.EnderDest.xBairro := edtDestBairro.Text;
        Dest.EnderDest.cMun    := StrToInt(edtDestCodCidade.Text);
        Dest.EnderDest.xMun    := edtDestCidade.Text;
        Dest.EnderDest.UF      := edtDestUF.Text;
        Dest.EnderDest.cPais   := 1058;
        Dest.EnderDest.xPais   := 'BRASIL';

        Dest.indIEDest         := inNaoContribuinte;
      end;

//Use os campos abaixo para informar o endereço de retirada quando for diferente do Remetente/Destinatário
    Retirada.CNPJCPF := '';
    Retirada.xLgr    := '';
    Retirada.nro     := '';
    Retirada.xCpl    := '';
    Retirada.xBairro := '';
    Retirada.cMun    := 0;
    Retirada.xMun    := '';
    Retirada.UF      := '';

//Use os campos abaixo para informar o endereço de entrega quando for diferente do Remetente/Destinatário
    Entrega.CNPJCPF := '';
    Entrega.xLgr    := '';
    Entrega.nro     := '';
    Entrega.xCpl    := '';
    Entrega.xBairro := '';
    Entrega.cMun    := 0;
    Entrega.xMun    := '';
    Entrega.UF      := '';

//Adicionando Produtos

//  showmessage('GUIA PRODUTOS');
  movestoque.Close;
  movestoque.sql.Clear;
  movestoque.sql.Add('select produto,sum(qtd) as qtd, und, VlrUnit,sum(VlrTotal) as VlrTotal from movestoque');
  movestoque.sql.add('where (documento = '+chr(39)+lbvenda.Caption+chr(39)+')');
  movestoque.SQL.Add('and (TipoMov = '+chr(39)+lbtipo.Caption+chr(39)+')');//vendaI
  movestoque.sql.Add('and (VlrTotal>0)');
  movestoque.sql.Add('group by produto,und,VlrUnit');
  movestoque.Open;
  idprod:=1;
  while not movestoque.Eof do
  begin
    dm.produtos.close;
    dm.produtos.sql.clear;
    dm.produtos.sql.add('select * from produtos');
    dm.produtos.sql.add('where codigo = '+IntToStr(movestoqueproduto.Value));
    dm.produtos.open;


    with Det.New do
    begin
      Prod.nItem    := idprod; // Número sequencial, para cada item deve ser incrementado
      Prod.cProd    := dm.produtoscodigo.AsString;
      Prod.cEAN     := 'SEM GTIN';
      Prod.xProd    := dm.produtosnome.AsString;
      Prod.NCM      := dm.produtosncm.AsString; // Tabela NCM disponível em  http://www.receita.fazenda.gov.br/Aliquotas/DownloadArqTIPI.htm
      Prod.CFOP     := edCfop.Text;
      Prod.uCom     := dm.produtosundint.AsString;
      Prod.qCom     := movestoqueqtd.Value;
      Prod.vUnCom   := movestoqueVlrUnit.Value;
      Prod.vProd    := movestoqueVlrTotal.Value;

      Prod.cEANTrib  := 'SEM GTIN';
      Prod.uTrib     := dm.produtosundint.AsString;
      Prod.qTrib     := movestoqueqtd.Value;
      Prod.vUnTrib   := movestoqueVlrUnit.Value;

      Prod.vOutro    := 0;
      Prod.vFrete    := 0;
      Prod.vSeg      := 0;
      Prod.vDesc     := 0;

      Prod.CEST      := '';

      infAdProd      := ''; //INFO ADICIONAL

     with Imposto do
      begin
        // lei da transparencia nos impostos
        vTotTrib := 0;

        with ICMS do
        begin
          // caso o CRT seja:
          // 1=Simples Nacional
          // Os valores aceitos para CSOSN são:
          // csosn101, csosn102, csosn103, csosn201, csosn202, csosn203,
          // csosn300, csosn400, csosn500,csosn900

          // 2=Simples Nacional, excesso sublimite de receita bruta;
          // ou 3=Regime Normal.
          // Os valores aceitos para CST são:
          // cst00, cst10, cst20, cst30, cst40, cst41, cst45, cst50, cst51,
          // cst60, cst70, cst80, cst81, cst90, cstPart10, cstPart90,
          // cstRep41, cstVazio, cstICMSOutraUF, cstICMSSN, cstRep60

          // (consulte o contador do seu cliente para saber qual deve ser utilizado)
          // Pode variar de um produto para outro.

          if Emit.CRT in [crtSimplesExcessoReceita, crtRegimeNormal] then
            begin
              CST     := StrToCSTICMS(Ok,edCST.Text);
              vBC     := StrToFloat(edBaseProduto.Text);
              pICMS   := StrToFloat(edAliquota.Text);
              vICMS   := StrToFloat(edIcmsProduto.Text);
            end
          else
            begin
              CSOSN       := StrToCSOSNIcms(Ok,edCSOSN.Text);
              //pCredSN     := StrToFloat(edPCred.Text);
              //vCredICMSSN := StrToFloat(edVCred.Text);
            end;

          orig    := oeNacional;
          modBC   := dbiValorOperacao;
          modBCST := dbisMargemValorAgregado;
        end;


        with PIS do
        begin
          CST      := pis99;
          PIS.vBC  := 0;
          PIS.pPIS := 0;
          PIS.vPIS := 0;

          PIS.qBCProd   := 0;
          PIS.vAliqProd := 0;
          PIS.vPIS      := 0;
        end;

        with PISST do
        begin
          vBc       := 0;
          pPis      := 0;
          qBCProd   := 0;
          vAliqProd := 0;
          vPIS      := 0;
        end;

        with COFINS do
        begin
          CST            := cof99;
          COFINS.vBC     := 0;
          COFINS.pCOFINS := 0;
          COFINS.vCOFINS := 0;

          COFINS.qBCProd   := 0;
          COFINS.vAliqProd := 0;
        end;

        with COFINSST do
        begin
          vBC       := 0;
          pCOFINS   := 0;
          qBCProd   := 0;
          vAliqProd := 0;
          vCOFINS   := 0;
        end;
      end;
    end;
    movestoque.Next;
    idprod:=idprod+1;
  end;

    if rbCRT.ItemIndex <> 1 then  //pra nao dar erro enviando icms pra uma empresa simples
      begin
        Total.ICMSTot.vBC     := StrToFloat(edBaseIcms.Text);
        Total.ICMSTot.vICMS   := StrToFloat(edValorIcms.Text);
      end
    else
      begin
        Total.ICMSTot.vBC     := 0;
        Total.ICMSTot.vICMS   := 0;
      end;
    Total.ICMSTot.vBCST   := 0;
    Total.ICMSTot.vST     := 0;
    Total.ICMSTot.vProd   := StrToFloat(edValorProdutos.Text);
    Total.ICMSTot.vFrete  := 0;
    Total.ICMSTot.vSeg    := 0;
    Total.ICMSTot.vDesc   := 0;
    Total.ICMSTot.vII     := 0;
    Total.ICMSTot.vIPI    := 0;
    Total.ICMSTot.vPIS    := 0;
    Total.ICMSTot.vCOFINS := 0;
    Total.ICMSTot.vOutro  := 0;
    Total.ICMSTot.vNF     := StrToFloat(edValorNota.Text);

    // partilha do icms e fundo de probreza
    Total.ICMSTot.vFCPUFDest   := 0.00;
    Total.ICMSTot.vICMSUFDest  := 0.00;
    Total.ICMSTot.vICMSUFRemet := 0.00;

    Transp.modFrete := mfSemFrete; // NFC-e não pode ter FRETE


    //colocar codigo aqui
    FrmVenda.qrtotalvenda.Close;
    FrmVenda.qrtotalvenda.SQL.Clear;
    FrmVenda.qrtotalvenda.SQL.Add('select formapagto, sum(subtotal) as subtotal, sum(desconto) as desconto, sum(total) as total from venda');
    FrmVenda.qrtotalvenda.SQL.Add('where (vendaI ='+chr(39)+FrmVenda.qrconsultavendaI.Value+chr(39)+')');
    FrmVenda.qrtotalvenda.SQL.Add('and (fechada ='+chr(39)+'S'+chr(39)+')');
    FrmVenda.qrtotalvenda.SQL.Add('and (formapagto <>'+chr(39)+'VF'+chr(39)+')');
    FrmVenda.qrtotalvenda.SQL.Add('group by formapagto');
    FrmVenda.qrtotalvenda.SQL.Add('order by formapagto desc');
    FrmVenda.qrtotalvenda.Open;
    if FrmVenda.qrtotalvenda.RecordCount>1 then
       begin
         while not FrmVenda.qrtotalvenda.Eof do
               begin
                 if FrmVenda.qrtotalvendaformapagto.Value='AV' then
                    begin
                      with pag.Add do
                       begin
                         tPag := fpDinheiro;
                         vPag := FrmVenda.qrtotalvendatotal.Value;
                       end;
                    end
                 else if FrmVenda.qrtotalvendaformapagto.Value='CC' then
                    begin
                      with pag.Add do
                       begin
                         tPag := fpCartaoCredito;
                         vPag := FrmVenda.qrtotalvendatotal.Value;
                         tpIntegra := tiPagNaoIntegrado;
                       end;
                    end
                 else if FrmVenda.qrtotalvendaformapagto.Value='CD' then
                    begin
                      with pag.Add do
                       begin
                         tPag := fpCartaoDebito;
                         vPag := FrmVenda.qrtotalvendatotal.Value;
                         tpIntegra := tiPagNaoIntegrado;
                       end;
                    end
                 else if FrmVenda.qrtotalvendaformapagto.Value='CP' then
                    begin
                      with pag.Add do
                       begin
                         tPag := fpCheque;
                         vPag := FrmVenda.qrtotalvendatotal.Value;
                       end;
                    end
                    else
                    begin
                      with pag.Add do
                       begin
                         tPag := fpDinheiro;
                         vPag := FrmVenda.qrtotalvendatotal.Value;
                       end;
                    end;
                    FrmVenda.qrtotalvenda.Next;
               end;
       end
       else
       begin
          with pag.Add do
           begin
              if FrmVenda.qrtotalvendaformapagto.Value='AV' then
                 tPag := fpDinheiro
              else if FrmVenda.qrtotalvendaformapagto.Value='CC' then
                 begin
                   tPag := fpCartaoCredito;
                   tpIntegra := tiPagNaoIntegrado;
                 end
              else if FrmVenda.qrtotalvendaformapagto.Value='CD' then
                 begin
                   tPag:= fpCartaoDebito;
                   tpIntegra := tiPagNaoIntegrado;
                 end
              else if FrmVenda.qrtotalvendaformapagto.Value='CP' then
                 tPag:= fpCheque
              else
                 tPag := fpDinheiro;

             vPag := FrmVenda.qrtotalvendatotal.Value;
           end;
       end;

    // O grupo infIntermed só deve ser gerado nos casos de operação não presencial
    // pela internet em site de terceiros (Intermediadores).
//    infIntermed.CNPJ := '';
//    infIntermed.idCadIntTran := '';

    InfAdic.infCpl     :=  '';
    InfAdic.infAdFisco :=  '';
  end;

  ACBrNFe1.NotasFiscais.GerarNFe;
end;

procedure TfEnvioNfce.btMontarClick(Sender: TObject);
var
  vCaminhoXML : String;
begin
  ACBrNFe1.NotasFiscais.Clear;

  AlimentarNFe(edNota.Text);

  ACBrNFe1.DANFE.TipoDANFE              := tiNFCe;
  ACBrNFe1.Configuracoes.Geral.ModeloDF := moNFCe;
  ACBrNFe1.Configuracoes.Geral.FormaEmissao := teNormal;
//  if ACBrNFe1.Enviar(1) then
  if ACBrNFe1.Enviar(1,True,True) then
    begin
      MemoResp.Lines.Text := ACBrNFe1.WebServices.Retorno.RetWS;
      memoRespWS.Lines.Text := ACBrNFe1.WebServices.Retorno.RetornoWS;
      LoadXML(ACBrNFe1.WebServices.Retorno.RetornoWS, WBResposta);

      //exemplo de como pegar os retornos
      MemoDados.Lines.Add('');
      MemoDados.Lines.Add('Envio NFe');
      MemoDados.Lines.Add('verAplic: '+ ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.verAplic);
      MemoDados.Lines.Add('cStat: '+ IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.cStat));
      MemoDados.Lines.Add('xMotivo: '+ ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.xMotivo);
      MemoDados.Lines.Add('cMsg: '+ IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.cMsg));
      MemoDados.Lines.Add('xMsg: '+ ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.xMsg);
      N_Protocolo     := ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.nProt;
      MemoDados.Lines.Add('Protocolo: '+ ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.nProt);
      ACBrNFe1.NotasFiscais.ImprimirPDF;
      qratualizar.close;
      qratualizar.sql.clear;
      qratualizar.sql.add('update venda set');
      qratualizar.sql.add('protocolo_nfce = :N_Protocolo');
      qratualizar.sql.add('where vendaI = '+chr(39)+lbvenda.Caption+chr(39));
      qratualizar.Params[0].Value := N_Protocolo;
      qratualizar.ExecSQL;
{
      MemoDados.Lines.Add('');
      MemoDados.Lines.Add('Envio NFe');
      MemoDados.Lines.Add('tpAmb: '+ TpAmbToStr(ACBrNFe1.WebServices.Retorno.TpAmb));
      MemoDados.Lines.Add('verAplic: '+ ACBrNFe1.WebServices.Retorno.verAplic);
      MemoDados.Lines.Add('cStat: '+ IntToStr(ACBrNFe1.WebServices.Retorno.cStat));
      MemoDados.Lines.Add('cUF: '+ IntToStr(ACBrNFe1.WebServices.Retorno.cUF));
      MemoDados.Lines.Add('xMotivo: '+ ACBrNFe1.WebServices.Retorno.xMotivo);
      MemoDados.Lines.Add('cMsg: '+ IntToStr(ACBrNFe1.WebServices.Retorno.cMsg));
      MemoDados.Lines.Add('xMsg: '+ ACBrNFe1.WebServices.Retorno.xMsg);
      MemoDados.Lines.Add('Recibo: '+ ACBrNFe1.WebServices.Retorno.Recibo);
      N_Protocolo:=ACBrNFe1.WebServices.Retorno.Protocolo;
      MemoDados.Lines.Add('Protocolo: '+ ACBrNFe1.WebServices.Retorno.Protocolo);
      ACBrNFe1.NotasFiscais.ImprimirPDF;
      qratualizar.close;
      qratualizar.sql.clear;
      qratualizar.sql.add('update venda set');
      qratualizar.sql.add('protocolo_nfce = :N_Protocolo');
      qratualizar.sql.add('where vendaI = '+chr(39)+lbvenda.Caption+chr(39));
      qratualizar.Params[0].Value := N_Protocolo;
      qratualizar.ExecSQL;
}
    end;
end;

procedure TfEnvioNfce.btatualizarnfeClick(Sender: TObject);
begin
  ACBrNFe1.NotasFiscais.Clear;

  AlimentarNFe(edNota.Text);
  ACBrNFe1.NotasFiscais.GerarNFe;
  ACBrNFe1.NotasFiscais.Assinar;
  ACBrNFe1.Consultar;

  if ACBrNFe1.WebServices.Consulta.cStat = 100 then
    begin
      MemoResp.Lines.Text := ACBrNFe1.WebServices.Retorno.RetWS;
      memoRespWS.Lines.Text := ACBrNFe1.WebServices.Retorno.RetornoWS;
      LoadXML(ACBrNFe1.WebServices.Retorno.RetornoWS, WBResposta);

      //exemplo de como pegar os retornos
      MemoDados.Lines.Add('');
      MemoDados.Lines.Add('Envio NFe');
      MemoDados.Lines.Add('tpAmb: '+ TpAmbToStr(ACBrNFe1.WebServices.Retorno.TpAmb));
      MemoDados.Lines.Add('verAplic: '+ ACBrNFe1.WebServices.Retorno.verAplic);
      MemoDados.Lines.Add('cStat: '+ IntToStr(ACBrNFe1.WebServices.Retorno.cStat));
      MemoDados.Lines.Add('cUF: '+ IntToStr(ACBrNFe1.WebServices.Retorno.cUF));
      MemoDados.Lines.Add('xMotivo: '+ ACBrNFe1.WebServices.Retorno.xMotivo);
      MemoDados.Lines.Add('cMsg: '+ IntToStr(ACBrNFe1.WebServices.Retorno.cMsg));
      MemoDados.Lines.Add('xMsg: '+ ACBrNFe1.WebServices.Retorno.xMsg);
      MemoDados.Lines.Add('Recibo: '+ ACBrNFe1.WebServices.Retorno.Recibo);
      MemoDados.Lines.Add('Protocolo: '+ ACBrNFe1.WebServices.Retorno.Protocolo);
          
      ACBrNFe1.NotasFiscais.ImprimirPDF;
    end;

end;

end.
