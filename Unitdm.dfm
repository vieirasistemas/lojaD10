object dm: Tdm
  OldCreateOrder = False
  Left = 219
  Top = 84
  Height = 640
  Width = 1029
  object dsretorno: TDataSource
    DataSet = retorno
    Left = 857
    Top = 526
  end
  object ZConnection1: TZConnection
    Protocol = 'mysql-5'
    HostName = 'vieirasistemas.com.br'
    Database = 'vieir463_gestor_opico'
    User = 'vieir463_cliente'
    Password = 'AW3se4DR5ft6*#'
    Left = 408
  end
  object clientes: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from clientes')
    Params = <>
    Left = 32
    Top = 8
    object clientescodigo: TIntegerField
      FieldName = 'codigo'
    end
    object clientescpf: TStringField
      FieldName = 'cpf'
      Size = 14
    end
    object clientesrg: TStringField
      FieldName = 'rg'
      Size = 15
    end
    object clientesnome: TStringField
      FieldName = 'nome'
      Required = True
      Size = 70
    end
    object clientesendereco: TStringField
      FieldName = 'endereco'
      Size = 70
    end
    object clientesbairro: TStringField
      FieldName = 'bairro'
      Size = 30
    end
    object clientescidade: TStringField
      FieldName = 'cidade'
      Size = 30
    end
    object clientesestado: TStringField
      FieldName = 'estado'
      Size = 2
    end
    object clientescep: TStringField
      FieldName = 'cep'
      Size = 8
    end
    object clientesfone1: TStringField
      FieldName = 'fone1'
      EditMask = '(99)#9999-9999;0;_'
      Size = 11
    end
    object clientesfone2: TStringField
      FieldName = 'fone2'
      Size = 11
    end
    object clientesfone3: TStringField
      FieldName = 'fone3'
      Size = 11
    end
    object clientessexo: TStringField
      FieldName = 'sexo'
      Size = 1
    end
    object clientesdtnasc: TDateField
      FieldName = 'dtnasc'
    end
    object clientesemail: TStringField
      FieldName = 'email'
      Size = 40
    end
    object clientesinstagran: TStringField
      FieldName = 'instagran'
      Size = 40
    end
    object clientesperc: TFloatField
      FieldName = 'perc'
    end
    object clientesdias: TIntegerField
      FieldName = 'dias'
    end
    object clientesfantasia: TStringField
      FieldName = 'fantasia'
      Size = 30
    end
  end
  object dsclientes: TDataSource
    DataSet = clientes
    Left = 128
    Top = 8
  end
  object dsrastro: TDataSource
    DataSet = rastro
    Left = 128
    Top = 56
  end
  object rastro: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from rastro')
    Params = <>
    Left = 32
    Top = 56
    object rastrodata: TDateField
      FieldName = 'data'
      Required = True
    end
    object rastrohora: TStringField
      FieldName = 'hora'
      Required = True
      Size = 10
    end
    object rastrooperador: TStringField
      FieldName = 'operador'
      Required = True
    end
    object rastrooperacao: TStringField
      FieldName = 'operacao'
      Required = True
      Size = 1
    end
    object rastrorotina: TStringField
      FieldName = 'rotina'
      Required = True
      Size = 15
    end
    object rastrohistorico: TStringField
      FieldName = 'historico'
      Required = True
      Size = 70
    end
    object rastrofavorecido: TIntegerField
      FieldName = 'favorecido'
    end
    object rastrovalor: TFloatField
      FieldName = 'valor'
    end
    object rastroobs: TStringField
      FieldName = 'obs'
      Size = 70
    end
  end
  object usuarios: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from usuarios')
    Params = <>
    Left = 32
    Top = 104
    object usuarioscodigo: TIntegerField
      FieldName = 'codigo'
    end
    object usuariosnome: TStringField
      FieldName = 'nome'
      Required = True
      Size = 30
    end
    object usuariossenha: TStringField
      FieldName = 'senha'
      Required = True
      Size = 6
    end
    object usuariosempresas: TStringField
      FieldName = 'empresas'
      Size = 1
    end
    object usuariosclientes: TStringField
      FieldName = 'clientes'
      Size = 1
    end
    object usuariosfornecedores: TStringField
      FieldName = 'fornecedores'
      Size = 1
    end
    object usuariosusuarios: TStringField
      FieldName = 'usuarios'
      Size = 1
    end
    object usuariosparametros: TStringField
      FieldName = 'parametros'
      Size = 1
    end
    object usuarioscontasreceber: TStringField
      FieldName = 'contasreceber'
      Size = 1
    end
    object usuarioscontaspagar: TStringField
      FieldName = 'contaspagar'
      Size = 1
    end
    object usuarioscontascorrente: TStringField
      FieldName = 'contascorrente'
      Size = 1
    end
    object usuariosplanocontas: TStringField
      FieldName = 'planocontas'
      Size = 1
    end
    object usuariosfinanceiro: TStringField
      FieldName = 'financeiro'
      Size = 1
    end
    object usuariosrelcadastrais: TStringField
      FieldName = 'relcadastrais'
      Size = 1
    end
    object usuariosrelfinanceiro: TStringField
      FieldName = 'relfinanceiro'
      Size = 1
    end
    object usuariosreloperacionais: TStringField
      FieldName = 'reloperacionais'
      Size = 1
    end
    object usuariostabelas: TStringField
      FieldName = 'tabelas'
      Size = 1
    end
    object usuariosconhecimentos: TStringField
      FieldName = 'conhecimentos'
      Size = 1
    end
    object usuariosrelgerenciais: TStringField
      FieldName = 'relgerenciais'
      Size = 1
    end
    object usuariosromaneio: TStringField
      FieldName = 'romaneio'
      Size = 1
    end
    object usuariosabastecimento: TStringField
      FieldName = 'abastecimento'
      Size = 1
    end
    object usuariosveiculos: TStringField
      FieldName = 'veiculos'
      Size = 1
    end
    object usuariosrecibo: TStringField
      FieldName = 'recibo'
      Size = 1
    end
    object usuariosnome_imp: TStringField
      FieldName = 'nome_imp'
      Size = 10
    end
    object usuariosrotas: TStringField
      FieldName = 'rotas'
      Size = 1
    end
    object usuariosdescarrego: TStringField
      FieldName = 'descarrego'
      Size = 1
    end
    object usuarioscontrole_prod: TStringField
      FieldName = 'controle_prod'
      Size = 1
    end
    object usuariospedidos: TStringField
      FieldName = 'pedidos'
      Size = 1
    end
  end
  object dsusuarios: TDataSource
    DataSet = usuarios
    Left = 128
    Top = 104
  end
  object dsparametros: TDataSource
    DataSet = parametros
    Left = 128
    Top = 152
  end
  object parametros: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from parametros')
    Params = <>
    Left = 32
    Top = 152
    object parametrosrazaosocial: TStringField
      FieldName = 'razaosocial'
      Required = True
      Size = 50
    end
    object parametrosfantasia: TStringField
      FieldName = 'fantasia'
      Size = 50
    end
    object parametrosendereco: TStringField
      FieldName = 'endereco'
      Size = 70
    end
    object parametrosbairro: TStringField
      FieldName = 'bairro'
      Size = 30
    end
    object parametroscidade: TStringField
      FieldName = 'cidade'
      Size = 30
    end
    object parametrosfone1: TStringField
      FieldName = 'fone1'
      EditMask = '9999-9999;0;_'
      Size = 9
    end
    object parametroscnpj: TStringField
      FieldName = 'cnpj'
      EditMask = '99.999.999/9999-99;0;_'
      Size = 14
    end
    object parametrosie: TStringField
      FieldName = 'ie'
      Size = 14
    end
    object parametrosnumero: TIntegerField
      FieldName = 'numero'
    end
    object parametroscontato: TStringField
      FieldName = 'contato'
    end
    object parametroscep: TStringField
      FieldName = 'cep'
      Size = 8
    end
    object parametroscontacaixa: TStringField
      FieldName = 'contacaixa'
      Size = 5
    end
    object parametroscontabanco: TStringField
      FieldName = 'contabanco'
      Size = 5
    end
    object parametrosrecibo: TIntegerField
      FieldName = 'recibo'
    end
    object parametrosddd: TStringField
      FieldName = 'ddd'
      Size = 2
    end
    object parametroschave: TStringField
      FieldName = 'chave'
      Size = 100
    end
    object parametrosDescMax: TFloatField
      FieldName = 'DescMax'
    end
    object parametrosjuros1: TFloatField
      FieldName = 'juros1'
    end
    object parametrosmulta1: TFloatField
      FieldName = 'multa1'
    end
    object parametrosCRT: TStringField
      FieldName = 'CRT'
      Size = 1
    end
    object parametroscodigo_municipio: TStringField
      FieldName = 'codigo_municipio'
      Size = 7
    end
    object parametrosultnfce: TIntegerField
      FieldName = 'ultnfce'
    end
    object parametrosaliicms: TFloatField
      FieldName = 'aliicms'
    end
    object parametrosEstado: TStringField
      FieldName = 'Estado'
      Size = 2
    end
    object parametrosliberacao: TDateField
      FieldName = 'liberacao'
    end
    object parametrosmaquns: TIntegerField
      FieldName = 'maquns'
    end
    object parametrospedido: TIntegerField
      FieldName = 'pedido'
    end
  end
  object dsfornecedores: TDataSource
    DataSet = fornecedores
    Left = 128
    Top = 200
  end
  object fornecedores: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from fornecedores')
    Params = <>
    Left = 32
    Top = 200
    object fornecedorescodigo: TIntegerField
      FieldName = 'codigo'
    end
    object fornecedorestipo: TStringField
      FieldName = 'tipo'
      Required = True
      Size = 1
    end
    object fornecedorescnpj: TStringField
      FieldName = 'cnpj'
      Size = 14
    end
    object fornecedoresie: TStringField
      FieldName = 'ie'
      Size = 15
    end
    object fornecedoresim: TStringField
      FieldName = 'im'
      Size = 15
    end
    object fornecedorescpf: TStringField
      FieldName = 'cpf'
      Size = 11
    end
    object fornecedoresrg: TStringField
      FieldName = 'rg'
      Size = 15
    end
    object fornecedoresnome: TStringField
      FieldName = 'nome'
      Size = 70
    end
    object fornecedoresendereco: TStringField
      FieldName = 'endereco'
      Size = 70
    end
    object fornecedoresbairro: TStringField
      FieldName = 'bairro'
      Size = 30
    end
    object fornecedorescidade: TStringField
      FieldName = 'cidade'
      Size = 30
    end
    object fornecedoresestado: TStringField
      FieldName = 'estado'
      Size = 2
    end
    object fornecedorescep: TStringField
      FieldName = 'cep'
      Size = 8
    end
    object fornecedoresfone1: TStringField
      FieldName = 'fone1'
      Size = 10
    end
    object fornecedoresfone2: TStringField
      FieldName = 'fone2'
      Size = 10
    end
    object fornecedoresfone3: TStringField
      FieldName = 'fone3'
      Size = 10
    end
    object fornecedoresemail: TStringField
      FieldName = 'email'
      Size = 40
    end
    object fornecedoreshomepage: TStringField
      FieldName = 'homepage'
      Size = 40
    end
    object fornecedoresobs: TStringField
      FieldName = 'obs'
      Size = 100
    end
    object fornecedorescontato: TStringField
      FieldName = 'contato'
      Size = 30
    end
    object fornecedoresempresa: TIntegerField
      FieldName = 'empresa'
    end
    object fornecedoresfantasia: TStringField
      FieldName = 'fantasia'
      Size = 50
    end
    object fornecedoresdtnasc: TDateField
      FieldName = 'dtnasc'
    end
    object fornecedorescnh: TFloatField
      FieldName = 'cnh'
    end
    object fornecedoresdtcnh: TDateField
      FieldName = 'dtcnh'
    end
    object fornecedoresfuncao: TStringField
      FieldName = 'funcao'
      Size = 30
    end
    object fornecedoresctps: TStringField
      FieldName = 'ctps'
      Size = 15
    end
    object fornecedoresPlanoSaude: TStringField
      FieldName = 'PlanoSaude'
      Size = 25
    end
    object fornecedoressituacao: TStringField
      FieldName = 'situacao'
      Size = 1
    end
    object fornecedoresapelido: TStringField
      FieldName = 'apelido'
      Size = 30
    end
    object fornecedoresNfilhos: TIntegerField
      FieldName = 'Nfilhos'
    end
    object fornecedoresNDependentes: TIntegerField
      FieldName = 'NDependentes'
    end
    object fornecedoresDtAdmissao: TDateField
      FieldName = 'DtAdmissao'
    end
    object fornecedoresDtDemissao: TDateField
      FieldName = 'DtDemissao'
    end
    object fornecedoresfiliacao: TStringField
      FieldName = 'filiacao'
      Size = 100
    end
    object fornecedoresorgaoemissor: TStringField
      FieldName = 'orgaoemissor'
      Size = 5
    end
    object fornecedoresinss_pis: TStringField
      FieldName = 'inss_pis'
      Size = 15
    end
    object fornecedoresterceirizado: TStringField
      FieldName = 'terceirizado'
      Size = 1
    end
    object fornecedoressexo: TStringField
      FieldName = 'sexo'
      Size = 1
    end
    object fornecedorescomissao: TFloatField
      FieldName = 'comissao'
    end
    object fornecedoresultvenda: TIntegerField
      FieldName = 'ultvenda'
    end
    object fornecedoressalario: TFloatField
      FieldName = 'salario'
    end
    object fornecedoresmatricula: TStringField
      FieldName = 'matricula'
      Size = 15
    end
    object fornecedorestipoc: TStringField
      FieldName = 'tipoc'
      Size = 1
    end
    object fornecedoresagencia: TStringField
      FieldName = 'agencia'
      Size = 10
    end
    object fornecedoresconta: TStringField
      FieldName = 'conta'
      Size = 10
    end
    object fornecedoresbanco: TStringField
      FieldName = 'banco'
      Size = 3
    end
    object fornecedoreshoraent: TStringField
      FieldName = 'horaent'
      Size = 4
    end
    object fornecedoreshoralm: TStringField
      FieldName = 'horalm'
      Size = 10
    end
    object fornecedoreshoraalmv: TStringField
      FieldName = 'horaalmv'
      Size = 4
    end
    object fornecedoreshorasai: TStringField
      FieldName = 'horasai'
      Size = 4
    end
    object fornecedoresfolga: TStringField
      FieldName = 'folga'
    end
    object fornecedoresativo: TStringField
      FieldName = 'ativo'
      Size = 1
    end
  end
  object docreceber: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from docreceber')
    Params = <>
    Left = 744
    object docrecebercod: TIntegerField
      FieldName = 'cod'
    end
    object docrecebercliente: TIntegerField
      FieldName = 'cliente'
      Required = True
    end
    object docrecebertipo: TStringField
      FieldName = 'tipo'
      Required = True
      Size = 2
    end
    object docreceberdoc: TStringField
      FieldName = 'doc'
      Required = True
      Size = 15
    end
    object docreceberemissao: TDateField
      FieldName = 'emissao'
      Required = True
    end
    object docrecebervencto: TDateField
      FieldName = 'vencto'
      Required = True
    end
    object docrecebervalor: TFloatField
      FieldName = 'valor'
      Required = True
    end
    object docreceberliquido: TFloatField
      FieldName = 'liquido'
    end
    object docreceberlocalcob: TStringField
      FieldName = 'localcob'
      Size = 30
    end
    object docreceberN_Numero: TStringField
      FieldName = 'N_Numero'
    end
    object docreceberbanco: TIntegerField
      FieldName = 'banco'
    end
    object docreceberag: TStringField
      FieldName = 'ag'
      Size = 10
    end
    object docreceberContaCorrente: TStringField
      FieldName = 'ContaCorrente'
      Size = 5
    end
    object docreceberobs: TStringField
      FieldName = 'obs'
      Size = 150
    end
    object docreceberconta: TStringField
      FieldName = 'conta'
      Size = 5
    end
    object docreceberplanoconta: TStringField
      FieldName = 'planoconta'
      Size = 8
    end
    object docreceberpgto: TDateField
      FieldName = 'pgto'
    end
    object docreceberjuros: TFloatField
      FieldName = 'juros'
    end
    object docrecebermulta: TFloatField
      FieldName = 'multa'
    end
    object docrecebervalorpago: TFloatField
      FieldName = 'valorpago'
    end
    object docreceberobsI: TStringField
      FieldName = 'obsI'
      Size = 100
    end
    object docrecebertarifa: TFloatField
      FieldName = 'tarifa'
    end
    object docreceberprotesto: TDateField
      FieldName = 'protesto'
    end
    object docreceberCalJuros: TFloatField
      FieldName = 'CalJuros'
    end
    object docreceberCalMulta: TFloatField
      FieldName = 'CalMulta'
    end
    object docreceberAgenciaCC: TStringField
      FieldName = 'AgenciaCC'
    end
    object docreceberCodbarra: TStringField
      FieldName = 'Codbarra'
      Size = 50
    end
    object docreceberLinhaDigitada: TStringField
      FieldName = 'LinhaDigitada'
      Size = 50
    end
    object docrecebercheque: TIntegerField
      FieldName = 'cheque'
    end
    object docreceberdocorigem: TStringField
      FieldName = 'docorigem'
      Size = 15
    end
    object docreceberdesconto: TFloatField
      FieldName = 'desconto'
    end
    object docreceberplanojuros: TStringField
      FieldName = 'planojuros'
      Size = 8
    end
    object docreceberempresa: TIntegerField
      FieldName = 'empresa'
    end
    object docreceberatraso: TFloatField
      FieldName = 'atraso'
    end
    object docrecebervaloratraso: TFloatField
      FieldName = 'valoratraso'
    end
    object docreceberjuros1: TFloatField
      FieldName = 'juros1'
    end
    object docrecebermulta1: TFloatField
      FieldName = 'multa1'
    end
    object docrecebercomissao: TFloatField
      FieldName = 'comissao'
    end
    object docrecebertarifa_bol: TFloatField
      FieldName = 'tarifa_bol'
    end
    object docreceberBol_gerado: TStringField
      FieldName = 'Bol_gerado'
      Size = 1
    end
    object docrecebernf: TStringField
      FieldName = 'nf'
      Size = 15
    end
    object docrecebervendedor: TIntegerField
      FieldName = 'vendedor'
    end
  end
  object DocReceberGeral: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select C.nome,D.doc,D.emissao,D.vencto,D.liquido,'
      'D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,'
      'D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf'
      'from Clientes C, DocReceber D'
      'where (D.cliente=C.codigo) and (D.emissao ='#39'2007/05/14'#39')')
    Params = <>
    Left = 744
    Top = 48
    object DocReceberGeralnome: TStringField
      FieldName = 'nome'
      Required = True
      Size = 70
    end
    object DocReceberGeraldoc: TStringField
      FieldName = 'doc'
      Required = True
      Size = 15
    end
    object DocReceberGeralemissao: TDateField
      FieldName = 'emissao'
      Required = True
    end
    object DocReceberGeralvencto: TDateField
      FieldName = 'vencto'
      Required = True
    end
    object DocReceberGeralliquido: TFloatField
      FieldName = 'liquido'
      DisplayFormat = '#,##0.00'
    end
    object DocReceberGeraltipo: TStringField
      FieldName = 'tipo'
      Required = True
      Size = 2
    end
    object DocReceberGeralcod: TIntegerField
      FieldName = 'cod'
    end
    object DocReceberGeralatraso: TFloatField
      FieldName = 'atraso'
    end
    object DocReceberGeralvaloratraso: TFloatField
      FieldName = 'valoratraso'
      DisplayFormat = '#,##0.00'
    end
    object DocReceberGeraljuros1: TFloatField
      FieldName = 'juros1'
      DisplayFormat = '#,##0.00'
    end
    object DocReceberGeralmulta1: TFloatField
      FieldName = 'multa1'
      DisplayFormat = '#,##0.00'
    end
    object DocReceberGeralpgto: TDateField
      FieldName = 'pgto'
    end
    object DocReceberGeralvalorpago: TFloatField
      FieldName = 'valorpago'
      DisplayFormat = '#,##0.00'
    end
    object DocReceberGeralN_numero: TStringField
      FieldName = 'N_numero'
    end
    object DocReceberGeralcliente: TIntegerField
      FieldName = 'cliente'
      Required = True
    end
    object DocReceberGeralnf: TStringField
      FieldName = 'nf'
      Size = 15
    end
  end
  object dsdocreceber: TDataSource
    DataSet = docreceber
    Left = 856
  end
  object dsDocReceberGeral: TDataSource
    DataSet = DocReceberGeral
    Left = 856
    Top = 48
  end
  object dsformapagto: TDataSource
    DataSet = formapagto
    Left = 856
    Top = 96
  end
  object dsfinanceiro: TDataSource
    DataSet = financeiro
    Left = 856
    Top = 144
  end
  object dsContasCorrente: TDataSource
    DataSet = ContasCorrente
    Left = 856
    Top = 192
  end
  object formapagto: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from formapagto')
    Params = <>
    Left = 744
    Top = 96
    object formapagtocodigo: TStringField
      FieldName = 'codigo'
      Required = True
      Size = 2
    end
    object formapagtodescricao: TStringField
      FieldName = 'descricao'
      Required = True
      Size = 50
    end
    object formapagtodias: TIntegerField
      FieldName = 'dias'
    end
    object formapagtocomissao: TFloatField
      FieldName = 'comissao'
    end
  end
  object financeiro: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from financeiro')
    Params = <>
    Left = 744
    Top = 144
    object financeirocodigo: TIntegerField
      FieldName = 'codigo'
    end
    object financeiroconta: TStringField
      FieldName = 'conta'
      Required = True
      Size = 5
    end
    object financeirodata: TDateField
      FieldName = 'data'
      Required = True
    end
    object financeirohistorico: TStringField
      FieldName = 'historico'
      Size = 80
    end
    object financeirotipo: TStringField
      FieldName = 'tipo'
      Required = True
      Size = 1
    end
    object financeirocredito: TFloatField
      FieldName = 'credito'
      DisplayFormat = '#,##0.00'
    end
    object financeirodebito: TFloatField
      FieldName = 'debito'
      DisplayFormat = '#,##0.00'
    end
    object financeirosaldoconta: TFloatField
      FieldName = 'saldoconta'
    end
    object financeirosaldoplanoconta: TFloatField
      FieldName = 'saldoplanoconta'
    end
    object financeiroempresa: TIntegerField
      FieldName = 'empresa'
    end
    object financeiroOperador: TStringField
      FieldName = 'Operador'
      Size = 30
    end
    object financeiroData_Operacao: TDateField
      FieldName = 'Data_Operacao'
    end
    object financeiroHora_Operacao: TStringField
      FieldName = 'Hora_Operacao'
      Size = 8
    end
    object financeirodoc: TStringField
      FieldName = 'doc'
      Size = 15
    end
    object financeirodocorigem: TStringField
      FieldName = 'docorigem'
      Size = 15
    end
    object financeiroplanoconta: TStringField
      FieldName = 'planoconta'
      Size = 8
    end
    object financeirocentrocusto: TStringField
      FieldName = 'centrocusto'
      Size = 10
    end
    object financeiroqtd: TFloatField
      FieldName = 'qtd'
    end
    object financeirooperador_rec: TStringField
      FieldName = 'operador_rec'
      Size = 30
    end
    object financeirodata_rec: TDateField
      FieldName = 'data_rec'
    end
    object financeirohora_rec: TStringField
      FieldName = 'hora_rec'
      Size = 8
    end
    object financeirovendedor: TIntegerField
      FieldName = 'vendedor'
    end
    object financeirocomissao: TFloatField
      FieldName = 'comissao'
    end
  end
  object ContasCorrente: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from ContasCorrente')
    Params = <>
    Left = 744
    Top = 192
    object ContasCorrenteconta: TStringField
      FieldName = 'conta'
      Required = True
      Size = 5
    end
    object ContasCorrentedescricao: TStringField
      FieldName = 'descricao'
      Required = True
      Size = 30
    end
    object ContasCorrentecarteira: TIntegerField
      FieldName = 'carteira'
    end
    object ContasCorrenteN_Numero: TFloatField
      FieldName = 'N_Numero'
    end
    object ContasCorrenteconvenio: TIntegerField
      FieldName = 'convenio'
    end
    object ContasCorrentebanco: TIntegerField
      FieldName = 'banco'
    end
    object ContasCorrenteagencia: TIntegerField
      FieldName = 'agencia'
    end
    object ContasCorrenteagenciad: TStringField
      FieldName = 'agenciad'
      Size = 1
    end
    object ContasCorrentecontacorrente: TIntegerField
      FieldName = 'contacorrente'
    end
    object ContasCorrentecontacorrented: TStringField
      FieldName = 'contacorrented'
      Size = 1
    end
    object ContasCorrenteempresa: TIntegerField
      FieldName = 'empresa'
    end
    object ContasCorrenteAgenciaCC: TStringField
      FieldName = 'AgenciaCC'
      Size = 16
    end
    object ContasCorrentepathretorno: TStringField
      FieldName = 'pathretorno'
      Size = 40
    end
    object ContasCorrenteagenciaccd: TStringField
      FieldName = 'agenciaccd'
      Size = 1
    end
    object ContasCorrentecontacontabil: TIntegerField
      FieldName = 'contacontabil'
    end
  end
  object PlanoContas: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from PlanoContas')
    Params = <>
    Left = 744
    Top = 288
    object PlanoContascodigo: TStringField
      FieldName = 'codigo'
      Required = True
      Size = 8
    end
    object PlanoContasdescricao: TStringField
      FieldName = 'descricao'
      Required = True
      Size = 50
    end
    object PlanoContaschave: TStringField
      FieldName = 'chave'
      Required = True
      Size = 60
    end
    object PlanoContasdeb1: TFloatField
      FieldName = 'deb1'
    end
    object PlanoContasdeb2: TFloatField
      FieldName = 'deb2'
    end
    object PlanoContasdeb3: TFloatField
      FieldName = 'deb3'
    end
    object PlanoContasdeb4: TFloatField
      FieldName = 'deb4'
    end
    object PlanoContasdeb5: TFloatField
      FieldName = 'deb5'
    end
    object PlanoContasdeb6: TFloatField
      FieldName = 'deb6'
    end
    object PlanoContasdeb7: TFloatField
      FieldName = 'deb7'
    end
    object PlanoContasdeb8: TFloatField
      FieldName = 'deb8'
    end
    object PlanoContasdeb9: TFloatField
      FieldName = 'deb9'
    end
    object PlanoContasdeb10: TFloatField
      FieldName = 'deb10'
    end
    object PlanoContasdeb11: TFloatField
      FieldName = 'deb11'
    end
    object PlanoContasdeb12: TFloatField
      FieldName = 'deb12'
    end
    object PlanoContascred1: TFloatField
      FieldName = 'cred1'
    end
    object PlanoContascred2: TFloatField
      FieldName = 'cred2'
    end
    object PlanoContascred3: TFloatField
      FieldName = 'cred3'
    end
    object PlanoContascred4: TFloatField
      FieldName = 'cred4'
    end
    object PlanoContascred5: TFloatField
      FieldName = 'cred5'
    end
    object PlanoContascred6: TFloatField
      FieldName = 'cred6'
    end
    object PlanoContascred7: TFloatField
      FieldName = 'cred7'
    end
    object PlanoContascred8: TFloatField
      FieldName = 'cred8'
    end
    object PlanoContascred9: TFloatField
      FieldName = 'cred9'
    end
    object PlanoContascred10: TFloatField
      FieldName = 'cred10'
    end
    object PlanoContascred11: TFloatField
      FieldName = 'cred11'
    end
    object PlanoContascred12: TFloatField
      FieldName = 'cred12'
    end
    object PlanoContassaldoant: TFloatField
      FieldName = 'saldoant'
    end
  end
  object dsPlanoContas: TDataSource
    DataSet = PlanoContas
    Left = 856
    Top = 288
  end
  object DocPagarGeral: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select F.nome,D.doc,D.emissao,D.vencto,D.valor,'
      
        'D.tipo,D.localcob,D.localcob,D.cod,D.atraso,D.valoratraso,D.juro' +
        's1,D.multa1,'
      'D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,'
      'D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor'
      'from Fornecedores F, DocPagar D'
      'where (D.fornecedor=F.codigo) and (D.pgto is null)')
    Params = <>
    Left = 744
    Top = 384
    object DocPagarGeralnome: TStringField
      FieldName = 'nome'
      Size = 70
    end
    object DocPagarGeraldoc: TStringField
      FieldName = 'doc'
      Required = True
      Size = 15
    end
    object DocPagarGeralemissao: TDateField
      FieldName = 'emissao'
      Required = True
    end
    object DocPagarGeralvencto: TDateField
      FieldName = 'vencto'
      Required = True
    end
    object DocPagarGeralvalor: TFloatField
      FieldName = 'valor'
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object DocPagarGeraltipo: TStringField
      FieldName = 'tipo'
      Required = True
      Size = 2
    end
    object DocPagarGerallocalcob: TStringField
      FieldName = 'localcob'
      Size = 30
    end
    object DocPagarGeralcod: TIntegerField
      FieldName = 'cod'
    end
    object DocPagarGeralatraso: TFloatField
      FieldName = 'atraso'
    end
    object DocPagarGeralvaloratraso: TFloatField
      FieldName = 'valoratraso'
    end
    object DocPagarGeraljuros1: TFloatField
      FieldName = 'juros1'
      DisplayFormat = '#,##0.00'
    end
    object DocPagarGeralmulta1: TFloatField
      FieldName = 'multa1'
      DisplayFormat = '#,##0.00'
    end
    object DocPagarGeralpgto: TDateField
      FieldName = 'pgto'
    end
    object DocPagarGeralobs: TStringField
      FieldName = 'obs'
      Size = 120
    end
    object DocPagarGeralvalorpago: TFloatField
      FieldName = 'valorpago'
      DisplayFormat = '#,##0.00'
    end
    object DocPagarGeralpercjuros: TFloatField
      FieldName = 'percjuros'
    end
    object DocPagarGeralmulta: TFloatField
      FieldName = 'multa'
    end
    object DocPagarGeraljuros: TFloatField
      FieldName = 'juros'
    end
    object DocPagarGeraldesconto: TFloatField
      FieldName = 'desconto'
    end
    object DocPagarGeralAutorizado: TStringField
      FieldName = 'Autorizado'
      Size = 1
    end
    object DocPagarGeralDataAutorizacao: TDateField
      FieldName = 'DataAutorizacao'
    end
    object DocPagarGeralAutorizadoPor: TStringField
      FieldName = 'AutorizadoPor'
    end
  end
  object docpagar: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from docpagar')
    Params = <>
    Left = 744
    Top = 336
    object docpagarcod: TIntegerField
      FieldName = 'cod'
    end
    object docpagarfornecedor: TIntegerField
      FieldName = 'fornecedor'
      Required = True
    end
    object docpagarfixa: TStringField
      FieldName = 'fixa'
      Required = True
      Size = 1
    end
    object docpagartipo: TStringField
      FieldName = 'tipo'
      Required = True
      Size = 2
    end
    object docpagardoc: TStringField
      FieldName = 'doc'
      Required = True
      Size = 15
    end
    object docpagaremissao: TDateField
      FieldName = 'emissao'
      Required = True
    end
    object docpagarvencto: TDateField
      FieldName = 'vencto'
      Required = True
    end
    object docpagarvalor: TFloatField
      FieldName = 'valor'
      Required = True
    end
    object docpagarlocalcob: TStringField
      FieldName = 'localcob'
      Size = 30
    end
    object docpagarvlrjuros: TFloatField
      FieldName = 'vlrjuros'
    end
    object docpagarpercjuros: TFloatField
      FieldName = 'percjuros'
    end
    object docpagarmulta: TFloatField
      FieldName = 'multa'
    end
    object docpagardescontopgto: TFloatField
      FieldName = 'descontopgto'
    end
    object docpagarpgtoI: TDateField
      FieldName = 'pgtoI'
    end
    object docpagarobs: TStringField
      FieldName = 'obs'
      Size = 120
    end
    object docpagarconta: TStringField
      FieldName = 'conta'
      Size = 5
    end
    object docpagarplanoconta: TStringField
      FieldName = 'planoconta'
      Size = 8
    end
    object docpagarpgto: TDateField
      FieldName = 'pgto'
    end
    object docpagarvalorpago: TFloatField
      FieldName = 'valorpago'
    end
    object docpagarjuros: TFloatField
      FieldName = 'juros'
    end
    object docpagardesconto: TFloatField
      FieldName = 'desconto'
    end
    object docpagarobsI: TStringField
      FieldName = 'obsI'
      Size = 100
    end
    object docpagardocorigem: TStringField
      FieldName = 'docorigem'
      Size = 15
    end
    object docpagarplanojuros: TStringField
      FieldName = 'planojuros'
      Size = 8
    end
    object docpagarempresa: TIntegerField
      FieldName = 'empresa'
    end
    object docpagarcentrocusto: TStringField
      FieldName = 'centrocusto'
      Size = 10
    end
    object docpagaratraso: TFloatField
      FieldName = 'atraso'
    end
    object docpagarjuros1: TFloatField
      FieldName = 'juros1'
    end
    object docpagarmulta1: TFloatField
      FieldName = 'multa1'
    end
    object docpagarvaloratraso: TFloatField
      FieldName = 'valoratraso'
    end
    object docpagarplconta: TStringField
      FieldName = 'plconta'
      Size = 8
    end
    object docpagarOperador: TStringField
      FieldName = 'Operador'
    end
    object docpagarData_Operacao: TDateField
      FieldName = 'Data_Operacao'
    end
    object docpagarHora_Operacao: TStringField
      FieldName = 'Hora_Operacao'
      Size = 10
    end
    object docpagarpagtoem: TStringField
      FieldName = 'pagtoem'
      Size = 1
    end
    object docpagarAutorizado: TStringField
      FieldName = 'Autorizado'
      Size = 1
    end
    object docpagarDataAutorizacao: TDateField
      FieldName = 'DataAutorizacao'
    end
    object docpagarAutorizadoPor: TStringField
      FieldName = 'AutorizadoPor'
    end
    object docpagarbanco: TIntegerField
      FieldName = 'banco'
    end
    object docpagarag: TStringField
      FieldName = 'ag'
      Size = 10
    end
    object docpagarcheque: TIntegerField
      FieldName = 'cheque'
    end
    object docpagarvale: TStringField
      FieldName = 'vale'
      Size = 1
    end
    object docpagarcontacorrente: TIntegerField
      FieldName = 'contacorrente'
    end
  end
  object dsdocpagar: TDataSource
    DataSet = docpagar
    Left = 856
    Top = 336
  end
  object dsDocPagarGeral: TDataSource
    DataSet = DocPagarGeral
    Left = 856
    Top = 384
  end
  object mapafaturamento: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from mapafaturamento')
    Params = <>
    Left = 744
    Top = 432
    object mapafaturamentodata: TDateField
      FieldName = 'data'
      Required = True
    end
    object mapafaturamentoavista: TFloatField
      FieldName = 'avista'
    end
    object mapafaturamentoaprazo: TFloatField
      FieldName = 'aprazo'
    end
    object mapafaturamentoacumulado: TFloatField
      FieldName = 'acumulado'
    end
  end
  object mapadesembolso: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from mapadesembolso')
    Params = <>
    Left = 744
    Top = 480
    object mapadesembolsoTipoI: TStringField
      FieldName = 'TipoI'
      Required = True
      Size = 1
    end
    object mapadesembolsotipo: TStringField
      FieldName = 'tipo'
      Required = True
      Size = 2
    end
    object mapadesembolsotexto: TStringField
      FieldName = 'texto'
      Required = True
      Size = 40
    end
    object mapadesembolsoVlrReceber: TFloatField
      FieldName = 'VlrReceber'
    end
    object mapadesembolsoVlrPagar: TFloatField
      FieldName = 'VlrPagar'
    end
  end
  object dsmapafaturamento: TDataSource
    DataSet = mapafaturamento
    Left = 856
    Top = 432
  end
  object dsmapadesembolso: TDataSource
    DataSet = mapadesembolso
    Left = 856
    Top = 480
  end
  object retorno: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from retorno')
    Params = <>
    Left = 744
    Top = 528
    object retornoN_Numero: TStringField
      FieldName = 'N_Numero'
      Required = True
      Size = 30
    end
    object retornodata_pgto: TDateField
      FieldName = 'data_pgto'
      Required = True
    end
    object retornovalor_doc: TFloatField
      FieldName = 'valor_doc'
      Required = True
    end
    object retornobco: TStringField
      FieldName = 'bco'
      Size = 3
    end
    object retornoagencia: TStringField
      FieldName = 'agencia'
      Size = 4
    end
    object retornodigito: TStringField
      FieldName = 'digito'
      Size = 1
    end
    object retornodata_credito: TDateField
      FieldName = 'data_credito'
    end
    object retornotarifa: TFloatField
      FieldName = 'tarifa'
    end
    object retornovlr_recebido: TFloatField
      FieldName = 'vlr_recebido'
    end
    object retornojuros: TFloatField
      FieldName = 'juros'
    end
    object retornoliquido: TFloatField
      FieldName = 'liquido'
      Required = True
    end
    object retornoobs: TStringField
      FieldName = 'obs'
      Size = 50
    end
    object retornocodretorno: TStringField
      FieldName = 'codretorno'
      Size = 2
    end
  end
  object TotalDocPagar: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select sum(valor) as total from docpagar')
    Params = <>
    Left = 216
    object TotalDocPagartotal: TFloatField
      FieldName = 'total'
    end
  end
  object TotalDocReceber: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select sum(liquido) as total from docreceber')
    Params = <>
    Left = 312
    object TotalDocRecebertotal: TFloatField
      FieldName = 'total'
    end
  end
  object dsgraf_planocontas: TDataSource
    DataSet = graf_planocontas
    Left = 128
    Top = 248
  end
  object graf_planocontas: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from graf_planocontas')
    Params = <>
    Left = 32
    Top = 248
    object graf_planocontasdescricao: TStringField
      FieldName = 'descricao'
      Required = True
      Size = 50
    end
    object graf_planocontasentrada: TFloatField
      FieldName = 'entrada'
    end
    object graf_planocontassaida: TFloatField
      FieldName = 'saida'
    end
  end
  object contascorrente_saldo: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from contascorrente_saldo')
    Params = <>
    Left = 744
    Top = 240
    object contascorrente_saldoconta: TStringField
      FieldName = 'conta'
      Required = True
      Size = 5
    end
    object contascorrente_saldoano: TStringField
      FieldName = 'ano'
      Required = True
      Size = 4
    end
    object contascorrente_saldoSaldoAnt: TFloatField
      FieldName = 'SaldoAnt'
    end
    object contascorrente_saldodeb1: TFloatField
      FieldName = 'deb1'
    end
    object contascorrente_saldodeb2: TFloatField
      FieldName = 'deb2'
    end
    object contascorrente_saldodeb3: TFloatField
      FieldName = 'deb3'
    end
    object contascorrente_saldodeb4: TFloatField
      FieldName = 'deb4'
    end
    object contascorrente_saldodeb5: TFloatField
      FieldName = 'deb5'
    end
    object contascorrente_saldodeb6: TFloatField
      FieldName = 'deb6'
    end
    object contascorrente_saldodeb7: TFloatField
      FieldName = 'deb7'
    end
    object contascorrente_saldodeb8: TFloatField
      FieldName = 'deb8'
    end
    object contascorrente_saldodeb9: TFloatField
      FieldName = 'deb9'
    end
    object contascorrente_saldodeb10: TFloatField
      FieldName = 'deb10'
    end
    object contascorrente_saldodeb11: TFloatField
      FieldName = 'deb11'
    end
    object contascorrente_saldodeb12: TFloatField
      FieldName = 'deb12'
    end
    object contascorrente_saldocred1: TFloatField
      FieldName = 'cred1'
    end
    object contascorrente_saldocred2: TFloatField
      FieldName = 'cred2'
    end
    object contascorrente_saldocred3: TFloatField
      FieldName = 'cred3'
    end
    object contascorrente_saldocred4: TFloatField
      FieldName = 'cred4'
    end
    object contascorrente_saldocred5: TFloatField
      FieldName = 'cred5'
    end
    object contascorrente_saldocred6: TFloatField
      FieldName = 'cred6'
    end
    object contascorrente_saldocred7: TFloatField
      FieldName = 'cred7'
    end
    object contascorrente_saldocred8: TFloatField
      FieldName = 'cred8'
    end
    object contascorrente_saldocred9: TFloatField
      FieldName = 'cred9'
    end
    object contascorrente_saldocred10: TFloatField
      FieldName = 'cred10'
    end
    object contascorrente_saldocred11: TFloatField
      FieldName = 'cred11'
    end
    object contascorrente_saldocred12: TFloatField
      FieldName = 'cred12'
    end
  end
  object dscontascorrente_saldo: TDataSource
    DataSet = contascorrente_saldo
    Left = 856
    Top = 240
  end
  object grupos: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from grupos')
    Params = <>
    Left = 213
    Top = 152
    object gruposcodigo: TStringField
      FieldName = 'codigo'
      Required = True
      Size = 4
    end
    object gruposdescricao: TStringField
      FieldName = 'descricao'
      Required = True
      Size = 40
    end
  end
  object dsgrupos: TDataSource
    DataSet = grupos
    Left = 325
    Top = 152
  end
  object produtos: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from produtos')
    Params = <>
    Left = 213
    Top = 48
    object produtoscodigo: TIntegerField
      FieldName = 'codigo'
    end
    object produtosnome: TStringField
      FieldName = 'nome'
      Required = True
      Size = 50
    end
    object produtosgrupo: TStringField
      FieldName = 'grupo'
      Size = 7
    end
    object produtosreferencia: TStringField
      FieldName = 'referencia'
    end
    object produtosqtdemb: TFloatField
      FieldName = 'qtdemb'
    end
    object produtosundint: TStringField
      FieldName = 'undint'
      Size = 5
    end
    object produtosundext: TStringField
      FieldName = 'undext'
      Size = 5
    end
    object produtosestmin: TFloatField
      FieldName = 'estmin'
    end
    object produtosestmax: TFloatField
      FieldName = 'estmax'
    end
    object produtosfornecedor: TIntegerField
      FieldName = 'fornecedor'
    end
    object produtoscompra: TFloatField
      FieldName = 'compra'
      DisplayFormat = '#,##0.00'
    end
    object produtosestoque: TFloatField
      FieldName = 'estoque'
    end
    object produtosativo: TStringField
      FieldName = 'ativo'
      Size = 1
    end
    object produtosprazores: TIntegerField
      FieldName = 'prazores'
    end
    object produtoscodbarra: TStringField
      FieldName = 'codbarra'
      Size = 15
    end
    object produtosvenda: TFloatField
      FieldName = 'venda'
      DisplayFormat = '#,##0.00'
    end
    object produtosncm: TStringField
      FieldName = 'ncm'
      Size = 8
    end
    object produtosredicms: TFloatField
      FieldName = 'redicms'
    end
    object produtosatacado: TFloatField
      FieldName = 'atacado'
      DisplayFormat = '#,##0.00'
    end
    object produtoscomissao: TFloatField
      FieldName = 'comissao'
    end
  end
  object dsprodutos: TDataSource
    DataSet = produtos
    Left = 325
    Top = 48
  end
  object nf: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from nf')
    Params = <>
    Left = 216
    Top = 200
    object nfdocumento: TStringField
      FieldName = 'documento'
      Required = True
      Size = 15
    end
    object nffavorecido: TIntegerField
      FieldName = 'favorecido'
      Required = True
    end
    object nftipo: TStringField
      FieldName = 'tipo'
      Required = True
      Size = 1
    end
    object nfemissao: TDateField
      FieldName = 'emissao'
      Required = True
    end
    object nfrecepcao: TDateField
      FieldName = 'recepcao'
      Required = True
    end
    object nfserie: TStringField
      FieldName = 'serie'
      Size = 3
    end
    object nfcfop: TStringField
      FieldName = 'cfop'
      Size = 6
    end
    object nfvlrcontabil: TFloatField
      FieldName = 'vlrcontabil'
    end
    object nfbasecalculo: TFloatField
      FieldName = 'basecalculo'
    end
    object nficmsp: TFloatField
      FieldName = 'icmsp'
    end
    object nfvlricms: TFloatField
      FieldName = 'vlricms'
    end
    object nfvlripi: TFloatField
      FieldName = 'vlripi'
    end
    object nfvlrisentas: TFloatField
      FieldName = 'vlrisentas'
    end
    object nfvlroutras: TFloatField
      FieldName = 'vlroutras'
    end
    object nfbasesubst: TFloatField
      FieldName = 'basesubst'
    end
    object nficmssubst: TFloatField
      FieldName = 'icmssubst'
    end
    object nfvlrfrete: TFloatField
      FieldName = 'vlrfrete'
    end
    object nfcancelada: TStringField
      FieldName = 'cancelada'
      Size = 1
    end
    object nfiss: TFloatField
      FieldName = 'iss'
    end
    object nfvlriss: TFloatField
      FieldName = 'vlriss'
    end
    object nfmotivo: TStringField
      FieldName = 'motivo'
      Size = 40
    end
    object nfretencao1: TStringField
      FieldName = 'retencao1'
      Size = 10
    end
    object nfretencao2: TStringField
      FieldName = 'retencao2'
      Size = 10
    end
    object nfretencao3: TStringField
      FieldName = 'retencao3'
      Size = 10
    end
    object nfperc1: TFloatField
      FieldName = 'perc1'
    end
    object nfperc2: TFloatField
      FieldName = 'perc2'
    end
    object nfperc3: TFloatField
      FieldName = 'perc3'
    end
    object nfobsnf: TStringField
      FieldName = 'obsnf'
      Size = 50
    end
    object nfchaveNfe: TStringField
      FieldName = 'chaveNfe'
      Size = 44
    end
    object nfreciboNfe: TStringField
      FieldName = 'reciboNfe'
      Size = 40
    end
    object nfprotocoloNfe: TStringField
      FieldName = 'protocoloNfe'
      Size = 40
    end
    object nfxmlNfe: TMemoField
      FieldName = 'xmlNfe'
      BlobType = ftMemo
    end
  end
  object dsnf: TDataSource
    DataSet = nf
    Left = 328
    Top = 200
  end
  object movestoque: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from movestoque')
    Params = <>
    Left = 216
    Top = 248
    object movestoquedocumento: TStringField
      FieldName = 'documento'
      Required = True
      Size = 15
    end
    object movestoquefavorecido: TIntegerField
      FieldName = 'favorecido'
      Required = True
    end
    object movestoqueproduto: TIntegerField
      FieldName = 'produto'
      Required = True
    end
    object movestoquedata: TDateField
      FieldName = 'data'
      Required = True
    end
    object movestoqueTipoMov: TStringField
      FieldName = 'TipoMov'
      Required = True
      Size = 2
    end
    object movestoqueqtd: TFloatField
      FieldName = 'qtd'
      Required = True
    end
    object movestoqueVlrUnit: TFloatField
      FieldName = 'VlrUnit'
      Required = True
    end
    object movestoqueVlrTotal: TFloatField
      FieldName = 'VlrTotal'
      Required = True
    end
    object movestoquevendedor: TIntegerField
      FieldName = 'vendedor'
    end
    object movestoquedesconto: TFloatField
      FieldName = 'desconto'
    end
    object movestoquelocal: TStringField
      FieldName = 'local'
      Size = 1
    end
    object movestoqueund: TStringField
      FieldName = 'und'
      Size = 5
    end
    object movestoquebaseicms: TFloatField
      FieldName = 'baseicms'
    end
    object movestoquevlricms: TFloatField
      FieldName = 'vlricms'
    end
    object movestoquevlr50: TFloatField
      FieldName = 'vlr50'
    end
  end
  object dsmovestoque: TDataSource
    DataSet = movestoque
    Left = 328
    Top = 248
  end
  object empresas_net: TZQuery
    Connection = ZConnection2
    SQL.Strings = (
      'select * from empresas')
    Params = <>
    Left = 528
    Top = 48
    object empresas_netcliente_cnpj: TStringField
      FieldName = 'cliente_cnpj'
      Required = True
      Size = 14
    end
    object empresas_netinadimplente: TStringField
      FieldName = 'inadimplente'
      Required = True
      Size = 1
    end
    object empresas_netchave: TStringField
      FieldName = 'chave'
      Size = 100
    end
  end
  object ZConnection2: TZConnection
    Protocol = 'mysql-5'
    HostName = 'vieirasistemas-db.ctbolotsocof.sa-east-1.rds.amazonaws.com'
    Database = 'vieirasistemas'
    User = 'vsdbaws'
    Password = 'vsdb1qazxsw23edcvfr45tgb'
    Left = 440
    Top = 48
  end
  object dsmunicipios: TDataSource
    DataSet = municipios
    Left = 576
    Top = 248
  end
  object municipios: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 464
    Top = 248
    object municipiosCodigo: TStringField
      FieldName = 'Codigo'
      Size = 7
    end
    object municipiosUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object municipiosMunicipio: TStringField
      FieldName = 'Municipio'
      Size = 50
    end
  end
  object controlcaixa: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 456
    Top = 304
    object controlcaixacodigo: TIntegerField
      FieldName = 'codigo'
    end
    object controlcaixausuario: TIntegerField
      FieldName = 'usuario'
    end
    object controlcaixadataab: TDateField
      FieldName = 'dataab'
    end
    object controlcaixahoraab: TStringField
      FieldName = 'horaab'
      Size = 5
    end
    object controlcaixavalorab: TFloatField
      FieldName = 'valorab'
    end
    object controlcaixadatafec: TDateField
      FieldName = 'datafec'
    end
    object controlcaixahorafec: TStringField
      FieldName = 'horafec'
      Size = 5
    end
    object controlcaixavalorfec: TFloatField
      FieldName = 'valorfec'
    end
  end
  object historicoclie: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from historicoclie')
    Params = <>
    Left = 216
    Top = 96
    object historicocliecodigo: TIntegerField
      FieldName = 'codigo'
    end
    object historicocliecliente: TIntegerField
      FieldName = 'cliente'
    end
    object historicocliedata: TDateField
      FieldName = 'data'
    end
    object historicocliehora: TStringField
      FieldName = 'hora'
      Size = 8
    end
    object historicoclieservico: TIntegerField
      FieldName = 'servico'
    end
    object historicoclieqtd: TFloatField
      FieldName = 'qtd'
    end
    object historicoclievalor: TFloatField
      FieldName = 'valor'
    end
    object historicocliepedido: TIntegerField
      FieldName = 'pedido'
    end
  end
  object movcomp: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 464
    Top = 360
    object movcompdocumento: TStringField
      FieldName = 'documento'
      Size = 15
    end
    object movcompfavorecido: TIntegerField
      FieldName = 'favorecido'
    end
    object movcompproduto: TIntegerField
      FieldName = 'produto'
    end
    object movcompdescricao: TStringField
      FieldName = 'descricao'
      Size = 100
    end
  end
  object movvenda: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from movvenda')
    Params = <>
    Left = 32
    Top = 344
    object movvendavendaI: TStringField
      FieldName = 'vendaI'
      Required = True
      Size = 15
    end
    object movvendaproduto: TIntegerField
      FieldName = 'produto'
      Required = True
    end
    object movvendaqtd: TFloatField
      FieldName = 'qtd'
    end
    object movvendaunit: TFloatField
      FieldName = 'unit'
    end
    object movvendatotal: TFloatField
      FieldName = 'total'
    end
    object movvendaseq: TIntegerField
      FieldName = 'seq'
    end
  end
  object venda: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from venda')
    Params = <>
    Left = 32
    Top = 296
    object vendavendaI: TStringField
      FieldName = 'vendaI'
      Required = True
      Size = 15
    end
    object vendaformapagto: TStringField
      FieldName = 'formapagto'
      Required = True
      Size = 2
    end
    object vendacliente: TIntegerField
      FieldName = 'cliente'
      Required = True
    end
    object vendavendedor: TIntegerField
      FieldName = 'vendedor'
    end
    object vendasubtotal: TFloatField
      FieldName = 'subtotal'
    end
    object vendadesconto: TFloatField
      FieldName = 'desconto'
    end
    object vendatotal: TFloatField
      FieldName = 'total'
    end
    object vendafechada: TStringField
      FieldName = 'fechada'
      Size = 1
    end
    object vendadata: TDateField
      FieldName = 'data'
    end
    object vendanf: TIntegerField
      FieldName = 'nf'
    end
    object vendaprotocolo_nfce: TStringField
      FieldName = 'protocolo_nfce'
      Size = 15
    end
    object vendaoperador: TIntegerField
      FieldName = 'operador'
    end
  end
  object dsvenda: TDataSource
    DataSet = venda
    Left = 128
    Top = 296
  end
  object dscfop: TDataSource
    DataSet = cfop
    Left = 128
    Top = 392
  end
  object cfop: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from cfop')
    Params = <>
    Left = 32
    Top = 392
    object cfopcodigo: TStringField
      FieldName = 'codigo'
      Size = 6
    end
    object cfopdescricao: TStringField
      FieldName = 'descricao'
      Size = 50
    end
    object cfopcomplemento: TStringField
      FieldName = 'complemento'
      Size = 150
    end
    object cfopicms: TFloatField
      FieldName = 'icms'
    end
  end
  object dspedidos: TDataSource
    DataSet = pedidos
    Left = 328
    Top = 296
  end
  object dsmovpedido: TDataSource
    DataSet = movpedido
    Left = 328
    Top = 344
  end
  object pedidos: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from pedidos')
    Params = <>
    Left = 216
    Top = 296
    object pedidospedido: TIntegerField
      FieldName = 'pedido'
      Required = True
    end
    object pedidoslocal: TStringField
      FieldName = 'local'
      Size = 30
    end
    object pedidostabela: TIntegerField
      FieldName = 'tabela'
    end
    object pedidositens: TFloatField
      FieldName = 'itens'
    end
    object pedidossubtotal: TFloatField
      FieldName = 'subtotal'
    end
    object pedidosdesconto: TFloatField
      FieldName = 'desconto'
    end
    object pedidostotal: TFloatField
      FieldName = 'total'
    end
    object pedidoscliente: TIntegerField
      FieldName = 'cliente'
    end
    object pedidosvendedor: TIntegerField
      FieldName = 'vendedor'
    end
    object pedidoscomissao: TFloatField
      FieldName = 'comissao'
    end
    object pedidosparcelas: TIntegerField
      FieldName = 'parcelas'
    end
    object pedidosprazo: TIntegerField
      FieldName = 'prazo'
    end
    object pedidosintervalo: TIntegerField
      FieldName = 'intervalo'
    end
    object pedidosvencto: TDateField
      FieldName = 'vencto'
    end
    object pedidosconta: TStringField
      FieldName = 'conta'
      Size = 5
    end
    object pedidosobs: TStringField
      FieldName = 'obs'
      Size = 150
    end
    object pedidosnf: TStringField
      FieldName = 'nf'
      Size = 15
    end
    object pedidosliberacao: TDateField
      FieldName = 'liberacao'
    end
    object pedidosdata: TDateField
      FieldName = 'data'
    end
    object pedidosformapgto: TStringField
      FieldName = 'formapgto'
      Size = 2
    end
    object pedidosempresa: TIntegerField
      FieldName = 'empresa'
    end
    object pedidosicmsretido: TFloatField
      FieldName = 'icmsretido'
    end
    object pedidosformapagto: TStringField
      FieldName = 'formapagto'
      Size = 2
    end
    object pedidosVlrComissao: TFloatField
      FieldName = 'VlrComissao'
    end
    object pedidosdescp: TFloatField
      FieldName = 'descp'
    end
    object pedidosdigitado: TStringField
      FieldName = 'digitado'
      Size = 30
    end
    object pedidosliberado: TStringField
      FieldName = 'liberado'
      Size = 30
    end
    object pedidosromaneio: TIntegerField
      FieldName = 'romaneio'
    end
    object pedidostipo: TStringField
      FieldName = 'tipo'
      Size = 2
    end
    object pedidoscotacao: TIntegerField
      FieldName = 'cotacao'
    end
    object pedidostipolib: TStringField
      FieldName = 'tipolib'
      Size = 5
    end
    object pedidoscfop: TStringField
      FieldName = 'cfop'
      Size = 4
    end
    object pedidosn_doc: TStringField
      FieldName = 'n_doc'
      Size = 10
    end
  end
  object movpedido: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from movpedido')
    Params = <>
    Left = 216
    Top = 344
    object movpedidovenda: TIntegerField
      FieldName = 'venda'
      Required = True
    end
    object movpedidoseq: TIntegerField
      FieldName = 'seq'
      Required = True
    end
    object movpedidoproduto: TIntegerField
      FieldName = 'produto'
      Required = True
    end
    object movpedidound: TStringField
      FieldName = 'und'
      Required = True
      Size = 5
    end
    object movpedidoqtd: TFloatField
      FieldName = 'qtd'
      Required = True
    end
    object movpedidounit: TFloatField
      FieldName = 'unit'
      Required = True
    end
    object movpedidodescp: TFloatField
      FieldName = 'descp'
    end
    object movpedidodescv: TFloatField
      FieldName = 'descv'
    end
    object movpedidototal: TFloatField
      FieldName = 'total'
      Required = True
    end
    object movpedidoicms: TFloatField
      FieldName = 'icms'
    end
    object movpedidopeso: TFloatField
      FieldName = 'peso'
    end
    object movpedidolocal: TStringField
      FieldName = 'local'
      Size = 1
    end
    object movpedidolote: TStringField
      FieldName = 'lote'
    end
    object movpedidobaseicms: TFloatField
      FieldName = 'baseicms'
    end
  end
  object vendaformaspagto: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from vendaformaspagto')
    Params = <>
    Left = 216
    Top = 392
    object vendaformaspagtovenda: TStringField
      FieldName = 'venda'
      Required = True
      Size = 15
    end
    object vendaformaspagtoformapagto: TStringField
      FieldName = 'formapagto'
      Required = True
      Size = 2
    end
    object vendaformaspagtocliente: TIntegerField
      FieldName = 'cliente'
      Required = True
    end
    object vendaformaspagtoparcelas: TIntegerField
      FieldName = 'parcelas'
      Required = True
    end
    object vendaformaspagtovalor: TFloatField
      FieldName = 'valor'
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object vendaformaspagtoprazo: TIntegerField
      FieldName = 'prazo'
    end
    object vendaformaspagtointervalo: TIntegerField
      FieldName = 'intervalo'
    end
    object vendaformaspagtotipo: TStringField
      FieldName = 'tipo'
      Size = 1
    end
  end
  object dsvendaformaspagto: TDataSource
    DataSet = vendaformaspagto
    Left = 328
    Top = 392
  end
end
