object fmLogST: TfmLogST
  Left = 245
  Top = 178
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 
    'Relação de Modificações ocorridas nas regras de Substituição Tri' +
    'butária'
  ClientHeight = 457
  ClientWidth = 1050
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Shape5: TShape
    Left = 205
    Top = 12
    Width = 836
    Height = 3
    Brush.Color = 11106843
    Pen.Color = 14789952
  end
  object Shape4: TShape
    Left = 4
    Top = 4
    Width = 237
    Height = 18
    Brush.Color = 14789952
    Pen.Color = 11764252
    Shape = stRoundRect
  end
  object Label13: TLabel
    Left = 7
    Top = 5
    Width = 175
    Height = 13
    Caption = 'Log das Informações Principais'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Shape1: TShape
    Left = 200
    Top = 204
    Width = 841
    Height = 3
    Brush.Color = 11106843
    Pen.Color = 14789952
  end
  object Shape2: TShape
    Left = 4
    Top = 196
    Width = 237
    Height = 18
    Brush.Color = 14789952
    Pen.Color = 11764252
    Shape = stRoundRect
  end
  object Label73: TLabel
    Left = 9
    Top = 198
    Width = 215
    Height = 13
    Caption = 'Unidades da Federação com Protocolo'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object gEststr: TDBGrid
    Left = 4
    Top = 27
    Width = 1037
    Height = 158
    DataSource = dsEststr
    Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODSTR'
        Title.Caption = 'Código'
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMSTR'
        Title.Caption = 'Descrição da Regra'
        Width = 538
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPSTR'
        Title.Caption = 'Tipo da Regra'
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTELOG'
        Title.Caption = 'Data'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HRELOG'
        Title.Caption = 'Hora'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OPELOG'
        Title.Caption = 'Operação'
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOGUSU'
        Title.Caption = 'Usuário Logado'
        Width = 105
        Visible = True
      end>
  end
  object gEstufe: TDBGrid
    Left = 4
    Top = 219
    Width = 1039
    Height = 230
    DataSource = dsEstufe
    Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODSTR'
        Title.Caption = 'Código'
        Width = 114
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPSTR'
        Title.Caption = 'Tipo'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTELOG'
        Title.Caption = 'Data'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HRELOG'
        Title.Caption = 'Hora'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OPERACAO'
        Title.Caption = 'Operação'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USUARIO'
        Title.Caption = 'Usuário logado'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SIGUFE'
        Title.Caption = 'UF(D)'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ICMSUB'
        Title.Caption = 'Aliq. Interna'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BASESB'
        Title.Caption = 'Base (%)'
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODCFO'
        Title.Caption = 'CFOP'
        Width = 43
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODTXF'
        Title.Caption = 'Texto Fiscal'
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UFEMITENTE'
        Title.Caption = 'UF(E)'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REGIME'
        Title.Caption = 'Regime Tributario'
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MRGMVA'
        Title.Caption = 'MVA(%)'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MRGMVA_SINIEF'
        Title.Caption = 'SINIEF20 (%)'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IVA_ORIGNAL'
        Title.Caption = 'IVA Original'
        Visible = True
      end>
  end
  object eststr: TwwQuery
    DatabaseName = 'Isade'
    SQL.Strings = (
      'select dtelog,'
      '       case'
      '          when opelog = '#39'UPD'#39' then '#39'ALTEROU'#39
      '          when opelog = '#39'INS'#39' then '#39'INSERIU'#39
      '          when opelog = '#39'DEL'#39' then '#39'APAGOU'#39
      '       end OPELOG,'
      '       seqlog, hrelog, codstr, tipstr, nomstr,'
      
        '       (select logusu from gerusu where codusu = l.usulog) LOGUS' +
        'U'
      'from log_eststr l'
      'where l.codstr = :CODSTR and l.tipstr = :TIPSTR')
    ValidateWithMask = True
    Left = 232
    Top = 72
    ParamData = <
      item
        DataType = ftString
        Name = 'CODSTR'
        ParamType = ptInput
        Value = 'FUSIVEIS'
      end
      item
        DataType = ftString
        Name = 'TIPSTR'
        ParamType = ptInput
        Value = 'FUSIVEIS'
      end>
  end
  object dsEststr: TwwDataSource
    DataSet = eststr
    Left = 264
    Top = 72
  end
  object dsEstufe: TwwDataSource
    DataSet = estufe
    Left = 408
    Top = 120
  end
  object estufe: TwwQuery
    DatabaseName = 'Isade'
    SQL.Strings = (
      'select'
      '       case'
      '          when opelog = '#39'UPD'#39' then '#39'ALTEROU'#39
      '          when opelog = '#39'INS'#39' then '#39'INSERIU'#39
      '          when opelog = '#39'DEL'#39' then '#39'APAGOU'#39
      '       end OPERACAO,'
      
        '       (select logusu from gerusu where codusu = l.usulog) USUAR' +
        'IO,'
      
        '       (select nomregtrib from finregtrib where numregtrib = l.c' +
        'odregtrib) Regime,'
      '       l.*'
      'from log_estufe l'
      'where codstr = :CODSTR and l.tipstr = :TIPSTR'
      'order by SIGUFE')
    ValidateWithMask = True
    Left = 376
    Top = 120
    ParamData = <
      item
        DataType = ftString
        Name = 'CODSTR'
        ParamType = ptInput
        Value = 'FUSIVEIS'
      end
      item
        DataType = ftString
        Name = 'TIPSTR'
        ParamType = ptInput
        Value = 'Entrada'
      end>
    object estufeOPERACAO: TStringField
      DisplayWidth = 10
      FieldName = 'OPERACAO'
      FixedChar = True
      Size = 7
    end
    object estufeUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object estufeDTELOG: TDateTimeField
      FieldName = 'DTELOG'
    end
    object estufeOPELOG: TStringField
      FieldName = 'OPELOG'
      FixedChar = True
      Size = 3
    end
    object estufeSEQLOG: TIntegerField
      FieldName = 'SEQLOG'
    end
    object estufeHRELOG: TStringField
      FieldName = 'HRELOG'
      FixedChar = True
      Size = 8
    end
    object estufeUSULOG: TIntegerField
      FieldName = 'USULOG'
    end
    object estufeCODSTR: TStringField
      FieldName = 'CODSTR'
      FixedChar = True
    end
    object estufeTIPSTR: TStringField
      FieldName = 'TIPSTR'
      Size = 7
    end
    object estufeSIGUFE: TStringField
      FieldName = 'SIGUFE'
      FixedChar = True
      Size = 2
    end
    object estufeICMSUB: TFloatField
      FieldName = 'ICMSUB'
      DisplayFormat = '#,##0.00%'
    end
    object estufeMRGSUB: TFloatField
      FieldName = 'MRGSUB'
      DisplayFormat = '#,##0.00%'
    end
    object estufeBASESB: TFloatField
      FieldName = 'BASESB'
      DisplayFormat = '#,##0.00%'
    end
    object estufeCODCFO: TStringField
      FieldName = 'CODCFO'
      FixedChar = True
      Size = 15
    end
    object estufeREGICM: TStringField
      FieldName = 'REGICM'
      FixedChar = True
    end
    object estufeTIPICM: TStringField
      FieldName = 'TIPICM'
      Size = 7
    end
    object estufeREGIPI: TStringField
      FieldName = 'REGIPI'
      FixedChar = True
      Size = 30
    end
    object estufeTIPIPI: TStringField
      FieldName = 'TIPIPI'
      Size = 7
    end
    object estufeCODTXF: TStringField
      FieldName = 'CODTXF'
      FixedChar = True
      Size = 30
    end
    object estufeCODTME: TStringField
      FieldName = 'CODTME'
      FixedChar = True
      Size = 4
    end
    object estufeDTEENV: TDateTimeField
      FieldName = 'DTEENV'
    end
    object estufeCODTCL: TIntegerField
      FieldName = 'CODTCL'
    end
    object estufeUFEMITENTE: TStringField
      FieldName = 'UFEMITENTE'
      FixedChar = True
      Size = 3
    end
    object estufeCODREGTRIB: TIntegerField
      FieldName = 'CODREGTRIB'
    end
    object estufeMRGMVA: TFloatField
      FieldName = 'MRGMVA'
      DisplayFormat = '#,##0.00%'
    end
    object estufeMRGMVA_SINIEF: TFloatField
      FieldName = 'MRGMVA_SINIEF'
      DisplayFormat = '#,##0.00%'
    end
    object estufeIVA_ORIGNAL: TFloatField
      FieldName = 'IVA_ORIGNAL'
      DisplayFormat = '#,##0.00%'
    end
    object estufeREGIME: TStringField
      FieldName = 'REGIME'
      Size = 70
    end
  end
end
