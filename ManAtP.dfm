object fmManAtP: TfmManAtP
  Left = 582
  Top = 179
  BorderStyle = bsSingle
  Caption = 'Atualiza tabela de preços'
  ClientHeight = 442
  ClientWidth = 612
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 137
    Width = 612
    Height = 305
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 610
      Height = 303
      Align = alClient
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CODCLP'
          Title.Alignment = taCenter
          Title.Caption = 'CLP'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 31
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODGRU'
          Title.Alignment = taCenter
          Title.Caption = 'Grupo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 42
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODSUB'
          Title.Alignment = taCenter
          Title.Caption = 'Sub-Grupo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 67
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODPRO'
          Title.Alignment = taCenter
          Title.Caption = 'Produto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 54
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DSCPRO'
          Title.Caption = 'Descrição'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 299
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VBTAB'
          Title.Alignment = taRightJustify
          Title.Caption = 'Preço'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 75
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 612
    Height = 137
    Align = alTop
    TabOrder = 1
    object bPsqCat: TSpeedButton
      Left = 395
      Top = 24
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
    object Label1: TLabel
      Left = 24
      Top = 8
      Width = 147
      Height = 13
      Caption = 'Local da tabela de preço:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 24
      Top = 48
      Width = 44
      Height = 13
      Caption = 'Tabela:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 24
      Top = 88
      Width = 49
      Height = 13
      Caption = 'Empresa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edpath: TEdit
      Left = 24
      Top = 24
      Width = 361
      Height = 21
      ReadOnly = True
      TabOrder = 0
    end
    object btnCarregaTabela: TButton
      Left = 244
      Top = 51
      Width = 140
      Height = 33
      Caption = 'Carrega arquivo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnCarregaTabelaClick
    end
    object btnAtualiza: TButton
      Left = 244
      Top = 91
      Width = 140
      Height = 33
      Caption = 'Atualizada Tabela'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btnAtualizaClick
    end
    object cboTab: TComboBox
      Left = 24
      Top = 64
      Width = 129
      Height = 21
      ItemHeight = 13
      TabOrder = 3
      Items.Strings = (
        'Tabela 1'
        'Tabela 2'
        'Tabela 3'
        'Tabela 4'
        'Tabela 5')
    end
    object cboEmp: TComboBox
      Left = 24
      Top = 104
      Width = 201
      Height = 21
      ItemHeight = 13
      TabOrder = 4
    end
  end
  object DataSource1: TDataSource
    Left = 64
    Top = 200
  end
  object EstPro: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select EstPro.*,'
      
        '           CodClp || _UNICODE_FSS '#39' - '#39' || CodGru || _UNICODE_FS' +
        'S '#39'.'#39' || CodSub || _UNICODE_FSS '#39'.'#39' || CodPro as CodIte'
      'From EstPro'
      'Where EstPro.CodClp = :CodClp'
      'Order by EstPro.CodClp,EstPro.CodGru,EstPro.CodSub,EstPro.CodPro')
    ControlType.Strings = (
      'FLBPRO;CheckBox;*; ')
    ValidateWithMask = True
    Left = 96
    Top = 201
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
    object EstProENTIMP: TFloatField
      DisplayWidth = 10
      FieldName = 'ENTIMP'
      Visible = False
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
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object EstProDSCIMP: TStringField
      DisplayWidth = 70
      FieldName = 'DSCIMP'
      Visible = False
      Size = 70
    end
    object EstProDSRIMP: TStringField
      DisplayWidth = 40
      FieldName = 'DSRIMP'
      Visible = False
      Size = 40
    end
    object EstProDESNC1: TStringField
      FieldName = 'DESNC1'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object EstProDESNC2: TStringField
      FieldName = 'DESNC2'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object EstProDESNC3: TStringField
      FieldName = 'DESNC3'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object EstProDESNC4: TStringField
      FieldName = 'DESNC4'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object EstProDESNC5: TStringField
      FieldName = 'DESNC5'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object EstProDESNC6: TStringField
      FieldName = 'DESNC6'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object EstProDESNC7: TStringField
      FieldName = 'DESNC7'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object EstProDESNC8: TStringField
      FieldName = 'DESNC8'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object EstProFLGLIS: TStringField
      FieldName = 'FLGLIS'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object EstProPESCUB: TFloatField
      FieldName = 'PESCUB'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
    end
    object EstProALTPRO: TFloatField
      FieldName = 'ALTPRO'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
    end
    object EstProCOMPRO: TFloatField
      FieldName = 'COMPRO'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
    end
    object EstProLARPRO: TFloatField
      FieldName = 'LARPRO'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
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
    object EstProREFPRO: TStringField
      DisplayWidth = 30
      FieldName = 'REFPRO'
      Visible = False
      Size = 30
    end
  end
  object wwQuery1: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select EstPro.*,'
      
        '           CodClp || _UNICODE_FSS '#39' - '#39' || CodGru || _UNICODE_FS' +
        'S '#39'.'#39' || CodSub || _UNICODE_FSS '#39'.'#39' || CodPro as CodIte'
      'From EstPro'
      'Where EstPro.CodClp = :CodClp'
      'Order by EstPro.CodClp,EstPro.CodGru,EstPro.CodSub,EstPro.CodPro')
    ControlType.Strings = (
      'FLBPRO;CheckBox;*; ')
    ValidateWithMask = True
    Top = 484
    ParamData = <
      item
        DataType = ftString
        Name = 'CodClp'
        ParamType = ptInput
      end>
    object StringField1: TStringField
      DisplayLabel = 'Código                        '
      DisplayWidth = 18
      FieldName = 'CODITE'
      Size = 14
    end
    object StringField2: TStringField
      DisplayLabel = 'Descrição Principal'
      DisplayWidth = 59
      FieldName = 'DSCPRO'
      Origin = 'ISADE.ESTPRO.DSCPRO'
      FixedChar = True
      Size = 70
    end
    object StringField3: TStringField
      DisplayLabel = ' Similar          '
      DisplayWidth = 11
      FieldName = 'SIMPRO'
      FixedChar = True
      Size = 10
    end
    object IntegerField1: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Categoria'
      DisplayWidth = 10
      FieldName = 'CODCAT'
    end
    object IntegerField2: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Tipo'
      DisplayWidth = 10
      FieldName = 'CODTIP'
      Origin = 'ISADE.ESTPRO.CODTIP'
    end
    object IntegerField3: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Marca            '
      DisplayWidth = 10
      FieldName = 'CODMRC'
    end
    object StringField4: TStringField
      DisplayLabel = '  D   '
      DisplayWidth = 3
      FieldName = 'FLBPRO'
      Origin = 'ISADE.ESTPRO.FLBPRO'
      FixedChar = True
      Size = 1
    end
    object FloatField1: TFloatField
      DisplayWidth = 10
      FieldName = 'ENTIMP'
      Visible = False
    end
    object StringField5: TStringField
      DisplayLabel = 'Descrição Reduzida'
      DisplayWidth = 20
      FieldName = 'DSRPRO'
      Origin = 'ISADE.ESTPRO.DSRPRO'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object StringField6: TStringField
      DisplayWidth = 7
      FieldName = 'TIPSTE'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object StringField7: TStringField
      DisplayWidth = 7
      FieldName = 'TIPSTS'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object FloatField2: TFloatField
      DisplayWidth = 10
      FieldName = 'PESLIQ'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object FloatField3: TFloatField
      DisplayWidth = 10
      FieldName = 'PESBRT'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object StringField8: TStringField
      DisplayLabel = 'Classificação'
      DisplayWidth = 12
      FieldName = 'CODCLP'
      Origin = 'ISADE.ESTPRO.CODCLP'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object StringField9: TStringField
      DisplayLabel = 'Grupo'
      DisplayWidth = 11
      FieldName = 'CODGRU'
      Origin = 'ISADE.ESTPRO.CODGRU'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object StringField10: TStringField
      DisplayLabel = 'Sub-Grupo'
      DisplayWidth = 10
      FieldName = 'CODSUB'
      Origin = 'ISADE.ESTPRO.CODSUB'
      Visible = False
      FixedChar = True
      Size = 4
    end
    object StringField11: TStringField
      DisplayLabel = 'Item'
      DisplayWidth = 8
      FieldName = 'CODPRO'
      Origin = 'ISADE.ESTPRO.CODPRO'
      Visible = False
      FixedChar = True
      Size = 5
    end
    object StringField12: TStringField
      DisplayWidth = 20
      FieldName = 'CBAPRO'
      Origin = 'ISADE.ESTPRO.CBAPRO'
      Visible = False
      FixedChar = True
    end
    object StringField13: TStringField
      DisplayWidth = 20
      FieldName = 'CBAEMB'
      Origin = 'ISADE.ESTPRO.CBAEMB'
      Visible = False
      FixedChar = True
    end
    object FloatField4: TFloatField
      DisplayWidth = 10
      FieldName = 'QTDEMB'
      Origin = 'ISADE.ESTPRO.QTDEMB'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object StringField14: TStringField
      DisplayWidth = 20
      FieldName = 'CATPRO'
      Origin = 'ISADE.ESTPRO.CATPRO'
      Visible = False
      FixedChar = True
    end
    object StringField15: TStringField
      DisplayWidth = 20
      FieldName = 'LOCPRO'
      Origin = 'ISADE.ESTPRO.LOCPRO'
      Visible = False
      FixedChar = True
    end
    object FloatField5: TFloatField
      DisplayWidth = 10
      FieldName = 'ISSPRO'
      Origin = 'ISADE.ESTPRO.ISSPRO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object StringField16: TStringField
      DisplayWidth = 3
      FieldName = 'CODUNE'
      Origin = 'ISADE.ESTPRO.CODUNE'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FloatField6: TFloatField
      DisplayWidth = 10
      FieldName = 'QTEPRO'
      Origin = 'ISADE.ESTPRO.QTEPRO'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object StringField17: TStringField
      DisplayWidth = 3
      FieldName = 'CODUNS'
      Origin = 'ISADE.ESTPRO.CODUNS'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FloatField7: TFloatField
      DisplayWidth = 10
      FieldName = 'QTSPRO'
      Origin = 'ISADE.ESTPRO.QTSPRO'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object StringField18: TStringField
      DisplayWidth = 70
      FieldName = 'WEBPRO'
      Origin = 'ISADE.ESTPRO.WEBPRO'
      Visible = False
      FixedChar = True
      Size = 70
    end
    object DateTimeField1: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DTCPRO'
      Origin = 'ISADE.ESTPRO.DTCPRO'
      Visible = False
    end
    object MemoField1: TMemoField
      DisplayWidth = 10
      FieldName = 'OBSPRO'
      Origin = 'ISADE.ESTPRO.OBSPRO'
      Visible = False
      BlobType = ftMemo
      Size = 2000
    end
    object StringField19: TStringField
      DisplayWidth = 1
      FieldName = 'CODST1'
      Origin = 'ISADE.ESTPRO.CODST1'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object StringField20: TStringField
      DisplayWidth = 2
      FieldName = 'CODST2'
      Origin = 'ISADE.ESTPRO.CODST2'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object StringField21: TStringField
      DisplayWidth = 3
      FieldName = 'CODCOM'
      Origin = 'ISADE.ESTPRO.CODCOM'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object IntegerField4: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODUSU'
      Origin = 'ISADE.ESTPRO.CODUSU'
      Visible = False
    end
    object FloatField8: TFloatField
      DisplayWidth = 10
      FieldName = 'SAIICM'
      Origin = 'ISADE.ESTPRO.SAIICM'
      Visible = False
      DisplayFormat = '##0'
    end
    object FloatField9: TFloatField
      DisplayWidth = 10
      FieldName = 'ENTICM'
      Origin = 'ISADE.ESTPRO.ENTICM'
      Visible = False
      DisplayFormat = '##0'
    end
    object FloatField10: TFloatField
      DisplayWidth = 10
      FieldName = 'SAIIPI'
      Origin = 'ISADE.ESTPRO.SAIIPI'
      Visible = False
      DisplayFormat = '##0'
    end
    object FloatField11: TFloatField
      DisplayWidth = 10
      FieldName = 'ENTIPI'
      Origin = 'ISADE.ESTPRO.ENTIPI'
      Visible = False
      DisplayFormat = '##0'
    end
    object BlobField1: TBlobField
      DisplayWidth = 10
      FieldName = 'IMGPRO'
      Origin = 'ISADE.ESTPRO.IMGPRO'
      Visible = False
      BlobType = ftBlob
      Size = 1
    end
    object StringField22: TStringField
      DisplayWidth = 30
      FieldName = 'CODANT'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object StringField23: TStringField
      DisplayWidth = 1
      FieldName = 'FLGTRG'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object StringField24: TStringField
      DisplayWidth = 30
      FieldName = 'NUMPRO'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object IntegerField5: TIntegerField
      DisplayWidth = 10
      FieldName = 'QTDVOL'
      Visible = False
    end
    object StringField25: TStringField
      DisplayWidth = 30
      FieldName = 'IDEPRO'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object StringField26: TStringField
      FieldName = 'ICMSAI'
      Visible = False
      FixedChar = True
    end
    object StringField27: TStringField
      FieldName = 'ICMTSD'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object StringField28: TStringField
      FieldName = 'ICMENT'
      Visible = False
      FixedChar = True
    end
    object StringField29: TStringField
      FieldName = 'ICMTEN'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object StringField30: TStringField
      FieldName = 'IPISAI'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object StringField31: TStringField
      FieldName = 'IPITSD'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object StringField32: TStringField
      FieldName = 'IPIENT'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object StringField33: TStringField
      FieldName = 'IPITEN'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object StringField34: TStringField
      FieldName = 'CLFENT'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object StringField35: TStringField
      FieldName = 'CLFSAI'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object StringField36: TStringField
      DisplayWidth = 20
      FieldName = 'CODSTE'
      Visible = False
      FixedChar = True
    end
    object StringField37: TStringField
      DisplayWidth = 20
      FieldName = 'CODSTS'
      Visible = False
      FixedChar = True
    end
    object StringField38: TStringField
      DisplayWidth = 3
      FieldName = 'FLGPRO'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object StringField39: TStringField
      DisplayWidth = 3
      FieldName = 'FLGKIT'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object StringField40: TStringField
      DisplayWidth = 20
      FieldName = 'CBAEM2'
      Visible = False
      FixedChar = True
    end
    object StringField41: TStringField
      DisplayWidth = 20
      FieldName = 'CBAEM3'
      Visible = False
      FixedChar = True
    end
    object FloatField12: TFloatField
      DisplayWidth = 10
      FieldName = 'LIQEMB'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object FloatField13: TFloatField
      DisplayWidth = 10
      FieldName = 'BRTEMB'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object FloatField14: TFloatField
      DisplayWidth = 10
      FieldName = 'CUBPRO'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object FloatField15: TFloatField
      DisplayWidth = 10
      FieldName = 'CXAPRO'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object MemoField2: TMemoField
      FieldName = 'DESIMP'
      Visible = False
      BlobType = ftMemo
      Size = 500
    end
    object IntegerField6: TIntegerField
      FieldName = 'NROPRO'
      Visible = False
    end
    object IntegerField7: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODBAR'
      Visible = False
    end
    object IntegerField8: TIntegerField
      DisplayWidth = 10
      FieldName = 'QTDBAR'
      Visible = False
    end
    object IntegerField9: TIntegerField
      DisplayWidth = 10
      FieldName = 'SEQBAR'
      Visible = False
    end
    object MemoField3: TMemoField
      DisplayWidth = 10
      FieldName = 'DESIM2'
      Visible = False
      BlobType = ftMemo
      Size = 500
    end
    object FloatField16: TFloatField
      DisplayWidth = 10
      FieldName = 'VALIMP'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object StringField42: TStringField
      DisplayWidth = 70
      FieldName = 'DSCIMP'
      Visible = False
      Size = 70
    end
    object StringField43: TStringField
      DisplayWidth = 40
      FieldName = 'DSRIMP'
      Visible = False
      Size = 40
    end
    object StringField44: TStringField
      FieldName = 'DESNC1'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object StringField45: TStringField
      FieldName = 'DESNC2'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object StringField46: TStringField
      FieldName = 'DESNC3'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object StringField47: TStringField
      FieldName = 'DESNC4'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object StringField48: TStringField
      FieldName = 'DESNC5'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object StringField49: TStringField
      FieldName = 'DESNC6'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object StringField50: TStringField
      FieldName = 'DESNC7'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object StringField51: TStringField
      FieldName = 'DESNC8'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object StringField52: TStringField
      FieldName = 'FLGLIS'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FloatField17: TFloatField
      FieldName = 'PESCUB'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
    end
    object FloatField18: TFloatField
      FieldName = 'ALTPRO'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
    end
    object FloatField19: TFloatField
      FieldName = 'COMPRO'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
    end
    object FloatField20: TFloatField
      FieldName = 'LARPRO'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
    end
    object IntegerField10: TIntegerField
      DisplayWidth = 10
      FieldName = 'GARPRO'
      Visible = False
    end
    object StringField53: TStringField
      DisplayWidth = 18
      FieldName = 'PRODEP'
      Visible = False
      FixedChar = True
      Size = 18
    end
    object StringField54: TStringField
      DisplayWidth = 30
      FieldName = 'REFPRO'
      Visible = False
      Size = 30
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = 'CSV|*.csv'
    Title = 'Abrir arquivo para importação'
    Left = 32
    Top = 200
  end
  object UpdateSQL1: TUpdateSQL
    Left = 160
    Top = 200
  end
end
