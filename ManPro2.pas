unit ManPro2;

interface  

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, AlignEdit, ppBands, ppClass, ppVar, ppCtrls, ppPrnabl, ppProd,
  ppReport, ppDB, ppComm, ppRelatv, ppCache, ppDBPipe, Menus, ExtDlgs, Db,
  DBTables, Wwquery, Wwdatsrc, StdCtrls, ComCtrls, wwriched, wwdblook, DBCtrls,
  hEdits, jpeg, ExtCtrls, Buttons, Mask, Grids, Wwdbigrd, Wwdbgrid, hGrid,
  dxCntner, dxEditor, dxExEdtr, dxEdLib, dxDBELib, dxDBEdtr, hNavigator,
  FileCtrl, dxDBColorDateEdit, dxDBColorHyperLinkEdit, dxDBColorMemo,
  dxDBColorCurrencyEdit, dxDBColorLookupEdit, dxDBColorEdit, dxColorEdit,
  dxDBColorPickEdit, clipbrd, ManIPI, DBGrids;

type
  TfmManPro2 = class(TfmPadrao)
    pcPro: TPageControl;
    pcPag1: TTabSheet;
    pcPag2: TTabSheet;
    pcPag3: TTabSheet;
    UpPro: TUpdateSQL;
    DsPro: TwwDataSource;
    EstPro: TwwQuery;
    FinCom: TwwQuery;
    EstSub: TwwQuery;
    EstSubNOMSUB: TStringField;
    EstSubCODGRU: TStringField;
    EstSubCODSUB: TStringField;
    EstGru: TwwQuery;
    GerUsu: TwwQuery;
    GerUsuCODUSU: TIntegerField;
    EstUns: TwwQuery;
    EstTip: TwwQuery;
    EstClp: TwwQuery;
    pcPag4: TTabSheet;
    EstIte: TwwQuery;
    DsIte: TwwDataSource;
    EstQte: TwwQuery;
    EstQteQTMQTE: TFloatField;
    EstQteQTRQTE: TFloatField;
    EstQteCODEMP: TIntegerField;
    EstQteCODCLP: TStringField;
    EstQteCODGRU: TStringField;
    EstQteCODSUB: TStringField;
    EstQteCODPRO: TStringField;
    EstQteQTAQTE: TFloatField;
    DsQte: TwwDataSource;
    UpIte: TUpdateSQL;
    UpQte: TUpdateSQL;
    GerEmp: TwwQuery;
    GerEmpCODEMP: TIntegerField;
    GerEmpNOMEMP: TStringField;
    EstTam: TwwQuery;
    EstTamCODEMP: TIntegerField;
    EstTamCODCLP: TStringField;
    EstTamCODGRU: TStringField;
    EstTamCODSUB: TStringField;
    EstTamCODPRO: TStringField;
    DsTam: TwwDataSource;
    UpTam: TUpdateSQL;
    EstIteCODEMP: TIntegerField;
    EstIteCODCLP: TStringField;
    EstIteCODGRU: TStringField;
    EstIteCODSUB: TStringField;
    EstIteCODPRO: TStringField;
    EstIteVCHITE: TFloatField;
    EstIteVCRITE: TFloatField;
    EstIteVCPITE: TFloatField;
    EstIteVB1ITE: TFloatField;
    EstIteVB2ITE: TFloatField;
    EstIteVB3ITE: TFloatField;
    EstIteVB4ITE: TFloatField;
    EstIteVB5ITE: TFloatField;
    EstQteNOMCOR: TStringField;
    GerUsuLOGUSU: TStringField;
    EstCor: TwwQuery;
    EstCorNOMCOR: TStringField;
    quSql: TwwQuery;
    plOcoCr1: TppDBPipeline;
    ppReport1: TppReport;
    hbReport: TppHeaderBand;
    ppLabel22: TppLabel;
    dbReport: TppDetailBand;
    ppCodPro: TppLabel;
    ppDscPro: TppLabel;
    ppRefPro: TppLabel;
    ppSimPro: TppLabel;
    ppLocPro: TppLabel;
    ppCatPro: TppLabel;
    ppCodUne: TppLabel;
    ppQtePro: TppLabel;
    ppCodUns: TppLabel;
    ppQtsPro: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLabel3: TppLabel;
    ppCodClp: TppLabel;
    ppNomClp: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppLabel1: TppLabel;
    ppCodGru: TppLabel;
    ppNomGru: TppLabel;
    ppLabel2: TppLabel;
    ppCodSub: TppLabel;
    ppNomSub: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel7: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppGroupFooterBand2: TppGroupFooterBand;
    OpenPicture: TOpenPictureDialog;
    quSql1: TwwQuery;
    quSql1CODCLP: TStringField;
    quSql1CODGRU: TStringField;
    quSql1NOMGRU: TStringField;
    quSql1CODSUB: TStringField;
    quSql1NOMSUB: TStringField;
    quSql1CODPRO: TStringField;
    quSql1DSCPRO: TStringField;
    quSql1REFPRO: TStringField;
    quSql1SIMPRO: TStringField;
    quSql1LOCPRO: TStringField;
    quSql1CATPRO: TStringField;
    quSql1CODUNE: TStringField;
    quSql1CODUNS: TStringField;
    quSql1NOMCLP: TStringField;
    quSql1QTEPRO: TFloatField;
    quSql1QTSPRO: TFloatField;
    DsSql: TwwDataSource;
    EstIteQTMITE: TFloatField;
    EstIteQTDITE: TFloatField;
    EstIteQTRITE: TFloatField;
    EstIteQTAITE: TFloatField;
    EstClpCODCLP: TStringField;
    EstClpNOMCLP: TStringField;
    EstPar: TwwQuery;
    IcmEnt: TwwQuery;
    IcmEntNOMICM: TStringField;
    IcmEntPERICM: TFloatField;
    IcmSai: TwwQuery;
    StringField2: TStringField;
    IpiEnt: TwwQuery;
    IpiEntNOMIPI: TStringField;
    IpiEntPERIPI: TFloatField;
    IpiSai: TwwQuery;
    StringField4: TStringField;
    FloatField2: TFloatField;
    PopupMenu1: TPopupMenu;
    mmSelImg: TMenuItem;
    Limpar1: TMenuItem;
    Label1: TLabel;
    Shape53: TShape;
    Panel3: TPanel;
    Label44: TLabel;
    Shape54: TShape;
    Shape55: TShape;
    Label45: TLabel;
    Shape56: TShape;
    Shape57: TShape;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    EdPsqCodClp: TdxColorEdit;
    EdPsqCodGru: TdxColorEdit;
    EdPsqCodSub: TdxColorEdit;
    EdPsqCodPro: TdxColorEdit;
    Label51: TLabel;
    EdPsqDscPro: TdxColorEdit;
    bPesquisa: TBitBtn;
    Rgbusca: TRadioGroup;
    rgStatus: TRadioGroup;
    BbPsqClp: TSpeedButton;
    BbPsqGru: TSpeedButton;
    BbPsqSub: TSpeedButton;
    EdPsqNomSub: TdxColorEdit;
    EdPsqNomGru: TdxColorEdit;
    EdPsqNomClp: TdxColorEdit;
    Label6: TLabel;
    EdCodClp: TdxDBColorEdit;
    EdCodGru: TdxDBColorEdit;
    Label9: TLabel;
    Label10: TLabel;
    EdCodSub: TdxDBColorEdit;
    Label52: TLabel;
    EdCodPro: TdxDBColorEdit;
    CbNomSub: TdxDBColorLookupEdit;
    CbNomGru: TdxDBColorLookupEdit;
    CbNomClp: TdxDBColorLookupEdit;
    Label32: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    Label59: TLabel;
    EdDscPro: TdxDBColorEdit;
    EdDsrPro: TdxDBColorEdit;
    EdCodUns: TdxDBColorEdit;
    CbNomUns: TdxDBColorLookupEdit;
    Label2: TLabel;
    Shape58: TShape;
    Shape59: TShape;
    Label16: TLabel;
    Shape64: TShape;
    Shape65: TShape;
    DsClp: TwwDataSource;
    DsGru: TwwDataSource;
    DsSub: TwwDataSource;
    DsUns: TwwDataSource;
    DsTip: TwwDataSource;
    DsCom: TwwDataSource;
    DsIcmSai: TwwDataSource;
    DsIpiEnt: TwwDataSource;
    DsIcmEnt: TwwDataSource;
    DsIpiSai: TwwDataSource;
    Label20: TLabel;
    Shape67: TShape;
    Shape68: TShape;
    EdObsPro: TdxDBColorMemo;
    Label25: TLabel;
    EdWebPro: TdxDBColorHyperLinkEdit;
    Label22: TLabel;
    Shape69: TShape;
    Shape70: TShape;
    Label23: TLabel;
    EdDtcPro: TdxDBColorDateEdit;
    Label24: TLabel;
    EdCodUsu: TdxDBColorEdit;
    CbNomUsu: TdxDBColorLookupEdit;
    DsUsu: TwwDataSource;
    DsEmp: TwwDataSource;
    Label4: TLabel;
    Shape60: TShape;
    Shape61: TShape;
    Panel5: TPanel;
    EstIteCSTITE: TFloatField;
    grIte: ThGrid;
    Label33: TLabel;
    EdCodEmp: TdxDBColorEdit;
    CbNomEmp: TdxDBColorLookupEdit;
    Label34: TLabel;
    EdCstIte: TdxDBColorCurrencyEdit;
    Label35: TLabel;
    EdVchIte: TdxDBColorCurrencyEdit;
    Label36: TLabel;
    EdVcrIte: TdxDBColorCurrencyEdit;
    Label37: TLabel;
    EdVcpIte: TdxDBColorCurrencyEdit;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    EdVb4Ite: TdxDBColorCurrencyEdit;
    EdVb3Ite: TdxDBColorCurrencyEdit;
    EdVb2Ite: TdxDBColorCurrencyEdit;
    EdVb1Ite: TdxDBColorCurrencyEdit;
    Label42: TLabel;
    EdVb5Ite: TdxDBColorCurrencyEdit;
    Shape1: TShape;
    Label43: TLabel;
    Label46: TLabel;
    Label57: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    EdQtaIte: TdxDBColorCurrencyEdit;
    EdQtrIte: TdxDBColorCurrencyEdit;
    EdQtdIte: TdxDBColorCurrencyEdit;
    EdQtmIte: TdxDBColorCurrencyEdit;
    Label71: TLabel;
    EdQtsIte: TdxDBColorCurrencyEdit;
    EstIteQTSITE: TFloatField;
    Shape2: TShape;
    Panel1: TPanel;
    nvIte: ThDBNavigator;
    Label73: TLabel;
    Label85: TLabel;
    EdCodIte1: TdxDBColorEdit;
    DsCor: TwwDataSource;
    EstQteQTSQTE: TFloatField;
    Label93: TLabel;
    rgOrdem: TRadioGroup;
    Label13: TLabel;
    EdFlbPro: TdxDBCheckEdit;
    Panel6: TPanel;
    nvPro: ThDBNavigator;
    EstIteVREITE: TFloatField;
    EstIteVPRITE: TFloatField;
    Label14: TLabel;
    EdVreIte: TdxDBColorCurrencyEdit;
    Label30: TLabel;
    EdVprIte: TdxDBColorCurrencyEdit;
    EdCodCm1: TdxDBColorEdit;
    CbNomCm1: TdxDBColorLookupEdit;
    EdCodCm2: TdxDBColorEdit;
    CbNomCm2: TdxDBColorLookupEdit;
    EdCodCm3: TdxDBColorEdit;
    CbNomCm3: TdxDBColorLookupEdit;
    EdCodCm4: TdxDBColorEdit;
    CbNomCm4: TdxDBColorLookupEdit;
    EdCodCm5: TdxDBColorEdit;
    CbNomCm5: TdxDBColorLookupEdit;
    EstIteCODCM1: TStringField;
    EstIteCODCM2: TStringField;
    EstIteCODCM3: TStringField;
    EstIteCODCM4: TStringField;
    EstIteCODCM5: TStringField;
    FinComCODCOM: TStringField;
    FinComPERCOM: TFloatField;
    Label101: TLabel;
    EdCodAnt: TdxDBColorEdit;
    Panel4: TPanel;
    EstTamCODTAM: TStringField;
    EstQteCODTAM: TStringField;
    EstQteCBAQTE: TStringField;
    EstQteCODCOR: TStringField;
    EstCorCODCOR: TStringField;
    Label61: TLabel;
    EdIssPro: TdxDBColorCurrencyEdit;
    Label83: TLabel;
    EdCodMrc: TdxDBColorEdit;
    CbNomMrc: TdxDBColorLookupEdit;
    EstMrc: TwwQuery;
    DsMrc: TwwDataSource;
    EstMrcCODMRC: TIntegerField;
    EstMrcNOMMRC: TStringField;
    Label109: TLabel;
    EdCodCat: TdxDBColorEdit;
    CbNomCat: TdxDBColorLookupEdit;
    EstCat: TwwQuery;
    DsCat: TwwDataSource;
    EstCatCODCAT: TIntegerField;
    EstCatNOMCAT: TStringField;
    Label110: TLabel;
    EdPsqCodCat: TdxColorEdit;
    bPsqCat: TSpeedButton;
    EdPsqNomCat: TdxColorEdit;
    Label111: TLabel;
    EdPsqCodTip: TdxColorEdit;
    bPsqTip: TSpeedButton;
    EdPsqNomTip: TdxColorEdit;
    Label112: TLabel;
    EdPsqCodMrc: TdxColorEdit;
    bPsqMrc: TSpeedButton;
    EdPsqNomMrc: TdxColorEdit;
    Label113: TLabel;
    EdPsqRefPro: TdxColorEdit;
    EdPsqSimPro: TdxColorEdit;
    Label114: TLabel;
    IpiEntCLSIPI: TStringField;
    IpiSaiCLSIPI: TStringField;
    IpiEntCODIPI: TStringField;
    IpiSaiCODIPI: TStringField;
    IcmSaiCODICM: TStringField;
    IcmEntCODICM: TStringField;
    pnQuant: TLabel;
    EdMk1Ite: TdxDBColorCurrencyEdit;
    Label116: TLabel;
    EdMk2Ite: TdxDBColorCurrencyEdit;
    EdMk3Ite: TdxDBColorCurrencyEdit;
    EdMk4Ite: TdxDBColorCurrencyEdit;
    EdMk5Ite: TdxDBColorCurrencyEdit;
    Label117: TLabel;
    EstIteMK1ITE: TFloatField;
    EstIteMK2ITE: TFloatField;
    EstIteMK3ITE: TFloatField;
    EstIteMK4ITE: TFloatField;
    EstIteMK5ITE: TFloatField;
    EstIteVP1ITE: TFloatField;
    EstIteVP2ITE: TFloatField;
    EstIteVP3ITE: TFloatField;
    EstIteVP4ITE: TFloatField;
    EstIteVP5ITE: TFloatField;
    EdMs1Ite: TdxDBColorCurrencyEdit;
    EdMs2Ite: TdxDBColorCurrencyEdit;
    EdMs3Ite: TdxDBColorCurrencyEdit;
    EdMs4Ite: TdxDBColorCurrencyEdit;
    EdMs5Ite: TdxDBColorCurrencyEdit;
    rgPromocao: TRadioGroup;
    Imagem2: TImage;
    EstIteQMAITE: TFloatField;
    EstIteVMEITE: TFloatField;
    EstIteMS1ITE: TFloatField;
    EstIteMS2ITE: TFloatField;
    EstIteMS3ITE: TFloatField;
    EstIteMS4ITE: TFloatField;
    EstIteMS5ITE: TFloatField;
    Label97: TLabel;
    Label98: TLabel;
    EdQmaIte: TdxDBColorCurrencyEdit;
    EstQteQMAQTE: TFloatField;
    Label100: TLabel;
    EdVmeIte: TdxDBColorCurrencyEdit;
    ppLabel45: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel6: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    EdNomIte1: TdxDBColorEdit;
    Label72: TLabel;
    dxDBEdit2: TdxDBColorEdit;
    dxDBEdit3: TdxDBColorEdit;
    Label75: TLabel;
    EdVpfIte: TdxDBColorCurrencyEdit;
    Label76: TLabel;
    Label78: TLabel;
    EdQtdCmp: TdxDBColorCurrencyEdit;
    EstIteVREOUT: TFloatField;
    EstIteVCHOUT: TFloatField;
    EstIteCSTOUT: TFloatField;
    EstIteVPFITE: TFloatField;
    EstIteDULCMP: TDateTimeField;
    EstIteQTDCMP: TFloatField;
    EdDulCmp: TdxDBColorDateEdit;
    Label88: TLabel;
    Label96: TLabel;
    Label118: TLabel;
    Label119: TLabel;
    Label120: TLabel;
    EdDs1Ite: TdxDBColorCurrencyEdit;
    EdDs2Ite: TdxDBColorCurrencyEdit;
    EdDs3Ite: TdxDBColorCurrencyEdit;
    EdDs4Ite: TdxDBColorCurrencyEdit;
    EdDs5Ite: TdxDBColorCurrencyEdit;
    Label121: TLabel;
    EstIteDS1ITE: TFloatField;
    EstIteDS2ITE: TFloatField;
    EstIteDS3ITE: TFloatField;
    EstIteDS4ITE: TFloatField;
    EstIteDS5ITE: TFloatField;
    Label127: TLabel;
    EdQtdRma: TdxDBColorCurrencyEdit;
    EstIteQTDRMA: TFloatField;
    EstQteQTDRMA: TFloatField;
    EdCstOut: TdxDBColorCurrencyEdit;
    EstIteVPFOUT: TFloatField;
    EdVpfOut: TdxDBColorCurrencyEdit;
    Label132: TLabel;
    Shape7: TShape;
    Shape8: TShape;
    ddMarca: TShape;
    ddRefPro: TShape;
    ddTipo: TShape;
    ddCategoria: TShape;
    pnCategoria: TPanel;
    pnTipo: TPanel;
    pnRefPro: TPanel;
    pnMarca: TPanel;
    EstTipCODTIP: TIntegerField;
    EstTipNOMTIP: TStringField;
    Shape9: TShape;
    pnPerCom: TPanel;
    EdQtdImp: TdxDBColorCurrencyEdit;
    EdDulImp: TdxDBColorDateEdit;
    EstIteDULIMP: TDateTimeField;
    EstIteQTDIMP: TFloatField;
    EdPsqCbaPro: TdxColorEdit;
    Label139: TLabel;
    IcmSaiPERICM: TFloatField;
    EstUne: TwwQuery;
    DsUne: TwwDataSource;
    GerEmpFLGFIL: TStringField;
    Label128: TLabel;
    Label129: TLabel;
    Label137: TLabel;
    Label138: TLabel;
    PopupMenu2: TPopupMenu;
    ClassificaoFiscal1: TMenuItem;
    EstPro_02T: TwwQuery;
    EstPro_02TDSCPRO: TStringField;
    EstPro_02TSIMPRO: TStringField;
    EstPro_02TCODCAT: TIntegerField;
    EstPro_02TCODTIP: TIntegerField;
    EstPro_02TCODMRC: TIntegerField;
    EstPro_02TFLBPRO: TStringField;
    EstPro_02TENTIMP: TFloatField;
    EstPro_02TREFPRO: TStringField;
    EstPro_02TDSRPRO: TStringField;
    EstPro_02TTIPSTE: TStringField;
    EstPro_02TTIPSTS: TStringField;
    EstPro_02TPESLIQ: TFloatField;
    EstPro_02TPESBRT: TFloatField;
    EstPro_02TCODCLP: TStringField;
    EstPro_02TCODGRU: TStringField;
    EstPro_02TCODSUB: TStringField;
    EstPro_02TCODPRO: TStringField;
    EstPro_02TCBAPRO: TStringField;
    EstPro_02TCBAEMB: TStringField;
    EstPro_02TQTDEMB: TFloatField;
    EstPro_02TCATPRO: TStringField;
    EstPro_02TLOCPRO: TStringField;
    EstPro_02TISSPRO: TFloatField;
    EstPro_02TCODUNE: TStringField;
    EstPro_02TQTEPRO: TFloatField;
    EstPro_02TCODUNS: TStringField;
    EstPro_02TQTSPRO: TFloatField;
    EstPro_02TWEBPRO: TStringField;
    EstPro_02TDTCPRO: TDateTimeField;
    EstPro_02TOBSPRO: TMemoField;
    EstPro_02TCODST1: TStringField;
    EstPro_02TCODST2: TStringField;
    EstPro_02TCODCOM: TStringField;
    EstPro_02TCODUSU: TIntegerField;
    EstPro_02TSAIICM: TFloatField;
    EstPro_02TENTICM: TFloatField;
    EstPro_02TSAIIPI: TFloatField;
    EstPro_02TENTIPI: TFloatField;
    EstPro_02TIMGPRO: TBlobField;
    EstPro_02TCODANT: TStringField;
    EstPro_02TFLGTRG: TStringField;
    EstPro_02TNUMPRO: TStringField;
    EstPro_02TQTDVOL: TIntegerField;
    EstPro_02TIDEPRO: TStringField;
    EstPro_02TICMSAI: TStringField;
    EstPro_02TICMTSD: TStringField;
    EstPro_02TICMENT: TStringField;
    EstPro_02TICMTEN: TStringField;
    EstPro_02TIPISAI: TStringField;
    EstPro_02TIPITSD: TStringField;
    EstPro_02TIPIENT: TStringField;
    EstPro_02TIPITEN: TStringField;
    EstPro_02TCLFENT: TStringField;
    EstPro_02TCLFSAI: TStringField;
    EstPro_02TCODSTE: TStringField;
    EstPro_02TCODSTS: TStringField;
    EstPro_02TFLGPRO: TStringField;
    EstPro_02TFLGKIT: TStringField;
    EstPro_02TCBAEM2: TStringField;
    EstPro_02TCBAEM3: TStringField;
    EstPro_02TLIQEMB: TFloatField;
    EstPro_02TBRTEMB: TFloatField;
    EstPro_02TCUBPRO: TFloatField;
    EstPro_02TCXAPRO: TFloatField;
    EstPro_02TNROPRO: TIntegerField;
    EstPro_02TDESIMP: TMemoField;
    EstPro_02TCODBAR: TIntegerField;
    EstPro_02TQTDBAR: TIntegerField;
    EstPro_02TSEQBAR: TIntegerField;
    UpPro_02T: TUpdateSQL;
    EstPro_03: TwwQuery;
    UpPro_03: TUpdateSQL;
    EstPro_03CODCLP: TStringField;
    EstPro_03CODGRU: TStringField;
    EstPro_03CODSUB: TStringField;
    EstPro_03CODPRO: TStringField;
    EstPro_03DSCPRO: TStringField;
    EstPro_03DSRPRO: TStringField;
    EstPro_03CBAPRO: TStringField;
    EstPro_03CBAEMB: TStringField;
    EstPro_03QTDEMB: TFloatField;
    EstPro_03CATPRO: TStringField;
    EstPro_03LOCPRO: TStringField;
    EstPro_03REFPRO: TStringField;
    EstPro_03ISSPRO: TFloatField;
    EstPro_03CODUNE: TStringField;
    EstPro_03QTEPRO: TFloatField;
    EstPro_03CODUNS: TStringField;
    EstPro_03QTSPRO: TFloatField;
    EstPro_03FLBPRO: TStringField;
    EstPro_03WEBPRO: TStringField;
    EstPro_03DTCPRO: TDateTimeField;
    EstPro_03OBSPRO: TMemoField;
    EstPro_03CODST1: TStringField;
    EstPro_03CODST2: TStringField;
    EstPro_03CODTIP: TIntegerField;
    EstPro_03CODCOM: TStringField;
    EstPro_03CODUSU: TIntegerField;
    EstPro_03PESLIQ: TFloatField;
    EstPro_03PESBRT: TFloatField;
    EstPro_03SAIICM: TFloatField;
    EstPro_03ENTICM: TFloatField;
    EstPro_03SAIIPI: TFloatField;
    EstPro_03ENTIPI: TFloatField;
    EstPro_03IMGPRO: TBlobField;
    EstPro_03CODSTE: TStringField;
    EstPro_03TIPSTE: TStringField;
    EstPro_03CODSTS: TStringField;
    EstPro_03TIPSTS: TStringField;
    EstPro_03CODANT: TStringField;
    EstPro_03SIMPRO: TStringField;
    EstPro_03NUMPRO: TStringField;
    EstPro_03FLGTRG: TStringField;
    EstPro_03QTDVOL: TIntegerField;
    EstPro_03CODMRC: TIntegerField;
    EstPro_03IDEPRO: TStringField;
    EstPro_03CODCAT: TIntegerField;
    EstPro_03ICMSAI: TStringField;
    EstPro_03ICMTSD: TStringField;
    EstPro_03ICMENT: TStringField;
    EstPro_03ICMTEN: TStringField;
    EstPro_03IPISAI: TStringField;
    EstPro_03IPITSD: TStringField;
    EstPro_03IPIENT: TStringField;
    EstPro_03IPITEN: TStringField;
    EstPro_03CLFENT: TStringField;
    EstPro_03CLFSAI: TStringField;
    EstPro_03FLGPRO: TStringField;
    EstPro_03FLGKIT: TStringField;
    EstPro_03CBAEM2: TStringField;
    EstPro_03CBAEM3: TStringField;
    EstPro_03LIQEMB: TFloatField;
    EstPro_03BRTEMB: TFloatField;
    EstPro_03CUBPRO: TFloatField;
    EstPro_03CXAPRO: TFloatField;
    EstPro_03ENTIMP: TFloatField;
    EstPro_03NROPRO: TIntegerField;
    EstPro_03CODBAR: TIntegerField;
    EstPro_03QTDBAR: TIntegerField;
    EstPro_03SEQBAR: TIntegerField;
    EstPro_03DESIMP: TMemoField;
    quSQL2: TwwQuery;
    quSQL3: TwwQuery;
    EstParTAMCOR: TStringField;
    EstParFLGTAM: TStringField;
    EstParLANCBA: TStringField;
    EstParLANMIN: TStringField;
    EstParFLGANT: TStringField;
    EstParFLGTAB: TStringField;
    EstParATUMSU: TStringField;
    EstParINIEAN: TStringField;
    EstParTIPEAN: TStringField;
    EstParATUVCR: TStringField;
    EstSte: TwwQuery;
    EstSteCODSTR: TStringField;
    EstSteNOMSTR: TStringField;
    EstSts: TwwQuery;
    StringField1: TStringField;
    StringField3: TStringField;
    DsSts: TwwDataSource;
    DsSte: TwwDataSource;
    EstPro_02TDESIM2: TMemoField;
    EstPro_02TVALIMP: TFloatField;
    EstPro_02TDSCIMP: TStringField;
    EstPro_03DESIM2: TMemoField;
    EstPro_03VALIMP: TFloatField;
    EstPro_03DSCIMP: TStringField;
    EstPro_02TDESNC1: TStringField;
    EstPro_02TDESNC2: TStringField;
    EstPro_02TDESNC3: TStringField;
    EstPro_02TDESNC4: TStringField;
    EstPro_02TDESNC5: TStringField;
    EstPro_02TDESNC6: TStringField;
    EstPro_02TDESNC7: TStringField;
    EstPro_02TDESNC8: TStringField;
    EstPro_02TFLGLIS: TStringField;
    EstPro_03DESNC1: TStringField;
    EstPro_03DESNC2: TStringField;
    EstPro_03DESNC3: TStringField;
    EstPro_03DESNC4: TStringField;
    EstPro_03DESNC5: TStringField;
    EstPro_03DESNC6: TStringField;
    EstPro_03DESNC7: TStringField;
    EstPro_03DESNC8: TStringField;
    EstPro_03FLGLIS: TStringField;
    Label130: TLabel;
    EdFlgLis: TdxDBColorPickEdit;
    EstPro_02TPESCUB: TFloatField;
    EstPro_02TALTPRO: TFloatField;
    EstPro_02TCOMPRO: TFloatField;
    EstPro_02TLARPRO: TFloatField;
    EstPro_02TGARPRO: TIntegerField;
    EstPro_02TPRODEP: TStringField;
    EstPro_03PESCUB: TFloatField;
    EstPro_03ALTPRO: TFloatField;
    EstPro_03COMPRO: TFloatField;
    EstPro_03LARPRO: TFloatField;
    EstPro_03GARPRO: TIntegerField;
    EstPro_03PRODEP: TStringField;
    Label147: TLabel;
    EdGarPro: TdxDBColorEdit;
    Label148: TLabel;
    Label133: TLabel;
    Label134: TLabel;
    Label131: TLabel;
    Label135: TLabel;
    Label146: TLabel;
    Label136: TLabel;
    Label140: TLabel;
    Label143: TLabel;
    EdValImp: TdxDBColorCurrencyEdit;
    EdCxaPro: TdxDBColorCurrencyEdit;
    EdCubPro: TdxDBColorCurrencyEdit;
    EdLarPro: TdxDBColorCurrencyEdit;
    EdComPro: TdxDBColorCurrencyEdit;
    EdAltPro: TdxDBColorCurrencyEdit;
    EdBrtEmb: TdxDBColorCurrencyEdit;
    EdLiqEmb: TdxDBColorCurrencyEdit;
    Label142: TLabel;
    Label144: TLabel;
    EdDesIm2: TdxDBColorMemo;
    EdDesImp: TdxDBColorMemo;
    EdDscImp: TdxDBColorEdit;
    Label145: TLabel;
    Label150: TLabel;
    EdDsrImp: TdxDBColorEdit;
    EstPro_02TID2PRO: TStringField;
    EstPro_03ID2PRO: TStringField;
    EstPro_02TDSRIMP: TStringField;
    EstPro_03DSRIMP: TStringField;
    UpPro_02: TUpdateSQL;
    PartNumber1: TMenuItem;
    Label153: TLabel;
    Label155: TLabel;
    Label154: TLabel;
    Label156: TLabel;
    dxDBColorEdit2: TdxDBColorEdit;
    dxDBColorLookupEdit1: TdxDBColorLookupEdit;
    dxDBColorEdit3: TdxDBColorEdit;
    dxDBColorLookupEdit3: TdxDBColorLookupEdit;
    dxDBColorEdit1: TdxDBColorEdit;
    dxDBColorLookupEdit2: TdxDBColorLookupEdit;
    dxDBColorEdit4: TdxDBColorEdit;
    dxDBColorLookupEdit4: TdxDBColorLookupEdit;
    Label158: TLabel;
    dxDBColorLookupEdit7: TdxDBColorLookupEdit;
    dsEstSt1: TwwDataSource;
    EstSt1: TwwQuery;
    EstSt1CODST1: TStringField;
    EstSt1NOMST1: TStringField;
    EstSt1CODNOM: TStringField;
    TabSheet1: TTabSheet;
    Label157: TLabel;
    Label159: TLabel;
    dxDBColorEdit5: TdxDBColorEdit;
    dxDBColorLookupEdit5: TdxDBColorLookupEdit;
    dxDBColorEdit7: TdxDBColorEdit;
    dxDBColorLookupEdit6: TdxDBColorLookupEdit;
    Label152: TLabel;
    dxDBColorDateEdit1: TdxDBColorDateEdit;
    Label103: TLabel;
    EdClfSai: TdxDBColorEdit;
    Label102: TLabel;
    EdClfEnt: TdxDBColorEdit;
    Label160: TLabel;
    dxDBColorEdit6: TdxDBColorEdit;
    Label54: TLabel;
    Label105: TLabel;
    EdQtePro: TdxDBColorCurrencyEdit;
    EdQtsPro: TdxDBColorCurrencyEdit;
    Label53: TLabel;
    EdCodUne: TdxDBColorEdit;
    CbNomUne: TdxDBColorLookupEdit;
    Label27: TLabel;
    Label58: TLabel;
    EdLocPro: TdxDBColorEdit;
    EdRefPro: TdxDBColorEdit;
    Label56: TLabel;
    EdCbaEmb: TdxDBColorEdit;
    Label8: TLabel;
    EdCodTip: TdxDBColorEdit;
    CbNomTip: TdxDBColorLookupEdit;
    Shape10: TShape;
    Shape11: TShape;
    Label161: TLabel;
    Label60: TLabel;
    Label62: TLabel;
    Label64: TLabel;
    Label63: TLabel;
    EdQtdEmb: TdxDBColorCurrencyEdit;
    EdPesLiq: TdxDBColorCurrencyEdit;
    EdPesBrt: TdxDBColorCurrencyEdit;
    EdQtdVol: TdxDBColorCurrencyEdit;
    Label65: TLabel;
    EdSimPro: TdxDBColorEdit;
    Label11: TLabel;
    EdCbaPro: TdxDBColorEdit;
    BtnCodigos: TBitBtn;
    Label149: TLabel;
    EdIdePro: TdxDBColorEdit;
    EdId2Pro: TdxDBColorEdit;
    Label55: TLabel;
    Label28: TLabel;
    Label166: TLabel;
    EdEntIpi: TdxDBColorCurrencyEdit;
    edIPIEntAliq: TdxColorEdit;
    edIPISaiAliq: TdxColorEdit;
    edICMSEntAliq: TdxColorEdit;
    edICMSSaiAliq: TdxColorEdit;
    edIcmSit: TdxColorEdit;
    dxColorEdit1: TdxColorEdit;
    Label15: TLabel;
    Label107: TLabel;
    EdIpiSai: TdxDBColorEdit;
    CbNomIpiSai: TdxDBColorLookupEdit;
    Label18: TLabel;
    Label84: TLabel;
    EdIpiEnt: TdxDBColorEdit;
    CbNomIpiEnt: TdxDBColorLookupEdit;
    EdSaiIpi: TdxDBColorCurrencyEdit;
    Label21: TLabel;
    Label167: TLabel;
    dxDBColorCurrencyEdit1: TdxDBColorCurrencyEdit;
    Label168: TLabel;
    dxDBColorCurrencyEdit2: TdxDBColorCurrencyEdit;
    Label169: TLabel;
    dxDBColorCurrencyEdit3: TdxDBColorCurrencyEdit;
    Label170: TLabel;
    dxDBColorCurrencyEdit4: TdxDBColorCurrencyEdit;
    Label171: TLabel;
    Label172: TLabel;
    dxDBColorCurrencyEdit5: TdxDBColorCurrencyEdit;
    Label173: TLabel;
    dxDBColorCurrencyEdit6: TdxDBColorCurrencyEdit;
    Label174: TLabel;
    dxDBColorCurrencyEdit7: TdxDBColorCurrencyEdit;
    Label175: TLabel;
    Label12: TLabel;
    Label106: TLabel;
    EdIcmSai: TdxDBColorEdit;
    CbNomIcmSai: TdxDBColorLookupEdit;
    EdSaiIcm: TdxDBColorCurrencyEdit;
    EdCodSt2: TdxDBColorEdit;
    Label162: TLabel;
    Label19: TLabel;
    Label141: TLabel;
    Label17: TLabel;
    Label26: TLabel;
    Label5: TLabel;
    EdIcmEnt: TdxDBColorEdit;
    CbNomIcmEnt: TdxDBColorLookupEdit;
    EdEntIcm: TdxDBColorCurrencyEdit;
    Label165: TLabel;
    Label108: TLabel;
    Label95: TLabel;
    Label92: TLabel;
    EdCodSts: TdxDBColorEdit;
    CbNomSts: TdxDBColorLookupEdit;
    EdCodSte: TdxDBColorEdit;
    CbNomSte: TdxDBColorLookupEdit;
    Label94: TLabel;
    Shape12: TShape;
    Shape13: TShape;
    grPro: TDBGrid;
    dsRegNcmSaida: TwwDataSource;
    SQlRegNcmSaida: TwwQuery;
    SQlRegNcmSaidaPERIMP: TFloatField;
    SQlRegNcmSaidaPERIPI: TFloatField;
    SQlRegNcmSaidaALIQ_PIS: TFloatField;
    SQlRegNcmSaidaALIQ_COF: TFloatField;
    dsRegNcmEnt: TwwDataSource;
    SQlRegNcmEnt: TwwQuery;
    FloatField1: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    DBCheckBox1: TDBCheckBox;
    EstPro_03CODNCM: TStringField;
    EstPro_02: TwwQuery;
    EstPro_02CODCLP: TStringField;
    EstPro_02CODGRU: TStringField;
    EstPro_02CODSUB: TStringField;
    EstPro_02CODPRO: TStringField;
    EstPro_02DSCPRO: TStringField;
    EstPro_02DSRPRO: TStringField;
    EstPro_02CBAPRO: TStringField;
    EstPro_02CBAEMB: TStringField;
    EstPro_02QTDEMB: TFloatField;
    EstPro_02CATPRO: TStringField;
    EstPro_02LOCPRO: TStringField;
    EstPro_02REFPRO: TStringField;
    EstPro_02ISSPRO: TFloatField;
    EstPro_02CODUNE: TStringField;
    EstPro_02QTEPRO: TFloatField;
    EstPro_02CODUNS: TStringField;
    EstPro_02QTSPRO: TFloatField;
    EstPro_02FLBPRO: TStringField;
    EstPro_02WEBPRO: TStringField;
    EstPro_02DTCPRO: TDateTimeField;
    EstPro_02OBSPRO: TMemoField;
    EstPro_02CODST1: TStringField;
    EstPro_02CODST2: TStringField;
    EstPro_02CODTIP: TIntegerField;
    EstPro_02CODCOM: TStringField;
    EstPro_02CODUSU: TIntegerField;
    EstPro_02PESLIQ: TFloatField;
    EstPro_02PESBRT: TFloatField;
    EstPro_02SAIICM: TFloatField;
    EstPro_02ENTICM: TFloatField;
    EstPro_02SAIIPI: TFloatField;
    EstPro_02ENTIPI: TFloatField;
    EstPro_02IMGPRO: TBlobField;
    EstPro_02CODSTE: TStringField;
    EstPro_02TIPSTE: TStringField;
    EstPro_02CODSTS: TStringField;
    EstPro_02TIPSTS: TStringField;
    EstPro_02CODANT: TStringField;
    EstPro_02SIMPRO: TStringField;
    EstPro_02NUMPRO: TStringField;
    EstPro_02FLGTRG: TStringField;
    EstPro_02QTDVOL: TIntegerField;
    EstPro_02CODMRC: TIntegerField;
    EstPro_02IDEPRO: TStringField;
    EstPro_02CODCAT: TIntegerField;
    EstPro_02ICMSAI: TStringField;
    EstPro_02ICMTSD: TStringField;
    EstPro_02ICMENT: TStringField;
    EstPro_02ICMTEN: TStringField;
    EstPro_02IPISAI: TStringField;
    EstPro_02IPITSD: TStringField;
    EstPro_02IPIENT: TStringField;
    EstPro_02IPITEN: TStringField;
    EstPro_02CLFENT: TStringField;
    EstPro_02CLFSAI: TStringField;
    EstPro_02FLGPRO: TStringField;
    EstPro_02FLGKIT: TStringField;
    EstPro_02CBAEM2: TStringField;
    EstPro_02CBAEM3: TStringField;
    EstPro_02LIQEMB: TFloatField;
    EstPro_02BRTEMB: TFloatField;
    EstPro_02CUBPRO: TFloatField;
    EstPro_02CXAPRO: TFloatField;
    EstPro_02ENTIMP: TFloatField;
    EstPro_02CODBAR: TIntegerField;
    EstPro_02QTDBAR: TIntegerField;
    EstPro_02SEQBAR: TIntegerField;
    EstPro_02NROPRO: TIntegerField;
    EstPro_02DESIMP: TMemoField;
    EstPro_02DESIM2: TMemoField;
    EstPro_02VALIMP: TFloatField;
    EstPro_02DSCIMP: TStringField;
    EstPro_02DSRIMP: TStringField;
    EstPro_02DESNC1: TStringField;
    EstPro_02DESNC2: TStringField;
    EstPro_02DESNC3: TStringField;
    EstPro_02DESNC4: TStringField;
    EstPro_02DESNC5: TStringField;
    EstPro_02DESNC6: TStringField;
    EstPro_02DESNC7: TStringField;
    EstPro_02DESNC8: TStringField;
    EstPro_02FLGLIS: TStringField;
    EstPro_02PESCUB: TFloatField;
    EstPro_02ALTPRO: TFloatField;
    EstPro_02COMPRO: TFloatField;
    EstPro_02LARPRO: TFloatField;
    EstPro_02GARPRO: TIntegerField;
    EstPro_02PRODEP: TStringField;
    EstPro_02ID2PRO: TStringField;
    EstPro_02INI_REG_ST: TDateTimeField;
    EstPro_02ID_REGRA_PIS: TIntegerField;
    EstPro_02ID_REGRA_COFINS: TIntegerField;
    EstPro_02ID_REGRA_PIS_ENTRADA: TIntegerField;
    EstPro_02ID_REGRA_COFINS_ENTRADA: TIntegerField;
    EstPro_02IMPPRD: TIntegerField;
    EstPro_02IMGPAF: TIntegerField;
    EstPro_02CODNCM: TStringField;
    Label104: TLabel;
    EdNumPro: TdxDBColorEdit;
    Label29: TLabel;
    EdPesCub: TdxDBColorCurrencyEdit;
    Label66: TLabel;
    EdCodCom: TdxDBColorEdit;
    CbPerCom: TdxDBColorLookupEdit;
    Shape3: TShape;
    Label31: TLabel;
    Shape4: TShape;
    Label74: TLabel;
    Label77: TLabel;
    Label82: TLabel;
    Label89: TLabel;
    EdCodAnp: TdxDBColorEdit;
    dxDBColorDateEdit2: TdxDBColorDateEdit;
    dxDBColorLookupEdit8: TdxDBColorLookupEdit;
    dxDBColorEdit10: TdxDBColorEdit;
    dxDBColorEdit11: TdxDBColorEdit;
    Label90: TLabel;
    edCBAEMBEmb: TdxDBColorEdit;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Label122: TLabel;
    Label123: TLabel;
    Label124: TLabel;
    Label125: TLabel;
    Label126: TLabel;
    EdVp1Ite: TdxDBColorCurrencyEdit;
    EdVp2Ite: TdxDBColorCurrencyEdit;
    EdVp3Ite: TdxDBColorCurrencyEdit;
    EdVp4Ite: TdxDBColorCurrencyEdit;
    EdVp5Ite: TdxDBColorCurrencyEdit;
    EstIteCUSTOFOB: TFloatField;
    EstIteCUSTOCIF: TFloatField;
    EstIteQTDREG2: TFloatField;
    EstIteDTEREG2: TDateTimeField;
    EdPsqCODNCM: TdxColorEdit;
    Label91: TLabel;
    mmPopPro: TPopupMenu;
    ABE0101: TMenuItem;
    EstQteQTDQTE: TFloatField;
    SQlRegNcmSaidaCSTIPI: TStringField;
    SQlRegNcmEntCSTIPI: TStringField;
    dxDBColorEdit8: TdxDBColorEdit;
    dxDBColorEdit9: TdxDBColorEdit;
    dxDBColorEdit13: TdxDBColorEdit;
    Label99: TLabel;
    edFCPEntrada: TdxDBColorEdit;
    Label115: TLabel;
    edFCPSaida: TdxDBColorEdit;
    Label151: TLabel;
    Label176: TLabel;
    edFCI: TdxDBColorEdit;
    EstProICM: TFloatField;
    EstProCODCLP: TStringField;
    EstProCODGRU: TStringField;
    EstProCODSUB: TStringField;
    EstProCODPRO: TStringField;
    EstProDSCPRO: TStringField;
    EstProDSRPRO: TStringField;
    EstProCBAPRO: TStringField;
    EstProCBAEMB: TStringField;
    EstProQTDEMB: TFloatField;
    EstProCATPRO: TStringField;
    EstProLOCPRO: TStringField;
    EstProREFPRO: TStringField;
    EstProISSPRO: TFloatField;
    EstProCODUNE: TStringField;
    EstProQTEPRO: TFloatField;
    EstProCODUNS: TStringField;
    EstProQTSPRO: TFloatField;
    EstProFLBPRO: TStringField;
    EstProWEBPRO: TStringField;
    EstProDTCPRO: TDateTimeField;
    EstProOBSPRO: TMemoField;
    EstProCODST1: TStringField;
    EstProCODST2: TStringField;
    EstProCODTIP: TIntegerField;
    EstProCODCOM: TStringField;
    EstProCODUSU: TIntegerField;
    EstProPESLIQ: TFloatField;
    EstProPESBRT: TFloatField;
    EstProSAIICM: TFloatField;
    EstProENTICM: TFloatField;
    EstProSAIIPI: TFloatField;
    EstProENTIPI: TFloatField;
    EstProIMGPRO: TBlobField;
    EstProCODSTE: TStringField;
    EstProTIPSTE: TStringField;
    EstProCODSTS: TStringField;
    EstProTIPSTS: TStringField;
    EstProCODANT: TStringField;
    EstProSIMPRO: TStringField;
    EstProNUMPRO: TStringField;
    EstProFLGTRG: TStringField;
    EstProQTDVOL: TIntegerField;
    EstProCODMRC: TIntegerField;
    EstProIDEPRO: TStringField;
    EstProCODCAT: TIntegerField;
    EstProICMSAI: TStringField;
    EstProICMTSD: TStringField;
    EstProICMENT: TStringField;
    EstProICMTEN: TStringField;
    EstProIPISAI: TStringField;
    EstProIPITSD: TStringField;
    EstProIPIENT: TStringField;
    EstProIPITEN: TStringField;
    EstProCLFENT: TStringField;
    EstProCLFSAI: TStringField;
    EstProFLGPRO: TStringField;
    EstProFLGKIT: TStringField;
    EstProCBAEM2: TStringField;
    EstProCBAEM3: TStringField;
    EstProLIQEMB: TFloatField;
    EstProBRTEMB: TFloatField;
    EstProCUBPRO: TFloatField;
    EstProCXAPRO: TFloatField;
    EstProENTIMP: TFloatField;
    EstProCODBAR: TIntegerField;
    EstProQTDBAR: TIntegerField;
    EstProSEQBAR: TIntegerField;
    EstProNROPRO: TIntegerField;
    EstProDESIMP: TMemoField;
    EstProDESIM2: TMemoField;
    EstProVALIMP: TFloatField;
    EstProDSCIMP: TStringField;
    EstProDSRIMP: TStringField;
    EstProDESNC1: TStringField;
    EstProDESNC2: TStringField;
    EstProDESNC3: TStringField;
    EstProDESNC4: TStringField;
    EstProDESNC5: TStringField;
    EstProDESNC6: TStringField;
    EstProDESNC7: TStringField;
    EstProDESNC8: TStringField;
    EstProFLGLIS: TStringField;
    EstProPESCUB: TFloatField;
    EstProALTPRO: TFloatField;
    EstProCOMPRO: TFloatField;
    EstProLARPRO: TFloatField;
    EstProGARPRO: TIntegerField;
    EstProPRODEP: TStringField;
    EstProID2PRO: TStringField;
    EstProINI_REG_ST: TDateTimeField;
    EstProID_REGRA_PIS: TIntegerField;
    EstProID_REGRA_COFINS: TIntegerField;
    EstProID_REGRA_PIS_ENTRADA: TIntegerField;
    EstProID_REGRA_COFINS_ENTRADA: TIntegerField;
    EstProIMPPRD: TIntegerField;
    EstProIMGPAF: TIntegerField;
    EstProCODNCM: TStringField;
    EstProCODANP: TStringField;
    EstProCODIF: TStringField;
    EstProFLGATU: TStringField;
    EstProID_ESTICM_SAIDA: TIntegerField;
    EstProID_ESTICM_ENTRADA: TIntegerField;
    EstProCEST: TStringField;
    EstProID_REGRA_FCP: TIntegerField;
    EstProCOD_FCP_SAIDA: TStringField;
    EstProCOD_FCP_ENTRADA: TStringField;
    EstProCODITE: TStringField;
    EstProFCI: TStringField;
    EstPro_02FCI: TStringField;
    EstPro_03FCI: TStringField;
    btnEdCBAEMBEmb: TSpeedButton;
    btnEdCbaPro: TSpeedButton;
    EstBarPesq: TwwQuery;
    edDESCANP: TdxDBColorEdit;
    EstProDESCANP: TStringField;
    procedure CriarForm(frmClass: TFormClass; out Obj);
    procedure pcPag1Show(Sender: TObject);
    procedure grPro1CellChanged(Sender: TObject);
    procedure pcPag2Show(Sender: TObject);
    procedure pcPag3Show(Sender: TObject);
    procedure pcPag4Show(Sender: TObject);
    procedure grIteCellChanged(Sender: TObject);
    procedure grTamCellChanged(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DsProDataChange(Sender: TObject; Field: TField);
    procedure EstProNewRecord(DataSet: TDataSet);
    procedure EdPsqCodClpExit(Sender: TObject);
    procedure BbPsqClpClick(Sender: TObject);
    procedure TOTAL(Sender: TObject);
    procedure EdPsqCodGruExit(Sender: TObject);
    procedure BbPsqGruClick(Sender: TObject);
    procedure EdPsqCodSubExit(Sender: TObject);
    procedure BbPsqSubClick(Sender: TObject);
    procedure EdCodGruExit(Sender: TObject);
    procedure EdCodSubExit(Sender: TObject);
    procedure mmPopProPopup(Sender: TObject);
    procedure EdCodProExit(Sender: TObject);
    procedure nvProImprime(Sender: TObject);
    procedure ppGroupHeaderBand1BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand2BeforePrint(Sender: TObject);
    procedure dbReportBeforePrint(Sender: TObject);
    procedure EstProBeforePost(DataSet: TDataSet);
    procedure EdDscProExit(Sender: TObject);
    procedure nvProCancela(Sender: TObject);
    procedure nvProSalva(Sender: TObject);
    procedure EstIteNewRecord(DataSet: TDataSet);
    procedure EdPsqCodProExit(Sender: TObject);
    procedure EstIteBeforeEdit(DataSet: TDataSet);
    procedure EstProBeforeEdit(DataSet: TDataSet);
    procedure EstTamNewRecord(DataSet: TDataSet);
    procedure EstTamBeforeEdit(DataSet: TDataSet);
    procedure EstQteNewRecord(DataSet: TDataSet);
    procedure EstQteBeforeEdit(DataSet: TDataSet);
    procedure nvTamExclui(Sender: TObject);
    procedure grQteCellChanged(Sender: TObject);
    procedure grPro1DblClick(Sender: TObject);
    procedure EdCodProKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodProMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure EdIcmSaiExit(Sender: TObject);
    procedure CbNomIcmSaiExit(Sender: TObject);
    procedure EdIpiSaiExit(Sender: TObject);
    procedure CbNomIpiSaiExit(Sender: TObject);
    procedure EdIcmEntExit(Sender: TObject);
    procedure CbNomIcmEntExit(Sender: TObject);
    procedure EdIpiEntExit(Sender: TObject);
    procedure CbNomIpiEntExit(Sender: TObject);
    procedure nvProBeforeSalva(Sender: TObject);
    procedure mmSelImgClick(Sender: TObject);
    procedure Limpar1Click(Sender: TObject);
    procedure EdSimProKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdSimProMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure EdSimProExit(Sender: TObject);
    procedure EdSimProKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdWebProKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure pcPag5Show(Sender: TObject);
    procedure DsIteDataChange(Sender: TObject; Field: TField);
    procedure DsTamDataChange(Sender: TObject; Field: TField);
    procedure DsQteDataChange(Sender: TObject; Field: TField);
    procedure EstProAfterCancel(DataSet: TDataSet);
    procedure EstIteAfterCancel(DataSet: TDataSet);
    procedure EstTamAfterCancel(DataSet: TDataSet);
    procedure EstQteAfterCancel(DataSet: TDataSet);
    procedure EdPsqCodClpKeyPress(Sender: TObject; var Key: Char);
    procedure CbNomStsExit(Sender: TObject);
    procedure EdCodStsKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormPaint(Sender: TObject);
    procedure nvIteBeforeSalva(Sender: TObject);
    procedure bPsqCatClick(Sender: TObject);
    procedure bPsqTipClick(Sender: TObject);
    procedure bPsqMrcClick(Sender: TObject);
    procedure EdPsqCodCatExit(Sender: TObject);
    procedure EdPsqCodTipExit(Sender: TObject);
    procedure EdPsqCodMrcExit(Sender: TObject);
    procedure EdCodTipExit(Sender: TObject);
    procedure EdCodUneExit(Sender: TObject);
    procedure EdCodUnsExit(Sender: TObject);
    procedure EdCodMrcExit(Sender: TObject);
    procedure EdCodCatExit(Sender: TObject);
    procedure EdMk1IteExit(Sender: TObject);
    procedure EdMk2IteExit(Sender: TObject);
    procedure EdMk3IteExit(Sender: TObject);
    procedure EdMk4IteExit(Sender: TObject);
    procedure EdMk5IteExit(Sender: TObject);
    procedure EdVb1IteExit(Sender: TObject);
    procedure EdVb2IteExit(Sender: TObject);
    procedure EdVb3IteExit(Sender: TObject);
    procedure EdVb4IteExit(Sender: TObject);
    procedure EdVb5IteExit(Sender: TObject);
    procedure EdCodCm5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure nvProAtualizar(Sender: TObject);
    procedure EdPsqCodClpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodGruKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodSubKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodCatKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodTipKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodMrcKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodTipKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodMrcKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodCatKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodGruKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodSubKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodClpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodUneKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodUnsKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdIcmSaiKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdIcmEntKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdIpiSaiKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdIpiEntKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ClassificaoFiscal1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BtnCodigosClick(Sender: TObject);
    procedure EstProBeforeDelete(DataSet: TDataSet);
    procedure nvIteSalva(Sender: TObject);
    procedure EdCodSteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdVcrIteExit(Sender: TObject);
    procedure EdMs1IteExit(Sender: TObject);
    procedure EdMs2IteExit(Sender: TObject);
    procedure EdMs3IteExit(Sender: TObject);
    procedure EdMs4IteExit(Sender: TObject);
    procedure EdMs5IteExit(Sender: TObject);
    procedure EdCodStsExit(Sender: TObject);
    procedure EdCodSteExit(Sender: TObject);
    procedure EstPro_02BeforeOpen(DataSet: TDataSet);
    procedure EstPro_02TBeforeOpen(DataSet: TDataSet);
    procedure quSQL2BeforeOpen(DataSet: TDataSet);
    procedure EstPro_03BeforeOpen(DataSet: TDataSet);
    procedure quSQL3BeforeOpen(DataSet: TDataSet);
    procedure PartNumber1Click(Sender: TObject);
    procedure EdIcmSaiChange(Sender: TObject);
    procedure EdIcmEntChange(Sender: TObject);
    procedure EdIpiSaiChange(Sender: TObject);
    procedure EdIpiEntChange(Sender: TObject);
    procedure EstProAfterOpen(DataSet: TDataSet);
    procedure EstProAfterRefresh(DataSet: TDataSet);
    procedure EstProAfterScroll(DataSet: TDataSet);
    procedure Label12DblClick(Sender: TObject);
    procedure Label17DblClick(Sender: TObject);
    procedure Label15DblClick(Sender: TObject);
    procedure Label18DblClick(Sender: TObject);
    procedure Label94DblClick(Sender: TObject);
    procedure Label95DblClick(Sender: TObject);
    procedure e(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure grProDblClick(Sender: TObject);
    procedure dxDBColorEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure nvProInclui(Sender: TObject);
    procedure EdCbaProKeyPress(Sender: TObject; var Key: Char);
    procedure edCBAEMBEmbKeyPress(Sender: TObject; var Key: Char);
    procedure dxDBColorEdit6Exit(Sender: TObject);
    procedure ABE0101Click(Sender: TObject);
    procedure pcProChange(Sender: TObject);
    procedure EdCodClpExit(Sender: TObject);
    procedure EstProAfterEdit(DataSet: TDataSet);
    procedure EstProAfterInsert(DataSet: TDataSet);
    procedure EstIteAfterPost(DataSet: TDataSet);
    procedure EstProBeforeClose(DataSet: TDataSet);
    procedure edFCPEntradaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edFCPSaidaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnEdCBAEMBEmbClick(Sender: TObject);
    procedure btnEdCbaProClick(Sender: TObject);
  private
    {Private declarations}
    pCodClp: string;
    pCodGru: string;
    pCodSub: string;
    pCodPro: string;

    procedure ValidaDadosItem;
    procedure ValidacaoSubstituicao(CodStr, TipStr: string);
    procedure checaIpi();

    function getFiltro(): String;
  public
    {Public declarations}
    sBase: string;
    sFiltro: string;
    sOrdem: string;
    sRetornar: string;
    sEstGruCodGru: string;
    sEstSubCodGru: string;
    sEstSubCodSub: string;
    verificador: string;
    ultCodNCMS, ultCodNCME: string;
    erro: string;

  end;

var
  AntVcrIte: real;
  AntVb1Ite: real;
  AntVb2Ite: real;
  AntVb3Ite: real;
  AntVb4Ite: real;
  AntVb5Ite: real;
  AntMk1Ite: real;
  AntMk2Ite: real;
  AntMk3Ite: real;
  AntMk4Ite: real;
  AntMk5Ite: real;
  AntMs1Ite: real;
  AntMs2Ite: real;
  AntMs3Ite: real;
  AntMs4Ite: real;
  AntMs5Ite: real;
  fmManPro2: TfmManPro2;

implementation

uses dxDemoUtils, ShellAPI, Bbacesso, BbGeral, Bbfuncao, BbMensag, ManGDB, PsqClp,
  Fpreview, AuxPro, PsqPro, AuxCod, ManPri, AuxIni, AuxPsq, ConClf,
  ManBar, ConPar, ManIcm, uManPsqPro, Manpaf, Manthrpaf, ManStr2;

{$R *.DFM}

procedure TfmManPro2.checaIpi();
begin
  if (EdIpiSai.Text <> '') then
  begin
    SQlRegNcmSaida.Active := False;
    SQlRegNcmSaida.ParamByName('Regra').AsString := EdIpiSai.Text;
    SQlRegNcmSaida.ParamByName('Tipo').AsString := 'Saida';
    SQlRegNcmSaida.Active := True;
  end
  else
    SQlRegNcmSaida.Active := False;

  if (EdIpiEnt.Text <> '') then
  begin
    SQlRegNcmEnt.Active := False;
    SQlRegNcmEnt.ParamByName('Regra').AsString := EdIpiEnt.Text;
    SQlRegNcmEnt.ParamByName('Tipo').AsString := 'Entrada';
    SQlRegNcmEnt.Active := True;
  end
  else
    SQlRegNcmEnt.Active := False;
end;

procedure TfmManPro2.pcPag1Show(Sender: TObject);
begin
  inherited;
  EdPsqCodCat.SetFocus;
end;

procedure TfmManPro2.grPro1CellChanged(Sender: TObject);
begin
  inherited;
  if not nvPro.Salvar then
  begin

    {if EstParTamCor.Value = 'Nao' then
    begin

      if EstQteCodEmp.Value > 0 then
        nvQte.Enabledbuttons := [nbExclui, nbSalva, nbCancela, nbNavega]
      else
        nvQte.EnabledButtons := [nbAtualizar, nbInclui, nbExclui, nbSalva, nbCancela, nbNavega];

      nvQte.DataSource := DsQte;

    end
    else
    begin

      nvQte.EnabledButtons := [nbAtualizar, nbInclui, nbExclui, nbSalva, nbCancela, nbNavega];

      nvQte.DataSource := DsQte;

    end;}

    {if EstParFlgTam.Value = 'Nao' then
    begin

      if EstTamCodEmp.Value > 0 then
        nvTam.Enabledbuttons := [nbExclui, nbSalva, nbCancela, nbNavega]
      else
        nvTam.EnabledButtons := [nbAtualizar, nbInclui, nbExclui, nbSalva, nbCancela, nbNavega];

      nvTam.DataSource := DsTam;

    end
    else
    begin

      nvTam.EnabledButtons := [nbAtualizar, nbInclui, nbExclui, nbSalva, nbCancela, nbNavega];

      nvTam.DataSource := DsTam;

    end;}

    if Trim(EstProCodClp.Value) = '' then
    begin

      pcPag4.Enabled := False;
    end
    else
    begin
      pcPag4.Enabled := True;

    end;
  end;
end;

procedure TfmManPro2.pcPag2Show(Sender: TObject);
begin
  inherited;

  EstSub.Close;
  EstSub.Params[0].AsString := EstProCodGru.Value;
  EstSub.Open;

  if pcPag2.Enabled then
  begin

    if EdCodClp.Enabled then
      EdCodClp.Setfocus
    else
      EdDscPro.SetFocus;

  end;
end;

procedure TfmManPro2.pcPag3Show(Sender: TObject);
begin
  inherited;

  EstSub.Close;
  EstSub.Params[0].AsString := EstProCodGru.Value;
  EstSub.Open;

  if pcPag3.Enabled then
    EdObsPro.Setfocus;

end;

procedure TfmManPro2.pcPag4Show(Sender: TObject);
begin
  inherited;

  EstSub.Close;
  EstSub.Params[0].AsString := EstProCodGru.Value;
  EstSub.Open;

  if pcPag4.Enabled then
    EdVcrIte.Setfocus;

end;

procedure TfmManPro2.grIteCellChanged(Sender: TObject);
begin
  inherited;
  {if EstParTamCor.Value = 'Nao' then
  begin

    if EstQteCodEmp.Value > 0 then
      nvQte.Enabledbuttons := [nbExclui, nbSalva, nbCancela, nbNavega]
    else
      nvQte.EnabledButtons := [nbAtualizar, nbInclui, nbExclui, nbSalva, nbCancela, nbNavega];

    nvQte.DataSource := DsQte;

  end
  else
  begin

    nvQte.EnabledButtons := [nbAtualizar, nbInclui, nbExclui, nbSalva, nbCancela, nbNavega];

    nvQte.DataSource := DsQte;

  end;}

  {if EstParFlgTam.Value = 'Nao' then
  begin

    if EstTamCodEmp.Value > 0 then
      nvTam.Enabledbuttons := [nbExclui, nbSalva, nbCancela, nbNavega]
    else
      nvTam.EnabledButtons := [nbAtualizar, nbInclui, nbExclui, nbSalva, nbCancela, nbNavega];

    nvTam.DataSource := DsTam;

  end
  else
  begin

    nvTam.EnabledButtons := [nbAtualizar, nbInclui, nbExclui, nbSalva, nbCancela, nbNavega];

    nvTam.DataSource := DsTam;

  end;}

  if EstIteCodEmp.Value > 0 then
    pcPag4.Enabled := True
  else
  begin

    if not nvIte.Salvar then
      pcPag4.Enabled := False;

  end;
end;

procedure TfmManPro2.grTamCellChanged(Sender: TObject);
begin
  inherited;
  {if EstParTamCor.Value = 'Nao' then
  begin

    if EstQteCodEmp.Value > 0 then
      nvQte.Enabledbuttons := [nbExclui, nbSalva, nbCancela, nbNavega]
    else
      nvQte.EnabledButtons := [nbAtualizar, nbInclui, nbExclui, nbSalva, nbCancela, nbNavega];

    nvQte.DataSource := DsQte;

  end
  else
  begin

    nvQte.EnabledButtons := [nbAtualizar, nbInclui, nbExclui, nbSalva, nbCancela, nbNavega];

    nvQte.DataSource := DsQte;

  end;}

  {if EstParFlgTam.Value = 'Nao' then
  begin

    if EstTamCodEmp.Value > 0 then
      nvTam.Enabledbuttons := [nbExclui, nbSalva, nbCancela, nbNavega]
    else
      nvTam.EnabledButtons := [nbAtualizar, nbInclui, nbExclui, nbSalva, nbCancela, nbNavega];

    nvTam.DataSource := DsTam;

  end
  else
  begin

    nvTam.EnabledButtons := [nbAtualizar, nbInclui, nbExclui, nbSalva, nbCancela, nbNavega];

    nvTam.DataSource := DsTam;

  end;}
end;

procedure TfmManPro2.FormCreate(Sender: TObject);
var
  regtrib: string;
begin
  inherited;

  //**
  //Para que a mascara seja alterada, o dataset deve ser alterado,
  //para valores, a TAG do field do dataset dever ser preenchido com o Nro 74
  //para quantidades, a TAG do field do dataset dever ser preenchido com o Nro 75
  //toda e qualquer mascara, deve ser removida do componente
  //
  //fmPadrao.modificaMascara(Self, 3, 'ESTPAR');

  if pos('Simples Nacional', fmmangdb.BuscaSimples('GEREMP', 'TIPEMP', ' 1 = 1')) > 0 then
    regtrib := '1'
  else
    regtrib := '3';

  EstPro.Active := False;

  sBase := ' Select eticm.pericm as ICM, EstPro.*,' +
    '        EstPro.CodClp || _UNICODE_FSS ' + QuotedStr('-') + ' || EstPro.CodGru || _UNICODE_FSS ' +
    QuotedStr('.') + ' || EstPro.CodSub || _UNICODE_FSS ' +
    QuotedStr('.') + ' || EstPro.CodPro as CodIte' +
    ' From EstPro' +
    ' left join esticm eticm' +
    ' on eticm.codicm = estpro.icmsai and' +
    ' Upper(eticm.tipicm) = ' + QuotedStr('SAIDA') + ' and ' +
    ' eticm.ufemitente = (select sigufe from geremp where codemp = ' + inttostr(GEmp_Id) + ') and' +
    ' eticm.CODREGTRIB = ' + regtrib +
    //' on eticm.id_esticm = estpro.id_esticm_saida' +
  ' where 1 = 1';

  verificador := fmManGdb.BuscaSimples('ESTPAR', 'REPLICA_ITENS', '1=1');
  if (fmmanpri.Emerion_01) and (verificador = '1') then
  begin
    EstPro_02.active := true;
    EstPro_02T.active := true;
  end;
  if (fmmanpri.Emerion_02) and (verificador = '1') then
    EstPro_03.active := true;

  EstSt1.Active := False;
  EstSt1.Active := True;

  EstQte.Active := True;

  if fmManGDB.BuscaSimples('LOJPAR', 'INTPAF', ' 1=1 ') = 'S' then
  begin
    VerificaAliasIMR;

    if Session.IsAlias('PAF') then
    begin
      fmManPaf.ConexaoPaf;
    end;
  end;

  //fmPadrao.modificarMascara(1);
end;

procedure TfmManPro2.DsProDataChange(Sender: TObject; Field: TField);
var
  BlobStream: TStream;
  JPEGImage: TJPEGImage;
begin
  inherited;

  if EstClp.Params[0].AsString <> EstProCodClp.Value then
  begin

    EstClp.Close;
    EstClp.Params[0].AsString := EstProCodClp.Value;
    EstClp.Open;

  end;

  if EstGru.Params[0].AsString <> FNumZeros(EstProCodGru.Value, 3) then
  begin

    EstGru.Close;
    EstGru.Params[0].AsString := FNumZeros(EstProCodGru.Value, 3);
    EstGru.Open;

  end;

  if (EstSub.Params[0].AsString <> FNumZeros(EstProCodGru.Value, 3)) or
    (EstSub.Params[1].AsString <> FNumZeros(EstProCodSub.Value, 4)) then
  begin

    EstSub.Close;
    EstSub.Params[0].AsString := FNumZeros(EstProCodGru.Value, 3);
    EstSub.Params[1].AsString := FNumZeros(EstProCodSub.Value, 4);
    EstSub.Open;

  end;

  if EstCat.Params[0].AsInteger <> EstProCodCat.Value then
  begin

    EstCat.Close;
    EstCat.Params[0].AsInteger := EstProCodCat.Value;
    EstCat.Open;

  end;

  if EstTip.Params[0].AsInteger <> EstProCodTip.Value then
  begin

    EstTip.Close;
    EstTip.Params[0].AsInteger := EstProCodTip.Value;
    EstTip.Open;

  end;

  if EstMrc.Params[0].AsInteger <> EstProCodMrc.Value then
  begin

    EstMrc.Close;
    EstMrc.Params[0].AsInteger := EstProCodMrc.Value;
    EstMrc.Open;

  end;

  if EstUns.Params[0].AsString <> EstProCodUns.Value then
  begin

    EstUns.Close;
    EstUns.Params[0].AsString := EstProCodUns.Value;
    EstUns.Open;

  end;

  if EstUne.Params[0].AsString <> EstProCodUne.Value then
  begin

    EstUne.Close;
    EstUne.Params[0].AsString := EstProCodUne.Value;
    EstUne.Open;

  end;

  if (IcmSai.Params[0].AsString <> EstProIcmSai.Value) or
    (IcmSai.Params[1].AsString <> EstProIcmTsd.Value) then
  begin

    IcmSai.Close;
    IcmSai.Params[0].AsString := EstProIcmSai.Value;
    IcmSai.Params[1].AsString := EstProIcmTsd.Value;
    IcmSai.Open;
  end;

  if (IcmEnt.Params[0].AsString <> EstProIcmEnt.Value) or
    (IcmEnt.Params[1].AsString <> EstProIcmTen.Value) then
  begin

    IcmEnt.Close;
    IcmEnt.Params[0].AsString := EstProIcmEnt.Value;
    IcmEnt.Params[1].AsString := EstProIcmTen.Value;
    IcmEnt.Open;

  end;

  if (IpiSai.Params[0].AsString <> EstProIpiSai.Value) or
    (IpiSai.Params[1].AsString <> EstProIpiTsd.Value) then
  begin

    IpiSai.Close;
    IpiSai.Params[0].AsString := EstProIpiSai.Value;
    IpiSai.Params[1].AsString := EstProIpiTsd.Value;
    IpiSai.Open;

  end;

  if (IpiEnt.Params[0].AsString <> EstProIpiEnt.Value) or
    (IpiEnt.Params[1].AsString <> EstProIpiTen.Value) then
  begin

    IpiEnt.Close;
    IpiEnt.Params[0].AsString := EstProIpiEnt.Value;
    IpiEnt.Params[1].AsString := EstProIpiTen.Value;
    IpiEnt.Open;

  end;

  if (EstSts.Params[0].AsString <> EstProCodSts.Value) or
    (EstSts.Params[1].AsString <> EstProTipSts.Value) then
  begin

    EstSts.Close;
    EstSts.Params[0].AsString := EstProCodSts.Value;
    EstSts.Params[1].AsString := EstProTipSts.Value;
    EstSts.Open;

  end;

  if (EstSte.Params[0].AsString <> EstProCodSte.Value) or
    (EstSte.Params[1].AsString <> EstProTipSte.Value) then
  begin

    EstSte.Close;
    EstSte.Params[0].AsString := EstProCodSte.Value;
    EstSte.Params[1].AsString := EstProTipSte.Value;
    EstSte.Open;

  end;

  if GerUsu.Params[0].AsInteger <> EstProCodUsu.Value then
  begin

    GerUsu.Close;
    GerUsu.Params[0].AsInteger := EstProCodUsu.Value;
    GerUsu.Open;

  end;

  if EstProCodCat.Value > 0 then
    pnCategoria.Caption := EstCatNomCat.Value
  else
    pnCategoria.Caption := ' ';

  if EstProCodTip.Value > 0 then
    pnTipo.Caption := EstTipNomTip.Value
  else
    pnTipo.Caption := ' ';

  if EstProCodMrc.Value > 0 then
    pnMarca.Caption := EstMrcNomMrc.Value
  else
    pnMarca.Caption := ' ';

  if Trim(EstProCodCom.Value) <> '' then
    pnPerCom.Caption := FormatFloat('##0.00', FinComPerCom.Value) + ' %'
  else
    pnPerCom.Caption := '0' + DecimalSeparator + '00' + ' %';

  if Trim(EstProNumPro.Value) <> '' then
    pnRefPro.Caption := EstProNumPro.Value
  else
    pnRefPro.Caption := EstProRefPro.Value;

  if not nvPro.Salvar then
  begin

    Label32.Caption := '';

    if EstProCodClp.Value <> '' then
    begin

      EdCodClp.Enabled := False;
      EdCodGru.Enabled := False;
      EdCodSub.Enabled := False;
      EdCodPro.Enabled := False;

      EdCodClp.Font.Style := [fsBold];
      EdCodGru.Font.Style := [fsBold];
      EdCodSub.Font.Style := [fsBold];
      EdCodPro.Font.Style := [fsBold];

    end
    else
    begin

      EdCodClp.Enabled := True;
      EdCodGru.Enabled := True;
      EdCodSub.Enabled := True;
      EdCodPro.Enabled := True;

      EdCodClp.Font.Style := [];
      EdCodGru.Font.Style := [];
      EdCodSub.Font.Style := [];
      EdCodPro.Font.Style := [];

    end;

    if EstProFlgPro.Value = 'Sim' then
    begin

      if not Label79.Visible then
      begin

        Label79.Visible := True;
        Label80.Visible := True;
        Label81.Visible := True;
        Label86.Visible := True;
        Label87.Visible := True;

        Label122.Visible := True;
        Label123.Visible := True;
        Label124.Visible := True;
        Label125.Visible := True;
        Label126.Visible := True;

        EdVp1Ite.Visible := True;
        EdVp2Ite.Visible := True;
        EdVp3Ite.Visible := True;
        EdVp4Ite.Visible := True;
        EdVp5Ite.Visible := True;

      end;

    end
    else
    begin

      if Label79.Visible then
      begin

        Label79.Visible := False;
        Label80.Visible := False;
        Label81.Visible := False;
        Label86.Visible := False;
        Label87.Visible := False;

        Label122.Visible := False;
        Label123.Visible := False;
        Label124.Visible := False;
        Label125.Visible := False;
        Label126.Visible := False;

        EdVp1Ite.Visible := False;
        EdVp2Ite.Visible := False;
        EdVp3Ite.Visible := False;
        EdVp4Ite.Visible := False;
        EdVp5Ite.Visible := False;

      end;
    end;

    if (EstIte.Params[0].AsString <> EstProCodClp.Value) or (EstIte.Params[1].AsString <> EstProCodGru.Value) or
      (EstIte.Params[2].AsString <> EstProCodSub.Value) or (EstIte.Params[3].AsString <> EstProCodPro.Value) then
    begin

      EstIte.Close;
      EstIte.Params[0].AsString := EstProCodClp.Value;
      EstIte.Params[1].AsString := EstProCodGru.Value;
      EstIte.Params[2].AsString := EstProCodSub.Value;
      EstIte.Params[3].AsString := EstProCodPro.Value;
      EstIte.Open;

      {EstQte.Close;
      EstQte.Params[0].AsString := EstProCodClp.Value;
      EstQte.Params[1].AsString := EstProCodGru.Value;
      EstQte.Params[2].AsString := EstProCodSub.Value;
      EstQte.Params[3].AsString := EstProCodPro.Value;
      EstQte.Open;}

      if EstProImgPro.BlobSize <> 0 then
      begin

        BlobStream := EstPro.CreateBlobStream(EstProImgPro, bmRead);

        JPEGImage := TJPEGImage.Create;

        try

          JPEGImage.LoadFromStream(BlobStream);

          Imagem2.Picture.Assign(JPEGImage);

        finally

          FreeAndNil(BlobStream);

          FreeAndNil(JPEGImage);

        end;

      end
      else
        Imagem2.Picture := nil;
    end;
  end;
end;

procedure TfmManPro2.EstProNewRecord(DataSet: TDataSet);
begin
  inherited;

  EstPro.DisableControls;

  EstProISSPRO.Value := 0;
  EstProSAIICM.Value := 0;
  EstProENTICM.Value := 0;
  EstProSAIIPI.Value := 0;
  EstProENTIPI.Value := 0;
  EstProQtdEmb.Value := 0;
  EstProPesBrt.Value := 0;
  EstProPesLiq.Value := 0;
  EstProBrtEmb.Value := 0;
  EstProLiqEmb.Value := 0;
  EstProGarPro.Value := 0;
  EstProAltPro.Value := 0;
  EstProComPro.Value := 0;
  EstProLarPro.Value := 0;
  EstProCubPro.Value := 0;
  EstProCxaPro.Value := 0;
  EstProCxaPro.Value := 0;
  EstProValImp.Value := 0;
  EstProSeqBar.Value := 0;
  EstProFlbPro.Value := ' ';
  EstProFlgTrg.Value := ' ';
  EstProCodClp.Value := '1';
  EstProDtcPro.Value := Date;
  EstProFlgPro.Value := 'Nao';
  EstProCodUsu.Value := GUsu_Id;

  EstPro.EnableControls;

  Label96.Visible := False;

  EdVp1Ite.Visible := False;
  EdVp2Ite.Visible := False;
  EdVp3Ite.Visible := False;
  EdVp4Ite.Visible := False;
  EdVp5Ite.Visible := False;

  Imagem2.Picture := nil;

  if pcPro.ActivePage <> pcPag2 then
    pcPro.ActivePage := PcPag2;

  EdCodClp.Enabled := True;
  EdCodGru.Enabled := True;
  EdCodSub.Enabled := True;
  EdCodPro.Enabled := True;

  EdCodClp.Font.Style := [];
  EdCodGru.Font.Style := [];
  EdCodSub.Font.Style := [];
  EdCodPro.Font.Style := [];

  pcPag4.Enabled := False;

  EstIte.Close;
  EstIte.Params[0].AsString := EstProCodClp.Value;
  EstIte.Params[1].AsString := EstProCodGru.Value;
  EstIte.Params[2].AsString := EstProCodSub.Value;
  EstIte.Params[3].AsString := EstProCodPro.Value;
  EstIte.Open;

  EdCodGru.SetFocus;

end;

procedure TfmManPro2.EdPsqCodClpExit(Sender: TObject);
begin
  inherited;
  if Trim(EdPsqCodClp.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := ' Select NomClp From EstClp Where CodClp = ''' + EdPsqCodClp.Text + '''';
      Open;

      EdPsqNomClp.Text := FieldByName('NomClp').AsString;

    end;

  end
  else
    EdPsqNomClp.Text := '';
end;

procedure TfmManPro2.BbPsqClpClick(Sender: TObject);
begin
  inherited;

  try

    fmAuxIni := TfmAuxIni.Create(Self);

    if Trim(EdPsqCodCat.Text) <> '' then
      fmAuxIni.CodCat := StrToInt(EdPsqCodCat.Text);
    if Trim(EdPsqCodTip.Text) <> '' then
      fmAuxIni.CodTip := StrToInt(EdPsqCodTip.Text);
    if Trim(EdPsqCodMrc.Text) <> '' then
      fmAuxIni.CodMrc := StrToInt(EdPsqCodMrc.Text);

    fmAuxIni.TipoPesq := 'Cls';

    fmAuxIni.ShowModal;

    if Trim(fmAuxIni.CodClp) <> '' then
    begin

      EdPsqCodClp.Text := fmAuxIni.CodClp;
      EdPsqNomClp.Text := fmAuxIni.NomClp;

    end;

  finally

    FreeAndNil(fmAuxIni);

  end;

  if Trim(EdPsqCodClp.Text) <> '' then
    EdPsqCodGru.SetFocus;

end;

procedure TfmManPro2.EdPsqCodGruExit(Sender: TObject);
begin
  inherited;
  if Trim(EdPsqCodGru.Text) <> '' then
  begin

    EdPsqCodGru.Text := FNumZeros(EdPsqCodGru.Text, 3);

    with quSql, SQL do
    begin

      Close;
      Text := ' Select NomGru From EstGru ' +
        ' Where CodGru = ''' + EdPsqCodGru.Text + '''';
      Open;

      EdPsqNomGru.Text := FieldByName('NomGru').AsString;

    end;

  end
  else
    EdPsqNomGru.Text := '';
end;

procedure TfmManPro2.BbPsqGruClick(Sender: TObject);
begin
  inherited;

  try

    fmAuxIni := TfmAuxIni.Create(Self);

    if Trim(EdPsqCodCat.Text) <> '' then
      fmAuxIni.CodCat := StrToInt(EdPsqCodCat.Text);
    if Trim(EdPsqCodTip.Text) <> '' then
      fmAuxIni.CodTip := StrToInt(EdPsqCodTip.Text);
    if Trim(EdPsqCodMrc.Text) <> '' then
      fmAuxIni.CodMrc := StrToInt(EdPsqCodMrc.Text);
    if Trim(EdPsqCodClp.Text) <> '' then
      fmAuxIni.CodClp := EdPsqCodClp.Text;

    fmAuxIni.TipoPesq := 'G';

    fmAuxIni.ShowModal;

    if Trim(fmAuxIni.CodGru) <> '' then
    begin

      EdPsqCodGru.Text := fmAuxIni.CodGru;
      EdPsqNomGru.Text := fmAuxIni.NomGru;

    end;

  finally

    FreeAndNil(fmAuxIni);

  end;

  if Trim(EdPsqCodGru.Text) <> '' then
    EdPsqCodSub.SetFocus;

end;

procedure TfmManPro2.EdPsqCodSubExit(Sender: TObject);
begin
  inherited;
  if (EdPsqCodSub.Text <> '') and (EdPsqCodGru.Text <> '') then
  begin

    EdPsqCodSub.Text := FNumZeros(EdPsqCodSub.Text, 4);

    with quSql, SQL do
    begin

      Close;
      Text := ' Select NomSub From EstSub ' +
        ' Where CodGru = ''' + EdPsqCodGru.Text + '''' +
        '   and CodSub = ''' + EdPsqCodSub.Text + '''';
      Open;

      EdPsqNomSub.Text := FieldByName('NomSub').AsString;

    end;

  end
  else
    EdPsqNomSub.Text := '';
end;

procedure TfmManPro2.BbPsqSubClick(Sender: TObject);
begin
  inherited;

  try

    fmAuxIni := TfmAuxIni.Create(Self);

    if Trim(EdPsqCodClp.Text) <> '' then
      fmAuxIni.CodClp := EdPsqCodClp.Text;
    if Trim(EdPsqCodGru.Text) <> '' then
      fmAuxIni.CodGru := EdPsqCodGru.Text;
    if Trim(EdPsqCodCat.Text) <> '' then
      fmAuxIni.CodCat := StrToInt(EdPsqCodCat.Text);
    if Trim(EdPsqCodTip.Text) <> '' then
      fmAuxIni.CodTip := StrToInt(EdPsqCodTip.Text);
    if Trim(EdPsqCodMrc.Text) <> '' then
      fmAuxIni.CodMrc := StrToInt(EdPsqCodMrc.Text);

    fmAuxIni.TipoPesq := 'S';

    fmAuxIni.ShowModal;

    if Trim(fmAuxIni.CodSub) <> '' then
    begin

      EdPsqCodGru.Text := fmAuxIni.CodGru;
      EdPsqNomGru.Text := fmAuxIni.NomGru;
      EdPsqCodSub.Text := fmAuxIni.CodSub;
      EdPsqNomSub.Text := fmAuxIni.NomSub;

    end;

  finally

    FreeAndNil(fmAuxIni);

  end;

  if Trim(EdPsqCodSub.Text) <> '' then
    EdPsqCodPro.SetFocus;

end;

procedure TfmManPro2.TOTAL(Sender: TObject);
begin
  inherited;

  sOrdem := '';
  sFiltro := '';

  case rgOrdem.Itemindex of
    0: sOrdem := ' Order by EstPro.CodClp,EstPro.CodGru,EstPro.CodSub,EstPro.CodPro';
    1: sOrdem := ' Order by EstPro.DscPro';
    2: sOrdem := ' Order by EstPro.SimPro';
    3: sOrdem := ' Order by EstPro.CodCat';
    4: sOrdem := ' Order by EstPro.CodTip';
    5: sOrdem := ' Order by EstPro.CodMrc';
  end;

  case rgStatus.Itemindex of
    0: sFiltro := ' and EstPro.FlbPro  = ''' + ' ' + '''';
    1: sFiltro := ' and EstPro.FlbPro  = ''' + '*' + '''';
  end;

  if pos('Where', sFiltro) > 0 then
  begin

    case rgPromocao.Itemindex of
      0: sFiltro := sFiltro + ' and EstPro.FlgPro  = ''' + 'Sim' + '''';
      1: sFiltro := sFiltro + ' and EstPro.FlgPro  = ''' + 'Nao' + '''';
    end;

  end
  else
  begin

    case rgPromocao.Itemindex of
      0: sFiltro := ' and EstPro.FlgPro  = ''' + 'Sim' + '''';
      1: sFiltro := ' and EstPro.FlgPro  = ''' + 'Nao' + '''';
    end;
  end;

  if Trim(EdPsqCodCat.Text) <> '' then
    sFiltro := sFiltro + ' and EstPro.CodCat = ''' + EdPsqCodCat.Text + '''';

  if Trim(EdPsqCodTip.Text) <> '' then
    sFiltro := sFiltro + ' and EstPro.CodTip = ''' + EdPsqCodTip.Text + '''';

  if Trim(EdPsqCodMrc.Text) <> '' then
    sFiltro := sFiltro + ' and EstPro.CodMrc = ''' + EdPsqCodMrc.Text + '''';

  if Trim(EdPsqCodClp.Text) <> '' then
    sFiltro := sFiltro + ' and EstPro.CodClp = ''' + EdPsqCodClp.Text + '''';

  if Trim(EdPsqCodGru.Text) <> '' then
    sFiltro := sFiltro + ' and EstPro.CodGru = ''' + EdPsqCodGru.Text + '''';

  if Trim(EdPsqCodSub.Text) <> '' then
    sFiltro := sFiltro + ' and EstPro.CodSub = ''' + EdPsqCodSub.Text + '''';

  if Trim(EdPsqCodPro.Text) <> '' then
    sFiltro := sFiltro + ' and EstPro.CodPro = ''' + EdPsqCodPro.Text + '''';

  if Rgbusca.ItemIndex = 0 then
  begin

    if Trim(EdPsqSimPro.Text) <> '' then
      sFiltro := sFiltro + ' and EstPro.SimPro LIKE ''' + EdPsqSimPro.Text + '%''';

    if Trim(EdPsqCbaPro.Text) <> '' then
      sFiltro := sFiltro + ' and EstPro.CbaPro LIKE ''' + EdPsqCbaPro.Text + '%''';

    if Trim(EdPsqRefPro.Text) <> '' then
      sFiltro := sFiltro + ' and EstPro.RefPro LIKE ''' + EdPsqRefPro.Text + '%''';

    if Trim(EdPsqCODNCM.Text) <> '' then
      sFiltro := sFiltro + ' and EstPro.CODNCM LIKE ''' + EdPsqCODNCM.Text + '%''';

    if Trim(EdPsqDscPro.Text) <> '' then
      sFiltro := sFiltro + ' and EstPro.DscPro LIKE ''' + EdPsqDscPro.Text + '%''';

  end
  else
  begin

    if Trim(EdPsqSimPro.Text) <> '' then
      sFiltro := sFiltro + ' and EstPro.SimPro LIKE ''%' + EdPsqSimPro.Text + '%''';

    if Trim(EdPsqCbaPro.Text) <> '' then
      sFiltro := sFiltro + ' and EstPro.CbaPro LIKE ''%' + EdPsqCbaPro.Text + '%''';

    if Trim(EdPsqRefPro.Text) <> '' then
      sFiltro := sFiltro + ' and EstPro.RefPro LIKE ''%' + EdPsqRefPro.Text + '%''';

    if Trim(EdPsqCODNCM.Text) <> '' then
      sFiltro := sFiltro + ' and EstPro.CODNCM LIKE ''%' + EdPsqCODNCM.Text + '%''';

    if Trim(EdPsqDscPro.Text) <> '' then
      sFiltro := sFiltro + ' and EstPro.DscPro LIKE ''%' + EdPsqDscPro.Text + '%''';
  end;

  EstPro.Active := False;
  EstPro.SQL.Text := sBase + sFiltro + sOrdem;
  EstPro.Active := True;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Select Count(1) as Reg From EstPro where 1 = 1' + sFiltro;
    Open;

    pnQuant.Caption := fNumZeros(IntToStr(FieldbyName('Reg').AsInteger), 6);

  end;

  grPro.SetFocus;

end;

procedure TfmManPro2.EdCodGruExit(Sender: TObject);
begin
  inherited;

  if Trim(EstProCodGru.Value) <> '' then
  begin

    if nvPro.Salvar then
      EstProCodGru.Value := FNumZeros(EstProCodGru.Value, 3);

  end;
end;

procedure TfmManPro2.EdCodSubExit(Sender: TObject);
begin
  inherited;
  if Trim(EstProCodSub.Value) <> '' then
  begin

    if nvPro.Salvar then
      EstProCodSub.Value := FNumZeros(EstProCodSub.Value, 4);

  end;
end;

procedure TfmManPro2.mmPopProPopup(Sender: TObject);
begin
  inherited;
  PcPro.ActivePage := pcPag1;
end;

procedure TfmManPro2.EdCodProExit(Sender: TObject);
begin
  inherited;

  Label32.Caption := '';

  if nvPro.Salvar then
  begin

    if EstProCodPro.Value <> '' then
      EstProCodPro.Value := FNumStrZero(EstProCodPro.Value);

    if EstPro.State = dsInsert then
    begin

      with quSQL, SQL do
      begin

        Close;
        Text := ' Select Count(*) as Reg From EstPro' +
          ' Where EstPro.CodClp = :CodClp' +
          '   and EstPro.CodGru = :CodGru' +
          '   and EstPro.CodSub = :CodSub' +
          '   and EstPro.CodPro = :CodPro';

        with Params do
        begin

          Params[0].AsString := EstProCodClp.Value;
          Params[1].AsString := EstProCodGru.Value;
          Params[2].AsString := EstProCodSub.Value;
          Params[3].AsString := EstProCodPro.Value;

        end;

        Open;

        if FieldbyName('Reg').AsInteger > 0 then
          fmsgErro('Item já Cadastrado.', EdCodPro);

      end;
    end;
  end;
end;

procedure TfmManPro2.nvProImprime(Sender: TObject);
begin
  inherited;
  with quSql1, SQL do
  begin

    Close;
    Text := ' Select CodClp,NomClp,CodGru,NomGru,CodSub,NomSub,CodPro,DscPro,' +
      '        RefPro,SimPro,LocPro,CatPro,CodUne,CodUns,QtePro,QtsPro' +
      ' From EstPro LEFT JOIN EstClp ON (EstPro.CodClp = EstClp.CodClp)' +
      '             LEFT JOIN EstSub ON (EstPro.CodGru = EstSub.CodGru)' +
      '                             AND (EstPro.CodSub = EstSub.CodSub)' +
      '             LEFT JOIN EstGru ON (EstSub.CodGru = EstGru.CodGru)' + sFiltro + ' Order by CodClp,CodGru,CodSub,CodPro';
    Open;
    First;

  end;

  if not quSql1.Eof then
  begin

    try

      ppReport1.DeviceType := 'Screen';
      fmPreview := TfmPreview.Create(fmManPro2);
      fmPreview.ppViewer.Report := ppReport1;
      ppReport1.PrintToDevices;
      fmPreview.ShowModal;

      if Assigned(ppReport1.AfterPrint) then
        ppReport1.AfterPrint(Sender);

    finally

      FreeAndNil(fmPreview);

    end;
  end;
end;

procedure TfmManPro2.ppGroupHeaderBand1BeforePrint(Sender: TObject);
begin
  inherited;
  ppCodClp.Caption := PreString(quSql1CodClp.Value, 7);
  ppNomClp.Caption := quSql1NomClp.Value;
end;

procedure TfmManPro2.ppGroupHeaderBand2BeforePrint(Sender: TObject);
begin
  inherited;

  ppCodGru.Caption := PreString(quSql1CodGru.Value, 7);
  ppNomGru.Caption := quSql1NomGru.Value;

  ppCodSub.Caption := PreString(quSql1CodSub.Value, 7);
  ppNomSub.Caption := quSql1NomSub.Value;

end;

procedure TfmManPro2.dbReportBeforePrint(Sender: TObject);
begin
  inherited;

  ppCodPro.Caption := quSql1CodPro.Value;
  ppDscPro.Caption := quSql1DscPro.Value;
  ppRefPro.Caption := copy(quSql1RefPro.Value, 1, 15);
  ppSimPro.Caption := PreString(quSql1SimPro.Value, 7);
  ppLocPro.Caption := copy(quSql1LocPro.Value, 1, 15);
  ppCatPro.Caption := copy(quSql1CatPro.Value, 1, 15);
  ppCodUne.Caption := PreString(quSql1CodUne.Value, 3);
  ppQtePro.Caption := PreString(FormatFloat('###,##0.0000', quSql1QtePro.Value), 12);
  ppCodUns.Caption := PreString(quSql1CodUns.Value, 3);
  ppQtsPro.Caption := PreString(FormatFloat('###,##0.0000', quSql1QtsPro.Value), 12);

end;

procedure TfmManPro2.EstProBeforePost(DataSet: TDataSet);
begin
  inherited;

  EstProCodGru.Value := FNumZeros(EstProCodGru.Value, 3);
  EstProCodSub.Value := FNumZeros(EstProCodSub.Value, 4);
  EstProCodPro.Value := FNumStrZero(EstProCodPro.Value);

  if Trim(EstProDscPro.Value) = '' then
    fmsgErro('Descrição Principal não Informada', EdDscPro);

  if (EstPro.State = dsInsert) or (pos('and', sFiltro) = 0) then
    sFiltro := 'and EstPro.CodClp = ''' + EstProCodClp.Value + '''' +
      '   and EstPro.CodGru = ''' + EstProCodGru.Value + '''' +
      '   and EstPro.CodSub = ''' + EstProCodSub.Value + '''' +
      '   and EstPro.CodPro = ''' + EstProCodPro.Value + '''';

  pCodClp := EstProCodClp.Value;
  pCodGru := EstProCodGru.Value;
  pCodSub := EstProCodSub.Value;
  pCodPro := EstProCodPro.Value;

end;

procedure TfmManPro2.EdDscProExit(Sender: TObject);
begin
  inherited;
  if (nvPro.Salvar) and (EstProDsrPro.Value = '') then
    EstProDsrPro.Value := EstProDscPro.Value;
end;

procedure TfmManPro2.nvProCancela(Sender: TObject);
begin
  inherited;
  pcPag4.Enabled := True;

end;

procedure TfmManPro2.nvProSalva(Sender: TObject);
var
  sCodBar: integer;
  CodBar: string;
  verificador: string;
  AtuPaf: TThrPAF;
begin
  inherited;

  pcPag4.Enabled := True;

  with EstPro, SQL do
  begin

    Close;
    Text := sBase + sFiltro + sOrdem;
    Open;

  end;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Select Count(*) as Reg From EstPro where 1 = 1' + sFiltro;
    Open;

    pnQuant.Caption := fNumZeros(IntToStr(FieldbyName('Reg').AsInteger), 6);

  end;

  //if Trim(pCodClp) <> '' then
    //EstPro.Locate('CODCLP;CODGRU;CODSUB;CODPRO', VarArrayOf([pCodClp, pCodGru, pCodSub, pCodPro]), [loPartialKey]);

  if EstParLanCba.Value = 'Sim' then
  begin

    if EstParTipEan.Value = 'Itens' then
    begin

      if Trim(EstParIniEan.Value) <> '' then
      begin

        with quSQL, SQL do
        begin

          Close;
          Text := ' Select EstPro.CodBar From EstPro' +
            ' Where EstPro.CodClp = ''' + EstProCodClp.Value + '''' +
            '   and EstPro.CodGru = ''' + EstProCodGru.Value + '''' +
            '   and EstPro.CodSub = ''' + EstProCodSub.Value + '''' +
            '   and EstPro.CodPro = ''' + EstProCodPro.Value + '''';
          Open;

          sCodBar := FieldbyName('CodBar').AsInteger;

        end;

        if sCodBar > 0 then
        begin

          with quSQL, SQL do
          begin

            Close;
            Text := ' Select Count(*) as QtdReg From EstBar' +
              ' Where EstBar.CodClp = ''' + EstProCodClp.Value + '''' +
              '   and EstBar.CodGru = ''' + EstProCodGru.Value + '''' +
              '   and EstBar.CodSub = ''' + EstProCodSub.Value + '''' +
              '   and EstBar.CodPro = ''' + EstProCodPro.Value + '''' +
              '   and EstBar.FlgInt = ''' + 'Sim' + '''';
            Open;

          end;

          if quSQL.FieldbyName('QtdReg').AsInteger = 0 then
          begin

            //CodBar := fGeraCB2(trim(EstParIniEan.AsString) + fNumZeros(IntToStr(sCodBar), (12- length(EstParIniEan.AsString))));

            if Length(Trim(EstParIniEan.Value)) = 9 then
              CodBar := fGeraCB2(Trim(EstParIniEan.Value) + fNumZeros(IntToStr(sCodBar), 3))
            else
            begin

              if Length(Trim(EstParIniEan.Value)) = 8 then
                CodBar := fGeraCB2(Trim(EstParIniEan.Value) + fNumZeros(IntToStr(sCodBar), 4))
              else
                CodBar := fGeraCB2(EstParIniEan.Value + fNumZeros(IntToStr(sCodBar), 5))

            end;

            if Trim(CodBar) <> '' then
            begin

              with quSQL, SQL do
              begin

                Close;
                Text := ' Insert Into EstBar(CodClp,CodGru,CodSub,CodPro,SeqBar,CodBar,NroBar,FlgInt,QtdEmb,TipEmb)' +
                  '             Values(:CodClp,:CodGru,:CodSub,:CodPro,:SeqBar,:CodBar,:NroBar,:FlgInt,:QtdEmb,:TipEmb)';

                with Params do
                begin

                  Params[0].AsString := EstProCodClp.Value;
                  Params[1].AsString := EstProCodGru.Value;
                  Params[2].AsString := EstProCodSub.Value;
                  Params[3].AsString := EstProCodPro.Value;
                  Params[4].AsInteger := 1;
                  Params[5].AsString := CodBar;
                  Params[6].AsInteger := 1;
                  Params[7].AsString := 'Sim';
                  Params[8].AsFloat := 1;
                  Params[9].AsString := 'Unidade';

                end;

                ExecSQL;

              end;
            end;
          end;
        end;
      end;
    end;
  end;

  EstPro.Close;
  EstPro.Open;

  if fmManGDB.BuscaSimples('LOJPAR', 'INTPAF', ' 1=1 ') = 'S' then
  begin
    AtuPaf := TThrPAF.Create(False, estproCodClp.AsString, estproCodGru.AsString, estproCodSub.AsString, estproCodPro.AsString);
    AtuPaf.FreeOnTerminate := True;
    AtuPaf.Priority := tpNormal;
    AtuPaf.Resume;
    //ExportaPAF(estproCodClp.AsString, estproCodGru.AsString, estproCodSub.AsString, estproCodPro.AsString);
  end;

  verificador := fmManGdb.BuscaSimples('ESTPAR', 'REPLICA_ITENS', '1=1');
  if (fmmanpri.Emerion_01) and (verificador = '1') then
    with fmManGDB.dbEmerion1 do
    begin

      try
        Connected := True;
      except
        on E: Exception do
        begin
          fMsg('Sem comunicação com a Unidade Aurora. Alteração não foi envidada para esta Unidade', 'E');
        end;
      end;

    end;

  if (fmmanpri.Emerion_02) and (verificador = '1') then
    with fmManGDB.dbEmerion2 do
    begin

      try
        Connected := True;
      except
        on E: Exception do
        begin
          fMsg('Sem comunicação com a Unidade Gusmões. Alteração não foi envidada para esta Unidade', 'E');
        end;
      end;

    end;

  sleep(1000);

  try

    if (fmManGDB.dbEmerion1.Connected) and (verificador = '1') then
    begin
      EstPro_02.Close;
      EstPro_02.Params[0].AsString := EstProCodClp.Value;
      EstPro_02.Params[1].AsString := EstProCodGru.Value;
      EstPro_02.Params[2].AsString := EstProCodSub.Value;
      EstPro_02.Params[3].AsString := EstProCodPro.Value;
      EstPro_02.Open;
      if Trim(EstPro_02CodPro.Value) = '' then
      begin
        EstPro_02.Insert;
        EstPro_02FlgTrg.Value := ' ';
        EstPro_02CodClp.Value := EstProCodClp.Value;
        EstPro_02CodGru.Value := EstProCodGru.Value;
        EstPro_02CodSub.Value := EstProCodSub.Value;
        EstPro_02CodPro.Value := EstProCodPro.Value;
        EstPro_02DscPro.Value := EstProDscPro.Value;
        EstPro_02DsrPro.Value := EstProDsrPro.Value;
        EstPro_02CbaPro.Value := EstProCbaPro.Value;
        EstPro_02CbaEmb.Value := EstProCbaEmb.Value;
        EstPro_02CatPro.Value := EstProCatPro.Value;
        EstPro_02LocPro.Value := EstProLocPro.Value;
        EstPro_02RefPro.Value := EstProRefPro.Value;
        EstPro_02FlbPro.Value := EstProFlbPro.Value;
        EstPro_02WebPro.Value := EstProWebPro.Value;
        EstPro_02DtcPro.Value := EstProDtcPro.Value;
        EstPro_02ImgPro.Value := EstProImgPro.Value;
        EstPro_02ObsPro.Value := EstProObsPro.Value;
        EstPro_02CodAnt.Value := EstProCodAnt.Value;
        EstPro_02ClfEnt.Value := EstProClfEnt.Value;
        EstPro_02ClfSai.Value := EstProClfSai.Value;
        EstPro_02NumPro.Value := EstProNumPro.Value;
        EstPro_02SimPro.Value := EstProSimPro.Value;
        EstPro_02IdePro.Value := EstProIdePro.Value;
        EstPro_02FlgPro.Value := EstProFlgPro.Value;
        EstPro_02FlgKit.Value := EstProFlgKit.Value;
        EstPro_02CbaEm2.Value := EstProCbaEm2.Value;
        EstPro_02CbaEm3.Value := EstProCbaEm3.Value;
        EstPro_02DesImp.Value := EstProDesImp.Value;
        EstPro_02DesIm2.Value := EstProDesIm2.Value;
        EstPro_02DscImp.Value := EstProDscImp.Value;
        EstPro_02DsrImp.Value := EstProDsrImp.Value;
        EstPro_02FlgLis.Value := EstProFlgLis.Value;
        EstPro_02DesNc1.Value := EstProDesNc1.Value;
        EstPro_02DesNc2.Value := EstProDesNc2.Value;
        EstPro_02DesNc3.Value := EstProDesNc3.Value;
        EstPro_02DesNc4.Value := EstProDesNc4.Value;
        EstPro_02DesNc5.Value := EstProDesNc5.Value;
        EstPro_02DesNc6.Value := EstProDesNc6.Value;
        EstPro_02DesNc7.Value := EstProDesNc7.Value;
        EstPro_02DesNc8.Value := EstProDesNc8.Value;
        EstPro_02QtdEmb.Value := EstProQtdEmb.Value;
        EstPro_02IssPro.Value := EstProIssPro.Value;
        EstPro_02QtePro.Value := EstProQtePro.Value;
        EstPro_02QtsPro.Value := EstProQtsPro.Value;
        EstPro_02PesLiq.Value := EstProPesLiq.Value;
        EstPro_02PesBrt.Value := EstProPesBrt.Value;
        EstPro_02SaiIcm.Value := EstProSaiIcm.Value;
        EstPro_02EntIcm.Value := EstProEntIcm.Value;
        EstPro_02SaiIpi.Value := EstProSaiIpi.Value;
        EstPro_02EntIpi.Value := EstProEntIpi.Value;
        EstPro_02EntImp.Value := EstProEntImp.Value;
        EstPro_02LiqEmb.Value := EstProLiqEmb.Value;
        EstPro_02BrtEmb.Value := EstProBrtEmb.Value;
        EstPro_02GarPro.Value := EstProGarPro.Value;
        EstPro_02AltPro.Value := EstProAltPro.Value;
        EstPro_02ComPro.Value := EstProComPro.Value;
        EstPro_02LarPro.Value := EstProLarPro.Value;
        EstPro_02CubPro.Value := EstProCubPro.Value;
        EstPro_02CxaPro.Value := EstProCxaPro.Value;
        EstPro_02QtdVol.Value := EstProQtdVol.Value;
        EstPro_02ValImp.Value := EstProValImp.Value;
        EstPro_02CodBar.Value := EstProCodBar.Value;
        EstPro_02CODNCM.Value := EstProCODNCM.Value;
        EstPro_02FCI.Value    := EstProFCI.Value;

        if EstProCodTip.Value > 0 then
          EstPro_02CodTip.Value := EstProCodTip.Value;
        if EstProCodMrc.Value > 0 then
          EstPro_02CodMrc.Value := EstProCodMrc.Value;
        if EstProCodCat.Value > 0 then
          EstPro_02CodCat.Value := EstProCodCat.Value;
        if EstProCodUsu.Value > 0 then
          EstPro_02CodUsu.Value := EstProCodUsu.Value;

        if Trim(EstProCodUne.Value) <> '' then
          EstPro_02CodUne.Value := EstProCodUne.Value;
        if Trim(EstProCodUns.Value) <> '' then
          EstPro_02CodUns.Value := EstProCodUns.Value;
        if Trim(EstProCodSt1.Value) <> '' then
          EstPro_02CodSt1.Value := EstProCodSt1.Value;
        if Trim(EstProCodSt2.Value) <> '' then
          EstPro_02CodSt2.Value := EstProCodSt2.Value;
        if Trim(EstProCodCom.Value) <> '' then
          EstPro_02CodCom.Value := EstProCodCom.Value;

        //flag permite atualizar as informações de ICM/IPI/ST
        //if trim(fmManGDB.BuscaSimples('ESTPAR', 'ATU_REGRAS_DBS', ' 1=1')) = 'Sim' then
        if fmManGDB.AtuIPI_ICMS_ST(EstPro.Database, EstPro_02.Database) then
        begin
          if Trim(EstProIcmSai.Value) <> '' then
            EstPro_02IcmSai.Value := EstProIcmSai.Value;
          if Trim(EstProIcmEnt.Value) <> '' then
            EstPro_02IcmEnt.Value := EstProIcmEnt.Value;
          if Trim(EstProIpiSai.Value) <> '' then
            EstPro_02IpiSai.Value := EstProIpiSai.Value;
          if Trim(EstProIpiEnt.Value) <> '' then
            EstPro_02IpiEnt.Value := EstProIpiEnt.Value;
          if Trim(EstProCodSts.Value) <> '' then
            EstPro_02CodSts.Value := EstProCodSts.Value;
          if Trim(EstProCodSte.Value) <> '' then
            EstPro_02CodSte.Value := EstProCodSte.Value;
        end;

        if Trim(EstProIcmTsd.Value) <> '' then
          EstPro_02IcmTsd.Value := EstProIcmTsd.Value;
        if Trim(EstProIcmTen.Value) <> '' then
          EstPro_02IcmTen.Value := EstProIcmTen.Value;
        if Trim(EstProIpiTsd.Value) <> '' then
          EstPro_02IpiTsd.Value := EstProIpiTsd.Value;
        if Trim(EstProIpiTen.Value) <> '' then
          EstPro_02IpiTen.Value := EstProIpiTen.Value;
        if Trim(EstProTipSte.Value) <> '' then
          EstPro_02TipSte.Value := EstProTipSte.Value;
        if Trim(EstProTipSts.Value) <> '' then
          EstPro_02TipSts.Value := EstProTipSts.Value;

        EstPro_02.ApplyUpdates;

      end
      else
      begin

        if (EstPro_02DscPro.Value <> EstProDscPro.Value) or
          (EstPro_02DsrPro.Value <> EstProDsrPro.Value) or
          (EstPro_02CbaPro.Value <> EstProCbaPro.Value) or
          (EstPro_02CbaEmb.Value <> EstProCbaEmb.Value) or
          (EstPro_02CatPro.Value <> EstProCatPro.Value) or
          (EstPro_02LocPro.Value <> EstProLocPro.Value) or
          (EstPro_02RefPro.Value <> EstProRefPro.Value) or
          (EstPro_02FlbPro.Value <> EstProFlbPro.Value) or
          (EstPro_02WebPro.Value <> EstProWebPro.Value) or
          (EstPro_02DtcPro.Value <> EstProDtcPro.Value) or
          (EstPro_02ObsPro.Value <> EstProObsPro.Value) or
          (EstPro_02CodAnt.Value <> EstProCodAnt.Value) or
          (EstPro_02ClfEnt.Value <> EstProClfEnt.Value) or
          (EstPro_02ClfSai.Value <> EstProClfSai.Value) or
          (EstPro_02NumPro.Value <> EstProNumPro.Value) or
          (EstPro_02SimPro.Value <> EstProSimPro.Value) or
          (EstPro_02IdePro.Value <> EstProIdePro.Value) or
          (EstPro_02FlgPro.Value <> EstProFlgPro.Value) or
          (EstPro_02FlgKit.Value <> EstProFlgKit.Value) or
          (EstPro_02CbaEm2.Value <> EstProCbaEm2.Value) or
          (EstPro_02CbaEm3.Value <> EstProCbaEm3.Value) or
          (EstPro_02DesImp.Value <> EstProDesImp.Value) or
          (EstPro_02DesIm2.Value <> EstProDesIm2.Value) or
          (EstPro_02DscImp.Value <> EstProDscImp.Value) or
          (EstPro_02DsrImp.Value <> EstProDsrImp.Value) or
          (EstPro_02FlgLis.Value <> EstProFlgLis.Value) or
          (EstPro_02DesNc1.Value <> EstProDesNc1.Value) or
          (EstPro_02DesNc2.Value <> EstProDesNc2.Value) or
          (EstPro_02DesNc3.Value <> EstProDesNc3.Value) or
          (EstPro_02DesNc4.Value <> EstProDesNc4.Value) or
          (EstPro_02DesNc5.Value <> EstProDesNc5.Value) or
          (EstPro_02DesNc6.Value <> EstProDesNc6.Value) or
          (EstPro_02DesNc7.Value <> EstProDesNc7.Value) or
          (EstPro_02DesNc8.Value <> EstProDesNc8.Value) or
          (EstPro_02QtdEmb.Value <> EstProQtdEmb.Value) or
          (EstPro_02IssPro.Value <> EstProIssPro.Value) or
          (EstPro_02QtePro.Value <> EstProQtePro.Value) or
          (EstPro_02QtsPro.Value <> EstProQtsPro.Value) or
          (EstPro_02PesLiq.Value <> EstProPesLiq.Value) or
          (EstPro_02PesBrt.Value <> EstProPesBrt.Value) or
          (EstPro_02SaiIcm.Value <> EstProSaiIcm.Value) or
          (EstPro_02EntIcm.Value <> EstProEntIcm.Value) or
          (EstPro_02SaiIpi.Value <> EstProSaiIpi.Value) or
          (EstPro_02EntIpi.Value <> EstProEntIpi.Value) or
          (EstPro_02EntImp.Value <> EstProEntImp.Value) or
          (EstPro_02LiqEmb.Value <> EstProLiqEmb.Value) or
          (EstPro_02BrtEmb.Value <> EstProBrtEmb.Value) or
          (EstPro_02GarPro.Value <> EstProGarPro.Value) or
          (EstPro_02AltPro.Value <> EstProAltPro.Value) or
          (EstPro_02ComPro.Value <> EstProComPro.Value) or
          (EstPro_02LarPro.Value <> EstProLarPro.Value) or
          (EstPro_02CubPro.Value <> EstProCubPro.Value) or
          (EstPro_02CxaPro.Value <> EstProCxaPro.Value) or
          (EstPro_02ValImp.Value <> EstProValImp.Value) or
          (EstPro_02QtdVol.Value <> EstProQtdVol.Value) or
          (EstPro_02CodTip.Value <> EstProCodTip.Value) or
          (EstPro_02CodMrc.Value <> EstProCodMrc.Value) or
          (EstPro_02CodCat.Value <> EstProCodCat.Value) or
          (EstPro_02CodUsu.Value <> EstProCodUsu.Value) or
          (EstPro_02CodUne.Value <> EstProCodUne.Value) or
          (EstPro_02CodUns.Value <> EstProCodUns.Value) or
          (EstPro_02CodSt1.Value <> EstProCodSt1.Value) or
          (EstPro_02CodSt2.Value <> EstProCodSt2.Value) or
          (EstPro_02CodCom.Value <> EstProCodCom.Value) or
          (EstPro_02IcmSai.Value <> EstProIcmSai.Value) or
          (EstPro_02IcmTsd.Value <> EstProIcmTsd.Value) or
          (EstPro_02IcmEnt.Value <> EstProIcmEnt.Value) or
          (EstPro_02IcmTen.Value <> EstProIcmTen.Value) or
          (EstPro_02IpiSai.Value <> EstProIpiSai.Value) or
          (EstPro_02IpiTsd.Value <> EstProIpiTsd.Value) or
          (EstPro_02IpiEnt.Value <> EstProIpiEnt.Value) or
          (EstPro_02IpiTen.Value <> EstProIpiTen.Value) or
          (EstPro_02CodSte.Value <> EstProCodSte.Value) or
          (EstPro_02TipSte.Value <> EstProTipSte.Value) or
          (EstPro_02CodSts.Value <> EstProCodSts.Value) or
          (EstPro_02TipSts.Value <> EstProTipSts.Value) or
          (EstPro_02CODNCM.Value <> EstProCODNCM.Value) or
          (EstPro_02CodBar.Value <> EstProCodBar.Value) or
          (EstPro_02FCI.Value    <> EstProFCI.Value)    then
        begin

          EstPro_02.Edit;

          EstPro_02FlgTrg.Value := '*';

          EstPro_02CodClp.Value := EstProCodClp.Value;
          EstPro_02CodGru.Value := EstProCodGru.Value;
          EstPro_02CodSub.Value := EstProCodSub.Value;
          EstPro_02CodPro.Value := EstProCodPro.Value;
          EstPro_02DscPro.Value := EstProDscPro.Value;
          EstPro_02DsrPro.Value := EstProDsrPro.Value;
          EstPro_02CbaPro.Value := EstProCbaPro.Value;
          EstPro_02CbaEmb.Value := EstProCbaEmb.Value;
          EstPro_02CatPro.Value := EstProCatPro.Value;
          EstPro_02LocPro.Value := EstProLocPro.Value;
          EstPro_02RefPro.Value := EstProRefPro.Value;
          EstPro_02FlbPro.Value := EstProFlbPro.Value;
          EstPro_02WebPro.Value := EstProWebPro.Value;
          EstPro_02DtcPro.Value := EstProDtcPro.Value;
          EstPro_02ImgPro.Value := EstProImgPro.Value;
          EstPro_02ObsPro.Value := EstProObsPro.Value;
          EstPro_02CodAnt.Value := EstProCodAnt.Value;
          EstPro_02ClfEnt.Value := EstProClfEnt.Value;
          EstPro_02ClfSai.Value := EstProClfSai.Value;
          EstPro_02NumPro.Value := EstProNumPro.Value;
          EstPro_02SimPro.Value := EstProSimPro.Value;
          EstPro_02IdePro.Value := EstProIdePro.Value;
          EstPro_02FlgPro.Value := EstProFlgPro.Value;
          EstPro_02FlgKit.Value := EstProFlgKit.Value;
          EstPro_02CbaEm2.Value := EstProCbaEm2.Value;
          EstPro_02CbaEm3.Value := EstProCbaEm3.Value;
          EstPro_02DesImp.Value := EstProDesImp.Value;
          EstPro_02DesIm2.Value := EstProDesIm2.Value;
          EstPro_02DscImp.Value := EstProDscImp.Value;
          EstPro_02DsrImp.Value := EstProDsrImp.Value;
          EstPro_02FlgLis.Value := EstProFlgLis.Value;
          EstPro_02DesNc1.Value := EstProDesNc1.Value;
          EstPro_02DesNc2.Value := EstProDesNc2.Value;
          EstPro_02DesNc3.Value := EstProDesNc3.Value;
          EstPro_02DesNc4.Value := EstProDesNc4.Value;
          EstPro_02DesNc5.Value := EstProDesNc5.Value;
          EstPro_02DesNc6.Value := EstProDesNc6.Value;
          EstPro_02DesNc7.Value := EstProDesNc7.Value;
          EstPro_02DesNc8.Value := EstProDesNc8.Value;
          EstPro_02QtdEmb.Value := EstProQtdEmb.Value;
          EstPro_02IssPro.Value := EstProIssPro.Value;
          EstPro_02QtePro.Value := EstProQtePro.Value;
          EstPro_02QtsPro.Value := EstProQtsPro.Value;
          EstPro_02PesLiq.Value := EstProPesLiq.Value;
          EstPro_02PesBrt.Value := EstProPesBrt.Value;
          EstPro_02SaiIcm.Value := EstProSaiIcm.Value;
          EstPro_02EntIcm.Value := EstProEntIcm.Value;
          EstPro_02SaiIpi.Value := EstProSaiIpi.Value;
          EstPro_02EntIpi.Value := EstProEntIpi.Value;
          EstPro_02EntImp.Value := EstProEntImp.Value;
          EstPro_02LiqEmb.Value := EstProLiqEmb.Value;
          EstPro_02BrtEmb.Value := EstProBrtEmb.Value;
          EstPro_02GarPro.Value := EstProGarPro.Value;
          EstPro_02AltPro.Value := EstProAltPro.Value;
          EstPro_02ComPro.Value := EstProComPro.Value;
          EstPro_02LarPro.Value := EstProLarPro.Value;
          EstPro_02CubPro.Value := EstProCubPro.Value;
          EstPro_02CxaPro.Value := EstProCxaPro.Value;
          EstPro_02QtdVol.Value := EstProQtdVol.Value;
          EstPro_02ValImp.Value := EstProValImp.Value;
          EstPro_02CodBar.Value := EstProCodBar.Value;
          EstPro_02CODNCM.Value := EstProCODNCM.Value;
          EstPro_02FCI.Value    := EstProFCI.Value;

          if EstProCodTip.Value > 0 then
            EstPro_02CodTip.Value := EstProCodTip.Value
          else
            EstPro_02CodTip.Clear;

          if EstProCodMrc.Value > 0 then
            EstPro_02CodMrc.Value := EstProCodMrc.Value
          else
            EstPro_02CodMrc.Clear;

          if EstProCodCat.Value > 0 then
            EstPro_02CodCat.Value := EstProCodCat.Value
          else
            EstPro_02CodCat.Clear;

          if EstProCodUsu.Value > 0 then
            EstPro_02CodUsu.Value := EstProCodUsu.Value
          else
            EstPro_02CodUsu.Clear;

          if Trim(EstProCodUne.Value) <> '' then
            EstPro_02CodUne.Value := EstProCodUne.Value
          else
            EstPro_02CodUne.Clear;

          if Trim(EstProCodUns.Value) <> '' then
            EstPro_02CodUns.Value := EstProCodUns.Value
          else
            EstPro_02CodUns.Clear;

          if Trim(EstProCodSt1.Value) <> '' then
            EstPro_02CodSt1.Value := EstProCodSt1.Value
          else
            EstPro_02CodSt1.Clear;

          if Trim(EstProCodSt2.Value) <> '' then
            EstPro_02CodSt2.Value := EstProCodSt2.Value
          else
            EstPro_02CodSt2.Clear;

          if Trim(EstProCodCom.Value) <> '' then
            EstPro_02CodCom.Value := EstProCodCom.Value
          else
            EstPro_02CodCom.Clear;

          //flag permite atualizar as informações de ICM/IPI/ST
          //if trim(fmManGDB.BuscaSimples('ESTPAR', 'ATU_REGRAS_DBS', ' 1=1')) = 'Sim' then
          if fmManGDB.AtuIPI_ICMS_ST(EstPro.Database, EstPro_02.Database) then
          begin
            if Trim(EstProIcmSai.Value) <> '' then
              EstPro_02IcmSai.Value := EstProIcmSai.Value
            else
              EstPro_02IcmSai.Clear;

            if Trim(EstProIcmEnt.Value) <> '' then
              EstPro_02IcmEnt.Value := EstProIcmEnt.Value
            else
              EstPro_02IcmEnt.Clear;

            if Trim(EstProIpiSai.Value) <> '' then
              EstPro_02IpiSai.Value := EstProIpiSai.Value
            else
              EstPro_02IpiSai.Clear;

            if Trim(EstProIpiEnt.Value) <> '' then
              EstPro_02IpiEnt.Value := EstProIpiEnt.Value
            else
              EstPro_02IpiEnt.Clear;

            if Trim(EstProCodSts.Value) <> '' then
              EstPro_02CodSts.Value := EstProCodSts.Value
            else
            begin
              EstPro_02CodSts.Clear;
              EstPro_02TipSts.Clear;
            end;

            if Trim(EstProCodSte.Value) <> '' then
              EstPro_02CodSte.Value := EstProCodSte.Value
            else
            begin
              EstPro_02CodSte.Clear;
              EstPro_02TipSte.Clear;
            end;

          end;

          if Trim(EstProIcmTsd.Value) <> '' then
            EstPro_02IcmTsd.Value := EstProIcmTsd.Value
          else
            EstPro_02IcmTsd.Clear;

          if Trim(EstProIcmTen.Value) <> '' then
            EstPro_02IcmTen.Value := EstProIcmTen.Value
          else
            EstPro_02IcmTen.Clear;

          if Trim(EstProIpiTsd.Value) <> '' then
            EstPro_02IpiTsd.Value := EstProIpiTsd.Value
          else
            EstPro_02IpiTsd.Clear;

          if Trim(EstProIpiTen.Value) <> '' then
            EstPro_02IpiTen.Value := EstProIpiTen.Value
          else
            EstPro_02IpiTen.Clear;

          if Trim(EstProTipSte.Value) <> '' then
            EstPro_02TipSte.Value := EstProTipSte.Value
          else
            EstPro_02TipSte.Clear;

          if Trim(EstProCodSts.Value) <> '' then
            EstPro_02CodSts.Value := EstProCodSts.Value
          else
          begin

            EstPro_02CodSts.Clear;
            EstPro_02TipSts.Clear;

          end;

          if Trim(EstProTipSts.Value) <> '' then
            EstPro_02TipSts.Value := EstProTipSts.Value
          else
            EstPro_02TipSts.Clear;

          EstPro_02.ApplyUpdates;

        end;
      end;

      EstPro_02.Close;

      if EstParLanCba.Value = 'Sim' then
      begin

        if EstParTipEan.Value = 'Itens' then
        begin

          if Trim(EstParIniEan.Value) <> '' then
          begin

            with quSQL2, SQL do
            begin

              Close;
              Text := ' Select EstPro.CodBar From EstPro' +
                ' Where EstPro.CodClp = ''' + EstProCodClp.Value + '''' +
                '   and EstPro.CodGru = ''' + EstProCodGru.Value + '''' +
                '   and EstPro.CodSub = ''' + EstProCodSub.Value + '''' +
                '   and EstPro.CodPro = ''' + EstProCodPro.Value + '''';
              Open;

              sCodBar := FieldbyName('CodBar').AsInteger;

            end;

            if sCodBar > 0 then
            begin

              with quSQL2, SQL do
              begin

                Close;
                Text := ' Select Count(*) as QtdReg From EstBar' +
                  ' Where EstBar.CodClp = ''' + EstProCodClp.Value + '''' +
                  '   and EstBar.CodGru = ''' + EstProCodGru.Value + '''' +
                  '   and EstBar.CodSub = ''' + EstProCodSub.Value + '''' +
                  '   and EstBar.CodPro = ''' + EstProCodPro.Value + '''' +
                  '   and EstBar.FlgInt = ''' + 'Sim' + '''';
                Open;
                clipboard.astext := text;
                //showmessage('Olha ai');
              end;

              if quSQL2.FieldbyName('QtdReg').AsInteger = 0 then
              begin

                if Length(Trim(EstParIniEan.Value)) = 9 then
                  CodBar := fGeraCB2(Trim(EstParIniEan.Value) + fNumZeros(IntToStr(sCodBar), 3))
                else
                begin

                  if Length(Trim(EstParIniEan.Value)) = 8 then
                    CodBar := fGeraCB2(Trim(EstParIniEan.Value) + fNumZeros(IntToStr(sCodBar), 4))
                  else
                    CodBar := fGeraCB2(EstParIniEan.Value + fNumZeros(IntToStr(sCodBar), 5))

                end;

                if Trim(CodBar) <> '' then
                begin

                  with quSQL2, SQL do
                  begin

                    Close;
                    Text := ' Insert Into EstBar(CodClp,CodGru,CodSub,CodPro,SeqBar,CodBar,NroBar,FlgInt,QtdEmb,TipEmb)' +
                      '             Values(:CodClp,:CodGru,:CodSub,:CodPro,:SeqBar,:CodBar,:NroBar,:FlgInt,:QtdEmb,:TipEmb)';

                    with Params do
                    begin

                      Params[0].AsString := EstProCodClp.Value;
                      Params[1].AsString := EstProCodGru.Value;
                      Params[2].AsString := EstProCodSub.Value;
                      Params[3].AsString := EstProCodPro.Value;
                      Params[4].AsInteger := 1;
                      Params[5].AsString := CodBar;
                      Params[6].AsInteger := 1;
                      Params[7].AsString := 'Sim';
                      Params[8].AsFloat := 1;
                      Params[9].AsString := 'Unidade';

                    end;
                    //showmessage(codbar);
                    ExecSQL;
                    //showmessage('Teste 1');

                  end;
                end;
              end;
            end;
          end;
        end;
      end;
    end;

    if (fmManGDB.dbEmerion2.Connected) and (verificador = '1') then
    begin
      EstPro_03.Close;
      EstPro_03.Params[0].AsString := EstProCodClp.Value;
      EstPro_03.Params[1].AsString := EstProCodGru.Value;
      EstPro_03.Params[2].AsString := EstProCodSub.Value;
      EstPro_03.Params[3].AsString := EstProCodPro.Value;
      EstPro_03.Open;

      if Trim(EstPro_03CodPro.Value) = '' then
      begin

        EstPro_03.Insert;

        EstPro_03FlgTrg.Value := ' ';

        EstPro_03CodClp.Value := EstProCodClp.Value;
        EstPro_03CodGru.Value := EstProCodGru.Value;
        EstPro_03CodSub.Value := EstProCodSub.Value;
        EstPro_03CodPro.Value := EstProCodPro.Value;
        EstPro_03DscPro.Value := EstProDscPro.Value;
        EstPro_03DsrPro.Value := EstProDsrPro.Value;
        EstPro_03CbaPro.Value := EstProCbaPro.Value;
        EstPro_03CbaEmb.Value := EstProCbaEmb.Value;
        EstPro_03CatPro.Value := EstProCatPro.Value;
        EstPro_03LocPro.Value := EstProLocPro.Value;
        EstPro_03RefPro.Value := EstProRefPro.Value;
        EstPro_03FlbPro.Value := EstProFlbPro.Value;
        EstPro_03WebPro.Value := EstProWebPro.Value;
        EstPro_03DtcPro.Value := EstProDtcPro.Value;
        EstPro_03ImgPro.Value := EstProImgPro.Value;
        EstPro_03ObsPro.Value := EstProObsPro.Value;
        EstPro_03CodAnt.Value := EstProCodAnt.Value;
        EstPro_03ClfEnt.Value := EstProClfEnt.Value;
        EstPro_03ClfSai.Value := EstProClfSai.Value;
        EstPro_03NumPro.Value := EstProNumPro.Value;
        EstPro_03SimPro.Value := EstProSimPro.Value;
        EstPro_03IdePro.Value := EstProIdePro.Value;
        EstPro_03FlgPro.Value := EstProFlgPro.Value;
        EstPro_03FlgKit.Value := EstProFlgKit.Value;
        EstPro_03CbaEm2.Value := EstProCbaEm2.Value;
        EstPro_03CbaEm3.Value := EstProCbaEm3.Value;
        EstPro_03DesImp.Value := EstProDesImp.Value;
        EstPro_03DesIm2.Value := EstProDesIm2.Value;
        EstPro_03DscImp.Value := EstProDscImp.Value;
        EstPro_03DsrImp.Value := EstProDsrImp.Value;
        EstPro_03FlgLis.Value := EstProFlgLis.Value;
        EstPro_03DesNc1.Value := EstProDesNc1.Value;
        EstPro_03DesNc2.Value := EstProDesNc2.Value;
        EstPro_03DesNc3.Value := EstProDesNc3.Value;
        EstPro_03DesNc4.Value := EstProDesNc4.Value;
        EstPro_03DesNc5.Value := EstProDesNc5.Value;
        EstPro_03DesNc6.Value := EstProDesNc6.Value;
        EstPro_03DesNc7.Value := EstProDesNc7.Value;
        EstPro_03DesNc8.Value := EstProDesNc8.Value;
        EstPro_03QtdEmb.Value := EstProQtdEmb.Value;
        EstPro_03IssPro.Value := EstProIssPro.Value;
        EstPro_03QtePro.Value := EstProQtePro.Value;
        EstPro_03QtsPro.Value := EstProQtsPro.Value;
        EstPro_03PesLiq.Value := EstProPesLiq.Value;
        EstPro_03PesBrt.Value := EstProPesBrt.Value;
        EstPro_03SaiIcm.Value := EstProSaiIcm.Value;
        EstPro_03EntIcm.Value := EstProEntIcm.Value;
        EstPro_03SaiIpi.Value := EstProSaiIpi.Value;
        EstPro_03EntIpi.Value := EstProEntIpi.Value;
        EstPro_03EntImp.Value := EstProEntImp.Value;
        EstPro_03LiqEmb.Value := EstProLiqEmb.Value;
        EstPro_03BrtEmb.Value := EstProBrtEmb.Value;
        EstPro_03GarPro.Value := EstProGarPro.Value;
        EstPro_03AltPro.Value := EstProAltPro.Value;
        EstPro_03ComPro.Value := EstProComPro.Value;
        EstPro_03LarPro.Value := EstProLarPro.Value;
        EstPro_03CubPro.Value := EstProCubPro.Value;
        EstPro_03CxaPro.Value := EstProCxaPro.Value;
        EstPro_03QtdVol.Value := EstProQtdVol.Value;
        EstPro_03ValImp.Value := EstProValImp.Value;
        EstPro_03CodBar.Value := EstProCodBar.Value;
        EstPro_03CODNCM.Value := EstProCODNCM.Value;
        EstPro_03FCI.Value    := EstProFCI.Value;

        if EstProCodTip.Value > 0 then
          EstPro_03CodTip.Value := EstProCodTip.Value;
        if EstProCodMrc.Value > 0 then
          EstPro_03CodMrc.Value := EstProCodMrc.Value;
        if EstProCodCat.Value > 0 then
          EstPro_03CodCat.Value := EstProCodCat.Value;
        if EstProCodUsu.Value > 0 then
          EstPro_03CodUsu.Value := EstProCodUsu.Value;

        if Trim(EstProCodUne.Value) <> '' then
          EstPro_03CodUne.Value := EstProCodUne.Value;
        if Trim(EstProCodUns.Value) <> '' then
          EstPro_03CodUns.Value := EstProCodUns.Value;
        if Trim(EstProCodSt1.Value) <> '' then
          EstPro_03CodSt1.Value := EstProCodSt1.Value;
        if Trim(EstProCodSt2.Value) <> '' then
          EstPro_03CodSt2.Value := EstProCodSt2.Value;
        if Trim(EstProCodCom.Value) <> '' then
          EstPro_03CodCom.Value := EstProCodCom.Value;

        //flag permite atualizar as informações de ICM/IPI/ST
        //if trim(fmManGDB.BuscaSimples('ESTPAR', 'ATU_REGRAS_DBS', ' 1=1')) = 'Sim' then
        if fmManGDB.AtuIPI_ICMS_ST(EstPro.Database, EstPro_03.Database) then
        begin
          if Trim(EstProIcmSai.Value) <> '' then
            EstPro_03IcmSai.Value := EstProIcmSai.Value;
          if Trim(EstProIcmEnt.Value) <> '' then
            EstPro_03IcmEnt.Value := EstProIcmEnt.Value;
          if Trim(EstProIpiSai.Value) <> '' then
            EstPro_03IpiSai.Value := EstProIpiSai.Value;
          if Trim(EstProIpiEnt.Value) <> '' then
            EstPro_03IpiEnt.Value := EstProIpiEnt.Value;
          if Trim(EstProCodSts.Value) <> '' then
            EstPro_03CodSts.Value := EstProCodSts.Value;
          if Trim(EstProCodSte.Value) <> '' then
            EstPro_03CodSte.Value := EstProCodSte.Value;
        end;

        if Trim(EstProIcmTsd.Value) <> '' then
          EstPro_03IcmTsd.Value := EstProIcmTsd.Value;
        //if Trim(EstProIcmEnt.Value) <> '' then EstPro_03IcmEnt.Value := EstProIcmEnt.Value;
        if Trim(EstProIcmTen.Value) <> '' then
          EstPro_03IcmTen.Value := EstProIcmTen.Value;
        if Trim(EstProIpiTsd.Value) <> '' then
          EstPro_03IpiTsd.Value := EstProIpiTsd.Value;
        if Trim(EstProIpiTen.Value) <> '' then
          EstPro_03IpiTen.Value := EstProIpiTen.Value;
        if Trim(EstProTipSte.Value) <> '' then
          EstPro_03TipSte.Value := EstProTipSte.Value;
        if Trim(EstProTipSts.Value) <> '' then
          EstPro_03TipSts.Value := EstProTipSts.Value;

        EstPro_03.ApplyUpdates;

      end
      else
      begin

        if (EstPro_03DscPro.Value <> EstProDscPro.Value) or
          (EstPro_03DsrPro.Value <> EstProDsrPro.Value) or
          (EstPro_03CbaPro.Value <> EstProCbaPro.Value) or
          (EstPro_03CbaEmb.Value <> EstProCbaEmb.Value) or
          (EstPro_03CatPro.Value <> EstProCatPro.Value) or
          (EstPro_03LocPro.Value <> EstProLocPro.Value) or
          (EstPro_03RefPro.Value <> EstProRefPro.Value) or
          (EstPro_03FlbPro.Value <> EstProFlbPro.Value) or
          (EstPro_03WebPro.Value <> EstProWebPro.Value) or
          (EstPro_03DtcPro.Value <> EstProDtcPro.Value) or
          (EstPro_03ObsPro.Value <> EstProObsPro.Value) or
          (EstPro_03CodAnt.Value <> EstProCodAnt.Value) or
          (EstPro_03ClfEnt.Value <> EstProClfEnt.Value) or
          (EstPro_03ClfSai.Value <> EstProClfSai.Value) or
          (EstPro_03NumPro.Value <> EstProNumPro.Value) or
          (EstPro_03SimPro.Value <> EstProSimPro.Value) or
          (EstPro_03IdePro.Value <> EstProIdePro.Value) or
          (EstPro_03FlgPro.Value <> EstProFlgPro.Value) or
          (EstPro_03FlgKit.Value <> EstProFlgKit.Value) or
          (EstPro_03CbaEm2.Value <> EstProCbaEm2.Value) or
          (EstPro_03CbaEm3.Value <> EstProCbaEm3.Value) or
          (EstPro_03DesImp.Value <> EstProDesImp.Value) or
          (EstPro_03DesIm2.Value <> EstProDesIm2.Value) or
          (EstPro_03DscImp.Value <> EstProDscImp.Value) or
          (EstPro_03DsrImp.Value <> EstProDsrImp.Value) or
          (EstPro_03FlgLis.Value <> EstProFlgLis.Value) or
          (EstPro_03DesNc1.Value <> EstProDesNc1.Value) or
          (EstPro_03DesNc2.Value <> EstProDesNc2.Value) or
          (EstPro_03DesNc3.Value <> EstProDesNc3.Value) or
          (EstPro_03DesNc4.Value <> EstProDesNc4.Value) or
          (EstPro_03DesNc5.Value <> EstProDesNc5.Value) or
          (EstPro_03DesNc6.Value <> EstProDesNc6.Value) or
          (EstPro_03DesNc7.Value <> EstProDesNc7.Value) or
          (EstPro_03DesNc8.Value <> EstProDesNc8.Value) or
          (EstPro_03QtdEmb.Value <> EstProQtdEmb.Value) or
          (EstPro_03IssPro.Value <> EstProIssPro.Value) or
          (EstPro_03QtePro.Value <> EstProQtePro.Value) or
          (EstPro_03QtsPro.Value <> EstProQtsPro.Value) or
          (EstPro_03PesLiq.Value <> EstProPesLiq.Value) or
          (EstPro_03PesBrt.Value <> EstProPesBrt.Value) or
          (EstPro_03SaiIcm.Value <> EstProSaiIcm.Value) or
          (EstPro_03EntIcm.Value <> EstProEntIcm.Value) or
          (EstPro_03SaiIpi.Value <> EstProSaiIpi.Value) or
          (EstPro_03EntIpi.Value <> EstProEntIpi.Value) or
          (EstPro_03EntImp.Value <> EstProEntImp.Value) or
          (EstPro_03LiqEmb.Value <> EstProLiqEmb.Value) or
          (EstPro_03BrtEmb.Value <> EstProBrtEmb.Value) or
          (EstPro_03GarPro.Value <> EstProGarPro.Value) or
          (EstPro_03AltPro.Value <> EstProAltPro.Value) or
          (EstPro_03ComPro.Value <> EstProComPro.Value) or
          (EstPro_03LarPro.Value <> EstProLarPro.Value) or
          (EstPro_03CubPro.Value <> EstProCubPro.Value) or
          (EstPro_03CxaPro.Value <> EstProCxaPro.Value) or
          (EstPro_03ValImp.Value <> EstProValImp.Value) or
          (EstPro_03QtdVol.Value <> EstProQtdVol.Value) or
          (EstPro_03CodTip.Value <> EstProCodTip.Value) or
          (EstPro_03CodMrc.Value <> EstProCodMrc.Value) or
          (EstPro_03CodCat.Value <> EstProCodCat.Value) or
          (EstPro_03CodUsu.Value <> EstProCodUsu.Value) or
          (EstPro_03CodUne.Value <> EstProCodUne.Value) or
          (EstPro_03CodUns.Value <> EstProCodUns.Value) or
          (EstPro_03CodSt1.Value <> EstProCodSt1.Value) or
          (EstPro_03CodSt2.Value <> EstProCodSt2.Value) or
          (EstPro_03CodCom.Value <> EstProCodCom.Value) or
          (EstPro_03IcmSai.Value <> EstProIcmSai.Value) or
          (EstPro_03IcmTsd.Value <> EstProIcmTsd.Value) or
          (EstPro_03IcmEnt.Value <> EstProIcmEnt.Value) or
          (EstPro_03IcmTen.Value <> EstProIcmTen.Value) or
          (EstPro_03IpiSai.Value <> EstProIpiSai.Value) or
          (EstPro_03IpiTsd.Value <> EstProIpiTsd.Value) or
          (EstPro_03IpiEnt.Value <> EstProIpiEnt.Value) or
          (EstPro_03IpiTen.Value <> EstProIpiTen.Value) or
          (EstPro_03CodSte.Value <> EstProCodSte.Value) or
          (EstPro_03TipSte.Value <> EstProTipSte.Value) or
          (EstPro_03CodSts.Value <> EstProCodSts.Value) or
          (EstPro_03TipSts.Value <> EstProTipSts.Value) or
          (EstPro_03CODNCM.Value <> EstProCODNCM.Value) or
          (EstPro_03CodBar.Value <> EstProCodBar.Value) or
          (EstPro_03FCI.Value    <> EstProFCI.Value)    then

        begin

          EstPro_03.Edit;

          EstPro_03FlgTrg.Value := '*';

          EstPro_03CodClp.Value := EstProCodClp.Value;
          EstPro_03CodGru.Value := EstProCodGru.Value;
          EstPro_03CodSub.Value := EstProCodSub.Value;
          EstPro_03CodPro.Value := EstProCodPro.Value;
          EstPro_03DscPro.Value := EstProDscPro.Value;
          EstPro_03DsrPro.Value := EstProDsrPro.Value;
          EstPro_03CbaPro.Value := EstProCbaPro.Value;
          EstPro_03CbaEmb.Value := EstProCbaEmb.Value;
          EstPro_03CatPro.Value := EstProCatPro.Value;
          EstPro_03LocPro.Value := EstProLocPro.Value;
          EstPro_03RefPro.Value := EstProRefPro.Value;
          EstPro_03FlbPro.Value := EstProFlbPro.Value;
          EstPro_03WebPro.Value := EstProWebPro.Value;
          EstPro_03DtcPro.Value := EstProDtcPro.Value;
          EstPro_03ImgPro.Value := EstProImgPro.Value;
          EstPro_03ObsPro.Value := EstProObsPro.Value;
          EstPro_03CodAnt.Value := EstProCodAnt.Value;
          EstPro_03ClfEnt.Value := EstProClfEnt.Value;
          EstPro_03ClfSai.Value := EstProClfSai.Value;
          EstPro_03NumPro.Value := EstProNumPro.Value;
          EstPro_03SimPro.Value := EstProSimPro.Value;
          EstPro_03IdePro.Value := EstProIdePro.Value;
          EstPro_03FlgPro.Value := EstProFlgPro.Value;
          EstPro_03FlgKit.Value := EstProFlgKit.Value;
          EstPro_03CbaEm2.Value := EstProCbaEm2.Value;
          EstPro_03CbaEm3.Value := EstProCbaEm3.Value;
          EstPro_03DesImp.Value := EstProDesImp.Value;
          EstPro_03DesIm2.Value := EstProDesIm2.Value;
          EstPro_03DscImp.Value := EstProDscImp.Value;
          EstPro_03DsrImp.Value := EstProDsrImp.Value;
          EstPro_03FlgLis.Value := EstProFlgLis.Value;
          EstPro_03DesNc1.Value := EstProDesNc1.Value;
          EstPro_03DesNc2.Value := EstProDesNc2.Value;
          EstPro_03DesNc3.Value := EstProDesNc3.Value;
          EstPro_03DesNc4.Value := EstProDesNc4.Value;
          EstPro_03DesNc5.Value := EstProDesNc5.Value;
          EstPro_03DesNc6.Value := EstProDesNc6.Value;
          EstPro_03DesNc7.Value := EstProDesNc7.Value;
          EstPro_03DesNc8.Value := EstProDesNc8.Value;
          EstPro_03QtdEmb.Value := EstProQtdEmb.Value;
          EstPro_03IssPro.Value := EstProIssPro.Value;
          EstPro_03QtePro.Value := EstProQtePro.Value;
          EstPro_03QtsPro.Value := EstProQtsPro.Value;
          EstPro_03PesLiq.Value := EstProPesLiq.Value;
          EstPro_03PesBrt.Value := EstProPesBrt.Value;
          EstPro_03SaiIcm.Value := EstProSaiIcm.Value;
          EstPro_03EntIcm.Value := EstProEntIcm.Value;
          EstPro_03SaiIpi.Value := EstProSaiIpi.Value;
          EstPro_03EntIpi.Value := EstProEntIpi.Value;
          EstPro_03EntImp.Value := EstProEntImp.Value;
          EstPro_03LiqEmb.Value := EstProLiqEmb.Value;
          EstPro_03BrtEmb.Value := EstProBrtEmb.Value;
          EstPro_03GarPro.Value := EstProGarPro.Value;
          EstPro_03AltPro.Value := EstProAltPro.Value;
          EstPro_03ComPro.Value := EstProComPro.Value;
          EstPro_03LarPro.Value := EstProLarPro.Value;
          EstPro_03CubPro.Value := EstProCubPro.Value;
          EstPro_03CxaPro.Value := EstProCxaPro.Value;
          EstPro_03QtdVol.Value := EstProQtdVol.Value;
          EstPro_03CodBar.Value := EstProCodBar.Value;
          EstPro_03CODNCM.Value := EstProCODNCM.Value;
          EstPro_03FCI.Value    := EstProFCI.Value;

          if EstProCodTip.Value > 0 then
            EstPro_03CodTip.Value := EstProCodTip.Value
          else
            EstPro_03CodTip.Clear;

          if EstProCodMrc.Value > 0 then
            EstPro_03CodMrc.Value := EstProCodMrc.Value
          else
            EstPro_03CodMrc.Clear;

          if EstProCodCat.Value > 0 then
            EstPro_03CodCat.Value := EstProCodCat.Value
          else
            EstPro_03CodCat.Clear;

          if EstProCodUsu.Value > 0 then
            EstPro_03CodUsu.Value := EstProCodUsu.Value
          else
            EstPro_03CodUsu.Clear;

          if Trim(EstProCodUne.Value) <> '' then
            EstPro_03CodUne.Value := EstProCodUne.Value
          else
            EstPro_03CodUne.Clear;

          if Trim(EstProCodUns.Value) <> '' then
            EstPro_03CodUns.Value := EstProCodUns.Value
          else
            EstPro_03CodUns.Clear;

          if Trim(EstProCodSt1.Value) <> '' then
            EstPro_03CodSt1.Value := EstProCodSt1.Value
          else
            EstPro_03CodSt1.Clear;

          if Trim(EstProCodSt2.Value) <> '' then
            EstPro_03CodSt2.Value := EstProCodSt2.Value
          else
            EstPro_03CodSt2.Clear;

          if Trim(EstProCodCom.Value) <> '' then
            EstPro_03CodCom.Value := EstProCodCom.Value
          else
            EstPro_03CodCom.Clear;

          //flag permite atualizar as informações de ICM/IPI/ST
          //if trim(fmManGDB.BuscaSimples('ESTPAR', 'ATU_REGRAS_DBS', ' 1=1')) = 'Sim' then
          if fmManGDB.AtuIPI_ICMS_ST(EstPro.Database, EstPro_03.Database) then
          begin

            if Trim(EstProIcmSai.Value) <> '' then
              EstPro_03IcmSai.Value := EstProIcmSai.Value
            else
            begin
              EstPro_03IcmSai.Clear;
              EstPro_03IcmTsd.Clear;
            end;

            if Trim(EstProIcmEnt.Value) <> '' then
              EstPro_03IcmEnt.Value := EstProIcmEnt.Value
            else
            begin
              EstPro_03IcmEnt.Clear;
              EstPro_03IcmTen.Clear;
            end;

            if Trim(EstProIpiSai.Value) <> '' then
              EstPro_03IpiSai.Value := EstProIpiSai.Value
            else
            begin
              EstPro_03IpiSai.Clear;
              EstPro_03IpiTsd.Clear;
            end;

            if Trim(EstProIpiEnt.Value) <> '' then
              EstPro_03IpiEnt.Value := EstProIpiEnt.Value
            else
            begin
              EstPro_03IpiEnt.Clear;
              EstPro_03IpiTen.Clear;
            end;

            if Trim(EstProCodSts.Value) <> '' then
              EstPro_03CodSts.Value := EstProCodSts.Value
            else
              EstPro_03CodSts.Clear;

            if Trim(EstProCodSte.Value) <> '' then
              EstPro_03CodSte.Value := EstProCodSte.Value
            else
            begin
              EstPro_03CodSte.Clear;
              EstPro_03TipSte.Clear;
            end;
          end;

          if Trim(EstProIcmTsd.Value) <> '' then
            EstPro_03IcmTsd.Value := EstProIcmTsd.Value
          else
            EstPro_03IcmTsd.Clear;

          if Trim(EstProIcmTen.Value) <> '' then
            EstPro_03IcmTen.Value := EstProIcmTen.Value
          else
            EstPro_03IcmTen.Clear;

          if Trim(EstProIpiTsd.Value) <> '' then
            EstPro_03IpiTsd.Value := EstProIpiTsd.Value
          else
            EstPro_03IpiTsd.Clear;

          if Trim(EstProIpiTen.Value) <> '' then
            EstPro_03IpiTen.Value := EstProIpiTen.Value
          else
            EstPro_03IpiTen.Clear;

          if Trim(EstProTipSte.Value) <> '' then
            EstPro_03TipSte.Value := EstProTipSte.Value
          else
            EstPro_03TipSte.Clear;

          if Trim(EstProTipSts.Value) <> '' then
            EstPro_03TipSts.Value := EstProTipSts.Value
          else
            EstPro_03TipSts.Clear;

          EstPro_03.ApplyUpdates;

        end;
      end;

      EstPro_03.Close;

      if EstParLanCba.Value = 'Sim' then
      begin

        if EstParTipEan.Value = 'Itens' then
        begin

          if Trim(EstParIniEan.Value) <> '' then
          begin

            with quSQL3, SQL do
            begin

              Close;
              Text := ' Select EstPro.CodBar From EstPro' +
                ' Where EstPro.CodClp = ''' + EstProCodClp.Value + '''' +
                '   and EstPro.CodGru = ''' + EstProCodGru.Value + '''' +
                '   and EstPro.CodSub = ''' + EstProCodSub.Value + '''' +
                '   and EstPro.CodPro = ''' + EstProCodPro.Value + '''';
              Open;

              sCodBar := FieldbyName('CodBar').AsInteger;

            end;

            if sCodBar > 0 then
            begin

              with quSQL3, SQL do
              begin

                Close;
                Text := ' Select Count(*) as QtdReg From EstBar' +
                  ' Where EstBar.CodClp = ''' + EstProCodClp.Value + '''' +
                  '   and EstBar.CodGru = ''' + EstProCodGru.Value + '''' +
                  '   and EstBar.CodSub = ''' + EstProCodSub.Value + '''' +
                  '   and EstBar.CodPro = ''' + EstProCodPro.Value + '''' +
                  '   and EstBar.FlgInt = ''' + 'Sim' + '''';
                Open;

              end;

              if quSQL3.FieldbyName('QtdReg').AsInteger = 0 then
              begin

                if Length(Trim(EstParIniEan.Value)) = 9 then
                  CodBar := fGeraCB2(Trim(EstParIniEan.Value) + fNumZeros(IntToStr(sCodBar), 3))
                else
                begin

                  if Length(Trim(EstParIniEan.Value)) = 8 then
                    CodBar := fGeraCB2(Trim(EstParIniEan.Value) + fNumZeros(IntToStr(sCodBar), 4))
                  else
                    CodBar := fGeraCB2(EstParIniEan.Value + fNumZeros(IntToStr(sCodBar), 5))

                end;

                if Trim(CodBar) <> '' then
                begin

                  with quSQL3, SQL do
                  begin

                    Close;
                    Text := ' Insert Into EstBar(CodClp,CodGru,CodSub,CodPro,SeqBar,CodBar,NroBar,FlgInt,QtdEmb,TipEmb)' +
                      '             Values(:CodClp,:CodGru,:CodSub,:CodPro,:SeqBar,:CodBar,:NroBar,:FlgInt,:QtdEmb,:TipEmb)';

                    with Params do
                    begin

                      Params[0].AsString := EstProCodClp.Value;
                      Params[1].AsString := EstProCodGru.Value;
                      Params[2].AsString := EstProCodSub.Value;
                      Params[3].AsString := EstProCodPro.Value;
                      Params[4].AsInteger := 1;
                      Params[5].AsString := CodBar;
                      Params[6].AsInteger := 1;
                      Params[7].AsString := 'Sim';
                      Params[8].AsFloat := 1;
                      Params[9].AsString := 'Unidade';

                    end;

                    ExecSQL;

                  end;
                end;
              end;
            end;
          end;
        end;
      end;
    end;

    fmManGDB.dbEmerion1.Connected := False;
    fmManGDB.dbEmerion2.Connected := False;

  except

    fmManGDB.dbEmerion1.Connected := False;
    fmManGDB.dbEmerion2.Connected := False;

  end;

  if Trim(pCodClp) <> '' then
    EstPro.Locate('CODCLP;CODGRU;CODSUB;CODPRO', VarArrayOf([pCodClp, pCodGru, pCodSub, pCodPro]), [loPartialKey]);

  //fmManGDB.DBEmerion1.StartTransaction; {Inicia a Transação}

end;

procedure TfmManPro2.EstIteNewRecord(DataSet: TDataSet);
begin
  inherited;

  EstIte.DisableControls;

  EstIteVCHITE.Value := 0;
  EstIteVREITE.Value := 0;
  EstIteVCRITE.Value := 0;
  EstIteVCPITE.Value := 0;
  EstIteVPRITE.Value := 0;
  EstIteVMEITE.Value := 0;
  EstIteVB1ITE.Value := 0;
  EstIteVB2ITE.Value := 0;
  EstIteVB3ITE.Value := 0;
  EstIteVB4ITE.Value := 0;
  EstIteVB5ITE.Value := 0;
  EstIteMK1ITE.Value := 0;
  EstIteMK2ITE.Value := 0;
  EstIteMK3ITE.Value := 0;
  EstIteMK4ITE.Value := 0;
  EstIteMK5ITE.Value := 0;
  EstIteVP1ITE.Value := 0;
  EstIteVP2ITE.Value := 0;
  EstIteVP3ITE.Value := 0;
  EstIteVP4ITE.Value := 0;
  EstIteVP5ITE.Value := 0;
  EstIteQTMITE.Value := 0;
  EstIteQTDITE.Value := 0;
  EstIteQTRITE.Value := 0;
  EstIteQTAITE.Value := 0;
  EstIteCodClp.Value := EstProCodClp.Value;
  EstIteCodGru.Value := EstProCodGru.Value;
  EstIteCodSub.Value := EstProCodSub.Value;
  EstIteCodPro.Value := EstProCodPro.Value;

  EstIte.EnableControls;

  AntVcrIte := EstIteVcrIte.Value;
  AntVb1Ite := EstIteVb1Ite.Value;
  AntVb2Ite := EstIteVb2Ite.Value;
  AntVb3Ite := EstIteVb3Ite.Value;
  AntVb4Ite := EstIteVb4Ite.Value;
  AntVb5Ite := EstIteVb5Ite.Value;
  AntMk1Ite := EstIteMk1Ite.Value;
  AntMk2Ite := EstIteMk2Ite.Value;
  AntMk3Ite := EstIteMk3Ite.Value;
  AntMk4Ite := EstIteMk4Ite.Value;
  AntMk5Ite := EstIteMk5Ite.Value;
  AntMs1Ite := EstIteMs1Ite.Value;
  AntMs2Ite := EstIteMs2Ite.Value;
  AntMs3Ite := EstIteMs3Ite.Value;
  AntMs4Ite := EstIteMs4Ite.Value;
  AntMs5Ite := EstIteMs5Ite.Value;

  nvPro.Enabled := False;

  pcPag2.Enabled := False;
  pcPag3.Enabled := False;

  EstTam.Close;
  EstTam.Params[0].AsInteger := EstIteCodEmp.Value;
  EstTam.Params[1].AsString := EstIteCodClp.Value;
  EstTam.Params[2].AsString := EstIteCodGru.Value;
  EstTam.Params[3].AsString := EstIteCodSub.Value;
  EstTam.Params[4].AsString := EstIteCodPro.Value;
  EstTam.Open;

  EdCodEmp.Enabled := True;
  CbNomEmp.Enabled := True;

  EdCodEmp.Font.Style := [];
  CbNomEmp.Font.Style := [];

  EdCodEmp.SetFocus;

end;

procedure TfmManPro2.EdPsqCodProExit(Sender: TObject);
begin
  inherited;
  if EdPsqCodPro.Text <> '' then
    EdPsqCodPro.Text := FNumStrZero(EdPsqCodPro.Text);
end;

procedure TfmManPro2.EstTamNewRecord(DataSet: TDataSet);
begin
  inherited;

  EstTam.DisableControls;

  EstTamCodEmp.Value := EstIteCodEmp.Value;
  EstTamCodClp.Value := EstIteCodClp.Value;
  EstTamCodGru.Value := EstIteCodGru.Value;
  EstTamCodSub.Value := EstIteCodSub.Value;
  EstTamCodPro.Value := EstIteCodPro.Value;

  EstTam.EnableControls;

  nvPro.Enabled := False;

  pcPag2.Enabled := False;
  pcPag3.Enabled := False;
  pcPag4.Enabled := False;

  EstQte.Close;
  EstQte.Params[0].AsInteger := EstTamCodEmp.Value;
  EstQte.Params[1].AsString := EstTamCodClp.Value;
  EstQte.Params[2].AsString := EstTamCodGru.Value;
  EstQte.Params[3].AsString := EstTamCodSub.Value;
  EstQte.Params[4].AsString := EstTamCodPro.Value;
  EstQte.Params[5].AsString := EstTamCodTam.Value;
  EstQte.Open;

end;

procedure TfmManPro2.EstQteNewRecord(DataSet: TDataSet);
begin
  inherited;

  EstQte.DisableControls;

  EstQteQTMQTE.Value := 0;
  EstQteQTDQTE.Value := 0;
  EstQteQTRQTE.Value := 0;
  EstQteQTAQTE.Value := 0;
  EstQteCodEmp.Value := EstTamCodEmp.Value;
  EstQteCodClp.Value := EstTamCodClp.Value;
  EstQteCodGru.Value := EstTamCodGru.Value;
  EstQteCodSub.Value := EstTamCodSub.Value;
  EstQteCodPro.Value := EstTamCodPro.Value;
  EstQteCodTam.Value := EstTamCodTam.Value;

  EstQte.EnableControls;

  nvPro.Enabled := False;

  pcPag2.Enabled := False;
  pcPag3.Enabled := False;
  pcPag4.Enabled := False;

end;

procedure TfmManPro2.nvTamExclui(Sender: TObject);
begin
  inherited;

  {EstTam.Close;
  EstTam.Open;}

end;

procedure TfmManPro2.grQteCellChanged(Sender: TObject);
begin
  inherited;
  {if EstParTamCor.Value = 'Nao' then
  begin

    if EstQteCodEmp.Value > 0 then
      nvQte.Enabledbuttons := [nbExclui, nbSalva, nbCancela, nbNavega]
    else
      nvQte.EnabledButtons := [nbAtualizar, nbInclui, nbExclui, nbSalva, nbCancela, nbNavega];

    nvQte.DataSource := DsQte;

  end
  else
  begin

    nvQte.EnabledButtons := [nbAtualizar, nbInclui, nbExclui, nbSalva, nbCancela, nbNavega];

    nvQte.DataSource := DsQte;

  end;}

  {if EstParFlgTam.Value = 'Nao' then
  begin

    if EstTamCodEmp.Value > 0 then
      nvTam.Enabledbuttons := [nbExclui, nbSalva, nbCancela, nbNavega]
    else
      nvTam.EnabledButtons := [nbAtualizar, nbInclui, nbExclui, nbSalva, nbCancela, nbNavega];

    nvTam.DataSource := DsTam;

  end
  else
  begin

    nvTam.EnabledButtons := [nbAtualizar, nbInclui, nbExclui, nbSalva, nbCancela, nbNavega];

    nvTam.DataSource := DsTam;

  end;}
end;

procedure TfmManPro2.grPro1DblClick(Sender: TObject);
begin
  inherited;
  pcPro.ActivePage := pcPag2;
end;

procedure TfmManPro2.EdCodProKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if EstPro.State = dsInsert then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := ' Select CodPro From EstPro ' +
        ' Where EstPro.CodClp = ''' + EstProCodClp.Value + '''' +
        '   and EstPro.CodGru = ''' + EstProCodGru.Value + '''' +
        '   and EstPro.CodSub = ''' + EstProCodSub.Value + '''' +
        ' Order by EstPro.CodPro';
      Open;
      Last;

      if FieldbyName('CodPro').AsString <> '' then
        Label32.Caption := 'Ultimo Item Cadastrado para o Grupo/Sub-Grupo ' + quSql.FieldbyName('CodPro').AsString
      else
        Label32.Caption := 'Ultimo Item Cadastrado para o Grupo/Sub-Grupo 00000';

    end;

  end
  else
    Label32.Caption := '';
end;

procedure TfmManPro2.EdCodProMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if EstPro.State = dsInsert then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := ' Select CodPro From EstPro ' +
        ' Where EstPro.CodClp = ''' + EstProCodClp.Value + '''' +
        '   and EstPro.CodGru = ''' + EstProCodGru.Value + '''' +
        '   and EstPro.CodSub = ''' + EstProCodSub.Value + '''' +
        ' Order by EstPro.CodPro';
      Open;
      Last;

      if FieldbyName('CodPro').AsString <> '' then
        Label32.Caption := 'Ultimo Item Cadastrado para o Grupo/Sub-Grupo ' + quSql.FieldbyName('CodPro').AsString
      else
        Label32.Caption := 'Ultimo Item Cadastrado para o Grupo/Sub-Grupo 00000';

    end;

  end
  else
    Label32.Caption := '';
end;

procedure TfmManPro2.EdIcmSaiExit(Sender: TObject);
begin
  inherited;
  if nvPro.Salvar then
  begin

    if Trim(EstProIcmSai.Value) <> '' then
    begin

      with quSQL, SQL do
      begin

        if (StrToIntDef(fmManGDB.BuscaSimples('ESTICM', 'COUNT', '',
          'select count(1) from esticm where coalesce(flgativo,1) = 1 and codicm = ' + QuotedStr(EdIcmSai.Text) +
          ' and TipIcm = ' + QuotedStr('Saida')), 0) > 1) then //Possui mais de uma regra
          ShowMessage('O código informado Possui mais de uma referência. Favor pesquisar através do F1')
        else
        begin

          Close;
          Text := ' Select TipIcm,PerIcm, CODST2, ID_ESTICM From EstIcm ' +
            ' Where coalesce(flgativo,1) = 1 '+
            '   and CodIcm = ''' + EdIcmSai.Text + '''' +
            '   and TipIcm = ''' + 'Saida' + '''';
          Open;

          if Trim(FieldbyName('TipIcm').AsString) <> '' then
          begin
            EstProSaiIcm.Value := FieldbyName('PerIcm').AsFloat;
            EstProCODST2.AsString := FieldbyName('CODST2').AsString;
            EdCodSt2.Text := FieldbyName('CODST2').AsString;
            EstProIcmTsd.AsString := 'Saida';
            EstProID_ESTICM_SAIDA.AsInteger := FieldByName('ID_ESTICM').AsInteger;
          end
          else
            fmsgErro('Regra de Icms Informada não Encontrada ou Inativa.', EdIcmSai);
        end;
      end;

    end
    else
      EstProSaiIcm.Value := 0;
  end;
end;

procedure TfmManPro2.CbNomIcmSaiExit(Sender: TObject);
begin
  inherited;
  EdIcmSai.SetFocus;
end;

procedure TfmManPro2.EdIpiSaiExit(Sender: TObject);
var
  ncm: string;
begin
  inherited;
  if nvPro.Salvar then
  begin

    if Trim(EstProIpiSai.AsString) <> '' then
    begin

      with quSQL, SQL do
      begin

        Close;
        Text := ' Select TipIpi,ClsIpi,PerIpi From EstIpi ' +
          ' Where coalesce(FlgAtivo,1) = 1 '+
          '   and CodIpi = ''' + EstProIpiSai.AsString + '''' +
          '   and TipIpi = ''' + 'Saida' + '''';
        Open;

        if Trim(FieldbyName('TipIpi').AsString) <> '' then
        begin

          EstProSaiIpi.AsFloat := FieldbyName('PerIpi').AsFloat;
          EstProClfSai.AsString := FieldbyName('ClsIpi').AsString;
          EstProIpiTsd.AsString := 'Saida';

        end
        else
          fmsgErro('Regra de IPI Informada não Encontrada ou Inativa.', EdIpiSai);

      end;

    end
    else
      EstProSaiIpi.Value := 0;
  end;

  ncm := fmManGDB.BuscaSimples('estipi', 'clsipi', 'codipi = ' + QuotedStr(EstPro.FieldByName('ipisai').AsString));

  if ((Trim(ncm) <> '') and (ncm <> dxDBColorEdit6.Text)) then
    ShowMessage('O NCM do Produto está diferente do NCM das Regras');

  checaIpi();
end;

procedure TfmManPro2.CbNomIpiSaiExit(Sender: TObject);
begin
  inherited;
  EdIpiSai.SetFocus;
end;

procedure TfmManPro2.EdIcmEntExit(Sender: TObject);
begin
  inherited;
  if nvPro.Salvar then
  begin

    if Trim(EstProIcmEnt.Value) <> '' then
    begin

      with quSQL, SQL do
      begin

        if (StrToIntDef(fmManGDB.BuscaSimples('ESTICM', 'COUNT', '',
          'select count(1) from esticm where coalesce(flgativo,1) = 1 and codicm = ' + QuotedStr(EdIcmEnt.Text) +
          ' and TipIcm = ' + QuotedStr('Entrada')), 0) > 1) then //Possui mais de uma regra
          ShowMessage('O código informado Possui mais de uma referência. Favor pesquisar através do F1')
        else
        begin
          Close;
          Text := ' Select TipIcm,PerIcm, ID_ESTICM From EstIcm ' +
            ' Where coalesce(flgativo,1) = 1 '+
            '   and CodIcm = ''' + EstProIcmEnt.Value + '''' +
            '   and TipIcm = ''' + 'Entrada' + '''';
          Open;

          if Trim(FieldbyName('TipIcm').AsString) <> '' then
          begin
            EstProEntIcm.Value := FieldbyName('PerIcm').AsFloat;
            EstProIcmTen.AsString := 'Entrada';
            EstProID_ESTICM_ENTRADA.AsInteger := FieldByName('ID_ESTICM').AsInteger;
          end
          else
            fmsgErro('Regra de Icms Informada não Encontrada ou Inativa.', EdIcmEnt);
        end;
      end;

    end
    else
      EstProEntIcm.Value := 0;
  end;
end;

procedure TfmManPro2.CbNomIcmEntExit(Sender: TObject);
begin
  inherited;
  EdIcmEnt.SetFocus;
end;

procedure TfmManPro2.EdIpiEntExit(Sender: TObject);
begin
  inherited;
  if nvPro.Salvar then
  begin

    if Trim(EstProIpiEnt.AsString) <> '' then
    begin

      with quSQL, SQL do
      begin

        Close;
        Text := ' Select TipIpi,PerIpi,ClsIpi From EstIpi ' +
          ' Where coalesce(FlgAtivo,1) = 1 '+
          '   and CodIpi = ''' + EstProIpiEnt.AsString + '''' +
          '   and TipIpi = ''' + 'Entrada' + '''';
        Open;

        if Trim(FieldbyName('TipIpi').AsString) <> '' then
        begin

          EstProEntIpi.AsFloat := FieldbyName('PerIpi').AsFloat;
          EstProClfEnt.AsString := FieldbyName('ClsIpi').AsString;
          EstProIpiTen.AsString := 'Entrada';

        end
        else
          fmsgErro('Regra de IPI Informada não Encontrada ou Inativa.', EdIpiEnt);

      end;

    end
    else
      EstProEntIpi.Value := 0;
  end;

  checaIpi();

end;

procedure TfmManPro2.CbNomIpiEntExit(Sender: TObject);
begin
  inherited;
  EdIpiEnt.SetFocus;
end;

procedure TfmManPro2.nvProBeforeSalva(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  if Trim(EstProIdePro.Value) = '' then
    EstProIdePro.Clear;

  if Trim(EstProCodSte.Value) <> '' then
    EstProTipSte.Value := 'Entrada'
  else
  begin

    EstProCodSte.Clear;
    EstProTipSte.Clear;

  end;

  if Trim(EstProCodSts.Value) <> '' then
    EstProTipSts.Value := 'Saida'
  else
  begin

    EstProCodSts.Clear;
    EstProTipSts.Clear;

  end;

  if Trim(EstProIcmSai.Value) <> '' then
  begin

    //EstProIcmTsd.Value := 'Saida';

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select PerIcm From EstIcm ' +
        ' Where coalesce(flgativo,1) = 1 '+
        '   and CodIcm = ''' + EstProIcmSai.AsString + '''' +
        '   and TipIcm = ''' + EstProIcmTsd.AsString + '''';

      {Text := ' Select TipIcm,PerIcm From EstIcm ' +
          ' Where ID_ESTICM = ''' + EstProID_ESTICM_SAIDA.AsString + '''';
       }
      Open;

      EstProSaiIcm.Value := FieldbyName('PerIcm').AsFloat;

    end;

  end
  else
  begin

    EstProIcmSai.Clear;
    EstProIcmTsd.Clear;

    EstProSaiIcm.Value := 0;

  end;

  if Trim(EstProIpiSai.Value) <> '' then
  begin

    //EstProIpiTsd.Value := 'Saida';

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select PerIpi From EstIpi ' +
        ' Where CodIpi = ''' + EstProIpiSai.AsString + '''' +
        '   and TipIpi = ''' + EstProIpiTsd.AsString + '''';
      Open;

      EstProSaiIpi.Value := FieldbyName('PerIpi').AsFloat;

    end;

  end
  else
  begin

    EstProIpiSai.Clear;
    EstProIpiTsd.Clear;
    EstProClfSai.Clear;

    EstProSaiIpi.Value := 0;

  end;

  if Trim(EstProIcmEnt.Value) <> '' then
  begin

    //EstProIcmTen.Value := 'Entrada';

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select PerIcm From EstIcm ' +
        ' Where coalesce(flgativo,1) = 1 '+
        '   and CodIcm = ''' + EstProIcmEnt.AsString + '''' +
        '   and TipIcm = ''' + EstProIcmTen.AsString + '''';

      {Text := ' Select TipIcm,PerIcm From EstIcm ' +
          ' Where ID_ESTICM = ''' + EstProID_ESTICM_ENTRADA.AsString + '''';
      }
      Open;

      EstProEntIcm.Value := FieldbyName('PerIcm').AsFloat;

    end;

  end
  else
  begin

    EstProIcmEnt.Clear;
    EstProIcmTen.Clear;

    EstProEntIcm.Value := 0;

  end;

  if Trim(EstProIpiEnt.Value) <> '' then
  begin

    //EstProIpiTen.Value := 'Entrada';

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select PerIpi From EstIpi ' +
        ' Where CodIpi = ''' + EstProIpiEnt.AsString + '''' +
        '   and TipIpi = ''' + EstProIpiTen.AsString + '''';
      Open;

      EstProEntIpi.Value := FieldbyName('PerIpi').AsFloat;

    end;

  end
  else
  begin

    EstProIpiEnt.Clear;
    EstProIpiTen.Clear;
    EstProClfEnt.Clear;

    EstProEntIpi.Value := 0;

  end;

  if Trim(EstProCOD_FCP_SAIDA.AsString) <> '' then
  begin

    //EstProIpiTsd.Value := 'Saida';

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select COD_REGRA_FCP From REGRA_FCP ' +
        ' Where COD_REGRA_FCP = ' + QuotedStr(EstProCOD_FCP_SAIDA.AsString) +
        ' and TIP_FCP = ''Saida'' ';
      Open;

      quSQL.Last;
      quSQL.First;

      if quSQL.RecordCount = 0 then
      begin
        messagebox(Self.Handle,'Regra de Fundo de Combate a Pobreza de saída não encontrada. Verifique e tente novamente.','Valiração Fundo de Combate a Pobreza',MB_OK+MB_ICONEXCLAMATION);
        EstProCOD_FCP_SAIDA.Clear;
        edFCPSaida.Text := '';

        abort;

      end;

    end;

  end
  else
  begin

    EstProCOD_FCP_SAIDA.Clear;
    edFCPSaida.Text := '';

  end;

  if Trim(EstProCOD_FCP_ENTRADA.AsString) <> '' then
  begin

    //EstProIpiTsd.Value := 'Saida';

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select COD_REGRA_FCP From REGRA_FCP ' +
        ' Where COD_REGRA_FCP = ' + QuotedStr(EstProCOD_FCP_ENTRADA.AsString) +
        ' and TIP_FCP = ''Entrada'' ';
      Open;

      quSQL.Last;
      quSQL.First;

      if quSQL.RecordCount = 0 then
      begin
        messagebox(self.handle,'Regra de Fundo de Combate a Pobreza de entrada não encontrada. Verifique e tente novamente.','Valiração Fundo de Combate a Pobreza',MB_OK+MB_ICONEXCLAMATION);

        EstProCOD_FCP_ENTRADA.Clear;
        edFCPEntrada.Text := '';

        abort;


      end;

    end;

  end
  else
  begin

    EstProCOD_FCP_ENTRADA.Clear;
    edFCPEntrada.Text := '';

  end;

  if Trim(EstProCodClp.Value) = '' then
    fmsgErro('Campo de Preenchimento Obrigatorio não Informado', EdCodClp);
  if Trim(EstProCodGru.Value) = '' then
    fmsgErro('Campo de Preenchimento Obrigatorio não Informado', EdCodGru);
  if Trim(EstProCodSub.Value) = '' then
    fmsgErro('Campo de Preenchimento Obrigatorio não Informado', EdCodSub);
  if Trim(EstProCodPro.Value) = '' then
    fmsgErro('Campo de Preenchimento Obrigatorio não Informado', EdCodPro);

  EstProCodGru.Value := FNumZeros(EstProCodGru.Value, 3);
  EstProCodSub.Value := FNumZeros(EstProCodSub.Value, 4);
  EstProCodPro.Value := FNumStrZero(EstProCodPro.Value);

  ValidaDadosItem;
end;

procedure TfmManPro2.mmSelImgClick(Sender: TObject);
var
  BlobStream: TStream;
  JPEGImage: TJPEGImage;
  FileStream: TFileStream;
begin
  inherited;
  if not (EstPro.State in ([dsEdit, dsInsert])) then
    EstPro.Edit;

  if OpenPicture.Execute then
  begin

    FileStream := TFileStream.Create(OpenPicture.FileName, fmOpenRead or fmShareDenyWrite);

    BlobStream := EstPro.CreateBlobStream(EstProImgPro, bmWrite);

    try
      BlobStream.CopyFrom(FileStream, FileStream.Size);
    finally
      FreeAndNil(FileStream);
      FreeAndNil(BlobStream);
    end;
  end;

  if EstProImgPro.BlobSize <> 0 then
  begin

    BlobStream := EstPro.CreateBlobStream(EstProImgPro, bmRead);

    JPEGImage := TJPEGImage.Create;

    try
      JPEGImage.LoadFromStream(BlobStream);
      Imagem2.Picture.Assign(JPEGImage);
    finally
      FreeAndNil(BlobStream);
      FreeAndNil(JPEGImage);
    end;

  end
  else
    Imagem2.Picture := nil;
end;

procedure TfmManPro2.Limpar1Click(Sender: TObject);
var
  JPEGImage: TJPEGImage;
  BlobStream: TStream;
begin
  inherited;
  if EstProImgPro.BlobSize <> 0 then
  begin

    if not (EstPro.State in ([dsEdit, dsInsert])) then
      EstPro.Edit;

    EstProImgPro.Clear;

    if EstProImgPro.BlobSize <> 0 then
    begin

      BlobStream := EstPro.CreateBlobStream(EstProImgPro, bmRead);

      JPEGImage := TJPEGImage.Create;

      try
        JPEGImage.LoadFromStream(BlobStream);
        Imagem2.Picture.Assign(JPEGImage);
      finally
        FreeAndNil(BlobStream);
        FreeAndNil(JPEGImage);
      end;

    end
    else
      Imagem2.Picture := nil;
  end;
end;

procedure TfmManPro2.EdSimProKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  Label32.Caption := 'F2-Código F3-Busca Inteligente F4-Busca Iniciais';
end;

procedure TfmManPro2.EdSimProMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  Label32.Caption := 'F2-Código F3-Busca Inteligente F4-Busca Iniciais';
end;

procedure TfmManPro2.EdSimProExit(Sender: TObject);
begin
  inherited;
  Label32.Caption := '';
end;

procedure TfmManPro2.EdSimProKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 113 then
  begin {Busca pelo Código}

    try

      fmAuxCod := TfmAuxCod.Create(Self);

      fmAuxCod.ShowModal;

      if Trim(fmAuxCod.sSimPro) <> '' then
      begin

        if not nvPro.Salvar then
        begin

          if EstProCodClp.Value <> '' then
            EstPro.Edit
          else
            EstPro.Insert;

        end;

        EstProSimPro.Value := fmAuxCod.sSimPro;

      end;

    finally

      FreeAndNil(fmAuxCod);

    end;

    EdSimPro.SetFocus;

  end;

  if key = 114 then
  begin {Busca Inteligente}

    try

      fmAuxPro := TfmAuxPro.Create(Self);

      fmAuxPro.TipoPsq := 'I';

      fmAuxPro.ShowModal;

      if Trim(fmAuxPro.SimPro) <> '' then
      begin

        if not nvPro.Salvar then
        begin

          if EstProCodClp.Value <> '' then
            EstPro.Edit
          else
            EstPro.Insert;

        end;

        EstProSimPro.Value := fmAuxPro.SimPro;

      end;

    finally

      FreeAndNil(fmAuxPro);

    end;

    EdSimPro.SetFocus;

  end;

  if key = 115 then
  begin {Busca Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      fmAuxIni.TipoPesq := 'I';

      fmAuxIni.ShowModal;

      if fmAuxIni.SimPro <> '' then
      begin

        if not nvPro.Salvar then
        begin

          if EstProCodClp.Value <> '' then
            EstPro.Edit
          else
            EstPro.Insert;

        end;

        EstProSimPro.Value := fmAuxIni.SimPro;

      end;

    finally

      FreeAndNil(fmAuxIni);

    end;

    EdSimPro.SetFocus;

  end;
end;

procedure TfmManPro2.EdWebProKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key = 13) or (key = 40) then
    pcPro.ActivePage := pcPag4;
end;

procedure TfmManPro2.FormShow(Sender: TObject);
begin
  inherited;

  pcPro.Pages[4].tabVisible := False;

  if FileExists('C:\Windows\Emerion.ini') then
  begin

    nvPro.Permissao := 'NNNNN';

    nvIte.Permissao := 'SSSSS';

    //nvQte.Permissao := 'SSSSS';

  end;

  if EstParLanMin.Value <> 'Sim' then
  begin

    EdPsqDscPro.CharCase := ecUpperCase;

    EdDscPro.CharCase := ecUpperCase;

  end;

  if (EstParFlgAnt.Value <> 'Sim') and (GUsu_Id <> 999) then
  begin

    Label101.Visible := False;

    EdCodAnt.Visible := False;

  end;

  //EdCbaQte.Enabled := False;

  if EstParTamCor.Value = 'Sim' then
  begin

    if EstParLanCba.Value = 'Nao' then
    begin

      if EstParTipEan.Value = 'Cores' then

    end;
  end;

  if GFlgAce = 'Sim' then
  begin

    if GEmpLog > 0 then
    begin

      with GerEmp, SQL do
      begin

        Close;
        Text := ' Select CodEmp,NomEmp,FlgFil From GerEmp Where GerEmp.CodEmp = :CodEmp';

        with Params do
        begin

          Params[0].AsInteger := GEmpLog;

        end;

        Open;

      end;

      with EstIte, SQL do
      begin

        Close;
        Text := ' Select EstIte.*,' +
          '        Round(EstIte.QtdIte - (EstIte.QtrIte + EstIte.QtdRma),4) as QtsIte' +
          ' From EstIte LEFT JOIN GerEmp ON (EstIte.CodEmp = GerEmp.CodEmp)' +
          ' Where EstIte.CodClp = :CodClp' +
          '   and EstIte.CodGru = :CodGru' +
          '   and EstIte.CodSub = :CodSub' +
          '   and EstIte.CodPro = :CodPro' +
          '   and EstIte.CodEmp = ' + QuotedStr(IntToStr(GEmpLog)) +
          ' Order by EstIte.CodEmp';
        Open;

      end;

    end
    else
    begin

      with GerEmp, SQL do
      begin

        Close;
        Text := ' Select CodEmp,NomEmp,FlgFil From GerEmp Where GerEmp.ExiEst = ''' + 'Nao' + '''';
        Open;

      end;

      with EstIte, SQL do
      begin

        Close;
        Text := ' Select EstIte.*,' +
          '        Round(EstIte.QtdIte - (EstIte.QtrIte + EstIte.QtdRma),4) as QtsIte' +
          ' From EstIte LEFT JOIN GerEmp ON (EstIte.CodEmp = GerEmp.CodEmp)' +
          ' Where EstIte.CodClp = :CodClp' +
          '   and EstIte.CodGru = :CodGru' +
          '   and EstIte.CodSub = :CodSub' +
          '   and EstIte.CodPro = :CodPro' +
          '   and GerEmp.ExiEst = ''' + 'Nao' + '''' +
          ' Order by EstIte.CodEmp';
        Open;

      end;
    end;
  end;

  EstPar.Active := True;

  if Trim(EstParFlgTab.Value) <> '' then
  begin

    if EstParFlgTab.Value = 'Ultimo Preco' then
      Label34.Font.Color := clRed;
    if EstParFlgTab.Value = 'Custo Historico' then
      Label35.Font.Color := clRed;
    if EstParFlgTab.Value = 'Custo Ponderado' then
      Label37.Font.Color := clRed;
    if EstParFlgTab.Value = 'Custo Referencial' then
      Label36.Font.Color := clRed;
    if EstParFlgTab.Value = 'Ultimo Custo(CIF)' then
      Label129.Font.Color := clRed;
    if EstParFlgTab.Value = 'Custo Historico (G)' then
      Label37.Font.Color := clRed;
    if EstParFlgTab.Value = 'Custo Ponderado (G)' then
      Label30.Font.Color := clRed;
    if EstParFlgTab.Value = 'Media Ponderada (E)' then
      Label100.Font.Color := clRed;
    if EstParFlgTab.Value = 'Custo da Ultima Compra' then
      Label75.Font.Color := clRed;

  end;

  //FinCom.active := True;
  pcPro.ActivePage := pcPag1;

end;

procedure TfmManPro2.pcPag5Show(Sender: TObject);
begin
  inherited;

  EstSub.Close;
  EstSub.Params[0].AsString := EstProCodGru.Value;
  EstSub.Open;

end;

procedure TfmManPro2.DsIteDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if GerEmp.Params[0].AsInteger <> EstIteCodEmp.Value then
  begin

    GerEmp.Close;
    GerEmp.Params[0].AsInteger := EstIteCodEmp.Value;
    GerEmp.Open;

  end;

  if GerEmpFlgFil.Value = 'Sim' then
  begin

    if EdVb1Ite.Enabled then
    begin
      EdVb1Ite.Enabled := False;
      EdVb2Ite.Enabled := False;
      EdVb3Ite.Enabled := False;
      EdVb4Ite.Enabled := False;
      EdVb5Ite.Enabled := False;
      EdMk1Ite.Enabled := False;
      EdMk2Ite.Enabled := False;
      EdMk3Ite.Enabled := False;
      EdMk4Ite.Enabled := False;
      EdMk5Ite.Enabled := False;
      EdMs1Ite.Enabled := False;
      EdMs2Ite.Enabled := False;
      EdMs3Ite.Enabled := False;
      EdMs4Ite.Enabled := False;
      EdMs5Ite.Enabled := False;
      EdCodCm1.Enabled := False;
      EdCodCm2.Enabled := False;
      EdCodCm3.Enabled := False;
      EdCodCm4.Enabled := False;
      EdCodCm5.Enabled := False;
      CbNomCm1.Enabled := False;
      CbNomCm2.Enabled := False;
      CbNomCm3.Enabled := False;
      CbNomCm4.Enabled := False;
      CbNomCm5.Enabled := False;
      EdDs1Ite.Enabled := False;
      EdDs2Ite.Enabled := False;
      EdDs3Ite.Enabled := False;
      EdDs4Ite.Enabled := False;
      EdDs5Ite.Enabled := False;

      EdVb1Ite.Font.Style := [fsBold];
      EdVb2Ite.Font.Style := [fsBold];
      EdVb3Ite.Font.Style := [fsBold];
      EdVb4Ite.Font.Style := [fsBold];
      EdVb5Ite.Font.Style := [fsBold];
      EdMk1Ite.Font.Style := [fsBold];
      EdMk2Ite.Font.Style := [fsBold];
      EdMk3Ite.Font.Style := [fsBold];
      EdMk4Ite.Font.Style := [fsBold];
      EdMk5Ite.Font.Style := [fsBold];
      EdMs1Ite.Font.Style := [fsBold];
      EdMs2Ite.Font.Style := [fsBold];
      EdMs3Ite.Font.Style := [fsBold];
      EdMs4Ite.Font.Style := [fsBold];
      EdMs5Ite.Font.Style := [fsBold];
      EdCodCm1.Font.Style := [fsBold];
      EdCodCm2.Font.Style := [fsBold];
      EdCodCm3.Font.Style := [fsBold];
      EdCodCm4.Font.Style := [fsBold];
      EdCodCm5.Font.Style := [fsBold];
      CbNomCm1.Font.Style := [fsBold];
      CbNomCm2.Font.Style := [fsBold];
      CbNomCm3.Font.Style := [fsBold];
      CbNomCm4.Font.Style := [fsBold];
      CbNomCm5.Font.Style := [fsBold];
      EdDs1Ite.Font.Style := [fsBold];
      EdDs2Ite.Font.Style := [fsBold];
      EdDs3Ite.Font.Style := [fsBold];
      EdDs4Ite.Font.Style := [fsBold];
      EdDs5Ite.Font.Style := [fsBold];

    end;

  end
  else
  begin

    if not EdVb1Ite.Enabled then
    begin

      EdVb1Ite.Enabled := True;
      EdVb2Ite.Enabled := True;
      EdVb3Ite.Enabled := True;
      EdVb4Ite.Enabled := True;
      EdVb5Ite.Enabled := True;
      EdMk1Ite.Enabled := True;
      EdMk2Ite.Enabled := True;
      EdMk3Ite.Enabled := True;
      EdMk4Ite.Enabled := True;
      EdMk5Ite.Enabled := True;
      EdMs1Ite.Enabled := True;
      EdMs2Ite.Enabled := True;
      EdMs3Ite.Enabled := True;
      EdMs4Ite.Enabled := True;
      EdMs5Ite.Enabled := True;
      EdCodCm1.Enabled := True;
      EdCodCm2.Enabled := True;
      EdCodCm3.Enabled := True;
      EdCodCm4.Enabled := True;
      EdCodCm5.Enabled := True;
      CbNomCm1.Enabled := True;
      CbNomCm2.Enabled := True;
      CbNomCm3.Enabled := True;
      CbNomCm4.Enabled := True;
      CbNomCm5.Enabled := True;
      EdDs1Ite.Enabled := True;
      EdDs2Ite.Enabled := True;
      EdDs3Ite.Enabled := True;
      EdDs4Ite.Enabled := True;
      EdDs5Ite.Enabled := True;

      EdVb1Ite.Font.Style := [];
      EdVb2Ite.Font.Style := [];
      EdVb3Ite.Font.Style := [];
      EdVb4Ite.Font.Style := [];
      EdVb5Ite.Font.Style := [];
      EdMk1Ite.Font.Style := [];
      EdMk2Ite.Font.Style := [];
      EdMk3Ite.Font.Style := [];
      EdMk4Ite.Font.Style := [];
      EdMk5Ite.Font.Style := [];
      EdMs1Ite.Font.Style := [];
      EdMs2Ite.Font.Style := [];
      EdMs3Ite.Font.Style := [];
      EdMs4Ite.Font.Style := [];
      EdMs5Ite.Font.Style := [];
      EdCodCm1.Font.Style := [];
      EdCodCm2.Font.Style := [];
      EdCodCm3.Font.Style := [];
      EdCodCm4.Font.Style := [];
      EdCodCm5.Font.Style := [];
      CbNomCm1.Font.Style := [];
      CbNomCm2.Font.Style := [];
      CbNomCm3.Font.Style := [];
      CbNomCm4.Font.Style := [];
      CbNomCm5.Font.Style := [];
      EdDs1Ite.Font.Style := [];
      EdDs2Ite.Font.Style := [];
      EdDs3Ite.Font.Style := [];
      EdDs4Ite.Font.Style := [];
      EdDs5Ite.Font.Style := [];

    end;
  end;

  if not nvIte.Salvar then
  begin

    AntVcrIte := EstIteVcrIte.Value;
    AntVb1Ite := EstIteVb1Ite.Value;
    AntVb2Ite := EstIteVb2Ite.Value;
    AntVb3Ite := EstIteVb3Ite.Value;
    AntVb4Ite := EstIteVb4Ite.Value;
    AntVb5Ite := EstIteVb5Ite.Value;
    AntMk1Ite := EstIteMk1Ite.Value;
    AntMk2Ite := EstIteMk2Ite.Value;
    AntMk3Ite := EstIteMk3Ite.Value;
    AntMk4Ite := EstIteMk4Ite.Value;
    AntMk5Ite := EstIteMk5Ite.Value;
    AntMs1Ite := EstIteMs1Ite.Value;
    AntMs2Ite := EstIteMs2Ite.Value;
    AntMs3Ite := EstIteMs3Ite.Value;
    AntMs4Ite := EstIteMs4Ite.Value;
    AntMs5Ite := EstIteMs5Ite.Value;

    if (EstTam.Params[0].AsInteger <> EstIteCodEmp.Value) or
      (EstTam.Params[1].AsString <> EstIteCodClp.Value) or
      (EstTam.Params[2].AsString <> EstIteCodGru.Value) or
      (EstTam.Params[3].AsString <> EstIteCodSub.Value) or
      (EstTam.Params[4].AsString <> EstIteCodPro.Value) then
    begin

      EstTam.Close;
      EstTam.Params[0].AsInteger := EstIteCodEmp.Value;
      EstTam.Params[1].AsString := EstIteCodClp.Value;
      EstTam.Params[2].AsString := EstIteCodGru.Value;
      EstTam.Params[3].AsString := EstIteCodSub.Value;
      EstTam.Params[4].AsString := EstIteCodPro.Value;
      EstTam.Open;

    end;
  end;
end;

procedure TfmManPro2.DsTamDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  {if not nvTam.Salvar then
  begin

    if EdCodTam.Enabled then
    begin

      nvPro.Enabled := True;

      pcPag2.Enabled := True;
      pcPag3.Enabled := True;
      pcPag4.Enabled := True;

      EdCodTam.Enabled := False;

      EdCodTam.Font.Style := [fsBold];

    end;

    if (EstQte.Params[0].AsInteger <> EstTamCodEmp.Value) or
      (EstQte.Params[1].AsString <> EstTamCodClp.Value) or
      (EstQte.Params[2].AsString <> EstTamCodGru.Value) or
      (EstQte.Params[3].AsString <> EstTamCodSub.Value) or
      (EstQte.Params[4].AsString <> EstTamCodPro.Value) or
      (EstQte.Params[5].AsString <> EstTamCodTam.Value) then
    begin

      EstQte.Close;
      EstQte.Params[0].AsInteger := EstTamCodEmp.Value;
      EstQte.Params[1].AsString := EstTamCodClp.Value;
      EstQte.Params[2].AsString := EstTamCodGru.Value;
      EstQte.Params[3].AsString := EstTamCodSub.Value;
      EstQte.Params[4].AsString := EstTamCodPro.Value;
      EstQte.Params[5].AsString := EstTamCodTam.Value;
      EstQte.Open;

    end;
  end;}
end;

procedure TfmManPro2.DsQteDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if EstCor.Params[0].AsString <> EstQteCodCor.Value then
  begin

    EstCor.Close;
    EstCor.Params[0].AsString := EstQteCodCor.Value;
    EstCor.Open;

  end;

  {if not nvQte.Salvar then
  begin

    if EdCodCor.Enabled then
    begin

      nvPro.Enabled := True;

      pcPag2.Enabled := True;
      pcPag3.Enabled := True;
      pcPag4.Enabled := True;

      EdCodCor.Enabled := True;
      CbNomCor.Enabled := True;

      EdCodCor.Font.Style := [];
      CbNomCor.Font.Style := [];

    end;
  end; }
end;

procedure TfmManPro2.EstProAfterCancel(DataSet: TDataSet);
begin
  inherited;
  if Trim(EstProCodPro.Value) <> '' then
  begin

    pcPag4.Enabled := True;

  end
  else
  begin

    pcPag4.Enabled := False;

  end;
end;

procedure TfmManPro2.EstProBeforeEdit(DataSet: TDataSet);
begin
  inherited;

  pcPag4.Enabled := False;

end;

procedure TfmManPro2.EstIteAfterCancel(DataSet: TDataSet);
begin
  inherited;

  nvPro.Enabled := True;

  pcPag2.Enabled := True;
  pcPag3.Enabled := True;

  EdCodEmp.Enabled := False;
  CbNomEmp.Enabled := False;

  EdCodEmp.Font.Style := [fsBold];
  CbNomEmp.Font.Style := [fsBold];

  if estqte.state in [dsEdit, dsinsert] then
    estqte.cancel;

end;

procedure TfmManPro2.EstIteBeforeEdit(DataSet: TDataSet);
begin
  inherited;

  nvPro.Enabled := False;

  pcPag2.Enabled := False;
  pcPag3.Enabled := False;

end;

procedure TfmManPro2.EstTamAfterCancel(DataSet: TDataSet);
begin
  inherited;

  nvPro.Enabled := True;

  pcPag2.Enabled := True;
  pcPag3.Enabled := True;
  pcPag4.Enabled := True;

end;

procedure TfmManPro2.EstTamBeforeEdit(DataSet: TDataSet);
begin
  inherited;

  nvPro.Enabled := False;

  pcPag2.Enabled := False;
  pcPag3.Enabled := False;
  pcPag4.Enabled := False;

end;

procedure TfmManPro2.EstQteAfterCancel(DataSet: TDataSet);
begin
  inherited;

  nvPro.Enabled := True;

  pcPag2.Enabled := True;
  pcPag3.Enabled := True;
  pcPag4.Enabled := True;

  EstQte.Active := false;
  EstQte.Active := true;

end;

procedure TfmManPro2.EstQteBeforeEdit(DataSet: TDataSet);
begin
  inherited;

  nvPro.Enabled := False;

  pcPag2.Enabled := False;
  pcPag3.Enabled := False;
  //PcPag4.Enabled := False;
  if estite.state = dsbrowse then
    estite.Edit;

end;

procedure TfmManPro2.EdPsqCodClpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmManPro2.CbNomStsExit(Sender: TObject);
begin
  inherited;
  EdCodSts.SetFocus;
end;

procedure TfmManPro2.EdCodStsKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      fmAuxIni.TipoPesq := 'STR';

      fmAuxIni.TipStr := 'Saida';

      fmAuxIni.ShowModal;

      if Trim(fmAuxIni.CodStr) <> '' then
      begin

        if not nvPro.Salvar then
        begin

          if Trim(EstProCodClp.Value) <> '' then
            EstPro.Edit
          else
            EstPro.Insert;

        end;

        EstProCodSts.Value := fmAuxIni.CodStr;
        EstProTipSts.Value := fmAuxIni.TipStr;

      end;

    finally

      FreeAndNil(fmAuxIni);

    end;

    {if Trim(EstProCodSts.Value) <> '' then
      EdCodSte.SetFocus;}

  end;
end;

procedure TfmManPro2.FormPaint(Sender: TObject);
begin
  inherited;
  if fmManPri.PopMenu.AutoPopup then
    fmManPri.PopMenu.AutoPopup := False;
end;

procedure TfmManPro2.nvIteBeforeSalva(Sender: TObject);
begin

  if estqte.state in [dsEdit, dsinsert] then
  begin
    estqte.post;
    with EstQte do
    begin

      fmManGDB.dbMain.StartTransaction;

      try

        ApplyUpdates;

        fmManGDB.dbMain.Commit;

      except

        fmManGDB.dbMain.Rollback;

        if EstQte.State <> dsBrowse then
          EstQte.CancelUpdates;

        raise;

      end;

      CommitUpdates;

    end;
  end;

  inherited;
  if Trim(edCodCm1.Text) = '' then
    EstIteCodCm1.Clear;
  if Trim(edCodCm2.Text) = '' then
    EstIteCodCm2.Clear;
  if Trim(edCodCm3.Text) = '' then
    EstIteCodCm3.Clear;
  if Trim(edCodCm4.Text) = '' then
    EstIteCodCm4.Clear;
  if Trim(edCodCm5.Text) = '' then
    EstIteCodCm5.Clear;

end;

procedure TfmManPro2.bPsqCatClick(Sender: TObject);
begin
  inherited;

  try

    fmAuxIni := TfmAuxIni.Create(Self);

    fmAuxIni.TipoPesq := 'Categoria';

    fmAuxIni.ShowModal;

    if fmAuxIni.CodCat > 0 then
    begin

      EdPsqNomCat.Text := fmAuxIni.NomCat;
      EdPsqCodCat.Text := IntToStr(fmAuxIni.CodCat);

    end;

  finally

    FreeAndNil(fmAuxIni);

  end;

  if Trim(EdPsqCodCat.Text) <> '' then
    EdPsqCodTip.SetFocus;

end;

procedure TfmManPro2.bPsqTipClick(Sender: TObject);
begin
  inherited;

  try

    fmAuxIni := TfmAuxIni.Create(Self);

    if Trim(EdPsqCodCat.Text) <> '' then
      fmAuxIni.CodCat := StrToInt(EdPsqCodCat.Text);

    fmAuxIni.TipoPesq := 'Tipo';

    fmAuxIni.ShowModal;

    if fmAuxIni.CodTip > 0 then
    begin

      EdPsqNomTip.Text := fmAuxIni.NomTip;
      EdPsqCodTip.Text := IntToStr(fmAuxIni.CodTip);

    end;

  finally

    FreeAndNil(fmAuxIni);

  end;

  if Trim(EdPsqCodTip.Text) <> '' then
    EdPsqCodMrc.SetFocus;

end;

procedure TfmManPro2.bPsqMrcClick(Sender: TObject);
begin
  inherited;

  try

    fmAuxIni := TfmAuxIni.Create(Self);

    if Trim(EdPsqCodCat.Text) <> '' then
      fmAuxIni.CodCat := StrToInt(EdPsqCodCat.Text);
    if Trim(EdPsqCodTip.Text) <> '' then
      fmAuxIni.CodTip := StrToInt(EdPsqCodTip.Text);

    fmAuxIni.TipoPesq := 'Marca';

    fmAuxIni.ShowModal;

    if fmAuxIni.CodMrc > 0 then
    begin

      EdPsqNomMrc.Text := fmAuxIni.NomMrc;
      EdPsqCodMrc.Text := IntToStr(fmAuxIni.CodMrc);

    end;

  finally

    FreeAndNil(fmAuxIni);

  end;

  if Trim(EdPsqCodMrc.Text) <> '' then
    EdPsqCodClp.SetFocus;

end;

procedure TfmManPro2.EdPsqCodCatExit(Sender: TObject);
begin
  inherited;
  if Trim(EdPsqCodCat.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := ' Select NomCat From EstCat Where CodCat = ''' + EdPsqCodCat.Text + '''';
      Open;

      EdPsqNomCat.Text := FieldByName('NomCat').AsString;

    end;

  end
  else
    EdPsqNomCat.Text := '';
end;

procedure TfmManPro2.EdPsqCodTipExit(Sender: TObject);
begin
  inherited;
  if Trim(EdPsqCodTip.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := ' Select NomTip From EstTip Where CodTip = ''' + EdPsqCodTip.Text + '''';
      Open;

      EdPsqNomTip.Text := FieldByName('NomTip').AsString;

    end;

  end
  else
    EdPsqNomTip.Text := '';
end;

procedure TfmManPro2.EdPsqCodMrcExit(Sender: TObject);
begin
  inherited;
  if Trim(EdPsqCodMrc.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := ' Select NomMrc From EstMrc Where CodMrc = ''' + EdPsqCodMrc.Text + '''';
      Open;

      EdPsqNomMrc.Text := FieldByName('NomMrc').AsString;

    end;

  end
  else
    EdPsqNomMrc.Text := '';
end;

procedure TfmManPro2.EdCodTipExit(Sender: TObject);
begin
  inherited;
  if nvPro.Salvar then
  begin

    if EstProCodTip.Value > 0 then
    begin

      with quSQL, SQL do
      begin

        Close;
        Text := ' Select Count(*) as QtdReg From EstTip Where EstTip.CodTip = :CodTip';

        with Params do
        begin

          Params[0].AsInteger := EstProCodTip.Value;

        end;

        Open;

        if FieldbyName('QtdReg').AsInteger = 0 then
          fmsgErro('Tipo Informado não Encontrado.', EdCodTip);

      end;
    end;
  end;
end;

procedure TfmManPro2.EdCodUneExit(Sender: TObject);
begin
  inherited;
  if nvPro.Salvar then
  begin

    if Trim(EstProCodUne.Value) <> '' then
    begin

      with quSQL, SQL do
      begin

        Close;
        Text := ' Select Count(*) as QtdReg From EstUnd Where EstUnd.CodUnd = :CodUnd';

        with Params do
        begin

          Params[0].AsString := EstProCodUne.Value;

        end;

        Open;

        if FieldbyName('QtdReg').AsInteger = 0 then
          fmsgErro('Unidade Informada não Encontrada.', EdCodUne);

      end;
    end;
  end;
end;

procedure TfmManPro2.EdCodUnsExit(Sender: TObject);
begin
  inherited;
  if nvPro.Salvar then
  begin

    if Trim(EstProCodUns.Value) <> '' then
    begin

      with quSQL, SQL do
      begin

        Close;
        Text := ' Select Count(*) as Reg From EstUnd' +
          ' Where CodUnd = :CodUnd';

        with Params do
        begin

          Params[0].AsString := EstProCodUns.Value;

        end;

        Open;

        if FieldbyName('Reg').AsInteger = 0 then
          fmsgErro('Unidade Informada não Encontrada.', EdCodUns);

      end;
    end;
  end;
end;

procedure TfmManPro2.EdCodMrcExit(Sender: TObject);
begin
  inherited;
  if nvPro.Salvar then
  begin

    if EstProCodMrc.Value > 0 then
    begin

      with quSQL, SQL do
      begin

        Close;
        Text := ' Select Count(*) as QtdReg From EstMrc Where EstMrc.CodMrc = :CodMrc';

        with Params do
        begin

          Params[0].AsInteger := EstProCodMrc.Value;

        end;

        Open;

        if FieldbyName('QtdReg').AsInteger = 0 then
          fmsgErro('Marca Informada não Encontrada.', EdCodMrc);

      end;
    end;
  end;
end;

procedure TfmManPro2.EdCodCatExit(Sender: TObject);
begin
  inherited;
  if nvPro.Salvar then
  begin

    if EstProCodCat.Value > 0 then
    begin

      with quSQL, SQL do
      begin

        Close;
        Text := ' Select Count(*) as QtdReg From EstCat Where EstCat.CodCat = :CodCat';

        with Params do
        begin

          Params[0].AsInteger := EstProCodCat.Value;

        end;

        Open;

        if FieldbyName('QtdReg').AsInteger = 0 then
          fmsgErro('Categoria Informada não Encontrada.', EdCodCat);

      end;
    end;
  end;
end;

procedure TfmManPro2.EdMk1IteExit(Sender: TObject);
var
  ValorBase: real;
begin
  inherited;
  if nvIte.Salvar then
  begin

    if EstIteMk1Ite.Value <> AntMk1Ite then
    begin

      AntMk1Ite := EstIteMk1Ite.Value;

      ValorBase := 0;

      if Trim(EstParFlgTab.Value) <> '' then
      begin

        if EstParFlgTab.Value = 'Ultimo Preco' then
          ValorBase := EstIteCstIte.Value;
        if EstParFlgTab.Value = 'Custo Historico' then
          ValorBase := EstIteVchIte.Value;
        if EstParFlgTab.Value = 'Custo Ponderado' then
          ValorBase := EstIteVreIte.Value;
        if EstParFlgTab.Value = 'Custo Referencial' then
          ValorBase := EstIteVcrIte.Value;
        if EstParFlgTab.Value = 'Ultimo Custo(CIF)' then
          ValorBase := EstIteVpfOut.Value;
        if EstParFlgTab.Value = 'Custo Historico (G)' then
          ValorBase := EstIteVcpIte.Value;
        if EstParFlgTab.Value = 'Custo Ponderado (G)' then
          ValorBase := EstIteVprIte.Value;
        if EstParFlgTab.Value = 'Media Ponderada (E)' then
          ValorBase := EstIteVmeIte.Value;
        if EstParFlgTab.Value = 'Custo da Ultima Compra' then
          ValorBase := EstIteVpfIte.Value;

        if ValorBase > 0 then
        begin

          if EstIteMk1Ite.Value > 0 then
            EstIteVb1Ite.Value := fRound(ValorBase + ((ValorBase * EstIteMk1Ite.Value) / 100), 4)
          else
            EstIteVb1Ite.Value := ValorBase;

        end;

        AntVb1Ite := EstIteVb1Ite.Value;

        if Trim(EstParATUMSU.Value) = 'Sim' then
        begin

          if EstIteVcrIte.Value > 0 then
            EstIteMs1Ite.Value := fRound((EstIteVb1Ite.Value / EstIteVcrIte.Value), 2)
          else
            EstIteMs1Ite.Value := 0;

          AntMs1Ite := EstIteMs1Ite.Value;

        end
        else
        begin

          if Trim(EstParATUVCR.Value) = 'Sim' then
          begin

            if EstIteMk1Ite.Value > 0 then
              EstIteVb1Ite.Value := fRound(EstIteVcrIte.Value + ((EstIteVcrIte.Value * EstIteMk1Ite.Value) / 100), 4)
            else
              EstIteVb1Ite.Value := EstIteVcrIte.Value;

          end;
        end;
      end;
    end;
  end;
end;

procedure TfmManPro2.EdMk2IteExit(Sender: TObject);
var
  ValorBase: real;
begin
  inherited;
  if nvIte.Salvar then
  begin

    if EstIteMk2Ite.Value <> AntMk2Ite then
    begin

      AntMk2Ite := EstIteMk2Ite.Value;

      ValorBase := 0;

      if Trim(EstParFlgTab.Value) <> '' then
      begin

        if EstParFlgTab.Value = 'Ultimo Preco' then
          ValorBase := EstIteCstIte.Value;
        if EstParFlgTab.Value = 'Custo Historico' then
          ValorBase := EstIteVchIte.Value;
        if EstParFlgTab.Value = 'Custo Ponderado' then
          ValorBase := EstIteVreIte.Value;
        if EstParFlgTab.Value = 'Custo Referencial' then
          ValorBase := EstIteVcrIte.Value;
        if EstParFlgTab.Value = 'Ultimo Custo(CIF)' then
          ValorBase := EstIteVpfOut.Value;
        if EstParFlgTab.Value = 'Custo Historico (G)' then
          ValorBase := EstIteVcpIte.Value;
        if EstParFlgTab.Value = 'Custo Ponderado (G)' then
          ValorBase := EstIteVprIte.Value;
        if EstParFlgTab.Value = 'Media Ponderada (E)' then
          ValorBase := EstIteVmeIte.Value;
        if EstParFlgTab.Value = 'Custo da Ultima Compra' then
          ValorBase := EstIteVpfIte.Value;

        if ValorBase > 0 then
        begin

          if EstIteMk2Ite.Value > 0 then
            EstIteVb2Ite.Value := fRound(ValorBase + ((ValorBase * EstIteMk2Ite.Value) / 100), 4)
          else
            EstIteVb2Ite.Value := ValorBase;

        end;

        AntVb2Ite := EstIteVb2Ite.Value;

        if Trim(EstParATUMSU.Value) = 'Sim' then
        begin

          if EstIteVcrIte.Value > 0 then
            EstIteMs2Ite.Value := fRound((EstIteVb2Ite.Value / EstIteVcrIte.Value), 2)
          else
            EstIteMs2Ite.Value := 0;

          AntMs2Ite := EstIteMs2Ite.Value;

        end
        else
        begin

          if Trim(EstParATUVCR.Value) = 'Sim' then
          begin

            if EstIteMk2Ite.Value > 0 then
              EstIteVb2Ite.Value := fRound(EstIteVcrIte.Value + ((EstIteVcrIte.Value * EstIteMk2Ite.Value) / 100), 4)
            else
              EstIteVb2Ite.Value := EstIteVcrIte.Value;

          end;
        end;
      end;
    end;
  end;
end;

procedure TfmManPro2.EdMk3IteExit(Sender: TObject);
var
  ValorBase: real;
begin
  inherited;
  if nvIte.Salvar then
  begin

    if EstIteMk3Ite.Value <> AntMk3Ite then
    begin

      AntMk3Ite := EstIteMk3Ite.Value;

      ValorBase := 0;

      if Trim(EstParFlgTab.Value) <> '' then
      begin

        if EstParFlgTab.Value = 'Ultimo Preco' then
          ValorBase := EstIteCstIte.Value;
        if EstParFlgTab.Value = 'Custo Historico' then
          ValorBase := EstIteVchIte.Value;
        if EstParFlgTab.Value = 'Custo Ponderado' then
          ValorBase := EstIteVreIte.Value;
        if EstParFlgTab.Value = 'Custo Referencial' then
          ValorBase := EstIteVcrIte.Value;
        if EstParFlgTab.Value = 'Ultimo Custo(CIF)' then
          ValorBase := EstIteVpfOut.Value;
        if EstParFlgTab.Value = 'Custo Historico (G)' then
          ValorBase := EstIteVcpIte.Value;
        if EstParFlgTab.Value = 'Custo Ponderado (G)' then
          ValorBase := EstIteVprIte.Value;
        if EstParFlgTab.Value = 'Media Ponderada (E)' then
          ValorBase := EstIteVmeIte.Value;
        if EstParFlgTab.Value = 'Custo da Ultima Compra' then
          ValorBase := EstIteVpfIte.Value;

        if ValorBase > 0 then
        begin

          if EstIteMk3Ite.Value > 0 then
            EstIteVb3Ite.Value := fRound(ValorBase + ((ValorBase * EstIteMk3Ite.Value) / 100), 4)
          else
            EstIteVb3Ite.Value := ValorBase;

        end;

        AntVb3Ite := EstIteVb3Ite.Value;

        if Trim(EstParATUMSU.Value) = 'Sim' then
        begin

          if EstIteVcrIte.Value > 0 then
            EstIteMs3Ite.Value := fRound((EstIteVb3Ite.Value / EstIteVcrIte.Value), 2)
          else
            EstIteMs3Ite.Value := 0;

          AntMs3Ite := EstIteMs3Ite.Value;

        end
        else
        begin

          if Trim(EstParATUVCR.Value) = 'Sim' then
          begin

            if EstIteMk3Ite.Value > 0 then
              EstIteVb3Ite.Value := fRound(EstIteVcrIte.Value + ((EstIteVcrIte.Value * EstIteMk3Ite.Value) / 100), 4)
            else
              EstIteVb3Ite.Value := EstIteVcrIte.Value;

          end;
        end;
      end;
    end;
  end;
end;

procedure TfmManPro2.EdMk4IteExit(Sender: TObject);
var
  ValorBase: real;
begin
  inherited;
  if nvIte.Salvar then
  begin

    if EstIteMk4Ite.Value <> AntMk4Ite then
    begin

      AntMk4Ite := EstIteMk4Ite.Value;

      ValorBase := 0;

      if Trim(EstParFlgTab.Value) <> '' then
      begin

        if EstParFlgTab.Value = 'Ultimo Preco' then
          ValorBase := EstIteCstIte.Value;
        if EstParFlgTab.Value = 'Custo Historico' then
          ValorBase := EstIteVchIte.Value;
        if EstParFlgTab.Value = 'Custo Ponderado' then
          ValorBase := EstIteVreIte.Value;
        if EstParFlgTab.Value = 'Custo Referencial' then
          ValorBase := EstIteVcrIte.Value;
        if EstParFlgTab.Value = 'Ultimo Custo(CIF)' then
          ValorBase := EstIteVpfOut.Value;
        if EstParFlgTab.Value = 'Custo Historico (G)' then
          ValorBase := EstIteVcpIte.Value;
        if EstParFlgTab.Value = 'Custo Ponderado (G)' then
          ValorBase := EstIteVprIte.Value;
        if EstParFlgTab.Value = 'Media Ponderada (E)' then
          ValorBase := EstIteVmeIte.Value;
        if EstParFlgTab.Value = 'Custo da Ultima Compra' then
          ValorBase := EstIteVpfIte.Value;

        if ValorBase > 0 then
        begin

          if EstIteMk4Ite.Value > 0 then
            EstIteVb4Ite.Value := fRound(ValorBase + ((ValorBase * EstIteMk4Ite.Value) / 100), 4)
          else
            EstIteVb4Ite.Value := ValorBase;

        end;

        AntVb4Ite := EstIteVb4Ite.Value;

        if Trim(EstParATUMSU.Value) = 'Sim' then
        begin

          if EstIteVcrIte.Value > 0 then
            EstIteMs4Ite.Value := fRound((EstIteVb4Ite.Value / EstIteVcrIte.Value), 2)
          else
            EstIteMs4Ite.Value := 0;

          AntMs4Ite := EstIteMs4Ite.Value;

        end
        else
        begin

          if Trim(EstParATUVCR.Value) = 'Sim' then
          begin

            if EstIteMk4Ite.Value > 0 then
              EstIteVb4Ite.Value := fRound(EstIteVcrIte.Value + ((EstIteVcrIte.Value * EstIteMk4Ite.Value) / 100), 4)
            else
              EstIteVb4Ite.Value := EstIteVcrIte.Value;

          end;
        end;
      end;
    end;
  end;
end;

procedure TfmManPro2.EdMk5IteExit(Sender: TObject);
var
  ValorBase: real;
begin
  inherited;
  if nvIte.Salvar then
  begin

    if EstIteMk5Ite.Value <> AntMk5Ite then
    begin

      AntMk5Ite := EstIteMk5Ite.Value;

      ValorBase := 0;

      if Trim(EstParFlgTab.Value) <> '' then
      begin

        if EstParFlgTab.Value = 'Ultimo Preco' then
          ValorBase := EstIteCstIte.Value;
        if EstParFlgTab.Value = 'Custo Historico' then
          ValorBase := EstIteVchIte.Value;
        if EstParFlgTab.Value = 'Custo Ponderado' then
          ValorBase := EstIteVreIte.Value;
        if EstParFlgTab.Value = 'Custo Referencial' then
          ValorBase := EstIteVcrIte.Value;
        if EstParFlgTab.Value = 'Ultimo Custo(CIF)' then
          ValorBase := EstIteVpfOut.Value;
        if EstParFlgTab.Value = 'Custo Historico (G)' then
          ValorBase := EstIteVcpIte.Value;
        if EstParFlgTab.Value = 'Custo Ponderado (G)' then
          ValorBase := EstIteVprIte.Value;
        if EstParFlgTab.Value = 'Media Ponderada (E)' then
          ValorBase := EstIteVmeIte.Value;
        if EstParFlgTab.Value = 'Custo da Ultima Compra' then
          ValorBase := EstIteVpfIte.Value;

        if ValorBase > 0 then
        begin

          if EstIteMk5Ite.Value > 0 then
            EstIteVb5Ite.Value := fRound(ValorBase + ((ValorBase * EstIteMk5Ite.Value) / 100), 4)
          else
            EstIteVb5Ite.Value := ValorBase;

        end;

        AntVb5Ite := EstIteVb5Ite.Value;

        if Trim(EstParATUMSU.Value) = 'Sim' then
        begin

          if EstIteVcrIte.Value > 0 then
            EstIteMs5Ite.Value := fRound((EstIteVb5Ite.Value / EstIteVcrIte.Value), 2)
          else
            EstIteMs5Ite.Value := 0;

          AntMs5Ite := EstIteMs5Ite.Value;

        end
        else
        begin

          if Trim(EstParATUVCR.Value) = 'Sim' then
          begin

            if EstIteMk5Ite.Value > 0 then
              EstIteVb5Ite.Value := fRound(EstIteVcrIte.Value + ((EstIteVcrIte.Value * EstIteMk5Ite.Value) / 100), 4)
            else
              EstIteVb5Ite.Value := EstIteVcrIte.Value;

          end;
        end;
      end;
    end;
  end;
end;

procedure TfmManPro2.EdVb1IteExit(Sender: TObject);
var
  ValorBase: real;
begin
  inherited;
  if nvIte.Salvar then
  begin

    if EstIteVb1Ite.Value <> AntVb1Ite then
    begin

      AntVb1Ite := EstIteVb1Ite.Value;

      if EstIteVb1Ite.Value > 0 then
      begin

        ValorBase := 0;

        if Trim(EstParFlgTab.Value) <> '' then
        begin

          if EstParFlgTab.Value = 'Ultimo Preco' then
            ValorBase := EstIteCstIte.Value;
          if EstParFlgTab.Value = 'Custo Historico' then
            ValorBase := EstIteVchIte.Value;
          if EstParFlgTab.Value = 'Custo Ponderado' then
            ValorBase := EstIteVreIte.Value;
          if EstParFlgTab.Value = 'Custo Referencial' then
            ValorBase := EstIteVcrIte.Value;
          if EstParFlgTab.Value = 'Ultimo Custo(CIF)' then
            ValorBase := EstIteVpfOut.Value;
          if EstParFlgTab.Value = 'Custo Historico (G)' then
            ValorBase := EstIteVcpIte.Value;
          if EstParFlgTab.Value = 'Custo Ponderado (G)' then
            ValorBase := EstIteVprIte.Value;
          if EstParFlgTab.Value = 'Media Ponderada (E)' then
            ValorBase := EstIteVmeIte.Value;
          if EstParFlgTab.Value = 'Custo da Ultima Compra' then
            ValorBase := EstIteVpfIte.Value;

          if ValorBase > 0 then
            EstIteMk1Ite.Value := fRound(((EstIteVb1Ite.Value - ValorBase) * 100) / ValorBase, 2)
          else
            EstIteMk1Ite.Value := 0;

        end
        else
          EstIteMk1Ite.Value := 0;

      end
      else
        EstIteMk1Ite.Value := 0;

      AntMk1Ite := EstIteMk1Ite.Value;

    end;
  end;
end;

procedure TfmManPro2.EdVb2IteExit(Sender: TObject);
var
  ValorBase: real;
begin
  inherited;
  if nvIte.Salvar then
  begin

    if EstIteVb2Ite.Value <> AntVb2Ite then
    begin

      AntVb2Ite := EstIteVb2Ite.Value;

      if EstIteVb2Ite.Value > 0 then
      begin

        ValorBase := 0;

        if Trim(EstParFlgTab.Value) <> '' then
        begin

          if EstParFlgTab.Value = 'Ultimo Preco' then
            ValorBase := EstIteCstIte.Value;
          if EstParFlgTab.Value = 'Custo Historico' then
            ValorBase := EstIteVchIte.Value;
          if EstParFlgTab.Value = 'Custo Ponderado' then
            ValorBase := EstIteVreIte.Value;
          if EstParFlgTab.Value = 'Custo Referencial' then
            ValorBase := EstIteVcrIte.Value;
          if EstParFlgTab.Value = 'Ultimo Custo(CIF)' then
            ValorBase := EstIteVpfOut.Value;
          if EstParFlgTab.Value = 'Custo Historico (G)' then
            ValorBase := EstIteVcpIte.Value;
          if EstParFlgTab.Value = 'Custo Ponderado (G)' then
            ValorBase := EstIteVprIte.Value;
          if EstParFlgTab.Value = 'Media Ponderada (E)' then
            ValorBase := EstIteVmeIte.Value;
          if EstParFlgTab.Value = 'Custo da Ultima Compra' then
            ValorBase := EstIteVpfIte.Value;

          if ValorBase > 0 then
            EstIteMk2Ite.Value := fRound(((EstIteVb2Ite.Value - ValorBase) * 100) / ValorBase, 2)
          else
            EstIteMk2Ite.Value := 0;

        end
        else
          EstIteMk2Ite.Value := 0;

      end
      else
        EstIteMk2Ite.Value := 0;

      AntMk2Ite := EstIteMk2Ite.Value;

    end;
  end;
end;

procedure TfmManPro2.EdVb3IteExit(Sender: TObject);
var
  ValorBase: real;
begin
  inherited;
  if nvIte.Salvar then
  begin

    if EstIteVb3Ite.Value <> AntVb3Ite then
    begin

      AntVb3Ite := EstIteVb3Ite.Value;

      if EstIteVb3Ite.Value > 0 then
      begin

        ValorBase := 0;

        if Trim(EstParFlgTab.Value) <> '' then
        begin

          if EstParFlgTab.Value = 'Ultimo Preco' then
            ValorBase := EstIteCstIte.Value;
          if EstParFlgTab.Value = 'Custo Historico' then
            ValorBase := EstIteVchIte.Value;
          if EstParFlgTab.Value = 'Custo Ponderado' then
            ValorBase := EstIteVreIte.Value;
          if EstParFlgTab.Value = 'Custo Referencial' then
            ValorBase := EstIteVcrIte.Value;
          if EstParFlgTab.Value = 'Ultimo Custo(CIF)' then
            ValorBase := EstIteVpfOut.Value;
          if EstParFlgTab.Value = 'Custo Historico (G)' then
            ValorBase := EstIteVcpIte.Value;
          if EstParFlgTab.Value = 'Custo Ponderado (G)' then
            ValorBase := EstIteVprIte.Value;
          if EstParFlgTab.Value = 'Media Ponderada (E)' then
            ValorBase := EstIteVmeIte.Value;
          if EstParFlgTab.Value = 'Custo da Ultima Compra' then
            ValorBase := EstIteVpfIte.Value;

          if ValorBase > 0 then
            EstIteMk3Ite.Value := fRound(((EstIteVb3Ite.Value - ValorBase) * 100) / ValorBase, 2)
          else
            EstIteMk3Ite.Value := 0;

        end
        else
          EstIteMk3Ite.Value := 0;

      end
      else
        EstIteMk3Ite.Value := 0;

      AntMk3Ite := EstIteMk3Ite.Value;

    end;
  end;
end;

procedure TfmManPro2.EdVb4IteExit(Sender: TObject);
var
  ValorBase: real;
begin
  inherited;
  if nvIte.Salvar then
  begin

    if EstIteVb4Ite.Value <> AntVb4Ite then
    begin

      AntVb4Ite := EstIteVb4Ite.Value;

      if EstIteVb4Ite.Value > 0 then
      begin

        ValorBase := 0;

        if Trim(EstParFlgTab.Value) <> '' then
        begin

          if EstParFlgTab.Value = 'Ultimo Preco' then
            ValorBase := EstIteCstIte.Value;
          if EstParFlgTab.Value = 'Custo Historico' then
            ValorBase := EstIteVchIte.Value;
          if EstParFlgTab.Value = 'Custo Ponderado' then
            ValorBase := EstIteVreIte.Value;
          if EstParFlgTab.Value = 'Custo Referencial' then
            ValorBase := EstIteVcrIte.Value;
          if EstParFlgTab.Value = 'Ultimo Custo(CIF)' then
            ValorBase := EstIteVpfOut.Value;
          if EstParFlgTab.Value = 'Custo Historico (G)' then
            ValorBase := EstIteVcpIte.Value;
          if EstParFlgTab.Value = 'Custo Ponderado (G)' then
            ValorBase := EstIteVprIte.Value;
          if EstParFlgTab.Value = 'Media Ponderada (E)' then
            ValorBase := EstIteVmeIte.Value;
          if EstParFlgTab.Value = 'Custo da Ultima Compra' then
            ValorBase := EstIteVpfIte.Value;

          if ValorBase > 0 then
            EstIteMk4Ite.Value := fRound(((EstIteVb4Ite.Value - ValorBase) * 100) / ValorBase, 2)
          else
            EstIteMk4Ite.Value := 0;

        end
        else
          EstIteMk4Ite.Value := 0;

      end
      else
        EstIteMk4Ite.Value := 0;

      AntMk4Ite := EstIteMk4Ite.Value;

    end;
  end;
end;

procedure TfmManPro2.EdVb5IteExit(Sender: TObject);
var
  ValorBase: real;
begin
  inherited;
  if nvIte.Salvar then
  begin

    if EstIteVb5Ite.Value <> AntVb5Ite then
    begin

      AntVb5Ite := EstIteVb5Ite.Value;

      if EstIteVb5Ite.Value > 0 then
      begin

        ValorBase := 0;

        if Trim(EstParFlgTab.Value) <> '' then
        begin

          if EstParFlgTab.Value = 'Ultimo Preco' then
            ValorBase := EstIteCstIte.Value;
          if EstParFlgTab.Value = 'Custo Historico' then
            ValorBase := EstIteVchIte.Value;
          if EstParFlgTab.Value = 'Custo Ponderado' then
            ValorBase := EstIteVreIte.Value;
          if EstParFlgTab.Value = 'Custo Referencial' then
            ValorBase := EstIteVcrIte.Value;
          if EstParFlgTab.Value = 'Ultimo Custo(CIF)' then
            ValorBase := EstIteVpfOut.Value;
          if EstParFlgTab.Value = 'Custo Historico (G)' then
            ValorBase := EstIteVcpIte.Value;
          if EstParFlgTab.Value = 'Custo Ponderado (G)' then
            ValorBase := EstIteVprIte.Value;
          if EstParFlgTab.Value = 'Media Ponderada (E)' then
            ValorBase := EstIteVmeIte.Value;
          if EstParFlgTab.Value = 'Custo da Ultima Compra' then
            ValorBase := EstIteVpfIte.Value;

          if ValorBase > 0 then
            EstIteMk5Ite.Value := fRound(((EstIteVb5Ite.Value - ValorBase) * 100) / ValorBase, 2)
          else
            EstIteMk5Ite.Value := 0;

        end
        else
          EstIteMk5Ite.Value := 0;

      end
      else
        EstIteMk5Ite.Value := 0;

      AntMk5Ite := EstIteMk5Ite.Value;

    end;
  end;
end;

procedure TfmManPro2.EdCodCm5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key = 13) or (key = 40) then
  begin

    if nvIte.Salvar then
    begin

      if EstIteCodEmp.Value > 0 then
        nvIte.SBSalvaClick(Sender);

    end;
  end;
end;

procedure TfmManPro2.nvProAtualizar(Sender: TObject);
begin
  inherited;
  if Trim(EstParFlgTab.Value) <> '' then
  begin

    if EstParFlgTab.Value = 'Ultimo Preco' then
      Label34.Font.Color := clRed
    else
      Label34.Font.Color := clBlack;
    if EstParFlgTab.Value = 'Custo Historico' then
      Label35.Font.Color := clRed
    else
      Label35.Font.Color := clBlack;
    if EstParFlgTab.Value = 'Custo Ponderado' then
      Label14.Font.Color := clRed
    else
      Label14.Font.Color := clBlack;
    if EstParFlgTab.Value = 'Custo Referencial' then
      Label36.Font.Color := clRed
    else
      Label36.Font.Color := clBlack;
    if EstParFlgTab.Value = 'Ultimo Custo(CIF)' then
      Label129.Font.Color := clRed
    else
      Label129.Font.Color := clBlack;
    if EstParFlgTab.Value = 'Custo Historico (G)' then
      Label37.Font.Color := clRed
    else
      Label37.Font.Color := clBlack;
    if EstParFlgTab.Value = 'Custo Ponderado (G)' then
      Label30.Font.Color := clRed
    else
      Label30.Font.Color := clBlack;
    if EstParFlgTab.Value = 'Media Ponderada (E)' then
      Label100.Font.Color := clRed
    else
      Label100.Font.Color := clBlack;
    if EstParFlgTab.Value = 'Custo da Ultima Compra' then
      Label75.Font.Color := clRed
    else
      Label75.Font.Color := clBlack;

  end;

  if (EstParFlgAnt.Value <> 'Sim') and (GUsu_Id <> 999) then
  begin

    Label101.Visible := False;

    EdCodAnt.Visible := False;

  end;

  if EstParTamCor.Value = 'Sim' then
  begin

    if EstParLanCba.Value = 'Nao' then
    begin

      if EstParTipEan.Value = 'Cores' then

    end;
  end;
end;

procedure TfmManPro2.EdPsqCodClpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmPsqClp := TfmPsqClp.Create(Self);

      fmPsqClp.ShowModal;

      if Trim(fmPsqClp.CodClp) <> '' then
      begin

        EdPsqCodClp.Text := fmPsqClp.CodClp;
        EdPsqNomClp.Text := fmPsqClp.NomClp;

      end;

    finally

      FreeAndNil(fmPsqClp);

    end;

    if Trim(EdPsqCodClp.Text) <> '' then
      EdPsqCodGru.SetFocus;

  end;
end;

procedure TfmManPro2.EdPsqCodGruKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      fmAuxIni.CodClp := EdPsqCodClp.Text;

      if Trim(EdPsqCodCat.Text) <> '' then
        fmAuxIni.CodCat := StrToInt(EdPsqCodCat.Text);
      if Trim(EdPsqCodTip.Text) <> '' then
        fmAuxIni.CodTip := StrToInt(EdPsqCodTip.Text);
      if Trim(EdPsqCodMrc.Text) <> '' then
        fmAuxIni.CodMrc := StrToInt(EdPsqCodMrc.Text);

      fmAuxIni.TipoPesq := 'G';

      fmAuxIni.ShowModal;

      if Trim(fmAuxIni.CodGru) <> '' then
      begin

        EdPsqCodGru.Text := fmAuxIni.CodGru;
        EdPsqNomGru.Text := fmAuxIni.NomGru;

      end;

    finally

      FreeAndNil(fmAuxIni);

    end;

    if Trim(EdPsqCodGru.Text) <> '' then
      EdPsqCodSub.SetFocus;

  end;

  if key = 113 then
  begin {F2 - Busca Inteligente}

    try

      fmAuxPsq := TfmAuxPsq.Create(Self);

      fmAuxPsq.CodClp := EdPsqCodClp.Text;

      if Trim(EdPsqCodCat.Text) <> '' then
        fmAuxPsq.CodCat := StrToInt(EdPsqCodCat.Text);
      if Trim(EdPsqCodTip.Text) <> '' then
        fmAuxPsq.CodTip := StrToInt(EdPsqCodTip.Text);
      if Trim(EdPsqCodMrc.Text) <> '' then
        fmAuxPsq.CodMrc := StrToInt(EdPsqCodMrc.Text);

      fmAuxPsq.TipoPesq := 'G';

      fmAuxPsq.ShowModal;

      if Trim(fmAuxPsq.CodGru) <> '' then
      begin

        EdPsqCodGru.Text := fmAuxPsq.CodGru;
        EdPsqNomGru.Text := fmAuxPsq.NomGru;

      end;

    finally

      FreeAndNil(fmAuxPsq);

    end;

    if Trim(EdPsqCodGru.Text) <> '' then
      EdPsqCodSub.SetFocus;

  end;
end;

procedure TfmManPro2.EdPsqCodSubKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      fmAuxIni.CodClp := EdPsqCodClp.Text;
      fmAuxIni.CodGru := EdPsqCodGru.Text;

      if Trim(EdPsqCodCat.Text) <> '' then
        fmAuxIni.CodCat := StrToInt(EdPsqCodCat.Text);
      if Trim(EdPsqCodTip.Text) <> '' then
        fmAuxIni.CodTip := StrToInt(EdPsqCodTip.Text);
      if Trim(EdPsqCodMrc.Text) <> '' then
        fmAuxIni.CodMrc := StrToInt(EdPsqCodMrc.Text);

      fmAuxIni.TipoPesq := 'S';

      fmAuxIni.ShowModal;

      if Trim(fmAuxIni.CodGru) <> '' then
      begin

        EdPsqCodGru.Text := fmAuxIni.CodGru;
        EdPsqNomGru.Text := fmAuxIni.NomGru;
        EdPsqCodSub.Text := fmAuxIni.CodSub;
        EdPsqNomSub.Text := fmAuxIni.NomSub;

      end;

    finally

      FreeAndNil(fmAuxIni);

    end;

    if Trim(EdPsqCodSub.Text) <> '' then
      EdPsqCodPro.SetFocus;

  end;

  if key = 113 then
  begin {F2 - Busca Inteligente}

    try

      fmAuxPsq := TfmAuxPsq.Create(Self);

      fmAuxPsq.CodClp := EdPsqCodClp.Text;
      fmAuxPsq.CodGru := EdPsqCodGru.Text;

      if Trim(EdPsqCodCat.Text) <> '' then
        fmAuxPsq.CodCat := StrToInt(EdPsqCodCat.Text);
      if Trim(EdPsqCodTip.Text) <> '' then
        fmAuxPsq.CodTip := StrToInt(EdPsqCodTip.Text);
      if Trim(EdPsqCodMrc.Text) <> '' then
        fmAuxPsq.CodMrc := StrToInt(EdPsqCodMrc.Text);

      fmAuxPsq.TipoPesq := 'S';

      fmAuxPsq.ShowModal;

      if Trim(fmAuxPsq.CodGru) <> '' then
      begin

        EdPsqCodGru.Text := fmAuxPsq.CodGru;
        EdPsqNomGru.Text := fmAuxPsq.NomGru;
        EdPsqCodSub.Text := fmAuxPsq.CodSub;
        EdPsqNomSub.Text := fmAuxPsq.NomSub;

      end;

    finally

      FreeAndNil(fmAuxPsq);

    end;

    if Trim(EdPsqCodSub.Text) <> '' then
      EdPsqCodPro.SetFocus;

  end;
end;

procedure TfmManPro2.EdPsqCodCatKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      fmAuxIni.TipoPesq := 'Categoria';

      fmAuxIni.ShowModal;

      if fmAuxIni.CodCat > 0 then
      begin

        EdPsqNomCat.Text := fmAuxIni.NomCat;
        EdPsqCodCat.Text := IntToStr(fmAuxIni.CodCat);

      end;

    finally

      FreeAndNil(fmAuxIni);

    end;

    if Trim(EdPsqCodCat.Text) <> '' then
      EdPsqCodTip.SetFocus;

  end;
end;

procedure TfmManPro2.EdPsqCodTipKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      if Trim(EdPsqCodCat.Text) <> '' then
        fmAuxIni.CodCat := StrToInt(EdPsqCodCat.Text);

      fmAuxIni.TipoPesq := 'Tipo';

      fmAuxIni.ShowModal;

      if fmAuxIni.CodTip > 0 then
      begin

        EdPsqNomTip.Text := fmAuxIni.NomTip;
        EdPsqCodTip.Text := IntToStr(fmAuxIni.CodTip);

      end;

    finally

      FreeAndNil(fmAuxIni);

    end;

    if Trim(EdPsqCodTip.Text) <> '' then
      EdPsqCodMrc.SetFocus;

  end;
end;

procedure TfmManPro2.EdPsqCodMrcKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      if Trim(EdPsqCodCat.Text) <> '' then
        fmAuxIni.CodCat := StrToInt(EdPsqCodCat.Text);
      if Trim(EdPsqCodTip.Text) <> '' then
        fmAuxIni.CodTip := StrToInt(EdPsqCodTip.Text);

      fmAuxIni.TipoPesq := 'Marca';

      fmAuxIni.ShowModal;

      if fmAuxIni.CodMrc > 0 then
      begin

        EdPsqNomMrc.Text := fmAuxIni.NomMrc;
        EdPsqCodMrc.Text := IntToStr(fmAuxIni.CodMrc);

      end;

    finally

      FreeAndNil(fmAuxIni);

    end;

    if Trim(EdPsqCodMrc.Text) <> '' then
      EdPsqCodClp.SetFocus;

  end;
end;

procedure TfmManPro2.EdCodTipKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      fmAuxIni.TipoPesq := 'Tipo2';

      fmAuxIni.ShowModal;

      if fmAuxIni.CodTip > 0 then
      begin

        if not nvPro.Salvar then
        begin

          if Trim(EstProCodClp.Value) <> '' then
            EstPro.Edit
          else
            EstPro.Insert;

        end;

        EstProCodTip.Value := fmAuxIni.CodTip;

      end;

    finally

      FreeAndNil(fmAuxIni);

    end;

    {if EstProCodTip.Value > 0 then
      EdIdePro.SetFocus
    else
      EdCodTip.SetFocus;}

  end;
end;

procedure TfmManPro2.EdCodMrcKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      fmAuxIni.TipoPesq := 'Marca2';

      fmAuxIni.ShowModal;

      if fmAuxIni.CodMrc > 0 then
      begin

        if not nvPro.Salvar then
        begin

          if Trim(EstProCodClp.Value) <> '' then
            EstPro.Edit
          else
            EstPro.Insert;

        end;

        EstProCodMrc.Value := fmAuxIni.CodMrc;

      end;

    finally

      FreeAndNil(fmAuxIni);

    end;

    {if EstProCodMrc.Value > 0 then
      EdCodCat.SetFocus
    else
      EdCodMrc.SetFocus;}

  end;
end;

procedure TfmManPro2.EdCodCatKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      fmAuxIni.TipoPesq := 'Categoria';

      fmAuxIni.ShowModal;

      if fmAuxIni.CodCat > 0 then
      begin

        if not nvPro.Salvar then
        begin

          if Trim(EstProCodClp.Value) <> '' then
            EstPro.Edit
          else
            EstPro.Insert;

        end;

        EstProCodCat.Value := fmAuxIni.CodCat;

      end;

    finally

      FreeAndNil(fmAuxIni);

    end;

    {if EstProCodCat.Value > 0 then
      EdIcmSai.SetFocus
    else
      EdCodCat.SetFocus;}

  end;
end;

procedure TfmManPro2.EdCodGruKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      fmAuxIni.TipoPesq := 'Grupo';

      fmAuxIni.ShowModal;

      if Trim(fmAuxIni.CodGru) <> '' then
        EstProCodGru.Value := fmAuxIni.CodGru;

    finally

      FreeAndNil(fmAuxIni);

    end;

    if Trim(EstProCodGru.Value) <> '' then
      EdCodSub.SetFocus
    else
      EdCodGru.SetFocus;

  end;

  if key = 113 then
  begin {F2 - Busca Inteligente}

    try

      fmAuxPsq := TfmAuxPsq.Create(Self);

      fmAuxPsq.TipoPesq := 'Grupo';

      fmAuxPsq.ShowModal;

      if Trim(fmAuxPsq.CodGru) <> '' then
        EstProCodGru.Value := fmAuxPsq.CodGru;

    finally

      FreeAndNil(fmAuxPsq);

    end;

    if Trim(EstProCodGru.Value) <> '' then
      EdCodSub.SetFocus
    else
      EdCodGru.SetFocus;

  end;
end;

procedure TfmManPro2.EdCodSubKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      fmAuxIni.TipoPesq := 'SubGrupo';

      fmAuxIni.CodGru := EstProCodGru.Value;

      fmAuxIni.ShowModal;

      if Trim(fmAuxIni.CodGru) <> '' then
      begin

        EstProCodGru.Value := fmAuxIni.CodGru;
        EstProCodSub.Value := fmAuxIni.CodSub;

      end;

    finally

      FreeAndNil(fmAuxIni);

    end;

    if Trim(EstProCodSub.Value) <> '' then
      EdCodPro.SetFocus
    else
      EdCodSub.SetFocus;

  end;

  if key = 113 then
  begin {F2 - Busca Inteligente}

    try

      fmAuxPsq := TfmAuxPsq.Create(Self);

      fmAuxPsq.TipoPesq := 'SubGrupo';

      fmAuxPsq.CodGru := EstProCodGru.Value;

      fmAuxPsq.ShowModal;

      if Trim(fmAuxPsq.CodGru) <> '' then
      begin

        EstProCodGru.Value := fmAuxPsq.CodGru;
        EstProCodSub.Value := fmAuxPsq.CodSub;

      end;

    finally

      FreeAndNil(fmAuxPsq);

    end;

    if Trim(EstProCodSub.Value) <> '' then
      EdCodPro.SetFocus
    else
      EdCodSub.SetFocus;

  end;
end;

procedure TfmManPro2.EdCodClpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      fmAuxIni.TipoPesq := 'Classificacao';

      fmAuxIni.ShowModal;

      if Trim(fmAuxIni.CodClp) <> '' then
        EstProCodClp.Value := fmAuxIni.CodClp;

    finally

      FreeAndNil(fmAuxIni);

    end;

    if Trim(EstProCodClp.Value) <> '' then
      EdCodGru.SetFocus
    else
      EdCodClp.SetFocus;

  end;
end;

procedure TfmManPro2.EdCodUneKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      fmAuxIni.TipoPesq := 'Unidade';

      fmAuxIni.ShowModal;

      if Trim(fmAuxIni.CodUnd) <> '' then
      begin

        if not nvPro.Salvar then
        begin

          if Trim(EstProCodClp.Value) <> '' then
            EstPro.Edit
          else
            EstPro.Insert;

        end;

        EstProCodUne.Value := fmAuxIni.CodUnd;

      end;

    finally

      FreeAndNil(fmAuxIni);

    end;

    {if Trim(EstProCodUne.Value) <> '' then
      EdQtePro.SetFocus
    else
      EdCodUne.SetFocus;}

  end;
end;

procedure TfmManPro2.EdCodUnsKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      fmAuxIni.TipoPesq := 'Unidade';

      fmAuxIni.ShowModal;

      if Trim(fmAuxIni.CodUnd) <> '' then
      begin

        if not nvPro.Salvar then
        begin

          if Trim(EstProCodClp.Value) <> '' then
            EstPro.Edit
          else
            EstPro.Insert;

        end;

        EstProCodUns.Value := fmAuxIni.CodUnd;

      end;

    finally

      FreeAndNil(fmAuxIni);

    end;

    {if Trim(EstProCodUns.Value) <> '' then
      EdQtsPro.SetFocus
    else
      EdCodUns.SetFocus;}

  end;
end;

procedure TfmManPro2.EdIcmSaiKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      fmAuxIni.TipoPesq := 'ICMS';

      fmAuxIni.TipIcm := 'Saida';

      fmAuxIni.ShowModal;

      if Trim(fmAuxIni.CodIcm) <> '' then
      begin

        if not nvPro.Salvar then
        begin

          if Trim(EstProCodClp.Value) <> '' then
            EstPro.Edit
          else
            EstPro.Insert;

        end;

        EstProIcmSai.Value := fmAuxIni.CodIcm;
        EstProIcmTsd.Value := fmAuxIni.TipIcm;
        EstProSaiIcm.Value := fmAuxIni.PerIcm;
        EstProID_ESTICM_SAIDA.AsInteger := fmAuxIni.id_EstIcm;

      end;

    finally

      FreeAndNil(fmAuxIni);

    end;

    {if Trim(EstProIcmSai.Value) <> '' then
      EdIcmEnt.SetFocus;}

  end;
end;

procedure TfmManPro2.EdIcmEntKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      fmAuxIni.TipoPesq := 'ICMS';

      fmAuxIni.TipIcm := 'Entrada';

      fmAuxIni.ShowModal;

      if Trim(fmAuxIni.CodIcm) <> '' then
      begin

        if not nvPro.Salvar then
        begin

          if Trim(EstProCodClp.Value) <> '' then
            EstPro.Edit
          else
            EstPro.Insert;

        end;

        EstProIcmEnt.Value := fmAuxIni.CodIcm;
        EstProIcmTen.Value := fmAuxIni.TipIcm;
        EstProEntIcm.Value := fmAuxIni.PerIcm;
        EstProID_ESTICM_ENTRADA.AsInteger := fmAuxIni.id_EstIcm;

      end;

    finally

      FreeAndNil(fmAuxIni);

    end;

    {if Trim(EstProIcmEnt.Value) <> '' then
      edCodSts.SetFocus;}

  end;
end;

procedure TfmManPro2.EdIpiSaiKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      fmAuxIni.TipoPesq := 'IPI';

      fmAuxIni.TipIpi := 'Saida';

      fmAuxIni.ShowModal;

      if Trim(fmAuxIni.CodIpi) <> '' then
      begin

        {if not nvPro.Salvar then
        begin

          if Trim(EstProCodClp.Value) <> '' then
            EstPro.Edit
          else
            EstPro.Insert;

        end; }

        if not (estpro.State in [dsEdit, dsInsert]) then
          estpro.Edit;

        EstProIpiSai.AsString := fmAuxIni.CodIpi;
        EstProIpiTsd.AsString := fmAuxIni.TipIpi;
        EstProSaiIpi.Asfloat := fmAuxIni.PerIpi;

      end;

    finally

      FreeAndNil(fmAuxIni);

    end;

    {if Trim(EstProIpiSai.Value) <> '' then
      EdIpiEnt.SetFocus;}

  end;
end;

procedure TfmManPro2.EdIpiEntKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      fmAuxIni.TipoPesq := 'IPI';

      fmAuxIni.TipIpi := 'Entrada';

      fmAuxIni.ShowModal;

      if Trim(fmAuxIni.CodIpi) <> '' then
      begin

        if not nvPro.Salvar then
        begin

          if Trim(EstProCodClp.Value) <> '' then
            EstPro.Edit
          else
            EstPro.Insert;

        end;

        EstProIpiEnt.Value := fmAuxIni.CodIpi;
        EstProIpiTen.Value := fmAuxIni.TipIpi;
        EstProEntIpi.Value := fmAuxIni.PerIpi;

      end;

    finally

      FreeAndNil(fmAuxIni);

    end;

    {if Trim(EstProIpiEnt.Value) <> '' then
      EdIcmSai.SetFocus;}

  end;
end;

procedure TfmManPro2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManPro2.ClassificaoFiscal1Click(Sender: TObject);
begin
  inherited;

  try

    fmConClf := TfmConClf.Create(Self);

    fmConClf.ShowModal;

  finally

    FreeAndNil(fmConClf);

  end;
end;

procedure TfmManPro2.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManPro2 := nil;
end;

procedure TfmManPro2.BtnCodigosClick(Sender: TObject);
begin
  inherited;
  if EstPro.State = dsBrowse then
  begin

    sFiltro := ' and EstPro.CodClp = ''' + EstProCodClp.Value + '''' +
      '   and EstPro.CodGru = ''' + EstProCodGru.Value + '''' +
      '   and EstPro.CodSub = ''' + EstProCodSub.Value + '''' +
      '   and EstPro.CodPro = ''' + EstProCodPro.Value + '''';

    with EstPro, SQL do
    begin

      Close;
      Text := sBase + sFiltro;
      Open;

    end;

    try

      fmManBar := TfmManBar.Create(Self);

      fmManBar.EstBar.Close;
      fmManBar.EstBar.Params[0].AsString := EstProCodClp.Value;
      fmManBar.EstBar.Params[1].AsString := EstProCodGru.Value;
      fmManBar.EstBar.Params[2].AsString := EstProCodSub.Value;
      fmManBar.EstBar.Params[3].AsString := EstProCodPro.Value;
      fmManBar.EstBar.Open;

      fmManBar.formulario := fmManPro2;

      fmManBar.ShowModal;

    finally

      FreeAndNil(fmManBar);

    end;

  end
  else
    fmsgErro('Existem Informações não Confirmadas para o Item.', nil);

end;

procedure TfmManPro2.EstProBeforeDelete(DataSet: TDataSet);
begin
  inherited;

  if fmmanpri.Emerion_01 then
    with fmManGDB.dbEmerion1 do
    begin

      try
        Connected := True;
      except
        on E: Exception do
        begin
          fMsg('Sem comunicação com a Unidade Aurora. Alteração não foi envidada para esta Unidade', 'E');
        end;
      end;

    end;

  if fmmanpri.Emerion_02 then
    with fmManGDB.dbEmerion2 do
    begin

      try
        Connected := True;
      except
        on E: Exception do
        begin
          fMsg('Sem comunicação com a Unidade Gusmões. Alteração não foi envidada para esta Unidade', 'E');
        end;
      end;

    end;

  sleep(1000);

  try

    if fmManGDB.dbEmerion1.Connected then
    begin

      with quSQL2, SQL do
      begin

        Close;
        Text := ' Delete From EstPro Where EstPro.CodClp = ''' + EstProCodClp.Value + '''' +
          '                      and EstPro.CodGru = ''' + EstProCodGru.Value + '''' +
          '                      and EstPro.CodSub = ''' + EstProCodSub.Value + '''' +
          '                      and EstPro.CodPro = ''' + EstProCodPro.Value + '''';
        ExecSQL;

      end;
    end;

    if fmManGDB.dbEmerion2.Connected then
    begin

      with quSQL3, SQL do
      begin

        Close;
        Text := ' Delete From EstPro Where EstPro.CodClp = ''' + EstProCodClp.Value + '''' +
          '                      and EstPro.CodGru = ''' + EstProCodGru.Value + '''' +
          '                      and EstPro.CodSub = ''' + EstProCodSub.Value + '''' +
          '                      and EstPro.CodPro = ''' + EstProCodPro.Value + '''';
        ExecSQL;

      end;
    end;

    fmManGDB.dbEmerion1.Connected := False;
    fmManGDB.dbEmerion2.Connected := False;

  except

    fmManGDB.dbEmerion1.Connected := False;
    fmManGDB.dbEmerion2.Connected := False;

  end;
end;

procedure TfmManPro2.nvIteSalva(Sender: TObject);
begin
  inherited;

  if Trim(GParamStr) = '' then
  begin

    if fmmanpri.Emerion_01 then
      with fmManGDB.dbEmerion1 do
      begin

        try
          Connected := True;
        except
          on E: Exception do
          begin
            fMsg('Sem comunicação com a Unidade Aurora. Alteração não foi envidada para esta Unidade', 'E');
          end;
        end;

      end;

    if fmmanpri.Emerion_02 then
      with fmManGDB.dbEmerion2 do
      begin
        try
          Connected := True;
        except
          on E: Exception do
          begin
            fMsg('Sem comunicação com a Unidade Gusmões. Alteração não foi envidada para esta Unidade', 'E');
          end;
        end;

      end;

    if fmManGDB.dbEmerion1.Connected then
      with quSQL2, SQL do
      begin
        Close;
        Text := ' Select EstIte.Vb1Ite,' +
          '        EstIte.Vb2Ite,' +
          '        EstIte.Vb3Ite,' +
          '        EstIte.Vb4Ite,' +
          '        EstIte.Vb5Ite,' +
          '        EstIte.Ds1Ite,' +
          '        EstIte.Ds2Ite,' +
          '        EstIte.Ds3Ite,' +
          '        EstIte.Ds4Ite,' +
          '        EstIte.Ds5Ite From EstIte' +
          ' Where EstIte.CodEmp = ' + QuotedStr('5') +
          '   and EstIte.CodClp = ' + QuotedStr(EstProCodClp.AsString) +
          '   and EstIte.CodGru = ' + QuotedStr(EstProCodGru.AsString) +
          '   and EstIte.CodSub = ' + QuotedStr(EstProCodSub.AsString) +
          '   and EstIte.CodPro = ' + QuotedStr(EstProCodPro.AsString);
        Open;

      end;

    if fmManGDB.dbEmerion1.Connected then
      if (quSQL2.FieldbyName('Vb1Ite').AsFloat <> EstIteVb1Ite.Value) or
        (quSQL2.FieldbyName('Vb2Ite').AsFloat <> EstIteVb2Ite.Value) or
        (quSQL2.FieldbyName('Vb3Ite').AsFloat <> EstIteVb3Ite.Value) or
        (quSQL2.FieldbyName('Vb4Ite').AsFloat <> EstIteVb4Ite.Value) or
        (quSQL2.FieldbyName('Vb5Ite').AsFloat <> EstIteVb5Ite.Value) or
        (quSQL2.FieldbyName('Ds1Ite').AsFloat <> EstIteDs1Ite.Value) or
        (quSQL2.FieldbyName('Ds2Ite').AsFloat <> EstIteDs2Ite.Value) or
        (quSQL2.FieldbyName('Ds3Ite').AsFloat <> EstIteDs3Ite.Value) or
        (quSQL2.FieldbyName('Ds4Ite').AsFloat <> EstIteDs4Ite.Value) or
        (quSQL2.FieldbyName('Ds5Ite').AsFloat <> EstIteDs5Ite.Value) then
      begin

        with quSQL2, SQL do
        begin

          Close;
          Text := ' Update EstIte Set Vb1Ite = :Vb1Ite,' +
            '                   Vb2Ite = :Vb2Ite,' +
            '                   Vb3Ite = :Vb3Ite,' +
            '                   Vb4Ite = :Vb4Ite,' +
            '                   Vb5Ite = :Vb5Ite,' +
            '                   Ds1Ite = :Ds1Ite,' +
            '                   Ds2Ite = :Ds2Ite,' +
            '                   Ds3Ite = :Ds3Ite,' +
            '                   Ds4Ite = :Ds4Ite,' +
            '                   Ds5Ite = :Ds5Ite' +
            ' Where EstIte.CodEmp = :CodEmp' +
            '   and EstIte.CodClp = :CodClp' +
            '   and EstIte.CodGru = :CodGru' +
            '   and EstIte.CodSub = :CodSub' +
            '   and EstIte.CodPro = :CodPro';

          with Params do
          begin

            Params[00].AsFloat := EstIteVb1Ite.Value;
            Params[01].AsFloat := EstIteVb2Ite.Value;
            Params[02].AsFloat := EstIteVb3Ite.Value;
            Params[03].AsFloat := EstIteVb4Ite.Value;
            Params[04].AsFloat := EstIteVb5Ite.Value;
            Params[05].AsFloat := EstIteDs1Ite.Value;
            Params[06].AsFloat := EstIteDs2Ite.Value;
            Params[07].AsFloat := EstIteDs3Ite.Value;
            Params[08].AsFloat := EstIteDs4Ite.Value;
            Params[09].AsFloat := EstIteDs5Ite.Value;
            Params[10].AsInteger := 5;
            Params[11].AsString := EstIteCodClp.Value;
            Params[12].AsString := EstIteCodGru.Value;
            Params[13].AsString := EstIteCodSub.Value;
            Params[14].AsString := EstIteCodPro.Value;

          end;

          ExecSQL;

        end;
      end;

    if fmManGDB.dbEmerion2.Connected then
      with quSQL3, SQL do
      begin

        Close;
        Text := ' Select EstIte.Vb1Ite,' +
          '        EstIte.Vb2Ite,' +
          '        EstIte.Vb3Ite,' +
          '        EstIte.Vb4Ite,' +
          '        EstIte.Vb5Ite,' +
          '        EstIte.Ds1Ite,' +
          '        EstIte.Ds2Ite,' +
          '        EstIte.Ds3Ite,' +
          '        EstIte.Ds4Ite,' +
          '        EstIte.Ds5Ite From EstIte' +
          ' Where EstIte.CodEmp = ' + QuotedStr('3') +
          '   and EstIte.CodClp = ' + QuotedStr(EstProCodClp.Value) +
          '   and EstIte.CodGru = ' + QuotedStr(EstProCodGru.Value) +
          '   and EstIte.CodSub = ' + QuotedStr(EstProCodSub.Value) +
          '   and EstIte.CodPro = ' + QuotedStr(EstProCodPro.Value);
        Open;

      end;

    if fmManGDB.dbEmerion2.Connected then
      if (quSQL3.FieldbyName('Vb1Ite').AsFloat <> EstIteVb1Ite.Value) or
        (quSQL3.FieldbyName('Vb2Ite').AsFloat <> EstIteVb2Ite.Value) or
        (quSQL3.FieldbyName('Vb3Ite').AsFloat <> EstIteVb3Ite.Value) or
        (quSQL3.FieldbyName('Vb4Ite').AsFloat <> EstIteVb4Ite.Value) or
        (quSQL3.FieldbyName('Vb5Ite').AsFloat <> EstIteVb5Ite.Value) or
        (quSQL3.FieldbyName('Ds1Ite').AsFloat <> EstIteDs1Ite.Value) or
        (quSQL3.FieldbyName('Ds2Ite').AsFloat <> EstIteDs2Ite.Value) or
        (quSQL3.FieldbyName('Ds3Ite').AsFloat <> EstIteDs3Ite.Value) or
        (quSQL3.FieldbyName('Ds4Ite').AsFloat <> EstIteDs4Ite.Value) or
        (quSQL3.FieldbyName('Ds5Ite').AsFloat <> EstIteDs5Ite.Value) then
      begin

        with quSQL3, SQL do
        begin

          Close;
          Text := ' Update EstIte Set Vb1Ite = :Vb1Ite,' +
            '                   Vb2Ite = :Vb2Ite,' +
            '                   Vb3Ite = :Vb3Ite,' +
            '                   Vb4Ite = :Vb4Ite,' +
            '                   Vb5Ite = :Vb5Ite,' +
            '                   Ds1Ite = :Ds1Ite,' +
            '                   Ds2Ite = :Ds2Ite,' +
            '                   Ds3Ite = :Ds3Ite,' +
            '                   Ds4Ite = :Ds4Ite,' +
            '                   Ds5Ite = :Ds5Ite' +
            ' Where EstIte.CodEmp = :CodEmp' +
            '   and EstIte.CodClp = :CodClp' +
            '   and EstIte.CodGru = :CodGru' +
            '   and EstIte.CodSub = :CodSub' +
            '   and EstIte.CodPro = :CodPro';

          with Params do
          begin

            Params[00].AsFloat := EstIteVb1Ite.Value;
            Params[01].AsFloat := EstIteVb2Ite.Value;
            Params[02].AsFloat := EstIteVb3Ite.Value;
            Params[03].AsFloat := EstIteVb4Ite.Value;
            Params[04].AsFloat := EstIteVb5Ite.Value;
            Params[05].AsFloat := EstIteDs1Ite.Value;
            Params[06].AsFloat := EstIteDs2Ite.Value;
            Params[07].AsFloat := EstIteDs3Ite.Value;
            Params[08].AsFloat := EstIteDs4Ite.Value;
            Params[09].AsFloat := EstIteDs5Ite.Value;
            Params[10].AsInteger := 3;
            Params[11].AsString := EstIteCodClp.Value;
            Params[12].AsString := EstIteCodGru.Value;
            Params[13].AsString := EstIteCodSub.Value;
            Params[14].AsString := EstIteCodPro.Value;

          end;

          ExecSQL;

        end;
      end;
  end;
end;

procedure TfmManPro2.EdCodSteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      fmAuxIni.TipoPesq := 'STR';

      fmAuxIni.TipStr := 'Entrada';

      fmAuxIni.ShowModal;

      if Trim(fmAuxIni.CodStr) <> '' then
      begin

        if not nvPro.Salvar then
        begin

          if Trim(EstProCodClp.Value) <> '' then
            EstPro.Edit
          else
            EstPro.Insert;

        end;

        EstProCodSte.Value := fmAuxIni.CodStr;
        EstProTipSte.Value := fmAuxIni.TipStr;

      end;

    finally

      FreeAndNil(fmAuxIni);

    end;

    //EdCodSte.SetFocus;

  end;

  if (key = 13) or (key = 40) then
    pcPro.ActivePage := pcPag3;

end;

procedure TfmManPro2.EdVcrIteExit(Sender: TObject);
var
  ValorBase: real;
begin
  inherited;
  if nvIte.Salvar then
  begin

    if EstIteVcrIte.Value <> AntVcrIte then
    begin

      AntVcrIte := EstIteVcrIte.Value;

      if Trim(EstParATUMSU.Value) = 'Sim' then
      begin

        if EstIteMs1Ite.Value > 0 then
          EstIteVb1Ite.Value := fRound(EstIteVcrIte.Value + ((EstIteVcrIte.Value * EstIteMs1Ite.Value) / 100), 4);

        if EstIteMs2Ite.Value > 0 then
          EstIteVb2Ite.Value := fRound(EstIteVcrIte.Value + ((EstIteVcrIte.Value * EstIteMs2Ite.Value) / 100), 4);

        if EstIteMs3Ite.Value > 0 then
          EstIteVb3Ite.Value := fRound(EstIteVcrIte.Value + ((EstIteVcrIte.Value * EstIteMs3Ite.Value) / 100), 4);

        if EstIteMs4Ite.Value > 0 then
          EstIteVb4Ite.Value := fRound(EstIteVcrIte.Value + ((EstIteVcrIte.Value * EstIteMs4Ite.Value) / 100), 4);

        if EstIteMs5Ite.Value > 0 then
          EstIteVb5Ite.Value := fRound(EstIteVcrIte.Value + ((EstIteVcrIte.Value * EstIteMs5Ite.Value) / 100), 4);

        AntVb1Ite := EstIteVb1Ite.Value;
        AntVb2Ite := EstIteVb2Ite.Value;
        AntVb3Ite := EstIteVb3Ite.Value;
        AntVb4Ite := EstIteVb4Ite.Value;
        AntVb5Ite := EstIteVb5Ite.Value;

        ValorBase := 0;

        if Trim(EstParFlgTab.Value) <> '' then
        begin

          if EstParFlgTab.Value = 'Ultimo Preco' then
            ValorBase := EstIteCstIte.Value;
          if EstParFlgTab.Value = 'Custo Historico' then
            ValorBase := EstIteVchIte.Value;
          if EstParFlgTab.Value = 'Custo Ponderado' then
            ValorBase := EstIteVreIte.Value;
          if EstParFlgTab.Value = 'Custo Referencial' then
            ValorBase := EstIteVcrIte.Value;
          if EstParFlgTab.Value = 'Ultimo Custo(CIF)' then
            ValorBase := EstIteVpfOut.Value;
          if EstParFlgTab.Value = 'Custo Historico (G)' then
            ValorBase := EstIteVcpIte.Value;
          if EstParFlgTab.Value = 'Custo Ponderado (G)' then
            ValorBase := EstIteVprIte.Value;
          if EstParFlgTab.Value = 'Media Ponderada (E)' then
            ValorBase := EstIteVmeIte.Value;
          if EstParFlgTab.Value = 'Custo da Ultima Compra' then
            ValorBase := EstIteVpfIte.Value;

          if ValorBase > 0 then
          begin

            EstIteMk1Ite.Value := fRound(((EstIteVb1Ite.Value - ValorBase) * 100) / ValorBase, 2);
            EstIteMk2Ite.Value := fRound(((EstIteVb2Ite.Value - ValorBase) * 100) / ValorBase, 2);
            EstIteMk3Ite.Value := fRound(((EstIteVb3Ite.Value - ValorBase) * 100) / ValorBase, 2);
            EstIteMk4Ite.Value := fRound(((EstIteVb4Ite.Value - ValorBase) * 100) / ValorBase, 2);
            EstIteMk5Ite.Value := fRound(((EstIteVb5Ite.Value - ValorBase) * 100) / ValorBase, 2);

          end
          else
          begin

            EstIteMk1Ite.Value := 0;
            EstIteMk2Ite.Value := 0;
            EstIteMk3Ite.Value := 0;
            EstIteMk4Ite.Value := 0;
            EstIteMk5Ite.Value := 0;

          end;

        end
        else
        begin

          EstIteMk1Ite.Value := 0;
          EstIteMk2Ite.Value := 0;
          EstIteMk3Ite.Value := 0;
          EstIteMk4Ite.Value := 0;
          EstIteMk5Ite.Value := 0;

        end;

        AntMk1Ite := EstIteMk1Ite.Value;
        AntMk2Ite := EstIteMk2Ite.Value;
        AntMk3Ite := EstIteMk3Ite.Value;
        AntMk4Ite := EstIteMk4Ite.Value;
        AntMk5Ite := EstIteMk5Ite.Value;

      end
      else
      begin

        if Trim(EstParATUVCR.Value) = 'Sim' then
        begin

          if EstIteMk1Ite.Value > 0 then
            EstIteVb1Ite.Value := fRound(EstIteVcrIte.Value + ((EstIteVcrIte.Value * EstIteMk1Ite.Value) / 100), 4);

          if EstIteMk2Ite.Value > 0 then
            EstIteVb2Ite.Value := fRound(EstIteVcrIte.Value + ((EstIteVcrIte.Value * EstIteMk2Ite.Value) / 100), 4);

          if EstIteMk3Ite.Value > 0 then
            EstIteVb3Ite.Value := fRound(EstIteVcrIte.Value + ((EstIteVcrIte.Value * EstIteMk3Ite.Value) / 100), 4);

          if EstIteMk4Ite.Value > 0 then
            EstIteVb4Ite.Value := fRound(EstIteVcrIte.Value + ((EstIteVcrIte.Value * EstIteMk4Ite.Value) / 100), 4);

          if EstIteMk5Ite.Value > 0 then
            EstIteVb5Ite.Value := fRound(EstIteVcrIte.Value + ((EstIteVcrIte.Value * EstIteMk5Ite.Value) / 100), 4);

          AntVb1Ite := EstIteVb1Ite.Value;
          AntVb2Ite := EstIteVb2Ite.Value;
          AntVb3Ite := EstIteVb3Ite.Value;
          AntVb4Ite := EstIteVb4Ite.Value;
          AntVb5Ite := EstIteVb5Ite.Value;

        end;
      end;
    end;
  end;
end;

procedure TfmManPro2.EdMs1IteExit(Sender: TObject);
var
  ValorBase: real;
begin
  inherited;
  if nvIte.Salvar then
  begin

    if Trim(EstParATUMSU.Value) = 'Sim' then
    begin

      if EstIteMs1Ite.Value <> AntMs1Ite then
      begin

        AntMs1Ite := EstIteMs1Ite.Value;

        if EstIteVcrIte.Value > 0 then
        begin

          if EstIteMs1Ite.Value > 0 then
            EstIteVb1Ite.Value := fRound(EstIteVcrIte.Value + ((EstIteVcrIte.Value * EstIteMs1Ite.Value) / 100), 4)
          else
            EstIteVb1Ite.Value := EstIteVcrIte.Value;

        end;

        AntVb1Ite := EstIteVb1Ite.Value;

        ValorBase := 0;

        if Trim(EstParFlgTab.Value) <> '' then
        begin

          if EstParFlgTab.Value = 'Ultimo Preco' then
            ValorBase := EstIteCstIte.Value;
          if EstParFlgTab.Value = 'Custo Historico' then
            ValorBase := EstIteVchIte.Value;
          if EstParFlgTab.Value = 'Custo Ponderado' then
            ValorBase := EstIteVreIte.Value;
          if EstParFlgTab.Value = 'Custo Referencial' then
            ValorBase := EstIteVcrIte.Value;
          if EstParFlgTab.Value = 'Ultimo Custo(CIF)' then
            ValorBase := EstIteVpfOut.Value;
          if EstParFlgTab.Value = 'Custo Historico (G)' then
            ValorBase := EstIteVcpIte.Value;
          if EstParFlgTab.Value = 'Custo Ponderado (G)' then
            ValorBase := EstIteVprIte.Value;
          if EstParFlgTab.Value = 'Media Ponderada (E)' then
            ValorBase := EstIteVmeIte.Value;
          if EstParFlgTab.Value = 'Custo da Ultima Compra' then
            ValorBase := EstIteVpfIte.Value;

          if ValorBase > 0 then
            EstIteMk1Ite.Value := fRound(((EstIteVb1Ite.Value - ValorBase) * 100) / ValorBase, 2)
          else
            EstIteMk1Ite.Value := 0;

        end
        else
          EstIteMk1Ite.Value := 0;

        AntMk1Ite := EstIteMk1Ite.Value;

      end;
    end;
  end;
end;

procedure TfmManPro2.EdMs2IteExit(Sender: TObject);
var
  ValorBase: real;
begin
  inherited;
  if nvIte.Salvar then
  begin

    if Trim(EstParATUMSU.Value) = 'Sim' then
    begin

      if EstIteMs2Ite.Value <> AntMs2Ite then
      begin

        AntMs2Ite := EstIteMs2Ite.Value;

        if EstIteVcrIte.Value > 0 then
        begin

          if EstIteMs2Ite.Value > 0 then
            EstIteVb2Ite.Value := fRound(EstIteVcrIte.Value + ((EstIteVcrIte.Value * EstIteMs2Ite.Value) / 100), 4)
          else
            EstIteVb2Ite.Value := EstIteVcrIte.Value;

        end;

        AntVb2Ite := EstIteVb2Ite.Value;

        ValorBase := 0;

        if Trim(EstParFlgTab.Value) <> '' then
        begin

          if EstParFlgTab.Value = 'Ultimo Preco' then
            ValorBase := EstIteCstIte.Value;
          if EstParFlgTab.Value = 'Custo Historico' then
            ValorBase := EstIteVchIte.Value;
          if EstParFlgTab.Value = 'Custo Ponderado' then
            ValorBase := EstIteVreIte.Value;
          if EstParFlgTab.Value = 'Custo Referencial' then
            ValorBase := EstIteVcrIte.Value;
          if EstParFlgTab.Value = 'Ultimo Custo(CIF)' then
            ValorBase := EstIteVpfOut.Value;
          if EstParFlgTab.Value = 'Custo Historico (G)' then
            ValorBase := EstIteVcpIte.Value;
          if EstParFlgTab.Value = 'Custo Ponderado (G)' then
            ValorBase := EstIteVprIte.Value;
          if EstParFlgTab.Value = 'Media Ponderada (E)' then
            ValorBase := EstIteVmeIte.Value;
          if EstParFlgTab.Value = 'Custo da Ultima Compra' then
            ValorBase := EstIteVpfIte.Value;

          if ValorBase > 0 then
            EstIteMk2Ite.Value := fRound(((EstIteVb2Ite.Value - ValorBase) * 100) / ValorBase, 2)
          else
            EstIteMk2Ite.Value := 0;

        end
        else
          EstIteMk2Ite.Value := 0;

        AntMk2Ite := EstIteMk2Ite.Value;

      end;
    end;
  end;
end;

procedure TfmManPro2.EdMs3IteExit(Sender: TObject);
var
  ValorBase: real;
begin
  inherited;
  if nvIte.Salvar then
  begin

    if Trim(EstParATUMSU.Value) = 'Sim' then
    begin

      if EstIteMs3Ite.Value <> AntMs3Ite then
      begin

        AntMs3Ite := EstIteMs3Ite.Value;

        if EstIteVcrIte.Value > 0 then
        begin

          if EstIteMs3Ite.Value > 0 then
            EstIteVb3Ite.Value := fRound(EstIteVcrIte.Value + ((EstIteVcrIte.Value * EstIteMs3Ite.Value) / 100), 4)
          else
            EstIteVb3Ite.Value := EstIteVcrIte.Value;

        end;

        AntVb3Ite := EstIteVb3Ite.Value;

        ValorBase := 0;

        if Trim(EstParFlgTab.Value) <> '' then
        begin

          if EstParFlgTab.Value = 'Ultimo Preco' then
            ValorBase := EstIteCstIte.Value;
          if EstParFlgTab.Value = 'Custo Historico' then
            ValorBase := EstIteVchIte.Value;
          if EstParFlgTab.Value = 'Custo Ponderado' then
            ValorBase := EstIteVreIte.Value;
          if EstParFlgTab.Value = 'Custo Referencial' then
            ValorBase := EstIteVcrIte.Value;
          if EstParFlgTab.Value = 'Ultimo Custo(CIF)' then
            ValorBase := EstIteVpfOut.Value;
          if EstParFlgTab.Value = 'Custo Historico (G)' then
            ValorBase := EstIteVcpIte.Value;
          if EstParFlgTab.Value = 'Custo Ponderado (G)' then
            ValorBase := EstIteVprIte.Value;
          if EstParFlgTab.Value = 'Media Ponderada (E)' then
            ValorBase := EstIteVmeIte.Value;
          if EstParFlgTab.Value = 'Custo da Ultima Compra' then
            ValorBase := EstIteVpfIte.Value;

          if ValorBase > 0 then
            EstIteMk3Ite.Value := fRound(((EstIteVb3Ite.Value - ValorBase) * 100) / ValorBase, 2)
          else
            EstIteMk3Ite.Value := 0;

        end
        else
          EstIteMk3Ite.Value := 0;

        AntMk3Ite := EstIteMk3Ite.Value;

      end;
    end;
  end;
end;

procedure TfmManPro2.EdMs4IteExit(Sender: TObject);
var
  ValorBase: real;
begin
  inherited;
  if nvIte.Salvar then
  begin

    if Trim(EstParATUMSU.Value) = 'Sim' then
    begin

      if EstIteMs4Ite.Value <> AntMs4Ite then
      begin

        AntMs4Ite := EstIteMs4Ite.Value;

        if EstIteVcrIte.Value > 0 then
        begin

          if EstIteMs4Ite.Value > 0 then
            EstIteVb4Ite.Value := fRound(EstIteVcrIte.Value + ((EstIteVcrIte.Value * EstIteMs4Ite.Value) / 100), 4)
          else
            EstIteVb4Ite.Value := EstIteVcrIte.Value;

        end;

        AntVb4Ite := EstIteVb4Ite.Value;

        ValorBase := 0;

        if Trim(EstParFlgTab.Value) <> '' then
        begin

          if EstParFlgTab.Value = 'Ultimo Preco' then
            ValorBase := EstIteCstIte.Value;
          if EstParFlgTab.Value = 'Custo Historico' then
            ValorBase := EstIteVchIte.Value;
          if EstParFlgTab.Value = 'Custo Ponderado' then
            ValorBase := EstIteVreIte.Value;
          if EstParFlgTab.Value = 'Custo Referencial' then
            ValorBase := EstIteVcrIte.Value;
          if EstParFlgTab.Value = 'Ultimo Custo(CIF)' then
            ValorBase := EstIteVpfOut.Value;
          if EstParFlgTab.Value = 'Custo Historico (G)' then
            ValorBase := EstIteVcpIte.Value;
          if EstParFlgTab.Value = 'Custo Ponderado (G)' then
            ValorBase := EstIteVprIte.Value;
          if EstParFlgTab.Value = 'Media Ponderada (E)' then
            ValorBase := EstIteVmeIte.Value;
          if EstParFlgTab.Value = 'Custo da Ultima Compra' then
            ValorBase := EstIteVpfIte.Value;

          if ValorBase > 0 then
            EstIteMk4Ite.Value := fRound(((EstIteVb4Ite.Value - ValorBase) * 100) / ValorBase, 2)
          else
            EstIteMk4Ite.Value := 0;

        end
        else
          EstIteMk4Ite.Value := 0;

        AntMk4Ite := EstIteMk4Ite.Value;

      end;
    end;
  end;
end;

procedure TfmManPro2.EdMs5IteExit(Sender: TObject);
var
  ValorBase: real;
begin
  inherited;
  if nvIte.Salvar then
  begin

    if Trim(EstParATUMSU.Value) = 'Sim' then
    begin

      if EstIteMs5Ite.Value <> AntMs5Ite then
      begin

        AntMs5Ite := EstIteMs5Ite.Value;

        if EstIteVcrIte.Value > 0 then
        begin

          if EstIteMs5Ite.Value > 0 then
            EstIteVb5Ite.Value := fRound(EstIteVcrIte.Value + ((EstIteVcrIte.Value * EstIteMs5Ite.Value) / 100), 4)
          else
            EstIteVb5Ite.Value := EstIteVcrIte.Value;

        end;

        AntVb5Ite := EstIteVb5Ite.Value;

        ValorBase := 0;

        if Trim(EstParFlgTab.Value) <> '' then
        begin

          if EstParFlgTab.Value = 'Ultimo Preco' then
            ValorBase := EstIteCstIte.Value;
          if EstParFlgTab.Value = 'Custo Historico' then
            ValorBase := EstIteVchIte.Value;
          if EstParFlgTab.Value = 'Custo Ponderado' then
            ValorBase := EstIteVreIte.Value;
          if EstParFlgTab.Value = 'Custo Referencial' then
            ValorBase := EstIteVcrIte.Value;
          if EstParFlgTab.Value = 'Ultimo Custo(CIF)' then
            ValorBase := EstIteVpfOut.Value;
          if EstParFlgTab.Value = 'Custo Historico (G)' then
            ValorBase := EstIteVcpIte.Value;
          if EstParFlgTab.Value = 'Custo Ponderado (G)' then
            ValorBase := EstIteVprIte.Value;
          if EstParFlgTab.Value = 'Media Ponderada (E)' then
            ValorBase := EstIteVmeIte.Value;
          if EstParFlgTab.Value = 'Custo da Ultima Compra' then
            ValorBase := EstIteVpfIte.Value;

          if ValorBase > 0 then
            EstIteMk5Ite.Value := fRound(((EstIteVb5Ite.Value - ValorBase) * 100) / ValorBase, 2)
          else
            EstIteMk5Ite.Value := 0;

        end
        else
          EstIteMk5Ite.Value := 0;

        AntMk5Ite := EstIteMk5Ite.Value;

      end;
    end;
  end;
end;

procedure TfmManPro2.EdCodStsExit(Sender: TObject);
var
  ncm: string;
begin
  inherited;
  if nvPro.Salvar then
  begin

    if Trim(EstProCodSts.AsString) <> '' then
    begin

      with quSQL, SQL do
      begin

        Close;
        Text := ' Select EstStr.TipStr' +
          ' From EstStr' +
          ' Where coalesce(EstStr.FlgAtivo,1) = 1 '+
          '   and EstStr.CodStr = ' + QuotedStr(EstProCodSts.AsString) +
          '   and EstStr.TipStr = ' + QuotedStr('Saida');
        Open;

        if Trim(FieldbyName('TipStr').AsString) <> '' then
          EstProTipSts.AsString := FieldbyName('TipStr').AsString
        else
          fmsgErro('Regra de Substituição Tributária Informada não Encontrada ou Inativa.', EdCodSts);

      end;
    end;
  end;

  //Validação de NCM para ST removida, pois o código CEST passou a ser o responsável por definir a tributação
  {
  ncm := fmManGDB.BuscaSimples('ESTSTR', 'ncm', ' TIPSTR = ' + QuotedStr('Saida') + ' and codSTR = ' + QuotedStr(EstPro.FieldByName('CODSTS').AsString));

  if ((Trim(ncm) <> '') and (ncm <> dxDBColorEdit6.Text)) then
    ShowMessage('O NCM do Produto está diferente do NCM das Regras');}

end;

procedure TfmManPro2.EdCodSteExit(Sender: TObject);
var
  ncm: string;
begin
  inherited;
  if nvPro.Salvar then
  begin

    if Trim(EstProCodSte.AsString) <> '' then
    begin

      with quSQL, SQL do
      begin

        Close;
        Text := ' Select EstStr.TipStr' +
          ' From EstStr' +
          ' Where coalesce(EstStr.FlgAtivo,1) = 1 '+
          '   and EstStr.CodStr = ' + QuotedStr(EstProCodSte.AsString) +
          '   and EstStr.TipStr = ' + QuotedStr('Entrada');
        Open;

        if Trim(FieldbyName('TipStr').AsString) <> '' then
          EstProTipSte.AsString := FieldbyName('TipStr').AsString
        else
          fmsgErro('Regra de Substituição Tributária Informada não Encontrada ou Inativa.', EdCodSte);

      end;
    end;
  end;
//Validação de NCM para ST removida, pois o código CEST passou a ser o responsável por definir a tributação
  {
  ncm := fmManGDB.BuscaSimples('ESTSTR', 'ncm', ' TIPSTR = ' + QuotedStr('Entrada') +
    ' and codSTR = '
    + QuotedStr(EstPro.FieldByName('CODSTE').AsString));

  if ((Trim(ncm) <> '') and (ncm <> dxDBColorEdit6.Text)) then
    ShowMessage('O NCM do Produto está diferente do NCM das Regras'); }
end;

procedure TfmManPro2.EstPro_02BeforeOpen(DataSet: TDataSet);
begin
  inherited;
  if fmmanpri.Emerion_01 = false then
    sysutils.abort;
end;

procedure TfmManPro2.EstPro_02TBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  if fmmanpri.Emerion_01 = false then
    sysutils.abort;

end;

procedure TfmManPro2.quSQL2BeforeOpen(DataSet: TDataSet);
begin
  inherited;
  if fmmanpri.Emerion_01 = false then
    sysutils.abort;

end;

procedure TfmManPro2.EstPro_03BeforeOpen(DataSet: TDataSet);
begin
  inherited;
  if fmmanpri.Emerion_02 = false then
    sysutils.abort;
end;

procedure TfmManPro2.quSQL3BeforeOpen(DataSet: TDataSet);
begin
  inherited;
  if fmmanpri.Emerion_02 = false then
    sysutils.abort;

end;

procedure TfmManPro2.PartNumber1Click(Sender: TObject);
begin
  inherited;
  try
    fmConPar := TfmConPar.Create(Self);
    fmConPar.ShowModal;
  finally
    FreeAndNil(fmConPar);
  end;

end;

procedure TfmManPro2.ValidaDadosItem;
begin
  //Procedure criada em 17/11/2011

  erro := '';

  if Trim(EstProCBAPRO.AsString) <> '' then
  begin
    if not ValidaEAN13ENA8(EstProCBAPRO.AsString) then
      if Messagebox(handle, PChar('Código de Barra informado por unidade está incorreto.' + #13 +
        'Haverá erro caso utilize este item para gerar Nota Fiscal Eletrônica.' + #13 +
        'Deseja continuar mesmo assim?'), 'Granvando dados do Item.', mb_YESNO + MB_ICONQUESTION) = IDNO then
      begin
        pcPro.ActivePage := pcPag2;

        if EdCbaPro.CanFocus then
          EdCbaPro.SetFocus;

        Abort;

      end;
  end;

  if Trim(EstProCBAEMB.AsString) <> '' then
  begin
    if not ValidaEAN13ENA8(EstProCBAEMB.AsString) then
      if Messagebox(handle, PChar('Código de Barra informado por embalagem está incorreto.' + #13 +
                                  'Haverá erro caso utilize este item para gerar Nota Fiscal Eletrônica.' + #13 +
                                  'Deseja continuar mesmo assim?'), 'Granvando dados do Item.', mb_YESNO + MB_ICONQUESTION) = IDNO then
      begin
        pcPro.ActivePage := pcPag2;

        if EdCbaEmb.CanFocus then
          EdCbaEmb.SetFocus;

        Abort;

      end;
  end;

  if Trim(dxDBColorLookupEdit7.Text) = '' then
    erro := erro + '   -O Campo Origem do Produto deve ser Preenchido' + #13;

  if Trim(dxDBColorEdit6.Text) = '' then
    erro := erro + '   -O Campo NCM deve ser Preenchido' + #13;

  if (erro <> '') then
  begin
    erro := 'O Registro Não pode ser Salvo, motivo:' + #13 + #13 + #13 + erro;
    abortar(erro);
  end;
end;

procedure TfmManPro2.EdIcmSaiChange(Sender: TObject);
begin
  inherited;
  //EdIcmSai.Text := trim(EdIcmSai.Text);
  if trim(EdIcmSai.Text) <> '' then
  begin
    edICMSSaiAliq.Text := fmManGDB.BuscaSimples('ESTICM', 'pericm', ' CODICM = ' + QuotedStr(EdIcmSai.Text) + ' and TipICM = ' + QuotedStr('Saida'));
    //edIcmOrig.Text := fmManGDB.BuscaSimples('ESTICM', 'CODST1', ' CODICM = ' + QuotedStr(EdIcmSai.Text) + ' and TipICM = ' + QuotedStr('Saida'));
    edIcmSit.Text := fmManGDB.BuscaSimples('ESTICM', 'CODST2', ' CODICM = ' + QuotedStr(EdIcmSai.Text) + ' and TipICM = ' + QuotedStr('Saida'));
  end
  else
  begin
    edICMSSaiAliq.Text := '';
    //edIcmOrig.Text := '';
    edIcmSit.Text := '';
  end;
end;

procedure TfmManPro2.EdIcmEntChange(Sender: TObject);
begin
  inherited;
  //edICMSEntAliq.Text := trim(edICMSEntAliq.Text);
  if trim(EdIcmEnt.Text) <> '' then
  begin
    edICMSEntAliq.Text := fmManGDB.BuscaSimples('ESTICM', 'pericm', ' CODICM = ' + QuotedStr(EdIcmEnt.Text) + ' and TipICM = ' + QuotedStr('Entrada'));
  end
  else
  begin
    edICMSEntAliq.Text := '';

  end;
end;

procedure TfmManPro2.EdIpiSaiChange(Sender: TObject);
begin
  inherited;
  EdIpiSai.Text := trim(EdIpiSai.Text);
  if EdIpiSai.Text <> '' then
  begin
    edIPISaiAliq.Text := fmManGDB.BuscaSimples('ESTIPI', 'PERIPI', ' CODIPI = ' + QuotedStr(EdIpiSai.Text) + ' and TIPIPI = ' + QuotedStr('Saida'));
  end
  else
  begin
    edIPISaiAliq.Text := '';
  end;
end;

procedure TfmManPro2.EdIpiEntChange(Sender: TObject);
begin
  inherited;
  EdIpiEnt.Text := trim(EdIpiEnt.Text);
  if EdIpiEnt.Text <> '' then
  begin
    edIPIEntAliq.Text := fmManGDB.BuscaSimples('ESTIPI', 'PERIPI', ' CODIPI = ' + QuotedStr(EdIpiEnt.Text) + ' and TIPIPI = ' + QuotedStr('Entrada'));
  end
  else
  begin
    edIPIEntAliq.Text := '';
  end;
end;

procedure TfmManPro2.EstProAfterOpen(DataSet: TDataSet);
begin
  inherited;
  EdIcmSaiChange(EdIcmSai);
  EdIcmEntChange(EdIcmEnt);
  EdIpiSaiChange(EdIpiSai);
  EdIpiEntChange(EdIpiEnt);

  EstIte.Active := True;
  EstQte.Active := True;

end;

procedure TfmManPro2.EstProAfterRefresh(DataSet: TDataSet);
begin
  inherited;
  EdIcmSaiChange(EdIcmSai);
  EdIcmEntChange(EdIcmEnt);
  EdIpiSaiChange(EdIpiSai);
  EdIpiEntChange(EdIpiEnt);
end;

procedure TfmManPro2.EstProAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if pcPro.ActivePageIndex > 0 then
  begin
    EdIcmSaiChange(EdIcmSai);
    EdIcmEntChange(EdIcmEnt);
    EdIpiSaiChange(EdIpiSai);
    EdIpiEntChange(EdIpiEnt);

    checaIpi();

    ultCodNCME := EdIpiEnt.Text;
  end;

  edIssPro.Enabled := EstProCODCLP.AsString = '3';
end;

procedure TfmManPro2.ValidacaoSubstituicao(CodStr, TipStr: string);
begin

  if strtoint(fmManGDB.BuscaSimples('ESTUFE', 'TOT', '', 'select COUNT(1) TOT from estufe ufe ' +
    ' where ufe.codstr = ' + QuotedStr(EstProCODSTS.AsString) +
    ' and ufe.tipstr = ' + QuotedStr(EstProTIPSTS.AsString) +
    ' and ufe.codst1 = ' + QuotedStr(EstProCODST1.AsString))) > 0 then
  begin
    MessageBox(handle, pchar('Não há informado na regra de substituição a origem ' + quotedstr(EstProCODST1.AsString) + '. Verifique e tente novamente.'),
      'Validação dos dados', mb_ok + MB_ICONWARNING);
    Abort;
  end;

end;

procedure TfmManPro2.CriarForm(frmClass: TFormClass; out Obj);
var
  Found, i: Integer;
begin

  Found := -1;

  for i := 0 to Screen.FormCount - 1 do
  begin

    if Screen.Forms[i] is FrmClass then
      Found := i;

  end;

  if Found >= 0 then
  begin

    TForm(Obj).WindowState := wsNormal;
    TForm(Obj).BringToFront;

  end
  else
  begin

    TForm(Obj) := FrmClass.Create(Self);
    TForm(Obj).Show;

  end;
end;

procedure TfmManPro2.Label12DblClick(Sender: TObject);
begin
  inherited;
  if EdIcmSai.Text = '' then
    ShowMessage('Não há regra atrelada ao Item');

  CriarForm(TfmManIcm, fmManIcm);
  fmManIcm.localiza(EdIcmSai.Text, True, 'Saida');
end;

procedure TfmManPro2.Label17DblClick(Sender: TObject);
begin
  inherited;
  if EdIcmEnt.Text = '' then
    ShowMessage('Não há regra atrelada ao Item');

  CriarForm(TfmManIcm, fmManIcm);
  fmManIcm.localiza(EdIcmEnt.Text, True, 'Entrada');
end;

procedure TfmManPro2.Label15DblClick(Sender: TObject);
begin
  inherited;
  if edIPISai.Text = '' then
    ShowMessage('Não há regra atrelada ao Item');

  CriarForm(TfmManIpi, fmManIpi);
  fmManIpi.localiza(edIPISai.Text, True, 'Saida');
end;

procedure TfmManPro2.Label18DblClick(Sender: TObject);
begin
  inherited;
  if EdIpiEnt.Text = '' then
    ShowMessage('Não há regra atrelada ao Item');

  CriarForm(TfmManIpi, fmManIpi);
  fmManIpi.localiza(EdIpiEnt.Text, True, 'Entrada');
end;

procedure TfmManPro2.Label94DblClick(Sender: TObject);
begin
  inherited;
  {if PARAMSTR(1) = 'New' then
     begin}
  if EdCodSts.Text = '' then
    ShowMessage('Não há regra atrelada ao Item');

  CriarForm(TfmManStr2, fmManStr2);
  fmManStr2.localiza(EdCodSts.Text, 'SAI');
  {   end
  else
     begin
     if EdCodSts.Text = '' then
        ShowMessage('Não há regra atrelada ao Item');

     CriarForm(TfmManStr, fmManStr);
     fmManStr.localiza(EdCodSts.Text,'SAI', True);
     end;}
end;

procedure TfmManPro2.Label95DblClick(Sender: TObject);
begin
  inherited;
  {if PARAMSTR(1) = 'New' then
  begin}
  if EdCodSte.Text = '' then
    ShowMessage('Não há regra atrelada ao Item');

  CriarForm(TfmManStr2, fmManStr2);
  fmManStr2.localiza(EdCodSte.Text, 'ENT');
  {end
  else
  begin
    if EdCodSte.Text = '' then
      ShowMessage('Não há regra atrelada ao Item');

    CriarForm(TfmManStr, fmManStr);
    fmManStr.localiza(EdCodSte.Text, 'ENT', True);
  end;}
end;

procedure TfmManPro2.e(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
const
  checado: array[Boolean] of Integer =
  (DFCS_BUTTONCHECK, DFCS_BUTTONCHECK or DFCS_CHECKED);
var
  DrawState: Integer;
  DrawRect: TRect;
  controle: Boolean;
begin
  if (gdFocused in State) then
  begin
    if (Column.Field.FieldName = DBCheckBox1.DataField) then
    begin
      DBCheckBox1.Left := Rect.Left + grPro.Left + 2;
      DBCheckBox1.Top := Rect.Top + grPro.top + 2;
      DBCheckBox1.Width := Rect.Right - Rect.Left;
      DBCheckBox1.Height := Rect.Bottom - Rect.Top;

      DBCheckBox1.Visible := True;
    end
  end
  else
  begin
    if (Column.Field.FieldName = DBCheckBox1.DataField) then
    begin
      DrawRect := Rect;
      InflateRect(DrawRect, -1, -1);

      if Column.Field.AsString <> '' then
        controle := True
      else
        controle := False;

      DrawState := checado[Controle];

      grPro.Canvas.FillRect(Rect);
      DrawFrameControl(grPro.Canvas.Handle, DrawRect,
        DFC_BUTTON, DrawState);
    end;
  end;
end;

procedure TfmManPro2.grProDblClick(Sender: TObject);
begin
  inherited;
  if EstProCODCLP.AsInteger > 0 then
    pcPro.ActivePage := pcPag2;
end;

procedure TfmManPro2.dxDBColorEdit6KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9', #9, #7]) then
    key := #0;

end;

procedure TfmManPro2.nvProInclui(Sender: TObject);
begin
  inherited;
  if EstPro.Active = False then
    EstPro.Active := True;

  IcmSai.Active := True;
end;

procedure TfmManPro2.EdCbaProKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmManPro2.edCBAEMBEmbKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmManPro2.dxDBColorEdit6Exit(Sender: TObject);
var
  ncm: string;
begin
  inherited;
  ncm := fmManGDB.BuscaSimples('estipi', 'clsipi', 'codipi = ' + QuotedStr(EstPro.FieldByName('ipisai').AsString));
  if (edIpiSai.Text <> '') then
    if ((ncm <> '') and (ncm <> dxDBColorEdit6.Text)) then
      ShowMessage('O NCM do Produto está diferente do NCM das Regras');
end;

procedure TfmManPro2.ABE0101Click(Sender: TObject);
begin
  inherited;
  CriarForm(TfmManPsqPro, fmManPsqPro);

  fmManPsqPro.selectBase := sBase;
  fmManPsqPro.selectFiltro := getFiltro;
  fmManPsqPro.selectOrdem := sOrdem;

  fmManPsqPro.lbl := pnQuant;

  fmManPsqPro.query := EstPro;

end;

procedure TfmManPro2.pcProChange(Sender: TObject);
begin
  inherited;
  if pcPro.ActivePageIndex > 0 then
  begin
    checaIpi();
  end;
end;

procedure TfmManPro2.EdCodClpExit(Sender: TObject);
begin
  inherited;
  EdIssPro.Enabled := EstProCODCLP.AsString = '5';
end;

procedure TfmManPro2.EstProAfterEdit(DataSet: TDataSet);
begin
  inherited;
  EstProFLGATU.AsString := 'U';
end;

procedure TfmManPro2.EstProAfterInsert(DataSet: TDataSet);
begin
  inherited;
  EstProFLGATU.AsString := 'I';
end;

procedure TfmManPro2.EstIteAfterPost(DataSet: TDataSet);
begin
  inherited;

  try
     begin
        quSql.Active := False;
        quSql.sql.CommaText := 'Update estpro set FLGATU = ' + QuotedStr('U') +
                               ' where ' +
                               ' codclp = :CODCLP and ' +
                               ' codgru = :CODGRU and ' +
                               ' codsub = :CODSUB and ' +
                               ' codpro = :CODPRO';
        quSql.ParamByName('CODCLP').AsString := EstIte.FieldByName('CODCLP').AsString;
        quSql.ParamByName('CODGRU').AsString := EstIte.FieldByName('CODGRU').AsString;
        quSql.ParamByName('CODSUB').AsString := EstIte.FieldByName('CODSUB').AsString;
        quSql.ParamByName('CODPRO').AsString := EstIte.FieldByName('CODPRO').AsString;
        quSql.ExecSQL;
     end;
  finally

  end;

  nvPro.Enabled := True;

  pcPag2.Enabled := True;
  pcPag3.Enabled := True;

  EdCodEmp.Enabled := False;
  CbNomEmp.Enabled := False;

  EdCodEmp.Font.Style := [fsBold];
  CbNomEmp.Font.Style := [fsBold];

end;

procedure TfmManPro2.EstProBeforeClose(DataSet: TDataSet);
begin
  inherited;
  EstIte.Active := False;
  EstQte.Active := False;

end;

procedure TfmManPro2.edFCPEntradaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      fmAuxIni.TipoPesq := 'FCP';
      fmAuxIni.TipStr := 'Entrada';

      fmAuxIni.ShowModal;

      if Trim(fmAuxIni.Codfcp) <> '' then
      begin

        if not nvPro.Salvar then
        begin

          if Trim(EstProCodClp.Value) <> '' then
            EstPro.Edit
          else
            EstPro.Insert;

        end;

        EstProCOD_FCP_ENTRADA.AsString := fmAuxIni.Codfcp;

      end;

    finally

      FreeAndNil(fmAuxIni);

    end;

    {if Trim(EstProCodSts.Value) <> '' then
      EdCodSte.SetFocus;}

  end;
end;

procedure TfmManPro2.edFCPSaidaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      fmAuxIni.TipoPesq := 'FCP';
      fmAuxIni.TipStr := 'Saida';

      fmAuxIni.ShowModal;

      if Trim(fmAuxIni.Codfcp) <> '' then
      begin

        if not nvPro.Salvar then
        begin

          if Trim(EstProCodClp.Value) <> '' then
            EstPro.Edit
          else
            EstPro.Insert;

        end;

        EstProCOD_FCP_Saida.AsString := fmAuxIni.Codfcp;

      end;

    finally

      FreeAndNil(fmAuxIni);

    end;

    {if Trim(EstProCodSts.Value) <> '' then
      EdCodSte.SetFocus;}

  end;
end;

function TfmManPro2.getFiltro: String;
var
   filtroGeral: String;
begin
  case rgStatus.Itemindex of
    0: filtroGeral := ' and EstPro.FlbPro  = ''' + ' ' + '''';
    1: filtroGeral := ' and EstPro.FlbPro  = ''' + '*' + '''';
  end;

  if pos('Where', filtroGeral) > 0 then
  begin

    case rgPromocao.Itemindex of
      0: filtroGeral := filtroGeral + ' and EstPro.FlgPro  = ''' + 'Sim' + '''';
      1: filtroGeral := filtroGeral + ' and EstPro.FlgPro  = ''' + 'Nao' + '''';
    end;

  end
  else
  begin

    case rgPromocao.Itemindex of
      0: filtroGeral := ' and EstPro.FlgPro  = ''' + 'Sim' + '''';
      1: filtroGeral := ' and EstPro.FlgPro  = ''' + 'Nao' + '''';
    end;
  end;

  if Trim(EdPsqCodCat.Text) <> '' then
    filtroGeral := filtroGeral + ' and EstPro.CodCat = ''' + EdPsqCodCat.Text + '''';

  if Trim(EdPsqCodTip.Text) <> '' then
    filtroGeral := filtroGeral + ' and EstPro.CodTip = ''' + EdPsqCodTip.Text + '''';

  if Trim(EdPsqCodMrc.Text) <> '' then
    filtroGeral := filtroGeral + ' and EstPro.CodMrc = ''' + EdPsqCodMrc.Text + '''';

  if Trim(EdPsqCodClp.Text) <> '' then
    filtroGeral := filtroGeral + ' and EstPro.CodClp = ''' + EdPsqCodClp.Text + '''';

  if Trim(EdPsqCodGru.Text) <> '' then
    filtroGeral := filtroGeral + ' and EstPro.CodGru = ''' + EdPsqCodGru.Text + '''';

  if Trim(EdPsqCodSub.Text) <> '' then
    filtroGeral := filtroGeral + ' and EstPro.CodSub = ''' + EdPsqCodSub.Text + '''';

  if Trim(EdPsqCodPro.Text) <> '' then
    filtroGeral := filtroGeral + ' and EstPro.CodPro = ''' + EdPsqCodPro.Text + '''';

  if Rgbusca.ItemIndex = 0 then
  begin

    if Trim(EdPsqSimPro.Text) <> '' then
      filtroGeral := filtroGeral + ' and EstPro.SimPro LIKE ''' + EdPsqSimPro.Text + '%''';

    if Trim(EdPsqCbaPro.Text) <> '' then
      filtroGeral := filtroGeral + ' and EstPro.CbaPro LIKE ''' + EdPsqCbaPro.Text + '%''';

    if Trim(EdPsqRefPro.Text) <> '' then
      filtroGeral := filtroGeral + ' and EstPro.RefPro LIKE ''' + EdPsqRefPro.Text + '%''';

    if Trim(EdPsqCODNCM.Text) <> '' then
      filtroGeral := filtroGeral + ' and EstPro.CODNCM LIKE ''' + EdPsqCODNCM.Text + '%''';

    if Trim(EdPsqDscPro.Text) <> '' then
      filtroGeral := filtroGeral + ' and EstPro.DscPro LIKE ''' + EdPsqDscPro.Text + '%''';

  end
  else
  begin

    if Trim(EdPsqSimPro.Text) <> '' then
      filtroGeral := filtroGeral + ' and EstPro.SimPro LIKE ''%' + EdPsqSimPro.Text + '%''';

    if Trim(EdPsqCbaPro.Text) <> '' then
      filtroGeral := filtroGeral + ' and EstPro.CbaPro LIKE ''%' + EdPsqCbaPro.Text + '%''';

    if Trim(EdPsqRefPro.Text) <> '' then
      filtroGeral := filtroGeral + ' and EstPro.RefPro LIKE ''%' + EdPsqRefPro.Text + '%''';

    if Trim(EdPsqCODNCM.Text) <> '' then
      filtroGeral := filtroGeral + ' and EstPro.CODNCM LIKE ''%' + EdPsqCODNCM.Text + '%''';

    if Trim(EdPsqDscPro.Text) <> '' then
      filtroGeral := filtroGeral + ' and EstPro.DscPro LIKE ''%' + EdPsqDscPro.Text + '%''';
  end;

  result := filtroGeral;
end;

procedure TfmManPro2.btnEdCBAEMBEmbClick(Sender: TObject);
begin
  inherited;

  if not (EstPro.State in ([dsEdit, dsInsert])) then
    EstPro.Edit;

  EstBarPesq.Close;
  EstBarPesq.SQL.Text := ' select Max(ESTBAR.CodBar) as CodBar from ESTBAR '+
                         ' where ESTBAR.CodClp = '+QuotedStr(Trim(EstProCODCLP.AsString))+
                         '   and ESTBAR.CodGru = '+QuotedStr(Trim(EstProCODGRU.AsString))+
                         '   and ESTBAR.codsub = '+QuotedStr(Trim(EstProCODSUB.AsString))+
                         '   and ESTBAR.codpro = '+QuotedStr(Trim(EstProCODPRO.AsString));
  EstBarPesq.Open;

  if not EstBarPesq.IsEmpty then
    EstProCBAEMB.AsString:= EstBarPesq.FieldByName('CodBar').AsString;

  EstBarPesq.Close;

end;

procedure TfmManPro2.btnEdCbaProClick(Sender: TObject);
begin
  inherited;

  if not (EstPro.State in ([dsEdit, dsInsert])) then
    EstPro.Edit;

  EstBarPesq.Close;
  EstBarPesq.SQL.Text := ' select Max(ESTBAR.CodBar) as CodBar from ESTBAR '+
                         ' where ESTBAR.CodClp = '+QuotedStr(Trim(EstProCODCLP.AsString))+
                         '   and ESTBAR.CodGru = '+QuotedStr(Trim(EstProCODGRU.AsString))+
                         '   and ESTBAR.codsub = '+QuotedStr(Trim(EstProCODSUB.AsString))+
                         '   and ESTBAR.codpro = '+QuotedStr(Trim(EstProCODPRO.AsString));
  EstBarPesq.Open;

  if not EstBarPesq.IsEmpty then
    EstProCBAPRO.AsString:= EstBarPesq.FieldByName('CodBar').AsString;

  EstBarPesq.Close;

end;

end.

