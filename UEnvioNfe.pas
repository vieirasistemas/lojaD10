//duvidas pode me chamar no whats 51 99501-7059

unit UEnvioNfe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, Buttons, OleCtrls, SHDocVw,
  //uses necessarias
  ACBrDFeReport, ACBrDFeDANFeReport, ACBrNFeNotasFiscais, PcnNfe, ACBrDFeUtil,
  ACBrNFeDANFEClass, ACBrNFeDANFeRLClass,  ACBrUtil, pcnConversaoNFe, pcnConversao,
  ACBrBase, ACBrNFe, IniFiles, ACBrDFe, ACBrDFeSSL, Spin, blcksock, TypInfo, FileCtrl,
  DB, ZAbstractRODataset, ZAbstractDataset, ZDataset;


const
  SELDIRHELP = 1000;

    
type
  TfEnvioNfe = class(TForm)
    GroupBox1: TGroupBox;
    lbvenda: TLabel;
    Label57: TLabel;
    PageControl1: TPageControl;
    TabSheet4: TTabSheet;
    Label12: TLabel;
    Label13: TLabel;
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
    edtEmitIE: TEdit;
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
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
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
    edtDestIE: TEdit;
    edtDestRazao: TEdit;
    edtDestFantasia: TEdit;
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
    Label48: TLabel;
    Label63: TLabel;
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
    cbtipo: TComboBox;
    cbfinalidade: TComboBox;
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
    TabSheet6: TTabSheet;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    cbfreteconta: TComboBox;
    edcodantt: TEdit;
    edendtransp: TEdit;
    edcidadetransp: TEdit;
    eduftransp: TEdit;
    edcnpjcpftransp: TEdit;
    edietransp: TEdit;
    edqtdtransp: TEdit;
    edespecietransp: TEdit;
    edmarcatransp: TEdit;
    ednrtransp: TEdit;
    edpesoBtransp: TEdit;
    edpesoLtransp: TEdit;
    edplaca: TEdit;
    edrazaotransp: TEdit;
    edufplaca: TEdit;
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
    ACBrNFeDANFeRL1: TACBrNFeDANFeRL;
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
    cbxSalvarArqs: TCheckBox;
    cbxPastaMensal: TCheckBox;
    cbxAdicionaLiteral: TCheckBox;
    cbxEmissaoPathNFe: TCheckBox;
    cbxSalvaPathEvento: TCheckBox;
    cbxSepararPorCNPJ: TCheckBox;
    cbxSepararPorModelo: TCheckBox;
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
    ckSalvar: TCheckBox;
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
    Button1: TButton;
    movestoque: TZQuery;
    movestoqueproduto: TIntegerField;
    movestoqueqtd: TFloatField;
    movestoqueVlrUnit: TFloatField;
    movestoqueVlrTotal: TFloatField;
    movestoqueund: TStringField;
    qratualizar: TZQuery;
    Button2: TButton;
    lbchaveNE: TLabel;
    edchaveNE: TEdit;
    movestoquebaseicms: TFloatField;
    movestoquevlricms: TFloatField;
    movestoquevlr50: TFloatField;
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
    procedure Button1Click(Sender: TObject);
    procedure btMontarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbfretecontaExit(Sender: TObject);
    procedure btatualizarnfeClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure edtDestCodCidadeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbfinalidadeExit(Sender: TObject);
    procedure edCfopExit(Sender: TObject);
    procedure edCfopKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
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
  fEnvioNfe: TfEnvioNfe;
  idprod:integer;
  p_icms,vlrredicms,totalredicms,valoricms:double;
  N_cancelada,N_NF,normal:string;
  Referenciada : TNFrefCollectionItem;
  qry : TZQuery;

implementation

uses Frm_SelecionarCertificado, Frm_Status, Unitdm, Math,
  UnitFrmNotasFiscais, UnitFrmMuncicipios, UnitFrmCFOP;

{$R *.dfm}

procedure TfEnvioNfe.PathClick(Sender: TObject);
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

procedure TfEnvioNfe.AtualizarSSLLibsCombo;
begin
  cbSSLLib.ItemIndex     := Integer(ACBrNFe1.Configuracoes.Geral.SSLLib);
  cbCryptLib.ItemIndex   := Integer(ACBrNFe1.Configuracoes.Geral.SSLCryptLib);
  cbHttpLib.ItemIndex    := Integer(ACBrNFe1.Configuracoes.Geral.SSLHttpLib);
  cbXmlSignLib.ItemIndex := Integer(ACBrNFe1.Configuracoes.Geral.SSLXmlSignLib);

  cbSSLType.Enabled := (ACBrNFe1.Configuracoes.Geral.SSLHttpLib in [httpWinHttp, httpOpenSSL]);
end;

procedure TfEnvioNfe.ConfigurarComponente;
var
  Ok: Boolean;
  PathMensal: string;
begin
  ACBrNFe1.Configuracoes.Certificados.NumeroSerie := edtNumSerie.Text;
  ACBrNFe1.SSL.NumeroSerie                        := edtNumSerie.Text; //teste

  ACBrNFe1.DANFE := ACBrNFeDANFeRL1;

  ACBrNFe1.SSL.DescarregarCertificado;

  with ACBrNFe1.Configuracoes.Geral do
  begin
    SSLLib        := TSSLLib(cbSSLLib.ItemIndex);
    SSLCryptLib   := TSSLCryptLib(cbCryptLib.ItemIndex);
    SSLHttpLib    := TSSLHttpLib(cbHttpLib.ItemIndex);
    SSLXmlSignLib := TSSLXmlSignLib(cbXmlSignLib.ItemIndex);

    AtualizarSSLLibsCombo;

    AtualizarXMLCancelado := cbxAtualizarXML.Checked;

