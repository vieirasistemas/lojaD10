unit UnitFrmCadfornecedores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, Mask, DBCtrls, ComCtrls,
  ExtCtrls, DB, DBTables, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  EditAlinhado;

type
  TFrmCadfornecedores = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    rbcodigo: TRadioButton;
    rbnome: TRadioButton;
    rbcpf: TRadioButton;
    rbcnpj: TRadioButton;
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
    Label33: TLabel;
    cbtipo: TComboBox;
    Label34: TLabel;
    mecgc: TMaskEdit;
    Label35: TLabel;
    edie: TEdit;
    Label38: TLabel;
    edim: TEdit;
    Label36: TLabel;
    mecpf: TMaskEdit;
    Label45: TLabel;
    edrg: TEdit;
    EdCodigo: TEdit;
    Label25: TLabel;
    Label26: TLabel;
    ednome: TEdit;
    Label1: TLabel;
    edfantasia: TEdit;
    Label37: TLabel;
    EdContato: TEdit;
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
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnovoClick(Sender: TObject);
    procedure btalterarClick(Sender: TObject);
    procedure btexcluirClick(Sender: TObject);
    procedure btcancelarClick(Sender: TObject);
    procedure btgravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbtipoExit(Sender: TObject);
    procedure mecgcExit(Sender: TObject);
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
    procedure mecgcEnter(Sender: TObject);
    procedure mecpfEnter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure cbtipoEnter(Sender: TObject);
    procedure edieEnter(Sender: TObject);
    procedure edrgEnter(Sender: TObject);
    procedure ednomeEnter(Sender: TObject);
    procedure edfantasiaEnter(Sender: TObject);
    procedure EdContatoEnter(Sender: TObject);
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
    procedure edieExit(Sender: TObject);
    procedure edimExit(Sender: TObject);
    procedure edimEnter(Sender: TObject);
    procedure edrgExit(Sender: TObject);
    procedure ednomeExit(Sender: TObject);
    procedure edfantasiaExit(Sender: TObject);
    procedure EdContatoExit(Sender: TObject);
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
    procedure meorgaoEnter(Sender: TObject);
    procedure meorgaoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadfornecedores: TFrmCadfornecedores;
  novo,check:boolean;
  log: TextFile;
  texto,tip:string;

implementation

uses Unitdm, UnitFrmPagar, UnitFrmRelFornecedor, UnitFrmPrincipal,
  UnitFrmRecibo, UnitFrmCadProdutos, UnitFrmEstoque, 
  UnitFrmCadProdutosRel, 
  UnitFrmEstoqueRel;

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

function TestaCnpj(xCNPJ: String):Boolean;
Var
  d1,d4,xx,nCount,fator,resto,digito1,digito2 : Integer;
   Check : String;
begin
d1 := 0;
d4 := 0;
xx := 1;
for nCount := 1 to Length( xCNPJ )-2 do
    begin
    if Pos( Copy( xCNPJ, nCount, 1 ), '/-.' ) = 0 then
    begin
    if xx < 5 then
    begin
    fator := 6 - xx;
    end
    else
   begin
   fator := 14 - xx;
   end;
   d1 := d1 + StrToInt( Copy( xCNPJ, nCount, 1 ) ) * fator;
   if xx < 6 then
    begin
    fator := 7 - xx;
   end
   else
   begin
   fator := 15 - xx;    end;
   d4 := d4 + StrToInt( Copy( xCNPJ, nCount, 1 ) ) * fator;
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
   if Check <> copy(xCNPJ,succ(length(xCNPJ)-2),2) then
    begin
    Result := False;
   end
   else
    begin
    Result := True;
   end;
 end;

procedure Atualiza;
begin
  if dm.fornecedorestipo.Value='F' then
     FrmCadfornecedores.cbtipo.Text:='F�SICA'
  else
     FrmCadfornecedores.cbtipo.Text:='JUR�DICA';
  FrmCadfornecedores.mecgc.Text:=dm.fornecedorescnpj.value;
  FrmCadfornecedores.edie.Text:=dm.fornecedoresie.value;
  FrmCadfornecedores.edim.Text:=dm.fornecedoresim.value;
  FrmCadfornecedores.mecpf.Text:=dm.fornecedorescpf.value;
  FrmCadfornecedores.edrg.Text:=dm.fornecedoresrg.value;
  FrmCadfornecedores.edcodigo.Text:=FloatToStr(dm.fornecedorescodigo.value);
  FrmCadfornecedores.ednome.Text:=dm.fornecedoresnome.value;
  FrmCadfornecedores.edfantasia.Text:=dm.fornecedoresfantasia.value;
  FrmCadfornecedores.EdContato.Text:=dm.fornecedorescontato.value;
  FrmCadfornecedores.EdEndereco.Text:=dm.fornecedoresendereco.value;
  FrmCadfornecedores.EdBairro.Text:=dm.fornecedoresbairro.value;
  FrmCadfornecedores.EdCidade.Text:=dm.fornecedorescidade.value;
  FrmCadfornecedores.cbestado.Text:=dm.fornecedoresestado.value;
  FrmCadfornecedores.mecep.Text:=dm.fornecedorescep.value;
  FrmCadfornecedores.mefone1.Text:=dm.fornecedoresfone1.value;
  FrmCadfornecedores.mefone2.Text:=dm.fornecedoresfone2.value;
  FrmCadfornecedores.mefone3.Text:=dm.fornecedoresfone3.value;
  FrmCadfornecedores.Edemail.Text:=dm.fornecedoresemail.value;
  FrmCadfornecedores.edhome.Text:=dm.fornecedoreshomepage.value;
  FrmCadfornecedores.Memo1.Text:=dm.fornecedoresobs.value;
