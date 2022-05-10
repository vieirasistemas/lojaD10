unit UnitFrmContasCorrentes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, EditAlinhado, ExtCtrls, DB, DBTables,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFrmContasCorrentes = class(TForm)
    Panel3: TPanel;
    btnovo: TBitBtn;
    btgravar: TBitBtn;
    btalterar: TBitBtn;
    btexcluir: TBitBtn;
    btrelatorio: TBitBtn;
    btcancelar: TBitBtn;
    P_Dados: TPanel;
    Label1: TLabel;
    EdConta: TEdit;
    Label2: TLabel;
    EdDescricao: TEdit;
    Label4: TLabel;
    EdCarteira: TEdit;
    Label5: TLabel;
    EdNossoNum: TEdit;
    Label3: TLabel;
    EdConvenio: TEdit;
    Label6: TLabel;
    EdBanco: TEdit;
    Label7: TLabel;
    EdAgencia: TEdit;
    Label8: TLabel;
    EdAgenciaD: TEdit;
    Label10: TLabel;
    EdCC: TEdit;
    Label9: TLabel;
    EdCCD: TEdit;
    Label11: TLabel;
    edagcc: TEdit;
    Label12: TLabel;
    edpath: TEdit;
    Label13: TLabel;
    EdSaldoAnt: TEditAlinh;
    Label15: TLabel;
    Label16: TLabel;
    Label29: TLabel;
    Label14: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    EdEntJan: TEditAlinh;
    edSaiJan: TEditAlinh;
    edSldJan: TEditAlinh;
    EdEntFev: TEditAlinh;
    edSaiFev: TEditAlinh;
    edSldFev: TEditAlinh;
    EdEntMar: TEditAlinh;
    edSaiMar: TEditAlinh;
    edSldMar: TEditAlinh;
    EdEntAbr: TEditAlinh;
    edSaiAbr: TEditAlinh;
    edSldAbr: TEditAlinh;
    EdEntMai: TEditAlinh;
    edSaiMai: TEditAlinh;
    edSldMai: TEditAlinh;
    EdEntJun: TEditAlinh;
    edSaiJun: TEditAlinh;
    edSldJun: TEditAlinh;
    EdEntJul: TEditAlinh;
    edSaiJul: TEditAlinh;
    edSldJul: TEditAlinh;
    EdEntAgo: TEditAlinh;
    edSaiAgo: TEditAlinh;
    edSldAgo: TEditAlinh;
    EdEntSet: TEditAlinh;
    edSaiSet: TEditAlinh;
    edSldSet: TEditAlinh;
    EdEntOut: TEditAlinh;
    edSaiOut: TEditAlinh;
    edSldOut: TEditAlinh;
    EdEntNov: TEditAlinh;
    edSaiNov: TEditAlinh;
    edSldNov: TEditAlinh;
    EdEntDez: TEditAlinh;
    edSaiDez: TEditAlinh;
    edSldDez: TEditAlinh;
    btprimeiro: TBitBtn;
    btanterior: TBitBtn;
    btproximo: TBitBtn;
    btultimo: TBitBtn;
    qratualizar: TZQuery;
    Label25: TLabel;
    edcontacontabil: TEdit;
    Label30: TLabel;
    edagccD: TEdit;
    Label31: TLabel;
    edano: TEdit;
    BitBtn1: TBitBtn;
    procedure btnovoClick(Sender: TObject);
    procedure btalterarClick(Sender: TObject);
    procedure btcancelarClick(Sender: TObject);
    procedure EdContaExit(Sender: TObject);
    procedure btgravarClick(Sender: TObject);
    procedure EdSaldoAntExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btprimeiroClick(Sender: TObject);
    procedure btanteriorClick(Sender: TObject);
    procedure btproximoClick(Sender: TObject);
    procedure btultimoClick(Sender: TObject);
    procedure btexcluirClick(Sender: TObject);
    procedure btrelatorioClick(Sender: TObject);
    procedure EdContaEnter(Sender: TObject);
    procedure EdDescricaoEnter(Sender: TObject);
    procedure EdCarteiraEnter(Sender: TObject);
    procedure EdNossoNumEnter(Sender: TObject);
    procedure EdConvenioEnter(Sender: TObject);
    procedure EdBancoEnter(Sender: TObject);
    procedure EdAgenciaEnter(Sender: TObject);
    procedure EdAgenciaDEnter(Sender: TObject);
    procedure EdCCEnter(Sender: TObject);
    procedure EdCCDEnter(Sender: TObject);
    procedure edagccEnter(Sender: TObject);
    procedure edpathEnter(Sender: TObject);
    procedure EdSaldoAntEnter(Sender: TObject);
    procedure EdDescricaoExit(Sender: TObject);
    procedure EdCarteiraExit(Sender: TObject);
    procedure EdNossoNumExit(Sender: TObject);
    procedure EdConvenioExit(Sender: TObject);
    procedure EdBancoExit(Sender: TObject);
    procedure EdAgenciaExit(Sender: TObject);
    procedure EdAgenciaDExit(Sender: TObject);
    procedure EdCCExit(Sender: TObject);
    procedure EdCCDExit(Sender: TObject);
    procedure edagccExit(Sender: TObject);
    procedure edpathExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure edanoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmContasCorrentes: TFrmContasCorrentes;
  i,opcao:integer;
  R_hora:STRING;
  C_SaldoAnt:real;

implementation

uses Unitdm, UnitFrmRelCCImp, UnitFrmPrincipal;

{$R *.dfm}

