unit UnitFrmCadFuncionarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, Mask, DBCtrls, ComCtrls,
  ExtCtrls, DB, DBTables, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  EditAlinhado;

type
  TFrmCadFuncionarios = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    rbcodigo: TRadioButton;
    rbnome: TRadioButton;
    rbcpf: TRadioButton;
    Label3: TLabel;
    edpesquisa: TEdit;
    rbgeral: TRadioButton;
    Panel3: TPanel;
    btnovo: TBitBtn;
    btgravar: TBitBtn;
    btalterar: TBitBtn;
    btexcluir: TBitBtn;
    btrelatorio: TBitBtn;
    btcancelar: TBitBtn;
    P_dados: TPanel;
    Label36: TLabel;
    mecpf: TMaskEdit;
    Label45: TLabel;
    edrg: TEdit;
    Label26: TLabel;
    ednome: TEdit;
    Label39: TLabel;
    EdEndereco: TEdit;
    Label27: TLabel;
    EdBairro: TEdit;
    Label28: TLabel;
    EdCidade: TEdit;
    Label29: TLabel;
    cbestado: TComboBox;
    Label30: TLabel;
    mecep: TMaskEdit;
    Label31: TLabel;
    mefone1: TMaskEdit;
    mefone2: TMaskEdit;
    mefone3: TMaskEdit;
    Label43: TLabel;
    Edemail: TEdit;
    Label44: TLabel;
    edhome: TEdit;
    Label32: TLabel;
    Memo1: TMemo;
    BitBtn1: TBitBtn;
    btprimeiro: TBitBtn;
    btanterior: TBitBtn;
    btproximo: TBitBtn;
    btultimo: TBitBtn;
    qratualizar: TZQuery;
    Label2: TLabel;
    meorgao: TMaskEdit;
    lbcodigo: TLabel;
    Label10: TLabel;
    medtnasc: TMaskEdit;
    Label8: TLabel;
    cbsexo: TComboBox;
    Label47: TLabel;
    cbsituacao: TComboBox;
    Label23: TLabel;
    edapelido: TEdit;
    Label18: TLabel;
    EdPsaude: TEdit;
    Label11: TLabel;
    Edcnh: TEdit;
    Label12: TLabel;
    medtcnh: TMaskEdit;
    Label16: TLabel;
    Edctps: TEdit;
    Label40: TLabel;
    medtadmissao: TMaskEdit;
    Label19: TLabel;
    Edfiliacao: TEdit;
    Label21: TLabel;
    Edfilhos: TEdit;
    Label24: TLabel;
    Eddependentes: TEdit;
    Label5: TLabel;
    edinss: TEdit;
    Label42: TLabel;
    medtdemissao: TMaskEdit;
    Label1: TLabel;
    edsalario: TEditAlinh;
    Label4: TLabel;
    edmatricula: TEdit;
    DBGrid1: TDBGrid;
    Label6: TLabel;
    cbbanco: TComboBox;
    Label7: TLabel;
    edagencia: TEdit;
    edconta: TEdit;
    Label9: TLabel;
    chtipoc: TCheckBox;
    rbApelido: TRadioButton;
    rbfuncao: TRadioButton;
    Label13: TLabel;
    mehoraent: TMaskEdit;
    mehoralm: TMaskEdit;
    Label14: TLabel;
    Label17: TLabel;
    mehoraalmv: TMaskEdit;
    Label20: TLabel;
    mehorasai: TMaskEdit;
    edfolga: TEdit;
    Label22: TLabel;
    Label25: TLabel;
    edfuncao: TEdit;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnovoClick(Sender: TObject);
    procedure btalterarClick(Sender: TObject);
    procedure btexcluirClick(Sender: TObject);
    procedure btcancelarClick(Sender: TObject);
    procedure btgravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mecpfExit(Sender: TObject);
    procedure btprimeiroClick(Sender: TObject);
    procedure btanteriorClick(Sender: TObject);
    procedure btproximoClick(Sender: TObject);
    procedure btultimoClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rbcodigoClick(Sender: TObject);
    procedure edpesquisaExit(Sender: TObject);
    procedure EdCodigoEnter(Sender: TObject);
    procedure rbgeralClick(Sender: TObject);
    procedure btrelatorioClick(Sender: TObject);
    procedure mecpfEnter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure edrgEnter(Sender: TObject);
    procedure ednomeEnter(Sender: TObject);
    procedure EdEnderecoEnter(Sender: TObject);
    procedure EdBairroEnter(Sender: TObject);
    procedure EdCidadeEnter(Sender: TObject);
    procedure cbestadoEnter(Sender: TObject);
    procedure mecepEnter(Sender: TObject);
    procedure mefone1Enter(Sender: TObject);
    procedure mefone2Enter(Sender: TObject);
    procedure mefone3Enter(Sender: TObject);
    procedure EdemailEnter(Sender: TObject);
    procedure edhomeEnter(Sender: TObject);
    procedure Memo1Enter(Sender: TObject);
    procedure EdCidadeExit(Sender: TObject);
    procedure edrgExit(Sender: TObject);
    procedure ednomeExit(Sender: TObject);
    procedure EdEnderecoExit(Sender: TObject);
    procedure EdBairroExit(Sender: TObject);
    procedure cbestadoExit(Sender: TObject);
    procedure mecepExit(Sender: TObject);
    procedure mefone1Exit(Sender: TObject);
    procedure mefone2Exit(Sender: TObject);
    procedure mefone3Exit(Sender: TObject);
    procedure EdemailExit(Sender: TObject);
    procedure edhomeExit(Sender: TObject);
    procedure Memo1Exit(Sender: TObject);
    procedure btalterarFClick(Sender: TObject);
    procedure meorgaoExit(Sender: TObject);
    procedure edsalarioExit(Sender: TObject);
    procedure DBGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cbbancoEnter(Sender: TObject);
    procedure cbbancoExit(Sender: TObject);
    procedure edagenciaEnter(Sender: TObject);
    procedure edagenciaExit(Sender: TObject);
    procedure edcontaEnter(Sender: TObject);
    procedure edcontaExit(Sender: TObject);
    procedure edmatriculaEnter(Sender: TObject);
    procedure edmatriculaExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadFuncionarios: TFrmCadFuncionarios;
  novo,check:boolean;
  log: TextFile;
  texto,tip:string;
  qryU,qryL : TZQuery;

implementation

uses Unitdm, UnitFrmPagar, UnitFrmRelFornecedor, UnitFrmPrincipal,
  UnitFrmRecibo, UnitFrmVendaRefaturar;

{$R *.dfm}

function TestaCpf( xCPF:String ):Boolean;
Var
   d1,d4,xx,nCount,resto,digito1,digito2 : Integer;
   Check : String;
Begin
   d1 := 0; d4 := 0; xx := 1;
   for nCount := 1 to Length( xCPF )-2 do
      begin
      if Pos( Copy( xCPF, nCount, 1 ), '/-.' ) = 0 then
          begin
          d1 := d1 + ( 11 - xx ) * StrToInt( Copy( xCPF, nCount, 1 ) );
          d4 := d4 + ( 12 - xx ) * StrToInt( Copy( xCPF, nCount, 1 ) );
          xx := xx+1;
          end;
       end;
   resto := (d1 mod 11);
   if resto < 2 then
      begin
      digito1 := 0;
      end
   else
      begin
      digito1 := 11 - resto;
      end;
   d4 := d4 + 2 * digito1;
   resto := (d4 mod 11);
   if resto < 2 then
      begin
      digito2 := 0;
      end
   else
      begin
      digito2 := 11 - resto;
      end;
   Check := IntToStr(Digito1) + IntToStr(Digito2);
   if Check <> copy(xCPF,succ(length(xCPF)-2),2) then
      begin
      Result := False;
      end
   else
      begin
      Result := True;
      end;
