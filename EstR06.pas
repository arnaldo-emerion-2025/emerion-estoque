unit EstR06;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Menus, ImgList, Db, Wwdatsrc, dxPSCore, dxPSdxTLLnk,
  dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, DBTables, Wwquery, StdCtrls, ExtCtrls,
  dxDBGrid, dxTL, dxDBCtrl, dxCntner, Buttons, dxEditor, dxEdLib, Grids,
  Wwdbigrd, Wwdbgrid, hGrid, Mask, hEdits, wwdbedit, Wwdotdot,
  Wwdbcomb, DBCtrls, AlignEdit, QuickRpt, ppDB, ppDBPipe, ppBands, ppClass,
  ppStrtch, ppMemo, ppVar, jpeg, ppCtrls, ppPrnabl, ppCache, ppComm, ppRelatv,
  ppProd, ppReport, ppModule, daDatMod, wwdbdatetimepicker, dxExEdtr,
  dxColorEdit, dxfProgressBar, dxDBTLCl, dxGrClms, Clipbrd, dxDBEdtr,
  dxDBELib, dxDBColorLookupEdit, dxDBColorEdit;

type
  TSaveMethod = procedure(const FileName: string; ASaveAll: Boolean) of object;

  TfmEstR06 = class(TfmPadrao)
    EstR06: TwwQuery;
    quSql: TwwQuery;
    dxComponentPrinter: TdxComponentPrinter;
    dxComponentPrinterLink1: TdxDBGridReportLink;
    SaveDialog: TSaveDialog;
    grR06: TdxDBGrid;
    Label3: TLabel;
    EdCodPro: TdxColorEdit;
    bPsqPro: TSpeedButton;
    EdNomPro: TdxColorEdit;
    bPesquisa: TBitBtn;
    bImprimir: TBitBtn;
    Label2: TLabel;
    Bevel2: TBevel;
    DsR06: TwwDataSource;
    rgStatus: TRadioGroup;
    Label110: TLabel;
    Label111: TLabel;
    Label112: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    EdCodSub: TdxColorEdit;
    EdCodGru: TdxColorEdit;
    EdCodClp: TdxColorEdit;
    EdCodMrc: TdxColorEdit;
    EdCodTip: TdxColorEdit;
    EdCodCat: TdxColorEdit;
    bPsqCat: TSpeedButton;
    bPsqTip: TSpeedButton;
    PsqMrc: TSpeedButton;
    bPsqClp: TSpeedButton;
    bPsqGru: TSpeedButton;
    bPsqSub: TSpeedButton;
    EdNomSub: TdxColorEdit;
    EdNomGru: TdxColorEdit;
    EdNomClp: TdxColorEdit;
    EdNomMrc: TdxColorEdit;
    EdNomTip: TdxColorEdit;
    EdNomCat: TdxColorEdit;
    EstR06NOMCAT: TStringField;
    EstR06NOMMRC: TStringField;
    EstR06NOMGRU: TStringField;
    EstR06NOMSUB: TStringField;
    EstR06CODPRO: TStringField;
    EstR06IDEPRO: TStringField;
    EstR06SIMPRO: TStringField;
    EstR06CODANT: TStringField;
    EstR06CODUNS: TStringField;
    EstR06CODCOM: TStringField;
    EstR06NUMPRO: TStringField;
    grR06NOMCAT: TdxDBGridMaskColumn;
    grR06NOMMRC: TdxDBGridMaskColumn;
    grR06NOMGRU: TdxDBGridMaskColumn;
    grR06NOMSUB: TdxDBGridMaskColumn;
    grR06CODPRO: TdxDBGridMaskColumn;
    grR06DSCPRO: TdxDBGridMaskColumn;
    grR06IDEPRO: TdxDBGridMaskColumn;
    grR06SIMPRO: TdxDBGridMaskColumn;
    grR06CODUNS: TdxDBGridMaskColumn;
    grR06PERCOM: TdxDBGridMaskColumn;
    grR06NUMPRO: TdxDBGridMaskColumn;
    PopUpMenu: TPopupMenu;
    Exportarpara1: TMenuItem;
    HTML: TMenuItem;
    Excel: TMenuItem;
    XML: TMenuItem;
    EstR06NOMTIP: TStringField;
    grR06NOMTIP: TdxDBGridColumn;
    EstR06PERCOM: TFloatField;
    EstR06QTDEMB: TFloatField;
    grR06QTDEMB: TdxDBGridColumn;
    Colunas1: TMenuItem;
    EstR06CODSIT: TStringField;
    EstR06PERIPI: TFloatField;
    EstR06PERICM: TFloatField;
    EstR06CLSIPI: TStringField;
    EstR06VB1ITE: TFloatField;
    EstR06VB2ITE: TFloatField;
    EstR06VB3ITE: TFloatField;
    EstR06VB4ITE: TFloatField;
    EstR06VB5ITE: TFloatField;
    EstR06DS1ITE: TFloatField;
    EstR06DS2ITE: TFloatField;
    EstR06DS3ITE: TFloatField;
    EstR06DS4ITE: TFloatField;
    EstR06DS5ITE: TFloatField;
    grR06PERIPI: TdxDBGridColumn;
    grR06PERICM: TdxDBGridColumn;
    grR06CLSIPI: TdxDBGridColumn;
    grR06VB1ITE: TdxDBGridColumn;
    grR06VB2ITE: TdxDBGridColumn;
    grR06VB3ITE: TdxDBGridColumn;
    grR06VB4ITE: TdxDBGridColumn;
    grR06VB5ITE: TdxDBGridColumn;
    grR06CODSIT: TdxDBGridColumn;
    EstR06QTDITE: TFloatField;
    grR06QTDITE: TdxDBGridColumn;
    Label11: TLabel;
    EdCodEmp: TdxColorEdit;
    BbPsqEmp: TSpeedButton;
    EdApeEmp: TdxColorEdit;
    EstR06VPFITE: TFloatField;
    EstR06CODITE: TStringField;
    grR06CODITE: TdxDBGridColumn;
    grR06VPFITE: TdxDBGridColumn;
    rgImagem: TRadioGroup;
    EstR06QTAITE: TFloatField;
    grR06QTAITE: TdxDBGridColumn;
    EstR06DULCMP: TDateTimeField;
    EstR06QTDCMP: TFloatField;
    grR06DULCMP: TdxDBGridColumn;
    grR06QTDCMP: TdxDBGridColumn;
    EstR06VMEITE: TFloatField;
    grR06VMEITE: TdxDBGridColumn;
    EstR06VCRITE: TFloatField;
    grR06VCRITE: TdxDBGridColumn;
    EstR06QTMITE: TFloatField;
    EstR06QMAITE: TFloatField;
    grR06QTMITE: TdxDBGridColumn;
    grR06QMAITE: TdxDBGridColumn;
    EstR06PERIMP: TFloatField;
    grR06PERIMP: TdxDBGridColumn;
    EstR06MS1ITE: TFloatField;
    EstR06MS2ITE: TFloatField;
    EstR06MS3ITE: TFloatField;
    EstR06MS4ITE: TFloatField;
    EstR06MS5ITE: TFloatField;
    EstR06MK1ITE: TFloatField;
    EstR06MK2ITE: TFloatField;
    EstR06MK3ITE: TFloatField;
    EstR06MK4ITE: TFloatField;
    EstR06MK5ITE: TFloatField;
    rgSubst: TRadioGroup;
    EstR06CODBAR1: TStringField;
    EstR06CODBAR2: TStringField;
    EstR06CODBAR3: TStringField;
    grR06CODBAR1: TdxDBGridColumn;
    grR06CODBAR2: TdxDBGridColumn;
    grR06CODBAR3: TdxDBGridColumn;
    EstR06QTDBAR1: TFloatField;
    EstR06CUBBAR1: TFloatField;
    EstR06PESBAR1: TFloatField;
    EstR06TIPBAR1: TStringField;
    EstR06QTDBAR2: TFloatField;
    EstR06CUBBAR2: TFloatField;
    EstR06PESBAR2: TFloatField;
    EstR06TIPBAR2: TStringField;
    EstR06QTDBAR3: TFloatField;
    EstR06CUBBAR3: TFloatField;
    EstR06PESBAR3: TFloatField;
    EstR06TIPBAR3: TStringField;
    grR06TIPBAR1: TdxDBGridColumn;
    grR06QTDBAR1: TdxDBGridColumn;
    grR06CUBBAR1: TdxDBGridColumn;
    grR06PESBAR1: TdxDBGridColumn;
    grR06QTDBAR2: TdxDBGridColumn;
    grR06PESBAR2: TdxDBGridColumn;
    grR06CUBBAR2: TdxDBGridColumn;
    grR06TIPBAR2: TdxDBGridColumn;
    grR06TIPBAR3: TdxDBGridColumn;
    grR06QTDBAR3: TdxDBGridColumn;
    grR06CUBBAR3: TdxDBGridColumn;
    grR06PESBAR3: TdxDBGridColumn;
    EstR06REFPRO: TStringField;
    grR06REFPRO: TdxDBGridColumn;
    EstR06ID2PRO: TStringField;
    EstR06DSCIMP: TStringField;
    grR06ID2PRO: TdxDBGridColumn;
    grR06DSCIMP: TdxDBGridColumn;
    pnSequenc: TPanel;
    lbSequenc: TLabel;
    ProgressBar: TdxfProgressBar;
    quSQL1: TwwQuery;
    grR06CODANT: TdxDBGridMaskColumn;
    Marcatodasascolunas1: TMenuItem;
    Desmarcatodasascolunas1: TMenuItem;
    N1: TMenuItem;
    grR06OBSST1: TdxDBGridMaskColumn;
    EstR06OBSST1: TStringField;
    Colunas2: TMenuItem;
    grR06Mk1Ite: TdxDBGridColumn;
    grR06MK2ITE: TdxDBGridColumn;
    grR06MK3ITE: TdxDBGridColumn;
    grR06MK4ITE: TdxDBGridColumn;
    grR06MK5ITE: TdxDBGridColumn;
    EstR06OBSST2: TStringField;
    grR06OBSST2: TdxDBGridMaskColumn;
    EstR06CLEIPI: TStringField;
    grR06CLEIPI: TdxDBGridColumn;
    EstR06CODSTS: TStringField;
    EstR06CODSTE: TStringField;
    grR06CodSts: TdxDBGridColumn;
    grR06CodSte: TdxDBGridColumn;
    EdCodSte: TdxColorEdit;
    Label94: TLabel;
    EdCodSts: TdxColorEdit;
    Label95: TLabel;
    bCodSts: TSpeedButton;
    bCodSte: TSpeedButton;
    edNomSts: TdxColorEdit;
    edNomSte: TdxColorEdit;
    EstR06LOCPRO: TStringField;
    grR06LOCPRO: TdxDBGridColumn;
    EstR06FLGLIS: TStringField;
    EstR06VCPITE: TFloatField;
    EstR06DTCPRO: TDateTimeField;
    grR06FLGLIS: TdxDBGridColumn;
    grR06QTDRMA: TdxDBGridColumn;
    grR06DTCPRO: TdxDBGridColumn;
    EstR06QTDRMA: TFloatField;
    grR06VCPITE: TdxDBGridColumn;
    EstR06CODNCM: TStringField;
    grR06LIQEMB: TdxDBGridColumn;
    grR06BRTEMB: TdxDBGridColumn;
    grR06ALTPRO: TdxDBGridColumn;
    grR06COMPRO: TdxDBGridColumn;
    grR06LARPRO: TdxDBGridColumn;
    grR06CUBPRO: TdxDBGridColumn;
    grR06CXAPRO: TdxDBGridColumn;
    grR06QTDVOL: TdxDBGridColumn;
    grR06QTDEMB1: TdxDBGridColumn;
    grR06PESCUB: TdxDBGridColumn;
    grR06PESLIQ: TdxDBGridColumn;
    grR06PESBRT: TdxDBGridColumn;
    EstR06CMP_PESO_LIQUIDO: TFloatField;
    EstR06CMP_PESO_BRUTO: TFloatField;
    EstR06CMP_ALTURA: TFloatField;
    EstR06CMP_COMPRIMENTO: TFloatField;
    EstR06CMP_LARGURA: TFloatField;
    EstR06CMP_CUBAGEM: TFloatField;
    EstR06CMP_QTD_CAIXA: TFloatField;
    EstR06PROD_QTD_VOLUMES: TIntegerField;
    EstR06PROD_QTD_EMBALAGEM: TFloatField;
    EstR06PROD_CUBAGEM: TFloatField;
    EstR06PROD_PESO_LIQUIDO: TFloatField;
    EstR06PROD_PESO_BRUTO: TFloatField;
    EstR06CEST: TStringField;
    grR06Column80: TdxDBGridColumn;
    grR06Column81: TdxDBGridColumn;
    EstR06CODST1: TStringField;
    grR06Column82: TdxDBGridColumn;
    EstR06FCI: TStringField;
    grR06Column83: TdxDBGridColumn;
    EstR06CSTITE: TFloatField;
    grR06CSTITE: TdxDBGridColumn;
    grR06OBSPRO: TdxDBGridColumn;
    grR06Column86: TdxDBGridMaskColumn;
    grR06Column87: TdxDBGridMaskColumn;
    grR06Column88: TdxDBGridMaskColumn;
    grR06Column89: TdxDBGridMaskColumn;
    grR06Column90: TdxDBGridMaskColumn;
    grR06Column91: TdxDBGridMaskColumn;
    grR06Column92: TdxDBGridMaskColumn;
    grR06Column93: TdxDBGridMaskColumn;
    grR06Column94: TdxDBGridMaskColumn;
    grR06Column95: TdxDBGridMaskColumn;
    grR06CODCOM: TdxDBGridMaskColumn;
    grR06Column97: TdxDBGridMaskColumn;
    grR06Column98: TdxDBGridMaskColumn;
    grR06Column99: TdxDBGridMaskColumn;
    grR06Column100: TdxDBGridMaskColumn;
    grR06Column101: TdxDBGridMaskColumn;
    grR06Column102: TdxDBGridMaskColumn;
    grR06Column103: TdxDBGridMaskColumn;
    grR06Column104: TdxDBGridMaskColumn;
    grR06Column105: TdxDBGridMaskColumn;
    grR06Column106: TdxDBGridMaskColumn;
    grR06Column107: TdxDBGridMaskColumn;
    grR06Column108: TdxDBGridMaskColumn;
    grR06Column109: TdxDBGridMaskColumn;
    grR06DS1ITE: TdxDBGridMaskColumn;
    grR06DS2ITE: TdxDBGridMaskColumn;
    grR06DS3ITE: TdxDBGridMaskColumn;
    grR06DS4ITE: TdxDBGridMaskColumn;
    grR06DS5ITE: TdxDBGridMaskColumn;
    grR06Column115: TdxDBGridMaskColumn;
    grR06Column116: TdxDBGridMaskColumn;
    grR06Column117: TdxDBGridMaskColumn;
    grR06Column118: TdxDBGridMaskColumn;
    grR06Column119: TdxDBGridDateColumn;
    grR06Column120: TdxDBGridMaskColumn;
    grR06Column121: TdxDBGridMaskColumn;
    grR06Column122: TdxDBGridMaskColumn;
    grR06Column123: TdxDBGridMaskColumn;
    grR06Column124: TdxDBGridMaskColumn;
    grR06Column125: TdxDBGridMaskColumn;
    grR06MS1ITE: TdxDBGridMaskColumn;
    grR06MS2ITE: TdxDBGridMaskColumn;
    grR06MS3ITE: TdxDBGridMaskColumn;
    grR06MS4ITE: TdxDBGridMaskColumn;
    grR06MS5ITE: TdxDBGridMaskColumn;
    grR06Column131: TdxDBGridMaskColumn;
    grR06Column132: TdxDBGridMaskColumn;
    grR06Column133: TdxDBGridMaskColumn;
    grR06Column134: TdxDBGridMaskColumn;
    grR06Column135: TdxDBGridMaskColumn;
    grR06Column136: TdxDBGridMaskColumn;
    grR06Column137: TdxDBGridMaskColumn;
    grR06Column138: TdxDBGridMaskColumn;
    grR06Column139: TdxDBGridMaskColumn;
    grR06Column140: TdxDBGridMaskColumn;
    grR06Column141: TdxDBGridMaskColumn;
    grR06Column142: TdxDBGridMaskColumn;
    grR06Column143: TdxDBGridMaskColumn;
    grR06Column144: TdxDBGridMaskColumn;
    grR06Column145: TdxDBGridMaskColumn;
    grR06Column146: TdxDBGridMaskColumn;
    grR06Column147: TdxDBGridMaskColumn;
    grR06Column148: TdxDBGridMaskColumn;
    grR06Column149: TdxDBGridMaskColumn;
    grR06Column150: TdxDBGridMaskColumn;
    grR06Column151: TdxDBGridMaskColumn;
    grR06Column152: TdxDBGridMaskColumn;
    grR06Column153: TdxDBGridMaskColumn;
    grR06Column154: TdxDBGridMaskColumn;
    grR06Column155: TdxDBGridMaskColumn;
    grR06Column156: TdxDBGridMaskColumn;
    grR06Column157: TdxDBGridMaskColumn;
    grR06Column158: TdxDBGridMaskColumn;
    grR06Column159: TdxDBGridMaskColumn;
    grR06Column160: TdxDBGridMaskColumn;
    grR06Column161: TdxDBGridMaskColumn;
    grR06Column162: TdxDBGridMaskColumn;
    grR06Column163: TdxDBGridDateColumn;
    grR06CODNCM: TdxDBGridMaskColumn;
    grR06CMP_PESO_LIQUIDO: TdxDBGridMaskColumn;
    grR06CMP_PESO_BRUTO: TdxDBGridMaskColumn;
    grR06CMP_ALTURA: TdxDBGridMaskColumn;
    grR06CMP_COMPRIMENTO: TdxDBGridMaskColumn;
    grR06CMP_LARGURA: TdxDBGridMaskColumn;
    grR06CMP_CUBAGEM: TdxDBGridMaskColumn;
    grR06CMP_QTD_CAIXA: TdxDBGridMaskColumn;
    grR06PROD_QTD_VOLUMES: TdxDBGridMaskColumn;
    grR06PROD_QTD_EMBALAGEM: TdxDBGridMaskColumn;
    grR06PROD_CUBAGEM: TdxDBGridMaskColumn;
    grR06PROD_PESO_LIQUIDO: TdxDBGridMaskColumn;
    grR06PROD_PESO_BRUTO: TdxDBGridMaskColumn;
    grR06CEST: TdxDBGridMaskColumn;
    grR06CODST1: TdxDBGridMaskColumn;
    grR06FCI: TdxDBGridMaskColumn;
    grR06Column180: TdxDBGridMaskColumn;
    grR06Column181: TdxDBGridMaskColumn;
    grR06Column182: TdxDBGridMaskColumn;
    grR06Column183: TdxDBGridMaskColumn;
    grR06Column184: TdxDBGridMaskColumn;
    grR06Column185: TdxDBGridMaskColumn;
    grR06Column186: TdxDBGridMaskColumn;
    grR06Column187: TdxDBGridMaskColumn;
    grR06Column188: TdxDBGridMaskColumn;
    grR06Column189: TdxDBGridMaskColumn;
    grR06Column190: TdxDBGridMaskColumn;
    grR06Column191: TdxDBGridMaskColumn;
    grR06Column192: TdxDBGridMaskColumn;
    grR06Column193: TdxDBGridMaskColumn;
    grR06Column194: TdxDBGridMaskColumn;
    grR06Column195: TdxDBGridMaskColumn;
    grR06Column196: TdxDBGridMaskColumn;
    grR06Column197: TdxDBGridMaskColumn;
    grR06Column198: TdxDBGridMaskColumn;
    grR06Column199: TdxDBGridMaskColumn;
    grR06Column200: TdxDBGridMaskColumn;
    grR06Column201: TdxDBGridMaskColumn;
    grR06Column202: TdxDBGridMaskColumn;
    grR06Column203: TdxDBGridMaskColumn;
    grR06Column204: TdxDBGridMaskColumn;
    grR06Column205: TdxDBGridMaskColumn;
    grR06Column206: TdxDBGridMaskColumn;
    grR06Column207: TdxDBGridMaskColumn;
    grR06Column208: TdxDBGridMaskColumn;
    grR06Column209: TdxDBGridMaskColumn;
    grR06Column210: TdxDBGridMaskColumn;
    grR06Column211: TdxDBGridMaskColumn;
    grR06Column212: TdxDBGridMaskColumn;
    grR06Column213: TdxDBGridMaskColumn;
    grR06Column214: TdxDBGridDateColumn;
    grR06Column215: TdxDBGridMaskColumn;
    grR06Column216: TdxDBGridMaskColumn;
    grR06Column217: TdxDBGridMaskColumn;
    grR06Column218: TdxDBGridMaskColumn;
    grR06Column219: TdxDBGridMaskColumn;
    grR06Column220: TdxDBGridMaskColumn;
    grR06Column221: TdxDBGridMaskColumn;
    grR06Column222: TdxDBGridMaskColumn;
    grR06Column223: TdxDBGridMaskColumn;
    grR06Column224: TdxDBGridMaskColumn;
    grR06Column225: TdxDBGridMaskColumn;
    grR06Column226: TdxDBGridMaskColumn;
    grR06Column227: TdxDBGridMaskColumn;
    grR06Column228: TdxDBGridMaskColumn;
    grR06Column229: TdxDBGridMaskColumn;
    grR06Column230: TdxDBGridMaskColumn;
    grR06Column231: TdxDBGridMaskColumn;
    grR06Column232: TdxDBGridMaskColumn;
    grR06Column233: TdxDBGridMaskColumn;
    grR06Column234: TdxDBGridMaskColumn;
    grR06Column235: TdxDBGridMaskColumn;
    grR06Column236: TdxDBGridMaskColumn;
    grR06Column237: TdxDBGridMaskColumn;
    grR06Column238: TdxDBGridMaskColumn;
    grR06Column239: TdxDBGridMaskColumn;
    grR06Column240: TdxDBGridMaskColumn;
    grR06Column241: TdxDBGridMaskColumn;
    grR06Column242: TdxDBGridMaskColumn;
    grR06Column243: TdxDBGridMaskColumn;
    grR06Column244: TdxDBGridMaskColumn;
    grR06Column245: TdxDBGridMaskColumn;
    grR06Column246: TdxDBGridMaskColumn;
    grR06Column247: TdxDBGridMaskColumn;
    grR06Column248: TdxDBGridMaskColumn;
    grR06Column249: TdxDBGridMaskColumn;
    grR06Column250: TdxDBGridMaskColumn;
    grR06Column251: TdxDBGridMaskColumn;
    grR06Column252: TdxDBGridMaskColumn;
    grR06Column253: TdxDBGridMaskColumn;
    grR06Column254: TdxDBGridMaskColumn;
    grR06Column255: TdxDBGridMaskColumn;
    grR06Column256: TdxDBGridMaskColumn;
    grR06Column257: TdxDBGridMaskColumn;
    grR06Column258: TdxDBGridDateColumn;
    grR06Column259: TdxDBGridMaskColumn;
    grR06Column260: TdxDBGridMaskColumn;
    grR06Column261: TdxDBGridMaskColumn;
    grR06Column262: TdxDBGridMaskColumn;
    grR06Column263: TdxDBGridMaskColumn;
    grR06Column264: TdxDBGridMaskColumn;
    grR06Column265: TdxDBGridMaskColumn;
    grR06Column266: TdxDBGridMaskColumn;
    grR06Column267: TdxDBGridMaskColumn;
    grR06Column268: TdxDBGridMaskColumn;
    grR06Column269: TdxDBGridMaskColumn;
    grR06Column270: TdxDBGridMaskColumn;
    grR06Column271: TdxDBGridMaskColumn;
    grR06Column272: TdxDBGridMaskColumn;
    grR06Column273: TdxDBGridMaskColumn;
    grR06Column274: TdxDBGridMaskColumn;
    grR06Column275: TdxDBGridMaskColumn;
    EstR06DSCPRO: TStringField;
    EstR06CARACTERISTICA: TStringField;
    grR06Column276: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure grR06ReloadGroupList(Sender: TObject);
    procedure HTMLClick(Sender: TObject);
    procedure ExcelClick(Sender: TObject);
    procedure XMLClick(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure bPsqClpClick(Sender: TObject);
    procedure bPsqGruClick(Sender: TObject);
    procedure bPsqSubClick(Sender: TObject);
    procedure bPsqProClick(Sender: TObject);
    procedure EdCodClpExit(Sender: TObject);
    procedure EdCodGruExit(Sender: TObject);
    procedure EdCodSubExit(Sender: TObject);
    procedure EdCodProExit(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure EdCodEmpKeyPress(Sender: TObject; var Key: Char);
    procedure EdCodCatExit(Sender: TObject);
    procedure bPsqCatClick(Sender: TObject);
    procedure EdCodTipExit(Sender: TObject);
    procedure bPsqTipClick(Sender: TObject);
    procedure EdCodMrcExit(Sender: TObject);
    procedure PsqMrcClick(Sender: TObject);
    procedure Colunas1Click(Sender: TObject);
    procedure BbPsqEmpClick(Sender: TObject);
    procedure EdCodEmpExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Marcatodasascolunas1Click(Sender: TObject);
    procedure Desmarcatodasascolunas1Click(Sender: TObject);
    procedure bCodSteClick(Sender: TObject);
    procedure bCodStsClick(Sender: TObject);
    procedure EdCodStsExit(Sender: TObject);
    procedure EdCodSteExit(Sender: TObject);
    procedure EdCodStsKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodSteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    SeqArq: string;
    sBase, sFiltro: string;
    procedure Save(ADefaultExt, AFilter, AFileName: string; AMethod: TSaveMethod);
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmEstR06: TfmEstR06;

implementation

uses dxDemoUtils, ShellAPI, Bbgeral, BbMensag, Bbfuncao, ManGDB, FPreview,
  PsqEmp, PsqClp, ManPri, AuxIni, ManCol;

{$R *.DFM}

procedure TfmEstR06.Save(ADefaultExt, AFilter, AFileName: string; AMethod: TSaveMethod);
begin
  with SaveDialog do
  begin

    DefaultExt := ADefaultExt;

    Filter := AFilter;

    FileName := AFileName;

    if Execute then
      AMethod(FileName, True);

  end;
end;

procedure TfmEstR06.FormCreate(Sender: TObject);
begin

  Randomize;
  SeqArq := copy(FormatDateTime('dd/mm/yyyy', Date), 1, 2) +
    copy(FormatDateTime('dd/mm/yyyy', Date), 4, 2) +
    copy(FormatDateTime('dd/mm/yyyy', Date), 7, 4) +
    copy(TimeToStr(Time), 1, 2) +
    copy(TimeToStr(Time), 4, 2) +
    copy(TimeToStr(Time), 7, 2) +
    FNumZeros(Trim(IntToStr(GUsu_Id)), 3) +
    FNumZeros(Trim(IntToStr(Random(50000))), 5);

  sBase := ' Select TextoOcor(IntStrZeros(EstPro.CodCat,3),''' + '-' + ''',EstCat.NomCat,''' + '' + ''',''' + '' + ''',''' + '' + ''',''' + '' +
    ''') as NomCat,' +
    ' TextoOcor(IntStrZeros(EstPro.CodMrc,3),''' + '-' + ''',EstMrc.NomMrc,''' + '' + ''',''' + '' + ''',''' + '' + ''',''' + '' + ''') as NomMrc,' +
    ' TextoOcor(IntStrZeros(EstPro.CodTip,3),''' + '-' + ''',EstTip.NomTip,''' + '' + ''',''' + '' + ''',''' + '' + ''',''' + '' + ''') as NomTip,' +
    ' TextoOcor(EstR06.CodGru,''' + '-' + ''',EstGru.NomGru,''' + '' + ''',''' + '' + ''',''' + '' + ''',''' + '' + ''') as NomGru,' +
    ' TextoOcor(EstR06.CodSub,''' + '-' + ''',EstSub.NomSub,''' + '' + ''',''' + '' + ''',''' + '' + ''',''' + '' + ''') as NomSub,' +
    ' TextoOcor(EstIcm.CodSt1,EstIcm.CodSt2,''' + '' + ''',''' + '' + ''',''' + '' + ''',''' + '' + ''',''' + '' + ''') as CodSit,' +
    ' EstIpi.PerIpi,' +
    ' EstIpi.PerImp,' +
    ' EstIcm.PerIcm,' +
    ' IPIE.ClsIpi CLEIPI,' +
    ' IPIS.clsipi ,' +
    ' EstR06.CodPro,' +
    ' EstR06.ObsSt1,' +
    ' EstR06.ObsSt2,' +
    ' EstPro.QtdEmb,' +
    ' EstPro.DscPro,' +
    ' EstPro.IdePro,' +
    ' EstPro.Id2Pro,' +
    ' EstPro.DsrImp as DscImp,' +
    ' EstPro.RefPro,' +
    ' EstPro.SimPro,' +
    ' EstPro.CodAnt,' +
    ' EstPro.CodUns,' +
    ' EstPro.CodCom,' +
    ' EstPro.NumPro,' +
    ' EstPro.LiqEmb,' +
    ' EstPro.CodSts,' +
    ' EstPro.CodSte,' +
    ' (Select CodBar From EstBar Where EstBar.CodClp = EstPro.CodClp' +
    ' and EstBar.CodGru = EstPro.CodGru' +
    ' and EstBar.CodSub = EstPro.CodSub' +
    ' and EstBar.CodPro = EstPro.CodPro' +
    ' and EstBar.NroBar = 1) as CodBar1,' +
    ' (Select QtdEmb From EstBar Where EstBar.CodClp = EstPro.CodClp' +
    ' and EstBar.CodGru = EstPro.CodGru' +
    ' and EstBar.CodSub = EstPro.CodSub' +
    ' and EstBar.CodPro = EstPro.CodPro' +
    ' and EstBar.NroBar = 1) as QtdBar1,' +
    ' (Select CubEmb From EstBar Where EstBar.CodClp = EstPro.CodClp' +
    ' and EstBar.CodGru = EstPro.CodGru' +
    ' and EstBar.CodSub = EstPro.CodSub' +
    ' and EstBar.CodPro = EstPro.CodPro' +
    ' and EstBar.NroBar = 1) as CubBar1,' +
    ' (Select PesEmb From EstBar Where EstBar.CodClp = EstPro.CodClp' +
    ' and EstBar.CodGru = EstPro.CodGru' +
    ' and EstBar.CodSub = EstPro.CodSub' +
    ' and EstBar.CodPro = EstPro.CodPro' +
    ' and EstBar.NroBar = 1) as PesBar1,' +
    ' (Select EstEmb.NomEmb From EstBar,EstEmb Where EstBar.CodEmb = EstEmb.CodEmb' +
    ' and EstBar.CodClp = EstPro.CodClp' +
    ' and EstBar.CodGru = EstPro.CodGru' +
    ' and EstBar.CodSub = EstPro.CodSub' +
    ' and EstBar.CodPro = EstPro.CodPro' +
    ' and EstBar.NroBar = 1) as TipBar1,' +
    ' (Select CodBar From EstBar Where EstBar.CodClp = EstPro.CodClp' +
    ' and EstBar.CodGru = EstPro.CodGru' +
    ' and EstBar.CodSub = EstPro.CodSub' +
    ' and EstBar.CodPro = EstPro.CodPro' +
    ' and EstBar.NroBar = 2) as CodBar2,' +
    ' (Select QtdEmb From EstBar Where EstBar.CodClp = EstPro.CodClp' +
    ' and EstBar.CodGru = EstPro.CodGru' +
    ' and EstBar.CodSub = EstPro.CodSub' +
    ' and EstBar.CodPro = EstPro.CodPro' +
    ' and EstBar.NroBar = 2) as QtdBar2,' +
    ' (Select CubEmb From EstBar Where EstBar.CodClp = EstPro.CodClp' +
    ' and EstBar.CodGru = EstPro.CodGru' +
    ' and EstBar.CodSub = EstPro.CodSub' +
    ' and EstBar.CodPro = EstPro.CodPro' +
    ' and EstBar.NroBar = 2) as CubBar2,' +
    ' (Select PesEmb From EstBar Where EstBar.CodClp = EstPro.CodClp' +
    ' and EstBar.CodGru = EstPro.CodGru' +
    ' and EstBar.CodSub = EstPro.CodSub' +
    ' and EstBar.CodPro = EstPro.CodPro' +
    ' and EstBar.NroBar = 2) as PesBar2,' +
    ' (Select EstEmb.NomEmb From EstBar,EstEmb Where EstBar.CodEmb = EstEmb.CodEmb' +
    ' and EstBar.CodClp = EstPro.CodClp' +
    ' and EstBar.CodGru = EstPro.CodGru' +
    ' and EstBar.CodSub = EstPro.CodSub' +
    ' and EstBar.CodPro = EstPro.CodPro' +
    ' and EstBar.NroBar = 2) as TipBar2,' +
    ' (Select CodBar From EstBar Where EstBar.CodClp = EstPro.CodClp' +
    ' and EstBar.CodGru = EstPro.CodGru' +
    ' and EstBar.CodSub = EstPro.CodSub' +
    ' and EstBar.CodPro = EstPro.CodPro' +
    ' and EstBar.NroBar = 3) as CodBar3,' +
    ' (Select QtdEmb From EstBar Where EstBar.CodClp = EstPro.CodClp' +
    ' and EstBar.CodGru = EstPro.CodGru' +
    ' and EstBar.CodSub = EstPro.CodSub' +
    ' and EstBar.CodPro = EstPro.CodPro' +
    ' and EstBar.NroBar = 3) as QtdBar3,' +
    ' (Select CubEmb From EstBar Where EstBar.CodClp = EstPro.CodClp' +
    ' and EstBar.CodGru = EstPro.CodGru' +
    ' and EstBar.CodSub = EstPro.CodSub' +
    ' and EstBar.CodPro = EstPro.CodPro' +
    ' and EstBar.NroBar = 3) as CubBar3,' +
    ' (Select PesEmb From EstBar Where EstBar.CodClp = EstPro.CodClp' +
    ' and EstBar.CodGru = EstPro.CodGru' +
    ' and EstBar.CodSub = EstPro.CodSub' +
    ' and EstBar.CodPro = EstPro.CodPro' +
    ' and EstBar.NroBar = 3) as PesBar3,' +
    ' (Select EstEmb.NomEmb From EstBar,EstEmb Where EstBar.CodEmb = EstEmb.CodEmb' +
    ' and EstBar.CodClp = EstPro.CodClp' +
    ' and EstBar.CodGru = EstPro.CodGru' +
    ' and EstBar.CodSub = EstPro.CodSub' +
    ' and EstBar.CodPro = EstPro.CodPro' +
    ' and EstBar.NroBar = 3) as TipBar3,' +
    ' EstPro.BrtEmb,' +
    ' EstPro.CODNCM,' +
    ' EstPro.CubPro,' +
    ' EstPro.CxaPro,' +

    ' EstPro.FLGLIS,' +
    ' EstIte.QTDRMA,' +
    ' EstPro.DTCPRO,' +

    ' FinCom.PerCom,' +
    ' EstIte.VmeIte,' +
    ' EstIte.VpfIte,' +
    ' EstIte.Vb1Ite,' +
    ' EstIte.Vb2Ite,' +
    ' EstIte.Vb3Ite,' +
    ' EstIte.Vb4Ite,' +
    ' EstIte.Vb5Ite,' +
    ' EstIte.Ms1Ite,' +
    ' EstIte.Ms2Ite,' +
    ' EstIte.Ms3Ite,' +
    ' EstIte.Ms4Ite,' +
    ' EstIte.Ms5Ite,' +
    ' EstIte.Mk1Ite,' +
    ' EstIte.Mk2Ite,' +
    ' EstIte.Mk3Ite,' +
    ' EstIte.Mk4Ite,' +
    ' EstIte.Mk5Ite,' +
    ' EstIte.QtmIte,' +
    ' EstIte.QmaIte,' +
    ' EstIte.Ds1Ite,' +
    ' EstIte.Ds2Ite,' +
    ' EstIte.Ds3Ite,' +
    ' EstIte.Ds4Ite,' +
    ' EstIte.Ds5Ite,' +
    //' EstIte.QtdIte,' +
    //Arnaldo
    ' EstIte.QtrIte QtdIte,' +
    ' EstIte.QtaIte,' +
    ' EstIte.VcrIte,' +
    ' EstIte.DulCmp,' +
    ' EstIte.QtdCmp,' +
    '        EstPro.CodGru || _UNICODE_FSS ''' + '.' + ''' || EstPro.CodSub || _UNICODE_FSS ''' + '.' + ''' || EstPro.CodPro as CodIte' +
    ' From EstR06 LEFT JOIN EstIte ON (EstR06.CodEmp = EstIte.CodEmp ' +
    '                 AND  EstR06.CodClp = EstIte.CodClp ' +
    '                 AND  EstR06.CodGru = EstIte.CodGru ' +
    '                 AND  EstR06.CodSub = EstIte.CodSub ' +
    '                 AND  EstR06.CodPro = EstIte.CodPro)' +
    ' LEFT JOIN EstPro ON (EstIte.CodClp = EstPro.CodClp ' +
    '                 AND  EstIte.CodGru = EstPro.CodGru ' +
    '                 AND  EstIte.CodSub = EstPro.CodSub ' +
    '                 AND  EstIte.CodPro = EstPro.CodPro)' +
    ' LEFT JOIN EstCat ON (EstPro.CodCat = EstCat.CodCat)' +
    ' LEFT JOIN EstMrc ON (EstPro.CodMrc = EstMrc.CodMrc)' +
    ' LEFT JOIN EstTip ON (EstPro.CodTip = EstTip.CodTip)' +
    ' LEFT JOIN EstSub ON (EstPro.CodGru = EstSub.CodGru)' +
    '                 AND (EstPro.CodSub = EstSub.CodSub)' +
    ' LEFT JOIN EstGru ON (EstSub.CodGru = EstGru.CodGru)' +
    ' LEFT JOIN FinCom ON (EstPro.CodCom = FinCom.CodCom)' +
    ' LEFT JOIN EstIcm ON (EstPro.IcmSai = EstIcm.CodIcm)' +
    '                 AND (EstPro.IcmTsd = EstIcm.TipIcm)' +
    ' LEFT JOIN EstIpi IPIE ON (EstPro.IpiEnt = EstIpi.CodIpi) AND (''Entrada'' = EstIpi.TipIpi) ' +
    ' LEFT JOIN EstIpi IPIS ON (EstPro.ipisai = EstIpi.CodIpi) AND (''Saida'' = EstIpi.TipIpi)' +
    '                 AND (EstPro.IpiTen = EstIpi.TipIpi)' +
    ' LEFT JOIN GerEmp ON (EstIte.CodEmp = GerEmp.CodEmp)';

  SaveDialog.InitialDir := ExtractFilePath(Application.ExeName);

end;

procedure TfmEstR06.FormShow(Sender: TObject);
begin
  inherited;
  EdCodEmp.SetFocus;
end;

procedure TfmEstR06.grR06ReloadGroupList(Sender: TObject);
begin
  inherited;
  (Sender as TdxDBGrid).FullExpand;
end;

procedure TfmEstR06.HTMLClick(Sender: TObject);
begin
  inherited;
  Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'Relação de informações cadastrais dos itens.htm', grR06.SaveToHTML);
end;

procedure TfmEstR06.ExcelClick(Sender: TObject);
begin
  inherited;
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Relação de informações cadastrais dos itens.xls', grR06.SaveToXLS);
end;

procedure TfmEstR06.XMLClick(Sender: TObject);
begin
  inherited;
  Save('xml', 'XML File (*.xml)|*.xml', 'Relação de informações cadastrais dos itens.xml', grR06.SaveToXML);
end;

procedure TfmEstR06.bPesquisaClick(Sender: TObject);
var
  UfeStr, codRegTrib: string;
const
  _BR = #13;
begin
  inherited;

  codRegTrib := IfThen(
                pos('Simples', fmManGDB.BuscaSimples('GEREMP','TIPEMP',' 1 = 1')) > 0, '1', '3');

  ActiveControl := nil;

  if GFlgAce <> 'Sim' then
  begin

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select FLGDEL,SEQIMP from GerPar';
      Open;

      if Trim(FieldbyName('FLGDEL').AsString) = '*' then
      begin

        GFlgAce := 'Sim';

        if FieldbyName('SEQIMP').AsInteger > 0 then
          GEmpLog := FieldbyName('SEQIMP').AsInteger;

      end
      else
      begin

        GEmpLog := 0;
        GFlgAce := 'Nao';

      end;
    end;
  end;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Delete From EstR06 Where EstR06.SeqArq = ' + QuotedStr(SeqArq);
    ExecSQL;

  end;

  sFiltro := '';

  if Trim(EdCodEmp.Text) = '' then
    fmsgErro('Campo de preenchimento obrigatório não informado. Empresa.', EdCodEmp);

  if Trim(EdCodCat.Text) <> '' then
    sFiltro := sFiltro + ' and EstPro.CodCat = ' + QuotedStr(EdCodCat.Text);

  case rgStatus.Itemindex of
    0: sFiltro := sFiltro + ' and EstPro.FlbPro = ' + QuotedStr(' ');
    1: sFiltro := sFiltro + ' and EstPro.FlbPro = ' + QuotedStr('*');
  end;

  case rgSubst.Itemindex of
    0: sFiltro := sFiltro + ' and ( EstPro.CodSte is not null or EstPro.CodSts is not null )';
    1: sFiltro := sFiltro + ' and EstPro.CodSte is null and EstPro.CodSts is null';
  end;

  case rgImagem.Itemindex of
    0: sFiltro := sFiltro + ' and EstPro.ImgPro is not null';
    1: sFiltro := sFiltro + ' and EstPro.ImgPro is null';
  end;

  if Trim(EdCodEmp.Text) <> '' then
    sFiltro := sFiltro + ' and EstIte.CodEmp = ' + QuotedStr(EdCodEmp.Text);
  if Trim(EdCodClp.Text) <> '' then
    sFiltro := sFiltro + ' and EstPro.CodClp = ' + QuotedStr(EdCodClp.Text);
  if Trim(EdCodTip.Text) <> '' then
    sFiltro := sFiltro + ' and EstPro.CodTip = ' + QuotedStr(EdCodTip.Text);
  if Trim(EdCodMrc.Text) <> '' then
    sFiltro := sFiltro + ' and EstPro.CodMrc = ' + QuotedStr(EdCodMrc.Text);
  if Trim(EdCodGru.Text) <> '' then
    sFiltro := sFiltro + ' and EstPro.CodGru = ' + QuotedStr(EdCodGru.Text);
  if Trim(EdCodSub.Text) <> '' then
    sFiltro := sFiltro + ' and EstPro.CodSub = ' + QuotedStr(EdCodSub.Text);
  if Trim(EdCodPro.Text) <> '' then
    sFiltro := sFiltro + ' and EstPro.CodPro = ' + QuotedStr(EdCodPro.Text);

  if trim(EdCodSte.Text) <> '' then
    sFiltro := ' and ( estPro.CodSte = ' + QuotedStr(EdCodSte.text) + ' and estStr.tipStr = ''Entrada'')';

  if trim(EdCodSts.Text) <> '' then
    sFiltro := ' and ( estPro.CodSts = ' + QuotedStr(EdCodSts.text) + ' and estStr.tipStr = ''Saida'')';

  if GFlgAce = 'Sim' then
  begin

    if GEmpLog > 0 then
      sFiltro := sFiltro + ' and EstIte.CodEmp = ' + QuotedStr(IntToStr(GEmpLog))
    else
      sFiltro := sFiltro + ' and GerEmp.CodFil > 0';

  end;

  {with quSQL, SQL do begin

        Close;
        Text := ' Insert Into EstR06(SeqArq,CodEmp,CodClp,CodGru,CodSub,CodPro,CodSte,TipSte,CodSts,TipSts)' +
           ' Select ' + QuotedStr(SeqArq) + ',' +
           '        EstIte.CodEmp,' +
           '        EstPro.CodClp,' +
           '        EstPro.CodGru,' +
           '        EstPro.CodSub,' +
           '        EstPro.CodPro,' +
           '        EstPro.CodSte,' +
           '        EstPro.TipSte,' +
           '        EstPro.CodSts,' +
           '        EstPro.TipSts ' +
           ' From EstIte,EstPro' +
           ' Where EstIte.CodClp = EstPro.CodClp' +
           '   and EstIte.CodGru = EstPro.CodGru' +
           '   and EstIte.CodSub = EstPro.CodSub' +
           '   and EstIte.CodPro = EstPro.CodPro' + sFiltro;
        ExecSQL;

     end;

  try

     pnSequenc.Visible := True;

     ProgressBar.Position := 0;

     with quSQL, SQL do begin

           Close;
           Text := ' Select Count(*) as QtdReg From EstR06 Where EstR06.SeqArq = ' + QuotedStr(SeqArq);
           Open;

           ProgressBar.Max := FieldbyName('QtdReg').AsInteger;

        end;

     with quSQL, SQL do begin

           Close;
           Text := ' Select * From EstR06 Where EstR06.SeqArq = ' + QuotedStr(SeqArq);
           Open;

        end;

     while not quSQL.EOF do begin

           if Trim(quSQL.FieldbyName('CodSte').AsString) <> '' then begin

                 UfeStr := '';

                 with quSQL1, SQL do begin

                       Close;
                       Text := ' Select EstUfe.SigUfe,' +
                          '        EstUfe.MrgSub ' +
                          ' From EstUfe' +
                          ' Where EstUfe.CodStr = ' + QuotedStr(quSQL.FieldbyName('CodSte').AsString) + ' and EstUfe.TipStr = ' + QuotedStr('Entrada');
                       Open;
                       First;

                    end;

                 while not quSQL1.EOF do begin

                       if quSQL1.FieldbyName('MrgSub').AsFloat > 0 then begin

                             if Trim(UfeStr) = '' then
                                UfeStr := quSQL1.FieldbyName('SigUfe').AsString + ' ' + preString(FormatFloat('##0.00', quSQL1.FieldbyName('MrgSub').AsFloat), 2) + '%'
                             else
                                UfeStr := UfeStr + ' ' + quSQL1.FieldbyName('SigUfe').AsString + ' ' + preString(FormatFloat('##0.00', quSQL1.FieldbyName('MrgSub').AsFloat), 2) + '%';

                          end;

                       quSQL1.Next;

                    end;

                 if Trim(UfeStr) <> '' then begin

                       with quSQL1, SQL do begin

                             Close;
                             Text := ' Update EstR06 Set ObsSt1 = ' + QuotedStr(Trim(UfeStr)) +
                                ' Where EstR06.SeqArq = ' + QuotedStr(SeqArq) +
                                '   and EstR06.CodEmp = ' + QuotedStr(IntToStr(quSQL.FieldbyName('CodEmp').AsInteger)) +
                                '   and EstR06.CodClp = ' + QuotedStr(quSQL.FieldbyName('CodClp').AsString) +
                                '   and EstR06.CodGru = ' + QuotedStr(quSQL.FieldbyName('CodGru').AsString) +
                                '   and EstR06.CodSub = ' + QuotedStr(quSQL.FieldbyName('CodSub').AsString) +
                                '   and EstR06.CodPro = ' + QuotedStr(quSQL.FieldbyName('CodPro').AsString);
                             ExecSQL;

                          end;
                    end;
              end;

           if Trim(quSQL.FieldbyName('CodSts').AsString) <> '' then begin

                 UfeStr := '';

                 with quSQL1, SQL do begin

                       Close;
                       Text := ' Select EstUfe.SigUfe,' +
                          '        EstUfe.MrgSub ' +
                          ' From EstUfe' +
                          ' Where EstUfe.CodStr = ' + QuotedStr(quSQL.FieldbyName('CodSts').AsString) + ' and EstUfe.TipStr = ' + QuotedStr('Saida');
                       Open;
                       First;

                    end;

                 while not quSQL1.EOF do begin

                       if quSQL1.FieldbyName('MrgSub').AsFloat > 0 then begin

                             if Trim(UfeStr) = '' then
                                UfeStr := quSQL1.FieldbyName('SigUfe').AsString + ' ' + preString(FormatFloat('##0.00', quSQL1.FieldbyName('MrgSub').AsFloat), 2) + '%'
                             else
                                UfeStr := UfeStr + ' ' + quSQL1.FieldbyName('SigUfe').AsString + ' ' + preString(FormatFloat('##0.00', quSQL1.FieldbyName('MrgSub').AsFloat), 2) + '%';

                          end;

                       quSQL1.Next;

                    end;

                 if Trim(UfeStr) <> '' then begin

                       with quSQL1, SQL do begin

                             Close;
                             Text := ' Update EstR06 Set ObsSt2 = ' + QuotedStr(Trim(UfeStr)) +
                                ' Where EstR06.SeqArq = ' + QuotedStr(SeqArq) +
                                '   and EstR06.CodEmp = ' + QuotedStr(IntToStr(quSQL.FieldbyName('CodEmp').AsInteger)) +
                                '   and EstR06.CodClp = ' + QuotedStr(quSQL.FieldbyName('CodClp').AsString) +
                                '   and EstR06.CodGru = ' + QuotedStr(quSQL.FieldbyName('CodGru').AsString) +
                                '   and EstR06.CodSub = ' + QuotedStr(quSQL.FieldbyName('CodSub').AsString) +
                                '   and EstR06.CodPro = ' + QuotedStr(quSQL.FieldbyName('CodPro').AsString);
                             ExecSQL;

                          end;
                    end;
              end;

           ProgressBar.StepBy(1);

           quSQL.Next;

           Application.ProcessMessages;

        end;

  finally

     quSQL.Close;

     pnSequenc.Visible := False;

  end; }

  //sFiltro := ' Where EstR06.SeqArq = ' + QuotedStr(SeqArq);

  with EstR06, SQL do
  begin

    {Close;
    Text := sBase + sFiltro;
    Open;
    Last;
    first;}
    //Clipboard.AsText := Text;
    try
      Self.Cursor := crSQLWait;
      Close;
      Text :=

              ' Select' + _BR +
              '     EstPro.LIQEMB CMP_PESO_LIQUIDO,' + _BR +
              '     EstPro.BRTEMB CMP_PESO_BRUTO,' + _BR +
              '     EstPro.ALTPRO CMP_ALTURA,' + _BR +
              '     EstPro.COMPRO CMP_COMPRIMENTO,' + _BR +
              '     EstPro.LARPRO CMP_LARGURA,' + _BR +
              '     EstPro.CUBPRO CMP_CUBAGEM,' + _BR +
              '     EstPro.CXAPRO CMP_QTD_CAIXA,' + _BR +
              '     cast(substring(EstPro.OBSPRO from 1 for 254) as varchar(254)) CARACTERISTICA,' +_BR +
              ' ' + _BR +
              '     EstPro.QTDVOL PROD_QTD_VOLUMES,' + _BR +
              '     EstPro.QTDEMB PROD_QTD_EMBALAGEM,' + _BR +
              '     EstPro.PESCUB PROD_CUBAGEM,' + _BR +
              '     EstPro.PESLIQ PROD_PESO_LIQUIDO,' + _BR +
              '     EstPro.PESBRT PROD_PESO_BRUTO,' + _BR +
              ' ' + _BR +
              '     EstPro.CodSts, EstPro.FLGLIS, EstIte.VCPITE, EstIte.QTDRMA, EstPro.DTCPRO, EstPro.CodSte,' + _BR +
              '     TextoOcor(IntStrZeros(EstPro.CodCat,3),''-'',EstCat.NomCat,'''','''','''','''') as NomCat,' + _BR +
              '     TextoOcor(IntStrZeros(EstPro.CodMrc,3),''-'',EstMrc.NomMrc,'''','''','''','''') as NomMrc,' + _BR +
              '     TextoOcor(IntStrZeros(EstPro.CodTip,3),''-'',EstTip.NomTip,'''','''','''','''') as NomTip,' + _BR +
              '     TextoOcor(EstIte.CodGru,''-'',EstGru.NomGru,'''','''','''','''') as NomGru,' + _BR +
              '     TextoOcor(EstIte.CodSub,''-'',EstSub.NomSub,'''','''','''','''') as NomSub,' + _BR +
              '     TextoOcor(EstIcm.CodSt1,EstIcm.CodSt2,'''','''','''','''','''') as CodSit,' + _BR +
              '     EstIpi.PerIpi, IPIE.PerImp, EstIcm.PerIcm, IPIE.ClsIpi CLEIPI, IPIS.clsipi , EstIte.CodPro,' + _BR +
              '     Cast((select RESULT_CHAR FROM PRC_ITE_SUB_ENTRADA(estpro.codste)) as Varchar(250)) ObsSt1,' + _BR +
              '     Cast((select RESULT_CHAR FROM PRC_ITE_SUB_SAIDA(estpro.CodSts)) as VarChar(250)) ObsSt2,' + _BR +
              '     EstPro.QtdEmb, EstPro.DscPro, EstPro.IdePro, EstPro.Id2Pro, EstPro.DsrImp as DscImp,' + _BR +
              '     EstPro.RefPro,EstPro.SimPro, EstPro.CodAnt, EstPro.CodUns, EstPro.CodCom, EstPro.NumPro,' + _BR +
              '     EstPro.LocPro,'+ _BR +
              '     EstPro.FCI,'+ _BR +
              ' ' + _BR +
              '     (Select CodBar From EstBar Where EstBar.CodClp = EstPro.CodClp  and' + _BR +
              '                                      EstBar.CodGru = EstPro.CodGru  and' + _BR +
              '                                      EstBar.CodSub = EstPro.CodSub  and' + _BR +
              '                                      EstBar.CodPro = EstPro.CodPro  and' + _BR +
              '                                      EstBar.NroBar = 1) as CodBar1,' + _BR +
              ' ' + _BR +
              '     (Select QtdEmb From EstBar Where EstBar.CodClp = EstPro.CodClp  and' + _BR +
              '                                      EstBar.CodGru = EstPro.CodGru  and' + _BR +
              '                                      EstBar.CodSub = EstPro.CodSub  and' + _BR +
              '                                      EstBar.CodPro = EstPro.CodPro  and' + _BR +
              '                                      EstBar.NroBar = 1) as QtdBar1,' + _BR +
              ' ' + _BR +
              '     (Select CubEmb From EstBar Where EstBar.CodClp = EstPro.CodClp  and' + _BR +
              '                                      EstBar.CodGru = EstPro.CodGru  and' + _BR +
              '                                      EstBar.CodSub = EstPro.CodSub  and' + _BR +
              '                                      EstBar.CodPro = EstPro.CodPro  and' + _BR +
              '                                      EstBar.NroBar = 1) as CubBar1,' + _BR +
              ' ' + _BR +
              '     (Select PesEmb From EstBar Where EstBar.CodClp = EstPro.CodClp  and' + _BR +
              '                                      EstBar.CodGru = EstPro.CodGru  and' + _BR +
              '                                      EstBar.CodSub = EstPro.CodSub  and' + _BR +
              '                                      EstBar.CodPro = EstPro.CodPro  and' + _BR +
              '                                      EstBar.NroBar = 1) as PesBar1,' + _BR +
              ' ' + _BR +
              '     (Select EstEmb.NomEmb From EstBar,EstEmb Where EstBar.CodEmb = EstEmb.CodEmb  and' + _BR +
              '                                                    EstBar.CodClp = EstPro.CodClp  and' + _BR +
              '                                                    EstBar.CodGru = EstPro.CodGru  and' + _BR +
              '                                                    EstBar.CodSub = EstPro.CodSub  and' + _BR +
              '                                                    EstBar.CodPro = EstPro.CodPro  and' + _BR +
              '                                                    EstBar.NroBar = 1) as TipBar1,' + _BR +
              ' ' + _BR +
              '     (Select CodBar From EstBar Where EstBar.CodClp = EstPro.CodClp  and' + _BR +
              '                                      EstBar.CodGru = EstPro.CodGru  and' + _BR +
              '                                      EstBar.CodSub = EstPro.CodSub  and' + _BR +
              '                                      EstBar.CodPro = EstPro.CodPro  and' + _BR +
              '                                      EstBar.NroBar = 2) as CodBar2,' + _BR +
              ' ' + _BR +
              '     (Select QtdEmb From EstBar Where EstBar.CodClp = EstPro.CodClp  and' + _BR +
              '                                      EstBar.CodGru = EstPro.CodGru  and' + _BR +
              '                                      EstBar.CodSub = EstPro.CodSub  and' + _BR +
              '                                      EstBar.CodPro = EstPro.CodPro  and' + _BR +
              '                                      EstBar.NroBar = 2) as QtdBar2,' + _BR +
              ' ' + _BR +
              '     (Select CubEmb From EstBar Where EstBar.CodClp = EstPro.CodClp  and' + _BR +
              '                                      EstBar.CodGru = EstPro.CodGru  and' + _BR +
              '                                      EstBar.CodSub = EstPro.CodSub  and' + _BR +
              '                                      EstBar.CodPro = EstPro.CodPro  and' + _BR +
              '                                      EstBar.NroBar = 2) as CubBar2,' + _BR +
              ' ' + _BR +
              '     (Select PesEmb From EstBar Where EstBar.CodClp = EstPro.CodClp  and' + _BR +
              '                                      EstBar.CodGru = EstPro.CodGru  and' + _BR +
              '                                      EstBar.CodSub = EstPro.CodSub  and' + _BR +
              '                                      EstBar.CodPro = EstPro.CodPro  and' + _BR +
              '                                      EstBar.NroBar = 2) as PesBar2,' + _BR +
              ' ' + _BR +
              '     (Select EstEmb.NomEmb From EstBar,EstEmb Where EstBar.CodEmb = EstEmb.CodEmb  and' + _BR +
              '                                                    EstBar.CodClp = EstPro.CodClp  and' + _BR +
              '                                                    EstBar.CodGru = EstPro.CodGru  and' + _BR +
              '                                                    EstBar.CodSub = EstPro.CodSub  and' + _BR +
              '                                                    EstBar.CodPro = EstPro.CodPro  and' + _BR +
              '                                                    EstBar.NroBar = 2) as TipBar2,' + _BR +
              ' ' + _BR +
              '     (Select CodBar From EstBar Where EstBar.CodClp = EstPro.CodClp  and' + _BR +
              '                                      EstBar.CodGru = EstPro.CodGru  and' + _BR +
              '                                      EstBar.CodSub = EstPro.CodSub  and' + _BR +
              '                                      EstBar.CodPro = EstPro.CodPro  and' + _BR +
              '                                      EstBar.NroBar = 3) as CodBar3,' + _BR +
              ' ' + _BR +
              '     (Select QtdEmb From EstBar Where EstBar.CodClp = EstPro.CodClp  and' + _BR +
              '                                      EstBar.CodGru = EstPro.CodGru  and' + _BR +
              '                                      EstBar.CodSub = EstPro.CodSub  and' + _BR +
              '                                      EstBar.CodPro = EstPro.CodPro  and' + _BR +
              '                                      EstBar.NroBar = 3) as QtdBar3,' + _BR +
              ' ' + _BR +
              '     (Select CubEmb From EstBar Where EstBar.CodClp = EstPro.CodClp  and' + _BR +
              '                                      EstBar.CodGru = EstPro.CodGru  and' + _BR +
              '                                      EstBar.CodSub = EstPro.CodSub  and' + _BR +
              '                                      EstBar.CodPro = EstPro.CodPro  and' + _BR +
              '                                      EstBar.NroBar = 3) as CubBar3,' + _BR +
              ' ' + _BR +
              '     (Select PesEmb From EstBar Where EstBar.CodClp = EstPro.CodClp  and' + _BR +
              '                                      EstBar.CodGru = EstPro.CodGru  and' + _BR +
              '                                      EstBar.CodSub = EstPro.CodSub  and' + _BR +
              '                                      EstBar.CodPro = EstPro.CodPro  and' + _BR +
              '                                      EstBar.NroBar = 3) as PesBar3,' + _BR +
              ' ' + _BR +
              '     (Select EstEmb.NomEmb From EstBar,EstEmb Where EstBar.CodEmb = EstEmb.CodEmb  and' + _BR +
              '                                                    EstBar.CodClp = EstPro.CodClp  and' + _BR +
              '                                                    EstBar.CodGru = EstPro.CodGru  and' + _BR +
              '                                                    EstBar.CodSub = EstPro.CodSub  and' + _BR +
              '                                                    EstBar.CodPro = EstPro.CodPro  and' + _BR +
              '                                                    EstBar.NroBar = 3) as TipBar3,' + _BR +
              ' ' + _BR +
              '     EstIte.CSTITE, EstPro.CODNCM, EstPro.CEST, EstPro.CODST1, FinCom.PerCom, EstIte.VmeIte,' + _BR +
              '     EstIte.VpfIte, EstIte.Vb1Ite, EstIte.Vb2Ite, EstIte.Vb3Ite, EstIte.Vb4Ite, EstIte.Vb5Ite,' + _BR +
              '     EstIte.Ms1Ite, EstIte.Ms2Ite, EstIte.Ms3Ite, EstIte.Ms4Ite, EstIte.Ms5Ite, EstIte.Mk1Ite,' + _BR +
              '     EstIte.Mk2Ite, EstIte.Mk3Ite, EstIte.Mk4Ite, EstIte.Mk5Ite, EstIte.QtmIte, EstIte.QmaIte,' + _BR +
              '     EstIte.Ds1Ite, EstIte.Ds2Ite, EstIte.Ds3Ite, EstIte.Ds4Ite, EstIte.Ds5Ite, EstQte.QtdQte QtdIte,' + _BR +
              '     EstQte.Qtaqte QtaIte, EstIte.VcrIte, EstIte.DulCmp, EstIte.QtdCmp,' + _BR +
              '     EstPro.CodGru || _UNICODE_FSS ''.'' || EstPro.CodSub || _UNICODE_FSS ''.'' || EstPro.CodPro as CodIte' + _BR +
              ' From EstIte ite' + _BR +
              '     LEFT JOIN EstPro ON (EstIte.CodClp = EstPro.CodClp AND' + _BR +
              '                          EstIte.CodGru = EstPro.CodGru AND' + _BR +
              '                          EstIte.CodSub = EstPro.CodSub AND' + _BR +
              '                          EstIte.CodPro = EstPro.CodPro)' + _BR +
              '     LEFT JOIN EstQte qte ON (EstIte.CodEmp = EstQte.CodEmp' + _BR +
              '                         AND  EstIte.CodClp = EstQte.CodClp' + _BR +
              '                         AND  EstIte.CodGru = EstQte.CodGru' + _BR +
              '                         AND  EstIte.CodSub = EstQte.CodSub' + _BR +
              '                         AND  EstIte.CodPro = EstQte.CodPro)' + _BR +
              '     LEFT JOIN EstCat ON (EstPro.CodCat = EstCat.CodCat)' + _BR +
              '     LEFT JOIN EstMrc ON (EstPro.CodMrc = EstMrc.CodMrc)' + _BR +
              '     LEFT JOIN EstTip ON (EstPro.CodTip = EstTip.CodTip)' + _BR +
              '     LEFT JOIN EstSub ON (EstPro.CodGru = EstSub.CodGru) AND (EstPro.CodSub = EstSub.CodSub)' + _BR +
              '     LEFT JOIN EstGru ON (EstSub.CodGru = EstGru.CodGru)' + _BR +
              '     LEFT JOIN FinCom ON (EstIte.CodCm1 = FinCom.CodCom)' + _BR +

              '     LEFT JOIN EstIcm ON EstPro.IcmSai = EstIcm.CodIcm AND ' +
                                      ' EstPro.IcmTsd = EstIcm.TipIcm AND' +
                                      ' EstIcm.CodRegTrib = ' + codRegTrib + _BR +

              '     LEFT JOIN EstIpi IPIE ON (EstPro.IpiEnt = EstIpi.CodIpi) AND (''Entrada'' = EstIpi.TipIpi)' + _BR +
              '     LEFT JOIN EstIpi IPIS ON (EstPro.ipisai = EstIpi.CodIpi) AND (''Saida'' = EstIpi.TipIpi)' + _BR +
              '     LEFT JOIN GerEmp ON (EstIte.CodEmp = GerEmp.CodEmp)' + _BR +
              '     LEFT JOIN ESTSTR on (eststr.codstr = estpro.codsts and eststr.tipstr = estpro.tipsts)' + _BR +
              ' Where 1 = 1' + sFiltro;

      {' Select EstPro.CodSts, EstPro.FLGLIS, EstIte.VCPITE, EstIte.QTDRMA, EstPro.DTCPRO, EstPro.CodSte, TextoOcor(IntStrZeros(EstPro.CodCat,3),''-'',EstCat.NomCat,'''','''','''','''') as NomCat, ' + _BR
        + ' TextoOcor(IntStrZeros(EstPro.CodMrc,3),''-'',EstMrc.NomMrc,'''','''','''','''') as NomMrc, ' + _BR
        + ' TextoOcor(IntStrZeros(EstPro.CodTip,3),''-'',EstTip.NomTip,'''','''','''','''') as NomTip, ' + _BR
        + ' TextoOcor(EstIte.CodGru,''-'',EstGru.NomGru,'''','''','''','''') as NomGru, ' + _BR
        + ' TextoOcor(EstIte.CodSub,''-'',EstSub.NomSub,'''','''','''','''') as NomSub, ' + _BR
        + ' TextoOcor(EstIcm.CodSt1,EstIcm.CodSt2,'''','''','''','''','''') as CodSit, ' + _BR
        + ' EstIpi.PerIpi, EstIpi.PerImp, EstIcm.PerIcm, IPIE.ClsIpi CLEIPI, IPIS.clsipi , EstIte.CodPro, ' + _BR
        + ' Cast((select RESULT_CHAR FROM PRC_ITE_SUB_ENTRADA(estpro.codste)) as Varchar(250)) ObsSt1, ' + _BR
        + ' Cast((select RESULT_CHAR FROM PRC_ITE_SUB_SAIDA(estpro.CodSts)) as VarChar(250)) ObsSt2,' + _BR
        //+ ' Cast((select RESULT_CHAR FROM PRC_ITE_ST_SAIDA(estpro.CodSts)) as VarChar(250)) ObsSt3, '+ _BR
      + ' EstPro.QtdEmb, EstPro.DscPro, EstPro.IdePro, EstPro.Id2Pro, EstPro.DsrImp as DscImp, ' + _BR
        + ' EstPro.RefPro,EstPro.SimPro, EstPro.CodAnt, EstPro.CodUns, EstPro.CodCom, EstPro.NumPro, EstPro.LiqEmb, EstPro.LocPro, ' + _BR
        + ' (Select CodBar From EstBar Where EstBar.CodClp = EstPro.CodClp and EstBar.CodGru = EstPro.CodGru ' + _BR
        + ' and EstBar.CodSub = EstPro.CodSub  and EstBar.CodPro = EstPro.CodPro  and EstBar.NroBar = 1) as CodBar1, ' + _BR
        + ' (Select QtdEmb From EstBar Where EstBar.CodClp = EstPro.CodClp  and EstBar.CodGru = EstPro.CodGru  and EstBar.CodSub = EstPro.CodSub  and EstBar.CodPro = EstPro.CodPro  and EstBar.NroBar = 1) as QtdBar1, ' +
          _BR
        + ' (Select CubEmb From EstBar Where EstBar.CodClp = EstPro.CodClp  and EstBar.CodGru = EstPro.CodGru  and EstBar.CodSub = EstPro.CodSub  and EstBar.CodPro = EstPro.CodPro  and EstBar.NroBar = 1) as CubBar1, ' +
          _BR
        + ' (Select PesEmb From EstBar Where EstBar.CodClp = EstPro.CodClp  and EstBar.CodGru = EstPro.CodGru  and EstBar.CodSub = EstPro.CodSub  and EstBar.CodPro = EstPro.CodPro  and EstBar.NroBar = 1) as PesBar1, ' +
          _BR
        + ' (Select EstEmb.NomEmb From EstBar,EstEmb Where EstBar.CodEmb = EstEmb.CodEmb  and EstBar.CodClp = EstPro.CodClp  and EstBar.CodGru = EstPro.CodGru ' +
          _BR
        + ' and EstBar.CodSub = EstPro.CodSub  and EstBar.CodPro = EstPro.CodPro  and EstBar.NroBar = 1) as TipBar1, ' + _BR
        + ' (Select CodBar From EstBar Where EstBar.CodClp = EstPro.CodClp  and EstBar.CodGru = EstPro.CodGru  and EstBar.CodSub = EstPro.CodSub  and EstBar.CodPro = EstPro.CodPro  and EstBar.NroBar = 2) as CodBar2, ' +
          _BR
        + ' (Select QtdEmb From EstBar Where EstBar.CodClp = EstPro.CodClp  and EstBar.CodGru = EstPro.CodGru  and EstBar.CodSub = EstPro.CodSub  and EstBar.CodPro = EstPro.CodPro  and EstBar.NroBar = 2) as QtdBar2, ' +
          _BR
        + ' (Select CubEmb From EstBar Where EstBar.CodClp = EstPro.CodClp  and EstBar.CodGru = EstPro.CodGru  and EstBar.CodSub = EstPro.CodSub  and EstBar.CodPro = EstPro.CodPro  and EstBar.NroBar = 2) as CubBar2, ' +
          _BR
        + ' (Select PesEmb From EstBar Where EstBar.CodClp = EstPro.CodClp  and EstBar.CodGru = EstPro.CodGru  and EstBar.CodSub = EstPro.CodSub  and EstBar.CodPro = EstPro.CodPro  and EstBar.NroBar = 2) as PesBar2, ' +
          _BR
        + ' (Select EstEmb.NomEmb From EstBar,EstEmb Where EstBar.CodEmb = EstEmb.CodEmb  and EstBar.CodClp = EstPro.CodClp  and EstBar.CodGru = EstPro.CodGru  and EstBar.CodSub = EstPro.CodSub  and EstBar.CodPro = EstPro.CodPro  and EstBar.NroBar = 2) as TipBar2, ' +
          _BR
        + ' (Select CodBar From EstBar Where EstBar.CodClp = EstPro.CodClp  and EstBar.CodGru = EstPro.CodGru  and EstBar.CodSub = EstPro.CodSub  and EstBar.CodPro = EstPro.CodPro  and EstBar.NroBar = 3) as CodBar3, ' +
          _BR
        + ' (Select QtdEmb From EstBar Where EstBar.CodClp = EstPro.CodClp  and EstBar.CodGru = EstPro.CodGru  and EstBar.CodSub = EstPro.CodSub  and EstBar.CodPro = EstPro.CodPro  and EstBar.NroBar = 3) as QtdBar3, ' +
          _BR
        + ' (Select CubEmb From EstBar Where EstBar.CodClp = EstPro.CodClp  and EstBar.CodGru = EstPro.CodGru  and EstBar.CodSub = EstPro.CodSub  and EstBar.CodPro = EstPro.CodPro  and EstBar.NroBar = 3) as CubBar3, ' +
          _BR
        + ' (Select PesEmb From EstBar Where EstBar.CodClp = EstPro.CodClp  and EstBar.CodGru = EstPro.CodGru  and EstBar.CodSub = EstPro.CodSub  and EstBar.CodPro = EstPro.CodPro  and EstBar.NroBar = 3) as PesBar3, ' +
          _BR
        + ' (Select EstEmb.NomEmb From EstBar,EstEmb Where EstBar.CodEmb = EstEmb.CodEmb  and EstBar.CodClp = EstPro.CodClp  and EstBar.CodGru = EstPro.CodGru  and EstBar.CodSub = EstPro.CodSub  and EstBar.CodPro = EstPro.CodPro  and EstBar.NroBar = 3) as TipBar3, ' +
          _BR
        + ' EstPro.BrtEmb, EstPro.CODNCM, EstPro.CubPro, EstPro.CxaPro, FinCom.PerCom, EstIte.VmeIte, EstIte.VpfIte, EstIte.Vb1Ite, EstIte.Vb2Ite, EstIte.Vb3Ite, EstIte.Vb4Ite, EstIte.Vb5Ite, EstIte.Ms1Ite, EstIte.Ms2Ite, EstIte.Ms3Ite, ' +
          _BR
        + ' EstIte.Ms4Ite, EstIte.Ms5Ite, EstIte.Mk1Ite, EstIte.Mk2Ite, EstIte.Mk3Ite, EstIte.Mk4Ite, EstIte.Mk5Ite, EstIte.QtmIte, EstIte.QmaIte, EstIte.Ds1Ite, EstIte.Ds2Ite, EstIte.Ds3Ite, EstIte.Ds4Ite, EstIte.Ds5Ite, ' +

          //_BR + ' EstIte.QtdIte,' +
          _BR + ' EstQte.QtrQte QtdIte,' +

          ' EstQte.Qtaqte QtaIte, EstIte.VcrIte, EstIte.DulCmp, EstIte.QtdCmp, EstPro.CodGru || _UNICODE_FSS ''.'' || EstPro.CodSub || _UNICODE_FSS ''.'' || EstPro.CodPro as CodIte ' +

          _BR + ' From EstIte ' + _BR
        + ' LEFT JOIN EstPro ON (EstIte.CodClp = EstPro.CodClp AND EstIte.CodGru = EstPro.CodGru AND EstIte.CodSub = EstPro.CodSub AND EstIte.CodPro = EstPro.CodPro) ' + _BR
        + ' LEFT JOIN EstQte qte ON (EstIte.CodEmp = EstQte.CodEmp ' + _BR
        + ' AND  EstIte.CodClp = EstQte.CodClp ' + _BR
        + ' AND  EstIte.CodGru = EstQte.CodGru ' + _BR
        + ' AND  EstIte.CodSub = EstQte.CodSub ' + _BR
        + ' AND  EstIte.CodPro = EstQte.CodPro) ' + _BR
        + ' LEFT JOIN EstCat ON (EstPro.CodCat = EstCat.CodCat) ' + _BR
        + ' LEFT JOIN EstMrc ON (EstPro.CodMrc = EstMrc.CodMrc) ' + _BR
        + ' LEFT JOIN EstTip ON (EstPro.CodTip = EstTip.CodTip) ' + _BR
        + ' LEFT JOIN EstSub ON (EstPro.CodGru = EstSub.CodGru) AND (EstPro.CodSub = EstSub.CodSub) ' + _BR
        + ' LEFT JOIN EstGru ON (EstSub.CodGru = EstGru.CodGru) ' + _BR
        + ' LEFT JOIN FinCom ON (EstPro.CodCom = FinCom.CodCom) ' + _BR
        + ' LEFT JOIN EstIcm ON (EstPro.IcmSai = EstIcm.CodIcm) AND (EstPro.IcmTsd = EstIcm.TipIcm) ' + _BR
        + ' LEFT JOIN EstIpi IPIE ON (EstPro.IpiEnt = EstIpi.CodIpi) AND (''Entrada'' = EstIpi.TipIpi) ' + _BR
        + ' LEFT JOIN EstIpi IPIS ON (EstPro.ipisai = EstIpi.CodIpi) AND (''Saida'' = EstIpi.TipIpi)' + _BR
        + ' LEFT JOIN GerEmp ON (EstIte.CodEmp = GerEmp.CodEmp) ' + _BR
        + ' LEFT JOIN ESTSTR on (eststr.codstr = estpro.codsts and eststr.tipstr = estpro.tipsts) ' + _BR
        + ' Where 1 = 1 ' + sFiltro;}
      Clipboard.AsText := Text;
      Open;
    finally
      Self.Cursor := crDefault;
    end;
  end;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Delete From EstR06 Where EstR06.SeqArq = ' + QuotedStr(SeqArq);
    ExecSQL;

  end;

  grR06.FullExpand;

  grR06.SetFocus;

end;

procedure TfmEstR06.bPsqClpClick(Sender: TObject);
begin
  inherited;

  try

    fmAuxIni := TfmAuxIni.Create(Self);

    if Trim(EdCodCat.Text) <> '' then
      fmAuxIni.CodCat := StrToInt(EdCodCat.Text);
    if Trim(EdCodTip.Text) <> '' then
      fmAuxIni.CodTip := StrToInt(EdCodTip.Text);
    if Trim(EdCodMrc.Text) <> '' then
      fmAuxIni.CodMrc := StrToInt(EdCodMrc.Text);

    fmAuxIni.TipoPesq := 'Cls';

    fmAuxIni.ShowModal;

    if Trim(fmAuxIni.CodClp) <> '' then
    begin

      EdCodClp.Text := fmAuxIni.CodClp;
      EdNomClp.Text := fmAuxIni.NomClp;

    end;

  finally

    FreeAndNil(fmAuxIni);

  end;

  if Trim(EdCodClp.Text) <> '' then
    EdCodGru.SetFocus;

end;

procedure TfmEstR06.bPsqGruClick(Sender: TObject);
begin
  inherited;

  try

    fmAuxIni := TfmAuxIni.Create(Self);

    if Trim(EdCodCat.Text) <> '' then
      fmAuxIni.CodCat := StrToInt(EdCodCat.Text);
    if Trim(EdCodTip.Text) <> '' then
      fmAuxIni.CodTip := StrToInt(EdCodTip.Text);
    if Trim(EdCodMrc.Text) <> '' then
      fmAuxIni.CodMrc := StrToInt(EdCodMrc.Text);
    if Trim(EdCodClp.Text) <> '' then
      fmAuxIni.CodClp := EdCodClp.Text;

    fmAuxIni.TipoPesq := 'G';

    fmAuxIni.ShowModal;

    if Trim(fmAuxIni.CodGru) <> '' then
    begin

      EdCodGru.Text := fmAuxIni.CodGru;
      EdNomGru.Text := fmAuxIni.NomGru;

    end;

  finally

    FreeAndNil(fmAuxIni);

  end;

  if Trim(EdCodGru.Text) <> '' then
    EdCodSub.SetFocus;

end;

procedure TfmEstR06.bPsqSubClick(Sender: TObject);
begin
  inherited;

  try

    fmAuxIni := TfmAuxIni.Create(Self);

    if Trim(EdCodCat.Text) <> '' then
      fmAuxIni.CodCat := StrToInt(EdCodCat.Text);
    if Trim(EdCodTip.Text) <> '' then
      fmAuxIni.CodTip := StrToInt(EdCodTip.Text);
    if Trim(EdCodMrc.Text) <> '' then
      fmAuxIni.CodMrc := StrToInt(EdCodMrc.Text);
    if Trim(EdCodClp.Text) <> '' then
      fmAuxIni.CodClp := EdCodClp.Text;
    if Trim(EdCodGru.Text) <> '' then
      fmAuxIni.CodGru := EdCodGru.Text;

    fmAuxIni.TipoPesq := 'S';

    fmAuxIni.ShowModal;

    if Trim(fmAuxIni.CodSub) <> '' then
    begin

      EdCodGru.Text := fmAuxIni.CodGru;
      EdNomGru.Text := fmAuxIni.NomGru;
      EdCodSub.Text := fmAuxIni.CodSub;
      EdNomSub.Text := fmAuxIni.NomSub;

    end;

  finally

    FreeAndNil(fmAuxIni);

  end;

  if Trim(EdCodSub.Text) <> '' then
    EdCodPro.SetFocus;

end;

procedure TfmEstR06.bPsqProClick(Sender: TObject);
begin
  inherited;

  try

    fmAuxIni := TfmAuxIni.Create(Self);

    if Trim(EdCodCat.Text) <> '' then
      fmAuxIni.CodCat := StrToInt(EdCodCat.Text);
    if Trim(EdCodTip.Text) <> '' then
      fmAuxIni.CodTip := StrToInt(EdCodTip.Text);
    if Trim(EdCodMrc.Text) <> '' then
      fmAuxIni.CodMrc := StrToInt(EdCodMrc.Text);
    if Trim(EdCodClp.Text) <> '' then
      fmAuxIni.CodClp := EdCodClp.Text;
    if Trim(EdCodGru.Text) <> '' then
      fmAuxIni.CodGru := EdCodGru.Text;
    if Trim(EdCodSub.Text) <> '' then
      fmAuxIni.CodSub := EdCodSub.Text;

    fmAuxIni.TipoPesq := 'I';

    fmAuxIni.ShowModal;

    if Trim(fmAuxIni.CodPro) <> '' then
    begin

      EdCodClp.Text := fmAuxIni.CodClp;
      EdNomClp.Text := fmAuxIni.NomClp;
      EdCodGru.Text := fmAuxIni.CodGru;
      EdNomGru.Text := fmAuxIni.NomGru;
      EdCodSub.Text := fmAuxIni.CodSub;
      EdNomSub.Text := fmAuxIni.NomSub;
      EdCodPro.Text := fmAuxIni.CodPro;
      EdNomPro.Text := fmAuxIni.DscPro;

    end;

  finally

    FreeAndNil(fmAuxIni);

  end;

  if Trim(EdCodPro.Text) <> '' then
    bPesquisa.SetFocus;

end;

procedure TfmEstR06.EdCodClpExit(Sender: TObject);
begin
  inherited;
  if Trim(EdCodClp.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := ' Select NomClp From EstClp Where CodClp = ' + QuotedStr(EdCodClp.Text);
      Open;

      EdNomClp.Text := FieldByName('NomClp').AsString;

    end;

  end
  else
    EdNomClp.Text := '';
end;

procedure TfmEstR06.EdCodGruExit(Sender: TObject);
begin
  inherited;
  if Trim(EdCodGru.Text) <> '' then
  begin

    EdCodGru.Text := FNumZeros(EdCodGru.Text, 3);

    with quSql, SQL do
    begin

      Close;
      Text := ' Select NomGru From EstGru Where CodGru = ' + QuotedStr(EdCodGru.Text);
      Open;

      EdNomGru.Text := FieldByName('NomGru').AsString;

    end;

  end
  else
    EdNomGru.Text := '';
end;

procedure TfmEstR06.EdCodSubExit(Sender: TObject);
begin
  inherited;
  if Trim(EdCodSub.Text) <> '' then
  begin

    EdCodSub.Text := FNumZeros(EdCodSub.Text, 4);

    with quSql, SQL do
    begin

      Close;
      Text := ' Select NomSub From EstSub ' +
        ' Where CodGru = ' + QuotedStr(EdCodGru.Text) +
        '   and CodSub = ' + QuotedStr(EdCodSub.Text);
      Open;

      EdNomSub.Text := FieldByName('NomSub').AsString;

    end;

  end
  else
    EdNomSub.Text := '';
end;

procedure TfmEstR06.EdCodProExit(Sender: TObject);
begin
  inherited;
  if Trim(EdCodPro.Text) <> '' then
  begin

    EdCodPro.Text := FNumStrZero(EdCodPro.Text);

    with quSql, SQL do
    begin

      Close;
      Text := ' Select DscPro From EstPro ' +
        ' Where CodClp = :CodClp' +
        '   and CodGru = :CodGru' +
        '   and CodSub = :CodSub' +
        '   and CodPro = :CodPro';

      with Params do
      begin

        Params[0].AsString := EdCodClp.Text;
        Params[1].AsString := EdCodGru.Text;
        Params[2].AsString := EdCodSub.Text;
        Params[3].AsString := EdCodPro.Text;

      end;

      Open;

    end;

    if Trim(quSQL.FieldbyName('DscPro').AsString) <> '' then
      EdNomPro.Text := quSql.FieldByName('DscPro').AsString
    else
      fmsgErro('Item Informado não Encontrado.', EdCodPro);

  end
  else
    EdNomPro.Text := '';
end;

procedure TfmEstR06.bImprimirClick(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Clear;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Categoria : ' + EdCodCat.Text + ' - ' + EdNomCat.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Tipo : ' + EdCodTip.Text + ' - ' + EdNomTip.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Marca : ' + EdCodMrc.Text + ' - ' + EdNomMrc.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Classificação : ' + EdCodClp.Text + ' - ' + EdNomClp.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Grupo : ' + EdCodGru.Text + ' - ' + EdNomGru.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('SubGrupo : ' + EdCodSub.Text + ' - ' + EdNomSub.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Item : ' + EdCodPro.Text + ' - ' + EdNomPro.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');

  dxComponentPrinterLink1.Preview;

end;

procedure TfmEstR06.EdCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmEstR06.EdCodCatExit(Sender: TObject);
begin
  inherited;
  if Trim(EdCodCat.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := ' Select NomCat From EstCat Where CodCat = ' + QuotedStr(EdCodCat.Text);
      Open;

      EdNomCat.Text := FieldByName('NomCat').AsString;

    end;

  end
  else
    EdNomCat.Text := '';
end;

procedure TfmEstR06.bPsqCatClick(Sender: TObject);
begin
  inherited;

  try

    fmAuxIni := TfmAuxIni.Create(Self);

    fmAuxIni.TipoPesq := 'Categoria';

    fmAuxIni.ShowModal;

    if fmAuxIni.CodCat > 0 then
    begin

      EdNomCat.Text := fmAuxIni.NomCat;
      EdCodCat.Text := IntToStr(fmAuxIni.CodCat);

    end;

  finally

    FreeAndNil(fmAuxIni);

  end;

  if Trim(EdCodCat.Text) <> '' then
    EdCodTip.SetFocus;

end;

procedure TfmEstR06.EdCodTipExit(Sender: TObject);
begin
  inherited;
  if Trim(EdCodTip.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := ' Select NomTip From EstTip Where CodTip = ' + QuotedStr(EdCodTip.Text);
      Open;

      EdNomTip.Text := FieldByName('NomTip').AsString;

    end;

  end
  else
    EdNomTip.Text := '';
end;

procedure TfmEstR06.bPsqTipClick(Sender: TObject);
begin
  inherited;

  try

    fmAuxIni := TfmAuxIni.Create(Self);

    if Trim(EdCodCat.Text) <> '' then
      fmAuxIni.CodCat := StrToInt(EdCodCat.Text);

    fmAuxIni.TipoPesq := 'Tipo';

    fmAuxIni.ShowModal;

    if fmAuxIni.CodTip > 0 then
    begin

      EdNomTip.Text := fmAuxIni.NomTip;
      EdCodTip.Text := IntToStr(fmAuxIni.CodTip);

    end;

  finally

    FreeAndNil(fmAuxIni);

  end;

  if Trim(EdCodTip.Text) <> '' then
    EdCodMrc.SetFocus;

end;

procedure TfmEstR06.EdCodMrcExit(Sender: TObject);
begin
  inherited;
  if Trim(EdCodMrc.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := ' Select NomMrc From EstMrc Where CodMrc = ' + QuotedStr(EdCodMrc.Text);
      Open;

      EdNomMrc.Text := FieldByName('NomMrc').AsString;

    end;

  end
  else
    EdNomMrc.Text := '';
end;

procedure TfmEstR06.PsqMrcClick(Sender: TObject);
begin
  inherited;

  try

    fmAuxIni := TfmAuxIni.Create(Self);

    if Trim(EdCodCat.Text) <> '' then
      fmAuxIni.CodCat := StrToInt(EdCodCat.Text);
    if Trim(EdCodTip.Text) <> '' then
      fmAuxIni.CodTip := StrToInt(EdCodTip.Text);

    fmAuxIni.TipoPesq := 'Marca';

    fmAuxIni.ShowModal;

    if fmAuxIni.CodMrc > 0 then
    begin

      EdNomMrc.Text := fmAuxIni.NomMrc;
      EdCodMrc.Text := IntToStr(fmAuxIni.CodMrc);

    end;

  finally

    FreeAndNil(fmAuxIni);

  end;

  if Trim(EdCodMrc.Text) <> '' then
    EdCodClp.SetFocus;

end;

procedure TfmEstR06.Colunas1Click(Sender: TObject);
begin
  inherited;

  try

    fmManCol := TfmManCol.Create(Self);

    fmManCol.Synchronize(fmEstR06.grR06);

    fmManCol.ShowModal;

  finally

    FreeAndNil(fmManCol);

  end;
end;

procedure TfmEstR06.BbPsqEmpClick(Sender: TObject);
begin
  inherited;

  try

    fmPsqEmp := TfmPsqEmp.Create(Self);
    fmPsqEmp.ShowModal;

    if fmPsqEmp.CodEmp > 0 then
    begin

      EdApeEmp.Text := fmPsqEmp.ApeEmp;
      EdCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

    end;

  finally

    FreeAndNil(fmPsqEmp);

  end;

  if Trim(EdCodEmp.Text) <> '' then
    EdCodCat.SetFocus;

end;

procedure TfmEstR06.EdCodEmpExit(Sender: TObject);
begin
  inherited;
  if Trim(EdCodEmp.Text) <> '' then
  begin

    if GFlgAce <> 'Sim' then
    begin

      with quSQL, SQL do
      begin

        Close;
        Text := ' Select FLGDEL,SEQIMP from GerPar';
        Open;

        if Trim(FieldbyName('FLGDEL').AsString) = '*' then
        begin

          GFlgAce := 'Sim';

          if FieldbyName('SEQIMP').AsInteger > 0 then
            GEmpLog := FieldbyName('SEQIMP').AsInteger;

        end
        else
        begin

          GEmpLog := 0;
          GFlgAce := 'Nao';

        end;
      end;
    end;

    with quSql, SQL do
    begin

      Close;
      Text := ' Select ApeEmp From GerEmp Where GerEmp.CodEmp = ' + QuotedStr(EdCodEmp.Text);

      if GFlgAce = 'Sim' then
      begin

        if GEmpLog > 0 then
          Text := Text + ' and GerEmp.CodEmp = ' + QuotedStr(IntToStr(GEmpLog))
        else
          Text := Text + ' and GerEmp.CodFil > 0';

      end;

      Open;

      if Trim(FieldByName('ApeEmp').AsString) <> '' then
        EdApeEmp.Text := FieldByName('ApeEmp').AsString
      else
      begin

        EdApeEmp.Text := '';

        fmsgErro('Empresa Informada não Encontrada.', EdCodEmp);

      end;
    end;

  end
  else
    EdApeEmp.Text := '';
end;

procedure TfmEstR06.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Delete From EstR06 Where EstR06.SeqArq = ' + QuotedStr(SeqArq);
    ExecSQL;

  end;

  Action := CaFree;

end;

procedure TfmEstR06.FormDestroy(Sender: TObject);
begin
  inherited;
  fmEstR06 := nil;
end;

procedure TfmEstR06.Marcatodasascolunas1Click(Sender: TObject);
var
  i: integer;
begin
  inherited;

  for i := 0 to grR06.ColumnCount - 1 do
  begin
    grR06.Columns[i].Visible := True;
  end;

end;

procedure TfmEstR06.Desmarcatodasascolunas1Click(Sender: TObject);
var
  i: integer;
begin
  inherited;

  for i := 0 to grR06.ColumnCount - 1 do
  begin
    grR06.Columns[i].Visible := False;
  end;

end;

procedure TfmEstR06.bCodSteClick(Sender: TObject);
begin
  inherited;
  try

    fmAuxIni := TfmAuxIni.Create(Self);

    fmAuxIni.TipoPesq := 'STR';

    fmAuxIni.TipStr := 'Entrada';

    fmAuxIni.ShowModal;

    if Trim(fmAuxIni.CodStr) <> '' then
      EdCodSte.Text := fmAuxIni.CodStr;

  finally

    FreeAndNil(fmAuxIni);

  end;

  EdCodSte.SetFocus;

end;

procedure TfmEstR06.bCodStsClick(Sender: TObject);
begin
  inherited;
  try

    fmAuxIni := TfmAuxIni.Create(Self);

    fmAuxIni.TipoPesq := 'STR';

    fmAuxIni.TipStr := 'Saida';

    fmAuxIni.ShowModal;

    if Trim(fmAuxIni.CodStr) <> '' then
      EdCodSts.Text := fmAuxIni.CodStr;

  finally

    FreeAndNil(fmAuxIni);

  end;

end;

procedure TfmEstR06.EdCodStsExit(Sender: TObject);
begin
  inherited;
  if Trim(edCodSts.Text) <> '' then
  begin

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select EstStr.NomStr' +
        ' From EstStr' +
        ' Where EstStr.CodStr = ' + QuotedStr(EdCodSts.Text) +
        '   and EstStr.TipStr = ' + QuotedStr('Saida');
      Open;

      if Trim(FieldbyName('NomStr').AsString) <> '' then
        edNomSts.Text := FieldbyName('NomStr').AsString
      else
        fmsgErro('Regra de Substituição Tributária Informada não Encontrada.', EdCodSts);
    end;
  end
  else
    edNomSts.Text := '';
end;

procedure TfmEstR06.EdCodSteExit(Sender: TObject);
begin
  inherited;
  if Trim(edCodSte.Text) <> '' then
  begin

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select EstStr.NomStr' +
        ' From EstStr' +
        ' Where EstStr.CodStr = ' + QuotedStr(edCodSte.Text) +
        '   and EstStr.TipStr = ' + QuotedStr('Entrada');
      Open;

      if Trim(FieldbyName('NomStr').AsString) <> '' then
        edNomSte.Text := FieldbyName('NomStr').AsString
      else
        fmsgErro('Regra de Substituição Tributária Informada não Encontrada.', EdCodSte);

    end;
  end
  else
    edNomSte.Text := '';
end;

procedure TfmEstR06.EdCodStsKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = 112) then
    bCodSts.OnClick(sender);
end;

procedure TfmEstR06.EdCodSteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = 112) then
    bCodSte.OnClick(sender);
end;

end.
