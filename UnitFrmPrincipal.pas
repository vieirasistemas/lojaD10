unit UnitFrmPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Buttons, ExtCtrls, ComCtrls, jpeg, DB, 
  ZAbstractRODataset, ZAbstractDataset, ZDataset, StdCtrls, Gauges;

type
  TFrmPrincipal = class(TForm)
    Timer1: TTimer;
    sb: TStatusBar;
    Panel1: TPanel;
    SpeedButton9: TSpeedButton;
    btclientes: TSpeedButton;
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Clientes1: TMenuItem;
    Fornecedores1: TMenuItem;
    N3: TMenuItem;
    Parmetros1: TMenuItem;
    Usurios1: TMenuItem;
    Administrativo1: TMenuItem;
    ContasaReceber1: TMenuItem;
    ContasaPagar1: TMenuItem;
    ContasCorrentes1: TMenuItem;
    Financeiro1: TMenuItem;
    PlanodeContas1: TMenuItem;
    Relatrios2: TMenuItem;
    Cadastrais1: TMenuItem;
    Clientes3: TMenuItem;
    Fornecedores3: TMenuItem;
    Financeiros1: TMenuItem;
    AutorizaodePagamento1: TMenuItem;
    DocumentosReceber1: TMenuItem;
    DocumentosPagar1: TMenuItem;
    ExtratodeConta1: TMenuItem;
    CentrodeCusto3: TMenuItem;
    MapadeFaturamento1: TMenuItem;
    MapadeDesembolso1: TMenuItem;
    Resumo2: TMenuItem;
    Ferramentas1: TMenuItem;
    AlterarSenha1: TMenuItem;
    Rastro1: TMenuItem;
    Sobre1: TMenuItem;
    BalanoRazo1: TMenuItem;
    ComissodeVendedores1: TMenuItem;
    Grupos1: TMenuItem;
    Produtos1: TMenuItem;
    N2Movimentao1: TMenuItem;
    Estoque1: TMenuItem;
    NotaFiscal1: TMenuItem;
    qratualizar: TZQuery;
    Operacionais1: TMenuItem;
    EstoqueFsico1: TMenuItem;
    EtiquetasZebra1: TMenuItem;
    Panel2: TPanel;
    DemonstrativoPlanodeContasAnual1: TMenuItem;
    Gerenciais1: TMenuItem;
    GerenciaisCurvaABC1: TMenuItem;
    Vendedores1: TMenuItem;
    Image1: TImage;
    ConectarBD1: TMenuItem;
    CartesdeCrdito1: TMenuItem;
    AniversariantesdoMs1: TMenuItem;
    GrficoVendasporAno1: TMenuItem;
    Gauge1: TGauge;
    N2: TMenuItem;
    SpeedButton1: TSpeedButton;
    btvalegas: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Venda1: TMenuItem;
    VendadeProdutos1: TMenuItem;
    Consultar1: TMenuItem;
    Relatrio1: TMenuItem;
    LiberarSistema1: TMenuItem;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SpeedButton9Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
    procedure Parmetros1Click(Sender: TObject);
    procedure Usurios1Click(Sender: TObject);
    procedure ContasaReceber1Click(Sender: TObject);
    procedure ContasaPagar1Click(Sender: TObject);
    procedure ContasCorrentes1Click(Sender: TObject);
    procedure Financeiro1Click(Sender: TObject);
    procedure PlanodeContas1Click(Sender: TObject);
    procedure DepsitoCheques1Click(Sender: TObject);
    procedure Financeiro2Click(Sender: TObject);
    procedure AlterarSenha1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure AutorizaodePagamento1Click(Sender: TObject);
    procedure BalanoRazo1Click(Sender: TObject);
    procedure DocumentosReceber1Click(Sender: TObject);
    procedure DocumentosPagar1Click(Sender: TObject);
    procedure ExtratodeConta1Click(Sender: TObject);
    procedure CentrodeCusto3Click(Sender: TObject);
    procedure MapadeFaturamento1Click(Sender: TObject);
    procedure MapadeDesembolso1Click(Sender: TObject);
    procedure Resumo2Click(Sender: TObject);
    procedure Grupos1Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure Estoque1Click(Sender: TObject);
    procedure NotaFiscal1Click(Sender: TObject);
    procedure EstoqueFsico1Click(Sender: TObject);
    procedure FechamentodeVendas1Click(Sender: TObject);
    procedure Clientes3Click(Sender: TObject);
    procedure EtiquetasZebra1Click(Sender: TObject);
    procedure Rastro1Click(Sender: TObject);
    procedure DemonstrativoPlanodeContasAnual1Click(Sender: TObject);
    procedure GerenciaisCurvaABC1Click(Sender: TObject);
    procedure ConectarBD1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CartesdeCrdito1Click(Sender: TObject);
    procedure AniversariantesdoMs1Click(Sender: TObject);
    procedure GrficoVendasporAno1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure ZerarEstoque1Click(Sender: TObject);
    procedure Vendedores1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ComissodeVendedores1Click(Sender: TObject);
    procedure VendadeProdutos1Click(Sender: TObject);
    procedure Consultar1Click(Sender: TObject);
    procedure Relatrio1Click(Sender: TObject);
    procedure LiberarSistema1Click(Sender: TObject);
  private
    { Private declarations }
  public
    idEmpresa : integer;
  end;

var
  FrmPrincipal: TFrmPrincipal;
  caminho,senha,senhaMD5,R_hora,D_planoconta,tpcartao,D_conta:string;
  data,DataTravamento:Tdatetime;
  dias,tam,i:integer;

implementation

