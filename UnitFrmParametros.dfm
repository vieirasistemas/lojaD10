object FrmParametros: TFrmParametros
  Left = 194
  Top = 241
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Par'#226'metros'
  ClientHeight = 237
  ClientWidth = 761
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label79: TLabel
    Left = 43
    Top = 148
    Width = 77
    Height = 13
    Caption = 'Dias Protesto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label56: TLabel
    Left = 46
    Top = 116
    Width = 74
    Height = 13
    Caption = 'Tarifa Boleto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label54: TLabel
    Left = 29
    Top = 84
    Width = 91
    Height = 13
    Caption = 'Car'#234'ncia Atraso'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 59
    Top = 51
    Width = 61
    Height = 13
    Caption = 'Multa ( % )'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 60
    Top = 19
    Width = 60
    Height = 13
    Caption = 'Juros ( % )'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbcon: TLabel
    Left = 240
    Top = 20
    Width = 129
    Height = 13
    Caption = 'Conta Corrente - Caixa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label51: TLabel
    Left = 235
    Top = 52
    Width = 134
    Height = 13
    Caption = 'Conta Corrente - Banco'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label32: TLabel
    Left = 576
    Top = 70
    Width = 169
    Height = 13
    Caption = 'Pressione F5 para efetuar grava'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 11
    Top = 180
    Width = 109
    Height = 13
    Caption = 'Remessa Bradesco'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 26
    Top = 212
    Width = 94
    Height = 13
    Caption = 'Desc. Max. ( % )'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object eddiasprotesto: TEdit
    Left = 127
    Top = 144
    Width = 83
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnKeyDown = cbreceberjurosKeyDown
  end
  object edtarifa_bol: TEdit
    Left = 127
    Top = 112
    Width = 83
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnKeyDown = cbreceberjurosKeyDown
  end
  object edatraso: TEdit
    Left = 127
    Top = 80
    Width = 83
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnKeyDown = cbreceberjurosKeyDown
  end
  object edmulta: TEdit
    Left = 127
    Top = 48
    Width = 83
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnExit = edmultaExit
    OnKeyDown = cbreceberjurosKeyDown
  end
  object edjuros: TEdit
    Left = 127
    Top = 16
    Width = 83
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnExit = edjurosExit
    OnKeyDown = cbreceberjurosKeyDown
  end
  object cbcontacaixa: TComboBox
    Left = 383
    Top = 16
    Width = 362
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 13
    ParentFont = False
    Sorted = True
    TabOrder = 7
    OnExit = cbcontacaixaExit
    OnKeyDown = cbreceberjurosKeyDown
  end
  object cbcontabanco: TComboBox
    Left = 383
    Top = 48
    Width = 362
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 13
    ParentFont = False
    Sorted = True
    TabOrder = 8
    OnExit = cbcontacaixaExit
    OnKeyDown = cbreceberjurosKeyDown
  end
  object edRemessaBrad: TEdit
    Left = 127
    Top = 176
    Width = 83
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnKeyDown = cbreceberjurosKeyDown
  end
  object eddescmax: TEdit
    Left = 127
    Top = 208
    Width = 83
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnKeyDown = cbreceberjurosKeyDown
  end
  object ColorDialog1: TColorDialog
    Options = [cdFullOpen, cdPreventFullOpen, cdShowHelp, cdSolidColor, cdAnyColor]
    Left = 288
  end
  object qratualizar: TZQuery
    Connection = dm.ZConnection1
    Params = <>
    Left = 384
  end
end