//    Salvar           := ckSalvar.Checked;
    Salvar           := false;
    ExibirErroSchema := cbxExibirErroSchema.Checked;
    RetirarAcentos   := cbxRetirarAcentos.Checked;
    FormatoAlerta    := edtFormatoAlerta.Text;
    FormaEmissao     := TpcnTipoEmissao(cbFormaEmissao.ItemIndex);
    ModeloDF         := TpcnModeloDF(cbModeloDF.ItemIndex);
    VersaoDF         := TpcnVersaoDF(cbVersaoDF.ItemIndex);

    //IdCSC            := edtIdToken.Text;
    //CSC              := edtToken.Text;
    //VersaoQRCode     := veqr200;
  end;

  with ACBrNFe1.Configuracoes.WebServices do
  begin
    UF         := cbUF.Text;
    Ambiente   := StrToTpAmb(Ok,IntToStr(rgTipoAmb.ItemIndex+1));
//    Visualizar := cbxVisualizar.Checked;
//    Salvar     := cbxSalvarSOAP.Checked;
    Visualizar := false;
    Salvar     := false;
  end;

  ACBrNFe1.SSL.SSLType := TSSLType(cbSSLType.ItemIndex);

  with ACBrNFe1.Configuracoes.Arquivos do
  begin
    Salvar           := true;
    SepararPorMes    := true;
    AdicionarLiteral := true;
    EmissaoPathNFe   := true;
    SalvarEvento     := true;
    SepararPorCNPJ   := false;
    SepararPorModelo := false;
    PathSchemas      := edtPathSchemas.Text;
    PathNFe          := edtPathNFe.Text;
    PathInu          := edtPathInu.Text;
    PathEvento       := edtPathEvento.Text;
    PathMensal       := GetPathNFe(0);
    PathSalvar       := PathMensal;
  end;

  if ACBrNFe1.DANFE <> nil then
  begin
    ACBrNFe1.DANFE.TipoDANFE := tiRetrato;
    ACBrNFe1.DANFE.Logo      := ''; // logomarca da empresa em bmp
    ACBrNFe1.DANFE.PathPDF   := PathMensal;

    ACBrNFe1.DANFE.MargemDireita  := 7;
    ACBrNFe1.DANFE.MargemEsquerda := 7;
    ACBrNFe1.DANFE.MargemSuperior := 5;
    ACBrNFe1.DANFE.MargemInferior := 5;
  end;
end;