end;

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

procedure Atualiza;
begin
  FrmCadFuncionarios.mecpf.Text:=dm.fornecedorescpf.value;
  FrmCadFuncionarios.edrg.Text:=dm.fornecedoresrg.value;
  FrmCadFuncionarios.meorgao.Text:=dm.fornecedoresorgaoemissor.value;
  FrmCadFuncionarios.lbcodigo.Caption:=FloatToStr(dm.fornecedorescodigo.value);
  FrmCadFuncionarios.ednome.Text:=dm.fornecedoresnome.value;
  FrmCadFuncionarios.edmatricula.Text:=dm.fornecedoresmatricula.value;
  FrmCadFuncionarios.lbcodigo.caption:=FloatToStr(dm.fornecedorescodigo.value);
  FrmCadFuncionarios.EdEndereco.Text:=dm.fornecedoresendereco.value;
  FrmCadFuncionarios.EdBairro.Text:=dm.fornecedoresbairro.value;
  FrmCadFuncionarios.EdCidade.Text:=dm.fornecedorescidade.value;
  FrmCadFuncionarios.cbestado.Text:=dm.fornecedoresestado.value;
  FrmCadFuncionarios.mecep.Text:=dm.fornecedorescep.value;
  FrmCadFuncionarios.mefone1.Text:=dm.fornecedoresfone1.value;
  FrmCadFuncionarios.mefone2.Text:=dm.fornecedoresfone2.value;
  FrmCadFuncionarios.mefone3.Text:=dm.fornecedoresfone3.value;
  FrmCadFuncionarios.Edemail.Text:=dm.fornecedoresemail.value;
  FrmCadFuncionarios.edhome.Text:=dm.fornecedoreshomepage.value;
  FrmCadFuncionarios.Memo1.Text:=dm.fornecedoresobs.value;
  FrmCadFuncionarios.edinss.text:=dm.fornecedoresinss_pis.value;
  if dm.fornecedoresdtnasc.value<>StrToDate('30/12/1899') then
     FrmCadFuncionarios.medtnasc.Text:=DateToStr(dm.fornecedoresdtnasc.value)
  else
     FrmCadFuncionarios.medtnasc.Text:='';
  FrmCadFuncionarios.edcnh.text:=FloatToStr(dm.fornecedorescnh.value);
  if dm.fornecedoresdtcnh.value<>StrToDate('30/12/1899') then
     FrmCadFuncionarios.medtcnh.Text:=DateToStr(dm.fornecedoresdtcnh.value)
  else
     FrmCadFuncionarios.medtcnh.Text:='';
  FrmCadFuncionarios.edfuncao.text:=dm.fornecedoresfuncao.value;
  FrmCadFuncionarios.edctps.text:=dm.fornecedoresctps.value;
  FrmCadFuncionarios.edpsaude.text:=dm.fornecedoresPlanoSaude.value;
  if dm.fornecedoressituacao.value='A' then
     FrmCadFuncionarios.cbsituacao.Text:='AUTÔNOMO(A)'
  else if dm.fornecedoressituacao.value='E' then
     FrmCadFuncionarios.cbsituacao.Text:='ESTAGIÁRIO(A)'
  else if dm.fornecedoressituacao.value='F' then
     FrmCadFuncionarios.cbsituacao.Text:='FUNCIONÁRIO(A)'
  else
     FrmCadFuncionarios.cbsituacao.Text:='';
  FrmCadFuncionarios.edapelido.text:=dm.fornecedoresapelido.value;
  FrmCadFuncionarios.edfilhos.text:=FloatToStr(dm.fornecedoresNfilhos.value);
  FrmCadFuncionarios.Eddependentes.text:=FloatToStr(dm.fornecedoresNDependentes.value);
  if dm.fornecedoresDtAdmissao.value<>StrToDate('30/12/1899') then
     FrmCadFuncionarios.medtadmissao.Text:=DateToStr(dm.fornecedoresDtAdmissao.value)
  else
     FrmCadFuncionarios.medtadmissao.Text:='';
  if dm.fornecedoresDtDemissao.value<>StrToDate('30/12/1899') then
     FrmCadFuncionarios.medtdemissao.Text:=DateToStr(dm.fornecedoresDtDemissao.value)
  else
     FrmCadFuncionarios.medtdemissao.Text:='';
  FrmCadFuncionarios.edfiliacao.text:=dm.fornecedoresfiliacao.value;
  if dm.fornecedoressexo.Value='M' then
     FrmCadFuncionarios.cbsexo.Text:='MASCULINO'
  else if dm.fornecedoressexo.Value='F' then
     FrmCadFuncionarios.cbsexo.Text:='FEMININO'
  else
     FrmCadFuncionarios.cbsexo.Text:='';
  if dm.fornecedoressalario.Value>0 then
     FrmCadFuncionarios.edsalario.Text:=formatfloat('#,##0.00',dm.fornecedoressalario.Value)
  else
     FrmCadFuncionarios.edsalario.Text:='';
  if dm.fornecedorestipoc.Value='S' then
     FrmCadFuncionarios.chtipoc.Checked:=true
  else
     FrmCadFuncionarios.chtipoc.Checked:=false;
  FrmCadFuncionarios.edagencia.Text:=dm.fornecedoresagencia.Value;
  FrmCadFuncionarios.edconta.Text:=dm.fornecedoresconta.Value;
  if dm.fornecedoresbanco.Value='001' then
     FrmCadFuncionarios.cbbanco.Text:='001 - BANCO DO BRASIL S.A.'
  else if dm.fornecedoresbanco.Value='341' then
     FrmCadFuncionarios.cbbanco.Text:='341 - BANCO ITAÚ S.A.'
  else if dm.fornecedoresbanco.Value='033' then
     FrmCadFuncionarios.cbbanco.Text:='033 - BANCO SANTANDER (BRASIL) S.A.'
  else if dm.fornecedoresbanco.Value='356' then
     FrmCadFuncionarios.cbbanco.Text:='356 - BANCO REAL S.A. (ANTIGO)'
  else if dm.fornecedoresbanco.Value='652' then
     FrmCadFuncionarios.cbbanco.Text:='652 - ITAÚ UNIBANCO HOLDING S.A.'
  else if dm.fornecedoresbanco.Value='237' then
     FrmCadFuncionarios.cbbanco.Text:='237 - BANCO BRADESCO S.A.'
  else if dm.fornecedoresbanco.Value='745' then
     FrmCadFuncionarios.cbbanco.Text:='745 - BANCO CITIBANK S.A.'
  else if dm.fornecedoresbanco.Value='399' then
     FrmCadFuncionarios.cbbanco.Text:='399 - HSBC BANK BRASIL S.A.'
  else if dm.fornecedoresbanco.Value='104' then
     FrmCadFuncionarios.cbbanco.Text:='104 - CAIXA ECONÔMICA FEDERAL'
  else if dm.fornecedoresbanco.Value='389' then
     FrmCadFuncionarios.cbbanco.Text:='389 - BANCO MERCANTIL DO BRASIL S.A.'
  else if dm.fornecedoresbanco.Value='453' then
     FrmCadFuncionarios.cbbanco.Text:='453 - BANCO RURAL S.A.'
  else if dm.fornecedoresbanco.Value='422' then
     FrmCadFuncionarios.cbbanco.Text:='422 - BANCO SAFRA S.A.'
  else if dm.fornecedoresbanco.Value='633' then
     FrmCadFuncionarios.cbbanco.Text:='633 - BANCO RENDIMENTO S.A.'
  else if dm.fornecedoresbanco.Value='077' then
     FrmCadFuncionarios.cbbanco.Text:='077 - BANCO INTER'
  else
     FrmCadFuncionarios.cbbanco.Text:='';
  FrmCadFuncionarios.mehoraent.Text:=copy(dm.fornecedoreshoraent.Value,1,2)+copy(dm.fornecedoreshoraent.Value,4,2);
  FrmCadFuncionarios.mehoralm.Text:=copy(dm.fornecedoreshoralm.Value,1,2)+copy(dm.fornecedoreshoralm.Value,4,2);
  FrmCadFuncionarios.mehoraalmv.Text:=copy(dm.fornecedoreshoraalmv.Value,1,2)+copy(dm.fornecedoreshoraalmv.Value,4,2);
  FrmCadFuncionarios.mehorasai.Text:=copy(dm.fornecedoreshorasai.Value,1,2)+copy(dm.fornecedoreshorasai.Value,4,2);
  FrmCadFuncionarios.edfolga.text:=dm.fornecedoresfolga.value;
