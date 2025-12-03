object fmIntegracaoProd: TfmIntegracaoProd
  Left = 479
  Top = 204
  Width = 518
  Height = 370
  Caption = 'Integra'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 502
    Height = 332
    Align = alClient
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 8
      Top = 8
      Width = 489
      Height = 321
      TabOrder = 0
      object RichEdit1: TRichEdit
        Left = 8
        Top = 16
        Width = 473
        Height = 97
        BorderStyle = bsNone
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Lines.Strings = (
          
            'Gerar arquivo de produtos com insidência de Substituição Tributá' +
            'ria. Será '
          'realizada em duas etapas.'
          ''
          
            '1ª Será gerado arquivo de XLS (excel)  que permitirá alteração d' +
            'as inforções;'
          
            '2ª Após realizar as alterações e salvar o XLS será carregado no ' +
            'sistema para gerar o arquivo TXT.'
          ''
          'Também é permitida a criação do arquivo TXT diretamente.')
        ParentFont = False
        TabOrder = 0
      end
      object GroupBox2: TGroupBox
        Left = 8
        Top = 118
        Width = 473
        Height = 97
        TabOrder = 1
        object SpeedButton2: TSpeedButton
          Left = 440
          Top = 65
          Width = 23
          Height = 22
          Caption = '...'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = SpeedButton2Click
        end
        object Label2: TLabel
          Left = 8
          Top = 49
          Width = 111
          Height = 13
          Caption = 'Salvar arquivo XLS em:'
        end
        object edXLS: TEdit
          Left = 8
          Top = 65
          Width = 430
          Height = 21
          TabOrder = 0
        end
        object Button2: TButton
          Left = 8
          Top = 17
          Width = 121
          Height = 25
          Caption = 'Gerar XLS'
          TabOrder = 1
          OnClick = Button2Click
        end
      end
      object GroupBox3: TGroupBox
        Left = 8
        Top = 216
        Width = 473
        Height = 90
        TabOrder = 2
        object SpeedButton1: TSpeedButton
          Left = 440
          Top = 58
          Width = 23
          Height = 22
          Caption = '...'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = SpeedButton1Click
        end
        object Label1: TLabel
          Left = 8
          Top = 42
          Width = 112
          Height = 13
          Caption = 'Salvar arquivo TXT em:'
        end
        object edTXT: TEdit
          Left = 8
          Top = 58
          Width = 430
          Height = 21
          TabOrder = 0
        end
        object Button1: TButton
          Left = 8
          Top = 10
          Width = 121
          Height = 25
          Caption = 'Gerar TXT'
          TabOrder = 1
        end
        object Button3: TButton
          Left = 144
          Top = 10
          Width = 161
          Height = 25
          Caption = 'Carregar e gerarTXT do XLS'
          TabOrder = 2
        end
      end
    end
    object ProgressBar1: TProgressBar
      Left = 8
      Top = 344
      Width = 489
      Height = 17
      Min = 0
      Max = 100
      Smooth = True
      TabOrder = 1
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 440
    Top = 112
  end
  object SaveDialog1: TSaveDialog
    Filter = '*.xls|XLS - Excel'
    Left = 440
    Top = 144
  end
  object SQL_PROD: TQuery
    DatabaseName = 'ISade'
    UniDirectional = True
    Left = 312
    Top = 96
  end
end
