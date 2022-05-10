object FrmResumoGerenciais: TFrmResumoGerenciais
  Left = -2
  Top = 74
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Gerenciais - Resumo'
  ClientHeight = 445
  ClientWidth = 797
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
  object Label5: TLabel
    Left = 32
    Top = 56
    Width = 53
    Height = 13
    Caption = 'Vencidas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 27
    Top = 80
    Width = 58
    Height = 13
    Caption = 'Vencendo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 32
    Top = 104
    Width = 53
    Height = 13
    Caption = #192' Vencer'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbvencidasreceb: TLabel
    Left = 131
    Top = 56
    Width = 100
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Vencidas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbvencendoreceb: TLabel
    Left = 131
    Top = 80
    Width = 100
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Vencendo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbvencerreceb: TLabel
    Left = 131
    Top = 104
    Width = 100
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = #192' Vencer'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbvencidaspagar: TLabel
    Left = 339
    Top = 56
    Width = 100
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Vencidas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbvencendopagar: TLabel
    Left = 339
    Top = 80
    Width = 100
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Vencendo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbvencerpagar: TLabel
    Left = 339
    Top = 104
    Width = 100
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = #192' Vencer'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbvencidaspos: TLabel
    Left = 505
    Top = 56
    Width = 100
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Vencidas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clOlive
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbvencendopos: TLabel
    Left = 505
    Top = 80
    Width = 100
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Vencendo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clOlive
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbvencerpos: TLabel
    Left = 505
    Top = 104
    Width = 100
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = #192' Vencer'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clOlive
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbvencidasrecebP: TLabel
    Left = 248
    Top = 56
    Width = 51
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '99,99'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbvencendorecebP: TLabel
    Left = 248
    Top = 80
    Width = 51
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '99,99'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbvencerrecebP: TLabel
    Left = 248
    Top = 104
    Width = 51
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '99,99'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbvencidaspagarP: TLabel
    Left = 456
    Top = 56
    Width = 51
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '99,99'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbvencendopagarP: TLabel
    Left = 456
    Top = 80
    Width = 51
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '99,99'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbvencerpagarP: TLabel
    Left = 456
    Top = 104
    Width = 51
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '99,99'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lb30rec: TLabel
    Left = 131
    Top = 170
    Width = 100
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lb60rec: TLabel
    Left = 131
    Top = 190
    Width = 100
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lb90rec: TLabel
    Left = 131
    Top = 210
    Width = 100
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lb120rec: TLabel
    Left = 131
    Top = 230
    Width = 100
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lb150rec: TLabel
    Left = 131
    Top = 250
    Width = 100
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lb180rec: TLabel
    Left = 131
    Top = 270
    Width = 100
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lb210rec: TLabel
    Left = 131
    Top = 291
    Width = 100
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lb240rec: TLabel
    Left = 131
    Top = 311
    Width = 100
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lb270rec: TLabel
    Left = 131
    Top = 331
    Width = 100
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lb300rec: TLabel
    Left = 131
    Top = 351
    Width = 100
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lb330rec: TLabel
    Left = 131
    Top = 371
    Width = 100
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lb331rec: TLabel
    Left = 131
    Top = 392
    Width = 100
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label24: TLabel
    Left = 17
    Top = 152
    Width = 96
    Height = 16
    Caption = 'Faixas Atraso'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label25: TLabel
    Left = 11
    Top = 170
    Width = 100
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '30 dias'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label26: TLabel
    Left = 11
    Top = 190
    Width = 100
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '60 dias'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label27: TLabel
    Left = 11
    Top = 210
    Width = 100
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '90 dias'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label28: TLabel
    Left = 11
    Top = 230
    Width = 100
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '120 dias'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label29: TLabel
    Left = 11
    Top = 250
    Width = 100
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '150 dias'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label30: TLabel
    Left = 11
    Top = 270
    Width = 100
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '180 dias'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label31: TLabel
    Left = 11
    Top = 291
    Width = 100
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '210 dias'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label32: TLabel
    Left = 11
    Top = 311
    Width = 100
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '240 dias'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label33: TLabel
    Left = 11
    Top = 331
    Width = 100
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '270 dias'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label34: TLabel
    Left = 11
    Top = 351
    Width = 100
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '300 dias'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label35: TLabel
    Left = 11
    Top = 371
    Width = 100
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '330 dias'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label36: TLabel
    Left = 11
    Top = 392
    Width = 100
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Maior 330 dias'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lb30pag: TLabel
    Left = 339
    Top = 170
    Width = 100
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lb60pag: TLabel
    Left = 339
    Top = 190
    Width = 100
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lb90pag: TLabel
    Left = 339
    Top = 210
    Width = 100
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lb120pag: TLabel
    Left = 339
    Top = 230
    Width = 100
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lb150pag: TLabel
    Left = 339
    Top = 250
    Width = 100
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lb180pag: TLabel
    Left = 339
    Top = 270
    Width = 100
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lb210pag: TLabel
    Left = 339
    Top = 291
    Width = 100
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lb240pag: TLabel
    Left = 339
    Top = 311
    Width = 100
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lb270pag: TLabel
    Left = 339
    Top = 331
    Width = 100
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lb300pag: TLabel
    Left = 339
    Top = 351
    Width = 100
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lb330pag: TLabel
    Left = 339
    Top = 371
    Width = 100
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lb331pag: TLabel
    Left = 339
    Top = 392
    Width = 100
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label16: TLabel
    Left = 520
    Top = 168
    Width = 32
    Height = 13
    Caption = 'Caixa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label17: TLabel
    Left = 509
    Top = 192
    Width = 43
    Height = 13
    Caption = 'Bancos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label18: TLabel
    Left = 491
    Top = 216
    Width = 61
    Height = 13
    Caption = 'TOTAL R$'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbcaixa: TLabel
    Left = 592
    Top = 168
    Width = 135
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'lbcaixa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbbancos: TLabel
    Left = 592
    Top = 192
    Width = 135
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Vencendo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbdisponivel: TLabel
    Left = 584
    Top = 216
    Width = 143
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = #192' Vencer'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = -1
    Top = 33
    Width = 799
    Height = 16
    BevelOuter = bvNone
    Color = clMaroon
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 129
      Top = 1
      Width = 103
      Height = 13
      Caption = 'Contas '#224' Receber'
    end
    object Label3: TLabel
      Left = 352
      Top = 1
      Width = 88
      Height = 13
      Caption = 'Contas '#224' Pagar'
    end
    object Label4: TLabel
      Left = 560
      Top = 1
      Width = 46
      Height = 13
      Caption = 'Posi'#231#227'o'
    end
    object Label8: TLabel
      Left = 265
      Top = 1
      Width = 34
      Height = 13
      Caption = '(  %  )'
    end
    object Label9: TLabel
      Left = 473
      Top = 1
      Width = 34
      Height = 13
      Caption = '(  %  )'
    end
  end
  object Panel2: TPanel
    Left = -2
    Top = 129
    Width = 799
    Height = 16
    BevelOuter = bvNone
    Color = clMaroon
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object lbtotalrec: TLabel
      Left = 112
      Top = 1
      Width = 121
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Contas '#224' Receber'
    end
    object lbtotalpagar: TLabel
      Left = 296
      Top = 1
      Width = 144
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Contas '#224' Pagar'
    end
    object lbtotalpos: TLabel
      Left = 496
      Top = 1
      Width = 110
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Posi'#231#227'o'
    end
    object Label11: TLabel
      Left = 26
      Top = 1
      Width = 61
      Height = 13
      Caption = 'TOTAL R$'
    end
    object lbtotalrecP: TLabel
      Left = 258
      Top = 1
      Width = 43
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '100,00'
    end
    object Label10: TLabel
      Left = 466
      Top = 1
      Width = 43
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '100,00'
    end
  end
  object Panel3: TPanel
    Left = 448
    Top = 145
    Width = 9
    Height = 300
    BevelOuter = bvNone
    Color = clMaroon
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object Panel5: TPanel
    Left = 456
    Top = 145
    Width = 341
    Height = 16
    BevelOuter = bvNone
    Color = clNavy
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object Label22: TLabel
      Left = 10
      Top = 1
      Width = 62
      Height = 13
      Caption = 'Dispon'#237'vel'
    end
  end
  object DataSource1: TDataSource
    DataSet = qrconsulta
    Left = 536
  end
  object qratualizar: TZQuery
    Connection = dm.ZConnection1
    Params = <>
    Left = 384
  end
  object qrconsulta: TZQuery
    Connection = dm.ZConnection1
    SQL.Strings = (
      'select liquido as valor,vencto,pgto,emissao from docreceber')
    Params = <>
    Left = 504
    object qrconsultavalor: TFloatField
      FieldName = 'valor'
    end
    object qrconsultavencto: TDateField
      FieldName = 'vencto'
      Required = True
    end
    object qrconsultapgto: TDateField
      FieldName = 'pgto'
    end
    object qrconsultaemissao: TDateField
      FieldName = 'emissao'
      Required = True
    end
  end
  object qrtotal: TZQuery
    Connection = dm.ZConnection1
    SQL.Strings = (
      
        'select sum(credito) as Credito, sum(debito) as Debito from finan' +
        'ceiro')
    Params = <>
    Left = 568
    object qrtotalCredito: TFloatField
      FieldName = 'Credito'
    end
    object qrtotalDebito: TFloatField
      FieldName = 'Debito'
    end
  end
end
