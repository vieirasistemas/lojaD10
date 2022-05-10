object FrmVendaRefaturar: TFrmVendaRefaturar
  Left = 28
  Top = 128
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Venda / Caixa'
  ClientHeight = 523
  ClientWidth = 1201
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  OnActivate = FormActivate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 928
    Top = 5
    Width = 107
    Height = 20
    Alignment = taRightJustify
    Caption = 'Sub-Total R$'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 1086
    Top = 5
    Width = 106
    Height = 20
    Alignment = taRightJustify
    Caption = 'Desconto R$'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 1123
    Top = 62
    Width = 69
    Height = 20
    Alignment = taRightJustify
    Caption = 'Total R$'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 941
    Top = 202
    Width = 96
    Height = 20
    Alignment = taRightJustify
    Caption = 'Dinheiro R$'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label11: TLabel
    Left = 1046
    Top = 266
    Width = 146
    Height = 20
    Alignment = taRightJustify
    Caption = 'Cart'#227'o Cr'#233'dito R$'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel
    Left = 896
    Top = 266
    Width = 141
    Height = 20
    Alignment = taRightJustify
    Caption = 'Cart'#227'o D'#233'bito R$'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label14: TLabel
    Left = 1072
    Top = 322
    Width = 120
    Height = 20
    Alignment = taRightJustify
    Caption = 'Cheque AV R$'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label20: TLabel
    Left = 922
    Top = 378
    Width = 115
    Height = 20
    Alignment = taRightJustify
    Caption = 'Total Pago R$'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label21: TLabel
    Left = 1118
    Top = 378
    Width = 74
    Height = 20
    Alignment = taRightJustify
    Caption = 'Troco R$'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 1098
    Top = 202
    Width = 91
    Height = 20
    Alignment = taRightJustify
    Caption = 'PIX/Transf.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 963
    Top = 322
    Width = 74
    Height = 20
    Alignment = taRightJustify
    Caption = 'Faturado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label13: TLabel
    Left = 954
    Top = 62
    Width = 86
    Height = 20
    Alignment = taRightJustify
    Caption = 'A Receber'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 379
    Top = 439
    Width = 234
    Height = 16
    Caption = 'Pressione F11 para Excluir o Produto'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Image1: TImage
    Left = 1092
    Top = 440
    Width = 100
    Height = 75
    AutoSize = True
    Picture.Data = {
      0A544A504547496D616765960A0000FFD8FFE000104A46494600010101012C01
      2C0000FFDB0043000302020302020303030304030304050805050404050A0707
      06080C0A0C0C0B0A0B0B0D0E12100D0E110E0B0B1016101113141515150C0F17
      1816141812141514FFDB00430103040405040509050509140D0B0D1414141414
      1414141414141414141414141414141414141414141414141414141414141414
      14141414141414141414141414FFC0001108004B006403012200021101031101
      FFC4001D000100010501010100000000000000000000080104050607090203FF
      C400391000010303020404030507050100000000010203040005110621070812
      31132241511432611516427181254352637291A1091733346282FFC4001A0100
      03000301000000000000000000000000040602030501FFC40030110001030205
      0203080203000000000000010002110304051221314151610622321314247181
      B1E1F033D191A1C1FFDA000C03010002110311003F00F54E94A5084A52942129
      4A5084A52A87B50845100124E2B92CFE2EEA28BC7B85A19BD172DED38EC2329C
      D4AD75ADA428A545295613D29F324A775127236AD2B883C4BD2DCC0699D7DA46
      C5AB069F91A6E432997765BA5B631D585EE082A4642907D09C7D2BE6E726E7C1
      CB1E84D316FB2DE35CA35036D5AE6DFED8FBADFC24741012E8427ABA08438485
      029CF4EE4ED5BE9B6AB6E0D07D293967531B89FB7D130FA56CEC3DB7A2E20E7C
      B94349D046B9B6E6206BF4D5754E16F176DBC5617C36F83360FD9531509C4CE6
      C214B50EEA182463208EF9DAB7EAB78715B86CA5B6C612077F53F53EE6AE2956
      0706C38C95EDCBE8D4AAE7506656F0099FF701294A566964A529421295C1F5F7
      35766E0D711069AD7B6F936681313E35B6FACA4BD19F6FB10B007521493B1C05
      0EC76CD75ED2DAC6C9ADAD4DDC6C375897782E0CA5F88F25C4FF008EC7E8698A
      96F569B054737CA763C1FAA5D9714AA38B1AED46E3959AA5294BA612A157381C
      F33DC2FBE35A534139165DF2338157298EA03AD31FC903D55EE7D3B77CE33FCE
      CF374D7086D0EE92D2F252E6B29AD61C79073F67B4AFC47F9847CA3D3BFB67CC
      8B158AF1AF753C6B6DB987EE979B8BFD0DB69CA9C75C51DC93FDC927EA6AE303
      C19B587BDDD8F20D81E7B9ECA3F18C55D4CFBB5B1F37247D877533392EE2A68F
      BDDD2F96FBCE907EF9AFF54C896E4A90D300C57D8E9F182169CF4A01582364E3
      74E6A6F705EE971D47A4D17BBAD827E9497315D3F614D77A93110DF9101B181D
      21490158C0DCD60B964E08FF00B23C2CB358A6BAD4FBBB216EBF250DA4786A70
      8529B42B1929040193DF1F901D82A7B14B8A17370F7D16F3BC93B4EDD076E177
      70DA77142D9B4EA3F4E9DCC6FDF4DF954AAD295C85D34A529421294A5085C839
      9EE0441E3EF0CA6595C4B6D5E238326D92D43769F03604FF000A8794FE79F415
      E47E9FD63AD7819ACA426D9719DA7AF36F905A90C21C290548560A169ECA1B76
      3B57B9D501FF00D45F96BF8C8C78A1A7E2E5F65296AF4CB49DD481B21FC0F51B
      255F4C1F43567E1FC41B4DC6CAE3563F69D81FCFDD49E3762E7B45DD1D1CDDE3
      A7E14A4E5CB8E56DE3DF0DE15FE2143570400C5C6183BB0F81E61FD27B83EC7D
      C1AD379B9E696072FF00A54C480B6A56B1B836442884E4329EC5E707F08F41EA
      7E80D79B3CBB730F7DE5E355C8BADADB4CD872D853326DEEACA5B74E0F428E3B
      14AB7CFB647AD691AF75DDEB899AB27EA1BFCC5CEBA4D70AD6B57648F44A47A2
      40D80AEAD3F0C817C5CFFE21A8EFDBE41736A63E4DA06B7F90E87FB56573B9DD
      B5AEA27A64C7645D6F1717CAD6B5656E3CE28FF9249ED5EA37251CA533C17B0B
      7A9F51C743BAD2E0D7CAA00FC0347F769FFD9FC47F4F7CE83C87F283F772344E
      236B285FB55E4872D36F7D3BC7411B3CB07F191F28F41BF73B4E9A431EC6054F
      83B63E51B91CF61D93B8361659F155C798EC3FEFCD294A5432B14A529421294A
      5084A561FEF3DBBEF3FDDF2FF4DD7E17E34305247533D7D2540E3070AD88CE77
      1EF56B035F586E576936D62E2D19B1E52A129A51E92A792D871484E7E6210413
      D39C7AD6399BD56EF635489CA769DB8EBF25B155ADD2D91AF36E930663089312
      4B6A69D65C4E52B42860823D8835FABF21B8CCADD75696DB402A529470120772
      6BF1B7DC635D61312E1BEDC98AFA038D3CD28290B49190411DC1ACA60E8B4969
      226345E397367CBE49E00F13244265B5AF4E5C0AA4DAE41DC7879DDB27F8904E
      3F2C1F5AED9C89F2847594C8BC42D630FF006130BEBB6407D3FF006DC07FE550
      3FBB49EC3F111EC379E3C59E0D696E355961DAF54C1F8C8D125225B452AE95A5
      493B8CF7E950CA48F507F5ABFD47AB74EF0AEC30CCF7136F820A62C58F19852D
      4481B21B6D0093803B01B0155F71E24AAFB114367ECE776FECF2A6AD7C3C1D7D
      9983303E968D4CFE16D694848000000D80155AC15875959753B71D56CB8B12CB
      F1D32D0842BCE5A51202CA4EE06411B8EE0D5C5EF525BF4F2EDE99CF78267CA4
      438FE527ADD5024276EDF29DCED51D9844CAAAF65503FD99699E91AACAD294AC
      96A4A529421294A5085C7F9807A4E8D62CBC42811972A469E794892C343CCF44
      7804389FD15E1AFF00F935A72AD3A83425A3876DC50A7751CF72E57198DFA3F3
      5C86F3BD2AF70164247F48A91EB425C494A921493DC1190685B4A8A4948253D8
      91DA947D0CCE2E9FDE7EC150DBE2E68DBB283A987659D4F20821A3E40B9C7BCF
      60A1B70A755EACBCDE5B5337853F27ECF92F5F234ABC3B29CD9B233F0EA65298
      EB4B853848236C8DFBD6D9C11D3B3B5FCE7A55D750DF90C5B6DB695C6871A7B8
      C35E22A2A56A52824F9B246E0EDB9F7A93488CCB6A5A92D212A5FCC42402AFCE
      BE90D21BF910947F48C56B65AE58CCE985D1BAF108AC2A0A34430B80008D48D6
      4F1F4EC3451255C4216572DF7495AB2EC3888ABE222CDD3CEBCB2C259548E82D
      F818E94B61B20A5C1B938DCE715D8B8E92F4D468F6376FB7F93A56732FADFB75
      DDA4650CBA10414A8A9251E64A88E957CDBE3715D4550D85385C2CB65C3F88A4
      67FBD55F8CCCA4743CD21D477E95A411FE6B36D0706969333FBD7749D6C5A955
      AD4AB36996E59982363C0F2C651AC020E8482A244CD69A96FB699D3A4DD9CD3A
      FB9A7A238A94DB0EB4D94FC6B89F1308054C8710012A03CA159F4AB144D87A97
      45D9E7DCAE378459ED1AA584BF3CDDDC911DA6D4DE14B6A480952901447995BA
      49233BD4C62C367396D272307CA3B7B55044612CF84196C35DBA02474FF6AD46
      D09DDC9F6F8869B3D1432EB220C40888DBA6D331D379871AA75A6B19BC4ABB46
      8F76306F22E486AC8DB9797596971CF4F844454B4A4BC858DD4B2A3DCEE9C566
      D765BD5CA39BB3DAA751459B3B59BB667DA8F705865114BCA494369EC9EDB286
      E2A5618CC95A565A415A4612AE91903E955F01BC63C34E33D5D877F7A05A1939
      9D283E23680C14A806C00383303B8D8EF1D67AA8B73EF73ECF39DD397CD49788
      3A2205FE4429378F895890847C3B4E30D3920799282B5AC75E73B2466B5CB971
      024DCB4E488F1359CA774E5B2FAF468D267CC7E1AA7B1E036B42173109253D2A
      52BA4ABE718DCE2A632E334E25495B485257F3029041FCEBE4C28EA6CB65868B
      67BA4A060FE95E9B571D9DFBFE7658D2C7E8B402EA12477113CBBD3EA33133B4
      73AAD27829785DFB863639CE2EE0E29D6D585DD1414F9485A802A5003A8600C2
      B1E61827734ADF129090000001E8294EB416B40254A5C546D6ACFA8D6C071263
      A49D97FFD9}
  end
  object Label8: TLabel
    Left = 920
    Top = 472
    Width = 165
    Height = 19
    Caption = 'Insta: vieira_sistemas'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 931
    Top = 496
    Width = 154
    Height = 19
    Caption = 'ZAP: (62)99119-1659'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label15: TLabel
    Left = 379
    Top = 455
    Width = 259
    Height = 16
    Caption = 'Pressione F12 para Efetuar o Pagamento'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edValSubtotal: TEditAlinh
    Left = 896
    Top = 25
    Width = 143
    Height = 37
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ImeName = 'edValSubtotal'
    ParentFont = False
    ReadOnly = True
    TabOrder = 10
    Text = '0,00'
    OnExit = edValSubtotalExit
    Alinhamento = taRightJustify
  end
  object edValDesconto: TEditAlinh
    Left = 1049
    Top = 25
    Width = 143
    Height = 37
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    Text = '0,00'
    OnExit = edValDescontoExit
    Alinhamento = taRightJustify
  end
  object edValTotal: TEditAlinh
    Left = 1049
    Top = 82
    Width = 143
    Height = 37
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 11
    Text = '0,00'
    Alinhamento = taRightJustify
  end
  object edValDinheiro: TEditAlinh
    Tag = 1000
    Left = 896
    Top = 222
    Width = 143
    Height = 37
    Color = 16776176
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    Text = '0,00'
    OnEnter = edValDinheiroEnter
    OnExit = edValDinheiroExit
    Alinhamento = taRightJustify
  end
  object edValCredito: TEditAlinh
    Tag = 1001
    Left = 1049
    Top = 286
    Width = 143
    Height = 37
    Color = 16776176
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    Text = '0,00'
    OnEnter = edValDinheiroEnter
    OnExit = edValCreditoExit
    Alinhamento = taRightJustify
  end
  object edValDebito: TEditAlinh
    Tag = 1002
    Left = 896
    Top = 286
    Width = 143
    Height = 37
    Color = 16776176
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    Text = '0,00'
    OnEnter = edValDinheiroEnter
    OnExit = edValDebitoExit
    Alinhamento = taRightJustify
  end
  object edValCheque: TEditAlinh
    Tag = 1003
    Left = 1049
    Top = 342
    Width = 143
    Height = 37
    Color = 16776176
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    Text = '0,00'
    OnEnter = edValDinheiroEnter
    OnExit = edValChequeExit
    Alinhamento = taRightJustify
  end
  object edValPago: TEditAlinh
    Left = 896
    Top = 398
    Width = 143
    Height = 37
    Color = 10930928
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 12
    Text = '0,00'
    Alinhamento = taRightJustify
  end
  object edValTroco: TEditAlinh
    Left = 1049
    Top = 398
    Width = 143
    Height = 37
    Color = 10930928
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 8
    Text = '0,00'
    OnExit = edValTrocoExit
    Alinhamento = taRightJustify
  end
  object eddeposito: TEditAlinh
    Tag = 1000
    Left = 1049
    Top = 222
    Width = 143
    Height = 37
    Color = 16776176
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    Text = '0,00'
    OnEnter = edValDinheiroEnter
    OnExit = eddepositoExit
    Alinhamento = taRightJustify
  end
  object edfaturado: TEditAlinh
    Tag = 1000
    Left = 896
    Top = 342
    Width = 143
    Height = 37
    Color = 16776176
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    Text = '0,00'
    OnEnter = edValDinheiroEnter
    OnExit = edfaturadoExit
    Alinhamento = taRightJustify
  end
  object edareceber: TEditAlinh
    Left = 896
    Top = 82
    Width = 143
    Height = 37
    Color = 8421631
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 13
    Text = '0,00'
    Alinhamento = taRightJustify
  end
  object cbem: TComboBox
    Left = 0
    Top = 26
    Width = 376
    Height = 54
    CharCase = ecUpperCase
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -40
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ItemHeight = 46
    ParentFont = False
    Sorted = True
    TabOrder = 0
    Text = '1 - ATACADO'
    OnEnter = cbemEnter
    OnExit = cbemExit
    OnKeyDown = cbemKeyDown
    Items.Strings = (
      '1 - ATACADO'
      '2 - VAREJO')
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 376
    Height = 26
    Caption = 'Op'#231#227'o Pre'#231'o'
    Color = clBlack
    Font.Charset = ANSI_CHARSET
    Font.Color = clYellow
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 14
  end
  object GbPreVenda: TGroupBox
    Left = 0
    Top = 76
    Width = 376
    Height = 445
    TabOrder = 1
    object lbvendedor: TLabel
      Left = 77
      Top = 37
      Width = 287
      Height = 46
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -32
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbcliente: TLabel
      Left = 77
      Top = 117
      Width = 287
      Height = 46
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -32
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edcodbarra: TEdit
      Left = 2
      Top = 193
      Width = 372
      Height = 54
      CharCase = ecUpperCase
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -40
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnEnter = edcodbarraEnter
      OnExit = edcodbarraExit
      OnKeyDown = edcodbarraKeyDown
    end
    object Memo1: TMemo
      Left = 2
      Top = 363
      Width = 369
      Height = 78
      BorderStyle = bsNone
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -29
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
      OnKeyDown = cbemKeyDown
    end
    object edqtd: TEdit
      Left = 2
      Top = 273
      Width = 97
      Height = 54
      CharCase = ecUpperCase
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -40
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnEnter = edqtdEnter
      OnExit = edqtdExit
      OnKeyDown = edcodbarraKeyDown
    end
    object edunit: TEdit
      Left = 109
      Top = 273
      Width = 125
      Height = 54
      CharCase = ecUpperCase
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -40
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnExit = edunitExit
      OnKeyDown = edcodbarraKeyDown
    end
    object edvalor: TEdit
      Left = 245
      Top = 273
      Width = 125
      Height = 54
      CharCase = ecUpperCase
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -40
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnKeyDown = edcodbarraKeyDown
    end
    object Panel2: TPanel
      Left = 2
      Top = 169
      Width = 372
      Height = 26
      Caption = 'C'#243'digo'
      Color = clBlack
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
    object Panel3: TPanel
      Left = 2
      Top = 336
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
      TabOrder = 8
    end
    object Panel4: TPanel
      Left = 2
      Top = 247
      Width = 369
      Height = 26
      Caption = 'Qtd           Unit'#225'rio R$           Total R$'
      Color = clBlack
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
    end
    object edvendedor: TEdit
      Left = 2
      Top = 33
      Width = 71
      Height = 54
      Hint = 'Pressione F10 para Consultar o Vendedor(a)'
      CharCase = ecUpperCase
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -40
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnEnter = edvendedorEnter
      OnExit = edvendedorExit
      OnKeyDown = edvendedorKeyDown
    end
    object Panel6: TPanel
      Left = 2
      Top = 7
      Width = 372
      Height = 26
      Caption = '  Vendedor(a)'
      Color = clBlack
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
    end
    object edcliente: TEdit
      Left = 2
      Top = 113
      Width = 71
      Height = 54
      Hint = 'Pressione F10 para Consultar o Cliente'
      CharCase = ecUpperCase
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -40
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnEnter = edclienteEnter
      OnExit = edclienteExit
      OnKeyDown = edclienteKeyDown
    end
    object Panel7: TPanel
      Left = 2
      Top = 87
      Width = 372
      Height = 26
      Caption = 'Cliente'
      Color = clBlack
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
    end
  end
  object Panel5: TPanel
    Left = 896
    Top = 132
    Width = 295
    Height = 26
    Caption = 'N'#186' VENDA'
    Color = clBlack
    Font.Charset = ANSI_CHARSET
    Font.Color = clYellow
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 15
  end
  object p_venda: TPanel
    Left = 896
    Top = 157
    Width = 295
    Height = 44
    Color = 8388672
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -24
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 16
  end
  object gb1: TGroupBox
    Left = 376
    Top = -5
    Width = 518
    Height = 442
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 17
    object Label16: TLabel
      Left = 114
      Top = 409
      Width = 56
      Height = 29
      Caption = 'Itens'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -24
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 263
      Top = 409
      Width = 115
      Height = 29
      Caption = 'TOTAL R$'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -24
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object editens: TEditAlinh
      Left = 176
      Top = 402
      Width = 48
      Height = 37
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      Alinhamento = taRightJustify
    end
    object edtotal: TEditAlinh
      Left = 389
      Top = 402
      Width = 121
      Height = 37
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      Alinhamento = taRightJustify
    end
    object memo_itens: TMemo
      Left = 5
      Top = 11
      Width = 509
      Height = 382
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
  end
  object qratualizar: TZQuery
    Connection = dm.ZConnection1
    Params = <>
    Left = 1056
    Top = 152
  end
  object cdsPagamento: TClientDataSet
    Aggregates = <>
    FileName = 'formapg-caixa.xml'
    FieldDefs = <
      item
        Name = 'forma'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'valor'
        DataType = ftFloat
      end
      item
        Name = 'cartao'
        DataType = ftInteger
      end
      item
        Name = 'parcela'
        DataType = ftInteger
      end
      item
        Name = 'vencimento'
        DataType = ftDate
      end
      item
        Name = 'banco'
        DataType = ftInteger
      end
      item
        Name = 'agencia'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'contacorrente'
        DataType = ftString
        Size = 10
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 1120
    Top = 152
    object cdsPagamentoforma: TStringField
      FieldName = 'forma'
      Size = 2
    end
    object cdsPagamentovalor: TFloatField
      FieldName = 'valor'
    end
    object cdsPagamentocartao: TIntegerField
      FieldName = 'cartao'
    end
    object cdsPagamentoparcela: TIntegerField
      FieldName = 'parcela'
    end
    object cdsPagamentovencimento: TDateField
      FieldName = 'vencimento'
    end
    object cdsPagamentobanco: TIntegerField
      FieldName = 'banco'
    end
    object cdsPagamentoagencia: TStringField
      FieldName = 'agencia'
      Size = 10
    end
    object cdsPagamentocontacorrente: TStringField
      FieldName = 'contacorrente'
      Size = 10
    end
  end
  object qrtotalizar: TZQuery
    Connection = dm.ZConnection1
    SQL.Strings = (
      'select count(*) as itens,sum(total) as total from movvenda')
    Params = <>
    Left = 1088
    Top = 152
    object qrtotalizaritens: TLargeintField
      FieldName = 'itens'
      Required = True
    end
    object qrtotalizartotal: TFloatField
      FieldName = 'total'
    end
  end
end