procedure TfEnvioNfe.LerConfiguracao;
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
    ckSalvar.Checked          := Ini.ReadBool(   'Geral', 'Salvar',         True);
    cbxRetirarAcentos.Checked := Ini.ReadBool(   'Geral', 'RetirarAcentos', True);
    edtPathLogs.Text          := Ini.ReadString( 'Geral', 'PathSalvar',     PathWithDelim(ExtractFilePath(Application.ExeName))+'Logs');
    edtPathSchemas.Text       := Ini.ReadString( 'Geral', 'PathSchemas',    PathWithDelim(ExtractFilePath(Application.ExeName))+'Schemas\'+GetEnumName(TypeInfo(TpcnVersaoDF), integer(cbVersaoDF.ItemIndex) ));

    cbUF.ItemIndex := cbUF.Items.IndexOf(Ini.ReadString('WebService', 'UF', 'SP'));

    rgTipoAmb.ItemIndex   := Ini.ReadInteger('WebService', 'Ambiente',   0);
    cbxVisualizar.Checked := Ini.ReadBool(   'WebService', 'Visualizar', False);
    cbxSalvarSOAP.Checked := Ini.ReadBool(   'WebService', 'SalvarSOAP', False);
    seTimeOut.Value       := Ini.ReadInteger('WebService', 'TimeOut',    5000);
    cbSSLType.ItemIndex   := Ini.ReadInteger('WebService', 'SSLType',    0);

    cbxSalvarArqs.Checked       := Ini.ReadBool(  'Arquivos', 'Salvar',           false);
    cbxPastaMensal.Checked      := Ini.ReadBool(  'Arquivos', 'PastaMensal',      false);
    cbxAdicionaLiteral.Checked  := Ini.ReadBool(  'Arquivos', 'AddLiteral',       false);
    cbxEmissaoPathNFe.Checked   := Ini.ReadBool(  'Arquivos', 'EmissaoPathNFe',   false);
    cbxSalvaPathEvento.Checked  := Ini.ReadBool(  'Arquivos', 'SalvarPathEvento', false);
    cbxSepararPorCNPJ.Checked   := Ini.ReadBool(  'Arquivos', 'SepararPorCNPJ',   false);
    cbxSepararPorModelo.Checked := Ini.ReadBool(  'Arquivos', 'SepararPorModelo', false);
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

procedure TfEnvioNfe.GravarConfiguracao;
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
    Ini.WriteBool(   'Geral', 'Salvar',           ckSalvar.Checked);
    Ini.WriteString( 'Geral', 'PathSalvar',       edtPathLogs.Text);
    Ini.WriteString( 'Geral', 'PathSchemas',      edtPathSchemas.Text);

    Ini.WriteString( 'WebService', 'UF',         cbUF.Text);
    Ini.WriteInteger('WebService', 'Ambiente',   rgTipoAmb.ItemIndex);
    Ini.WriteBool(   'WebService', 'Visualizar', cbxVisualizar.Checked);
    Ini.WriteBool(   'WebService', 'SalvarSOAP', cbxSalvarSOAP.Checked);
    Ini.WriteInteger('WebService', 'TimeOut',    seTimeOut.Value);
    Ini.WriteInteger('WebService', 'SSLType',    cbSSLType.ItemIndex);

    Ini.WriteBool(  'Arquivos', 'Salvar',           cbxSalvarArqs.Checked);
    Ini.WriteBool(  'Arquivos', 'PastaMensal',      cbxPastaMensal.Checked);
    Ini.WriteBool(  'Arquivos', 'AddLiteral',       cbxAdicionaLiteral.Checked);
    Ini.WriteBool(  'Arquivos', 'EmissaoPathNFe',   cbxEmissaoPathNFe.Checked);
    Ini.WriteBool(  'Arquivos', 'SalvarPathEvento', cbxSalvaPathEvento.Checked);
    Ini.WriteBool(  'Arquivos', 'SepararPorCNPJ',   cbxSepararPorCNPJ.Checked);
    Ini.WriteBool(  'Arquivos', 'SepararPorModelo', cbxSepararPorModelo.Checked);
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

procedure TfEnvioNfe.LoadXML(RetWS: String; MyWebBrowser: TWebBrowser);
begin
  ACBrUtil.WriteToTXT(PathWithDelim(ExtractFileDir(application.ExeName)) + 'temp.xml',
                      ACBrUtil.ConverteXMLtoUTF8(RetWS), False, False);

  MyWebBrowser.Navigate(PathWithDelim(ExtractFileDir(application.ExeName)) + 'temp.xml');

  if ACBrNFe1.NotasFiscais.Count > 0then
    MemoResp.Lines.Add('Empresa: ' + ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.xNome);
end;

procedure TfEnvioNfe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfEnvioNfe.btnInutilizarClick(Sender: TObject);
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

procedure TfEnvioNfe.btnDataValidadeClick(Sender: TObject);
begin
  ShowMessage(FormatDateBr(ACBrNFe1.SSL.CertDataVenc));
end;

procedure TfEnvioNfe.sbtnNumSerieClick(Sender: TObject);
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

procedure TfEnvioNfe.ACBrNFe1GerarLog(const ALogLine: String;
  var Tratado: Boolean);
begin
  memoLog.Lines.Add(ALogLine);
end;

procedure TfEnvioNfe.ACBrNFe1StatusChange(Sender: TObject);
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

procedure TfEnvioNfe.btnCancelarChaveClick(Sender: TObject);
var
  Chave, idLote, CNPJ, Protocolo, Justificativa: string;
begin
  dm.nf.Close;
  dm.nf.sql.clear;
  dm.nf.sql.add('select * from nf');
  dm.nf.sql.add('where (documento ='+chr(39)+edNota.Text+chr(39)+')');
  dm.nf.sql.add('and (tipo ='+chr(39)+'S'+chr(39)+')');
  dm.nf.open;

  Chave := dm.nfchaveNfe.Value;
  if not(InputQuery('WebServices Eventos: Cancelamento', 'Chave da NF-e', Chave)) then
     exit;
  Chave := Trim(OnlyNumber(Chave));
  idLote := '1';
  if not(InputQuery('WebServices Eventos: Cancelamento', 'Identificador de controle do Lote de envio do Evento', idLote)) then
     exit;
  CNPJ := copy(Chave,7,14);
  if not(InputQuery('WebServices Eventos: Cancelamento', 'CNPJ ou o CPF do autor do Evento', CNPJ)) then
     exit;

  Protocolo:=dm.nfprotocoloNfe.Value;
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

  N_cancelada:='S';

  qratualizar.close;
  qratualizar.sql.clear;
  qratualizar.sql.add('update nf set');
  qratualizar.sql.add('cancelada = :N_cancelada');
  qratualizar.sql.add('where (chaveNfe ='+chr(39)+Chave+chr(39)+')');
  qratualizar.Params[0].Value := N_cancelada;
  qratualizar.ExecSQL;
end;

procedure TfEnvioNfe.btnImprimirClick(Sender: TObject);
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

procedure TfEnvioNfe.btnSalvarConfigClick(Sender: TObject);
begin
  GravarConfiguracao;
end;

procedure TfEnvioNfe.FormCreate(Sender: TObject);
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

procedure TfEnvioNfe.btnStatusServClick(Sender: TObject);
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

procedure TfEnvioNfe.sbtnPathSalvarClick(Sender: TObject);
begin
  PathClick(edtPathLogs);
end;

procedure TfEnvioNfe.spPathSchemasClick(Sender: TObject);
begin
  PathClick(edtPathSchemas);
end;

procedure TfEnvioNfe.sbPathNFeClick(Sender: TObject);
begin
  PathClick(edtPathNFe);
end;

procedure TfEnvioNfe.sbPathCanClick(Sender: TObject);
begin
  PathClick(edtPathCan);
end;

procedure TfEnvioNfe.sbPathCCeClick(Sender: TObject);
begin
  PathClick(edtPathCCe);
end;

procedure TfEnvioNfe.sbPathInuClick(Sender: TObject);
begin
  PathClick(edtPathInu);
end;

procedure TfEnvioNfe.sbPathEventoClick(Sender: TObject);
begin
  PathClick(edtPathEvento);
end;

procedure TfEnvioNfe.Button1Click(Sender: TObject);
var
  Chave, idLote, CNPJ, nSeqEvento, Correcao: string;
begin
  Chave := '';
  if not(InputQuery('WebServices Eventos: Carta de Correção', 'Chave da NF-e', Chave)) then
     exit;
  Chave := Trim(OnlyNumber(Chave));
  idLote := '1';
  if not(InputQuery('WebServices Eventos: Carta de Correção', 'Identificador de controle do Lote de envio do Evento', idLote)) then
     exit;
  CNPJ := copy(Chave,7,14);
  if not(InputQuery('WebServices Eventos: Carta de Correção', 'CNPJ ou o CPF do autor do Evento', CNPJ)) then
     exit;
  nSeqEvento := '1';
  if not(InputQuery('WebServices Eventos: Carta de Correção', 'Sequencial do evento para o mesmo tipo de evento', nSeqEvento)) then
     exit;
  Correcao := 'Correção a ser considerada, texto livre. A correção mais recente substitui as anteriores.';
  if not(InputQuery('WebServices Eventos: Carta de Correção', 'Correção a ser considerada', Correcao)) then
     exit;

  ACBrNFe1.EventoNFe.Evento.Clear;

  with ACBrNFe1.EventoNFe.Evento.New do
  begin
    infEvento.chNFe := Chave;
    infEvento.CNPJ   := CNPJ;
    infEvento.dhEvento := now;
    infEvento.tpEvento := teCCe;
    infEvento.nSeqEvento := StrToInt(nSeqEvento);
    infEvento.detEvento.xCorrecao := Correcao;
  end;

  ACBrNFe1.EnviarEvento(StrToInt(idLote));

  MemoResp.Lines.Text := ACBrNFe1.WebServices.EnvEvento.RetWS;
  LoadXML(ACBrNFe1.WebServices.EnvEvento.RetWS, WBResposta);

end;

procedure TfEnvioNfe.AlimentarNFe(NumDFe: String);
var
  Ok: Boolean;
  NotaF: NotaFiscal;
  Produto: TDetCollectionItem;
  Volume: TVolCollectionItem;
  Duplicata: TDupCollectionItem;
  ObsComplementar: TobsContCollectionItem;
  ObsFisco: TobsFiscoCollectionItem;
  InfoPgto: TpagCollectionItem;
  AComplemento : String;
begin
//  showmessage('GUIA NFE');
  //Variavel para complemento da descrição do item 
  AComplemento := EmptyStr;
  NotaF := ACBrNFe1.NotasFiscais.Add;
  NotaF.NFe.Ide.natOp     := edNatureza.Text;
  case cbPagamento.ItemIndex of
    0 : NotaF.NFe.Ide.indPag    := ipVista;
    1 : NotaF.NFe.Ide.indPag    := ipPrazo;
    2 : NotaF.NFe.Ide.indPag    := ipNenhum;
  end;
  NotaF.NFe.Ide.modelo    := StrToInt(edModelo.Text);
  NotaF.NFe.Ide.serie     := StrToInt(edSerie.Text);
  NotaF.NFe.Ide.nNF       := StrToInt(NumDFe);
  NotaF.NFe.Ide.cNF       := GerarCodigoDFe(NotaF.NFe.Ide.nNF); // gera o codigo aleatorio para nnf e cnf serem diferentes conforme validação
  NotaF.NFe.Ide.dEmi      := Date;
  NotaF.NFe.Ide.dSaiEnt   := Date;
  NotaF.NFe.Ide.hSaiEnt   := Now;
  case cbtipo.ItemIndex of
    0 : NotaF.NFe.Ide.tpNF      := tnEntrada;
    1 : NotaF.NFe.Ide.tpNF      := tnSaida;
  end;

  NotaF.NFe.Ide.tpEmis    := teNormal;
  NotaF.NFe.Ide.tpAmb     := taProducao;  //Lembre-se de trocar esta variável quando for para ambiente de produção
  NotaF.NFe.Ide.verProc   := '1.0.0.0'; //Versão do seu sistema
  NotaF.NFe.Ide.cUF       := UFtoCUF(edtEmitUF.Text);
  NotaF.NFe.Ide.cMunFG    := StrToInt(edtEmitCodCidade.Text);

  if cbfinalidade.Text='1-SAÍDA' then
     NotaF.NFe.Ide.finNFe    := fnNormal
  else if cbfinalidade.Text='4-DEVOLUÇÃO' then
     NotaF.NFe.Ide.finNFe    := fnDevolucao;

{
  case cbfinalidade.ItemIndex of
    0 : NotaF.NFe.Ide.finNFe    := fnNormal;
    1 : NotaF.NFe.Ide.finNFe    := fnDevolucao;
  end;
}
  if  Assigned( ACBrNFe1.DANFE ) then
    NotaF.NFe.Ide.tpImp     := ACBrNFe1.DANFE.TipoDANFE;

  if (lbtipo.Caption='SD') or (lbtipo.Caption='ED') then
     begin
       Referenciada := NotaF.NFe.Ide.NFref.Add;
       Referenciada.refNFe       := edchaveNE.text; //NFe Eletronica
     end;


  // intermediario da nota
  // iiSemOperacao, iiOperacaoSemIntermediador, iiOperacaoComIntermediador
//  NotaF.NFe.Ide.indIntermed := iiSemOperacao;


//Para NFe referenciada use os campos abaixo
  (*

  Referenciada.RefNF.cUF    := 0;  // |
  Referenciada.RefNF.AAMM   := ''; // |
  Referenciada.RefNF.CNPJ   := ''; // |
  Referenciada.RefNF.modelo := 1;  // |- NFe Modelo 1/1A
  Referenciada.RefNF.serie  := 1;  // |
  Referenciada.RefNF.nNF    := 0;  // |

  Referenciada.RefNFP.cUF     := 0;  // |
  Referenciada.RefNFP.AAMM    := ''; // |
  Referenciada.RefNFP.CNPJCPF := ''; // |
  Referenciada.RefNFP.IE      := ''; // |- NF produtor Rural
  Referenciada.RefNFP.modelo  := ''; // |
  Referenciada.RefNFP.serie   := 1;  // |
  Referenciada.RefNFP.nNF     := 0;  // |

  Referenciada.RefECF.modelo  := ECFModRef2B; // |
  Referenciada.RefECF.nECF    := '';          // |- Cupom Fiscal
  Referenciada.RefECF.nCOO    := '';          // |
  *)
//  showmessage('GUIA EMITENTE');
  NotaF.NFe.Emit.CNPJCPF           := edtEmitCNPJ.Text;
  NotaF.NFe.Emit.IE                := edtEmitIE.Text;
  NotaF.NFe.Emit.xNome             := edtEmitRazao.Text;
  NotaF.NFe.Emit.xFant             := edtEmitFantasia.Text;

  NotaF.NFe.Emit.EnderEmit.fone    := edtEmitFone.Text;
  NotaF.NFe.Emit.EnderEmit.CEP     := StrToInt(edtEmitCEP.Text);
  NotaF.NFe.Emit.EnderEmit.xLgr    := edtEmitLogradouro.Text;
  NotaF.NFe.Emit.EnderEmit.nro     := edtEmitNumero.Text;
  NotaF.NFe.Emit.EnderEmit.xCpl    := edtEmitComp.Text;
  NotaF.NFe.Emit.EnderEmit.xBairro := edtEmitBairro.Text;
  NotaF.NFe.Emit.EnderEmit.cMun    := StrToInt(edtEmitCodCidade.Text);
  NotaF.NFe.Emit.EnderEmit.xMun    := edtEmitCidade.Text;
  NotaF.NFe.Emit.EnderEmit.UF      := edtEmitUF.Text;
  NotaF.NFe.Emit.enderEmit.cPais   := 1058;
  NotaF.NFe.Emit.enderEmit.xPais   := 'BRASIL';

    // (1-crtSimplesNacional, 2-crtSimplesExcessoReceita, 3-crtRegimeNormal)
  case rbCRT.ItemIndex of
    0 : NotaF.NFe.Emit.CRT  := crtRegimeNormal;
    1 : NotaF.NFe.Emit.CRT  := crtSimplesNacional;
    2 : NotaF.NFe.Emit.CRT  := crtSimplesExcessoReceita;
  end;

//  showmessage('GUIA DESTINATARIO');
  NotaF.NFe.Dest.CNPJCPF           := edtDestCNPJ.Text;
  NotaF.NFe.Dest.IE                := edtDestIE.Text;
  NotaF.NFe.Dest.xNome             := edtDestRazao.Text;

  NotaF.NFe.Dest.EnderDest.Fone    := edtDestFone.Text;
  NotaF.NFe.Dest.EnderDest.CEP     := StrToInt(edtDestCEP.Text);
  NotaF.NFe.Dest.EnderDest.xLgr    := edtDestLogradouro.Text;
  NotaF.NFe.Dest.EnderDest.nro     := edtDestNumero.Text;
  NotaF.NFe.Dest.EnderDest.xCpl    := edtDestComp.Text;
  NotaF.NFe.Dest.EnderDest.xBairro := edtDestBairro.Text;
  NotaF.NFe.Dest.EnderDest.cMun    := StrToInt(edtDestCodCidade.Text);
  NotaF.NFe.Dest.EnderDest.xMun    := edtDestCidade.Text;
  NotaF.NFe.Dest.EnderDest.UF      := edtDestUF.Text;
  NotaF.NFe.Dest.EnderDest.cPais   := 1058;
  NotaF.NFe.Dest.EnderDest.xPais   := 'BRASIL';

  NotaF.NFe.Ide.indFinal     := cfNao;
  case cbIndIEDest.ItemIndex of
    0 : NotaF.NFe.Dest.indIEDest := inContribuinte;
    1 : NotaF.NFe.Dest.indIEDest := inIsento;
    2 : begin
          NotaF.NFe.Dest.indIEDest := inNaoContribuinte;
          NotaF.NFe.Ide.indFinal   := cfConsumidorFinal;
        end;
  end;

   if NotaF.NFe.Dest.EnderDest.UF = 'EX'
    then NotaF.NFe.ide.idDest := doExterior
    else if NotaF.NFe.Dest.EnderDest.UF = NotaF.NFe.Emit.EnderEmit.UF
          then NotaF.NFe.ide.idDest := doInterna
          else NotaF.NFe.ide.idDest := doInterestadual;

//Use os campos abaixo para informar o endereço de retirada quando for diferente do Remetente/Destinatário

  NotaF.NFe.Retirada.CNPJCPF := '';
  NotaF.NFe.Retirada.xLgr    := '';
  NotaF.NFe.Retirada.nro     := '';
  NotaF.NFe.Retirada.xCpl    := '';
  NotaF.NFe.Retirada.xBairro := '';
  NotaF.NFe.Retirada.cMun    := 0;
  NotaF.NFe.Retirada.xMun    := '';
  NotaF.NFe.Retirada.UF      := '';

//Use os campos abaixo para informar o endereço de entrega quando for diferente do Remetente/Destinatário

  NotaF.NFe.Entrega.CNPJCPF := '';
  NotaF.NFe.Entrega.xLgr    := '';
  NotaF.NFe.Entrega.nro     := '';
  NotaF.NFe.Entrega.xCpl    := '';
  NotaF.NFe.Entrega.xBairro := '';
  NotaF.NFe.Entrega.cMun    := 0;
  NotaF.NFe.Entrega.xMun    := '';
  NotaF.NFe.Entrega.UF      := '';

//Adicionando Produtos coloque em um loop para adiconar mais de um
//  showmessage('GUIA PRODUTOS');
  movestoque.Close;
  movestoque.sql.Clear;
  movestoque.sql.Add('select produto,sum(qtd) as qtd, und, VlrUnit,sum(VlrTotal) as VlrTotal,sum(vlr50) as vlr50,baseicms,vlricms from movestoque');
  movestoque.sql.add('where (documento = '+chr(39)+lbvenda.Caption+chr(39)+')');
  movestoque.SQL.Add('and (TipoMov = '+chr(39)+lbtipo.Caption+chr(39)+')');//vendaI
  movestoque.sql.Add('and (VlrTotal>0)');
  movestoque.sql.Add('group by produto,und,VlrUnit,baseicms,vlricms');
  movestoque.Open;
  idprod:=1;
  while not movestoque.Eof do
  begin
    qry              :=  TZQuery.Create(nil);
    qry.Connection   :=  dm.ZConnection1;
    qry.Close;
    qry.SQL.Clear;
    qry.sql.add('select codigo,nome,ncm,undint,redicms from produtos');
    qry.sql.add('where codigo = '+IntToStr(movestoqueproduto.Value));
    qry.open;

    Produto               := NotaF.NFe.Det.New;
    Produto.Prod.nItem    := idprod; // Número sequencial, para cada item deve ser incrementado
    Produto.Prod.cProd    := qry.FieldByName('codigo').AsString;
    Produto.Prod.cEAN     := 'SEM GTIN';
    Produto.Prod.xProd    := qry.FieldByName('nome').AsString;
    Produto.Prod.NCM      := qry.FieldByName('ncm').AsString; // Tabela NCM disponível em  http://www.receita.fazenda.gov.br/Aliquotas/DownloadArqTIPI.htm
    Produto.Prod.CFOP     := edCfop.Text;
    Produto.Prod.uCom     := qry.FieldByName('undint').AsString;
    Produto.Prod.qCom     := movestoqueqtd.Value;
    if movestoquevlr50.Value>0 then
       begin
         Produto.Prod.vUnCom   := movestoquevlr50.Value/movestoqueqtd.Value;
         Produto.Prod.vProd    := movestoquevlr50.Value;
       end
       else
       begin
         Produto.Prod.vUnCom   := movestoqueVlrUnit.Value;
         Produto.Prod.vProd    := movestoqueVlrTotal.Value;
       end;

    Produto.Prod.cEANTrib  := 'SEM GTIN';
    Produto.Prod.uTrib     := qry.FieldByName('undint').AsString;
    Produto.Prod.qTrib     := movestoqueqtd.Value;
    if movestoquevlr50.Value>0 then
       Produto.Prod.vUnTrib   := movestoquevlr50.Value/movestoqueqtd.Value
    else
       Produto.Prod.vUnTrib   := movestoqueVlrUnit.Value;

    Produto.Prod.vOutro    := 0;
    Produto.Prod.vFrete    := 0;
    Produto.Prod.vSeg      := 0;
    Produto.Prod.vDesc     := 0;

    Produto.Prod.CEST      := '';

    if lbtipo.Caption='SD' then
       begin
         dm.movcomp.Close;
         dm.movcomp.SQL.Clear;
         dm.movcomp.SQL.Add('select * from movcomp');
         dm.movcomp.SQL.Add('where (documento = '+chr(39)+lbvenda.Caption+chr(39)+')');
         dm.movcomp.SQL.Add('and (produto = '+movestoqueproduto.AsString+')');
         dm.movcomp.Open;
         if dm.movcomp.RecordCount>0 then
            Produto.infAdProd      := dm.movcompdescricao.Value;
{
          if AComplemento <> EmptyStr then
            Produto.infAdProd      := AComplemento;
}
       end;



    with Produto.Imposto do
    begin
      // lei da transparencia nos impostos
      vTotTrib := 0;

      with ICMS do
      begin
        
        orig    := oeNacional;
        modBC   := dbiValorOperacao;
        modBCST := dbisMargemValorAgregado;
        
        if StrToFloat(edAliquota.Text)>0 then
           begin
             if (qry.FieldByName('redicms').Value>0) and (NotaF.NFe.Emit.CRT in [crtRegimeNormal]) then
                begin
                  pRedBC       := qry.FieldByName('redicms').Value;
                  vBC          := (movestoqueVlrTotal.Value*qry.FieldByName('redicms').Value)/100;
                  pICMS        := StrToFloat(edAliquota.Text);
                  vICMS        := RoundTo(vBC * (pICMS / 100),-2);
                end
                else
                begin
                  vBC          := movestoqueVlrTotal.Value;
                  pICMS        := StrToFloat(edAliquota.Text);
                  vICMS        := RoundTo(vBC * (pICMS / 100),-2);
                end;
           end
           else
           begin
              if lbtipo.Caption='SD' then
                 begin
                    vBC          := movestoquebaseicms.Value;
                    pICMS        := StrToFloat(edAliquota.Text);
                    vICMS        := movestoquevlricms.Value;
                 end
                 else
                 begin
                    vBC          := 0;
                    pICMS        := 0;
                    vICMS        := 0;  
                 end;
           end;

        if (NotaF.NFe.Emit.CRT in [crtSimplesNacional])  then
           begin
             CSOSN     := csosn102;
           end
           else
           begin
             if (qry.FieldByName('redicms').Value>0) and (NotaF.NFe.Emit.CRT in [crtRegimeNormal]) then
                begin
                  CST               := cst20;
                  pRedBC            := qry.FieldByName('redicms').Value;
                end
                else
                begin
                  CST               := cst00;
                end;
           end;


      // IPI, se hpouver...
      with IPI do
      begin
        CST      := ipi99;
        vBC    := 0;
        qUnid  := 0;
        vUnid  := 0;
        pIPI   := 0;
        vIPI   := 0;
      end;

      with PIS do
      begin
        CST  := pis99;
        vBC  := 0;
        pPIS := 0;
        vPIS := 0;

        qBCProd   := 0;
        vAliqProd := 0;
        vPIS      := 0;
      end;

      with COFINS do
      begin
        CST     := cof99;
        vBC     := 0;
        pCOFINS := 0;
        vCOFINS := 0;
        qBCProd   := 0;
        vAliqProd := 0;
      end;
      end;
    end;

    qry.Free;
    movestoque.Next;
    idprod:=idprod+1;
  end;

  if rbCRT.ItemIndex <> 1 then  //pra nao dar erro enviando icms pra uma empresa simples
    begin
      NotaF.NFe.Total.ICMSTot.vBC     := StrToFloat(edBaseIcms.Text);
      NotaF.NFe.Total.ICMSTot.vICMS   := StrToFloat(edValorIcms.Text);
    end
  else
    begin
      NotaF.NFe.Total.ICMSTot.vBC     := 0;
      NotaF.NFe.Total.ICMSTot.vICMS   := 0;
    end;
  NotaF.NFe.Total.ICMSTot.vBCST   := 0;
  NotaF.NFe.Total.ICMSTot.vST     := 0;
  NotaF.NFe.Total.ICMSTot.vProd   := StrToFloat(edValorProdutos.Text);;
  NotaF.NFe.Total.ICMSTot.vFrete  := 0;
  NotaF.NFe.Total.ICMSTot.vSeg    := 0;
  NotaF.NFe.Total.ICMSTot.vDesc   := 0;
  NotaF.NFe.Total.ICMSTot.vII     := 0;
  NotaF.NFe.Total.ICMSTot.vIPI    := 0;
  NotaF.NFe.Total.ICMSTot.vPIS    := 0;
  NotaF.NFe.Total.ICMSTot.vCOFINS := 0;
  NotaF.NFe.Total.ICMSTot.vOutro  := 0;
  NotaF.NFe.Total.ICMSTot.vNF     := StrToFloat(edValorNota.Text);;

  // lei da transparencia de impostos
  NotaF.NFe.Total.ICMSTot.vTotTrib := 0;

  // partilha do icms e fundo de probreza
  NotaF.NFe.Total.ICMSTot.vFCPUFDest   := 0.00;
  NotaF.NFe.Total.ICMSTot.vICMSUFDest  := 0.00;
  NotaF.NFe.Total.ICMSTot.vICMSUFRemet := 0.00;

  case cbfreteconta.ItemIndex of
    0 : NotaF.NFe.Transp.modFrete := mfContaEmitente;
    1 : NotaF.NFe.Transp.modFrete := mfContaDestinatario;
    2 : NotaF.NFe.Transp.modFrete := mfContaTerceiros;
    3 : NotaF.NFe.Transp.modFrete := mfSemFrete;
  end;


  NotaF.NFe.Transp.Transporta.CNPJCPF  := edcnpjcpftransp.Text;
  NotaF.NFe.Transp.Transporta.xNome    := edrazaotransp.Text;
  NotaF.NFe.Transp.Transporta.IE       := edietransp.Text;
  NotaF.NFe.Transp.Transporta.xEnder   := edendtransp.Text;
  NotaF.NFe.Transp.Transporta.xMun     := edcidadetransp.Text;
  NotaF.NFe.Transp.Transporta.UF       := eduftransp.Text;
  NotaF.NFe.Transp.veicTransp.placa    := edplaca.Text;
  NotaF.NFe.Transp.veicTransp.UF       := edufplaca.Text;
  NotaF.NFe.Transp.veicTransp.RNTC     := edcodantt.Text;


  Volume := NotaF.NFe.Transp.Vol.New;
  IF edqtdtransp.Text <> '' THEN
    Volume.qVol  := StrToInt(edqtdtransp.Text);
  Volume.esp   := edespecietransp.Text;
  Volume.marca := edmarcatransp.Text;
  Volume.nVol  := ednrtransp.Text;
  Volume.pesoL := StrToFloat(edpesoLtransp.Text);
  Volume.pesoB := StrToFloat(edpesoBtransp.Text);

  
  if cbPagamento.Text='0 - À vista' then
    begin
          with NotaF.NFe.pag.Add do
           begin
             tPag := fpDinheiro;
             vPag := 0
           end;
    end
  else if cbPagamento.Text='1 - À prazo' then
     begin
          NotaF.NFe.Cobr.Fat.nFat  := edNota.Text;
          NotaF.NFe.Cobr.Fat.vOrig := StrToFloat(edvlrfatura.Text);
          NotaF.NFe.Cobr.Fat.vDesc := StrToFloat(edvlrdescfatura.Text);
          NotaF.NFe.Cobr.Fat.vLiq  := StrToFloat(edvlrliqfatura.Text);

          with NotaF.NFe.Cobr.Dup.Add do
          begin
            nDup  := FormatFloat('000',1);
            vDup  := StrToFloat(edvlrliqfatura.Text);
            dVenc := StrToDate(edvenctofatura.Text);
          end;

          with NotaF.NFe.pag.Add do // NFE 4.0 A MESMA TAG USADA NO NFCE, É EXIGIDA AGORA NA NFE
           begin
             tPag := fpBoletoBancario;
             vPag := StrToFloat(edvlrliqfatura.Text);
           end;

     end
  else if cbPagamento.Text='2 - Outros' then
     begin
          with NotaF.NFe.pag.Add do
           begin
             tPag := fpSemPagamento;
             vPag := StrToFloat(edvlrliqfatura.Text);
           end;
     end;

  NotaF.NFe.InfAdic.infCpl     :=  memoObs.Text;
  NotaF.NFe.InfAdic.infAdFisco :=  '';

  ACBrNFe1.NotasFiscais.GerarNFe;
end;

procedure TfEnvioNfe.btMontarClick(Sender: TObject);
var
  vCaminhoXML : String;
begin
  if ((lbtipo.Caption='SD') or (lbtipo.Caption='ED')) and (edchaveNE.Text='') then
     begin
       showmessage('Digite a Chave da Nota de Entrada com 44 Digitos');
       edchaveNE.SetFocus;
       Exit;
     end;

  ACBrNFe1.NotasFiscais.Clear;

  AlimentarNFe(edNota.Text);

  if ACBrNFe1.Enviar(1) then
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
      MemoDados.Lines.Add('Chave: '+ ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtDFe.Items[0].chDFe);
      ACBrNFe1.NotasFiscais.ImprimirPDF;

      N_nf:=edNota.Text;
      if lbtipo.Caption<>'SD' then
         begin
           qratualizar.Close;
           qratualizar.SQL.Clear;
           qratualizar.SQL.Add('update venda set');
           qratualizar.sql.add('nf = :N_nf');
           qratualizar.SQL.Add('where vendaI='+chr(39)+lbvenda.Caption+chr(39));
           qratualizar.Params[0].Value := N_nf;
           qratualizar.ExecSQL;
         end;

      dm.nf.Close;
      dm.nf.sql.clear;
      dm.nf.sql.add('select * from nf');
      dm.nf.sql.add('where (documento ='+chr(39)+edNota.Text+chr(39)+')');
      dm.nf.sql.add('and (tipo ='+chr(39)+'S'+chr(39)+')');
      dm.nf.open;
      if dm.nf.RecordCount<1 then
         begin
           dm.Clientes.close;
           dm.Clientes.sql.clear;
           dm.Clientes.sql.add('select * from clientes');
           if Length(edtDestCNPJ.text)<14 then
              dm.clientes.sql.add('where cpf = '+chr(39)+edtDestCNPJ.text+chr(39))
           else
              dm.Clientes.sql.add('where cnpj = '+chr(39)+edtDestCNPJ.text+chr(39));
           dm.Clientes.open;
           dm.nf.Insert;
           dm.nftipo.Value:='S';
           dm.nffavorecido.Value:=dm.clientescodigo.Value;
           dm.nfdocumento.Value:=edNota.Text;
           dm.nfemissao.Value:=StrToDate(edEmissao.Text);
           dm.nfrecepcao.Value:=StrToDate(edEmissao.Text);
           dm.nfserie.Value:=edSerie.Text;
           dm.nfvlrcontabil.value:=StrToFloat(edValorNota.Text);
           dm.nfbasecalculo.value:=StrToFloat(edValorProdutos.Text);
           dm.nfrecibonfe.Value:=ACBrNFe1.WebServices.Retorno.Recibo;
           dm.nfprotocolonfe.Value:=ACBrNFe1.WebServices.Retorno.Protocolo;
           dm.nfchavenfe.Value:=ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtDFe.Items[0].chDFe;
//           dm.nfxmlnfe.Value:=dm.znotasxml.Value;
           dm.nf.Post;
           dm.nf.Close;
         end;
    end;
end;

procedure TfEnvioNfe.FormShow(Sender: TObject);
begin
  dm.parametros.Open;
{
  if dm.parametrosCRT.Value = '3' then
    rbCRT.ItemIndex                   :=  0
  else
    rbCRT.ItemIndex                   :=  1;
  totalredicms:=0;valoricms:=0;
  dm.movestoque.Close;
  dm.movestoque.SQL.Clear;
  dm.movestoque.SQL.Add('select * from movestoque');
  dm.movestoque.SQL.Add('where (documento = '+chr(39)+lbvenda.Caption+chr(39)+')');
  dm.movestoque.SQL.Add('and (tipomov = '+chr(39)+lbtipo.Caption+chr(39)+')');
  dm.movestoque.Open;
  while not dm.movestoque.Eof do
  begin
    if dm.movestoqueVlrTotal.Value>0 then
       begin
        if (rbCRT.ItemIndex = 0) then
           normal:='S'
        else
           normal:='N';

        dm.produtos.close;
        dm.produtos.sql.clear;
        dm.produtos.sql.add('select * from produtos');
        dm.produtos.sql.add('where codigo = '+IntToStr(dm.movestoqueproduto.Value));
        dm.produtos.open;

        if StrToFloat(edAliquota.Text)>0 then
           begin
             if (dm.produtosredicms.Value>0) and (normal='S') then
                begin
                  vlrredicms   :=  (dm.movestoqueVlrTotal.Value*dm.produtosredicms.Value)/100;
                  p_icms       :=  StrToFloat(edAliquota.Text)/100;
                  valoricms    :=  valoricms+(vlrredicms*p_icms);
//                  valoricms    :=  valoricms+(vlrredicms*0.07);
                  totalredicms :=  totalredicms+vlrredicms;
                end
                else
                begin
                  vlrredicms   :=  (dm.movestoqueVlrTotal.Value*StrToFloat(edAliquota.Text))/100;
                  valoricms    :=  valoricms+(vlrredicms*StrToFloat(edAliquota.Text)/100);
                  totalredicms :=  totalredicms+vlrredicms;
                end;
           end
           else
           begin
           end;
       end;
    dm.movestoque.Next;
  end;

  edBaseIcms.Text  := formatfloat('0.00',totalredicms);
  edValorIcms.Text := formatfloat('0.00',valoricms);
}
  if (lbtipo.Caption='SD') or (lbtipo.Caption='ED') then
     begin
       cbfinalidade.Text:='4-DEVOLUÇÃO';
       lbchaveNE.Visible:=true;
       edchaveNE.Visible:=true;
     end
     else
     begin
       cbfinalidade.Text:='1-SAÍDA';
       lbchaveNE.Visible:=false;
       edchaveNE.Visible:=false;
       edchaveNE.Text:='';
     end
end;

procedure TfEnvioNfe.cbfretecontaExit(Sender: TObject);
begin
  if copy(cbfreteconta.text,1,1)='0' then
     begin
       edrazaotransp.Text  := '';
       edendtransp.Text    := '';
       edcidadetransp.Text := '';
       eduftransp.Text     := '';
       edcnpjcpftransp.Text:= '';
       edietransp.Text     := '';
       edqtdtransp.Text    := '';
     end
     else
     begin
       if Application.Messagebox ('Limpar Campos?','Atenção', Mb_YesNo+mb_iconquestion) = id_no then
          begin
            edrazaotransp.Text  := 'BRASPRESS TRANSPORTADORA URGENTES LTDA';
            edendtransp.Text    := 'RUA DOS IPES LTS 2/3 SALA A 140';
            edcidadetransp.Text := 'GOIANIA';
            eduftransp.Text     := 'GO';
            edcnpjcpftransp.Text:= '48740351001218';
            edietransp.Text     := '103952543';
            edqtdtransp.Text    := '1';
          end
          else
          begin
            edrazaotransp.Text  := '';
            edendtransp.Text    := '';
            edcidadetransp.Text := '';
            eduftransp.Text     := '';
            edcnpjcpftransp.Text:= '';
            edietransp.Text     := '';
            edqtdtransp.Text    := '1';
          end;
     end;
end;

procedure TfEnvioNfe.btatualizarnfeClick(Sender: TObject);
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

procedure TfEnvioNfe.Button2Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmNotasFiscais, FrmNotasFiscais);
    FrmNotasFiscais.rbsaida.Checked:=true;
    FrmNotasFiscais.showmodal;
  finally
    FrmNotasFiscais.Release;
    FrmNotasFiscais:=nil;
  end;
