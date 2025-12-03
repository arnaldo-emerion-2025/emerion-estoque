inherited fmManStr: TfmManStr
  Left = 43
  Top = 49
  Caption = 'Regras de Substituição Tributária'
  ClientHeight = 450
  ClientWidth = 765
  Color = 15788249
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object pcStr: TPageControl
    Left = -1
    Top = 0
    Width = 775
    Height = 455
    ActivePage = pcPag1
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
      OnShow = pcPag1Show
      object Shape1: TShape
        Left = 0
        Top = 109
        Width = 237
        Height = 18
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
        Top = 399
        Width = 762
        Height = 21
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Label12: TLabel
        Left = 4
        Top = 403
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
        Top = 111
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
        Left = 2
        Top = 24
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
      object Label6: TLabel
        Left = 2
        Top = 48
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
        Left = 238
        Top = 8
        Width = 523
        Height = 3
        Brush.Color = 11106843
        Pen.Color = 14789952
      end
      object Shape3: TShape
        Left = 238
        Top = 117
        Width = 523
        Height = 3
        Brush.Color = 11106843
        Pen.Color = 14789952
      end
      object Label11: TLabel
        Left = 268
        Top = 24
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
      object Panel3: TPanel
        Left = 0
        Top = 130
        Width = 762
        Height = 268
        BevelOuter = bvNone
        Color = 14789952
        TabOrder = 0
        object grIcm: ThGrid
          Tag = 1
          Left = 1
          Top = 1
          Width = 760
          Height = 266
          Selected.Strings = (
            'CODSTR'#9'25'#9'Código'
            'NOMSTR'#9'78'#9'Descrição'
            'TIPSTR'#9'17'#9'Tipo de Operação     ')
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          BorderStyle = bsNone
          Color = 16577773
          DataSource = DsStr
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
          TitleLines = 3
          TitleButtons = False
          OnDblClick = grIcmDblClick
          IndicatorColor = icYellow
          CorDeFoco = clInfoBk
        end
      end
      object EdPsqNomStr: TdxColorEdit
        Left = 134
        Top = 44
        Width = 356
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
        CorDeFoco = clInfoBk
      end
      object EdPsqCodStr: TdxColorEdit
        Left = 134
        Top = 20
        Width = 105
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
        CharCase = ecUpperCase
        MaxLength = 10
        CorDeFoco = clInfoBk
        StoredValues = 2
      end
      object BbPesquisa: TBitBtn
        Left = 336
        Top = 70
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
        TabOrder = 3
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
        Left = 490
        Top = 11
        Width = 137
        Height = 104
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
        TabOrder = 4
      end
      object rgBusca: TRadioGroup
        Left = 630
        Top = 11
        Width = 132
        Height = 104
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
        TabOrder = 5
      end
      object EdPsqTipStr: TdxColorPickEdit
        Left = 373
        Top = 20
        Width = 117
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
        HideSelection = False
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
      object Label14: TLabel
        Left = 2
        Top = 24
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
        Left = 2
        Top = 48
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
        Left = 517
        Top = 24
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
      object Label2: TLabel
        Left = 19
        Top = 89
        Width = 27
        Height = 13
        Caption = 'ACRE'
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
      object Label3: TLabel
        Left = 401
        Top = 89
        Width = 44
        Height = 13
        Caption = 'PARAIBA'
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
      object Label5: TLabel
        Left = 19
        Top = 113
        Width = 47
        Height = 13
        Caption = 'ALAGOAS'
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
        Left = 19
        Top = 138
        Width = 56
        Height = 13
        Caption = 'AMAZONAS'
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
      object Label9: TLabel
        Left = 19
        Top = 161
        Width = 35
        Height = 13
        Caption = 'AMAPA'
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
      object Label10: TLabel
        Left = 401
        Top = 113
        Width = 69
        Height = 13
        Caption = 'PERNAMBUCO'
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
      object Label17: TLabel
        Left = 19
        Top = 186
        Width = 31
        Height = 13
        Caption = 'BAHIA'
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
      object Label18: TLabel
        Left = 19
        Top = 209
        Width = 34
        Height = 13
        Caption = 'CEARA'
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
      object Label19: TLabel
        Left = 19
        Top = 233
        Width = 95
        Height = 13
        Caption = 'DISTRITO FEDERAL'
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
      object Label20: TLabel
        Left = 401
        Top = 137
        Width = 28
        Height = 13
        Caption = 'PIAUI'
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
        Left = 19
        Top = 258
        Width = 84
        Height = 13
        Caption = 'ESPIRITO SANTO'
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
        Left = 19
        Top = 282
        Width = 32
        Height = 13
        Caption = 'GOIAS'
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
      object Label23: TLabel
        Left = 19
        Top = 305
        Width = 58
        Height = 13
        Caption = 'MARANHAO'
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
      object Label24: TLabel
        Left = 401
        Top = 185
        Width = 82
        Height = 13
        Caption = 'RIO DE JANEIRO'
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
      object Label25: TLabel
        Left = 401
        Top = 161
        Width = 41
        Height = 13
        Caption = 'PARANA'
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
      object Label26: TLabel
        Left = 19
        Top = 330
        Width = 72
        Height = 13
        Caption = 'MINAS GERAIS'
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
      object Label27: TLabel
        Left = 19
        Top = 354
        Width = 113
        Height = 13
        Caption = 'MATO GROSSO DO SUL'
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
      object Label28: TLabel
        Left = 19
        Top = 377
        Width = 74
        Height = 13
        Caption = 'MATO GROSSO'
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
      object Label29: TLabel
        Left = 19
        Top = 402
        Width = 27
        Height = 13
        Caption = 'PARA'
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
      object Label30: TLabel
        Left = 401
        Top = 210
        Width = 118
        Height = 13
        Caption = 'RIO GRANDE DO NORTE'
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
      object Label31: TLabel
        Left = 401
        Top = 234
        Width = 55
        Height = 13
        Caption = 'RONDONIA'
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
      object Label32: TLabel
        Left = 401
        Top = 258
        Width = 48
        Height = 13
        Caption = 'RORAIMA'
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
      object Label33: TLabel
        Left = 401
        Top = 282
        Width = 102
        Height = 13
        Caption = 'RIO GRANDE DO SUL'
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
      object Label34: TLabel
        Left = 401
        Top = 306
        Width = 88
        Height = 13
        Caption = 'SANTA CATARINA'
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
      object Label35: TLabel
        Left = 401
        Top = 329
        Width = 42
        Height = 13
        Caption = 'SERGIPE'
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
      object Label36: TLabel
        Left = 401
        Top = 353
        Width = 57
        Height = 13
        Caption = 'SAO PAULO'
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
      object Label37: TLabel
        Left = 401
        Top = 377
        Width = 58
        Height = 13
        Caption = 'TOCANTINS'
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
      object Label39: TLabel
        Left = 149
        Top = 69
        Width = 61
        Height = 13
        Caption = 'Aliquota (%)'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label40: TLabel
        Left = 241
        Top = 69
        Width = 48
        Height = 13
        Caption = 'Lucro (%)'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label41: TLabel
        Left = 295
        Top = 69
        Width = 75
        Height = 13
        Caption = 'Base de Calculo'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label43: TLabel
        Left = 537
        Top = 69
        Width = 61
        Height = 13
        Caption = 'Aliquota (%)'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label44: TLabel
        Left = 628
        Top = 69
        Width = 48
        Height = 13
        Caption = 'Lucro (%)'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label45: TLabel
        Left = 682
        Top = 69
        Width = 75
        Height = 13
        Caption = 'Base de Calculo'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object EdCodStr: TdxDBColorEdit
        Left = 134
        Top = 20
        Width = 105
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
        DataField = 'CODSTR'
        DataSource = DsStr
        MaxLength = 10
        CorDeFoco = clInfoBk
        StoredValues = 3
      end
      object EdNomStr: TdxDBColorEdit
        Left = 134
        Top = 44
        Width = 628
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
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'NOMSTR'
        DataSource = DsStr
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdTipStr: TdxDBColorPickEdit
        Left = 626
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
        TabOrder = 1
        DataField = 'TIPSTR'
        DataSource = DsStr
        ReadOnly = False
        DropDownListStyle = True
        Items.Strings = (
          'Saida'
          'Entrada')
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
      object EdTrbe16: TdxDBCheckEdit
        Left = 379
        Top = 87
        Width = 20
        Style.BorderColor = 14789952
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 59
        OnClick = EdTrbe01Click
        AutoSize = False
        DataField = 'TRBE16'
        DataSource = DsStr
        ValueChecked = 'Sim'
        ValueUnchecked = 'Nao'
        Height = 18
      end
      object EdTrbe02: TdxDBCheckEdit
        Left = -2
        Top = 111
        Width = 20
        Style.BorderColor = 14789952
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 7
        OnClick = EdTrbe01Click
        AutoSize = False
        DataField = 'TRBE02'
        DataSource = DsStr
        ValueChecked = 'Sim'
        ValueUnchecked = 'Nao'
        Height = 18
      end
      object EdTrbe03: TdxDBCheckEdit
        Left = -2
        Top = 136
        Width = 20
        Style.BorderColor = 14789952
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 11
        OnClick = EdTrbe01Click
        AutoSize = False
        DataField = 'TRBE03'
        DataSource = DsStr
        ValueChecked = 'Sim'
        ValueUnchecked = 'Nao'
        Height = 18
      end
      object EdTrbe04: TdxDBCheckEdit
        Left = -2
        Top = 159
        Width = 20
        Style.BorderColor = 14789952
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 15
        OnClick = EdTrbe01Click
        AutoSize = False
        DataField = 'TRBE04'
        DataSource = DsStr
        ValueChecked = 'Sim'
        ValueUnchecked = 'Nao'
        Height = 18
      end
      object EdTrbe17: TdxDBCheckEdit
        Left = 379
        Top = 111
        Width = 20
        Style.BorderColor = 14789952
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 63
        OnClick = EdTrbe01Click
        AutoSize = False
        DataField = 'TRBE17'
        DataSource = DsStr
        ValueChecked = 'Sim'
        ValueUnchecked = 'Nao'
        Height = 18
      end
      object EdTrbe05: TdxDBCheckEdit
        Left = -2
        Top = 184
        Width = 20
        Style.BorderColor = 14789952
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 19
        OnClick = EdTrbe01Click
        AutoSize = False
        DataField = 'TRBE05'
        DataSource = DsStr
        ValueChecked = 'Sim'
        ValueUnchecked = 'Nao'
        Height = 18
      end
      object EdTrbe06: TdxDBCheckEdit
        Left = -2
        Top = 207
        Width = 20
        Style.BorderColor = 14789952
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 23
        OnClick = EdTrbe01Click
        AutoSize = False
        DataField = 'TRBE06'
        DataSource = DsStr
        ValueChecked = 'Sim'
        ValueUnchecked = 'Nao'
        Height = 18
      end
      object EdTrbe07: TdxDBCheckEdit
        Left = -2
        Top = 231
        Width = 20
        Style.BorderColor = 14789952
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 27
        OnClick = EdTrbe01Click
        AutoSize = False
        DataField = 'TRBE07'
        DataSource = DsStr
        ValueChecked = 'Sim'
        ValueUnchecked = 'Nao'
        Height = 18
      end
      object EdTrbe18: TdxDBCheckEdit
        Left = 379
        Top = 134
        Width = 20
        Style.BorderColor = 14789952
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 67
        OnClick = EdTrbe01Click
        AutoSize = False
        DataField = 'TRBE18'
        DataSource = DsStr
        ValueChecked = 'Sim'
        ValueUnchecked = 'Nao'
        Height = 18
      end
      object EdTrbe08: TdxDBCheckEdit
        Left = -2
        Top = 256
        Width = 20
        Style.BorderColor = 14789952
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 31
        OnClick = EdTrbe01Click
        AutoSize = False
        DataField = 'TRBE08'
        DataSource = DsStr
        ValueChecked = 'Sim'
        ValueUnchecked = 'Nao'
        Height = 18
      end
      object EdTrbe10: TdxDBCheckEdit
        Left = -2
        Top = 280
        Width = 20
        Style.BorderColor = 14789952
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 35
        OnClick = EdTrbe01Click
        AutoSize = False
        DataField = 'TRBE10'
        DataSource = DsStr
        ValueChecked = 'Sim'
        ValueUnchecked = 'Nao'
        Height = 18
      end
      object EdTrbe11: TdxDBCheckEdit
        Left = -2
        Top = 303
        Width = 20
        Style.BorderColor = 14789952
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 39
        OnClick = EdTrbe01Click
        AutoSize = False
        DataField = 'TRBE11'
        DataSource = DsStr
        ValueChecked = 'Sim'
        ValueUnchecked = 'Nao'
        Height = 18
      end
      object EdTrbe20: TdxDBCheckEdit
        Left = 379
        Top = 183
        Width = 20
        Style.BorderColor = 14789952
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 75
        OnClick = EdTrbe01Click
        AutoSize = False
        DataField = 'TRBE20'
        DataSource = DsStr
        ValueChecked = 'Sim'
        ValueUnchecked = 'Nao'
        Height = 18
      end
      object EdTrbe19: TdxDBCheckEdit
        Left = 379
        Top = 159
        Width = 20
        Style.BorderColor = 14789952
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 71
        OnClick = EdTrbe01Click
        AutoSize = False
        DataField = 'TRBE19'
        DataSource = DsStr
        ValueChecked = 'Sim'
        ValueUnchecked = 'Nao'
        Height = 18
      end
      object EdTrbe12: TdxDBCheckEdit
        Left = -2
        Top = 328
        Width = 20
        Style.BorderColor = 14789952
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 43
        OnClick = EdTrbe01Click
        AutoSize = False
        DataField = 'TRBE12'
        DataSource = DsStr
        ValueChecked = 'Sim'
        ValueUnchecked = 'Nao'
        Height = 18
      end
      object EdTrbe13: TdxDBCheckEdit
        Left = -2
        Top = 352
        Width = 20
        Style.BorderColor = 14789952
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 47
        OnClick = EdTrbe01Click
        AutoSize = False
        DataField = 'TRBE13'
        DataSource = DsStr
        ValueChecked = 'Sim'
        ValueUnchecked = 'Nao'
        Height = 18
      end
      object EdTrbe14: TdxDBCheckEdit
        Left = -2
        Top = 375
        Width = 20
        Style.BorderColor = 14789952
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 51
        OnClick = EdTrbe01Click
        AutoSize = False
        Caption = 'PIAUI'
        DataField = 'TRBE14'
        DataSource = DsStr
        ValueChecked = 'Sim'
        ValueUnchecked = 'Nao'
        Height = 18
      end
      object EdTrbe15: TdxDBCheckEdit
        Left = -2
        Top = 400
        Width = 20
        Style.BorderColor = 14789952
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 55
        OnClick = EdTrbe01Click
        AutoSize = False
        Caption = 'PIAUI'
        DataField = 'TRBE15'
        DataSource = DsStr
        ValueChecked = 'Sim'
        ValueUnchecked = 'Nao'
        Height = 18
      end
      object EdIcmE01: TdxDBColorCurrencyEdit
        Left = 134
        Top = 85
        Width = 80
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
        TabOrder = 4
        Alignment = taRightJustify
        DataField = 'ICME01'
        DataSource = DsStr
        DecimalPlaces = 0
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdMlce01: TdxDBColorCurrencyEdit
        Left = 214
        Top = 85
        Width = 80
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
        TabOrder = 5
        Alignment = taRightJustify
        DataField = 'MLCE01'
        DataSource = DsStr
        MaxValue = 100
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 17
      end
      object EdBase01: TdxDBColorCurrencyEdit
        Left = 294
        Top = 85
        Width = 80
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
        TabOrder = 6
        Alignment = taRightJustify
        DataField = 'BASE01'
        DataSource = DsStr
        MaxValue = 100
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 17
      end
      object EdTrbe01: TdxDBCheckEdit
        Left = -2
        Top = 87
        Width = 20
        Style.BorderColor = 14789952
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 3
        OnClick = EdTrbe01Click
        AutoSize = False
        DataField = 'TRBE01'
        DataSource = DsStr
        ValueChecked = 'Sim'
        ValueUnchecked = 'Nao'
        Height = 19
      end
      object EdIcmE02: TdxDBColorCurrencyEdit
        Left = 134
        Top = 109
        Width = 80
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
        TabOrder = 8
        Alignment = taRightJustify
        DataField = 'ICME02'
        DataSource = DsStr
        DecimalPlaces = 0
        DisplayFormat = '##0'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdMlce02: TdxDBColorCurrencyEdit
        Left = 214
        Top = 109
        Width = 80
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
        TabOrder = 9
        Alignment = taRightJustify
        DataField = 'MLCE02'
        DataSource = DsStr
        MaxValue = 100
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 17
      end
      object EdBase02: TdxDBColorCurrencyEdit
        Left = 294
        Top = 109
        Width = 80
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
        TabOrder = 10
        Alignment = taRightJustify
        DataField = 'BASE02'
        DataSource = DsStr
        MaxValue = 100
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 17
      end
      object EdIcmE03: TdxDBColorCurrencyEdit
        Left = 134
        Top = 133
        Width = 80
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
        TabOrder = 12
        Alignment = taRightJustify
        DataField = 'ICME03'
        DataSource = DsStr
        DecimalPlaces = 0
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdMlce03: TdxDBColorCurrencyEdit
        Left = 214
        Top = 133
        Width = 80
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
        TabOrder = 13
        Alignment = taRightJustify
        DataField = 'MLCE03'
        DataSource = DsStr
        MaxValue = 100
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 17
      end
      object EdBase03: TdxDBColorCurrencyEdit
        Left = 294
        Top = 133
        Width = 80
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
        TabOrder = 14
        Alignment = taRightJustify
        DataField = 'BASE03'
        DataSource = DsStr
        MaxValue = 100
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 17
      end
      object EdIcmE04: TdxDBColorCurrencyEdit
        Left = 134
        Top = 157
        Width = 80
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
        TabOrder = 16
        Alignment = taRightJustify
        DataField = 'ICME04'
        DataSource = DsStr
        DecimalPlaces = 0
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdMlce04: TdxDBColorCurrencyEdit
        Left = 214
        Top = 157
        Width = 80
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
        TabOrder = 17
        Alignment = taRightJustify
        DataField = 'MLCE04'
        DataSource = DsStr
        MaxValue = 100
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 17
      end
      object EdBase04: TdxDBColorCurrencyEdit
        Left = 294
        Top = 157
        Width = 80
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
        TabOrder = 18
        Alignment = taRightJustify
        DataField = 'BASE04'
        DataSource = DsStr
        MaxValue = 100
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 17
      end
      object EdIcmE05: TdxDBColorCurrencyEdit
        Left = 134
        Top = 181
        Width = 80
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
        TabOrder = 20
        Alignment = taRightJustify
        DataField = 'ICME05'
        DataSource = DsStr
        DecimalPlaces = 0
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdMlce05: TdxDBColorCurrencyEdit
        Left = 214
        Top = 181
        Width = 80
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
        TabOrder = 21
        Alignment = taRightJustify
        DataField = 'MLCE05'
        DataSource = DsStr
        MaxValue = 100
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 17
      end
      object EdBase05: TdxDBColorCurrencyEdit
        Left = 294
        Top = 181
        Width = 80
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
        TabOrder = 22
        Alignment = taRightJustify
        DataField = 'BASE05'
        DataSource = DsStr
        MaxValue = 100
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 17
      end
      object EdIcmE06: TdxDBColorCurrencyEdit
        Left = 134
        Top = 205
        Width = 80
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
        TabOrder = 24
        Alignment = taRightJustify
        DataField = 'ICME06'
        DataSource = DsStr
        DecimalPlaces = 0
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdMlce06: TdxDBColorCurrencyEdit
        Left = 214
        Top = 205
        Width = 80
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
        TabOrder = 25
        Alignment = taRightJustify
        DataField = 'MLCE06'
        DataSource = DsStr
        MaxValue = 100
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 17
      end
      object EdBase06: TdxDBColorCurrencyEdit
        Left = 294
        Top = 205
        Width = 80
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
        TabOrder = 26
        Alignment = taRightJustify
        DataField = 'BASE06'
        DataSource = DsStr
        MaxValue = 100
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 17
      end
      object EdIcmE07: TdxDBColorCurrencyEdit
        Left = 134
        Top = 229
        Width = 80
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
        TabOrder = 28
        Alignment = taRightJustify
        DataField = 'ICME07'
        DataSource = DsStr
        DecimalPlaces = 0
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdMlce07: TdxDBColorCurrencyEdit
        Left = 214
        Top = 229
        Width = 80
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
        TabOrder = 29
        Alignment = taRightJustify
        DataField = 'MLCE07'
        DataSource = DsStr
        MaxValue = 100
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 17
      end
      object EdBase07: TdxDBColorCurrencyEdit
        Left = 294
        Top = 229
        Width = 80
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
        TabOrder = 30
        Alignment = taRightJustify
        DataField = 'BASE07'
        DataSource = DsStr
        MaxValue = 100
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 17
      end
      object EdIcmE08: TdxDBColorCurrencyEdit
        Left = 134
        Top = 253
        Width = 80
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
        TabOrder = 32
        Alignment = taRightJustify
        DataField = 'ICME08'
        DataSource = DsStr
        DecimalPlaces = 0
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdMlce08: TdxDBColorCurrencyEdit
        Left = 214
        Top = 253
        Width = 80
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
        TabOrder = 33
        Alignment = taRightJustify
        DataField = 'MLCE08'
        DataSource = DsStr
        MaxValue = 100
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 17
      end
      object EdBase08: TdxDBColorCurrencyEdit
        Left = 294
        Top = 253
        Width = 80
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
        TabOrder = 34
        Alignment = taRightJustify
        DataField = 'BASE08'
        DataSource = DsStr
        MaxValue = 100
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 17
      end
      object EdIcmE10: TdxDBColorCurrencyEdit
        Left = 134
        Top = 277
        Width = 80
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
        TabOrder = 36
        Alignment = taRightJustify
        DataField = 'ICME10'
        DataSource = DsStr
        DecimalPlaces = 0
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdMlce10: TdxDBColorCurrencyEdit
        Left = 214
        Top = 277
        Width = 80
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
        TabOrder = 37
        Alignment = taRightJustify
        DataField = 'MLCE10'
        DataSource = DsStr
        MaxValue = 100
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 17
      end
      object EdBase10: TdxDBColorCurrencyEdit
        Left = 294
        Top = 277
        Width = 80
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
        TabOrder = 38
        Alignment = taRightJustify
        DataField = 'BASE10'
        DataSource = DsStr
        MaxValue = 100
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 17
      end
      object EdIcmE11: TdxDBColorCurrencyEdit
        Left = 134
        Top = 301
        Width = 80
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
        TabOrder = 40
        Alignment = taRightJustify
        DataField = 'ICME11'
        DataSource = DsStr
        DecimalPlaces = 0
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdMlce11: TdxDBColorCurrencyEdit
        Left = 214
        Top = 301
        Width = 80
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
        TabOrder = 41
        Alignment = taRightJustify
        DataField = 'MLCE11'
        DataSource = DsStr
        MaxValue = 100
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 17
      end
      object EdBase11: TdxDBColorCurrencyEdit
        Left = 294
        Top = 301
        Width = 80
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
        TabOrder = 42
        Alignment = taRightJustify
        DataField = 'BASE11'
        DataSource = DsStr
        MaxValue = 100
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 17
      end
      object EdIcmE12: TdxDBColorCurrencyEdit
        Left = 134
        Top = 325
        Width = 80
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
        TabOrder = 44
        Alignment = taRightJustify
        DataField = 'ICME12'
        DataSource = DsStr
        DecimalPlaces = 0
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdMlce12: TdxDBColorCurrencyEdit
        Left = 214
        Top = 325
        Width = 80
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
        TabOrder = 45
        Alignment = taRightJustify
        DataField = 'MLCE12'
        DataSource = DsStr
        MaxValue = 100
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 17
      end
      object EdBase12: TdxDBColorCurrencyEdit
        Left = 294
        Top = 325
        Width = 80
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
        TabOrder = 46
        Alignment = taRightJustify
        DataField = 'BASE12'
        DataSource = DsStr
        MaxValue = 100
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 17
      end
      object EdIcmE13: TdxDBColorCurrencyEdit
        Left = 134
        Top = 349
        Width = 80
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
        TabOrder = 48
        Alignment = taRightJustify
        DataField = 'ICME13'
        DataSource = DsStr
        DecimalPlaces = 0
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdMlce13: TdxDBColorCurrencyEdit
        Left = 214
        Top = 349
        Width = 80
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
        TabOrder = 49
        Alignment = taRightJustify
        DataField = 'MLCE13'
        DataSource = DsStr
        MaxValue = 100
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 17
      end
      object EdBase13: TdxDBColorCurrencyEdit
        Left = 294
        Top = 349
        Width = 80
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
        TabOrder = 50
        Alignment = taRightJustify
        DataField = 'BASE13'
        DataSource = DsStr
        MaxValue = 100
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 17
      end
      object EdIcmE14: TdxDBColorCurrencyEdit
        Left = 134
        Top = 373
        Width = 80
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
        TabOrder = 52
        Alignment = taRightJustify
        DataField = 'ICME14'
        DataSource = DsStr
        DecimalPlaces = 0
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdMlce14: TdxDBColorCurrencyEdit
        Left = 214
        Top = 373
        Width = 80
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
        TabOrder = 53
        Alignment = taRightJustify
        DataField = 'MLCE14'
        DataSource = DsStr
        MaxValue = 100
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 17
      end
      object EdBase14: TdxDBColorCurrencyEdit
        Left = 294
        Top = 373
        Width = 80
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
        TabOrder = 54
        Alignment = taRightJustify
        DataField = 'BASE14'
        DataSource = DsStr
        MaxValue = 100
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 17
      end
      object EdIcmE15: TdxDBColorCurrencyEdit
        Left = 134
        Top = 397
        Width = 80
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
        TabOrder = 56
        Alignment = taRightJustify
        DataField = 'ICME15'
        DataSource = DsStr
        DecimalPlaces = 0
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdMlce15: TdxDBColorCurrencyEdit
        Left = 214
        Top = 397
        Width = 80
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
        TabOrder = 57
        Alignment = taRightJustify
        DataField = 'MLCE15'
        DataSource = DsStr
        MaxValue = 100
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 17
      end
      object EdBase15: TdxDBColorCurrencyEdit
        Left = 294
        Top = 397
        Width = 80
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
        TabOrder = 58
        Alignment = taRightJustify
        DataField = 'BASE15'
        DataSource = DsStr
        MaxValue = 100
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 17
      end
      object EdTrbe21: TdxDBCheckEdit
        Left = 379
        Top = 208
        Width = 20
        Style.BorderColor = 14789952
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 79
        OnClick = EdTrbe01Click
        AutoSize = False
        DataField = 'TRBE21'
        DataSource = DsStr
        ValueChecked = 'Sim'
        ValueUnchecked = 'Nao'
        Height = 18
      end
      object EdTrbe22: TdxDBCheckEdit
        Left = 379
        Top = 232
        Width = 20
        Style.BorderColor = 14789952
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 83
        OnClick = EdTrbe01Click
        AutoSize = False
        DataField = 'TRBE22'
        DataSource = DsStr
        ValueChecked = 'Sim'
        ValueUnchecked = 'Nao'
        Height = 18
      end
      object EdTrbe23: TdxDBCheckEdit
        Left = 379
        Top = 255
        Width = 20
        Style.BorderColor = 14789952
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 87
        OnClick = EdTrbe01Click
        AutoSize = False
        DataField = 'TRBE23'
        DataSource = DsStr
        ValueChecked = 'Sim'
        ValueUnchecked = 'Nao'
        Height = 18
      end
      object EdTrbe24: TdxDBCheckEdit
        Left = 379
        Top = 280
        Width = 20
        Style.BorderColor = 14789952
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 91
        OnClick = EdTrbe01Click
        AutoSize = False
        DataField = 'TRBE24'
        DataSource = DsStr
        ValueChecked = 'Sim'
        ValueUnchecked = 'Nao'
        Height = 18
      end
      object EdTrbe25: TdxDBCheckEdit
        Left = 379
        Top = 304
        Width = 20
        Style.BorderColor = 14789952
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 95
        OnClick = EdTrbe01Click
        AutoSize = False
        DataField = 'TRBE25'
        DataSource = DsStr
        ValueChecked = 'Sim'
        ValueUnchecked = 'Nao'
        Height = 18
      end
      object EdTrbe26: TdxDBCheckEdit
        Left = 379
        Top = 327
        Width = 20
        Style.BorderColor = 14789952
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 99
        OnClick = EdTrbe01Click
        AutoSize = False
        DataField = 'TRBE26'
        DataSource = DsStr
        ValueChecked = 'Sim'
        ValueUnchecked = 'Nao'
        Height = 18
      end
      object EdTrbe27: TdxDBCheckEdit
        Left = 379
        Top = 351
        Width = 20
        Style.BorderColor = 14789952
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 103
        OnClick = EdTrbe01Click
        AutoSize = False
        DataField = 'TRBE27'
        DataSource = DsStr
        ValueChecked = 'Sim'
        ValueUnchecked = 'Nao'
        Height = 18
      end
      object EdTrbe28: TdxDBCheckEdit
        Left = 379
        Top = 374
        Width = 20
        Style.BorderColor = 14789952
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 107
        OnClick = EdTrbe01Click
        AutoSize = False
        DataField = 'TRBE28'
        DataSource = DsStr
        ValueChecked = 'Sim'
        ValueUnchecked = 'Nao'
        Height = 18
      end
      object EdIcmE16: TdxDBColorCurrencyEdit
        Left = 521
        Top = 85
        Width = 80
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
        TabOrder = 60
        Alignment = taRightJustify
        DataField = 'ICME16'
        DataSource = DsStr
        DecimalPlaces = 0
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdMlce16: TdxDBColorCurrencyEdit
        Left = 601
        Top = 85
        Width = 80
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
        TabOrder = 61
        Alignment = taRightJustify
        DataField = 'MLCE16'
        DataSource = DsStr
        MaxValue = 100
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 17
      end
      object EdBase16: TdxDBColorCurrencyEdit
        Left = 681
        Top = 85
        Width = 80
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
        TabOrder = 62
        Alignment = taRightJustify
        DataField = 'BASE16'
        DataSource = DsStr
        MaxValue = 100
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 17
      end
      object EdIcmE17: TdxDBColorCurrencyEdit
        Left = 521
        Top = 109
        Width = 80
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
        TabOrder = 64
        Alignment = taRightJustify
        DataField = 'ICME17'
        DataSource = DsStr
        DecimalPlaces = 0
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdMlce17: TdxDBColorCurrencyEdit
        Left = 601
        Top = 109
        Width = 80
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
        TabOrder = 65
        Alignment = taRightJustify
        DataField = 'MLCE17'
        DataSource = DsStr
        MaxValue = 100
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 17
      end
      object EdBase17: TdxDBColorCurrencyEdit
        Left = 681
        Top = 109
        Width = 80
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
        TabOrder = 66
        Alignment = taRightJustify
        DataField = 'BASE17'
        DataSource = DsStr
        MaxValue = 100
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 17
      end
      object EdIcmE18: TdxDBColorCurrencyEdit
        Left = 521
        Top = 133
        Width = 80
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
        TabOrder = 68
        Alignment = taRightJustify
        DataField = 'ICME18'
        DataSource = DsStr
        DecimalPlaces = 0
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdMlce18: TdxDBColorCurrencyEdit
        Left = 601
        Top = 133
        Width = 80
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
        TabOrder = 69
        Alignment = taRightJustify
        DataField = 'MLCE18'
        DataSource = DsStr
        MaxValue = 100
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 17
      end
      object EdBase18: TdxDBColorCurrencyEdit
        Left = 681
        Top = 133
        Width = 80
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
        TabOrder = 70
        Alignment = taRightJustify
        DataField = 'BASE18'
        DataSource = DsStr
        MaxValue = 100
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 17
      end
      object EdIcmE19: TdxDBColorCurrencyEdit
        Left = 521
        Top = 157
        Width = 80
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
        TabOrder = 72
        Alignment = taRightJustify
        DataField = 'ICME19'
        DataSource = DsStr
        DecimalPlaces = 0
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdIcmE20: TdxDBColorCurrencyEdit
        Left = 521
        Top = 181
        Width = 80
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
        TabOrder = 76
        Alignment = taRightJustify
        DataField = 'ICME20'
        DataSource = DsStr
        DecimalPlaces = 0
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdIcmE21: TdxDBColorCurrencyEdit
        Left = 521
        Top = 205
        Width = 80
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
        TabOrder = 80
        Alignment = taRightJustify
        DataField = 'ICME21'
        DataSource = DsStr
        DecimalPlaces = 0
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdMlce21: TdxDBColorCurrencyEdit
        Left = 601
        Top = 205
        Width = 80
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
        TabOrder = 81
        Alignment = taRightJustify
        DataField = 'MLCE21'
        DataSource = DsStr
        MaxValue = 100
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 17
      end
      object EdMlce20: TdxDBColorCurrencyEdit
        Left = 601
        Top = 181
        Width = 80
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
        TabOrder = 77
        Alignment = taRightJustify
        DataField = 'MLCE20'
        DataSource = DsStr
        MaxValue = 100
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 17
      end
      object EdMlce19: TdxDBColorCurrencyEdit
        Left = 601
        Top = 157
        Width = 80
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
        TabOrder = 73
        Alignment = taRightJustify
        DataField = 'MLCE19'
        DataSource = DsStr
        MaxValue = 100
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 17
      end
      object EdBase19: TdxDBColorCurrencyEdit
        Left = 681
        Top = 157
        Width = 80
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
        TabOrder = 74
        Alignment = taRightJustify
        DataField = 'BASE19'
        DataSource = DsStr
        MaxValue = 100
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 17
      end
      object EdBase20: TdxDBColorCurrencyEdit
        Left = 681
        Top = 181
        Width = 80
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
        TabOrder = 78
        Alignment = taRightJustify
        DataField = 'BASE20'
        DataSource = DsStr
        MaxValue = 100
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 17
      end
      object EdBase21: TdxDBColorCurrencyEdit
        Left = 681
        Top = 205
        Width = 80
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
        TabOrder = 82
        Alignment = taRightJustify
        DataField = 'BASE21'
        DataSource = DsStr
        MaxValue = 100
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 17
      end
      object EdIcmE22: TdxDBColorCurrencyEdit
        Left = 521
        Top = 229
        Width = 80
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
        TabOrder = 84
        Alignment = taRightJustify
        DataField = 'ICME22'
        DataSource = DsStr
        DecimalPlaces = 0
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdIcmE23: TdxDBColorCurrencyEdit
        Left = 521
        Top = 253
        Width = 80
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
        TabOrder = 88
        Alignment = taRightJustify
        DataField = 'ICME23'
        DataSource = DsStr
        DecimalPlaces = 0
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdIcmE24: TdxDBColorCurrencyEdit
        Left = 521
        Top = 277
        Width = 80
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
        TabOrder = 92
        Alignment = taRightJustify
        DataField = 'ICME24'
        DataSource = DsStr
        DecimalPlaces = 0
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdMlce24: TdxDBColorCurrencyEdit
        Left = 601
        Top = 277
        Width = 80
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
        TabOrder = 93
        Alignment = taRightJustify
        DataField = 'MLCE24'
        DataSource = DsStr
        MaxValue = 100
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 17
      end
      object EdMlce23: TdxDBColorCurrencyEdit
        Left = 601
        Top = 253
        Width = 80
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
        TabOrder = 89
        Alignment = taRightJustify
        DataField = 'MLCE23'
        DataSource = DsStr
        MaxValue = 100
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 17
      end
      object EdMlce22: TdxDBColorCurrencyEdit
        Left = 601
        Top = 229
        Width = 80
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
        TabOrder = 85
        Alignment = taRightJustify
        DataField = 'MLCE22'
        DataSource = DsStr
        MaxValue = 100
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 17
      end
      object EdBase22: TdxDBColorCurrencyEdit
        Left = 681
        Top = 229
        Width = 80
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
        TabOrder = 86
        Alignment = taRightJustify
        DataField = 'BASE22'
        DataSource = DsStr
        MaxValue = 100
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 17
      end
      object EdBase23: TdxDBColorCurrencyEdit
        Left = 681
        Top = 253
        Width = 80
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
        TabOrder = 90
        Alignment = taRightJustify
        DataField = 'BASE23'
        DataSource = DsStr
        MaxValue = 100
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 17
      end
      object EdBase24: TdxDBColorCurrencyEdit
        Left = 681
        Top = 277
        Width = 80
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
        TabOrder = 94
        Alignment = taRightJustify
        DataField = 'BASE24'
        DataSource = DsStr
        MaxValue = 100
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 17
      end
      object EdIcmE25: TdxDBColorCurrencyEdit
        Left = 521
        Top = 301
        Width = 80
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
        TabOrder = 96
        Alignment = taRightJustify
        DataField = 'ICME25'
        DataSource = DsStr
        DecimalPlaces = 0
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdIcmE26: TdxDBColorCurrencyEdit
        Left = 521
        Top = 325
        Width = 80
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
        TabOrder = 100
        Alignment = taRightJustify
        DataField = 'ICME26'
        DataSource = DsStr
        DecimalPlaces = 0
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdIcmE27: TdxDBColorCurrencyEdit
        Left = 521
        Top = 349
        Width = 80
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
        TabOrder = 104
        Alignment = taRightJustify
        DataField = 'ICME27'
        DataSource = DsStr
        DecimalPlaces = 0
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdMlce27: TdxDBColorCurrencyEdit
        Left = 601
        Top = 349
        Width = 80
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
        TabOrder = 105
        Alignment = taRightJustify
        DataField = 'MLCE27'
        DataSource = DsStr
        MaxValue = 100
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 17
      end
      object EdMlce26: TdxDBColorCurrencyEdit
        Left = 601
        Top = 325
        Width = 80
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
        TabOrder = 101
        Alignment = taRightJustify
        DataField = 'MLCE26'
        DataSource = DsStr
        MaxValue = 100
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 17
      end
      object EdMlce25: TdxDBColorCurrencyEdit
        Left = 601
        Top = 301
        Width = 80
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
        TabOrder = 97
        Alignment = taRightJustify
        DataField = 'MLCE25'
        DataSource = DsStr
        MaxValue = 100
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 17
      end
      object EdBase25: TdxDBColorCurrencyEdit
        Left = 681
        Top = 301
        Width = 80
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
        TabOrder = 98
        Alignment = taRightJustify
        DataField = 'BASE25'
        DataSource = DsStr
        MaxValue = 100
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 17
      end
      object EdBase26: TdxDBColorCurrencyEdit
        Left = 681
        Top = 325
        Width = 80
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
        TabOrder = 102
        Alignment = taRightJustify
        DataField = 'BASE26'
        DataSource = DsStr
        MaxValue = 100
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 17
      end
      object EdBase27: TdxDBColorCurrencyEdit
        Left = 681
        Top = 349
        Width = 80
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
        TabOrder = 106
        Alignment = taRightJustify
        DataField = 'BASE27'
        DataSource = DsStr
        MaxValue = 100
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 17
      end
      object EdIcmE28: TdxDBColorCurrencyEdit
        Left = 521
        Top = 373
        Width = 80
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
        TabOrder = 108
        Alignment = taRightJustify
        DataField = 'ICME28'
        DataSource = DsStr
        DecimalPlaces = 0
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdMlce28: TdxDBColorCurrencyEdit
        Left = 601
        Top = 373
        Width = 80
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
        TabOrder = 109
        Alignment = taRightJustify
        DataField = 'MLCE28'
        DataSource = DsStr
        MaxValue = 100
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 17
      end
      object EdBase28: TdxDBColorCurrencyEdit
        Left = 681
        Top = 373
        Width = 80
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
        TabOrder = 110
        Alignment = taRightJustify
        DataField = 'BASE28'
        DataSource = DsStr
        MaxValue = 100
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 17
      end
    end
  end
  object nvStr: ThDBNavigator
    Left = 371
    Top = -6
    Width = 394
    Height = 31
    BevelOuter = bvNone
    Caption = ' '
    Color = 15788249
    TabOrder = 1
    OnSalva = nvStrSalva
    DataSource = DsStr
    BaseAtualizar = 'EstTxfEstSt1EstSt2ProTxf'
    Registros = 0
    UsaAppend = False
    Salvar = False
  end
  object quSql: TwwQuery
    Tag = 1
    CachedUpdates = True
    DatabaseName = 'ISade'
    ValidateWithMask = True
    Left = 28
    Top = 480
  end
  object EstStr: TwwQuery
    Active = True
    CachedUpdates = True
    BeforeDelete = EstStrBeforeDelete
    OnNewRecord = EstStrNewRecord
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * From EstStr'
      'Order by CodStr')
    UpdateObject = UpStr
    ValidateWithMask = True
    Top = 452
    object EstStrCODSTR: TStringField
      DisplayLabel = 'Código'
      DisplayWidth = 25
      FieldName = 'CODSTR'
      Origin = 'ISADE.ESTSTR.CODSTR'
      FixedChar = True
    end
    object EstStrNOMSTR: TStringField
      DisplayLabel = 'Descrição'
      DisplayWidth = 78
      FieldName = 'NOMSTR'
      Origin = 'ISADE.ESTSTR.NOMSTR'
      FixedChar = True
      Size = 40
    end
    object EstStrTIPSTR: TStringField
      DisplayLabel = 'Tipo de Operação     '
      DisplayWidth = 17
      FieldName = 'TIPSTR'
      Origin = 'ISADE.ESTSTR.TIPSTR'
      FixedChar = True
      Size = 7
    end
    object EstStrTRBE01: TStringField
      DisplayWidth = 3
      FieldName = 'TRBE01'
      Origin = 'ISADE.ESTSTR.TRBE01'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object EstStrICME01: TFloatField
      DisplayWidth = 10
      FieldName = 'ICME01'
      Origin = 'ISADE.ESTSTR.ICME01'
      Visible = False
      DisplayFormat = '##0'
      Precision = 2
    end
    object EstStrMLCE01: TFloatField
      DisplayWidth = 10
      FieldName = 'MLCE01'
      Origin = 'ISADE.ESTSTR.MLCE01'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstStrBASE01: TFloatField
      DisplayWidth = 10
      FieldName = 'BASE01'
      Origin = 'ISADE.ESTSTR.BASE01'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstStrTRBE02: TStringField
      DisplayWidth = 3
      FieldName = 'TRBE02'
      Origin = 'ISADE.ESTSTR.TRBE02'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object EstStrICME02: TFloatField
      DisplayWidth = 10
      FieldName = 'ICME02'
      Origin = 'ISADE.ESTSTR.ICME02'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstStrMLCE02: TFloatField
      DisplayWidth = 10
      FieldName = 'MLCE02'
      Origin = 'ISADE.ESTSTR.MLCE02'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstStrBASE02: TFloatField
      DisplayWidth = 10
      FieldName = 'BASE02'
      Origin = 'ISADE.ESTSTR.BASE02'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object EstStrTRBE03: TStringField
      DisplayWidth = 3
      FieldName = 'TRBE03'
      Origin = 'ISADE.ESTSTR.TRBE03'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object EstStrICME03: TFloatField
      DisplayWidth = 10
      FieldName = 'ICME03'
      Origin = 'ISADE.ESTSTR.ICME03'
      Visible = False
      DisplayFormat = '##0'
      Precision = 2
    end
    object EstStrMLCE03: TFloatField
      DisplayWidth = 10
      FieldName = 'MLCE03'
      Origin = 'ISADE.ESTSTR.MLCE03'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstStrBASE03: TFloatField
      DisplayWidth = 10
      FieldName = 'BASE03'
      Origin = 'ISADE.ESTSTR.BASE03'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstStrTRBE04: TStringField
      DisplayWidth = 3
      FieldName = 'TRBE04'
      Origin = 'ISADE.ESTSTR.TRBE04'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object EstStrICME04: TFloatField
      DisplayWidth = 10
      FieldName = 'ICME04'
      Origin = 'ISADE.ESTSTR.ICME04'
      Visible = False
      DisplayFormat = '##0'
      Precision = 2
    end
    object EstStrMLCE04: TFloatField
      DisplayWidth = 10
      FieldName = 'MLCE04'
      Origin = 'ISADE.ESTSTR.MLCE04'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstStrBASE04: TFloatField
      DisplayWidth = 10
      FieldName = 'BASE04'
      Origin = 'ISADE.ESTSTR.BASE04'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstStrTRBE05: TStringField
      DisplayWidth = 3
      FieldName = 'TRBE05'
      Origin = 'ISADE.ESTSTR.TRBE05'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object EstStrICME05: TFloatField
      DisplayWidth = 10
      FieldName = 'ICME05'
      Origin = 'ISADE.ESTSTR.ICME05'
      Visible = False
      DisplayFormat = '##0'
      Precision = 2
    end
    object EstStrMLCE05: TFloatField
      DisplayWidth = 10
      FieldName = 'MLCE05'
      Origin = 'ISADE.ESTSTR.MLCE05'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstStrBASE05: TFloatField
      DisplayWidth = 10
      FieldName = 'BASE05'
      Origin = 'ISADE.ESTSTR.BASE05'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstStrTRBE06: TStringField
      DisplayWidth = 3
      FieldName = 'TRBE06'
      Origin = 'ISADE.ESTSTR.TRBE06'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object EstStrICME06: TFloatField
      DisplayWidth = 10
      FieldName = 'ICME06'
      Origin = 'ISADE.ESTSTR.ICME06'
      Visible = False
      DisplayFormat = '##0'
      Precision = 2
    end
    object EstStrMLCE06: TFloatField
      DisplayWidth = 10
      FieldName = 'MLCE06'
      Origin = 'ISADE.ESTSTR.MLCE06'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstStrBASE06: TFloatField
      DisplayWidth = 10
      FieldName = 'BASE06'
      Origin = 'ISADE.ESTSTR.BASE06'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstStrTRBE07: TStringField
      DisplayWidth = 3
      FieldName = 'TRBE07'
      Origin = 'ISADE.ESTSTR.TRBE07'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object EstStrICME07: TFloatField
      DisplayWidth = 10
      FieldName = 'ICME07'
      Origin = 'ISADE.ESTSTR.ICME07'
      Visible = False
      DisplayFormat = '##0'
      Precision = 2
    end
    object EstStrMLCE07: TFloatField
      DisplayWidth = 10
      FieldName = 'MLCE07'
      Origin = 'ISADE.ESTSTR.MLCE07'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstStrBASE07: TFloatField
      DisplayWidth = 10
      FieldName = 'BASE07'
      Origin = 'ISADE.ESTSTR.BASE07'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstStrTRBE08: TStringField
      DisplayWidth = 3
      FieldName = 'TRBE08'
      Origin = 'ISADE.ESTSTR.TRBE08'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object EstStrICME08: TFloatField
      DisplayWidth = 10
      FieldName = 'ICME08'
      Origin = 'ISADE.ESTSTR.ICME08'
      Visible = False
      DisplayFormat = '##0'
      Precision = 2
    end
    object EstStrMLCE08: TFloatField
      DisplayWidth = 10
      FieldName = 'MLCE08'
      Origin = 'ISADE.ESTSTR.MLCE08'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstStrBASE08: TFloatField
      DisplayWidth = 10
      FieldName = 'BASE08'
      Origin = 'ISADE.ESTSTR.BASE08'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstStrTRBE09: TStringField
      DisplayWidth = 3
      FieldName = 'TRBE09'
      Origin = 'ISADE.ESTSTR.TRBE09'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object EstStrICME09: TFloatField
      DisplayWidth = 10
      FieldName = 'ICME09'
      Origin = 'ISADE.ESTSTR.ICME09'
      Visible = False
      DisplayFormat = '##0'
      Precision = 2
    end
    object EstStrMLCE09: TFloatField
      DisplayWidth = 10
      FieldName = 'MLCE09'
      Origin = 'ISADE.ESTSTR.MLCE09'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstStrBASE09: TFloatField
      DisplayWidth = 10
      FieldName = 'BASE09'
      Origin = 'ISADE.ESTSTR.BASE09'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstStrTRBE10: TStringField
      DisplayWidth = 3
      FieldName = 'TRBE10'
      Origin = 'ISADE.ESTSTR.TRBE10'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object EstStrICME10: TFloatField
      DisplayWidth = 10
      FieldName = 'ICME10'
      Origin = 'ISADE.ESTSTR.ICME10'
      Visible = False
      DisplayFormat = '##0'
      Precision = 2
    end
    object EstStrMLCE10: TFloatField
      DisplayWidth = 10
      FieldName = 'MLCE10'
      Origin = 'ISADE.ESTSTR.MLCE10'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstStrBASE10: TFloatField
      DisplayWidth = 10
      FieldName = 'BASE10'
      Origin = 'ISADE.ESTSTR.BASE10'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstStrTRBE11: TStringField
      DisplayWidth = 3
      FieldName = 'TRBE11'
      Origin = 'ISADE.ESTSTR.TRBE11'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object EstStrICME11: TFloatField
      DisplayWidth = 10
      FieldName = 'ICME11'
      Origin = 'ISADE.ESTSTR.ICME11'
      Visible = False
      DisplayFormat = '##0'
      Precision = 2
    end
    object EstStrMLCE11: TFloatField
      DisplayWidth = 10
      FieldName = 'MLCE11'
      Origin = 'ISADE.ESTSTR.MLCE11'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstStrBASE11: TFloatField
      DisplayWidth = 10
      FieldName = 'BASE11'
      Origin = 'ISADE.ESTSTR.BASE11'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstStrTRBE12: TStringField
      DisplayWidth = 3
      FieldName = 'TRBE12'
      Origin = 'ISADE.ESTSTR.TRBE12'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object EstStrICME12: TFloatField
      DisplayWidth = 10
      FieldName = 'ICME12'
      Origin = 'ISADE.ESTSTR.ICME12'
      Visible = False
      DisplayFormat = '##0'
      Precision = 2
    end
    object EstStrMLCE12: TFloatField
      DisplayWidth = 10
      FieldName = 'MLCE12'
      Origin = 'ISADE.ESTSTR.MLCE12'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstStrBASE12: TFloatField
      DisplayWidth = 10
      FieldName = 'BASE12'
      Origin = 'ISADE.ESTSTR.BASE12'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstStrTRBE13: TStringField
      DisplayWidth = 3
      FieldName = 'TRBE13'
      Origin = 'ISADE.ESTSTR.TRBE13'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object EstStrICME13: TFloatField
      DisplayWidth = 10
      FieldName = 'ICME13'
      Origin = 'ISADE.ESTSTR.ICME13'
      Visible = False
      DisplayFormat = '##0'
      Precision = 2
    end
    object EstStrMLCE13: TFloatField
      DisplayWidth = 10
      FieldName = 'MLCE13'
      Origin = 'ISADE.ESTSTR.MLCE13'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstStrBASE13: TFloatField
      DisplayWidth = 10
      FieldName = 'BASE13'
      Origin = 'ISADE.ESTSTR.BASE13'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstStrTRBE14: TStringField
      DisplayWidth = 3
      FieldName = 'TRBE14'
      Origin = 'ISADE.ESTSTR.TRBE14'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object EstStrICME14: TFloatField
      DisplayWidth = 10
      FieldName = 'ICME14'
      Origin = 'ISADE.ESTSTR.ICME14'
      Visible = False
      DisplayFormat = '##0'
      Precision = 2
    end
    object EstStrMLCE14: TFloatField
      DisplayWidth = 10
      FieldName = 'MLCE14'
      Origin = 'ISADE.ESTSTR.MLCE14'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstStrBASE14: TFloatField
      DisplayWidth = 10
      FieldName = 'BASE14'
      Origin = 'ISADE.ESTSTR.BASE14'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstStrTRBE15: TStringField
      DisplayWidth = 3
      FieldName = 'TRBE15'
      Origin = 'ISADE.ESTSTR.TRBE15'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object EstStrICME15: TFloatField
      DisplayWidth = 10
      FieldName = 'ICME15'
      Origin = 'ISADE.ESTSTR.ICME15'
      Visible = False
      DisplayFormat = '##0'
      Precision = 2
    end
    object EstStrMLCE15: TFloatField
      DisplayWidth = 10
      FieldName = 'MLCE15'
      Origin = 'ISADE.ESTSTR.MLCE15'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstStrBASE15: TFloatField
      DisplayWidth = 10
      FieldName = 'BASE15'
      Origin = 'ISADE.ESTSTR.BASE15'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstStrTRBE16: TStringField
      DisplayWidth = 3
      FieldName = 'TRBE16'
      Origin = 'ISADE.ESTSTR.TRBE16'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object EstStrICME16: TFloatField
      DisplayWidth = 10
      FieldName = 'ICME16'
      Origin = 'ISADE.ESTSTR.ICME16'
      Visible = False
      DisplayFormat = '##0'
      Precision = 2
    end
    object EstStrMLCE16: TFloatField
      DisplayWidth = 10
      FieldName = 'MLCE16'
      Origin = 'ISADE.ESTSTR.MLCE16'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstStrBASE16: TFloatField
      DisplayWidth = 10
      FieldName = 'BASE16'
      Origin = 'ISADE.ESTSTR.BASE16'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstStrTRBE17: TStringField
      DisplayWidth = 3
      FieldName = 'TRBE17'
      Origin = 'ISADE.ESTSTR.TRBE17'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object EstStrICME17: TFloatField
      DisplayWidth = 10
      FieldName = 'ICME17'
      Origin = 'ISADE.ESTSTR.ICME17'
      Visible = False
      DisplayFormat = '##0'
      Precision = 2
    end
    object EstStrMLCE17: TFloatField
      DisplayWidth = 10
      FieldName = 'MLCE17'
      Origin = 'ISADE.ESTSTR.MLCE17'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstStrBASE17: TFloatField
      DisplayWidth = 10
      FieldName = 'BASE17'
      Origin = 'ISADE.ESTSTR.BASE17'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstStrTRBE18: TStringField
      DisplayWidth = 3
      FieldName = 'TRBE18'
      Origin = 'ISADE.ESTSTR.TRBE18'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object EstStrICME18: TFloatField
      DisplayWidth = 10
      FieldName = 'ICME18'
      Origin = 'ISADE.ESTSTR.ICME18'
      Visible = False
      DisplayFormat = '##0'
      Precision = 2
    end
    object EstStrMLCE18: TFloatField
      DisplayWidth = 10
      FieldName = 'MLCE18'
      Origin = 'ISADE.ESTSTR.MLCE18'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstStrBASE18: TFloatField
      DisplayWidth = 10
      FieldName = 'BASE18'
      Origin = 'ISADE.ESTSTR.BASE18'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstStrTRBE19: TStringField
      DisplayWidth = 3
      FieldName = 'TRBE19'
      Origin = 'ISADE.ESTSTR.TRBE19'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object EstStrICME19: TFloatField
      DisplayWidth = 10
      FieldName = 'ICME19'
      Origin = 'ISADE.ESTSTR.ICME19'
      Visible = False
      DisplayFormat = '##0'
      Precision = 2
    end
    object EstStrMLCE19: TFloatField
      DisplayWidth = 10
      FieldName = 'MLCE19'
      Origin = 'ISADE.ESTSTR.MLCE19'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstStrBASE19: TFloatField
      DisplayWidth = 10
      FieldName = 'BASE19'
      Origin = 'ISADE.ESTSTR.BASE19'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstStrTRBE20: TStringField
      DisplayWidth = 3
      FieldName = 'TRBE20'
      Origin = 'ISADE.ESTSTR.TRBE20'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object EstStrICME20: TFloatField
      DisplayWidth = 10
      FieldName = 'ICME20'
      Origin = 'ISADE.ESTSTR.ICME20'
      Visible = False
      DisplayFormat = '##0'
      Precision = 2
    end
    object EstStrMLCE20: TFloatField
      DisplayWidth = 10
      FieldName = 'MLCE20'
      Origin = 'ISADE.ESTSTR.MLCE20'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstStrBASE20: TFloatField
      DisplayWidth = 10
      FieldName = 'BASE20'
      Origin = 'ISADE.ESTSTR.BASE20'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstStrTRBE21: TStringField
      DisplayWidth = 3
      FieldName = 'TRBE21'
      Origin = 'ISADE.ESTSTR.TRBE21'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object EstStrICME21: TFloatField
      DisplayWidth = 10
      FieldName = 'ICME21'
      Origin = 'ISADE.ESTSTR.ICME21'
      Visible = False
      DisplayFormat = '##0'
      Precision = 2
    end
    object EstStrMLCE21: TFloatField
      DisplayWidth = 10
      FieldName = 'MLCE21'
      Origin = 'ISADE.ESTSTR.MLCE21'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstStrBASE21: TFloatField
      DisplayWidth = 10
      FieldName = 'BASE21'
      Origin = 'ISADE.ESTSTR.BASE21'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstStrTRBE22: TStringField
      DisplayWidth = 3
      FieldName = 'TRBE22'
      Origin = 'ISADE.ESTSTR.TRBE22'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object EstStrICME22: TFloatField
      DisplayWidth = 10
      FieldName = 'ICME22'
      Origin = 'ISADE.ESTSTR.ICME22'
      Visible = False
      DisplayFormat = '##0'
      Precision = 2
    end
    object EstStrMLCE22: TFloatField
      DisplayWidth = 10
      FieldName = 'MLCE22'
      Origin = 'ISADE.ESTSTR.MLCE22'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstStrBASE22: TFloatField
      DisplayWidth = 10
      FieldName = 'BASE22'
      Origin = 'ISADE.ESTSTR.BASE22'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstStrTRBE23: TStringField
      DisplayWidth = 3
      FieldName = 'TRBE23'
      Origin = 'ISADE.ESTSTR.TRBE23'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object EstStrICME23: TFloatField
      DisplayWidth = 10
      FieldName = 'ICME23'
      Origin = 'ISADE.ESTSTR.ICME23'
      Visible = False
      DisplayFormat = '##0'
      Precision = 2
    end
    object EstStrMLCE23: TFloatField
      DisplayWidth = 10
      FieldName = 'MLCE23'
      Origin = 'ISADE.ESTSTR.MLCE23'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstStrBASE23: TFloatField
      DisplayWidth = 10
      FieldName = 'BASE23'
      Origin = 'ISADE.ESTSTR.BASE23'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstStrTRBE24: TStringField
      DisplayWidth = 3
      FieldName = 'TRBE24'
      Origin = 'ISADE.ESTSTR.TRBE24'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object EstStrICME24: TFloatField
      DisplayWidth = 10
      FieldName = 'ICME24'
      Origin = 'ISADE.ESTSTR.ICME24'
      Visible = False
      DisplayFormat = '##0'
      Precision = 2
    end
    object EstStrMLCE24: TFloatField
      DisplayWidth = 10
      FieldName = 'MLCE24'
      Origin = 'ISADE.ESTSTR.MLCE24'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstStrBASE24: TFloatField
      DisplayWidth = 10
      FieldName = 'BASE24'
      Origin = 'ISADE.ESTSTR.BASE24'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstStrTRBE25: TStringField
      DisplayWidth = 3
      FieldName = 'TRBE25'
      Origin = 'ISADE.ESTSTR.TRBE25'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object EstStrICME25: TFloatField
      DisplayWidth = 10
      FieldName = 'ICME25'
      Origin = 'ISADE.ESTSTR.ICME25'
      Visible = False
      DisplayFormat = '##0'
      Precision = 2
    end
    object EstStrMLCE25: TFloatField
      DisplayWidth = 10
      FieldName = 'MLCE25'
      Origin = 'ISADE.ESTSTR.MLCE25'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstStrBASE25: TFloatField
      DisplayWidth = 10
      FieldName = 'BASE25'
      Origin = 'ISADE.ESTSTR.BASE25'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstStrTRBE26: TStringField
      DisplayWidth = 3
      FieldName = 'TRBE26'
      Origin = 'ISADE.ESTSTR.TRBE26'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object EstStrICME26: TFloatField
      DisplayWidth = 10
      FieldName = 'ICME26'
      Origin = 'ISADE.ESTSTR.ICME26'
      Visible = False
      DisplayFormat = '##0'
      Precision = 2
    end
    object EstStrMLCE26: TFloatField
      DisplayWidth = 10
      FieldName = 'MLCE26'
      Origin = 'ISADE.ESTSTR.MLCE26'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstStrBASE26: TFloatField
      DisplayWidth = 10
      FieldName = 'BASE26'
      Origin = 'ISADE.ESTSTR.BASE26'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstStrTRBE27: TStringField
      DisplayWidth = 3
      FieldName = 'TRBE27'
      Origin = 'ISADE.ESTSTR.TRBE27'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object EstStrICME27: TFloatField
      DisplayWidth = 10
      FieldName = 'ICME27'
      Origin = 'ISADE.ESTSTR.ICME27'
      Visible = False
      DisplayFormat = '##0'
      Precision = 2
    end
    object EstStrMLCE27: TFloatField
      DisplayWidth = 10
      FieldName = 'MLCE27'
      Origin = 'ISADE.ESTSTR.MLCE27'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstStrBASE27: TFloatField
      DisplayWidth = 10
      FieldName = 'BASE27'
      Origin = 'ISADE.ESTSTR.BASE27'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstStrTRBE28: TStringField
      DisplayWidth = 3
      FieldName = 'TRBE28'
      Origin = 'ISADE.ESTSTR.TRBE28'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object EstStrICME28: TFloatField
      DisplayWidth = 10
      FieldName = 'ICME28'
      Origin = 'ISADE.ESTSTR.ICME28'
      Visible = False
      DisplayFormat = '##0'
      Precision = 2
    end
    object EstStrMLCE28: TFloatField
      DisplayWidth = 10
      FieldName = 'MLCE28'
      Origin = 'ISADE.ESTSTR.MLCE28'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstStrBASE28: TFloatField
      DisplayWidth = 10
      FieldName = 'BASE28'
      Origin = 'ISADE.ESTSTR.BASE28'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
  end
  object DsStr: TwwDataSource
    DataSet = EstStr
    OnDataChange = DsStrDataChange
    Left = 28
    Top = 452
  end
  object UpStr: TUpdateSQL
    ModifySQL.Strings = (
      'update EstStr'
      'set'
      '  NOMSTR = :NOMSTR,'
      '  TRBE01 = :TRBE01,'
      '  ICME01 = :ICME01,'
      '  MLCE01 = :MLCE01,'
      '  BASE01 = :BASE01,'
      '  TRBE02 = :TRBE02,'
      '  ICME02 = :ICME02,'
      '  MLCE02 = :MLCE02,'
      '  BASE02 = :BASE02,'
      '  TRBE03 = :TRBE03,'
      '  ICME03 = :ICME03,'
      '  MLCE03 = :MLCE03,'
      '  BASE03 = :BASE03,'
      '  TRBE04 = :TRBE04,'
      '  ICME04 = :ICME04,'
      '  MLCE04 = :MLCE04,'
      '  BASE04 = :BASE04,'
      '  TRBE05 = :TRBE05,'
      '  ICME05 = :ICME05,'
      '  MLCE05 = :MLCE05,'
      '  BASE05 = :BASE05,'
      '  TRBE06 = :TRBE06,'
      '  ICME06 = :ICME06,'
      '  MLCE06 = :MLCE06,'
      '  BASE06 = :BASE06,'
      '  TRBE07 = :TRBE07,'
      '  ICME07 = :ICME07,'
      '  MLCE07 = :MLCE07,'
      '  BASE07 = :BASE07,'
      '  TRBE08 = :TRBE08,'
      '  ICME08 = :ICME08,'
      '  MLCE08 = :MLCE08,'
      '  BASE08 = :BASE08,'
      '  TRBE09 = :TRBE09,'
      '  ICME09 = :ICME09,'
      '  MLCE09 = :MLCE09,'
      '  BASE09 = :BASE09,'
      '  TRBE10 = :TRBE10,'
      '  ICME10 = :ICME10,'
      '  MLCE10 = :MLCE10,'
      '  BASE10 = :BASE10,'
      '  TRBE11 = :TRBE11,'
      '  ICME11 = :ICME11,'
      '  MLCE11 = :MLCE11,'
      '  BASE11 = :BASE11,'
      '  TRBE12 = :TRBE12,'
      '  ICME12 = :ICME12,'
      '  MLCE12 = :MLCE12,'
      '  BASE12 = :BASE12,'
      '  TRBE13 = :TRBE13,'
      '  ICME13 = :ICME13,'
      '  MLCE13 = :MLCE13,'
      '  BASE13 = :BASE13,'
      '  TRBE14 = :TRBE14,'
      '  ICME14 = :ICME14,'
      '  MLCE14 = :MLCE14,'
      '  BASE14 = :BASE14,'
      '  TRBE15 = :TRBE15,'
      '  ICME15 = :ICME15,'
      '  MLCE15 = :MLCE15,'
      '  BASE15 = :BASE15,'
      '  TRBE16 = :TRBE16,'
      '  ICME16 = :ICME16,'
      '  MLCE16 = :MLCE16,'
      '  BASE16 = :BASE16,'
      '  TRBE17 = :TRBE17,'
      '  ICME17 = :ICME17,'
      '  MLCE17 = :MLCE17,'
      '  BASE17 = :BASE17,'
      '  TRBE18 = :TRBE18,'
      '  ICME18 = :ICME18,'
      '  MLCE18 = :MLCE18,'
      '  BASE18 = :BASE18,'
      '  TRBE19 = :TRBE19,'
      '  ICME19 = :ICME19,'
      '  MLCE19 = :MLCE19,'
      '  BASE19 = :BASE19,'
      '  TRBE20 = :TRBE20,'
      '  ICME20 = :ICME20,'
      '  MLCE20 = :MLCE20,'
      '  BASE20 = :BASE20,'
      '  TRBE21 = :TRBE21,'
      '  ICME21 = :ICME21,'
      '  MLCE21 = :MLCE21,'
      '  BASE21 = :BASE21,'
      '  TRBE22 = :TRBE22,'
      '  ICME22 = :ICME22,'
      '  MLCE22 = :MLCE22,'
      '  BASE22 = :BASE22,'
      '  TRBE23 = :TRBE23,'
      '  ICME23 = :ICME23,'
      '  MLCE23 = :MLCE23,'
      '  BASE23 = :BASE23,'
      '  TRBE24 = :TRBE24,'
      '  ICME24 = :ICME24,'
      '  MLCE24 = :MLCE24,'
      '  BASE24 = :BASE24,'
      '  TRBE25 = :TRBE25,'
      '  ICME25 = :ICME25,'
      '  MLCE25 = :MLCE25,'
      '  BASE25 = :BASE25,'
      '  TRBE26 = :TRBE26,'
      '  ICME26 = :ICME26,'
      '  MLCE26 = :MLCE26,'
      '  BASE26 = :BASE26,'
      '  TRBE27 = :TRBE27,'
      '  ICME27 = :ICME27,'
      '  MLCE27 = :MLCE27,'
      '  BASE27 = :BASE27,'
      '  TRBE28 = :TRBE28,'
      '  ICME28 = :ICME28,'
      '  MLCE28 = :MLCE28,'
      '  BASE28 = :BASE28'
      'where'
      '  CODSTR = :OLD_CODSTR and'
      '  TIPSTR = :OLD_TIPSTR')
    InsertSQL.Strings = (
      'insert into EstStr'
      
        '  (CODSTR, TIPSTR, NOMSTR, TRBE01, ICME01, MLCE01, BASE01, TRBE0' +
        '2, ICME02, '
      
        '   MLCE02, BASE02, TRBE03, ICME03, MLCE03, BASE03, TRBE04, ICME0' +
        '4, MLCE04, '
      
        '   BASE04, TRBE05, ICME05, MLCE05, BASE05, TRBE06, ICME06, MLCE0' +
        '6, BASE06, '
      
        '   TRBE07, ICME07, MLCE07, BASE07, TRBE08, ICME08, MLCE08, BASE0' +
        '8, TRBE09, '
      
        '   ICME09, MLCE09, BASE09, TRBE10, ICME10, MLCE10, BASE10, TRBE1' +
        '1, ICME11, '
      
        '   MLCE11, BASE11, TRBE12, ICME12, MLCE12, BASE12, TRBE13, ICME1' +
        '3, MLCE13, '
      
        '   BASE13, TRBE14, ICME14, MLCE14, BASE14, TRBE15, ICME15, MLCE1' +
        '5, BASE15, '
      
        '   TRBE16, ICME16, MLCE16, BASE16, TRBE17, ICME17, MLCE17, BASE1' +
        '7, TRBE18, '
      
        '   ICME18, MLCE18, BASE18, TRBE19, ICME19, MLCE19, BASE19, TRBE2' +
        '0, ICME20, '
      
        '   MLCE20, BASE20, TRBE21, ICME21, MLCE21, BASE21, TRBE22, ICME2' +
        '2, MLCE22, '
      
        '   BASE22, TRBE23, ICME23, MLCE23, BASE23, TRBE24, ICME24, MLCE2' +
        '4, BASE24, '
      
        '   TRBE25, ICME25, MLCE25, BASE25, TRBE26, ICME26, MLCE26, BASE2' +
        '6, TRBE27, '
      '   ICME27, MLCE27, BASE27, TRBE28, ICME28, MLCE28, BASE28)'
      'values'
      
        '  (:CODSTR, :TIPSTR, :NOMSTR, :TRBE01, :ICME01, :MLCE01, :BASE01' +
        ', :TRBE02, '
      
        '   :ICME02, :MLCE02, :BASE02, :TRBE03, :ICME03, :MLCE03, :BASE03' +
        ', :TRBE04, '
      
        '   :ICME04, :MLCE04, :BASE04, :TRBE05, :ICME05, :MLCE05, :BASE05' +
        ', :TRBE06, '
      
        '   :ICME06, :MLCE06, :BASE06, :TRBE07, :ICME07, :MLCE07, :BASE07' +
        ', :TRBE08, '
      
        '   :ICME08, :MLCE08, :BASE08, :TRBE09, :ICME09, :MLCE09, :BASE09' +
        ', :TRBE10, '
      
        '   :ICME10, :MLCE10, :BASE10, :TRBE11, :ICME11, :MLCE11, :BASE11' +
        ', :TRBE12, '
      
        '   :ICME12, :MLCE12, :BASE12, :TRBE13, :ICME13, :MLCE13, :BASE13' +
        ', :TRBE14, '
      
        '   :ICME14, :MLCE14, :BASE14, :TRBE15, :ICME15, :MLCE15, :BASE15' +
        ', :TRBE16, '
      
        '   :ICME16, :MLCE16, :BASE16, :TRBE17, :ICME17, :MLCE17, :BASE17' +
        ', :TRBE18, '
      
        '   :ICME18, :MLCE18, :BASE18, :TRBE19, :ICME19, :MLCE19, :BASE19' +
        ', :TRBE20, '
      
        '   :ICME20, :MLCE20, :BASE20, :TRBE21, :ICME21, :MLCE21, :BASE21' +
        ', :TRBE22, '
      
        '   :ICME22, :MLCE22, :BASE22, :TRBE23, :ICME23, :MLCE23, :BASE23' +
        ', :TRBE24, '
      
        '   :ICME24, :MLCE24, :BASE24, :TRBE25, :ICME25, :MLCE25, :BASE25' +
        ', :TRBE26, '
      
        '   :ICME26, :MLCE26, :BASE26, :TRBE27, :ICME27, :MLCE27, :BASE27' +
        ', :TRBE28, '
      '   :ICME28, :MLCE28, :BASE28)')
    DeleteSQL.Strings = (
      'delete from EstStr'
      'where'
      '  CODSTR = :OLD_CODSTR and'
      '  TIPSTR = :OLD_TIPSTR')
    Top = 480
  end
  object quSQL3: TwwQuery
    Tag = 1
    CachedUpdates = True
    DatabaseName = 'Emerion_02'
    ValidateWithMask = True
    Left = 93
    Top = 452
  end
  object quSQL2: TwwQuery
    Tag = 1
    CachedUpdates = True
    DatabaseName = 'Emerion_01'
    ValidateWithMask = True
    Left = 65
    Top = 452
  end
end