uses UnitFrmBemVindo, Unitdm, UnitFrmCadClientes,
  UnitFrmCadFornecedores, UnitFrmParametros,
  UnitFrmCadUsuarios, UnitFrmReceber, UnitFrmPagar, UnitFrmContasCorrentes,
  UnitFrmFinanceiro, UnitFrmPlanoContas, 
  UnitFrmDepositoCH, UnitFrmProcFinanceiro, UnitFrmAlterarSenha,
  UnitFrmBalancete, UnitFrmRelplano, UnitFrmReceberImp, UnitFrmPagarImp,
  UnitFrmRelCCImp, UnitFrmPlanoContas_Graf, UnitFrmFinanceiroRel,
  UnitFrmMapaDesembolsoImp, UnitFrmResumoGerenciais, 
  UnitFrmGrupo, UnitFrmCadProdutos, UnitFrmEstoque,
  UnitFrmNotasFiscais, UnitFrmCadProdutosRel,
  UnitFrmFechamentoVenda, UnitFrmRelCliente,
  UnitFrmEtiquetasImp, UnitFrmSangria, UnitFrmRastro,
  UnitFrmPlanoContasAno, UnitFrmRelABCImp,
  UnitFrmLiberarSistema, UnitFrmCadClientesCartao,
  UnitFrmAnivMes, UnitFrmGraficoRecAnual, UnitFrmCadFuncionarios,
  UnitFrmVendaRefaturar, UnitFrmVenda, UnitFrmComissaoVend,
  UnitFrmRelVendasProd;

{$R *.dfm}

function Is4DigitYear: Boolean;
begin
  result:=(Pos('dd/MM/yyyy',ShortDateFormat)>0);
end;

function FileDate(Arquivo: String): String;
{Retorna a data e a hora de um arquivo}
var
FHandle: integer;
begin
if not fileexists(Arquivo) then
 begin
 Result := 'Nome de Arquivo Inv�lido';
 end
else
 begin
 FHandle := FileOpen(Arquivo, 0);
 try
 Result := DateTimeToStr(FileDateToDateTime(FileGetDate(FHandle)));
 finally
 FileClose(FHandle);
 end;
 end;
end;

procedure BaixarCartoes;
begin
   dm.parametros.Close;
   dm.parametros.Open;
   D_conta:=dm.parametroscontabanco.value;
   if tpcartao='CC' then
      D_planoconta:='11101003'
   else if tpcartao='CD' then
      D_planoconta:='11101004'
   else
      D_planoconta:='';

   FrmPrincipal.qratualizar.close;
   FrmPrincipal.qratualizar.sql.clear;
   FrmPrincipal.qratualizar.sql.add('update docreceber set');
   FrmPrincipal.qratualizar.sql.add('conta = :D_conta,');
   FrmPrincipal.qratualizar.sql.add('planoconta = :D_planoconta,');
   FrmPrincipal.qratualizar.sql.add('pgto = vencto,');
   FrmPrincipal.qratualizar.sql.add('valorpago = liquido');
   FrmPrincipal.qratualizar.SQL.Add('where (pgto is null)');
   FrmPrincipal.qratualizar.SQL.Add('and (vencto <= '+chr(39)+
   copy(DateToStr(date),7,4)+'/'+copy(DateToStr(date),4,2)+'/'+
   copy(DateToStr(date),1,2)+chr(39)+')');
   FrmPrincipal.qratualizar.SQL.Add('and (tipo ='+chr(39)+tpcartao+chr(39)+')');
   FrmPrincipal.qratualizar.Params[0].Value := D_conta;
   FrmPrincipal.qratualizar.Params[1].Value := D_planoconta;
   FrmPrincipal.qratualizar.ExecSQL;

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
   dm.rastrohistorico.Value:='Vlr ref '+tpcartao;
   dm.rastrovalor.Value:=totalgeral;
   dm.rastroobs.Value:=DateToStr(date);
   dm.rastro.Post;
   dm.rastro.Close;

   //Financeiro
   dm.financeiro.Close;
   dm.financeiro.SQL.Clear;
   dm.financeiro.SQL.Add('select * from financeiro');
   dm.Financeiro.SQL.Add('where data = '+chr(39)+
   copy(DateToStr(date),7,4)+'/'+copy(DateToStr(date),4,2)+'/'+
   copy(DateToStr(date),1,2)+chr(39));
   dm.Financeiro.open;
   dm.Financeiro.insert;
   dm.Financeiroconta.Value:=D_conta;
   dm.Financeirodata.Value:=date;
   dm.Financeirodoc.Value:=copy(DateToStr(date),7,4)+
   copy(DateToStr(date),4,2)+
   copy(DateToStr(date),1,2);
   dm.Financeirohistorico.Value:='Vlr ref '+tpcartao;
   dm.Financeiroplanoconta.Value:=D_planoconta;
   dm.Financeirotipo.value:='C';
   dm.Financeirocredito.Value:=totalgeral;
   dm.Financeiro.Post;
   dm.financeiro.Close;
end;