end;

procedure desabilita;
begin
  FrmCadfornecedores.btprimeiro.enabled:=false;
  FrmCadfornecedores.btanterior.enabled:=false;
  FrmCadfornecedores.btproximo.enabled:=false;
  FrmCadfornecedores.btultimo.enabled:=false;
  FrmCadfornecedores.btnovo.enabled:=false;
  FrmCadfornecedores.btalterar.enabled:=false;
  FrmCadfornecedores.btexcluir.enabled:=false;
  FrmCadfornecedores.btrelatorio.enabled:=false;
  FrmCadfornecedores.btgravar.enabled:=true;
  FrmCadfornecedores.btcancelar.Caption:='Cancelar';
  FrmCadfornecedores.P_dados.enabled:=true;
end;

procedure habilita;
begin
{        dm.usuarios.Open;
        dm.usuarios.Locate('nome',frmprincipal.sb.Panels[3].Text,[]);
        if dm.usuariosfornecedores.value='1' then
           begin
                FrmCadfornecedores.btgravar.enabled:=false;
                FrmCadfornecedores.btnovo.Enabled:=false;
                FrmCadfornecedores.btexcluir.Enabled:=false;
                FrmCadfornecedores.btalterar.Enabled:=false;
                FrmCadfornecedores.btprimeiro.Enabled:=true;
                FrmCadfornecedores.btanterior.Enabled:=true;
                FrmCadfornecedores.btproximo.Enabled:=true;
                FrmCadfornecedores.btultimo.Enabled:=true;
                FrmCadfornecedores.btrelatorio.enabled:=false;
                FrmCadfornecedores.P_dados.enabled:=false;
           end
        else if dm.usuariosfornecedores.value='2' then
           begin
                FrmCadfornecedores.btgravar.enabled:=false;
                FrmCadfornecedores.btnovo.Enabled:=true;
                FrmCadfornecedores.btexcluir.Enabled:=false;
                FrmCadfornecedores.btalterar.Enabled:=false;
                FrmCadfornecedores.btprimeiro.Enabled:=true;
                FrmCadfornecedores.btanterior.Enabled:=true;
                FrmCadfornecedores.btproximo.Enabled:=true;
                FrmCadfornecedores.btultimo.Enabled:=true;
                FrmCadfornecedores.btrelatorio.enabled:=false;
                FrmCadfornecedores.P_dados.enabled:=false;
           end
        else if dm.usuariosfornecedores.value='3' then
           begin
                FrmCadfornecedores.btgravar.enabled:=false;
                FrmCadfornecedores.btnovo.Enabled:=true;
                FrmCadfornecedores.btexcluir.Enabled:=false;
                FrmCadfornecedores.btalterar.Enabled:=true;
                FrmCadfornecedores.btprimeiro.Enabled:=true;
                FrmCadfornecedores.btanterior.Enabled:=true;
                FrmCadfornecedores.btproximo.Enabled:=true;
                FrmCadfornecedores.btultimo.Enabled:=true;
                FrmCadfornecedores.btrelatorio.enabled:=false;
                FrmCadfornecedores.P_dados.enabled:=false;
           end
        else if dm.usuariosfornecedores.value='4' then
           begin
                FrmCadfornecedores.btgravar.enabled:=false;
                FrmCadfornecedores.btnovo.Enabled:=true;
                FrmCadfornecedores.btexcluir.Enabled:=true;
                FrmCadfornecedores.btalterar.Enabled:=true;
                FrmCadfornecedores.btprimeiro.Enabled:=true;
                FrmCadfornecedores.btanterior.Enabled:=true;
                FrmCadfornecedores.btproximo.Enabled:=true;
                FrmCadfornecedores.btultimo.Enabled:=true;
                FrmCadfornecedores.btrelatorio.enabled:=true;
                FrmCadfornecedores.P_dados.enabled:=false;
           end
        else if dm.usuariosfornecedores.value='5' then
           begin
}
                FrmCadfornecedores.btgravar.enabled:=false;
                FrmCadfornecedores.btnovo.Enabled:=true;
                FrmCadfornecedores.btexcluir.Enabled:=true;
                FrmCadfornecedores.btalterar.Enabled:=true;
                FrmCadfornecedores.btprimeiro.Enabled:=true;
                FrmCadfornecedores.btanterior.Enabled:=true;
                FrmCadfornecedores.btproximo.Enabled:=true;
                FrmCadfornecedores.btultimo.Enabled:=true;
                FrmCadfornecedores.btrelatorio.enabled:=true;
                FrmCadfornecedores.P_dados.enabled:=false;
