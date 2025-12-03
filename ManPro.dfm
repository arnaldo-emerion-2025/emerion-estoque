inherited fmManPro: TfmManPro
  Left = 401
  Top = 77
  Caption = 'Itens'
  ClientHeight = 567
  ClientWidth = 790
  Color = 15788249
  OnClose = FormClose
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object Label153: TLabel
    Left = 412
    Top = 747
    Width = 87
    Height = 13
    Caption = 'Regra Pis/Entrada'
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
  object Label155: TLabel
    Left = 2
    Top = 747
    Width = 75
    Height = 13
    Caption = 'Regra Pis/Saída'
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
  object Label154: TLabel
    Left = 396
    Top = 771
    Width = 104
    Height = 13
    Caption = 'Regra Cofins/Entrada'
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
  object Label156: TLabel
    Left = 2
    Top = 771
    Width = 92
    Height = 13
    Caption = 'Regra Cofins/Saída'
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
  object pcPro: TPageControl
    Left = 0
    Top = 0
    Width = 789
    Height = 566
    ActivePage = pcPag2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Style = tsButtons
    TabOrder = 0
    object pcPag1: TTabSheet
      Caption = '  &Visualizar  '
      OnShow = pcPag1Show
      object Shape9: TShape
        Left = 722
        Top = 510
        Width = 60
        Height = 21
        Brush.Color = clRed
        Pen.Color = clRed
        Shape = stRoundRect
      end
      object Shape57: TShape
        Left = 186
        Top = 236
        Width = 20
        Height = 3
        Brush.Color = 11106843
        Pen.Color = 14789952
      end
      object Shape56: TShape
        Left = 0
        Top = 228
        Width = 185
        Height = 18
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Label45: TLabel
        Left = 4
        Top = 230
        Width = 106
        Height = 13
        Caption = 'Itens selecionados'
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
      object Shape55: TShape
        Left = 186
        Top = 8
        Width = 595
        Height = 3
        Brush.Color = 11106843
        Pen.Color = 14789952
      end
      object Shape54: TShape
        Left = 0
        Top = 0
        Width = 185
        Height = 18
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Label44: TLabel
        Left = 3
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
      object Shape53: TShape
        Left = 0
        Top = 510
        Width = 492
        Height = 21
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Label1: TLabel
        Left = 4
        Top = 514
        Width = 259
        Height = 13
        Caption = 'Crtl+'#39'I'#39'-Incluir  Ctrl+'#39'E'#39'-Excluir  Ctrl+'#39'S'#39'-Salvar'
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
      object Label47: TLabel
        Left = 1
        Top = 93
        Width = 78
        Height = 13
        Caption = 'Classificação :'
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
      object Label48: TLabel
        Left = 1
        Top = 116
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
      object Label49: TLabel
        Left = 1
        Top = 139
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
      object Label50: TLabel
        Left = 1
        Top = 162
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
      object Label51: TLabel
        Left = 1
        Top = 185
        Width = 95
        Height = 13
        Caption = 'Descrição Principal :'
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
      object BbPsqClp: TSpeedButton
        Left = 187
        Top = 90
        Width = 23
        Height = 21
        Hint = 'Pesquisar Classificações de Itens Existentes'
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
        OnClick = BbPsqClpClick
      end
      object BbPsqGru: TSpeedButton
        Left = 187
        Top = 113
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
        OnClick = BbPsqGruClick
      end
      object BbPsqSub: TSpeedButton
        Left = 187
        Top = 136
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
        OnClick = BbPsqSubClick
      end
      object Label110: TLabel
        Left = 1
        Top = 24
        Width = 54
        Height = 13
        Caption = 'Categoria :'
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
      object bPsqCat: TSpeedButton
        Left = 187
        Top = 21
        Width = 23
        Height = 21
        Hint = 'Pesquisar Categorias Existentes'
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
        OnClick = bPsqCatClick
      end
      object Label111: TLabel
        Left = 1
        Top = 47
        Width = 27
        Height = 13
        Caption = 'Tipo :'
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
      object bPsqTip: TSpeedButton
        Left = 187
        Top = 44
        Width = 23
        Height = 21
        Hint = 'Pesquisar Tipos Existentes'
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
        OnClick = bPsqTipClick
      end
      object Label112: TLabel
        Left = 1
        Top = 70
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
        Top = 67
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
      object Label113: TLabel
        Left = 1
        Top = 208
        Width = 98
        Height = 13
        Caption = 'Referência Interna :'
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
      object Label114: TLabel
        Left = 393
        Top = 162
        Width = 34
        Height = 13
        Caption = 'Similar:'
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
      object Label115: TLabel
        Left = 291
        Top = 208
        Width = 43
        Height = 13
        Caption = 'ID Atual:'
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
      object pnQuant: TLabel
        Left = 446
        Top = 514
        Width = 42
        Height = 13
        Alignment = taRightJustify
        Caption = '000000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object ddMarca: TShape
        Left = 493
        Top = 510
        Width = 228
        Height = 21
        Brush.Color = clRed
        Pen.Color = clRed
        Shape = stRoundRect
      end
      object ddRefPro: TShape
        Left = 651
        Top = 227
        Width = 130
        Height = 20
        Brush.Color = clRed
        Pen.Color = clRed
        Shape = stRoundRect
      end
      object ddTipo: TShape
        Left = 417
        Top = 227
        Width = 233
        Height = 20
        Brush.Color = clRed
        Pen.Color = clRed
        Shape = stRoundRect
      end
      object ddCategoria: TShape
        Left = 207
        Top = 227
        Width = 209
        Height = 20
        Brush.Color = clRed
        Pen.Color = clRed
        Shape = stRoundRect
      end
      object Label139: TLabel
        Left = 212
        Top = 162
        Width = 76
        Height = 13
        Caption = 'Cód. de barras:'
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
      object Label151: TLabel
        Left = 398
        Top = 208
        Width = 42
        Height = 13
        Caption = 'ID novo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Panel3: TPanel
        Left = 0
        Top = 248
        Width = 780
        Height = 260
        BevelOuter = bvNone
        Color = 14789952
        TabOrder = 24
        object grPro: ThGrid
          Left = 1
          Top = 1
          Width = 778
          Height = 257
          Selected.Strings = (
            'CODITE'#9'18'#9'Código                        '
            'DSCPRO'#9'59'#9'Descrição Principal'
            'SIMPRO'#9'11'#9' Similar          '
            'CODCAT'#9'10'#9'Categoria'
            'CODTIP'#9'10'#9'Tipo'
            'CODMRC'#9'10'#9'Marca            '
            'FLBPRO'#9'3'#9'  D   '
            'ID_REGRA_PIS'#9'10'#9'ID_REGRA_PIS'
            'ID_REGRA_COFINS'#9'10'#9'ID_REGRA_COFINS'
            'ID_REGRA_PIS_ENTRADA'#9'10'#9'ID_REGRA_PIS_ENTRADA'
            'ID_REGRA_COFINS_ENTRADA'#9'10'#9'ID_REGRA_COFINS_ENTRADA')
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          OnCellChanged = grProCellChanged
          FixedCols = 0
          ShowHorzScrollBar = True
          ShowVertScrollBar = False
          BorderStyle = bsNone
          Color = 16577773
          DataSource = DsPro
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyOptions = []
          Options = [dgTitles, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
          ParentFont = False
          PopupMenu = PopupMenu2
          TabOrder = 0
          TitleAlignment = taLeftJustify
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = [fsBold]
          TitleLines = 1
          TitleButtons = False
          OnDblClick = grProDblClick
          IndicatorColor = icYellow
          CorDeFoco = clInfoBk
        end
      end
      object EdPsqCodClp: TdxColorEdit
        Left = 116
        Top = 89
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
        TabOrder = 6
        OnExit = EdPsqCodClpExit
        OnKeyDown = EdPsqCodClpKeyDown
        OnKeyPress = EdPsqCodClpKeyPress
        CharCase = ecUpperCase
        MaxLength = 1
        CorDeFoco = clInfoBk
        StoredValues = 2
      end
      object EdPsqCodGru: TdxColorEdit
        Left = 116
        Top = 112
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
        TabOrder = 8
        OnExit = EdPsqCodGruExit
        OnKeyDown = EdPsqCodGruKeyDown
        OnKeyPress = EdPsqCodClpKeyPress
        CharCase = ecUpperCase
        MaxLength = 3
        CorDeFoco = clInfoBk
        StoredValues = 2
      end
      object EdPsqCodSub: TdxColorEdit
        Left = 116
        Top = 135
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
        TabOrder = 10
        OnExit = EdPsqCodSubExit
        OnKeyDown = EdPsqCodSubKeyDown
        OnKeyPress = EdPsqCodClpKeyPress
        CharCase = ecUpperCase
        MaxLength = 4
        CorDeFoco = clInfoBk
        StoredValues = 2
      end
      object EdPsqCodPro: TdxColorEdit
        Left = 116
        Top = 158
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
        TabOrder = 12
        OnExit = EdPsqCodProExit
        CharCase = ecUpperCase
        MaxLength = 5
        CorDeFoco = clInfoBk
        StoredValues = 2
      end
      object EdPsqDscPro: TdxColorEdit
        Left = 116
        Top = 181
        Width = 377
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
        TabOrder = 15
        CorDeFoco = clInfoBk
      end
      object bPesquisa: TBitBtn
        Left = 494
        Top = 181
        Width = 162
        Height = 45
        Caption = '&Selecionar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 23
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
      object Rgbusca: TRadioGroup
        Left = 495
        Top = 99
        Width = 161
        Height = 80
        Caption = ' Busca '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'Iniciais'
          'Inteligente')
        ParentFont = False
        TabOrder = 20
      end
      object rgStatus: TRadioGroup
        Left = 495
        Top = 17
        Width = 161
        Height = 82
        Caption = ' Status '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'Ativos'
          'Descontinuados'
          'Todos')
        ParentFont = False
        TabOrder = 19
      end
      object EdPsqNomSub: TdxColorEdit
        Left = 210
        Top = 135
        Width = 283
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
        TabOrder = 11
        OnExit = EdPsqCodSubExit
        CharCase = ecUpperCase
        CorDeFoco = clInfoBk
      end
      object EdPsqNomGru: TdxColorEdit
        Left = 210
        Top = 112
        Width = 283
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
        TabOrder = 9
        OnExit = EdPsqCodGruExit
        CharCase = ecUpperCase
        CorDeFoco = clInfoBk
      end
      object EdPsqNomClp: TdxColorEdit
        Left = 210
        Top = 89
        Width = 283
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
      object rgOrdem: TRadioGroup
        Left = 658
        Top = 99
        Width = 123
        Height = 128
        Caption = ' Ordem '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'Código'
          'Descr Principal'
          'Similar'
          'Categoria'
          'Tipo'
          'Marca')
        ParentFont = False
        TabOrder = 22
      end
      object EdPsqCodCat: TdxColorEdit
        Left = 116
        Top = 20
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
        OnExit = EdPsqCodCatExit
        OnKeyDown = EdPsqCodCatKeyDown
        OnKeyPress = EdPsqCodClpKeyPress
        CharCase = ecUpperCase
        MaxLength = 0
        CorDeFoco = clInfoBk
        StoredValues = 2
      end
      object EdPsqNomCat: TdxColorEdit
        Left = 210
        Top = 20
        Width = 283
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
        CharCase = ecUpperCase
        CorDeFoco = clInfoBk
      end
      object EdPsqCodTip: TdxColorEdit
        Left = 116
        Top = 43
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
        OnExit = EdPsqCodTipExit
        OnKeyDown = EdPsqCodTipKeyDown
        OnKeyPress = EdPsqCodClpKeyPress
        CharCase = ecUpperCase
        MaxLength = 0
        CorDeFoco = clInfoBk
        StoredValues = 2
      end
      object EdPsqNomTip: TdxColorEdit
        Left = 210
        Top = 43
        Width = 283
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
        TabOrder = 3
        CharCase = ecUpperCase
        CorDeFoco = clInfoBk
      end
      object EdPsqCodMrc: TdxColorEdit
        Left = 116
        Top = 66
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
        TabOrder = 4
        OnExit = EdPsqCodMrcExit
        OnKeyDown = EdPsqCodMrcKeyDown
        OnKeyPress = EdPsqCodClpKeyPress
        CharCase = ecUpperCase
        MaxLength = 0
        CorDeFoco = clInfoBk
        StoredValues = 2
      end
      object EdPsqNomMrc: TdxColorEdit
        Left = 210
        Top = 66
        Width = 283
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
        TabOrder = 5
        CharCase = ecUpperCase
        CorDeFoco = clInfoBk
      end
      object EdPsqRefPro: TdxColorEdit
        Left = 116
        Top = 204
        Width = 173
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
        TabOrder = 16
        CharCase = ecUpperCase
        CorDeFoco = clInfoBk
      end
      object EdPsqSimPro: TdxColorEdit
        Left = 429
        Top = 158
        Width = 64
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
        TabOrder = 14
        CharCase = ecUpperCase
        CorDeFoco = clInfoBk
      end
      object EdPsqIdePro: TdxColorEdit
        Left = 336
        Top = 204
        Width = 51
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
        TabOrder = 17
        CharCase = ecUpperCase
        CorDeFoco = clInfoBk
      end
      object rgPromocao: TRadioGroup
        Left = 658
        Top = 17
        Width = 123
        Height = 82
        Caption = ' Promoções '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemIndex = 2
        Items.Strings = (
          'Sim'
          'Nao'
          'Todos')
        ParentFont = False
        TabOrder = 21
      end
      object pnCategoria: TPanel
        Left = 209
        Top = 227
        Width = 205
        Height = 20
        BevelOuter = bvNone
        Color = clRed
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 25
      end
      object pnTipo: TPanel
        Left = 419
        Top = 227
        Width = 229
        Height = 20
        BevelOuter = bvNone
        Color = clRed
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 26
      end
      object pnRefPro: TPanel
        Left = 653
        Top = 227
        Width = 126
        Height = 20
        BevelOuter = bvNone
        Color = clRed
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 27
      end
      object pnMarca: TPanel
        Left = 495
        Top = 510
        Width = 223
        Height = 19
        BevelOuter = bvNone
        Color = clRed
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 28
      end
      object pnPerCom: TPanel
        Left = 726
        Top = 511
        Width = 52
        Height = 20
        BevelOuter = bvNone
        Color = clRed
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 29
      end
      object EdPsqCbaPro: TdxColorEdit
        Left = 290
        Top = 158
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
        TabOrder = 13
        CharCase = ecUpperCase
        CorDeFoco = clInfoBk
      end
      object EdPsqId2Pro: TdxColorEdit
        Left = 442
        Top = 204
        Width = 51
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
        TabOrder = 18
        CharCase = ecUpperCase
        CorDeFoco = clInfoBk
      end
    end
    object pcPag2: TTabSheet
      Caption = ' &Identificação '
      ImageIndex = 1
      OnShow = pcPag2Show
      object Label94: TLabel
        Left = 0
        Top = 491
        Width = 93
        Height = 13
        Caption = 'Subst Trib./           :'
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
      object Shape64: TShape
        Left = 0
        Top = 330
        Width = 185
        Height = 16
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Shape59: TShape
        Left = 186
        Top = 8
        Width = 595
        Height = 3
        Brush.Color = 11106843
        Pen.Color = 14789952
      end
      object Shape58: TShape
        Left = 0
        Top = 0
        Width = 185
        Height = 18
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Label2: TLabel
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
      object Label6: TLabel
        Left = 1
        Top = 24
        Width = 75
        Height = 13
        Caption = 'Classificação:'
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
      object Label9: TLabel
        Left = 1
        Top = 47
        Width = 37
        Height = 13
        Caption = 'Grupo:'
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
      object Label10: TLabel
        Left = 1
        Top = 70
        Width = 57
        Height = 13
        Caption = 'Subgrupo:'
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
      object Label52: TLabel
        Left = 1
        Top = 93
        Width = 31
        Height = 13
        Caption = 'Item:'
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
      object Label32: TLabel
        Left = 188
        Top = 93
        Width = 312
        Height = 13
        Caption = 'Último item cadastrado para o grupo/subgrupo 000123'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label3: TLabel
        Left = 1
        Top = 116
        Width = 92
        Height = 13
        Caption = 'Descrição principal:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label7: TLabel
        Left = 1
        Top = 139
        Width = 94
        Height = 13
        Caption = 'Descrição reduzida:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label8: TLabel
        Left = 1
        Top = 162
        Width = 24
        Height = 13
        Caption = 'Tipo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label11: TLabel
        Left = 1
        Top = 185
        Width = 104
        Height = 13
        Caption = 'Cod. Barras/Unidade:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label27: TLabel
        Left = 1
        Top = 208
        Width = 58
        Height = 13
        Caption = 'Localização:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label53: TLabel
        Left = 1
        Top = 231
        Width = 85
        Height = 13
        Caption = 'Unid. de entrada:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label54: TLabel
        Left = 343
        Top = 231
        Width = 83
        Height = 13
        Caption = 'Relação entrada:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label55: TLabel
        Left = 343
        Top = 162
        Width = 42
        Height = 13
        Caption = 'ID atual:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label56: TLabel
        Left = 343
        Top = 185
        Width = 92
        Height = 13
        Caption = 'Cod. Barras/Emb. :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label58: TLabel
        Left = 343
        Top = 208
        Width = 93
        Height = 13
        Caption = 'Referência interna:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label59: TLabel
        Left = 1
        Top = 255
        Width = 86
        Height = 13
        Caption = 'Unidade de saída:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label60: TLabel
        Left = 555
        Top = 231
        Width = 60
        Height = 13
        Caption = 'Peso liquido:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label62: TLabel
        Left = 555
        Top = 255
        Width = 56
        Height = 13
        Caption = 'Peso bruto:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label64: TLabel
        Left = 555
        Top = 185
        Width = 53
        Height = 13
        Caption = 'Qtd. Emb.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label65: TLabel
        Left = 405
        Top = 139
        Width = 34
        Height = 13
        Caption = 'Similar:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label16: TLabel
        Left = 4
        Top = 331
        Width = 112
        Height = 13
        Caption = 'Regras de IPI/ICMS'
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
      object Shape65: TShape
        Left = 186
        Top = 337
        Width = 595
        Height = 3
        Brush.Color = 11106843
        Pen.Color = 14789952
      end
      object Label19: TLabel
        Left = 448
        Top = 398
        Width = 62
        Height = 13
        Caption = '(%)Aliquota:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label21: TLabel
        Left = 448
        Top = 444
        Width = 62
        Height = 13
        Caption = '(%)Aliquota:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label26: TLabel
        Left = 448
        Top = 421
        Width = 62
        Height = 13
        Caption = '(%)Aliquota:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label28: TLabel
        Left = 448
        Top = 467
        Width = 62
        Height = 13
        Caption = '(%)Aliquota:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label13: TLabel
        Left = 458
        Top = 24
        Width = 75
        Height = 13
        Caption = 'Descontinuado:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label102: TLabel
        Left = 558
        Top = 467
        Width = 97
        Height = 13
        Caption = 'Classificação do IPI:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label103: TLabel
        Left = 558
        Top = 444
        Width = 97
        Height = 13
        Caption = 'Classificação do IPI:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label104: TLabel
        Left = 555
        Top = 208
        Width = 63
        Height = 13
        Caption = 'Part number:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label105: TLabel
        Left = 343
        Top = 255
        Width = 70
        Height = 13
        Caption = 'Relação saída:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label63: TLabel
        Left = 555
        Top = 162
        Width = 68
        Height = 13
        Caption = 'Qtd. volumes:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label83: TLabel
        Left = 1
        Top = 278
        Width = 33
        Height = 13
        Caption = 'Marca:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label5: TLabel
        Left = 62
        Top = 421
        Width = 44
        Height = 13
        Caption = 'Entrada'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label84: TLabel
        Left = 51
        Top = 467
        Width = 44
        Height = 13
        Caption = 'Entrada'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label92: TLabel
        Left = 57
        Top = 513
        Width = 44
        Height = 13
        Caption = 'Entrada'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label106: TLabel
        Left = 63
        Top = 398
        Width = 31
        Height = 13
        Caption = 'Saida'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label107: TLabel
        Left = 50
        Top = 444
        Width = 31
        Height = 13
        Caption = 'Saida'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label108: TLabel
        Left = 57
        Top = 491
        Width = 31
        Height = 13
        Caption = 'Saida'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label109: TLabel
        Left = 343
        Top = 278
        Width = 51
        Height = 13
        Caption = 'Categoria:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label141: TLabel
        Left = 558
        Top = 398
        Width = 92
        Height = 13
        Caption = 'Situação tributária:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label149: TLabel
        Left = 452
        Top = 162
        Width = 42
        Height = 13
        Caption = 'ID novo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label152: TLabel
        Left = 1
        Top = 302
        Width = 94
        Height = 13
        Caption = 'Início de regime ST:'
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
      object Label157: TLabel
        Left = 1
        Top = 352
        Width = 106
        Height = 13
        Caption = 'Regra de NCM/Saida :'
        Color = clBtnFace
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label158: TLabel
        Left = 342
        Top = 303
        Width = 94
        Height = 13
        Caption = 'Origem do Produto:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label159: TLabel
        Left = 1
        Top = 376
        Width = 118
        Height = 13
        Caption = 'Regra de NCM/Entrada :'
        Color = clBtnFace
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label95: TLabel
        Left = 1
        Top = 513
        Width = 105
        Height = 13
        Caption = 'Subst Trib./               :'
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
        Left = 1
        Top = 467
        Width = 99
        Height = 13
        Caption = 'Regra IPI/               :'
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
        Left = 0
        Top = 444
        Width = 87
        Height = 13
        Caption = 'Regra IPI/           :'
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
        Left = 1
        Top = 421
        Width = 110
        Height = 13
        Caption = 'Regra ICMS/               :'
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
      object Label12: TLabel
        Left = 1
        Top = 398
        Width = 98
        Height = 13
        Caption = 'Regra ICMS/           :'
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
      object EdCodClp: TdxDBColorEdit
        Left = 116
        Top = 20
        Width = 70
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
        OnKeyDown = EdCodClpKeyDown
        OnKeyPress = EdPsqCodClpKeyPress
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'CODCLP'
        DataSource = DsPro
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdCodGru: TdxDBColorEdit
        Left = 116
        Top = 43
        Width = 70
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
        TabOrder = 3
        OnExit = EdCodGruExit
        OnKeyDown = EdCodGruKeyDown
        OnKeyPress = EdPsqCodClpKeyPress
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'CODGRU'
        DataSource = DsPro
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdCodSub: TdxDBColorEdit
        Left = 116
        Top = 66
        Width = 70
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
        TabOrder = 5
        OnExit = EdCodSubExit
        OnKeyDown = EdCodSubKeyDown
        OnKeyPress = EdPsqCodClpKeyPress
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'CODSUB'
        DataSource = DsPro
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdCodPro: TdxDBColorEdit
        Left = 116
        Top = 89
        Width = 70
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
        OnExit = EdCodProExit
        OnKeyUp = EdCodProKeyUp
        OnMouseUp = EdCodProMouseUp
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'CODPRO'
        DataSource = DsPro
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object CbNomSub: TdxDBColorLookupEdit
        Left = 186
        Top = 67
        Width = 367
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
        TabStop = False
        DataField = 'CODSUB'
        DataSource = DsPro
        ReadOnly = False
        ListFieldName = 'NOMSUB;CODSUB'
        KeyFieldName = 'CODSUB'
        ListSource = DsSub
        LookupKeyValue = Null
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
      object CbNomGru: TdxDBColorLookupEdit
        Left = 186
        Top = 43
        Width = 367
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
        TabOrder = 4
        TabStop = False
        DataField = 'CODGRU'
        DataSource = DsPro
        ReadOnly = False
        ListFieldName = 'NOMGRU;CODGRU'
        KeyFieldName = 'CODGRU'
        ListSource = DsGru
        LookupKeyValue = Null
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
      object CbNomClp: TdxDBColorLookupEdit
        Left = 186
        Top = 20
        Width = 270
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
        TabStop = False
        DataField = 'CODCLP'
        DataSource = DsPro
        ReadOnly = False
        ListFieldName = 'NOMCLP;CODCLP'
        KeyFieldName = 'CODCLP'
        ListSource = DsClp
        LookupKeyValue = Null
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
      object EdDscPro: TdxDBColorEdit
        Left = 116
        Top = 112
        Width = 437
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
        TabOrder = 8
        OnExit = EdDscProExit
        Alignment = taLeftJustify
        DataField = 'DSCPRO'
        DataSource = DsPro
        MaxLength = 70
        CorDeFoco = clInfoBk
        StoredValues = 3
      end
      object EdDsrPro: TdxDBColorEdit
        Left = 116
        Top = 135
        Width = 284
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
        TabOrder = 9
        Alignment = taLeftJustify
        DataField = 'DSRPRO'
        DataSource = DsPro
        MaxLength = 20
        CorDeFoco = clInfoBk
        StoredValues = 3
      end
      object EdCodTip: TdxDBColorEdit
        Left = 116
        Top = 158
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
        TabOrder = 11
        OnExit = EdCodTipExit
        OnKeyDown = EdCodTipKeyDown
        OnKeyPress = EdPsqCodClpKeyPress
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'CODTIP'
        DataSource = DsPro
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object CbNomTip: TdxDBColorLookupEdit
        Left = 186
        Top = 158
        Width = 154
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
        TabOrder = 12
        TabStop = False
        DataField = 'CODTIP'
        DataSource = DsPro
        ReadOnly = False
        ListFieldName = 'NOMTIP;CODTIP'
        KeyFieldName = 'CODTIP'
        ListSource = DsTip
        LookupKeyValue = Null
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
      object EdCbaPro: TdxDBColorEdit
        Left = 116
        Top = 181
        Width = 224
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
        TabOrder = 16
        OnKeyPress = EdCbaProKeyPress
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'CBAPRO'
        DataSource = DsPro
        MaxLength = 13
        CorDeFoco = clInfoBk
        StoredValues = 3
      end
      object EdLocPro: TdxDBColorEdit
        Left = 116
        Top = 204
        Width = 224
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
        TabOrder = 19
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'LOCPRO'
        DataSource = DsPro
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdCodUne: TdxDBColorEdit
        Left = 116
        Top = 227
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
        TabOrder = 22
        OnExit = EdCodUneExit
        OnKeyDown = EdCodUneKeyDown
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'CODUNE'
        DataSource = DsPro
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object CbNomUne: TdxDBColorLookupEdit
        Left = 186
        Top = 227
        Width = 154
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
        TabOrder = 23
        TabStop = False
        DataField = 'CODUNE'
        DataSource = DsPro
        ReadOnly = False
        ListFieldName = 'NOMUND;CODUND'
        KeyFieldName = 'CODUND'
        ListSource = DsUne
        LookupKeyValue = Null
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
      object EdQtePro: TdxDBColorCurrencyEdit
        Left = 441
        Top = 227
        Width = 112
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
        TabOrder = 24
        DataField = 'QTEPRO'
        DataSource = DsPro
        DecimalPlaces = 4
        Nullable = False
        CorDeFoco = clInfoBk
      end
      object EdQtsPro: TdxDBColorCurrencyEdit
        Left = 441
        Top = 251
        Width = 112
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
        TabOrder = 28
        DataField = 'QTSPRO'
        DataSource = DsPro
        DecimalPlaces = 4
        Nullable = False
        CorDeFoco = clInfoBk
      end
      object EdIdePro: TdxDBColorEdit
        Left = 387
        Top = 158
        Width = 57
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
        TabOrder = 13
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'IDEPRO'
        DataSource = DsPro
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdCbaEmb: TdxDBColorEdit
        Left = 441
        Top = 181
        Width = 112
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
        TabOrder = 17
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'CBAEMB'
        DataSource = DsPro
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdRefPro: TdxDBColorEdit
        Left = 441
        Top = 204
        Width = 112
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
        TabOrder = 20
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'REFPRO'
        DataSource = DsPro
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdCodUns: TdxDBColorEdit
        Left = 116
        Top = 251
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
        TabOrder = 26
        OnExit = EdCodUnsExit
        OnKeyDown = EdCodUnsKeyDown
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'CODUNS'
        DataSource = DsPro
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object CbNomUns: TdxDBColorLookupEdit
        Left = 186
        Top = 251
        Width = 154
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
        TabOrder = 27
        TabStop = False
        DataField = 'CODUNS'
        DataSource = DsPro
        ReadOnly = False
        ListFieldName = 'NOMUND;CODUND'
        KeyFieldName = 'CODUND'
        ListSource = DsUns
        LookupKeyValue = Null
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
      object EdQtdEmb: TdxDBColorCurrencyEdit
        Left = 638
        Top = 181
        Width = 144
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
        TabOrder = 18
        DataField = 'QTDEMB'
        DataSource = DsPro
        DecimalPlaces = 4
        DisplayFormat = '###,###,##0.0000'
        Nullable = False
        CorDeFoco = clInfoBk
        StoredValues = 0
      end
      object EdPesLiq: TdxDBColorCurrencyEdit
        Left = 638
        Top = 227
        Width = 144
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
        TabOrder = 25
        DataField = 'PESLIQ'
        DataSource = DsPro
        DecimalPlaces = 4
        DisplayFormat = '###,###,##0.0000'
        Nullable = False
        CorDeFoco = clInfoBk
        StoredValues = 0
      end
      object EdPesBrt: TdxDBColorCurrencyEdit
        Left = 638
        Top = 251
        Width = 144
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
        TabOrder = 29
        DataField = 'PESBRT'
        DataSource = DsPro
        DecimalPlaces = 4
        DisplayFormat = '###,###,##0.0000'
        Nullable = False
        CorDeFoco = clInfoBk
        StoredValues = 0
      end
      object EdSimPro: TdxDBColorEdit
        Left = 441
        Top = 135
        Width = 112
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
        TabOrder = 10
        OnExit = EdSimProExit
        OnKeyDown = EdSimProKeyDown
        OnKeyUp = EdSimProKeyUp
        OnMouseUp = EdSimProMouseUp
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'SIMPRO'
        DataSource = DsPro
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdIcmSai: TdxDBColorEdit
        Left = 116
        Top = 394
        Width = 109
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
        TabOrder = 35
        OnExit = EdIcmSaiExit
        OnKeyDown = EdIcmSaiKeyDown
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'ICMSAI'
        DataSource = DsPro
        OnChange = EdIcmSaiChange
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdIpiSai: TdxDBColorEdit
        Left = 116
        Top = 440
        Width = 109
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
        TabOrder = 41
        OnExit = EdIpiSaiExit
        OnKeyDown = EdIpiSaiKeyDown
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'IPISAI'
        DataSource = DsPro
        OnChange = EdIpiSaiChange
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object CbNomIpiSai: TdxDBColorLookupEdit
        Left = 225
        Top = 440
        Width = 218
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
        TabOrder = 42
        TabStop = False
        OnExit = CbNomIpiSaiExit
        DataField = 'IPISAI'
        DataSource = DsPro
        ReadOnly = False
        DropDownWidth = 700
        ListFieldName = 'NOMIPI;CODIPI;PERIPI;CLSIPI'
        KeyFieldName = 'CODIPI'
        ListSource = DsIpiSai
        LookupKeyValue = Null
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
      object EdIpiEnt: TdxDBColorEdit
        Left = 116
        Top = 463
        Width = 109
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
        TabOrder = 45
        OnExit = EdIpiEntExit
        OnKeyDown = EdIpiEntKeyDown
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'IPIENT'
        DataSource = DsPro
        OnChange = EdIpiEntChange
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdIcmEnt: TdxDBColorEdit
        Left = 116
        Top = 417
        Width = 109
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
        TabOrder = 38
        OnExit = EdIcmEntExit
        OnKeyDown = EdIcmEntKeyDown
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'ICMENT'
        DataSource = DsPro
        OnChange = EdIcmEntChange
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object CbNomIcmEnt: TdxDBColorLookupEdit
        Left = 225
        Top = 417
        Width = 218
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
        TabOrder = 39
        TabStop = False
        OnExit = CbNomIcmEntExit
        DataField = 'ICMENT'
        DataSource = DsPro
        ReadOnly = False
        DropDownWidth = 430
        ListFieldName = 'NOMICM;CODICM;PERICM'
        KeyFieldName = 'CODICM'
        ListSource = DsIcmEnt
        LookupKeyValue = Null
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
      object CbNomIpiEnt: TdxDBColorLookupEdit
        Left = 225
        Top = 463
        Width = 218
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
        TabOrder = 46
        TabStop = False
        OnExit = CbNomIpiEntExit
        DataField = 'IPIENT'
        DataSource = DsPro
        ReadOnly = False
        DropDownWidth = 700
        ListFieldName = 'NOMIPI;CODIPI;PERIPI;CLSIPI'
        KeyFieldName = 'CODIPI'
        ListSource = DsIpiEnt
        LookupKeyValue = Null
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
      object EdSaiIcm: TdxDBColorCurrencyEdit
        Left = 512
        Top = 394
        Width = 33
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
        TabOrder = 37
        TabStop = False
        Visible = False
        DataField = 'SAIICM'
        DataSource = DsPro
        ReadOnly = True
        DecimalPlaces = 0
        Nullable = False
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
      object EdSaiIpi: TdxDBColorCurrencyEdit
        Left = 512
        Top = 440
        Width = 33
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
        TabOrder = 43
        TabStop = False
        Visible = False
        DataField = 'SAIIPI'
        DataSource = DsPro
        ReadOnly = True
        DecimalPlaces = 0
        Nullable = False
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
      object EdEntIcm: TdxDBColorCurrencyEdit
        Left = 512
        Top = 417
        Width = 33
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
        TabOrder = 40
        TabStop = False
        Visible = False
        DataField = 'ENTICM'
        DataSource = DsPro
        ReadOnly = True
        DecimalPlaces = 0
        Nullable = False
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
      object EdEntIpi: TdxDBColorCurrencyEdit
        Left = 512
        Top = 463
        Width = 33
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
        TabOrder = 47
        TabStop = False
        Visible = False
        DataField = 'ENTIPI'
        DataSource = DsPro
        ReadOnly = True
        DecimalPlaces = 0
        Nullable = False
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
      object CbNomIcmSai: TdxDBColorLookupEdit
        Left = 225
        Top = 394
        Width = 218
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
        TabOrder = 36
        TabStop = False
        OnExit = CbNomIcmSaiExit
        DataField = 'ICMSAI'
        DataSource = DsPro
        ReadOnly = False
        DropDownWidth = 430
        ListFieldName = 'NOMICM;CODICM;PERICM'
        KeyFieldName = 'CODICM'
        ListSource = DsIcmSai
        LookupKeyValue = Null
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
      object EdCodSts: TdxDBColorEdit
        Left = 116
        Top = 486
        Width = 109
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
        TabOrder = 49
        OnExit = EdCodStsExit
        OnKeyDown = EdCodStsKeyDown
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'CODSTS'
        DataSource = DsPro
        MaxLength = 20
        CorDeFoco = clInfoBk
        StoredValues = 3
      end
      object CbNomSts: TdxDBColorLookupEdit
        Left = 225
        Top = 486
        Width = 557
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
        TabOrder = 50
        TabStop = False
        OnExit = CbNomStsExit
        DataField = 'CODSTS'
        DataSource = DsPro
        ReadOnly = False
        DropDownWidth = 430
        ListFieldName = 'NOMSTR'
        KeyFieldName = 'CODSTR'
        ListSource = DsSts
        LookupKeyValue = Null
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
      object EdCodSte: TdxDBColorEdit
        Left = 116
        Top = 509
        Width = 109
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
        TabOrder = 51
        OnExit = EdCodSteExit
        OnKeyDown = EdCodSteKeyDown
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'CODSTE'
        DataSource = DsPro
        MaxLength = 20
        CorDeFoco = clInfoBk
        StoredValues = 3
      end
      object CbNomSte: TdxDBColorLookupEdit
        Left = 225
        Top = 509
        Width = 557
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
        TabOrder = 52
        TabStop = False
        DataField = 'CODSTE'
        DataSource = DsPro
        ReadOnly = False
        DropDownWidth = 430
        ListFieldName = 'NOMSTR'
        KeyFieldName = 'CODSTR'
        ListSource = DsSte
        LookupKeyValue = Null
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
      object EdFlbPro: TdxDBCheckEdit
        Left = 534
        Top = 22
        Width = 20
        Cursor = crHandPoint
        Style.BorderColor = 14789952
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 2
        TabStop = False
        AutoSize = False
        DataField = 'FLBPRO'
        DataSource = DsPro
        ValueChecked = '*'
        ValueUnchecked = ' '
        Height = 18
      end
      object EdClfEnt: TdxDBColorEdit
        Left = 657
        Top = 463
        Width = 124
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
        TabOrder = 48
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'CLFENT'
        DataSource = DsPro
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdClfSai: TdxDBColorEdit
        Left = 657
        Top = 440
        Width = 124
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
        TabOrder = 44
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'CLFSAI'
        DataSource = DsPro
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdNumPro: TdxDBColorEdit
        Left = 638
        Top = 204
        Width = 144
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
        TabOrder = 21
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'NUMPRO'
        DataSource = DsPro
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object Panel4: TPanel
        Left = 554
        Top = 9
        Width = 228
        Height = 148
        BevelOuter = bvNone
        Caption = 'Imagem de 226 x 144'
        Color = 14789952
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 53
        object Imagem2: TImage
          Left = 2
          Top = 2
          Width = 224
          Height = 143
          Cursor = crHandPoint
          Center = True
          PopupMenu = PopupMenu1
          Stretch = True
        end
      end
      object EdQtdVol: TdxDBColorCurrencyEdit
        Left = 638
        Top = 158
        Width = 144
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
        TabOrder = 15
        DataField = 'QTDVOL'
        DataSource = DsPro
        DecimalPlaces = 0
        DisplayFormat = '####0'
        Nullable = False
        CorDeFoco = clInfoBk
        StoredValues = 0
      end
      object EdCodMrc: TdxDBColorEdit
        Left = 116
        Top = 274
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
        TabOrder = 30
        OnExit = EdCodMrcExit
        OnKeyDown = EdCodMrcKeyDown
        OnKeyPress = EdPsqCodClpKeyPress
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'CODMRC'
        DataSource = DsPro
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object CbNomMrc: TdxDBColorLookupEdit
        Left = 186
        Top = 274
        Width = 154
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
        TabOrder = 31
        TabStop = False
        DataField = 'CODMRC'
        DataSource = DsPro
        ReadOnly = False
        ListFieldName = 'NOMMRC;CODMRC'
        KeyFieldName = 'CODMRC'
        ListSource = DsMrc
        LookupKeyValue = Null
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
      object EdCodCat: TdxDBColorEdit
        Left = 441
        Top = 274
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
        TabOrder = 32
        OnExit = EdCodCatExit
        OnKeyDown = EdCodCatKeyDown
        OnKeyPress = EdPsqCodClpKeyPress
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'CODCAT'
        DataSource = DsPro
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object CbNomCat: TdxDBColorLookupEdit
        Left = 512
        Top = 274
        Width = 270
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
        TabOrder = 34
        TabStop = False
        DataField = 'CODCAT'
        DataSource = DsPro
        ReadOnly = False
        ListFieldName = 'NOMCAT;CODCAT'
        KeyFieldName = 'CODCAT'
        ListSource = DsCat
        LookupKeyValue = Null
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
      object EdCodSt2: TdxDBColorEdit
        Left = 657
        Top = 394
        Width = 39
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
        TabOrder = 54
        TabStop = False
        Visible = False
        Alignment = taRightJustify
        CharCase = ecUpperCase
        DataField = 'CODST2'
        DataSource = DsPro
        ReadOnly = True
        CorDeFoco = clInfoBk
        StoredValues = 65
      end
      object EdId2Pro: TdxDBColorEdit
        Left = 496
        Top = 158
        Width = 57
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
        TabOrder = 14
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'ID2PRO'
        DataSource = DsPro
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object edIPIEntAliq: TdxColorEdit
        Left = 512
        Top = 463
        Width = 43
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
        TabOrder = 55
        TabStop = False
        OnExit = EdPsqCodCatExit
        OnKeyDown = EdPsqCodCatKeyDown
        OnKeyPress = EdPsqCodClpKeyPress
        Alignment = taRightJustify
        CharCase = ecUpperCase
        MaxLength = 0
        ReadOnly = True
        CorDeFoco = clInfoBk
        StoredValues = 67
      end
      object edIPISaiAliq: TdxColorEdit
        Left = 512
        Top = 440
        Width = 43
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
        TabOrder = 56
        TabStop = False
        OnExit = EdPsqCodCatExit
        OnKeyDown = EdPsqCodCatKeyDown
        OnKeyPress = EdPsqCodClpKeyPress
        Alignment = taRightJustify
        CharCase = ecUpperCase
        MaxLength = 0
        ReadOnly = True
        CorDeFoco = clInfoBk
        StoredValues = 67
      end
      object edICMSEntAliq: TdxColorEdit
        Left = 512
        Top = 417
        Width = 43
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
        TabOrder = 57
        TabStop = False
        OnExit = EdPsqCodCatExit
        OnKeyDown = EdPsqCodCatKeyDown
        OnKeyPress = EdPsqCodClpKeyPress
        Alignment = taRightJustify
        CharCase = ecUpperCase
        MaxLength = 0
        ReadOnly = True
        CorDeFoco = clInfoBk
        StoredValues = 67
      end
      object edICMSSaiAliq: TdxColorEdit
        Left = 512
        Top = 394
        Width = 43
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
        TabOrder = 58
        TabStop = False
        OnExit = EdPsqCodCatExit
        OnKeyDown = EdPsqCodCatKeyDown
        OnKeyPress = EdPsqCodClpKeyPress
        Alignment = taRightJustify
        CharCase = ecUpperCase
        MaxLength = 0
        ReadOnly = True
        CorDeFoco = clInfoBk
        StoredValues = 67
      end
      object edIcmSit: TdxColorEdit
        Left = 657
        Top = 394
        Width = 39
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
        TabOrder = 59
        TabStop = False
        OnExit = EdPsqCodCatExit
        OnKeyDown = EdPsqCodCatKeyDown
        OnKeyPress = EdPsqCodClpKeyPress
        Alignment = taRightJustify
        CharCase = ecUpperCase
        MaxLength = 0
        ReadOnly = True
        CorDeFoco = clInfoBk
        StoredValues = 67
      end
      object dxDBColorDateEdit1: TdxDBColorDateEdit
        Left = 116
        Top = 298
        Width = 91
        Color = 16577773
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14065456
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 33
        DataField = 'INI_REG_ST'
        DataSource = DsPro
        PopupBorder = pbFlat
        DateButtons = []
        DateValidation = True
        SaveTime = False
        CorDeFoco = clInfoBk
      end
      object dxDBColorEdit5: TdxDBColorEdit
        Left = 116
        Top = 348
        Width = 109
        Color = 16577773
        Enabled = False
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
        TabOrder = 60
        OnExit = EdIcmSaiExit
        OnKeyDown = EdIcmSaiKeyDown
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'ICMSAI'
        DataSource = DsPro
        OnChange = EdIcmSaiChange
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object dxDBColorLookupEdit5: TdxDBColorLookupEdit
        Left = 225
        Top = 348
        Width = 218
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
        TabOrder = 61
        TabStop = False
        OnExit = CbNomIcmSaiExit
        DataField = 'ICMSAI'
        DataSource = DsPro
        ReadOnly = False
        DropDownWidth = 430
        ListFieldName = 'NOMICM;CODICM;PERICM'
        KeyFieldName = 'CODICM'
        ListSource = DsIcmSai
        LookupKeyValue = Null
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
      object dxDBColorEdit7: TdxDBColorEdit
        Left = 116
        Top = 372
        Width = 109
        Color = 16577773
        Enabled = False
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
        TabOrder = 62
        OnExit = EdIcmSaiExit
        OnKeyDown = EdIcmSaiKeyDown
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'ICMSAI'
        DataSource = DsPro
        OnChange = EdIcmSaiChange
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object dxDBColorLookupEdit6: TdxDBColorLookupEdit
        Left = 225
        Top = 372
        Width = 218
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
        TabOrder = 63
        TabStop = False
        OnExit = CbNomIcmSaiExit
        DataField = 'ICMSAI'
        DataSource = DsPro
        ReadOnly = False
        DropDownWidth = 430
        ListFieldName = 'NOMICM;CODICM;PERICM'
        KeyFieldName = 'CODICM'
        ListSource = DsIcmSai
        LookupKeyValue = Null
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
      object dxDBColorLookupEdit7: TdxDBColorLookupEdit
        Left = 442
        Top = 298
        Width = 339
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
        TabOrder = 64
        TabStop = False
        DataField = 'CODST1'
        DataSource = DsPro
        ReadOnly = False
        DropDownWidth = 600
        ListFieldName = 'CODNOM'
        KeyFieldName = 'CODST1'
        ListSource = dsEstSt1
        LookupKeyValue = Null
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
    end
    object pcPag3: TTabSheet
      Caption = ' &Características '
      ImageIndex = 2
      OnShow = pcPag3Show
      object Shape7: TShape
        Left = 0
        Top = 207
        Width = 185
        Height = 18
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Shape69: TShape
        Left = 0
        Top = 487
        Width = 185
        Height = 19
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Shape68: TShape
        Left = 186
        Top = 8
        Width = 595
        Height = 3
        Brush.Color = 11106843
        Pen.Color = 14789952
      end
      object Shape67: TShape
        Left = 0
        Top = 0
        Width = 185
        Height = 18
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Label20: TLabel
        Left = 4
        Top = 2
        Width = 113
        Height = 13
        Caption = 'Outras Informações'
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
      object Label25: TLabel
        Left = 1
        Top = 130
        Width = 51
        Height = 13
        Caption = 'Web-Site :'
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
        Left = 4
        Top = 490
        Width = 142
        Height = 13
        Caption = 'Informações de cadastro'
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
      object Shape70: TShape
        Left = 186
        Top = 495
        Width = 595
        Height = 3
        Brush.Color = 11106843
        Pen.Color = 14789952
      end
      object Label23: TLabel
        Left = 602
        Top = 512
        Width = 87
        Height = 13
        Caption = 'Data de cadastro:'
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
        Left = 1
        Top = 512
        Width = 40
        Height = 13
        Caption = 'Usuário:'
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
      object Label85: TLabel
        Left = 1
        Top = 24
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
      object Label93: TLabel
        Left = 1
        Top = 48
        Width = 78
        Height = 13
        Caption = 'Caracteristicas :'
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
      object Label101: TLabel
        Left = 237
        Top = 153
        Width = 70
        Height = 13
        Caption = 'Código antigo:'
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
      object Label66: TLabel
        Left = 475
        Top = 153
        Width = 71
        Height = 13
        Caption = '(%) Comissão:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label61: TLabel
        Left = 677
        Top = 153
        Width = 42
        Height = 13
        Caption = '(%) ISS:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label132: TLabel
        Left = 4
        Top = 209
        Width = 141
        Height = 13
        Caption = 'Informações de compras'
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
      object Shape8: TShape
        Left = 187
        Top = 216
        Width = 595
        Height = 3
        Brush.Color = 11106843
        Pen.Color = 14789952
      end
      object Label130: TLabel
        Left = 1
        Top = 176
        Width = 85
        Height = 13
        Caption = 'Material em lista ?'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label147: TLabel
        Left = 1
        Top = 153
        Width = 89
        Height = 13
        Caption = 'Prazo de garantia:'
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
      object Label148: TLabel
        Left = 179
        Top = 153
        Width = 28
        Height = 13
        Caption = 'Dia(s)'
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
      object Label133: TLabel
        Left = 1
        Top = 231
        Width = 94
        Height = 13
        Caption = 'Peso Liquido/Caixa:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label134: TLabel
        Left = 1
        Top = 254
        Width = 87
        Height = 13
        Caption = 'Peso Bruto/Caixa:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label131: TLabel
        Left = 1
        Top = 277
        Width = 33
        Height = 13
        Caption = 'Altura:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label135: TLabel
        Left = 1
        Top = 300
        Width = 67
        Height = 13
        Caption = 'Comprimento:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label146: TLabel
        Left = 1
        Top = 323
        Width = 41
        Height = 13
        Caption = 'Largura:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label136: TLabel
        Left = 1
        Top = 346
        Width = 49
        Height = 13
        Caption = 'Cubagem:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label140: TLabel
        Left = 1
        Top = 369
        Width = 107
        Height = 13
        Caption = 'Quantidade por caixa:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label143: TLabel
        Left = 1
        Top = 392
        Width = 28
        Height = 13
        Caption = 'Valor:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label142: TLabel
        Left = 209
        Top = 231
        Width = 64
        Height = 13
        Caption = 'Descrição DI:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label144: TLabel
        Left = 209
        Top = 300
        Width = 160
        Height = 13
        Caption = 'Descrição embalagem de compra:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label145: TLabel
        Left = 208
        Top = 369
        Width = 97
        Height = 13
        Caption = 'Descrição em inglês:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label150: TLabel
        Left = 208
        Top = 392
        Width = 109
        Height = 13
        Caption = 'Descrição de catálogo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label160: TLabel
        Left = 327
        Top = 441
        Width = 39
        Height = 13
        Caption = 'CODIF: '
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
      object Label161: TLabel
        Left = 1
        Top = 441
        Width = 63
        Height = 13
        Caption = 'Código ANP: '
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
      object Shape10: TShape
        Left = 0
        Top = 415
        Width = 185
        Height = 19
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Label162: TLabel
        Left = 4
        Top = 418
        Width = 130
        Height = 13
        Caption = 'Dados de combustíveis'
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
      object Shape11: TShape
        Left = 178
        Top = 423
        Width = 595
        Height = 3
        Brush.Color = 11106843
        Pen.Color = 14789952
      end
      object EdObsPro: TdxDBColorMemo
        Left = 116
        Top = 44
        Width = 666
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
        DataField = 'OBSPRO'
        DataSource = DsPro
        MaxLength = 1000
        ScrollBars = ssVertical
        CorDeFoco = clInfoBk
        Height = 82
        StoredValues = 3
      end
      object EdWebPro: TdxDBColorHyperLinkEdit
        Left = 116
        Top = 126
        Width = 666
        Color = 16577773
        Style.BorderColor = 14789952
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 3
        OnKeyDown = EdWebProKeyDown
        DataField = 'WEBPRO'
        DataSource = DsPro
        SingleClick = True
        StartKey = 0
        CorDeFoco = clInfoBk
      end
      object EdDtcPro: TdxDBColorDateEdit
        Left = 691
        Top = 508
        Width = 91
        Color = 16577773
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14065456
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 27
        DataField = 'DTCPRO'
        DataSource = DsPro
        PopupBorder = pbFlat
        DateButtons = []
        DateValidation = True
        SaveTime = False
        CorDeFoco = clInfoBk
      end
      object EdCodUsu: TdxDBColorEdit
        Left = 116
        Top = 508
        Width = 70
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
        TabOrder = 25
        OnExit = EdCodGruExit
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'CODUSU'
        DataSource = DsPro
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object CbNomUsu: TdxDBColorLookupEdit
        Left = 186
        Top = 508
        Width = 407
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
        TabOrder = 26
        TabStop = False
        DataField = 'CODUSU'
        DataSource = DsPro
        ReadOnly = False
        ListFieldName = 'LOGUSU;CODUSU'
        KeyFieldName = 'CODUSU'
        ListSource = DsUsu
        LookupKeyValue = Null
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
      object EdCodIte1: TdxDBColorEdit
        Left = 116
        Top = 20
        Width = 142
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
        DataField = 'CODITE'
        DataSource = DsPro
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdCodAnt: TdxDBColorEdit
        Left = 309
        Top = 149
        Width = 150
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
        OnExit = EdDscProExit
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'CODANT'
        DataSource = DsPro
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdCodCom: TdxDBColorEdit
        Left = 548
        Top = 149
        Width = 40
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
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'CODCOM'
        DataSource = DsPro
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object CbPerCom: TdxDBColorLookupEdit
        Left = 589
        Top = 149
        Width = 69
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
        TabOrder = 7
        TabStop = False
        DataField = 'CODCOM'
        DataSource = DsPro
        ReadOnly = False
        DropDownWidth = 200
        ListFieldName = 'PERCOM;CODCOM'
        KeyFieldName = 'CODCOM'
        ListSource = DsCom
        LookupKeyValue = Null
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
      object EdIssPro: TdxDBColorCurrencyEdit
        Left = 721
        Top = 149
        Width = 61
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
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
        TabOrder = 8
        DataField = 'ISSPRO'
        DataSource = DsPro
        DisplayFormat = '###,###,##0.00'
        Nullable = False
        CorDeFoco = clInfoBk
        StoredValues = 0
      end
      object EdNomIte1: TdxDBColorEdit
        Left = 259
        Top = 20
        Width = 523
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
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'DSCPRO'
        DataSource = DsPro
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object BtnCodigos: TBitBtn
        Left = 541
        Top = 175
        Width = 232
        Height = 34
        Caption = 'Multiplos códigos de barras'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
        OnClick = BtnCodigosClick
      end
      object EdFlgLis: TdxDBColorPickEdit
        Left = 116
        Top = 172
        Width = 61
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = 14065456
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 9
        DataField = 'FLGLIS'
        DataSource = DsPro
        Items.Strings = (
          'Sim'
          'Nao')
        CorDeFoco = clInfoBk
      end
      object EdGarPro: TdxDBColorEdit
        Left = 116
        Top = 149
        Width = 61
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
        OnKeyPress = EdPsqCodClpKeyPress
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'GARPRO'
        DataSource = DsPro
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdValImp: TdxDBColorCurrencyEdit
        Left = 116
        Top = 388
        Width = 90
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
        TabOrder = 18
        DataField = 'VALIMP'
        DataSource = DsPro
        DecimalPlaces = 4
        DisplayFormat = '###,###,##0.0000'
        Nullable = False
        CorDeFoco = clInfoBk
        StoredValues = 0
      end
      object EdCxaPro: TdxDBColorCurrencyEdit
        Left = 116
        Top = 365
        Width = 90
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
        TabOrder = 17
        DataField = 'CXAPRO'
        DataSource = DsPro
        DecimalPlaces = 4
        DisplayFormat = '###,###,##0.0000'
        Nullable = False
        CorDeFoco = clInfoBk
        StoredValues = 0
      end
      object EdCubPro: TdxDBColorCurrencyEdit
        Left = 116
        Top = 342
        Width = 90
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
        TabOrder = 16
        DataField = 'CUBPRO'
        DataSource = DsPro
        DecimalPlaces = 4
        DisplayFormat = '###,###,##0.0000'
        Nullable = False
        CorDeFoco = clInfoBk
        StoredValues = 0
      end
      object EdLarPro: TdxDBColorCurrencyEdit
        Left = 116
        Top = 319
        Width = 90
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
        TabOrder = 15
        DataField = 'LARPRO'
        DataSource = DsPro
        DecimalPlaces = 4
        DisplayFormat = '###,###,##0.0000'
        Nullable = False
        CorDeFoco = clInfoBk
        StoredValues = 0
      end
      object EdComPro: TdxDBColorCurrencyEdit
        Left = 116
        Top = 296
        Width = 90
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
        TabOrder = 14
        DataField = 'COMPRO'
        DataSource = DsPro
        DecimalPlaces = 4
        DisplayFormat = '###,###,##0.0000'
        Nullable = False
        CorDeFoco = clInfoBk
        StoredValues = 0
      end
      object EdAltPro: TdxDBColorCurrencyEdit
        Left = 116
        Top = 273
        Width = 90
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
        TabOrder = 13
        DataField = 'ALTPRO'
        DataSource = DsPro
        DecimalPlaces = 4
        DisplayFormat = '###,###,##0.0000'
        Nullable = False
        CorDeFoco = clInfoBk
        StoredValues = 0
      end
      object EdBrtEmb: TdxDBColorCurrencyEdit
        Left = 116
        Top = 250
        Width = 90
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
        TabOrder = 12
        DataField = 'BRTEMB'
        DataSource = DsPro
        DecimalPlaces = 4
        DisplayFormat = '###,###,##0.0000'
        Nullable = False
        CorDeFoco = clInfoBk
        StoredValues = 0
      end
      object EdLiqEmb: TdxDBColorCurrencyEdit
        Left = 116
        Top = 227
        Width = 90
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
        TabOrder = 11
        DataField = 'LIQEMB'
        DataSource = DsPro
        DecimalPlaces = 4
        DisplayFormat = '###,###,##0.0000'
        Nullable = False
        CorDeFoco = clInfoBk
        StoredValues = 0
      end
      object EdDesIm2: TdxDBColorMemo
        Left = 371
        Top = 296
        Width = 411
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
        TabOrder = 20
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'DESIM2'
        DataSource = DsPro
        MaxLength = 500
        ScrollBars = ssVertical
        CorDeFoco = clInfoBk
        Height = 69
        StoredValues = 3
      end
      object EdDesImp: TdxDBColorMemo
        Left = 371
        Top = 227
        Width = 411
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
        TabOrder = 19
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'DESIMP'
        DataSource = DsPro
        MaxLength = 500
        ScrollBars = ssVertical
        CorDeFoco = clInfoBk
        Height = 69
        StoredValues = 3
      end
      object EdDscImp: TdxDBColorEdit
        Left = 371
        Top = 365
        Width = 411
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
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
        TabOrder = 21
        OnExit = EdDscProExit
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'DSCIMP'
        DataSource = DsPro
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdDsrImp: TdxDBColorEdit
        Left = 371
        Top = 388
        Width = 411
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
        TabOrder = 22
        OnExit = EdDscProExit
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'DSRIMP'
        DataSource = DsPro
        MaxLength = 70
        CorDeFoco = clInfoBk
        StoredValues = 3
      end
      object dxDBColorEdit6: TdxDBColorEdit
        Left = 382
        Top = 437
        Width = 397
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
        TabOrder = 24
        OnExit = EdCodGruExit
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'CODIF'
        DataSource = DsPro
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdCodAnp: TdxDBColorEdit
        Left = 116
        Top = 437
        Width = 93
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
        TabOrder = 23
        OnExit = EdCodGruExit
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'CODANP'
        DataSource = DsPro
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
    end
    object pcPag4: TTabSheet
      Caption = '  &Preços  '
      ImageIndex = 3
      OnShow = pcPag4Show
      object Shape1: TShape
        Left = 0
        Top = 194
        Width = 782
        Height = 21
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Label43: TLabel
        Left = 4
        Top = 198
        Width = 38
        Height = 13
        Caption = 'Custos'
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
      object Shape61: TShape
        Left = 186
        Top = 8
        Width = 594
        Height = 3
        Brush.Color = 11106843
        Pen.Color = 14789952
      end
      object Shape60: TShape
        Left = 0
        Top = 0
        Width = 185
        Height = 18
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Label4: TLabel
        Left = 3
        Top = 2
        Width = 28
        Height = 13
        Caption = 'Item'
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
      object Label33: TLabel
        Left = 1
        Top = 173
        Width = 48
        Height = 13
        Caption = 'Empresa :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label34: TLabel
        Left = 1
        Top = 229
        Width = 66
        Height = 13
        Caption = 'Último Preço :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label35: TLabel
        Left = 1
        Top = 252
        Width = 79
        Height = 13
        Caption = 'Custo Histórico :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label36: TLabel
        Left = 1
        Top = 298
        Width = 92
        Height = 13
        Caption = 'Custo Referencial :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label37: TLabel
        Left = 1
        Top = 321
        Width = 90
        Height = 13
        Caption = 'Custo Ponderado :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label38: TLabel
        Left = 225
        Top = 229
        Width = 46
        Height = 13
        Caption = 'Unitário 1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label39: TLabel
        Left = 225
        Top = 252
        Width = 46
        Height = 13
        Caption = 'Unitário 2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label40: TLabel
        Left = 225
        Top = 275
        Width = 46
        Height = 13
        Caption = 'Unitário 3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label41: TLabel
        Left = 225
        Top = 298
        Width = 46
        Height = 13
        Caption = 'Unitário 4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label42: TLabel
        Left = 225
        Top = 321
        Width = 46
        Height = 13
        Caption = 'Unitário 5'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label46: TLabel
        Left = 225
        Top = 198
        Width = 102
        Height = 13
        Caption = 'Tabelas de Preços'
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
      object Label57: TLabel
        Left = 634
        Top = 198
        Width = 45
        Height = 13
        Caption = 'Estoque'
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
      object Label67: TLabel
        Left = 634
        Top = 252
        Width = 39
        Height = 13
        Caption = 'Mínimo :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label68: TLabel
        Left = 634
        Top = 298
        Width = 32
        Height = 13
        Caption = 'Atual :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label69: TLabel
        Left = 634
        Top = 321
        Width = 59
        Height = 13
        Caption = 'Reservado :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label70: TLabel
        Left = 634
        Top = 229
        Width = 52
        Height = 13
        Caption = 'Adquirido :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label71: TLabel
        Left = 634
        Top = 367
        Width = 55
        Height = 13
        Caption = 'Dísponivel :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Shape2: TShape
        Left = 0
        Top = 45
        Width = 782
        Height = 27
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Label73: TLabel
        Left = 3
        Top = 51
        Width = 201
        Height = 13
        Caption = 'Empresas/Custos/Tabela de Preços'
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
        Left = 1
        Top = 275
        Width = 97
        Height = 13
        Caption = 'Custo Histórico (G) :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label30: TLabel
        Left = 1
        Top = 344
        Width = 108
        Height = 13
        Caption = 'Custo Ponderado (G) :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label116: TLabel
        Left = 389
        Top = 198
        Width = 51
        Height = 13
        Caption = '% Mk - T'
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
      object Label117: TLabel
        Left = 500
        Top = 198
        Width = 70
        Height = 13
        Caption = '% Comissão'
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
      object Label97: TLabel
        Left = 443
        Top = 198
        Width = 51
        Height = 13
        Caption = '% Mk - S'
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
      object Label98: TLabel
        Left = 634
        Top = 275
        Width = 43
        Height = 13
        Caption = 'Máximo :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label100: TLabel
        Left = 1
        Top = 463
        Width = 107
        Height = 13
        Caption = 'Média Ponderada (E) :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object Label72: TLabel
        Left = 1
        Top = 24
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
      object Label75: TLabel
        Left = 1
        Top = 367
        Width = 122
        Height = 13
        Caption = 'Custo da Última Compra :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label76: TLabel
        Left = 1
        Top = 390
        Width = 102
        Height = 13
        Caption = 'Data Última Compra :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label78: TLabel
        Left = 1
        Top = 413
        Width = 101
        Height = 13
        Caption = 'Qtd. Última Compra :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label79: TLabel
        Left = 225
        Top = 344
        Width = 66
        Height = 13
        Caption = 'Promocional 1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label80: TLabel
        Left = 225
        Top = 367
        Width = 66
        Height = 13
        Caption = 'Promocional 2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label81: TLabel
        Left = 225
        Top = 390
        Width = 66
        Height = 13
        Caption = 'Promocional 3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label86: TLabel
        Left = 225
        Top = 413
        Width = 66
        Height = 13
        Caption = 'Promocional 4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label87: TLabel
        Left = 225
        Top = 436
        Width = 66
        Height = 13
        Caption = 'Promocional 5'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label88: TLabel
        Left = 291
        Top = 321
        Width = 10
        Height = 13
        Caption = ' : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label96: TLabel
        Left = 291
        Top = 298
        Width = 10
        Height = 13
        Caption = ' : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label118: TLabel
        Left = 291
        Top = 275
        Width = 10
        Height = 13
        Caption = ' : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label119: TLabel
        Left = 291
        Top = 252
        Width = 10
        Height = 13
        Caption = ' : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label120: TLabel
        Left = 291
        Top = 229
        Width = 10
        Height = 13
        Caption = ' : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label121: TLabel
        Left = 579
        Top = 198
        Width = 43
        Height = 13
        Alignment = taRightJustify
        Caption = '% Desc'
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
      object Label122: TLabel
        Left = 291
        Top = 344
        Width = 10
        Height = 13
        Caption = ' : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label123: TLabel
        Left = 291
        Top = 367
        Width = 10
        Height = 13
        Caption = ' : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label124: TLabel
        Left = 291
        Top = 390
        Width = 10
        Height = 13
        Caption = ' : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label125: TLabel
        Left = 291
        Top = 413
        Width = 10
        Height = 13
        Caption = ' : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label126: TLabel
        Left = 291
        Top = 436
        Width = 10
        Height = 13
        Caption = ' : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label127: TLabel
        Left = 634
        Top = 344
        Width = 29
        Height = 13
        Caption = 'RMA :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label128: TLabel
        Left = 390
        Top = 367
        Width = 98
        Height = 13
        Caption = 'Último Custo (FOB) :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label129: TLabel
        Left = 390
        Top = 390
        Width = 95
        Height = 13
        Caption = 'Último Custo (CIF) :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label137: TLabel
        Left = 390
        Top = 413
        Width = 73
        Height = 13
        Caption = 'Dt. Últ. (FOB) :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label138: TLabel
        Left = 390
        Top = 436
        Width = 80
        Height = 13
        Caption = 'Qtd. Últ. (FOB) :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Panel5: TPanel
        Left = 0
        Top = 74
        Width = 781
        Height = 93
        BevelOuter = bvNone
        Color = 14789952
        TabOrder = 43
        object grIte: ThGrid
          Left = 1
          Top = 1
          Width = 779
          Height = 91
          TabStop = False
          Selected.Strings = (
            'CODEMP'#9'4'#9'Empresa'
            'CSTITE'#9'10'#9'Último Preço'
            'VCHITE'#9'12'#9'Custo Historico'
            'VCRITE'#9'13'#9'Custo Reposição'
            'VCPITE'#9'13'#9'Custo Ponderado'
            'VB1ITE'#9'10'#9'     Unitário 1'
            'VB2ITE'#9'10'#9'     Unitário 2'
            'VB3ITE'#9'10'#9'     Unitário 3'
            'VB4ITE'#9'10'#9'    Unitário 4'
            'VB5ITE'#9'10'#9'    Unitário 5')
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          OnCellChanged = grIteCellChanged
          FixedCols = 0
          ShowHorzScrollBar = True
          ShowVertScrollBar = False
          BorderStyle = bsNone
          Color = 16577773
          DataSource = DsIte
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
      object EdCodEmp: TdxDBColorEdit
        Left = 126
        Top = 169
        Width = 94
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
        DataField = 'CODEMP'
        DataSource = DsIte
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object CbNomEmp: TdxDBColorLookupEdit
        Left = 224
        Top = 169
        Width = 559
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
        TabStop = False
        DataField = 'CODEMP'
        DataSource = DsIte
        ReadOnly = False
        ListFieldName = 'NOMEMP;CODEMP'
        KeyFieldName = 'CODEMP'
        ListSource = DsEmp
        LookupKeyValue = Null
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
      object EdCstIte: TdxDBColorCurrencyEdit
        Left = 126
        Top = 225
        Width = 94
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
        DataField = 'CSTITE'
        DataSource = DsIte
        DecimalPlaces = 4
        Nullable = False
        CorDeFoco = clInfoBk
      end
      object EdVchIte: TdxDBColorCurrencyEdit
        Left = 126
        Top = 248
        Width = 94
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
        TabOrder = 3
        DataField = 'VCHITE'
        DataSource = DsIte
        DecimalPlaces = 4
        Nullable = False
        CorDeFoco = clInfoBk
      end
      object EdVcrIte: TdxDBColorCurrencyEdit
        Left = 126
        Top = 294
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
        OnExit = EdVcrIteExit
        DataField = 'VCRITE'
        DataSource = DsIte
        DecimalPlaces = 4
        Nullable = False
        CorDeFoco = clInfoBk
      end
      object EdVcpIte: TdxDBColorCurrencyEdit
        Left = 126
        Top = 317
        Width = 94
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
        DataField = 'VCPITE'
        DataSource = DsIte
        DecimalPlaces = 4
        Nullable = False
        CorDeFoco = clInfoBk
      end
      object EdVb4Ite: TdxDBColorCurrencyEdit
        Left = 301
        Top = 294
        Width = 86
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
        TabOrder = 26
        OnExit = EdVb4IteExit
        DataField = 'VB4ITE'
        DataSource = DsIte
        DecimalPlaces = 4
        Nullable = False
        CorDeFoco = clInfoBk
      end
      object EdVb3Ite: TdxDBColorCurrencyEdit
        Left = 301
        Top = 271
        Width = 86
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
        TabOrder = 20
        OnExit = EdVb3IteExit
        DataField = 'VB3ITE'
        DataSource = DsIte
        DecimalPlaces = 4
        Nullable = False
        CorDeFoco = clInfoBk
      end
      object EdVb2Ite: TdxDBColorCurrencyEdit
        Left = 301
        Top = 248
        Width = 86
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
        TabOrder = 14
        OnExit = EdVb2IteExit
        DataField = 'VB2ITE'
        DataSource = DsIte
        DecimalPlaces = 4
        Nullable = False
        CorDeFoco = clInfoBk
      end
      object EdVb1Ite: TdxDBColorCurrencyEdit
        Left = 301
        Top = 225
        Width = 86
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
        TabOrder = 8
        OnExit = EdVb1IteExit
        DataField = 'VB1ITE'
        DataSource = DsIte
        DecimalPlaces = 4
        Nullable = False
        CorDeFoco = clInfoBk
      end
      object EdVb5Ite: TdxDBColorCurrencyEdit
        Left = 301
        Top = 317
        Width = 86
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
        TabOrder = 32
        OnExit = EdVb5IteExit
        DataField = 'VB5ITE'
        DataSource = DsIte
        DecimalPlaces = 4
        Nullable = False
        CorDeFoco = clInfoBk
      end
      object EdQtaIte: TdxDBColorCurrencyEdit
        Left = 697
        Top = 225
        Width = 86
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
        TabOrder = 41
        DataField = 'QTAQTE'
        DataSource = DsQte
        DecimalPlaces = 4
        Nullable = False
        CorDeFoco = clInfoBk
      end
      object EdQtrIte: TdxDBColorCurrencyEdit
        Left = 697
        Top = 317
        Width = 86
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
        TabOrder = 40
        DataField = 'QTRQTE'
        DataSource = DsQte
        DecimalPlaces = 4
        Nullable = False
        CorDeFoco = clInfoBk
      end
      object EdQtdIte: TdxDBColorCurrencyEdit
        Left = 697
        Top = 294
        Width = 86
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
        TabOrder = 39
        DataField = 'QTDQTE'
        DataSource = DsQte
        DecimalPlaces = 4
        Nullable = False
        CorDeFoco = clInfoBk
      end
      object EdQtmIte: TdxDBColorCurrencyEdit
        Left = 697
        Top = 248
        Width = 86
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
        TabOrder = 38
        DataField = 'QTMQTE'
        DataSource = DsQte
        DecimalPlaces = 4
        Nullable = False
        CorDeFoco = clInfoBk
      end
      object EdQtsIte: TdxDBColorCurrencyEdit
        Left = 697
        Top = 363
        Width = 86
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
        TabOrder = 42
        DataField = 'QTSQTE'
        DataSource = DsQte
        DecimalPlaces = 4
        Nullable = False
        CorDeFoco = clInfoBk
      end
      object Panel1: TPanel
        Left = 555
        Top = 46
        Width = 225
        Height = 25
        BevelOuter = bvNone
        Color = 14789952
        TabOrder = 44
        object nvIte: ThDBNavigator
          Left = -56
          Top = -6
          Width = 281
          Height = 31
          BevelOuter = bvNone
          Caption = ' '
          Color = 14789952
          TabOrder = 0
          BeforeSalva = nvIteBeforeSalva
          OnSalva = nvIteSalva
          DataSource = DsIte
          BaseAtualizar = 'GerEmpEstTamEstQte'
          UsaAppend = True
          Salvar = False
          EnabledButtons = [nbAtualizar, nbInclui, nbExclui, nbSalva, nbCancela, nbNavega]
        end
      end
      object EdVreIte: TdxDBColorCurrencyEdit
        Left = 126
        Top = 271
        Width = 94
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
        TabOrder = 4
        DataField = 'VREITE'
        DataSource = DsIte
        DecimalPlaces = 4
        Nullable = False
        CorDeFoco = clInfoBk
      end
      object EdVprIte: TdxDBColorCurrencyEdit
        Left = 126
        Top = 340
        Width = 94
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
        DataField = 'VPRITE'
        DataSource = DsIte
        DecimalPlaces = 4
        Nullable = False
        CorDeFoco = clInfoBk
      end
      object EdCodCm1: TdxDBColorEdit
        Left = 497
        Top = 225
        Width = 24
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
        TabOrder = 11
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'CODCM1'
        DataSource = DsIte
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object CbNomCm1: TdxDBColorLookupEdit
        Left = 521
        Top = 225
        Width = 50
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
        TabOrder = 12
        TabStop = False
        DataField = 'CODCM1'
        DataSource = DsIte
        ReadOnly = False
        ListFieldName = 'PERCOM'
        KeyFieldName = 'CODCOM'
        ListSource = DsCom
        LookupKeyValue = Null
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
      object EdCodCm2: TdxDBColorEdit
        Left = 497
        Top = 248
        Width = 24
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
        TabOrder = 17
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'CODCM2'
        DataSource = DsIte
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object CbNomCm2: TdxDBColorLookupEdit
        Left = 521
        Top = 248
        Width = 50
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
        TabOrder = 18
        TabStop = False
        DataField = 'CODCM2'
        DataSource = DsIte
        ReadOnly = False
        ListFieldName = 'PERCOM'
        KeyFieldName = 'CODCOM'
        ListSource = DsCom
        LookupKeyValue = Null
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
      object EdCodCm3: TdxDBColorEdit
        Left = 497
        Top = 271
        Width = 24
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
        TabOrder = 23
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'CODCM3'
        DataSource = DsIte
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object CbNomCm3: TdxDBColorLookupEdit
        Left = 521
        Top = 271
        Width = 50
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
        TabOrder = 24
        TabStop = False
        DataField = 'CODCM3'
        DataSource = DsIte
        ReadOnly = False
        ListFieldName = 'PERCOM'
        KeyFieldName = 'CODCOM'
        ListSource = DsCom
        LookupKeyValue = Null
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
      object EdCodCm4: TdxDBColorEdit
        Left = 497
        Top = 294
        Width = 24
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
        TabOrder = 29
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'CODCM4'
        DataSource = DsIte
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object CbNomCm4: TdxDBColorLookupEdit
        Left = 521
        Top = 294
        Width = 50
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
        TabOrder = 30
        TabStop = False
        DataField = 'CODCM4'
        DataSource = DsIte
        ReadOnly = False
        ListFieldName = 'PERCOM'
        KeyFieldName = 'CODCOM'
        ListSource = DsCom
        LookupKeyValue = Null
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
      object EdCodCm5: TdxDBColorEdit
        Left = 497
        Top = 317
        Width = 24
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
        TabOrder = 35
        OnKeyDown = EdCodCm5KeyDown
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'CODCM5'
        DataSource = DsIte
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object CbNomCm5: TdxDBColorLookupEdit
        Left = 521
        Top = 317
        Width = 50
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
        TabOrder = 36
        TabStop = False
        DataField = 'CODCM5'
        DataSource = DsIte
        ReadOnly = False
        ListFieldName = 'PERCOM'
        KeyFieldName = 'CODCOM'
        ListSource = DsCom
        LookupKeyValue = Null
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
      object EdMk1Ite: TdxDBColorCurrencyEdit
        Left = 387
        Top = 225
        Width = 53
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
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
        TabOrder = 9
        OnExit = EdMk1IteExit
        DataField = 'MK1ITE'
        DataSource = DsIte
        DisplayFormat = '###,###,##0.00'
        Nullable = False
        CorDeFoco = clInfoBk
        StoredValues = 16
      end
      object EdMk2Ite: TdxDBColorCurrencyEdit
        Left = 387
        Top = 248
        Width = 53
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
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
        TabOrder = 15
        OnExit = EdMk2IteExit
        DataField = 'MK2ITE'
        DataSource = DsIte
        DisplayFormat = '###,###,##0.00'
        Nullable = False
        CorDeFoco = clInfoBk
        StoredValues = 16
      end
      object EdMk3Ite: TdxDBColorCurrencyEdit
        Left = 387
        Top = 271
        Width = 53
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
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
        TabOrder = 21
        OnExit = EdMk3IteExit
        DataField = 'MK3ITE'
        DataSource = DsIte
        DisplayFormat = '###,###,##0.00'
        Nullable = False
        CorDeFoco = clInfoBk
        StoredValues = 16
      end
      object EdMk4Ite: TdxDBColorCurrencyEdit
        Left = 387
        Top = 294
        Width = 53
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
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
        TabOrder = 27
        OnExit = EdMk4IteExit
        DataField = 'MK4ITE'
        DataSource = DsIte
        DisplayFormat = '###,###,##0.00'
        Nullable = False
        CorDeFoco = clInfoBk
        StoredValues = 16
      end
      object EdMk5Ite: TdxDBColorCurrencyEdit
        Left = 387
        Top = 317
        Width = 53
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
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
        TabOrder = 33
        OnExit = EdMk5IteExit
        DataField = 'MK5ITE'
        DataSource = DsIte
        DisplayFormat = '###,###,##0.00'
        Nullable = False
        CorDeFoco = clInfoBk
        StoredValues = 16
      end
      object EdVp1Ite: TdxDBColorCurrencyEdit
        Left = 301
        Top = 340
        Width = 86
        Color = 16577773
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
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
        TabOrder = 45
        OnExit = EdVb1IteExit
        DataField = 'VP1ITE'
        DataSource = DsIte
        DecimalPlaces = 4
        Nullable = False
        CorDeFoco = clInfoBk
      end
      object EdVp2Ite: TdxDBColorCurrencyEdit
        Left = 301
        Top = 363
        Width = 86
        Color = 16577773
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
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
        TabOrder = 46
        OnExit = EdVb2IteExit
        DataField = 'VP2ITE'
        DataSource = DsIte
        DecimalPlaces = 4
        Nullable = False
        CorDeFoco = clInfoBk
      end
      object EdVp3Ite: TdxDBColorCurrencyEdit
        Left = 301
        Top = 386
        Width = 86
        Color = 16577773
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
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
        TabOrder = 47
        OnExit = EdVb3IteExit
        DataField = 'VP3ITE'
        DataSource = DsIte
        DecimalPlaces = 4
        Nullable = False
        CorDeFoco = clInfoBk
      end
      object EdVp4Ite: TdxDBColorCurrencyEdit
        Left = 301
        Top = 409
        Width = 86
        Color = 16577773
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
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
        TabOrder = 48
        OnExit = EdVb4IteExit
        DataField = 'VP4ITE'
        DataSource = DsIte
        DecimalPlaces = 4
        Nullable = False
        CorDeFoco = clInfoBk
      end
      object EdVp5Ite: TdxDBColorCurrencyEdit
        Left = 301
        Top = 432
        Width = 86
        Color = 16577773
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
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
        TabOrder = 49
        OnExit = EdVb5IteExit
        DataField = 'VP5ITE'
        DataSource = DsIte
        DecimalPlaces = 4
        Nullable = False
        CorDeFoco = clInfoBk
      end
      object EdMs1Ite: TdxDBColorCurrencyEdit
        Left = 439
        Top = 225
        Width = 56
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
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
        TabOrder = 10
        OnExit = EdMs1IteExit
        DataField = 'MS1ITE'
        DataSource = DsIte
        DisplayFormat = '###,###,##0.00'
        Nullable = False
        CorDeFoco = clInfoBk
        StoredValues = 16
      end
      object EdMs2Ite: TdxDBColorCurrencyEdit
        Left = 439
        Top = 248
        Width = 56
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
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
        TabOrder = 16
        OnExit = EdMs2IteExit
        DataField = 'MS2ITE'
        DataSource = DsIte
        DisplayFormat = '###,###,##0.00'
        Nullable = False
        CorDeFoco = clInfoBk
        StoredValues = 16
      end
      object EdMs3Ite: TdxDBColorCurrencyEdit
        Left = 439
        Top = 271
        Width = 56
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
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
        TabOrder = 22
        OnExit = EdMs3IteExit
        DataField = 'MS3ITE'
        DataSource = DsIte
        DisplayFormat = '###,###,##0.00'
        Nullable = False
        CorDeFoco = clInfoBk
        StoredValues = 16
      end
      object EdMs4Ite: TdxDBColorCurrencyEdit
        Left = 439
        Top = 294
        Width = 56
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
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
        TabOrder = 28
        OnExit = EdMs4IteExit
        DataField = 'MS4ITE'
        DataSource = DsIte
        DisplayFormat = '###,###,##0.00'
        Nullable = False
        CorDeFoco = clInfoBk
        StoredValues = 16
      end
      object EdMs5Ite: TdxDBColorCurrencyEdit
        Left = 439
        Top = 317
        Width = 56
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
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
        TabOrder = 34
        OnExit = EdMs5IteExit
        DataField = 'MS5ITE'
        DataSource = DsIte
        DisplayFormat = '###,###,##0.00'
        Nullable = False
        CorDeFoco = clInfoBk
        StoredValues = 16
      end
      object EdQmaIte: TdxDBColorCurrencyEdit
        Left = 697
        Top = 271
        Width = 86
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
        TabOrder = 50
        DataField = 'QMAQTE'
        DataSource = DsQte
        DecimalPlaces = 4
        Nullable = False
        CorDeFoco = clInfoBk
      end
      object EdVmeIte: TdxDBColorCurrencyEdit
        Left = 126
        Top = 459
        Width = 94
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
        TabOrder = 51
        Visible = False
        DataField = 'VMEITE'
        DataSource = DsIte
        DecimalPlaces = 4
        Nullable = False
        CorDeFoco = clInfoBk
      end
      object dxDBEdit2: TdxDBColorEdit
        Left = 126
        Top = 20
        Width = 142
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
        TabOrder = 52
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'CODITE'
        DataSource = DsPro
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object dxDBEdit3: TdxDBColorEdit
        Left = 268
        Top = 20
        Width = 514
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
        TabOrder = 53
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'DSCPRO'
        DataSource = DsPro
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdVpfIte: TdxDBColorCurrencyEdit
        Left = 126
        Top = 363
        Width = 94
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
        TabOrder = 54
        DataField = 'VPFITE'
        DataSource = DsIte
        DecimalPlaces = 4
        Nullable = False
        CorDeFoco = clInfoBk
      end
      object EdQtdCmp: TdxDBColorCurrencyEdit
        Left = 126
        Top = 409
        Width = 94
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
        TabOrder = 55
        DataField = 'QTDCMP'
        DataSource = DsIte
        DecimalPlaces = 4
        Nullable = False
        CorDeFoco = clInfoBk
      end
      object EdDulCmp: TdxDBColorDateEdit
        Left = 126
        Top = 386
        Width = 94
        Color = 16577773
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14065456
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 56
        DataField = 'DULCMP'
        DataSource = DsIte
        PopupBorder = pbFlat
        DateButtons = []
        DateValidation = True
        SaveTime = False
        CorDeFoco = clInfoBk
      end
      object EdDs1Ite: TdxDBColorCurrencyEdit
        Left = 571
        Top = 225
        Width = 56
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
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
        TabOrder = 13
        OnExit = EdMk1IteExit
        DataField = 'DS1ITE'
        DataSource = DsIte
        DisplayFormat = '###,###,##0.00'
        MaxValue = 100
        Nullable = False
        CorDeFoco = clInfoBk
        StoredValues = 48
      end
      object EdDs2Ite: TdxDBColorCurrencyEdit
        Left = 571
        Top = 248
        Width = 56
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
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
        TabOrder = 19
        OnExit = EdMk2IteExit
        DataField = 'DS2ITE'
        DataSource = DsIte
        DisplayFormat = '###,###,##0.00'
        MaxValue = 100
        Nullable = False
        CorDeFoco = clInfoBk
        StoredValues = 16
      end
      object EdDs3Ite: TdxDBColorCurrencyEdit
        Left = 571
        Top = 271
        Width = 56
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
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
        TabOrder = 25
        OnExit = EdMk3IteExit
        DataField = 'DS3ITE'
        DataSource = DsIte
        DisplayFormat = '###,###,##0.00'
        MaxValue = 100
        Nullable = False
        CorDeFoco = clInfoBk
        StoredValues = 16
      end
      object EdDs4Ite: TdxDBColorCurrencyEdit
        Left = 571
        Top = 294
        Width = 56
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
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
        TabOrder = 31
        OnExit = EdMk4IteExit
        DataField = 'DS4ITE'
        DataSource = DsIte
        DisplayFormat = '###,###,##0.00'
        MaxValue = 100
        Nullable = False
        CorDeFoco = clInfoBk
        StoredValues = 16
      end
      object EdDs5Ite: TdxDBColorCurrencyEdit
        Left = 571
        Top = 317
        Width = 56
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
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
        TabOrder = 37
        OnExit = EdMk5IteExit
        DataField = 'DS5ITE'
        DataSource = DsIte
        DisplayFormat = '###,###,##0.00'
        MaxValue = 100
        Nullable = False
        CorDeFoco = clInfoBk
        StoredValues = 16
      end
      object EdQtdRma: TdxDBColorCurrencyEdit
        Left = 697
        Top = 340
        Width = 86
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
        TabOrder = 57
        DataField = 'QTDRMA'
        DataSource = DsQte
        DecimalPlaces = 4
        Nullable = False
        CorDeFoco = clInfoBk
      end
      object EdCstOut: TdxDBColorCurrencyEdit
        Left = 521
        Top = 363
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
        TabOrder = 58
        DataField = 'CSTOUT'
        DataSource = DsIte
        DecimalPlaces = 4
        Nullable = False
        CorDeFoco = clInfoBk
      end
      object EdVpfOut: TdxDBColorCurrencyEdit
        Left = 521
        Top = 386
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
        TabOrder = 59
        DataField = 'VPFOUT'
        DataSource = DsIte
        DecimalPlaces = 4
        Nullable = False
        CorDeFoco = clInfoBk
      end
      object EdQtdImp: TdxDBColorCurrencyEdit
        Left = 521
        Top = 432
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
        TabOrder = 60
        DataField = 'QTDIMP'
        DataSource = DsIte
        DecimalPlaces = 4
        Nullable = False
        CorDeFoco = clInfoBk
      end
      object EdDulImp: TdxDBColorDateEdit
        Left = 521
        Top = 409
        Width = 105
        Color = 16577773
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14065456
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 61
        Alignment = taRightJustify
        DataField = 'DULIMP'
        DataSource = DsIte
        PopupBorder = pbFlat
        DateButtons = []
        DateValidation = True
        SaveTime = False
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
    end
    object pcPag5: TTabSheet
      Caption = '  &Estoque  '
      ImageIndex = 4
      OnShow = pcPag5Show
      object Shape3: TShape
        Left = 0
        Top = 0
        Width = 185
        Height = 18
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Label77: TLabel
        Left = 4
        Top = 2
        Width = 28
        Height = 13
        Caption = 'Item'
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
      object Shape4: TShape
        Left = 186
        Top = 8
        Width = 595
        Height = 3
        Brush.Color = 11106843
        Pen.Color = 14789952
      end
      object Label82: TLabel
        Left = 1
        Top = 47
        Width = 55
        Height = 13
        Caption = 'Empresa :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label31: TLabel
        Left = 1
        Top = 70
        Width = 83
        Height = 13
        Caption = 'Estoque Total :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Shape6: TShape
        Left = 117
        Top = 91
        Width = 664
        Height = 27
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Label89: TLabel
        Left = 121
        Top = 97
        Width = 32
        Height = 13
        Caption = 'Cores'
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
      object Shape5: TShape
        Left = 1
        Top = 91
        Width = 103
        Height = 27
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Label74: TLabel
        Left = 1
        Top = 24
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
      object Panel11: TPanel
        Left = 1
        Top = 359
        Width = 103
        Height = 44
        BevelOuter = bvNone
        Color = 15788249
        TabOrder = 7
        OnExit = Panel11Exit
        object EdCodTam: TdxDBColorEdit
          Left = -1
          Top = -1
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
          DataField = 'CODTAM'
          DataSource = DsTam
          MaxLength = 10
          CorDeFoco = clInfoBk
          StoredValues = 3
        end
      end
      object Panel10: TPanel
        Left = 115
        Top = 359
        Width = 667
        Height = 91
        BevelOuter = bvNone
        Color = 15788249
        TabOrder = 6
        OnExit = Panel10Exit
        object Label90: TLabel
          Left = 3
          Top = 3
          Width = 25
          Height = 13
          Caption = 'Cor :'
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
        object Label91: TLabel
          Left = 3
          Top = 26
          Width = 95
          Height = 13
          Caption = 'Estoque Mínimo :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label29: TLabel
          Left = 3
          Top = 72
          Width = 101
          Height = 13
          Caption = 'Codigo de Barras :'
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
        object Label99: TLabel
          Left = 3
          Top = 49
          Width = 99
          Height = 13
          Caption = 'Estoque Máximo :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object EdCodCor: TdxDBColorEdit
          Left = 108
          Top = -1
          Width = 94
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
          DataField = 'CODCOR'
          DataSource = DsQte
          MaxLength = 10
          CorDeFoco = clInfoBk
          StoredValues = 3
        end
        object EdQtmQte: TdxDBColorCurrencyEdit
          Left = 108
          Top = 22
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
          Alignment = taRightJustify
          DataField = 'QTMQTE'
          DataSource = DsQte
          DecimalPlaces = 4
          Nullable = False
          CorDeFoco = clInfoBk
          StoredValues = 1
        end
        object CbNomCor: TdxDBColorLookupEdit
          Left = 227
          Top = -1
          Width = 441
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
          TabStop = False
          OnExit = CbNomCorExit
          DataField = 'CODCOR'
          DataSource = DsQte
          ReadOnly = False
          ListFieldName = 'NOMCOR;CODCOR'
          KeyFieldName = 'CODCOR'
          ListSource = DsCor
          LookupKeyValue = Null
          CorDeFoco = clInfoBk
          StoredValues = 64
        end
        object EdCbaQte: TdxDBColorEdit
          Left = 108
          Top = 68
          Width = 133
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
          Alignment = taLeftJustify
          CharCase = ecUpperCase
          DataField = 'CBAQTE'
          DataSource = DsQte
          MaxLength = 20
          CorDeFoco = clInfoBk
          StoredValues = 3
        end
        object EdQmaQte: TdxDBColorCurrencyEdit
          Left = 108
          Top = 45
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
          Alignment = taRightJustify
          DataField = 'QMAQTE'
          DataSource = DsQte
          DecimalPlaces = 4
          DisplayFormat = '###,###,##0.0000'
          Nullable = False
          CorDeFoco = clInfoBk
          StoredValues = 1
        end
      end
      object EdCodEmp1: TdxDBColorEdit
        Left = 116
        Top = 43
        Width = 142
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
        DataField = 'CODEMP'
        DataSource = DsIte
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object Panel2: TPanel
        Left = 2
        Top = 92
        Width = 100
        Height = 25
        BevelOuter = bvNone
        Color = clNavy
        TabOrder = 1
        object nvTam: ThDBNavigator
          Left = -81
          Top = -6
          Width = 290
          Height = 31
          BevelOuter = bvNone
          Caption = ' '
          Color = 14789952
          TabOrder = 0
          OnExclui = nvTamExclui
          DataSource = DsTam
          UsaAppend = True
          Salvar = False
          EnabledButtons = [nbInclui, nbExclui, nbSalva, nbCancela, nbNavega]
        end
      end
      object Panel7: TPanel
        Left = 1
        Top = 120
        Width = 103
        Height = 234
        BevelOuter = bvNone
        Color = 14789952
        TabOrder = 2
        object grTam: ThGrid
          Left = 1
          Top = 1
          Width = 101
          Height = 232
          TabStop = False
          Selected.Strings = (
            'CODTAM'#9'15'#9'Tamanhos             ')
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          OnCellChanged = grTamCellChanged
          FixedCols = 0
          ShowHorzScrollBar = False
          ShowVertScrollBar = False
          BorderStyle = bsNone
          Color = 16577773
          DataSource = DsTam
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
      object Panel8: TPanel
        Left = 555
        Top = 92
        Width = 225
        Height = 25
        BevelOuter = bvNone
        Color = clNavy
        TabOrder = 3
        object nvQte: ThDBNavigator
          Left = -56
          Top = -6
          Width = 297
          Height = 31
          BevelOuter = bvNone
          Caption = ' '
          Color = 14789952
          TabOrder = 0
          OnSalva = nvQteSalva
          DataSource = DsQte
          BaseAtualizar = 'EstCor'
          UsaAppend = True
          Salvar = False
          EnabledButtons = [nbAtualizar, nbInclui, nbExclui, nbSalva, nbCancela, nbNavega]
        end
      end
      object Panel9: TPanel
        Left = 117
        Top = 120
        Width = 664
        Height = 234
        BevelOuter = bvNone
        Color = 14789952
        TabOrder = 4
        object grQte: ThGrid
          Left = 1
          Top = 1
          Width = 662
          Height = 232
          TabStop = False
          Selected.Strings = (
            'CODCOR'#9'10'#9'Cor'
            'NOMCOR'#9'20'#9'Descrição'
            'QTAQTE'#9'10'#9'         Adquirido'
            'QTDQTE'#9'10'#9'                      Atual'
            'QTRQTE'#9'10'#9'            Reservado'
            'QTDRMA'#9'10'#9'               RMA'
            'QTSQTE'#9'10'#9'                 Disponivel')
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          OnCellChanged = grQteCellChanged
          FixedCols = 0
          ShowHorzScrollBar = False
          ShowVertScrollBar = False
          BorderStyle = bsNone
          Color = 16577773
          DataSource = DsQte
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
      object EdQtdEst: TdxDBColorCurrencyEdit
        Left = 116
        Top = 66
        Width = 142
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
        TabOrder = 5
        DataField = 'QTDITE'
        DataSource = DsIte
        DecimalPlaces = 4
        Nullable = False
        CorDeFoco = clInfoBk
      end
      object CbNomEmp3: TdxDBColorLookupEdit
        Left = 259
        Top = 43
        Width = 523
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
        TabStop = False
        DataField = 'CODEMP'
        DataSource = DsIte
        ReadOnly = False
        ListFieldName = 'NOMEMP;CODEMP'
        KeyFieldName = 'CODEMP'
        ListSource = DsEmp
        LookupKeyValue = Null
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
      object dxDBEdit4: TdxDBColorEdit
        Left = 116
        Top = 20
        Width = 142
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
        TabOrder = 9
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'CODITE'
        DataSource = DsPro
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object dxDBEdit5: TdxDBColorEdit
        Left = 259
        Top = 20
        Width = 523
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
        TabOrder = 10
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'DSCPRO'
        DataSource = DsPro
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
    end
  end
  object Panel6: TPanel
    Left = 472
    Top = 0
    Width = 313
    Height = 25
    BevelOuter = bvNone
    Color = clNavy
    TabOrder = 1
    object nvPro: ThDBNavigator
      Left = -56
      Top = -6
      Width = 369
      Height = 31
      BevelOuter = bvNone
      Caption = ' '
      Color = 15788249
      TabOrder = 0
      OnAtualizar = nvProAtualizar
      OnImprime = nvProImprime
      OnCancela = nvProCancela
      BeforeSalva = nvProBeforeSalva
      OnSalva = nvSalva
      DataSource = DsPro
      BaseAtualizar = 
        'EstClpEstGruEstSubEstTipEstUndFinComEstSt1EstSt2GerUsuEstIteEstT' +
        'amEstQteEstParIcmSaiIcmEntIpiSaiIpiEntEstMrcEstCat'
      UsaAppend = False
      Salvar = False
    end
  end
  object dxDBColorEdit2: TdxDBColorEdit
    Left = 116
    Top = 742
    Width = 29
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
    OnExit = EdCodStsExit
    OnKeyDown = EdCodStsKeyDown
    Alignment = taLeftJustify
    CharCase = ecUpperCase
    DataField = 'ID_REGRA_PIS'
    DataSource = DsPro
    MaxLength = 20
    CorDeFoco = clInfoBk
    StoredValues = 3
  end
  object dxDBColorLookupEdit1: TdxDBColorLookupEdit
    Left = 146
    Top = 742
    Width = 247
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
    Visible = False
    OnExit = CbNomStsExit
    DataField = 'CODSTS'
    DataSource = DsPro
    ReadOnly = False
    DropDownWidth = 430
    ListFieldName = 'NOMSTR'
    KeyFieldName = 'CODSTR'
    ListSource = DsSts
    LookupKeyValue = Null
    CorDeFoco = clInfoBk
    StoredValues = 64
  end
  object dxDBColorEdit3: TdxDBColorEdit
    Left = 507
    Top = 742
    Width = 29
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
    OnExit = EdCodStsExit
    OnKeyDown = EdCodStsKeyDown
    Alignment = taLeftJustify
    CharCase = ecUpperCase
    DataField = 'ID_REGRA_PIS_ENTRADA'
    DataSource = DsPro
    MaxLength = 20
    CorDeFoco = clInfoBk
    StoredValues = 3
  end
  object dxDBColorLookupEdit3: TdxDBColorLookupEdit
    Left = 536
    Top = 742
    Width = 246
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
    TabOrder = 5
    TabStop = False
    Visible = False
    OnExit = CbNomStsExit
    DataField = 'CODSTS'
    DataSource = DsPro
    ReadOnly = False
    DropDownWidth = 430
    ListFieldName = 'NOMSTR'
    KeyFieldName = 'CODSTR'
    ListSource = DsSts
    LookupKeyValue = Null
    CorDeFoco = clInfoBk
    StoredValues = 64
  end
  object dxDBColorEdit1: TdxDBColorEdit
    Left = 116
    Top = 766
    Width = 29
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
    Visible = False
    OnExit = EdCodStsExit
    OnKeyDown = EdCodStsKeyDown
    Alignment = taLeftJustify
    CharCase = ecUpperCase
    DataField = 'ID_REGRA_COFINS'
    DataSource = DsPro
    MaxLength = 20
    CorDeFoco = clInfoBk
    StoredValues = 3
  end
  object dxDBColorLookupEdit2: TdxDBColorLookupEdit
    Left = 146
    Top = 766
    Width = 247
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
    TabOrder = 7
    TabStop = False
    Visible = False
    OnExit = CbNomStsExit
    DataField = 'CODSTS'
    DataSource = DsPro
    ReadOnly = False
    DropDownWidth = 430
    ListFieldName = 'NOMSTR'
    KeyFieldName = 'CODSTR'
    ListSource = DsSts
    LookupKeyValue = Null
    CorDeFoco = clInfoBk
    StoredValues = 64
  end
  object dxDBColorEdit4: TdxDBColorEdit
    Left = 507
    Top = 766
    Width = 29
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
    TabOrder = 8
    Visible = False
    OnExit = EdCodStsExit
    OnKeyDown = EdCodStsKeyDown
    Alignment = taLeftJustify
    CharCase = ecUpperCase
    DataField = 'ID_REGRA_COFINS_ENTRADA'
    DataSource = DsPro
    MaxLength = 20
    CorDeFoco = clInfoBk
    StoredValues = 3
  end
  object dxDBColorLookupEdit4: TdxDBColorLookupEdit
    Left = 535
    Top = 766
    Width = 246
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
    TabOrder = 9
    TabStop = False
    Visible = False
    OnExit = CbNomStsExit
    DataField = 'CODSTS'
    DataSource = DsPro
    ReadOnly = False
    DropDownWidth = 430
    ListFieldName = 'NOMSTR'
    KeyFieldName = 'CODSTR'
    ListSource = DsSts
    LookupKeyValue = Null
    CorDeFoco = clInfoBk
    StoredValues = 64
  end
  object UpPro: TUpdateSQL
    ModifySQL.Strings = (
      'update EstPro'
      'set'
      '  CODCLP = :CODCLP,'
      '  CODGRU = :CODGRU,'
      '  CODSUB = :CODSUB,'
      '  CODPRO = :CODPRO,'
      '  DSCPRO = :DSCPRO,'
      '  DSRPRO = :DSRPRO,'
      '  CBAPRO = :CBAPRO,'
      '  CBAEMB = :CBAEMB,'
      '  QTDEMB = :QTDEMB,'
      '  CATPRO = :CATPRO,'
      '  LOCPRO = :LOCPRO,'
      '  REFPRO = :REFPRO,'
      '  ISSPRO = :ISSPRO,'
      '  CODUNE = :CODUNE,'
      '  QTEPRO = :QTEPRO,'
      '  CODUNS = :CODUNS,'
      '  QTSPRO = :QTSPRO,'
      '  FLBPRO = :FLBPRO,'
      '  WEBPRO = :WEBPRO,'
      '  DTCPRO = :DTCPRO,'
      '  OBSPRO = :OBSPRO,'
      '  CODST1 = :CODST1,'
      '  CODST2 = :CODST2,'
      '  CODTIP = :CODTIP,'
      '  CODCOM = :CODCOM,'
      '  CODUSU = :CODUSU,'
      '  PESLIQ = :PESLIQ,'
      '  PESBRT = :PESBRT,'
      '  SAIICM = :SAIICM,'
      '  ENTICM = :ENTICM,'
      '  SAIIPI = :SAIIPI,'
      '  ENTIPI = :ENTIPI,'
      '  IMGPRO = :IMGPRO,'
      '  CODSTE = :CODSTE,'
      '  TIPSTE = :TIPSTE,'
      '  CODSTS = :CODSTS,'
      '  TIPSTS = :TIPSTS,'
      '  CODANT = :CODANT,'
      '  SIMPRO = :SIMPRO,'
      '  NUMPRO = :NUMPRO,'
      '  FLGTRG = :FLGTRG,'
      '  QTDVOL = :QTDVOL,'
      '  CODMRC = :CODMRC,'
      '  IDEPRO = :IDEPRO,'
      '  CODCAT = :CODCAT,'
      '  ICMSAI = :ICMSAI,'
      '  ICMTSD = :ICMTSD,'
      '  ICMENT = :ICMENT,'
      '  ICMTEN = :ICMTEN,'
      '  IPISAI = :IPISAI,'
      '  IPITSD = :IPITSD,'
      '  IPIENT = :IPIENT,'
      '  IPITEN = :IPITEN,'
      '  CLFENT = :CLFENT,'
      '  CLFSAI = :CLFSAI,'
      '  FLGPRO = :FLGPRO,'
      '  FLGKIT = :FLGKIT,'
      '  CBAEM2 = :CBAEM2,'
      '  CBAEM3 = :CBAEM3,'
      '  LIQEMB = :LIQEMB,'
      '  BRTEMB = :BRTEMB,'
      '  CUBPRO = :CUBPRO,'
      '  CXAPRO = :CXAPRO,'
      '  ENTIMP = :ENTIMP,'
      '  CODBAR = :CODBAR,'
      '  DESIMP = :DESIMP,'
      '  DESIM2 = :DESIM2,'
      '  VALIMP = :VALIMP,'
      '  DSCIMP = :DSCIMP,'
      '  DSRIMP = :DSRIMP,'
      '  DESNC1 = :DESNC1,'
      '  DESNC2 = :DESNC2,'
      '  DESNC3 = :DESNC3,'
      '  DESNC4 = :DESNC4,'
      '  DESNC5 = :DESNC5,'
      '  DESNC6 = :DESNC6,'
      '  DESNC7 = :DESNC7,'
      '  DESNC8 = :DESNC8,'
      '  FLGLIS = :FLGLIS,'
      '  PESCUB = :PESCUB,'
      '  ALTPRO = :ALTPRO,'
      '  COMPRO = :COMPRO,'
      '  LARPRO = :LARPRO,'
      '  GARPRO = :GARPRO,'
      '  PRODEP = :PRODEP,'
      '  ID2PRO = :ID2PRO,'
      '  ID_REGRA_PIS = :ID_REGRA_PIS,'
      '  ID_REGRA_COFINS = :ID_REGRA_COFINS,'
      '  ID_REGRA_PIS_ENTRADA = :ID_REGRA_PIS_ENTRADA,'
      '  ID_REGRA_COFINS_ENTRADA = :ID_REGRA_COFINS_ENTRADA,'
      '  CODNCM = :CODNCM,'
      '  CODANP = :CODANP,'
      '  CODIF = :CODIF'
      'where'
      '  CODCLP = :OLD_CODCLP and'
      '  CODGRU = :OLD_CODGRU and'
      '  CODSUB = :OLD_CODSUB and'
      '  CODPRO = :OLD_CODPRO')
    InsertSQL.Strings = (
      'insert into EstPro'
      
        '  (CODCLP, CODGRU, CODSUB, CODPRO, DSCPRO, DSRPRO, CBAPRO, CBAEM' +
        'B, QTDEMB, '
      
        '   CATPRO, LOCPRO, REFPRO, ISSPRO, CODUNE, QTEPRO, CODUNS, QTSPR' +
        'O, FLBPRO, '
      
        '   WEBPRO, DTCPRO, OBSPRO, CODST1, CODST2, CODTIP, CODCOM, CODUS' +
        'U, PESLIQ, '
      
        '   PESBRT, SAIICM, ENTICM, SAIIPI, ENTIPI, IMGPRO, CODSTE, TIPST' +
        'E, CODSTS, '
      
        '   TIPSTS, CODANT, SIMPRO, NUMPRO, FLGTRG, QTDVOL, CODMRC, IDEPR' +
        'O, CODCAT, '
      
        '   ICMSAI, ICMTSD, ICMENT, ICMTEN, IPISAI, IPITSD, IPIENT, IPITE' +
        'N, CLFENT, '
      
        '   CLFSAI, FLGPRO, FLGKIT, CBAEM2, CBAEM3, LIQEMB, BRTEMB, CUBPR' +
        'O, CXAPRO, '
      
        '   ENTIMP, CODBAR, DESIMP, DESIM2, VALIMP, DSCIMP, DSRIMP, DESNC' +
        '1, DESNC2, '
      
        '   DESNC3, DESNC4, DESNC5, DESNC6, DESNC7, DESNC8, FLGLIS, PESCU' +
        'B, ALTPRO, '
      
        '   COMPRO, LARPRO, GARPRO, PRODEP, ID2PRO, ID_REGRA_PIS, ID_REGR' +
        'A_COFINS, '
      
        '   ID_REGRA_PIS_ENTRADA, ID_REGRA_COFINS_ENTRADA, CODNCM, CODANP' +
        ', CODIF)'
      'values'
      
        '  (:CODCLP, :CODGRU, :CODSUB, :CODPRO, :DSCPRO, :DSRPRO, :CBAPRO' +
        ', :CBAEMB, '
      
        '   :QTDEMB, :CATPRO, :LOCPRO, :REFPRO, :ISSPRO, :CODUNE, :QTEPRO' +
        ', :CODUNS, '
      
        '   :QTSPRO, :FLBPRO, :WEBPRO, :DTCPRO, :OBSPRO, :CODST1, :CODST2' +
        ', :CODTIP, '
      
        '   :CODCOM, :CODUSU, :PESLIQ, :PESBRT, :SAIICM, :ENTICM, :SAIIPI' +
        ', :ENTIPI, '
      
        '   :IMGPRO, :CODSTE, :TIPSTE, :CODSTS, :TIPSTS, :CODANT, :SIMPRO' +
        ', :NUMPRO, '
      
        '   :FLGTRG, :QTDVOL, :CODMRC, :IDEPRO, :CODCAT, :ICMSAI, :ICMTSD' +
        ', :ICMENT, '
      
        '   :ICMTEN, :IPISAI, :IPITSD, :IPIENT, :IPITEN, :CLFENT, :CLFSAI' +
        ', :FLGPRO, '
      
        '   :FLGKIT, :CBAEM2, :CBAEM3, :LIQEMB, :BRTEMB, :CUBPRO, :CXAPRO' +
        ', :ENTIMP, '
      
        '   :CODBAR, :DESIMP, :DESIM2, :VALIMP, :DSCIMP, :DSRIMP, :DESNC1' +
        ', :DESNC2, '
      
        '   :DESNC3, :DESNC4, :DESNC5, :DESNC6, :DESNC7, :DESNC8, :FLGLIS' +
        ', :PESCUB, '
      
        '   :ALTPRO, :COMPRO, :LARPRO, :GARPRO, :PRODEP, :ID2PRO, :ID_REG' +
        'RA_PIS, '
      
        '   :ID_REGRA_COFINS, :ID_REGRA_PIS_ENTRADA, :ID_REGRA_COFINS_ENT' +
        'RADA, :CODNCM, '
      '   :CODANP, :CODIF)')
    DeleteSQL.Strings = (
      'delete from EstPro'
      'where'
      '  CODCLP = :OLD_CODCLP and'
      '  CODGRU = :OLD_CODGRU and'
      '  CODSUB = :OLD_CODSUB and'
      '  CODPRO = :OLD_CODPRO')
    Top = 684
  end
  object DsPro: TwwDataSource
    DataSet = EstPro
    OnDataChange = DsProDataChange
    Left = 28
    Top = 572
  end
  object EstPro: TwwQuery
    CachedUpdates = True
    AfterOpen = EstProAfterOpen
    BeforeEdit = EstProBeforeEdit
    BeforePost = EstProBeforePost
    AfterPost = EstProAfterCancel
    AfterCancel = EstProAfterCancel
    BeforeDelete = EstProBeforeDelete
    AfterScroll = EstProAfterScroll
    AfterRefresh = EstProAfterRefresh
    OnNewRecord = EstProNewRecord
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select EstPro.*,'
      
        '           CodClp || _UNICODE_FSS '#39'-'#39' || CodGru || _UNICODE_FSS ' +
        #39'.'#39' || CodSub || _UNICODE_FSS '#39'.'#39' || CodPro as CodIte'
      'From EstPro'
      'Where EstPro.CodClp = :CodClp'
      'Order by EstPro.CodClp,EstPro.CodGru,EstPro.CodSub,EstPro.CodPro')
    UpdateObject = UpPro
    ControlType.Strings = (
      'FLBPRO;CheckBox;*; ')
    ValidateWithMask = True
    Top = 572
    ParamData = <
      item
        DataType = ftString
        Name = 'CodClp'
        ParamType = ptInput
      end>
    object EstProCODITE: TStringField
      DisplayLabel = 'Código                        '
      DisplayWidth = 18
      FieldName = 'CODITE'
      Size = 14
    end
    object EstProDSCPRO: TStringField
      DisplayLabel = 'Descrição Principal'
      DisplayWidth = 59
      FieldName = 'DSCPRO'
      Origin = 'ISADE.ESTPRO.DSCPRO'
      FixedChar = True
      Size = 70
    end
    object EstProSIMPRO: TStringField
      DisplayLabel = ' Similar          '
      DisplayWidth = 11
      FieldName = 'SIMPRO'
      FixedChar = True
      Size = 10
    end
    object EstProCODCAT: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Categoria'
      DisplayWidth = 10
      FieldName = 'CODCAT'
    end
    object EstProCODTIP: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Tipo'
      DisplayWidth = 10
      FieldName = 'CODTIP'
      Origin = 'ISADE.ESTPRO.CODTIP'
    end
    object EstProCODMRC: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Marca            '
      DisplayWidth = 10
      FieldName = 'CODMRC'
    end
    object EstProFLBPRO: TStringField
      DisplayLabel = '  D   '
      DisplayWidth = 3
      FieldName = 'FLBPRO'
      Origin = 'ISADE.ESTPRO.FLBPRO'
      FixedChar = True
      Size = 1
    end
    object EstProID_REGRA_PIS: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_REGRA_PIS'
    end
    object EstProID_REGRA_COFINS: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_REGRA_COFINS'
    end
    object EstProID_REGRA_PIS_ENTRADA: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_REGRA_PIS_ENTRADA'
    end
    object EstProID_REGRA_COFINS_ENTRADA: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_REGRA_COFINS_ENTRADA'
    end
    object EstProENTIMP: TFloatField
      DisplayWidth = 10
      FieldName = 'ENTIMP'
      Visible = False
    end
    object EstProREFPRO: TStringField
      DisplayLabel = 'Referência Interna'
      DisplayWidth = 21
      FieldName = 'REFPRO'
      Origin = 'ISADE.ESTPRO.REFPRO'
      Visible = False
      FixedChar = True
    end
    object EstProDSRPRO: TStringField
      DisplayLabel = 'Descrição Reduzida'
      DisplayWidth = 20
      FieldName = 'DSRPRO'
      Origin = 'ISADE.ESTPRO.DSRPRO'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object EstProTIPSTE: TStringField
      DisplayWidth = 7
      FieldName = 'TIPSTE'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object EstProTIPSTS: TStringField
      DisplayWidth = 7
      FieldName = 'TIPSTS'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object EstProPESLIQ: TFloatField
      DisplayWidth = 10
      FieldName = 'PESLIQ'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object EstProPESBRT: TFloatField
      DisplayWidth = 10
      FieldName = 'PESBRT'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object EstProCODCLP: TStringField
      DisplayLabel = 'Classificação'
      DisplayWidth = 12
      FieldName = 'CODCLP'
      Origin = 'ISADE.ESTPRO.CODCLP'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object EstProCODGRU: TStringField
      DisplayLabel = 'Grupo'
      DisplayWidth = 11
      FieldName = 'CODGRU'
      Origin = 'ISADE.ESTPRO.CODGRU'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object EstProCODSUB: TStringField
      DisplayLabel = 'Sub-Grupo'
      DisplayWidth = 10
      FieldName = 'CODSUB'
      Origin = 'ISADE.ESTPRO.CODSUB'
      Visible = False
      FixedChar = True
      Size = 4
    end
    object EstProCODPRO: TStringField
      DisplayLabel = 'Item'
      DisplayWidth = 8
      FieldName = 'CODPRO'
      Origin = 'ISADE.ESTPRO.CODPRO'
      Visible = False
      FixedChar = True
      Size = 5
    end
    object EstProCBAPRO: TStringField
      DisplayWidth = 20
      FieldName = 'CBAPRO'
      Origin = 'ISADE.ESTPRO.CBAPRO'
      Visible = False
      FixedChar = True
    end
    object EstProCBAEMB: TStringField
      DisplayWidth = 20
      FieldName = 'CBAEMB'
      Origin = 'ISADE.ESTPRO.CBAEMB'
      Visible = False
      FixedChar = True
    end
    object EstProQTDEMB: TFloatField
      DisplayWidth = 10
      FieldName = 'QTDEMB'
      Origin = 'ISADE.ESTPRO.QTDEMB'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object EstProCATPRO: TStringField
      DisplayWidth = 20
      FieldName = 'CATPRO'
      Origin = 'ISADE.ESTPRO.CATPRO'
      Visible = False
      FixedChar = True
    end
    object EstProLOCPRO: TStringField
      DisplayWidth = 20
      FieldName = 'LOCPRO'
      Origin = 'ISADE.ESTPRO.LOCPRO'
      Visible = False
      FixedChar = True
    end
    object EstProISSPRO: TFloatField
      DisplayWidth = 10
      FieldName = 'ISSPRO'
      Origin = 'ISADE.ESTPRO.ISSPRO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstProCODUNE: TStringField
      DisplayWidth = 3
      FieldName = 'CODUNE'
      Origin = 'ISADE.ESTPRO.CODUNE'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object EstProQTEPRO: TFloatField
      DisplayWidth = 10
      FieldName = 'QTEPRO'
      Origin = 'ISADE.ESTPRO.QTEPRO'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object EstProCODUNS: TStringField
      DisplayWidth = 3
      FieldName = 'CODUNS'
      Origin = 'ISADE.ESTPRO.CODUNS'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object EstProQTSPRO: TFloatField
      DisplayWidth = 10
      FieldName = 'QTSPRO'
      Origin = 'ISADE.ESTPRO.QTSPRO'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object EstProWEBPRO: TStringField
      DisplayWidth = 70
      FieldName = 'WEBPRO'
      Origin = 'ISADE.ESTPRO.WEBPRO'
      Visible = False
      FixedChar = True
      Size = 70
    end
    object EstProDTCPRO: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DTCPRO'
      Origin = 'ISADE.ESTPRO.DTCPRO'
      Visible = False
    end
    object EstProOBSPRO: TMemoField
      DisplayWidth = 10
      FieldName = 'OBSPRO'
      Origin = 'ISADE.ESTPRO.OBSPRO'
      Visible = False
      BlobType = ftMemo
      Size = 2000
    end
    object EstProCODST1: TStringField
      DisplayWidth = 1
      FieldName = 'CODST1'
      Origin = 'ISADE.ESTPRO.CODST1'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object EstProCODST2: TStringField
      DisplayWidth = 2
      FieldName = 'CODST2'
      Origin = 'ISADE.ESTPRO.CODST2'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object EstProCODCOM: TStringField
      DisplayWidth = 3
      FieldName = 'CODCOM'
      Origin = 'ISADE.ESTPRO.CODCOM'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object EstProCODUSU: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODUSU'
      Origin = 'ISADE.ESTPRO.CODUSU'
      Visible = False
    end
    object EstProSAIICM: TFloatField
      DisplayWidth = 10
      FieldName = 'SAIICM'
      Origin = 'ISADE.ESTPRO.SAIICM'
      Visible = False
      DisplayFormat = '##0'
    end
    object EstProENTICM: TFloatField
      DisplayWidth = 10
      FieldName = 'ENTICM'
      Origin = 'ISADE.ESTPRO.ENTICM'
      Visible = False
      DisplayFormat = '##0'
    end
    object EstProSAIIPI: TFloatField
      DisplayWidth = 10
      FieldName = 'SAIIPI'
      Origin = 'ISADE.ESTPRO.SAIIPI'
      Visible = False
      DisplayFormat = '##0'
    end
    object EstProENTIPI: TFloatField
      DisplayWidth = 10
      FieldName = 'ENTIPI'
      Origin = 'ISADE.ESTPRO.ENTIPI'
      Visible = False
      DisplayFormat = '##0'
    end
    object EstProIMGPRO: TBlobField
      DisplayWidth = 10
      FieldName = 'IMGPRO'
      Origin = 'ISADE.ESTPRO.IMGPRO'
      Visible = False
      BlobType = ftBlob
      Size = 1
    end
    object EstProCODANT: TStringField
      DisplayWidth = 30
      FieldName = 'CODANT'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object EstProFLGTRG: TStringField
      DisplayWidth = 1
      FieldName = 'FLGTRG'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object EstProNUMPRO: TStringField
      DisplayWidth = 30
      FieldName = 'NUMPRO'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object EstProQTDVOL: TIntegerField
      DisplayWidth = 10
      FieldName = 'QTDVOL'
      Visible = False
    end
    object EstProIDEPRO: TStringField
      DisplayWidth = 30
      FieldName = 'IDEPRO'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object EstProICMSAI: TStringField
      FieldName = 'ICMSAI'
      Visible = False
      FixedChar = True
    end
    object EstProICMTSD: TStringField
      FieldName = 'ICMTSD'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object EstProICMENT: TStringField
      FieldName = 'ICMENT'
      Visible = False
      FixedChar = True
    end
    object EstProICMTEN: TStringField
      FieldName = 'ICMTEN'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object EstProIPISAI: TStringField
      FieldName = 'IPISAI'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object EstProIPITSD: TStringField
      FieldName = 'IPITSD'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object EstProIPIENT: TStringField
      FieldName = 'IPIENT'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object EstProIPITEN: TStringField
      FieldName = 'IPITEN'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object EstProCLFENT: TStringField
      FieldName = 'CLFENT'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object EstProCLFSAI: TStringField
      FieldName = 'CLFSAI'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object EstProCODSTE: TStringField
      DisplayWidth = 20
      FieldName = 'CODSTE'
      Visible = False
      FixedChar = True
    end
    object EstProCODSTS: TStringField
      DisplayWidth = 20
      FieldName = 'CODSTS'
      Visible = False
      FixedChar = True
    end
    object EstProFLGPRO: TStringField
      DisplayWidth = 3
      FieldName = 'FLGPRO'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object EstProFLGKIT: TStringField
      DisplayWidth = 3
      FieldName = 'FLGKIT'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object EstProCBAEM2: TStringField
      DisplayWidth = 20
      FieldName = 'CBAEM2'
      Visible = False
      FixedChar = True
    end
    object EstProCBAEM3: TStringField
      DisplayWidth = 20
      FieldName = 'CBAEM3'
      Visible = False
      FixedChar = True
    end
    object EstProLIQEMB: TFloatField
      DisplayWidth = 10
      FieldName = 'LIQEMB'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object EstProBRTEMB: TFloatField
      DisplayWidth = 10
      FieldName = 'BRTEMB'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object EstProCUBPRO: TFloatField
      DisplayWidth = 10
      FieldName = 'CUBPRO'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object EstProCXAPRO: TFloatField
      DisplayWidth = 10
      FieldName = 'CXAPRO'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object EstProDESIMP: TMemoField
      FieldName = 'DESIMP'
      Visible = False
      BlobType = ftMemo
      Size = 500
    end
    object EstProNROPRO: TIntegerField
      FieldName = 'NROPRO'
      Visible = False
    end
    object EstProCODBAR: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODBAR'
      Visible = False
    end
    object EstProQTDBAR: TIntegerField
      DisplayWidth = 10
      FieldName = 'QTDBAR'
      Visible = False
    end
    object EstProSEQBAR: TIntegerField
      DisplayWidth = 10
      FieldName = 'SEQBAR'
      Visible = False
    end
    object EstProDESIM2: TMemoField
      DisplayWidth = 10
      FieldName = 'DESIM2'
      Visible = False
      BlobType = ftMemo
      Size = 500
    end
    object EstProVALIMP: TFloatField
      DisplayWidth = 10
      FieldName = 'VALIMP'
      Visible = False
    end
    object EstProDSCIMP: TStringField
      DisplayWidth = 70
      FieldName = 'DSCIMP'
      Visible = False
      Size = 70
    end
    object EstProFLGLIS: TStringField
      DisplayWidth = 3
      FieldName = 'FLGLIS'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object EstProDESNC1: TStringField
      DisplayWidth = 80
      FieldName = 'DESNC1'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object EstProDESNC2: TStringField
      DisplayWidth = 80
      FieldName = 'DESNC2'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object EstProDESNC3: TStringField
      DisplayWidth = 80
      FieldName = 'DESNC3'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object EstProDESNC4: TStringField
      DisplayWidth = 80
      FieldName = 'DESNC4'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object EstProDESNC5: TStringField
      DisplayWidth = 80
      FieldName = 'DESNC5'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object EstProDESNC6: TStringField
      DisplayWidth = 80
      FieldName = 'DESNC6'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object EstProDESNC7: TStringField
      DisplayWidth = 80
      FieldName = 'DESNC7'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object EstProDESNC8: TStringField
      DisplayWidth = 80
      FieldName = 'DESNC8'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object EstProPESCUB: TFloatField
      DisplayWidth = 10
      FieldName = 'PESCUB'
      Visible = False
    end
    object EstProALTPRO: TFloatField
      DisplayWidth = 10
      FieldName = 'ALTPRO'
      Visible = False
    end
    object EstProCOMPRO: TFloatField
      DisplayWidth = 10
      FieldName = 'COMPRO'
      Visible = False
    end
    object EstProLARPRO: TFloatField
      DisplayWidth = 10
      FieldName = 'LARPRO'
      Visible = False
    end
    object EstProGARPRO: TIntegerField
      DisplayWidth = 10
      FieldName = 'GARPRO'
      Visible = False
    end
    object EstProPRODEP: TStringField
      DisplayWidth = 18
      FieldName = 'PRODEP'
      Visible = False
      FixedChar = True
      Size = 18
    end
    object EstProID2PRO: TStringField
      DisplayWidth = 30
      FieldName = 'ID2PRO'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object EstProDSRIMP: TStringField
      DisplayWidth = 70
      FieldName = 'DSRIMP'
      Visible = False
      Size = 70
    end
    object EstProINI_REG_ST: TDateTimeField
      FieldName = 'INI_REG_ST'
      Visible = False
    end
  end
  object FinCom: TwwQuery
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * From FinCom')
    ValidateWithMask = True
    Left = 196
    Top = 684
    object FinComCODCOM: TStringField
      FieldName = 'CODCOM'
      Origin = 'ISADE.FINCOM.CODCOM'
      FixedChar = True
      Size = 3
    end
    object FinComPERCOM: TFloatField
      FieldName = 'PERCOM'
      Origin = 'ISADE.FINCOM.PERCOM'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
  end
  object EstSub: TwwQuery
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * From EstSub'
      'Where EstSub.CodGru = :CodGru'
      '     and EstSub.CodSub = :CodSub')
    ValidateWithMask = True
    Left = 65
    Top = 628
    ParamData = <
      item
        DataType = ftString
        Name = 'CodGru'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CodSub'
        ParamType = ptInput
      end>
    object EstSubNOMSUB: TStringField
      DisplayLabel = 'Descrição'
      DisplayWidth = 40
      FieldName = 'NOMSUB'
      Origin = 'ISADE.ESTSUB.NOMSUB'
      FixedChar = True
      Size = 40
    end
    object EstSubCODGRU: TStringField
      DisplayWidth = 3
      FieldName = 'CODGRU'
      Origin = 'ISADE.ESTSUB.CODGRU'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object EstSubCODSUB: TStringField
      DisplayWidth = 4
      FieldName = 'CODSUB'
      Origin = 'ISADE.ESTSUB.CODSUB'
      Visible = False
      FixedChar = True
      Size = 4
    end
  end
  object EstGru: TwwQuery
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * From EstGru Where EstGru.CodGru = :CodGru')
    ValidateWithMask = True
    Left = 65
    Top = 600
    ParamData = <
      item
        DataType = ftString
        Name = 'CodGru'
        ParamType = ptInput
      end>
  end
  object GerUsu: TwwQuery
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select GerUsu.LogUsu,'
      '           GerUsu.CodUsu '
      'From GerUsu'
      'Where GerUsu.CodUsu = :CodUsu')
    ValidateWithMask = True
    Left = 433
    Top = 656
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodUsu'
        ParamType = ptInput
      end>
    object GerUsuLOGUSU: TStringField
      DisplayLabel = 'Login'
      DisplayWidth = 15
      FieldName = 'LOGUSU'
      Origin = 'ISADE.GERUSU.LOGUSU'
      FixedChar = True
      Size = 15
    end
    object GerUsuCODUSU: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODUSU'
      Origin = 'ISADE.GERUSU.CODUSU'
      Visible = False
    end
  end
  object EstUns: TwwQuery
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * From EstUnd Where EstUnd.CodUnd = :CodUnd')
    ValidateWithMask = True
    Left = 433
    Top = 572
    ParamData = <
      item
        DataType = ftString
        Name = 'CodUnd'
        ParamType = ptInput
      end>
  end
  object EstTip: TwwQuery
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * From EstTip Where EstTip.CodTip = :CodTip')
    ValidateWithMask = True
    Left = 65
    Top = 684
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodTip'
        ParamType = ptInput
      end>
    object EstTipCODTIP: TIntegerField
      FieldName = 'CODTIP'
      Origin = 'ISADE.ESTTIP.CODTIP'
    end
    object EstTipNOMTIP: TStringField
      FieldName = 'NOMTIP'
      Origin = 'ISADE.ESTTIP.NOMTIP'
      FixedChar = True
      Size = 40
    end
  end
  object EstClp: TwwQuery
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * From EstClp Where EstClp.CodClp = :CodClp')
    ValidateWithMask = True
    Left = 65
    Top = 572
    ParamData = <
      item
        DataType = ftString
        Name = 'CodClp'
        ParamType = ptInput
      end>
    object EstClpCODCLP: TStringField
      FieldName = 'CODCLP'
      Origin = 'ISADE.ESTCLP.CODCLP'
      FixedChar = True
      Size = 1
    end
    object EstClpNOMCLP: TStringField
      FieldName = 'NOMCLP'
      Origin = 'ISADE.ESTCLP.NOMCLP'
      FixedChar = True
      Size = 40
    end
  end
  object EstIte: TwwQuery
    CachedUpdates = True
    BeforeEdit = EstIteBeforeEdit
    AfterPost = EstIteAfterCancel
    AfterCancel = EstIteAfterCancel
    OnNewRecord = EstIteNewRecord
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select EstIte.CodEmp,'
      '           EstIte.CodClp,'
      '           EstIte.CodGru,'
      '           EstIte.CodSub,'
      '           EstIte.CodPro,'
      '           EstIte.CstIte,'
      '           EstIte.VchIte,'
      '           EstIte.VcpIte,'
      '           EstIte.VreIte,'
      '           EstIte.VprIte,'
      '           EstIte.VpfIte,'
      '           EstIte.VcrIte,'
      '           EstIte.VmeIte,'
      '           EstIte.DulCmp,'
      '           EstIte.QtdCmp,'
      '           EstIte.VreOut,'
      '           EstIte.VchOut,'
      '           EstIte.CstOut,'
      '           EstIte.VpfOut,'
      '           EstIte.DulImp,'
      '           EstIte.QtdImp,'
      '           EstIte.Vb1Ite,'
      '           EstIte.Vb2Ite,'
      '           EstIte.Vb3Ite,'
      '           EstIte.Vb4Ite,'
      '           EstIte.Vb5Ite,'
      '           EstIte.Ms1Ite,'
      '           EstIte.Ms2Ite,'
      '           EstIte.Ms3Ite,'
      '           EstIte.Ms4Ite,'
      '           EstIte.Ms5Ite,'
      '           EstIte.Ds1Ite,'
      '           EstIte.Ds2Ite,'
      '           EstIte.Ds3Ite,'
      '           EstIte.Ds4Ite,'
      '           EstIte.Ds5Ite,'
      '           EstIte.Mk1Ite,'
      '           EstIte.Mk2Ite,'
      '           EstIte.Mk3Ite,'
      '           EstIte.Mk4Ite,'
      '           EstIte.Mk5Ite,'
      '           EstIte.Vp1Ite,'
      '           EstIte.Vp2Ite,'
      '           EstIte.Vp3Ite,'
      '           EstIte.Vp4Ite,'
      '           EstIte.Vp5Ite,'
      '           EstIte.CodCm1,'
      '           EstIte.CodCm2,'
      '           EstIte.CodCm3,'
      '           EstIte.CodCm4,'
      '           EstIte.CodCm5,'
      '           EstIte.QmaIte,'
      '           EstIte.QtmIte,'
      '           EstIte.QtdIte,'
      '           EstIte.QtrIte,'
      '           EstIte.QtaIte,'
      '           EstIte.QtdRma,'
      
        '           Round(EstIte.QtdIte-(EstIte.QtrIte + EstIte.QtdRma),4' +
        ') as QtsIte '
      'From EstIte LEFT JOIN GerEmp ON (EstIte.CodEmp = GerEmp.CodEmp)'
      'Where EstIte.CodClp = :CodClp'
      '     and EstIte.CodGru = :CodGru'
      '     and EstIte.CodSub = :CodSub'
      '     and EstIte.CodPro = :CodPro'
      'Order by EstIte.CodEmp')
    UpdateObject = UpIte
    ValidateWithMask = True
    Top = 600
    ParamData = <
      item
        DataType = ftString
        Name = 'CodClp'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CodGru'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CodSub'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CodPro'
        ParamType = ptInput
      end>
    object EstIteCODEMP: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Empresa'
      DisplayWidth = 4
      FieldName = 'CODEMP'
      Origin = 'ISADE.ESTITE.CODEMP'
    end
    object EstIteCSTITE: TFloatField
      DisplayLabel = 'Último Preço'
      DisplayWidth = 10
      FieldName = 'CSTITE'
      Origin = 'ISADE.ESTITE.CSTITE'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object EstIteVCHITE: TFloatField
      DisplayLabel = 'Custo Historico'
      DisplayWidth = 12
      FieldName = 'VCHITE'
      Origin = 'ISADE.ESTITE.VCHITE'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object EstIteVCRITE: TFloatField
      DisplayLabel = 'Custo Reposição'
      DisplayWidth = 13
      FieldName = 'VCRITE'
      Origin = 'ISADE.ESTITE.VCRITE'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object EstIteVCPITE: TFloatField
      DisplayLabel = 'Custo Ponderado'
      DisplayWidth = 13
      FieldName = 'VCPITE'
      Origin = 'ISADE.ESTITE.VCPITE'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object EstIteVB1ITE: TFloatField
      DisplayLabel = '     Unitário 1'
      DisplayWidth = 10
      FieldName = 'VB1ITE'
      Origin = 'ISADE.ESTITE.VB1ITE'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object EstIteVB2ITE: TFloatField
      DisplayLabel = '     Unitário 2'
      DisplayWidth = 10
      FieldName = 'VB2ITE'
      Origin = 'ISADE.ESTITE.VB2ITE'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object EstIteVB3ITE: TFloatField
      DisplayLabel = '     Unitário 3'
      DisplayWidth = 10
      FieldName = 'VB3ITE'
      Origin = 'ISADE.ESTITE.VB3ITE'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object EstIteVB4ITE: TFloatField
      DisplayLabel = '    Unitário 4'
      DisplayWidth = 10
      FieldName = 'VB4ITE'
      Origin = 'ISADE.ESTITE.VB4ITE'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object EstIteVB5ITE: TFloatField
      DisplayLabel = '    Unitário 5'
      DisplayWidth = 10
      FieldName = 'VB5ITE'
      Origin = 'ISADE.ESTITE.VB5ITE'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object EstIteCODCM1: TStringField
      DisplayWidth = 3
      FieldName = 'CODCM1'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object EstIteCODCM2: TStringField
      DisplayWidth = 3
      FieldName = 'CODCM2'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object EstIteCODCM3: TStringField
      DisplayWidth = 3
      FieldName = 'CODCM3'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object EstIteCODCM4: TStringField
      DisplayWidth = 3
      FieldName = 'CODCM4'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object EstIteCODCM5: TStringField
      DisplayWidth = 3
      FieldName = 'CODCM5'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object EstIteQTMITE: TFloatField
      DisplayWidth = 10
      FieldName = 'QTMITE'
      Origin = 'ISADE.ESTITE.QTMITE'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object EstIteQTDITE: TFloatField
      DisplayWidth = 10
      FieldName = 'QTDITE'
      Origin = 'ISADE.ESTITE.QTDITE'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object EstIteQTRITE: TFloatField
      DisplayWidth = 10
      FieldName = 'QTRITE'
      Origin = 'ISADE.ESTITE.QTRITE'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object EstIteQTAITE: TFloatField
      DisplayWidth = 10
      FieldName = 'QTAITE'
      Origin = 'ISADE.ESTITE.QTAITE'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object EstIteCODCLP: TStringField
      DisplayWidth = 1
      FieldName = 'CODCLP'
      Origin = 'ISADE.ESTITE.CODCLP'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object EstIteCODGRU: TStringField
      DisplayWidth = 3
      FieldName = 'CODGRU'
      Origin = 'ISADE.ESTITE.CODGRU'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object EstIteCODSUB: TStringField
      DisplayWidth = 4
      FieldName = 'CODSUB'
      Origin = 'ISADE.ESTITE.CODSUB'
      Visible = False
      FixedChar = True
      Size = 4
    end
    object EstIteCODPRO: TStringField
      DisplayWidth = 5
      FieldName = 'CODPRO'
      Origin = 'ISADE.ESTITE.CODPRO'
      Visible = False
      FixedChar = True
      Size = 5
    end
    object EstIteQTSITE: TFloatField
      FieldName = 'QTSITE'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object EstIteVREITE: TFloatField
      DisplayWidth = 10
      FieldName = 'VREITE'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object EstIteVPRITE: TFloatField
      DisplayWidth = 10
      FieldName = 'VPRITE'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object EstIteMK1ITE: TFloatField
      DisplayWidth = 10
      FieldName = 'MK1ITE'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstIteMK2ITE: TFloatField
      DisplayWidth = 10
      FieldName = 'MK2ITE'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstIteMK3ITE: TFloatField
      DisplayWidth = 10
      FieldName = 'MK3ITE'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstIteMK4ITE: TFloatField
      DisplayWidth = 10
      FieldName = 'MK4ITE'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstIteMK5ITE: TFloatField
      DisplayWidth = 10
      FieldName = 'MK5ITE'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstIteVP1ITE: TFloatField
      DisplayWidth = 10
      FieldName = 'VP1ITE'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object EstIteVP2ITE: TFloatField
      DisplayWidth = 10
      FieldName = 'VP2ITE'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object EstIteVP3ITE: TFloatField
      DisplayWidth = 10
      FieldName = 'VP3ITE'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object EstIteVP4ITE: TFloatField
      DisplayWidth = 10
      FieldName = 'VP4ITE'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object EstIteVP5ITE: TFloatField
      DisplayWidth = 10
      FieldName = 'VP5ITE'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object EstIteQMAITE: TFloatField
      DisplayWidth = 10
      FieldName = 'QMAITE'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object EstIteVMEITE: TFloatField
      DisplayWidth = 10
      FieldName = 'VMEITE'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object EstIteMS1ITE: TFloatField
      DisplayWidth = 10
      FieldName = 'MS1ITE'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstIteMS2ITE: TFloatField
      DisplayWidth = 10
      FieldName = 'MS2ITE'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstIteMS3ITE: TFloatField
      DisplayWidth = 10
      FieldName = 'MS3ITE'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstIteMS4ITE: TFloatField
      DisplayWidth = 10
      FieldName = 'MS4ITE'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstIteMS5ITE: TFloatField
      DisplayWidth = 10
      FieldName = 'MS5ITE'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstIteVREOUT: TFloatField
      DisplayWidth = 10
      FieldName = 'VREOUT'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object EstIteVCHOUT: TFloatField
      DisplayWidth = 10
      FieldName = 'VCHOUT'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object EstIteCSTOUT: TFloatField
      DisplayWidth = 10
      FieldName = 'CSTOUT'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object EstIteVPFITE: TFloatField
      DisplayWidth = 10
      FieldName = 'VPFITE'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object EstIteDULCMP: TDateTimeField
      DisplayWidth = 10
      FieldName = 'DULCMP'
      Visible = False
      EditMask = '!99/99/9999;1;_'
    end
    object EstIteQTDCMP: TFloatField
      FieldName = 'QTDCMP'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object EstIteDS1ITE: TFloatField
      DisplayWidth = 10
      FieldName = 'DS1ITE'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstIteDS2ITE: TFloatField
      DisplayWidth = 10
      FieldName = 'DS2ITE'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstIteDS3ITE: TFloatField
      DisplayWidth = 10
      FieldName = 'DS3ITE'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstIteDS4ITE: TFloatField
      DisplayWidth = 10
      FieldName = 'DS4ITE'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstIteDS5ITE: TFloatField
      DisplayWidth = 10
      FieldName = 'DS5ITE'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstIteQTDRMA: TFloatField
      DisplayWidth = 10
      FieldName = 'QTDRMA'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object EstIteVPFOUT: TFloatField
      DisplayWidth = 10
      FieldName = 'VPFOUT'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object EstIteDULIMP: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DULIMP'
      Visible = False
    end
    object EstIteQTDIMP: TFloatField
      DisplayWidth = 10
      FieldName = 'QTDIMP'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
  end
  object DsIte: TwwDataSource
    DataSet = EstIte
    OnDataChange = DsIteDataChange
    Left = 28
    Top = 600
  end
  object EstQte: TwwQuery
    CachedUpdates = True
    BeforeEdit = EstQteBeforeEdit
    AfterPost = EstQteAfterCancel
    AfterCancel = EstQteAfterCancel
    OnNewRecord = EstQteNewRecord
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select EstQte.CodEmp,'
      '           EstQte.CodClp,'
      '           EstQte.CodGru,'
      '           EstQte.CodSub,'
      '           EstQte.CodPro,'
      '           EstQte.CodTam,'
      '           EstQte.CodCor,'
      '           EstCor.NomCor,'
      '           EstQte.QtaQte,'
      '           EstQte.QtmQte,'
      '           EstQte.QmaQte,'
      '           EstQte.QtdQte,'
      '           EstQte.QtrQte,'
      '           EstQte.QtdRma,'
      '           EstQte.CbaQte,'
      
        '           Round(EstQte.QtdQte-EstQte.QtrQte-EstQte.QtdRma,4) as' +
        ' QtsQte'
      'From EstQte LEFT JOIN EstCor ON (EstQte.CodCor = EstCor.CodCor)'
      'Where EstQte.CodEmp = :CodEmp'
      '     and EstQte.CodClp = :CodClp'
      '     and EstQte.CodGru = :CodGru'
      '     and EstQte.CodSub = :CodSub'
      '     and EstQte.CodPro = :CodPro'
      '     and EstQte.CodTam = :CodTam'
      'Order by EstQte.CodCor')
    UpdateObject = UpQte
    ValidateWithMask = True
    Top = 656
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodEmp'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CodClp'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CodGru'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CodSub'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CodPro'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CodTam'
        ParamType = ptInput
      end>
    object EstQteCODCOR: TStringField
      DisplayLabel = 'Cor'
      DisplayWidth = 10
      FieldName = 'CODCOR'
      FixedChar = True
      Size = 10
    end
    object EstQteNOMCOR: TStringField
      DisplayLabel = 'Descrição'
      DisplayWidth = 20
      FieldName = 'NOMCOR'
      FixedChar = True
      Size = 40
    end
    object EstQteQTAQTE: TFloatField
      DisplayLabel = '         Adquirido'
      DisplayWidth = 10
      FieldName = 'QTAQTE'
      Origin = 'ISADE.ESTQTE.QTAQTE'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object EstQteQTDQTE: TFloatField
      DisplayLabel = '                      Atual'
      DisplayWidth = 10
      FieldName = 'QTDQTE'
      Origin = 'ISADE.ESTQTE.QTDQTE'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object EstQteQTRQTE: TFloatField
      DisplayLabel = '            Reservado'
      DisplayWidth = 10
      FieldName = 'QTRQTE'
      Origin = 'ISADE.ESTQTE.QTRQTE'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object EstQteQTDRMA: TFloatField
      DisplayLabel = '               RMA'
      DisplayWidth = 10
      FieldName = 'QTDRMA'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object EstQteQTSQTE: TFloatField
      DisplayLabel = '                 Disponivel'
      DisplayWidth = 10
      FieldName = 'QTSQTE'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object EstQteQTMQTE: TFloatField
      DisplayLabel = '       Mínimo'
      DisplayWidth = 10
      FieldName = 'QTMQTE'
      Origin = 'ISADE.ESTQTE.QTMQTE'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object EstQteQMAQTE: TFloatField
      DisplayLabel = '      Máximo'
      DisplayWidth = 10
      FieldName = 'QMAQTE'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object EstQteCODEMP: TIntegerField
      DisplayWidth = 9
      FieldName = 'CODEMP'
      Origin = 'ISADE.ESTQTE.CODEMP'
      Visible = False
    end
    object EstQteCODCLP: TStringField
      DisplayWidth = 1
      FieldName = 'CODCLP'
      Origin = 'ISADE.ESTQTE.CODCLP'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object EstQteCODGRU: TStringField
      DisplayWidth = 3
      FieldName = 'CODGRU'
      Origin = 'ISADE.ESTQTE.CODGRU'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object EstQteCODSUB: TStringField
      DisplayWidth = 4
      FieldName = 'CODSUB'
      Origin = 'ISADE.ESTQTE.CODSUB'
      Visible = False
      FixedChar = True
      Size = 4
    end
    object EstQteCODPRO: TStringField
      DisplayWidth = 5
      FieldName = 'CODPRO'
      Origin = 'ISADE.ESTQTE.CODPRO'
      Visible = False
      FixedChar = True
      Size = 5
    end
    object EstQteCODTAM: TStringField
      FieldName = 'CODTAM'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object EstQteCBAQTE: TStringField
      FieldName = 'CBAQTE'
      Visible = False
      FixedChar = True
    end
  end
  object DsQte: TwwDataSource
    DataSet = EstQte
    OnDataChange = DsQteDataChange
    Left = 28
    Top = 656
  end
  object UpIte: TUpdateSQL
    ModifySQL.Strings = (
      'update EstIte'
      'set'
      '  VCRITE = :VCRITE,'
      '  VB1ITE = :VB1ITE,'
      '  VB2ITE = :VB2ITE,'
      '  VB3ITE = :VB3ITE,'
      '  VB4ITE = :VB4ITE,'
      '  VB5ITE = :VB5ITE,'
      '  MS1ITE = :MS1ITE,'
      '  MS2ITE = :MS2ITE,'
      '  MS3ITE = :MS3ITE,'
      '  MS4ITE = :MS4ITE,'
      '  MS5ITE = :MS5ITE,'
      '  DS1ITE = :DS1ITE,'
      '  DS2ITE = :DS2ITE,'
      '  DS3ITE = :DS3ITE,'
      '  DS4ITE = :DS4ITE,'
      '  DS5ITE = :DS5ITE,'
      '  MK1ITE = :MK1ITE,'
      '  MK2ITE = :MK2ITE,'
      '  MK3ITE = :MK3ITE,'
      '  MK4ITE = :MK4ITE,'
      '  MK5ITE = :MK5ITE,'
      '  CODCM1 = :CODCM1,'
      '  CODCM2 = :CODCM2,'
      '  CODCM3 = :CODCM3,'
      '  CODCM4 = :CODCM4,'
      '  CODCM5 = :CODCM5'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  CODCLP = :OLD_CODCLP and'
      '  CODGRU = :OLD_CODGRU and'
      '  CODSUB = :OLD_CODSUB and'
      '  CODPRO = :OLD_CODPRO')
    InsertSQL.Strings = (
      'insert into EstIte'
      
        '(CODEMP, CODCLP, CODGRU, CODSUB, CODPRO, CSTITE, VCHITE, VCPITE,' +
        ' '
      'VREITE, VPRITE, VPFITE, VCRITE, VMEITE, DULCMP, QTDCMP, VREOUT, '
      'VCHOUT, CSTOUT, VPFOUT, DULIMP, QTDIMP, VB1ITE, VB2ITE, VB3ITE, '
      
        'VB4ITE, VB5ITE, MS1ITE, MS2ITE, MS3ITE, MS4ITE, MS5ITE, DS1ITE, ' +
        'DS2ITE, '
      
        'DS3ITE, DS4ITE, DS5ITE, MK1ITE, MK2ITE, MK3ITE, MK4ITE, MK5ITE, ' +
        'VP1ITE, '
      'VP2ITE, VP3ITE, VP4ITE, VP5ITE, CODCM1, CODCM2, CODCM3, CODCM4, '
      'CODCM5, QMAITE, QTMITE, QTDITE, QTRITE, QTAITE, QTDRMA)'
      'values'
      '(:CODEMP, :CODCLP, :CODGRU, :CODSUB, :CODPRO, :CSTITE, :VCHITE, '
      
        ':VCPITE, :VREITE, :VPRITE, :VPFITE, :VCRITE, :VMEITE, :DULCMP, :' +
        'QTDCMP, '
      
        ':VREOUT, :VCHOUT, :CSTOUT, :VPFOUT, :DULIMP, :QTDIMP, :VB1ITE, :' +
        'VB2ITE, '
      
        ':VB3ITE, :VB4ITE, :VB5ITE, :MS1ITE, :MS2ITE, :MS3ITE, :MS4ITE, :' +
        'MS5ITE, '
      
        ':DS1ITE, :DS2ITE, :DS3ITE, :DS4ITE, :DS5ITE, :MK1ITE, :MK2ITE, :' +
        'MK3ITE, '
      
        ':MK4ITE, :MK5ITE, :VP1ITE, :VP2ITE, :VP3ITE, :VP4ITE, :VP5ITE, :' +
        'CODCM1, '
      
        ':CODCM2, :CODCM3, :CODCM4, :CODCM5, :QMAITE, :QTMITE, :QTDITE, :' +
        'QTRITE, '
      ':QTAITE, :QTDRMA)')
    DeleteSQL.Strings = (
      'delete from EstIte'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  CODCLP = :OLD_CODCLP and'
      '  CODGRU = :OLD_CODGRU and'
      '  CODSUB = :OLD_CODSUB and'
      '  CODPRO = :OLD_CODPRO')
    Left = 28
    Top = 684
  end
  object UpQte: TUpdateSQL
    ModifySQL.Strings = (
      'update EstQte'
      'set'
      '  QTMQTE = :QTMQTE,'
      '  QMAQTE = :QMAQTE,'
      '  CBAQTE = :CBAQTE'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  CODCLP = :OLD_CODCLP and'
      '  CODGRU = :OLD_CODGRU and'
      '  CODSUB = :OLD_CODSUB and'
      '  CODPRO = :OLD_CODPRO and'
      '  CODTAM = :OLD_CODTAM and'
      '  CODCOR = :OLD_CODCOR')
    InsertSQL.Strings = (
      'insert into EstQte'
      '(CODEMP, CODCLP, CODGRU, CODSUB, CODPRO, CODTAM, CODCOR,  '
      'QTAQTE, QTMQTE, QMAQTE, QTDQTE, QTRQTE, QTDRMA, CBAQTE)'
      'values'
      
        '(:CODEMP, :CODCLP, :CODGRU, :CODSUB, :CODPRO, :CODTAM, :CODCOR, ' +
        '   '
      ':QTAQTE, :QTMQTE, :QMAQTE, :QTDQTE, :QTRQTE, :QTDRMA, :CBAQTE)')
    DeleteSQL.Strings = (
      'delete from EstQte'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  CODCLP = :OLD_CODCLP and'
      '  CODGRU = :OLD_CODGRU and'
      '  CODSUB = :OLD_CODSUB and'
      '  CODPRO = :OLD_CODPRO and'
      '  CODTAM = :OLD_CODTAM and'
      '  CODCOR = :OLD_CODCOR')
    Left = 28
    Top = 712
  end
  object GerEmp: TwwQuery
    Tag = 1
    DatabaseName = 'ISade'
    SQL.Strings = (
      
        'Select CodEmp,NomEmp,FlgFil From GerEmp Where GerEmp.CodEmp = :C' +
        'odEmp')
    ValidateWithMask = True
    Left = 433
    Top = 628
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodEmp'
        ParamType = ptInput
      end>
    object GerEmpCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = 'ISADE.GEREMP.CODEMP'
    end
    object GerEmpNOMEMP: TStringField
      FieldName = 'NOMEMP'
      Origin = 'ISADE.GEREMP.NOMEMP'
      FixedChar = True
      Size = 40
    end
    object GerEmpFLGFIL: TStringField
      FieldName = 'FLGFIL'
      FixedChar = True
      Size = 3
    end
  end
  object EstTam: TwwQuery
    CachedUpdates = True
    BeforeEdit = EstTamBeforeEdit
    AfterPost = EstTamAfterCancel
    AfterCancel = EstTamAfterCancel
    OnNewRecord = EstTamNewRecord
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select EstTam.CodEmp,'
      '           EstTam.CodClp,'
      '           EstTam.CodGru,'
      '           EstTam.CodSub,'
      '           EstTam.CodPro,'
      '           EstTam.CodTam'
      'From EstTam'
      'Where EstTam.CodEmp = :CodEmp'
      '     and EstTam.CodClp = :CodClp'
      '     and EstTam.CodGru = :CodGru'
      '     and EstTam.CodSub = :CodSub'
      '     and EstTam.CodPro = :CodPro'
      'Order by EstTam.CodTam')
    UpdateObject = UpTam
    ValidateWithMask = True
    Top = 628
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodEmp'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CodClp'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CodGru'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CodSub'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CodPro'
        ParamType = ptInput
      end>
    object EstTamCODTAM: TStringField
      DisplayLabel = 'Tamanhos             '
      DisplayWidth = 15
      FieldName = 'CODTAM'
      FixedChar = True
      Size = 10
    end
    object EstTamCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = 'ISADE.ESTTAM.CODEMP'
      Visible = False
    end
    object EstTamCODCLP: TStringField
      FieldName = 'CODCLP'
      Origin = 'ISADE.ESTTAM.CODCLP'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object EstTamCODGRU: TStringField
      FieldName = 'CODGRU'
      Origin = 'ISADE.ESTTAM.CODGRU'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object EstTamCODSUB: TStringField
      FieldName = 'CODSUB'
      Origin = 'ISADE.ESTTAM.CODSUB'
      Visible = False
      FixedChar = True
      Size = 4
    end
    object EstTamCODPRO: TStringField
      FieldName = 'CODPRO'
      Origin = 'ISADE.ESTTAM.CODPRO'
      Visible = False
      FixedChar = True
      Size = 5
    end
  end
  object DsTam: TwwDataSource
    DataSet = EstTam
    OnDataChange = DsTamDataChange
    Left = 28
    Top = 628
  end
  object UpTam: TUpdateSQL
    ModifySQL.Strings = (
      'update EstTam'
      'set'
      '  CODEMP = :CODEMP,'
      '  CODCLP = :CODCLP,'
      '  CODGRU = :CODGRU,'
      '  CODSUB = :CODSUB,'
      '  CODPRO = :CODPRO,'
      '  CODTAM = :CODTAM'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  CODCLP = :OLD_CODCLP and'
      '  CODGRU = :OLD_CODGRU and'
      '  CODSUB = :OLD_CODSUB and'
      '  CODPRO = :OLD_CODPRO and'
      '  CODTAM = :OLD_CODTAM')
    InsertSQL.Strings = (
      'insert into EstTam'
      '(CODEMP, CODCLP, CODGRU, CODSUB, CODPRO, CODTAM)'
      'values'
      '(:CODEMP, :CODCLP, :CODGRU, :CODSUB, :CODPRO, :CODTAM)')
    DeleteSQL.Strings = (
      'delete from EstTam'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  CODCLP = :OLD_CODCLP and'
      '  CODGRU = :OLD_CODGRU and'
      '  CODSUB = :OLD_CODSUB and'
      '  CODPRO = :OLD_CODPRO and'
      '  CODTAM = :OLD_CODTAM')
    Top = 712
  end
  object EstCor: TwwQuery
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * From EstCor Where EstCor.CodCor = :CodCor')
    ValidateWithMask = True
    Left = 433
    Top = 684
    ParamData = <
      item
        DataType = ftString
        Name = 'CodCor'
        ParamType = ptInput
      end>
    object EstCorCODCOR: TStringField
      FieldName = 'CODCOR'
      Origin = 'ISADE.ESTCOR.CODCOR'
      FixedChar = True
      Size = 10
    end
    object EstCorNOMCOR: TStringField
      FieldName = 'NOMCOR'
      Origin = 'ISADE.ESTCOR.NOMCOR'
      FixedChar = True
      Size = 40
    end
  end
  object quSql: TwwQuery
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 196
    Top = 628
  end
  object plOcoCr1: TppDBPipeline
    DataSource = DsSql
    UserName = 'plOcoCr1'
    Left = 196
    Top = 600
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = plOcoCr1
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
    Template.FileName = 'C:\_WGSYS\Emerion\Estoque\Relatorios\RManPro.rtm'
    Units = utMillimeters
    UserName = 'Report'
    CachePages = True
    DeviceType = 'Screen'
    Left = 224
    Top = 600
    Version = '5.0'
    mmColumnWidth = 0
    object hbReport: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 6879
      mmPrintPosition = 0
      object ppLabel22: TppLabel
        UserName = 'QrTitulo1'
        Caption = 'Itens'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 794
        mmTop = 1323
        mmWidth = 9384
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
        mmHeight = 3440
        mmLeft = 197380
        mmTop = 1323
        mmWidth = 21431
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtDateTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 219605
        mmTop = 1323
        mmWidth = 30427
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label7'
        Caption = 'Página No.   '
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 250825
        mmTop = 1323
        mmWidth = 16140
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 267759
        mmTop = 1323
        mmWidth = 1588
        BandType = 0
      end
    end
    object dbReport: TppDetailBand
      BeforePrint = dbReportBeforePrint
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppCodPro: TppLabel
        UserName = 'CodPro'
        Caption = 'XXXXX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 265
        mmTop = 794
        mmWidth = 8114
        BandType = 4
      end
      object ppDscPro: TppLabel
        UserName = 'DscPro'
        Caption = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 11642
        mmTop = 794
        mmWidth = 64911
        BandType = 4
      end
      object ppRefPro: TppLabel
        UserName = 'DscPro1'
        Caption = 'XXXXXXXXXXXXXXX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 97102
        mmTop = 794
        mmWidth = 24342
        BandType = 4
      end
      object ppSimPro: TppLabel
        UserName = 'Label11'
        Caption = 'XXXXXXX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 129646
        mmTop = 794
        mmWidth = 11359
        BandType = 4
      end
      object ppLocPro: TppLabel
        UserName = 'Label12'
        Caption = 'XXXXXXXXXXXXXXX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 145257
        mmTop = 794
        mmWidth = 24342
        BandType = 4
      end
      object ppCatPro: TppLabel
        UserName = 'Label13'
        Caption = 'XXXXXXXXXXXXXXX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 177800
        mmTop = 794
        mmWidth = 24342
        BandType = 4
      end
      object ppCodUne: TppLabel
        UserName = 'Label14'
        Caption = 'XXX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 216959
        mmTop = 794
        mmWidth = 4868
        BandType = 4
      end
      object ppQtePro: TppLabel
        UserName = 'Label15'
        Caption = 'XXX,XXX.XXXX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 224103
        mmTop = 794
        mmWidth = 17921
        BandType = 4
      end
      object ppCodUns: TppLabel
        UserName = 'Label16'
        Caption = 'XXX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 251884
        mmTop = 794
        mmWidth = 4868
        BandType = 4
      end
      object ppQtsPro: TppLabel
        UserName = 'Label17'
        Caption = 'XXX,XXX.XXXX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 259028
        mmTop = 794
        mmWidth = 17921
        BandType = 4
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'CODCLP'
      DataPipeline = plOcoCr1
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      object ppGroupHeaderBand1: TppGroupHeaderBand
        BeforePrint = ppGroupHeaderBand1BeforePrint
        mmBottomOffset = 0
        mmHeight = 7673
        mmPrintPosition = 0
        object ppLabel3: TppLabel
          UserName = 'Label3'
          Caption = 'Classificação:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3387
          mmLeft = 265
          mmTop = 1852
          mmWidth = 16581
          BandType = 3
          GroupNo = 0
        end
        object ppCodClp: TppLabel
          UserName = 'CodClp'
          Caption = 'XXXXXXX'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3387
          mmLeft = 30692
          mmTop = 1852
          mmWidth = 11359
          BandType = 3
          GroupNo = 0
        end
        object ppNomClp: TppLabel
          UserName = 'NomClp'
          Caption = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3387
          mmLeft = 46302
          mmTop = 1852
          mmWidth = 64911
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'CODSUB'
      DataPipeline = plOcoCr1
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      object ppGroupHeaderBand2: TppGroupHeaderBand
        BeforePrint = ppGroupHeaderBand2BeforePrint
        mmBottomOffset = 0
        mmHeight = 29104
        mmPrintPosition = 0
        object ppLabel1: TppLabel
          UserName = 'Label1'
          Caption = 'Grupo        :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3387
          mmLeft = 265
          mmTop = 1588
          mmWidth = 15875
          BandType = 3
          GroupNo = 1
        end
        object ppCodGru: TppLabel
          UserName = 'CodGru'
          Caption = 'XXXXXXX'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3387
          mmLeft = 30692
          mmTop = 1588
          mmWidth = 11359
          BandType = 3
          GroupNo = 1
        end
        object ppNomGru: TppLabel
          UserName = 'CodGru1'
          Caption = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3387
          mmLeft = 46302
          mmTop = 1588
          mmWidth = 64911
          BandType = 3
          GroupNo = 1
        end
        object ppLabel2: TppLabel
          UserName = 'Label2'
          Caption = 'Sub-Grupo    :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3387
          mmLeft = 265
          mmTop = 6085
          mmWidth = 17921
          BandType = 3
          GroupNo = 1
        end
        object ppCodSub: TppLabel
          UserName = 'CodGru2'
          Caption = 'XXXXXXX'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3387
          mmLeft = 30692
          mmTop = 6085
          mmWidth = 11359
          BandType = 3
          GroupNo = 1
        end
        object ppNomSub: TppLabel
          UserName = 'NomSub'
          Caption = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3387
          mmLeft = 46302
          mmTop = 6085
          mmWidth = 64911
          BandType = 3
          GroupNo = 1
        end
        object ppLabel4: TppLabel
          UserName = 'Label4'
          Caption = 'Item'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3387
          mmLeft = 265
          mmTop = 23548
          mmWidth = 6914
          BandType = 3
          GroupNo = 1
        end
        object ppLabel5: TppLabel
          UserName = 'Label5'
          Caption = 'Descrição Completa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3387
          mmLeft = 11642
          mmTop = 23548
          mmWidth = 28152
          BandType = 3
          GroupNo = 1
        end
        object ppLabel7: TppLabel
          UserName = 'Label18'
          Caption = 'Referência'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 97102
          mmTop = 23548
          mmWidth = 15346
          BandType = 3
          GroupNo = 1
        end
        object ppLabel9: TppLabel
          UserName = 'Label19'
          Caption = 'Similar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3387
          mmLeft = 129646
          mmTop = 23548
          mmWidth = 9878
          BandType = 3
          GroupNo = 1
        end
        object ppLabel10: TppLabel
          UserName = 'Label101'
          Caption = 'Localização'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3387
          mmLeft = 145257
          mmTop = 23548
          mmWidth = 16369
          BandType = 3
          GroupNo = 1
        end
        object ppLabel11: TppLabel
          UserName = 'Label20'
          Caption = 'Categoria'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3387
          mmLeft = 177800
          mmTop = 23548
          mmWidth = 13758
          BandType = 3
          GroupNo = 1
        end
        object ppLabel12: TppLabel
          UserName = 'Label201'
          Caption = '----------- Relação -----------'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3387
          mmLeft = 217488
          mmTop = 11377
          mmWidth = 39300
          BandType = 3
          GroupNo = 1
        end
        object ppLabel13: TppLabel
          UserName = 'Label202'
          Caption = 'Entrada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3387
          mmLeft = 216959
          mmTop = 18256
          mmWidth = 11148
          BandType = 3
          GroupNo = 1
        end
        object ppLabel14: TppLabel
          UserName = 'Label21'
          Caption = 'Saida'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3387
          mmLeft = 251884
          mmTop = 18256
          mmWidth = 7761
          BandType = 3
          GroupNo = 1
        end
        object ppLabel15: TppLabel
          UserName = 'Label22'
          Caption = 'UN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3387
          mmLeft = 216959
          mmTop = 23548
          mmWidth = 4304
          BandType = 3
          GroupNo = 1
        end
        object ppLabel16: TppLabel
          UserName = 'Label23'
          Caption = 'Qtde.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3387
          mmLeft = 221986
          mmTop = 23548
          mmWidth = 7761
          BandType = 3
          GroupNo = 1
        end
        object ppLabel17: TppLabel
          UserName = 'Label24'
          Caption = 'UN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3387
          mmLeft = 251884
          mmTop = 23548
          mmWidth = 4304
          BandType = 3
          GroupNo = 1
        end
        object ppLabel18: TppLabel
          UserName = 'Label25'
          Caption = 'Qtde.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3387
          mmLeft = 256911
          mmTop = 23548
          mmWidth = 7761
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
  end
  object OpenPicture: TOpenPictureDialog
    Filter = 'All (*.jpg;*.jpeg;*.gif)|*.jpg;*.jpeg;*.gif'
    Left = 224
    Top = 628
  end
  object quSql1: TwwQuery
    DatabaseName = 'ISade'
    SQL.Strings = (
      
        'Select CodClp,NomClp,CodGru,NomGru,CodSub,NomSub,CodPro,DscPro,R' +
        'efPro,'
      '           SimPro,LocPro,CatPro,CodUne,CodUns,QtePro,QtsPro'
      'From EstPro LEFT JOIN EstClp ON (EstPro.CodClp = EstClp.CodClp)'
      
        '                    LEFT JOIN EstSub ON (EstPro.CodGru = EstSub.' +
        'CodGru)'
      
        '                                                AND (EstPro.CodS' +
        'ub = EstSub.CodSub)'
      
        '                    LEFT JOIN EstGru ON (EstSub.CodGru = EstGru.' +
        'CodGru)    '
      'Where EstPro.CodClp = :CodClp')
    UniDirectional = True
    ValidateWithMask = True
    Left = 196
    Top = 656
    ParamData = <
      item
        DataType = ftString
        Name = 'CodClp'
        ParamType = ptInput
      end>
    object quSql1CODCLP: TStringField
      FieldName = 'CODCLP'
      FixedChar = True
      Size = 1
    end
    object quSql1CODGRU: TStringField
      FieldName = 'CODGRU'
      FixedChar = True
      Size = 3
    end
    object quSql1NOMGRU: TStringField
      FieldName = 'NOMGRU'
      FixedChar = True
      Size = 40
    end
    object quSql1CODSUB: TStringField
      FieldName = 'CODSUB'
      FixedChar = True
      Size = 4
    end
    object quSql1NOMSUB: TStringField
      FieldName = 'NOMSUB'
      FixedChar = True
      Size = 40
    end
    object quSql1CODPRO: TStringField
      FieldName = 'CODPRO'
      FixedChar = True
      Size = 5
    end
    object quSql1DSCPRO: TStringField
      FieldName = 'DSCPRO'
      FixedChar = True
      Size = 50
    end
    object quSql1REFPRO: TStringField
      FieldName = 'REFPRO'
      FixedChar = True
    end
    object quSql1SIMPRO: TStringField
      FieldName = 'SIMPRO'
      FixedChar = True
      Size = 4
    end
    object quSql1LOCPRO: TStringField
      FieldName = 'LOCPRO'
      FixedChar = True
    end
    object quSql1CATPRO: TStringField
      FieldName = 'CATPRO'
      FixedChar = True
    end
    object quSql1CODUNE: TStringField
      FieldName = 'CODUNE'
      FixedChar = True
      Size = 3
    end
    object quSql1CODUNS: TStringField
      FieldName = 'CODUNS'
      FixedChar = True
      Size = 3
    end
    object quSql1NOMCLP: TStringField
      FieldName = 'NOMCLP'
      FixedChar = True
      Size = 40
    end
    object quSql1QTEPRO: TFloatField
      FieldName = 'QTEPRO'
    end
    object quSql1QTSPRO: TFloatField
      FieldName = 'QTSPRO'
    end
  end
  object DsSql: TwwDataSource
    DataSet = quSql1
    OnDataChange = DsProDataChange
    Left = 224
    Top = 656
  end
  object EstPar: TwwQuery
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select EstPar.TamCor,'
      '           EstPar.FlgTam,'
      '           EstPar.LanCba,'
      '           EstPar.LanMin,'
      '           EstPar.FlgAnt,'
      '           EstPar.FlgTab,'
      '           EstPar.AtuMsu,'
      '           EstPar.AtuVcr,'
      '           EstPar.IniEan,'
      '           EstPar.TipEan'
      'From EstPar')
    ValidateWithMask = True
    Left = 133
    Top = 684
    object EstParTAMCOR: TStringField
      FieldName = 'TAMCOR'
      FixedChar = True
      Size = 3
    end
    object EstParFLGTAM: TStringField
      FieldName = 'FLGTAM'
      FixedChar = True
      Size = 3
    end
    object EstParLANCBA: TStringField
      FieldName = 'LANCBA'
      FixedChar = True
      Size = 3
    end
    object EstParLANMIN: TStringField
      FieldName = 'LANMIN'
      FixedChar = True
      Size = 3
    end
    object EstParFLGANT: TStringField
      FieldName = 'FLGANT'
      FixedChar = True
      Size = 3
    end
    object EstParFLGTAB: TStringField
      FieldName = 'FLGTAB'
      FixedChar = True
      Size = 25
    end
    object EstParATUMSU: TStringField
      FieldName = 'ATUMSU'
      FixedChar = True
      Size = 3
    end
    object EstParINIEAN: TStringField
      FieldName = 'INIEAN'
      FixedChar = True
      Size = 7
    end
    object EstParTIPEAN: TStringField
      FieldName = 'TIPEAN'
      FixedChar = True
      Size = 5
    end
    object EstParATUVCR: TStringField
      FieldName = 'ATUVCR'
      FixedChar = True
      Size = 3
    end
  end
  object IcmEnt: TwwQuery
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select CodIcm,NomIcm,PerIcm From EstIcm '
      'Where EstIcm.CodIcm = :CodIcm'
      '     and EstIcm.TipIcm = :TipIcm')
    ValidateWithMask = True
    Left = 133
    Top = 600
    ParamData = <
      item
        DataType = ftString
        Name = 'CodIcm'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TipIcm'
        ParamType = ptInput
      end>
    object IcmEntNOMICM: TStringField
      DisplayLabel = 'Descrição'
      DisplayWidth = 50
      FieldName = 'NOMICM'
      Origin = 'ISADE.ESTICM.NOMICM'
      FixedChar = True
      Size = 100
    end
    object IcmEntPERICM: TFloatField
      DisplayLabel = 'Aliquota'
      DisplayWidth = 5
      FieldName = 'PERICM'
      Origin = 'ISADE.ESTICM.PERICM'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object IcmEntCODICM: TStringField
      FieldName = 'CODICM'
      Origin = 'ISADE.ESTICM.CODICM'
      FixedChar = True
    end
  end
  object IcmSai: TwwQuery
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select CodIcm,NomIcm,PerIcm From EstIcm '
      'Where EstIcm.CodIcm = :CodIcm'
      '     and EstIcm.TipIcm = :TipIcm')
    ValidateWithMask = True
    Left = 133
    Top = 572
    ParamData = <
      item
        DataType = ftString
        Name = 'CodIcm'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TipIcm'
        ParamType = ptInput
      end>
    object StringField2: TStringField
      DisplayLabel = 'Descrição'
      DisplayWidth = 50
      FieldName = 'NOMICM'
      Origin = 'ISADE.ESTICM.NOMICM'
      FixedChar = True
      Size = 100
    end
    object IcmSaiCODICM: TStringField
      FieldName = 'CODICM'
      Origin = 'ISADE.ESTICM.CODICM'
      FixedChar = True
    end
    object IcmSaiPERICM: TFloatField
      FieldName = 'PERICM'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
  end
  object IpiEnt: TwwQuery
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select CodIpi,NomIpi,PerIpi,ClsIpi From EstIpi'
      'Where EstIpi.CodIpi = :CodIpi'
      '     and EstIpi.TipIpi = :TipIpi'
      'Order by EstIpi.ClsIpi')
    ValidateWithMask = True
    Left = 133
    Top = 628
    ParamData = <
      item
        DataType = ftString
        Name = 'CodIpi'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TipIpi'
        ParamType = ptInput
      end>
    object IpiEntNOMIPI: TStringField
      DisplayLabel = 'Descrição'
      DisplayWidth = 50
      FieldName = 'NOMIPI'
      Origin = 'ISADE.ESTIPI.NOMIPI'
      FixedChar = True
      Size = 100
    end
    object IpiEntPERIPI: TFloatField
      DisplayLabel = 'Aliquota'
      DisplayWidth = 5
      FieldName = 'PERIPI'
      Origin = 'ISADE.ESTIPI.PERIPI'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object IpiEntCLSIPI: TStringField
      FieldName = 'CLSIPI'
      Origin = 'ISADE.ESTIPI.CLSIPI'
      FixedChar = True
      Size = 30
    end
    object IpiEntCODIPI: TStringField
      FieldName = 'CODIPI'
      Origin = 'ISADE.ESTIPI.CODIPI'
      FixedChar = True
      Size = 30
    end
  end
  object IpiSai: TwwQuery
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select CodIpi,NomIpi,PerIpi,ClsIpi From EstIpi'
      'Where EstIpi.CodIpi = :CodIpi'
      '     and EstIpi.TipIpi = :TipIpi')
    ValidateWithMask = True
    Left = 133
    Top = 656
    ParamData = <
      item
        DataType = ftString
        Name = 'CodIpi'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TipIpi'
        ParamType = ptInput
      end>
    object StringField4: TStringField
      DisplayLabel = 'Descrição'
      DisplayWidth = 50
      FieldName = 'NOMIPI'
      Origin = 'ISADE.ESTIPI.NOMIPI'
      FixedChar = True
      Size = 100
    end
    object FloatField2: TFloatField
      DisplayLabel = 'Aliquota'
      DisplayWidth = 5
      FieldName = 'PERIPI'
      Origin = 'ISADE.ESTIPI.PERIPI'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object IpiSaiCLSIPI: TStringField
      FieldName = 'CLSIPI'
      Origin = 'ISADE.ESTIPI.CLSIPI'
      FixedChar = True
      Size = 30
    end
    object IpiSaiCODIPI: TStringField
      FieldName = 'CODIPI'
      Origin = 'ISADE.ESTIPI.CODIPI'
      FixedChar = True
      Size = 30
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 196
    Top = 572
    object Limpar1: TMenuItem
      Caption = 'Excluir ...'
      OnClick = Limpar1Click
    end
    object mmSelImg: TMenuItem
      Caption = 'Selecionar Imagem...'
      Hint = 'Selecionar Imagem do Item'
      OnClick = mmSelImgClick
    end
  end
  object DsClp: TwwDataSource
    DataSet = EstClp
    OnDataChange = DsProDataChange
    Left = 93
    Top = 572
  end
  object DsGru: TwwDataSource
    DataSet = EstGru
    OnDataChange = DsProDataChange
    Left = 93
    Top = 600
  end
  object DsSub: TwwDataSource
    DataSet = EstSub
    OnDataChange = DsProDataChange
    Left = 93
    Top = 628
  end
  object DsUns: TwwDataSource
    DataSet = EstUns
    OnDataChange = DsProDataChange
    Left = 461
    Top = 572
  end
  object DsTip: TwwDataSource
    DataSet = EstTip
    OnDataChange = DsProDataChange
    Left = 93
    Top = 684
  end
  object DsCom: TwwDataSource
    DataSet = FinCom
    OnDataChange = DsProDataChange
    Left = 224
    Top = 684
  end
  object DsIcmSai: TwwDataSource
    DataSet = IcmSai
    OnDataChange = DsProDataChange
    Left = 161
    Top = 572
  end
  object DsIpiEnt: TwwDataSource
    DataSet = IpiEnt
    OnDataChange = DsProDataChange
    Left = 161
    Top = 628
  end
  object DsIcmEnt: TwwDataSource
    DataSet = IcmEnt
    OnDataChange = DsProDataChange
    Left = 161
    Top = 600
  end
  object DsIpiSai: TwwDataSource
    DataSet = IpiSai
    OnDataChange = DsProDataChange
    Left = 161
    Top = 656
  end
  object DsUsu: TwwDataSource
    DataSet = GerUsu
    OnDataChange = DsProDataChange
    Left = 461
    Top = 656
  end
  object DsEmp: TwwDataSource
    DataSet = GerEmp
    OnDataChange = DsProDataChange
    Left = 461
    Top = 628
  end
  object DsCor: TwwDataSource
    DataSet = EstCor
    OnDataChange = DsProDataChange
    Left = 461
    Top = 684
  end
  object EstMrc: TwwQuery
    Tag = 1
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * From EstMrc Where EstMrc.CodMrc = :CodMrc')
    ValidateWithMask = True
    Left = 65
    Top = 712
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodMrc'
        ParamType = ptInput
      end>
    object EstMrcCODMRC: TIntegerField
      FieldName = 'CODMRC'
      Origin = 'ISADE.ESTMRC.CODMRC'
    end
    object EstMrcNOMMRC: TStringField
      FieldName = 'NOMMRC'
      Origin = 'ISADE.ESTMRC.NOMMRC'
      FixedChar = True
      Size = 40
    end
  end
  object DsMrc: TwwDataSource
    DataSet = EstMrc
    OnDataChange = DsProDataChange
    Left = 93
    Top = 712
  end
  object EstCat: TwwQuery
    Tag = 1
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * From EstCat Where EstCat.CodCat = :CodCat')
    ValidateWithMask = True
    Left = 65
    Top = 656
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodCat'
        ParamType = ptInput
      end>
    object EstCatCODCAT: TIntegerField
      FieldName = 'CODCAT'
      Origin = 'ISADE.ESTCAT.CODCAT'
    end
    object EstCatNOMCAT: TStringField
      FieldName = 'NOMCAT'
      Origin = 'ISADE.ESTCAT.NOMCAT'
      FixedChar = True
      Size = 40
    end
  end
  object DsCat: TwwDataSource
    DataSet = EstCat
    OnDataChange = DsProDataChange
    Left = 93
    Top = 656
  end
  object EstUne: TwwQuery
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * From EstUnd Where EstUnd.CodUnd = :CodUnd')
    ValidateWithMask = True
    Left = 433
    Top = 600
    ParamData = <
      item
        DataType = ftString
        Name = 'CodUnd'
        ParamType = ptInput
      end>
  end
  object DsUne: TwwDataSource
    DataSet = EstUne
    OnDataChange = DsProDataChange
    Left = 461
    Top = 600
  end
  object PopupMenu2: TPopupMenu
    Images = fmManPri.ImageList1
    Left = 224
    Top = 572
    object ClassificaoFiscal1: TMenuItem
      Caption = 'Classificação Fiscal                   '
      Hint = 'Classificação Fiscal'
      ImageIndex = 20
      OnClick = ClassificaoFiscal1Click
    end
    object PartNumber1: TMenuItem
      Caption = 'PartNumber'
      OnClick = PartNumber1Click
    end
  end
  object EstPro_02T: TwwQuery
    CachedUpdates = True
    BeforeOpen = EstPro_02TBeforeOpen
    DatabaseName = 'Emerion_01'
    SQL.Strings = (
      'Select * From EstPro'
      'Where EstPro.CodClp = :CodClp'
      '     and EstPro.CodGru = :CodGru'
      '     and EstPro.CodSub = :CodSub'
      '     and EstPro.CodPro = :CodPro')
    UpdateObject = UpPro_02T
    ControlType.Strings = (
      'FLBPRO;CheckBox;*; ')
    ValidateWithMask = True
    Left = 340
    Top = 572
    ParamData = <
      item
        DataType = ftString
        Name = 'CodClp'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CodGru'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CodSub'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CodPro'
        ParamType = ptInput
      end>
    object EstPro_02TDSCPRO: TStringField
      DisplayLabel = 'Descrição Principal'
      DisplayWidth = 59
      FieldName = 'DSCPRO'
      Origin = 'ISADE.ESTPRO.DSCPRO'
      FixedChar = True
      Size = 70
    end
    object EstPro_02TSIMPRO: TStringField
      DisplayLabel = ' Similar          '
      DisplayWidth = 11
      FieldName = 'SIMPRO'
      FixedChar = True
      Size = 10
    end
    object EstPro_02TCODCAT: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Categoria'
      DisplayWidth = 10
      FieldName = 'CODCAT'
    end
    object EstPro_02TCODTIP: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Tipo'
      DisplayWidth = 10
      FieldName = 'CODTIP'
      Origin = 'ISADE.ESTPRO.CODTIP'
    end
    object EstPro_02TCODMRC: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Marca'
      DisplayWidth = 10
      FieldName = 'CODMRC'
    end
    object EstPro_02TFLBPRO: TStringField
      DisplayLabel = '  D'
      DisplayWidth = 3
      FieldName = 'FLBPRO'
      Origin = 'ISADE.ESTPRO.FLBPRO'
      FixedChar = True
      Size = 1
    end
    object EstPro_02TENTIMP: TFloatField
      DisplayWidth = 10
      FieldName = 'ENTIMP'
      Visible = False
    end
    object EstPro_02TREFPRO: TStringField
      DisplayLabel = 'Referência Interna'
      DisplayWidth = 21
      FieldName = 'REFPRO'
      Origin = 'ISADE.ESTPRO.REFPRO'
      Visible = False
      FixedChar = True
    end
    object EstPro_02TDSRPRO: TStringField
      DisplayLabel = 'Descrição Reduzida'
      DisplayWidth = 20
      FieldName = 'DSRPRO'
      Origin = 'ISADE.ESTPRO.DSRPRO'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object EstPro_02TTIPSTE: TStringField
      DisplayWidth = 7
      FieldName = 'TIPSTE'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object EstPro_02TTIPSTS: TStringField
      DisplayWidth = 7
      FieldName = 'TIPSTS'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object EstPro_02TPESLIQ: TFloatField
      DisplayWidth = 10
      FieldName = 'PESLIQ'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object EstPro_02TPESBRT: TFloatField
      DisplayWidth = 10
      FieldName = 'PESBRT'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object EstPro_02TCODCLP: TStringField
      DisplayLabel = 'Classificação'
      DisplayWidth = 12
      FieldName = 'CODCLP'
      Origin = 'ISADE.ESTPRO.CODCLP'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object EstPro_02TCODGRU: TStringField
      DisplayLabel = 'Grupo'
      DisplayWidth = 11
      FieldName = 'CODGRU'
      Origin = 'ISADE.ESTPRO.CODGRU'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object EstPro_02TCODSUB: TStringField
      DisplayLabel = 'Sub-Grupo'
      DisplayWidth = 10
      FieldName = 'CODSUB'
      Origin = 'ISADE.ESTPRO.CODSUB'
      Visible = False
      FixedChar = True
      Size = 4
    end
    object EstPro_02TCODPRO: TStringField
      DisplayLabel = 'Item'
      DisplayWidth = 8
      FieldName = 'CODPRO'
      Origin = 'ISADE.ESTPRO.CODPRO'
      Visible = False
      FixedChar = True
      Size = 5
    end
    object EstPro_02TCBAPRO: TStringField
      DisplayWidth = 20
      FieldName = 'CBAPRO'
      Origin = 'ISADE.ESTPRO.CBAPRO'
      Visible = False
      FixedChar = True
    end
    object EstPro_02TCBAEMB: TStringField
      DisplayWidth = 20
      FieldName = 'CBAEMB'
      Origin = 'ISADE.ESTPRO.CBAEMB'
      Visible = False
      FixedChar = True
    end
    object EstPro_02TQTDEMB: TFloatField
      DisplayWidth = 10
      FieldName = 'QTDEMB'
      Origin = 'ISADE.ESTPRO.QTDEMB'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object EstPro_02TCATPRO: TStringField
      DisplayWidth = 20
      FieldName = 'CATPRO'
      Origin = 'ISADE.ESTPRO.CATPRO'
      Visible = False
      FixedChar = True
    end
    object EstPro_02TLOCPRO: TStringField
      DisplayWidth = 20
      FieldName = 'LOCPRO'
      Origin = 'ISADE.ESTPRO.LOCPRO'
      Visible = False
      FixedChar = True
    end
    object EstPro_02TISSPRO: TFloatField
      DisplayWidth = 10
      FieldName = 'ISSPRO'
      Origin = 'ISADE.ESTPRO.ISSPRO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstPro_02TCODUNE: TStringField
      DisplayWidth = 3
      FieldName = 'CODUNE'
      Origin = 'ISADE.ESTPRO.CODUNE'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object EstPro_02TQTEPRO: TFloatField
      DisplayWidth = 10
      FieldName = 'QTEPRO'
      Origin = 'ISADE.ESTPRO.QTEPRO'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object EstPro_02TCODUNS: TStringField
      DisplayWidth = 3
      FieldName = 'CODUNS'
      Origin = 'ISADE.ESTPRO.CODUNS'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object EstPro_02TQTSPRO: TFloatField
      DisplayWidth = 10
      FieldName = 'QTSPRO'
      Origin = 'ISADE.ESTPRO.QTSPRO'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object EstPro_02TWEBPRO: TStringField
      DisplayWidth = 70
      FieldName = 'WEBPRO'
      Origin = 'ISADE.ESTPRO.WEBPRO'
      Visible = False
      FixedChar = True
      Size = 70
    end
    object EstPro_02TDTCPRO: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DTCPRO'
      Origin = 'ISADE.ESTPRO.DTCPRO'
      Visible = False
    end
    object EstPro_02TOBSPRO: TMemoField
      DisplayWidth = 10
      FieldName = 'OBSPRO'
      Origin = 'ISADE.ESTPRO.OBSPRO'
      Visible = False
      BlobType = ftMemo
      Size = 2000
    end
    object EstPro_02TCODST1: TStringField
      DisplayWidth = 1
      FieldName = 'CODST1'
      Origin = 'ISADE.ESTPRO.CODST1'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object EstPro_02TCODST2: TStringField
      DisplayWidth = 2
      FieldName = 'CODST2'
      Origin = 'ISADE.ESTPRO.CODST2'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object EstPro_02TCODCOM: TStringField
      DisplayWidth = 3
      FieldName = 'CODCOM'
      Origin = 'ISADE.ESTPRO.CODCOM'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object EstPro_02TCODUSU: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODUSU'
      Origin = 'ISADE.ESTPRO.CODUSU'
      Visible = False
    end
    object EstPro_02TSAIICM: TFloatField
      DisplayWidth = 10
      FieldName = 'SAIICM'
      Origin = 'ISADE.ESTPRO.SAIICM'
      Visible = False
      DisplayFormat = '##0'
    end
    object EstPro_02TENTICM: TFloatField
      DisplayWidth = 10
      FieldName = 'ENTICM'
      Origin = 'ISADE.ESTPRO.ENTICM'
      Visible = False
      DisplayFormat = '##0'
    end
    object EstPro_02TSAIIPI: TFloatField
      DisplayWidth = 10
      FieldName = 'SAIIPI'
      Origin = 'ISADE.ESTPRO.SAIIPI'
      Visible = False
      DisplayFormat = '##0'
    end
    object EstPro_02TENTIPI: TFloatField
      DisplayWidth = 10
      FieldName = 'ENTIPI'
      Origin = 'ISADE.ESTPRO.ENTIPI'
      Visible = False
      DisplayFormat = '##0'
    end
    object EstPro_02TIMGPRO: TBlobField
      DisplayWidth = 10
      FieldName = 'IMGPRO'
      Origin = 'ISADE.ESTPRO.IMGPRO'
      Visible = False
      BlobType = ftBlob
      Size = 1
    end
    object EstPro_02TCODANT: TStringField
      DisplayWidth = 30
      FieldName = 'CODANT'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object EstPro_02TFLGTRG: TStringField
      DisplayWidth = 1
      FieldName = 'FLGTRG'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object EstPro_02TNUMPRO: TStringField
      DisplayWidth = 30
      FieldName = 'NUMPRO'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object EstPro_02TQTDVOL: TIntegerField
      DisplayWidth = 10
      FieldName = 'QTDVOL'
      Visible = False
    end
    object EstPro_02TIDEPRO: TStringField
      DisplayWidth = 30
      FieldName = 'IDEPRO'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object EstPro_02TICMSAI: TStringField
      FieldName = 'ICMSAI'
      Visible = False
      FixedChar = True
    end
    object EstPro_02TICMTSD: TStringField
      FieldName = 'ICMTSD'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object EstPro_02TICMENT: TStringField
      FieldName = 'ICMENT'
      Visible = False
      FixedChar = True
    end
    object EstPro_02TICMTEN: TStringField
      FieldName = 'ICMTEN'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object EstPro_02TIPISAI: TStringField
      FieldName = 'IPISAI'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object EstPro_02TIPITSD: TStringField
      FieldName = 'IPITSD'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object EstPro_02TIPIENT: TStringField
      FieldName = 'IPIENT'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object EstPro_02TIPITEN: TStringField
      FieldName = 'IPITEN'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object EstPro_02TCLFENT: TStringField
      FieldName = 'CLFENT'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object EstPro_02TCLFSAI: TStringField
      FieldName = 'CLFSAI'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object EstPro_02TCODSTE: TStringField
      DisplayWidth = 20
      FieldName = 'CODSTE'
      Visible = False
      FixedChar = True
    end
    object EstPro_02TCODSTS: TStringField
      DisplayWidth = 20
      FieldName = 'CODSTS'
      Visible = False
      FixedChar = True
    end
    object EstPro_02TFLGPRO: TStringField
      DisplayWidth = 3
      FieldName = 'FLGPRO'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object EstPro_02TFLGKIT: TStringField
      DisplayWidth = 3
      FieldName = 'FLGKIT'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object EstPro_02TCBAEM2: TStringField
      DisplayWidth = 20
      FieldName = 'CBAEM2'
      Visible = False
      FixedChar = True
    end
    object EstPro_02TCBAEM3: TStringField
      DisplayWidth = 20
      FieldName = 'CBAEM3'
      Visible = False
      FixedChar = True
    end
    object EstPro_02TLIQEMB: TFloatField
      DisplayWidth = 10
      FieldName = 'LIQEMB'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object EstPro_02TBRTEMB: TFloatField
      DisplayWidth = 10
      FieldName = 'BRTEMB'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object EstPro_02TCUBPRO: TFloatField
      DisplayWidth = 10
      FieldName = 'CUBPRO'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object EstPro_02TCXAPRO: TFloatField
      DisplayWidth = 10
      FieldName = 'CXAPRO'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object EstPro_02TNROPRO: TIntegerField
      FieldName = 'NROPRO'
      Origin = 'EMERION_01.ESTPRO.NROPRO'
    end
    object EstPro_02TDESIMP: TMemoField
      FieldName = 'DESIMP'
      Origin = 'EMERION_01.ESTPRO.DESIMP'
      BlobType = ftMemo
      Size = 500
    end
    object EstPro_02TCODBAR: TIntegerField
      FieldName = 'CODBAR'
      Origin = 'EMERION_01.ESTPRO.CODBAR'
    end
    object EstPro_02TQTDBAR: TIntegerField
      FieldName = 'QTDBAR'
      Origin = 'EMERION_01.ESTPRO.QTDBAR'
    end
    object EstPro_02TSEQBAR: TIntegerField
      FieldName = 'SEQBAR'
      Origin = 'EMERION_01.ESTPRO.SEQBAR'
    end
    object EstPro_02TDESIM2: TMemoField
      FieldName = 'DESIM2'
      Origin = 'EMERION_01.ESTPRO.DESIM2'
      BlobType = ftMemo
      Size = 500
    end
    object EstPro_02TVALIMP: TFloatField
      FieldName = 'VALIMP'
      Origin = 'EMERION_01.ESTPRO.VALIMP'
    end
    object EstPro_02TDSCIMP: TStringField
      FieldName = 'DSCIMP'
      Origin = 'EMERION_01.ESTPRO.DSCIMP'
      Size = 70
    end
    object EstPro_02TDESNC1: TStringField
      FieldName = 'DESNC1'
      Origin = 'EMERION_01.ESTPRO.DESNC1'
      FixedChar = True
      Size = 80
    end
    object EstPro_02TDESNC2: TStringField
      FieldName = 'DESNC2'
      Origin = 'EMERION_01.ESTPRO.DESNC2'
      FixedChar = True
      Size = 80
    end
    object EstPro_02TDESNC3: TStringField
      FieldName = 'DESNC3'
      Origin = 'EMERION_01.ESTPRO.DESNC3'
      FixedChar = True
      Size = 80
    end
    object EstPro_02TDESNC4: TStringField
      FieldName = 'DESNC4'
      Origin = 'EMERION_01.ESTPRO.DESNC4'
      FixedChar = True
      Size = 80
    end
    object EstPro_02TDESNC5: TStringField
      FieldName = 'DESNC5'
      Origin = 'EMERION_01.ESTPRO.DESNC5'
      FixedChar = True
      Size = 80
    end
    object EstPro_02TDESNC6: TStringField
      FieldName = 'DESNC6'
      Origin = 'EMERION_01.ESTPRO.DESNC6'
      FixedChar = True
      Size = 80
    end
    object EstPro_02TDESNC7: TStringField
      FieldName = 'DESNC7'
      Origin = 'EMERION_01.ESTPRO.DESNC7'
      FixedChar = True
      Size = 80
    end
    object EstPro_02TDESNC8: TStringField
      FieldName = 'DESNC8'
      Origin = 'EMERION_01.ESTPRO.DESNC8'
      FixedChar = True
      Size = 80
    end
    object EstPro_02TFLGLIS: TStringField
      FieldName = 'FLGLIS'
      Origin = 'EMERION_01.ESTPRO.FLGLIS'
      FixedChar = True
      Size = 3
    end
    object EstPro_02TPESCUB: TFloatField
      FieldName = 'PESCUB'
      Origin = 'EMERION_01.ESTPRO.PESCUB'
    end
    object EstPro_02TALTPRO: TFloatField
      FieldName = 'ALTPRO'
      Origin = 'EMERION_01.ESTPRO.ALTPRO'
    end
    object EstPro_02TCOMPRO: TFloatField
      FieldName = 'COMPRO'
      Origin = 'EMERION_01.ESTPRO.COMPRO'
    end
    object EstPro_02TLARPRO: TFloatField
      FieldName = 'LARPRO'
      Origin = 'EMERION_01.ESTPRO.LARPRO'
    end
    object EstPro_02TGARPRO: TIntegerField
      FieldName = 'GARPRO'
      Origin = 'EMERION_01.ESTPRO.GARPRO'
    end
    object EstPro_02TPRODEP: TStringField
      FieldName = 'PRODEP'
      Origin = 'EMERION_01.ESTPRO.PRODEP'
      FixedChar = True
      Size = 18
    end
    object EstPro_02TID2PRO: TStringField
      FieldName = 'ID2PRO'
      Origin = 'EMERION_01.ESTPRO.ID2PRO'
      FixedChar = True
      Size = 30
    end
    object EstPro_02TDSRIMP: TStringField
      FieldName = 'DSRIMP'
      Origin = 'EMERION_01.ESTPRO.DSRIMP'
      Size = 70
    end
  end
  object UpPro_02T: TUpdateSQL
    ModifySQL.Strings = (
      'update EstPro'
      'set'
      '  DSCPRO = :DSCPRO,'
      '  DSRPRO = :DSRPRO,'
      '  CBAPRO = :CBAPRO,'
      '  CBAEMB = :CBAEMB,'
      '  QTDEMB = :QTDEMB,'
      '  CATPRO = :CATPRO,'
      '  LOCPRO = :LOCPRO,'
      '  REFPRO = :REFPRO,'
      '  ISSPRO = :ISSPRO,'
      '  CODUNE = :CODUNE,'
      '  QTEPRO = :QTEPRO,'
      '  CODUNS = :CODUNS,'
      '  QTSPRO = :QTSPRO,'
      '  FLBPRO = :FLBPRO,'
      '  WEBPRO = :WEBPRO,'
      '  DTCPRO = :DTCPRO,'
      '  OBSPRO = :OBSPRO,'
      '  CODST1 = :CODST1,'
      '  CODST2 = :CODST2,'
      '  CODTIP = :CODTIP,'
      '  CODCOM = :CODCOM,'
      '  CODUSU = :CODUSU,'
      '  PESLIQ = :PESLIQ,'
      '  PESBRT = :PESBRT,'
      '  SAIICM = :SAIICM,'
      '  ENTICM = :ENTICM,'
      '  SAIIPI = :SAIIPI,'
      '  ENTIPI = :ENTIPI,'
      '  IMGPRO = :IMGPRO,'
      '  CODSTE = :CODSTE,'
      '  TIPSTE = :TIPSTE,'
      '  CODSTS = :CODSTS,'
      '  TIPSTS = :TIPSTS,'
      '  CODANT = :CODANT,'
      '  SIMPRO = :SIMPRO,'
      '  NUMPRO = :NUMPRO,'
      '  FLGTRG = :FLGTRG,'
      '  QTDVOL = :QTDVOL,'
      '  CODMRC = :CODMRC,'
      '  IDEPRO = :IDEPRO,'
      '  CODCAT = :CODCAT,'
      '  ICMSAI = :ICMSAI,'
      '  ICMTSD = :ICMTSD,'
      '  ICMENT = :ICMENT,'
      '  ICMTEN = :ICMTEN,'
      '  IPISAI = :IPISAI,'
      '  IPITSD = :IPITSD,'
      '  IPIENT = :IPIENT,'
      '  IPITEN = :IPITEN,'
      '  CLFENT = :CLFENT,'
      '  CLFSAI = :CLFSAI,'
      '  FLGPRO = :FLGPRO,'
      '  FLGKIT = :FLGKIT,'
      '  CBAEM2 = :CBAEM2,'
      '  CBAEM3 = :CBAEM3,'
      '  LIQEMB = :LIQEMB,'
      '  BRTEMB = :BRTEMB,'
      '  CUBPRO = :CUBPRO,'
      '  CXAPRO = :CXAPRO,'
      '  ENTIMP = :ENTIMP,'
      '  DESIMP = :DESIMP,'
      '  CODBAR = :CODBAR,'
      '  DESIM2 = :DESIM2,'
      '  VALIMP = :VALIMP,'
      '  DSCIMP = :DSCIMP,'
      '  DSRIMP = :DSRIMP,'
      '  DESNC1 = :DESNC1,'
      '  DESNC2 = :DESNC2,'
      '  DESNC3 = :DESNC3,'
      '  DESNC4 = :DESNC4,'
      '  DESNC5 = :DESNC5,'
      '  DESNC6 = :DESNC6,'
      '  DESNC7 = :DESNC7,'
      '  DESNC8 = :DESNC8,'
      '  FLGLIS = :FLGLIS,'
      '  PESCUB = :PESCUB,'
      '  ALTPRO = :ALTPRO,'
      '  COMPRO = :COMPRO,'
      '  LARPRO = :LARPRO,'
      '  GARPRO = :GARPRO,'
      '  PRODEP = :PRODEP,'
      '  ID2PRO = :ID2PRO'
      'where'
      '  CODCLP = :OLD_CODCLP and'
      '  CODGRU = :OLD_CODGRU and'
      '  CODSUB = :OLD_CODSUB and'
      '  CODPRO = :OLD_CODPRO')
    InsertSQL.Strings = (
      'insert into EstPro'
      '  (CODCLP, CODGRU, CODSUB, CODPRO, DSCPRO, DSRPRO, CBAPRO, '
      'CBAEMB, QTDEMB, '
      
        '   CATPRO, LOCPRO, REFPRO, ISSPRO, CODUNE, QTEPRO, CODUNS, QTSPR' +
        'O, '
      'FLBPRO, '
      '   WEBPRO, DTCPRO, OBSPRO, CODST1, CODST2, CODTIP, CODCOM, '
      'CODUSU, PESLIQ, '
      
        '   PESBRT, SAIICM, ENTICM, SAIIPI, ENTIPI, IMGPRO, CODSTE, TIPST' +
        'E, '
      'CODSTS, '
      
        '   TIPSTS, CODANT, SIMPRO, NUMPRO, FLGTRG, QTDVOL, CODMRC, IDEPR' +
        'O, '
      'CODCAT, '
      
        '   ICMSAI, ICMTSD, ICMENT, ICMTEN, IPISAI, IPITSD, IPIENT, IPITE' +
        'N, CLFENT, '
      
        '   CLFSAI, FLGPRO, FLGKIT, CBAEM2, CBAEM3, LIQEMB, BRTEMB, CUBPR' +
        'O, '
      'CXAPRO, '
      
        '   ENTIMP, NROPRO, DESIMP, CODBAR, QTDBAR, SEQBAR, DESIM2, VALIM' +
        'P, '
      'DSCIMP, '
      
        '   DSRIMP, DESNC1, DESNC2, DESNC3, DESNC4, DESNC5, DESNC6, DESNC' +
        '7, '
      'DESNC8, '
      
        '   FLGLIS, PESCUB, ALTPRO, COMPRO, LARPRO, GARPRO, PRODEP, ID2PR' +
        'O)'
      'values'
      
        '  (:CODCLP, :CODGRU, :CODSUB, :CODPRO, :DSCPRO, :DSRPRO, :CBAPRO' +
        ', '
      ':CBAEMB, '
      
        '   :QTDEMB, :CATPRO, :LOCPRO, :REFPRO, :ISSPRO, :CODUNE, :QTEPRO' +
        ', '
      ':CODUNS, '
      
        '   :QTSPRO, :FLBPRO, :WEBPRO, :DTCPRO, :OBSPRO, :CODST1, :CODST2' +
        ', '
      ':CODTIP, '
      
        '   :CODCOM, :CODUSU, :PESLIQ, :PESBRT, :SAIICM, :ENTICM, :SAIIPI' +
        ', :ENTIPI, '
      
        '   :IMGPRO, :CODSTE, :TIPSTE, :CODSTS, :TIPSTS, :CODANT, :SIMPRO' +
        ', '
      ':NUMPRO, '
      
        '   :FLGTRG, :QTDVOL, :CODMRC, :IDEPRO, :CODCAT, :ICMSAI, :ICMTSD' +
        ', '
      ':ICMENT, '
      
        '   :ICMTEN, :IPISAI, :IPITSD, :IPIENT, :IPITEN, :CLFENT, :CLFSAI' +
        ', :FLGPRO, '
      
        '   :FLGKIT, :CBAEM2, :CBAEM3, :LIQEMB, :BRTEMB, :CUBPRO, :CXAPRO' +
        ', '
      ':ENTIMP, '
      
        '   :NROPRO, :DESIMP, :CODBAR, :QTDBAR, :SEQBAR, :DESIM2, :VALIMP' +
        ', '
      ':DSCIMP, '
      
        '   :DSRIMP, :DESNC1, :DESNC2, :DESNC3, :DESNC4, :DESNC5, :DESNC6' +
        ', '
      ':DESNC7, '
      
        '   :DESNC8, :FLGLIS, :PESCUB, :ALTPRO, :COMPRO, :LARPRO, :GARPRO' +
        ', '
      ':PRODEP, '
      '   :ID2PRO)')
    DeleteSQL.Strings = (
      'delete from EstPro'
      'where'
      '  CODCLP = :OLD_CODCLP and'
      '  CODGRU = :OLD_CODGRU and'
      '  CODSUB = :OLD_CODSUB and'
      '  CODPRO = :OLD_CODPRO')
    Left = 384
    Top = 572
  end
  object EstPro_03: TwwQuery
    CachedUpdates = True
    BeforeOpen = EstPro_03BeforeOpen
    DatabaseName = 'Emerion_02'
    SQL.Strings = (
      'Select * From EstPro'
      'Where EstPro.CodClp = :CodClp'
      '     and EstPro.CodGru = :CodGru'
      '     and EstPro.CodSub = :CodSub'
      '     and EstPro.CodPro = :CodPro')
    UpdateObject = UpPro_03
    ControlType.Strings = (
      'FLBPRO;CheckBox;*; ')
    ValidateWithMask = True
    Left = 260
    Top = 600
    ParamData = <
      item
        DataType = ftString
        Name = 'CodClp'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CodGru'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CodSub'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CodPro'
        ParamType = ptInput
      end>
    object EstPro_03CODCLP: TStringField
      FieldName = 'CODCLP'
      Origin = 'EMERION_02.ESTPRO.CODCLP'
      FixedChar = True
      Size = 1
    end
    object EstPro_03CODGRU: TStringField
      FieldName = 'CODGRU'
      Origin = 'EMERION_02.ESTPRO.CODGRU'
      FixedChar = True
      Size = 3
    end
    object EstPro_03CODSUB: TStringField
      FieldName = 'CODSUB'
      Origin = 'EMERION_02.ESTPRO.CODSUB'
      FixedChar = True
      Size = 4
    end
    object EstPro_03CODPRO: TStringField
      FieldName = 'CODPRO'
      Origin = 'EMERION_02.ESTPRO.CODPRO'
      FixedChar = True
      Size = 5
    end
    object EstPro_03DSCPRO: TStringField
      FieldName = 'DSCPRO'
      Origin = 'EMERION_02.ESTPRO.DSCPRO'
      FixedChar = True
      Size = 70
    end
    object EstPro_03DSRPRO: TStringField
      FieldName = 'DSRPRO'
      Origin = 'EMERION_02.ESTPRO.DSRPRO'
      FixedChar = True
      Size = 40
    end
    object EstPro_03CBAPRO: TStringField
      FieldName = 'CBAPRO'
      Origin = 'EMERION_02.ESTPRO.CBAPRO'
      FixedChar = True
    end
    object EstPro_03CBAEMB: TStringField
      FieldName = 'CBAEMB'
      Origin = 'EMERION_02.ESTPRO.CBAEMB'
      FixedChar = True
    end
    object EstPro_03QTDEMB: TFloatField
      FieldName = 'QTDEMB'
      Origin = 'EMERION_02.ESTPRO.QTDEMB'
    end
    object EstPro_03CATPRO: TStringField
      FieldName = 'CATPRO'
      Origin = 'EMERION_02.ESTPRO.CATPRO'
      FixedChar = True
    end
    object EstPro_03LOCPRO: TStringField
      FieldName = 'LOCPRO'
      Origin = 'EMERION_02.ESTPRO.LOCPRO'
      FixedChar = True
    end
    object EstPro_03REFPRO: TStringField
      FieldName = 'REFPRO'
      Origin = 'EMERION_02.ESTPRO.REFPRO'
      FixedChar = True
    end
    object EstPro_03ISSPRO: TFloatField
      FieldName = 'ISSPRO'
      Origin = 'EMERION_02.ESTPRO.ISSPRO'
    end
    object EstPro_03CODUNE: TStringField
      FieldName = 'CODUNE'
      Origin = 'EMERION_02.ESTPRO.CODUNE'
      FixedChar = True
      Size = 3
    end
    object EstPro_03QTEPRO: TFloatField
      FieldName = 'QTEPRO'
      Origin = 'EMERION_02.ESTPRO.QTEPRO'
    end
    object EstPro_03CODUNS: TStringField
      FieldName = 'CODUNS'
      Origin = 'EMERION_02.ESTPRO.CODUNS'
      FixedChar = True
      Size = 3
    end
    object EstPro_03QTSPRO: TFloatField
      FieldName = 'QTSPRO'
      Origin = 'EMERION_02.ESTPRO.QTSPRO'
    end
    object EstPro_03FLBPRO: TStringField
      FieldName = 'FLBPRO'
      Origin = 'EMERION_02.ESTPRO.FLBPRO'
      FixedChar = True
      Size = 1
    end
    object EstPro_03WEBPRO: TStringField
      FieldName = 'WEBPRO'
      Origin = 'EMERION_02.ESTPRO.WEBPRO'
      FixedChar = True
      Size = 70
    end
    object EstPro_03DTCPRO: TDateTimeField
      FieldName = 'DTCPRO'
      Origin = 'EMERION_02.ESTPRO.DTCPRO'
    end
    object EstPro_03OBSPRO: TMemoField
      FieldName = 'OBSPRO'
      Origin = 'EMERION_02.ESTPRO.OBSPRO'
      BlobType = ftMemo
      Size = 2000
    end
    object EstPro_03CODST1: TStringField
      FieldName = 'CODST1'
      Origin = 'EMERION_02.ESTPRO.CODST1'
      FixedChar = True
      Size = 1
    end
    object EstPro_03CODST2: TStringField
      FieldName = 'CODST2'
      Origin = 'EMERION_02.ESTPRO.CODST2'
      FixedChar = True
      Size = 2
    end
    object EstPro_03CODTIP: TIntegerField
      FieldName = 'CODTIP'
      Origin = 'EMERION_02.ESTPRO.CODTIP'
    end
    object EstPro_03CODCOM: TStringField
      FieldName = 'CODCOM'
      Origin = 'EMERION_02.ESTPRO.CODCOM'
      FixedChar = True
      Size = 3
    end
    object EstPro_03CODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = 'EMERION_02.ESTPRO.CODUSU'
    end
    object EstPro_03PESLIQ: TFloatField
      FieldName = 'PESLIQ'
      Origin = 'EMERION_02.ESTPRO.PESLIQ'
    end
    object EstPro_03PESBRT: TFloatField
      FieldName = 'PESBRT'
      Origin = 'EMERION_02.ESTPRO.PESBRT'
    end
    object EstPro_03SAIICM: TFloatField
      FieldName = 'SAIICM'
      Origin = 'EMERION_02.ESTPRO.SAIICM'
    end
    object EstPro_03ENTICM: TFloatField
      FieldName = 'ENTICM'
      Origin = 'EMERION_02.ESTPRO.ENTICM'
    end
    object EstPro_03SAIIPI: TFloatField
      FieldName = 'SAIIPI'
      Origin = 'EMERION_02.ESTPRO.SAIIPI'
    end
    object EstPro_03ENTIPI: TFloatField
      FieldName = 'ENTIPI'
      Origin = 'EMERION_02.ESTPRO.ENTIPI'
    end
    object EstPro_03IMGPRO: TBlobField
      FieldName = 'IMGPRO'
      Origin = 'EMERION_02.ESTPRO.IMGPRO'
      BlobType = ftBlob
      Size = 1
    end
    object EstPro_03CODSTE: TStringField
      FieldName = 'CODSTE'
      Origin = 'EMERION_02.ESTPRO.CODSTE'
      FixedChar = True
    end
    object EstPro_03TIPSTE: TStringField
      FieldName = 'TIPSTE'
      Origin = 'EMERION_02.ESTPRO.TIPSTE'
      FixedChar = True
      Size = 7
    end
    object EstPro_03CODSTS: TStringField
      FieldName = 'CODSTS'
      Origin = 'EMERION_02.ESTPRO.CODSTS'
      FixedChar = True
    end
    object EstPro_03TIPSTS: TStringField
      FieldName = 'TIPSTS'
      Origin = 'EMERION_02.ESTPRO.TIPSTS'
      FixedChar = True
      Size = 7
    end
    object EstPro_03CODANT: TStringField
      FieldName = 'CODANT'
      Origin = 'EMERION_02.ESTPRO.CODANT'
      FixedChar = True
      Size = 30
    end
    object EstPro_03SIMPRO: TStringField
      FieldName = 'SIMPRO'
      Origin = 'EMERION_02.ESTPRO.SIMPRO'
      FixedChar = True
      Size = 10
    end
    object EstPro_03NUMPRO: TStringField
      FieldName = 'NUMPRO'
      Origin = 'EMERION_02.ESTPRO.NUMPRO'
      FixedChar = True
      Size = 30
    end
    object EstPro_03FLGTRG: TStringField
      FieldName = 'FLGTRG'
      Origin = 'EMERION_02.ESTPRO.FLGTRG'
      FixedChar = True
      Size = 1
    end
    object EstPro_03QTDVOL: TIntegerField
      FieldName = 'QTDVOL'
      Origin = 'EMERION_02.ESTPRO.QTDVOL'
    end
    object EstPro_03CODMRC: TIntegerField
      FieldName = 'CODMRC'
      Origin = 'EMERION_02.ESTPRO.CODMRC'
    end
    object EstPro_03IDEPRO: TStringField
      FieldName = 'IDEPRO'
      Origin = 'EMERION_02.ESTPRO.IDEPRO'
      FixedChar = True
      Size = 30
    end
    object EstPro_03CODCAT: TIntegerField
      FieldName = 'CODCAT'
      Origin = 'EMERION_02.ESTPRO.CODCAT'
    end
    object EstPro_03ICMSAI: TStringField
      FieldName = 'ICMSAI'
      Origin = 'EMERION_02.ESTPRO.ICMSAI'
      FixedChar = True
    end
    object EstPro_03ICMTSD: TStringField
      FieldName = 'ICMTSD'
      Origin = 'EMERION_02.ESTPRO.ICMTSD'
      FixedChar = True
      Size = 7
    end
    object EstPro_03ICMENT: TStringField
      FieldName = 'ICMENT'
      Origin = 'EMERION_02.ESTPRO.ICMENT'
      FixedChar = True
    end
    object EstPro_03ICMTEN: TStringField
      FieldName = 'ICMTEN'
      Origin = 'EMERION_02.ESTPRO.ICMTEN'
      FixedChar = True
      Size = 7
    end
    object EstPro_03IPISAI: TStringField
      FieldName = 'IPISAI'
      Origin = 'EMERION_02.ESTPRO.IPISAI'
      FixedChar = True
      Size = 30
    end
    object EstPro_03IPITSD: TStringField
      FieldName = 'IPITSD'
      Origin = 'EMERION_02.ESTPRO.IPITSD'
      FixedChar = True
      Size = 7
    end
    object EstPro_03IPIENT: TStringField
      FieldName = 'IPIENT'
      Origin = 'EMERION_02.ESTPRO.IPIENT'
      FixedChar = True
      Size = 30
    end
    object EstPro_03IPITEN: TStringField
      FieldName = 'IPITEN'
      Origin = 'EMERION_02.ESTPRO.IPITEN'
      FixedChar = True
      Size = 7
    end
    object EstPro_03CLFENT: TStringField
      FieldName = 'CLFENT'
      Origin = 'EMERION_02.ESTPRO.CLFENT'
      FixedChar = True
      Size = 30
    end
    object EstPro_03CLFSAI: TStringField
      FieldName = 'CLFSAI'
      Origin = 'EMERION_02.ESTPRO.CLFSAI'
      FixedChar = True
      Size = 30
    end
    object EstPro_03FLGPRO: TStringField
      FieldName = 'FLGPRO'
      Origin = 'EMERION_02.ESTPRO.FLGPRO'
      FixedChar = True
      Size = 3
    end
    object EstPro_03FLGKIT: TStringField
      FieldName = 'FLGKIT'
      Origin = 'EMERION_02.ESTPRO.FLGKIT'
      FixedChar = True
      Size = 3
    end
    object EstPro_03CBAEM2: TStringField
      FieldName = 'CBAEM2'
      Origin = 'EMERION_02.ESTPRO.CBAEM2'
      FixedChar = True
    end
    object EstPro_03CBAEM3: TStringField
      FieldName = 'CBAEM3'
      Origin = 'EMERION_02.ESTPRO.CBAEM3'
      FixedChar = True
    end
    object EstPro_03LIQEMB: TFloatField
      FieldName = 'LIQEMB'
      Origin = 'EMERION_02.ESTPRO.LIQEMB'
    end
    object EstPro_03BRTEMB: TFloatField
      FieldName = 'BRTEMB'
      Origin = 'EMERION_02.ESTPRO.BRTEMB'
    end
    object EstPro_03CUBPRO: TFloatField
      FieldName = 'CUBPRO'
      Origin = 'EMERION_02.ESTPRO.CUBPRO'
    end
    object EstPro_03CXAPRO: TFloatField
      FieldName = 'CXAPRO'
      Origin = 'EMERION_02.ESTPRO.CXAPRO'
    end
    object EstPro_03ENTIMP: TFloatField
      FieldName = 'ENTIMP'
      Origin = 'EMERION_02.ESTPRO.ENTIMP'
    end
    object EstPro_03NROPRO: TIntegerField
      FieldName = 'NROPRO'
      Origin = 'EMERION_02.ESTPRO.NROPRO'
    end
    object EstPro_03CODBAR: TIntegerField
      FieldName = 'CODBAR'
      Origin = 'EMERION_02.ESTPRO.CODBAR'
    end
    object EstPro_03QTDBAR: TIntegerField
      FieldName = 'QTDBAR'
      Origin = 'EMERION_02.ESTPRO.QTDBAR'
    end
    object EstPro_03SEQBAR: TIntegerField
      FieldName = 'SEQBAR'
      Origin = 'EMERION_02.ESTPRO.SEQBAR'
    end
    object EstPro_03DESIMP: TMemoField
      FieldName = 'DESIMP'
      Origin = 'EMERION_02.ESTPRO.DESIMP'
      BlobType = ftMemo
      Size = 500
    end
    object EstPro_03DESIM2: TMemoField
      FieldName = 'DESIM2'
      Origin = 'EMERION_02.ESTPRO.DESIM2'
      BlobType = ftMemo
      Size = 500
    end
    object EstPro_03VALIMP: TFloatField
      FieldName = 'VALIMP'
      Origin = 'EMERION_02.ESTPRO.VALIMP'
    end
    object EstPro_03DSCIMP: TStringField
      FieldName = 'DSCIMP'
      Origin = 'EMERION_02.ESTPRO.DSCIMP'
      Size = 70
    end
    object EstPro_03DESNC1: TStringField
      FieldName = 'DESNC1'
      Origin = 'EMERION_02.ESTPRO.DESNC1'
      FixedChar = True
      Size = 80
    end
    object EstPro_03DESNC2: TStringField
      FieldName = 'DESNC2'
      Origin = 'EMERION_02.ESTPRO.DESNC2'
      FixedChar = True
      Size = 80
    end
    object EstPro_03DESNC3: TStringField
      FieldName = 'DESNC3'
      Origin = 'EMERION_02.ESTPRO.DESNC3'
      FixedChar = True
      Size = 80
    end
    object EstPro_03DESNC4: TStringField
      FieldName = 'DESNC4'
      Origin = 'EMERION_02.ESTPRO.DESNC4'
      FixedChar = True
      Size = 80
    end
    object EstPro_03DESNC5: TStringField
      FieldName = 'DESNC5'
      Origin = 'EMERION_02.ESTPRO.DESNC5'
      FixedChar = True
      Size = 80
    end
    object EstPro_03DESNC6: TStringField
      FieldName = 'DESNC6'
      Origin = 'EMERION_02.ESTPRO.DESNC6'
      FixedChar = True
      Size = 80
    end
    object EstPro_03DESNC7: TStringField
      FieldName = 'DESNC7'
      Origin = 'EMERION_02.ESTPRO.DESNC7'
      FixedChar = True
      Size = 80
    end
    object EstPro_03DESNC8: TStringField
      FieldName = 'DESNC8'
      Origin = 'EMERION_02.ESTPRO.DESNC8'
      FixedChar = True
      Size = 80
    end
    object EstPro_03FLGLIS: TStringField
      FieldName = 'FLGLIS'
      Origin = 'EMERION_02.ESTPRO.FLGLIS'
      FixedChar = True
      Size = 3
    end
    object EstPro_03PESCUB: TFloatField
      FieldName = 'PESCUB'
      Origin = 'EMERION_02.ESTPRO.PESCUB'
    end
    object EstPro_03ALTPRO: TFloatField
      FieldName = 'ALTPRO'
      Origin = 'EMERION_02.ESTPRO.ALTPRO'
    end
    object EstPro_03COMPRO: TFloatField
      FieldName = 'COMPRO'
      Origin = 'EMERION_02.ESTPRO.COMPRO'
    end
    object EstPro_03LARPRO: TFloatField
      FieldName = 'LARPRO'
      Origin = 'EMERION_02.ESTPRO.LARPRO'
    end
    object EstPro_03GARPRO: TIntegerField
      FieldName = 'GARPRO'
      Origin = 'EMERION_02.ESTPRO.GARPRO'
    end
    object EstPro_03PRODEP: TStringField
      FieldName = 'PRODEP'
      Origin = 'EMERION_02.ESTPRO.PRODEP'
      FixedChar = True
      Size = 18
    end
    object EstPro_03ID2PRO: TStringField
      FieldName = 'ID2PRO'
      Origin = 'EMERION_02.ESTPRO.ID2PRO'
      FixedChar = True
      Size = 30
    end
    object EstPro_03DSRIMP: TStringField
      FieldName = 'DSRIMP'
      Origin = 'EMERION_02.ESTPRO.DSRIMP'
      Size = 70
    end
  end
  object UpPro_03: TUpdateSQL
    ModifySQL.Strings = (
      'update EstPro'
      'set'
      '  DSCPRO = :DSCPRO,'
      '  DSRPRO = :DSRPRO,'
      '  CBAPRO = :CBAPRO,'
      '  CBAEMB = :CBAEMB,'
      '  QTDEMB = :QTDEMB,'
      '  CATPRO = :CATPRO,'
      '  LOCPRO = :LOCPRO,'
      '  REFPRO = :REFPRO,'
      '  ISSPRO = :ISSPRO,'
      '  CODUNE = :CODUNE,'
      '  QTEPRO = :QTEPRO,'
      '  CODUNS = :CODUNS,'
      '  QTSPRO = :QTSPRO,'
      '  FLBPRO = :FLBPRO,'
      '  WEBPRO = :WEBPRO,'
      '  DTCPRO = :DTCPRO,'
      '  OBSPRO = :OBSPRO,'
      '  CODST1 = :CODST1,'
      '  CODST2 = :CODST2,'
      '  CODTIP = :CODTIP,'
      '  CODCOM = :CODCOM,'
      '  CODUSU = :CODUSU,'
      '  PESLIQ = :PESLIQ,'
      '  PESBRT = :PESBRT,'
      '  SAIICM = :SAIICM,'
      '  ENTICM = :ENTICM,'
      '  SAIIPI = :SAIIPI,'
      '  ENTIPI = :ENTIPI,'
      '  IMGPRO = :IMGPRO,'
      '  CODSTE = :CODSTE,'
      '  TIPSTE = :TIPSTE,'
      '  CODSTS = :CODSTS,'
      '  TIPSTS = :TIPSTS,'
      '  CODANT = :CODANT,'
      '  SIMPRO = :SIMPRO,'
      '  NUMPRO = :NUMPRO,'
      '  FLGTRG = :FLGTRG,'
      '  QTDVOL = :QTDVOL,'
      '  CODMRC = :CODMRC,'
      '  IDEPRO = :IDEPRO,'
      '  CODCAT = :CODCAT,'
      '  ICMSAI = :ICMSAI,'
      '  ICMTSD = :ICMTSD,'
      '  ICMENT = :ICMENT,'
      '  ICMTEN = :ICMTEN,'
      '  IPISAI = :IPISAI,'
      '  IPITSD = :IPITSD,'
      '  IPIENT = :IPIENT,'
      '  IPITEN = :IPITEN,'
      '  CLFENT = :CLFENT,'
      '  CLFSAI = :CLFSAI,'
      '  FLGPRO = :FLGPRO,'
      '  FLGKIT = :FLGKIT,'
      '  CBAEM2 = :CBAEM2,'
      '  CBAEM3 = :CBAEM3,'
      '  LIQEMB = :LIQEMB,'
      '  BRTEMB = :BRTEMB,'
      '  CUBPRO = :CUBPRO,'
      '  CXAPRO = :CXAPRO,'
      '  ENTIMP = :ENTIMP,'
      '  CODBAR = :CODBAR,'
      '  DESIMP = :DESIMP,'
      '  DESIM2 = :DESIM2,'
      '  VALIMP = :VALIMP,'
      '  DSCIMP = :DSCIMP,'
      '  DSRIMP = :DSRIMP,'
      '  DESNC1 = :DESNC1,'
      '  DESNC2 = :DESNC2,'
      '  DESNC3 = :DESNC3,'
      '  DESNC4 = :DESNC4,'
      '  DESNC5 = :DESNC5,'
      '  DESNC6 = :DESNC6,'
      '  DESNC7 = :DESNC7,'
      '  DESNC8 = :DESNC8,'
      '  FLGLIS = :FLGLIS,'
      '  PESCUB = :PESCUB,'
      '  ALTPRO = :ALTPRO,'
      '  COMPRO = :COMPRO,'
      '  LARPRO = :LARPRO,'
      '  GARPRO = :GARPRO,'
      '  PRODEP = :PRODEP,'
      '  ID2PRO = :ID2PRO'
      'where'
      '  CODCLP = :OLD_CODCLP and'
      '  CODGRU = :OLD_CODGRU and'
      '  CODSUB = :OLD_CODSUB and'
      '  CODPRO = :OLD_CODPRO')
    InsertSQL.Strings = (
      'insert into EstPro'
      
        '  (CODCLP, CODGRU, CODSUB, CODPRO, DSCPRO, DSRPRO, CBAPRO, CBAEM' +
        'B, QTDEMB, '
      
        '   CATPRO, LOCPRO, REFPRO, ISSPRO, CODUNE, QTEPRO, CODUNS, QTSPR' +
        'O, FLBPRO, '
      
        '   WEBPRO, DTCPRO, OBSPRO, CODST1, CODST2, CODTIP, CODCOM, CODUS' +
        'U, PESLIQ, '
      
        '   PESBRT, SAIICM, ENTICM, SAIIPI, ENTIPI, IMGPRO, CODSTE, TIPST' +
        'E, CODSTS, '
      
        '   TIPSTS, CODANT, SIMPRO, NUMPRO, FLGTRG, QTDVOL, CODMRC, IDEPR' +
        'O, CODCAT, '
      
        '   ICMSAI, ICMTSD, ICMENT, ICMTEN, IPISAI, IPITSD, IPIENT, IPITE' +
        'N, CLFENT, '
      
        '   CLFSAI, FLGPRO, FLGKIT, CBAEM2, CBAEM3, LIQEMB, BRTEMB, CUBPR' +
        'O, CXAPRO, '
      
        '   ENTIMP, NROPRO, CODBAR, QTDBAR, SEQBAR, DESIMP, DESIM2, VALIM' +
        'P, DSCIMP, '
      
        '   DSRIMP, DESNC1, DESNC2, DESNC3, DESNC4, DESNC5, DESNC6, DESNC' +
        '7, DESNC8, '
      
        '   FLGLIS, PESCUB, ALTPRO, COMPRO, LARPRO, GARPRO, PRODEP, ID2PR' +
        'O)'
      'values'
      
        '  (:CODCLP, :CODGRU, :CODSUB, :CODPRO, :DSCPRO, :DSRPRO, :CBAPRO' +
        ', :CBAEMB, '
      
        '   :QTDEMB, :CATPRO, :LOCPRO, :REFPRO, :ISSPRO, :CODUNE, :QTEPRO' +
        ', :CODUNS, '
      
        '   :QTSPRO, :FLBPRO, :WEBPRO, :DTCPRO, :OBSPRO, :CODST1, :CODST2' +
        ', :CODTIP, '
      
        '   :CODCOM, :CODUSU, :PESLIQ, :PESBRT, :SAIICM, :ENTICM, :SAIIPI' +
        ', :ENTIPI, '
      
        '   :IMGPRO, :CODSTE, :TIPSTE, :CODSTS, :TIPSTS, :CODANT, :SIMPRO' +
        ', :NUMPRO, '
      
        '   :FLGTRG, :QTDVOL, :CODMRC, :IDEPRO, :CODCAT, :ICMSAI, :ICMTSD' +
        ', :ICMENT, '
      
        '   :ICMTEN, :IPISAI, :IPITSD, :IPIENT, :IPITEN, :CLFENT, :CLFSAI' +
        ', :FLGPRO, '
      
        '   :FLGKIT, :CBAEM2, :CBAEM3, :LIQEMB, :BRTEMB, :CUBPRO, :CXAPRO' +
        ', :ENTIMP, '
      
        '   :NROPRO, :CODBAR, :QTDBAR, :SEQBAR, :DESIMP, :DESIM2, :VALIMP' +
        ', :DSCIMP, '
      
        '   :DSRIMP, :DESNC1, :DESNC2, :DESNC3, :DESNC4, :DESNC5, :DESNC6' +
        ', :DESNC7, '
      
        '   :DESNC8, :FLGLIS, :PESCUB, :ALTPRO, :COMPRO, :LARPRO, :GARPRO' +
        ', :PRODEP, '
      '   :ID2PRO)')
    DeleteSQL.Strings = (
      'delete from EstPro'
      'where'
      '  CODCLP = :OLD_CODCLP and'
      '  CODGRU = :OLD_CODGRU and'
      '  CODSUB = :OLD_CODSUB and'
      '  CODPRO = :OLD_CODPRO')
    Left = 288
    Top = 600
  end
  object quSQL2: TwwQuery
    Tag = 1
    CachedUpdates = True
    BeforeOpen = quSQL2BeforeOpen
    DatabaseName = 'Emerion_01'
    ValidateWithMask = True
    Left = 260
    Top = 628
  end
  object quSQL3: TwwQuery
    Tag = 1
    CachedUpdates = True
    BeforeOpen = quSQL3BeforeOpen
    DatabaseName = 'Emerion_02'
    ValidateWithMask = True
    Left = 288
    Top = 628
  end
  object EstSte: TwwQuery
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select EstStr.CodStr,'
      '           EstStr.NomStr'
      'From EstStr'
      'Where EstStr.CodStr = :CodStr'
      '     and EstStr.TipStr = :TipStr')
    ValidateWithMask = True
    Left = 133
    Top = 712
    ParamData = <
      item
        DataType = ftString
        Name = 'CodStr'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TipStr'
        ParamType = ptInput
      end>
    object EstSteCODSTR: TStringField
      FieldName = 'CODSTR'
      FixedChar = True
    end
    object EstSteNOMSTR: TStringField
      FieldName = 'NOMSTR'
      FixedChar = True
      Size = 40
    end
  end
  object EstSts: TwwQuery
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select EstStr.CodStr,'
      '           EstStr.NomStr'
      'From EstStr'
      'Where EstStr.CodStr = :CodStr'
      '     and EstStr.TipStr = :TipStr')
    ValidateWithMask = True
    Left = 133
    Top = 692
    ParamData = <
      item
        DataType = ftString
        Name = 'CodStr'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TipStr'
        ParamType = ptInput
      end>
    object StringField1: TStringField
      FieldName = 'CODSTR'
      FixedChar = True
    end
    object StringField3: TStringField
      FieldName = 'NOMSTR'
      FixedChar = True
      Size = 40
    end
  end
  object DsSts: TwwDataSource
    DataSet = EstSts
    OnDataChange = DsProDataChange
    Left = 161
    Top = 692
  end
  object DsSte: TwwDataSource
    DataSet = EstSte
    OnDataChange = DsProDataChange
    Left = 161
    Top = 712
  end
  object EstPro_02: TwwQuery
    CachedUpdates = True
    BeforeOpen = EstPro_02BeforeOpen
    DatabaseName = 'Emerion_01'
    SQL.Strings = (
      'Select * From EstPro'
      'Where EstPro.CodClp = :CodClp'
      '     and EstPro.CodGru = :CodGru'
      '     and EstPro.CodSub = :CodSub'
      '     and EstPro.CodPro = :CodPro')
    UpdateObject = UpPro_02
    ValidateWithMask = True
    Left = 259
    Top = 571
    ParamData = <
      item
        DataType = ftString
        Name = 'CodClp'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CodGru'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CodSub'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CodPro'
        ParamType = ptInput
      end>
    object EstPro_02CODCLP: TStringField
      FieldName = 'CODCLP'
      Origin = 'EMERION_01.ESTPRO.CODCLP'
      FixedChar = True
      Size = 1
    end
    object EstPro_02CODGRU: TStringField
      FieldName = 'CODGRU'
      Origin = 'EMERION_01.ESTPRO.CODGRU'
      FixedChar = True
      Size = 3
    end
    object EstPro_02CODSUB: TStringField
      FieldName = 'CODSUB'
      Origin = 'EMERION_01.ESTPRO.CODSUB'
      FixedChar = True
      Size = 4
    end
    object EstPro_02CODPRO: TStringField
      FieldName = 'CODPRO'
      Origin = 'EMERION_01.ESTPRO.CODPRO'
      FixedChar = True
      Size = 5
    end
    object EstPro_02DSCPRO: TStringField
      FieldName = 'DSCPRO'
      Origin = 'EMERION_01.ESTPRO.DSCPRO'
      FixedChar = True
      Size = 70
    end
    object EstPro_02DSRPRO: TStringField
      FieldName = 'DSRPRO'
      Origin = 'EMERION_01.ESTPRO.DSRPRO'
      FixedChar = True
      Size = 40
    end
    object EstPro_02CBAPRO: TStringField
      FieldName = 'CBAPRO'
      Origin = 'EMERION_01.ESTPRO.CBAPRO'
      FixedChar = True
    end
    object EstPro_02CBAEMB: TStringField
      FieldName = 'CBAEMB'
      Origin = 'EMERION_01.ESTPRO.CBAEMB'
      FixedChar = True
    end
    object EstPro_02QTDEMB: TFloatField
      FieldName = 'QTDEMB'
      Origin = 'EMERION_01.ESTPRO.QTDEMB'
    end
    object EstPro_02CATPRO: TStringField
      FieldName = 'CATPRO'
      Origin = 'EMERION_01.ESTPRO.CATPRO'
      FixedChar = True
    end
    object EstPro_02LOCPRO: TStringField
      FieldName = 'LOCPRO'
      Origin = 'EMERION_01.ESTPRO.LOCPRO'
      FixedChar = True
    end
    object EstPro_02REFPRO: TStringField
      FieldName = 'REFPRO'
      Origin = 'EMERION_01.ESTPRO.REFPRO'
      FixedChar = True
    end
    object EstPro_02ISSPRO: TFloatField
      FieldName = 'ISSPRO'
      Origin = 'EMERION_01.ESTPRO.ISSPRO'
    end
    object EstPro_02CODUNE: TStringField
      FieldName = 'CODUNE'
      Origin = 'EMERION_01.ESTPRO.CODUNE'
      FixedChar = True
      Size = 3
    end
    object EstPro_02QTEPRO: TFloatField
      FieldName = 'QTEPRO'
      Origin = 'EMERION_01.ESTPRO.QTEPRO'
    end
    object EstPro_02CODUNS: TStringField
      FieldName = 'CODUNS'
      Origin = 'EMERION_01.ESTPRO.CODUNS'
      FixedChar = True
      Size = 3
    end
    object EstPro_02QTSPRO: TFloatField
      FieldName = 'QTSPRO'
      Origin = 'EMERION_01.ESTPRO.QTSPRO'
    end
    object EstPro_02FLBPRO: TStringField
      FieldName = 'FLBPRO'
      Origin = 'EMERION_01.ESTPRO.FLBPRO'
      FixedChar = True
      Size = 1
    end
    object EstPro_02WEBPRO: TStringField
      FieldName = 'WEBPRO'
      Origin = 'EMERION_01.ESTPRO.WEBPRO'
      FixedChar = True
      Size = 70
    end
    object EstPro_02DTCPRO: TDateTimeField
      FieldName = 'DTCPRO'
      Origin = 'EMERION_01.ESTPRO.DTCPRO'
    end
    object EstPro_02OBSPRO: TMemoField
      FieldName = 'OBSPRO'
      Origin = 'EMERION_01.ESTPRO.OBSPRO'
      BlobType = ftMemo
      Size = 2000
    end
    object EstPro_02CODST1: TStringField
      FieldName = 'CODST1'
      Origin = 'EMERION_01.ESTPRO.CODST1'
      FixedChar = True
      Size = 1
    end
    object EstPro_02CODST2: TStringField
      FieldName = 'CODST2'
      Origin = 'EMERION_01.ESTPRO.CODST2'
      FixedChar = True
      Size = 2
    end
    object EstPro_02CODTIP: TIntegerField
      FieldName = 'CODTIP'
      Origin = 'EMERION_01.ESTPRO.CODTIP'
    end
    object EstPro_02CODCOM: TStringField
      FieldName = 'CODCOM'
      Origin = 'EMERION_01.ESTPRO.CODCOM'
      FixedChar = True
      Size = 3
    end
    object EstPro_02CODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = 'EMERION_01.ESTPRO.CODUSU'
    end
    object EstPro_02PESLIQ: TFloatField
      FieldName = 'PESLIQ'
      Origin = 'EMERION_01.ESTPRO.PESLIQ'
    end
    object EstPro_02PESBRT: TFloatField
      FieldName = 'PESBRT'
      Origin = 'EMERION_01.ESTPRO.PESBRT'
    end
    object EstPro_02SAIICM: TFloatField
      FieldName = 'SAIICM'
      Origin = 'EMERION_01.ESTPRO.SAIICM'
    end
    object EstPro_02ENTICM: TFloatField
      FieldName = 'ENTICM'
      Origin = 'EMERION_01.ESTPRO.ENTICM'
    end
    object EstPro_02SAIIPI: TFloatField
      FieldName = 'SAIIPI'
      Origin = 'EMERION_01.ESTPRO.SAIIPI'
    end
    object EstPro_02ENTIPI: TFloatField
      FieldName = 'ENTIPI'
      Origin = 'EMERION_01.ESTPRO.ENTIPI'
    end
    object EstPro_02IMGPRO: TBlobField
      FieldName = 'IMGPRO'
      Origin = 'EMERION_01.ESTPRO.IMGPRO'
      BlobType = ftBlob
      Size = 1
    end
    object EstPro_02CODSTE: TStringField
      FieldName = 'CODSTE'
      Origin = 'EMERION_01.ESTPRO.CODSTE'
      FixedChar = True
    end
    object EstPro_02TIPSTE: TStringField
      FieldName = 'TIPSTE'
      Origin = 'EMERION_01.ESTPRO.TIPSTE'
      FixedChar = True
      Size = 7
    end
    object EstPro_02CODSTS: TStringField
      FieldName = 'CODSTS'
      Origin = 'EMERION_01.ESTPRO.CODSTS'
      FixedChar = True
    end
    object EstPro_02TIPSTS: TStringField
      FieldName = 'TIPSTS'
      Origin = 'EMERION_01.ESTPRO.TIPSTS'
      FixedChar = True
      Size = 7
    end
    object EstPro_02CODANT: TStringField
      FieldName = 'CODANT'
      Origin = 'EMERION_01.ESTPRO.CODANT'
      FixedChar = True
      Size = 30
    end
    object EstPro_02SIMPRO: TStringField
      FieldName = 'SIMPRO'
      Origin = 'EMERION_01.ESTPRO.SIMPRO'
      FixedChar = True
      Size = 10
    end
    object EstPro_02NUMPRO: TStringField
      FieldName = 'NUMPRO'
      Origin = 'EMERION_01.ESTPRO.NUMPRO'
      FixedChar = True
      Size = 30
    end
    object EstPro_02FLGTRG: TStringField
      FieldName = 'FLGTRG'
      Origin = 'EMERION_01.ESTPRO.FLGTRG'
      FixedChar = True
      Size = 1
    end
    object EstPro_02QTDVOL: TIntegerField
      FieldName = 'QTDVOL'
      Origin = 'EMERION_01.ESTPRO.QTDVOL'
    end
    object EstPro_02CODMRC: TIntegerField
      FieldName = 'CODMRC'
      Origin = 'EMERION_01.ESTPRO.CODMRC'
    end
    object EstPro_02IDEPRO: TStringField
      FieldName = 'IDEPRO'
      Origin = 'EMERION_01.ESTPRO.IDEPRO'
      FixedChar = True
      Size = 30
    end
    object EstPro_02CODCAT: TIntegerField
      FieldName = 'CODCAT'
      Origin = 'EMERION_01.ESTPRO.CODCAT'
    end
    object EstPro_02ICMSAI: TStringField
      FieldName = 'ICMSAI'
      Origin = 'EMERION_01.ESTPRO.ICMSAI'
      FixedChar = True
    end
    object EstPro_02ICMTSD: TStringField
      FieldName = 'ICMTSD'
      Origin = 'EMERION_01.ESTPRO.ICMTSD'
      FixedChar = True
      Size = 7
    end
    object EstPro_02ICMENT: TStringField
      FieldName = 'ICMENT'
      Origin = 'EMERION_01.ESTPRO.ICMENT'
      FixedChar = True
    end
    object EstPro_02ICMTEN: TStringField
      FieldName = 'ICMTEN'
      Origin = 'EMERION_01.ESTPRO.ICMTEN'
      FixedChar = True
      Size = 7
    end
    object EstPro_02IPISAI: TStringField
      FieldName = 'IPISAI'
      Origin = 'EMERION_01.ESTPRO.IPISAI'
      FixedChar = True
      Size = 30
    end
    object EstPro_02IPITSD: TStringField
      FieldName = 'IPITSD'
      Origin = 'EMERION_01.ESTPRO.IPITSD'
      FixedChar = True
      Size = 7
    end
    object EstPro_02IPIENT: TStringField
      FieldName = 'IPIENT'
      Origin = 'EMERION_01.ESTPRO.IPIENT'
      FixedChar = True
      Size = 30
    end
    object EstPro_02IPITEN: TStringField
      FieldName = 'IPITEN'
      Origin = 'EMERION_01.ESTPRO.IPITEN'
      FixedChar = True
      Size = 7
    end
    object EstPro_02CLFENT: TStringField
      FieldName = 'CLFENT'
      Origin = 'EMERION_01.ESTPRO.CLFENT'
      FixedChar = True
      Size = 30
    end
    object EstPro_02CLFSAI: TStringField
      FieldName = 'CLFSAI'
      Origin = 'EMERION_01.ESTPRO.CLFSAI'
      FixedChar = True
      Size = 30
    end
    object EstPro_02FLGPRO: TStringField
      FieldName = 'FLGPRO'
      Origin = 'EMERION_01.ESTPRO.FLGPRO'
      FixedChar = True
      Size = 3
    end
    object EstPro_02FLGKIT: TStringField
      FieldName = 'FLGKIT'
      Origin = 'EMERION_01.ESTPRO.FLGKIT'
      FixedChar = True
      Size = 3
    end
    object EstPro_02CBAEM2: TStringField
      FieldName = 'CBAEM2'
      Origin = 'EMERION_01.ESTPRO.CBAEM2'
      FixedChar = True
    end
    object EstPro_02CBAEM3: TStringField
      FieldName = 'CBAEM3'
      Origin = 'EMERION_01.ESTPRO.CBAEM3'
      FixedChar = True
    end
    object EstPro_02LIQEMB: TFloatField
      FieldName = 'LIQEMB'
      Origin = 'EMERION_01.ESTPRO.LIQEMB'
    end
    object EstPro_02BRTEMB: TFloatField
      FieldName = 'BRTEMB'
      Origin = 'EMERION_01.ESTPRO.BRTEMB'
    end
    object EstPro_02CUBPRO: TFloatField
      FieldName = 'CUBPRO'
      Origin = 'EMERION_01.ESTPRO.CUBPRO'
    end
    object EstPro_02CXAPRO: TFloatField
      FieldName = 'CXAPRO'
      Origin = 'EMERION_01.ESTPRO.CXAPRO'
    end
    object EstPro_02ENTIMP: TFloatField
      FieldName = 'ENTIMP'
      Origin = 'EMERION_01.ESTPRO.ENTIMP'
    end
    object EstPro_02CODBAR: TIntegerField
      FieldName = 'CODBAR'
      Origin = 'EMERION_01.ESTPRO.CODBAR'
    end
    object EstPro_02QTDBAR: TIntegerField
      FieldName = 'QTDBAR'
      Origin = 'EMERION_01.ESTPRO.QTDBAR'
    end
    object EstPro_02SEQBAR: TIntegerField
      FieldName = 'SEQBAR'
      Origin = 'EMERION_01.ESTPRO.SEQBAR'
    end
    object EstPro_02NROPRO: TIntegerField
      FieldName = 'NROPRO'
      Origin = 'EMERION_01.ESTPRO.NROPRO'
    end
    object EstPro_02DESIMP: TMemoField
      FieldName = 'DESIMP'
      Origin = 'EMERION_01.ESTPRO.DESIMP'
      BlobType = ftMemo
      Size = 500
    end
    object EstPro_02DESIM2: TMemoField
      FieldName = 'DESIM2'
      Origin = 'EMERION_01.ESTPRO.DESIM2'
      BlobType = ftMemo
      Size = 500
    end
    object EstPro_02VALIMP: TFloatField
      FieldName = 'VALIMP'
      Origin = 'EMERION_01.ESTPRO.VALIMP'
    end
    object EstPro_02DSCIMP: TStringField
      FieldName = 'DSCIMP'
      Origin = 'EMERION_01.ESTPRO.DSCIMP'
      Size = 70
    end
    object EstPro_02DESNC1: TStringField
      FieldName = 'DESNC1'
      Origin = 'EMERION_01.ESTPRO.DESNC1'
      FixedChar = True
      Size = 80
    end
    object EstPro_02DESNC2: TStringField
      FieldName = 'DESNC2'
      Origin = 'EMERION_01.ESTPRO.DESNC2'
      FixedChar = True
      Size = 80
    end
    object EstPro_02DESNC3: TStringField
      FieldName = 'DESNC3'
      Origin = 'EMERION_01.ESTPRO.DESNC3'
      FixedChar = True
      Size = 80
    end
    object EstPro_02DESNC4: TStringField
      FieldName = 'DESNC4'
      Origin = 'EMERION_01.ESTPRO.DESNC4'
      FixedChar = True
      Size = 80
    end
    object EstPro_02DESNC5: TStringField
      FieldName = 'DESNC5'
      Origin = 'EMERION_01.ESTPRO.DESNC5'
      FixedChar = True
      Size = 80
    end
    object EstPro_02DESNC6: TStringField
      FieldName = 'DESNC6'
      Origin = 'EMERION_01.ESTPRO.DESNC6'
      FixedChar = True
      Size = 80
    end
    object EstPro_02DESNC7: TStringField
      FieldName = 'DESNC7'
      Origin = 'EMERION_01.ESTPRO.DESNC7'
      FixedChar = True
      Size = 80
    end
    object EstPro_02DESNC8: TStringField
      FieldName = 'DESNC8'
      Origin = 'EMERION_01.ESTPRO.DESNC8'
      FixedChar = True
      Size = 80
    end
    object EstPro_02FLGLIS: TStringField
      FieldName = 'FLGLIS'
      Origin = 'EMERION_01.ESTPRO.FLGLIS'
      FixedChar = True
      Size = 3
    end
    object EstPro_02PESCUB: TFloatField
      FieldName = 'PESCUB'
      Origin = 'EMERION_01.ESTPRO.PESCUB'
    end
    object EstPro_02ALTPRO: TFloatField
      FieldName = 'ALTPRO'
      Origin = 'EMERION_01.ESTPRO.ALTPRO'
    end
    object EstPro_02COMPRO: TFloatField
      FieldName = 'COMPRO'
      Origin = 'EMERION_01.ESTPRO.COMPRO'
    end
    object EstPro_02LARPRO: TFloatField
      FieldName = 'LARPRO'
      Origin = 'EMERION_01.ESTPRO.LARPRO'
    end
    object EstPro_02GARPRO: TIntegerField
      FieldName = 'GARPRO'
      Origin = 'EMERION_01.ESTPRO.GARPRO'
    end
    object EstPro_02PRODEP: TStringField
      FieldName = 'PRODEP'
      Origin = 'EMERION_01.ESTPRO.PRODEP'
      FixedChar = True
      Size = 18
    end
    object EstPro_02DSRIMP: TStringField
      FieldName = 'DSRIMP'
      Origin = 'EMERION_01.ESTPRO.DSRIMP'
      Size = 70
    end
    object EstPro_02ID2PRO: TStringField
      FieldName = 'ID2PRO'
      Origin = 'EMERION_01.ESTPRO.ID2PRO'
      Size = 30
    end
  end
  object UpPro_02: TUpdateSQL
    ModifySQL.Strings = (
      'update EstPro'
      'set'
      '  DSCPRO = :DSCPRO,'
      '  DSRPRO = :DSRPRO,'
      '  CBAPRO = :CBAPRO,'
      '  CBAEMB = :CBAEMB,'
      '  QTDEMB = :QTDEMB,'
      '  CATPRO = :CATPRO,'
      '  LOCPRO = :LOCPRO,'
      '  REFPRO = :REFPRO,'
      '  ISSPRO = :ISSPRO,'
      '  CODUNE = :CODUNE,'
      '  QTEPRO = :QTEPRO,'
      '  CODUNS = :CODUNS,'
      '  QTSPRO = :QTSPRO,'
      '  FLBPRO = :FLBPRO,'
      '  WEBPRO = :WEBPRO,'
      '  DTCPRO = :DTCPRO,'
      '  OBSPRO = :OBSPRO,'
      '  CODST1 = :CODST1,'
      '  CODST2 = :CODST2,'
      '  CODTIP = :CODTIP,'
      '  CODCOM = :CODCOM,'
      '  CODUSU = :CODUSU,'
      '  PESLIQ = :PESLIQ,'
      '  PESBRT = :PESBRT,'
      '  SAIICM = :SAIICM,'
      '  ENTICM = :ENTICM,'
      '  SAIIPI = :SAIIPI,'
      '  ENTIPI = :ENTIPI,'
      '  IMGPRO = :IMGPRO,'
      '  CODSTE = :CODSTE,'
      '  TIPSTE = :TIPSTE,'
      '  CODSTS = :CODSTS,'
      '  TIPSTS = :TIPSTS,'
      '  CODANT = :CODANT,'
      '  SIMPRO = :SIMPRO,'
      '  NUMPRO = :NUMPRO,'
      '  FLGTRG = :FLGTRG,'
      '  QTDVOL = :QTDVOL,'
      '  CODMRC = :CODMRC,'
      '  IDEPRO = :IDEPRO,'
      '  CODCAT = :CODCAT,'
      '  ICMSAI = :ICMSAI,'
      '  ICMTSD = :ICMTSD,'
      '  ICMENT = :ICMENT,'
      '  ICMTEN = :ICMTEN,'
      '  IPISAI = :IPISAI,'
      '  IPITSD = :IPITSD,'
      '  IPIENT = :IPIENT,'
      '  IPITEN = :IPITEN,'
      '  CLFENT = :CLFENT,'
      '  CLFSAI = :CLFSAI,'
      '  FLGPRO = :FLGPRO,'
      '  FLGKIT = :FLGKIT,'
      '  CBAEM2 = :CBAEM2,'
      '  CBAEM3 = :CBAEM3,'
      '  LIQEMB = :LIQEMB,'
      '  BRTEMB = :BRTEMB,'
      '  CUBPRO = :CUBPRO,'
      '  CXAPRO = :CXAPRO,'
      '  ENTIMP = :ENTIMP,'
      '  DESIMP = :DESIMP,'
      '  CODBAR = :CODBAR,'
      '  DESIM2 = :DESIM2,'
      '  VALIMP = :VALIMP,'
      '  DSCIMP = :DSCIMP,'
      '  DSRIMP = :DSRIMP,'
      '  DESNC1 = :DESNC1,'
      '  DESNC2 = :DESNC2,'
      '  DESNC3 = :DESNC3,'
      '  DESNC4 = :DESNC4,'
      '  DESNC5 = :DESNC5,'
      '  DESNC6 = :DESNC6,'
      '  DESNC7 = :DESNC7,'
      '  DESNC8 = :DESNC8,'
      '  FLGLIS = :FLGLIS,'
      '  PESCUB = :PESCUB,'
      '  ALTPRO = :ALTPRO,'
      '  COMPRO = :COMPRO,'
      '  LARPRO = :LARPRO,'
      '  GARPRO = :GARPRO,'
      '  PRODEP = :PRODEP,'
      '  ID2PRO = :ID2PRO'
      'where'
      '  CODCLP = :OLD_CODCLP and'
      '  CODGRU = :OLD_CODGRU and'
      '  CODSUB = :OLD_CODSUB and'
      '  CODPRO = :OLD_CODPRO')
    InsertSQL.Strings = (
      'insert into EstPro'
      '  (CODCLP, CODGRU, CODSUB, CODPRO, DSCPRO, DSRPRO, CBAPRO, '
      'CBAEMB, QTDEMB, '
      
        '   CATPRO, LOCPRO, REFPRO, ISSPRO, CODUNE, QTEPRO, CODUNS, QTSPR' +
        'O, '
      'FLBPRO, '
      '   WEBPRO, DTCPRO, OBSPRO, CODST1, CODST2, CODTIP, CODCOM, '
      'CODUSU, PESLIQ, '
      
        '   PESBRT, SAIICM, ENTICM, SAIIPI, ENTIPI, IMGPRO, CODSTE, TIPST' +
        'E, '
      'CODSTS, '
      
        '   TIPSTS, CODANT, SIMPRO, NUMPRO, FLGTRG, QTDVOL, CODMRC, IDEPR' +
        'O, '
      'CODCAT, '
      
        '   ICMSAI, ICMTSD, ICMENT, ICMTEN, IPISAI, IPITSD, IPIENT, IPITE' +
        'N, CLFENT, '
      
        '   CLFSAI, FLGPRO, FLGKIT, CBAEM2, CBAEM3, LIQEMB, BRTEMB, CUBPR' +
        'O, '
      'CXAPRO, '
      
        '   ENTIMP, NROPRO, DESIMP, CODBAR, QTDBAR, SEQBAR, DESIM2, VALIM' +
        'P, '
      'DSCIMP, '
      
        '   DSRIMP, DESNC1, DESNC2, DESNC3, DESNC4, DESNC5, DESNC6, DESNC' +
        '7, '
      'DESNC8, '
      
        '   FLGLIS, PESCUB, ALTPRO, COMPRO, LARPRO, GARPRO, PRODEP, ID2PR' +
        'O)'
      'values'
      
        '  (:CODCLP, :CODGRU, :CODSUB, :CODPRO, :DSCPRO, :DSRPRO, :CBAPRO' +
        ', '
      ':CBAEMB, '
      
        '   :QTDEMB, :CATPRO, :LOCPRO, :REFPRO, :ISSPRO, :CODUNE, :QTEPRO' +
        ', '
      ':CODUNS, '
      
        '   :QTSPRO, :FLBPRO, :WEBPRO, :DTCPRO, :OBSPRO, :CODST1, :CODST2' +
        ', '
      ':CODTIP, '
      
        '   :CODCOM, :CODUSU, :PESLIQ, :PESBRT, :SAIICM, :ENTICM, :SAIIPI' +
        ', :ENTIPI, '
      
        '   :IMGPRO, :CODSTE, :TIPSTE, :CODSTS, :TIPSTS, :CODANT, :SIMPRO' +
        ', '
      ':NUMPRO, '
      
        '   :FLGTRG, :QTDVOL, :CODMRC, :IDEPRO, :CODCAT, :ICMSAI, :ICMTSD' +
        ', '
      ':ICMENT, '
      
        '   :ICMTEN, :IPISAI, :IPITSD, :IPIENT, :IPITEN, :CLFENT, :CLFSAI' +
        ', :FLGPRO, '
      
        '   :FLGKIT, :CBAEM2, :CBAEM3, :LIQEMB, :BRTEMB, :CUBPRO, :CXAPRO' +
        ', '
      ':ENTIMP, '
      
        '   :NROPRO, :DESIMP, :CODBAR, :QTDBAR, :SEQBAR, :DESIM2, :VALIMP' +
        ', '
      ':DSCIMP, '
      
        '   :DSRIMP, :DESNC1, :DESNC2, :DESNC3, :DESNC4, :DESNC5, :DESNC6' +
        ', '
      ':DESNC7, '
      
        '   :DESNC8, :FLGLIS, :PESCUB, :ALTPRO, :COMPRO, :LARPRO, :GARPRO' +
        ', '
      ':PRODEP, '
      '   :ID2PRO)')
    DeleteSQL.Strings = (
      'delete from EstPro'
      'where'
      '  CODCLP = :OLD_CODCLP and'
      '  CODGRU = :OLD_CODGRU and'
      '  CODSUB = :OLD_CODSUB and'
      '  CODPRO = :OLD_CODPRO')
    Left = 288
    Top = 571
  end
  object dsEstSt1: TwwDataSource
    DataSet = EstSt1
    OnDataChange = DsProDataChange
    Left = 537
    Top = 572
  end
  object EstSt1: TwwQuery
    DatabaseName = 'ISade'
    SQL.Strings = (
      
        'select st1.codst1,st1.nomst1, CAST(st1.codst1||'#39' - '#39'||st1.nomst1' +
        ' as VARCHAR(240)) CodNom  from estst1 st1 order by st1.codst1')
    ValidateWithMask = True
    Left = 509
    Top = 572
    object EstSt1CODST1: TStringField
      FieldName = 'CODST1'
      FixedChar = True
      Size = 1
    end
    object EstSt1NOMST1: TStringField
      FieldName = 'NOMST1'
      Size = 250
    end
    object EstSt1CODNOM: TStringField
      FieldName = 'CODNOM'
      Size = 240
    end
  end
end