procedure CalcularBaixaCartoes;
begin
  tpcartao:='CC';
  dm.Totaldocreceber.Close;
  dm.Totaldocreceber.SQL.Clear;
  dm.Totaldocreceber.SQL.Add('select sum(liquido) as total from docreceber');
  dm.Totaldocreceber.SQL.Add('where (pgto is null)');
  dm.Totaldocreceber.SQL.Add('and (vencto <= '+chr(39)+
  copy(DateToStr(date),7,4)+'/'+copy(DateToStr(date),4,2)+'/'+
  copy(DateToStr(date),1,2)+chr(39)+')');
  dm.Totaldocreceber.SQL.Add('and (tipo ='+chr(39)+tpcartao+chr(39)+')');
  dm.Totaldocreceber.open;
  totalgeral:=0;
  if dm.Totaldocrecebertotal.Value>0 then
     totalgeral:=dm.Totaldocreceber['total']
  else
     totalgeral:=0;

  if totalgeral>0 then
     BaixarCartoes;

  tpcartao:='CD';
  dm.Totaldocreceber.Close;
  dm.Totaldocreceber.SQL.Clear;
  dm.Totaldocreceber.SQL.Add('select sum(liquido) as total from docreceber');
  dm.Totaldocreceber.SQL.Add('where (pgto is null)');
  dm.Totaldocreceber.SQL.Add('and (vencto <= '+chr(39)+
  copy(DateToStr(date),7,4)+'/'+copy(DateToStr(date),4,2)+'/'+
  copy(DateToStr(date),1,2)+chr(39)+')');
  dm.Totaldocreceber.SQL.Add('and (tipo ='+chr(39)+tpcartao+chr(39)+')');
  dm.Totaldocreceber.open;
  totalgeral:=0;
  if dm.Totaldocrecebertotal.Value>0 then
     totalgeral:=dm.Totaldocreceber['total']
  else
     totalgeral:=0;

  if totalgeral>0 then
     BaixarCartoes;
end;

procedure TFrmPrincipal.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
{
  if application.messagebox('Deseja Sair do Sistema?','Aten��o ',mb_yesno+mb_iconquestion)=id_yes then
     canclose:=true
  else
     canclose:=false;
}
end;

procedure TFrmPrincipal.SpeedButton9Click(Sender: TObject);
begin
  close;
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmBemVindo, FrmBemVindo);
    FrmBemVindo.showmodal;
  finally
    FrmBemVindo.Free;
    sb.Panels[0].text:=DateToStr(Date);
  end;
    dm.parametros.Close;
    dm.parametros.Open;
    if dm.parametrosliberacao.IsNull then
       begin
         Application.Messagebox ('Contate a Vieira Sistemas','Erro na Valida��o do Sistema', MB_OK+MB_ICONINFORMATION);
         Application.Terminate;
       end;
    FrmPrincipal.Caption := 'Gestor Loja - Sistema Integrado de Gest�o - Empresa: '+dm.parametrosfantasia.Value;
{
    try
      dm.ZConnection2.Connected:=false;
      dm.ZConnection2.Database:='vieir463_vieirasistemas';
      dm.ZConnection2.HostName:='vieirasistemas.com.br';
      dm.ZConnection2.User:='vieir463_cliente';
      dm.ZConnection2.Password:='AW3se4DR5ft6*#';
      dm.ZConnection2.Connected:=true;

      qry              :=  TZQuery.Create(nil);
      qry.Connection   :=  dm.ZConnection2;
      qry.SQL.Add('select ativo from clientes');
      qry.sql.add('where cnpj = '+chr(39)+dm.parametroscnpj.value+chr(39));
      qry.sql.add('and ativo = '+chr(39)+'S'+chr(39));
      qry.Open;
      if qry.RecordCount<1 then
         begin
           Application.Messagebox ('Contate a Vieira Sistemas','Sistema Inativo', MB_OK+MB_ICONINFORMATION);
           Application.Terminate;
         end;
      qry.Free;
    except
      Application.Messagebox ('Contate a Vieira Sistemas','Erro na Valida��o do Sistema', MB_OK+MB_ICONINFORMATION);
      Application.Terminate;
    end;
}
  try
    sb.Panels[5].Text:='Vers�o: '+FileDate(ExtractFilePath(ParamStr(0))+'Gestorloja.exe');
  except
    sb.Panels[5].Text:='Vers�o n�o Loc.';
  end;
end;

procedure TFrmPrincipal.Clientes1Click(Sender: TObject);
begin
  dm.usuarios.Open;
  dm.usuarios.Locate('nome',sb.Panels[3].Text,[]);
  if dm.usuariosfornecedores.value='0' then
     application.MessageBox('Acesso n�o Permitido','Aten��o',mb_ok+MB_ICONINFORMATION)
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

procedure TFrmPrincipal.fornecedores1Click(Sender: TObject);
begin
  dm.usuarios.Open;
  dm.usuarios.Locate('nome',sb.Panels[3].Text,[]);
  if dm.usuariosclientes.value='0' then
     application.MessageBox('Acesso n�o Permitido','Aten��o',mb_ok+MB_ICONINFORMATION)
  else
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

procedure TFrmPrincipal.Parmetros1Click(Sender: TObject);
begin
  dm.usuarios.Open;
  dm.usuarios.Locate('nome',sb.Panels[3].Text,[]);
  if (dm.usuariosparametros.value='5') or
     (dm.usuariosparametros.value='2') then
     begin
        try
          Application.CreateForm(TFrmParametros, FrmParametros);
          FrmParametros.showmodal;
        finally
          FrmParametros.Release;
          FrmParametros:=nil;
        end;
     end
     else
        application.MessageBox('Acesso n�o Permitido','Aten��o',mb_ok+MB_ICONINFORMATION);
end;

procedure TFrmPrincipal.Usurios1Click(Sender: TObject);
begin
  dm.usuarios.Close;
  dm.usuarios.Open;
  dm.usuarios.Locate('nome',sb.Panels[3].Text,[]);
  if dm.usuariosusuarios.value='5' then
     begin
        try
          Application.CreateForm(TFrmCadUsuarios, FrmCadUsuarios);
          FrmCadUsuarios.showmodal;
        finally
          FrmCadUsuarios.Release;
          FrmCadUsuarios:=nil;
        end;
     end
     else
        application.MessageBox('Acesso n�o Permitido','Aten��o',mb_ok+MB_ICONINFORMATION);
