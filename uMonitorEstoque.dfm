object frmMonitorEstoque: TfrmMonitorEstoque
  Left = 317
  Top = 157
  BorderStyle = bsNone
  Caption = 'Monitor de Estoques'
  ClientHeight = 452
  ClientWidth = 765
  Color = 15788249
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label112: TLabel
    Left = 3
    Top = 6
    Width = 36
    Height = 13
    Caption = 'Marca :'
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
  object bPsqMrc: TSpeedButton
    Left = 187
    Top = 3
    Width = 23
    Height = 21
    Hint = 'Pesquisar Marcas Existentes'
    Flat = True
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD0C0CFD000007F000000000000C0CFD0C0CFD0C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD000007F0000FFFF00
      FF00007F000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD000007F0000FFFF00FF0000FF00007F000000C0CFD0C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787F0000FFBFB8BF0000FF0000
      7F000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F
      787FBFB8BFFFF8FF0000FF00007F000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      C0CFD07F787F000000000000000000BFB8BFFFF8FFBFB8BF7F787F000000C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787F7F7800FFF800BFB8BF7F78007F
      78000000007F787F000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787F
      7F7800FFF800BFB8BFFFF800BFB8BF7F78007F7800000000C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD07F787FFFF800FFF8FFFFF800BFB8BFFFF800BF
      B8BF7F7800000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787F
      FFF8FFFFF800FFF8FFFFF800BFB8BFFFF800BFB8BF000000C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD07F787FFFF800FFF8FFFFF800FFF8FFFFF800BF
      B8BFFFF800000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787F
      BFB8BFFFF800FFF8FFFFF800BFB8BFFFF8007F7800000000C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787FBFB8BFFFF800FFF8FFFFF8007F
      7800000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      C0CFD07F787F7F787F7F787F7F787F000000C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0}
    OnClick = bPsqMrcClick
  end
  object Label48: TLabel
    Left = 3
    Top = 28
    Width = 40
    Height = 13
    Caption = 'Grupo :'
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
  object bPsqGru: TSpeedButton
    Left = 187
    Top = 25
    Width = 23
    Height = 21
    Hint = 'Pesquisar Grupos Existentes'
    Flat = True
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD0C0CFD000007F000000000000C0CFD0C0CFD0C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD000007F0000FFFF00
      FF00007F000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD000007F0000FFFF00FF0000FF00007F000000C0CFD0C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787F0000FFBFB8BF0000FF0000
      7F000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F
      787FBFB8BFFFF8FF0000FF00007F000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      C0CFD07F787F000000000000000000BFB8BFFFF8FFBFB8BF7F787F000000C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787F7F7800FFF800BFB8BF7F78007F
      78000000007F787F000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787F
      7F7800FFF800BFB8BFFFF800BFB8BF7F78007F7800000000C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD07F787FFFF800FFF8FFFFF800BFB8BFFFF800BF
      B8BF7F7800000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787F
      FFF8FFFFF800FFF8FFFFF800BFB8BFFFF800BFB8BF000000C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD07F787FFFF800FFF8FFFFF800FFF8FFFFF800BF
      B8BFFFF800000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787F
      BFB8BFFFF800FFF8FFFFF800BFB8BFFFF8007F7800000000C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787FBFB8BFFFF800FFF8FFFFF8007F
      7800000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      C0CFD07F787F7F787F7F787F7F787F000000C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0}
    OnClick = bPsqGruClick
  end
  object Label49: TLabel
    Left = 3
    Top = 51
    Width = 66
    Height = 13
    Caption = 'Sub-Grupo :'
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
  object bPsqSub: TSpeedButton
    Left = 187
    Top = 48
    Width = 23
    Height = 21
    Hint = 'Pesquisar Sub-Grupos Existentes'
    Flat = True
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD0C0CFD000007F000000000000C0CFD0C0CFD0C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD000007F0000FFFF00
      FF00007F000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD000007F0000FFFF00FF0000FF00007F000000C0CFD0C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787F0000FFBFB8BF0000FF0000
      7F000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F
      787FBFB8BFFFF8FF0000FF00007F000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      C0CFD07F787F000000000000000000BFB8BFFFF8FFBFB8BF7F787F000000C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787F7F7800FFF800BFB8BF7F78007F
      78000000007F787F000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787F
      7F7800FFF800BFB8BFFFF800BFB8BF7F78007F7800000000C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD07F787FFFF800FFF8FFFFF800BFB8BFFFF800BF
      B8BF7F7800000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787F
      FFF8FFFFF800FFF8FFFFF800BFB8BFFFF800BFB8BF000000C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD07F787FFFF800FFF8FFFFF800FFF8FFFFF800BF
      B8BFFFF800000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787F
      BFB8BFFFF800FFF8FFFFF800BFB8BFFFF8007F7800000000C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787FBFB8BFFFF800FFF8FFFFF8007F
      7800000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      C0CFD07F787F7F787F7F787F7F787F000000C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0}
    OnClick = bPsqSubClick
  end
  object Label50: TLabel
    Left = 3
    Top = 74
    Width = 34
    Height = 13
    Caption = 'Item :'
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
    Left = 3
    Top = 98
    Width = 64
    Height = 13
    Caption = 'Referência:'
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
  object EdPsqCodMrc: TdxColorEdit
    Left = 116
    Top = 2
    Width = 70
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
    OnExit = EdPsqCodMrcExit
    OnKeyDown = EdPsqCodMrcKeyDown
    CharCase = ecUpperCase
    MaxLength = 0
    CorDeFoco = clInfoBk
    StoredValues = 2
  end
  object EdPsqNomMrc: TdxColorEdit
    Left = 210
    Top = 2
    Width = 338
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
    TabOrder = 6
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
  end
  object EdPsqCodGru: TdxColorEdit
    Left = 116
    Top = 24
    Width = 70
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
    OnExit = EdPsqCodGruExit
    OnKeyDown = EdPsqCodGruKeyDown
    CharCase = ecUpperCase
    MaxLength = 3
    CorDeFoco = clInfoBk
    StoredValues = 2
  end
  object EdPsqNomGru: TdxColorEdit
    Left = 210
    Top = 24
    Width = 338
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
    TabOrder = 7
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
  end
  object EdPsqCodSub: TdxColorEdit
    Left = 116
    Top = 47
    Width = 70
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
    OnExit = EdPsqCodSubExit
    OnKeyDown = EdPsqCodSubKeyDown
    CharCase = ecUpperCase
    MaxLength = 4
    CorDeFoco = clInfoBk
    StoredValues = 2
  end
  object EdPsqNomSub: TdxColorEdit
    Left = 210
    Top = 47
    Width = 338
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
    TabOrder = 8
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
  end
  object EdPsqCodPro: TdxColorEdit
    Left = 116
    Top = 70
    Width = 70
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
    OnExit = EdPsqCodProExit
    CharCase = ecUpperCase
    MaxLength = 5
    CorDeFoco = clInfoBk
    StoredValues = 2
  end
  object EdPsqRefPro: TdxColorEdit
    Left = 116
    Top = 94
    Width = 432
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
    MaxLength = 5
    CorDeFoco = clInfoBk
    StoredValues = 2
  end
  object bPesquisa: TBitBtn
    Left = 552
    Top = 71
    Width = 208
    Height = 45
    Caption = '&Selecionar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = bPesquisaClick
    Glyph.Data = {
      F6070000424DF60700000000000036040000280000001E0000001E0000000100
      080000000000C0030000130B0000130B00000001000000010000000000000000
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
      3232320000000000000000EDEDED323232323232323232320000323232323232
      00000031313131FF5C5C5C000000EDEDED323232323232320000323232320000
      31313131313131FF5C5C5C5C5C5C0000EDEDED32323232320000323232005C5C
      31313131313131FF5C5C5C5C5C5C5C5C00EDEDED3232323200003232005C5C5C
      31313131313131FF5C5C5C5C5C5C5C5C5C00EDEDED323232000032005C5C5C5C
      31313100000000000000005C5C5C5C5C5C5C00EDEDED32320000005C5C5C5C5C
      000000FFFFFFFFFFFFFFFF0000005C5C5C5C5C00EDED32320000005C5C5C0000
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF00005C5C5C00EDEDED320000005C5C00FFFF
      FFFF000000000000000000FFFFFFFFFF005C5C00EDEDED320000005C00FFFFFF
      00005B5B5B5B5B5B5B5B5B000000FFFFFF005C00EDEDEDED00000000FFFFFF00
      5B5B5B5B5B5B5B5B5B5B5B5B5B5B00FFFFFF0000EDEDEDED000000FFFFFF0087
      5B5B5B5B5B5B5B5B5BFFFF5B5B5B5B00FFFFFF00EDEDEDED000000FFFF005C5B
      875B5B5B5B5B5B5B5B5B5BFF5B5B875B00FFFF00EDEDED32000000FFFF005C5C
      5B8787315B5B5B5B5B5B5BFF87875B5C00FFFF00EDEDED32000000FFFF005C5C
      5C5B31FF31878787878787875B5C5C5C00FFFF00EDED323200003200FFFFFF00
      5C5C5C5C5C5C5C5C5C5C5C5C5C5C00FFFFFF0032323232320000323200FFFFFF
      0000005C5C5C5C5C5C5C5C5C0000FFFFFF00323232323232000032323200FFFF
      FFFFFF000000000000000000FFFFFFFF00EDED32323232320000323232320000
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF00005D00EDED323232320000323232323232
      000000FFFFFFFFFFFFFFFFFF00000707075D00EDED3232320000323232323232
      32323200000000000000000007FFFF0707070000EDED32320000323232323232
      3232323232323232323232320007FFFF0700000000EDED320000323232323232
      3232323232323232323232323200000000F100000000EDED0000323232323232
      323232323232323232323232323200F0EDF0F100000000ED0000323232323232
      32323232323232323232323232323200F0EDF0F1000000000000323232323232
      3232323232323232323232323232323200F0EDF0F10000000000323232323232
      323232323232323232323232323232323200F0EDF0F100000000323232323232
      32323232323232323232323232323232323200F0EDF0F1000000323232323232
      3232323232323232323232323232323232323200F0EDF0F10000323232323232
      3232323232323232323232323232323232323232000000000000}
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 433
    Width = 765
    Height = 19
    Panels = <
      item
        Width = 750
      end
      item
        Text = 'Quantidade de Itens: 00000'
        Width = 50
      end>
    SimplePanel = False
  end
  object grPro: TdxDBGrid
    Left = 0
    Top = 119
    Width = 765
    Height = 314
    Bands = <
      item
        Width = 1238
      end>
    DefaultLayout = False
    HeaderPanelRowCount = 1
    KeyField = 'ID'
    ShowGroupPanel = True
    ShowSummaryFooter = True
    SummaryGroups = <
      item
        DefaultGroup = True
        SummaryItems = <
          item
            SummaryFormat = '###,###,##0.00'
            SummaryType = cstSum
          end>
        Name = 'grR02SummaryGroup1'
      end>
    SummarySeparator = ', '
    Align = alBottom
    BorderStyle = bsNone
    Color = clInfoBk
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopUpMenu
    TabOrder = 10
    BandColor = clMenu
    BandFont.Charset = ANSI_CHARSET
    BandFont.Color = clWindowText
    BandFont.Height = -11
    BandFont.Name = 'Tahoma'
    BandFont.Style = [fsBold]
    DataSource = dsMonitor_Estoques
    Filter.Active = True
    Filter.AutoDataSetFilter = True
    Filter.Criteria = {00000000}
    GroupPanelColor = clAppWorkSpace
    GroupPanelFontColor = clInfoBk
    GroupNodeColor = clInfoBk
    HeaderFont.Charset = ANSI_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = [fsBold]
    LookAndFeel = lfFlat
    OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
    OptionsCustomize = [edgoBandPanelSizing, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoFullSizing]
    OptionsDB = [edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoAutoCalcPreviewLines, edgoPreview, edgoRowSelect, edgoUseBitmap]
    PreviewFont.Charset = ANSI_CHARSET
    PreviewFont.Color = clBlue
    PreviewFont.Height = -11
    PreviewFont.Name = 'Tahoma'
    PreviewFont.Style = []
    PreviewLines = 0
    RowFooterColor = clInfoBk
    RowFooterTextColor = clRed
    ShowGrid = False
    ShowHiddenInCustomizeBox = True
    ShowRowFooter = True
    object grProCODGRU: TdxDBGridMaskColumn
      Alignment = taCenter
      Caption = 'Grupo'
      Width = 58
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CODGRU'
    end
    object grProCODSUB: TdxDBGridMaskColumn
      Alignment = taCenter
      Caption = 'SubGrupo'
      Width = 81
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CODSUB'
    end
    object grProCODPRO: TdxDBGridMaskColumn
      Alignment = taCenter
      Caption = 'Item'
      Width = 51
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CODPRO'
    end
    object grProDSCPRO: TdxDBGridMaskColumn
      Caption = 'Descrição'
      Width = 236
      BandIndex = 0
      RowIndex = 0
      FieldName = 'DSCPRO'
    end
    object grProREFPRO: TdxDBGridMaskColumn
      Caption = 'Referência'
      Width = 99
      BandIndex = 0
      RowIndex = 0
      FieldName = 'REFPRO'
    end
    object grProNOMMRC: TdxDBGridMaskColumn
      Caption = 'Marca'
      Width = 112
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NOMMRC'
    end
    object grProID: TdxDBGridMaskColumn
      Visible = False
      Width = 131
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ID'
    end
    object grProFILIAL_01: TdxDBGridMaskColumn
      Alignment = taCenter
      Caption = 'Filial 01'
      Sorted = csUp
      Width = 83
      BandIndex = 0
      RowIndex = 0
      FieldName = 'FILIAL_01'
    end
    object grProFILIAL_02: TdxDBGridMaskColumn
      Alignment = taCenter
      Caption = 'Filial 02'
      Width = 74
      BandIndex = 0
      RowIndex = 0
      FieldName = 'FILIAL_02'
    end
    object grProFILIAL_03: TdxDBGridMaskColumn
      Alignment = taCenter
      Caption = 'EcoGold'
      Width = 74
      BandIndex = 0
      RowIndex = 0
      FieldName = 'FILIAL_03'
    end
    object grProFILIAL_04: TdxDBGridMaskColumn
      Alignment = taCenter
      Caption = 'CopLed'
      Width = 74
      BandIndex = 0
      RowIndex = 0
      FieldName = 'FILIAL_04'
    end
    object grProFILIAL_05: TdxDBGridMaskColumn
      Alignment = taCenter
      Caption = 'MundoSeg'
      Width = 81
      BandIndex = 0
      RowIndex = 0
      FieldName = 'FILIAL_05'
    end
    object grProFILIAL_06: TdxDBGridMaskColumn
      Alignment = taCenter
      Caption = 'CopTek'
      Width = 72
      BandIndex = 0
      RowIndex = 0
      FieldName = 'FILIAL_06'
    end
    object grProFILIAL_07: TdxDBGridMaskColumn
      Alignment = taCenter
      Caption = 'Filial 07'
      Width = 72
      BandIndex = 0
      RowIndex = 0
      FieldName = 'FILIAL_07'
    end
    object grProFILIAL_08: TdxDBGridMaskColumn
      Alignment = taCenter
      Caption = 'Filial 08'
      Width = 71
      BandIndex = 0
      RowIndex = 0
      FieldName = 'FILIAL_08'
    end
  end
  object dsMonitor_Estoques: TwwDataSource
    DataSet = qMonitor_Estoques
    Left = 592
    Top = 8
  end
  object qMonitor_Estoques: TwwQuery
    AfterOpen = qMonitor_EstoquesAfterOpen
    DatabaseName = 'ISade'
    SQL.Strings = (
      
        'select p.dscpro, p.refpro, mrc.nommrc, m.* from MON_EST_EST_ATUA' +
        'L m'
      'inner join estpro p on p.codgru = m.codgru and'
      '                       p.codsub = m.codsub and'
      '                       p.codpro = m.codpro'
      'left join estmrc mrc on p.codmrc = mrc.codmrc')
    ValidateWithMask = True
    Left = 552
    Top = 8
  end
  object PopUpMenu: TPopupMenu
    OwnerDraw = True
    Left = 632
    Top = 8
    object Exportarpara1: TMenuItem
      Caption = 'Exportar para...'
      object HTML: TMenuItem
        Caption = 'HTML'
        Hint = 'Exportar Relatorio no Formato HTML'
        OnClick = HTMLClick
      end
      object Excel: TMenuItem
        Caption = 'EXCEL'
        Hint = 'Exportar Relatorio no Formato EXCEL'
        OnClick = ExcelClick
      end
      object XML: TMenuItem
        Caption = 'XML && XSL'
        Hint = 'Exportar Relatorio no Formato XML '
        OnClick = XMLClick
      end
    end
  end
  object SaveDialog: TSaveDialog
    FileName = 'ExpGrid'
    Options = [ofOverwritePrompt, ofHideReadOnly]
    Left = 672
    Top = 8
  end
  object quSql: TwwQuery
    Tag = 99
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 711
    Top = 8
  end
end