//           end;
        FrmCadfornecedores.btcancelar.Caption:='Sair';
end;

procedure limpar;
begin
  FrmCadfornecedores.cbtipo.Text:='';
  FrmCadfornecedores.mecgc.Text:='';
  FrmCadfornecedores.edie.Text:='';
  FrmCadfornecedores.edim.Text:='';
  FrmCadfornecedores.mecpf.Text:='';
  FrmCadfornecedores.edrg.Text:='';
  FrmCadfornecedores.meorgao.Text:='';
  FrmCadfornecedores.EdCodigo.Text:='';
  FrmCadfornecedores.ednome.Text:='';
  FrmCadfornecedores.edfantasia.Text:='';
  FrmCadfornecedores.EdContato.Text:='';
  FrmCadfornecedores.EdEndereco.Text:='';
  FrmCadfornecedores.EdBairro.Text:='';
  FrmCadfornecedores.EdCidade.Text:='';
  FrmCadfornecedores.cbestado.Text:='';
  FrmCadfornecedores.mecep.Text:='';
  FrmCadfornecedores.mefone1.Text:='';
  FrmCadfornecedores.mefone2.Text:='';
  FrmCadfornecedores.mefone3.Text:='';
  FrmCadfornecedores.Edemail.Text:='';
  FrmCadfornecedores.edhome.Text:='';
  FrmCadfornecedores.Memo1.Lines.Clear;
end;

procedure ExcluirFornecedor;
begin
     if Application.Messagebox ('Deseja excluir o registro?','Gestor', Mb_YesNoCancel+mb_iconquestion) = id_yes then
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
          dm.rastrorotina.Value:='FORNECEDOR';
          dm.rastrooperacao.Value:='E';
          dm.rastrohistorico.Value:=FrmCadfornecedores.mecgc.Text+' '+
          FrmCadfornecedores.ednome.Text;
          dm.rastrofavorecido.Value:=StrToInt(FrmCadfornecedores.EdCodigo.Text);
          dm.rastro.Post;
          dm.rastro.Close;

          FrmCadfornecedores.qratualizar.close;
          FrmCadfornecedores.qratualizar.sql.clear;
          FrmCadfornecedores.qratualizar.sql.add('delete from fornecedores');
          FrmCadfornecedores.qratualizar.sql.add('where codigo = '+FrmCadfornecedores.edcodigo.text);
          FrmCadfornecedores.qratualizar.ExecSQL;
          limpar;
        end;
end;

procedure TFrmCadfornecedores.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrmCadfornecedores.btnovoClick(Sender: TObject);
begin
        novo:=true;
        limpar;
        desabilita;
        cbtipo.SetFocus;
end;

procedure TFrmCadfornecedores.btalterarClick(Sender: TObject);
begin
  novo:=false;
  desabilita;
  cbtipo.SetFocus;
end;

procedure TFrmCadfornecedores.btexcluirClick(Sender: TObject);
begin
      if EdCodigo.text='' then
         begin
           application.MessageBox('Selecione um Fornecedor','Aten��o',mb_ok+mb_iconinformation);
           PageControl1.ActivePageIndex := 0;
           edpesquisa.SetFocus;
         end
         else
         begin
           check:=false;
           dm.DocPagar.close;
           dm.DocPagar.sql.clear;
           dm.DocPagar.sql.add('select * from docpagar');
           dm.DocPagar.sql.add('where fornecedor = '+edcodigo.text);
           dm.DocPagar.open;
           if dm.DocPagar.RecordCount>0 then
              check:=true;


           if check=true then
              application.MessageBox('Fornecedor com Movimenta��o','Aten��o',mb_ok+MB_ICONWARNING)
           else
              ExcluirFornecedor;
         end;
end;

procedure TFrmCadfornecedores.btcancelarClick(Sender: TObject);
begin
        if btnovo.Enabled=false then
           begin
                habilita;
                limpar;
           end
           else
                close;
end;