end;

procedure TFrmPrincipal.ContasaReceber1Click(Sender: TObject);
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

procedure TFrmPrincipal.ContasaPagar1Click(Sender: TObject);
begin
  dm.usuarios.Open;
  dm.usuarios.Locate('nome',sb.Panels[3].Text,[]);
  if dm.usuarioscontaspagar.value='0' then
     application.MessageBox('Acesso n�o Permitido','Aten��o',mb_ok+MB_ICONINFORMATION)
  else
  begin
      try
        Application.CreateForm(TFrmPagar, FrmPagar);
        FrmPagar.showmodal;
      finally
        FrmPagar.Release;
        FrmPagar:=nil;
      end;
  end;
end;

procedure TFrmPrincipal.ContasCorrentes1Click(Sender: TObject);
begin
  dm.usuarios.Open;
  dm.usuarios.Locate('nome',sb.Panels[3].Text,[]);
  if dm.usuarioscontascorrente.value='5' then
     begin
        try
          Application.CreateForm(TFrmContasCorrentes, FrmContasCorrentes);
          FrmContasCorrentes.Caption:='Financeiro - Contas Correntes';
          FrmContasCorrentes.showmodal;
        finally
          FrmContasCorrentes.Release;
          FrmContasCorrentes:=nil;
        end;
     end
     else
        application.MessageBox('Acesso n�o Permitido','Aten��o',mb_ok+MB_ICONINFORMATION);
end;

procedure TFrmPrincipal.Financeiro1Click(Sender: TObject);
begin
  dm.usuarios.Open;
  dm.usuarios.Locate('nome',sb.Panels[3].Text,[]);
  if dm.usuariosfinanceiro.value='0' then
     application.MessageBox('Acesso n�o Permitido','Aten��o',mb_ok+MB_ICONINFORMATION)
  else
  begin
      try
        Application.CreateForm(TFrmFinanceiro, FrmFinanceiro);
        FrmFinanceiro.Caption:='Financeiro - Fluxo de Caixa';
        FrmFinanceiro.showmodal;
      finally
        FrmFinanceiro.Release;
        FrmFinanceiro:=nil;
      end;
  end;
end;

procedure TFrmPrincipal.PlanodeContas1Click(Sender: TObject);
begin
  dm.usuarios.Open;
  dm.usuarios.Locate('nome',sb.Panels[3].Text,[]);
  if dm.usuariosplanocontas.value='5' then
     begin
        try
          Application.CreateForm(TFrmPlanoContas, FrmPlanoContas);
          FrmPlanoContas.Caption:='Financeiro - Plano de Contas';
          FrmPlanoContas.showmodal;
        finally
          FrmPlanoContas.Release;
          FrmPlanoContas:=nil;
        end;
     end
     else
        application.MessageBox('Acesso n�o Permitido','Aten��o',mb_ok+MB_ICONINFORMATION);
end;

procedure TFrmPrincipal.DepsitoCheques1Click(Sender: TObject);
begin
      dm.usuarios.Open;
      dm.usuarios.Locate('nome',sb.Panels[3].Text,[]);
      if dm.usuarioscontasreceber.value='5' then
         begin
           try
             Application.CreateForm(TFrmDepositoCH, FrmDepositoCH);
             FrmDepositoCH.showmodal;
           finally
             FrmDepositoCH.Release;
             FrmDepositoCH:=nil;
           end;
         end
         else
           application.MessageBox('Acesso n�o Permitido','Aten��o',mb_ok+MB_ICONINFORMATION);
end;

procedure TFrmPrincipal.Financeiro2Click(Sender: TObject);
begin
  dm.usuarios.Open;
  dm.usuarios.Locate('nome',sb.Panels[3].Text,[]);
  if dm.usuarioscontasreceber.value='5' then
     begin
       try
         Application.CreateForm(TFrmProcFinanceiro, FrmProcFinanceiro);
         FrmProcFinanceiro.showmodal;
       finally
         FrmProcFinanceiro.Release;
         FrmProcFinanceiro:=nil;
       end;
     end;
end;

procedure TFrmPrincipal.AlterarSenha1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmAlterarSenha, FrmAlterarSenha);
    FrmAlterarSenha.showmodal;
  finally
    FrmAlterarSenha.Release;
    FrmAlterarSenha:=nil;
  end;
end;

procedure TFrmPrincipal.Timer1Timer(Sender: TObject);
begin
      sb.Panels[0].text:='Data: '+DateToStr(Date);
      sb.Panels[1].text:='Hora: '+TimeToStr(Time);
end;

procedure TFrmPrincipal.AutorizaodePagamento1Click(Sender: TObject);
begin
  dm.usuarios.Open;
  dm.usuarios.Locate('nome',sb.Panels[3].Text,[]);
  if dm.usuariosrelfinanceiro.value='0' then
     application.MessageBox('Acesso n�o Permitido','Aten��o',mb_ok+MB_ICONINFORMATION)
  else
  begin
      try
        Application.CreateForm(TFrmBalancete, FrmBalancete);
        FrmBalancete.showmodal;
      finally
        FrmBalancete.Release;
        FrmBalancete:=nil;
      end;
  end;
end;