end;

procedure desabilita;
begin
  FrmCadFuncionarios.btprimeiro.enabled:=false;
  FrmCadFuncionarios.btanterior.enabled:=false;
  FrmCadFuncionarios.btproximo.enabled:=false;
  FrmCadFuncionarios.btultimo.enabled:=false;
  FrmCadFuncionarios.btnovo.enabled:=false;
  FrmCadFuncionarios.btalterar.enabled:=false;
  FrmCadFuncionarios.btexcluir.enabled:=false;
  FrmCadFuncionarios.btrelatorio.enabled:=false;
  FrmCadFuncionarios.btgravar.enabled:=true;
  FrmCadFuncionarios.btcancelar.Caption:='Cancelar';
  FrmCadFuncionarios.P_dados.enabled:=true;
end;

procedure habilita;
begin
{        dm.usuarios.Open;
        dm.usuarios.Locate('nome',frmprincipal.sb.Panels[3].Text,[]);
        if dm.usuariosfornecedores.value='1' then
           begin
                FrmCadFuncionarios.btgravar.enabled:=false;
                FrmCadFuncionarios.btnovo.Enabled:=false;
                FrmCadFuncionarios.btexcluir.Enabled:=false;
                FrmCadFuncionarios.btalterar.Enabled:=false;
                FrmCadFuncionarios.btprimeiro.Enabled:=true;
                FrmCadFuncionarios.btanterior.Enabled:=true;
                FrmCadFuncionarios.btproximo.Enabled:=true;
                FrmCadFuncionarios.btultimo.Enabled:=true;
                FrmCadFuncionarios.btrelatorio.enabled:=false;
                FrmCadFuncionarios.P_dados.enabled:=false;
           end
        else if dm.usuariosfornecedores.value='2' then
           begin
                FrmCadFuncionarios.btgravar.enabled:=false;
                FrmCadFuncionarios.btnovo.Enabled:=true;
                FrmCadFuncionarios.btexcluir.Enabled:=false;
                FrmCadFuncionarios.btalterar.Enabled:=false;
                FrmCadFuncionarios.btprimeiro.Enabled:=true;
                FrmCadFuncionarios.btanterior.Enabled:=true;
                FrmCadFuncionarios.btproximo.Enabled:=true;
                FrmCadFuncionarios.btultimo.Enabled:=true;
                FrmCadFuncionarios.btrelatorio.enabled:=false;
                FrmCadFuncionarios.P_dados.enabled:=false;
           end
        else if dm.usuariosfornecedores.value='3' then
           begin
                FrmCadFuncionarios.btgravar.enabled:=false;
                FrmCadFuncionarios.btnovo.Enabled:=true;
                FrmCadFuncionarios.btexcluir.Enabled:=false;
                FrmCadFuncionarios.btalterar.Enabled:=true;
                FrmCadFuncionarios.btprimeiro.Enabled:=true;
                FrmCadFuncionarios.btanterior.Enabled:=true;
                FrmCadFuncionarios.btproximo.Enabled:=true;
                FrmCadFuncionarios.btultimo.Enabled:=true;
                FrmCadFuncionarios.btrelatorio.enabled:=false;
                FrmCadFuncionarios.P_dados.enabled:=false;
           end
        else if dm.usuariosfornecedores.value='4' then
           begin
                FrmCadFuncionarios.btgravar.enabled:=false;
                FrmCadFuncionarios.btnovo.Enabled:=true;
                FrmCadFuncionarios.btexcluir.Enabled:=true;
                FrmCadFuncionarios.btalterar.Enabled:=true;
                FrmCadFuncionarios.btprimeiro.Enabled:=true;
                FrmCadFuncionarios.btanterior.Enabled:=true;
                FrmCadFuncionarios.btproximo.Enabled:=true;
                FrmCadFuncionarios.btultimo.Enabled:=true;
                FrmCadFuncionarios.btrelatorio.enabled:=true;
                FrmCadFuncionarios.P_dados.enabled:=false;
           end
        else if dm.usuariosfornecedores.value='5' then
           begin
}
                FrmCadFuncionarios.btgravar.enabled:=false;
                FrmCadFuncionarios.btnovo.Enabled:=true;
                FrmCadFuncionarios.btexcluir.Enabled:=true;
                FrmCadFuncionarios.btalterar.Enabled:=true;
                FrmCadFuncionarios.btprimeiro.Enabled:=true;
                FrmCadFuncionarios.btanterior.Enabled:=true;
                FrmCadFuncionarios.btproximo.Enabled:=true;
                FrmCadFuncionarios.btultimo.Enabled:=true;
                FrmCadFuncionarios.btrelatorio.enabled:=true;
                FrmCadFuncionarios.P_dados.enabled:=false;
//           end;
        FrmCadFuncionarios.btcancelar.Caption:='Sair';
end;

procedure limpar;
begin
  FrmCadFuncionarios.mecpf.Text:='';
  FrmCadFuncionarios.edmatricula.Text:='';
  FrmCadFuncionarios.edrg.Text:='';
  FrmCadFuncionarios.meorgao.Text:='';
  FrmCadFuncionarios.lbcodigo.Caption:='';
  FrmCadFuncionarios.ednome.Text:='';
  FrmCadFuncionarios.EdEndereco.Text:='';
  FrmCadFuncionarios.EdBairro.Text:='';
  FrmCadFuncionarios.EdCidade.Text:='';
  FrmCadFuncionarios.cbestado.Text:='';
  FrmCadFuncionarios.mecep.Text:='';
  FrmCadFuncionarios.mefone1.Text:='';
  FrmCadFuncionarios.mefone2.Text:='';
  FrmCadFuncionarios.mefone3.Text:='';
  FrmCadFuncionarios.Edemail.Text:='';
  FrmCadFuncionarios.edhome.Text:='';
  FrmCadFuncionarios.Memo1.Lines.Clear;
  FrmCadFuncionarios.Edcnh.Text:='';
  FrmCadFuncionarios.medtcnh.Text:='';
  FrmCadFuncionarios.edfuncao.Text:='';
  FrmCadFuncionarios.Edctps.Text:='';
  FrmCadFuncionarios.EdPsaude.Text:='';
  FrmCadFuncionarios.cbsituacao.Text:='';
  FrmCadFuncionarios.Edfiliacao.Text:='';
  FrmCadFuncionarios.edapelido.Text:='';
  FrmCadFuncionarios.edinss.Text:='';
  FrmCadFuncionarios.Edfilhos.Text:='';
  FrmCadFuncionarios.Eddependentes.Text:='';
  FrmCadFuncionarios.medtadmissao.Text:='';
  FrmCadFuncionarios.medtdemissao.Text:='';
