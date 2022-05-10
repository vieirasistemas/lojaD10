object FrmProcFinanceiro: TFrmProcFinanceiro
  Left = 303
  Top = 310
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Processamento Financeiro'
  ClientHeight = 113
  ClientWidth = 217
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
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 27
    Top = 9
    Width = 24
    Height = 13
    Caption = 'M'#234's'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 120
    Top = 8
    Width = 23
    Height = 13
    Caption = 'Ano'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Gauge1: TGauge
    Left = 0
    Top = 96
    Width = 217
    Height = 17
    Progress = 0
  end
  object bt1: TBitBtn
    Left = 25
    Top = 67
    Width = 75
    Height = 25
    Caption = '&Ok'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -12
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
    Left = 121
    Top = 67
    Width = 81
    Height = 25
    Caption = 'Sai&r'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -12
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
  object edano: TEdit
    Left = 120
    Top = 25
    Width = 49
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnEnter = edanoEnter
    OnKeyPress = edanoKeyPress
  end
  object edmes: TEdit
    Left = 27
    Top = 25
    Width = 49
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnExit = edmesExit
    OnKeyPress = edanoKeyPress
  end
  object ChAtualizarPl: TCheckBox
    Left = 27
    Top = 48
    Width = 169
    Height = 17
    Caption = 'Atualizar Plano de Contas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object DataSource1: TDataSource
    DataSet = qrtotal
    Left = 96
    Top = 80
  end
  object qratualizar: TZQuery
    Connection = dm.ZConnection1
    Params = <>
    Left = 168
    Top = 80
  end
  object qrtotal: TZQuery
    Connection = dm.ZConnection1
    SQL.Strings = (
      
        'select planoconta as conta,sum(credito) as Credito, sum(debito) ' +
        'as Debito from financeiro'
      'group by conta')
    Params = <>
    Left = 64
    Top = 80
    object qrtotalconta: TStringField
      FieldName = 'conta'
      Required = True
      Size = 8
    end
    object qrtotalCredito: TFloatField
      FieldName = 'Credito'
    end
    object qrtotalDebito: TFloatField
      FieldName = 'Debito'
    end
  end
end
