object fmFcp: TfmFcp
  Left = 268
  Top = 189
  BorderStyle = bsSingle
  Caption = 'Fundo de Combate à Pobreza'
  ClientHeight = 354
  ClientWidth = 770
  Color = 15788249
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pcStr: TPageControl
    Left = 0
    Top = 0
    Width = 771
    Height = 353
    ActivePage = pcPag2
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Style = tsButtons
    TabOrder = 0
    TabWidth = 118
    object pcPag1: TTabSheet
      Caption = '&Visualizar'
      object Shape1: TShape
        Left = 0
        Top = 99
        Width = 237
        Height = 27
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Shape7: TShape
        Left = 0
        Top = 0
        Width = 237
        Height = 18
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Shape11: TShape
        Left = 0
        Top = 300
        Width = 762
        Height = 21
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Label12: TLabel
        Left = 4
        Top = 304
        Width = 253
        Height = 13
        Caption = 'Crtl+'#39'I'#39'-Incluir Ctrl+'#39'E'#39'-Excluir Ctrl+'#39'S'#39'-Salvar'
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
      object Label1: TLabel
        Left = 4
        Top = 107
        Width = 116
        Height = 13
        Caption = 'Regras selecionadas'
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
      object Label4: TLabel
        Left = 2
        Top = 24
        Width = 41
        Height = 13
        Caption = 'Código:'
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
      object Label8: TLabel
        Left = 4
        Top = 2
        Width = 154
        Height = 13
        Caption = 'Informações para pesquisa'
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
      object Shape2: TShape
        Left = 238
        Top = 8
        Width = 523
        Height = 3
        Brush.Color = 11106843
        Pen.Color = 14789952
      end
      object Shape3: TShape
        Left = 238
        Top = 112
        Width = 523
        Height = 3
        Brush.Color = 11106843
        Pen.Color = 14789952
      end
      object Label11: TLabel
        Left = 2
        Top = 48
        Width = 57
        Height = 13
        Caption = 'Operação:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Panel3: TPanel
        Left = 0
        Top = 130
        Width = 762
        Height = 167
        BevelOuter = bvNone
        Color = 14789952
        TabOrder = 0
        object grREGRA_FCP: ThGrid
          Tag = 1
          Left = 1
          Top = 1
          Width = 760
          Height = 165
          Selected.Strings = (
            'ID_REGRA_FCP'#9'10'#9'ID'
            'COD_REGRA_FCP'#9'100'#9'Código'
            'TIP_FCP'#9'11'#9'Tipo')
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          BorderStyle = bsNone
          Color = 16577773
          DataSource = DsREGRA_FCP
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyOptions = []
          Options = [dgTitles, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
          ParentFont = False
          TabOrder = 0
          TitleAlignment = taLeftJustify
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = [fsBold]
          TitleLines = 1
          TitleButtons = False
          IndicatorColor = icYellow
          CorDeFoco = clInfoBk
        end
      end
      object EdPsqCodStr: TdxColorEdit
        Left = 65
        Top = 20
        Width = 136
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = 14789952
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 1
        CharCase = ecUpperCase
        MaxLength = 10
        CorDeFoco = clInfoBk
        StoredValues = 2
      end
      object BbPesquisa: TBitBtn
        Left = 334
        Top = 17
        Width = 152
        Height = 45
        Caption = '&Selecionar'
        Default = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = BbPesquisaClick
        Glyph.Data = {
          36080000424D3608000000000000360400002800000020000000200000000100
          0800000000000004000000000000000000000001000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
          A600CCFFFF0099FFFF0066FFFF0033FFFF00FFCCFF00CCCCFF0099CCFF0066CC
          FF0033CCFF0000CCFF00FF99FF00CC99FF009999FF006699FF003399FF000099
          FF00FF66FF00CC66FF009966FF006666FF003366FF000066FF00FF33FF00CC33
          FF009933FF006633FF003333FF000033FF00CC00FF009900FF006600FF003300
          FF00FFFFCC00CCFFCC0099FFCC0066FFCC0066FFCC0033FFCC0000FFCC00FFCC
          CC00CCCCCC0099CCCC0066CCCC0033CCCC0000CCCC00FF99CC00CC99CC009999
          CC006699CC003399CC000099CC00FF66CC00CC66CC009966CC006666CC003366
          CC000066CC00FF33CC00CC33CC009933CC006633CC003333CC000033CC00FF00
          CC00CC00CC009900CC006600CC003300CC000000CC00FFFF9900CCFF990099FF
          990066FF990033FF990000FF9900FFCC9900CCCC990099CC990066CC990033CC
          990000CC9900FF999900CC99990099999900669999003399990000999900FF66
          9900CC66990099669900666699003366990000669900FF339900CC3399009933
          9900663399003333990000339900FF009900CC00990099009900660099003300
          990000009900FFFF6600CCFF660099FF660066FF660033FF660000FF6600FFCC
          6600CCCC660099CC660066CC660033CC660000CC6600FF996600CC9966009999
          6600669966003399660000996600FF666600CC66660099666600666666003366
          660000666600FF336600CC33660099336600663366003333660000336600FF00
          6600CC00660099006600660066003300660000006600FFFF3300CCFF330099FF
          330066FF330033FF330000FF3300FFCC3300CCCC330099CC330066CC330033CC
          330000CC3300FF993300CC99330099993300669933003399330000993300FF66
          3300CC66330099663300666633003366330000663300FF333300CC3333009933
          3300663333003333330000333300FF003300CC00330099003300660033003300
          330000003300CCFF000099FF000066FF000033FF0000FFCC0000CCCC000099CC
          000066CC000033CC000000CC0000FF990000CC99000099990000669900003399
          000000990000FF660000CC66000099660000666600000066000033660000FF33
          0000CC33000099330000663300003333000000330000CC000000990000006600
          0000330000000000DD000000BB000000AA000000880000007700000055000000
          44000000220000DD000000BB000000AA00000088000000770000005500000044
          000000220000DDDDDD0055555500777777007777770044444400222222001111
          110077000000550000004400000022000000F0FBFF00A4A0A000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00323232323232
          323232000000000000000000EDEDED3232323232323232323232323232323232
          00000031313131FF5CFF5C5C000000EDEDED3232323232323232323232320000
          31313131313131FF5CFF5C5C5C5C5C0000EDEDED323232323232323232005C5C
          31313131313131FF5CFF5C5C5C5C5C5C5C00EDEDED32323232323232005C5C5C
          31313131313131FF5CFF5C5C5C5C5C5C5C5C00EDEDED3232323232005C5C5C5C
          3131310000000000000000005C5C5C5C5C5C5C00EDEDED323232005C5C5C5C5C
          000000FFFFFFFFFFFFFFFFFF0000005C5C5C5C5C00EDED323232005C5C5C0000
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00005C5C5C00EDEDED3232005C5C00FFFF
          FFFF00000000000000000000FFFFFFFFFF005C5C00EDEDED3232005C00FFFFFF
          00005B5B5B5B5B5B5B5B5B5B000000FFFFFF005C00EDEDEDED320000FFFFFF00
          5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B00FFFFFF0000EDEDEDED3200FFFFFF0087
          5B5B5B5B5B5B5B5B5BFFFFFF5B5B5B5B00FFFFFF00EDEDEDED3200FFFF005C5B
          875B5B5B5B5B5B5B5B5B5B5BFF5B5B875B00FFFF00EDEDED323200FFFF005C5C
          5B8787315B5B5B5B5B5B5B5BFF87875B5C00FFFF00EDEDED323200FFFF005C5C
          5C5B31FF3187878787878787875B5C5C5C00FFFF00EDED32323200FFFFFF005C
          5C5C5C315B5B5B5B5B5B5B5B5B5CF75B00FFFFFF00ED323232323200FFFFFF00
          5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C00FFFFFF00323232323232323200FFFFFF
          0000005C5C5C5C5C5C5C5C5C5C0000FFFFFF003232323232323232323200FFFF
          FFFFFF00000000000000000000FFFFFFFF00EDED323232323232323232320000
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00005D00EDED3232323232323232323232
          000000FFFFFFFFFFFFFFFFFFFF00000707075D00EDED32323232323232323232
          3232320000000000000000000007FFFF0707070000EDED323232323232323232
          323232323232323232323232320007FFFF0700000000EDED3232323232323232
          323232323232323232323232323200000000F100000000EDED32323232323232
          32323232323232323232323232323200F0EDF0F100000000EDED323232323232
          3232323232323232323232323232323200F0EDF0F100000000ED323232323232
          323232323232323232323232323232323200F0EDF0F100000000323232323232
          32323232323232323232323232323232323200F0EDF0F1000000323232323232
          3232323232323232323232323232323232323200F0EDF0F10000323232323232
          323232323232323232323232323232323232323200F0EDF0F100323232323232
          3232323232323232323232323232323232323232320000000032323232323232
          3232323232323232323232323232323232323232323232323232}
      end
      object rgOrdem: TRadioGroup
        Left = 490
        Top = 22
        Width = 137
        Height = 82
        Caption = ' Exibido Por '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'Id'
          'Código'
          'Tipo')
        ParentFont = False
        TabOrder = 3
      end
      object rgBusca: TRadioGroup
        Left = 630
        Top = 22
        Width = 132
        Height = 82
        Caption = ' Tipo de Busca'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'Iniciais'
          'Inteligente')
        ParentFont = False
        TabOrder = 4
      end
      object EdPsqTipStr: TdxColorPickEdit
        Left = 65
        Top = 44
        Width = 136
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = 14789952
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 5
        HideSelection = False
        Text = 'Todos'
        DropDownListStyle = True
        Items.Strings = (
          'Saida'
          'Entrada'
          'Todos')
        CorDeFoco = clInfoBk
      end
    end
    object pcPag2: TTabSheet
      Caption = '&Identificação'
      object Shape5: TShape
        Left = 238
        Top = 8
        Width = 523
        Height = 3
        Brush.Color = 11106843
        Pen.Color = 14789952
      end
      object Shape4: TShape
        Left = 0
        Top = 0
        Width = 237
        Height = 18
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Label13: TLabel
        Left = 4
        Top = 2
        Width = 129
        Height = 13
        Caption = 'Informações principais'
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
      object Label14: TLabel
        Left = 2
        Top = 24
        Width = 16
        Height = 13
        Caption = 'ID:'
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
      object Label15: TLabel
        Left = 227
        Top = 24
        Width = 41
        Height = 13
        Caption = 'Código:'
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
      object Shape6: TShape
        Left = 0
        Top = 46
        Width = 760
        Height = 27
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Label73: TLabel
        Left = 4
        Top = 54
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
      object Label16: TLabel
        Left = 583
        Top = 24
        Width = 57
        Height = 13
        Caption = 'Operação:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object EdCodStr: TdxDBColorEdit
        Left = 65
        Top = 20
        Width = 136
        Color = 16577773
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14789952
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 0
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'ID_REGRA_FCP'
        DataSource = DsREGRA_FCP
        MaxLength = 10
        CorDeFoco = clInfoBk
        StoredValues = 3
      end
      object EdNomStr: TdxDBColorEdit
        Left = 272
        Top = 20
        Width = 308
        Hint = 'É aconselhável a utilização do NCM como Código  para a Regra'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = 14789952
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 1
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'COD_REGRA_FCP'
        DataSource = DsREGRA_FCP
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object pEstUfe: TPanel
        Left = 1
        Top = 237
        Width = 763
        Height = 83
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 15788249
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -7
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        object Label28: TLabel
          Left = 6
          Top = 8
          Width = 16
          Height = 13
          Caption = 'ID:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label25: TLabel
          Left = 6
          Top = 32
          Width = 50
          Height = 13
          Caption = 'Aliquota:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label19: TLabel
          Left = 6
          Top = 59
          Width = 17
          Height = 13
          Caption = 'UF:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object edAliquota: TdxDBColorCurrencyEdit
          Left = 67
          Top = 29
          Width = 65
          Color = 16577773
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = 14859373
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          Style.ButtonTransparence = ebtInactive
          Style.HotTrack = True
          Style.Shadow = True
          TabOrder = 1
          Alignment = taRightJustify
          DataField = 'ALIQ_CFP'
          DataSource = dsREGRA_FCP_UF
          DisplayFormat = '0.00'
          Nullable = False
          UseThousandSeparator = True
          CorDeFoco = clInfoBk
          StoredValues = 17
        end
        object edUfEmitente: TdxDBColorEdit
          Left = 67
          Top = 4
          Width = 65
          Color = 16577773
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderColor = 14789952
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          Style.ButtonTransparence = ebtInactive
          Style.HotTrack = True
          Style.Shadow = True
          TabOrder = 0
          Alignment = taLeftJustify
          CharCase = ecUpperCase
          DataField = 'ID_REGRA_FCP_UF'
          DataSource = dsREGRA_FCP_UF
          MaxLength = 2
          CorDeFoco = clInfoBk
          StoredValues = 3
        end
        object EdSigUfe: TdxDBColorEdit
          Left = 67
          Top = 54
          Width = 66
          Color = 16577773
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderColor = 14789952
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          Style.ButtonTransparence = ebtInactive
          Style.HotTrack = True
          Style.Shadow = True
          TabOrder = 2
          Alignment = taLeftJustify
          CharCase = ecUpperCase
          DataField = 'SIGUFE'
          DataSource = dsREGRA_FCP_UF
          CorDeFoco = clInfoBk
          StoredValues = 1
        end
        object CbNomUfe: TdxDBColorLookupEdit
          Left = 135
          Top = 54
          Width = 621
          Color = 16577773
          DragMode = dmAutomatic
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderColor = 14789952
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          Style.ButtonTransparence = ebtInactive
          Style.HotTrack = True
          Style.Shadow = True
          TabOrder = 3
          TabStop = False
          DataField = 'SIGUFE'
          DataSource = dsREGRA_FCP_UF
          ReadOnly = False
          DropDownWidth = 700
          ListFieldName = 'NOMUFE'
          KeyFieldName = 'SIGUFE'
          ListSource = DsGerUfe
          LookupKeyValue = 'RJ'
          CorDeFoco = clInfoBk
          StoredValues = 64
        end
      end
      object Panel8: TPanel
        Left = 534
        Top = 47
        Width = 225
        Height = 25
        BevelOuter = bvNone
        Color = 14789952
        TabOrder = 4
        object nvUfe: ThDBNavigator
          Left = -56
          Top = -6
          Width = 281
          Height = 31
          BevelOuter = bvNone
          Caption = ' '
          Color = 14789952
          TabOrder = 0
          OnInclui = nvUfeAltera
          OnAltera = nvUfeAltera
          OnSalva = nvUfeSalva
          DataSource = dsREGRA_FCP_UF
          BaseAtualizar = 'EstIcmEstTxf'
          UsaAppend = True
          Salvar = False
          EnabledButtons = [nbAtualizar, nbInclui, nbExclui, nbSalva, nbCancela, nbNavega]
        end
      end
      object grUfe: ThGrid
        Tag = 1
        Left = 1
        Top = 75
        Width = 760
        Height = 157
        TabStop = False
        Selected.Strings = (
          'ID_REGRA_FCP_UF'#9'5'#9'ID'#9'F'
          'SIGUFE'#9'106'#9'U.F.'#9'F'
          'ALIQ_CFP'#9'12'#9'Aliquota'#9'F')
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        ShowVertScrollBar = False
        Anchors = []
        BorderStyle = bsNone
        Color = 16577773
        DataSource = dsREGRA_FCP_UF
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyOptions = []
        Options = [dgTitles, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        ParentFont = False
        TabOrder = 5
        TitleAlignment = taLeftJustify
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        TitleLines = 1
        TitleButtons = False
        IndicatorColor = icYellow
        CorDeFoco = clInfoBk
      end
      object EdTipStr: TdxDBColorPickEdit
        Left = 647
        Top = 20
        Width = 109
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14789952
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 2
        DataField = 'TIP_FCP'
        DataSource = DsREGRA_FCP
        ReadOnly = False
        DropDownListStyle = True
        Items.Strings = (
          'Saida'
          'Entrada')
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
    end
  end
  object nvREGRA_FCP: ThDBNavigator
    Left = 395
    Top = -3
    Width = 369
    Height = 31
    BevelOuter = bvNone
    Caption = ' '
    Color = 15788249
    TabOrder = 1
    OnInclui = nvREGRA_FCPAltera
    OnAltera = nvREGRA_FCPAltera
    DataSource = DsREGRA_FCP
    BaseAtualizar = 'EstTxfEstSt1EstSt2ProTxf'
    UsaAppend = False
    Salvar = False
  end
  object REGRA_FCP: TwwQuery
    Active = True
    CachedUpdates = True
    AfterScroll = REGRA_FCPAfterScroll
    OnNewRecord = REGRA_FCPNewRecord
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select *'
      'From REGRA_FCP'
      'Order by ID_REGRA_FCP')
    UpdateObject = UpREGRA_FCP
    ValidateWithMask = True
    Left = 784
    Top = 4
    object REGRA_FCPID_REGRA_FCP: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'ID'
      DisplayWidth = 10
      FieldName = 'ID_REGRA_FCP'
      Origin = 'ISADE.REGRA_FCP.ID_REGRA_FCP'
    end
    object REGRA_FCPCOD_REGRA_FCP: TStringField
      DisplayLabel = 'Código'
      DisplayWidth = 100
      FieldName = 'COD_REGRA_FCP'
      Origin = 'ISADE.REGRA_FCP.COD_REGRA_FCP'
      Size = 30
    end
    object REGRA_FCPTIP_FCP: TStringField
      DisplayLabel = 'Tipo'
      DisplayWidth = 11
      FieldName = 'TIP_FCP'
      Origin = 'ISADE.REGRA_FCP.TIP_FCP'
      Size = 7
    end
  end
  object UpREGRA_FCP: TUpdateSQL
    ModifySQL.Strings = (
      'update REGRA_FCP'
      'set'
      '  ID_REGRA_FCP = :ID_REGRA_FCP,'
      '  COD_REGRA_FCP = :COD_REGRA_FCP,'
      '  TIP_FCP = :TIP_FCP'
      'where'
      '  ID_REGRA_FCP = :OLD_ID_REGRA_FCP')
    InsertSQL.Strings = (
      'insert into REGRA_FCP'
      '  (ID_REGRA_FCP, COD_REGRA_FCP, TIP_FCP)'
      'values'
      '  (:ID_REGRA_FCP, :COD_REGRA_FCP, :TIP_FCP)')
    DeleteSQL.Strings = (
      'delete from REGRA_FCP'
      'where'
      '  ID_REGRA_FCP = :OLD_ID_REGRA_FCP')
    Left = 784
    Top = 32
  end
  object DsREGRA_FCP: TwwDataSource
    DataSet = REGRA_FCP
    Left = 812
    Top = 4
  end
  object REGRA_FCP_UF: TwwQuery
    Active = True
    CachedUpdates = True
    OnNewRecord = REGRA_FCP_UFNewRecord
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select *'
      'From REGRA_FCP_UF'
      'Order by ID_REGRA_FCP_UF')
    UpdateObject = UpREGRA_FCP_UF
    ValidateWithMask = True
    Left = 848
    Top = 4
    object REGRA_FCP_UFID_REGRA_FCP_UF: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'ID'
      DisplayWidth = 5
      FieldName = 'ID_REGRA_FCP_UF'
      Origin = 'ISADE.REGRA_FCP_UF.ID_REGRA_FCP_UF'
    end
    object REGRA_FCP_UFSIGUFE: TStringField
      DisplayLabel = 'U.F.'
      DisplayWidth = 106
      FieldName = 'SIGUFE'
      Origin = 'ISADE.REGRA_FCP_UF.SIGUFE'
      FixedChar = True
      Size = 2
    end
    object REGRA_FCP_UFALIQ_CFP: TFloatField
      DisplayLabel = 'Aliquota'
      DisplayWidth = 12
      FieldName = 'ALIQ_CFP'
      Origin = 'ISADE.REGRA_FCP_UF.ALIQ_CFP'
      DisplayFormat = '#0.00'
    end
    object REGRA_FCP_UFID_REGRA_FCP: TIntegerField
      FieldName = 'ID_REGRA_FCP'
      Origin = 'ISADE.REGRA_FCP_UF.ID_REGRA_FCP'
      Visible = False
    end
  end
  object UpREGRA_FCP_UF: TUpdateSQL
    ModifySQL.Strings = (
      'update REGRA_FCP_UF'
      'set'
      '  ID_REGRA_FCP_UF = :ID_REGRA_FCP_UF,'
      '  ID_REGRA_FCP = :ID_REGRA_FCP,'
      '  SIGUFE = :SIGUFE,'
      '  ALIQ_CFP = :ALIQ_CFP'
      'where'
      '  ID_REGRA_FCP_UF = :OLD_ID_REGRA_FCP_UF')
    InsertSQL.Strings = (
      'insert into REGRA_FCP_UF'
      '  (ID_REGRA_FCP_UF, ID_REGRA_FCP, SIGUFE, ALIQ_CFP)'
      'values'
      '  (:ID_REGRA_FCP_UF, :ID_REGRA_FCP, :SIGUFE, :ALIQ_CFP)')
    DeleteSQL.Strings = (
      'delete from REGRA_FCP_UF'
      'where'
      '  ID_REGRA_FCP_UF = :OLD_ID_REGRA_FCP_UF')
    Left = 848
    Top = 32
  end
  object dsREGRA_FCP_UF: TwwDataSource
    DataSet = REGRA_FCP_UF
    Left = 876
    Top = 4
  end
  object DsGerUfe: TwwDataSource
    DataSet = GerUfe
    Left = 941
    Top = 4
  end
  object GerUfe: TwwQuery
    Active = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select GerUfe.SigUfe,GerUfe.NomUfe From GerUfe')
    ValidateWithMask = True
    Left = 913
    Top = 4
    object GerUfeSIGUFE: TStringField
      FieldName = 'SIGUFE'
      Origin = 'ISADE.GERUFE.SIGUFE'
      FixedChar = True
      Size = 2
    end
    object GerUfeNOMUFE: TStringField
      FieldName = 'NOMUFE'
      Origin = 'ISADE.GERUFE.NOMUFE'
      FixedChar = True
      Size = 40
    end
  end
end
