object FrmFechamentoVenda: TFrmFechamentoVenda
  Left = 136
  Top = 140
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Fechamento de Vendas'
  ClientHeight = 139
  ClientWidth = 240
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
    Width = 53
    Height = 16
    Caption = 'Operador'
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Gauge1: TGauge
    Left = 0
    Top = 126
    Width = 240
    Height = 13
    Align = alBottom
    Progress = 0
  end
  object bt1: TBitBtn
    Left = 16
    Top = 97
    Width = 75
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
    Left = 140
    Top = 97
    Width = 81
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
    Left = 181
    Top = 208
    Width = 816
    Height = 1056
    DataSource = DataSource1
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
      BeforePrint = RLBand1BeforePrint
      object qrcodigo: TRLDBText
        Left = 203
        Top = 1
        Width = 40
        Height = 14
        DataField = 'produto'
        DataSource = DataSource1
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
        Width = 267
        Height = 14
        AutoSize = False
        DataField = 'nome'
        DataSource = DataSource1
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
        DataSource = DataSource1
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
        DataSource = DataSource1
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
        DataSource = DataSource1
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
        DataSource = DataSource1
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
        DataSource = DataSource1
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
        DataSource = DataSource1
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
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rlforn: TRLLabel
        Left = 519
        Top = 1
        Width = 42
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
        DataSource = DataSource1
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
  object RLReport2: TRLReport
    Left = 653
    Top = 38
    Width = 816
    Height = 1056
    DataSource = DataSource3
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
        DataSource = DataSource3
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
        DataSource = DataSource3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText11: TRLDBText
        Left = 547
        Top = 1
        Width = 73
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'Desconto'
        DataSource = DataSource3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText14: TRLDBText
        Left = 435
        Top = 1
        Width = 73
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'Bruto'
        DataSource = DataSource3
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
        Caption = 'Liquido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel15: TRLLabel
        Left = 547
        Top = 1
        Width = 73
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Desconto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel16: TRLLabel
        Left = 435
        Top = 1
        Width = 73
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Bruto'
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
      object RLLabel27: TRLLabel
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
      object RLLabel28: TRLLabel
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
      object RLLabel29: TRLLabel
        Left = 280
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
        DataSource = DataSource3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult4: TRLDBResult
        Left = 528
        Top = 3
        Width = 92
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'Desconto'
        DataSource = DataSource3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult5: TRLDBResult
        Left = 408
        Top = 3
        Width = 100
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'Bruto'
        DataSource = DataSource3
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
    Left = 100
    Top = 518
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
          DataSource = DataSource2
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
          Width = 39
          Height = 15
          Caption = 'Venda'
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
          Caption = 'Bruto'
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
          Caption = 'Desconto'
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
          Caption = 'Liquido'
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
          DataField = 'Total'
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
          DataField = 'Desconto'
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
          DataField = 'subtotal'
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
          DataField = 'operador'
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
          DataField = 'vendaI'
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
          Left = 392
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
        object RLDBResult9: TRLDBResult
          Left = 472
          Top = 3
          Width = 84
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'subtotal'
          DataSource = DataSource2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
        end
        object RLDBResult10: TRLDBResult
          Left = 560
          Top = 3
          Width = 84
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'Desconto'
          DataSource = DataSource2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
        end
        object RLDBResult11: TRLDBResult
          Left = 656
          Top = 3
          Width = 81
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'Total'
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
        Left = 380
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
      object RLDBResult6: TRLDBResult
        Left = 472
        Top = 3
        Width = 84
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'subtotal'
        DataSource = DataSource2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult7: TRLDBResult
        Left = 560
        Top = 3
        Width = 84
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'Desconto'
        DataSource = DataSource2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult8: TRLDBResult
        Left = 656
        Top = 3
        Width = 81
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'Total'
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
  object RLReport4: TRLReport
    Left = 988
    Top = 318
    Width = 816
    Height = 1056
    DataSource = DataSource4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.PaperSize = fpLetter
    object RLBand18: TRLBand
      Left = 38
      Top = 38
      Width = 740
      Height = 67
      BandType = btHeader
      object RLDBText28: TRLDBText
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
      object RLDBText29: TRLDBText
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
      object RLLabel26: TRLLabel
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
      object RLDBText30: TRLDBText
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
      object qrtituloEV: TRLLabel
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
      object RLSystemInfo10: TRLSystemInfo
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
      object RLSystemInfo11: TRLSystemInfo
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
      object RLSystemInfo12: TRLSystemInfo
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
    end
    object RLBand19: TRLBand
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
      object RLLabel38: TRLLabel
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
      object RLLabel39: TRLLabel
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
    object RLGroup2: TRLGroup
      Left = 38
      Top = 105
      Width = 740
      Height = 80
      DataFields = 'apelido'
      object RLBand20: TRLBand
        Left = 0
        Top = 0
        Width = 740
        Height = 19
        BandType = btHeader
        object RLLabel40: TRLLabel
          Left = 0
          Top = 1
          Width = 76
          Height = 15
          Caption = 'Vendedor(a):'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText31: TRLDBText
          Left = 88
          Top = 2
          Width = 267
          Height = 14
          AutoSize = False
          DataField = 'apelido'
          DataSource = DataSource4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand21: TRLBand
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
        object RLLabel41: TRLLabel
          Left = 0
          Top = 1
          Width = 29
          Height = 15
          Caption = 'Data'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel42: TRLLabel
          Left = 536
          Top = 1
          Width = 44
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'QTD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel43: TRLLabel
          Left = 592
          Top = 1
          Width = 60
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Vlr. Unit.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel44: TRLLabel
          Left = 664
          Top = 1
          Width = 73
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Vlr. Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel45: TRLLabel
          Left = 88
          Top = 1
          Width = 68
          Height = 15
          Caption = 'Documento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel46: TRLLabel
          Left = 208
          Top = 1
          Width = 48
          Height = 15
          Caption = 'Produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel49: TRLLabel
          Left = 272
          Top = 1
          Width = 101
          Height = 15
          Caption = 'Nome do Produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel50: TRLLabel
          Left = 496
          Top = 1
          Width = 27
          Height = 15
          Caption = 'UND'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand22: TRLBand
        Left = 0
        Top = 38
        Width = 740
        Height = 19
        object RLDBText32: TRLDBText
          Left = 664
          Top = 2
          Width = 73
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VlrTotal'
          DataSource = DataSource4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText35: TRLDBText
          Left = 88
          Top = 2
          Width = 113
          Height = 14
          AutoSize = False
          DataField = 'documento'
          DataSource = DataSource4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText36: TRLDBText
          Left = 272
          Top = 2
          Width = 217
          Height = 14
          AutoSize = False
          DataField = 'nome'
          DataSource = DataSource4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText37: TRLDBText
          Left = 0
          Top = 2
          Width = 81
          Height = 14
          AutoSize = False
          DataField = 'data'
          DataSource = DataSource4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText38: TRLDBText
          Left = 48
          Top = 208
          Width = 113
          Height = 14
          AutoSize = False
          DataField = 'documento'
          DataSource = DataSource4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText39: TRLDBText
          Left = 208
          Top = 2
          Width = 48
          Height = 14
          AutoSize = False
          DataField = 'produto'
          DataSource = DataSource4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText33: TRLDBText
          Left = 496
          Top = 2
          Width = 28
          Height = 14
          Alignment = taCenter
          AutoSize = False
          DataField = 'und'
          DataSource = DataSource4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText34: TRLDBText
          Left = 536
          Top = 2
          Width = 43
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'qtd'
          DataSource = DataSource4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText40: TRLDBText
          Left = 592
          Top = 2
          Width = 60
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VlrUnit'
          DataSource = DataSource4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand23: TRLBand
        Left = 0
        Top = 57
        Width = 740
        Height = 24
        BandType = btSummary
        object RLLabel47: TRLLabel
          Left = 464
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
        object RLDBResult13: TRLDBResult
          Left = 536
          Top = 3
          Width = 43
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'qtd'
          DataSource = DataSource4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
        end
        object RLDBResult14: TRLDBResult
          Left = 656
          Top = 3
          Width = 81
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VlrTotal'
          DataSource = DataSource4
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
    object RLBand24: TRLBand
      Left = 38
      Top = 185
      Width = 740
      Height = 24
      BandType = btSummary
      object RLLabel48: TRLLabel
        Left = 452
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
      object RLDBResult16: TRLDBResult
        Left = 536
        Top = 3
        Width = 43
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'qtd'
        DataSource = DataSource4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult17: TRLDBResult
        Left = 656
        Top = 3
        Width = 81
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VlrTotal'
        DataSource = DataSource4
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
  object RLReport5: TRLReport
    Left = 364
    Top = 502
    Width = 816
    Height = 1056
    DataSource = DataSource5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.PaperSize = fpLetter
    object RLBand25: TRLBand
      Left = 38
      Top = 38
      Width = 740
      Height = 67
      BandType = btHeader
      object RLDBText41: TRLDBText
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
      object RLDBText42: TRLDBText
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
      object RLLabel35: TRLLabel
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
      object RLDBText43: TRLDBText
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
      object qrtitulo5: TRLLabel
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
      object RLSystemInfo13: TRLSystemInfo
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
      object RLSystemInfo14: TRLSystemInfo
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
      object RLSystemInfo15: TRLSystemInfo
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
    end
    object RLBand26: TRLBand
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
      object RLLabel51: TRLLabel
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
      object RLLabel52: TRLLabel
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
    object RLGroup3: TRLGroup
      Left = 38
      Top = 105
      Width = 740
      Height = 80
      DataFields = 'apelido'
      object RLBand27: TRLBand
        Left = 0
        Top = 0
        Width = 740
        Height = 19
        BandType = btHeader
        object RLLabel53: TRLLabel
          Left = 0
          Top = 1
          Width = 76
          Height = 15
          Caption = 'Vendedor(a):'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText44: TRLDBText
          Left = 88
          Top = 2
          Width = 267
          Height = 14
          AutoSize = False
          DataField = 'apelido'
          DataSource = DataSource5
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand28: TRLBand
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
        object RLLabel54: TRLLabel
          Left = 0
          Top = 1
          Width = 39
          Height = 15
          Caption = 'Venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel55: TRLLabel
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
        object RLLabel56: TRLLabel
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
        object RLLabel57: TRLLabel
          Left = 483
          Top = 1
          Width = 73
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Bruto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel58: TRLLabel
          Left = 571
          Top = 1
          Width = 73
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Desconto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel59: TRLLabel
          Left = 664
          Top = 1
          Width = 73
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Liquido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand29: TRLBand
        Left = 0
        Top = 38
        Width = 740
        Height = 19
        object RLDBText49: TRLDBText
          Left = 48
          Top = 208
          Width = 113
          Height = 14
          AutoSize = False
          DataField = 'documento'
          DataSource = DataSource4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText45: TRLDBText
          Left = 0
          Top = 2
          Width = 121
          Height = 14
          AutoSize = False
          DataField = 'vendaI'
          DataSource = DataSource5
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText46: TRLDBText
          Left = 128
          Top = 2
          Width = 217
          Height = 14
          AutoSize = False
          DataField = 'nome'
          DataSource = DataSource5
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText47: TRLDBText
          Left = 352
          Top = 2
          Width = 121
          Height = 14
          AutoSize = False
          DataField = 'operador'
          DataSource = DataSource5
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText48: TRLDBText
          Left = 483
          Top = 2
          Width = 73
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'subtotal'
          DataSource = DataSource5
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText50: TRLDBText
          Left = 571
          Top = 2
          Width = 73
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'Desconto'
          DataSource = DataSource5
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText51: TRLDBText
          Left = 664
          Top = 2
          Width = 73
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'Total'
          DataSource = DataSource5
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand30: TRLBand
        Left = 0
        Top = 57
        Width = 740
        Height = 24
        BandType = btSummary
        object RLLabel60: TRLLabel
          Left = 392
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
        object RLDBResult12: TRLDBResult
          Left = 472
          Top = 3
          Width = 84
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'subtotal'
          DataSource = DataSource5
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
        end
        object RLDBResult15: TRLDBResult
          Left = 560
          Top = 3
          Width = 84
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'Desconto'
          DataSource = DataSource5
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
        end
        object RLDBResult18: TRLDBResult
          Left = 656
          Top = 3
          Width = 81
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'Total'
          DataSource = DataSource5
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
    object RLBand31: TRLBand
      Left = 38
      Top = 185
      Width = 740
      Height = 24
      BandType = btSummary
      object RLLabel61: TRLLabel
        Left = 380
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
      object RLDBResult19: TRLDBResult
        Left = 472
        Top = 3
        Width = 84
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'subtotal'
        DataSource = DataSource5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult20: TRLDBResult
        Left = 560
        Top = 3
        Width = 84
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'Desconto'
        DataSource = DataSource5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult21: TRLDBResult
        Left = 656
        Top = 3
        Width = 81
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'Total'
        DataSource = DataSource5
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
  object qratualizar: TZQuery
    Connection = dm.ZConnection1
    Params = <>
    Left = 344
    Top = 32
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
    Left = 488
    Top = 32
    object ZQuery1descricao: TStringField
      FieldName = 'descricao'
      Required = True
      Size = 50
    end
    object ZQuery1Bruto: TFloatField
      FieldName = 'Bruto'
      DisplayFormat = '#,##0.00'
    end
    object ZQuery1Desconto: TFloatField
      FieldName = 'Desconto'
      DisplayFormat = '#,##0.00'
    end
    object ZQuery1Total: TFloatField
      FieldName = 'Total'
      DisplayFormat = '#,##0.00'
    end
    object ZQuery1formapagto: TStringField
      FieldName = 'formapagto'
      Size = 2
    end
  end
  object ZQuery2: TZQuery
    Connection = dm.ZConnection1
    SQL.Strings = (
      
        'select V.vendaI,F.apelido,V.subtotal,V.desconto,V.total,P.descri' +
        'cao,C.nome'
      'from venda V, vendedores F, formapagto P, clientes C'
      
        'where V.vendedor=F.codigo and fechada='#39'S'#39' and V.formapagto=P.cod' +
        'igo and V.cliente=C.codigo'
      'order by descricao,nome')
    Params = <>
    Left = 488
    object ZQuery2vendaI: TStringField
      FieldName = 'vendaI'
      Required = True
      Size = 15
    end
    object ZQuery2subtotal: TFloatField
      FieldName = 'subtotal'
      DisplayFormat = '#,##0.00'
    end
    object ZQuery2desconto: TFloatField
      FieldName = 'desconto'
      DisplayFormat = '#,##0.00'
    end
    object ZQuery2total: TFloatField
      FieldName = 'total'
      DisplayFormat = '#,##0.00'
    end
    object ZQuery2descricao: TStringField
      FieldName = 'descricao'
      Required = True
      Size = 50
    end
    object ZQuery2nome: TStringField
      FieldName = 'nome'
      Required = True
      Size = 70
    end
    object ZQuery2operador: TStringField
      FieldName = 'operador'
      Size = 30
    end
  end
  object DataSource1: TDataSource
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
  object Query1: TZQuery
    Connection = dm.ZConnection1
    SQL.Strings = (
      'select * from financeiro F, contascorrente_saldo C'
      'where F.conta=C.conta')
    Params = <>
    Left = 344
    object Query1SaldoAnt: TFloatField
      FieldName = 'SaldoAnt'
    end
    object Query1deb1: TFloatField
      FieldName = 'deb1'
    end
    object Query1deb2: TFloatField
      FieldName = 'deb2'
    end
    object Query1deb3: TFloatField
      FieldName = 'deb3'
    end
    object Query1deb4: TFloatField
      FieldName = 'deb4'
    end
    object Query1deb5: TFloatField
      FieldName = 'deb5'
    end
    object Query1deb6: TFloatField
      FieldName = 'deb6'
    end
    object Query1deb7: TFloatField
      FieldName = 'deb7'
    end
    object Query1deb8: TFloatField
      FieldName = 'deb8'
    end
    object Query1deb9: TFloatField
      FieldName = 'deb9'
    end
    object Query1deb10: TFloatField
      FieldName = 'deb10'
    end
    object Query1deb11: TFloatField
      FieldName = 'deb11'
    end
    object Query1deb12: TFloatField
      FieldName = 'deb12'
    end
    object Query1cred1: TFloatField
      FieldName = 'cred1'
    end
    object Query1cred2: TFloatField
      FieldName = 'cred2'
    end
    object Query1cred3: TFloatField
      FieldName = 'cred3'
    end
    object Query1cred4: TFloatField
      FieldName = 'cred4'
    end
    object Query1cred5: TFloatField
      FieldName = 'cred5'
    end
    object Query1cred6: TFloatField
      FieldName = 'cred6'
    end
    object Query1cred7: TFloatField
      FieldName = 'cred7'
    end
    object Query1cred8: TFloatField
      FieldName = 'cred8'
    end
    object Query1cred9: TFloatField
      FieldName = 'cred9'
    end
    object Query1cred10: TFloatField
      FieldName = 'cred10'
    end
    object Query1cred11: TFloatField
      FieldName = 'cred11'
    end
    object Query1cred12: TFloatField
      FieldName = 'cred12'
    end
    object Query1data: TDateField
      FieldName = 'data'
      Required = True
    end
    object Query1doc: TStringField
      FieldName = 'doc'
      Size = 15
    end
    object Query1historico: TStringField
      FieldName = 'historico'
      Size = 80
    end
    object Query1credito: TFloatField
      FieldName = 'credito'
    end
    object Query1debito: TFloatField
      FieldName = 'debito'
    end
    object Query1saldoconta: TFloatField
      FieldName = 'saldoconta'
    end
  end
  object qrtotal: TZQuery
    Connection = dm.ZConnection1
    SQL.Strings = (
      
        'select sum(credito) as Credito, sum(debito) as Debito from finan' +
        'ceiro')
    Params = <>
    Left = 376
    object qrtotalCredito: TFloatField
      FieldName = 'Credito'
    end
    object qrtotalDebito: TFloatField
      FieldName = 'Debito'
    end
  end
  object movvenda: TZQuery
    Connection = dm.ZConnection1
    SQL.Strings = (
      'select M.vendaI,M.produto,M.qtd,M.unit,M.total,M.seq,P.nome'
      'from movvenda M, produtos P'
      'where M.produto=P.codigo')
    Params = <>
    Left = 248
    object movvendavendaI: TStringField
      FieldName = 'vendaI'
      Required = True
      Size = 15
    end
    object movvendaqtd: TFloatField
      FieldName = 'qtd'
    end
    object movvendaunit: TFloatField
      FieldName = 'unit'
      DisplayFormat = '#,##0.00'
    end
    object movvendatotal: TFloatField
      FieldName = 'total'
      DisplayFormat = '#,##0.00'
    end
    object movvendanome: TStringField
      FieldName = 'nome'
      Required = True
      Size = 65
    end
    object movvendaapelido: TStringField
      FieldName = 'apelido'
      Size = 30
    end
    object movvendanomecliente: TStringField
      FieldName = 'nomecliente'
      Size = 50
    end
  end
  object ZQuery3: TZQuery
    Connection = dm.ZConnection1
    Params = <>
    Left = 488
    Top = 64
    object ZQuery3documento: TStringField
      FieldName = 'documento'
      Size = 15
    end
    object ZQuery3data: TDateField
      FieldName = 'data'
    end
    object ZQuery3nome: TStringField
      FieldName = 'nome'
      Size = 50
    end
    object ZQuery3qtd: TFloatField
      FieldName = 'qtd'
    end
    object ZQuery3VlrUnit: TFloatField
      FieldName = 'VlrUnit'
      DisplayFormat = '#,##0.00'
    end
    object ZQuery3VlrTotal: TFloatField
      FieldName = 'VlrTotal'
      DisplayFormat = '#,##0.00'
    end
    object ZQuery3apelido: TStringField
      FieldName = 'apelido'
      Size = 30
    end
    object ZQuery3produto: TIntegerField
      FieldName = 'produto'
    end
    object ZQuery3und: TStringField
      FieldName = 'und'
      Size = 5
    end
  end
  object DataSource2: TDataSource
    DataSet = ZQuery2
    Left = 520
  end
  object DataSource3: TDataSource
    DataSet = ZQuery1
    Left = 520
    Top = 32
  end
  object DataSource4: TDataSource
    DataSet = ZQuery3
    Left = 520
    Top = 64
  end
  object DataSource5: TDataSource
    DataSet = ZQuery5
    Left = 520
    Top = 96
  end
  object ZQuery5: TZQuery
    Connection = dm.ZConnection1
    Params = <>
    Left = 488
    Top = 96
    object ZQuery5apelido: TStringField
      FieldName = 'apelido'
      Size = 30
    end
    object ZQuery5vendaI: TStringField
      FieldName = 'vendaI'
      Size = 15
    end
    object ZQuery5nome: TStringField
      FieldName = 'nome'
      Size = 70
    end
    object ZQuery5operador: TStringField
      FieldName = 'operador'
      Size = 30
    end
    object ZQuery5subtotal: TFloatField
      FieldName = 'subtotal'
      DisplayFormat = '#,##0.00'
    end
    object ZQuery5desconto: TFloatField
      FieldName = 'desconto'
      DisplayFormat = '#,##0.00'
    end
    object ZQuery5total: TFloatField
      FieldName = 'total'
      DisplayFormat = '#,##0.00'
    end
  end
end