end;

procedure ExcluirFornecedor;
begin
     if Application.Messagebox ('Deseja excluir o registro?','Gestor', Mb_YesNoCancel+mb_iconquestion) = id_yes then
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
          dm.rastrorotina.Value:='FUNCIONÁRIO';
          dm.rastrooperacao.Value:='E';
          dm.rastrohistorico.Value:=FrmCadFuncionarios.mecpf.Text+' '+
          FrmCadFuncionarios.ednome.Text;
          dm.rastrofavorecido.Value:=StrToInt(FrmCadFuncionarios.lbcodigo.Caption);
          dm.rastro.Post;
          dm.rastro.Close;

          FrmCadFuncionarios.qratualizar.close;
          FrmCadFuncionarios.qratualizar.sql.clear;
          FrmCadFuncionarios.qratualizar.sql.add('delete from fornecedores');
          FrmCadFuncionarios.qratualizar.sql.add('where codigo = '+FrmCadFuncionarios.lbcodigo.Caption);
          FrmCadFuncionarios.qratualizar.ExecSQL;
          limpar;
        end;
end;

procedure TFrmCadFuncionarios.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrmCadFuncionarios.btnovoClick(Sender: TObject);
begin
  novo:=true;
  limpar;
  desabilita;
  ednome.SetFocus;
end;

procedure TFrmCadFuncionarios.btalterarClick(Sender: TObject);
begin
  novo:=false;
  desabilita;
  ednome.SetFocus;
end;

procedure TFrmCadFuncionarios.btexcluirClick(Sender: TObject);
begin
      if lbcodigo.Caption='' then
         begin
           application.MessageBox('Selecione um Funcionário','Atenção',mb_ok+mb_iconinformation);
           PageControl1.ActivePageIndex := 0;
           edpesquisa.SetFocus;
         end
         else
         begin
           check:=false;
           dm.DocPagar.close;
           dm.DocPagar.sql.clear;
           dm.DocPagar.sql.add('select * from docpagar');
           dm.DocPagar.sql.add('where fornecedor = '+lbcodigo.Caption);
           dm.DocPagar.open;
           if dm.DocPagar.RecordCount>0 then
              check:=true;

           if check=true then
              application.MessageBox('Funcionário com Movimentação','Atenção',mb_ok+MB_ICONWARNING)
           else
              ExcluirFornecedor;
         end;
end;

procedure TFrmCadFuncionarios.btcancelarClick(Sender: TObject);
begin
        if btnovo.Enabled=false then
           begin
                habilita;
                limpar;
           end
           else
                close;
end;