procedure TFrmPrincipal.BalanoRazo1Click(Sender: TObject);
begin
  dm.usuarios.Open;
  dm.usuarios.Locate('nome',sb.Panels[3].Text,[]);
  if dm.usuariosrelfinanceiro.value='0' then
     application.MessageBox('Acesso n�o Permitido','Aten��o',mb_ok+MB_ICONINFORMATION)
  else
  begin
      try
        Application.CreateForm(TFrmRelplano, FrmRelplano);
        FrmRelplano.showmodal;
      finally
        FrmRelplano.Release;
        FrmRelplano:=nil;
      end;
  end;
end;

procedure TFrmPrincipal.DocumentosReceber1Click(Sender: TObject);
begin
  dm.usuarios.Open;
  dm.usuarios.Locate('nome',sb.Panels[3].Text,[]);
  if dm.usuariosrelfinanceiro.value='0' then
     application.MessageBox('Acesso n�o Permitido','Aten��o',mb_ok+MB_ICONINFORMATION)
  else
  begin
      try
        Application.CreateForm(TFrmReceberImp, FrmReceberImp);
        FrmReceberImp.showmodal;
      finally
        FrmReceberImp.Release;
        FrmReceberImp:=nil;
      end;
  end;
end;

procedure TFrmPrincipal.DocumentosPagar1Click(Sender: TObject);
begin
  dm.usuarios.Open;
  dm.usuarios.Locate('nome',sb.Panels[3].Text,[]);
  if dm.usuariosrelfinanceiro.value='0' then
     application.MessageBox('Acesso n�o Permitido','Aten��o',mb_ok+MB_ICONINFORMATION)
  else
  begin
      try
        Application.CreateForm(TFrmPagarImp, FrmPagarImp);
        FrmPagarImp.showmodal;
      finally
        FrmPagarImp.Release;
        FrmPagarImp:=nil;
      end;
  end;
end;

procedure TFrmPrincipal.ExtratodeConta1Click(Sender: TObject);
begin
  dm.usuarios.Open;
  dm.usuarios.Locate('nome',sb.Panels[3].Text,[]);
  if dm.usuariosrelfinanceiro.value='0' then
     application.MessageBox('Acesso n�o Permitido','Aten��o',mb_ok+MB_ICONINFORMATION)
  else
  begin
      try
        Application.CreateForm(TFrmRelCCImp, FrmRelCCImp);
        FrmRelCCImp.showmodal;
      finally
        FrmRelCCImp.Release;
        FrmRelCCImp:=nil;
      end;
  end;
end;

procedure TFrmPrincipal.CentrodeCusto3Click(Sender: TObject);
begin
  dm.usuarios.Open;
  dm.usuarios.Locate('nome',sb.Panels[3].Text,[]);
  if dm.usuariosrelfinanceiro.value='0' then
     application.MessageBox('Acesso n�o Permitido','Aten��o',mb_ok+MB_ICONINFORMATION)
  else
  begin
      try
        Application.CreateForm(TFrmPlanoContas_Graf, FrmPlanoContas_Graf);
        FrmPlanoContas_Graf.showmodal;
      finally
        FrmPlanoContas_Graf.Release;
        FrmPlanoContas_Graf:=nil;
      end;
  end;
end;

procedure TFrmPrincipal.MapadeFaturamento1Click(Sender: TObject);
begin
  dm.usuarios.Open;
  dm.usuarios.Locate('nome',sb.Panels[3].Text,[]);
  if dm.usuariosrelfinanceiro.value='0' then
     application.MessageBox('Acesso n�o Permitido','Aten��o',mb_ok+MB_ICONINFORMATION)
  else
  begin
       try
         Application.CreateForm(TFrmFinanceiroRel, FrmFinanceiroRel);
         FrmFinanceiroRel.showmodal;
       finally
         FrmFinanceiroRel.Release;
         FrmFinanceiroRel:=nil;
       end;
  end;
end;

procedure TFrmPrincipal.MapadeDesembolso1Click(Sender: TObject);
begin
  dm.usuarios.Open;
  dm.usuarios.Locate('nome',sb.Panels[3].Text,[]);
  if dm.usuariosrelfinanceiro.value='0' then
     application.MessageBox('Acesso n�o Permitido','Aten��o',mb_ok+MB_ICONINFORMATION)
  else
  begin
       try
         Application.CreateForm(TFrmMapaDesembolsoImp, FrmMapaDesembolsoImp);
         FrmMapaDesembolsoImp.showmodal;
       finally
         FrmMapaDesembolsoImp.Release;
         FrmMapaDesembolsoImp:=nil;
       end;
  end;
end;

procedure TFrmPrincipal.Resumo2Click(Sender: TObject);
begin
  dm.usuarios.Open;
  dm.usuarios.Locate('nome',sb.Panels[3].Text,[]);
  if dm.usuariosrelfinanceiro.value='0' then
     application.MessageBox('Acesso n�o Permitido','Aten��o',mb_ok+MB_ICONINFORMATION)
  else
  begin
       try
         Application.CreateForm(TFrmResumoGerenciais, FrmResumoGerenciais);
         FrmResumoGerenciais.showmodal;
       finally
         FrmResumoGerenciais.Release;
         FrmResumoGerenciais:=nil;
       end;
  end;
end;

procedure TFrmPrincipal.Grupos1Click(Sender: TObject);
begin
  dm.usuarios.Open;
  dm.usuarios.Locate('nome',sb.Panels[3].Text,[]);
  if dm.usuariosclientes.value='0' then
     application.MessageBox('Acesso n�o Permitido','Aten��o',mb_ok+MB_ICONINFORMATION)
  else
  begin
      try
        Application.CreateForm(TFrmGrupo, FrmGrupo);
        FrmGrupo.showmodal;
      finally
        FrmGrupo.Release;
        FrmGrupo:=nil;
      end;
  end;
