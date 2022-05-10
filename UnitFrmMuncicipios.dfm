object FrmMuncicipios: TFrmMuncicipios
  Left = 192
  Top = 117
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Muncicipios'
  ClientHeight = 287
  ClientWidth = 518
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 16
    Top = 8
    Width = 109
    Height = 13
    Caption = 'Nome do Municipio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edpesquisa: TEdit
    Left = 16
    Top = 24
    Width = 481
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 0
    OnExit = edpesquisaExit
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 56
    Width = 481
    Height = 217
    DataSource = dm.dsmunicipios
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Codigo'
        Width = 95
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF'
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Municipio'
        Visible = True
      end>
  end
end
