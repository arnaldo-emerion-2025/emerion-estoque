object Form1: TForm1
  Left = 192
  Top = 125
  Width = 958
  Height = 395
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 32
    Width = 11
    Height = 13
    Caption = 'ID'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 8
    Top = 72
    Width = 32
    Height = 13
    Caption = 'NOME'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 8
    Top = 112
    Width = 44
    Height = 13
    Caption = 'FUNCAO'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 8
    Top = 152
    Width = 73
    Height = 13
    Caption = 'OBSERVACAO'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 8
    Top = 232
    Width = 37
    Height = 13
    Caption = 'SENHA'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 8
    Top = 192
    Width = 33
    Height = 13
    Caption = 'LOGIN'
    FocusControl = DBEdit6
  end
  object Label7: TLabel
    Left = 8
    Top = 272
    Width = 54
    Height = 13
    Caption = 'CURADOR'
    FocusControl = DBEdit7
  end
  object Label8: TLabel
    Left = 8
    Top = 312
    Width = 80
    Height = 13
    Caption = 'NIVEL_ACESSO'
    FocusControl = DBEdit8
  end
  object Label9: TLabel
    Left = 112
    Top = 232
    Width = 99
    Height = 13
    Caption = 'CONFIRMA_SENHA'
    FocusControl = DBEdit9
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 48
    Width = 64
    Height = 21
    DataField = 'ID'
    DataSource = DsUsuario
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 88
    Width = 244
    Height = 21
    DataField = 'NOME'
    DataSource = DsUsuario
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 8
    Top = 128
    Width = 244
    Height = 21
    DataField = 'FUNCAO'
    DataSource = DsUsuario
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 8
    Top = 168
    Width = 244
    Height = 21
    DataField = 'OBSERVACAO'
    DataSource = DsUsuario
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 8
    Top = 248
    Width = 94
    Height = 21
    DataField = 'SENHA'
    DataSource = DsUsuario
    TabOrder = 4
  end
  object DBEdit6: TDBEdit
    Left = 8
    Top = 208
    Width = 94
    Height = 21
    DataField = 'LOGIN'
    DataSource = DsUsuario
    TabOrder = 5
  end
  object DBEdit7: TDBEdit
    Left = 8
    Top = 288
    Width = 94
    Height = 21
    DataField = 'CURADOR'
    DataSource = DsUsuario
    TabOrder = 6
  end
  object DBEdit8: TDBEdit
    Left = 8
    Top = 328
    Width = 64
    Height = 21
    DataField = 'NIVEL_ACESSO'
    DataSource = DsUsuario
    TabOrder = 7
  end
  object DBEdit9: TDBEdit
    Left = 112
    Top = 248
    Width = 94
    Height = 21
    DataField = 'CONFIRMA_SENHA'
    DataSource = DsUsuario
    TabOrder = 8
  end
  object DBNavigator1: TDBNavigator
    Left = 168
    Top = 8
    Width = 240
    Height = 25
    DataSource = DsUsuario
    TabOrder = 9
  end
  object DBGrid1: TDBGrid
    Left = 264
    Top = 40
    Width = 673
    Height = 305
    DataSource = DsUsuario
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object usuario: TwwQuery
    Active = True
    CachedUpdates = True
    AfterPost = usuarioAfterPost
    DatabaseName = 'ISade'
    SessionName = 'Default'
    SQL.Strings = (
      'Select * From USUARIO'
      'Order by ID')
    UpdateMode = upWhereKeyOnly
    UpdateObject = UpUsuario
    ValidateWithMask = True
    Left = 137
    Top = 276
    object usuarioID: TIntegerField
      DisplayWidth = 6
      FieldName = 'ID'
      Origin = 'ISADE.USUARIO.ID'
    end
    object usuarioNOME: TStringField
      DisplayWidth = 48
      FieldName = 'NOME'
      Origin = 'ISADE.USUARIO.NOME'
      Size = 40
    end
    object usuarioFUNCAO: TStringField
      DisplayWidth = 48
      FieldName = 'FUNCAO'
      Origin = 'ISADE.USUARIO.FUNCAO'
      Size = 40
    end
    object usuarioOBSERVACAO: TStringField
      DisplayWidth = 48
      FieldName = 'OBSERVACAO'
      Origin = 'ISADE.USUARIO.OBSERVACAO'
      Size = 40
    end
    object usuarioSENHA: TStringField
      DisplayWidth = 18
      FieldName = 'SENHA'
      Origin = 'ISADE.USUARIO.SENHA'
      Size = 15
    end
    object usuarioLOGIN: TStringField
      DisplayWidth = 18
      FieldName = 'LOGIN'
      Origin = 'ISADE.USUARIO.LOGIN'
      Size = 15
    end
    object usuarioCURADOR: TStringField
      DisplayWidth = 18
      FieldName = 'CURADOR'
      Origin = 'ISADE.USUARIO.CURADOR'
      Size = 15
    end
    object usuarioNIVEL_ACESSO: TIntegerField
      DisplayWidth = 16
      FieldName = 'NIVEL_ACESSO'
      Origin = 'ISADE.USUARIO.NIVEL_ACESSO'
    end
    object usuarioCONFIRMA_SENHA: TStringField
      DisplayWidth = 20
      FieldName = 'CONFIRMA_SENHA'
      Origin = 'ISADE.USUARIO.CONFIRMA_SENHA'
      Size = 15
    end
  end
  object DsUsuario: TwwDataSource
    DataSet = usuario
    Left = 165
    Top = 276
  end
  object UpUsuario: TUpdateSQL
    ModifySQL.Strings = (
      'update USUARIO'
      'set'
      '  NOME = :NOME,'
      '  FUNCAO = :FUNCAO,'
      '  OBSERVACAO = :OBSERVACAO,'
      '  SENHA = :SENHA,'
      '  LOGIN = :LOGIN,'
      '  CURADOR = :CURADOR,'
      '  NIVEL_ACESSO = :NIVEL_ACESSO,'
      '  CONFIRMA_SENHA = :CONFIRMA_SENHA'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into USUARIO'
      
        '  (NOME, FUNCAO, OBSERVACAO, SENHA, LOGIN, CURADOR, NIVEL_ACESSO' +
        ', '
      'CONFIRMA_SENHA)'
      'values'
      '  (:NOME, :FUNCAO, :OBSERVACAO, :SENHA, :LOGIN, :CURADOR, '
      ':NIVEL_ACESSO, '
      '   :CONFIRMA_SENHA)')
    DeleteSQL.Strings = (
      'delete from USUARIO'
      'where'
      '  ID = :OLD_ID')
    Left = 137
    Top = 304
  end
  object dbMain: TDatabase
    AliasName = 'ISade'
    Connected = True
    DatabaseName = 'ISade'
    HandleShared = True
    LoginPrompt = False
    Params.Strings = (
      'USER NAME=SYSDBA'
      'PASSWORD=FgB@8165'
      'TRIM CHAR=True'
      'SQLDialect=3'
      '')
    SessionName = 'Default'
    Left = 170
    Top = 306
  end
end
