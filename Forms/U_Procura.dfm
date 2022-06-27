object Frm_procura: TFrm_procura
  Left = 0
  Top = 0
  Caption = 'Pesquisa'
  ClientHeight = 426
  ClientWidth = 670
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
    Width = 670
    Height = 57
    Align = alTop
    Color = clGradientActiveCaption
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = -21
    ExplicitWidth = 691
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
      Height = 21
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
    Top = 385
    Width = 670
    Height = 41
    Align = alBottom
    Color = clGradientActiveCaption
    ParentBackground = False
    TabOrder = 1
    ExplicitLeft = -21
    ExplicitTop = 351
    ExplicitWidth = 691
    object DBNavigator1: TDBNavigator
      Left = 232
      Top = 8
      Width = 224
      Height = 25
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 0
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 57
    Width = 670
    Height = 328
    Align = alClient
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
end