end;

procedure TfEnvioNfe.edtDestCodCidadeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key=vk_f10 then
     begin
       try
         Application.CreateForm(TFrmMuncicipios, FrmMuncicipios);
         FrmMuncicipios.showmodal;
       finally
         FrmMuncicipios.Release;
         FrmMuncicipios:=nil;
       end;
     end;
end;

procedure TfEnvioNfe.cbfinalidadeExit(Sender: TObject);
begin
  if cbfinalidade.Text='4-DEVOLUÇÃO' then
     begin
       lbchaveNE.Visible:=true;
       edchaveNE.Visible:=true;
     end
     else
     begin
       cbfinalidade.Text:='1-SAÍDA';
       lbchaveNE.Visible:=false;
       edchaveNE.Visible:=false;
       edchaveNE.Text:='';
     end;
end;

procedure TfEnvioNfe.edCfopExit(Sender: TObject);
begin
  if edcfop.text<>'' then
     begin
       dm.cfop.Open;
       if dm.cfop.Locate('codigo',edcfop.text,[]) then
          edNatureza.Text:=dm.cfopdescricao.Value
       else
          edNatureza.Text:='';
     end;
end;

procedure TfEnvioNfe.edCfopKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_f10 then
     begin
       try
         Application.CreateForm(TFrmCFOP, FrmCFOP);
         FrmCFOP.showmodal;
       finally
         FrmCFOP.Release;
         FrmCFOP:=nil;
       end;
     end;
end;

end.