end;

procedure TFrmPrincipal.Produtos1Click(Sender: TObject);
begin
  dm.usuarios.Open;
  dm.usuarios.Locate('nome',sb.Panels[3].Text,[]);
  if dm.usuariosfornecedores.value='0' then
     application.MessageBox('Acesso n�o Permitido','Aten��o',mb_ok+MB_ICONINFORMATION)
  else
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

procedure TFrmPrincipal.Estoque1Click(Sender: TObject);
begin
  dm.usuarios.Open;
  dm.usuarios.Locate('nome',sb.Panels[3].Text,[]);
  if dm.usuariosfornecedores.value='0' then
     application.MessageBox('Acesso n�o Permitido','Aten��o',mb_ok+MB_ICONINFORMATION)
  else
  begin
      try
        Application.CreateForm(TFrmEstoque, FrmEstoque);
        FrmEstoque.showmodal;
      finally
        FrmEstoque.Release;
        FrmEstoque:=nil;
      end;
  end;
end;

procedure TFrmPrincipal.NotaFiscal1Click(Sender: TObject);
begin
  dm.usuarios.Open;
  dm.usuarios.Locate('nome',sb.Panels[3].Text,[]);
  if dm.usuariosfornecedores.value='0' then
     application.MessageBox('Acesso n�o Permitido','Aten��o',mb_ok+MB_ICONINFORMATION)
  else
  begin
      try
        Application.CreateForm(TFrmNotasFiscais, FrmNotasFiscais);
        FrmNotasFiscais.showmodal;
      finally
        FrmNotasFiscais.Release;
        FrmNotasFiscais:=nil;
      end;
  end;
end;

procedure TFrmPrincipal.EstoqueFsico1Click(Sender: TObject);
begin
  dm.usuarios.Open;
  dm.usuarios.Locate('nome',sb.Panels[3].Text,[]);
  if dm.usuariosclientes.value='0' then
     application.MessageBox('Acesso n�o Permitido','Aten��o',mb_ok+MB_ICONINFORMATION)
  else
  begin
    try
      Application.CreateForm(TFrmCadProdutosRel, FrmCadProdutosRel);
      FrmCadProdutosRel.lbdata.Caption:=busca;
      FrmCadProdutosRel.showmodal;
    finally
      FrmCadProdutosRel.Release;
      FrmCadProdutosRel:=nil;
    end;
  end;
end;

procedure TFrmPrincipal.FechamentodeVendas1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmFechamentoVenda, FrmFechamentoVenda);
    FrmFechamentoVenda.showmodal;
  finally
    FrmFechamentoVenda.Release;
    FrmFechamentoVenda:=nil;
  end;
end;

procedure TFrmPrincipal.Clientes3Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmRelCliente, FrmRelCliente);
    FrmRelCliente.showmodal;
  finally
    FrmRelCliente.Release;
    FrmRelCliente:=nil;
  end;
end;

procedure TFrmPrincipal.EtiquetasZebra1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmEtiquetasImp, FrmEtiquetasImp);
    FrmEtiquetasImp.showmodal;
  finally
    FrmEtiquetasImp.Release;
    FrmEtiquetasImp:=nil;
  end;
end;

procedure TFrmPrincipal.Rastro1Click(Sender: TObject);
begin
  dm.usuarios.Close;
  dm.usuarios.Open;
  dm.usuarios.Locate('nome',sb.Panels[3].Text,[]);
  if dm.usuariosusuarios.value='5' then
     begin
       try
         Application.CreateForm(TFrmRastro, FrmRastro);
         FrmRastro.showmodal;
       finally
         FrmRastro.Release;
         FrmRastro:=nil;
       end;
     end
     else
       application.MessageBox('Acesso n�o Permitido','Aten��o',mb_ok+MB_ICONINFORMATION)
end;

procedure TFrmPrincipal.DemonstrativoPlanodeContasAnual1Click(
  Sender: TObject);
begin
  dm.usuarios.Open;
  dm.usuarios.Locate('nome',sb.Panels[3].Text,[]);
  if dm.usuariosrelfinanceiro.value='0' then
     application.MessageBox('Acesso n�o Permitido','Aten��o',mb_ok+MB_ICONINFORMATION)
  else
  begin
      try
        Application.CreateForm(TFrmPlanoContasAno, FrmPlanoContasAno);
        FrmPlanoContasAno.showmodal;
      finally
        FrmPlanoContasAno.Release;
        FrmPlanoContasAno:=nil;
      end;
  end;
end;

procedure TFrmPrincipal.GerenciaisCurvaABC1Click(Sender: TObject);
begin
  dm.usuarios.Open;
  dm.usuarios.Locate('nome',sb.Panels[3].Text,[]);
  if dm.usuariosrelfinanceiro.value='0' then
     application.MessageBox('Acesso n�o Permitido','Aten��o',mb_ok+MB_ICONINFORMATION)
  else
  begin
      try
        Application.CreateForm(TFrmRelABCImp, FrmRelABCImp);
        FrmRelABCImp.showmodal;
      finally
        FrmRelABCImp.Release;
        FrmRelABCImp:=nil;
      end;
  end;
end;

Function Cript(mStr, mchave, moperacao : string):String;
Var
  i, TamanhoString, pos, posLetra, TamanhoChave : integer;
Begin
   Result := mStr;
   TamanhoString := length(mStr);
   TamanhoChave := length(mchave);
   for i := 1 to TamanhoString do
   Begin
      pos := (i mod Tamanhochave);
      If pos = 0 then pos := TamanhoChave;
      pos := pos + 7;
      If mOperacao = 'descript' then
         posletra := ord(result[i]) + pos
      else posletra := ord(result[i]) - pos;
      result[i] := chr(posletra);
   End;