function StringToFloat(s : string) : Extended;
{ Filtra uma string qualquer, convertendo as suas partes
  numéricas para sua representação decimal, por exemplo:
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
  {Filtra a string, aceitando somente números e separador decimal:}
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

procedure desabilita;
begin
        FrmContasCorrentes.btprimeiro.enabled:=false;
        FrmContasCorrentes.btanterior.enabled:=false;
        FrmContasCorrentes.btproximo.enabled:=false;
        FrmContasCorrentes.btultimo.enabled:=false;
        FrmContasCorrentes.btnovo.enabled:=false;
        FrmContasCorrentes.btalterar.enabled:=false;
        FrmContasCorrentes.btexcluir.enabled:=false;
        FrmContasCorrentes.btrelatorio.enabled:=false;
        FrmContasCorrentes.btgravar.enabled:=true;
        FrmContasCorrentes.btcancelar.Caption:='Cancelar';
        FrmContasCorrentes.P_Dados.enabled:=true;
end;

procedure habilita;
begin
        FrmContasCorrentes.btprimeiro.enabled:=true;
        FrmContasCorrentes.btanterior.enabled:=true;
        FrmContasCorrentes.btproximo.enabled:=true;
        FrmContasCorrentes.btultimo.enabled:=true;
        FrmContasCorrentes.btnovo.enabled:=true;
        FrmContasCorrentes.btalterar.enabled:=true;
        FrmContasCorrentes.btexcluir.enabled:=true;
        FrmContasCorrentes.btrelatorio.enabled:=true;
        FrmContasCorrentes.btcancelar.Caption:='Sair';
        FrmContasCorrentes.btgravar.enabled:=false;
        FrmContasCorrentes.P_Dados.enabled:=false;
end;

procedure Limpar;
begin
        FrmContasCorrentes.EdConta.text:='';
        FrmContasCorrentes.EdDescricao.text:='';
        FrmContasCorrentes.edConvenio.text:='';
        FrmContasCorrentes.edCarteira.text:='';
        FrmContasCorrentes.edNossoNum.text:='';
        FrmContasCorrentes.edBanco.text:='';
        FrmContasCorrentes.edAgencia.text:='';
        FrmContasCorrentes.edAgenciaD.text:='';
        FrmContasCorrentes.edCC.text:='';
        FrmContasCorrentes.edCCD.text:='';
        FrmContasCorrentes.edagcc.text:='';
        FrmContasCorrentes.edpath.text:='';
        FrmContasCorrentes.edcontacontabil.text:='';
        FrmContasCorrentes.edSaldoAnt.text:='';
        FrmContasCorrentes.edSldJan.text:='';
        FrmContasCorrentes.edSldFev.text:='';
        FrmContasCorrentes.edSldMar.text:='';
        FrmContasCorrentes.edSldAbr.text:='';
        FrmContasCorrentes.edSldMai.text:='';
        FrmContasCorrentes.edSldJun.text:='';
        FrmContasCorrentes.edSldJul.text:='';
        FrmContasCorrentes.edSldAgo.text:='';
        FrmContasCorrentes.edSldSet.text:='';
        FrmContasCorrentes.edSldOut.text:='';
        FrmContasCorrentes.edSldNov.text:='';
        FrmContasCorrentes.edSldDez.text:='';
        FrmContasCorrentes.edSaiJan.text:='';
        FrmContasCorrentes.edSaiFev.text:='';
        FrmContasCorrentes.edSaiMar.text:='';
        FrmContasCorrentes.edSaiAbr.text:='';
        FrmContasCorrentes.edSaiMai.text:='';
        FrmContasCorrentes.edSaiJun.text:='';
        FrmContasCorrentes.edSaiJul.text:='';
        FrmContasCorrentes.edSaiAgo.text:='';
        FrmContasCorrentes.edSaiSet.text:='';
        FrmContasCorrentes.edSaiOut.text:='';
        FrmContasCorrentes.edSaiNov.text:='';
        FrmContasCorrentes.edSaiDez.text:='';
        FrmContasCorrentes.edEntJan.text:='';
        FrmContasCorrentes.edEntFev.text:='';
        FrmContasCorrentes.edEntMar.text:='';
        FrmContasCorrentes.edEntAbr.text:='';
        FrmContasCorrentes.edEntMai.text:='';
        FrmContasCorrentes.edEntJun.text:='';
        FrmContasCorrentes.edEntJul.text:='';
        FrmContasCorrentes.edEntAgo.text:='';
        FrmContasCorrentes.edEntSet.text:='';
        FrmContasCorrentes.edEntOut.text:='';
        FrmContasCorrentes.edEntNov.text:='';
        FrmContasCorrentes.edEntDez.text:='';
end;

procedure atualiza;
begin
  FrmContasCorrentes.EdConta.text:=dm.ContasCorrenteconta.value;
  FrmContasCorrentes.EdDescricao.text:=dm.ContasCorrentedescricao.Value;
  FrmContasCorrentes.edConvenio.text:=IntToStr(dm.ContasCorrenteconvenio.Value);
  FrmContasCorrentes.edCarteira.text:=IntToStr(dm.ContasCorrentecarteira.Value);
  FrmContasCorrentes.edNossoNum.text:=FloatToStr(dm.ContasCorrenteN_Numero.Value);
  FrmContasCorrentes.edBanco.text:=IntToStr(dm.ContasCorrentebanco.Value);
  FrmContasCorrentes.edAgencia.text:=IntToStr(dm.ContasCorrenteagencia.Value);
  FrmContasCorrentes.edAgenciaD.text:=dm.ContasCorrenteagenciad.Value;
  if dm.ContasCorrentecontacorrente.Value>0 then
     FrmContasCorrentes.edCC.text:=IntToStr(dm.ContasCorrentecontacorrente.Value)
  else
     FrmContasCorrentes.edCC.text:='';
  if dm.ContasCorrentecontacontabil.Value>0 then
     FrmContasCorrentes.edcontacontabil.text:=IntToStr(dm.ContasCorrentecontacontabil.Value)
  else
     FrmContasCorrentes.edcontacontabil.text:='';
  FrmContasCorrentes.edCCD.text:=dm.ContasCorrentecontacorrented.Value;
  FrmContasCorrentes.edagcc.text:=dm.ContasCorrenteAgenciaCC.Value;
  FrmContasCorrentes.edagccD.text:=dm.ContasCorrenteAgenciaCCD.Value;
  FrmContasCorrentes.edpath.text:=dm.ContasCorrentepathretorno.Value;

  dm.contascorrente_saldo.Close;
  dm.contascorrente_saldo.SQL.Clear;
  dm.contascorrente_saldo.SQL.Add('select * from contascorrente_saldo');
  dm.contascorrente_saldo.SQL.Add('where (conta ='+chr(39)+FrmContasCorrentes.EdConta.text+chr(39)+')');
  dm.contascorrente_saldo.SQL.Add('and (ano ='+chr(39)+FrmContasCorrentes.edano.Text+chr(39)+')');
  dm.contascorrente_saldo.open;
  FrmContasCorrentes.EdSaldoAnt.Text:=formatfloat('#,##0.00',dm.contascorrente_saldoSaldoAnt.value);
  FrmContasCorrentes.EdEntJan.Text:=formatfloat('#,##0.00',dm.contascorrente_saldocred1.value);
  FrmContasCorrentes.EdEntFev.Text:=formatfloat('#,##0.00',dm.contascorrente_saldocred2.value);
  FrmContasCorrentes.EdEntMar.Text:=formatfloat('#,##0.00',dm.contascorrente_saldocred3.value);
  FrmContasCorrentes.EdEntAbr.Text:=formatfloat('#,##0.00',dm.contascorrente_saldocred4.value);
  FrmContasCorrentes.EdEntMai.Text:=formatfloat('#,##0.00',dm.contascorrente_saldocred5.value);
  FrmContasCorrentes.EdEntJun.Text:=formatfloat('#,##0.00',dm.contascorrente_saldocred6.value);
  FrmContasCorrentes.EdEntJul.Text:=formatfloat('#,##0.00',dm.contascorrente_saldocred7.value);
  FrmContasCorrentes.EdEntAgo.Text:=formatfloat('#,##0.00',dm.contascorrente_saldocred8.value);
  FrmContasCorrentes.EdEntSet.Text:=formatfloat('#,##0.00',dm.contascorrente_saldocred9.value);
  FrmContasCorrentes.EdEntOut.Text:=formatfloat('#,##0.00',dm.contascorrente_saldocred10.value);
  FrmContasCorrentes.EdEntNov.Text:=formatfloat('#,##0.00',dm.contascorrente_saldocred11.value);
  FrmContasCorrentes.EdEntDez.Text:=formatfloat('#,##0.00',dm.contascorrente_saldocred12.value);
  FrmContasCorrentes.EdSaiJan.Text:=formatfloat('#,##0.00',dm.contascorrente_saldodeb1.value);
  FrmContasCorrentes.EdSaiFev.Text:=formatfloat('#,##0.00',dm.contascorrente_saldodeb2.value);
  FrmContasCorrentes.EdSaiMar.Text:=formatfloat('#,##0.00',dm.contascorrente_saldodeb3.value);
  FrmContasCorrentes.EdSaiAbr.Text:=formatfloat('#,##0.00',dm.contascorrente_saldodeb4.value);
  FrmContasCorrentes.EdSaiMai.Text:=formatfloat('#,##0.00',dm.contascorrente_saldodeb5.value);
  FrmContasCorrentes.EdSaiJun.Text:=formatfloat('#,##0.00',dm.contascorrente_saldodeb6.value);
  FrmContasCorrentes.EdSaiJul.Text:=formatfloat('#,##0.00',dm.contascorrente_saldodeb7.value);
  FrmContasCorrentes.EdSaiAgo.Text:=formatfloat('#,##0.00',dm.contascorrente_saldodeb8.value);
  FrmContasCorrentes.EdSaiSet.Text:=formatfloat('#,##0.00',dm.contascorrente_saldodeb9.value);
  FrmContasCorrentes.EdSaiOut.Text:=formatfloat('#,##0.00',dm.contascorrente_saldodeb10.value);
  FrmContasCorrentes.EdSaiNov.Text:=formatfloat('#,##0.00',dm.contascorrente_saldodeb11.value);
  FrmContasCorrentes.EdSaiDez.Text:=formatfloat('#,##0.00',dm.contascorrente_saldodeb12.value);
  FrmContasCorrentes.EdSldJan.Text:=formatfloat('#,##0.00',dm.contascorrente_saldosaldoant.value+
  dm.contascorrente_saldocred1.value-dm.contascorrente_saldodeb1.value);
  FrmContasCorrentes.EdSldFev.Text:=formatfloat('#,##0.00',dm.contascorrente_saldosaldoant.value+
  dm.contascorrente_saldocred1.value+dm.contascorrente_saldocred2.value-dm.contascorrente_saldodeb1.value-
  dm.contascorrente_saldodeb2.value);
  FrmContasCorrentes.EdSldMar.Text:=formatfloat('#,##0.00',dm.contascorrente_saldosaldoant.value+
  dm.contascorrente_saldocred1.value+dm.contascorrente_saldocred2.value+dm.contascorrente_saldocred3.value-
  dm.contascorrente_saldodeb1.value-dm.contascorrente_saldodeb2.value-dm.contascorrente_saldodeb3.value);
  FrmContasCorrentes.EdSldAbr.Text:=formatfloat('#,##0.00',dm.contascorrente_saldosaldoant.value+
  dm.contascorrente_saldocred1.value+dm.contascorrente_saldocred2.value+dm.contascorrente_saldocred3.value+
  dm.contascorrente_saldocred4.value-dm.contascorrente_saldodeb1.value-dm.contascorrente_saldodeb2.value-
  dm.contascorrente_saldodeb3.value-dm.contascorrente_saldodeb4.value);
  FrmContasCorrentes.EdSldMai.Text:=formatfloat('#,##0.00',dm.contascorrente_saldosaldoant.value+
  dm.contascorrente_saldocred1.value+dm.contascorrente_saldocred2.value+dm.contascorrente_saldocred3.value+
  dm.contascorrente_saldocred4.value+dm.contascorrente_saldocred5.value-dm.contascorrente_saldodeb1.value-
  dm.contascorrente_saldodeb2.value-dm.contascorrente_saldodeb3.value-dm.contascorrente_saldodeb4.value-
  dm.contascorrente_saldodeb5.value);
  FrmContasCorrentes.EdSldJun.Text:=formatfloat('#,##0.00',dm.contascorrente_saldosaldoant.value+
  dm.contascorrente_saldocred1.value+dm.contascorrente_saldocred2.value+dm.contascorrente_saldocred3.value+
  dm.contascorrente_saldocred4.value+dm.contascorrente_saldocred5.value+dm.contascorrente_saldocred6.value-
  dm.contascorrente_saldodeb1.value-dm.contascorrente_saldodeb2.value-dm.contascorrente_saldodeb3.value-
  dm.contascorrente_saldodeb4.value-dm.contascorrente_saldodeb5.value-dm.contascorrente_saldodeb6.value);
  FrmContasCorrentes.EdSldJul.Text:=formatfloat('#,##0.00',dm.contascorrente_saldosaldoant.value+
  dm.contascorrente_saldocred1.value+dm.contascorrente_saldocred2.value+dm.contascorrente_saldocred3.value+
  dm.contascorrente_saldocred4.value+dm.contascorrente_saldocred5.value+dm.contascorrente_saldocred6.value+
  dm.contascorrente_saldocred7.value-dm.contascorrente_saldodeb1.value-dm.contascorrente_saldodeb2.value-
  dm.contascorrente_saldodeb3.value-dm.contascorrente_saldodeb4.value-dm.contascorrente_saldodeb5.value-
  dm.contascorrente_saldodeb6.value-dm.contascorrente_saldodeb7.value);
  FrmContasCorrentes.EdSldAgo.Text:=formatfloat('#,##0.00',dm.contascorrente_saldosaldoant.value+
  dm.contascorrente_saldocred1.value+dm.contascorrente_saldocred2.value+dm.contascorrente_saldocred3.value+
  dm.contascorrente_saldocred4.value+dm.contascorrente_saldocred5.value+dm.contascorrente_saldocred6.value+
  dm.contascorrente_saldocred7.value+dm.contascorrente_saldocred8.value-dm.contascorrente_saldodeb1.value-
  dm.contascorrente_saldodeb2.value-dm.contascorrente_saldodeb3.value-dm.contascorrente_saldodeb4.value-
  dm.contascorrente_saldodeb5.value-dm.contascorrente_saldodeb6.value-dm.contascorrente_saldodeb7.value-
  dm.contascorrente_saldodeb8.value);
  FrmContasCorrentes.EdSldSet.Text:=formatfloat('#,##0.00',dm.contascorrente_saldosaldoant.value+
  dm.contascorrente_saldocred1.value+dm.contascorrente_saldocred2.value+dm.contascorrente_saldocred3.value+
  dm.contascorrente_saldocred4.value+dm.contascorrente_saldocred5.value+dm.contascorrente_saldocred6.value+
  dm.contascorrente_saldocred7.value+dm.contascorrente_saldocred8.value+dm.contascorrente_saldocred9.value-
  dm.contascorrente_saldodeb1.value-dm.contascorrente_saldodeb2.value-dm.contascorrente_saldodeb3.value-
  dm.contascorrente_saldodeb4.value-dm.contascorrente_saldodeb5.value-dm.contascorrente_saldodeb6.value-
  dm.contascorrente_saldodeb7.value-dm.contascorrente_saldodeb8.value-dm.contascorrente_saldodeb9.value);
  FrmContasCorrentes.EdSldOut.Text:=formatfloat('#,##0.00',dm.contascorrente_saldosaldoant.value+
  dm.contascorrente_saldocred1.value+dm.contascorrente_saldocred2.value+dm.contascorrente_saldocred3.value+
  dm.contascorrente_saldocred4.value+dm.contascorrente_saldocred5.value+dm.contascorrente_saldocred6.value+
  dm.contascorrente_saldocred7.value+dm.contascorrente_saldocred8.value+dm.contascorrente_saldocred9.value+
  dm.contascorrente_saldocred10.value-dm.contascorrente_saldodeb1.value-dm.contascorrente_saldodeb2.value-
  dm.contascorrente_saldodeb3.value-dm.contascorrente_saldodeb4.value-dm.contascorrente_saldodeb5.value-
  dm.contascorrente_saldodeb6.value-dm.contascorrente_saldodeb7.value-dm.contascorrente_saldodeb8.value-
  dm.contascorrente_saldodeb9.value-dm.contascorrente_saldodeb10.value);
  FrmContasCorrentes.EdSldNov.Text:=formatfloat('#,##0.00',dm.contascorrente_saldosaldoant.value+
  dm.contascorrente_saldocred1.value+dm.contascorrente_saldocred2.value+dm.contascorrente_saldocred3.value+
  dm.contascorrente_saldocred4.value+dm.contascorrente_saldocred5.value+dm.contascorrente_saldocred6.value+
  dm.contascorrente_saldocred7.value+dm.contascorrente_saldocred8.value+dm.contascorrente_saldocred9.value+
  dm.contascorrente_saldocred10.value+dm.contascorrente_saldocred11.value-dm.contascorrente_saldodeb1.value-
  dm.contascorrente_saldodeb2.value-dm.contascorrente_saldodeb3.value-dm.contascorrente_saldodeb4.value-
  dm.contascorrente_saldodeb5.value-dm.contascorrente_saldodeb6.value-dm.contascorrente_saldodeb7.value-
  dm.contascorrente_saldodeb8.value-dm.contascorrente_saldodeb9.value-dm.contascorrente_saldodeb10.value-
  dm.contascorrente_saldodeb11.value);
  FrmContasCorrentes.EdSldDez.Text:=formatfloat('#,##0.00',dm.contascorrente_saldosaldoant.value+
  dm.contascorrente_saldocred1.value+dm.contascorrente_saldocred2.value+dm.contascorrente_saldocred3.value+
  dm.contascorrente_saldocred4.value+dm.contascorrente_saldocred5.value+dm.contascorrente_saldocred6.value+
  dm.contascorrente_saldocred7.value+dm.contascorrente_saldocred8.value+dm.contascorrente_saldocred9.value+
  dm.contascorrente_saldocred10.value+dm.contascorrente_saldocred11.value+dm.contascorrente_saldocred12.value-
  dm.contascorrente_saldodeb1.value-dm.contascorrente_saldodeb2.value-dm.contascorrente_saldodeb3.value-
  dm.contascorrente_saldodeb4.value-dm.contascorrente_saldodeb5.value-dm.contascorrente_saldodeb6.value-
  dm.contascorrente_saldodeb7.value-dm.contascorrente_saldodeb8.value-dm.contascorrente_saldodeb9.value-
  dm.contascorrente_saldodeb10.value-dm.contascorrente_saldodeb11.value-dm.contascorrente_saldodeb12.value);
end;

procedure TFrmContasCorrentes.btnovoClick(Sender: TObject);
begin
        desabilita;
        opcao:=1;
        limpar;
        EdConta.SetFocus;
end;

procedure TFrmContasCorrentes.btalterarClick(Sender: TObject);
begin
        desabilita;
        opcao:=2;
        EdDescricao.SetFocus;
end;

procedure TFrmContasCorrentes.btcancelarClick(Sender: TObject);
begin
        if btnovo.Enabled=false then
           begin
                limpar;
                habilita;
           end
           else
                close;
end;

procedure TFrmContasCorrentes.EdContaExit(Sender: TObject);
begin
        if edconta.text<>'' then
           begin
              if eddescricao.text='' then
                 begin
                    if dm.ContasCorrente.Locate('conta',edconta.text,[]) then
                       begin
                         application.MessageBox('Conta Corrente já Cadastrada','Atenção',mb_ok);
                         btcancelar.Click;
                       end;
                 end;
           end;
  edconta.Color:=clWindow;
end;

procedure TFrmContasCorrentes.btgravarClick(Sender: TObject);
var
C_carteira,C_contacontabil,C_contacorrente,
C_convenio,C_banco,C_agencia:integer;
C_descricao,C_agenciad,C_contacorrented,
C_AgenciaCC,C_pathretorno,
C_AgenciaCCD:string;
C_N_Numero,C_SaldoAnt:real;
begin
      if opcao=1 then
         begin
           dm.ContasCorrente.Insert;
           dm.ContasCorrenteconta.Value:=edconta.text;
           dm.ContasCorrentedescricao.value:=eddescricao.text;
           if edcarteira.text<>'' then
              dm.ContasCorrentecarteira.value:=StrToInt(edcarteira.text);
           if EdNossoNum.text<>'' then
              dm.ContasCorrenteN_Numero.value:=StrToFloat(EdNossoNum.text);
           if EdConvenio.text<>'' then
              dm.ContasCorrenteconvenio.value:=StrToInt(EdConvenio.text);
           if EdBanco.text<>'' then
              dm.ContasCorrentebanco.Value:=StrToInt(EdBanco.Text);
           if EdAgencia.text<>'' then
              dm.ContasCorrenteagencia.Value:=StrToInt(EdAgencia.Text);
           dm.ContasCorrenteagenciad.Value:=EdAgenciaD.text;
           if edcc.text<>'' then
              dm.ContasCorrentecontacorrente.value:=StrToInt(EdCC.Text);
           dm.ContasCorrentecontacorrented.Value:=EdCCD.text;
           dm.ContasCorrenteAgenciaCC.Value:=edagcc.text;
           dm.ContasCorrenteAgenciaCCD.Value:=edagccD.text;
           dm.ContasCorrentepathretorno.Value:=edpath.text;
           if edcontacontabil.text<>'' then
              dm.ContasCorrentecontacontabil.value:=StrToInt(edcontacontabil.Text);
           dm.ContasCorrente.Post;
           dm.ContasCorrente.Refresh;

           if EdSaldoAnt.text<>'' then
              begin
                dm.contascorrente_saldo.Close;
                dm.contascorrente_saldo.SQL.Clear;
                dm.contascorrente_saldo.SQL.Add('select * from contascorrente_saldo');
                dm.contascorrente_saldo.SQL.Add('where (conta ='+chr(39)+EdConta.text+chr(39)+')');
                dm.contascorrente_saldo.SQL.Add('and (ano ='+chr(39)+edano.Text+chr(39)+')');
                dm.contascorrente_saldo.open;
                dm.contascorrente_saldo.Insert;
                dm.contascorrente_saldoSaldoAnt.value:=StringToFloat(EdSaldoAnt.Text);
                dm.contascorrente_saldo.Post;
              end;

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
           dm.rastrorotina.Value:='CONTAS CORRENTE';
           dm.rastrooperacao.Value:='I';
           dm.rastrohistorico.Value:=EdConta.Text+' '+
           EdDescricao.Text;
           dm.rastro.Post;
           dm.rastro.Close;
         end
         else
         begin
           C_carteira:=0;
           C_convenio:=0;C_banco:=0;C_agencia:=0;
           C_N_Numero:=0;C_SaldoAnt:=0;C_contacontabil:=0;
           C_contacorrente:=0;
           
           C_descricao:=eddescricao.text;
           if edcarteira.text<>'' then
              C_carteira:=StrToInt(edcarteira.text);
           if EdNossoNum.text<>'' then
              C_N_Numero:=StrToFloat(EdNossoNum.text);
           if EdConvenio.text<>'' then
              C_convenio:=StrToInt(EdConvenio.text);
           if EdBanco.text<>'' then
              C_banco:=StrToInt(EdBanco.Text);
           if EdAgencia.text<>'' then
              C_agencia:=StrToInt(EdAgencia.Text);
           C_agenciad:=EdAgenciaD.text;
           if EdCC.Text<>'' then
              C_contacorrente:=StrToInt(EdCC.Text);
           C_contacorrented:=EdCCD.text;
           C_AgenciaCC:=edagcc.text;
           C_AgenciaCCD:=edagccD.text;
           C_pathretorno:=edpath.text;
           if edcontacontabil.text<>'' then
              C_contacontabil:=StrToInt(edcontacontabil.Text);

           qratualizar.close;
           qratualizar.sql.clear;
           qratualizar.sql.add('update contascorrente set');
           qratualizar.sql.add('descricao = :C_descricao,');
           qratualizar.sql.add('carteira = :C_carteira,');
           qratualizar.sql.add('N_Numero = :C_N_Numero,');
           qratualizar.sql.add('convenio = :C_convenio,');
           qratualizar.sql.add('banco = :C_banco,');
           qratualizar.sql.add('agencia = :C_agencia,');
           qratualizar.sql.add('agenciad = :C_agenciad,');
           qratualizar.sql.add('contacorrente = :C_contacorrente,');
           qratualizar.sql.add('contacorrented = :C_contacorrented,');
           qratualizar.sql.add('AgenciaCC = :C_AgenciaCC,');
           qratualizar.sql.add('pathretorno = :C_pathretorno,');
           qratualizar.sql.add('contacontabil = :C_contacontabil,');
           qratualizar.sql.add('AgenciaCCD = :C_AgenciaCCD');
           qratualizar.sql.add('where conta = '+chr(39)+edconta.text+chr(39));
           qratualizar.Params[0].Value := C_descricao;
           qratualizar.Params[1].Value := C_carteira;
           qratualizar.Params[2].Value := C_N_Numero;
           qratualizar.Params[3].Value := C_convenio;
           qratualizar.Params[4].Value := C_banco;
           qratualizar.Params[5].Value := C_agencia;
           qratualizar.Params[6].Value := C_agenciad;
           qratualizar.Params[7].Value := C_contacorrente;
           qratualizar.Params[8].Value := C_contacorrented;
           qratualizar.Params[9].Value := C_AgenciaCC;
           qratualizar.Params[10].Value := C_pathretorno;
           qratualizar.Params[11].Value := C_contacontabil;
           qratualizar.Params[12].Value := C_AgenciaCCD;
           qratualizar.ExecSQL;

           if EdSaldoAnt.text<>'' then
              begin
                C_SaldoAnt:=StringToFloat(EdSaldoAnt.Text);
                qratualizar.close;
                qratualizar.sql.clear;
                qratualizar.sql.add('update contascorrente_saldo set');
                qratualizar.sql.add('SaldoAnt = :C_SaldoAnt');
                qratualizar.SQL.Add('where (conta ='+chr(39)+EdConta.text+chr(39)+')');
                qratualizar.SQL.Add('and (ano ='+chr(39)+edano.Text+chr(39)+')');
                qratualizar.Params[0].Value := C_SaldoAnt;
                qratualizar.ExecSQL;
              end;

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
           dm.rastrorotina.Value:='CONTAS CORRENTE';
           dm.rastrooperacao.Value:='A';
           dm.rastrohistorico.Value:=EdConta.Text+' '+
           EdDescricao.Text;
           dm.rastro.Post;
           dm.rastro.Close;
         end;
      habilita;
end;

procedure TFrmContasCorrentes.EdSaldoAntExit(Sender: TObject);
begin
  if EdSaldoAnt.text<>'' then
     EdSaldoAnt.text:=formatfloat('#,##0.00',StringToFloat(EdSaldoAnt.text));
  EdSaldoAnt.Color:=clWindow;
  btgravar.Click;
end;

procedure TFrmContasCorrentes.FormShow(Sender: TObject);
begin
      dm.parametros.Close;
      dm.parametros.Open;
      dm.ContasCorrente.Close;
      dm.ContasCorrente.SQL.Clear;
      dm.ContasCorrente.SQL.Add('select * from contascorrente');
      dm.ContasCorrente.open;
      edano.Text:=formatdatetime('yyyy',DATE);
      atualiza;
end;

procedure TFrmContasCorrentes.FormKeyPress(Sender: TObject; var Key: Char);
begin
        if Key = CHR(13) Then
           Begin
              perform(WM_NextDlgCtl,0,0);
              Key := CHR(0);
           End;
end;

procedure TFrmContasCorrentes.btprimeiroClick(Sender: TObject);
begin
        dm.ContasCorrente.First;
        atualiza;
end;

procedure TFrmContasCorrentes.btanteriorClick(Sender: TObject);
begin
        dm.ContasCorrente.prior;
        atualiza;
end;

procedure TFrmContasCorrentes.btproximoClick(Sender: TObject);
begin
        dm.ContasCorrente.next;
        atualiza;
end;

procedure TFrmContasCorrentes.btultimoClick(Sender: TObject);
begin
        dm.ContasCorrente.last;
        atualiza;
end;

procedure TFrmContasCorrentes.btexcluirClick(Sender: TObject);
begin
        if edconta.text='' then
           begin
              application.MessageBox('Selecione uma Conta','Atenção',mb_ok+mb_iconinformation);
              btproximo.SetFocus;
           end
           else
           begin
              if Application.Messagebox ('Deseja excluir o registro?','Administrador', Mb_YesNoCancel+mb_iconquestion) = id_yes then
                 begin
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
                   dm.rastrorotina.Value:='CONTAS CORRENTE';
                   dm.rastrooperacao.Value:='E';
                   dm.rastrohistorico.Value:=EdConta.Text+' '+
                   EdDescricao.Text;
                   dm.rastro.Post;
                   dm.rastro.Close;

                   qratualizar.close;
                   qratualizar.sql.clear;
                   qratualizar.sql.add('delete from ContasCorrente');
                   qratualizar.sql.add('where conta = '+chr(39)+edconta.text+chr(39));
                   qratualizar.ExecSQL;
                   dm.ContasCorrente.Close;
                   dm.ContasCorrente.Open;
                   limpar;
                 end;
           end;

end;

procedure TFrmContasCorrentes.btrelatorioClick(Sender: TObject);
begin
      try
        Application.CreateForm(TFrmRelCCImp, FrmRelCCImp);
        FrmRelCCImp.showmodal;
      finally
        FrmRelCCImp.Release;
        FrmRelCCImp:=nil;
      end;
end;

procedure TFrmContasCorrentes.EdContaEnter(Sender: TObject);
begin
  EdConta.Color:=$0080FFFF;
end;

procedure TFrmContasCorrentes.EdDescricaoEnter(Sender: TObject);
begin
  EdDescricao.Color:=$0080FFFF;
end;

procedure TFrmContasCorrentes.EdCarteiraEnter(Sender: TObject);
begin
  EdCarteira.Color:=$0080FFFF;
end;

procedure TFrmContasCorrentes.EdNossoNumEnter(Sender: TObject);
begin
  EdNossoNum.Color:=$0080FFFF;
end;

procedure TFrmContasCorrentes.EdConvenioEnter(Sender: TObject);
begin
  EdConvenio.Color:=$0080FFFF;
end;

procedure TFrmContasCorrentes.EdBancoEnter(Sender: TObject);
begin
  EdBanco.Color:=$0080FFFF;
end;

procedure TFrmContasCorrentes.EdAgenciaEnter(Sender: TObject);
begin
  EdAgencia.Color:=$0080FFFF;
end;

procedure TFrmContasCorrentes.EdAgenciaDEnter(Sender: TObject);
begin
  EdAgenciaD.Color:=$0080FFFF;
end;

procedure TFrmContasCorrentes.EdCCEnter(Sender: TObject);
begin
  EdCC.Color:=$0080FFFF;
end;

procedure TFrmContasCorrentes.EdCCDEnter(Sender: TObject);
begin
  EdCCD.Color:=$0080FFFF;
end;

procedure TFrmContasCorrentes.edagccEnter(Sender: TObject);
begin
  edagcc.Color:=$0080FFFF;
end;

procedure TFrmContasCorrentes.edpathEnter(Sender: TObject);
begin
  edpath.Color:=$0080FFFF;
end;

procedure TFrmContasCorrentes.EdSaldoAntEnter(Sender: TObject);
begin
  EdSaldoAnt.Color:=$0080FFFF;
end;

procedure TFrmContasCorrentes.EdDescricaoExit(Sender: TObject);
begin
  EdDescricao.Color:=clWindow;
end;

procedure TFrmContasCorrentes.EdCarteiraExit(Sender: TObject);
begin
  EdCarteira.Color:=clWindow;
end;

procedure TFrmContasCorrentes.EdNossoNumExit(Sender: TObject);
begin
  EdNossoNum.Color:=clWindow;
end;

procedure TFrmContasCorrentes.EdConvenioExit(Sender: TObject);
begin
  EdConvenio.Color:=clWindow;
end;

procedure TFrmContasCorrentes.EdBancoExit(Sender: TObject);
begin
  EdBanco.Color:=clWindow;
end;

procedure TFrmContasCorrentes.EdAgenciaExit(Sender: TObject);
begin
  EdAgencia.Color:=clWindow;
end;

procedure TFrmContasCorrentes.EdAgenciaDExit(Sender: TObject);
begin
  EdAgenciaD.Color:=clWindow;
end;

procedure TFrmContasCorrentes.EdCCExit(Sender: TObject);
begin
  EdCC.Color:=clWindow;
end;

procedure TFrmContasCorrentes.EdCCDExit(Sender: TObject);
begin
  EdCCD.Color:=clWindow;
end;

procedure TFrmContasCorrentes.edagccExit(Sender: TObject);
begin
  edagcc.Color:=clWindow;
end;

procedure TFrmContasCorrentes.edpathExit(Sender: TObject);
begin
  edpath.Color:=clWindow;
end;

procedure TFrmContasCorrentes.BitBtn1Click(Sender: TObject);
begin
  if Application.Messagebox ('Ao realizar esse procedimento o Saldo Final de Dezembro será o Saldo Anterior, possibilitando o inicio de um novo ano contábil. Confirma Procedimento?','Iniciar Exercicio', mb_yesno+mb_iconquestion+MB_DEFBUTTON2)=id_yes then
     begin
       C_SaldoAnt:=StringToFloat(edSldDez.Text);

       qratualizar.close;
       qratualizar.sql.clear;
       qratualizar.sql.add('delete from contascorrente_saldo');
       qratualizar.SQL.Add('where (conta ='+chr(39)+FrmContasCorrentes.EdConta.text+chr(39)+')');
       qratualizar.SQL.Add('and (ano ='+chr(39)+IntToStr(StrToInt(FrmContasCorrentes.edano.Text)+1)+chr(39)+')');
       qratualizar.ExecSQL;

       dm.contascorrente_saldo.Close;
       dm.contascorrente_saldo.SQL.Clear;
       dm.contascorrente_saldo.SQL.Add('select * from contascorrente_saldo');
       dm.contascorrente_saldo.SQL.Add('where (conta ='+chr(39)+FrmContasCorrentes.EdConta.text+chr(39)+')');
       dm.contascorrente_saldo.SQL.Add('and (ano ='+chr(39)+IntToStr(StrToInt(FrmContasCorrentes.edano.Text)+1)+chr(39)+')');
       dm.contascorrente_saldo.open;
       if dm.contascorrente_saldo.RecordCount<1 then
         begin
           dm.contascorrente_saldo.Insert;
           dm.contascorrente_saldoconta.Value:=FrmContasCorrentes.EdConta.text;
           dm.contascorrente_saldoano.Value:=IntToStr(StrToInt(FrmContasCorrentes.edano.Text)+1);
           dm.contascorrente_saldoSaldoAnt.Value:=C_SaldoAnt;
           dm.contascorrente_saldo.Post;
           dm.contascorrente_saldo.Refresh;
         end;
{
       qratualizar.close;
       qratualizar.sql.clear;
       qratualizar.sql.add('update ContasCorrente set');
       qratualizar.sql.add('SaldoAnt = :C_SaldoAnt');
       qratualizar.sql.add('where conta = '+chr(39)+edconta.text+chr(39));
       qratualizar.Params[0].Value := C_SaldoAnt;
       qratualizar.ExecSQL;
}
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
       dm.rastrorotina.Value:='CONTAS CORRENTE';
       dm.rastrooperacao.Value:='I';
       dm.rastrohistorico.Value:=EdConta.Text+' - Inicio do Novo Ano Contábil';
       dm.rastro.Post;
       dm.rastro.Close;
{
       for i:=1 to 12 do
           begin
              qratualizar.close;
              qratualizar.sql.clear;
              qratualizar.sql.add('update ContasCorrente set');
              qratualizar.sql.add('deb'+IntToStr(i)+' = 0,');
              qratualizar.sql.add('cred'+IntToStr(i)+' = 0');
              qratualizar.SQL.Add('where (conta ='+chr(39)+edconta.text+chr(39)+')');
              qratualizar.ExecSQL;
           end;
       dm.ContasCorrente.Close;
       dm.ContasCorrente.open;
       dm.ContasCorrente.Locate('conta',edconta.text,[]);
}
       atualiza;
     end;
end;

procedure TFrmContasCorrentes.edanoExit(Sender: TObject);
begin
  if edano.Text<>'' then
     begin
      dm.contascorrente_saldo.Close;
      dm.contascorrente_saldo.SQL.Clear;
      dm.contascorrente_saldo.SQL.Add('select * from contascorrente_saldo');
      dm.contascorrente_saldo.SQL.Add('where (conta ='+chr(39)+FrmContasCorrentes.EdConta.text+chr(39)+')');
      dm.contascorrente_saldo.SQL.Add('and (ano ='+chr(39)+FrmContasCorrentes.edano.Text+chr(39)+')');
      dm.contascorrente_saldo.open;
      atualiza;
      C_SaldoAnt:=StringToFloat(edSldDez.Text);
      if dm.contascorrente_saldo.RecordCount<1 then
        begin
          dm.contascorrente_saldo.Insert;
          dm.contascorrente_saldoconta.Value:=FrmContasCorrentes.EdConta.text;
          dm.contascorrente_saldoano.Value:=FrmContasCorrentes.edano.Text;
          dm.contascorrente_saldoSaldoAnt.Value:=C_SaldoAnt;
          dm.contascorrente_saldo.Post;
          dm.contascorrente_saldo.Refresh;
        end;
     end;
end;

end.
