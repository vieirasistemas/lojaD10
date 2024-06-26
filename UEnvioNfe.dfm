object fEnvioNfe: TfEnvioNfe
  Left = 181
  Top = 121
  Width = 1058
  Height = 570
  Caption = 'fEnvioNfe'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbchaveNE: TLabel
    Left = 507
    Top = 484
    Width = 134
    Height = 13
    Caption = 'Chave Nota de Entrada'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 4
    Width = 485
    Height = 525
    Caption = 'Configura'#231#245'es'
    TabOrder = 0
    object lbvenda: TLabel
      Left = 304
      Top = 216
      Width = 161
      Height = 14
      Alignment = taCenter
      AutoSize = False
      Caption = 'lbvenda'
    end
    object Label57: TLabel
      Left = 297
      Top = 232
      Width = 177
      Height = 14
      Alignment = taCenter
      AutoSize = False
      Caption = 'Observa'#231#227'o'
      Color = clBlack
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object PageControl1: TPageControl
      Left = 10
      Top = 16
      Width = 277
      Height = 505
      ActivePage = TabSheet2
      Align = alCustom
      MultiLine = True
      TabOrder = 0
      object TabSheet4: TTabSheet
        Caption = 'Emitente'
        ImageIndex = 3
        object Label12: TLabel
          Left = 8
          Top = 4
          Width = 27
          Height = 13
          Caption = 'CNPJ'
        end
        object Label13: TLabel
          Left = 136
          Top = 4
          Width = 41
          Height = 13
          Caption = 'Insc.Est.'
        end
        object Label14: TLabel
          Left = 8
          Top = 44
          Width = 63
          Height = 13
          Caption = 'Raz'#227'o Social'
        end
        object Label15: TLabel
          Left = 8
          Top = 84
          Width = 40
          Height = 13
          Caption = 'Fantasia'
        end
        object Label16: TLabel
          Left = 69
          Top = 124
          Width = 54
          Height = 13
          Caption = 'Logradouro'
        end
        object Label17: TLabel
          Left = 8
          Top = 164
          Width = 17
          Height = 13
          Caption = 'Nro'
        end
        object Label18: TLabel
          Left = 50
          Top = 164
          Width = 64
          Height = 13
          Caption = 'Complemento'
        end
        object Label19: TLabel
          Left = 136
          Top = 164
          Width = 27
          Height = 13
          Caption = 'Bairro'
        end
        object Label20: TLabel
          Left = 8
          Top = 204
          Width = 61
          Height = 13
          Caption = 'C'#243'd. Cidade '
        end
        object Label21: TLabel
          Left = 76
          Top = 204
          Width = 33
          Height = 13
          Caption = 'Cidade'
        end
        object Label22: TLabel
          Left = 225
          Top = 204
          Width = 14
          Height = 13
          Caption = 'UF'
        end
        object Label23: TLabel
          Left = 8
          Top = 124
          Width = 21
          Height = 13
          Caption = 'CEP'
        end
        object Label24: TLabel
          Left = 193
          Top = 84
          Width = 24
          Height = 13
          Caption = 'Fone'
        end
        object Label61: TLabel
          Left = 208
          Top = 4
          Width = 41
          Height = 13
          Caption = 'Empresa'
        end
        object edtEmitCNPJ: TEdit
          Left = 8
          Top = 20
          Width = 123
          Height = 21
          TabOrder = 0
        end
        object edtEmitIE: TEdit
          Left = 137
          Top = 20
          Width = 65
          Height = 21
          TabOrder = 1
        end
        object edtEmitRazao: TEdit
          Left = 8
          Top = 60
          Width = 252
          Height = 21
          TabOrder = 2
        end
        object edtEmitFantasia: TEdit
          Left = 8
          Top = 100
          Width = 177
          Height = 21
          TabOrder = 3
        end
        object edtEmitFone: TEdit
          Left = 193
          Top = 100
          Width = 67
          Height = 21
          TabOrder = 4
        end
        object edtEmitCEP: TEdit
          Left = 8
          Top = 140
          Width = 55
          Height = 21
          TabOrder = 5
        end
        object edtEmitLogradouro: TEdit
          Left = 69
          Top = 140
          Width = 192
          Height = 21
          TabOrder = 6
        end
        object edtEmitNumero: TEdit
          Left = 8
          Top = 180
          Width = 36
          Height = 21
          TabOrder = 7
        end
        object edtEmitComp: TEdit
          Left = 50
          Top = 180
          Width = 81
          Height = 21
          TabOrder = 8
        end
        object edtEmitBairro: TEdit
          Left = 137
          Top = 180
          Width = 123
          Height = 21
          TabOrder = 9
        end
        object edtEmitCodCidade: TEdit
          Left = 8
          Top = 220
          Width = 61
          Height = 21
          TabOrder = 10
        end
        object edtEmitCidade: TEdit
          Left = 76
          Top = 220
          Width = 142
          Height = 21
          TabOrder = 11
        end
        object edtEmitUF: TEdit
          Left = 225
          Top = 220
          Width = 35
          Height = 21
          TabOrder = 12
        end
        object rbCRT: TRadioGroup
          Left = 8
          Top = 242
          Width = 256
          Height = 67
          Caption = 'Regime'
          ItemIndex = 1
          Items.Strings = (
            'Normal'
            'Simples'
            'Simples - excesso de receita bruta')
          TabOrder = 13
        end
        object edempresa: TEdit
          Left = 209
          Top = 20
          Width = 49
          Height = 21
          TabOrder = 14
        end
      end
      object TabSheet1: TTabSheet
        Caption = 'Destinat'#225'rio'
        ImageIndex = 2
        object Label4: TLabel
          Left = 8
          Top = 4
          Width = 27
          Height = 13
          Caption = 'CNPJ'
        end
        object Label5: TLabel
          Left = 136
          Top = 4
          Width = 41
          Height = 13
          Caption = 'Insc.Est.'
        end
        object Label6: TLabel
          Left = 8
          Top = 44
          Width = 63
          Height = 13
          Caption = 'Raz'#227'o Social'
        end
        object Label7: TLabel
          Left = 8
          Top = 84
          Width = 40
          Height = 13
          Caption = 'Fantasia'
        end
        object Label8: TLabel
          Left = 8
          Top = 164
          Width = 54
          Height = 13
          Caption = 'Logradouro'
        end
        object Label9: TLabel
          Left = 208
          Top = 164
          Width = 37
          Height = 13
          Caption = 'N'#250'mero'
        end
        object Label10: TLabel
          Left = 8
          Top = 204
          Width = 64
          Height = 13
          Caption = 'Complemento'
        end
        object Label11: TLabel
          Left = 136
          Top = 204
          Width = 27
          Height = 13
          Caption = 'Bairro'
        end
        object Label25: TLabel
          Left = 8
          Top = 244
          Width = 61
          Height = 13
          Caption = 'C'#243'd. Cidade '
        end
        object Label32: TLabel
          Left = 76
          Top = 244
          Width = 33
          Height = 13
          Caption = 'Cidade'
        end
        object Label33: TLabel
          Left = 225
          Top = 244
          Width = 14
          Height = 13
          Caption = 'UF'
        end
        object Label34: TLabel
          Left = 136
          Top = 124
          Width = 21
          Height = 13
          Caption = 'CEP'
        end
        object Label35: TLabel
          Left = 8
          Top = 124
          Width = 24
          Height = 13
          Caption = 'Fone'
        end
        object Label85: TLabel
          Left = 8
          Top = 284
          Width = 25
          Height = 13
          Caption = 'Id. IE'
        end
        object edtDestCNPJ: TEdit
          Left = 8
          Top = 20
          Width = 123
          Height = 21
          TabOrder = 0
        end
        object edtDestIE: TEdit
          Left = 137
          Top = 20
          Width = 123
          Height = 21
          TabOrder = 1
        end
        object edtDestRazao: TEdit
          Left = 8
          Top = 60
          Width = 252
          Height = 21
          TabOrder = 2
        end
        object edtDestFantasia: TEdit
          Left = 8
          Top = 100
          Width = 252
          Height = 21
          TabOrder = 3
        end
        object edtDestFone: TEdit
          Left = 8
          Top = 140
          Width = 125
          Height = 21
          TabOrder = 4
        end
        object edtDestCEP: TEdit
          Left = 137
          Top = 140
          Width = 123
          Height = 21
          TabOrder = 5
        end
        object edtDestLogradouro: TEdit
          Left = 8
          Top = 180
          Width = 196
          Height = 21
          TabOrder = 6
        end
        object edtDestNumero: TEdit
          Left = 210
          Top = 180
          Width = 50
          Height = 21
          TabOrder = 7
        end
        object edtDestComp: TEdit
          Left = 8
          Top = 220
          Width = 123
          Height = 21
          TabOrder = 8
        end
        object edtDestBairro: TEdit
          Left = 137
          Top = 220
          Width = 123
          Height = 21
          TabOrder = 9
        end
        object edtDestCodCidade: TEdit
          Left = 8
          Top = 260
          Width = 61
          Height = 21
          Hint = 'Pressione F10 para consultar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 10
          OnKeyDown = edtDestCodCidadeKeyDown
        end
        object edtDestCidade: TEdit
          Left = 76
          Top = 260
          Width = 142
          Height = 21
          TabOrder = 11
        end
        object edtDestUF: TEdit
          Left = 225
          Top = 260
          Width = 35
          Height = 21
          TabOrder = 12
        end
        object cbIndIEDest: TComboBox
          Left = 8
          Top = 299
          Width = 93
          Height = 21
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 13
          Text = '1-Possui IE'
          Items.Strings = (
            '1-Possui IE'
            '2-ISENTO'
            '9-N'#227'o possui IE')
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'NFe'
        ImageIndex = 3
        object Label1: TLabel
          Left = 8
          Top = 4
          Width = 43
          Height = 13
          Caption = 'Natureza'
        end
        object Label2: TLabel
          Left = 8
          Top = 44
          Width = 35
          Height = 13
          Caption = 'Modelo'
        end
        object Label3: TLabel
          Left = 56
          Top = 44
          Width = 24
          Height = 13
          Caption = 'Serie'
        end
        object Label36: TLabel
          Left = 104
          Top = 44
          Width = 23
          Height = 13
          Caption = 'Nota'
        end
        object Label37: TLabel
          Left = 168
          Top = 44
          Width = 39
          Height = 13
          Caption = 'Emiss'#227'o'
        end
        object Label38: TLabel
          Left = 8
          Top = 84
          Width = 48
          Height = 13
          Caption = 'Impress'#227'o'
        end
        object Label39: TLabel
          Left = 168
          Top = 84
          Width = 54
          Height = 13
          Caption = 'Pagamento'
        end
        object Label40: TLabel
          Left = 8
          Top = 164
          Width = 53
          Height = 13
          Caption = 'Base ICMS'
        end
        object Label41: TLabel
          Left = 95
          Top = 164
          Width = 53
          Height = 13
          Caption = 'Valor ICMS'
        end
        object Label42: TLabel
          Left = 182
          Top = 164
          Width = 69
          Height = 13
          Caption = 'Valor Produtos'
        end
        object Label43: TLabel
          Left = 8
          Top = 204
          Width = 50
          Height = 13
          Caption = 'Valor Nota'
        end
        object Label60: TLabel
          Left = 8
          Top = 124
          Width = 28
          Height = 13
          Caption = 'CFOP'
        end
        object Label48: TLabel
          Left = 64
          Top = 124
          Width = 21
          Height = 13
          Caption = 'Tipo'
        end
        object Label63: TLabel
          Left = 168
          Top = 124
          Width = 48
          Height = 13
          Caption = 'Finalidade'
        end
        object edNatureza: TEdit
          Left = 8
          Top = 20
          Width = 252
          Height = 21
          TabOrder = 0
          Text = 'VENDA DENTRO DO ESTADO'
        end
        object edModelo: TEdit
          Left = 8
          Top = 60
          Width = 41
          Height = 21
          TabOrder = 1
          Text = '55'
        end
        object edSerie: TEdit
          Left = 56
          Top = 60
          Width = 41
          Height = 21
          TabOrder = 2
          Text = '99'
        end
        object edNota: TEdit
          Left = 104
          Top = 60
          Width = 57
          Height = 21
          TabOrder = 3
        end
        object edEmissao: TEdit
          Left = 168
          Top = 60
          Width = 92
          Height = 21
          TabOrder = 4
        end
        object cbImpressao: TComboBox
          Left = 8
          Top = 100
          Width = 154
          Height = 21
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 5
          Text = '1 - Retrato'
          Items.Strings = (
            '1 - Retrato'
            '2 - Paisagem')
        end
        object cbPagamento: TComboBox
          Left = 168
          Top = 100
          Width = 93
          Height = 21
          ItemHeight = 13
          ItemIndex = 1
          TabOrder = 6
          Text = '1 - '#192' prazo'
          Items.Strings = (
            '0 - '#192' vista'
            '1 - '#192' prazo'
            '2 - Outros')
        end
        object edBaseIcms: TEdit
          Left = 8
          Top = 180
          Width = 78
          Height = 21
          TabOrder = 7
          Text = '200'
        end
        object edValorIcms: TEdit
          Left = 95
          Top = 180
          Width = 78
          Height = 21
          TabOrder = 8
          Text = '24'
        end
        object edValorProdutos: TEdit
          Left = 182
          Top = 180
          Width = 78
          Height = 21
          TabOrder = 9
          Text = '200'
        end
        object edValorNota: TEdit
          Left = 8
          Top = 220
          Width = 78
          Height = 21
          TabOrder = 10
          Text = '200'
        end
        object edCfop: TEdit
          Left = 8
          Top = 140
          Width = 41
          Height = 21
          TabOrder = 11
          Text = '5102'
          OnExit = edCfopExit
          OnKeyDown = edCfopKeyDown
        end
        object cbtipo: TComboBox
          Left = 64
          Top = 140
          Width = 97
          Height = 21
          ItemHeight = 13
          ItemIndex = 1
          TabOrder = 12
          Text = '1 - Sa'#237'da'
          Items.Strings = (
            '0 - Entrada'
            '1 - Sa'#237'da')
        end
        object cbfinalidade: TComboBox
          Left = 168
          Top = 140
          Width = 93
          Height = 21
          ItemHeight = 13
          TabOrder = 13
          Text = '1-SA'#205'DA'
          OnExit = cbfinalidadeExit
          Items.Strings = (
            '1-SA'#205'DA'
            '4-DEVOLU'#199#195'O')
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Produtos'
        ImageIndex = 4
        object Label44: TLabel
          Left = 8
          Top = 4
          Width = 33
          Height = 13
          Caption = 'Codigo'
        end
        object Label45: TLabel
          Left = 64
          Top = 4
          Width = 48
          Height = 13
          Caption = 'Descri'#231#227'o'
        end
        object Label46: TLabel
          Left = 8
          Top = 44
          Width = 20
          Height = 13
          Caption = 'Und'
        end
        object Label47: TLabel
          Left = 88
          Top = 44
          Width = 24
          Height = 13
          Caption = 'NCM'
        end
        object Label49: TLabel
          Left = 8
          Top = 84
          Width = 17
          Height = 13
          Caption = 'Qtd'
        end
        object Label50: TLabel
          Left = 71
          Top = 84
          Width = 36
          Height = 13
          Caption = 'Unitario'
        end
        object Label51: TLabel
          Left = 174
          Top = 84
          Width = 24
          Height = 13
          Caption = 'Total'
        end
        object lbtipo: TLabel
          Left = 8
          Top = 296
          Width = 25
          Height = 13
          Caption = 'lbtipo'
        end
        object edCodigo: TEdit
          Left = 8
          Top = 20
          Width = 49
          Height = 21
          TabOrder = 0
          Text = '12345'
        end
        object edDescricao: TEdit
          Left = 64
          Top = 20
          Width = 198
          Height = 21
          TabOrder = 1
          Text = 'PRODUTO TESTE'
        end
        object edUnd: TEdit
          Left = 8
          Top = 60
          Width = 49
          Height = 21
          TabOrder = 2
          Text = 'UN'
        end
        object edNcm: TEdit
          Left = 88
          Top = 60
          Width = 73
          Height = 21
          TabOrder = 3
          Text = '39232990'
        end
        object edQtd: TEdit
          Left = 8
          Top = 100
          Width = 49
          Height = 21
          TabOrder = 4
          Text = '2'
        end
        object edUnitario: TEdit
          Left = 71
          Top = 100
          Width = 89
          Height = 21
          TabOrder = 5
          Text = '100,00'
        end
        object edTotal: TEdit
          Left = 174
          Top = 100
          Width = 89
          Height = 21
          TabOrder = 6
          Text = '200'
        end
        object gbNormal: TGroupBox
          Left = 8
          Top = 128
          Width = 255
          Height = 66
          Caption = 'Regime Normal'
          TabOrder = 7
          object Label52: TLabel
            Left = 8
            Top = 19
            Width = 21
            Height = 13
            Caption = 'CST'
          end
          object Label53: TLabel
            Left = 40
            Top = 19
            Width = 51
            Height = 13
            Caption = 'Valor Base'
          end
          object Label54: TLabel
            Left = 122
            Top = 19
            Width = 38
            Height = 13
            Caption = 'Aliquota'
          end
          object Label55: TLabel
            Left = 186
            Top = 19
            Width = 53
            Height = 13
            Caption = 'Valor ICMS'
          end
          object edCst: TEdit
            Left = 8
            Top = 35
            Width = 25
            Height = 21
            TabOrder = 0
            Text = '00'
          end
          object edBaseProduto: TEdit
            Left = 40
            Top = 35
            Width = 73
            Height = 21
            TabOrder = 1
            Text = '200'
          end
          object edAliquota: TEdit
            Left = 120
            Top = 35
            Width = 49
            Height = 21
            TabOrder = 2
            Text = '12'
          end
          object edIcmsProduto: TEdit
            Left = 176
            Top = 35
            Width = 69
            Height = 21
            TabOrder = 3
            Text = '24,00'
          end
        end
        object gbSimples: TGroupBox
          Left = 6
          Top = 200
          Width = 255
          Height = 66
          Caption = 'Simples'
          TabOrder = 8
          object Label56: TLabel
            Left = 8
            Top = 19
            Width = 37
            Height = 13
            Caption = 'CSOSN'
          end
          object Label58: TLabel
            Left = 75
            Top = 19
            Width = 44
            Height = 13
            Caption = '% Cr'#233'dito'
          end
          object Label59: TLabel
            Left = 172
            Top = 19
            Width = 60
            Height = 13
            Caption = 'Valor Cr'#233'dito'
          end
          object edCSOSN: TEdit
            Left = 8
            Top = 35
            Width = 36
            Height = 21
            TabOrder = 0
            Text = '101'
          end
          object edPCred: TEdit
            Left = 90
            Top = 35
            Width = 39
            Height = 21
            TabOrder = 1
            Text = '10,00'
          end
          object edVCred: TEdit
            Left = 176
            Top = 35
            Width = 69
            Height = 21
            TabOrder = 2
            Text = '20,00'
          end
        end
      end
      object TabSheet6: TTabSheet
        Caption = 'Transportadora'
        ImageIndex = 5
        object Label64: TLabel
          Left = 8
          Top = 4
          Width = 27
          Height = 13
          Caption = 'Placa'
        end
        object Label65: TLabel
          Left = 112
          Top = 4
          Width = 73
          Height = 13
          Caption = 'Frete por Conta'
        end
        object Label66: TLabel
          Left = 208
          Top = 4
          Width = 54
          Height = 13
          Caption = 'C'#243'd. ANTT'
        end
        object Label67: TLabel
          Left = 8
          Top = 84
          Width = 46
          Height = 13
          Caption = 'Endere'#231'o'
        end
        object Label68: TLabel
          Left = 8
          Top = 124
          Width = 33
          Height = 13
          Caption = 'Cidade'
        end
        object Label69: TLabel
          Left = 192
          Top = 124
          Width = 14
          Height = 13
          Caption = 'UF'
        end
        object Label70: TLabel
          Left = 8
          Top = 164
          Width = 58
          Height = 13
          Caption = 'CNPJ / CPF'
        end
        object Label71: TLabel
          Left = 192
          Top = 164
          Width = 41
          Height = 13
          Caption = 'Insc.Est.'
        end
        object Label72: TLabel
          Left = 8
          Top = 204
          Width = 55
          Height = 13
          Caption = 'Quantidade'
        end
        object Label73: TLabel
          Left = 88
          Top = 204
          Width = 38
          Height = 13
          Caption = 'Esp'#233'cie'
        end
        object Label74: TLabel
          Left = 192
          Top = 204
          Width = 30
          Height = 13
          Caption = 'Marca'
        end
        object Label75: TLabel
          Left = 8
          Top = 244
          Width = 55
          Height = 13
          Caption = 'Numera'#231#227'o'
        end
        object Label76: TLabel
          Left = 88
          Top = 244
          Width = 52
          Height = 13
          Caption = 'Peso Bruto'
        end
        object Label77: TLabel
          Left = 192
          Top = 244
          Width = 63
          Height = 13
          Caption = 'Peso L'#237'quido'
        end
        object Label78: TLabel
          Left = 8
          Top = 44
          Width = 63
          Height = 13
          Caption = 'Raz'#227'o Social'
        end
        object Label79: TLabel
          Left = 72
          Top = 4
          Width = 14
          Height = 13
          Caption = 'UF'
        end
        object cbfreteconta: TComboBox
          Left = 112
          Top = 18
          Width = 89
          Height = 21
          ItemHeight = 13
          TabOrder = 2
          Text = '0 - Emitente'
          OnExit = cbfretecontaExit
          Items.Strings = (
            '0 - Emitente'
            '1 - Destinat'#225'rio'
            '2 - Terceiros'
            '9 - Sem frete')
        end
        object edcodantt: TEdit
          Left = 208
          Top = 18
          Width = 59
          Height = 21
          TabOrder = 3
        end
        object edendtransp: TEdit
          Left = 8
          Top = 98
          Width = 257
          Height = 21
          TabOrder = 5
        end
        object edcidadetransp: TEdit
          Left = 8
          Top = 140
          Width = 177
          Height = 21
          TabOrder = 6
        end
        object eduftransp: TEdit
          Left = 192
          Top = 140
          Width = 35
          Height = 21
          TabOrder = 7
        end
        object edcnpjcpftransp: TEdit
          Left = 8
          Top = 180
          Width = 177
          Height = 21
          TabOrder = 8
        end
        object edietransp: TEdit
          Left = 192
          Top = 180
          Width = 75
          Height = 21
          TabOrder = 9
        end
        object edqtdtransp: TEdit
          Left = 8
          Top = 220
          Width = 73
          Height = 21
          TabOrder = 10
        end
        object edespecietransp: TEdit
          Left = 88
          Top = 220
          Width = 97
          Height = 21
          TabOrder = 11
        end
        object edmarcatransp: TEdit
          Left = 192
          Top = 220
          Width = 75
          Height = 21
          TabOrder = 12
        end
        object ednrtransp: TEdit
          Left = 8
          Top = 260
          Width = 73
          Height = 21
          TabOrder = 13
        end
        object edpesoBtransp: TEdit
          Left = 88
          Top = 260
          Width = 97
          Height = 21
          TabOrder = 14
          Text = '0'
        end
        object edpesoLtransp: TEdit
          Left = 192
          Top = 260
          Width = 75
          Height = 21
          TabOrder = 15
          Text = '0'
        end
        object edplaca: TEdit
          Left = 8
          Top = 18
          Width = 57
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 0
        end
        object edrazaotransp: TEdit
          Left = 8
          Top = 58
          Width = 257
          Height = 21
          TabOrder = 4
        end
        object edufplaca: TEdit
          Left = 72
          Top = 18
          Width = 35
          Height = 21
          TabOrder = 1
        end
      end
      object TabSheet7: TTabSheet
        Caption = 'Fatura'
        ImageIndex = 6
        object Label80: TLabel
          Left = 8
          Top = 4
          Width = 37
          Height = 13
          Caption = 'N'#250'mero'
        end
        object Label81: TLabel
          Left = 88
          Top = 4
          Width = 62
          Height = 13
          Caption = 'Valor Original'
        end
        object Label82: TLabel
          Left = 184
          Top = 4
          Width = 73
          Height = 13
          Caption = 'Valor Desconto'
        end
        object Label83: TLabel
          Left = 8
          Top = 44
          Width = 61
          Height = 13
          Caption = 'Valor Liquido'
        end
        object Label84: TLabel
          Left = 88
          Top = 44
          Width = 56
          Height = 13
          Caption = 'Vencimento'
        end
        object ednrfatura: TEdit
          Left = 8
          Top = 20
          Width = 73
          Height = 21
          TabOrder = 0
          Text = '1'
        end
        object edvlrfatura: TEdit
          Left = 88
          Top = 20
          Width = 89
          Height = 21
          TabOrder = 1
          Text = '200'
        end
        object edvlrdescfatura: TEdit
          Left = 184
          Top = 20
          Width = 83
          Height = 21
          TabOrder = 2
          Text = '0'
        end
        object edvlrliqfatura: TEdit
          Left = 8
          Top = 60
          Width = 73
          Height = 21
          TabOrder = 3
          Text = '200'
        end
        object edvenctofatura: TEdit
          Left = 88
          Top = 60
          Width = 89
          Height = 21
          TabOrder = 4
          Text = '22/07/2021'
        end
      end
      object TabSheet13: TTabSheet
        Caption = 'Certificado'
        ImageIndex = 7
        object lSSLLib: TLabel
          Left = 35
          Top = 16
          Width = 34
          Height = 13
          Alignment = taRightJustify
          Caption = 'SSLLib'
          Color = clBtnFace
          ParentColor = False
        end
        object lCryptLib: TLabel
          Left = 31
          Top = 43
          Width = 38
          Height = 13
          Alignment = taRightJustify
          Caption = 'CryptLib'
          Color = clBtnFace
          ParentColor = False
        end
        object lHttpLib: TLabel
          Left = 35
          Top = 70
          Width = 34
          Height = 13
          Alignment = taRightJustify
          Caption = 'HttpLib'
          Color = clBtnFace
          ParentColor = False
        end
        object lXmlSign: TLabel
          Left = 12
          Top = 97
          Width = 57
          Height = 13
          Alignment = taRightJustify
          Caption = 'XMLSignLib'
          Color = clBtnFace
          ParentColor = False
        end
        object Label62: TLabel
          Left = 9
          Top = 124
          Width = 79
          Height = 13
          Caption = 'N'#250'mero de S'#233'rie'
        end
        object sbtnNumSerie: TSpeedButton
          Left = 207
          Top = 138
          Width = 23
          Height = 24
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
            333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
            0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
            07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
            07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
            0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
            33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
            B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
            3BB33773333773333773B333333B3333333B7333333733333337}
          NumGlyphs = 2
          OnClick = sbtnNumSerieClick
        end
        object cbSSLLib: TComboBox
          Left = 80
          Top = 8
          Width = 160
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          TabOrder = 0
        end
        object cbCryptLib: TComboBox
          Left = 80
          Top = 35
          Width = 160
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          TabOrder = 1
        end
        object cbHttpLib: TComboBox
          Left = 80
          Top = 62
          Width = 160
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          TabOrder = 2
        end
        object cbXmlSignLib: TComboBox
          Left = 80
          Top = 89
          Width = 160
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          TabOrder = 3
        end
        object edtNumSerie: TEdit
          Left = 9
          Top = 140
          Width = 193
          Height = 21
          TabOrder = 4
        end
        object btnDataValidade: TButton
          Left = 9
          Top = 164
          Width = 99
          Height = 25
          Caption = 'Data de Validade'
          TabOrder = 5
          OnClick = btnDataValidadeClick
        end
      end
      object TabSheet14: TTabSheet
        Caption = 'Arquivos'
        ImageIndex = 8
        object Label86: TLabel
          Left = 6
          Top = 116
          Width = 94
          Height = 13
          Caption = 'Pasta Arquivos NFe'
        end
        object sbPathNFe: TSpeedButton
          Left = 246
          Top = 131
          Width = 23
          Height = 24
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
            333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
            0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
            07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
            07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
            0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
            33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
            B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
            3BB33773333773333773B333333B3333333B7333333733333337}
          NumGlyphs = 2
          OnClick = sbPathNFeClick
        end
        object Label87: TLabel
          Left = 6
          Top = 154
          Width = 142
          Height = 13
          Caption = 'Pasta Arquivos Cancelamento'
        end
        object Label88: TLabel
          Left = 6
          Top = 192
          Width = 192
          Height = 13
          Caption = 'Pasta Arquivos CC-e - Carta de Corre'#231#227'o'
        end
        object Label89: TLabel
          Left = 6
          Top = 230
          Width = 127
          Height = 13
          Caption = 'Pasta Arquivos Inutiliza'#231#227'o'
        end
        object Label91: TLabel
          Left = 6
          Top = 274
          Width = 108
          Height = 13
          Caption = 'Pasta Arquivos Evento'
        end
        object sbPathEvento: TSpeedButton
          Left = 246
          Top = 289
          Width = 23
          Height = 24
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
            333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
            0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
            07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
            07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
            0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
            33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
            B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
            3BB33773333773333773B333333B3333333B7333333733333337}
          NumGlyphs = 2
          OnClick = sbPathEventoClick
        end
        object sbPathInu: TSpeedButton
          Left = 246
          Top = 245
          Width = 23
          Height = 24
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
            333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
            0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
            07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
            07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
            0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
            33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
            B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
            3BB33773333773333773B333333B3333333B7333333733333337}
          NumGlyphs = 2
          OnClick = sbPathInuClick
        end
        object sbPathCCe: TSpeedButton
          Left = 246
          Top = 207
          Width = 23
          Height = 24
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
            333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
            0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
            07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
            07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
            0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
            33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
            B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
            3BB33773333773333773B333333B3333333B7333333733333337}
          NumGlyphs = 2
          OnClick = sbPathCCeClick
        end
        object sbPathCan: TSpeedButton
          Left = 246
          Top = 169
          Width = 23
          Height = 24
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
            333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
            0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
            07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
            07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
            0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
            33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
            B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
            3BB33773333773333773B333333B3333333B7333333733333337}
          NumGlyphs = 2
          OnClick = sbPathCanClick
        end
        object cbxSalvarArqs: TCheckBox
          Left = 6
          Top = 0
          Width = 210
          Height = 17
          Caption = 'Salvar Arquivos em Pastas Separadas'
          TabOrder = 0
        end
        object cbxPastaMensal: TCheckBox
          Left = 6
          Top = 16
          Width = 210
          Height = 17
          Caption = 'Criar Pastas Mensalmente'
          TabOrder = 1
        end
        object cbxAdicionaLiteral: TCheckBox
          Left = 6
          Top = 32
          Width = 210
          Height = 17
          Caption = 'Adicionar Literal no nome das pastas'
          TabOrder = 2
        end
        object cbxEmissaoPathNFe: TCheckBox
          Left = 6
          Top = 48
          Width = 251
          Height = 17
          Caption = 'Salvar Documento pelo campo Data de Emiss'#227'o'
          TabOrder = 3
        end
        object cbxSalvaPathEvento: TCheckBox
          Left = 6
          Top = 64
          Width = 233
          Height = 17
          Caption = 'Salvar Arquivos de Eventos'
          TabOrder = 4
        end
        object cbxSepararPorCNPJ: TCheckBox
          Left = 6
          Top = 80
          Width = 233
          Height = 17
          Caption = 'Separar Arqs pelo CNPJ do Certificado'
          TabOrder = 5
        end
        object cbxSepararPorModelo: TCheckBox
          Left = 6
          Top = 96
          Width = 251
          Height = 17
          Caption = 'Separar Arqs pelo Modelo do Documento'
          TabOrder = 6
        end
        object edtPathNFe: TEdit
          Left = 6
          Top = 132
          Width = 235
          Height = 21
          TabOrder = 7
        end
        object edtPathCan: TEdit
          Left = 6
          Top = 170
          Width = 235
          Height = 21
          TabOrder = 8
        end
        object edtPathCCe: TEdit
          Left = 6
          Top = 208
          Width = 235
          Height = 21
          TabOrder = 9
        end
        object edtPathInu: TEdit
          Left = 6
          Top = 246
          Width = 235
          Height = 21
          TabOrder = 10
        end
        object edtPathEvento: TEdit
          Left = 6
          Top = 290
          Width = 235
          Height = 21
          TabOrder = 11
        end
      end
      object TabSheet15: TTabSheet
        Caption = 'WebService'
        ImageIndex = 9
        object GroupBox4: TGroupBox
          Left = 4
          Top = 4
          Width = 265
          Height = 190
          Caption = 'WebService'
          TabOrder = 0
          object Label92: TLabel
            Left = 8
            Top = 16
            Width = 126
            Height = 13
            Caption = 'Selecione UF do Emitente:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lTimeOut: TLabel
            Left = 167
            Top = 116
            Width = 40
            Height = 13
            Caption = 'TimeOut'
            Color = clBtnFace
            ParentColor = False
          end
          object lSSLLib1: TLabel
            Left = 16
            Top = 168
            Width = 44
            Height = 13
            Alignment = taRightJustify
            Caption = 'SSLType'
            Color = clBtnFace
            ParentColor = False
          end
          object cbxVisualizar: TCheckBox
            Left = 8
            Top = 118
            Width = 153
            Height = 17
            Caption = 'Visualizar Mensagem'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object cbUF: TComboBox
            Left = 8
            Top = 32
            Width = 249
            Height = 24
            Style = csDropDownList
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 16
            ItemIndex = 24
            ParentFont = False
            TabOrder = 1
            Text = 'SP'
            Items.Strings = (
              'AC'
              'AL'
              'AP'
              'AM'
              'BA'
              'CE'
              'DF'
              'ES'
              'GO'
              'MA'
              'MT'
              'MS'
              'MG'
              'PA'
              'PB'
              'PR'
              'PE'
              'PI'
              'RJ'
              'RN'
              'RS'
              'RO'
              'RR'
              'SC'
              'SP'
              'SE'
              'TO')
          end
          object rgTipoAmb: TRadioGroup
            Left = 8
            Top = 61
            Width = 249
            Height = 52
            Caption = 'Selecione o Ambiente de Destino'
            Columns = 2
            ItemIndex = 0
            Items.Strings = (
              'Produ'#231#227'o'
              'Homologa'#231#227'o')
            TabOrder = 2
          end
          object cbxSalvarSOAP: TCheckBox
            Left = 8
            Top = 136
            Width = 153
            Height = 17
            Caption = 'Salvar envelope SOAP'
            TabOrder = 3
          end
          object seTimeOut: TSpinEdit
            Left = 167
            Top = 132
            Width = 66
            Height = 22
            Increment = 10
            MaxValue = 999999
            MinValue = 1000
            TabOrder = 4
            Value = 5000
          end
          object cbSSLType: TComboBox
            Left = 72
            Top = 160
            Width = 160
            Height = 21
            Hint = 'Depende de configura'#231#227'o de  SSL.HttpLib'
            Style = csDropDownList
            ItemHeight = 0
            TabOrder = 5
          end
        end
      end
      object TabSheet16: TTabSheet
        Caption = 'Geral'
        ImageIndex = 10
        object GroupBox3: TGroupBox
          Left = 3
          Top = 12
          Width = 265
          Height = 389
          Caption = 'Geral'
          TabOrder = 0
          object sbtnPathSalvar: TSpeedButton
            Left = 238
            Top = 236
            Width = 23
            Height = 24
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
              333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
              0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
              07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
              07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
              0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
              33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
              B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
              3BB33773333773333773B333333B3333333B7333333733333337}
            NumGlyphs = 2
            OnClick = sbtnPathSalvarClick
          end
          object Label93: TLabel
            Left = 8
            Top = 88
            Width = 86
            Height = 13
            Caption = 'Forma de Emiss'#227'o'
          end
          object Label94: TLabel
            Left = 8
            Top = 50
            Width = 68
            Height = 13
            Caption = 'Formato Alerta'
          end
          object Label95: TLabel
            Left = 8
            Top = 126
            Width = 123
            Height = 13
            Caption = 'Modelo Documento Fiscal'
          end
          object Label96: TLabel
            Left = 8
            Top = 165
            Width = 121
            Height = 13
            Caption = 'Vers'#227'o Documento Fiscal'
          end
          object Label97: TLabel
            Left = 8
            Top = 299
            Width = 183
            Height = 13
            Caption = 'IdToken/IdCSC (Somente para NFC-e)'
          end
          object Label98: TLabel
            Left = 7
            Top = 339
            Width = 165
            Height = 13
            Caption = 'Token/CSC (Somente para NFC-e)'
          end
          object Label99: TLabel
            Left = 8
            Top = 260
            Width = 199
            Height = 13
            Caption = 'Diret'#243'rios com os arquivos XSD(Schemas)'
          end
          object spPathSchemas: TSpeedButton
            Left = 238
            Top = 276
            Width = 23
            Height = 24
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
              333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
              0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
              07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
              07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
              0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
              33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
              B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
              3BB33773333773333773B333333B3333333B7333333733333337}
            NumGlyphs = 2
            OnClick = spPathSchemasClick
          end
          object edtPathLogs: TEdit
            Left = 8
            Top = 239
            Width = 228
            Height = 21
            TabOrder = 0
          end
          object ckSalvar: TCheckBox
            Left = 8
            Top = 223
            Width = 209
            Height = 15
            Caption = 'Salvar Arquivos de Envio e Resposta'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object cbFormaEmissao: TComboBox
            Left = 8
            Top = 104
            Width = 248
            Height = 21
            ItemHeight = 0
            TabOrder = 2
          end
          object cbxAtualizarXML: TCheckBox
            Left = 8
            Top = 16
            Width = 97
            Height = 17
            Caption = 'Atualizar XML'
            TabOrder = 3
          end
          object cbxExibirErroSchema: TCheckBox
            Left = 8
            Top = 32
            Width = 129
            Height = 17
            Caption = 'Exibir Erro Schema'
            TabOrder = 4
          end
          object edtFormatoAlerta: TEdit
            Left = 8
            Top = 66
            Width = 248
            Height = 21
            TabOrder = 5
          end
          object cbModeloDF: TComboBox
            Left = 8
            Top = 142
            Width = 248
            Height = 21
            ItemHeight = 0
            TabOrder = 6
          end
          object cbxRetirarAcentos: TCheckBox
            Left = 8
            Top = 205
            Width = 193
            Height = 17
            Caption = 'Retirar Acentos dos XMLs enviados'
            TabOrder = 7
          end
          object cbVersaoDF: TComboBox
            Left = 8
            Top = 181
            Width = 248
            Height = 21
            ItemHeight = 0
            TabOrder = 8
          end
          object edtIdToken: TEdit
            Left = 8
            Top = 315
            Width = 248
            Height = 21
            TabOrder = 9
          end
          object edtToken: TEdit
            Left = 7
            Top = 355
            Width = 248
            Height = 21
            TabOrder = 10
          end
          object edtPathSchemas: TEdit
            Left = 8
            Top = 276
            Width = 228
            Height = 21
            TabOrder = 11
          end
        end
      end
    end
    object btMontar: TButton
      Left = 297
      Top = 373
      Width = 177
      Height = 25
      Caption = 'Montar/Enviar NFe'
      TabOrder = 1
      OnClick = btMontarClick
    end
    object btatualizarnfe: TButton
      Left = 297
      Top = 35
      Width = 177
      Height = 25
      Caption = 'Atualizar NFE'
      TabOrder = 2
      OnClick = btatualizarnfeClick
    end
    object btnInutilizar: TButton
      Left = 297
      Top = 138
      Width = 177
      Height = 25
      Caption = 'Inutilizar Numera'#231#227'o'
      TabOrder = 3
      OnClick = btnInutilizarClick
    end
    object btnConsultarChave: TButton
      Left = 297
      Top = 61
      Width = 177
      Height = 25
      Caption = 'Download XML'
      TabOrder = 4
    end
    object btnCancelarChave: TButton
      Left = 297
      Top = 113
      Width = 177
      Height = 25
      Caption = 'Cancelar NFe'
      TabOrder = 5
      OnClick = btnCancelarChaveClick
    end
    object btnImprimir: TButton
      Left = 297
      Top = 87
      Width = 177
      Height = 25
      Caption = 'Imprimir NF-e'
      TabOrder = 6
      OnClick = btnImprimirClick
    end
    object memoObs: TMemo
      Left = 297
      Top = 248
      Width = 177
      Height = 121
      ScrollBars = ssVertical
      TabOrder = 7
    end
    object btnSalvarConfig: TBitBtn
      Left = 298
      Top = 449
      Width = 153
      Height = 36
      Caption = 'Salvar Configura'#231#245'es'
      TabOrder = 8
      OnClick = btnSalvarConfigClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
        7700333333337777777733333333008088003333333377F73377333333330088
        88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
        000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
        FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
        99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
        99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
        99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
        93337FFFF7737777733300000033333333337777773333333333}
      NumGlyphs = 2
    end
    object btnStatusServ: TButton
      Left = 296
      Top = 9
      Width = 177
      Height = 25
      Caption = ' Status de Servi'#231'o'
      TabOrder = 9
      OnClick = btnStatusServClick
    end
    object Button1: TButton
      Left = 297
      Top = 163
      Width = 177
      Height = 25
      Caption = 'Carta de Corre'#231#227'o'
      TabOrder = 10
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 297
      Top = 188
      Width = 177
      Height = 25
      Caption = 'Notas Fiscais'
      TabOrder = 11
      OnClick = Button2Click
    end
  end
  object pgRespostas: TPageControl
    Left = 504
    Top = 0
    Width = 531
    Height = 397
    ActivePage = TabSheet8
    TabOrder = 1
    object TabSheet8: TTabSheet
      Caption = 'Respostas'
      object MemoResp: TMemo
        Left = 0
        Top = 0
        Width = 523
        Height = 369
        Align = alClient
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object TabSheet9: TTabSheet
      Caption = 'XML Resposta'
      ImageIndex = 1
      object WBResposta: TWebBrowser
        Left = 0
        Top = 0
        Width = 559
        Height = 385
        Align = alClient
        TabOrder = 0
        ControlData = {
          4C000000C6390000CA2700000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E126200000000000000004C0000000114020000000000C000000000000046
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
    end
    object TabSheet10: TTabSheet
      Caption = 'Log'
      ImageIndex = 2
      object memoLog: TMemo
        Left = 0
        Top = 0
        Width = 559
        Height = 385
        Align = alClient
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object TabSheet11: TTabSheet
      Caption = 'Documento'
      ImageIndex = 3
      object trvwDocumento: TTreeView
        Left = 0
        Top = 0
        Width = 523
        Height = 369
        Align = alClient
        Indent = 19
        TabOrder = 0
      end
    end
    object TabSheet12: TTabSheet
      Caption = 'Retorno Completo WS'
      ImageIndex = 4
      object memoRespWS: TMemo
        Left = 0
        Top = 0
        Width = 559
        Height = 385
        Align = alClient
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object Dados: TTabSheet
      Caption = 'Dados'
      ImageIndex = 5
      object MemoDados: TMemo
        Left = 0
        Top = 0
        Width = 523
        Height = 369
        Align = alClient
        Lines.Strings = (
          '')
        ScrollBars = ssVertical
        TabOrder = 0
        WordWrap = False
      end
    end
  end
  object edchaveNE: TEdit
    Left = 507
    Top = 500
    Width = 518
    Height = 21
    TabOrder = 2
  end
  object ACBrNFe1: TACBrNFe
    OnStatusChange = ACBrNFe1StatusChange
    OnGerarLog = ACBrNFe1GerarLog
    Configuracoes.Geral.SSLLib = libNone
    Configuracoes.Geral.SSLCryptLib = cryNone
    Configuracoes.Geral.SSLHttpLib = httpNone
    Configuracoes.Geral.SSLXmlSignLib = xsNone
    Configuracoes.Geral.FormaEmissao = teContingencia
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.AtualizarXMLCancelado = True
    Configuracoes.Geral.VersaoQRCode = veqr000
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 15000
    Configuracoes.WebServices.AjustaAguardaConsultaRet = True
    Configuracoes.WebServices.TimeOut = 20000
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    DANFE = ACBrNFeDANFeRL1
    Left = 498
    Top = 15
  end
  object ACBrNFeDANFeRL1: TACBrNFeDANFeRL
    Sistema = 'NOME DO SEU SISTEMA'
    MargemInferior = 0.700000000000000000
    MargemSuperior = 0.700000000000000000
    MargemEsquerda = 0.700000000000000000
    MargemDireita = 0.700000000000000000
    ExpandeLogoMarcaConfig.Altura = 0
    ExpandeLogoMarcaConfig.Esquerda = 0
    ExpandeLogoMarcaConfig.Topo = 0
    ExpandeLogoMarcaConfig.Largura = 0
    ExpandeLogoMarcaConfig.Dimensionar = False
    ExpandeLogoMarcaConfig.Esticar = True
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 4
    CasasDecimais.vUnCom = 4
    CasasDecimais.MaskqCom = '###,###,###,##0.00'
    CasasDecimais.MaskvUnCom = '###,###,###,##0.00'
    ACBrNFe = ACBrNFe1
    ExibeResumoCanhoto = False
    ExibeCampoFatura = False
    Left = 531
    Top = 7
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*-nfe.XML'
    Filter = 
      'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|To' +
      'dos os Arquivos (*.*)|*.*'
    Title = 'Selecione a NFe'
    Left = 499
    Top = 63
  end
  object movestoque: TZQuery
    Connection = dm.ZConnection1
    SQL.Strings = (
      
        'select produto,sum(qtd) as qtd, und, VlrUnit,desconto,sum(VlrTot' +
        'al) as VlrTotal from movestoque')
    Params = <>
    Left = 384
    Top = 65528
    object movestoqueproduto: TIntegerField
      FieldName = 'produto'
      Required = True
    end
    object movestoqueqtd: TFloatField
      FieldName = 'qtd'
    end
    object movestoqueVlrUnit: TFloatField
      FieldName = 'VlrUnit'
      Required = True
    end
    object movestoqueVlrTotal: TFloatField
      FieldName = 'VlrTotal'
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
  object qratualizar: TZQuery
    Connection = dm.ZConnection1
    Params = <>
    Left = 352
    Top = 65528
  end
end
