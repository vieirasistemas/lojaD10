unit UnitFrmCadClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, Mask, DBCtrls, ComCtrls, Grids, DBGrids,
  EditAlinhado, ExtCtrls, DB, DBTables, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, QRCtrls, QuickRpt, RLBarcode, RLReport, jpeg;

type
  TFrmCadClientes = class(TForm)
    PageControl1: TPageControl;
    t2: TTabSheet;
    t1: TTabSheet;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    rbnome: TRadioButton;
    rbcpf: TRadioButton;
    Label3: TLabel;
    edpesquisa: TEdit;
    rbgeral: TRadioButton;
    Panel1: TPanel;
    btnovo: TBitBtn;
    btgravar: TBitBtn;
    btalterar: TBitBtn;
    btexcluir: TBitBtn;
    btrelatorio: TBitBtn;
    btcancelar: TBitBtn;
    P_dados: TPanel;
    edrg: TEdit;
    Label45: TLabel;
    Label36: TLabel;
    Label25: TLabel;
    EdCodigo: TEdit;
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
    Label48: TLabel;
    cbsexo: TComboBox;
    Label46: TLabel;
    medtnasc: TMaskEdit;
    Label43: TLabel;
    Edemail: TEdit;
    Label44: TLabel;
    edhome: TEdit;
    BitBtn1: TBitBtn;
    btanterior: TBitBtn;
    btproximo: TBitBtn;
    qratualizar: TZQuery;
    QuickRep1: TQuickRep;
    PageFooterBand1: TQRBand;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    DetailBand1: TQRBand;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel16: TQRLabel;
    QRExpr17: TQRExpr;
    QRDBText5: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText1: TQRDBText;
    QRLabel3: TQRLabel;
    QRExpr1: TQRExpr;
    QRLabel12: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText11: TQRDBText;
    PageHeaderBand1: TQRBand;
    QRLabel19: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel20: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel21: TQRLabel;
    QRSysData3: TQRSysData;
    QRLabel18: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText8: TQRDBText;
    Query1: TZQuery;
    Query1codigo: TIntegerField;
    Query1tipo: TStringField;
    Query1cnpj: TStringField;
    Query1ie: TStringField;
    Query1im: TStringField;
    Query1cpf: TStringField;
    Query1rg: TStringField;
    Query1nome: TStringField;
    Query1contato: TStringField;
    Query1endereco: TStringField;
    Query1bairro: TStringField;
    Query1cidade: TStringField;
    Query1estado: TStringField;
    Query1cep: TStringField;
    Query1fone1: TStringField;
    Query1fone2: TStringField;
    Query1fone3: TStringField;
    Query1filiacao: TStringField;
    Query1sexo: TStringField;
    Query1dtnasc: TDateField;
    Query1vendedor: TIntegerField;
    Query1LimiteCredito: TFloatField;
    Query1BloquearVenda: TStringField;
    Query1segmento: TIntegerField;
    Query1email: TStringField;
    Query1homepage: TStringField;
    Query1obs: TStringField;
    Query1empresa: TIntegerField;
    Query1fantasia: TStringField;
    Query1taxadesc: TFloatField;
    Query1dias: TIntegerField;
    Query1localcob: TStringField;
    Query1cadastro: TDateField;
    Query1ultcompra: TDateField;
    Query1negativacao: TStringField;
    Query1DescEsp: TFloatField;
    Query1DiasPagto: TStringField;
    Query1Dias30: TStringField;
    Query1formapagto: TStringField;
    Query1Segunda: TStringField;
    Query1Terca: TStringField;
    Query1Quarta: TStringField;
    Query1Quinta: TStringField;
    Query1Sexta: TStringField;
    Query1Sabado: TStringField;
    Query1Domingo: TStringField;
    Query1Ruptura: TStringField;
    Query1VlrUltCompra: TFloatField;
    Query1VlrComprado: TFloatField;
    Query1Vencidos: TFloatField;
    Query1DocsVencidos: TFloatField;
    ZQuery1: TZQuery;
    IntegerField1: TIntegerField;
    DataSource1: TDataSource;
    qrtotalP: TZQuery;
    qrtotalPcredito: TFloatField;
    qrtotalPdebito: TFloatField;
    BitBtn6: TBitBtn;
    rbcodigo: TRadioButton;
    edcpf: TEdit;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnovoClick(Sender: TObject);
    procedure btalterarClick(Sender: TObject);
    procedure EdCodigoEnter(Sender: TObject);
    procedure btgravarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btcancelarClick(Sender: TObject);
    procedure btprimeiroClick(Sender: TObject);
    procedure btanteriorClick(Sender: TObject);
    procedure btproximoClick(Sender: TObject);
    procedure btultimoClick(Sender: TObject);
    procedure btexcluirClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure edpesquisaExit(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rbcodigoClick(Sender: TObject);
    procedure medtnascExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btrelatorioClick(Sender: TObject);
    procedure rbgeralClick(Sender: TObject);
    procedure rbnomeClick(Sender: TObject);
    procedure rbfantasiaClick(Sender: TObject);
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
    procedure cbsexoEnter(Sender: TObject);
    procedure medtnascEnter(Sender: TObject);
    procedure EdemailEnter(Sender: TObject);
    procedure edhomeEnter(Sender: TObject);
    procedure edrgExit(Sender: TObject);
    procedure ednomeExit(Sender: TObject);
    procedure EdEnderecoExit(Sender: TObject);
    procedure EdBairroExit(Sender: TObject);
    procedure EdCidadeExit(Sender: TObject);
    procedure cbestadoExit(Sender: TObject);
    procedure mecepExit(Sender: TObject);
    procedure mefone1Exit(Sender: TObject);
    procedure mefone2Exit(Sender: TObject);
    procedure mefone3Exit(Sender: TObject);
    procedure cbsexoExit(Sender: TObject);
    procedure EdemailExit(Sender: TObject);
    procedure edhomeExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn6Click(Sender: TObject);
    procedure edcpfEnter(Sender: TObject);
    procedure edcpfExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function  ValidateFields: boolean;
  end;

var
  FrmCadClientes: TFrmCadClientes;
  novo : boolean;
  qry : TZQuery;

implementation

uses Unitdm, UnitFrmPrincipal, UnitFrmReceber, UnitFrmReceberImp,
  UnitFrmRecibo, Math, UnitFrmEstoque, UnitFrmVendaRefaturar;

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

function TFrmCadClientes.ValidateFields: boolean;
begin
    if trim ( ednome.text ) = '' then
       begin
          MessageBox( handle , 'Nome do Cliente Deve Ser Preenchido' ,
                               'Erro de Preenchimento de Campo'   ,
                               mb_ok+mb_iconstop );
          ednome.setfocus;
          Result := false;
          exit;
       end;
    Result := true ;
end;

procedure Atualiza;
begin
  FrmCadClientes.edcpf.Text:=dm.Clientescpf.value;
  FrmCadClientes.edrg.Text:=dm.Clientesrg.value;
  FrmCadClientes.edcodigo.Text:=FloatToStr(dm.Clientescodigo.value);
  FrmCadClientes.ednome.Text:=dm.Clientesnome.value;
  FrmCadClientes.EdEndereco.Text:=dm.Clientesendereco.value;
  FrmCadClientes.EdBairro.Text:=dm.Clientesbairro.value;
  FrmCadClientes.EdCidade.Text:=dm.Clientescidade.value;
  FrmCadClientes.cbestado.Text:=dm.Clientesestado.value;
  FrmCadClientes.mecep.Text:=dm.Clientescep.value;
  FrmCadClientes.mefone1.Text:=dm.Clientesfone1.value;
  FrmCadClientes.mefone2.Text:=dm.Clientesfone2.value;
  FrmCadClientes.mefone3.Text:=dm.Clientesfone3.value;
  if dm.Clientessexo.value='' then
     FrmCadClientes.cbsexo.Text:=''
  else
  begin
     if dm.Clientessexo.value='M' then
        FrmCadClientes.cbsexo.Text:='MASCULINO';
     if dm.Clientessexo.value='F' then
        FrmCadClientes.cbsexo.Text:='FEMININO';
  end;
  if dm.Clientesdtnasc.value<>StrToDate('30/12/1899') then
     FrmCadClientes.medtnasc.Text:=DateToStr(dm.Clientesdtnasc.value)
  else
     FrmCadClientes.medtnasc.Text:='';

  FrmCadClientes.Edemail.Text:=dm.Clientesemail.value;
  FrmCadClientes.edhome.Text:=dm.clientesinstagran.value;
end;

procedure desabilita;
begin
  FrmCadClientes.btanterior.enabled:=false;
  FrmCadClientes.btproximo.enabled:=false;
  FrmCadClientes.btnovo.enabled:=false;
  FrmCadClientes.btalterar.enabled:=false;
  FrmCadClientes.btexcluir.enabled:=false;
  FrmCadClientes.btrelatorio.enabled:=false;
  FrmCadClientes.btgravar.enabled:=true;
  FrmCadClientes.btcancelar.Caption:='Cancelar';
  FrmCadClientes.P_dados.enabled:=true;
end;

procedure TFrmCadClientes.EdCidadeEnter(Sender: TObject);
begin
  EdCidade.Color:=$0080FFFF;
end;

procedure habilita;
begin
{  dm.usuarios.Open;
  dm.usuarios.Locate('nome',FrmPrincipal.sb.Panels[3].Text,[]);
  if dm.usuariosclientes.value='1' then
     begin
        FrmCadClientes.btnovo.Enabled:=false;
        FrmCadClientes.btexcluir.Enabled:=false;
        FrmCadClientes.btalterar.Enabled:=false;
        FrmCadClientes.btprimeiro.Enabled:=true;
        FrmCadClientes.btanterior.Enabled:=true;
        FrmCadClientes.btproximo.Enabled:=true;
        FrmCadClientes.btultimo.Enabled:=true;
        FrmCadClientes.btrelatorio.enabled:=false;
     end
  else if dm.usuariosclientes.value='2' then
     begin
        FrmCadClientes.btnovo.Enabled:=true;
        FrmCadClientes.btexcluir.Enabled:=false;
        FrmCadClientes.btalterar.Enabled:=false;
        FrmCadClientes.btprimeiro.Enabled:=true;
        FrmCadClientes.btanterior.Enabled:=true;
        FrmCadClientes.btproximo.Enabled:=true;
        FrmCadClientes.btultimo.Enabled:=true;
        FrmCadClientes.btrelatorio.enabled:=false;
     end
  else if dm.usuariosclientes.value='3' then
     begin
        FrmCadClientes.btnovo.Enabled:=true;
        FrmCadClientes.btexcluir.Enabled:=false;
        FrmCadClientes.btalterar.Enabled:=true;
        FrmCadClientes.btprimeiro.Enabled:=true;
        FrmCadClientes.btanterior.Enabled:=true;
        FrmCadClientes.btproximo.Enabled:=true;
        FrmCadClientes.btultimo.Enabled:=true;
        FrmCadClientes.btrelatorio.enabled:=false;
     end
  else if dm.usuariosclientes.value='4' then
     begin
        FrmCadClientes.btnovo.Enabled:=true;
        FrmCadClientes.btexcluir.Enabled:=true;
        FrmCadClientes.btalterar.Enabled:=true;
        FrmCadClientes.btprimeiro.Enabled:=true;
        FrmCadClientes.btanterior.Enabled:=true;
        FrmCadClientes.btproximo.Enabled:=true;
        FrmCadClientes.btultimo.Enabled:=true;
        FrmCadClientes.btrelatorio.enabled:=true;
     end
  else if dm.usuariosclientes.value='5' then
     begin
}        FrmCadClientes.btnovo.Enabled:=true;
        FrmCadClientes.btexcluir.Enabled:=true;
        FrmCadClientes.btalterar.Enabled:=true;
        FrmCadClientes.btanterior.Enabled:=true;
        FrmCadClientes.btproximo.Enabled:=true;
        FrmCadClientes.btrelatorio.enabled:=true;
//     end;
  FrmCadClientes.btgravar.enabled:=false;
  FrmCadClientes.P_dados.enabled:=false;
  FrmCadClientes.btcancelar.Caption:='Sair';
end;

procedure limpar;
begin
  FrmCadClientes.edcpf.Text:='';
  FrmCadClientes.edrg.Text:='';
  FrmCadClientes.EdCodigo.Text:='';
  FrmCadClientes.ednome.Text:='';
  FrmCadClientes.EdEndereco.Text:='';
  FrmCadClientes.EdBairro.Text:='';
  FrmCadClientes.EdCidade.Text:='';
  FrmCadClientes.cbestado.Text:='';
  FrmCadClientes.mecep.Text:='';
  FrmCadClientes.mefone1.Text:='';
  FrmCadClientes.mefone2.Text:='';
  FrmCadClientes.mefone3.Text:='';
  FrmCadClientes.cbsexo.Text:='';
  FrmCadClientes.medtnasc.Text:='';
  FrmCadClientes.Edemail.Text:='';
  FrmCadClientes.edhome.Text:='';
end;

procedure ExcluirCliente;
begin
 if Application.Messagebox ('Deseja excluir o registro?','Gestor', Mb_YesNoCancel+mb_iconquestion) = id_yes then
    begin
      R_hora:=TimeToStr(time);
      FrmCadClientes.qratualizar.Close;
      FrmCadClientes.qratualizar.SQL.Clear;
      FrmCadClientes.qratualizar.SQL.Add('CALL sp_i_rastro(:r_data, :r_hora, :r_operador, :r_rotina, :r_operacao, :r_historico, :r_favorecido, :r_valor, :r_obs)');
      FrmCadClientes.qratualizar.Params[0].Value := date;
      FrmCadClientes.qratualizar.Params[1].Value := R_hora;
      FrmCadClientes.qratualizar.Params[2].Value := FrmPrincipal.sb.Panels[3].Text;
      FrmCadClientes.qratualizar.Params[3].Value := 'CLIENTE';
      FrmCadClientes.qratualizar.Params[4].Value := 'E';
      FrmCadClientes.qratualizar.Params[5].Value := FrmCadClientes.edcpf.Text+' '+
      FrmCadClientes.ednome.Text;
      FrmCadClientes.qratualizar.Params[6].Value := StrToInt(FrmCadClientes.EdCodigo.Text);
      FrmCadClientes.qratualizar.Params[7].Value := 0;
      FrmCadClientes.qratualizar.Params[8].Value := '';
      FrmCadClientes.qratualizar.ExecSQL;

      FrmCadClientes.qratualizar.close;
      FrmCadClientes.qratualizar.sql.clear;
      FrmCadClientes.qratualizar.sql.add('delete from clientes');
      FrmCadClientes.qratualizar.sql.add('where codigo = '+FrmCadClientes.edcodigo.text);
      FrmCadClientes.qratualizar.ExecSQL;
      dm.Clientes.Close;
      dm.Clientes.Open;
      limpar;
    end;
end;

procedure TFrmCadClientes.FormShow(Sender: TObject);
begin
      dm.parametros.Close;
      dm.parametros.Open;
      dm.Clientes.Close;
      dm.Clientes.SQL.Clear;
      dm.Clientes.SQL.Add('select * from clientes');

      PageControl1.ActivePageIndex := 0;
      edpesquisa.SetFocus;
      dm.parametros.Open;
      habilita;
end;

procedure TFrmCadClientes.SpeedButton1Click(Sender: TObject);
begin
        close;
end;

procedure TFrmCadClientes.btnovoClick(Sender: TObject);
begin
      novo:=true;
      limpar;
      desabilita;
      edcpf.SetFocus;
end;

procedure TFrmCadClientes.btalterarClick(Sender: TObject);
begin
  if (EdCodigo.text<>'') then
     begin
       novo:=false;
       desabilita;
       edcpf.SetFocus;
     end
     else
       showmessage('Cadastre um novo Cliente!');
end;

procedure TFrmCadClientes.EdCodigoEnter(Sender: TObject);
begin
        ednome.SetFocus;
end;

procedure TFrmCadClientes.btgravarClick(Sender: TObject);
var
tip:string;
begin
  if novo=true then
     begin
       qratualizar.Close;
       qratualizar.SQL.Clear;
       qratualizar.SQL.Add('CALL sp_i_clientes(:c_cpf, :c_rg, :c_nome, :c_endereco, :c_bairro, :c_cidade, :c_estado, :c_cep, :c_fone1, :c_fone2, :c_fone3, :c_sexo, :c_dtnasc, :c_email, :c_instagran)');
       qratualizar.Params[0].Value := edcpf.Text;
       qratualizar.Params[1].Value := edrg.Text;
       qratualizar.Params[2].Value := ednome.Text;
       qratualizar.Params[3].Value := EdEndereco.Text;
       qratualizar.Params[4].Value := EdBairro.Text;
       qratualizar.Params[5].Value := EdCidade.Text;
       qratualizar.Params[6].Value := cbestado.Text;
       qratualizar.Params[7].Value := mecep.Text;
       qratualizar.Params[8].Value := mefone1.Text;
       qratualizar.Params[9].Value := mefone2.Text;
       qratualizar.Params[10].Value := mefone3.Text;
       if cbsexo.Text<>'' then
          qratualizar.Params[11].Value := copy(cbsexo.Text,1,1)
       else
          qratualizar.Params[11].Value := '';
       if medtnasc.Text<>'  /  /    ' then
          qratualizar.Params[12].Value := StrToDate(medtnasc.Text)
       else
          qratualizar.Params[12].Value := StrToDate('99/99/9999');
       qratualizar.Params[13].Value := Edemail.Text;
       qratualizar.Params[14].Value := edhome.Text;
       qratualizar.ExecSQL;

       tip:='I';
     end
     else
     begin
       qratualizar.Close;
       qratualizar.SQL.Clear;
       qratualizar.SQL.Add('CALL sp_a_clientes(:c_codigo, :c_cpf, :c_rg, :c_nome, :c_endereco, :c_bairro, :c_cidade, :c_estado, :c_cep, :c_fone1, :c_fone2, :c_fone3, :c_sexo, :c_dtnasc, :c_email, :c_instagran)');
       qratualizar.Params[0].Value := EdCodigo.Text;
       qratualizar.Params[1].Value := edcpf.Text;
       qratualizar.Params[2].Value := edcpf.Text;
       qratualizar.Params[3].Value := edrg.Text;
       qratualizar.Params[4].Value := ednome.Text;
       qratualizar.Params[5].Value := EdEndereco.Text;
       qratualizar.Params[6].Value := EdBairro.Text;
       qratualizar.Params[7].Value := EdCidade.Text;
       qratualizar.Params[8].Value := cbestado.Text;
       qratualizar.Params[9].Value := mecep.Text;
       qratualizar.Params[10].Value := mefone1.Text;
       qratualizar.Params[11].Value := mefone2.Text;
       qratualizar.Params[12].Value := mefone3.Text;
       if cbsexo.Text<>'' then
          qratualizar.Params[13].Value := copy(cbsexo.Text,1,1)
       else
          qratualizar.Params[13].Value := '';
       if medtnasc.Text<>'  /  /    ' then
          qratualizar.Params[14].Value := StrToDate(medtnasc.Text)
       else
          qratualizar.Params[14].Value := StrToDate('00/00/0000');
       qratualizar.Params[15].Value := Edemail.Text;
       qratualizar.Params[16].Value := edhome.Text;
       qratualizar.ExecSQL;
      end;
  habilita;
  R_hora:=TimeToStr(time);
  qratualizar.Close;
  qratualizar.SQL.Clear;
  qratualizar.SQL.Add('CALL sp_i_rastro(:r_data, :r_hora, :r_operador, :r_rotina, :r_operacao, :r_historico, :r_favorecido, :r_valor, :r_obs)');
  qratualizar.Params[0].Value := date;
  qratualizar.Params[1].Value := R_hora;
  qratualizar.Params[2].Value := FrmPrincipal.sb.Panels[3].Text;
  qratualizar.Params[3].Value := 'CLIENTE';
  qratualizar.Params[4].Value := tip;
  qratualizar.Params[5].Value := ednome.Text;
  if EdCodigo.Text<>'' then
     qratualizar.Params[6].Value := StrToInt(EdCodigo.Text)
  else
     qratualizar.Params[6].Value := 0;
  qratualizar.Params[7].Value := 0;
  qratualizar.Params[8].Value := '';
  qratualizar.ExecSQL;
end;

procedure TFrmCadClientes.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrmCadClientes.btcancelarClick(Sender: TObject);
begin
  if btnovo.Enabled=false then
     begin
        habilita;
        limpar;
     end
     else
        close;
end;

procedure TFrmCadClientes.btprimeiroClick(Sender: TObject);
begin
        dm.Clientes.First;
        atualiza;
end;

procedure TFrmCadClientes.btanteriorClick(Sender: TObject);
begin
        dm.Clientes.prior;
        atualiza;
end;

procedure TFrmCadClientes.btproximoClick(Sender: TObject);
begin
        dm.Clientes.next;
        atualiza;
end;

procedure TFrmCadClientes.btultimoClick(Sender: TObject);
begin
        dm.Clientes.last;
        atualiza;
end;

procedure TFrmCadClientes.btexcluirClick(Sender: TObject);
begin
      if EdCodigo.text='' then
         begin
           application.MessageBox('Selecione um Cliente','Atenção',mb_ok+mb_iconinformation);
           PageControl1.ActivePageIndex := 0;
           edpesquisa.SetFocus;
         end
         else
         begin
           check:=false;
           dm.DocReceber.close;
           dm.DocReceber.sql.clear;
           dm.docreceber.sql.add('select * from docreceber');
           dm.docreceber.sql.add('where cliente = '+edcodigo.text);
           dm.docreceber.open;
           if dm.docreceber.RecordCount>0 then
              check:=true;

           if check=true then
              application.MessageBox('Cliente com Movimentação','Atenção',mb_ok+MB_ICONWARNING)
           else
              ExcluirCliente;
         end;
end;

procedure TFrmCadClientes.DBGrid1DblClick(Sender: TObject);
begin
  Atualiza;
  PageControl1.ActivePageIndex := 1;
end;

procedure TFrmCadClientes.edpesquisaExit(Sender: TObject);
begin
  if edpesquisa.text<>'' then
     begin
       dm.Clientes.close;
       dm.Clientes.sql.clear;
       dm.Clientes.sql.add('select * from clientes');
       if rbcodigo.Checked then
          dm.clientes.sql.add('where codigo = '+edpesquisa.text)
       else if rbnome.Checked then
          dm.Clientes.sql.add('where nome like '+chr(39)+'%'+edpesquisa.text+'%'+chr(39))
       else if rbcpf.Checked then
          dm.Clientes.sql.add('where cpf = '+chr(39)+edpesquisa.text+chr(39));
       dm.Clientes.sql.add('order by nome');
       dm.Clientes.open;
     end;
end;

procedure TFrmCadClientes.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
     begin
        if assigned(FrmReceber) then
           begin
             if (dm.Clientes.Active) and (dm.Clientes.RecordCount>0) then
                begin
                  if FrmReceber.btnovo.Enabled=false then
                     begin
                      FrmReceber.edcliente.Text:=IntToStr(dm.Clientescodigo.value);
                      FrmReceber.edcliente.SelStart:=0;
                      FrmReceber.edcliente.SelLength:=length(FrmReceber.edcliente.Text);
                     end
                     else
                     begin
                      FrmReceber.edclienteI.Text:=IntToStr(dm.Clientescodigo.value);
                      FrmReceber.edclienteI.SelStart:=0;
                      FrmReceber.edclienteI.SelLength:=length(FrmReceber.edclienteI.Text);
                      FrmReceber.edclienteII.Text:=IntToStr(dm.Clientescodigo.value);
                      FrmReceber.edclienteII.SelStart:=0;
                      FrmReceber.edclienteII.SelLength:=length(FrmReceber.edclienteII.Text);
                     end;
                  modalresult := mrok;
                end;
           end
        else if assigned(FrmReceberImp) then
           begin
             if (dm.Clientes.Active) and (dm.Clientes.RecordCount>0) then
                begin
                  FrmReceberImp.edclienteI.Text:=IntToStr(dm.Clientescodigo.value);
                  FrmReceberImp.edclienteI.SelStart:=0;
                  FrmReceberImp.edclienteI.SelLength:=length(FrmReceberImp.edclienteI.Text);
                  modalresult := mrok;
                end;
           end
        else if assigned(FrmEstoque) then
           begin
             if (dm.Clientes.Active) and (dm.Clientes.RecordCount>0) then
                begin
                  FrmEstoque.edcliente.Text:=IntToStr(dm.clientescodigo.value);
                  FrmEstoque.edcliente.SelStart:=0;
                  FrmEstoque.edcliente.SelLength:=length(FrmEstoque.edcliente.Text);
                  modalresult := mrok;
                end
           end
        else if assigned(FrmVendaRefaturar) then
           begin
             if (dm.Clientes.Active) and (dm.Clientes.RecordCount>0) then
                begin
                  FrmVendaRefaturar.edcliente.Text:=IntToStr(dm.clientescodigo.value);
                  FrmVendaRefaturar.edcliente.SelStart:=0;
                  FrmVendaRefaturar.edcliente.SelLength:=length(FrmVendaRefaturar.edcliente.Text);
                  modalresult := mrok;
                end
           end
        else if assigned(FrmRecibo) then
           begin
             if (dm.Clientes.Active) and (dm.Clientes.RecordCount>0) then
                begin
                  FrmRecibo.mecpf.Text:=dm.clientescpf.value;
                  FrmRecibo.edsacado.Text:=dm.clientesnome.Value;
                  FrmRecibo.mecpf.SelStart:=0;
                  FrmRecibo.mecpf.SelLength:=length(FrmRecibo.mecpf.Text);
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

procedure TFrmCadClientes.rbcodigoClick(Sender: TObject);
begin
      dm.Clientes.close;
      edpesquisa.Text:='';
      edpesquisa.SetFocus;
end;

procedure TFrmCadClientes.medtnascExit(Sender: TObject);
begin
      if medtnasc.text<>'  /  /    ' then
      Try
         StrToDate(medtnasc.Text) ;
      Except
      begin
         application.MessageBox('Data Inválida!','Atenção',mb_Ok+mb_iconerror);
         medtnasc.setfocus;
      end;
      end;
  medtnasc.Color:=clWindow;
end;

procedure TFrmCadClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        dm.Clientes.close;
        dm.Clientes.sql.clear;
        dm.Clientes.sql.add('select * from clientes order by codigo');
end;

procedure TFrmCadClientes.btrelatorioClick(Sender: TObject);
begin
     if EdCodigo.Text<>'' then
        begin
               Query1.close;
               Query1.open;
               Query1.Filter:='codigo  = '+EdCodigo.text;
               Query1.Filtered:=true;
               Quickrep1.preview;
        end
        else
        begin
          application.MessageBox('Escolha um Cliente','Atenção',mb_ok+mb_iconerror);
        end;
end;

procedure TFrmCadClientes.rbgeralClick(Sender: TObject);
begin
  dm.Clientes.close;
  dm.Clientes.sql.clear;
  dm.Clientes.sql.add('select * from clientes');
  dm.Clientes.sql.add('order by nome');
  dm.Clientes.open;

  edpesquisa.Text:='';
  DBGrid1.SetFocus;
end;

procedure TFrmCadClientes.rbnomeClick(Sender: TObject);
begin
      dm.Clientes.close;
      edpesquisa.Text:='';
      edpesquisa.SetFocus;
end;

procedure TFrmCadClientes.rbfantasiaClick(Sender: TObject);
begin
      dm.Clientes.close;
      edpesquisa.Text:='';
      edpesquisa.SetFocus;
end;

procedure TFrmCadClientes.BitBtn1Click(Sender: TObject);
begin
    close;
end;

procedure TFrmCadClientes.edrgEnter(Sender: TObject);
begin
  edrg.Color:=$0080FFFF;
end;

procedure TFrmCadClientes.ednomeEnter(Sender: TObject);
begin
  ednome.Color:=$0080FFFF;
end;

procedure TFrmCadClientes.EdEnderecoEnter(Sender: TObject);
begin
  EdEndereco.Color:=$0080FFFF;
end;

procedure TFrmCadClientes.EdBairroEnter(Sender: TObject);
begin
  EdBairro.Color:=$0080FFFF;
end;

procedure TFrmCadClientes.cbestadoEnter(Sender: TObject);
begin
  cbestado.Color:=$0080FFFF;
end;

procedure TFrmCadClientes.mecepEnter(Sender: TObject);
begin
  mecep.Color:=$0080FFFF;
end;

procedure TFrmCadClientes.mefone1Enter(Sender: TObject);
begin
  mefone1.Color:=$0080FFFF;
end;

procedure TFrmCadClientes.mefone2Enter(Sender: TObject);
begin
  mefone2.Color:=$0080FFFF;
end;

procedure TFrmCadClientes.mefone3Enter(Sender: TObject);
begin
  mefone3.Color:=$0080FFFF;
end;

procedure TFrmCadClientes.cbsexoEnter(Sender: TObject);
begin
  cbsexo.Color:=$0080FFFF;
end;

procedure TFrmCadClientes.medtnascEnter(Sender: TObject);
begin
  medtnasc.Color:=$0080FFFF;
end;

procedure TFrmCadClientes.EdemailEnter(Sender: TObject);
begin
  Edemail.Color:=$0080FFFF;
end;

procedure TFrmCadClientes.edhomeEnter(Sender: TObject);
begin
  edhome.Color:=$0080FFFF;
end;

procedure TFrmCadClientes.edrgExit(Sender: TObject);
begin
  edrg.Color:=clWindow;
end;

procedure TFrmCadClientes.ednomeExit(Sender: TObject);
begin
  ednome.Color:=clWindow;
end;

procedure TFrmCadClientes.EdEnderecoExit(Sender: TObject);
begin
  EdEndereco.Color:=clWindow;
end;

procedure TFrmCadClientes.EdBairroExit(Sender: TObject);
begin
  EdBairro.Color:=clWindow;
end;

procedure TFrmCadClientes.EdCidadeExit(Sender: TObject);
begin
  EdCidade.Color:=clWindow;
end;

procedure TFrmCadClientes.cbestadoExit(Sender: TObject);
begin
  cbestado.Color:=clWindow;
end;

procedure TFrmCadClientes.mecepExit(Sender: TObject);
begin
  mecep.Color:=clWindow;
end;

procedure TFrmCadClientes.mefone1Exit(Sender: TObject);
begin
  mefone1.Color:=clWindow;
end;

procedure TFrmCadClientes.mefone2Exit(Sender: TObject);
begin
  mefone2.Color:=clWindow;
end;

procedure TFrmCadClientes.mefone3Exit(Sender: TObject);
begin
  mefone3.Color:=clWindow;
end;

procedure TFrmCadClientes.cbsexoExit(Sender: TObject);
begin
  cbsexo.Color:=clWindow;
end;

procedure TFrmCadClientes.EdemailExit(Sender: TObject);
begin
  Edemail.Color:=clWindow;
end;

procedure TFrmCadClientes.edhomeExit(Sender: TObject);
begin
  edhome.Color:=clWindow;
end;

procedure TFrmCadClientes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_escape then
     close;
end;

procedure TFrmCadClientes.BitBtn6Click(Sender: TObject);
begin
  try
    dm.ZConnection1.Connected:=false;
    dm.ZConnection1.Database:='vieir463_gestor_caramelle';
    dm.ZConnection1.HostName:='vieirasistemas.com.br';
    dm.ZConnection1.User:='vieir463_cliente';
    dm.ZConnection1.Password:='AW3se4DR5ft6*#';
    dm.ZConnection1.Connected:=true;
  except
    application.messagebox('Tente Novamente','Atenção! Sistema Fora do Ar',mb_ok+mb_iconexclamation);
  end;
end;

procedure TFrmCadClientes.edcpfEnter(Sender: TObject);
begin
  edcpf.Color:=$0080FFFF;
end;

procedure TFrmCadClientes.edcpfExit(Sender: TObject);
begin
  if edcpf.text<>'' then
     begin
        if ednome.Text='' then
           begin
             qry              :=  TZQuery.Create(nil);
             qry.Connection   :=  dm.ZConnection1;
             qry.SQL.Add('select cpf from clientes');
             qry.sql.add('where cpf = '+chr(39)+edcpf.Text+chr(39));
             qry.Open;
             if qry.RecordCount>0 then
                begin
                   showmessage('Cliente já cadastrado!');
                   btcancelar.Click;
                end;
             qry.Free;
           end;
     end
     else
     begin
        if Application.Messagebox ('Deseja prosseguir?','CNPJ/CPF Obrigatório', Mb_YesNo+mb_iconquestion) = id_no then
           btcancelar.SetFocus;
     end;
  edcpf.Color:=clWindow;
end;

end.
