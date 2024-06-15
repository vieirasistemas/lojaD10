object FrmFechamentoPedido: TFrmFechamentoPedido
  Left = 342
  Top = 202
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Fechamento de Pedidos'
  ClientHeight = 126
  ClientWidth = 242
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 16
    Top = 8
    Width = 44
    Height = 16
    Caption = 'Per'#237'odo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 117
    Top = 32
    Width = 7
    Height = 16
    Caption = #224
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lbOperador: TLabel
    Left = 16
    Top = 52
    Width = 69
    Height = 16
    Caption = 'Vendedor(a)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object bt1: TBitBtn
    Left = 24
    Top = 96
    Width = 73
    Height = 25
    Caption = '&Ok'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = bt1Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      555555555555555555555555555555555555555555FF55555555555559055555
      55555555577FF5555555555599905555555555557777F5555555555599905555
      555555557777FF5555555559999905555555555777777F555555559999990555
      5555557777777FF5555557990599905555555777757777F55555790555599055
      55557775555777FF5555555555599905555555555557777F5555555555559905
      555555555555777FF5555555555559905555555555555777FF55555555555579
      05555555555555777FF5555555555557905555555555555777FF555555555555
      5990555555555555577755555555555555555555555555555555}
    NumGlyphs = 2
  end
  object bt2: TBitBtn
    Left = 144
    Top = 96
    Width = 73
    Height = 25
    Caption = 'Sai&r'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = bt2Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
      33333337777FF377FF3333993370739993333377FF373F377FF3399993000339
      993337777F777F3377F3393999707333993337F77737333337FF993399933333
      399377F3777FF333377F993339903333399377F33737FF33377F993333707333
      399377F333377FF3377F993333101933399377F333777FFF377F993333000993
      399377FF3377737FF7733993330009993933373FF3777377F7F3399933000399
      99333773FF777F777733339993707339933333773FF7FFF77333333999999999
      3333333777333777333333333999993333333333377777333333}
    NumGlyphs = 2
  end
  object medatainicial: TMaskEdit
    Left = 16
    Top = 24
    Width = 81
    Height = 24
    EditMask = '99/99/9999;1;_'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    MaxLength = 10
    ParentFont = False
    TabOrder = 0
    Text = '  /  /    '
    OnExit = medatainicialExit
  end
  object medatafinal: TMaskEdit
    Left = 140
    Top = 23
    Width = 85
    Height = 24
    EditMask = '99/99/9999;1;_'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    MaxLength = 10
    ParentFont = False
    TabOrder = 1
    Text = '  /  /    '
    OnExit = medatafinalExit
  end
  object cboperador: TComboBox
    Left = 16
    Top = 68
    Width = 209
    Height = 24
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ItemHeight = 16
    ParentFont = False
    Sorted = True
    TabOrder = 2
  end
  object RLReport1: TRLReport
    Left = 605
    Top = 306
    Width = 816
    Height = 1056
    DataSource = dsqrMovEstoque
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.PaperSize = fpLetter
    object RLBand1: TRLBand
      Left = 38
      Top = 123
      Width = 740
      Height = 18
      object qrcodigo: TRLDBText
        Left = 203
        Top = 1
        Width = 40
        Height = 14
        DataField = 'produto'
        DataSource = dsqrMovEstoque
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object qrdescricao: TRLDBText
        Left = 248
        Top = 1
        Width = 273
        Height = 14
        AutoSize = False
        DataField = 'nome'
        DataSource = dsqrMovEstoque
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText1: TRLDBText
        Left = 688
        Top = 1
        Width = 49
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VlrTotal'
        DataSource = dsqrMovEstoque
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText2: TRLDBText
        Left = 564
        Top = 1
        Width = 34
        Height = 14
        Alignment = taCenter
        AutoSize = False
        DataField = 'und'
        DataSource = dsqrMovEstoque
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText6: TRLDBText
        Left = 602
        Top = 1
        Width = 34
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'qtd'
        DataSource = dsqrMovEstoque
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText3: TRLDBText
        Left = 0
        Top = 1
        Width = 57
        Height = 14
        AutoSize = False
        DataField = 'data'
        DataSource = dsqrMovEstoque
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText4: TRLDBText
        Left = 64
        Top = 1
        Width = 106
        Height = 14
        Alignment = taCenter
        AutoSize = False
        DataField = 'documento'
        DataSource = dsqrMovEstoque
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText9: TRLDBText
        Left = 175
        Top = 1
        Width = 25
        Height = 14
        AutoSize = False
        DataField = 'TipoMov'
        DataSource = dsqrMovEstoque
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText10: TRLDBText
        Left = 636
        Top = 1
        Width = 46
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'vlrunit'
        DataSource = dsqrMovEstoque
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 105
      Width = 740
      Height = 18
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel1: TRLLabel
        Left = 203
        Top = 1
        Width = 36
        Height = 14
        Caption = 'Codigo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 248
        Top = 1
        Width = 85
        Height = 14
        Caption = 'Nome do Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 688
        Top = 1
        Width = 49
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Vlr. Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 564
        Top = 1
        Width = 34
        Height = 14
        Alignment = taCenter
        AutoSize = False
        Caption = 'UND'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel11: TRLLabel
        Left = 602
        Top = 1
        Width = 34
        Height = 14
        Alignment = taCenter
        AutoSize = False
        Caption = 'QTD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 16
        Top = 1
        Width = 25
        Height = 14
        Caption = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 64
        Top = 1
        Width = 106
        Height = 14
        Alignment = taCenter
        AutoSize = False
        Caption = 'Documento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel13: TRLLabel
        Left = 175
        Top = 1
        Width = 23
        Height = 14
        Caption = 'Tipo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel12: TRLLabel
        Left = 636
        Top = 1
        Width = 46
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Vlr. Unit'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 38
      Width = 740
      Height = 67
      BandType = btHeader
      object RLDBText5: TRLDBText
        Left = 0
        Top = 0
        Width = 42
        Height = 14
        DataField = 'fantasia'
        DataSource = dm.dsparametros
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText7: TRLDBText
        Left = 0
        Top = 16
        Width = 49
        Height = 14
        DataField = 'endereco'
        DataSource = dm.dsparametros
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 0
        Top = 32
        Width = 31
        Height = 14
        Caption = 'CNPJ:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText8: TRLDBText
        Left = 35
        Top = 32
        Width = 23
        Height = 14
        DataField = 'cnpj'
        DataSource = dm.dsparametros
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 0
        Top = 48
        Width = 144
        Height = 14
        Caption = 'Relat'#243'rio de Produtos - F'#237'sico'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 656
        Top = 0
        Width = 81
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 656
        Top = 16
        Width = 82
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = itHour
        ParentFont = False
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 656
        Top = 32
        Width = 82
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = itPageNumber
        ParentFont = False
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 161
      Width = 740
      Height = 19
      BandType = btFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLLabel8: TRLLabel
        Left = 0
        Top = 1
        Width = 45
        Height = 14
        Caption = 'GESTOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel9: TRLLabel
        Left = 661
        Top = 1
        Width = 78
        Height = 14
        Caption = 'Vieira Sistemas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 141
      Width = 740
      Height = 20
      BandType = btSummary
      object RLLabel14: TRLLabel
        Left = 504
        Top = 3
        Width = 79
        Height = 14
        Caption = 'Total Geral . . . :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBResult2: TRLDBResult
        Left = 672
        Top = 3
        Width = 65
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VlrTotal'
        DataSource = dsqrMovEstoque
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult3: TRLDBResult
        Left = 587
        Top = 3
        Width = 50
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'qtd'
        DataSource = dsqrMovEstoque
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
    end
  end
  object RLReport3: TRLReport
    Left = 916
    Top = 374
    Width = 816
    Height = 1056
    DataSource = DataSource2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.PaperSize = fpLetter
    object RLBand13: TRLBand
      Left = 38
      Top = 38
      Width = 740
      Height = 67
      BandType = btHeader
      object RLDBText19: TRLDBText
        Left = 0
        Top = 0
        Width = 42
        Height = 14
        DataField = 'fantasia'
        DataSource = dm.dsparametros
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText23: TRLDBText
        Left = 0
        Top = 16
        Width = 49
        Height = 14
        DataField = 'endereco'
        DataSource = dm.dsparametros
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel23: TRLLabel
        Left = 0
        Top = 32
        Width = 31
        Height = 14
        Caption = 'CNPJ:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText24: TRLDBText
        Left = 32
        Top = 32
        Width = 23
        Height = 14
        DataField = 'cnpj'
        DataSource = dm.dsparametros
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object qrtituloI: TRLLabel
        Left = 0
        Top = 48
        Width = 144
        Height = 14
        Caption = 'Relat'#243'rio de Produtos - F'#237'sico'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo7: TRLSystemInfo
        Left = 656
        Top = 0
        Width = 81
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo8: TRLSystemInfo
        Left = 655
        Top = 16
        Width = 82
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = itHour
        ParentFont = False
      end
      object RLSystemInfo9: TRLSystemInfo
        Left = 655
        Top = 32
        Width = 82
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = itPageNumber
        ParentFont = False
      end
      object qroperadorI: TRLLabel
        Left = 568
        Top = 48
        Width = 169
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Relat'#243'rio de Produtos - F'#237'sico'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand14: TRLBand
      Left = 38
      Top = 209
      Width = 740
      Height = 19
      BandType = btFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLLabel30: TRLLabel
        Left = 0
        Top = 1
        Width = 45
        Height = 14
        Caption = 'GESTOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel31: TRLLabel
        Left = 661
        Top = 1
        Width = 78
        Height = 14
        Caption = 'Vieira Sistemas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLGroup1: TRLGroup
      Left = 38
      Top = 105
      Width = 740
      Height = 80
      DataFields = 'descricao'
      object RLBand11: TRLBand
        Left = 0
        Top = 0
        Width = 740
        Height = 19
        BandType = btHeader
        object RLLabel19: TRLLabel
          Left = 0
          Top = 1
          Width = 124
          Height = 15
          Caption = 'Forma de Pagamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText15: TRLDBText
          Left = 128
          Top = 2
          Width = 267
          Height = 14
          AutoSize = False
          DataField = 'descricao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand12: TRLBand
        Left = 0
        Top = 19
        Width = 740
        Height = 19
        BandType = btColumnHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = True
        object RLLabel20: TRLLabel
          Left = 0
          Top = 1
          Width = 42
          Height = 15
          Caption = 'Pedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel21: TRLLabel
          Left = 483
          Top = 1
          Width = 73
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Parcelas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel22: TRLLabel
          Left = 571
          Top = 1
          Width = 73
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Prazo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel32: TRLLabel
          Left = 664
          Top = 1
          Width = 73
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel33: TRLLabel
          Left = 128
          Top = 1
          Width = 95
          Height = 15
          Caption = 'Nome do Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel34: TRLLabel
          Left = 352
          Top = 1
          Width = 72
          Height = 15
          Caption = 'Operador(a)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand15: TRLBand
        Left = 0
        Top = 38
        Width = 740
        Height = 19
        object RLDBText16: TRLDBText
          Left = 664
          Top = 2
          Width = 73
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'valor'
          DataSource = DataSource2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText17: TRLDBText
          Left = 571
          Top = 2
          Width = 73
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'prazo'
          DataSource = DataSource2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText18: TRLDBText
          Left = 483
          Top = 2
          Width = 73
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'parcelas'
          DataSource = DataSource2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText25: TRLDBText
          Left = 128
          Top = 2
          Width = 217
          Height = 14
          AutoSize = False
          DataField = 'nome'
          DataSource = DataSource2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText26: TRLDBText
          Left = 352
          Top = 2
          Width = 121
          Height = 14
          AutoSize = False
          DataField = 'apelido'
          DataSource = DataSource2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText27: TRLDBText
          Left = 0
          Top = 2
          Width = 121
          Height = 14
          AutoSize = False
          DataField = 'pedido'
          DataSource = DataSource2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand17: TRLBand
        Left = 0
        Top = 57
        Width = 740
        Height = 24
        BandType = btSummary
        object RLLabel36: TRLLabel
          Left = 584
          Top = 3
          Width = 66
          Height = 14
          Caption = 'Subtotal . . . :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBResult11: TRLDBResult
          Left = 656
          Top = 3
          Width = 81
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'valor'
          DataSource = DataSource2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
        end
      end
    end
    object RLBand16: TRLBand
      Left = 38
      Top = 185
      Width = 740
      Height = 24
      BandType = btSummary
      object RLLabel24: TRLLabel
        Left = 572
        Top = 3
        Width = 79
        Height = 14
        Caption = 'Total Geral . . . :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBResult8: TRLDBResult
        Left = 656
        Top = 3
        Width = 81
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'valor'
        DataSource = DataSource2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
    end
  end
  object RLReport2: TRLReport
    Left = 404
    Top = 230
    Width = 816
    Height = 1056
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.PaperSize = fpLetter
    object RLBand6: TRLBand
      Left = 38
      Top = 123
      Width = 740
      Height = 18
      object RLDBText12: TRLDBText
        Left = 0
        Top = 1
        Width = 267
        Height = 14
        AutoSize = False
        DataField = 'descricao'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText13: TRLDBText
        Left = 664
        Top = 1
        Width = 73
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'Total'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand7: TRLBand
      Left = 38
      Top = 105
      Width = 740
      Height = 18
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel17: TRLLabel
        Left = 0
        Top = 1
        Width = 124
        Height = 15
        Caption = 'Forma de Pagamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel18: TRLLabel
        Left = 664
        Top = 1
        Width = 73
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand8: TRLBand
      Left = 38
      Top = 38
      Width = 740
      Height = 67
      BandType = btHeader
      object RLDBText20: TRLDBText
        Left = 0
        Top = 0
        Width = 42
        Height = 14
        DataField = 'fantasia'
        DataSource = dm.dsparametros
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText21: TRLDBText
        Left = 0
        Top = 16
        Width = 49
        Height = 14
        DataField = 'endereco'
        DataSource = dm.dsparametros
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel25: TRLLabel
        Left = 0
        Top = 32
        Width = 31
        Height = 14
        Caption = 'CNPJ:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText22: TRLDBText
        Left = 32
        Top = 32
        Width = 23
        Height = 14
        DataField = 'cnpj'
        DataSource = dm.dsparametros
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object qrtitulo: TRLLabel
        Left = 0
        Top = 48
        Width = 144
        Height = 14
        Caption = 'Relat'#243'rio de Produtos - F'#237'sico'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo4: TRLSystemInfo
        Left = 656
        Top = 0
        Width = 81
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo5: TRLSystemInfo
        Left = 655
        Top = 16
        Width = 82
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = itHour
        ParentFont = False
      end
      object RLSystemInfo6: TRLSystemInfo
        Left = 655
        Top = 32
        Width = 82
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = itPageNumber
        ParentFont = False
      end
      object qroperador: TRLLabel
        Left = 568
        Top = 48
        Width = 169
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Relat'#243'rio de Produtos - F'#237'sico'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand9: TRLBand
      Left = 38
      Top = 161
      Width = 740
      Height = 19
      BandType = btFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLLabel28: TRLLabel
        Left = 0
        Top = 1
        Width = 45
        Height = 14
        Caption = 'GESTOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel29: TRLLabel
        Left = 661
        Top = 1
        Width = 78
        Height = 14
        Caption = 'Vieira Sistemas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand10: TRLBand
      Left = 38
      Top = 141
      Width = 740
      Height = 20
      BandType = btSummary
      object RLLabel35: TRLLabel
        Left = 552
        Top = 3
        Width = 79
        Height = 14
        Caption = 'Total Geral . . . :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBResult1: TRLDBResult
        Left = 640
        Top = 3
        Width = 97
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'Total'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
    end
  end
  object ZQuery1: TZQuery
    Connection = dm.ZConnection1
    SQL.Strings = (
      
        'select F.codigo,F.descricao,sum(V.subtotal) as Bruto,sum(V.desco' +
        'nto) as Desconto,sum(V.subtotal)-sum(V.desconto) as Total from f' +
        'ormapagto F, Venda V'
      'where (F.codigo=V.formapagto)'
      'group by F.descricao')
    Params = <>
    Left = 280
    Top = 56
    object ZQuery1codigo: TStringField
      FieldName = 'codigo'
      Required = True
      Size = 2
    end
    object ZQuery1descricao: TStringField
      FieldName = 'descricao'
      Required = True
      Size = 50
    end
    object ZQuery1Total: TFloatField
      FieldName = 'Total'
    end
  end
  object ZQuery2: TZQuery
    Connection = dm.ZConnection1
    SQL.Strings = (
      
        'select P.pedido,F.codigo,F.descricao,V.parcelas,V.prazo,V.valor,' +
        'I.apelido,C.nome'
      
        'from formapagto F, vendaformaspagto V, pedidos P, fornecedores I' +
        ', clientes C'
      
        'where (P.pedido=V.venda) and (F.codigo=V.formapagto) and (P.vend' +
        'edor=I.codigo) and (P.cliente=C.codigo)'
      'and (V.tipo= '#39'P'#39')'
      'order by P.pedido')
    Params = <>
    Left = 280
    Top = 88
    object ZQuery2pedido: TIntegerField
      FieldName = 'pedido'
      Required = True
    end
    object ZQuery2codigo: TStringField
      FieldName = 'codigo'
      Required = True
      Size = 2
    end
    object ZQuery2descricao: TStringField
      FieldName = 'descricao'
      Required = True
      Size = 50
    end
    object ZQuery2parcelas: TIntegerField
      FieldName = 'parcelas'
    end
    object ZQuery2prazo: TIntegerField
      FieldName = 'prazo'
    end
    object ZQuery2valor: TFloatField
      FieldName = 'valor'
    end
    object ZQuery2apelido: TStringField
      FieldName = 'apelido'
      Size = 30
    end
    object ZQuery2nome: TStringField
      FieldName = 'nome'
      Required = True
      Size = 70
    end
  end
  object dsqrMovEstoque: TDataSource
    DataSet = qrMovEstoque
    Left = 280
    Top = 1
  end
  object qrMovEstoque: TZQuery
    Connection = dm.ZConnection1
    SQL.Strings = (
      'select E.documento,E.favorecido,E.produto,E.data,E.TipoMov,'
      'E.und,E.qtd,E.VlrUnit,E.VlrTotal,P.nome'
      'from movestoque E, produtos P'
      'where E.produto=P.codigo')
    Params = <>
    Left = 312
    object qrMovEstoquedocumento: TStringField
      FieldName = 'documento'
      Required = True
      Size = 15
    end
    object qrMovEstoquefavorecido: TIntegerField
      FieldName = 'favorecido'
      Required = True
    end
    object qrMovEstoqueproduto: TIntegerField
      FieldName = 'produto'
      Required = True
    end
    object qrMovEstoquedata: TDateField
      FieldName = 'data'
      Required = True
    end
    object qrMovEstoqueTipoMov: TStringField
      FieldName = 'TipoMov'
      Required = True
      Size = 2
    end
    object qrMovEstoqueund: TStringField
      FieldName = 'und'
      Required = True
      Size = 5
    end
    object qrMovEstoqueqtd: TFloatField
      FieldName = 'qtd'
      Required = True
    end
    object qrMovEstoqueVlrUnit: TFloatField
      FieldName = 'VlrUnit'
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object qrMovEstoqueVlrTotal: TFloatField
      FieldName = 'VlrTotal'
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object qrMovEstoquenome: TStringField
      FieldName = 'nome'
      Required = True
      Size = 50
    end
  end
  object qratualizar: TZQuery
    Connection = dm.ZConnection1
    Params = <>
    Left = 128
    Top = 65520
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 312
    Top = 56
  end
  object DataSource2: TDataSource
    DataSet = ZQuery2
    Left = 312
    Top = 88
  end
end
