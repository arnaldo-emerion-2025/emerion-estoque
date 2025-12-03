object FrmRegraCofins: TFrmRegraCofins
  Left = 597
  Top = 227
  BorderStyle = bsSingle
  Caption = 'Regra de Cofins'
  ClientHeight = 322
  ClientWidth = 576
  Color = 15788249
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  PrintScale = poPrintToFit
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 576
    Height = 322
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Style = tsButtons
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Visualizar'
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 568
        Height = 105
        Align = alTop
        Caption = 'Informações para Pesquisa'
        TabOrder = 0
        object Label1: TLabel
          Left = 8
          Top = 56
          Width = 40
          Height = 13
          Caption = 'Código'
        end
        object Label2: TLabel
          Left = 8
          Top = 16
          Width = 58
          Height = 13
          Caption = 'Descrição'
        end
        object edPsqId_Regra_Cofins: TEdit
          Left = 8
          Top = 72
          Width = 70
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object edPsqDescricao: TEdit
          Left = 8
          Top = 32
          Width = 353
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object rgOrdem: TRadioGroup
          Left = 369
          Top = 15
          Width = 94
          Height = 88
          Align = alRight
          Caption = ' Exibido Por '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ItemIndex = 0
          Items.Strings = (
            'Código'
            'Descrição')
          ParentFont = False
          TabOrder = 2
        end
        object rgBusca: TRadioGroup
          Left = 463
          Top = 15
          Width = 103
          Height = 88
          Align = alRight
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
          TabOrder = 3
        end
        object BbPesquisa: TBitBtn
          Left = 195
          Top = 59
          Width = 166
          Height = 40
          Caption = '&Selecionar'
          Default = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
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
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 105
        Width = 568
        Height = 184
        Align = alTop
        Caption = 'Regras Selecionadas'
        TabOrder = 1
        object DBGrid1: TDBGrid
          Left = 2
          Top = 15
          Width = 564
          Height = 167
          Align = alClient
          DataSource = dsRegraCofins
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              FieldName = 'ID_REGRA_PIS'
              Title.Caption = 'Código'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Title.Caption = 'Descrição'
              Width = 464
              Visible = True
            end>
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Identificação'
      ImageIndex = 1
      object GroupBox3: TGroupBox
        Left = 0
        Top = 0
        Width = 568
        Height = 291
        Align = alClient
        Caption = 'Informações Principais'
        TabOrder = 0
        object Label3: TLabel
          Left = 8
          Top = 16
          Width = 40
          Height = 13
          Caption = 'Código'
          FocusControl = DBEdit1
        end
        object Label4: TLabel
          Left = 104
          Top = 16
          Width = 58
          Height = 13
          Caption = 'Descrição'
          FocusControl = DBEdit2
        end
        object Label5: TLabel
          Left = 8
          Top = 72
          Width = 109
          Height = 13
          Caption = 'Situação Tributária'
          FocusControl = DBEdit3
        end
        object Label6: TLabel
          Left = 8
          Top = 128
          Width = 49
          Height = 13
          Caption = 'Alíquota'
          FocusControl = DBEdit4
        end
        object DBEdit1: TDBEdit
          Left = 8
          Top = 32
          Width = 64
          Height = 21
          DataField = 'ID_REGRA_COFINS'
          DataSource = dsRegraCofins
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 104
          Top = 32
          Width = 453
          Height = 21
          CharCase = ecUpperCase
          DataField = 'DESCRICAO'
          DataSource = dsRegraCofins
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 8
          Top = 88
          Width = 64
          Height = 21
          DataField = 'ID_ESTCOF'
          DataSource = dsRegraCofins
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 104
          Top = 88
          Width = 455
          Height = 21
          DataField = 'NOMCOF'
          DataSource = dsRegraCofins
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object DBEdit4: TDBEdit
          Left = 8
          Top = 144
          Width = 64
          Height = 21
          DataField = 'ALIQUOTA'
          DataSource = dsRegraCofins
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object DBCheckBox1: TDBCheckBox
          Left = 104
          Top = 144
          Width = 97
          Height = 17
          Caption = 'Tributado'
          DataField = 'TRIBUTADO'
          DataSource = dsRegraCofins
          TabOrder = 5
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 360
    Top = 3
    Width = 209
    Height = 25
    Color = 15788249
    TabOrder = 1
    object bNovo: TBitBtn
      Left = 7
      Top = 0
      Width = 41
      Height = 25
      Caption = 'Novo'
      TabOrder = 0
      OnClick = bNovoClick
      Layout = blGlyphTop
    end
    object bAlterar: TBitBtn
      Left = 47
      Top = 0
      Width = 41
      Height = 25
      Caption = 'Alterar'
      TabOrder = 1
      OnClick = bAlterarClick
    end
    object bExcluir: TBitBtn
      Left = 87
      Top = 0
      Width = 41
      Height = 25
      Caption = 'Excluir'
      TabOrder = 2
      OnClick = bExcluirClick
    end
    object bSalvar: TBitBtn
      Left = 127
      Top = 0
      Width = 41
      Height = 25
      Caption = 'Salvar'
      TabOrder = 3
      OnClick = bSalvarClick
    end
    object bCancelar: TBitBtn
      Left = 167
      Top = 0
      Width = 41
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 4
      OnClick = bCancelarClick
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 280
    Top = 4
    Width = 88
    Height = 25
    DataSource = dsRegraCofins
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 2
  end
  object upRegra_Cofins: TUpdateSQL
    ModifySQL.Strings = (
      'update Regra_Cofins'
      'set'
      '  ID_REGRA_COFINS = :ID_REGRA_COFINS,'
      '  DESCRICAO = :DESCRICAO,'
      '  ID_ESTCOF = :ID_ESTCOF,'
      '  TRIBUTADO = :TRIBUTADO,'
      '  ALIQUOTA = :ALIQUOTA'
      'where'
      '  ID_REGRA_COFINS = :OLD_ID_REGRA_COFINS')
    InsertSQL.Strings = (
      'insert into Regra_Cofins'
      '  (ID_REGRA_COFINS, DESCRICAO, ID_ESTCOF, TRIBUTADO, ALIQUOTA)'
      'values'
      
        '  (:ID_REGRA_COFINS, :DESCRICAO, :ID_ESTCOF, :TRIBUTADO, :ALIQUO' +
        'TA)')
    DeleteSQL.Strings = (
      'delete from Regra_Cofins'
      'where'
      '  ID_REGRA_COFINS = :OLD_ID_REGRA_COFINS')
    Left = 10
    Top = 281
  end
  object Regra_Cofins: TwwQuery
    CachedUpdates = True
    AfterPost = Regra_CofinsAfterPost
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * From Regra_Cofins'
      'Order by ID_REGRA_COFINS')
    UpdateObject = upRegra_Cofins
    ValidateWithMask = True
    Left = 10
    Top = 253
    object Regra_CofinsID_REGRA_COFINS: TIntegerField
      FieldName = 'ID_REGRA_COFINS'
      Origin = 'ISADE.REGRA_COFINS.ID_REGRA_COFINS'
    end
    object Regra_CofinsDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'ISADE.REGRA_COFINS.DESCRICAO'
      Size = 100
    end
    object Regra_CofinsID_ESTCOF: TIntegerField
      FieldName = 'ID_ESTCOF'
      Origin = 'ISADE.REGRA_COFINS.ID_ESTCOF'
    end
    object Regra_CofinsTRIBUTADO: TIntegerField
      FieldName = 'TRIBUTADO'
      Origin = 'ISADE.REGRA_COFINS.TRIBUTADO'
    end
    object Regra_CofinsALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
      Origin = 'ISADE.REGRA_COFINS.ALIQUOTA'
    end
    object Regra_CofinsNOMCOF: TStringField
      FieldKind = fkLookup
      FieldName = 'NOMCOF'
      LookupDataSet = EstCof
      LookupKeyFields = 'ID_ESTCOF'
      LookupResultField = 'NOMCOF'
      KeyFields = 'ID_ESTCOF'
      Size = 200
      Lookup = True
    end
  end
  object dsRegraCofins: TwwDataSource
    DataSet = Regra_Cofins
    Left = 38
    Top = 253
  end
  object EstCof: TwwQuery
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select '
      'ID_ESTCOF,'
      'SIGNFE ||'#39'-'#39'|| NOMCOF as NOMCOF'
      'From EstCof'
      'Order By signfe')
    ValidateWithMask = True
    Left = 74
    Top = 253
    object EstCofID_ESTCOF: TIntegerField
      FieldName = 'ID_ESTCOF'
      Origin = 'ISADE.ESTCOF.ID_ESTCOF'
    end
    object EstCofNOMCOF: TStringField
      FieldName = 'NOMCOF'
      Origin = 'ISADE.ESTCOF.SIGNFE'
      Size = 103
    end
  end
  object dsEstCof: TwwDataSource
    DataSet = EstCof
    Left = 102
    Top = 253
  end
end
