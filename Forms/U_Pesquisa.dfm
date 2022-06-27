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
    Height = 73
    Align = alTop
    Color = clGradientActiveCaption
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 216
      Top = 12
      Width = 46
      Height = 13
      Caption = 'Pesquisar'
    end
    object Label2: TLabel
      Left = 40
      Top = 12
      Width = 65
      Height = 13
      Caption = 'Pesquisar por'
    end
    object ed_pesquisa: TEdit
      Left = 217
      Top = 27
      Width = 225
      Height = 21
      TabOrder = 0
    end
    object bt_pesquisar: TBitBtn
      Left = 447
      Top = 25
      Width = 75
      Height = 25
      Caption = '&Pesquisa'
      TabOrder = 1
      OnClick = bt_pesquisarClick
    end
    object bt_imprimir: TBitBtn
      Left = 528
      Top = 25
      Width = 75
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 2
    end
    object cb_opcao: TComboBox
      Left = 40
      Top = 27
      Width = 145
      Height = 21
      TabOrder = 3
      Items.Strings = (
        'C'#243'digo'
        'Nome')
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
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 73
    Width = 691
    Height = 278
    Align = alClient
    DataSource = frm_cadastro.Ds_cadastro
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
    DataSource = frm_cadastro.Ds_cadastro
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 3
  end
end
