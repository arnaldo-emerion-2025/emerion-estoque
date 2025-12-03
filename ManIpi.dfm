inherited fmManIpi: TfmManIpi
  Left = 301
  Top = 126
  Caption = 'Regras de NCM/IPI para Operações de Entradas e Saídas'
  ClientHeight = 561
  ClientWidth = 769
  Color = 15788249
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label20: TLabel
    Left = 25
    Top = 365
    Width = 90
    Height = 13
    Caption = 'Situação Tributária'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label7: TLabel
    Left = 273
    Top = 559
    Width = 155
    Height = 13
    Caption = '(%) Redução Valor do Imposto :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Label10: TLabel
    Left = 273
    Top = 583
    Width = 134
    Height = 13
    Caption = '(%) Recuperação do Valor :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Label3: TLabel
    Left = 9
    Top = 583
    Width = 53
    Height = 13
    Caption = 'Tributado :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object pcIpi: TPageControl
    Left = -1
    Top = 2
    Width = 771
    Height = 454
    ActivePage = pcPag2
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Style = tsButtons
    TabOrder = 0
    TabWidth = 93
    object pcPag1: TTabSheet
      Caption = '&Visualizar'
      OnShow = pcPag1Show
      object Shape1: TShape
        Left = 0
        Top = 112
        Width = 188
        Height = 18
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Shape7: TShape
        Left = 0
        Top = 0
        Width = 188
        Height = 18
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Shape11: TShape
        Left = 0
        Top = 346
        Width = 761
        Height = 21
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Label12: TLabel
        Left = 4
        Top = 350
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
        Top = 114
        Width = 117
        Height = 13
        Caption = 'Regras Selecionadas'
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
        Left = 1
        Top = 25
        Width = 44
        Height = 13
        Caption = 'Código :'
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
      object Label6: TLabel
        Left = 1
        Top = 49
        Width = 61
        Height = 13
        Caption = 'Descrição :'
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
        Caption = 'Informações para Pesquisa'
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
        Left = 189
        Top = 8
        Width = 573
        Height = 3
        Brush.Color = 11106843
        Pen.Color = 14789952
      end
      object Shape3: TShape
        Left = 189
        Top = 120
        Width = 573
        Height = 3
        Brush.Color = 11106843
        Pen.Color = 14789952
      end
      object Label11: TLabel
        Left = 182
        Top = 25
        Width = 104
        Height = 13
        Caption = 'Tipo de Operação :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label34: TLabel
        Left = 397
        Top = 24
        Width = 40
        Height = 13
        Caption = 'Status:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Panel3: TPanel
        Left = 0
        Top = 133
        Width = 761
        Height = 210
        BevelOuter = bvNone
        Color = 14789952
        TabOrder = 0
        object grIpi: ThGrid
          Tag = 1
          Left = 1
          Top = 1
          Width = 759
          Height = 208
          Selected.Strings = (
            'CODIPI'#9'30'#9'Código'
            'TIPIPI'#9'12'#9'Tipo'
            
              'NOMIPI'#9'40'#9'Descrição                                             ' +
              '                                                 '
            'ID_ESTNCM'#9'10'#9'NCM'
            'CSTPIS'#9'2'#9'ST. PIS'
            'CSTCOF'#9'2'#9'ST. COFINS'
            'ALIQ_PIS'#9'10'#9'Alíq. PIS'
            'ALIQ_COF'#9'10'#9'Alíq. COFINS'
            'CSTIPI'#9'2'#9'CSTIPI'
            'PERIPI'#9'10'#9'PERIPI'
            'COD_ENQ'#9'3'#9'COD_ENQ'
            'ID_ESTSIP'#9'10'#9'ID_ESTSIP'
            'ID_ESTIPI'#9'10'#9'ID_ESTIPI'
            'FLGATIVO'#9'10'#9'FLGATIVO')
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          BorderStyle = bsNone
          Color = 16577773
          DataSource = DsIpi
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
          OnDblClick = grIpiDblClick
          IndicatorColor = icYellow
          CorDeFoco = clInfoBk
        end
      end
      object EdPsqNomIpi: TdxColorEdit
        Left = 62
        Top = 45
        Width = 476
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
        TabOrder = 4
        CharCase = ecUpperCase
        CorDeFoco = clInfoBk
      end
      object EdPsqCodIpi: TdxColorEdit
        Left = 62
        Top = 21
        Width = 113
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
        TabOrder = 3
        CharCase = ecUpperCase
        MaxLength = 30
        CorDeFoco = clInfoBk
        StoredValues = 2
      end
      object BbPesquisa: TBitBtn
        Left = 387
        Top = 71
        Width = 166
        Height = 45
        Caption = '&Selecionar'
        Default = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        OnClick = bbPesquisaClick
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
        Left = 563
        Top = 18
        Width = 94
        Height = 101
        Caption = ' Exibido Por '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'Código'
          'Descrição'
          'Tipo')
        ParentFont = False
        TabOrder = 5
      end
      object rgBusca: TRadioGroup
        Left = 659
        Top = 18
        Width = 103
        Height = 101
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
        TabOrder = 6
      end
      object EdPsqTipIpi: TdxColorPickEdit
        Left = 288
        Top = 21
        Width = 104
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
        HideSelection = False
        DropDownListStyle = True
        Items.Strings = (
          'Saida'
          'Entrada'
          'Todos')
        CorDeFoco = clInfoBk
      end
      object edPsqStatus: TdxColorPickEdit
        Left = 441
        Top = 20
        Width = 120
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
        TabOrder = 2
        HideSelection = False
        DropDownListStyle = True
        Items.Strings = (
          ''
          'Ativo'
          'Inativo')
        CorDeFoco = clInfoBk
      end
    end
    object pcPag2: TTabSheet
      Caption = '&Identificação'
      object Shape5: TShape
        Left = 189
        Top = 8
        Width = 573
        Height = 3
        Brush.Color = 11106843
        Pen.Color = 14789952
      end
      object Shape4: TShape
        Left = 0
        Top = 0
        Width = 188
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
        Caption = 'Informações Principais'
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
      object GroupBox1: TGroupBox
        Left = 3
        Top = 226
        Width = 758
        Height = 68
        Caption = 'Tributação Pis'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Label19: TLabel
          Left = 9
          Top = 20
          Width = 64
          Height = 13
          Caption = 'Situação PIS:'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label22: TLabel
          Left = 9
          Top = 44
          Width = 84
          Height = 13
          Caption = '(%) Alíquota PIS:'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object EstCstPis: TdxDBColorEdit
          Left = 120
          Top = 15
          Width = 94
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
          TabOrder = 0
          OnExit = EstCstPisExit
          CharCase = ecUpperCase
          DataField = 'CSTPIS'
          DataSource = DsIpi
          CorDeFoco = clInfoBk
        end
        object dxDBColorLookupEdit2: TdxDBColorLookupEdit
          Left = 220
          Top = 15
          Width = 529
          Color = 16577773
          DragMode = dmAutomatic
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
          TabStop = False
          DataField = 'CSTPIS'
          DataSource = DsIpi
          ReadOnly = False
          DropDownWidth = 430
          ListFieldName = 'NOMPIS'
          KeyFieldName = 'SIGNFE'
          ListSource = dsPis
          LookupKeyValue = Null
          CorDeFoco = clInfoBk
          StoredValues = 64
        end
        object EstAliqPis: TdxDBColorCurrencyEdit
          Left = 120
          Top = 39
          Width = 94
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
          TabOrder = 2
          DataField = 'ALIQ_PIS'
          DataSource = DsIpi
          DisplayFormat = '0.00'
          Nullable = False
          CorDeFoco = clInfoBk
          StoredValues = 0
        end
        object dxDBCheckEdit1: TdxDBCheckEdit
          Left = 220
          Top = 40
          Width = 161
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          Caption = 'Incluir desconto SUFRAMA'
          DataField = 'FLG_DESC_ZF_PIS'
          DataSource = DsIpi
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
      end
      object GroupBox2: TGroupBox
        Left = 3
        Top = 298
        Width = 758
        Height = 68
        Caption = 'Tributação Cofins'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object Label23: TLabel
          Left = 9
          Top = 44
          Width = 106
          Height = 13
          Caption = '(%) Alíquota COFINS:'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label21: TLabel
          Left = 9
          Top = 20
          Width = 86
          Height = 13
          Caption = 'Situação COFINS:'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object dxDBColorLookupEdit3: TdxDBColorLookupEdit
          Left = 220
          Top = 15
          Width = 529
          Color = 16577773
          DragMode = dmAutomatic
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
          TabOrder = 0
          TabStop = False
          DataField = 'CSTCOF'
          DataSource = DsIpi
          ReadOnly = False
          DropDownWidth = 430
          ListFieldName = 'NOMCOF'
          KeyFieldName = 'SIGNFE'
          ListSource = dsCof
          LookupKeyValue = Null
          CorDeFoco = clInfoBk
          StoredValues = 64
        end
        object EstCstCof: TdxDBColorEdit
          Left = 120
          Top = 15
          Width = 94
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
          OnExit = EstCstCofExit
          CharCase = ecUpperCase
          DataField = 'CSTCOF'
          DataSource = DsIpi
          CorDeFoco = clInfoBk
        end
        object EstAliqCof: TdxDBColorCurrencyEdit
          Left = 120
          Top = 39
          Width = 94
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
          TabOrder = 2
          DataField = 'ALIQ_COF'
          DataSource = DsIpi
          DisplayFormat = '0.00'
          Nullable = False
          CorDeFoco = clInfoBk
          StoredValues = 0
        end
        object dxDBCheckEdit2: TdxDBCheckEdit
          Left = 220
          Top = 40
          Width = 161
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          Caption = 'Incluir desconto SUFRAMA'
          DataField = 'FLG_DESC_ZF_COF'
          DataSource = DsIpi
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
      end
      object GroupBox3: TGroupBox
        Left = 3
        Top = 24
        Width = 758
        Height = 104
        Caption = 'Identificação'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object Label14: TLabel
          Left = 9
          Top = 25
          Width = 40
          Height = 13
          Caption = 'Código :'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label15: TLabel
          Left = 9
          Top = 50
          Width = 53
          Height = 13
          Caption = 'Descrição :'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label16: TLabel
          Left = 298
          Top = 25
          Width = 92
          Height = 13
          Caption = 'Tipo de Operação :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 9
          Top = 76
          Width = 29
          Height = 13
          Caption = 'NCM :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 546
          Top = 76
          Width = 72
          Height = 13
          Caption = 'Aliquota do II :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label24: TLabel
          Left = 264
          Top = 77
          Width = 131
          Height = 13
          Caption = 'Código de Enquadramento:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object EdCodIpi: TdxDBColorEdit
          Left = 119
          Top = 21
          Width = 152
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
          DataField = 'CODIPI'
          DataSource = DsIpi
          CorDeFoco = clInfoBk
          StoredValues = 1
        end
        object EdNomIpi: TdxDBColorEdit
          Left = 118
          Top = 46
          Width = 631
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
          DataField = 'NOMIPI'
          DataSource = DsIpi
          CorDeFoco = clInfoBk
          StoredValues = 1
        end
        object EdTipIpi: TdxDBColorPickEdit
          Left = 401
          Top = 21
          Width = 100
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
          TabOrder = 2
          DataField = 'TIPIPI'
          DataSource = DsIpi
          ReadOnly = False
          DropDownListStyle = True
          Items.Strings = (
            'Saida'
            'Entrada')
          CorDeFoco = clInfoBk
          StoredValues = 64
        end
        object EdClsIpi: TdxDBColorEdit
          Left = 119
          Top = 71
          Width = 94
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
          TabOrder = 3
          OnExit = EdClsIpiExit
          Alignment = taLeftJustify
          CharCase = ecUpperCase
          DataField = 'CLSIPI'
          DataSource = DsIpi
          MaxLength = 8
          CorDeFoco = clInfoBk
          StoredValues = 3
        end
        object EdPerImp: TdxDBColorCurrencyEdit
          Left = 649
          Top = 71
          Width = 100
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
          TabOrder = 4
          DataField = 'PERIMP'
          DataSource = DsIpi
          DisplayFormat = '0.00'
          Nullable = False
          CorDeFoco = clInfoBk
          StoredValues = 0
        end
        object dxDBColorEdit2: TdxDBColorEdit
          Left = 396
          Top = 72
          Width = 94
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
          OnExit = EdClsIpiExit
          Alignment = taLeftJustify
          CharCase = ecUpperCase
          DataField = 'COD_ENQ'
          DataSource = DsIpi
          MaxLength = 3
          CorDeFoco = clInfoBk
          StoredValues = 3
        end
        object ckStatus: TDBCheckBox
          Left = 684
          Top = 23
          Width = 61
          Height = 17
          TabStop = False
          Caption = 'Ativo'
          DataField = 'FLGATIVO'
          DataSource = DsIpi
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          ValueChecked = '1'
          ValueUnchecked = '0'
          OnClick = ckStatusClick
        end
      end
      object GroupBox4: TGroupBox
        Left = 3
        Top = 130
        Width = 758
        Height = 94
        Caption = 'Tributação IPI'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object Label54: TLabel
          Left = 9
          Top = 44
          Width = 78
          Height = 13
          Caption = 'Aliquota do IPI :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 220
          Top = 44
          Width = 104
          Height = 13
          Caption = '(%) Base de Cálculo :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 9
          Top = 21
          Width = 90
          Height = 13
          Caption = 'Situação Tributária'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lbSINIEF20: TLabel
          Left = 570
          Top = 45
          Width = 55
          Height = 13
          Caption = 'SINIEF 20 :'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object Label5: TLabel
          Left = 9
          Top = 68
          Width = 64
          Height = 13
          Caption = 'Texto Fiscal :'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object EdPerIpi: TdxDBColorCurrencyEdit
          Left = 119
          Top = 40
          Width = 94
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
          TabOrder = 0
          DataField = 'PERIPI'
          DataSource = DsIpi
          DisplayFormat = '0.00'
          Nullable = False
          CorDeFoco = clInfoBk
          StoredValues = 0
        end
        object EdBasIpi: TdxDBColorCurrencyEdit
          Left = 343
          Top = 40
          Width = 94
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
          DataField = 'BASIPI'
          DataSource = DsIpi
          DisplayFormat = '0.00'
          Nullable = False
          CorDeFoco = clInfoBk
          StoredValues = 0
        end
        object dxDBColorLookupEdit1: TdxDBColorLookupEdit
          Left = 220
          Top = 16
          Width = 529
          Color = 16577773
          DragMode = dmAutomatic
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
          TabOrder = 2
          TabStop = False
          DataField = 'CSTIPI'
          DataSource = DsIpi
          ReadOnly = False
          DropDownWidth = 430
          ListFieldName = 'NOMSIP'
          KeyFieldName = 'SIGNFE'
          ListSource = dsSip
          LookupKeyValue = Null
          CorDeFoco = clInfoBk
          StoredValues = 64
        end
        object dxDBColorEdit1: TdxDBColorEdit
          Left = 119
          Top = 16
          Width = 94
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
          TabOrder = 3
          CharCase = ecUpperCase
          DataField = 'CSTIPI'
          DataSource = DsIpi
          CorDeFoco = clInfoBk
        end
        object EdFlgAnt: TdxDBColorPickEdit
          Left = 680
          Top = 40
          Width = 68
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
          TabOrder = 4
          Visible = False
          DataField = 'FLG_SINEIF20'
          DataSource = DsIpi
          ReadOnly = False
          DropDownListStyle = True
          Items.Strings = (
            'Sim'
            'Nao')
          CorDeFoco = clInfoBk
          StoredValues = 64
        end
        object CbNomTxf: TdxDBColorLookupEdit
          Left = 220
          Top = 64
          Width = 529
          Color = 16577773
          DragMode = dmAutomatic
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
          TabStop = False
          DataField = 'CODTXF'
          DataSource = DsIpi
          ReadOnly = False
          DropDownWidth = 430
          ListFieldName = 'DSRTXF;CODTXF'
          KeyFieldName = 'CODTXF'
          ListSource = DsTxf
          LookupKeyValue = Null
          CorDeFoco = clInfoBk
          StoredValues = 64
        end
        object EdCodTxf: TdxDBColorEdit
          Left = 119
          Top = 64
          Width = 94
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
          TabOrder = 6
          CharCase = ecUpperCase
          DataField = 'CODTXF'
          DataSource = DsIpi
          CorDeFoco = clInfoBk
        end
      end
    end
  end
  object nvIpi: ThDBNavigator
    Left = 397
    Top = -2
    Width = 369
    Height = 31
    BevelOuter = bvNone
    Caption = ' '
    Color = 15788249
    TabOrder = 1
    OnImprime = nvIpiImprime
    OnSalva = nvIpiSalva
    DataSource = DsIpi
    BaseAtualizar = 'EstTxfProTxf'
    UsaAppend = False
    Salvar = False
  end
  object EdRedIpi: TdxDBColorCurrencyEdit
    Left = 431
    Top = 555
    Width = 94
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
    TabOrder = 2
    Visible = False
    DataField = 'REDIPI'
    DataSource = DsIpi
    DisplayFormat = '0.00'
    Nullable = False
    CorDeFoco = clInfoBk
    StoredValues = 0
  end
  object EdRecIpi: TdxDBColorCurrencyEdit
    Left = 431
    Top = 579
    Width = 94
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
    TabOrder = 3
    Visible = False
    DataField = 'RECIPI'
    DataSource = DsIpi
    DisplayFormat = '0.00'
    Nullable = False
    CorDeFoco = clInfoBk
    StoredValues = 0
  end
  object EdTrbIpi: TdxDBColorPickEdit
    Left = 167
    Top = 579
    Width = 59
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
    TabOrder = 4
    Visible = False
    DataField = 'TRBIPI'
    DataSource = DsIpi
    ReadOnly = False
    DropDownListStyle = True
    Items.Strings = (
      'Sim'
      'Nao')
    CorDeFoco = clInfoBk
    StoredValues = 64
  end
  object quSql: TwwQuery
    Tag = 1
    CachedUpdates = True
    DatabaseName = 'ISade'
    ValidateWithMask = True
    Left = 38
    Top = 489
  end
  object EstIpi: TwwQuery
    CachedUpdates = True
    BeforeDelete = EstIpiBeforeDelete
    AfterScroll = EstIpiAfterScroll
    OnNewRecord = EstIpiNewRecord
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * From EstIpi'
      'Order by CodIpi')
    UpdateObject = UpIpi
    ValidateWithMask = True
    Left = 10
    Top = 453
    object EstIpiCODIPI: TStringField
      DisplayLabel = 'Código'
      DisplayWidth = 30
      FieldName = 'CODIPI'
      Origin = 'ISADE.ESTIPI.CODIPI'
      FixedChar = True
      Size = 30
    end
    object EstIpiTIPIPI: TStringField
      DisplayLabel = 'Tipo'
      DisplayWidth = 12
      FieldName = 'TIPIPI'
      Origin = 'ISADE.ESTIPI.TIPIPI'
      OnChange = EstIpiTIPIPIChange
      FixedChar = True
      Size = 70
    end
    object EstIpiNOMIPI: TStringField
      DisplayLabel = 
        'Descrição                                                       ' +
        '                                       '
      DisplayWidth = 40
      FieldName = 'NOMIPI'
      Origin = 'ISADE.ESTIPI.NOMIPI'
      FixedChar = True
      Size = 100
    end
    object EstIpiID_ESTNCM: TIntegerField
      DisplayLabel = 'NCM'
      DisplayWidth = 10
      FieldName = 'ID_ESTNCM'
      Origin = 'ISADE.ESTIPI.ID_ESTNCM'
    end
    object EstIpiCSTPIS: TStringField
      DisplayLabel = 'ST. PIS'
      DisplayWidth = 2
      FieldName = 'CSTPIS'
      Origin = 'ISADE.ESTIPI.CSTPIS'
      FixedChar = True
      Size = 2
    end
    object EstIpiCSTCOF: TStringField
      DisplayLabel = 'ST. COFINS'
      DisplayWidth = 2
      FieldName = 'CSTCOF'
      Origin = 'ISADE.ESTIPI.CSTCOF'
      FixedChar = True
      Size = 2
    end
    object EstIpiALIQ_PIS: TFloatField
      DisplayLabel = 'Alíq. PIS'
      DisplayWidth = 10
      FieldName = 'ALIQ_PIS'
      Origin = 'ISADE.ESTIPI.ALIQ_PIS'
    end
    object EstIpiALIQ_COF: TFloatField
      DisplayLabel = 'Alíq. COFINS'
      DisplayWidth = 10
      FieldName = 'ALIQ_COF'
      Origin = 'ISADE.ESTIPI.ALIQ_COF'
    end
    object EstIpiCSTIPI: TStringField
      DisplayWidth = 2
      FieldName = 'CSTIPI'
      Origin = 'ISADE.ESTIPI.CSTIPI'
      FixedChar = True
      Size = 2
    end
    object EstIpiPERIPI: TFloatField
      DisplayWidth = 10
      FieldName = 'PERIPI'
      Origin = 'ISADE.ESTIPI.PERIPI'
    end
    object EstIpiCOD_ENQ: TStringField
      DisplayWidth = 3
      FieldName = 'COD_ENQ'
      Origin = 'ISADE.ESTIPI.COD_ENQ'
      FixedChar = True
      Size = 3
    end
    object EstIpiID_ESTSIP: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_ESTSIP'
      Origin = 'ISADE.ESTIPI.ID_ESTSIP'
    end
    object EstIpiID_ESTIPI: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_ESTIPI'
      Origin = 'ISADE.ESTIPI.ID_ESTIPI'
    end
    object EstIpiFLGATIVO: TSmallintField
      DisplayWidth = 10
      FieldName = 'FLGATIVO'
      Origin = 'ISADE.ESTIPI.FLGATIVO'
    end
    object EstIpiFLG_DESC_ZF_PIS: TStringField
      DisplayWidth = 1
      FieldName = 'FLG_DESC_ZF_PIS'
      Origin = 'ISADE.ESTIPI.FLG_DESC_ZF_PIS'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object EstIpiFLG_DESC_ZF_COF: TStringField
      DisplayWidth = 1
      FieldName = 'FLG_DESC_ZF_COF'
      Origin = 'ISADE.ESTIPI.FLG_DESC_ZF_COF'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object EstIpiREGIPI: TStringField
      FieldName = 'REGIPI'
      Origin = 'ISADE.ESTIPI.REGIPI'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object EstIpiTRBIPI: TStringField
      FieldName = 'TRBIPI'
      Origin = 'ISADE.ESTIPI.TRBIPI'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object EstIpiREDIPI: TFloatField
      FieldName = 'REDIPI'
      Origin = 'ISADE.ESTIPI.REDIPI'
      Visible = False
    end
    object EstIpiRECIPI: TFloatField
      FieldName = 'RECIPI'
      Origin = 'ISADE.ESTIPI.RECIPI'
      Visible = False
    end
    object EstIpiBASIPI: TFloatField
      FieldName = 'BASIPI'
      Origin = 'ISADE.ESTIPI.BASIPI'
      Visible = False
    end
    object EstIpiCLSIPI: TStringField
      FieldName = 'CLSIPI'
      Origin = 'ISADE.ESTIPI.CLSIPI'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object EstIpiPERIMP: TFloatField
      FieldName = 'PERIMP'
      Origin = 'ISADE.ESTIPI.PERIMP'
      Visible = False
    end
    object EstIpiCODTXF: TStringField
      FieldName = 'CODTXF'
      Origin = 'ISADE.ESTIPI.CODTXF'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object EstIpiFLG_SINEIF20: TStringField
      FieldName = 'FLG_SINEIF20'
      Origin = 'ISADE.ESTIPI.FLG_SINEIF20'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object DsIpi: TwwDataSource
    DataSet = EstIpi
    OnDataChange = DsIpiDataChange
    Left = 38
    Top = 453
  end
  object UpIpi: TUpdateSQL
    ModifySQL.Strings = (
      'update EstIpi'
      'set'
      ''
      '  NOMIPI = :NOMIPI,'
      '  REGIPI = :REGIPI,'
      '  TRBIPI = :TRBIPI,'
      '  PERIPI = :PERIPI,'
      '  REDIPI = :REDIPI,'
      '  RECIPI = :RECIPI,'
      '  BASIPI = :BASIPI,'
      '  CLSIPI = :CLSIPI,'
      '  PERIMP = :PERIMP,'
      '  CODTXF = :CODTXF,'
      '  CSTIPI = :CSTIPI,'
      '  FLG_SINEIF20 = :FLG_SINEIF20,'
      '  CSTPIS = :CSTPIS,'
      '  CSTCOF = :CSTCOF,'
      '  ALIQ_PIS = :ALIQ_PIS,'
      '  ALIQ_COF = :ALIQ_COF,'
      '  FLG_DESC_ZF_PIS = :FLG_DESC_ZF_PIS,'
      '  FLG_DESC_ZF_COF = :FLG_DESC_ZF_COF,'
      '  COD_ENQ = :COD_ENQ,'
      '  FLGATIVO = :FLGATIVO'
      'where'
      '  CODIPI = :OLD_CODIPI and'
      '  TIPIPI = :OLD_TIPIPI')
    InsertSQL.Strings = (
      'insert into EstIpi'
      
        '  (CODIPI, TIPIPI, NOMIPI, REGIPI, TRBIPI, PERIPI, REDIPI, RECIP' +
        'I, BASIPI, '
      
        '   CLSIPI, PERIMP, CODTXF, CSTIPI, FLG_SINEIF20, CSTPIS, CSTCOF,' +
        ' ALIQ_PIS, '
      
        '   ALIQ_COF, FLG_DESC_ZF_PIS, FLG_DESC_ZF_COF, COD_ENQ, FLGATIVO' +
        ')'
      'values'
      
        '  (:CODIPI, :TIPIPI, :NOMIPI, :REGIPI, :TRBIPI, :PERIPI, :REDIPI' +
        ', :RECIPI, '
      
        '   :BASIPI, :CLSIPI, :PERIMP, :CODTXF, :CSTIPI, :FLG_SINEIF20, :' +
        'CSTPIS, '
      
        '   :CSTCOF, :ALIQ_PIS, :ALIQ_COF, :FLG_DESC_ZF_PIS, :FLG_DESC_ZF' +
        '_COF, :COD_ENQ, '
      '   :FLGATIVO)')
    DeleteSQL.Strings = (
      'delete from EstIpi'
      'where'
      '  CODIPI = :OLD_CODIPI and'
      '  TIPIPI = :OLD_TIPIPI')
    Left = 10
    Top = 489
  end
  object DsReport: TppDBPipeline
    DataSource = DsIpi
    UserName = 'DsReport'
    Left = 146
    Top = 453
  end
  object ppReport: TppReport
    AutoStop = False
    DataPipeline = DsReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    Template.FileName = 'C:\_WGSYS\Emerion\Estoque\Relatorios\RManIpi.rtm'
    Units = utMillimeters
    UserName = 'Report'
    CachePages = True
    DeviceType = 'Screen'
    Left = 174
    Top = 453
    Version = '5.0'
    mmColumnWidth = 0
    object hbReport: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 15346
      mmPrintPosition = 0
      object ppLabel20: TppLabel
        UserName = 'QrTitulo1'
        Caption = 'Regras de IPI'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 1323
        mmWidth = 24412
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Código'
        Color = clNavy
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 529
        mmTop = 10848
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Descrição'
        Color = clNavy
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 50006
        mmTop = 10848
        mmWidth = 14552
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Tipo'
        Color = clNavy
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 17463
        mmTop = 10848
        mmWidth = 6068
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = '% Aliquota'
        Color = clNavy
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 126207
        mmTop = 10848
        mmWidth = 16087
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Recuperação do Valor'
        Color = clNavy
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 177536
        mmTop = 10848
        mmWidth = 31327
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = '% Redução do Imposto'
        Color = clNavy
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 143140
        mmTop = 10848
        mmWidth = 33726
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = '% Base Calculo'
        Color = clNavy
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 209550
        mmTop = 10848
        mmWidth = 22154
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'Classificação Fiscal'
        Color = clNavy
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 232569
        mmTop = 10848
        mmWidth = 28575
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'Tributado'
        Color = clNavy
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 34131
        mmTop = 10848
        mmWidth = 15081
        BandType = 0
      end
      object ppLabel45: TppLabel
        UserName = 'Label6'
        Caption = 'Emitido Em    :   '
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 188648
        mmTop = 1323
        mmWidth = 21519
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtDateTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 210609
        mmTop = 1323
        mmWidth = 30427
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = 'Página No.   '
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 242094
        mmTop = 1323
        mmWidth = 16228
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 259292
        mmTop = 1323
        mmWidth = 1552
        BandType = 0
      end
    end
    object dbReport: TppDetailBand
      BeforePrint = dbReportBeforePrint
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
      object ppCodIpi: TppDBText
        UserName = 'CodIpi'
        DataField = 'CODIPI'
        DataPipeline = DsReport
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 529
        mmTop = 1058
        mmWidth = 16140
        BandType = 4
      end
      object ppNomIpi: TppDBText
        UserName = 'CodTdo1'
        DataField = 'NOMIPI'
        DataPipeline = DsReport
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 50006
        mmTop = 1058
        mmWidth = 75406
        BandType = 4
      end
      object ppTipIpi: TppDBText
        UserName = 'CodIpi1'
        DataField = 'TIPIPI'
        DataPipeline = DsReport
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 17463
        mmTop = 1058
        mmWidth = 15875
        BandType = 4
      end
      object ppPerIPi: TppDBText
        UserName = 'PerIPi'
        DataField = 'PERIPI'
        DataPipeline = DsReport
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 126207
        mmTop = 1058
        mmWidth = 16087
        BandType = 4
      end
      object ppRedIpi: TppDBText
        UserName = 'PerIPi1'
        DataField = 'REDIPI'
        DataPipeline = DsReport
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 143140
        mmTop = 1058
        mmWidth = 33726
        BandType = 4
      end
      object ppRecIpi: TppDBText
        UserName = 'RecIpi'
        DataField = 'RECIPI'
        DataPipeline = DsReport
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 177536
        mmTop = 1058
        mmWidth = 31221
        BandType = 4
      end
      object ppBasIpi: TppDBText
        UserName = 'BasIpi'
        DataField = 'BASIPI'
        DataPipeline = DsReport
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 209550
        mmTop = 1058
        mmWidth = 22154
        BandType = 4
      end
      object ppClsIpi: TppDBText
        UserName = 'BasIpi1'
        DataField = 'CLSIPI'
        DataPipeline = DsReport
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 232569
        mmTop = 1058
        mmWidth = 28575
        BandType = 4
      end
      object ppTrbIpi: TppDBText
        UserName = 'TrbIpi'
        DataField = 'TRBIPI'
        DataPipeline = DsReport
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 34131
        mmTop = 1058
        mmWidth = 15081
        BandType = 4
      end
    end
  end
  object quSQL2: TwwQuery
    Tag = 1
    CachedUpdates = True
    DatabaseName = 'Emerion_01'
    ValidateWithMask = True
    Left = 75
    Top = 454
  end
  object quSQL3: TwwQuery
    Tag = 1
    CachedUpdates = True
    DatabaseName = 'Emerion_02'
    ValidateWithMask = True
    Left = 103
    Top = 454
  end
  object EstTxf: TwwQuery
    CachedUpdates = True
    DatabaseName = 'ISade'
    SessionName = 'Default'
    SQL.Strings = (
      'Select CODTXF, TIPTXF, DSRTXF'
      'From EstTxf'
      'Where TipTxf = '#39'Ipi'#39
      'Order by CodTxf')
    ControlType.Strings = (
      'INTFIN;CheckBox;Sim;Nao'
      'GERLIV;CheckBox;Sim;Nao'
      'PISCOF;CheckBox;Sim;Nao'
      'ATUEST;CheckBox;Sim;Nao')
    ValidateWithMask = True
    Left = 163
    Top = 490
    object EstTxfCODTXF: TStringField
      FieldName = 'CODTXF'
      Origin = 'ISADE.ESTTXF.CODTXF'
      FixedChar = True
      Size = 30
    end
    object EstTxfTIPTXF: TStringField
      FieldName = 'TIPTXF'
      Origin = 'ISADE.ESTTXF.TIPTXF'
      FixedChar = True
      Size = 4
    end
    object EstTxfDSRTXF: TStringField
      FieldName = 'DSRTXF'
      Origin = 'ISADE.ESTTXF.DSRTXF'
      FixedChar = True
      Size = 50
    end
  end
  object DsTxf: TwwDataSource
    AutoEdit = False
    DataSet = EstTxf
    Left = 191
    Top = 490
  end
  object EstSip: TwwQuery
    CachedUpdates = True
    DatabaseName = 'ISade'
    SessionName = 'Default'
    DataSource = DsIpi
    SQL.Strings = (
      'Select * from EstSip where TIPSIP = :TIPIPI')
    ValidateWithMask = True
    Left = 75
    Top = 490
    ParamData = <
      item
        DataType = ftString
        Name = 'TIPIPI'
        ParamType = ptUnknown
      end>
    object EstSipNOMSIP: TStringField
      FieldName = 'NOMSIP'
      Origin = 'ISADE.ESTSIP.NOMSIP'
      Size = 40
    end
    object EstSipSIGNFE: TStringField
      FieldName = 'SIGNFE'
      Origin = 'ISADE.ESTSIP.SIGNFE'
      FixedChar = True
      Size = 2
    end
  end
  object dsSip: TwwDataSource
    AutoEdit = False
    DataSet = EstSip
    Left = 103
    Top = 490
  end
  object EstCof: TwwQuery
    CachedUpdates = True
    DatabaseName = 'ISade'
    SessionName = 'Default'
    DataSource = DsIpi
    SQL.Strings = (
      'Select * from EstCof'
      '')
    ValidateWithMask = True
    Left = 411
    Top = 458
    object EstCofNOMCOF: TStringField
      FieldName = 'NOMCOF'
      Origin = 'ISADE.ESTCOF.NOMCOF'
      Size = 100
    end
    object EstCofSIGNFE: TStringField
      FieldName = 'SIGNFE'
      Origin = 'ISADE.ESTCOF.SIGNFE'
      Size = 2
    end
  end
  object dsCof: TwwDataSource
    AutoEdit = False
    DataSet = EstCof
    Left = 439
    Top = 458
  end
  object EstPis: TwwQuery
    CachedUpdates = True
    DatabaseName = 'ISade'
    SessionName = 'Default'
    DataSource = DsIpi
    SQL.Strings = (
      'Select * from EstPis'
      '')
    ValidateWithMask = True
    Left = 275
    Top = 490
    object EstPisNOMPIS: TStringField
      FieldName = 'NOMPIS'
      Origin = 'ISADE.ESTPIS.NOMPIS'
      Size = 100
    end
    object EstPisSIGNFE: TStringField
      FieldName = 'SIGNFE'
      Origin = 'ISADE.ESTPIS.SIGNFE'
      Size = 2
    end
  end
  object dsPis: TwwDataSource
    AutoEdit = False
    DataSet = EstPis
    Left = 303
    Top = 490
  end
  object wwQuery3: TwwQuery
    CachedUpdates = True
    DatabaseName = 'ISade'
    SessionName = 'Default'
    DataSource = DsIpi
    SQL.Strings = (
      'Select * from EstSip'
      '')
    ValidateWithMask = True
    Left = 227
    Top = 490
    object StringField5: TStringField
      FieldName = 'NOMSIP'
      Origin = 'ISADE.ESTSIP.NOMSIP'
      Size = 40
    end
    object StringField6: TStringField
      FieldName = 'SIGNFE'
      Origin = 'ISADE.ESTSIP.SIGNFE'
      FixedChar = True
      Size = 2
    end
  end
end
