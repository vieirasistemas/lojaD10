object FrmViolacao: TFrmViolacao
  Left = 321
  Top = 216
  BorderStyle = bsNone
  Caption = 'FrmViolacao'
  ClientHeight = 175
  ClientWidth = 261
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 259
    Height = 137
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Lines.Strings = (
      'Prezado Usu'#225'rio,'
      ''
      'Todo programa de computador '#233' protegido pela '
      'Legisla'#231#227'o de Direitos Autorais, tanto no Brasil como '
      'no resto do mundo.'
      'A Lei 7646/87, prev'#234' a pena de 6 meses a 2 anos '
      'de deten'#231#227'o e indeniza'#231#227'o que pode chegar ao '
      'valor de 2.000 c'#243'pias.')
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
  end
  object Button1: TButton
    Left = 48
    Top = 144
    Width = 161
    Height = 25
    Caption = 'Par'#226'metros violados'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
end
