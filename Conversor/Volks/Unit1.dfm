object Form1: TForm1
  Left = 137
  Top = 205
  Width = 870
  Height = 325
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
  object Button1: TButton
    Left = 290
    Top = 128
    Width = 281
    Height = 25
    Caption = 'Importar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object ProgressBar: TProgressBar
    Left = 30
    Top = 232
    Width = 801
    Height = 16
    Min = 0
    Max = 100
    TabOrder = 1
  end
  object Database1: TDatabase
    AliasName = 'ISade'
    Connected = True
    DatabaseName = 'ISade'
    LoginPrompt = False
    Params.Strings = (
      'USERNAME=SYSDBA'
      'PASSWORD=ibsade20')
    SessionName = 'Default'
    Left = 96
    Top = 136
  end
  object UpPro: TUpdateSQL
    ModifySQL.Strings = (
      'update VwaPro'
      'set'
      '  CODCLP = :CODCLP,'
      '  CODGRU = :CODGRU,'
      '  CODSUB = :CODSUB,'
      '  CODPRO = :CODPRO,'
      '  VALVWA = :VALVWA'
      'where'
      '  CODVWA = :OLD_CODVWA')
    InsertSQL.Strings = (
      'insert into VwaPro'
      '  (CODVWA, CODCLP, CODGRU, CODSUB, CODPRO, VALVWA)'
      'values'
      '  (:CODVWA, :CODCLP, :CODGRU, :CODSUB, :CODPRO, :VALVWA)')
    DeleteSQL.Strings = (
      'delete from VwaPro'
      'where'
      '  CODVWA = :OLD_CODVWA')
    Left = 96
    Top = 192
  end
  object VwaPro: TQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * From VwaPro')
    UpdateObject = UpPro
    Left = 96
    Top = 164
    object VwaProCODVWA: TStringField
      FieldName = 'CODVWA'
      Origin = 'ISADE.VWAPRO.CODVWA'
      FixedChar = True
      Size = 14
    end
    object VwaProCODCLP: TStringField
      FieldName = 'CODCLP'
      Origin = 'ISADE.VWAPRO.CODCLP'
      FixedChar = True
      Size = 1
    end
    object VwaProCODGRU: TStringField
      FieldName = 'CODGRU'
      Origin = 'ISADE.VWAPRO.CODGRU'
      FixedChar = True
      Size = 3
    end
    object VwaProCODSUB: TStringField
      FieldName = 'CODSUB'
      Origin = 'ISADE.VWAPRO.CODSUB'
      FixedChar = True
      Size = 4
    end
    object VwaProCODPRO: TStringField
      FieldName = 'CODPRO'
      Origin = 'ISADE.VWAPRO.CODPRO'
      FixedChar = True
      Size = 5
    end
    object VwaProVALVWA: TFloatField
      FieldName = 'VALVWA'
      Origin = 'ISADE.VWAPRO.VALVWA'
    end
  end
  object quSQL: TQuery
    DatabaseName = 'ISade'
    Left = 136
    Top = 152
  end
  object Volks: TQuery
    Active = True
    DatabaseName = 'DBDEMOS'
    SQL.Strings = (
      'Select * From VwaGen')
    Left = 96
    Top = 256
    object VolksCODVW: TStringField
      FieldName = 'CODVW'
      Origin = 'DBDEMOS."VwaGen.DBF".CODVW'
    end
    object VolksGRUPO: TSmallintField
      FieldName = 'GRUPO'
      Origin = 'DBDEMOS."VwaGen.DBF".GRUPO'
    end
    object VolksSUBGRUPO: TSmallintField
      FieldName = 'SUBGRUPO'
      Origin = 'DBDEMOS."VwaGen.DBF".SUBGRUPO'
    end
    object VolksITEM: TStringField
      FieldName = 'ITEM'
      Origin = 'DBDEMOS."VwaGen.DBF".ITEM'
      Size = 5
    end
    object VolksPUNIT: TFloatField
      FieldName = 'PUNIT'
      Origin = 'DBDEMOS."VwaGen.DBF".PUNIT'
    end
  end
  object qrPsq: TQuery
    DatabaseName = 'DBDEMOS'
    Left = 136
    Top = 180
  end
end