End;

function AjustaStr ( str: String; tam: Integer ): String;
begin
while Length ( str ) < tam do
str := str + ' ';
if Length ( str ) > tam then
str := Copy ( str, 1, tam );
Result := str;
end;

procedure TFrmPrincipal.ConectarBD1Click(Sender: TObject);
begin
  try
    dm.ZConnection1.Connected:=false;
    dm.ZConnection1.Database:='vieir463_gestor_caramelle';
    dm.ZConnection1.HostName:='vieirasistemas.com.br';
    dm.ZConnection1.User:='vieir463_cliente';
    dm.ZConnection1.Password:='AW3se4DR5ft6*#';
    dm.ZConnection1.Connected:=true;
  except
    application.messagebox('Tente Novamente','Aten��o! Sistema Fora do Ar',mb_ok+mb_iconexclamation);
  end;
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  if Is4DigitYear=false then
     begin
       FrmPrincipal.OnActivate:=nil;
       application.messagebox('Configura��o da Data do Windows, Inv�lida','Aten��o',mb_ok+MB_ICONERROR);
       Application.Terminate;
     end
     else
     begin
       dm.parametros.Close;
       dm.parametros.Open;

       dias:=dm.parametrosliberacao.AsVariant-date;
       sb.Panels[8].text:='Expira em '+FloatToStr(dias)+' dia(s)';
       if dias=0 then
          begin
            application.messagebox('Contate a Vieira Sistemas','Aten��o! Sistema Expirado',MB_OK+MB_ICONINFORMATION);
            try
              Application.CreateForm(TFrmLiberarSistema, FrmLiberarSistema);
              FrmLiberarSistema.showmodal;
            finally
              FrmLiberarSistema.Release;
              FrmLiberarSistema:=nil;
            end;
          end
       else if dias<=5 then
          application.messagebox('Contate o Suporte T�cnico para Revalidar a Chave do Sistema','Aten��o! Sistema Expira em Poucos Dias',MB_OK+MB_ICONINFORMATION);
     end;
end;

procedure TFrmPrincipal.CartesdeCrdito1Click(Sender: TObject);
begin
  dm.usuarios.Open;
  dm.usuarios.Locate('nome',sb.Panels[3].Text,[]);
  if dm.usuarioscontasreceber.value='0' then
     application.MessageBox('Acesso n�o Permitido','Aten��o',mb_ok+MB_ICONINFORMATION)
  else
  begin
      try
        Application.CreateForm(TFrmCadClientesCartao, FrmCadClientesCartao);
        FrmCadClientesCartao.showmodal;
      finally
        FrmCadClientesCartao.Release;
        FrmCadClientesCartao:=nil;
      end;
  end;
end;

procedure TFrmPrincipal.AniversariantesdoMs1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmAnivMes, FrmAnivMes);
    FrmAnivMes.showmodal;
  finally
    FrmAnivMes.Release;
    FrmAnivMes:=nil;
  end;
end;

procedure TFrmPrincipal.GrficoVendasporAno1Click(Sender: TObject);
begin
  dm.usuarios.Open;
  dm.usuarios.Locate('nome',sb.Panels[3].Text,[]);
  if dm.usuariosrelfinanceiro.value='0' then
     application.MessageBox('Acesso n�o Permitido','Aten��o',mb_ok+MB_ICONINFORMATION)
  else
  begin
      try
        Application.CreateForm(TFrmGraficoRecAnual, FrmGraficoRecAnual);
        FrmGraficoRecAnual.showmodal;
      finally
        FrmGraficoRecAnual.Release;
        FrmGraficoRecAnual:=nil;
      end;
  end;
end;

procedure TFrmPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dm.ZConnection1.Connected:=false;
end;

procedure TFrmPrincipal.FormActivate(Sender: TObject);
begin
  dm.ZConnection1.Connected:=false;
end;

procedure TFrmPrincipal.ZerarEstoque1Click(Sender: TObject);
begin
  dm.usuarios.Close;
  dm.usuarios.Open;
  dm.usuarios.Locate('nome',sb.Panels[3].Text,[]);
  if dm.usuariosusuarios.value='5' then
     begin
       EstoqueFsico1.Click;

        dm.produtos.Close;
        dm.produtos.SQL.Clear;
        dm.produtos.SQL.Add('select * from produtos');
        dm.produtos.sql.add('where ativo = '+chr(39)+'S'+chr(39));
        dm.produtos.Open;

        Gauge1.MaxValue:=dm.produtos.RecordCount;
        Gauge1.Progress:=0;
        Gauge1.Visible:=true;

        E_doc:=copy(DateToStr(date),1,2)+copy(DateToStr(date),4,2)+
        copy(DateToStr(date),9,2)+' '+
        copy(TimeToStr(time),1,2)+copy(TimeToStr(time),4,2)+
        copy(TimeToStr(time),7,2);

        while not dm.produtos.Eof do
              begin
                if dm.produtosestoque.Value<>0 then
                   begin
                      dm.movestoque.Insert;
                      if dm.produtosestoque.Value>0 then
                         begin
                           dm.movestoqueTipoMov.Value:='SA';
                           dm.movestoqueqtd.Value:=dm.produtosestoque.Value;
                         end
                         else
                         begin
                           dm.movestoqueTipoMov.Value:='EA';
                           dm.movestoqueqtd.Value:=-dm.produtosestoque.Value;
                         end;
                      dm.movestoquedocumento.value:=E_doc;
                      dm.movestoquedata.Value:=date;
                      dm.movestoquefavorecido.Value:=3;
                      dm.movestoqueproduto.Value:=dm.produtoscodigo.Value;
                      dm.movestoqueund.Value:=dm.produtosundint.Value;
                      dm.movestoqueVlrUnit.Value:=dm.produtoscompra.Value;
                      dm.movestoqueVlrTotal.Value:=dm.movestoqueqtd.Value*dm.produtoscompra.Value;
                      dm.movestoquelocal.asstring := FrmPrincipal.sb.Panels[7].Text;
                      dm.movestoque.Post;
                   end;

                dm.produtos.Next;
                Gauge1.Progress:=Gauge1.Progress+1;
                Application.ProcessMessages;
              end;
        Gauge1.Visible:=false;
     end
     else
        application.MessageBox('Acesso n�o Permitido','Aten��o',mb_ok+MB_ICONINFORMATION);
