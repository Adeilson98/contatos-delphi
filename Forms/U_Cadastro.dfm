object frm_cadastro: Tfrm_cadastro
  Left = 0
  Top = 0
  Caption = 'Cadastro de Contatos'
  ClientHeight = 333
  ClientWidth = 807
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 160
    Top = 64
    Width = 66
    Height = 13
    Caption = 'ID_CONTATO'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 160
    Top = 104
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 160
    Top = 144
    Width = 50
    Height = 13
    Caption = 'TELEFONE'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 160
    Top = 184
    Width = 44
    Height = 13
    Caption = 'CELULAR'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 160
    Top = 224
    Width = 30
    Height = 13
    Caption = 'EMAIL'
    FocusControl = DBEdit5
  end
  object DBEdit1: TDBEdit
    Left = 160
    Top = 80
    Width = 300
    Height = 21
    DataField = 'ID_CONTATO'
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 160
    Top = 120
    Width = 500
    Height = 21
    DataField = 'NOME'
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 160
    Top = 160
    Width = 500
    Height = 21
    DataField = 'TELEFONE'
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 160
    Top = 200
    Width = 500
    Height = 21
    DataField = 'CELULAR'
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 160
    Top = 240
    Width = 500
    Height = 21
    DataField = 'EMAIL'
    TabOrder = 4
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
    Top = 40
  end
  object Q_cadastro: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT * FROM contato'
      'ORDER BY ID_CONTATO')
    Left = 16
    Top = 96
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
      Size = 15
    end
    object Q_cadastroCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      Required = True
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
    Top = 144
  end
end
