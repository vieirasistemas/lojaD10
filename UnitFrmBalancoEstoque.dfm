object FrmBalancoEstoque: TFrmBalancoEstoque
  Left = 192
  Top = 151
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Balan'#231'o de Estoque'
  ClientHeight = 432
  ClientWidth = 912
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Scaled = False
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object eddoc: TEdit
    Left = 3
    Top = 35
    Width = 180
    Height = 54
    CharCase = ecUpperCase
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -40
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnEnter = eddocEnter
    OnExit = eddocExit
  end
  object Panel7: TPanel
    Left = 3
    Top = 9
    Width = 180
    Height = 26
    Caption = '  Documento'
    Color = clBlack
    Font.Charset = ANSI_CHARSET
    Font.Color = clYellow
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object Panel4: TPanel
    Left = 192
    Top = 9
    Width = 180
    Height = 26
    Caption = '  C'#243'digo'
    Color = clBlack
    Font.Charset = ANSI_CHARSET
    Font.Color = clYellow
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
  end
  object edcodigoproduto: TEdit
    Left = 192
    Top = 35
    Width = 180
    Height = 54
    CharCase = ecUpperCase
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -40
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnEnter = edcodigoprodutoEnter
    OnExit = edcodigoprodutoExit
  end
  object Panel5: TPanel
    Left = 379
    Top = 9
    Width = 369
    Height = 26
    Caption = 'Produto'
    Color = clBlack
    Font.Charset = ANSI_CHARSET
    Font.Color = clYellow
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
  end
  object ednomeproduto: TMemo
    Left = 379
    Top = 35
    Width = 369
    Height = 54
    BorderStyle = bsNone
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -29
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
  end
  object Panel6: TPanel
    Left = 755
    Top = 9
    Width = 142
    Height = 26
    Caption = 'QTD'
    Color = clBlack
    Font.Charset = ANSI_CHARSET
    Font.Color = clYellow
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
  end
  object edqtdproduto: TMemo
    Left = 755
    Top = 35
    Width = 142
    Height = 54
    BorderStyle = bsNone
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -40
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnEnter = edqtdprodutoEnter
    OnExit = edqtdprodutoExit
  end
  object BitBtn1: TBitBtn
    Left = 328
    Top = 403
    Width = 161
    Height = 25
    Caption = 'Processar Documento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = BitBtn1Click
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
  object bt2: TBitBtn
    Left = 490
    Top = 403
    Width = 81
    Height = 25
    Caption = 'Sai&r'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
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
  object DBGrid1: TDBGrid
    Left = 3
    Top = 96
    Width = 894
    Height = 297
    DataSource = dscoletor_res
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'produto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'Produto'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'Nome'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 397
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qtd'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taRightJustify
        Title.Caption = 'QTD'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'estoque'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taRightJustify
        Title.Caption = 'Estoque'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'saldo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taRightJustify
        Title.Caption = 'Saldo'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'documento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'Documento'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 157
        Visible = True
      end>
  end
  object QuickRep1: TQuickRep
    Left = 1072
    Top = 47
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = coletor_res
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Values = (
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    ReportTitle = 'Relat'#243'rio - Recebimento'
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object QRBand1: TQRBand
      Left = 38
      Top = 127
      Width = 718
      Height = 19
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        50.270833333333330000
        1899.708333333333000000)
      BandType = rbDetail
      object QRExpr6: TQRExpr
        Left = 1
        Top = 1
        Width = 48
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2.645833333333333000
          2.645833333333333000
          127.000000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'coletor_res.produto'
        FontSize = 9
      end
      object QRExpr14: TQRExpr
        Left = 536
        Top = 1
        Width = 67
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1418.166666666667000000
          2.645833333333333000
          177.270833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'coletor_res.estoque'
        FontSize = 9
      end
      object QRExpr15: TQRExpr
        Left = 624
        Top = 1
        Width = 91
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1651.000000000000000000
          2.645833333333333000
          240.770833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'coletor_res.saldo'
        FontSize = 9
      end
      object QRExpr1: TQRExpr
        Left = 57
        Top = 1
        Width = 376
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          150.812500000000000000
          2.645833333333333000
          994.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'coletor_res.nome'
        FontSize = 9
      end
      object QRExpr2: TQRExpr
        Left = 440
        Top = 1
        Width = 75
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1164.166666666667000000
          2.645833333333333000
          198.437500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'coletor_res.qtd'
        FontSize = 9
      end
    end
    object QRBand2: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 89
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        235.479166666666700000
        1899.708333333333000000)
      BandType = rbPageHeader
      object QRShape1: TQRShape
        Left = 0
        Top = 69
        Width = 718
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          0.000000000000000000
          182.562500000000000000
          1899.708333333333000000)
        Shape = qrsTopAndBottom
      end
      object QRLabel8: TQRLabel
        Left = 594
        Top = 40
        Width = 55
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1571.625000000000000000
          105.833333333333300000
          145.520833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'P'#225'gina    :'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRSysData2: TQRSysData
        Left = 702
        Top = 40
        Width = 45
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1857.375000000000000000
          105.833333333333300000
          119.062500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsPageNumber
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        FontSize = 9
      end
      object QRSysData3: TQRSysData
        Left = 681
        Top = 20
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1801.812500000000000000
          52.916666666666670000
          97.895833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        FontSize = 9
      end
      object QRSysData4: TQRSysData
        Left = 650
        Top = 0
        Width = 35
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1719.791666666667000000
          0.000000000000000000
          92.604166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsDate
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        FontSize = 9
      end
      object QRLabel11: TQRLabel
        Left = 594
        Top = 0
        Width = 51
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1571.625000000000000000
          0.000000000000000000
          134.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Data       :'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel13: TQRLabel
        Left = 594
        Top = 20
        Width = 52
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1571.625000000000000000
          52.916666666666670000
          137.583333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Hora       :'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel14: TQRLabel
        Left = 1
        Top = 71
        Width = 48
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2.645833333333333000
          187.854166666666700000
          127.000000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Produto'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel18: TQRLabel
        Left = 520
        Top = 71
        Width = 83
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1375.833333333333000000
          187.854166666666700000
          219.604166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QTD. Sistema'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel19: TQRLabel
        Left = 608
        Top = 71
        Width = 107
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1608.666666666667000000
          187.854166666666700000
          283.104166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Diferen'#231'a Estoque'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRImage4: TQRImage
        Left = 0
        Top = 2
        Width = 92
        Height = 65
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          171.979166666666700000
          0.000000000000000000
          5.291666666666667000
          243.416666666666700000)
        AutoSize = True
        Picture.Data = {
          0A544A504547496D6167650B0F0000FFD8FFE000104A46494600010101012C01
          2C0000FFDB0043000302020302020303030304030304050805050404050A0707
          06080C0A0C0C0B0A0B0B0D0E12100D0E110E0B0B1016101113141515150C0F17
          1816141812141514FFDB00430103040405040509050509140D0B0D1414141414
          1414141414141414141414141414141414141414141414141414141414141414
          14141414141414141414141414FFC00011080041005C03012200021101031101
          FFC4001D000001040301010000000000000000000000050608090104070203FF
          C400451000010303020404020702090D00000000010203040506110007081221
          31132241511415092332717475B361B21617242533527281C334353738424554
          7391B1B4C1D3FFC4001C01000007010100000000000000000000000002030405
          06070108FFC40030110001030204040406020300000000000001020311000405
          21314106125161132271B114328191A1F024C152D1E1FFDA000C030100021103
          11003F00B53D1A346850A3468D6090064F41A142B3A34CB9BBAB4D61C58874CA
          E561A4279CC8A752DE75950EE0A17CA12E023A8282A074D9B67887A7DCE9A94A
          6A8353874DA6ACA26997E1B7322241C175E8855E2A1BE84E7055804F2F43A543
          6B2262B935D6B505F8C7FA42BF8B1AB4DB276E4479971C6516A7D61E4871984B
          1DDB6D07A2DC1EA4E5293D304E7133AEDBC6876451D553B82A6C52A9FCE1A322
          42F953CCAEC33EFA8BCED8DC203EF2DD7635AEE3AB515296B90E92A27B924ABB
          EB8D5CDA30BFE491E923FB34F1187DEDD239ED9A528750927D85559DEDBA9786
          E3CF5CDB9EE5A9D7242BD664A5AD291EC9493848FD8001AD1B5EF9B8AC99EDCE
          B7EBB51A2CB6CE52F4094B6543FBD246ADFADEE15B869DD0A4CA72DFB6289548
          E83E13AED365BA16D288E992958293EA33A86761F0374CBC38BFBBAC38F50932
          AC2B5DC44899350A1E2942D09537179C0C78995149381D1B59E87A6AD0C6216C
          FA094FCA04ED1F8A867AD1F617C8E0215D0C823EF5D0F84CFA48EA0ED5A0DA7B
          B0FB7223C852598D728486D4D2BB01200C0293D3EB0608EEACE49163E9505A42
          92429246411EBA8CD59E1A785EB31F4C1AC516D6A549401F5350AA143B8C7424
          2DDE63F79D75FB5F71B6EE150A1C0A25D34434C82D2223086AA2DB81B4212025
          192A27A0C773AAD5D5CDA2D72D1E53B8CBFDD4AB56579E1F396D447583EF14FB
          D1A34DDB8770EDBB4E6B512AF5A894F92EA79C36F38014A738E657F5539E9CCA
          C0FDBA6CA5A5025460515B69C795CADA493D009AFA5E77BD26C1A37CCAB0FA9A
          654B0CB4DB4D971D79C209084213D5470147D804A8920024306F7A9DCF7E5193
          1E9F6F49A650D4D17659AB4A6184CF4A9242192A6DC5A9B672799D56028A13CA
          90AE7386C57691766F66E0522B74F4519AB1EDCAAFF255C97165EA8F29097DC4
          14828E4E8B424FAE15D70A3ADBB8F88C93684FAB53EA70E9E6AA8700663459BE
          3B30DAC0487243810082B5F4434125C57B0EE1A7C7B4D79C881D48C8FA76F7F4
          CEA711825C3A436D10A5EA520894E991EFD761A1CF2A46DB2DD66B6B5167D997
          45CB47B9ABD537653531CB7946416E4AE42DC6D65291CC10A42C24E4794A4601
          4E48DCBCAB94CBC788C6295F358F0E8F40A04915E78AD2C871B75E64FC3ADC5A
          7AA799A46790F41CE951054125CB236EEE7A7DC541BB6AD5C174CFA5ADD1F0B1
          E9CD474B2DBAD290B5360656B29252794AC9290AC6544694EAB06D6BC2B940AF
          576022A15DA225F10E9F1D0E3E5A5B85B256A6D4DA54140B49C15A4049EBDC02
          14B6B9525C5AAE329D3EDEA46BDF2FC512FAD98286BE0BCD0214419932762949
          1946719FE4C6EE3377546E2EDC263D162BA9A044AC04FC73ED38D196A4328CA9
          B4AD293E1853FCBCDD4294938E801309FBEAD8B763679BDD6DBFB8A1CB416AB5
          528813183AE73A2229042DB427D1395247391DF27A90120405E1CF6466DF9BE3
          1ADFAC417188D4779522ACCBC920A12D2B05B57F69784FDC49F4D53F16B771CB
          B0A48C97007B7FDFAD6E3C0F8C59DA608F256A82C4A95DC1CE475CFCBF41D6A5
          06D6221F091C25D56F4AC369155951BE64B61CE85C7560262B1DFF006A33EA39
          95EDA366E2B9C3470B557BEEE63E35EB7195D76A0B91FD23D3247F40D1F5F285
          2723D0970EBE1BE683C42713766ED1B1F5B6BDAA1172DCC91F616B18F878EAED
          DC293900F6749FF675CDFE900DDAF9E5D502C580F6615200933420F4548527CA
          93FD841FFAACFB6AD976E2709C38368F98FE8FED5593E0F6AF716F1073BF9852
          8A95D92351EC91514AB15899705565D4AA121C973A53AA79E7DD5654B5A8E492
          74BB6BD26BB3E9EE394CF13C00E94AB901C73607FEB1A6C36DA9D5A508495AD4
          701291924EACF785DD888DB7FB474F8D5FA6B2ED66738A9F25B90D82A654B090
          96FAFA84A5391EF9D67F6566BBD70A52623326BD11C4D8EB1C3D668594825460
          27B0D7E83FB158BDF8A0A452AEC974BA4D56962052062AD3E4216F723A5580CB
          494A920A872AB2A528273848CABA6905BDD8AC7C3CC76CBDBDB9657CCD5E33B5
          7AA50C3C271230164990D1E5C744A70004E000074D71FAD43DF2B47F8492A9F6
          05162507E25D9CF3AAA643FAC4B654A4BAB04F328849241233D4FBE9BD667167
          BE7B835E66896F3B0AA353752A5A23A21B29242464F55607403DF536BBE595C3
          C5409D213ED26B2F63869B2C78965E12D290398A9DCB499572A7ACE44C01F7AE
          9B72DB3BD9B874D4D3E5DB9367C24AD2B6E3542445A5C16B03A02CC774BCBC7A
          02EE07B1D38B6A7843AAC3AED2EAF7D54E9CB8B4D7932A2DBD4563922878750B
          754402E2874EA4127B7363A16E3BBA5C42DA3695E157BC21354B6A05312FC290
          62B0A478FF0012C2707909CE5B539D0FDFE9AD8E13389EBAB736F7AB42BCEB14
          F6E991E9E5E6B99A6E3E5DF110079BA67CA55D3476FE10BE80E85951FF0028FC
          EFB77A4AE518D230E7DCB32CA5A46A5A2493204F2EA0120C1220D4C3D631A8C5
          C5DF10D5BDAFA7DB522C9ACD39C329D7DB96006E4760828F7C7757DFA675BFC6
          B4FB2B86DAB6E0DE6E355AADB9575D2E954D61B4B01D7034858C9033CA3994A5
          2BD801DC8D589ABB43D75F08D8255F8EBD6B3A7700BB630A18C38406C988CF9A
          648D23B75A99FA4762D7A6D2EAD54AD53E9B19AACD41B42244803914FF00860F
          8616A00F6C919C138F7C0D569EDFF143C5A71073EA7336FE246760C6730E3716
          1446E3B04F5080E483D4E3D3989F5D79DC1E27F8B7D81954E9D7EC5623C190EF
          2B6895022391DE23A941723F62403D3981C671A9F3872CA824A93CC369CEAAA9
          B92949E5900EBDC6B9FD6A5D6C36D9DC9B2161DFF7A5D50BE77B8D714E91549D
          1A980BE5CE52A11E3B7CA3AA7A92303A07307ECEA1CAB87DDDEDCDBA66D424DA
          35444FA8485C87E4545AF864732892492E63A75EDAEABBB5C785C55CE18ADCDC
          6B06547A056D35B4D1AB74E7996E4069C530E380A79C1F21F0C107F691DD275C
          9F6F78B0E2CB75E04A9B68B3F3F8B15C0CBCEC3A447506D646403E5F6D475F60
          8E626A0E3CBE5036D3F7B55C387F8AD7C369705AB4952D71E632600DA011BE66
          A58F0EDC14C0DB69F1AE2BB5F62B55F6485C78AD02634557F5BA8CAD63D0E001
          E809C1D4A4D5455E5C77F121B7B7149A0DC7508F49AC46082F43914A8E16DF32
          42939013EA9503FDFAB49DA4AED42E8DAAB36B3555876A951A343972D6940405
          3CE32852CF28E83CC4F41A30C3061CD808883D339A86C4719BAC6EE0DC5DACA9
          5F60074036FD9AF5BADFE8BEEFFCA25FE8AF55E5C0DFFAC4D1BF0D2BF495A9FD
          3AF6B62EFA0D5E9B364A9988F8914F908E605653E1E57D5B2A283C8ACE0E143B
          1008C6B9E6D5ECAED15937BB755B55329BADC294F53BEB1F7D490F723A1C410A
          183E56DCEBDBCBDFB6612F6C5E7AE5A792324C4FDE6ADB8163D6986E137D62F0
          3CEF084C011F2919E63AF7A5EE2D881C3B5E99FF00866FF59BD406E1B361DADF
          CB9AA94A76B2BA288513E283A88E1EE7F384F2E39938EF9CEAC23706E9DBEBEA
          C89B49B82A6AF91CF71C8CE94A1E68B8B60871694909C9C728EDDFB0C9E9A6B6
          DCD93B47B1950AAD6682FC8A7B81C34996F485BEE361C04A8A3A82320B47A8FB
          BD4653BCC31CBABB438A4CA0083AF534F301E296F05C16E2D1A2A0FA95292002
          064919CFA1D8D43FE25B86063602954498D5C4E56D55179C6B9171433C9CA907
          3F6D59EFAE6FB9F6155AE1E0F69371C0697220D06E99699C86C125B43D1E304B
          87D9214809CFBAC6AC8F776CDDBDDDEF021DD4CD465AA8F2951DB6A333252AF1
          9C6C38529084FD61E4485797381D7B1D636E6DEDB1DBCB6ABF6C50DC0FD18C75
          552A1125F8925A2C2D94952BCE085254DF2E52339F6D296360E586222E5A4F90
          6D9CE628D8B715A718E1E187DD294AB8E69260010098D2368DAA1EFD1E9C586D
          C6D5ED4D46D1BC2AE9B76A0DD49C9AD3EF32B535250B4A07DA424E14928C1071
          D39719EB8D8FA41B8B2DB6DCEDA18B68DA1586EE4A9C8A83529C75865696E2B6
          D8575E6524654A2AC0033D39B38E99EAD77F053C384B5522AEE52E65218AF4B6
          E2436E1CC7DA6DC75CCF2E10BC94838F603A8F43A28FC1370E36C4A6AA322955
          2A934999F04D267BB296CBAFE54395212901CEADABB653D3AF71ABAF896DE2F8
          F0A9D63BD651CAE72F265502DAB22AB40E0AAA5714E6571E9F5DBCA0B7003808
          F143316605B89F7492B29CFBA0FB69478696B8865D93732F670CD1436DE0AA9F
          C02E2877C408C8E50E7D615728E81BEFF7EACB379AC8DA0DD8B3D9B62E75AE3D
          0ADC9CDB68874E4BB19119EE4710840084E301216063A0C6BD6CFD95B5BC33D2
          EE3876E2A752E9CB7D2ECB7A7175D6DC5A5618578448F372AD4942B97B150CE9
          437D2D9F249274232A2F807986795543D80F512EDDE4A7BBBAD58AA354B993F3
          58A8F5764F313E62E157980CF452BA903240246357C141F977C929FF0028530B
          A57C3B7F08A8AA0A68B3CA393908E853CB8C11D31A8D5BA9C2F6C1EE8DD326EB
          ADD3E4B552969F165B94C53ED25CC36DB8A79C421384F91E68A96401E61CC739
          D3AEC2A06DD6D0515CB5681775729F0204871BF83764BAF06179F3252568384E
          413849C64923B9D37BB753741252082368CA946905B90696D803E093D3FDFA3F
          734E3B84014BA5FE72EFEFBDA346981D452F4D9780F9048FC5BFFF0076F4A128
          0F85B9BFE749FD191A346BBB50A52BE3FCCF55FC737FA08D69B63F9CEE0FCA3F
          C26F468D147CBFBDA856CA466DA8BF96CBFD46F48B33ED557F36FF00EDA3468C
          37A158AE0E9717E351FE2EB7DA1FCF970FE219FD74E8D1A1B7EF6A15AD5AFF00
          20A77E21AFFC7674917081F3EA8FE21CFDE3A3468E8DA81AFFD9}
      end
      object QRDBText21: TQRDBText
        Left = 99
        Top = 1
        Width = 45
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          261.937500000000000000
          2.645833333333333000
          119.062500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dm.parametros
        DataField = 'fantasia'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText22: TQRDBText
        Left = 99
        Top = 17
        Width = 54
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          261.937500000000000000
          44.979166666666670000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dm.parametros
        DataField = 'Endereco'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel54: TQRLabel
        Left = 99
        Top = 33
        Width = 36
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          261.937500000000000000
          87.312500000000000000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CNPJ:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText23: TQRDBText
        Left = 138
        Top = 33
        Width = 27
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          365.125000000000000000
          87.312500000000000000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dm.parametros
        DataField = 'Cnpj'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object qrtituloEV: TQRLabel
        Left = 99
        Top = 50
        Width = 486
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          261.937500000000000000
          132.291666666666700000
          1285.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 
          'Relat'#243'rio de An'#225'lise de Estoque F'#237'sico: Coletor X Sistema (Estoq' +
          'ue Diferente)'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel1: TQRLabel
        Left = 57
        Top = 71
        Width = 240
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          150.812500000000000000
          187.854166666666700000
          635.000000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Nome do Produto'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel2: TQRLabel
        Left = 440
        Top = 71
        Width = 75
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1164.166666666667000000
          187.854166666666700000
          198.437500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QTD. Coletor'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
    end
    object QRBand4: TQRBand
      Left = 38
      Top = 146
      Width = 718
      Height = 19
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        50.270833333333330000
        1899.708333333333000000)
      BandType = rbPageFooter
      object QRLabel22: TQRLabel
        Left = 0
        Top = 2
        Width = 51
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          0.000000000000000000
          5.291666666666667000
          134.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'GESTOR'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel23: TQRLabel
        Left = 628
        Top = 2
        Width = 88
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1661.583333333333000000
          5.291666666666667000
          232.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Vieira Sistemas'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
    end
  end
  object coletor_res: TZQuery
    Connection = dm.ZConnection1
    SQL.Strings = (
      'select C.produto,C.qtd,C.estoque,C.saldo,C.documento,P.nome'
      'from coletor_res C, produtos P'
      'where C.produto=P.codigo')
    Params = <>
    Left = 816
    Top = 112
    object coletor_resproduto: TIntegerField
      FieldName = 'produto'
      Required = True
    end
    object coletor_resqtd: TFloatField
      FieldName = 'qtd'
    end
    object coletor_resestoque: TFloatField
      FieldName = 'estoque'
    end
    object coletor_ressaldo: TFloatField
      FieldName = 'saldo'
    end
    object coletor_resdocumento: TStringField
      FieldName = 'documento'
      Size = 15
    end
    object coletor_resnome: TStringField
      FieldName = 'nome'
      Required = True
      Size = 50
    end
  end
  object dscoletor_res: TDataSource
    DataSet = coletor_res
    Left = 848
    Top = 112
  end
  object qratualizar: TZQuery
    Connection = dm.ZConnection1
    Params = <>
    Left = 824
    Top = 144
  end
  object qrAtualizarEstoque: TZQuery
    Connection = dm.ZConnection1
    SQL.Strings = (
      'SELECT V.CODIGO,'
      'SUM(IF(LEFT(M.TIPOMOV,1)='#39'E'#39', M.QTD,0)) AS ENTRADAS,'
      'SUM(IF(LEFT(M.TIPOMOV,1)='#39'S'#39', M.QTD, 0)) AS SAIDAS'
      'FROM VACINAS AS V'
      'INNER JOIN MOVESTOQUE AS M'
      'ON M.PRODUTO = V.CODIGO'
      'GROUP BY V.CODIGO'
      'ORDER BY V.CODIGO')
    Params = <>
    Left = 824
    Top = 176
    object qrAtualizarEstoqueCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qrAtualizarEstoqueENTRADAS: TFloatField
      FieldName = 'ENTRADAS'
    end
    object qrAtualizarEstoqueSAIDAS: TFloatField
      FieldName = 'SAIDAS'
    end
  end
end
