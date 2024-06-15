program Gestorloja;

uses
  Forms,
  SysUtils,
  Dialogs,
  UnitFrmPrincipal in 'UnitFrmPrincipal.pas' {FrmPrincipal},
  Unitdm in 'Unitdm.pas' {dm: TDataModule},
  UnitFrmParametros in 'UnitFrmParametros.pas' {FrmParametros},
  UnitFrmCadClientes in 'UnitFrmCadClientes.pas' {FrmCadClientes},
  UnitFrmCadFornecedores in 'UnitFrmCadFornecedores.pas' {FrmCadFornecedores},
  UnitFrmCadUsuarios in 'UnitFrmCadUsuarios.pas' {FrmCadUsuarios},
  UnitFrmBemVindo in 'UnitFrmBemVindo.pas' {FrmBemVindo},
  UnitFrmPlanoContas in 'UnitFrmPlanoContas.pas' {FrmPlanoContas},
  UnitFrmReceber in 'UnitFrmReceber.pas' {FrmReceber},
  UnitFrmReceberImp in 'UnitFrmReceberImp.pas' {FrmReceberImp},
  UnitFrmContasCorrentes in 'UnitFrmContasCorrentes.pas' {FrmContasCorrentes},
  UnitFrmFinanceiro in 'UnitFrmFinanceiro.pas' {FrmFinanceiro},
  UnitFrmPagar in 'UnitFrmPagar.pas' {FrmPagar},
  UnitFrmPagarImp in 'UnitFrmPagarImp.pas' {FrmPagarImp},
  unit2 in 'unit2.pas',
  UnitFrmRelFornecedor in 'UnitFrmRelFornecedor.pas' {FrmRelFornecedor},
  UnitFrmRecibo in 'UnitFrmRecibo.pas' {FrmRecibo},
  UnitFrmRelplano in 'UnitFrmRelplano.pas' {FrmRelplano},
  UnitFrmRelCCImp in 'UnitFrmRelCCImp.pas' {FrmRelCCImp},
  UnitFrmProcFinanceiro in 'UnitFrmProcFinanceiro.pas' {FrmProcFinanceiro},
  UnitFrmDepositoCH in 'UnitFrmDepositoCH.pas' {FrmDepositoCH},
  UnitFrmAlterarSenha in 'UnitFrmAlterarSenha.pas' {FrmAlterarSenha},
  UnitFrmBalancete in 'UnitFrmBalancete.pas' {FrmBalancete},
  UnitFrmPlanoContas_Graf in 'UnitFrmPlanoContas_Graf.pas' {FrmPlanoContas_Graf},
  UnitFrmFinanceiroRel in 'UnitFrmFinanceiroRel.pas' {FrmFinanceiroRel},
  UnitFrmMapaDesembolsoImp in 'UnitFrmMapaDesembolsoImp.pas' {FrmMapaDesembolsoImp},
  UnitFrmResumoGerenciais in 'UnitFrmResumoGerenciais.pas' {FrmResumoGerenciais},
  UnitFrmCadProdutos in 'UnitFrmCadProdutos.pas' {FrmCadProdutos},
  UnitFrmEstoque in 'UnitFrmEstoque.pas' {FrmEstoque},
  UnitFrmNotasFiscais in 'UnitFrmNotasFiscais.pas' {FrmNotasFiscais},
  UnitFrmGrupo in 'UnitFrmGrupo.pas' {FrmGrupo},
  UnitFrmCadProdutosRel in 'UnitFrmCadProdutosRel.pas' {FrmCadProdutosRel},
  UnitFrmFechamentoVenda in 'UnitFrmFechamentoVenda.pas' {FrmFechamentoVenda},
  UnitFrmRelCliente in 'UnitFrmRelCliente.pas' {FrmRelCliente},
  UnitFrmEtiquetasImp in 'UnitFrmEtiquetasImp.pas' {FrmEtiquetasImp},
  UnitFrmSangria in 'UnitFrmSangria.pas' {FrmSangria},
  UnitFrmRastro in 'UnitFrmRastro.pas' {FrmRastro},
  UnitFrmPlanoContasAno in 'UnitFrmPlanoContasAno.pas' {FrmPlanoContasAno},
  UnitFrmRelABCImp in 'UnitFrmRelABCImp.pas' {FrmRelABCImp},
  UnitFrmWelcome in 'UnitFrmWelcome.pas' {FrmWelcome},
  UnitFrmEstoqueRel in 'UnitFrmEstoqueRel.pas' {FrmEstoqueRel},
  Barcode in '..\..\publica\barcode\Barcode.pas',
  bcchksum in '..\..\publica\barcode\bcchksum.pas',
  UnitFuncoes in 'UnitFuncoes.pas',
  UnitMD5 in 'UnitMD5.pas',
  UnitFrmLiberarSistema in 'UnitFrmLiberarSistema.pas' {FrmLiberarSistema},
  UnitFrmCadClientesCartao in 'UnitFrmCadClientesCartao.pas' {FrmCadClientesCartao},
  UnitFrmAnivMes in 'UnitFrmAnivMes.pas' {FrmAnivMes},
  UnitFrmGraficoRecAnual in 'UnitFrmGraficoRecAnual.pas' {FrmGraficoRecAnual},
  UnitFrmCadFuncionarios in 'UnitFrmCadFuncionarios.pas' {FrmCadFuncionarios},
  UnitFrmVendaRefaturar in 'UnitFrmVendaRefaturar.pas' {FrmVendaRefaturar},
  UnitFrmVenda in 'UnitFrmVenda.pas' {FrmVenda},
  UnitFrmRelNfceNfe in 'UnitFrmRelNfceNfe.pas' {FrmRelNfceNfe},
  Frm_Status in 'Frm_Status.pas' {frmStatus},
  Frm_SelecionarCertificado in 'Frm_SelecionarCertificado.pas' {frmSelecionarCertificado},
  UEnvioNfe in 'UEnvioNfe.pas' {fEnvioNfe},
  UEnvioNfce in 'UEnvioNfce.pas' {fEnvioNfce},
  UnitFrmMuncicipios in 'UnitFrmMuncicipios.pas' {FrmMuncicipios},
  UnitFrmComissaoVend in 'UnitFrmComissaoVend.pas' {FrmComissaoVend},
  UnitFrmRelVendasProd in 'UnitFrmRelVendasProd.pas' {FrmRelVendasProd},
  UnitFrmCFOP in 'UnitFrmCFOP.pas' {FrmCFOP},
  UnitFrmViolacao in 'UnitFrmViolacao.pas' {FrmViolacao},
  UnitFrmFechamentoPedido in 'UnitFrmFechamentoPedido.pas' {FrmFechamentoPedido},
  UnitFrmPedidosRel in 'UnitFrmPedidosRel.pas' {FrmPedidosRel},
  UnitFrmPedidos in 'UnitFrmPedidos.pas' {FrmPedidos};

{$R *.res}

var
nomebd,serv,senha,usu:string;
begin
  Application.Initialize;
  Application.Title := 'Gestor Loja';
  Application.CreateForm(Tdm, dm);
  dm.ZConnection1.Connected:=false;

  nomebd:='vieir463_gestor_gynbox';
  serv:='vieirasistemas.com.br';
  senha:='AW3se4DR5ft6*#';
  usu:='vieir463_cliente';

  while dm.ZConnection1.Connected=false do
        begin
          try
            dm.ZConnection1.Connected:=false;
            dm.ZConnection1.Database:=nomebd;
            dm.ZConnection1.HostName:=serv;
            dm.ZConnection1.Password:=senha;
            dm.ZConnection1.User:=usu;
            dm.ZConnection1.Connected:=true;
          except
            application.messagebox('Tente Novamente','Atenção! Sistema Fora do Ar');
            Application.Terminate;
          end;
        end;

  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;

end.


