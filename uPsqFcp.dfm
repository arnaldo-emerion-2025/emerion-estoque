object fmPsqFcp: TfmPsqFcp
  Left = 456
  Top = 226
  BorderStyle = bsSingle
  Caption = 'Emerion'
  ClientHeight = 271
  ClientWidth = 559
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label21: TLabel
    Left = 4
    Top = 253
    Width = 134
    Height = 13
    Caption = 'Enter - Confirmar Regra'
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
  object Label28: TLabel
    Left = 510
    Top = 253
    Width = 45
    Height = 13
    Caption = 'Esc-Sair'
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
  object dxDBEdit28: TdxDBColorEdit
    Left = 1
    Top = 42
    Width = 555
    Color = 16577773
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Style.BorderColor = 14859373
    Style.BorderStyle = xbsSingle
    Style.ButtonStyle = btsSimple
    Style.ButtonTransparence = ebtInactive
    Style.HotTrack = True
    Style.Shadow = True
    TabOrder = 0
    AutoSize = False
    CharCase = ecUpperCase
    DataField = 'CODGRU'
    CorDeFoco = clBlack
    Height = 185
  end
  object grStr: ThGrid
    Left = 3
    Top = 44
    Width = 549
    Height = 179
    Hint = 'Clicando Duas Vezes Sobre o Grid o Registro é Selecionado'
    TabStop = False
    Selected.Strings = (
      'ID_REGRA_FCP'#9'10'#9'ID_REGRA_FCP'#9'F'
      'COD_REGRA_FCP'#9'49'#9'COD_REGRA_FCP'#9'F'
      'TIP_FCP'#9'15'#9'TIP_FCP'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DsStr
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyOptions = []
    Options = [dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 1
    TitleAlignment = taCenter
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clMaroon
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
    OnDblClick = grStrDblClick
    IndicatorColor = icYellow
    CorDeFoco = clInfoBk
  end
  object Edpesquisa: TdxColorEdit
    Left = 1
    Top = 227
    Width = 555
    Color = 16577773
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Style.BorderColor = 14859373
    Style.BorderStyle = xbsSingle
    Style.ButtonStyle = btsSimple
    Style.ButtonTransparence = ebtInactive
    Style.HotTrack = True
    Style.Shadow = True
    TabOrder = 2
    Alignment = taLeftJustify
    CharCase = ecUpperCase
    MaxLength = 70
    OnChange = EdpesquisaChange
    CorDeFoco = clInfoBk
    StoredValues = 3
  end
  object dxDBGraphicEdit1: TdxDBGraphicEdit
    Left = 1
    Top = 1
    Width = 555
    Color = 16577773
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Haettenschweiler'
    Font.Style = [fsBold]
    ParentFont = False
    Style.BorderColor = 14859373
    Style.BorderStyle = xbsSingle
    Style.ButtonStyle = btsSimple
    Style.ButtonTransparence = ebtInactive
    Style.HotTrack = True
    Style.Shadow = True
    TabOrder = 3
    TabStop = False
    Caption = '(Imagem do Item)'
    DblClickActivate = False
    Stretch = True
    ToolbarLayout.Buttons = []
    ToolbarLayout.IsPopupMenu = False
    ToolbarPosStored = False
    Height = 41
  end
  object Panel3: TPanel
    Left = 3
    Top = 3
    Width = 549
    Height = 35
    BevelOuter = bvNone
    TabOrder = 4
    object Label1: TLabel
      Left = 4
      Top = 8
      Width = 214
      Height = 18
      Caption = 'Fundo de Combate à Pobreza'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object REGRA_FCP: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * From REGRA_FCP'
      'Order by ID_REGRA_FCP')
    ValidateWithMask = True
    Left = 2
    Top = 271
    object REGRA_FCPID_REGRA_FCP: TIntegerField
      Alignment = taCenter
      DisplayWidth = 10
      FieldName = 'ID_REGRA_FCP'
      Origin = 'ISADE.REGRA_FCP.ID_REGRA_FCP'
    end
    object REGRA_FCPCOD_REGRA_FCP: TStringField
      DisplayWidth = 49
      FieldName = 'COD_REGRA_FCP'
      Origin = 'ISADE.REGRA_FCP.COD_REGRA_FCP'
      Size = 30
    end
    object REGRA_FCPTIP_FCP: TStringField
      DisplayWidth = 15
      FieldName = 'TIP_FCP'
      Origin = 'ISADE.REGRA_FCP.TIP_FCP'
      Size = 7
    end
  end
  object DsStr: TwwDataSource
    DataSet = REGRA_FCP
    Left = 30
    Top = 271
  end
end
