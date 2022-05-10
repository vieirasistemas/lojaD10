object FrmLiberarSistema: TFrmLiberarSistema
  Left = 192
  Top = 103
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Liberar Sistema'
  ClientHeight = 221
  ClientWidth = 479
  Color = clRed
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 24
    Top = 16
    Width = 440
    Height = 41
    AutoSize = False
    Caption = 
      'Aten'#231#227'o! Sistema Expirou. Contate o Suporte T'#233'cnico e forne'#231'a as' +
      ' informa'#231#245'es abaixos:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
  end
  object Label1: TLabel
    Left = 24
    Top = 160
    Width = 213
    Height = 19
    Caption = 'Digite a Senha de Libera'#231#227'o'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 56
    Width = 381
    Height = 19
    Caption = 'Fones (62)99119-1659 - vieirasistemas@gmail.com'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbcnpj: TLabel
    Left = 24
    Top = 109
    Width = 47
    Height = 19
    Caption = 'lbhms'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbrazao: TLabel
    Left = 24
    Top = 85
    Width = 47
    Height = 19
    Caption = 'lbhms'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbdata: TLabel
    Left = 24
    Top = 133
    Width = 47
    Height = 19
    Caption = 'lbhms'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edsenha: TEdit
    Left = 24
    Top = 184
    Width = 433
    Height = 24
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnKeyPress = edsenhaKeyPress
  end
  object qratualizar: TZQuery
    Connection = dm.ZConnection1
    Params = <>
    Left = 344
    Top = 65528
  end
  object qratualizarNET: TZQuery
    Connection = dm.ZConnection2
    Params = <>
    Left = 376
    Top = 65528
  end
end