procedure TFrmCadFuncionarios.btgravarClick(Sender: TObject);
var
F_tipo,F_cpf,F_rg,
F_nome,F_endereco,
F_bairro,F_cidade,F_estado,F_cep,
F_fone1,F_fone2,F_fone3,F_email,
F_dtcnh,F_dtnasc,F_homepage,F_obs,
F_funcao,F_ctps,F_saude,F_PlanoSaude,
F_situacao,F_apelido,F_DtAdmissao,
F_DtDemissao,F_filiacao,F_orgaoemissor,
F_banco,F_agencia,F_conta,F_tipoc,
F_horaent,F_horalm,F_horaalmv,F_horasai,
F_folga,F_matricula,F_sexo,F_inss_pis:string;
F_Nfilhos,F_NDependentes:integer;
F_salario,F_cnh:real;
begin
  if novo=true then
     begin
       dm.fornecedores.close;
       dm.fornecedores.sql.clear;
       dm.fornecedores.sql.add('select * from fornecedores');
       dm.fornecedores.sql.add('where nome = '+chr(39)+ednome.text+chr(39));
       dm.fornecedores.open;
       dm.fornecedores.Insert;
       dm.fornecedorestipo.Value:='F';
       dm.fornecedoresativo.Value:='S';
       dm.fornecedorescpf.value:=mecpf.Text;
       dm.fornecedoresrg.value:=edrg.Text;
       dm.fornecedoresorgaoemissor.value:=meorgao.Text;
       dm.fornecedoressexo.Value:=copy(cbsexo.Text,1,1);
       dm.fornecedoresnome.value:=ednome.Text;
       dm.fornecedoresmatricula.value:=edmatricula.Text;
       dm.fornecedoresendereco.value:=EdEndereco.Text;
       dm.fornecedoresbairro.value:=EdBairro.Text;
       dm.fornecedorescidade.value:=EdCidade.Text;
       dm.fornecedoresestado.value:=cbestado.Text;
       dm.fornecedorescep.value:=mecep.Text;
       dm.fornecedoresfone1.value:=mefone1.Text;
       dm.fornecedoresfone2.value:=mefone2.Text;
       dm.fornecedoresfone3.value:=mefone3.Text;
       dm.fornecedoresemail.value:=Edemail.Text;
       dm.fornecedoreshomepage.value:=edhome.Text;
       dm.fornecedoresobs.value:=Memo1.Text;
       if medtnasc.Text<>'  /  /    ' then
          dm.fornecedoresdtnasc.value:=StrToDate(medtnasc.Text);
       if edcnh.text<>'' then
          dm.fornecedorescnh.value:=StrToFloat(edcnh.text);
       if medtcnh.Text<>'  /  /    ' then
          dm.fornecedoresdtcnh.value:=StrToDate(medtcnh.Text);
       dm.fornecedoresfuncao.value:=edfuncao.text;
       dm.fornecedoresctps.value:=edctps.text;
       dm.fornecedoresPlanoSaude.value:=edpsaude.text;
       dm.fornecedoressituacao.value:=copy(cbsituacao.Text,1,1);
       dm.fornecedoresnome.value:=ednome.Text;
       dm.fornecedoresapelido.value:=edapelido.text;
       dm.fornecedoresinss_pis.value:=edinss.text;
       if edfilhos.Text<>'' then
          dm.fornecedoresNfilhos.value:=StrToInt(edfilhos.text);
       if Eddependentes.text<>'' then
          dm.fornecedoresNDependentes.value:=StrToInt(Eddependentes.text);
       if medtadmissao.Text<>'  /  /    ' then
          dm.fornecedoresDtAdmissao.value:=StrToDate(medtadmissao.text);
       if medtdemissao.Text<>'  /  /    ' then
          dm.fornecedoresDtDemissao.value:=StrToDate(medtdemissao.text);
       dm.fornecedoresfiliacao.value:=edfiliacao.text;
       if edsalario.Text<>'' then
          dm.fornecedoressalario.value:=StringToFloat(edsalario.text)
       else
          dm.fornecedoressalario.value:=0;
       if cbbanco.Text<>'' then
          dm.fornecedoresbanco.Value:=copy(cbbanco.Text,1,3);
       dm.fornecedoresagencia.Value:=edagencia.Text;
       dm.fornecedoresconta.Value:=edconta.Text;
       if chtipoc.Checked=true then
          dm.fornecedorestipoc.Value:='S'
       else
          dm.fornecedorestipoc.Value:='N';

       if mehoraent.Text<>'' then
          dm.fornecedoreshoraent.Value:= copy(mehoraent.Text,1,2)+':'+copy(mehoraent.Text,3,2);
       if mehoralm.Text<>'' then
          dm.fornecedoreshoralm.Value:= copy(mehoralm.Text,1,2)+':'+copy(mehoralm.Text,3,2);
       if mehoraalmv.Text<>'' then
          dm.fornecedoreshoraalmv.Value:= copy(mehoraalmv.Text,1,2)+':'+copy(mehoraalmv.Text,3,2);
       if mehorasai.Text<>'' then
          dm.fornecedoreshorasai.Value:= copy(mehorasai.Text,1,2)+':'+copy(mehorasai.Text,3,2);
       dm.fornecedoresfolga.Value:=edfolga.Text;

       dm.fornecedores.Post;
       tip:='I';
     end
     else
     begin
       tip:='A';
       F_Nfilhos:=0;F_NDependentes:=0;
       F_salario:=0;F_cnh:=0;
       F_tipo:='F';
       F_cpf:=mecpf.Text;
       F_rg:=edrg.Text;
       F_nome:=ednome.Text;
       F_endereco:=EdEndereco.Text;
       F_bairro:=EdBairro.Text;
       F_cidade:=EdCidade.Text;
       F_estado:=cbestado.Text;
       F_cep:=mecep.Text;
       F_fone1:=mefone1.Text;
       F_fone2:=mefone2.Text;
       F_fone3:=mefone3.Text;
       F_email:=Edemail.Text;
       F_homepage:=edhome.Text;
       F_obs:=Memo1.Text;
       if edcnh.text<>'' then
          F_cnh:=StrToFloat(edcnh.text);
       F_funcao:=edfuncao.text;
       F_ctps:=edctps.text;
       F_PlanoSaude:=edpsaude.text;
       F_situacao:=copy(cbsituacao.Text,1,1);
       F_apelido:=edapelido.text;
       if edfilhos.Text<>'' then
          F_Nfilhos:=StrToInt(edfilhos.text);
       if Eddependentes.text<>'' then
          F_NDependentes:=StrToInt(Eddependentes.text);
       F_filiacao:=edfiliacao.text;
       F_orgaoemissor:=meorgao.Text;
       F_inss_pis:=edinss.text;
       if cbsexo.Text<>'' then
          F_sexo:=copy(cbsexo.Text,1,1);
       if edsalario.Text<>'' then
          F_salario:=StringToFloat(edsalario.text)
       else
          F_salario:=0;
       if cbbanco.Text<>'' then
          F_banco:=copy(cbbanco.Text,1,3)
       else
          F_banco:='';
       F_agencia:=edagencia.Text;
       F_conta:=edconta.Text;
       if chtipoc.Checked=true then
          F_tipoc:='S'
       else
          F_tipoc:='N';
       F_matricula:=edmatricula.Text;

       if mehoraent.Text<>'' then
          F_horaent:= copy(mehoraent.Text,1,2)+':'+copy(mehoraent.Text,3,2);
       if mehoralm.Text<>'' then
          F_horalm:= copy(mehoralm.Text,1,2)+':'+copy(mehoralm.Text,3,2);
       if mehoraalmv.Text<>'' then
          F_horaalmv:= copy(mehoraalmv.Text,1,2)+':'+copy(mehoraalmv.Text,3,2);
       if mehorasai.Text<>'' then
          F_horasai:= copy(mehorasai.Text,1,2)+':'+copy(mehorasai.Text,3,2);
       F_folga:=edfolga.Text;

       qratualizar.close;
       qratualizar.sql.clear;
       qratualizar.sql.add('update fornecedores set');
       qratualizar.sql.add('tipo = :F_tipo,');
       qratualizar.sql.add('cpf = :F_cpf,');
       qratualizar.sql.add('rg = :F_rg,');
       qratualizar.sql.add('nome = :F_nome,');
       qratualizar.sql.add('endereco = :F_endereco,');
       qratualizar.sql.add('bairro = :F_bairro,');
       qratualizar.sql.add('cidade = :F_cidade,');
       qratualizar.sql.add('estado = :F_estado,');
       qratualizar.sql.add('cep = :F_cep,');
       qratualizar.sql.add('fone1 = :F_fone1,');
       qratualizar.sql.add('fone2 = :F_fone2,');
       qratualizar.sql.add('fone3 = :F_fone3,');
       qratualizar.sql.add('email = :F_email,');
       qratualizar.sql.add('homepage = :F_homepage,');
       qratualizar.sql.add('obs = :F_obs,');
       qratualizar.sql.add('cnh = :F_cnh,');
       qratualizar.sql.add('funcao = :F_funcao,');
       qratualizar.sql.add('ctps = :F_ctps,');
       qratualizar.sql.add('PlanoSaude = :F_PlanoSaude,');
       qratualizar.sql.add('situacao = :F_situacao,');
       qratualizar.sql.add('apelido = :F_apelido,');
       qratualizar.sql.add('Nfilhos = :F_Nfilhos,');
       qratualizar.sql.add('NDependentes = :F_NDependentes,');
       qratualizar.sql.add('filiacao = :F_filiacao,');
       qratualizar.sql.add('orgaoemissor = :F_orgaoemissor,');
       qratualizar.sql.add('inss_pis = :F_inss_pis,');
       qratualizar.sql.add('sexo = :F_sexo,');
       qratualizar.sql.add('salario = :F_salario,');
       qratualizar.sql.add('banco = :F_banco,');
       qratualizar.sql.add('agencia = :F_agencia,');
       qratualizar.sql.add('conta = :F_conta,');
       qratualizar.sql.add('tipoc = :F_tipoc,');
       qratualizar.sql.add('matricula = :F_matricula,');
       qratualizar.sql.add('horaent = :F_horaent,');
       qratualizar.sql.add('horalm = :F_horalm,');
       qratualizar.sql.add('horaalmv = :F_horaalmv,');
       qratualizar.sql.add('horasai = :F_horasai,');
       qratualizar.sql.add('folga = :F_folga');
       qratualizar.SQL.Add('where codigo ='+lbcodigo.Caption);
       qratualizar.Params[0].Value := F_tipo;
       qratualizar.Params[1].Value := F_cpf;
       qratualizar.Params[2].Value := F_rg;
       qratualizar.Params[3].Value := F_nome;
       qratualizar.Params[4].Value := F_endereco;
       qratualizar.Params[5].Value := F_bairro;
       qratualizar.Params[6].Value := F_cidade;
       qratualizar.Params[7].Value := F_estado;
       qratualizar.Params[8].Value := F_cep;
       qratualizar.Params[9].Value := F_fone1;
       qratualizar.Params[10].Value := F_fone2;
       qratualizar.Params[11].Value := F_fone3;
       qratualizar.Params[12].Value := F_email;
       qratualizar.Params[13].Value := F_homepage;
       qratualizar.Params[14].Value := F_obs;
       qratualizar.Params[15].Value := F_cnh;
       qratualizar.Params[16].Value := F_funcao;
       qratualizar.Params[17].Value := F_ctps;
       qratualizar.Params[18].Value := F_PlanoSaude;
       qratualizar.Params[19].Value := F_situacao;
       qratualizar.Params[20].Value := F_apelido;
       qratualizar.Params[21].Value := F_Nfilhos;
       qratualizar.Params[22].Value := F_NDependentes;
       qratualizar.Params[23].Value := F_filiacao;
       qratualizar.Params[24].Value := F_orgaoemissor;
       qratualizar.Params[25].Value := F_inss_pis;
       qratualizar.Params[26].Value := F_sexo;
       qratualizar.Params[27].Value := F_salario;
       qratualizar.Params[28].Value := F_banco;
       qratualizar.Params[29].Value := F_agencia;
       qratualizar.Params[30].Value := F_conta;
       qratualizar.Params[31].Value := F_tipoc;
       qratualizar.Params[32].Value := F_matricula;
       qratualizar.Params[33].Value := F_horaent;
       qratualizar.Params[34].Value := F_horalm;
       qratualizar.Params[35].Value := F_horaalmv;
       qratualizar.Params[36].Value := F_horasai;
       qratualizar.Params[37].Value := F_folga;
       qratualizar.ExecSQL;

       if medtnasc.Text<>'  /  /    ' then
          begin
            F_dtnasc:=copy(medtnasc.text,7,4)+'/'+
            copy(medtnasc.text,4,2)+'/'+copy(medtnasc.text,1,2);
            qratualizar.close;
            qratualizar.sql.clear;
            qratualizar.sql.add('update fornecedores set');
            qratualizar.sql.add('dtnasc = :F_dtnasc');
            qratualizar.SQL.Add('where codigo ='+lbcodigo.Caption);
            qratualizar.Params[0].Value := F_dtnasc;
            qratualizar.ExecSQL;
          end;


       if medtcnh.Text<>'  /  /    ' then
          begin
            F_dtcnh:=copy(medtcnh.text,7,4)+'/'+
            copy(medtcnh.text,4,2)+'/'+copy(medtcnh.text,1,2);
            qratualizar.close;
            qratualizar.sql.clear;
            qratualizar.sql.add('update fornecedores set');
            qratualizar.sql.add('dtcnh = :F_dtcnh');
            qratualizar.SQL.Add('where codigo ='+lbcodigo.Caption);
            qratualizar.Params[0].Value := F_dtcnh;
            qratualizar.ExecSQL;
          end;

       if medtadmissao.Text<>'  /  /    ' then
          begin
            F_DtAdmissao:=copy(medtadmissao.text,7,4)+'/'+
            copy(medtadmissao.text,4,2)+'/'+copy(medtadmissao.text,1,2);
            qratualizar.close;
            qratualizar.sql.clear;
            qratualizar.sql.add('update fornecedores set');
            qratualizar.sql.add('DtAdmissao = :F_DtAdmissao');
            qratualizar.SQL.Add('where codigo ='+lbcodigo.Caption);
            qratualizar.Params[0].Value := F_DtAdmissao;
            qratualizar.ExecSQL;
          end;

       if medtdemissao.Text<>'  /  /    ' then
          begin
            F_DtDemissao:=copy(medtdemissao.text,7,4)+'/'+
            copy(medtdemissao.text,4,2)+'/'+copy(medtdemissao.text,1,2);
            qratualizar.close;
            qratualizar.sql.clear;
            qratualizar.sql.add('update fornecedores set');
            qratualizar.sql.add('dtdemissao = :F_DtDemissao');
            qratualizar.SQL.Add('where codigo ='+lbcodigo.Caption);
            qratualizar.Params[0].Value := F_DtDemissao;
            qratualizar.ExecSQL;
{          end
          else
          begin
            F_DtDemissao:='0000/00/00';
            qratualizar.sql.add('dtdemissao = :F_DtDemissao');
            qratualizar.SQL.Add('where codigo ='+lbcodigo.Caption);
            qratualizar.Params[0].Value := F_DtDemissao;
            qratualizar.ExecSQL;
}          end;
     end;

    dm.fornecedores.Close;
    dm.fornecedores.Open;
    dm.fornecedores.Locate('nome',ednome.Text,[]);
    Atualiza;
    habilita;

    if mecpf.Text<>'' then
       begin
          qryU              :=  TZQuery.Create(nil);
          qryU.Connection   :=  dm.ZConnection1;
          qryU.SQL.Add('select * from users');
          qryU.sql.add('where cpf = '+chr(39)+mecpf.Text+chr(39));
          qryU.Open;
          if qryU.RecordCount<1 then
             begin
               qryU.Insert;
               qryU.FieldByName('cpf').AsString         := mecpf.Text;
               qryU.FieldByName('enabled').AsInteger    := 1;
               if medtnasc.Text<>'  /  /    ' then
                  qryU.FieldByName('nasc').AsVariant    := StrToDate(medtnasc.Text);
               qryU.FieldByName('email').AsString       := Edemail.Text;
               qryU.FieldByName('name').AsString        := edapelido.Text;
               qryU.FieldByName('fornecedor').AsVariant := lbcodigo.Caption;
               qryU.FieldByName('since').AsVariant      := now();
               qryU.Post;
               qryU.Close;
               qryU.Open;

               qryL              :=  TZQuery.Create(nil);
               qryL.Connection   :=  dm.ZConnection1;
               qryL.SQL.Add('select * from u_roles');
               qryL.sql.add('where user_id = '+qryU.FieldByName('id').AsString);
               qryL.Open;
               if qryL.RecordCount<1 then
                  begin
                    qryL.Insert;
                    qryL.FieldByName('user_id').AsString     := qryU.FieldByName('id').AsString;
                    qryL.FieldByName('role_id').AsString     := 'ROLE_FORNECEDOR';
                    qryL.Post;
                    qryL.Close;
                    qryL.Open;
                  end;
             end;

          qryU.Free;
          qryL.Free;
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
    dm.rastrorotina.Value:='FUNCIONÁRIO';
    if tip='I' then
       dm.rastrooperacao.Value:='I'
    else
       dm.rastrooperacao.Value:='A';
    dm.rastrohistorico.Value:=ednome.Text;
    dm.rastrofavorecido.Value:=StrToInt(lbcodigo.Caption);
    dm.rastro.Post;
    dm.rastro.Close;