procedure TFrmCadfornecedores.btgravarClick(Sender: TObject);
var
F_tipo,F_cnpj,F_ie,F_im,F_cpf,F_rg,
F_nome,F_fantasia,F_contato,F_endereco,
F_bairro,F_cidade,F_estado,F_cep,
F_fone1,F_fone2,F_fone3,F_email,
F_dtcnh,F_dtnasc,F_homepage,F_obs,
F_funcao,F_ctps,F_saude,F_PlanoSaude,
F_situacao,F_apelido,F_DtAdmissao,
F_DtDemissao,F_filiacao,F_orgaoemissor,
F_agenda,F_planoconta,F_sexo,F_inss_pis:string;
F_contacontabil,F_Nfilhos,F_NDependentes:integer;
F_comissao,F_cnh,F_salario,F_metaI,F_metaII,
F_comissaoII:real;
begin
  if novo=true then
     begin
       dm.fornecedores.close;
       dm.fornecedores.sql.clear;
       dm.fornecedores.sql.add('select * from fornecedores');
       dm.fornecedores.sql.add('where nome = '+chr(39)+ednome.text+chr(39));
       dm.fornecedores.open;
       dm.fornecedores.Insert;
       dm.fornecedorestipo.Value:=copy(cbtipo.Text,1,1);
       dm.fornecedorescnpj.value:=mecgc.Text;
       dm.fornecedoresie.value:=edie.Text;
       dm.fornecedoresim.value:=edim.Text;
       dm.fornecedorescpf.value:=mecpf.Text;
       dm.fornecedoresrg.value:=edrg.Text;
       dm.fornecedoresorgaoemissor.value:=meorgao.Text;
       dm.fornecedoresnome.value:=ednome.Text;
       dm.fornecedoresfantasia.value:=edfantasia.Text;
       dm.fornecedorescontato.value:=EdContato.Text;
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
       dm.fornecedoresnome.value:=ednome.Text;
       dm.fornecedores.Post;
       tip:='I';
     end
     else
     begin
       tip:='A';
       F_planoconta:='';
       F_Nfilhos:=0;F_NDependentes:=0;
       F_cnh:=0;F_contacontabil:=0;
       F_tipo:=copy(cbtipo.Text,1,1);
       F_cnpj:=mecgc.Text;
       F_ie:=edie.Text;
       F_im:=edim.Text;
       F_cpf:=mecpf.Text;
       F_rg:=edrg.Text;
       F_orgaoemissor:=meorgao.Text;
       F_nome:=ednome.Text;
       F_fantasia:=edfantasia.Text;
       F_contato:=EdContato.Text;
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

       qratualizar.close;
       qratualizar.sql.clear;
       qratualizar.sql.add('update fornecedores set');
       qratualizar.sql.add('tipo = :F_tipo,');
       qratualizar.sql.add('cnpj = :F_cnpj,');
       qratualizar.sql.add('ie = :F_ie,');
       qratualizar.sql.add('im = :F_im,');
       qratualizar.sql.add('cpf = :F_cpf,');
       qratualizar.sql.add('rg = :F_rg,');
       qratualizar.sql.add('nome = :F_nome,');
       qratualizar.sql.add('fantasia = :F_fantasia,');
       qratualizar.sql.add('contato = :F_contato,');
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
       qratualizar.sql.add('dtnasc = :F_dtnasc,');
       qratualizar.sql.add('cnh = :F_cnh,');
       qratualizar.sql.add('dtcnh = :F_dtcnh,');
       qratualizar.sql.add('funcao = :F_funcao,');
       qratualizar.sql.add('ctps = :F_ctps,');
       qratualizar.sql.add('PlanoSaude = :F_PlanoSaude,');
       qratualizar.sql.add('situacao = :F_situacao,');
       qratualizar.sql.add('apelido = :F_apelido,');
       qratualizar.sql.add('Nfilhos = :F_Nfilhos,');
       qratualizar.sql.add('NDependentes = :F_NDependentes,');
       qratualizar.sql.add('DtAdmissao = :F_DtAdmissao,');
       qratualizar.sql.add('DtDemissao = :F_DtDemissao,');
       qratualizar.sql.add('filiacao = :F_filiacao,');
       qratualizar.sql.add('orgaoemissor = :F_orgaoemissor,');
       qratualizar.sql.add('inss_pis = :F_inss_pis,');
       qratualizar.sql.add('sexo = :F_sexo,');
       qratualizar.sql.add('contacontabil = :F_contacontabil,');
       qratualizar.sql.add('planoconta = :F_planoconta,');
       qratualizar.sql.add('comissao = :F_comissao,');
       qratualizar.sql.add('salario = :F_salario,');
       qratualizar.sql.add('metaI = :F_metaI,');
       qratualizar.sql.add('metaII = :F_metaII,');
       qratualizar.sql.add('comissaoII = :F_comissaoII,');
       qratualizar.sql.add('agenda = :F_agenda');
       qratualizar.SQL.Add('where codigo ='+EdCodigo.Text);
       qratualizar.Params[0].Value := F_tipo;
       qratualizar.Params[1].Value := F_cnpj;
       qratualizar.Params[2].Value := F_ie;
       qratualizar.Params[3].Value := F_im;
       qratualizar.Params[4].Value := F_cpf;
       qratualizar.Params[5].Value := F_rg;
       qratualizar.Params[6].Value := F_nome;
       qratualizar.Params[7].Value := F_fantasia;
       qratualizar.Params[8].Value := F_contato;
       qratualizar.Params[9].Value := F_endereco;
       qratualizar.Params[10].Value := F_bairro;
       qratualizar.Params[11].Value := F_cidade;
       qratualizar.Params[12].Value := F_estado;
       qratualizar.Params[13].Value := F_cep;
       qratualizar.Params[14].Value := F_fone1;
       qratualizar.Params[15].Value := F_fone2;
       qratualizar.Params[16].Value := F_fone3;
       qratualizar.Params[17].Value := F_email;
       qratualizar.Params[18].Value := F_homepage;
       qratualizar.Params[19].Value := F_obs;
       qratualizar.Params[20].Value := F_dtnasc;
       qratualizar.Params[21].Value := F_cnh;
       qratualizar.Params[22].Value := F_dtcnh;
       qratualizar.Params[23].Value := F_funcao;
       qratualizar.Params[24].Value := F_ctps;
       qratualizar.Params[25].Value := F_PlanoSaude;
       qratualizar.Params[26].Value := F_situacao;
       qratualizar.Params[27].Value := F_apelido;
       qratualizar.Params[28].Value := F_Nfilhos;
       qratualizar.Params[29].Value := F_NDependentes;
       qratualizar.Params[30].Value := F_DtAdmissao;
       qratualizar.Params[31].Value := F_DtDemissao;
       qratualizar.Params[32].Value := F_filiacao;
       qratualizar.Params[33].Value := F_orgaoemissor;
       qratualizar.Params[34].Value := F_inss_pis;
       qratualizar.Params[35].Value := F_sexo;
       qratualizar.Params[36].Value := F_contacontabil;
       qratualizar.Params[37].Value := F_planoconta;
       qratualizar.Params[38].Value := F_comissao;
       qratualizar.Params[39].Value := F_salario;
       qratualizar.Params[40].Value := F_metaI;
       qratualizar.Params[41].Value := F_metaII;
       qratualizar.Params[42].Value := F_comissaoII;
       qratualizar.Params[43].Value := F_agenda;
       qratualizar.ExecSQL;
     end;
    dm.fornecedores.Close;
    dm.fornecedores.Open;
    Atualiza;
    habilita;
    dm.rastro.Close;
    dm.rastro.SQL.Clear;
    dm.rastro.SQL.Add('select * from rastro');
    dm.rastro.SQL.Add('where (1=2)');
    dm.rastro.Open;
    dm.rastro.Insert;
    dm.rastrodata.Value:=date;
    dm.rastrohora.Value:=TimeToStr(time);
    dm.rastrooperador.Value:=FrmPrincipal.sb.Panels[3].Text;
    dm.rastrorotina.Value:='FORNECEDOR';
    if tip='I' then
       dm.rastrooperacao.Value:='I'
    else
       dm.rastrooperacao.Value:='A';
    dm.rastrohistorico.Value:=ednome.Text;
    dm.rastrofavorecido.Value:=StrToInt(EdCodigo.Text);
    dm.rastro.Post;
    dm.rastro.Close;
