object FrmCadProdutos: TFrmCadProdutos
  Left = 287
  Top = 62
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Produtos'
  ClientHeight = 461
  ClientWidth = 791
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 791
    Height = 461
    ActivePage = TabSheet2
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Consulta'
      object Label18: TLabel
        Left = 392
        Top = 8
        Width = 56
        Height = 13
        Caption = 'Pesquisar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object GroupBox1: TGroupBox
        Left = 16
        Top = 2
        Width = 369
        Height = 43
        Caption = 'Op'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object rbcodigo: TRadioButton
          Left = 8
          Top = 19
          Width = 65
          Height = 17
          Caption = 'C'#243'digo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = rbcodigoClick
        end
        object rbnome: TRadioButton
          Left = 96
          Top = 19
          Width = 65
          Height = 17
          Caption = 'Nome'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          TabStop = True
          OnClick = rbcodigoClick
        end
        object rbgeral: TRadioButton
          Left = 304
          Top = 19
          Width = 57
          Height = 17
          Caption = 'Geral'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = rbgeralClick
        end
        object rbcodbarra: TRadioButton
          Left = 173
          Top = 19
          Width = 113
          Height = 17
          Caption = 'C'#243'digo de Barra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnClick = rbcodigoClick
        end
      end
      object edpesquisa: TEdit
        Left = 392
        Top = 24
        Width = 305
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 0
        OnExit = edpesquisaExit
      end
      object BitBtn1: TBitBtn
        Left = 702
        Top = 24
        Width = 80
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
        TabOrder = 3
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
      object DBGrid1: TDBGrid
        Left = 16
        Top = 52
        Width = 763
        Height = 377
        DataSource = dm.dsprodutos
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        PopupMenu = PopupMenu1
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnDblClick = DBGrid1DblClick
        OnKeyDown = DBGrid1KeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'codigo'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            Title.Caption = 'C'#243'digo'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -12
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            Title.Caption = 'Nome Produto'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -12
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 365
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'atacado'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taRightJustify
            Title.Caption = 'Vlr. Atacado'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -12
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'venda'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taRightJustify
            Title.Caption = 'Vlr. Varejo'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -12
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 90
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'estoque'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Estoque'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -12
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'comissao'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taRightJustify
            Title.Caption = 'Com. %'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -12
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 52
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Produto'
      ImageIndex = 1
      object Panel3: TPanel
        Left = -1
        Top = 0
        Width = 782
        Height = 33
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = clNavy
        TabOrder = 0
        object lbcodigo: TLabel
          Left = 11
          Top = 8
          Width = 64
          Height = 19
          AutoSize = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object BitBtn6: TBitBtn
          Left = 98
          Top = 5
          Width = 80
          Height = 24
          Hint = 'Conectar ao Servidor de Banco de Dados'
          Caption = 'Conectar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
          OnClick = BitBtn6Click
          Glyph.Data = {
            42010000424D4201000000000000760000002800000011000000110000000100
            040000000000CC00000000000000000000001000000010000000000000000000
            BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
            777770000000777777770000000770000000777777770FFFFF07700000007777
            77770FCCCF0770000000777777770FFFFF0770000000777000000FCCCF077000
            0000777077770FFFFF077000000070007CCC0FCCCF0770000000706077770FFF
            FF077000000070607CCC00000007700000007060777770777777700000007060
            7CCC707777747000000070607777707777444000000070600000007777747000
            0000706666607774777470000000700000007777444770000000777777777777
            777770000000}
        end
        object btanterior: TBitBtn
          Left = 177
          Top = 5
          Width = 33
          Height = 24
          Hint = 'Registro Anterior'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
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
          Left = 209
          Top = 5
          Width = 33
          Height = 24
          Hint = 'Pr'#243'ximo Registro'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
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
        object btnovo: TBitBtn
          Left = 241
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
          Left = 330
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
          Left = 419
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
          Left = 508
          Top = 5
          Width = 90
          Height = 24
          Hint = 'Apagar Registro'
          Caption = 'Excluir'
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
        object btrelatorio: TBitBtn
          Left = 597
          Top = 5
          Width = 90
          Height = 24
          Hint = 'Relat'#243'rio'
          Caption = 'Relat'#243'rio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
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
        object btcancelar: TBitBtn
          Left = 686
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
          TabOrder = 5
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
      end
      object P_dados: TPanel
        Left = 0
        Top = 32
        Width = 786
        Height = 489
        BevelOuter = bvNone
        Enabled = False
        TabOrder = 1
        object Label22: TLabel
          Left = 537
          Top = 38
          Width = 61
          Height = 16
          Caption = 'Refer'#234'ncia'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 84
          Top = 9
          Width = 45
          Height = 16
          Caption = 'Produto'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 94
          Top = 38
          Width = 35
          Height = 16
          Caption = 'Grupo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label23: TLabel
          Left = 31
          Top = 103
          Width = 98
          Height = 16
          Caption = 'Qtd. Embalagem'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label24: TLabel
          Left = 39
          Top = 130
          Width = 90
          Height = 16
          Caption = 'Unidade Interna'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label25: TLabel
          Left = 33
          Top = 160
          Width = 96
          Height = 16
          Caption = 'Unidade Externa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label26: TLabel
          Left = 35
          Top = 310
          Width = 94
          Height = 16
          Caption = 'Estoque M'#237'nimo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label27: TLabel
          Left = 31
          Top = 340
          Width = 98
          Height = 16
          Caption = 'Estoque M'#225'ximo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label29: TLabel
          Left = 4
          Top = 369
          Width = 125
          Height = 16
          Caption = 'Prazo Ressuprimento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label31: TLabel
          Left = 64
          Top = 69
          Width = 65
          Height = 16
          Caption = 'Fornecedor'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label53: TLabel
          Left = 570
          Top = 9
          Width = 28
          Height = 16
          Caption = 'Ativo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 31
          Top = 193
          Width = 98
          Height = 16
          Caption = 'Valor Compra R$'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label60: TLabel
          Left = 241
          Top = 82
          Width = 238
          Height = 16
          AutoSize = False
          Caption = 'F10 consultar Fornecedor'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object lbfornecedor: TLabel
          Left = 241
          Top = 68
          Width = 480
          Height = 16
          AutoSize = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 673
          Top = 9
          Width = 48
          Height = 16
          Caption = 'Estoque'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 61
          Top = 221
          Width = 68
          Height = 16
          Caption = 'Atacado R$'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGreen
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 73
          Top = 248
          Width = 56
          Height = 16
          Caption = 'Varejo R$'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 569
          Top = 69
          Width = 29
          Height = 16
          Caption = 'NCM'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 505
          Top = 103
          Width = 93
          Height = 16
          Caption = 'C'#243'digo de Barra'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 55
          Top = 278
          Width = 74
          Height = 16
          Caption = 'Comiss'#227'o %'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Edreferencia: TEdit
          Left = 608
          Top = 38
          Width = 169
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnEnter = EdreferenciaEnter
          OnExit = EdreferenciaExit
        end
        object ednome: TEdit
          Left = 139
          Top = 8
          Width = 422
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnEnter = ednomeEnter
          OnExit = ednomeExit
        end
        object cbgrupo: TComboBox
          Left = 139
          Top = 38
          Width = 334
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ItemHeight = 16
          ParentFont = False
          Sorted = True
          TabOrder = 3
          OnEnter = cbgrupoEnter
          OnExit = cbgrupoExit
        end
        object Edqtd: TEdit
          Left = 139
          Top = 99
          Width = 90
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          OnEnter = EdqtdEnter
          OnExit = EdqtdExit
        end
        object edundint: TEdit
          Left = 139
          Top = 129
          Width = 90
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
          OnEnter = edundintEnter
          OnExit = edundintExit
        end
        object edundext: TEdit
          Left = 139
          Top = 159
          Width = 90
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
          OnEnter = edundextEnter
          OnExit = edundextExit
        end
        object edestmin: TEdit
          Left = 139
          Top = 309
          Width = 90
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 15
          OnEnter = edestminEnter
          OnExit = edestminExit
        end
        object edestmax: TEdit
          Left = 139
          Top = 339
          Width = 90
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 16
          OnEnter = edestmaxEnter
          OnExit = edestmaxExit
        end
        object edprazores: TEdit
          Left = 139
          Top = 368
          Width = 90
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 17
          OnEnter = edprazoresEnter
          OnExit = edprazoresExit
        end
        object edfornecedor: TEdit
          Left = 139
          Top = 68
          Width = 90
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnEnter = edfornecedorEnter
          OnExit = edfornecedorExit
          OnKeyDown = edfornecedorKeyDown
        end
        object cbativo: TComboBox
          Left = 606
          Top = 8
          Width = 59
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 1
          Text = 'SIM'
          OnEnter = cbativoEnter
          OnExit = cbativoExit
          Items.Strings = (
            'N'#195'O'
            'SIM')
        end
        object edcompra: TEditAlinh
          Left = 139
          Top = 189
          Width = 90
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
          OnEnter = edcompraEnter
          OnExit = edcompraExit
          Alinhamento = taRightJustify
        end
        object edestoque: TEditAlinh
          Left = 728
          Top = 8
          Width = 49
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnEnter = edestoqueEnter
          OnExit = edestoqueExit
          Alinhamento = taRightJustify
        end
        object edatacado: TEditAlinh
          Left = 139
          Top = 217
          Width = 90
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
          OnEnter = edatacadoEnter
          OnExit = edatacadoExit
          Alinhamento = taRightJustify
        end
        object edvenda: TEditAlinh
          Left = 139
          Top = 247
          Width = 90
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 13
          OnEnter = edvendaEnter
          OnExit = edvendaExit
          Alinhamento = taRightJustify
        end
        object edncm: TEdit
          Left = 607
          Top = 68
          Width = 170
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnEnter = EdreferenciaEnter
          OnExit = EdreferenciaExit
        end
        object edcodbarra: TEdit
          Left = 607
          Top = 99
          Width = 170
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          MaxLength = 15
          ParentFont = False
          TabOrder = 8
          OnEnter = EdreferenciaEnter
          OnExit = EdreferenciaExit
        end
        object edcomissao: TEdit
          Left = 139
          Top = 277
          Width = 90
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 14
          OnEnter = edcomissaoEnter
          OnExit = edcomissaoExit
        end
      end
    end
  end
  object qratualizar: TZQuery
    Connection = dm.ZConnection1
    Params = <>
    Left = 592
    Top = 232
  end
  object PopupMenu1: TPopupMenu
    Left = 76
    Top = 128
    object AlteraroEstoque1: TMenuItem
      Caption = 'Alterar o Estoque'
      OnClick = AlteraroEstoque1Click
    end
    object AlterarComisso1: TMenuItem
      Caption = 'Alterar Comiss'#227'o %'
      OnClick = AlterarComisso1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object AlterarCdigodoProduto1: TMenuItem
      Caption = 'Alterar C'#243'digo do Produto'
      OnClick = AlterarCdigodoProduto1Click
    end
  end
end