end;

procedure TFrmPrincipal.Vendedores1Click(Sender: TObject);
begin
  dm.usuarios.Open;
  dm.usuarios.Locate('nome',sb.Panels[3].Text,[]);
  if dm.usuariosclientes.value='0' then
     application.MessageBox('Acesso n�o Permitido','Aten��o',mb_ok+MB_ICONINFORMATION)
  else
  begin
      try
        Application.CreateForm(TFrmCadFuncionarios, FrmCadFuncionarios);
        FrmCadFuncionarios.showmodal;
      finally
        FrmCadFuncionarios.Release;
        FrmCadFuncionarios:=nil;
      end;
  end;
end;

procedure TFrmPrincipal.SpeedButton3Click(Sender: TObject);
begin
  dm.usuarios.Close;
  dm.usuarios.Open;
  dm.usuarios.Locate('nome',sb.Panels[3].Text,[]);
  if dm.usuariosclientes.value='5' then
     begin
       try
         Application.CreateForm(TFrmSangria, FrmSangria);
         FrmSangria.showmodal;
       finally
         FrmSangria.Release;
         FrmSangria:=nil;
       end;
     end;
end;

procedure TFrmPrincipal.SpeedButton1Click(Sender: TObject);
begin
  dm.usuarios.Open;
  dm.usuarios.Locate('nome',sb.Panels[3].Text,[]);
  if dm.usuariosconhecimentos.value='0' then
     application.MessageBox('Acesso n�o Permitido','Aten��o',mb_ok+MB_ICONINFORMATION)
  else
  begin
      try
        Application.CreateForm(TFrmVendaRefaturar, FrmVendaRefaturar);
        FrmVendaRefaturar.showmodal;
      finally
        FrmVendaRefaturar.Release;
        FrmVendaRefaturar:=nil;
      end;
  end;
end;

procedure TFrmPrincipal.ComissodeVendedores1Click(Sender: TObject);
begin
  dm.usuarios.Open;
  dm.usuarios.Locate('nome',sb.Panels[3].Text,[]);
  if dm.usuariosrelfinanceiro.value='0' then
     application.MessageBox('Acesso n�o Permitido','Aten��o',mb_ok+MB_ICONINFORMATION)
  else
  begin
      try
        Application.CreateForm(TFrmComissaoVend, FrmComissaoVend);
        FrmComissaoVend.showmodal;
      finally
        FrmComissaoVend.Release;
        FrmComissaoVend:=nil;
      end;
  end;
end;

procedure TFrmPrincipal.VendadeProdutos1Click(Sender: TObject);
begin
  dm.usuarios.Open;
  dm.usuarios.Locate('nome',sb.Panels[3].Text,[]);
  if dm.usuariosrelfinanceiro.value='0' then
     application.MessageBox('Acesso n�o Permitido','Aten��o',mb_ok+MB_ICONINFORMATION)
  else
  begin
      try
        Application.CreateForm(TFrmRelVendasProd, FrmRelVendasProd);
        FrmRelVendasProd.showmodal;
      finally
        FrmRelVendasProd.Release;
        FrmRelVendasProd:=nil;
      end;
  end;
end;

procedure TFrmPrincipal.Consultar1Click(Sender: TObject);
begin
  dm.usuarios.Open;
  dm.usuarios.Locate('nome',sb.Panels[3].Text,[]);
  if dm.usuariosconhecimentos.value='0' then
     application.MessageBox('Acesso n�o Permitido','Aten��o',mb_ok+MB_ICONINFORMATION)
  else
  begin
      try
        Application.CreateForm(TFrmVenda, FrmVenda);
        FrmVenda.showmodal;
      finally
        FrmVenda.Release;
        FrmVenda:=nil;
      end;
  end;
end;

procedure TFrmPrincipal.Relatrio1Click(Sender: TObject);
begin
  dm.usuarios.Open;
  dm.usuarios.Locate('nome',sb.Panels[3].Text,[]);
  if dm.usuariosconhecimentos.value='0' then
     application.MessageBox('Acesso n�o Permitido','Aten��o',mb_ok+MB_ICONINFORMATION)
  else
  begin
      try
        Application.CreateForm(TFrmFechamentoVenda, FrmFechamentoVenda);
        FrmFechamentoVenda.showmodal;
      finally
        FrmFechamentoVenda.Release;
        FrmFechamentoVenda:=nil;
      end;
  end;
end;

procedure TFrmPrincipal.LiberarSistema1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmLiberarSistema, FrmLiberarSistema);
    FrmLiberarSistema.showmodal;
  finally
    FrmLiberarSistema.Release;
    FrmLiberarSistema:=nil;
  end;
end;

end.


