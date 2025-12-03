unit EstR02;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FPadrao, StdCtrls, Buttons, ComCtrls, Db, DBTables, Wwquery, ExtCtrls, FlEdit,
  Grids, Wwdbigrd, Wwdbgrid, hGrid, Wwdatsrc, Mask, hEdits, wwdbedit,
  Wwdotdot, Wwdbcomb, DBCtrls, AlignEdit, QuickRpt, ppDB, ppDBPipe, ppBands,
  ppClass, ppStrtch, ppMemo, ppVar, jpeg, ppCtrls, ppPrnabl, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, ppModule, daDatMod, wwdbdatetimepicker,
  dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, ImgList, Menus,
  dxCntner, dxEditor, dxEdLib, dxTL, dxDBCtrl, dxDBGrid, dxExEdtr,
  dxColorEdit, clipbrd;

type
  TSaveMethod = procedure(const FileName: string; ASaveAll: Boolean) of object;

  TfmEstR02 = class(TfmPadrao)
    EstR02: TwwQuery;
    quSql: TwwQuery;
    PopUpMenu: TPopupMenu;
    Exportarpara1: TMenuItem;
    HTML: TMenuItem;
    Excel: TMenuItem;
    XML: TMenuItem;
    dxComponentPrinter: TdxComponentPrinter;
    dxComponentPrinterLink1: TdxDBGridReportLink;
    SaveDialog: TSaveDialog;
    PaintBox: TPaintBox;
    grR02: TdxDBGrid;
    grR02CODEMP: TdxDBGridMaskColumn;
    grR02CODITE: TdxDBGridMaskColumn;
    grR02DSCPRO: TdxDBGridMaskColumn;
    grR02REFPRO: TdxDBGridMaskColumn;
    grR02CODUNS: TdxDBGridMaskColumn;
    grR02VALOR: TdxDBGridMaskColumn;
    grR02QTDITE: TdxDBGridMaskColumn;
    grR02QTMITE: TdxDBGridMaskColumn;
    Label5: TLabel;
    Label10: TLabel;
    Bevel1: TBevel;
    Label13: TLabel;
    EdCodEmp: TdxColorEdit;
    BbPsqEmp: TSpeedButton;
    EdNomEmp: TdxColorEdit;
    bPesquisa: TBitBtn;
    bImprimir: TBitBtn;
    Label2: TLabel;
    Bevel2: TBevel;
    DsR02: TwwDataSource;
    rgStatus: TRadioGroup;
    rgValor: TRadioGroup;
    grR02TOTAL: TdxDBGridColumn;
    Colunas1: TMenuItem;
    rgExibir: TRadioGroup;
    rgMinimo: TRadioGroup;
    Label3: TLabel;
    Label7: TLabel;
    EdCodPro: TdxColorEdit;
    BbPsqPro: TSpeedButton;
    EdNomPro: TdxColorEdit;
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
    bPsqMrc: TSpeedButton;
    BbPsqClp: TSpeedButton;
    BbPsqGru: TSpeedButton;
    BbPsqSub: TSpeedButton;
    EdNomSub: TdxColorEdit;
    EdNomGru: TdxColorEdit;
    EdNomClp: TdxColorEdit;
    EdNomMrc: TdxColorEdit;
    EdNomTip: TdxColorEdit;
    EdNomCat: TdxColorEdit;
    Label1: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    grR02QTAITE: TdxDBGridColumn;
    grR02QMAITE: TdxDBGridColumn;
    grR02QTRITE: TdxDBGridColumn;
    grR02QTDRMA: TdxDBGridColumn;
    grR02CODGRU: TdxDBGridColumn;
    grR02CODSUB: TdxDBGridColumn;
    grR02CODPRO: TdxDBGridColumn;
    grR02IDEPRO: TdxDBGridColumn;
    grR02Column18: TdxDBGridColumn;
    grR02CSTOUT: TdxDBGridColumn;
    edSimilar: TdxColorEdit;
    Label12: TLabel;
    Label14: TLabel;
    grR02SIMPRO: TdxDBGridColumn;
    grR02Column21: TdxDBGridColumn;
    grR02Column22: TdxDBGridColumn;
    grR02Column23: TdxDBGridColumn;
    grR02Column24: TdxDBGridColumn;
    grR02Column25: TdxDBGridColumn;
    grR02Column26: TdxDBGridColumn;
    grR02Column27: TdxDBGridColumn;
    grR02Column28: TdxDBGridColumn;
    grR02Column29: TdxDBGridColumn;
    grR02Column30: TdxDBGridColumn;
    grR02Column31: TdxDBGridColumn;
    grR02Column32: TdxDBGridColumn;
    grR02Column33: TdxDBGridColumn;
    EstR02CEST: TStringField;
    EstR02CODEMP: TIntegerField;
    EstR02NOMEMP: TStringField;
    EstR02CODCLP: TStringField;
    EstR02CODGRU: TStringField;
    EstR02NOMGRU: TStringField;
    EstR02CODSUB: TStringField;
    EstR02NOMSUB: TStringField;
    EstR02NOMMRC: TStringField;
    EstR02CODPRO: TStringField;
    EstR02DSCPRO: TStringField;
    EstR02DTCPRO: TDateTimeField;
    EstR02REFPRO: TStringField;
    EstR02CODUNS: TStringField;
    EstR02SIMPRO: TStringField;
    EstR02IDEPRO: TStringField;
    EstR02VALOR: TFloatField;
    EstR02QTDITE: TFloatField;
    EstR02CSTOUT: TFloatField;
    EstR02QTMITE: TFloatField;
    EstR02QTAITE: TFloatField;
    EstR02QTRITE: TFloatField;
    EstR02QTDRMA: TFloatField;
    EstR02QMAITE: TFloatField;
    EstR02NCM: TStringField;
    EstR02CSTIPI: TStringField;
    EstR02PERIPI: TFloatField;
    EstR02CSTPIS: TStringField;
    EstR02ALIQ_PIS: TFloatField;
    EstR02CSTCOF: TStringField;
    EstR02ALIQ_COF: TFloatField;
    EstR02SITTRIBICMS: TStringField;
    EstR02SITTRIBICMS_ALIQ: TFloatField;
    EstR02SITTRIBICMS_ST: TStringField;
    EstR02TOTAL: TFloatField;
    EstR02CODITE: TStringField;
    EstR02POSICAOEST: TCurrencyField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure grR02ReloadGroupList(Sender: TObject);
    procedure HTMLClick(Sender: TObject);
    procedure ExcelClick(Sender: TObject);
    procedure XMLClick(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure BbPsqEmpClick(Sender: TObject);
    procedure BbPsqClpClick(Sender: TObject);
    procedure BbPsqGruClick(Sender: TObject);
    procedure BbPsqSubClick(Sender: TObject);
    procedure BbPsqProClick(Sender: TObject);
    procedure EdCodEmpExit(Sender: TObject);
    procedure EdCodClpExit(Sender: TObject);
    procedure EdCodGruExit(Sender: TObject);
    procedure EdCodSubExit(Sender: TObject);
    procedure EdCodProExit(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdCodEmpKeyPress(Sender: TObject; var Key: Char);
    procedure Colunas1Click(Sender: TObject);
    procedure bPsqCatClick(Sender: TObject);
    procedure EdCodCatExit(Sender: TObject);
    procedure bPsqTipClick(Sender: TObject);
    procedure EdCodTipExit(Sender: TObject);
    procedure bPsqMrcClick(Sender: TObject);
    procedure EdCodMrcExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure EdCodEmpKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodCatKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodTipKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodMrcKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodClpKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodGruKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodSubKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodProKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EstR02CalcFields(DataSet: TDataSet);
  private
    {Private declarations}
    procedure Save(ADefaultExt, AFilter, AFileName: string; AMethod: TSaveMethod);
  public
    {Public declarations}
    sFiltro, sOrdem: string;
  end;

var
  fmEstR02: TfmEstR02;

implementation

uses dxDemoUtils, ShellAPI, Bbgeral, BbMensag, Bbfuncao, ManGDB, FPreview,
  PsqEmp, ManPri, AuxIni, ManCol;

{$R *.DFM}

procedure TfmEstR02.Save(ADefaultExt, AFilter, AFileName: string; AMethod: TSaveMethod);
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

procedure TfmEstR02.FormCreate(Sender: TObject);
begin

  // Formata mascara de todos os campos de Valor/Quantidade
  fmPadrao.ModificaMascara(Self, 0, 'ESTPAR');

  grR02TOTAL.SummaryFooterFormat := EstR02TOTAL.DisplayFormat;

  SaveDialog.InitialDir := ExtractFilePath(Application.ExeName);
end;

procedure TfmEstR02.FormShow(Sender: TObject);
begin
  EdCodEmp.SetFocus;
end;

procedure TfmEstR02.grR02ReloadGroupList(Sender: TObject);
begin
  inherited;
  (Sender as TdxDBGrid).FullExpand;
end;

procedure TfmEstR02.HTMLClick(Sender: TObject);
begin
  inherited;
  Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'Relação Geral de Estoque.htm', grR02.SaveToHTML);
end;

procedure TfmEstR02.ExcelClick(Sender: TObject);
begin
  inherited;
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Relação Geral de Estoque.xls', grR02.SaveToXLS);
end;

procedure TfmEstR02.XMLClick(Sender: TObject);
begin
  inherited;
  Save('xml', 'XML File (*.xml)|*.xml', 'Relação Geral de Estoque.xml', grR02.SaveToXML);
end;

procedure TfmEstR02.bPesquisaClick(Sender: TObject);
var
  sBase, sSQL, basIniValor, basValor: string;
begin
  inherited;

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

  if Trim(EdCodEmp.Text) = '' then
    fmsgErro('Campo de Preenchimento Obrigatorio não Informado. Empresa.', EdCodEmp);

  sFiltro := '';

  case rgStatus.Itemindex of
    0: sFiltro := ' Where EstPro.FlbPro = '+ QuotedStr(' ');
    1: sFiltro := ' Where EstPro.FlbPro = '+ QuotedStr('*');
  end;

  if pos('Where', sFiltro) = 0 then
  begin
// Duplicando item - Dori ! 19/03/2020
    case rgExibir.Itemindex of
      0: sFiltro := ' Where EstIte.QtdIte = 0';
      1: sFiltro := ' Where EstIte.QtdIte > 0';
      2: sFiltro := ' Where EstIte.QtdIte < 0';
    end;

  end;
  {else
  begin

    case rgExibir.Itemindex of
      0: sFiltro := sFiltro + ' and EstIte.QtdIte = 0';
      1: sFiltro := sFiltro + ' and EstIte.QtdIte > 0';
      2: sFiltro := sFiltro + ' and EstIte.QtdIte < 0';
    end;
  end;}

  if pos('Where', sFiltro) = 0 then
 begin
// Duplicando item - Dori ! 19/03/2020
    case rgMinimo.Itemindex of
     0: sFiltro := ' Where EstIte.QtdIte >= EstIte.QtmIte';
     1: sFiltro := ' Where EstIte.QtdIte <  EstIte.QtmIte';
    end;

  end
  else
 begin

    {case rgMinimo.Itemindex of
      0: sFiltro := sFiltro + ' and EstIte.QtdIte >= EstIte.QtmIte';
      1: sFiltro := sFiltro + ' and EstIte.QtdIte <  EstIte.QtmIte';
    end;}
  end;

  if Trim(EdCodEmp.Text) <> '' then
  begin
    if pos('Where', sFiltro) > 0 then
      sFiltro := sFiltro + ' and EstIte.CodEmp = '+ QuotedStr(EdCodEmp.Text)
    else
      sFiltro := ' Where EstIte.CodEmp = '+ QuotedStr(EdCodEmp.Text);
  end;

  if Trim(EdCodCat.Text) <> '' then
  begin
    if pos('Where', sFiltro) > 0 then
      sFiltro := sFiltro + ' and EstPro.CodCat = '+ QuotedStr(EdCodCat.Text)
    else
      sFiltro := ' Where EstPro.CodCat = '+ QuotedStr(EdCodCat.Text);
  end;

  if Trim(EdCodTip.Text) <> '' then
  begin
    if pos('Where', sFiltro) > 0 then
      sFiltro := sFiltro + ' and EstPro.CodTip = '+ QuotedStr(EdCodTip.Text)
    else
      sFiltro := ' Where EstPro.CodTip = '+ QuotedStr(EdCodTip.Text);
  end;

  if Trim(EdCodMrc.Text) <> '' then
  begin

    if pos('Where', sFiltro) > 0 then
      sFiltro := sFiltro + ' and EstPro.CodMrc = '+ QuotedStr(EdCodMrc.Text)
    else
      sFiltro := ' Where EstPro.CodMrc = '+ QuotedStr(EdCodMrc.Text);

  end;

  if Trim(EdCodClp.Text) <> '' then
  begin

    if pos('Where', sFiltro) > 0 then
      sFiltro := sFiltro + ' and EstIte.CodClp = '+ QuotedStr(EdCodClp.Text)
    else
      sFiltro := ' Where EstIte.CodClp = '+ QuotedStr(EdCodClp.Text);

  end;

  if Trim(EdCodGru.Text) <> '' then
  begin

    if pos('Where', sFiltro) > 0 then
      sFiltro := sFiltro + ' and EstIte.CodGru = '+ QuotedStr(EdCodGru.Text)
    else
      sFiltro := ' Where EstIte.CodGru = '+ QuotedStr(EdCodGru.Text);

  end;

  if Trim(EdCodSub.Text) <> '' then
  begin

    if pos('Where', sFiltro) > 0 then
      sFiltro := sFiltro + ' and EstIte.CodSub = '+ QuotedStr(EdCodSub.Text)
    else
      sFiltro := ' Where EstIte.CodSub = '+ QuotedStr(EdCodSub.Text);

  end;

  if Trim(EdCodPro.Text) <> '' then
  begin

    if pos('Where', sFiltro) > 0 then
      sFiltro := sFiltro + ' and EstIte.CodPro = '+ QuotedStr(EdCodPro.Text)
    else
      sFiltro := ' Where EstIte.CodPro = '+ QuotedStr(EdCodPro.Text);

  end;

  if Trim(edSimilar.Text) <> '' then
  begin
    if pos('Where', sFiltro) > 0 then
      sFiltro := sFiltro + ' and EstPro.SIMPRO = '+ QuotedStr(edSimilar.Text)
    else
      sFiltro := ' Where EstPro.SIMPRO = '+ QuotedStr(edSimilar.Text);
  end;

  if GFlgAce = 'Sim' then
  begin
    if GEmpLog > 0 then
      sFiltro := sFiltro + ' and EstIte.CodEmp = ' + QuotedStr(IntToStr(GEmpLog))
    else
      sFiltro := sFiltro + ' and GerEmp.CodFil > 0';
  end;

  case rgValor.ItemIndex of
     0: basIniValor := '        EstIte.Vb1Ite as Valor,';
     1: basIniValor := '        EstIte.Vb2Ite as Valor,';
     2: basIniValor := '        EstIte.Vb3Ite as Valor,';
     3: basIniValor := '        EstIte.Vb4Ite as Valor,';
     4: basIniValor := '        EstIte.Vb5Ite as Valor,';
     5: basIniValor := '        EstIte.CstIte as Valor,';
     6: basIniValor := '        EstIte.VpfIte as Valor,';
     7: basIniValor := '        EstIte.VchIte as Valor,';
     8: basIniValor := '        EstIte.VREITE as Valor,';
     9: basIniValor := '        EstIte.VcrIte as Valor,';
  end;

  case rgValor.ItemIndex of
     0: basValor := ' Round(qtd.QtdQte * EstIte.Vb1Ite,2) as Total,';
     1: basValor := ' Round(qtd.QtdQte * EstIte.Vb2Ite,2) as Total,';
     2: basValor := ' Round(qtd.QtdQte * EstIte.Vb3Ite,2) as Total,';
     3: basValor := ' Round(qtd.QtdQte * EstIte.Vb4Ite,2) as Total,';
     4: basValor := ' Round(qtd.QtdQte * EstIte.Vb5Ite,2) as Total,';
     5: basValor := ' Round(qtd.QtdQte * EstIte.CstIte,2) as Total,';
     6: basValor := ' Round(qtd.QtdQte * EstIte.VpfIte,2) as Total,';
     7: basValor := ' Round(qtd.QtdQte * EstIte.VchIte,2) as Total,';
     8: basValor := ' Round(qtd.QtdQte * EstIte.VREITE,2) as Total,';
     9: basValor := ' Round(qtd.QtdQte * EstIte.VcrIte,2) as Total,';
  end;

    sSQL := ' Select EstPro.CEST  ,' +
            '        EstIte.CodEmp,' +
            '        GerEmp.NomEmp,' +
            '        EstIte.CodClp,' +
            '        EstIte.CodGru,' +
            '        EstGru.NomGru,' +
            '        EstIte.CodSub,' +
            '        EstSub.NomSub,' +
            '        EstMrc.NomMrc,' +
            '        EstIte.CodPro,' +
            '        EstPro.DscPro,' +
            '        EstPro.DtcPro,' +
            '        EstPro.RefPro,' +
            '        EstPro.CodUns,' +
            '        EstPro.IdePro,' +
            '        EstPro.SIMPRO,' +
                     basIniValor     +
                     basValor        +
            '        qtd.QtdQte as QtdIte,' +
            '        qtd.QtmQte as QTMITE,' +
            '        qtd.QtaQte as QtaIte,' +
            '        qtd.QtrQte as QtrIte,' +
            '        qtd.QmaQte as QmaIte,' +
            '        qtd.QtdRma          ,' +
            '        EstIte.CSTOUT,       ' +
            '        EstPro.CODNCM AS NCM, '+
            '        ESTIPI.CSTIPI,        '+
            '        ESTIPI.PERIPI,        '+
            '        ESTIPI.CSTPIS,        '+
            '        ESTIPI.ALIQ_PIS,      '+
            '        ESTIPI.CSTCOF,        '+
            '        ESTIPI.ALIQ_COF,      '+
            '        EstICM.CODST2 as SitTribICMS,      '+
            '        EstICM.PERICM as SitTribICMS_Aliq, '+
            '        EstUfe.CODST2 as SitTribICMS_ST,   '+
            '        EstIte.CodClp || _UNICODE_FSS ' +  QuotedStr('-') + ' || EstIte.CodGru || _UNICODE_FSS ' + QuotedStr('.') + ' || EstIte.CodSub || _UNICODE_FSS ' + QuotedStr('.') + ' || EstIte.CodPro as CodIte' +
            '   From EstIte ite ' +
            '   Left Join EstPro     on EstPro.CodClp = EstIte.CodClp '+
            '                       and EstPro.CodGru = EstIte.CodGru '+
            '                       and EstPro.CodSub = EstIte.CodSub '+
            '                       and EstPro.CodPro = EstIte.CodPro '+
            '   Left Join EstSub     on EstSub.CodGru = EstPro.CodGru '+
            '                       and EstSub.CodSub = EstPro.CodSub '+
            '   Left Join EstGru     on EstSub.CodGru = EstGru.CodGru '+
            '   Left Join GerEmp     on GerEmp.CodEmp = EstIte.CodEmp '+
            '   Left Join EstMrc     on EstMrc.CodMrc = EstPro.CodMrc '+
            '   Left Join EstQte qtd on EstQte.CodEmp = EstIte.CodEmp '+
            '                       and EstQte.CodClp = EstIte.CodClp '+
            '                       and EstQte.CodGru = EstIte.CodGru '+
            '                       and EstQte.CodSub = EstIte.CodSub '+
            '                       and EstQte.CodPro = EstIte.CodPro '+
            '   Left Join Estipi     on EstIpi.codipi = EstPro.ipisai '+
            '                       and EstIpi.tipipi = '+QuotedStr('Saida') +
            '   Left Join EstICM     on EstICM.codicm = EstPro.icmsai '+
            '                       and EstICM.tipicm = '+QuotedStr('Saida') +
            '   Left Join EstUfe     on EstUfe.codstr = EstPro.codsts '+
            '                       and EstUfe.sigufe = GerEmp.sigufe '+
            '                       and EstUfe.tipstr = '+QuotedStr('Saida');


  Try
    EstR02.Close;
    EstR02.SQL.Text := sSQL + sFiltro;
    EstR02.Open;
  Except on E: Exception do begin
                              fMsg(E.Message, 'I');
                              Exit;
                            end;
  end;

  grR02.FullExpand;
  grR02.SetFocus;

end;

procedure TfmEstR02.BbPsqEmpClick(Sender: TObject);
begin
  inherited;

  try

    fmPsqEmp := TfmPsqEmp.Create(Self);
    fmPsqEmp.ShowModal;

    if fmPsqEmp.CodEmp > 0 then
    begin

      EdNomEmp.Text := fmPsqEmp.NomEmp;
      EdCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

    end;

  finally

    FreeAndNil(fmPsqEmp);

  end;

  if Trim(EdCodEmp.Text) <> '' then
    EdCodCat.SetFocus;

end;

procedure TfmEstR02.BbPsqClpClick(Sender: TObject);
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

procedure TfmEstR02.BbPsqGruClick(Sender: TObject);
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

procedure TfmEstR02.BbPsqSubClick(Sender: TObject);
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

procedure TfmEstR02.BbPsqProClick(Sender: TObject);
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
      fmAuxIni.CodSUB := EdCodSub.Text;

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

procedure TfmEstR02.EdCodEmpExit(Sender: TObject);
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
      Text := ' Select NomEmp From GerEmp Where GerEmp.CodEmp = ' + QuotedStr(EdCodEmp.Text);

      if GFlgAce = 'Sim' then
      begin

        if GEmpLog > 0 then
          Text := Text + ' and GerEmp.CodEmp = ' + QuotedStr(IntToStr(GEmpLog))
        else
          Text := Text + ' and GerEmp.CodFil > 0';

      end;

      Open;

      if Trim(FieldByName('NomEmp').AsString) <> '' then
        EdNomEmp.Text := FieldByName('NomEmp').AsString
      else
      begin

        EdNomEmp.Text := '';

        fmsgErro('Empresa Informada não Encontrada.', EdCodEmp);

      end;
    end;

  end
  else
    EdNomEmp.Text := '';
end;

procedure TfmEstR02.EdCodClpExit(Sender: TObject);
begin
  inherited;
  if Trim(EdCodClp.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := ' Select NomClp From EstClp Where CodClp = ''' + EdCodClp.Text + '''';
      Open;

      EdNomClp.Text := FieldByName('NomClp').AsString;

    end;

  end
  else
    EdNomClp.Text := '';
end;

procedure TfmEstR02.EdCodGruExit(Sender: TObject);
begin
  inherited;
  if Trim(EdCodGru.Text) <> '' then
  begin

    EdCodGru.Text := FNumZeros(EdCodGru.Text, 3);

    with quSql, SQL do
    begin

      Close;
      Text := ' Select NomGru From EstGru ' +
        ' Where CodGru = ''' + EdCodGru.Text + '''';
      Open;

    end;

    if Trim(quSQL.FieldbyName('NomGru').AsString) <> '' then
      EdNomGru.Text := quSql.FieldByName('NomGru').AsString
    else
      fmsgErro('Grupo Informado não Encontrado.', EdCodGru);

  end
  else
    EdNomGru.Text := '';
end;

procedure TfmEstR02.EdCodSubExit(Sender: TObject);
begin
  inherited;
  if Trim(EdCodSub.Text) <> '' then
  begin

    EdCodSub.Text := FNumZeros(EdCodSub.Text, 4);

    with quSql, SQL do
    begin

      Close;
      Text := ' Select NomSub From EstSub ' +
        ' Where CodGru = ''' + EdCodGru.Text + '''' +
        '   and CodSub = ''' + EdCodSub.Text + '''';
      Open;

    end;

    if Trim(quSQL.FieldbyName('NomSub').AsString) <> '' then
      EdNomSub.Text := quSql.FieldByName('NomSub').AsString
    else
      fmsgErro('SubGrupo Informado não Encontrado.', EdCodSub);

  end
  else
    EdNomSub.Text := '';
end;

procedure TfmEstR02.EdCodProExit(Sender: TObject);
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

procedure TfmEstR02.bImprimirClick(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Clear;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Empresa : ' + EdCodEmp.Text + ' - ' + EdNomEmp.Text);
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

procedure TfmEstR02.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmEstR02.EdCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmEstR02.Colunas1Click(Sender: TObject);
begin
  inherited;

  try

    fmManCol := TfmManCol.Create(Self);

    fmManCol.Synchronize(fmEstR02.grR02);

    fmManCol.ShowModal;

  finally

    FreeAndNil(fmManCol);

  end;
end;

procedure TfmEstR02.bPsqCatClick(Sender: TObject);
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

procedure TfmEstR02.EdCodCatExit(Sender: TObject);
begin
  inherited;
  if Trim(EdCodCat.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := ' Select NomCat From EstCat Where CodCat = ''' + EdCodCat.Text + '''';
      Open;

      EdNomCat.Text := FieldByName('NomCat').AsString;

    end;

  end
  else
    EdNomCat.Text := '';
end;

procedure TfmEstR02.bPsqTipClick(Sender: TObject);
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

procedure TfmEstR02.EdCodTipExit(Sender: TObject);
begin
  inherited;
  if Trim(EdCodTip.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := ' Select NomTip From EstTip Where CodTip = ''' + EdCodTip.Text + '''';
      Open;

      EdNomTip.Text := FieldByName('NomTip').AsString;

    end;

  end
  else
    EdNomTip.Text := '';
end;

procedure TfmEstR02.bPsqMrcClick(Sender: TObject);
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

procedure TfmEstR02.EdCodMrcExit(Sender: TObject);
begin
  inherited;
  if Trim(EdCodMrc.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := ' Select NomMrc From EstMrc Where CodMrc = ''' + EdCodMrc.Text + '''';
      Open;

      EdNomMrc.Text := FieldByName('NomMrc').AsString;

    end;

  end
  else
    EdNomMrc.Text := '';
end;

procedure TfmEstR02.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmEstR02.FormDestroy(Sender: TObject);
begin
  inherited;
  fmEstR02 := nil;
end;

procedure TfmEstR02.EdCodEmpKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}
    BbPsqEmp.Click;
  end;
end;

procedure TfmEstR02.EdCodCatKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}
    bPsqcat.Click;
  end;

end;

procedure TfmEstR02.EdCodTipKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}
    BPsqtip.Click;
  end;

end;

procedure TfmEstR02.EdCodMrcKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}
    BPsqmrc.Click;
  end;

end;

procedure TfmEstR02.EdCodClpKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}
    BbPsqCLP.Click;
  end;

end;

procedure TfmEstR02.EdCodGruKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}
    BbPsqGru.Click;
  end;

end;

procedure TfmEstR02.EdCodSubKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}
    BbPsqSub.Click;
  end;

end;

procedure TfmEstR02.EdCodProKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}
    BbPsqPro.Click;
  end;

end;

procedure TfmEstR02.EstR02CalcFields(DataSet: TDataSet);
begin
  inherited;
  EstR02POSICAOEST.AsFloat := EstR02QTDITE.AsFloat - EstR02QTRITE.AsFloat - EstR02QTDRMA.AsFloat;
end;

end.

