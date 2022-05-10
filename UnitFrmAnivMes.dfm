object FrmAnivMes: TFrmAnivMes
  Left = 477
  Top = 294
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Aniversariantes do M'#234's'
  ClientHeight = 85
  ClientWidth = 207
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 15
    Top = 6
    Width = 25
    Height = 16
    Caption = 'M'#234's'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object QuickRep3: TQuickRep
    Left = 78
    Top = 239
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = Query1
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
    ReportTitle = 'Visualizar Impress'#227'o'
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object QRBand3: TQRBand
      Left = 38
      Top = 142
      Width = 718
      Height = 22
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
        58.208333333333330000
        1899.708333333333000000)
      BandType = rbPageFooter
      object QRLabel33: TQRLabel
        Left = 0
        Top = 4
        Width = 43
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          10.583333333333330000
          113.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'GESTOR'
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
      object QRLabel34: TQRLabel
        Left = 640
        Top = 4
        Width = 76
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1693.333333333333000000
          10.583333333333330000
          201.083333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Vieira Sistemas'
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
    end
    object QRBand4: TQRBand
      Left = 38
      Top = 100
      Width = 718
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        52.916666666666670000
        1899.708333333333000000)
      BandType = rbColumnHeader
      object QRLabel35: TQRLabel
        Left = 1
        Top = 0
        Width = 320
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          2.645833333333330000
          0.000000000000000000
          846.666666666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Nome'
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
      object QRLabel37: TQRLabel
        Left = 414
        Top = 0
        Width = 83
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1095.375000000000000000
          0.000000000000000000
          219.604166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Telefone'
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
      object QRLabel38: TQRLabel
        Left = 508
        Top = 0
        Width = 83
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1344.083333333330000000
          0.000000000000000000
          219.604166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Celular'
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
      object QRLabel39: TQRLabel
        Left = 601
        Top = 0
        Width = 84
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1590.145833333330000000
          0.000000000000000000
          222.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'CPF'
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
      object QRLabel32: TQRLabel
        Left = 326
        Top = 0
        Width = 83
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          862.541666666666700000
          0.000000000000000000
          219.604166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Data Nascimento'
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
    end
    object QRBand5: TQRBand
      Left = 38
      Top = 120
      Width = 718
      Height = 22
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
        58.208333333333330000
        1899.708333333333000000)
      BandType = rbDetail
      object QRExpr13: TQRExpr
        Left = 1
        Top = 0
        Width = 320
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          2.645833333333333000
          0.000000000000000000
          846.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = '[Nome]'
        FontSize = 8
      end
      object QRDBText6: TQRDBText
        Left = 414
        Top = 0
        Width = 85
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1095.375000000000000000
          0.000000000000000000
          224.895833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Query1
        DataField = 'fone1'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText7: TQRDBText
        Left = 508
        Top = 0
        Width = 85
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1344.083333333333000000
          0.000000000000000000
          224.895833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Query1
        DataField = 'fone2'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText8: TQRDBText
        Left = 601
        Top = 0
        Width = 17
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1590.145833333333000000
          0.000000000000000000
          44.979166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Query1
        DataField = 'cpf'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText9: TQRDBText
        Left = 326
        Top = 0
        Width = 83
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          862.541666666666700000
          0.000000000000000000
          219.604166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Query1
        DataField = 'dtnasc'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object QRBand6: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 62
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        164.041666666666700000
        1899.708333333333000000)
      BandType = rbTitle
      object QRLabel40: TQRLabel
        Left = 588
        Top = 0
        Width = 47
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1555.750000000000000000
          0.000000000000000000
          124.354166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Data       :'
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
      object QRSysData7: TQRSysData
        Left = 654
        Top = 0
        Width = 31
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1730.375000000000000000
          0.000000000000000000
          82.020833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsDate
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        FontSize = 8
      end
      object QRLabel41: TQRLabel
        Left = 588
        Top = 20
        Width = 48
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1555.750000000000000000
          52.916666666666670000
          127.000000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Hora       :'
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
      object QRSysData8: TQRSysData
        Left = 686
        Top = 20
        Width = 31
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1815.041666666667000000
          52.916666666666670000
          82.020833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        FontSize = 8
      end
      object QRLabel42: TQRLabel
        Left = 588
        Top = 40
        Width = 48
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1555.750000000000000000
          105.833333333333300000
          127.000000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'P'#225'gina    :'
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
      object QRSysData9: TQRSysData
        Left = 710
        Top = 40
        Width = 39
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1878.541666666667000000
          105.833333333333300000
          103.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsPageNumber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        FontSize = 8
      end
      object qrtitulo: TQRLabel
        Left = 112
        Top = 16
        Width = 473
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          296.333333333333300000
          42.333333333333330000
          1251.479166666667000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Relat'#243'rio de Fornecedores - Sint'#233'tico'
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
      object QRImage5: TQRImage
        Left = 0
        Top = 0
        Width = 100
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          89.958333333333330000
          0.000000000000000000
          0.000000000000000000
          264.583333333333300000)
        AutoSize = True
        Picture.Data = {
          0A544A504547496D616765C8060000FFD8FFE000104A46494600010101006000
          600000FFDB004300020101020101020202020202020203050303030303060404
          0305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E
          0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0CFFC00011080022006403012200021101031101
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
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FDF8
          A28CD54D4B52B7D1AC64B8BA9E2B7B7887EF24793CB8E3A766F440DA4AECB2A4
          76A7119AF33D4FF68DD33ED1E4E971FDACFF00CF663B22FCEB121FDA61A4D5A4
          D3F4FD3F58F146A36ADE55CDB68F6224FB2C83F8249E4923863FFAE7249E6577
          3CB3129733858F1567D82753D9C27A9ECCABB452D739E0BF16DEF89E06FB7787
          F56D064FEE5EB5BBF99FF7EA492BA3AE29C390F5A9D4E7F7C28A28A9340A28A2
          800A28A2800A28A280381F8E5F1F7C3FFB3FF8424D535BBA58D9FF00776D6C9F
          EB6EE4C711A0EE4D7C67E33FDAC758F8D1AEF9F7D27D9EC2393F7163049FBB8F
          FF008E495F66FC46FD9C7C17F17356B7D43C49E1DD3F58BBB58CC104974AD279
          687F4AC8D37F63BF867621BCAF07E86BE9FB9AFB0E1FCD329C0D3F695E9CE753
          E563F2FE30E1FE25CD6BFB3C2D7853A1FF006F5DFF0088F98F42F15C9ABC36F6
          B6F752D9C97D716F65E7C7FF002EDE6491C7E67FDB3F32BD2BF699FDA5352FD8
          E3C47E03F037823C11A2EA90EADA26AFAC4BF6BBCBC8E2B0B7D3BECDE608E2B3
          B4B9B89E493ED63811F519EF5ED169FB34F81ECCEE8FC33A52AE7A7922B6357F
          871A16B5E39D23C4777A5D94DAFE836D7169A75FC91FFA4594771E5F9F1A49D4
          093CA8F3FEE579F9F6750C7387B04D1ED707F0DD6CAA9CFEB8FDA4CF8D7FE1EA
          9F10BFE89CF86FFF0001FC65FF00CCDD68783BFE0A6FF1035CF1AE83A77FC2AB
          B6D4E3D4B53B7B2921D2ADFC4B1DD451C92471C92A7DB343B6B6FDDC7279BFBC
          B98FF771495F70515F3E7DB1E537FF00B43359FED97A4FC297D313CBD4BC1979
          E2BFED23703F766DEF6DADBECFE5FBFDA37F99FEC57967C2CFDACFE33FC7EBEF
          1ADCF82FE1D7C379345F08F8BF58F0A24BAC78CAF2DAEAEE4D3AE4DBF99E5C7A
          7CB1C7E673C7995F43CFF0E7457F88B6FE2E934BB33E23B5D3E4D25352F287DA
          62B39248E592DFCCFF009E6648E37FAC75E43E27FF0082627C03F1AF89F55D6F
          52F85BE15BAD5B5ABD9352D42E1EDDFCCBAB8924F32591FE7FBF21EFFF00EAA0
          09BFE131FDA5BFE89CFC19FF00C2FF0051FF00E55D745A67C42F1F7853E0D78B
          7C49E3DF0D78574DD4B41B3B8D42D2CF43D6A7D4A1BA8E2B7F37E7925B6B7292
          19131FEAF15C7FFC3A8FF677FF00A24BE13FFBF127FF001CAF42F855FB2A7C3B
          F81FE05D5BC33E14F0968FA1F87F5E691F50B1822C4777E647E5C9BF9FF9E7F2
          7D2803C87E0AFED1BFB437C73F833E13F1C697F0CFE10DAE97E30D1ED35AB382
          EFC77A8F9B0C5711472C71C9FF0012BFF59FBCAE9B51F1E7ED25A6D84F33FC3A
          F831E5C71BC8FF00F15E6A3FFCABAA307FC125BF671B38638E3F845E0F8E3853
          CB8D12DE4FDDFF00E3F537FC3A8FF675FF00A249E13FFBF127FF0017401D8FEC
          71FB43C9FB547ECB9E05F88D71A4AE892F8D3498755360939BA5B5F306767982
          25DD8F5C0A2BB3F879F0F745F83BE06D2FC2FE15D2ADB43F0FE876EB6B636167
          0ED82D235E88A3D051401D3628DA076A28A683A0628C51454C4A0C518A28A648
          628C51450018A31451400628C51450018A28A2803FFFD9}
      end
    end
  end
  object edmes: TEdit
    Left = 15
    Top = 24
    Width = 43
    Height = 22
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object bt1: TBitBtn
    Left = 15
    Top = 53
    Width = 75
    Height = 25
    Caption = '&Ok'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
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
    Left = 110
    Top = 53
    Width = 81
    Height = 25
    Caption = 'Sai&r'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
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
  object Query1: TZQuery
    Connection = dm.ZConnection1
    SQL.Strings = (
      'select * from fornecedores order by nome')
    Params = <>
    Left = 16
    Top = 200
    object Query1codigo: TIntegerField
      FieldName = 'codigo'
    end
    object Query1tipo: TStringField
      FieldName = 'tipo'
      Required = True
      Size = 1
    end
    object Query1cnpj: TStringField
      FieldName = 'cnpj'
      EditMask = '99.999.999/9999-99;0;_'
      Size = 14
    end
    object Query1ie: TStringField
      FieldName = 'ie'
      Size = 15
    end
    object Query1im: TStringField
      FieldName = 'im'
      Size = 15
    end
    object Query1cpf: TStringField
      FieldName = 'cpf'
      EditMask = '999.999.999-99;0;_'
      Size = 11
    end
    object Query1rg: TStringField
      FieldName = 'rg'
      Size = 15
    end
    object Query1nome: TStringField
      FieldName = 'nome'
      Size = 70
    end
    object Query1endereco: TStringField
      FieldName = 'endereco'
      Size = 70
    end
    object Query1bairro: TStringField
      FieldName = 'bairro'
      Size = 30
    end
    object Query1cidade: TStringField
      FieldName = 'cidade'
      Size = 30
    end
    object Query1estado: TStringField
      FieldName = 'estado'
      Size = 2
    end
    object Query1cep: TStringField
      FieldName = 'cep'
      EditMask = '99.999-999;0;_'
      Size = 8
    end
    object Query1fone3: TStringField
      FieldName = 'fone3'
      EditMask = '(99)#9999-9999;0;_'
      Size = 10
    end
    object Query1email: TStringField
      FieldName = 'email'
      Size = 40
    end
    object Query1homepage: TStringField
      FieldName = 'homepage'
      Size = 40
    end
    object Query1obs: TStringField
      FieldName = 'obs'
      Size = 100
    end
    object Query1contato: TStringField
      FieldName = 'contato'
      Size = 30
    end
    object Query1empresa: TIntegerField
      FieldName = 'empresa'
    end
    object Query1fantasia: TStringField
      FieldName = 'fantasia'
      Size = 50
    end
    object Query1fone1: TStringField
      FieldName = 'fone1'
      EditMask = '(99)#9999-9999;0;_'
      Size = 11
    end
    object Query1fone2: TStringField
      FieldName = 'fone2'
      EditMask = '(99)#9999-9999;0;_'
      Size = 11
    end
    object Query1tfone1: TStringField
      FieldKind = fkCalculated
      FieldName = 'tfone1'
      Size = 15
      Calculated = True
    end
    object Query1tfone2: TStringField
      FieldKind = fkCalculated
      FieldName = 'tfone2'
      Size = 15
      Calculated = True
    end
    object Query1dtnasc: TDateField
      FieldName = 'dtnasc'
    end
  end
end
