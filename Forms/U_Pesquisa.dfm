object Frm_pesquisa: TFrm_pesquisa
  Left = 0
  Top = 0
  Caption = 'Formul'#225'rio de Consulta'
  ClientHeight = 392
  ClientWidth = 691
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 691
    Height = 57
    Align = alTop
    Color = clGradientActiveCaption
    ParentBackground = False
    TabOrder = 0
    ExplicitTop = -6
    object Label1: TLabel
      Left = 24
      Top = 11
      Width = 46
      Height = 13
      Caption = 'Pesquisar'
    end
    object ed_pesquisa: TEdit
      Left = 24
      Top = 26
      Width = 225
      Height = 25
      TabOrder = 0
    end
    object bt_pesquisar: TBitBtn
      Left = 255
      Top = 26
      Width = 75
      Height = 25
      Caption = '&Pesquisa'
      TabOrder = 1
    end
    object bt_imprimir: TBitBtn
      Left = 336
      Top = 26
      Width = 75
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 351
    Width = 691
    Height = 41
    Align = alBottom
    Color = clGradientActiveCaption
    ParentBackground = False
    TabOrder = 1
    ExplicitLeft = 232
    ExplicitTop = 360
    ExplicitWidth = 185
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 57
    Width = 691
    Height = 294
    Align = alClient
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 232
    Top = 359
    Width = 224
    Height = 25
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 3
  end
end