end;

procedure TFrmCadfornecedores.FormShow(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  dm.fornecedores.Close;

  habilita;
  edpesquisa.SetFocus;
end;

procedure TFrmCadfornecedores.cbtipoExit(Sender: TObject);
begin
  if copy(cbtipo.Text,1,1)='J' then
     mecgc.setfocus
  else
     mecpf.setfocus;
  cbtipo.Color:=clWindow;
end;

procedure TFrmCadfornecedores.mecgcExit(Sender: TObject);
begin
      if mecgc.text<>'' then
         begin
            if TestaCnpj(mecgc.Text) then
               begin
                  if ednome.Text='' then
                     begin
                       dm.fornecedores.close;
                       dm.fornecedores.sql.clear;
                       dm.fornecedores.sql.add('select * from fornecedores');
                       dm.fornecedores.sql.add('where cnpj = '+chr(39)+mecgc.text+chr(39));
                       dm.fornecedores.open;
                       if dm.fornecedores.RecordCount>0 then
                          begin
                             showmessage('Fornecedor j� cadastrado!');
                             btcancelar.Click;
                          end;
                     end;
               end
               else
               begin
                  application.MessageBox('CNPJ inv�lido','Aten��o',mb_ok+mb_iconerror);
                  mecgc.SetFocus;
               end;
         end
         else
         begin
           if copy(cbtipo.Text,1,1)='J' then
              begin
                if Application.Messagebox ('Deseja prosseguir?','CNPJ n�o Informado', Mb_YesNo+mb_iconquestion) = id_no then
                   btcancelar.Click;
              end;
         end;
  mecgc.Color:=clWindow;
end;

procedure TFrmCadfornecedores.mecpfExit(Sender: TObject);
begin
      if mecpf.text<>'' then
         begin
            if testacpf(mecpf.Text) then
               begin
                  if ednome.Text='' then
                     begin
                       dm.fornecedores.close;
                       dm.fornecedores.sql.clear;
                       dm.fornecedores.sql.add('select * from fornecedores');
                       dm.fornecedores.sql.add('where cpf = '+chr(39)+mecpf.text+chr(39));
                       dm.fornecedores.open;
                       if dm.fornecedores.RecordCount>0 then
                          begin
                             showmessage('Fornecedor j� cadastrado!');
                             btcancelar.Click;
                          end;
                     end;
               end
               else
               begin
                  application.MessageBox('C.P.F. inv�lido','Aten��o',mb_ok+mb_iconerror);
                  mecpf.SetFocus;
               end;
         end
         else
         begin
           if copy(cbtipo.Text,1,1)='F' then
              begin
                if Application.Messagebox ('Deseja prosseguir?','CPF n�o Informado', Mb_YesNo+mb_iconquestion) = id_no then
                   btcancelar.Click;
              end;
         end;
  mecpf.Color:=clWindow;
end;

procedure TFrmCadfornecedores.btprimeiroClick(Sender: TObject);
begin
        dm.fornecedores.First;
        atualiza;
end;

procedure TFrmCadfornecedores.btanteriorClick(Sender: TObject);
begin
        dm.fornecedores.prior;
        atualiza;
end;

procedure TFrmCadfornecedores.btproximoClick(Sender: TObject);
begin
        dm.fornecedores.next;
        atualiza;
end;

procedure TFrmCadfornecedores.btultimoClick(Sender: TObject);
begin
        dm.fornecedores.last;
        atualiza;
end;

procedure TFrmCadfornecedores.DBGrid1DblClick(Sender: TObject);
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
  else if assigned(FrmCadProdutos) then
     begin
       if (dm.fornecedores.Active) and (dm.fornecedores.RecordCount>0) then
          begin
            FrmCadProdutos.edfornecedor.Text:=IntToStr(dm.fornecedorescodigo.value);
            FrmCadProdutos.edfornecedor.SelStart:=0;
            FrmCadProdutos.edfornecedor.SelLength:=length(FrmCadProdutos.edfornecedor.Text);
            modalresult := mrok;
          end
     end
  else if assigned(FrmEstoque) then
     begin
       if (dm.fornecedores.Active) and (dm.fornecedores.RecordCount>0) then
          begin
            FrmEstoque.edcliente.Text:=IntToStr(dm.fornecedorescodigo.value);
            FrmEstoque.edcliente.SelStart:=0;
            FrmEstoque.edcliente.SelLength:=length(FrmEstoque.edcliente.Text);
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

procedure TFrmCadfornecedores.DBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
     begin
        if assigned(FrmCadProdutos) then
           begin
             if (dm.fornecedores.Active) and (dm.fornecedores.RecordCount>0) then
                begin
                  FrmCadProdutos.edfornecedor.Text:=IntToStr(dm.fornecedorescodigo.value);
                  FrmCadProdutos.edfornecedor.SelStart:=0;
                  FrmCadProdutos.edfornecedor.SelLength:=length(FrmCadProdutos.edfornecedor.Text);
                  modalresult := mrok;
                end;
           end
        else if assigned(FrmPagar) then
           begin
             if (dm.fornecedores.Active) and (dm.fornecedores.RecordCount>0) then
                begin
                  FrmPagar.edfornecedor.Text:=IntToStr(dm.fornecedorescodigo.value);
                  FrmPagar.edfornecedor.SelStart:=0;
                  FrmPagar.edfornecedor.SelLength:=length(FrmPagar.edfornecedor.Text);
                  modalresult := mrok;
                end;
           end
        else if assigned(FrmEstoqueRel) then
           begin
             if (dm.fornecedores.Active) and (dm.fornecedores.RecordCount>0) then
                begin
                  FrmEstoqueRel.edcliente.Text:=IntToStr(dm.fornecedorescodigo.value);
                  FrmEstoqueRel.edcliente.SelStart:=0;
                  FrmEstoqueRel.edcliente.SelLength:=length(FrmEstoqueRel.edcliente.Text);
                  modalresult := mrok;
                end;
           end
        else if assigned(FrmEstoque) then
           begin
             if (dm.fornecedores.Active) and (dm.fornecedores.RecordCount>0) then
                begin
                  FrmEstoque.edcliente.Text:=IntToStr(dm.fornecedorescodigo.value);
                  FrmEstoque.edcliente.SelStart:=0;
                  FrmEstoque.edcliente.SelLength:=length(FrmEstoque.edcliente.Text);
                  modalresult := mrok;
                end;
           end
           else
           begin
             Atualiza;
             PageControl1.ActivePageIndex := 1;
           end;
     end;
end;

procedure TFrmCadfornecedores.rbcodigoClick(Sender: TObject);
begin
      dm.fornecedores.Close;
      edpesquisa.Text:='';
      edpesquisa.SetFocus;
end;

procedure TFrmCadfornecedores.edpesquisaExit(Sender: TObject);
begin
  if edpesquisa.text<>'' then
     begin
        if rbcodigo.Checked then
           begin
            dm.fornecedores.close;
            dm.fornecedores.sql.clear;
            dm.fornecedores.sql.add('select * from fornecedores');
            dm.fornecedores.sql.add('where codigo = '+edpesquisa.text);
            dm.fornecedores.open;
           end;
        if rbnome.Checked then
           begin
            dm.fornecedores.close;
            dm.fornecedores.sql.clear;
            dm.fornecedores.sql.add('select * from fornecedores');
            dm.fornecedores.sql.add('where nome like '+chr(39)+edpesquisa.text+'%'+chr(39));
            dm.fornecedores.open;
           end;
        if rbcpf.Checked then
           begin
            dm.fornecedores.close;
            dm.fornecedores.sql.clear;
            dm.fornecedores.sql.add('select * from fornecedores');
            dm.fornecedores.sql.add('where cpf = '+chr(39)+edpesquisa.text+chr(39));
            dm.fornecedores.open;
           end;
        if rbcnpj.Checked then
           begin
            dm.fornecedores.close;
            dm.fornecedores.sql.clear;
            dm.fornecedores.sql.add('select * from fornecedores');
            dm.fornecedores.sql.add('where cnpj = '+chr(39)+edpesquisa.text+chr(39));
            dm.fornecedores.open;
           end;
     end;
end;

procedure TFrmCadfornecedores.EdCodigoEnter(Sender: TObject);
begin
        ednome.SetFocus;
end;

procedure TFrmCadfornecedores.rbgeralClick(Sender: TObject);
begin
      dm.fornecedores.close;
      dm.fornecedores.sql.clear;
      dm.fornecedores.sql.add('select * from fornecedores');
      dm.fornecedores.sql.add('order by nome');
      dm.fornecedores.open;
      edpesquisa.Text:='';
      DBGrid1.SetFocus;
end;

procedure TFrmCadfornecedores.btrelatorioClick(Sender: TObject);
begin
      try
        Application.CreateForm(TFrmRelFornecedor, FrmRelFornecedor);
        FrmRelFornecedor.showmodal;
      finally
        FrmRelFornecedor.Release;
        FrmRelFornecedor:=nil;
      end;
end;

procedure TFrmCadfornecedores.mecgcEnter(Sender: TObject);
begin
  mecgc.Color:=$0080FFFF;
      if copy(cbtipo.Text,1,1)='F' then
         ednome.SetFocus;
end;

procedure TFrmCadfornecedores.mecpfEnter(Sender: TObject);
begin
  mecpf.Color:=$0080FFFF;
  if copy(cbtipo.Text,1,1)='J' then
     ednome.SetFocus;
end;

procedure TFrmCadfornecedores.BitBtn1Click(Sender: TObject);
begin
    close;
end;

procedure TFrmCadfornecedores.cbtipoEnter(Sender: TObject);
begin
  cbtipo.Color:=$0080FFFF;
end;

procedure TFrmCadfornecedores.edieEnter(Sender: TObject);
begin
  edie.Color:=$0080FFFF;
  if copy(cbtipo.Text,1,1)='F' then
     ednome.SetFocus;
end;

procedure TFrmCadfornecedores.edrgEnter(Sender: TObject);
begin
  edrg.Color:=$0080FFFF;
  if copy(cbtipo.Text,1,1)='J' then
     ednome.SetFocus;
end;

procedure TFrmCadfornecedores.ednomeEnter(Sender: TObject);
begin
  ednome.Color:=$0080FFFF;
end;

procedure TFrmCadfornecedores.edfantasiaEnter(Sender: TObject);
begin
  if edfantasia.Text='' then
     begin
       edfantasia.Text:=copy(ednome.Text,1,20);
       edfantasia.SelStart:=0;
       edfantasia.SelLength:=length(edfantasia.Text);
     end;
  edfantasia.Color:=$0080FFFF;
end;

procedure TFrmCadfornecedores.EdContatoEnter(Sender: TObject);
begin
  EdContato.Color:=$0080FFFF;
end;

procedure TFrmCadfornecedores.EdEnderecoEnter(Sender: TObject);
begin
  EdEndereco.Color:=$0080FFFF;
end;

procedure TFrmCadfornecedores.EdBairroEnter(Sender: TObject);
begin
  EdBairro.Color:=$0080FFFF;
end;

procedure TFrmCadfornecedores.EdCidadeEnter(Sender: TObject);
begin
  EdCidade.Color:=$0080FFFF;
end;

procedure TFrmCadfornecedores.cbestadoEnter(Sender: TObject);
begin
  cbestado.Color:=$0080FFFF;
end;

procedure TFrmCadfornecedores.mecepEnter(Sender: TObject);
begin
  mecep.Color:=$0080FFFF;
end;

procedure TFrmCadfornecedores.mefone1Enter(Sender: TObject);
begin
  mefone1.Color:=$0080FFFF;
end;

procedure TFrmCadfornecedores.mefone2Enter(Sender: TObject);
begin
  mefone2.Color:=$0080FFFF;
end;

procedure TFrmCadfornecedores.mefone3Enter(Sender: TObject);
begin
  mefone3.Color:=$0080FFFF;
end;

procedure TFrmCadfornecedores.EdemailEnter(Sender: TObject);
begin
  Edemail.Color:=$0080FFFF;
end;

procedure TFrmCadfornecedores.edhomeEnter(Sender: TObject);
begin
  edhome.Color:=$0080FFFF;
end;

procedure TFrmCadfornecedores.Memo1Enter(Sender: TObject);
begin
  Memo1.Color:=$0080FFFF;
end;

procedure TFrmCadfornecedores.EdCidadeExit(Sender: TObject);
begin
  EdCidade.Color:=clWindow;
end;

procedure TFrmCadfornecedores.edieExit(Sender: TObject);
begin
  edie.Color:=clWindow;
end;

procedure TFrmCadfornecedores.edimExit(Sender: TObject);
begin
  edim.Color:=clWindow;
end;

procedure TFrmCadfornecedores.edimEnter(Sender: TObject);
begin
  edim.Color:=$0080FFFF;
      if copy(cbtipo.Text,1,1)='F' then
         ednome.SetFocus;
end;

procedure TFrmCadfornecedores.edrgExit(Sender: TObject);
begin
  edrg.Color:=clWindow;
end;

procedure TFrmCadfornecedores.ednomeExit(Sender: TObject);
begin
  ednome.Color:=clWindow;
end;

procedure TFrmCadfornecedores.edfantasiaExit(Sender: TObject);
begin
  edfantasia.Color:=clWindow;
end;

procedure TFrmCadfornecedores.EdContatoExit(Sender: TObject);
begin
  EdContato.Color:=clWindow;
end;

procedure TFrmCadfornecedores.EdEnderecoExit(Sender: TObject);
begin
  EdEndereco.Color:=clWindow;
end;

procedure TFrmCadfornecedores.EdBairroExit(Sender: TObject);
begin
  EdBairro.Color:=clWindow;
end;

procedure TFrmCadfornecedores.cbestadoExit(Sender: TObject);
begin
  cbestado.Color:=clWindow;
end;

procedure TFrmCadfornecedores.mecepExit(Sender: TObject);
begin
  mecep.Color:=clWindow;
end;

procedure TFrmCadfornecedores.mefone1Exit(Sender: TObject);
begin
  mefone1.Color:=clWindow;
end;

procedure TFrmCadfornecedores.mefone2Exit(Sender: TObject);
begin
  mefone2.Color:=clWindow;
end;

procedure TFrmCadfornecedores.mefone3Exit(Sender: TObject);
begin
  mefone3.Color:=clWindow;
end;

procedure TFrmCadfornecedores.EdemailExit(Sender: TObject);
begin
  Edemail.Color:=clWindow;
end;

procedure TFrmCadfornecedores.edhomeExit(Sender: TObject);
begin
  edhome.Color:=clWindow;
end;

procedure TFrmCadfornecedores.Memo1Exit(Sender: TObject);
begin
  btgravar.SetFocus;
  Memo1.Color:=clWindow;
end;

procedure TFrmCadfornecedores.meorgaoEnter(Sender: TObject);
begin
  meorgao.Color:=$0080FFFF;
  if copy(cbtipo.Text,1,1)='J' then
     ednome.SetFocus;
end;

procedure TFrmCadfornecedores.meorgaoExit(Sender: TObject);
begin
  meorgao.Color:=clWindow;
end;

end.
