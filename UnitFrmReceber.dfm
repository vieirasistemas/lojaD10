object FrmReceber: TFrmReceber
  Left = 257
  Top = 147
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Contas a Receber'
  ClientHeight = 488
  ClientWidth = 1017
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
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1017
    Height = 488
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Lan'#231'amento'
      object P_dados: TPanel
        Left = 24
        Top = 5
        Width = 985
        Height = 225
        BevelOuter = bvNone
        Enabled = False
        TabOrder = 0
        object Label3: TLabel
          Left = 32
          Top = 49
          Width = 45
          Height = 16
          Caption = 'Cliente'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbcliente: TLabel
          Left = 152
          Top = 45
          Width = 433
          Height = 13
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lbcodigo: TLabel
          Left = -1
          Top = 33
          Width = 49
          Height = 13
          Caption = 'lbcodigo'
          Visible = False
        end
        object Label13: TLabel
          Left = 597
          Top = 45
          Width = 72
          Height = 16
          Caption = 'Documento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 46
          Top = 74
          Width = 24
          Height = 16
          Caption = 'Tipo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 777
          Top = 106
          Width = 90
          Height = 16
          Caption = 'Local Cobran'#231'a'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 270
          Top = 73
          Width = 51
          Height = 16
          Caption = 'Emiss'#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 421
          Top = 73
          Width = 68
          Height = 16
          Caption = 'Vencimento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 619
          Top = 73
          Width = 49
          Height = 16
          Caption = 'Valor R$'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 809
          Top = 73
          Width = 61
          Height = 16
          Caption = 'Liquido R$'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 19
          Top = 104
          Width = 58
          Height = 16
          Caption = 'N.N'#250'mero'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 270
          Top = 104
          Width = 37
          Height = 16
          Caption = 'Banco'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGreen
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 364
          Top = 104
          Width = 20
          Height = 16
          Caption = 'Ag.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGreen
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label21: TLabel
          Left = 465
          Top = 104
          Width = 30
          Height = 16
          Caption = 'C / C'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGreen
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label22: TLabel
          Left = 621
          Top = 106
          Width = 44
          Height = 16
          Caption = 'Cheque'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGreen
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 9
          Top = 137
          Width = 68
          Height = 16
          Caption = 'Observa'#231#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label26: TLabel
          Left = 153
          Top = 60
          Width = 238
          Height = 16
          AutoSize = False
          Caption = 'F10 consultar Cliente'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label58: TLabel
          Left = 805
          Top = 45
          Width = 70
          Height = 16
          Caption = 'Nota Fiscal'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edcliente: TEdit
          Left = 79
          Top = 44
          Width = 66
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnEnter = edclienteEnter
          OnExit = edclienteExit
          OnKeyDown = edclienteKeyDown
        end
        object EdDocumento: TEdit
          Left = 671
          Top = 44
          Width = 98
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnEnter = EdDocumentoEnter
          OnExit = EdDocumentoExit
        end
        object cbtipo: TComboBox
          Left = 79
          Top = 74
          Width = 183
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
          TabOrder = 3
          OnEnter = cbtipoEnter
          OnExit = cbtipoExit
          Items.Strings = (
            'AV - '#192' VISTA'
            'BB - BOLETO BANC'#193'RIO'
            'CC - CART'#195'O DE CR'#201'DITO'
            'CH - CHEQUE PR'#201'-DATADO'
            'DP - DUPLICATA'
            'EM - EMPENHO'
            'NF - NOTA FISCAL'
            'NP - NOTA PROMISS'#211'RIA'
            'OU - OUTRO')
        end
        object EdLocal: TEdit
          Left = 880
          Top = 103
          Width = 100
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 13
          OnEnter = EdLocalEnter
          OnExit = EdLocalExit
        end
        object meemissao: TMaskEdit
          Left = 323
          Top = 72
          Width = 86
          Height = 24
          EditMask = '99/99/9999;1;_'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 4
          Text = '  /  /    '
          OnEnter = meemissaoEnter
          OnExit = meemissaoExit
        end
        object mevencto: TMaskEdit
          Left = 495
          Top = 72
          Width = 87
          Height = 24
          EditMask = '99/99/9999;1;_'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 5
          Text = '  /  /    '
          OnEnter = mevenctoEnter
          OnExit = mevenctoExit
        end
        object edvalor: TEditAlinh
          Left = 671
          Top = 72
          Width = 98
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnEnter = edvalorEnter
          OnExit = EdValorExit
          Alinhamento = taRightJustify
        end
        object edliquido: TEditAlinh
          Left = 880
          Top = 72
          Width = 100
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          OnEnter = edliquidoEnter
          OnExit = EdLiquidoExit
          Alinhamento = taRightJustify
        end
        object EdNossoNum: TEdit
          Left = 79
          Top = 103
          Width = 181
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          OnEnter = EdNossoNumEnter
          OnExit = EdNossoNumExit
        end
        object Edbanco: TEdit
          Left = 311
          Top = 103
          Width = 43
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
          OnEnter = EdbancoEnter
          OnExit = EdbancoExit
        end
        object edagencia: TEdit
          Left = 388
          Top = 103
          Width = 61
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
          OnEnter = edagenciaEnter
          OnExit = edagenciaExit
        end
        object EdCC: TEdit
          Left = 499
          Top = 103
          Width = 82
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
          OnEnter = EdCCEnter
          OnExit = EdCCExit
        end
        object Edcheque: TEdit
          Left = 671
          Top = 103
          Width = 98
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
          OnEnter = EdchequeEnter
          OnExit = EdchequeExit
        end
        object Memo1: TMemo
          Left = 79
          Top = 136
          Width = 898
          Height = 73
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 14
          OnEnter = Memo1Enter
          OnExit = Memo1Exit
        end
        object ednf: TEdit
          Left = 880
          Top = 44
          Width = 100
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnEnter = ednfEnter
          OnExit = ednfExit
        end
      end
      object QuickRep1: TQuickRep
        Left = -31
        Top = 644
        Width = 794
        Height = 1123
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
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
          30.000000000000000000
          2970.000000000000000000
          30.000000000000000000
          2100.000000000000000000
          150.000000000000000000
          100.000000000000000000
          0.000000000000000000)
        PrinterSettings.Copies = 1
        PrinterSettings.Duplex = False
        PrinterSettings.FirstPage = 1
        PrinterSettings.LastPage = 1
        PrinterSettings.OutputBin = Auto
        PrintIfEmpty = True
        ReportTitle = 'Carn'#234
        SnapToGrid = True
        Units = MM
        Zoom = 100
        object DetailBand1: TQRBand
          Left = 57
          Top = 281
          Width = 700
          Height = 270
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = True
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Frame.Style = psDot
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            714.375000000000000000
            1852.083333333333000000)
          BandType = rbDetail
          object QRShape35: TQRShape
            Left = 368
            Top = 240
            Width = 329
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333300000
              973.666666666667000000
              635.000000000000000000
              870.479166666667000000)
            Shape = qrsRectangle
          end
          object QRShape29: TQRShape
            Left = 584
            Top = 138
            Width = 113
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333300000
              1545.166666666670000000
              365.125000000000000000
              298.979166666667000000)
            Shape = qrsRectangle
          end
          object QRShape28: TQRShape
            Left = 480
            Top = 138
            Width = 97
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333300000
              1270.000000000000000000
              365.125000000000000000
              256.645833333333000000)
            Shape = qrsRectangle
          end
          object QRShape27: TQRShape
            Left = 368
            Top = 138
            Width = 97
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333300000
              973.666666666667000000
              365.125000000000000000
              256.645833333333000000)
            Shape = qrsRectangle
          end
          object QRShape17: TQRShape
            Left = 368
            Top = 104
            Width = 329
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333300000
              973.666666666667000000
              275.166666666667000000
              870.479166666667000000)
            Shape = qrsRectangle
          end
          object QRShape21: TQRShape
            Left = 8
            Top = 172
            Width = 97
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333300000
              21.166666666666700000
              455.083333333333000000
              256.645833333333000000)
            Shape = qrsRectangle
          end
          object QRShape19: TQRShape
            Left = 120
            Top = 138
            Width = 97
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333300000
              317.500000000000000000
              365.125000000000000000
              256.645833333333000000)
            Shape = qrsRectangle
          end
          object QRShape18: TQRShape
            Left = 8
            Top = 138
            Width = 97
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333300000
              21.166666666666700000
              365.125000000000000000
              256.645833333333000000)
            Shape = qrsRectangle
          end
          object QRImage2: TQRImage
            Left = 66
            Top = 0
            Width = 220
            Height = 97
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              256.645833333333000000
              174.625000000000000000
              0.000000000000000000
              582.083333333333000000)
            Center = True
          end
          object QRShape16: TQRShape
            Left = 8
            Top = 104
            Width = 329
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333300000
              21.166666666666700000
              275.166666666667000000
              870.479166666667000000)
            Shape = qrsRectangle
          end
          object QRDBText21: TQRDBText
            Left = 18
            Top = 110
            Width = 271
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333300000
              47.625000000000000000
              291.041666666667000000
              717.020833333333000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataField = 'nome'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRLabel9: TQRLabel
            Left = 16
            Top = 95
            Width = 25
            Height = 11
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              29.104166666666700000
              42.333333333333300000
              251.354166666667000000
              66.145833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'NOME'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 6
          end
          object QRDBText22: TQRDBText
            Left = 298
            Top = 110
            Width = 34
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333300000
              788.458333333333000000
              291.041666666667000000
              89.958333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = dm.clientes
            DataField = 'codigo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Mask = '0000'
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRDBText23: TQRDBText
            Left = 16
            Top = 144
            Width = 81
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333300000
              42.333333333333300000
              381.000000000000000000
              214.312500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataField = 'doc'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRLabel29: TQRLabel
            Left = 16
            Top = 129
            Width = 54
            Height = 11
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              29.104166666666700000
              42.333333333333300000
              341.312500000000000000
              142.875000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'DOCUMENTO'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 6
          end
          object QRDBText24: TQRDBText
            Left = 130
            Top = 144
            Width = 79
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333300000
              343.958333333333000000
              381.000000000000000000
              209.020833333333000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataField = 'vencto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRLabel30: TQRLabel
            Left = 128
            Top = 129
            Width = 54
            Height = 11
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              29.104166666666700000
              338.666666666667000000
              341.312500000000000000
              142.875000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'VENCIMENTO'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 6
          end
          object QRShape20: TQRShape
            Left = 224
            Top = 138
            Width = 113
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333300000
              592.666666666667000000
              365.125000000000000000
              298.979166666667000000)
            Shape = qrsRectangle
          end
          object QRDBText25: TQRDBText
            Left = 258
            Top = 144
            Width = 71
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333300000
              682.625000000000000000
              381.000000000000000000
              187.854166666667000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataField = 'liquido'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRLabel31: TQRLabel
            Left = 232
            Top = 129
            Width = 27
            Height = 11
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              29.104166666666700000
              613.833333333333000000
              341.312500000000000000
              71.437500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'VALOR'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 6
          end
          object QRLabel32: TQRLabel
            Left = 16
            Top = 163
            Width = 51
            Height = 11
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              29.104166666666700000
              42.333333333333300000
              431.270833333333000000
              134.937500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'TX. PERMAN.'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 6
          end
          object QRShape22: TQRShape
            Left = 120
            Top = 172
            Width = 60
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333300000
              317.500000000000000000
              455.083333333333000000
              158.750000000000000000)
            Shape = qrsRectangle
          end
          object QRLabel33: TQRLabel
            Left = 128
            Top = 163
            Width = 37
            Height = 11
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              29.104166666666700000
              338.666666666667000000
              431.270833333333000000
              97.895833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'DIAS ATR'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 6
          end
          object QRShape23: TQRShape
            Left = 192
            Top = 172
            Width = 145
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333300000
              508.000000000000000000
              455.083333333333000000
              383.645833333333000000)
            Shape = qrsRectangle
          end
          object QRLabel34: TQRLabel
            Left = 200
            Top = 163
            Width = 28
            Height = 11
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              29.104166666666700000
              529.166666666667000000
              431.270833333333000000
              74.083333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'JUROS'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 6
          end
          object QRShape24: TQRShape
            Left = 8
            Top = 206
            Width = 97
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333300000
              21.166666666666700000
              545.041666666667000000
              256.645833333333000000)
            Shape = qrsRectangle
          end
          object QRLabel35: TQRLabel
            Left = 16
            Top = 197
            Width = 51
            Height = 11
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              29.104166666666700000
              42.333333333333300000
              521.229166666667000000
              134.937500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'PAGAMENTO'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 6
          end
          object QRShape25: TQRShape
            Left = 120
            Top = 206
            Width = 217
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333300000
              317.500000000000000000
              545.041666666667000000
              574.145833333333000000)
            Shape = qrsRectangle
          end
          object QRLabel36: TQRLabel
            Left = 128
            Top = 197
            Width = 26
            Height = 11
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              29.104166666666700000
              338.666666666667000000
              521.229166666667000000
              68.791666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'TOTAL'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 6
          end
          object QRShape26: TQRShape
            Left = 8
            Top = 240
            Width = 329
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333300000
              21.166666666666700000
              635.000000000000000000
              870.479166666667000000)
            Shape = qrsRectangle
          end
          object QRLabel37: TQRLabel
            Left = 128
            Top = 231
            Width = 63
            Height = 11
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              29.104166666666700000
              338.666666666667000000
              611.187500000000000000
              166.687500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'AUTENTICA'#199#195'O'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 6
          end
          object QRImage3: TQRImage
            Left = 426
            Top = 0
            Width = 220
            Height = 97
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              256.645833333333000000
              1127.125000000000000000
              0.000000000000000000
              582.083333333333000000)
            Center = True
          end
          object QRDBText26: TQRDBText
            Left = 378
            Top = 110
            Width = 271
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333300000
              1000.125000000000000000
              291.041666666667000000
              717.020833333333000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataField = 'nome'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRLabel28: TQRLabel
            Left = 376
            Top = 95
            Width = 25
            Height = 11
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              29.104166666666700000
              994.833333333333000000
              251.354166666667000000
              66.145833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'NOME'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 6
          end
          object QRDBText27: TQRDBText
            Left = 658
            Top = 110
            Width = 34
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333300000
              1740.958333333330000000
              291.041666666667000000
              89.958333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = dm.clientes
            DataField = 'codigo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Mask = '0000'
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRDBText28: TQRDBText
            Left = 376
            Top = 144
            Width = 81
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333300000
              994.833333333333000000
              381.000000000000000000
              214.312500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataField = 'doc'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRLabel39: TQRLabel
            Left = 376
            Top = 129
            Width = 54
            Height = 11
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              29.104166666666700000
              994.833333333333000000
              341.312500000000000000
              142.875000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'DOCUMENTO'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 6
          end
          object QRDBText29: TQRDBText
            Left = 490
            Top = 144
            Width = 79
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333300000
              1296.458333333330000000
              381.000000000000000000
              209.020833333333000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataField = 'vencto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRLabel40: TQRLabel
            Left = 488
            Top = 129
            Width = 54
            Height = 11
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              29.104166666666700000
              1291.166666666670000000
              341.312500000000000000
              142.875000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'VENCIMENTO'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 6
          end
          object QRDBText30: TQRDBText
            Left = 618
            Top = 144
            Width = 71
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333300000
              1635.125000000000000000
              381.000000000000000000
              187.854166666667000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataField = 'liquido'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRLabel41: TQRLabel
            Left = 592
            Top = 129
            Width = 27
            Height = 11
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              29.104166666666700000
              1566.333333333330000000
              341.312500000000000000
              71.437500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'VALOR'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 6
          end
          object QRShape30: TQRShape
            Left = 368
            Top = 172
            Width = 97
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333300000
              973.666666666667000000
              455.083333333333000000
              256.645833333333000000)
            Shape = qrsRectangle
          end
          object QRLabel42: TQRLabel
            Left = 376
            Top = 163
            Width = 51
            Height = 11
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              29.104166666666700000
              994.833333333333000000
              431.270833333333000000
              134.937500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'TX. PERMAN.'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 6
          end
          object QRShape31: TQRShape
            Left = 480
            Top = 172
            Width = 60
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333300000
              1270.000000000000000000
              455.083333333333000000
              158.750000000000000000)
            Shape = qrsRectangle
          end
          object QRLabel43: TQRLabel
            Left = 488
            Top = 163
            Width = 37
            Height = 11
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              29.104166666666700000
              1291.166666666670000000
              431.270833333333000000
              97.895833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'DIAS ATR'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 6
          end
          object QRShape32: TQRShape
            Left = 552
            Top = 172
            Width = 145
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333300000
              1460.500000000000000000
              455.083333333333000000
              383.645833333333000000)
            Shape = qrsRectangle
          end
          object QRLabel44: TQRLabel
            Left = 560
            Top = 163
            Width = 28
            Height = 11
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              29.104166666666700000
              1481.666666666670000000
              431.270833333333000000
              74.083333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'JUROS'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 6
          end
          object QRShape33: TQRShape
            Left = 480
            Top = 206
            Width = 217
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333300000
              1270.000000000000000000
              545.041666666667000000
              574.145833333333000000)
            Shape = qrsRectangle
          end
          object QRLabel45: TQRLabel
            Left = 488
            Top = 197
            Width = 26
            Height = 11
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              29.104166666666700000
              1291.166666666670000000
              521.229166666667000000
              68.791666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'TOTAL'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 6
          end
          object QRShape34: TQRShape
            Left = 368
            Top = 206
            Width = 97
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333300000
              973.666666666667000000
              545.041666666667000000
              256.645833333333000000)
            Shape = qrsRectangle
          end
          object QRLabel46: TQRLabel
            Left = 376
            Top = 197
            Width = 51
            Height = 11
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              29.104166666666700000
              994.833333333333000000
              521.229166666667000000
              134.937500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'PAGAMENTO'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 6
          end
          object QRLabel47: TQRLabel
            Left = 488
            Top = 231
            Width = 63
            Height = 11
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              29.104166666666700000
              1291.166666666670000000
              611.187500000000000000
              166.687500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'AUTENTICA'#199#195'O'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 6
          end
        end
        object TitleBand1: TQRBand
          Left = 57
          Top = 11
          Width = 700
          Height = 270
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          BeforePrint = TitleBand1BeforePrint
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            714.375000000000000000
            1852.083333333333000000)
          BandType = rbTitle
          object QRLabel50: TQRLabel
            Left = 16
            Top = 15
            Width = 95
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              42.333333333333300000
              39.687500000000000000
              251.354166666667000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Data da Compra'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel51: TQRLabel
            Left = 16
            Top = 39
            Width = 98
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              42.333333333333300000
              103.187500000000000000
              259.291666666667000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Valor da Compra'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel52: TQRLabel
            Left = 16
            Top = 63
            Width = 56
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              42.333333333333300000
              166.687500000000000000
              148.166666666667000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Vendedor'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText34: TQRDBText
            Left = 34
            Top = 198
            Width = 271
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333300000
              89.958333333333300000
              523.875000000000000000
              717.020833333333000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataField = 'nome'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRDBText35: TQRDBText
            Left = 34
            Top = 214
            Width = 271
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333300000
              89.958333333333300000
              566.208333333333000000
              717.020833333333000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = dm.clientes
            DataField = 'endereco'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRDBText36: TQRDBText
            Left = 34
            Top = 230
            Width = 271
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333300000
              89.958333333333300000
              608.541666666667000000
              717.020833333333000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = dm.clientes
            DataField = 'bairro'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRDBText37: TQRDBText
            Left = 34
            Top = 246
            Width = 79
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333300000
              89.958333333333300000
              650.875000000000000000
              209.020833333333000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = dm.clientes
            DataField = 'cep'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRDBText38: TQRDBText
            Left = 114
            Top = 246
            Width = 143
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333300000
              301.625000000000000000
              650.875000000000000000
              378.354166666667000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = dm.clientes
            DataField = 'cidade'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRDBText39: TQRDBText
            Left = 282
            Top = 246
            Width = 23
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333300000
              746.125000000000000000
              650.875000000000000000
              60.854166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = dm.clientes
            DataField = 'estado'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRLabel53: TQRLabel
            Left = 120
            Top = 15
            Width = 5
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              317.500000000000000000
              39.687500000000000000
              13.229166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = ':'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel54: TQRLabel
            Left = 120
            Top = 39
            Width = 5
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              317.500000000000000000
              103.187500000000000000
              13.229166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = ':'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel55: TQRLabel
            Left = 120
            Top = 63
            Width = 5
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              317.500000000000000000
              166.687500000000000000
              13.229166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = ':'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object lbcompra: TQRLabel
            Left = 136
            Top = 15
            Width = 95
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              359.833333333333000000
              39.687500000000000000
              251.354166666667000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Data da Compra'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object lbvalor: TQRLabel
            Left = 136
            Top = 39
            Width = 98
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              359.833333333333000000
              103.187500000000000000
              259.291666666667000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Valor da Compra'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object lbvendedor: TQRLabel
            Left = 136
            Top = 63
            Width = 56
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              359.833333333333000000
              166.687500000000000000
              148.166666666667000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Vendedor'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel56: TQRLabel
            Left = 480
            Top = 15
            Width = 70
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              1270.000000000000000000
              39.687500000000000000
              185.208333333333000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Vencimento'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel57: TQRLabel
            Left = 584
            Top = 15
            Width = 51
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              1545.166666666670000000
              39.687500000000000000
              134.937500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Valor R$'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object qrvencto1: TQRLabel
            Left = 483
            Top = 39
            Width = 63
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              1277.937500000000000000
              103.187500000000000000
              166.687500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = '99/99/9999'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object qrparc1: TQRLabel
            Left = 576
            Top = 39
            Width = 56
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              1524.000000000000000000
              103.187500000000000000
              148.166666666667000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = '99.999,99'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object qrvencto2: TQRLabel
            Left = 483
            Top = 57
            Width = 63
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              1277.937500000000000000
              150.812500000000000000
              166.687500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = '99/99/9999'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object qrparc2: TQRLabel
            Left = 576
            Top = 57
            Width = 56
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              1524.000000000000000000
              150.812500000000000000
              148.166666666667000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = '99.999,99'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object qrvencto3: TQRLabel
            Left = 483
            Top = 75
            Width = 63
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              1277.937500000000000000
              198.437500000000000000
              166.687500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = '99/99/9999'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object qrparc3: TQRLabel
            Left = 576
            Top = 75
            Width = 56
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              1524.000000000000000000
              198.437500000000000000
              148.166666666667000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = '99.999,99'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object qrvencto4: TQRLabel
            Left = 483
            Top = 93
            Width = 63
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              1277.937500000000000000
              246.062500000000000000
              166.687500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = '99/99/9999'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object qrparc4: TQRLabel
            Left = 576
            Top = 93
            Width = 56
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              1524.000000000000000000
              246.062500000000000000
              148.166666666667000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = '99.999,99'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object qrvencto5: TQRLabel
            Left = 483
            Top = 111
            Width = 63
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              1277.937500000000000000
              293.687500000000000000
              166.687500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = '99/99/9999'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object qrparc5: TQRLabel
            Left = 576
            Top = 111
            Width = 56
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              1524.000000000000000000
              293.687500000000000000
              148.166666666667000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = '99.999,99'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object qrvencto6: TQRLabel
            Left = 483
            Top = 129
            Width = 63
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              1277.937500000000000000
              341.312500000000000000
              166.687500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = '99/99/9999'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object qrparc6: TQRLabel
            Left = 576
            Top = 129
            Width = 56
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              1524.000000000000000000
              341.312500000000000000
              148.166666666667000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = '99.999,99'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object qrvencto7: TQRLabel
            Left = 483
            Top = 147
            Width = 63
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              1277.937500000000000000
              388.937500000000000000
              166.687500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = '99/99/9999'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object qrparc7: TQRLabel
            Left = 576
            Top = 147
            Width = 56
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              1524.000000000000000000
              388.937500000000000000
              148.166666666667000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = '99.999,99'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object qrvencto8: TQRLabel
            Left = 483
            Top = 165
            Width = 63
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              1277.937500000000000000
              436.562500000000000000
              166.687500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = '99/99/9999'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object qrparc8: TQRLabel
            Left = 576
            Top = 165
            Width = 56
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              1524.000000000000000000
              436.562500000000000000
              148.166666666667000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = '99.999,99'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object qrvencto9: TQRLabel
            Left = 483
            Top = 183
            Width = 63
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              1277.937500000000000000
              484.187500000000000000
              166.687500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = '99/99/9999'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object qrparc9: TQRLabel
            Left = 576
            Top = 183
            Width = 56
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              1524.000000000000000000
              484.187500000000000000
              148.166666666667000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = '99.999,99'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object qrvencto10: TQRLabel
            Left = 483
            Top = 201
            Width = 63
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              1277.937500000000000000
              531.812500000000000000
              166.687500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = '99/99/9999'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object qrparc10: TQRLabel
            Left = 576
            Top = 201
            Width = 56
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              1524.000000000000000000
              531.812500000000000000
              148.166666666667000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = '99.999,99'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object qrvencto11: TQRLabel
            Left = 483
            Top = 219
            Width = 63
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              1277.937500000000000000
              579.437500000000000000
              166.687500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = '99/99/9999'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object qrparc11: TQRLabel
            Left = 576
            Top = 219
            Width = 56
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              1524.000000000000000000
              579.437500000000000000
              148.166666666667000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = '99.999,99'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object qrvencto12: TQRLabel
            Left = 483
            Top = 237
            Width = 63
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              1277.937500000000000000
              627.062500000000000000
              166.687500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = '99/99/9999'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object qrparc12: TQRLabel
            Left = 576
            Top = 237
            Width = 56
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              1524.000000000000000000
              627.062500000000000000
              148.166666666667000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = '99.999,99'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object qr1: TQRLabel
            Left = 450
            Top = 39
            Width = 18
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              1190.625000000000000000
              103.187500000000000000
              47.625000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = '1a.'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object qr2: TQRLabel
            Left = 450
            Top = 57
            Width = 18
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              1190.625000000000000000
              150.812500000000000000
              47.625000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = '2a.'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object qr3: TQRLabel
            Left = 450
            Top = 75
            Width = 18
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              1190.625000000000000000
              198.437500000000000000
              47.625000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = '3a.'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object qr4: TQRLabel
            Left = 450
            Top = 93
            Width = 18
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              1190.625000000000000000
              246.062500000000000000
              47.625000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = '4a.'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object qr5: TQRLabel
            Left = 450
            Top = 111
            Width = 18
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              1190.625000000000000000
              293.687500000000000000
              47.625000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = '5a.'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object qr6: TQRLabel
            Left = 450
            Top = 129
            Width = 18
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              1190.625000000000000000
              341.312500000000000000
              47.625000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = '6a.'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object qr7: TQRLabel
            Left = 450
            Top = 147
            Width = 18
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              1190.625000000000000000
              388.937500000000000000
              47.625000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = '7a.'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object qr8: TQRLabel
            Left = 450
            Top = 165
            Width = 18
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              1190.625000000000000000
              436.562500000000000000
              47.625000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = '8a.'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object qr9: TQRLabel
            Left = 450
            Top = 183
            Width = 18
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              1190.625000000000000000
              484.187500000000000000
              47.625000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = '9a.'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object qr10: TQRLabel
            Left = 443
            Top = 201
            Width = 25
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              1172.104166666670000000
              531.812500000000000000
              66.145833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = '10a.'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object qr11: TQRLabel
            Left = 443
            Top = 219
            Width = 25
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              1172.104166666670000000
              579.437500000000000000
              66.145833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = '11a.'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object qr12: TQRLabel
            Left = 443
            Top = 237
            Width = 25
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              1172.104166666670000000
              627.062500000000000000
              66.145833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = '12a.'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
        end
      end
      object P_Baixar: TPanel
        Left = -8
        Top = 256
        Width = 1017
        Height = 201
        BevelOuter = bvNone
        TabOrder = 2
        object Label1: TLabel
          Left = 29
          Top = 12
          Width = 87
          Height = 16
          Caption = 'Conta Corrente'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label27: TLabel
          Left = 394
          Top = 108
          Width = 69
          Height = 16
          Caption = 'Doc Origem'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 385
          Top = 77
          Width = 87
          Height = 16
          Caption = 'Valor Pagto R$'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 58
          Top = 76
          Width = 58
          Height = 16
          Caption = 'Data Pgto'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label23: TLabel
          Left = 65
          Top = 108
          Width = 51
          Height = 16
          Caption = 'Juros R$'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label19: TLabel
          Left = 38
          Top = 44
          Width = 78
          Height = 16
          Caption = 'Plano Contas'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label24: TLabel
          Left = 215
          Top = 77
          Width = 75
          Height = 16
          Caption = 'Desconto R$'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label33: TLabel
          Left = 16
          Top = 137
          Width = 100
          Height = 16
          Caption = 'Pl.Contas - Juros'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label34: TLabel
          Left = 238
          Top = 108
          Width = 52
          Height = 16
          Caption = 'Multa R$'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object cbconta: TComboBox
          Left = 125
          Top = 11
          Width = 455
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 0
          OnEnter = cbcontaEnter
          OnExit = cbcontaExit
        end
        object eddocorigem: TEdit
          Left = 469
          Top = 107
          Width = 111
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 7
          OnEnter = eddocorigemEnter
          OnExit = eddocorigemExit
        end
        object edvalorpago: TEditAlinh
          Left = 480
          Top = 76
          Width = 100
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnEnter = edvalorpagoEnter
          OnExit = edvalorpagoExit
          Alinhamento = taRightJustify
        end
        object mepagto: TMaskEdit
          Left = 125
          Top = 75
          Width = 84
          Height = 24
          EditMask = '99/99/9999;1;_'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 2
          Text = '  /  /    '
          OnEnter = mepagtoEnter
          OnExit = mepagtoExit
        end
        object edjuros: TEditAlinh
          Left = 125
          Top = 107
          Width = 84
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnEnter = edjurosEnter
          OnExit = EdJurosExit
          Alinhamento = taRightJustify
        end
        object cbplanoconta: TComboBox
          Left = 125
          Top = 43
          Width = 455
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          Sorted = True
          TabOrder = 1
          OnEnter = cbplanocontaEnter
          OnExit = cbplanocontaExit
          Items.Strings = (
            'CART'#195'O DE CR'#201'DITO'
            'CHEQUE PR'#201'-DATADO'
            'DUPLICATA'
            'EMPENHO'
            'NOTA FISCAL'
            'NOTA PROMISSORA'
            'OUTRO')
        end
        object eddesconto: TEditAlinh
          Left = 293
          Top = 76
          Width = 84
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnEnter = eddescontoEnter
          OnExit = EdDescontoExit
          Alinhamento = taRightJustify
        end
        object cbplanojuros: TComboBox
          Left = 125
          Top = 136
          Width = 455
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
          TabOrder = 8
          OnEnter = cbplanojurosEnter
          OnExit = cbplanojurosExit
          Items.Strings = (
            'CART'#195'O DE CR'#201'DITO'
            'CHEQUE PR'#201'-DATADO'
            'DUPLICATA'
            'EMPENHO'
            'NOTA FISCAL'
            'NOTA PROMISSORA'
            'OUTRO')
        end
        object edmulta: TEditAlinh
          Left = 293
          Top = 107
          Width = 84
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnEnter = edmultaEnter
          OnExit = edmultaExit
          Alinhamento = taRightJustify
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1009
        Height = 33
        Align = alTop
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = clNavy
        TabOrder = 4
        object btprimeiro: TBitBtn
          Left = 343
          Top = 5
          Width = 33
          Height = 24
          Hint = 'Primeiro Registro'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnClick = btprimeiroClick
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
            0000000000000000000000000000000000000000000000202020FFFFFF000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000020202080808000000000000000000000000000000000000000000000
            0000000000000000000000000000000000202020808080808080909090C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0909090808080808080FFFFFF909090C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0909090808080FFFFFFFFFFFF
            909090C0C0C0C0C0C0C0C0C09090906060606060606060606060606060606060
            60606060606060404040FFFFFFFFFFFFFFFFFF909090C0C0C0C0C0C0606060FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF909090C0C0C0606060FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF909090606060FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF303030FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        end
        object btanterior: TBitBtn
          Left = 375
          Top = 5
          Width = 33
          Height = 24
          Hint = 'Registro Anterior'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          OnClick = btanteriorClick
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF202020FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF60606040
            4040000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF606060606060000000000000FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF60606060606000000000
            0000202020404040404040404040404040000000FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF6060606060600000000000000000000000000000000000000000000000
            00000000FFFFFFFFFFFFFFFFFFFFFFFF60606060606000000000000000000000
            0000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF
            2020205050503030300000000000000000000000000000000000000000000000
            00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF20202050505030303000000000
            0000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF2020205050503030300000003030306060606060606060606060
            60303030FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF20202050505030
            3030000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF202020505050000000FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        end
        object btproximo: TBitBtn
          Left = 407
          Top = 5
          Width = 33
          Height = 24
          Hint = 'Pr'#243'ximo Registro'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
          OnClick = btproximoClick
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF202020FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF40
            4040404040000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF404040404040000000000000FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80808040404040404040404040404040
            4040202020000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            8080800000000000000000000000000000000000000000000000000000000000
            00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80808000000000000000000000000000
            0000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF
            8080800000000000000000000000000000000000000000000000000000003030
            30303030FFFFFFFFFFFFFFFFFFFFFFFF80808000000000000000000000000000
            0000000000000000000000303030303030FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            404040303030606060606060606060606060303030000000303030303030FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF40
            4040404040303030303030FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF404040202020303030FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        end
        object btultimo: TBitBtn
          Left = 439
          Top = 5
          Width = 33
          Height = 24
          Hint = #218'ltimo Registro'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 9
          OnClick = btultimoClick
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000
            00FFFFFFFFFFFFFFFFFF40404000000000000000000000000000000000000000
            0000000000000000000000000000000000000000FFFFFFFFFFFF808080606060
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000FFFFFF80808080808060606000000000000000000000000000
            0000000000000000000000000000000000000000000000000000808080808080
            B0B0B0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0909090808080B0B0B0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0909090FFFFFF505050606060
            606060606060606060606060606060606060606060909090C0C0C0C0C0C0C0C0
            C0909090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF606060C0C0C0C0C0C0909090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF606060C0C0C0909090FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF606060909090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF303030FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        end
        object btnovo: TBitBtn
          Left = 471
          Top = 5
          Width = 90
          Height = 24
          Hint = 'Adicionar Novo Registro'
          Caption = 'Novo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = btnovoClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
            333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
            0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
            07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
            07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
            0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
            33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
            B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
            3BB33773333773333773B333333B3333333B7333333733333337}
          NumGlyphs = 2
        end
        object btgravar: TBitBtn
          Left = 560
          Top = 5
          Width = 90
          Height = 24
          Hint = 'Gravar'
          Caption = 'Gravar'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = btgravarClick
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
        object btalterar: TBitBtn
          Left = 649
          Top = 5
          Width = 90
          Height = 24
          Hint = 'Alterar Registro'
          Caption = 'Alterar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = btalterarClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
            000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
            00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
            F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
            0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
            FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
            FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
            0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
            00333377737FFFFF773333303300000003333337337777777333}
          NumGlyphs = 2
        end
        object btexcluir: TBitBtn
          Left = 738
          Top = 5
          Width = 90
          Height = 24
          Hint = 'Apagar Registro'
          Caption = 'Excluir Doc.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = btexcluirClick
          Glyph.Data = {
            26050000424D26050000000000003604000028000000100000000F0000000100
            080000000000F0000000CE0E0000CE0E00000001000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
            A6000020400000206000002080000020A0000020C0000020E000004000000040
            20000040400000406000004080000040A0000040C0000040E000006000000060
            20000060400000606000006080000060A0000060C0000060E000008000000080
            20000080400000806000008080000080A0000080C0000080E00000A0000000A0
            200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
            200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
            200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
            20004000400040006000400080004000A0004000C0004000E000402000004020
            20004020400040206000402080004020A0004020C0004020E000404000004040
            20004040400040406000404080004040A0004040C0004040E000406000004060
            20004060400040606000406080004060A0004060C0004060E000408000004080
            20004080400040806000408080004080A0004080C0004080E00040A0000040A0
            200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
            200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
            200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
            20008000400080006000800080008000A0008000C0008000E000802000008020
            20008020400080206000802080008020A0008020C0008020E000804000008040
            20008040400080406000804080008040A0008040C0008040E000806000008060
            20008060400080606000806080008060A0008060C0008060E000808000008080
            20008080400080806000808080008080A0008080C0008080E00080A0000080A0
            200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
            200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
            200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
            2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
            2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
            2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
            2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
            2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
            2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
            2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0101A4
            FFFFFFFFFFFF0101FFFFFFFFFF010101A4FFFFFFFF0101A4FFFFFFFFFFFF0101
            01A4FFFF010101FFFFFFFFFFFFFFFF010101A4010101FFFFFFFFFFFFFFFFFFFF
            0101010101FFFFFFFFFFFFFFFFFFFFFFFF010101A4FFFFFFFFFFFFFFFFFFFFFF
            0101010101A4FFFFFFFFFFFFFFFFFF010101FF010101A4FFFFFFFFFFFFFF0101
            01FFFFFF010101A4FFFFFFFFFF010101FFFFFFFFFF010101FFFFFFFFFF0101FF
            FFFFFFFFFFFF0101FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF}
        end
        object btcancelar: TBitBtn
          Left = 827
          Top = 5
          Width = 90
          Height = 24
          Hint = 'Cancelar'
          Caption = 'Sair'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnClick = btcancelarClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
            3333333777333777FF3333993333339993333377FF3333377FF3399993333339
            993337777FF3333377F3393999333333993337F777FF333337FF993399933333
            399377F3777FF333377F993339993333399377F33777FF33377F993333999333
            399377F333777FF3377F993333399933399377F3333777FF377F993333339993
            399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
            99333773FF3333777733339993333339933333773FFFFFF77333333999999999
            3333333777333777333333333999993333333333377777333333}
          NumGlyphs = 2
        end
        object btRecibo: TBitBtn
          Left = 916
          Top = 5
          Width = 90
          Height = 24
          Hint = 'Recibo'
          Caption = 'Recibo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnClick = btReciboClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
            00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
            8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
            8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
            8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
            03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
            03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
            33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
            33333337FFFF7733333333300000033333333337777773333333}
          NumGlyphs = 2
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 224
        Width = 1009
        Height = 33
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = clNavy
        TabOrder = 3
        object btbaixar: TBitBtn
          Left = 847
          Top = 5
          Width = 80
          Height = 25
          Caption = '&Baixar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = btbaixarClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
            73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
            0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
            0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
            0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
            0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
            0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
            0333337F777777737F333308888888880333337F333333337F33330888888888
            03333373FFFFFFFF733333700000000073333337777777773333}
          NumGlyphs = 2
        end
        object btconfirmar: TBitBtn
          Left = 926
          Top = 5
          Width = 80
          Height = 25
          Caption = 'Confirmar'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = btconfirmarClick
          Glyph.Data = {
            5A010000424D5A01000000000000760000002800000012000000130000000100
            040000000000E4000000CE0E0000C40E00001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777778877777
            7777770000007777844877777777770000007778444487777777770000007784
            4444487777777700000078444C4444877777770000007444C4C4448777777700
            00007C4C444C444877777700000078C44444C4448777770000008444C4444C44
            487777000000444C7C4448C4448777000000C4C777C4448C4448770000007C77
            777C4448C4448700000077777777C4448C4487000000777777777C4448C44700
            00007777777777C4448C7700000077777777777C444877000000777777777777
            C448770000007777777777777C447700000077777777777777C777000000}
          NumGlyphs = 2
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = '&Consulta'
      ImageIndex = 1
      object Label7: TLabel
        Left = 215
        Top = 47
        Width = 112
        Height = 13
        Caption = 'Tipo do Documento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label29: TLabel
        Left = 15
        Top = 7
        Width = 47
        Height = 13
        Caption = 'Emiss'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 102
        Top = 28
        Width = 8
        Height = 13
        Caption = #224
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label31: TLabel
        Left = 215
        Top = 7
        Width = 40
        Height = 13
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btconsultar: TSpeedButton
        Left = 758
        Top = 98
        Width = 81
        Height = 33
        Caption = 'Con&sultar'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
          73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
          0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
          0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
          0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
          0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
          0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
          0333337F777777737F333308888888880333337F333333337F33330888888888
          03333373FFFFFFFF733333700000000073333337777777773333}
        NumGlyphs = 2
        ParentFont = False
        OnClick = btconsultarClick
      end
      object SpeedButton1: TSpeedButton
        Left = 839
        Top = 98
        Width = 81
        Height = 33
        Caption = 'Re&lat'#243'rio'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
          00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
          8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
          8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
          8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
          03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
          03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
          33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
          33333337FFFF7733333333300000033333333337777773333333}
        NumGlyphs = 2
        ParentFont = False
        OnClick = SpeedButton1Click
      end
      object lbclienteI: TLabel
        Left = 296
        Top = 21
        Width = 521
        Height = 13
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label25: TLabel
        Left = 15
        Top = 47
        Width = 67
        Height = 13
        Caption = 'Vencimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label38: TLabel
        Left = 102
        Top = 68
        Width = 8
        Height = 13
        Caption = #224
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label37: TLabel
        Left = 15
        Top = 87
        Width = 64
        Height = 13
        Caption = 'Pagamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label39: TLabel
        Left = 102
        Top = 108
        Width = 8
        Height = 13
        Caption = #224
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbvencidos: TLabel
        Left = 16
        Top = 161
        Width = 95
        Height = 13
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 16
        Top = 145
        Width = 73
        Height = 13
        Caption = 'Vencidos R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbvencer: TLabel
        Left = 120
        Top = 161
        Width = 95
        Height = 13
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label28: TLabel
        Left = 120
        Top = 145
        Width = 73
        Height = 13
        Caption = #192' Vencer R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbaberto: TLabel
        Left = 232
        Top = 161
        Width = 95
        Height = 13
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label32: TLabel
        Left = 232
        Top = 145
        Width = 79
        Height = 13
        Caption = 'Em Aberto R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbliquidados: TLabel
        Left = 344
        Top = 161
        Width = 89
        Height = 13
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label30: TLabel
        Left = 344
        Top = 145
        Width = 82
        Height = 13
        Caption = 'Liquidados R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbtotal: TLabel
        Left = 456
        Top = 161
        Width = 81
        Height = 13
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label35: TLabel
        Left = 456
        Top = 145
        Width = 50
        Height = 13
        Caption = 'Total R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label41: TLabel
        Left = 519
        Top = 47
        Width = 65
        Height = 13
        Caption = 'Documento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label43: TLabel
        Left = 834
        Top = 47
        Width = 88
        Height = 13
        Caption = 'Vlr. Documento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label48: TLabel
        Left = 297
        Top = 34
        Width = 112
        Height = 12
        AutoSize = False
        Caption = 'F10 consultar Cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label49: TLabel
        Left = 658
        Top = 47
        Width = 83
        Height = 13
        Caption = 'Nosso N'#250'mero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object SpeedButton4: TSpeedButton
        Left = 758
        Top = 131
        Width = 81
        Height = 33
        Hint = 'Sair'
        Caption = 'Duplicata'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
          FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
          00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
          F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
          00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
          F033777777777337F73309999990FFF0033377777777FFF77333099999000000
          3333777777777777333333399033333333333337773333333333333903333333
          3333333773333333333333303333333333333337333333333333}
        NumGlyphs = 2
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        OnClick = SpeedButton4Click
      end
      object SpeedButton5: TSpeedButton
        Left = 839
        Top = 131
        Width = 81
        Height = 33
        Hint = 'Sair'
        Caption = 'Carn'#234
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Glyph.Data = {
          66010000424D6601000000000000760000002800000014000000140000000100
          040000000000F000000000000000000000001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          8888888800008888888888888888888800008888777777778888888800008800
          00000000788888880000880BFFFBFFF0777777880000880F444444F000000078
          0000880FFBFFFBF0FBFFF0780000880F444444F04444F0780000880BFFFBFFF0
          FFFBF0780000880F444444F04444F0780000880FFBFFFBF0FBFFF0780000880F
          44F000004440F0780000880BFFF0FFF0FFFBF0780000880F44F0FB00F0000078
          0000880FFBF0F0FFF0FFF0880000880000000F44F0FB08880000888888880FFB
          F0F0888800008888888800000008888800008888888888888888888800008888
          88888888888888880000}
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        OnClick = SpeedButton5Click
      end
      object Label50: TLabel
        Left = 14
        Top = 446
        Width = 13
        Height = 13
        Caption = '   '
        Color = clRed
        ParentColor = False
      end
      object Label51: TLabel
        Left = 32
        Top = 446
        Width = 80
        Height = 13
        Caption = 'T'#237'tulos Vencidos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label52: TLabel
        Left = 126
        Top = 447
        Width = 13
        Height = 13
        Caption = '   '
        Color = clBlue
        ParentColor = False
      end
      object Label53: TLabel
        Left = 144
        Top = 447
        Width = 66
        Height = 13
        Caption = 'T'#237'tulos Pagos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label54: TLabel
        Left = 222
        Top = 447
        Width = 13
        Height = 13
        Caption = '   '
        Color = clBlack
        ParentColor = False
      end
      object Label55: TLabel
        Left = 240
        Top = 447
        Width = 79
        Height = 13
        Caption = 'T'#237'tulos '#224' Vencer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label56: TLabel
        Left = 334
        Top = 447
        Width = 13
        Height = 13
        Caption = '   '
        Color = clMaroon
        ParentColor = False
      end
      object Label57: TLabel
        Left = 352
        Top = 447
        Width = 78
        Height = 13
        Caption = 'Boletos Gerados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label36: TLabel
        Left = 834
        Top = 7
        Width = 60
        Height = 13
        Caption = 'Data Base'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object GroupBox1: TGroupBox
        Left = 215
        Top = 93
        Width = 502
        Height = 41
        Caption = 'Op'#231#245'es'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
        object rb1: TRadioButton
          Left = 8
          Top = 18
          Width = 81
          Height = 17
          Caption = 'V&encidas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object rb2: TRadioButton
          Left = 108
          Top = 18
          Width = 81
          Height = 17
          Caption = #192' Ve&ncer'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object rb5: TRadioButton
          Left = 216
          Top = 18
          Width = 81
          Height = 17
          Caption = 'Em Aberto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object rbgeral: TRadioButton
          Left = 432
          Top = 18
          Width = 53
          Height = 17
          Caption = '&Geral'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          TabStop = True
          OnClick = rbgeralClick
        end
        object rbPagos: TRadioButton
          Left = 328
          Top = 18
          Width = 81
          Height = 17
          Caption = 'Pagos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
      end
      object cbtipoI: TComboBox
        Left = 216
        Top = 64
        Width = 281
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemHeight = 13
        ParentFont = False
        Sorted = True
        TabOrder = 7
        Items.Strings = (
          'CC - CART'#195'O DE CR'#201'DITO'
          'CP - CHEQUE PR'#201'-DATADO'
          'DP - DUPLICATA'
          'EM - EMPENHO'
          'NF - NOTA FISCAL'
          'NP - NOTA PROMISS'#211'RIA'
          'OU - OUTRO')
      end
      object DBGrid1: TDBGrid
        Left = 13
        Top = 184
        Width = 980
        Height = 257
        Hint = 
          'D'#234' um duplo clique para passar para Manuten'#231#227'o ou pressione ENTE' +
          'R'
        DataSource = dm.dsDocReceberGeral
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 11
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnDrawColumnCell = DBGrid1DrawColumnCell
        OnDblClick = DBGrid1DblClick
        OnKeyDown = DBGrid1KeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'nome'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Caption = 'Cliente'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -8
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 345
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'doc'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Documento'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -8
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nf'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Nota Fiscal'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -8
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 85
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'emissao'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Emiss'#227'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -8
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'liquido'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Alignment = taRightJustify
            Title.Caption = 'Valor'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -8
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 85
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'vencto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Vencto'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -8
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 85
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'pgto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Pagamento'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -8
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valorpago'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Alignment = taRightJustify
            Title.Caption = 'Vlr Pago'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -8
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 85
            Visible = True
          end>
      end
      object edclienteI: TEdit
        Left = 215
        Top = 23
        Width = 74
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        OnExit = edclienteIExit
        OnKeyDown = edclienteKeyDown
      end
      object MeDataInicial: TMaskEdit
        Left = 16
        Top = 24
        Width = 77
        Height = 21
        EditMask = '99/99/9999;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentFont = False
        TabOrder = 0
        Text = '  /  /    '
        OnEnter = MeDataInicialEnter
        OnExit = MeDataInicialExit
      end
      object MeDataFinal: TMaskEdit
        Left = 120
        Top = 23
        Width = 78
        Height = 21
        EditMask = '99/99/9999;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentFont = False
        TabOrder = 1
        Text = '  /  /    '
        OnEnter = MeDataFinalEnter
        OnExit = MeDataFinalExit
      end
      object medtinicial: TMaskEdit
        Left = 16
        Top = 64
        Width = 77
        Height = 21
        EditMask = '99/99/9999;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentFont = False
        TabOrder = 2
        Text = '  /  /    '
        OnExit = medtinicialExit
      end
      object medtfinal: TMaskEdit
        Left = 120
        Top = 64
        Width = 80
        Height = 21
        EditMask = '99/99/9999;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentFont = False
        TabOrder = 3
        Text = '  /  /    '
        OnExit = medtfinalExit
      end
      object meinicial: TMaskEdit
        Left = 16
        Top = 104
        Width = 77
        Height = 21
        EditMask = '99/99/9999;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentFont = False
        TabOrder = 4
        Text = '  /  /    '
        OnExit = meinicialExit
      end
      object mefinal: TMaskEdit
        Left = 120
        Top = 103
        Width = 80
        Height = 21
        EditMask = '99/99/9999;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentFont = False
        TabOrder = 5
        Text = '  /  /    '
        OnExit = mefinalExit
      end
      object eddoc: TEdit
        Left = 519
        Top = 64
        Width = 122
        Height = 22
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
      end
      object edvlrdoc: TEditAlinh
        Left = 834
        Top = 64
        Width = 159
        Height = 22
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
        OnExit = edvlrdocExit
        Alinhamento = taRightJustify
      end
      object chquebrar: TCheckBox
        Left = 16
        Top = 128
        Width = 145
        Height = 17
        Caption = 'Quebrar por Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
      end
      object ednossonumero: TEdit
        Left = 658
        Top = 64
        Width = 159
        Height = 22
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 13
      end
      object QuickRep2: TQuickRep
        Left = 306
        Top = 544
        Width = 794
        Height = 1123
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
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
        ReportTitle = 'Faturas'
        SnapToGrid = True
        Units = MM
        Zoom = 100
        object QRGroup2: TQRGroup
          Left = 38
          Top = 38
          Width = 718
          Height = 139
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
            367.770833333333300000
            1899.708333333333000000)
          Expression = 'doc'
          FooterBand = QRBand4
          Master = QuickRep2
          ReprintOnNewPage = False
          object QRShape1: TQRShape
            Left = 24
            Top = 11
            Width = 689
            Height = 126
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              333.375000000000000000
              63.500000000000000000
              29.104166666666670000
              1822.979166666667000000)
            Shape = qrsRectangle
          end
          object QRImage1: TQRImage
            Left = 36
            Top = 24
            Width = 224
            Height = 102
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              269.875000000000000000
              95.250000000000000000
              63.500000000000000000
              592.666666666666700000)
            AutoSize = True
            Center = True
            Picture.Data = {
              0A544A504547496D616765821F0000FFD8FFE000104A46494600010101012C01
              2C0000FFDB0043000302020302020303030304030304050805050404050A0707
              06080C0A0C0C0B0A0B0B0D0E12100D0E110E0B0B1016101113141515150C0F17
              1816141812141514FFDB00430103040405040509050509140D0B0D1414141414
              1414141414141414141414141414141414141414141414141414141414141414
              14141414141414141414141414FFC0001108006600E003012200021101031101
              FFC4001F0000010501010101010100000000000000000102030405060708090A
              0BFFC400B5100002010303020403050504040000017D01020300041105122131
              410613516107227114328191A1082342B1C11552D1F02433627282090A161718
              191A25262728292A3435363738393A434445464748494A535455565758595A63
              6465666768696A737475767778797A838485868788898A92939495969798999A
              A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
              D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
              01010101010101010000000000000102030405060708090A0BFFC400B5110002
              0102040403040705040400010277000102031104052131061241510761711322
              328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
              292A35363738393A434445464748494A535455565758595A636465666768696A
              737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
              A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
              E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FD53
              A28A2800A28A2800A28A2800A28AE1FE2C7C52B0F85FA01BB9C0B8BF9B2B6B68
              0E0C8DEA7D147735955AB0A10752A3B244CA4A117296C8DBF17F8DB45F02696D
              A86B77F1D95B8FBA18E5E43E8AA3927E95F30FC41FDB3F5099E4B7F0A69D1D94
              3D05E5E8DF21F708381F8E6BC5FC73E34D67C7FAE497FAADCC9777321DA918FB
              A833C222F61FE7AD7A67C33FD9175BF17C516A1E24B86D074E7C32DB85DD7320
              FA1E13F1C9F6AF94598E2730A8E186568FE3F37D0F0278BAF8997261D597F5F7
              1E49E25F8CBE33F12BB36A3E25D46556EB124E638FFEF85C0FD2B8B9F529AE1F
              7CB2BCADD773B126BF457C31FB347C3BF0BC69B3C3D06A330EB3EA5FE90CC7D7
              6B7CA3F002BB683C13E1DB58C470E85A6C483F852D2303F957A71CBA4D5EA4AE
              FEF23FB32B54D6A4FF0053F32347F19EB5A2C8AFA7EAF7D62E3A1B7B878FF91A
              F59F05FED5BE3BF0DC91A5D5FA6B96A3AC57E819B1ECE30D9FA935F656B3F087
              C13AFC6C97DE16D2A6DDFC62D111C7D194023F3AF1EF1DFEC5BE1FD4E2927F0B
              5ECDA2DD755B6B863340DED93F32FD727E95954C0E2292E6A120FA8E2A86B4A7
              73B2F861FB4B7867E21BC56770C744D59F816F72E0A487D11F807E8706BD7ABF
              35FC5DE00D7FE1C6B1FD9FAE593DACDD6394731CA3FBC8C383FCC77AF7FF00D9
              F7F686B8B696DBC39E27B9335AB911DADFCA72D11EC8E7BAFA13D3E9D39F0B9C
              38D5FABE3159F7DBEFFF0033AB0D8E9397B3AEACFF00ADCFAA68A4041191C8A5
              AFAA3DA0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
              A28A28021BCBB874FB49EEAE1C450428D248EDD1540C93F957C13F157C7175F1
              07C5979A9CCCCB01252DA12788E21F747D7B9F726BEAFF00DA275C7D1BE19DE4
              71B1592FA44B5C8EBB4E4B7E8A47E35F2EFC2CF08A78CFE2268FA6CC9BED8CBE
              6CEBD8A20DC47E38C7E35F9EF10E2675F154B2FA7D6CDFAB765F77EA78D8E94A
              728D18F53DA3F66FF8136FA4595BF8B35EB712EA53812595BCAB916E87A391FD
              E3D47A0F7E9F43D3510228550028180076A757DBE170B4F094952A7D3F1F33D3
              A54A3460A110A28A2BACD828A28A00E7FC6FE06D27E206833695ABDB2CD0B8CA
              4807CF1376653D88AF853C73E02BEF86DE2BBAD1AF7E7319DF0CE0604D19FBAE
              3FAFA10457E85D7877ED57E108B55F075AEB8918FB569B305670393139C11F83
              6DFD6BE5F3FC146BE1A55E2BDE8EBEABAFF99E6E3682A90E75BAFC8D2FD9BFE2
              249E2FF09B6997D299352D302A6E63CC911FBADF518C1FA0F5AF5FAF8CFF0067
              6D6DF44F897A726E2B0DEAB5AC83D7232BFF008F05AFB32AF87F1B2C660973BB
              CA2F95FE9F81AE12A3A9495F75A0514515F4A768514514005145140051451400
              5145140099A335F1ABF883C40A0937BA8A81C926493FC6AB0F16EB0EC02EAB7A
              49E0013BF3FAD7D22C926FEDA3E45F11535BD37F79F6A5257867ECF3A96A57DA
              C6ACB7D3DD4A8B0295170CC403BBB66B3BE3FEABAAD978C6DD2C6E2F228BEC8A
              48B7760B9DCDE95C0B012789786E657EE7A6F338AC22C5F23B376B7CEC7D099A
              335F12B78C359048FED5BD047506E1FF00C6BA5F87FAE6BB71E36D0927BBD41E
              07BC8830791CA91B875CF6AEE9E4B3845C9CD6879B4F8869D49A82A6F576DCFA
              0FE27FC394F893A4DAD8BDFB582C1379DB963DFBB82318C8F5AE6BE1AFC05B7F
              875E263AC26ACF7CFE4B4223680263711CE771F4FD6BC93E24EB7AEDBF8EB5C4
              B7BAD41205B970A2391C281ED8AE634FF186B0DA85B29D5AF4832A823ED0FEA3
              DEBCBFF5528622AC71D2B73D93BEBDB4EB633AD9DD08576A549DD3B5EFD8FB6A
              8A6A7DD1F4A49A68EDA17965758E2452CCEC70140EA49AE03EC47D43737B6F66
              A1A79E3854F791C28FD6BE74F897FB455CDDDCCDA7F8664FB35A292AD7D8F9E4
              FF00773F747BF5FA579E695E15F16F8F0B5E5AD8DEEA418F3732B1DA4FFBCC79
              AF7E9651370F695E6A0BCFFA47CBD7CF69AA9ECB0D0751F97FC33B9F66DB5EDB
              DE2968278E651DE370C3F4A9EBE2ED53C19E32F03AFDBA6D3EF6C163E7ED3036
              42FD590F15DCFC35FDA42EF4FB986C3C4CE6EECD8ED17B8FDE45EED8FBC3F5FA
              D3AB944F93DA61E6A6BCBFA61473DA7ED152C55374DBEFB7E4AC7D31585E37F0
              BC7E34F0B6A1A2C939B65BB40BE685DC570C0E71C67A56C5B5CC5796F1CF048B
              2C322874910E4303C820D7817ED35A9EAD61ACE8ABA74F790A340E5C5B3B004E
              E1D715E3D1C1AC74FEAD2D14934FEE3D8C7626385C3CAB4A3CCBB7AE86A785FF
              00667B7F0CEBDA76A69AFC93359CE9388CDB05DFB581C677719C57B757C17378
              CB5E85CA49AB6A11B8EAAD70E0FF003AFADFE06DECFA8FC2FD1AE2E6692E2671
              26E92462CC7F78C3A9AB970ED1C928F350B2527E7DBCDB3C9CAF34A38CAB2A34
              A9B8D95F7F4477B499AF9FFF006A1D4F56B0BED0069B3DE42AD1CDBFECAECA0F
              298CEDAF08B8F17788AD71E76A9A9C59E9BE79067F335EAE17279E2A946AC669
              5FA118DCFA182AF2A32A6DDADADFBAB9F7C526715F34F87FE373F81FE0ED8399
              9B50D7AF269841F6872FB143637B64E703B0EF5E33AE7C42D77C4972F3EA1AB5
              DDCBB1CED329083D828E00FA0AAA19256AD2926EC936AFDEDE4462788F0F4210
              6A2DCA493B76BEBAB3EFC0C0F420D2D7CC5FB26DD4971E24D737B33016A87E62
              7FBF5ADF1B3F68A9B45BF9F41F0CC8A2E22252E6FF0001B637754ED91DCFE55C
              D3CB2AFD69E169BBB5D765FA9D90CE68FD49636B2E54EEADBB7E9B1F414F750D
              AA6F9A54853FBD23051FAD436FABD8DDBEC82F2DE67FEEC72AB1FD0D7C2DA7E9
              1E31F8913CB736D6DA8EB6E0FCF3B166507D37371F866A1F107813C59E10845D
              6A7A3DE5942A7FD7EDCAA9FF0078640AF496474EFC92AEB9BB7F4CF1DF1255E5
              F691C3370EF77FE563EFAA2BE2FF00859FB416B5E0ED56DADB54BC9752D11D82
              4B1CEC5DE15FEF231E78F4E95F6641325CC31CB13078E450CAC3A107906BC6C7
              602AE066A35354F667D0E5B99D1CCA0E54F46B74FA0DB8B586EA0921963578E4
              528CA470411822BE24F1A6993F823C657FA764A3DA4F989CF04AFDE46FCB15F7
              0D7CDBFB597858DBC9A5F89208FE56FF0044B82077E4A13FF8F0FC057764B594
              311ECA5B4BF33CCE21C3BA985F6D1DE0EFF27BFE8CF72F01F88E2F16F84B4CD5
              A3DBBAE211E601D9C70C3F306ABFC4AF13C7E0EF05EA9AA12A268E2290E7BC8D
              C2FEA73F8578E7EC99E3517306A9E1B9A4F9E33F6BB7527F84E15C0FC769FC4D
              52FDAD7C6D8BAD33C37049C20FB5DC007B9C8407F0DC7F11531CB9FF0068FD5A
              DA5EFF002DFF00E0172CD63FD95F5CBFBD6B7FDBDB7FC1F43CD7E1E68B2F8DBC
              6FA6E9A773A4D36F99BAFC83E673F9035F6F450470C6A888AAAA00000E82BE75
              FD927C2A5E1D57C4B3A7DE3F63B72476E19C8FFC747E75F47556755FDA627D9A
              DA3A7CFA93C3B87F6584F6D2DE7AFCBA7F9FCCA5ABAAFF00655E9C0FF52FDBFD
              935F0369777FF136B419FF0096C9FF00A10AFBEB59FF009045F7FD707FFD04D7
              E75693780EB365FF005DD3FF004215E8F0FC79A35BE5FA9E4714CF96743E7FFB
              69FA3E9F717E95E1DFB5278EE4D0B41B3D06DA431CBA8E5E72BD7CA5EDF89FE4
              7D6BDC53EE2FD2BE3DFDAE6FA45F893691B13B134F8F67E2EF9AF2327A31AD8C
              8A974BBFB8F773FC44B0F97CE51DDD97DFB94FE04F8162F887E30F2EF017D36C
              93CFB85FEFF3854FC4F5F606BECBB6B68ACE08E182348618D42A46830AA07400
              57E7E781E5F1AC8B772784A3D5D972A2E1B4B573EBB436DFC6BA72FF0019F3FE
              ABC5BFF7CCF5F479965F3C5D6BBAD1496C9B3E5328CD69E070F6542526F7696F
              FF000C7DBF246B2A323A8746182AC3208AF92FF690F8630F82751835AD2A210E
              997CE524857EEC32F5E3D011938ED835C996F8D1FF003CBC5BFF007CCF59FACE
              8BF163C4369F65D4F4DF13DFDB6E0FE55C4333AE4743822B2C065F2C156553DB
              C6DD55F736CCF35866141D27869A97476D99EEBFB29F8F65D6747BEF0EDD485E
              4B0C4D6E49C9F298E0AFD01FFD0ABDF0A86EA01FAD7C8FFB347843C55E19F89B
              14DA9683A969F6535ACB14935C5B3A20E01192463A815F5CD7839C53A74F1727
              4DA69EBA7E27D364156AD5C0C5564D38DD6BD96DF81F0F7ED0D7222F8B9AEA8E
              3063E3FED9AD7D33FB3B3F99F07F416F512FFE8D7AF947F693B809F197C40B9E
              F17FE8B5AFA9FF006696DFF05FC3C7D44DFF00A39EBDBCD236CAE83FF0FF00E9
              2CF9DC9A57CEB12BFC5FFA523D38A86EA01AF997F6CB945BBF853000C8B9FF00
              DA55F4DD7CB1FB6ECDE549E10F7175FF00B4ABC5C955F1F4D7AFE4CFA1E2276C
              B2ABF4FF00D291E65F077C152FC53F195A69334CE9A7DBC6669DD4F29103CAAF
              A12CD8FC49AFB4B41F87BE1BF0D5B241A768B6702A0C6FF28339F72C7249FA9A
              F9CFF6268166D4BC537447CC9141183E809727F90AFABABAF3DC45478A7453B4
              636D3D55CE1E1AC2525828E2251BCA4DEBE49DADF811456B0C19F2E248F3C1DA
              A0579C7893F675F0478925799B4D7B0B87259A5B294A124FFB272BFA57A657C9
              DFB407ED417B6DABDDF86FC2571F658ED98C573A947CBB38EAB19EC074DDD73D
              3DFCECBA8E2ABD6E4C2C9A7D5DEDA799EB66D5F0586A1CF8C8A92E8AD76DF97F
              99F4FE9761A678634DB6D3ED161B2B481024710214003F99F7AB7716F6FA8DAC
              90CC91DC5BCAA55918065607A823BD7E79E81F0EFE217C4A84EA563A6EA3AA44
              E4FF00A5DC4BB55CF7C348C33F855D6B8F8A3F046E63B995356D1E207AC9992D
              9FD8F5435ECCB2352938C7111753B75BFDEDFE07CFC3892518A9CF09254BBF4B
              7DC97E2637C44D3A2F0DF8EB5FD2EDFE582D6F658A31E8A18E3F4C57DE7F0A2E
              DAFBE1A7862773B99B4F8724F7C201FD2BF39FC4FE2AB9F156BF7FAC5E2A2DD5
              ECAD34823185DC793815FA1DF04DB77C25F099F5D3A2FF00D06BB7882128E168
              A9EFD7EE3CEE169C658CC4387C2D69E97D0EDAB96F89DE125F1BF81757D20A83
              2CD096849ED22F287F302BA9A2BE1E139539A9C775A9FA454A71AB09539ECD59
              FCCFCF3F865E3497E1E7C43D335298B471DBCFE55D277F2CFCAE08F6049FA8AA
              9E3DF16CFF00103C77A96A69BA46BDB92B047D4ECCED451F862B7FF69FF077FC
              215F146F648A3D965AA0FB6C381800B1C38FFBE813F88A5FD977C1FF00F09A7C
              53B29A58F7D96943EDB2E471B81C463FEFA20FE06BF56F694151FED2B6BCBFF0
              6DF7E87E23EC712EBFF645F4E7FF00817FBB53ED1F86DE134F04781F48D19400
              F6F00F348FE290FCCE7FEFA26BA6A28AFCA6737524E72DDEA7EDD4E9C6941538
              6C9597C8A5ADF1A35FFF00D7093FF4135F9A7A3DD7FC4EACBFEBE13FF4215EB5
              F18FF682F1CE83F113C4BA2D96B861D3A0B9782387C888E13A6325735E0716A0
              F6F3A4A8DB64460CA7D083915FA46499755C2D29CAA35EFA4D5BE7BE9E67E49C
              459A51C6D68429A6BD9B9277B775B6BE47EACA7DC5FA57CB9FB69785A70DA1F8
              92142D0AA9B29D80FBA725933F5CB8FCAB9AFD9FBE3E78DFC67F15F45D1B57D6
              CDDE9D71E6F99098225DDB62761C8507A815F5A78ABC31A7F8CFC3F7BA36A908
              9ECAEE328EBD08F420F620E083EA2BE5153AB91E360EAD9F5D3B3BAF23EDA552
              8F1165F5234535AD95FBAB3E8DE87C63FB2E7C51B6F0478DE4B0D4A65834ED59
              56132B9C2C7283F213E80E48CFB8AFB8C10C010720F7AFCEFF008C7F01BC43F0
              A2FE698C126A3A096CC3A8C2B900761201F74FE87B54DE02FDAA3C6DE02B18EC
              12EA1D5AC621B63875042E507A0604363D8938AFA0CC32B599DB17839277DFFA
              EFE4CF98CAB38964C9E071F06927A797F9AECD1FA175C77C4CF8ABA17C2AD1D2
              FF0059998B4AE121B587066979E4A824700724F4FCC57C97ABFEDBFE32BDB668
              ACEC34BD3E4231E6AC6F230F7019B1FA1AF2812F8C3E3378A3216FBC45ABCD81
              900B041FC917F215E7E1B87AAA973E324A305BEBFD247A98CE29A4E3ECF03172
              9BDB4D3EEDDFA1FA19E04F8B5E15F88F083A1EAD0DC4FB7735A39D93A7D50F3F
              88C8F7AEC2BC63F679FD9FE0F84BA73EA1A934777E24BA4DB2C89CA5BA75F2D0
              F7F73DFE95C67ED6FF0017FC57F0D35BF0FDBF877543A7C5756F23CAA218DF71
              0C00FBCA7D6BC7FA953C4E33EAD8395D746FC95FA2FD0F7BFB42AE1300B178F8
              5A5A5D47CDD96EFEFD4F12FDA767D9F1B3C44B9E8D17FE8A4AFACBF65F7DFF00
              03FC387DA6FF00D1CF5F9F3E28F17EA7E32D6EE757D62E7ED7A85C60CB3150BB
              B0001C0007402BACF0B7ED0BE3BF0668B6DA3E8FAE9B3D3ADF222845BC4DB72C
              58F2CA4F526BEE71D95D6C4E06961A0D7346D7BDEDA2B763F38CBB37A184CC6B
              62EA45B8CF9AD6B5F5927AEA7E97D7C9BFB764BE5C9E0CF7177FFB46B4BF6ABF
              8C5E2CF871FF000887F606AC74FF00B75ACB25C6218DF7B0F2F07E6538FBC7A5
              7CABE3CF8B7E26F8966CCF88F543A89B3DFE466244D9BB1BBEEA8CE768EBE95E
              264795D6F694F1B75CBAF7BF55DBBF99F47C459C5074AAE5FCAF9FDDD74B6EA5
              DEFB791F4D7EC292F98BE2EFFB76FF00DA95F5857E5A7817E2EF89FE1A7DB3FE
              11CD50E9DF6BDBE762247DDB738FBC0E3A9E95F4EFEC91F1ABC5FF0012FC71AB
              587887576D42D60D3CCF1C6618D30FE620CE5541E84D3CEB29AF2A9571A9AE5D
              3BDF64BB7EA2E1FCEB0F0A3472F717CFAABE96D5B7DEFF0081F4EF88EE25B4F0
              FEA73C19F3E3B691D31FDE0A48AFCC1F0CB41ABF8BF4A83519316D737D125C48
              C71F2B380C49FA135FA9AE824465600AB0C107BD7E74FED15F03756F855E28BB
              BEB5B6926F0CDD4A64B6BB8D49587273E5BE3EE91D067A8FC6B3E1CAD4E32A94
              24ED295ADF2BFF0099A71661EACE34B111578C2F7F9DBF0D2C7E88D959C1A7D9
              C36D6D12416F0A048E38C615540C000525F59DB6A1692DBDDC31DC5B48A5648E
              650CAC3B820F15F05F823F6D8F17F84F45834DBEB3B3D756040915C5C9659768
              E81883F37D719F7AA1E24FDA23E26FC74BA1E1ED2216B78EEBE4363A3C6C1A45
              EFBDC9276FAF207AD732E1EC629BE769457DABFE3DCED7C4F8174D7B38B949FD
              9B7E1DBEEB9C37C558F4EB0F88FE24B6D2044BA6457F2A5B881B72040C7014FA
              57E85FC0D3BBE107840FAE9B0FFE835F9B5F113C177FF0DBC5773E1FD5248DEF
              EDA389E5F28E554BC6AFB73DF1BB19F6AE9F43FDA67E23786F48B4D2F4EF10B5
              BD8DA46B0C310B685B620180325327F1AFA8CCB2FA998E1A94684D3B6B777D55
              B7EA7C665399D3CAB175A7888357BAB2B68EFB6AD6C7E9BD14515F969FB29CCF
              8CBE1B786BE208B5FF008483498753FB2EEF24C85814DD8CF2A475C0FCA8F06F
              C36F0D7C3FFB57FC23FA4C3A61B9DBE718CB12F8CE39627D4D74D456DEDAAF27
              B2E67CBDAFA7DC73FD5E8FB4F6DC8B9BBD95FEFDC28A28AC4E8398D43E18783F
              56BD9AF2F7C2FA3DDDDCCDBE49E7B18DDDCFA925724D57FF00853FE05FFA13B4
              2FFC1745FF00C4D75F456EABD54ACA6FEF6733C3506EEE0BEE4739A4FC37F09E
              837F15F69BE1AD274FBD8B3B2E2DACA38E45C8C1C30191C122BA3A28ACE5394D
              DE4EE6B0A70A6AD0492F2192C493C6D1C88B246C30CAC3208F422BCE7C43FB39
              7C39F134CD35E785AD23998E4BDA17B7C9F5C465457A4D1574EB55A2EF4A4E2F
              C9D88AD87A38856AD0525E693FCCF23D3BF652F861A74C245F0D8B860723ED17
              533AFE45F07F115A5AA7C4BF853F05EED740BED7FC37E10B911ACC2C249A2B66
              2872036DE339C1E7DABD2ABE5C8FC33A3F8A3F6F6F1441ACE9565AB411F826D5
              D23BDB749955BED24640607071DEAEAE26BD6D2ACDCBD5B667470987C3BBD1A6
              A3E892FC8F7EF06FC4BF09FC4486597C31E24D2F5F4870243A75DA4DB33D3705
              271F8D55BAB0F03FC48D52FADAEAD345F11EA1A349F66B98E78A3B892D1D806D
              8C0825491838AF9F7F685F04E87F05FE27FC24F1EF8374CB5F0F6A97BE25B7F0
              FEA30E9B12C115F5A5C860CB2228018A95C838CFE4312EB5FB41DFFC3ED37F68
              2D76C3C2FA43DDF85F57B5B685AD6DDA36B9324718F3EED9492FB37E49183B57
              1C75AC232941DE2ECCE8942335CB25747BD7FC29AF017FD099A0FF00E0BA2FFE
              26A1B7F84DF0EAE649921F0978765781F64AA9610B18DB00E1B0BC1C10707D45
              7987C23F893F11FC51E24D331E21F03FC42F0A6A16F2B5CEA9E1A63049A4CC13
              7461E36998CA8C7E5E0061D4E31CF8DFC23F1CFC42F857F0D7F688F17CB77A06
              A0DA3F887539BC816730F32FD4C5B9B265E21DBC04FBC0FF00156DF58ADFCEFE
              F661F55A1FF3ED7DC8FAEFC7FA6F81A3B1B4BDF1959E8A6D22912D6DE7D5E28C
              A23C8C15514B8E0B1C0C0EBC564D97803E15EA5AE6A5A35AF873C3171AB69AB1
              3DE5947650196DD6404C65D76E5770048CF5C5784F8D7E24FC50D3BE1259F8C3
              C73A4782B50D3358D4B477D334536734ED66B3CCB9F38BB056911590865E8F9E
              C0661B14F88979FB637C66B2F014BA369AB2D868B25F6ADACC125C2C1B6DDFCB
              8E389197733966392D8010F0491531AD562AD1934BD4B961E8CDF34A09BF447D
              1FFF000A63C03FF425E81FF82D87FF0089AD4F0FF807C33E13BA92E745F0FE99
              A4DC489E5BCB656891332E41DA4A81919038F6AF9C35AFDAB3C5FE1DF83BE3BB
              BD474BD26DFE20F82F5BB4D2350863123D8CEB34D1049E31B838578E42402D90
              473E95EB1F1BFE2A6ADF0DF54F86D6DA64369347E24F135B68D766E5198A4322
              39664C30C37CA304E47B50EB5592B4A4DAF5628E1E8C1F346093F447A1693E28
              D235DBFD4ECB4ED46DAF6EF4C94417B0412067B790AEE0AE07DD3820E0D45E28
              D7342D1AD2D62D7EEECAD6DB51B98F4F852F99425C4D2709100DC33360E17BD7
              CE379FB457FC2BA8FE3BEB1FF08DE96D75A06B96BA75945610F9136A7713471A
              C66E1F27736E70376061474AE3FE3DAFC5FB59BE0FFF00C2792F86B52D2EEFC7
              9A34AEDA1DBCD049613894E223BDD84A84161BBE520A8E0E6B2D8E8DF467D1B7
              BFB37FC34BFBA3712F83F4E12139222568D73FEEA903F4AEC3C33E0BD07C1B6A
              6DF42D1ECB4984FDE5B48163DDF52064FE35E273FC4EF897F15FE23F8C341F86
              F2F87F41D0FC2770B6177AB6B96D2DD49797BB03B451A23A0445C80589273D2B
              91F10FED75E2DD17E0C6B9AAB787F4D4F881E1AF13C1E1BD574C0CEF6B3BB48A
              3CC81B2182C8AC0AEECE0F5071CEF3C456A91E59CDB5E6D9CD4F0B4294B9E9D3
              49F74923E8ED67E18F843C47A8CB7FAAF85F48D4AFA5C7997375651C923E0003
              2C41270001F8551FF8529F0FFF00E849F0FF00FE0B61FF00E26BCD6FFC41F1E7
              C35E0FB68EFEDBC1D7FE21D47520875383CD8B4ED1ECBCBDCD24E1DC3CAC1B2A
              A1300F049ED58FF0ABE3CF89DFE3CC7F0DBC47E21F09F8CE1BCD2A5D46DF55F0
              C031BDBC91B80D0CD1F98E0641C820E78FC92AF562ACA6FEF63786A32777057F
              447D2D4514560740514514005145140051451400514514005145140057C2FF00
              1F3E355F7ECF3FB606A7E27B7D0E0D7E3D43C2F6D61F6792F5AD8A1133BEEC88
              DF3D318F7A28A00EAFE1ACFE28FDB07C6FE15F1AF88E0D2F40F05784AECDF59E
              89657125CDC5D5F6DC2492BB222854CE4003AE73D6A5D374DF156977DFB4A5FF
              0085AF34EB6D5FFB6EDEEE11A8C5E6C124496E8658A45DA71B9032E4038C8A28
              A60794FC04F12786FF0068AFDA1BC33AD7807C1363F0CAF3C3324B77AFDCD94F
              83A846536790B1C68A8CA588CB360E3B54FE25D6AF743B3FDA7FE144D670492D
              F1BEF1343A9A5C1DA126308113214E080412413E98EF451403D0F6DFDA47479A
              FBF668F055A46C8248F51D0892C4E3E5962CF6AF36F897F1BF52FD997F68CF8B
              1E339B4A835CF0D5F43A3595C5A477062BA49FECCE6275CA152BC4818120FCCA
              474228A2802EDC7C19D7BE257ECD1F143C5D7579A7DAF89FC77730789238919D
              ADAD60B631BC1016DA198EC8C82DB7AB7B57290FED0DABFED5DE25F859A85AE8
              76BE1DD1FC39E32B217B1CB78D3CD717255C0F2C08C011801F9272491C0C5145
              203B7BAF83379F14BFE1A3B47B5BE82C7529FC4967A8E9D73264A473C10C7226
              F006704A60E338073CD79FEB3FB4D6B7FB4C6AFE02D1A1D0ACF428BC33E35D1E
              4D6656BB694DC4E27DAAB00D83099DCC4B1CFDD1EA68A2981DA7C4DF8B575FB0
              D7C4EF15DFDC6951F89BC31E3CBEFED6B5821B930DCD9DE6D092AB650AB46C40
              208391E86B33C4FF000CF5887E015DF8AB59BAB2935FF1C78DF4CF114F15A973
              05B44D3C7E542AC54162A806490393ED9251401DC7EDF1B340D2FC03E32D6ECA
              3F11781B41D4A53ACF862599A35D40C91ED81F8055BCB60CDB5B83BB1EB5C17C
              0ED5ADBC63FB467C34F1BE85E15D17C1DE10D5348D4B4FD3F4BD3542CFB902BB
              CB36D8D57278000270075E68A2901FFFD9}
          end
          object QRDBText1: TQRDBText
            Left = 272
            Top = 18
            Width = 409
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              719.666666666667000000
              47.625000000000000000
              1082.145833333330000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = dm.parametros
            DataField = 'razaosocial'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText2: TQRDBText
            Left = 272
            Top = 37
            Width = 409
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              719.666666666667000000
              97.895833333333300000
              1082.145833333330000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = dm.parametros
            DataField = 'endereco'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText3: TQRDBText
            Left = 272
            Top = 56
            Width = 161
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              719.666666666667000000
              148.166666666667000000
              425.979166666667000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = dm.parametros
            DataField = 'bairro'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText4: TQRDBText
            Left = 272
            Top = 75
            Width = 161
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              719.666666666667000000
              198.437500000000000000
              425.979166666667000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = dm.parametros
            DataField = 'fone1'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText7: TQRDBText
            Left = 272
            Top = 94
            Width = 161
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              719.666666666667000000
              248.708333333333000000
              425.979166666667000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = dm.parametros
            DataField = 'cnpj'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText8: TQRDBText
            Left = 440
            Top = 94
            Width = 161
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              1164.166666666670000000
              248.708333333333000000
              425.979166666667000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = dm.parametros
            DataField = 'ie'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText6: TQRDBText
            Left = 440
            Top = 75
            Width = 161
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              1164.166666666670000000
              198.437500000000000000
              425.979166666667000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = dm.parametros
            DataField = 'fone2'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText11: TQRDBText
            Left = 440
            Top = 56
            Width = 137
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              1164.166666666670000000
              148.166666666667000000
              362.479166666667000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = dm.parametros
            DataField = 'cidade'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText12: TQRDBText
            Left = 584
            Top = 56
            Width = 25
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              1545.166666666670000000
              148.166666666667000000
              66.145833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = dm.parametros
            DataField = 'uf'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText13: TQRDBText
            Left = 616
            Top = 56
            Width = 65
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              1629.833333333330000000
              148.166666666667000000
              171.979166666667000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = dm.parametros
            DataField = 'cep'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRShape2: TQRShape
            Left = 265
            Top = 12
            Width = 7
            Height = 125
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              330.729166666667000000
              701.145833333333000000
              31.750000000000000000
              18.520833333333300000)
            Shape = qrsVertLine
          end
          object QRLabel1: TQRLabel
            Left = 496
            Top = 114
            Width = 109
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1312.333333333333000000
              301.625000000000000000
              288.395833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Data da Emiss'#227'o :'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText14: TQRDBText
            Left = 616
            Top = 114
            Width = 50
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1629.833333333333000000
              301.625000000000000000
              132.291666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataField = 'emissao'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object QRBand3: TQRBand
          Left = 38
          Top = 177
          Width = 718
          Height = 384
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          BeforePrint = QRBand3BeforePrint
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            1016.000000000000000000
            1899.708333333333000000)
          BandType = rbDetail
          object QRShape11: TQRShape
            Left = 172
            Top = 131
            Width = 541
            Height = 249
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              658.812500000000000000
              455.083333333333000000
              346.604166666667000000
              1431.395833333330000000)
            Shape = qrsRectangle
          end
          object QRShape9: TQRShape
            Left = 172
            Top = 78
            Width = 405
            Height = 51
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              134.937500000000000000
              455.083333333333000000
              206.375000000000000000
              1071.562500000000000000)
            Shape = qrsRectangle
          end
          object QRShape8: TQRShape
            Left = 584
            Top = 3
            Width = 129
            Height = 126
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              333.375000000000000000
              1545.166666666670000000
              7.937500000000000000
              341.312500000000000000)
            Shape = qrsRectangle
          end
          object QRShape3: TQRShape
            Left = 24
            Top = 3
            Width = 553
            Height = 72
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              190.500000000000000000
              63.500000000000000000
              7.937500000000000000
              1463.145833333330000000)
            Shape = qrsRectangle
          end
          object QRLabel2: TQRLabel
            Left = 96
            Top = 8
            Width = 53
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              254.000000000000000000
              21.166666666666670000
              140.229166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'FATURA'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel3: TQRLabel
            Left = 280
            Top = 8
            Width = 75
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              740.833333333333300000
              21.166666666666670000
              198.437500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'DUPLICATA'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel4: TQRLabel
            Left = 464
            Top = 8
            Width = 86
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1227.666666666667000000
              21.166666666666670000
              227.541666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'VENCIMENTO'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel5: TQRLabel
            Left = 58
            Top = 30
            Width = 49
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              153.458333333333300000
              79.375000000000000000
              129.645833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Valor R$'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object QRLabel7: TQRLabel
            Left = 256
            Top = 30
            Width = 49
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              677.333333333333300000
              79.375000000000000000
              129.645833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Valor R$'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object QRDBText15: TQRDBText
            Left = 288
            Top = 52
            Width = 38
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333330000
              762.000000000000000000
              137.583333333333300000
              100.541666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataField = 'liquido'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object QRDBText17: TQRDBText
            Left = 464
            Top = 42
            Width = 44
            Height = 18
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              47.625000000000000000
              1227.666666666667000000
              111.125000000000000000
              116.416666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataField = 'vencto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 11
          end
          object QRShape4: TQRShape
            Left = 24
            Top = 26
            Width = 553
            Height = 1
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              2.645833333333330000
              63.500000000000000000
              68.791666666666700000
              1463.145833333330000000)
            Shape = qrsHorLine
          end
          object qrvalor: TQRLabel
            Left = 74
            Top = 54
            Width = 38
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              195.791666666666700000
              142.875000000000000000
              100.541666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'qrvalor'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object QRShape6: TQRShape
            Left = 137
            Top = 27
            Width = 104
            Height = 47
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              124.354166666667000000
              362.479166666667000000
              71.437500000000000000
              275.166666666667000000)
            Shape = qrsRightAndLeft
          end
          object QRLabel6: TQRLabel
            Left = 154
            Top = 30
            Width = 46
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              407.458333333333300000
              79.375000000000000000
              121.708333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'N'#250'mero'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object QRShape7: TQRShape
            Left = 337
            Top = 27
            Width = 104
            Height = 47
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              124.354166666667000000
              891.645833333333000000
              71.437500000000000000
              275.166666666667000000)
            Shape = qrsRightAndLeft
          end
          object QRLabel8: TQRLabel
            Left = 352
            Top = 30
            Width = 78
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              931.333333333333300000
              79.375000000000000000
              206.375000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'No. de Ordem'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object QRDBText16: TQRDBText
            Left = 352
            Top = 52
            Width = 21
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333330000
              931.333333333333300000
              137.583333333333300000
              55.562500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataField = 'doc'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object QRShape5: TQRShape
            Left = 24
            Top = 49
            Width = 417
            Height = 1
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              2.645833333333330000
              63.500000000000000000
              129.645833333333000000
              1103.312500000000000000)
            Shape = qrsHorLine
          end
          object QRDBText5: TQRDBText
            Left = 154
            Top = 52
            Width = 21
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333330000
              407.458333333333300000
              137.583333333333300000
              55.562500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataField = 'doc'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object QRLabel10: TQRLabel
            Left = 587
            Top = 5
            Width = 121
            Height = 33
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              87.312500000000000000
              1553.104166666670000000
              13.229166666666700000
              320.145833333333000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Para uso da Institui'#231#227'o Financeira'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRLabel11: TQRLabel
            Left = 178
            Top = 86
            Width = 44
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              470.958333333333300000
              227.541666666666700000
              116.416666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Desc. de'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRLabel12: TQRLabel
            Left = 298
            Top = 86
            Width = 36
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              788.458333333333300000
              227.541666666666700000
              95.250000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = '% s/R$'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRLabel13: TQRLabel
            Left = 434
            Top = 86
            Width = 52
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1148.291666666667000000
              227.541666666666700000
              137.583333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'P/Pgto. at'#233
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRLabel15: TQRLabel
            Left = 178
            Top = 107
            Width = 101
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              470.958333333333300000
              283.104166666666700000
              267.229166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Condi'#231#245'es Especiais'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRLabel16: TQRLabel
            Left = 178
            Top = 134
            Width = 86
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              470.958333333333300000
              354.541666666666700000
              227.541666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Nome do Sacado:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRLabel17: TQRLabel
            Left = 178
            Top = 152
            Width = 50
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              470.958333333333300000
              402.166666666666700000
              132.291666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Endere'#231'o:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRLabel18: TQRLabel
            Left = 178
            Top = 170
            Width = 48
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              470.958333333333300000
              449.791666666666700000
              127.000000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Mun'#237'cipio:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRLabel19: TQRLabel
            Left = 462
            Top = 170
            Width = 37
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1222.375000000000000000
              449.791666666666700000
              97.895833333333330000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Estado:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRLabel20: TQRLabel
            Left = 178
            Top = 188
            Width = 103
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              470.958333333333300000
              497.416666666666700000
              272.520833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Pra'#231'a de Pagamento:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRLabel21: TQRLabel
            Left = 464
            Top = 188
            Width = 23
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1227.666666666667000000
              497.416666666666700000
              60.854166666666670000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'CEP:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object qrcnpj: TQRLabel
            Left = 178
            Top = 206
            Width = 88
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              470.958333333333300000
              545.041666666666700000
              232.833333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'C.N.P.J. (MF)/CPF:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object qrie: TQRLabel
            Left = 454
            Top = 206
            Width = 89
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1201.208333333333000000
              545.041666666666700000
              235.479166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Insc. Estadual/RG:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRDBText9: TQRDBText
            Left = 274
            Top = 134
            Width = 295
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333300000
              724.958333333333000000
              354.541666666667000000
              780.520833333333000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataField = 'nome'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRDBText10: TQRDBText
            Left = 234
            Top = 152
            Width = 295
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333300000
              619.125000000000000000
              402.166666666667000000
              780.520833333333000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = dm.clientes
            DataField = 'endereco'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRDBText18: TQRDBText
            Left = 235
            Top = 170
            Width = 223
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333300000
              621.770833333333000000
              449.791666666667000000
              590.020833333333000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = dm.clientes
            DataField = 'cidade'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRDBText19: TQRDBText
            Left = 502
            Top = 170
            Width = 47
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333300000
              1328.208333333330000000
              449.791666666667000000
              124.354166666667000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = dm.clientes
            DataField = 'estado'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRDBText20: TQRDBText
            Left = 490
            Top = 188
            Width = 76
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333300000
              1296.458333333330000000
              497.416666666667000000
              201.083333333333000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = dm.clientes
            DataField = 'cep'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Mask = '99.999-999;0;_'
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object qrcnpjI: TQRDBText
            Left = 274
            Top = 206
            Width = 175
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333300000
              724.958333333333000000
              545.041666666667000000
              463.020833333333000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = dm.clientes
            DataField = 'cnpj'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object qrieI: TQRDBText
            Left = 546
            Top = 206
            Width = 119
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333300000
              1444.625000000000000000
              545.041666666667000000
              314.854166666667000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = dm.clientes
            DataField = 'ie'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object qrrodape: TQRMemo
            Left = 178
            Top = 278
            Width = 527
            Height = 43
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              113.770833333333000000
              470.958333333333000000
              735.541666666667000000
              1394.354166666670000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            Lines.Strings = (
              
                'Reconhe'#231'o(emos) a exatid'#227'o desta DUPLICATA DE PRESTA'#199#195'O DE SERVI' +
                #199'OS, na import'#226'ncia acima que pagarei(emos) '#224' REVEST - COMERCIO ' +
                'E SERVI'#199'OS LTDA., ou '#224' sua Ordem na pra'#231'a e vencimento acima ind' +
                'icados.')
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRLabel23: TQRLabel
            Left = 178
            Top = 342
            Width = 153
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              470.958333333333300000
              904.875000000000000000
              404.812500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Em: _____ / _____ / _________'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRLabel24: TQRLabel
            Left = 178
            Top = 360
            Width = 153
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              470.958333333333000000
              952.500000000000000000
              404.812500000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Data do Aceite'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRLabel25: TQRLabel
            Left = 528
            Top = 360
            Width = 179
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              1397.000000000000000000
              952.500000000000000000
              473.604166666667000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Assinatura do Sacado'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRLabel26: TQRLabel
            Left = 528
            Top = 342
            Width = 179
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              1397.000000000000000000
              904.875000000000000000
              473.604166666667000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '___________________________________'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRShape10: TQRShape
            Left = 24
            Top = 78
            Width = 145
            Height = 302
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              799.041666666667000000
              63.500000000000000000
              206.375000000000000000
              383.645833333333000000)
            Shape = qrsRectangle
          end
          object QRShape12: TQRShape
            Left = 176
            Top = 226
            Width = 533
            Height = 51
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              134.937500000000000000
              465.666666666667000000
              597.958333333333000000
              1410.229166666670000000)
            Shape = qrsRectangle
          end
          object QRLabel22: TQRLabel
            Left = 178
            Top = 230
            Width = 47
            Height = 43
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              113.770833333333000000
              470.958333333333000000
              608.541666666667000000
              124.354166666667000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Valor por Extenso'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRMemo1: TQRMemo
            Left = 240
            Top = 230
            Width = 465
            Height = 43
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              113.770833333333000000
              635.000000000000000000
              608.541666666667000000
              1230.312500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            Lines.Strings = (
              'cem reais')
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRShape13: TQRShape
            Left = 232
            Top = 226
            Width = 1
            Height = 51
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              134.937500000000000000
              613.833333333333000000
              597.958333333333000000
              2.645833333333330000)
            Shape = qrsVertLine
          end
          object QRShape14: TQRShape
            Left = 616
            Top = 131
            Width = 97
            Height = 41
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              108.479166666667000000
              1629.833333333330000000
              346.604166666667000000
              256.645833333333000000)
            Shape = qrsRectangle
          end
          object QRLabel27: TQRLabel
            Left = 626
            Top = 134
            Width = 84
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1656.291666666667000000
              354.541666666666700000
              222.250000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Ref. N. Fiscal No.'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRShape15: TQRShape
            Left = 616
            Top = 152
            Width = 97
            Height = 1
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              2.645833333333330000
              1629.833333333330000000
              402.166666666667000000
              256.645833333333000000)
            Shape = qrsHorLine
          end
          object QRLabel48: TQRLabel
            Left = 26
            Top = 80
            Width = 142
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              68.791666666666700000
              211.666666666667000000
              375.708333333333000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Assinatura do Emitente'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRLabel49: TQRLabel
            Left = 601
            Top = 188
            Width = 28
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1590.145833333333000000
              497.416666666666700000
              74.083333333333330000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Fone:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRDBText31: TQRDBText
            Left = 630
            Top = 188
            Width = 77
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333300000
              1666.875000000000000000
              497.416666666667000000
              203.729166666667000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = dm.clientes
            DataField = 'fone1'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRDBText32: TQRDBText
            Left = 533
            Top = 151
            Width = 47
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333300000
              1410.229166666670000000
              399.520833333333000000
              124.354166666667000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = dm.clientes
            DataField = 'bairro'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRDBText33: TQRDBText
            Left = 289
            Top = 188
            Width = 168
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333300000
              764.645833333333000000
              497.416666666667000000
              444.500000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = dm.clientes
            DataField = 'cidade'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
        end
        object QRBand4: TQRBand
          Left = 38
          Top = 561
          Width = 718
          Height = 35
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          Enabled = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            92.604166666666670000
            1899.708333333333000000)
          BandType = rbGroupFooter
          object QRLabel14: TQRLabel
            Left = 2
            Top = 8
            Width = 47
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              5.291666666666667000
              21.166666666666670000
              124.354166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Sub-Total'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRExpr6: TQRExpr
            Left = 488
            Top = 8
            Width = 73
            Height = 15
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              39.687500000000000000
              1291.166666666670000000
              21.166666666666700000
              193.145833333333000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            ResetAfterPrint = True
            Transparent = False
            WordWrap = True
            Expression = 'SUM(credito)'
            Mask = '#,##0.00'
            FontSize = 8
          end
          object QRExpr7: TQRExpr
            Left = 563
            Top = 8
            Width = 79
            Height = 15
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              39.687500000000000000
              1489.604166666670000000
              21.166666666666700000
              209.020833333333000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            ResetAfterPrint = True
            Transparent = False
            WordWrap = True
            Expression = 'SUM(debito)'
            Mask = '#,##0.00'
            FontSize = 8
          end
        end
        object QRBand7: TQRBand
          Left = 38
          Top = 596
          Width = 718
          Height = 32
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          Enabled = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            84.666666666666670000
            1899.708333333333000000)
          BandType = rbSummary
          object QRLabel38: TQRLabel
            Left = 2
            Top = 8
            Width = 53
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              5.291666666666667000
              21.166666666666670000
              140.229166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Total Geral'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRExpr8: TQRExpr
            Left = 480
            Top = 8
            Width = 81
            Height = 15
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              39.687500000000000000
              1270.000000000000000000
              21.166666666666700000
              214.312500000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            ResetAfterPrint = True
            Transparent = False
            WordWrap = True
            Expression = 'SUM(credito)'
            Mask = '#,##0.00'
            FontSize = 8
          end
          object QRExpr9: TQRExpr
            Left = 564
            Top = 8
            Width = 78
            Height = 15
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              39.687500000000000000
              1492.250000000000000000
              21.166666666666700000
              206.375000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            ResetAfterPrint = True
            Transparent = False
            WordWrap = True
            Expression = 'SUM(debito)'
            Mask = '#,##0.00'
            FontSize = 8
          end
        end
      end
      object BitBtn1: TBitBtn
        Left = 920
        Top = 98
        Width = 73
        Height = 33
        Hint = 'Cancelar'
        Caption = 'Sair'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 15
        OnClick = BitBtn1Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
          03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
          0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
          0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
          0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
          0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
          0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
          0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
          0333337F777FFFFF7F3333000000000003333377777777777333}
        NumGlyphs = 2
      end
      object chExcel: TCheckBox
        Left = 656
        Top = 136
        Width = 57
        Height = 17
        Caption = 'Excel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 16
      end
      object medatabase: TMaskEdit
        Left = 834
        Top = 24
        Width = 77
        Height = 21
        EditMask = '99/99/9999;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentFont = False
        TabOrder = 17
        Text = '  /  /    '
        OnEnter = medatabaseEnter
        OnExit = medatabaseExit
      end
    end
    object TabSheet3: TTabSheet
      Caption = '&Gr'#225'fico'
      ImageIndex = 2
      object Label8: TLabel
        Left = 102
        Top = 28
        Width = 8
        Height = 13
        Caption = #224
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label40: TLabel
        Left = 15
        Top = 7
        Width = 67
        Height = 13
        Caption = 'Vencimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object SpeedButton3: TSpeedButton
        Left = 694
        Top = 15
        Width = 81
        Height = 33
        Caption = 'G&erar'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
          73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
          0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
          0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
          0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
          0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
          0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
          0333337F777777737F333308888888880333337F333333337F33330888888888
          03333373FFFFFFFF733333700000000073333337777777773333}
        NumGlyphs = 2
        ParentFont = False
        OnClick = SpeedButton3Click
      end
      object lbclienteII: TLabel
        Left = 272
        Top = 26
        Width = 409
        Height = 13
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label42: TLabel
        Left = 215
        Top = 7
        Width = 40
        Height = 13
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Chart1: TChart
        Left = 0
        Top = 72
        Width = 786
        Height = 351
        BackWall.Brush.Color = clWhite
        Title.Text.Strings = (
          'Gr'#225'fico - Documentos '#224' Receber')
        Chart3DPercent = 100
        View3D = False
        View3DOptions.Elevation = 315
        View3DOptions.Orthogonal = False
        View3DOptions.Perspective = 0
        View3DOptions.Rotation = 360
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        object Series1: TBarSeries
          ColorEachPoint = True
          Marks.ArrowLength = 8
          Marks.BackColor = clBlue
          Marks.Font.Charset = DEFAULT_CHARSET
          Marks.Font.Color = clWhite
          Marks.Font.Height = -11
          Marks.Font.Name = 'Arial'
          Marks.Font.Style = [fsBold]
          Marks.Style = smsPercent
          Marks.Visible = True
          SeriesColor = clRed
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
      end
      object mevenctoinicial: TMaskEdit
        Left = 16
        Top = 24
        Width = 76
        Height = 21
        EditMask = '99/99/9999;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentFont = False
        TabOrder = 1
        Text = '  /  /    '
        OnExit = mevenctoinicialExit
      end
      object mevenctofinal: TMaskEdit
        Left = 120
        Top = 24
        Width = 80
        Height = 21
        EditMask = '99/99/9999;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentFont = False
        TabOrder = 2
        Text = '  /  /    '
        OnExit = mevenctofinalExit
      end
      object edclienteII: TEdit
        Left = 215
        Top = 23
        Width = 50
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnExit = edclienteIIExit
        OnKeyDown = edclienteKeyDown
      end
    end
  end
  object qratualizar: TZQuery
    Connection = dm.ZConnection1
    Params = <>
    Left = 384
  end
end