end;

procedure TFrmCadFuncionarios.FormShow(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  dm.fornecedores.Close;
  habilita;
  edpesquisa.SetFocus;
end;

procedure TFrmCadFuncionarios.mecpfExit(Sender: TObject);
begin
  if mecpf.text<>'' then
     begin
        if testacpf(mecpf.Text) then
           begin
              if novo=true then
                 begin
                   dm.fornecedores.close;
                   dm.fornecedores.sql.clear;
                   dm.fornecedores.sql.add('select * from fornecedores');
                   dm.fornecedores.sql.add('where cpf = '+chr(39)+mecpf.text+chr(39));
                   dm.fornecedores.open;
                   if dm.fornecedores.RecordCount>0 then
                      begin
                         showmessage('Fornecedor já cadastrado!');
                         btcancelar.Click;
                      end;
                 end;
           end
           else
           begin
              application.MessageBox('C.P.F. inválido','Atenção',mb_ok+mb_iconerror);
              mecpf.SetFocus;
           end;
     end
     else
     begin
       if Application.Messagebox ('Deseja prosseguir?','CPF não Informado', Mb_YesNo+mb_iconquestion) = id_no then
          btcancelar.Click;
     end;
mecpf.Color:=clWindow;
end;

procedure TFrmCadFuncionarios.btprimeiroClick(Sender: TObject);
begin
        dm.fornecedores.First;
        atualiza;
end;

procedure TFrmCadFuncionarios.btanteriorClick(Sender: TObject);
begin
        dm.fornecedores.prior;
        atualiza;
end;

procedure TFrmCadFuncionarios.btproximoClick(Sender: TObject);
begin
        dm.fornecedores.next;
        atualiza;
end;

procedure TFrmCadFuncionarios.btultimoClick(Sender: TObject);
begin
        dm.fornecedores.last;
        atualiza;
end;

procedure TFrmCadFuncionarios.DBGrid1DblClick(Sender: TObject);
begin
  if assigned(FrmPagar) then
     begin
       if (dm.fornecedores.Active) and (dm.fornecedores.RecordCount>0) then
          begin
            if FrmPagar.btnovo.Enabled=false then
               begin
                 FrmPagar.edfornecedor.Text:=IntToStr(dm.fornecedorescodigo.value);
                 FrmPagar.edfornecedor.SelStart:=0;
                 FrmPagar.edfornecedor.SelLength:=length(FrmPagar.edfornecedor.Text);
               end
               else
               begin
                 FrmPagar.edfornecedorI.Text:=IntToStr(dm.fornecedorescodigo.value);
                 FrmPagar.edfornecedorI.SelStart:=0;
                 FrmPagar.edfornecedorI.SelLength:=length(FrmPagar.edfornecedorI.Text);
               end;
            modalresult := mrok;
          end
     end
  else if assigned(FrmRecibo) then
     begin
       if (dm.fornecedores.Active) and (dm.fornecedores.RecordCount>0) then
          begin
            if dm.fornecedorestipo.Value='J' then
               FrmRecibo.mecpf.Text:=dm.fornecedorescnpj.Value
            else
               FrmRecibo.mecpf.Text:=dm.fornecedorescpf.Value;
            FrmRecibo.mecpf.SelStart:=0;
            FrmRecibo.mecpf.SelLength:=length(FrmRecibo.mecpf.Text);
            modalresult := mrok;
          end
     end
     else
     begin
       Atualiza;
       PageControl1.ActivePageIndex := 1;
     end;
end;

procedure TFrmCadFuncionarios.DBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
P_ativo:string;
begin
  dm.usuarios.Close;
  dm.usuarios.Open;
  dm.usuarios.Locate('nome',FrmPrincipal.sb.Panels[3].Text,[]);
  if dm.usuariosparametros.value='5' then
     begin
        if key=vk_f2 then
           begin
             busca := '';
             ClickedOK := InputQuery('Digite o CPF do Profissional', 'Incluir CPF', busca);
             if ClickedOK then
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
                   dm.rastrorotina.Value:='VENDEDOR';
                   dm.rastrooperacao.Value:='A';
                   dm.rastrohistorico.Value:=dm.fornecedoresnome.Value;
                   dm.rastrofavorecido.Value:=dm.fornecedorescodigo.Value;
                   dm.rastrovalor.Value:=0;
                   dm.rastroobs.Value:='CPF: '+busca;
                   dm.rastro.Post;
                   dm.rastro.Close;

                   qratualizar.close;
                   qratualizar.sql.clear;
                   qratualizar.sql.add('update fornecedores set');
                   qratualizar.sql.add('cpf = :busca');
                   qratualizar.SQL.Add('where codigo ='+IntToStr(dm.fornecedorescodigo.Value));
                   qratualizar.Params[0].Value := busca;
                   qratualizar.ExecSQL;

                   busca:=IntToStr(dm.fornecedorescodigo.Value);
                   dm.fornecedores.Close;
                   dm.fornecedores.Open;
                   dm.fornecedores.Locate('codigo',busca,[]);
                end;
           end;

        if key=vk_f9 then
           begin
             if dm.fornecedoresativo.Value='S' then
                P_ativo:='N'
             else
                P_ativo:='S';
             qratualizar.close;
             qratualizar.sql.clear;
             qratualizar.sql.add('update fornecedores set');
             qratualizar.sql.add('ativo = :P_ativo');
             qratualizar.sql.add('where codigo = '+IntToStr(dm.fornecedorescodigo.Value));
             qratualizar.Params[0].Value := P_ativo;
             qratualizar.ExecSQL;
             busca:=IntToStr(dm.fornecedorescodigo.Value);
             dm.fornecedores.Close;
             dm.fornecedores.Open;
             dm.fornecedores.Locate('codigo',busca,[]);
           end;
     end;
  if Key = 13 then
     begin
        if assigned(FrmVendaRefaturar) then
           begin
             if (dm.fornecedores.Active) and (dm.fornecedores.RecordCount>0) then
                begin
                  FrmVendaRefaturar.edvendedor.Text:=IntToStr(dm.fornecedorescodigo.value);
                  FrmVendaRefaturar.edvendedor.SelStart:=0;
                  FrmVendaRefaturar.edvendedor.SelLength:=length(FrmVendaRefaturar.edvendedor.Text);
                  modalresult := mrok;
                end
           end
           else
           begin
             Atualiza;
             PageControl1.ActivePageIndex := 1;
           end;
     end;
end;

procedure TFrmCadFuncionarios.rbcodigoClick(Sender: TObject);
begin
      dm.fornecedores.Close;
      edpesquisa.Text:='';
      edpesquisa.SetFocus;
end;

procedure TFrmCadFuncionarios.edpesquisaExit(Sender: TObject);
begin
  if edpesquisa.Text<>'' then
     begin
        dm.fornecedores.close;
        dm.fornecedores.sql.clear;
        dm.fornecedores.sql.add('select * from fornecedores');
        if rbcodigo.Checked=true then
           dm.fornecedores.sql.add('where codigo = '+edpesquisa.text);
        if rbApelido.Checked=true then
           dm.fornecedores.sql.add('where apelido like '+chr(39)+edpesquisa.text+'%'+chr(39))
        else if rbnome.Checked=true then
           dm.fornecedores.sql.add('where nome like '+chr(39)+edpesquisa.text+'%'+chr(39))
        else if rbfuncao.Checked=true then
           dm.fornecedores.sql.add('where funcao like '+chr(39)+edpesquisa.text+'%'+chr(39))
        else if rbcpf.Checked=true then
            dm.fornecedores.sql.add('where cpf = '+chr(39)+edpesquisa.text+chr(39));
        dm.fornecedores.sql.add('order by nome');
        dm.fornecedores.open;
     end;
end;

procedure TFrmCadFuncionarios.EdCodigoEnter(Sender: TObject);
begin
        ednome.SetFocus;
end;

procedure TFrmCadFuncionarios.rbgeralClick(Sender: TObject);
begin
  dm.fornecedores.close;
  dm.fornecedores.sql.clear;
  dm.fornecedores.sql.add('select * from fornecedores');
  dm.fornecedores.sql.add('where funcao <> '+chr(39)+''+chr(39));
//  dm.fornecedores.sql.add('and ((dtdemissao is null)');
//  dm.fornecedores.sql.add('or (dtdemissao = '+chr(39)+'0000/00/00'+chr(39)+'))');
  dm.fornecedores.sql.add('order by ativo desc,nome');
  dm.fornecedores.open;
  edpesquisa.Text:='';
  DBGrid1.SetFocus;
end;

procedure TFrmCadFuncionarios.btrelatorioClick(Sender: TObject);
begin
      try
        Application.CreateForm(TFrmRelFornecedor, FrmRelFornecedor);
        FrmRelFornecedor.showmodal;
      finally
        FrmRelFornecedor.Release;
        FrmRelFornecedor:=nil;
      end;
end;

procedure TFrmCadFuncionarios.mecpfEnter(Sender: TObject);
begin
  mecpf.Color:=$0080FFFF;
end;

procedure TFrmCadFuncionarios.BitBtn1Click(Sender: TObject);
begin
    close;
end;

procedure TFrmCadFuncionarios.edrgEnter(Sender: TObject);
begin
  edrg.Color:=$0080FFFF;
end;

procedure TFrmCadFuncionarios.ednomeEnter(Sender: TObject);
begin
  ednome.Color:=$0080FFFF;
end;

procedure TFrmCadFuncionarios.EdEnderecoEnter(Sender: TObject);
begin
  EdEndereco.Color:=$0080FFFF;
end;

procedure TFrmCadFuncionarios.EdBairroEnter(Sender: TObject);
begin
  EdBairro.Color:=$0080FFFF;
end;

procedure TFrmCadFuncionarios.EdCidadeEnter(Sender: TObject);
begin
  EdCidade.Color:=$0080FFFF;
end;

procedure TFrmCadFuncionarios.cbestadoEnter(Sender: TObject);
begin
  cbestado.Color:=$0080FFFF;
end;

procedure TFrmCadFuncionarios.mecepEnter(Sender: TObject);
begin
  mecep.Color:=$0080FFFF;
end;

procedure TFrmCadFuncionarios.mefone1Enter(Sender: TObject);
begin
  mefone1.Color:=$0080FFFF;
end;

procedure TFrmCadFuncionarios.mefone2Enter(Sender: TObject);
begin
  mefone2.Color:=$0080FFFF;
end;

procedure TFrmCadFuncionarios.mefone3Enter(Sender: TObject);
begin
  mefone3.Color:=$0080FFFF;
end;

procedure TFrmCadFuncionarios.EdemailEnter(Sender: TObject);
begin
  Edemail.Color:=$0080FFFF;
end;

procedure TFrmCadFuncionarios.edhomeEnter(Sender: TObject);
begin
  edhome.Color:=$0080FFFF;
end;

procedure TFrmCadFuncionarios.Memo1Enter(Sender: TObject);
begin
  Memo1.Color:=$0080FFFF;
end;

procedure TFrmCadFuncionarios.EdCidadeExit(Sender: TObject);
begin
  EdCidade.Color:=clWindow;
end;

procedure TFrmCadFuncionarios.edrgExit(Sender: TObject);
begin
  edrg.Color:=clWindow;
end;

procedure TFrmCadFuncionarios.ednomeExit(Sender: TObject);
begin
  ednome.Color:=clWindow;
end;

procedure TFrmCadFuncionarios.EdEnderecoExit(Sender: TObject);
begin
  EdEndereco.Color:=clWindow;
end;

procedure TFrmCadFuncionarios.EdBairroExit(Sender: TObject);
begin
  EdBairro.Color:=clWindow;
end;

procedure TFrmCadFuncionarios.cbestadoExit(Sender: TObject);
begin
  cbestado.Color:=clWindow;
end;

procedure TFrmCadFuncionarios.mecepExit(Sender: TObject);
begin
  mecep.Color:=clWindow;
end;

procedure TFrmCadFuncionarios.mefone1Exit(Sender: TObject);
begin
  mefone1.Color:=clWindow;
end;

procedure TFrmCadFuncionarios.mefone2Exit(Sender: TObject);
begin
  mefone2.Color:=clWindow;
end;

procedure TFrmCadFuncionarios.mefone3Exit(Sender: TObject);
begin
  mefone3.Color:=clWindow;
end;

procedure TFrmCadFuncionarios.EdemailExit(Sender: TObject);
begin
  Edemail.Color:=clWindow;
end;

procedure TFrmCadFuncionarios.edhomeExit(Sender: TObject);
begin
  edhome.Color:=clWindow;
end;

procedure TFrmCadFuncionarios.Memo1Exit(Sender: TObject);
begin
  btgravar.SetFocus;
  Memo1.Color:=clWindow;
end;

procedure TFrmCadFuncionarios.btalterarFClick(Sender: TObject);
begin
  if lbcodigo.Caption<>'' then
     begin
       novo:=false;
       desabilita;
       edcnh.SetFocus;
     end
     else
     begin
       Application.Messagebox ('Consulte um Fornecedor','Atenção', Mb_ok+mb_iconinformation);
       PageControl1.ActivePageIndex := 0;
     end;
end;

procedure TFrmCadFuncionarios.meorgaoExit(Sender: TObject);
begin
  meorgao.Color:=clWindow;
end;

procedure TFrmCadFuncionarios.edsalarioExit(Sender: TObject);
begin
  if edsalario.Text<>'' then
     edsalario.Text:=formatfloat('#,##0.00',StringToFloat(edsalario.text));
end;

procedure TFrmCadFuncionarios.DBGrid1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  DBGrid1.hint := 'Pressione: F2 para Inserir/Atualizar o CPF'+#13+
                  'Pressione: F9 para Ativar ou Desativar o Profissional (Sim/Não)';
end;

procedure TFrmCadFuncionarios.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if dm.fornecedoresativo.Value='N' then
  Dbgrid1.Canvas.Font.Color:= clred;
  Dbgrid1.DefaultDrawDataCell(Rect, dbgrid1.columns[datacol].field, State);
  if dm.fornecedoresativo.Value='S' then
  Dbgrid1.Canvas.Font.Color:= clblack;
  Dbgrid1.DefaultDrawDataCell(Rect, dbgrid1.columns[datacol].field, State);
end;

procedure TFrmCadFuncionarios.cbbancoEnter(Sender: TObject);
begin
  cbbanco.Color:=$0080FFFF;
end;

procedure TFrmCadFuncionarios.cbbancoExit(Sender: TObject);
begin
  cbbanco.Color:=clWindow;
end;

procedure TFrmCadFuncionarios.edagenciaEnter(Sender: TObject);
begin
  edagencia.Color:=$0080FFFF;
end;

procedure TFrmCadFuncionarios.edagenciaExit(Sender: TObject);
begin
  edagencia.Color:=clWindow;
end;

procedure TFrmCadFuncionarios.edcontaEnter(Sender: TObject);
begin
  edconta.Color:=$0080FFFF;
end;

procedure TFrmCadFuncionarios.edcontaExit(Sender: TObject);
begin
  edconta.Color:=clWindow;
end;

procedure TFrmCadFuncionarios.edmatriculaEnter(Sender: TObject);
begin
  edmatricula.Color:=$0080FFFF;
end;

procedure TFrmCadFuncionarios.edmatriculaExit(Sender: TObject);
begin
  edmatricula.Color:=clWindow;
end;

end.
