object frm_cadastro: Tfrm_cadastro
  Left = 0
  Top = 0
  Caption = 'Cadastro de Contatos'
  ClientHeight = 310
  ClientWidth = 634
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 80
    Top = 64
    Width = 66
    Height = 13
    Caption = 'ID_CONTATO'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 80
    Top = 104
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 80
    Top = 144
    Width = 50
    Height = 13
    Caption = 'TELEFONE'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 279
    Top = 144
    Width = 44
    Height = 13
    Caption = 'CELULAR'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 80
    Top = 184
    Width = 30
    Height = 13
    Caption = 'EMAIL'
    FocusControl = DBEdit5
  end
  object DBEdit1: TDBEdit
    Left = 80
    Top = 80
    Width = 193
    Height = 21
    DataField = 'ID_CONTATO'
    DataSource = Ds_cadastro
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 80
    Top = 120
    Width = 392
    Height = 21
    DataField = 'NOME'
    DataSource = Ds_cadastro
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 80
    Top = 160
    Width = 189
    Height = 21
    DataField = 'TELEFONE'
    DataSource = Ds_cadastro
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 279
    Top = 160
    Width = 189
    Height = 21
    DataField = 'CELULAR'
    DataSource = Ds_cadastro
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 80
    Top = 203
    Width = 392
    Height = 21
    DataField = 'EMAIL'
    DataSource = Ds_cadastro
    TabOrder = 4
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 634
    Height = 49
    Align = alTop
    Color = clGradientActiveCaption
    ParentBackground = False
    TabOrder = 5
    object bt_novo: TBitBtn
      Left = 36
      Top = 13
      Width = 75
      Height = 25
      Caption = '&Novo'
      TabOrder = 0
    end
    object bt_editar: TBitBtn
      Left = 117
      Top = 13
      Width = 75
      Height = 25
      Caption = '&Editar'
      TabOrder = 1
    end
    object bt_deletar: TBitBtn
      Left = 198
      Top = 13
      Width = 75
      Height = 25
      Caption = '&Deletar'
      TabOrder = 2
    end
    object bt_gravar: TBitBtn
      Left = 279
      Top = 13
      Width = 75
      Height = 25
      Caption = '&Gravar'
      TabOrder = 3
    end
    object bt_cancelar: TBitBtn
      Left = 360
      Top = 13
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 4
    end
    object bt_atualizar: TBitBtn
      Left = 441
      Top = 13
      Width = 75
      Height = 25
      Caption = '&Atualizar'
      TabOrder = 5
    end
    object bt_sair: TBitBtn
      Left = 522
      Top = 13
      Width = 75
      Height = 25
      Caption = '&Sair'
      TabOrder = 6
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 272
    Width = 634
    Height = 38
    Align = alBottom
    Color = clGradientActiveCaption
    ParentBackground = False
    TabOrder = 6
    object DBNavigator1: TDBNavigator
      Left = 198
      Top = 8
      Width = 224
      Height = 25
      DataSource = Ds_cadastro
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 0
    end
  end
  object Conexao: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Adeilson Silva\Desktop\Sistema\Exe\Banco\CONTA' +
        'TO.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Port=3050'
      'CharacterSet=WIN1252'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 24
    Top = 56
  end
  object Q_cadastro: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT * FROM contato'
      'ORDER BY ID_CONTATO')
    Left = 16
    Top = 112
    object Q_cadastroID_CONTATO: TIntegerField
      FieldName = 'ID_CONTATO'
      Origin = 'ID_CONTATO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_cadastroNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object Q_cadastroTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Required = True
      EditMask = '!\(99\)0000-0000;0;_'
      Size = 15
    end
    object Q_cadastroCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      Required = True
      EditMask = '!\(99\)00000-0000;0;_'
      Size = 15
    end
    object Q_cadastroEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Required = True
      Size = 100
    end
  end
  object Ds_cadastro: TDataSource
    DataSet = Q_cadastro
    Left = 16
    Top = 160
  end
end
