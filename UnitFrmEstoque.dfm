object FrmEstoque: TFrmEstoque
  Left = 183
  Top = 69
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Movimento de Estoque'
  ClientHeight = 586
  ClientWidth = 1016
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
  object lbqtd: TLabel
    Left = 741
    Top = 515
    Width = 35
    Height = 16
    AutoSize = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 693
    Top = 515
    Width = 35
    Height = 16
    Caption = 'Total:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 531
    Width = 993
    Height = 49
    Caption = 'Op'#231#227'o de Consulta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label4: TLabel
      Left = 8
      Top = 27
      Width = 65
      Height = 13
      Caption = 'Documento'
    end
    object Label5: TLabel
      Left = 249
      Top = 27
      Width = 32
      Height = 13
      Caption = 'Data '
    end
    object Label6: TLabel
      Left = 372
      Top = 27
      Width = 45
      Height = 13
      Caption = 'Produto'
    end
    object eddoc: TEdit
      Left = 76
      Top = 19
      Width = 165
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnExit = eddocExit
    end
    object medataI: TMaskEdit
      Left = 284
      Top = 19
      Width = 81
      Height = 21
      EditMask = '99/99/9999;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 1
      Text = '  /  /    '
      OnEnter = medataIEnter
      OnExit = medataIExit
    end
    object edprodutoI: TEdit
      Left = 424
      Top = 19
      Width = 57
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnExit = edprodutoIExit
      OnKeyDown = edprodutoKeyDown
    end
    object chSintetico: TCheckBox
      Left = 800
      Top = 21
      Width = 97
      Height = 17
      Caption = 'Sint'#233'tico'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1016
    Height = 33
    Align = alTop
    BevelInner = bvSpace
    BevelOuter = bvLowered
    Color = clNavy
    TabOrder = 3
    object BitBtn4: TBitBtn
      Left = 270
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
      TabOrder = 10
      OnClick = BitBtn4Click
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
    object btprimeiro: TBitBtn
      Left = 349
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
      Left = 381
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
      Left = 413
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
      Left = 445
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
      Left = 477
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
      Left = 566
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
    object btexcluirItem: TBitBtn
      Left = 655
      Top = 5
      Width = 90
      Height = 24
      Hint = 'Apagar Registro'
      Caption = 'Excluir Item'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = btexcluirItemClick
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
    object btexcluir: TBitBtn
      Left = 744
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
      TabOrder = 2
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
      Left = 833
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
      TabOrder = 3
      OnClick = btrelatorioClick
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
      Left = 922
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
  end
  object P_dado: TPanel
    Left = 0
    Top = 32
    Width = 1009
    Height = 137
    BevelOuter = bvNone
    Enabled = False
    TabOrder = 2
    object Label13: TLabel
      Left = 41
      Top = 13
      Width = 90
      Height = 16
      Caption = 'Tipo Movimento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label26: TLabel
      Left = 780
      Top = 13
      Width = 66
      Height = 16
      Caption = 'Documento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label27: TLabel
      Left = 656
      Top = 13
      Width = 27
      Height = 16
      Caption = 'Data'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label29: TLabel
      Left = 14
      Top = 44
      Width = 117
      Height = 16
      Caption = 'Cliente / Fornecedor'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object lbcliente: TLabel
      Left = 209
      Top = 44
      Width = 518
      Height = 16
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 209
      Top = 58
      Width = 238
      Height = 16
      AutoSize = False
      Caption = 'F10 consultar Cliente/Fornecedor'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 86
      Top = 74
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
    object lbproduto: TLabel
      Left = 209
      Top = 74
      Width = 600
      Height = 16
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 209
      Top = 88
      Width = 186
      Height = 16
      AutoSize = False
      Caption = 'F11 consultar produto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 81
      Top = 160
      Width = 49
      Height = 16
      Caption = 'Validade'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label7: TLabel
      Left = 222
      Top = 160
      Width = 66
      Height = 16
      Caption = 'N'#186' Controle'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label14: TLabel
      Left = 108
      Top = 109
      Width = 23
      Height = 16
      Caption = 'Und'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 209
      Top = 109
      Width = 21
      Height = 16
      Caption = 'Qtd'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 317
      Top = 109
      Width = 44
      Height = 16
      Caption = 'Unit'#225'rio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label25: TLabel
      Left = 453
      Top = 109
      Width = 27
      Height = 16
      Caption = 'Total'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object cbtipo: TComboBox
      Left = 137
      Top = 12
      Width = 288
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
      OnEnter = cbtipoEnter
      OnExit = cbtipoExit
      Items.Strings = (
        'SV - SA'#205'DA POR VENDA'
        'SC - SA'#205'DA POR CONSUMO'
        'SE - SA'#205'DA POR EMPR'#201'STIMO'
        'SD - SA'#205'DA POR DEVOLU'#199#195'O'
        'SA - SA'#205'DA POR ACERTO'
        'SB - SA'#205'DA POR BONIFICA'#199#195'O'
        'SN - SA'#205'DA POR CONSIGNA'#199#195'O'
        'SR - SA'#205'DA POR AVARIA'
        'SP - SA'#205'DA POR PATROCINIO'
        'SG - SA'#205'DA POR DEGUSTA'#199#195'O'
        'SF - SA'#205'DA POR FILIAL'
        'EA - ENTRADA POR ACERTO'
        'EC - ENTRADA POR COMPRA'
        'EE - ENTRADA POR EMPR'#201'STIMO'
        'EF - ENTRADA POR FILIAL'
        'ED - ENTRADA POR DEVOLU'#199#195'O'
        'ER - ENTRADA POR AVARIA'
        'EN - ENTRADA POR DEV/CONSIGNA'#199#195'O'
        'EZ - ENTRADA POR COMPOSI'#199#195'O')
    end
    object eddocumento: TEdit
      Left = 849
      Top = 12
      Width = 150
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 15
      ParentFont = False
      TabOrder = 2
      OnEnter = eddocumentoEnter
      OnExit = eddocumentoExit
    end
    object medata: TMaskEdit
      Left = 689
      Top = 12
      Width = 78
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
      OnEnter = medataEnter
      OnExit = medataExit
    end
    object edcliente: TEdit
      Left = 137
      Top = 43
      Width = 61
      Height = 24
      Hint = 'Pressione F10 para consultar um cliente ou fornecedor'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnEnter = edclienteEnter
      OnExit = edclienteExit
      OnKeyDown = edclienteKeyDown
    end
    object edproduto: TEdit
      Left = 137
      Top = 73
      Width = 61
      Height = 24
      Hint = 'Pressione F11 para consultar um produto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnEnter = edprodutoEnter
      OnExit = edprodutoExit
      OnKeyDown = edprodutoKeyDown
    end
    object cbund: TComboBox
      Left = 137
      Top = 106
      Width = 61
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 5
      OnEnter = cbundEnter
      OnExit = cbundExit
    end
    object edqtd: TEditAlinh
      Left = 235
      Top = 106
      Width = 70
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnEnter = edqtdEnter
      OnExit = edqtdExit
      Alinhamento = taRightJustify
    end
    object edunitario: TEditAlinh
      Left = 368
      Top = 106
      Width = 81
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnEnter = edunitarioEnter
      OnExit = edunitarioExit
      Alinhamento = taRightJustify
    end
    object edtotal: TEditAlinh
      Left = 488
      Top = 106
      Width = 89
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnEnter = edtotalEnter
      OnExit = edtotalExit
      Alinhamento = taRightJustify
    end
  end
  object DBGrid2: TDBGrid
    Left = 9
    Top = 168
    Width = 992
    Height = 345
    DataSource = dsmovestoque
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid2CellClick
    OnKeyDown = DBGrid2KeyDown
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'documento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Documento'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 105
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'data'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Data'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 77
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TipoMov'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Mov.'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 31
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'produto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'Produto'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 473
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'und'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'UND'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 38
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qtd'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taRightJustify
        Title.Caption = 'QTD'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 37
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VlrUnit'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taRightJustify
        Title.Caption = 'Vlr. Unit.'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VlrTotal'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taRightJustify
        Title.Caption = 'Vlr. Total'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 77
        Visible = True
      end>
  end
  object qrMovEstoque: TZQuery
    Connection = dm.ZConnection1
    SQL.Strings = (
      
        'select E.documento,E.favorecido,E.produto,E.data,E.TipoMov,E.tip' +
        'o,'
      'E.und,E.qtd,E.VlrUnit,E.VlrTotal,P.nome,E.local,E.local2'
      'from movestoque E, produtos P'
      'where E.produto=P.codigo')
    Params = <>
    Left = 728
    Top = 72
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
    object qrMovEstoquelocal: TStringField
      FieldName = 'local'
      Size = 1
    end
  end
  object dsmovestoque: TDataSource
    DataSet = qrMovEstoque
    Left = 760
    Top = 72
  end
  object qratualizar: TZQuery
    Connection = dm.ZConnection1
    Params = <>
    Left = 696
    Top = 72
  end
  object qratualizar2: TZQuery
    Connection = dm.ZConnection2
    Params = <>
    Left = 664
    Top = 72
  end
  object qrtotal: TZQuery
    Connection = dm.ZConnection1
    SQL.Strings = (
      'select sum(VlrTotal) as TotalSC from movestoque')
    Params = <>
    Left = 664
    Top = 104
    object qrtotalTotalSC: TFloatField
      FieldName = 'TotalSC'
    end
  end
end