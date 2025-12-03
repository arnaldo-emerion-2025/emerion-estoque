inherited fmManUfe2: TfmManUfe2
  Left = 362
  Top = 69
  Caption = 'Aliquotas de ICMS para Operações Interestaduais'
  ClientHeight = 472
  ClientWidth = 641
  Color = 15788249
  Position = poDesigned
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 7
    Top = 78
    Width = 50
    Height = 13
    Caption = 'Descrição:'
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
  object pcUfe: TPageControl
    Left = -2
    Top = 0
    Width = 640
    Height = 465
    ActivePage = pcPag2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Style = tsButtons
    TabOrder = 0
    TabWidth = 115
    OnChange = pcUfeChange
    object pcPag1: TTabSheet
      Caption = ' &Visualizar '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnShow = pcPag1Show
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 632
        Height = 434
        Align = alClient
        BevelOuter = bvNone
        Color = 15788249
        TabOrder = 0
        object Shape3: TShape
          Left = 0
          Top = 76
          Width = 243
          Height = 18
          Brush.Color = 14789952
          Pen.Color = 11764252
          Shape = stRoundRect
        end
        object Shape1: TShape
          Left = 0
          Top = 0
          Width = 231
          Height = 18
          Brush.Color = 14789952
          Pen.Color = 11764252
          Shape = stRoundRect
        end
        object Label2: TLabel
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
        object Label10: TLabel
          Left = 2
          Top = 26
          Width = 29
          Height = 13
          Caption = 'Sigla :'
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
          Left = 4
          Top = 78
          Width = 208
          Height = 13
          Caption = 'Unidades da Federação Selecionadas'
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
          Left = 0
          Top = 413
          Width = 634
          Height = 21
          Brush.Color = 14789952
          Pen.Color = 11764252
          Shape = stRoundRect
        end
        object Label4: TLabel
          Left = 2
          Top = 50
          Width = 40
          Height = 13
          Caption = 'Estado :'
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
          Left = 4
          Top = 417
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
        object Shape4: TShape
          Left = 232
          Top = 8
          Width = 399
          Height = 3
          Brush.Color = 11106843
          Pen.Color = 14789952
        end
        object Shape2: TShape
          Left = 244
          Top = 84
          Width = 389
          Height = 3
          Brush.Color = 11106843
          Pen.Color = 14789952
        end
        object EdPsqSigUfe: TdxColorEdit
          Left = 48
          Top = 22
          Width = 89
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
          CharCase = ecUpperCase
          CorDeFoco = clInfoBk
        end
        object rgOrdem: TRadioGroup
          Left = 431
          Top = 15
          Width = 98
          Height = 57
          Caption = ' Exibido Por '
          ItemIndex = 0
          Items.Strings = (
            'Sigla'
            'Descrição')
          TabOrder = 2
        end
        object rgBusca: TRadioGroup
          Left = 532
          Top = 15
          Width = 101
          Height = 57
          Caption = ' Tipo de Busca'
          ItemIndex = 0
          Items.Strings = (
            'Iniciais'
            'Inteligente')
          TabOrder = 3
        end
        object Bbselecionar: TBitBtn
          Left = 279
          Top = 27
          Width = 149
          Height = 45
          Caption = '&Selecionar'
          Default = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = BbselecionarClick
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
        object Panel3: TPanel
          Left = 0
          Top = 99
          Width = 632
          Height = 310
          BevelOuter = bvNone
          Color = 14789952
          TabOrder = 4
          object grUfe: ThGrid
            Tag = 1
            Left = 2
            Top = 2
            Width = 628
            Height = 305
            Selected.Strings = (
              'SIGUFE'#9'5'#9'Sigla'#9'F'
              'NOMUFE'#9'21'#9'Estado'#9'F'
              'PERICM'#9'16'#9'AL. Interestadual'#9'F'
              'DSCUFE'#9'14'#9'(%) Desc. ICMS'#9'F'
              'DSCCOM'#9'19'#9'  (%) Desc.Comercial'#9'F'
              'REDINT'#9'19'#9'Importado(SINIF20)'#9'F')
            IniAttributes.Delimiter = ';;'
            TitleColor = clBtnFace
            FixedCols = 0
            ShowHorzScrollBar = True
            BorderStyle = bsNone
            Color = 16577773
            DataSource = DsUfe
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
            OnDblClick = grUfeDblClick
            IndicatorColor = icYellow
            CorDeFoco = clInfoBk
          end
        end
        object EdPsqNomUfe: TdxColorEdit
          Left = 48
          Top = 46
          Width = 218
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
          CharCase = ecUpperCase
          CorDeFoco = clInfoBk
        end
      end
    end
    object pcPag2: TTabSheet
      Caption = '&Identificação'
      ImageIndex = 1
      OnShow = pcPag2Show
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 632
        Height = 434
        Align = alClient
        BevelOuter = bvNone
        Color = 15788249
        TabOrder = 0
        object Shape5: TShape
          Left = 0
          Top = 75
          Width = 632
          Height = 28
          Brush.Color = 14789952
          Pen.Color = 11764252
          Shape = stRoundRect
        end
        object Shape9: TShape
          Left = 0
          Top = 0
          Width = 231
          Height = 18
          Brush.Color = 14789952
          Pen.Color = 11764252
          Shape = stRoundRect
        end
        object Label5: TLabel
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
        object Shape10: TShape
          Left = 232
          Top = 8
          Width = 399
          Height = 3
          Brush.Color = 11106843
          Pen.Color = 14789952
        end
        object Label7: TLabel
          Left = 2
          Top = 49
          Width = 40
          Height = 13
          Caption = 'Estado :'
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
          Left = 2
          Top = 25
          Width = 29
          Height = 13
          Caption = 'Sigla :'
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
          Left = 276
          Top = 24
          Width = 141
          Height = 13
          Caption = '(%) Desc. ICMS Obrigatorio :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 4
          Top = 82
          Width = 198
          Height = 13
          Caption = '(%) Aliquotas ICMS Interestaduais'
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
          Left = 6
          Top = 322
          Width = 164
          Height = 13
          Caption = '(%) Aliquota ICMS Interestadual :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 365
          Top = 49
          Width = 142
          Height = 13
          Caption = 'Inscrição de Substituto Trib. :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 465
          Top = 24
          Width = 123
          Height = 13
          Caption = '(%) Desconto Comercial :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 6
          Top = 354
          Width = 164
          Height = 13
          Caption = '(%) Aliquota Importado(SINIF 20)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 6
          Top = 390
          Width = 154
          Height = 13
          Caption = '(%) Aliquota Interna do Destino'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object EdNomUfe: TdxDBColorEdit
          Left = 48
          Top = 45
          Width = 217
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
          DataField = 'NOMUFE'
          DataSource = DsUfe
          CorDeFoco = clInfoBk
        end
        object EdSigUfe: TdxDBColorEdit
          Left = 48
          Top = 21
          Width = 89
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
          DataField = 'SIGUFE'
          DataSource = DsUfe
          CorDeFoco = clInfoBk
          StoredValues = 1
        end
        object EdDscUfe: TdxDBColorCurrencyEdit
          Left = 418
          Top = 20
          Width = 43
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
          TabOrder = 1
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'DSCUFE'
          DataSource = DsUfe
          DisplayFormat = '###,###,##0.00'
          Nullable = False
          UseThousandSeparator = True
          CorDeFoco = clInfoBk
          Height = 24
          StoredValues = 1
        end
        object Panel6: TPanel
          Left = 405
          Top = 77
          Width = 225
          Height = 25
          BevelOuter = bvNone
          Color = clNavy
          TabOrder = 7
          object nvIcm: ThDBNavigator
            Left = -56
            Top = -6
            Width = 281
            Height = 31
            BevelOuter = bvNone
            Caption = ' '
            Color = 14789952
            TabOrder = 0
            OnSalva = nvIcmSalva
            DataSource = DsIcm
            BaseAtualizar = 'EstClpEstGruEstSub'
            UsaAppend = True
            Salvar = False
            EnabledButtons = [nbAtualizar, nbInclui, nbExclui, nbSalva, nbCancela, nbNavega]
          end
        end
        object Panel5: TPanel
          Left = 0
          Top = 110
          Width = 632
          Height = 190
          BevelOuter = bvNone
          Color = 14789952
          TabOrder = 6
          object grIcm: ThGrid
            Tag = 1
            Left = 2
            Top = 2
            Width = 628
            Height = 186
            Selected.Strings = (
              'SEQICM'#9'33'#9'No. '#9'F'
              'SIGUFE'#9'7'#9'UF'#9'F'
              'PERICM'#9'17'#9'(%) Aliquota ICMS'#9'F'
              'REDINT'#9'24'#9'       Importados (SINIF20)'#9'F'
              'ALIQ_INTERNA'#9'16'#9'(%) Aliq. Interna'#9'F')
            IniAttributes.Delimiter = ';;'
            TitleColor = clBtnFace
            FixedCols = 0
            ShowHorzScrollBar = True
            BorderStyle = bsNone
            Color = 16577773
            DataSource = DsIcm
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
        object EdPerIcm: TdxDBColorCurrencyEdit
          Left = 173
          Top = 318
          Width = 100
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
          TabOrder = 5
          OnKeyDown = EdPerIcmKeyDown
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PERICM'
          DataSource = DsIcm
          DisplayFormat = '###,###,##0.00'
          Nullable = False
          UseThousandSeparator = True
          CorDeFoco = clInfoBk
          Height = 24
          StoredValues = 1
        end
        object EdSubTrb: TdxDBColorEdit
          Left = 510
          Top = 45
          Width = 124
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
          DataField = 'SUBTRB'
          DataSource = DsUfe
          CorDeFoco = clInfoBk
        end
        object EdDscCom: TdxDBColorCurrencyEdit
          Left = 591
          Top = 20
          Width = 43
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
          TabOrder = 2
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'DSCCOM'
          DataSource = DsUfe
          DisplayFormat = '###,###,##0.00'
          Nullable = False
          UseThousandSeparator = True
          CorDeFoco = clInfoBk
          Height = 24
          StoredValues = 1
        end
        object dxDBColorCurrencyEdit1: TdxDBColorCurrencyEdit
          Left = 172
          Top = 350
          Width = 100
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
          TabOrder = 8
          OnKeyDown = EdPerIcmKeyDown
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'REDINT'
          DataSource = DsIcm
          DisplayFormat = '###,###,##0.00'
          Nullable = False
          UseThousandSeparator = True
          CorDeFoco = clInfoBk
          Height = 24
          StoredValues = 1
        end
        object dxDBColorCurrencyEdit2: TdxDBColorCurrencyEdit
          Left = 172
          Top = 382
          Width = 100
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
          OnKeyDown = EdPerIcmKeyDown
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'ALIQ_INTERNA'
          DataSource = DsIcm
          DisplayFormat = '###,###,##0.00'
          Nullable = False
          UseThousandSeparator = True
          CorDeFoco = clInfoBk
          Height = 24
          StoredValues = 1
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 321
    Top = 0
    Width = 313
    Height = 25
    BevelOuter = bvNone
    Color = clNavy
    TabOrder = 1
    object nvUfe: ThDBNavigator
      Left = -56
      Top = -6
      Width = 369
      Height = 31
      BevelOuter = bvNone
      Caption = ' '
      Color = 15788249
      TabOrder = 0
      OnImprime = nvUfeImprime
      OnSalva = nvUfeSalva
      DataSource = DsUfe
      BaseAtualizar = 'CepTitFinPlcFinSubFinBanGerUfeCmpPed'
      UsaAppend = False
      Salvar = False
    end
  end
  object UpUfe: TUpdateSQL
    ModifySQL.Strings = (
      'update GerUfe'
      'set'
      '  NOMUFE = :NOMUFE,'
      '  DSCUFE = :DSCUFE,'
      '  NROUFE = :NROUFE,'
      '  SUBTRB = :SUBTRB,'
      '  DSCCOM = :DSCCOM,'
      '  QTDICM = :QTDICM,'
      '  SEQICM = :SEQICM,'
      '  FLGTRG = :FLGTRG,'
      '  QTDPRO = :QTDPRO,'
      '  SEQPRO = :SEQPRO'
      'where'
      '  SIGUFE = :OLD_SIGUFE')
    InsertSQL.Strings = (
      'insert into GerUfe'
      
        '  (SIGUFE, NOMUFE, DSCUFE, NROUFE, SUBTRB, DSCCOM, QTDICM, SEQIC' +
        'M, FLGTRG, '
      '   QTDPRO, SEQPRO)'
      'values'
      
        '  (:SIGUFE, :NOMUFE, :DSCUFE, :NROUFE, :SUBTRB, :DSCCOM, :QTDICM' +
        ', :SEQICM, '
      '   :FLGTRG, :QTDPRO, :SEQPRO)')
    DeleteSQL.Strings = (
      'delete from GerUfe'
      'where'
      '  SIGUFE = :OLD_SIGUFE')
    Top = 531
  end
  object GerUfe: TwwQuery
    Active = True
    CachedUpdates = True
    BeforeEdit = GerUfeBeforeEdit
    AfterPost = GerUfeAfterPost
    AfterCancel = GerUfeAfterCancel
    BeforeDelete = GerUfeBeforeDelete
    OnNewRecord = GerUfeNewRecord
    DatabaseName = 'ISade'
    SessionName = 'Default'
    SQL.Strings = (
      'Select gu.*, gi.pericm,gi.redint From GerUfe gu'
      'left join gericm gi on gu.sigufe = gi.sigufe'
      'Order by SigUfe')
    UpdateObject = UpUfe
    ValidateWithMask = True
    Top = 475
    object GerUfeSIGUFE: TStringField
      DisplayLabel = 'Sigla'
      DisplayWidth = 5
      FieldName = 'SIGUFE'
      Origin = 'ISADE.GERUFE.SIGUFE'
      FixedChar = True
      Size = 2
    end
    object GerUfeNOMUFE: TStringField
      DisplayLabel = 'Estado'
      DisplayWidth = 21
      FieldName = 'NOMUFE'
      Origin = 'ISADE.GERUFE.NOMUFE'
      FixedChar = True
      Size = 40
    end
    object GerUfePERICM: TFloatField
      DisplayLabel = 'AL. Interestadual'
      DisplayWidth = 16
      FieldName = 'PERICM'
    end
    object GerUfeDSCUFE: TFloatField
      DisplayLabel = '(%) Desc. ICMS'
      DisplayWidth = 14
      FieldName = 'DSCUFE'
      Origin = 'ISADE.GERUFE.SIGUFE'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object GerUfeDSCCOM: TFloatField
      DisplayLabel = '  (%) Desc.Comercial'
      DisplayWidth = 19
      FieldName = 'DSCCOM'
      Origin = 'ISADE.GERUFE.DSCCOM'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object GerUfeREDINT: TFloatField
      DisplayLabel = 'Importado(SINIF20)'
      DisplayWidth = 19
      FieldName = 'REDINT'
    end
    object GerUfeNROUFE: TIntegerField
      FieldName = 'NROUFE'
      Origin = 'ISADE.GERUFE.NROUFE'
      Visible = False
    end
    object GerUfeSUBTRB: TStringField
      DisplayWidth = 18
      FieldName = 'SUBTRB'
      Origin = 'ISADE.GERUFE.SUBTRB'
      Visible = False
      FixedChar = True
      Size = 18
    end
    object GerUfeQTDICM: TIntegerField
      DisplayWidth = 10
      FieldName = 'QTDICM'
      Origin = 'ISADE.GERUFE.QTDICM'
      Visible = False
    end
    object GerUfeSEQICM: TIntegerField
      DisplayWidth = 10
      FieldName = 'SEQICM'
      Origin = 'ISADE.GERUFE.SEQICM'
      Visible = False
    end
    object GerUfeFLGTRG: TStringField
      DisplayWidth = 1
      FieldName = 'FLGTRG'
      Origin = 'ISADE.GERUFE.FLGTRG'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object GerUfeQTDPRO: TIntegerField
      DisplayWidth = 10
      FieldName = 'QTDPRO'
      Origin = 'ISADE.GERUFE.QTDPRO'
      Visible = False
    end
    object GerUfeSEQPRO: TIntegerField
      DisplayWidth = 10
      FieldName = 'SEQPRO'
      Origin = 'ISADE.GERUFE.SEQPRO'
      Visible = False
    end
  end
  object DsUfe: TwwDataSource
    DataSet = GerUfe
    OnDataChange = DsUfeDataChange
    Left = 28
    Top = 475
  end
  object GerIcm: TwwQuery
    Active = True
    CachedUpdates = True
    BeforeEdit = GerIcmBeforeEdit
    AfterPost = GerIcmAfterPost
    AfterCancel = GerIcmAfterCancel
    BeforeDelete = GerIcmBeforeDelete
    OnNewRecord = GerIcmNewRecord
    DatabaseName = 'ISade'
    SessionName = 'Default'
    SQL.Strings = (
      'Select * From GerIcm'
      'Where SigUfe = :SigUfe'
      'Order by SigUfe,SeqIcm')
    UpdateObject = UpIcm
    ValidateWithMask = True
    Top = 503
    ParamData = <
      item
        DataType = ftString
        Name = 'SigUfe'
        ParamType = ptInput
        Value = 'SP'
      end>
    object GerIcmSEQICM: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'No. '
      DisplayWidth = 33
      FieldName = 'SEQICM'
      Origin = 'ISADE.GERICM.SEQICM'
    end
    object GerIcmSIGUFE: TStringField
      DisplayLabel = 'UF'
      DisplayWidth = 7
      FieldName = 'SIGUFE'
      Origin = 'ISADE.GERICM.SIGUFE'
      FixedChar = True
      Size = 2
    end
    object GerIcmPERICM: TFloatField
      DisplayLabel = '(%) Aliquota ICMS'
      DisplayWidth = 17
      FieldName = 'PERICM'
      Origin = 'ISADE.GERICM.PERICM'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object GerIcmREDINT: TFloatField
      DisplayLabel = '       Importados (SINIF20)'
      DisplayWidth = 24
      FieldName = 'REDINT'
      Origin = 'ISADE.GERICM.REDINT'
      DisplayFormat = '#0.00'
    end
    object GerIcmALIQ_INTERNA: TFloatField
      DisplayLabel = '(%) Aliq. Interna'
      DisplayWidth = 16
      FieldName = 'ALIQ_INTERNA'
      Origin = 'ISADE.GERICM.ALIQ_INTERNA'
      DisplayFormat = '#0.00'
    end
    object GerIcmNROICM: TIntegerField
      DisplayWidth = 10
      FieldName = 'NROICM'
      Origin = 'ISADE.GERICM.NROICM'
      Visible = False
    end
    object GerIcmFLGTRG: TStringField
      DisplayWidth = 7
      FieldName = 'FLGTRG'
      Origin = 'ISADE.GERICM.FLGTRG'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object DsIcm: TwwDataSource
    DataSet = GerIcm
    OnDataChange = DsIcmDataChange
    Left = 28
    Top = 503
  end
  object UpIcm: TUpdateSQL
    ModifySQL.Strings = (
      'update GerIcm'
      'set'
      '  PERICM = :PERICM,'
      '  NROICM = :NROICM,'
      '  FLGTRG = :FLGTRG,'
      '  REDINT = :REDINT,'
      '  ALIQ_INTERNA = :ALIQ_INTERNA'
      'where'
      '  SIGUFE = :OLD_SIGUFE and'
      '  SEQICM = :OLD_SEQICM')
    InsertSQL.Strings = (
      'insert into GerIcm'
      '  (SIGUFE, SEQICM, PERICM, NROICM, FLGTRG, REDINT, ALIQ_INTERNA)'
      'values'
      
        '  (:SIGUFE, :SEQICM, :PERICM, :NROICM, :FLGTRG, :REDINT,:ALIQ_IN' +
        'TERNA)')
    DeleteSQL.Strings = (
      'delete from GerIcm'
      'where'
      '  SIGUFE = :OLD_SIGUFE and'
      '  SEQICM = :OLD_SEQICM')
    Left = 28
    Top = 531
  end
  object quSql: TwwQuery
    Tag = 1
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Top = 559
  end
  object ppReport: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 270000
    PrinterSetup.mmPaperWidth = 210000
    Template.FileName = 'C:\_WGSYS\Emerion\Estoque\DualComp\Relatorios\RManUfe.rtm'
    Units = utMillimeters
    UserName = 'Report'
    CachePages = True
    DeviceType = 'Screen'
    Top = 587
    Version = '5.0'
    mmColumnWidth = 197300
    object hbReport: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 13494
      mmPrintPosition = 0
      object ppLabel20: TppLabel
        UserName = 'QrTitulo1'
        Caption = 'Aliquotas de ICMS por Unidades da Federação'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 1323
        mmWidth = 78317
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Sigla'
        Color = clNavy
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 529
        mmTop = 9260
        mmWidth = 7056
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Estado'
        Color = clNavy
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 11377
        mmTop = 9260
        mmWidth = 9454
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Alignment = taRightJustify
        Caption = '% Desc ICMS'
        Color = clNavy
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 126471
        mmTop = 9260
        mmWidth = 20638
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Alignment = taRightJustify
        Caption = '% Desc Comercial'
        Color = clNavy
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 147902
        mmTop = 9260
        mmWidth = 25964
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Emitido Em    :   '
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 102129
        mmTop = 1323
        mmWidth = 21519
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtDateTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 124354
        mmTop = 1323
        mmWidth = 30427
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Página No.   '
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 155575
        mmTop = 1323
        mmWidth = 16228
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 172509
        mmTop = 1323
        mmWidth = 1588
        BandType = 0
      end
    end
    object dbReport: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
      object ppSigUfe: TppDBText
        UserName = 'SigUfe'
        DataField = 'SIGUFE'
        DataPipeline = ppDBPipeline
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 3440
        mmLeft = 529
        mmTop = 1058
        mmWidth = 10054
        BandType = 4
      end
      object ppNomUfe: TppDBText
        UserName = 'CodTdo1'
        DataField = 'NOMUFE'
        DataPipeline = ppDBPipeline
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 3440
        mmLeft = 11377
        mmTop = 1058
        mmWidth = 114036
        BandType = 4
      end
      object ppDscUfe: TppDBText
        UserName = 'DscUfe'
        Alignment = taRightJustify
        DataField = 'DSCUFE'
        DataPipeline = ppDBPipeline
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 3440
        mmLeft = 126471
        mmTop = 1058
        mmWidth = 20638
        BandType = 4
      end
      object ppDscCom: TppDBText
        UserName = 'DscUfe1'
        Alignment = taRightJustify
        DataField = 'DSCCOM'
        DataPipeline = ppDBPipeline
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 3440
        mmLeft = 147902
        mmTop = 1058
        mmWidth = 25964
        BandType = 4
      end
    end
  end
  object ppDBPipeline: TppDBPipeline
    DataSource = DsUfe
    UserName = 'DBPipeline'
    Left = 28
    Top = 587
  end
  object DsGru: TwwDataSource
    DataSet = EstGru
    Left = 93
    Top = 503
  end
  object EstGru: TwwQuery
    CachedUpdates = True
    DatabaseName = 'ISade'
    SessionName = 'Default'
    SQL.Strings = (
      'Select * From EstGru'
      'Where Exists(Select * From EstPro Where CodClp = :CodClp'
      
        '                                                            and ' +
        'CodGru = EstGru.CodGru)'
      'Order by NomGru'
      '')
    ValidateWithMask = True
    Left = 65
    Top = 503
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodClp'
        ParamType = ptInput
      end>
    object EstGruCODGRU: TStringField
      FieldName = 'CODGRU'
      Origin = 'ISADE.ESTGRU.CODGRU'
      FixedChar = True
      Size = 3
    end
    object EstGruNOMGRU: TStringField
      FieldName = 'NOMGRU'
      Origin = 'ISADE.ESTGRU.NOMGRU'
      FixedChar = True
      Size = 40
    end
  end
  object EstSub: TwwQuery
    CachedUpdates = True
    DatabaseName = 'ISade'
    SessionName = 'Default'
    SQL.Strings = (
      'Select * From EstSub'
      'Where CodGru = :CodGru'
      '     and Exists(Select * From EstPro Where CodClp = :CodClp'
      
        '                                                            and ' +
        'CodGru = EstSub.CodGru'
      
        '                                                            and ' +
        'CodSub = EstSub.CodSub)'
      'Order by NomSub'
      '')
    ValidateWithMask = True
    Left = 65
    Top = 531
    ParamData = <
      item
        DataType = ftString
        Name = 'CodGru'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CodClp'
        ParamType = ptInput
      end>
    object EstSubCODGRU: TStringField
      FieldName = 'CODGRU'
      Origin = 'ISADE.ESTSUB.CODGRU'
      FixedChar = True
      Size = 3
    end
    object EstSubCODSUB: TStringField
      FieldName = 'CODSUB'
      Origin = 'ISADE.ESTSUB.CODSUB'
      FixedChar = True
      Size = 4
    end
    object EstSubNOMSUB: TStringField
      FieldName = 'NOMSUB'
      Origin = 'ISADE.ESTSUB.NOMSUB'
      FixedChar = True
      Size = 40
    end
  end
  object DsSub: TwwDataSource
    DataSet = EstSub
    Left = 93
    Top = 531
  end
  object DsPro: TwwDataSource
    DataSet = EstPro
    Left = 93
    Top = 559
  end
  object EstPro: TwwQuery
    CachedUpdates = True
    DatabaseName = 'ISade'
    SessionName = 'Default'
    SQL.Strings = (
      'Select * From EstPro'
      'Where CodClp = :CodClp'
      '     and CodGru = :CodGru'
      '     and CodSub = :CodSub'
      'Order by DscPro'
      '')
    ValidateWithMask = True
    Left = 65
    Top = 559
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
      end>
    object EstProCODCLP: TStringField
      FieldName = 'CODCLP'
      Origin = 'ISADE.ESTPRO.CODCLP'
      FixedChar = True
      Size = 1
    end
    object EstProCODGRU: TStringField
      FieldName = 'CODGRU'
      Origin = 'ISADE.ESTPRO.CODGRU'
      FixedChar = True
      Size = 3
    end
    object EstProCODSUB: TStringField
      FieldName = 'CODSUB'
      Origin = 'ISADE.ESTPRO.CODSUB'
      FixedChar = True
      Size = 4
    end
    object EstProCODPRO: TStringField
      FieldName = 'CODPRO'
      Origin = 'ISADE.ESTPRO.CODPRO'
      FixedChar = True
      Size = 5
    end
    object EstProDSCPRO: TStringField
      FieldName = 'DSCPRO'
      Origin = 'ISADE.ESTPRO.DSCPRO'
      FixedChar = True
      Size = 70
    end
    object EstProDSRPRO: TStringField
      FieldName = 'DSRPRO'
      Origin = 'ISADE.ESTPRO.DSRPRO'
      FixedChar = True
      Size = 40
    end
  end
  object FinTmo: TwwQuery
    Active = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * From FinTmo')
    PictureMasks.Strings = (
      'NUMCRE'#9'#[#][#]'#9'T'#9'T')
    ValidateWithMask = True
    Left = 65
    Top = 587
    object FinTmoNOMTMO: TStringField
      DisplayLabel = 'Descrição'
      DisplayWidth = 40
      FieldName = 'NOMTMO'
      Origin = 'ISADE.FINTMO.NOMTMO'
      FixedChar = True
      Size = 40
    end
    object FinTmoCODTMO: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODTMO'
      Origin = 'ISADE.FINTMO.CODTMO'
      Visible = False
    end
  end
  object DsTmo: TwwDataSource
    DataSet = FinTmo
    Left = 93
    Top = 587
  end
  object GerPro: TwwQuery
    CachedUpdates = True
    BeforeEdit = GerProBeforeEdit
    AfterPost = GerProAfterPost
    AfterCancel = GerProAfterCancel
    BeforeDelete = GerProBeforeDelete
    OnNewRecord = GerProNewRecord
    DatabaseName = 'ISade'
    SessionName = 'Default'
    SQL.Strings = (
      'Select GerPro.*,'
      
        '           CodClp || _UNICODE_FSS '#39' - '#39' || CodGru || _UNICODE_FS' +
        'S '#39'.'#39' || CodSub || _UNICODE_FSS '#39'.'#39' || CodPro as CodIte From Ger' +
        'Pro'
      'Where GerPro.SigUfe = :SigUfe'
      
        'Order by GerPro.SigUfe,GerPro.CodClp,GerPro.CodGru,GerPro.CodSub' +
        ',GerPro.CodPro')
    UpdateObject = UpPro
    ValidateWithMask = True
    Left = 65
    Top = 475
    ParamData = <
      item
        DataType = ftString
        Name = 'SigUfe'
        ParamType = ptInput
      end>
    object GerProCODITE: TStringField
      DisplayLabel = 'Nosso Código'
      DisplayWidth = 18
      FieldName = 'CODITE'
      Size = 18
    end
    object GerProDSCPRO: TStringField
      DisplayLabel = 'Descrição do Item'
      DisplayWidth = 83
      FieldName = 'DSCPRO'
      FixedChar = True
      Size = 40
    end
    object GerProSIGUFE: TStringField
      FieldName = 'SIGUFE'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object GerProSEQPRO: TIntegerField
      FieldName = 'SEQPRO'
      Visible = False
    end
    object GerProCODCLP: TStringField
      FieldName = 'CODCLP'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object GerProCODGRU: TStringField
      FieldName = 'CODGRU'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object GerProCODSUB: TStringField
      FieldName = 'CODSUB'
      Visible = False
      FixedChar = True
      Size = 4
    end
    object GerProCODPRO: TStringField
      FieldName = 'CODPRO'
      Visible = False
      FixedChar = True
      Size = 5
    end
    object GerProNROPRO: TIntegerField
      FieldName = 'NROPRO'
      Visible = False
    end
    object GerProFLGTRG: TStringField
      FieldName = 'FLGTRG'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object GerProREGICM: TStringField
      DisplayWidth = 20
      FieldName = 'REGICM'
      Visible = False
      FixedChar = True
    end
    object GerProTIPICM: TStringField
      DisplayWidth = 7
      FieldName = 'TIPICM'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object GerProFLGDES: TStringField
      DisplayWidth = 3
      FieldName = 'FLGDES'
      Visible = False
      FixedChar = True
      Size = 3
    end
  end
  object dsGer: TwwDataSource
    DataSet = GerPro
    OnDataChange = dsGerDataChange
    Left = 93
    Top = 475
  end
  object UpPro: TUpdateSQL
    ModifySQL.Strings = (
      'update GerPro'
      'set'
      '  CODCLP = :CODCLP,'
      '  CODGRU = :CODGRU,'
      '  CODSUB = :CODSUB,'
      '  CODPRO = :CODPRO,'
      '  DSCPRO = :DSCPRO,'
      '  NROPRO = :NROPRO,'
      '  FLGTRG = :FLGTRG,'
      '  REGICM = :REGICM,'
      '  TIPICM = :TIPICM,'
      '  FLGDES = :FLGDES'
      'where'
      '  SIGUFE = :OLD_SIGUFE and'
      '  SEQPRO = :OLD_SEQPRO')
    InsertSQL.Strings = (
      'insert into GerPro'
      
        '(SIGUFE, SEQPRO, CODCLP, CODGRU, CODSUB, CODPRO, DSCPRO, NROPRO,' +
        ' '
      'FLGTRG, REGICM, TIPICM, FLGDES)'
      'values'
      '(:SIGUFE, :SEQPRO, :CODCLP, :CODGRU, :CODSUB, :CODPRO, :DSCPRO, '
      ':NROPRO, :FLGTRG, :REGICM, :TIPICM, :FLGDES)')
    DeleteSQL.Strings = (
      'delete from GerPro'
      'where'
      '  SIGUFE = :OLD_SIGUFE and'
      '  SEQPRO = :OLD_SEQPRO')
    Left = 66
    Top = 615
  end
  object quSQL2: TwwQuery
    Tag = 1
    CachedUpdates = True
    DatabaseName = 'Emerion_01'
    ValidateWithMask = True
    Left = 129
    Top = 475
  end
  object quSQL3: TwwQuery
    Tag = 1
    CachedUpdates = True
    DatabaseName = 'Emerion_02'
    ValidateWithMask = True
    Left = 157
    Top = 475
  end
  object EstIcm: TwwQuery
    Active = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select CodIcm,NomIcm,PerIcm From EstIcm '
      'Where EstIcm.CodIcm = :CodIcm'
      '     and EstIcm.TipIcm = :TipIcm')
    ValidateWithMask = True
    Left = 129
    Top = 503
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
    object EstIcmCODICM: TStringField
      FieldName = 'CODICM'
      Origin = 'ISADE.ESTICM.CODICM'
      FixedChar = True
    end
    object EstIcmPERICM: TFloatField
      FieldName = 'PERICM'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
  end
  object DsEstIcm: TwwDataSource
    DataSet = EstIcm
    Left = 157
    Top = 503
  end
  object GerPro_01: TwwQuery
    Tag = 99
    CachedUpdates = True
    DatabaseName = 'Emerion_01'
    SessionName = 'Default'
    SQL.Strings = (
      'Select * From GerPro'
      'Where GerPro.SigUfe = :SigUfe'
      '     and GerPro.CodClp = :CodClp'
      '     and GerPro.CodGru = :CodGru'
      '     and GerPro.CodSub = :CodSub'
      '     and GerPro.CodPro = :CodPro')
    UpdateObject = UpPro_01
    ValidateWithMask = True
    Left = 200
    Top = 475
    ParamData = <
      item
        DataType = ftString
        Name = 'SigUfe'
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
    object GerPro_01SIGUFE: TStringField
      FieldName = 'SIGUFE'
      Origin = 'EMERION_01.GERPRO.SIGUFE'
      FixedChar = True
      Size = 2
    end
    object GerPro_01SEQPRO: TIntegerField
      FieldName = 'SEQPRO'
      Origin = 'EMERION_01.GERPRO.SEQPRO'
    end
    object GerPro_01CODCLP: TStringField
      FieldName = 'CODCLP'
      Origin = 'EMERION_01.GERPRO.CODCLP'
      FixedChar = True
      Size = 1
    end
    object GerPro_01CODGRU: TStringField
      FieldName = 'CODGRU'
      Origin = 'EMERION_01.GERPRO.CODGRU'
      FixedChar = True
      Size = 3
    end
    object GerPro_01CODSUB: TStringField
      FieldName = 'CODSUB'
      Origin = 'EMERION_01.GERPRO.CODSUB'
      FixedChar = True
      Size = 4
    end
    object GerPro_01CODPRO: TStringField
      FieldName = 'CODPRO'
      Origin = 'EMERION_01.GERPRO.CODPRO'
      FixedChar = True
      Size = 5
    end
    object GerPro_01DSCPRO: TStringField
      FieldName = 'DSCPRO'
      Origin = 'EMERION_01.GERPRO.DSCPRO'
      FixedChar = True
      Size = 40
    end
    object GerPro_01NROPRO: TIntegerField
      FieldName = 'NROPRO'
      Origin = 'EMERION_01.GERPRO.NROPRO'
    end
    object GerPro_01FLGTRG: TStringField
      FieldName = 'FLGTRG'
      Origin = 'EMERION_01.GERPRO.FLGTRG'
      FixedChar = True
      Size = 1
    end
    object GerPro_01REGICM: TStringField
      FieldName = 'REGICM'
      Origin = 'EMERION_01.GERPRO.REGICM'
      FixedChar = True
    end
    object GerPro_01TIPICM: TStringField
      FieldName = 'TIPICM'
      Origin = 'EMERION_01.GERPRO.TIPICM'
      FixedChar = True
      Size = 7
    end
    object GerPro_01FLGDES: TStringField
      FieldName = 'FLGDES'
      Origin = 'EMERION_01.GERPRO.FLGDES'
      FixedChar = True
      Size = 3
    end
  end
  object GerPro_02: TwwQuery
    Tag = 99
    CachedUpdates = True
    DatabaseName = 'Emerion_02'
    SessionName = 'Default'
    SQL.Strings = (
      'Select * From GerPro'
      'Where GerPro.SigUfe = :SigUfe'
      '     and GerPro.CodClp = :CodClp'
      '     and GerPro.CodGru = :CodGru'
      '     and GerPro.CodSub = :CodSub'
      '     and GerPro.CodPro = :CodPro')
    UpdateObject = UpPro_02
    ValidateWithMask = True
    Left = 200
    Top = 503
    ParamData = <
      item
        DataType = ftString
        Name = 'SigUfe'
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
    object GerPro_02SIGUFE: TStringField
      FieldName = 'SIGUFE'
      Origin = 'EMERION_02.GERPRO.SIGUFE'
      FixedChar = True
      Size = 2
    end
    object GerPro_02SEQPRO: TIntegerField
      FieldName = 'SEQPRO'
      Origin = 'EMERION_02.GERPRO.SEQPRO'
    end
    object GerPro_02CODCLP: TStringField
      FieldName = 'CODCLP'
      Origin = 'EMERION_02.GERPRO.CODCLP'
      FixedChar = True
      Size = 1
    end
    object GerPro_02CODGRU: TStringField
      FieldName = 'CODGRU'
      Origin = 'EMERION_02.GERPRO.CODGRU'
      FixedChar = True
      Size = 3
    end
    object GerPro_02CODSUB: TStringField
      FieldName = 'CODSUB'
      Origin = 'EMERION_02.GERPRO.CODSUB'
      FixedChar = True
      Size = 4
    end
    object GerPro_02CODPRO: TStringField
      FieldName = 'CODPRO'
      Origin = 'EMERION_02.GERPRO.CODPRO'
      FixedChar = True
      Size = 5
    end
    object GerPro_02DSCPRO: TStringField
      FieldName = 'DSCPRO'
      Origin = 'EMERION_02.GERPRO.DSCPRO'
      FixedChar = True
      Size = 40
    end
    object GerPro_02NROPRO: TIntegerField
      FieldName = 'NROPRO'
      Origin = 'EMERION_02.GERPRO.NROPRO'
    end
    object GerPro_02FLGTRG: TStringField
      FieldName = 'FLGTRG'
      Origin = 'EMERION_02.GERPRO.FLGTRG'
      FixedChar = True
      Size = 1
    end
    object GerPro_02REGICM: TStringField
      FieldName = 'REGICM'
      Origin = 'EMERION_02.GERPRO.REGICM'
      FixedChar = True
    end
    object GerPro_02TIPICM: TStringField
      FieldName = 'TIPICM'
      Origin = 'EMERION_02.GERPRO.TIPICM'
      FixedChar = True
      Size = 7
    end
    object GerPro_02FLGDES: TStringField
      FieldName = 'FLGDES'
      Origin = 'EMERION_02.GERPRO.FLGDES'
      FixedChar = True
      Size = 3
    end
  end
  object UpPro_01: TUpdateSQL
    ModifySQL.Strings = (
      'update GerPro'
      'set'
      '  CODCLP = :CODCLP,'
      '  CODGRU = :CODGRU,'
      '  CODSUB = :CODSUB,'
      '  CODPRO = :CODPRO,'
      '  DSCPRO = :DSCPRO,'
      '  NROPRO = :NROPRO,'
      '  FLGTRG = :FLGTRG,'
      '  REGICM = :REGICM,'
      '  TIPICM = :TIPICM,'
      '  FLGDES = :FLGDES'
      'where'
      '  SIGUFE = :OLD_SIGUFE and'
      '  SEQPRO = :OLD_SEQPRO')
    InsertSQL.Strings = (
      'insert into GerPro'
      
        '  (SIGUFE, SEQPRO, CODCLP, CODGRU, CODSUB, CODPRO, DSCPRO, NROPR' +
        'O, FLGTRG, '
      '   REGICM, TIPICM, FLGDES)'
      'values'
      
        '  (:SIGUFE, :SEQPRO, :CODCLP, :CODGRU, :CODSUB, :CODPRO, :DSCPRO' +
        ', :NROPRO, '
      '   :FLGTRG, :REGICM, :TIPICM, :FLGDES)')
    DeleteSQL.Strings = (
      'delete from GerPro'
      'where'
      '  SIGUFE = :OLD_SIGUFE and'
      '  SEQPRO = :OLD_SEQPRO')
    Left = 228
    Top = 475
  end
  object UpPro_02: TUpdateSQL
    ModifySQL.Strings = (
      'update GerPro'
      'set'
      '  CODCLP = :CODCLP,'
      '  CODGRU = :CODGRU,'
      '  CODSUB = :CODSUB,'
      '  CODPRO = :CODPRO,'
      '  DSCPRO = :DSCPRO,'
      '  NROPRO = :NROPRO,'
      '  FLGTRG = :FLGTRG,'
      '  REGICM = :REGICM,'
      '  TIPICM = :TIPICM,'
      '  FLGDES = :FLGDES'
      'where'
      '  SIGUFE = :OLD_SIGUFE and'
      '  SEQPRO = :OLD_SEQPRO')
    InsertSQL.Strings = (
      'insert into GerPro'
      
        '  (SIGUFE, SEQPRO, CODCLP, CODGRU, CODSUB, CODPRO, DSCPRO, NROPR' +
        'O, FLGTRG, '
      '   REGICM, TIPICM, FLGDES)'
      'values'
      
        '  (:SIGUFE, :SEQPRO, :CODCLP, :CODGRU, :CODSUB, :CODPRO, :DSCPRO' +
        ', :NROPRO, '
      '   :FLGTRG, :REGICM, :TIPICM, :FLGDES)')
    DeleteSQL.Strings = (
      'delete from GerPro'
      'where'
      '  SIGUFE = :OLD_SIGUFE and'
      '  SEQPRO = :OLD_SEQPRO')
    Left = 228
    Top = 503
  end
end
