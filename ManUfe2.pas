unit ManUfe2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Db, Wwdatsrc, DBTables, Wwquery, dxPageControl, Buttons,
  ExtCtrls, StdCtrls, dxCntner, dxEditor, dxEdLib, ComCtrls, hNavigator,
  Grids, Wwdbigrd, Wwdbgrid, hGrid, dxDBELib, dxExEdtr, dxDBEdtr, Menus,
  wwdbdatetimepicker, ppDB, ppDBPipe, ppBands, ppCtrls, ppVar, ppPrnabl,
  ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  dxDBColorLookupEdit, dxDBColorCurrencyEdit, dxDBColorEdit, dxColorEdit,
  dxDBColorPickEdit;

type
  TfmManUfe2 = class(TfmPadrao)
    UpUfe: TUpdateSQL;
    GerUfe: TwwQuery;
    DsUfe: TwwDataSource;
    pcUfe: TPageControl;
    pcPag1: TTabSheet;
    pcPag2: TTabSheet;
    Panel2: TPanel;
    Label2: TLabel;
    Label10: TLabel;
    EdPsqSigUfe: TdxColorEdit;
    rgOrdem: TRadioGroup;
    rgBusca: TRadioGroup;
    Bbselecionar: TBitBtn;
    Panel3: TPanel;
    grUfe: ThGrid;
    Label3: TLabel;
    Panel4: TPanel;
    Shape9: TShape;
    Label5: TLabel;
    Shape10: TShape;
    Label7: TLabel;
    Shape11: TShape;
    Label9: TLabel;
    EdNomUfe: TdxDBColorEdit;
    Label1: TLabel;
    Label4: TLabel;
    EdPsqNomUfe: TdxColorEdit;
    EdSigUfe: TdxDBColorEdit;
    Label12: TLabel;
    GerUfeSIGUFE: TStringField;
    GerUfeNOMUFE: TStringField;
    Shape4: TShape;
    Shape2: TShape;
    GerUfeDSCUFE: TFloatField;
    Label21: TLabel;
    EdDscUfe: TdxDBColorCurrencyEdit;
    Shape1: TShape;
    Shape3: TShape;
    Panel6: TPanel;
    nvIcm: ThDBNavigator;
    Panel5: TPanel;
    grIcm: ThGrid;
    Label6: TLabel;
    GerIcm: TwwQuery;
    GerIcmSIGUFE: TStringField;
    GerIcmSEQICM: TIntegerField;
    GerIcmPERICM: TFloatField;
    DsIcm: TwwDataSource;
    UpIcm: TUpdateSQL;
    Label8: TLabel;
    EdPerIcm: TdxDBColorCurrencyEdit;
    quSql: TwwQuery;
    Shape5: TShape;
    Panel1: TPanel;
    nvUfe: ThDBNavigator;
    GerUfeNROUFE: TIntegerField;
    EdSubTrb: TdxDBColorEdit;
    Label11: TLabel;
    GerUfeSUBTRB: TStringField;
    GerUfeDSCCOM: TFloatField;
    Label13: TLabel;
    EdDscCom: TdxDBColorCurrencyEdit;
    ppReport: TppReport;
    hbReport: TppHeaderBand;
    ppLabel20: TppLabel;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    dbReport: TppDetailBand;
    ppSigUfe: TppDBText;
    ppNomUfe: TppDBText;
    ppDBPipeline: TppDBPipeline;
    ppDscUfe: TppDBText;
    ppLabel7: TppLabel;
    ppDscCom: TppDBText;
    ppLabel8: TppLabel;
    ppLabel3: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel4: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    DsGru: TwwDataSource;
    EstGru: TwwQuery;
    EstGruCODGRU: TStringField;
    EstGruNOMGRU: TStringField;
    EstSub: TwwQuery;
    EstSubCODGRU: TStringField;
    EstSubCODSUB: TStringField;
    EstSubNOMSUB: TStringField;
    DsSub: TwwDataSource;
    DsPro: TwwDataSource;
    EstPro: TwwQuery;
    EstProCODCLP: TStringField;
    EstProCODGRU: TStringField;
    EstProCODSUB: TStringField;
    EstProCODPRO: TStringField;
    EstProDSCPRO: TStringField;
    EstProDSRPRO: TStringField;
    FinTmo: TwwQuery;
    FinTmoNOMTMO: TStringField;
    FinTmoCODTMO: TIntegerField;
    DsTmo: TwwDataSource;
    GerPro: TwwQuery;
    dsGer: TwwDataSource;
    GerProSIGUFE: TStringField;
    GerProSEQPRO: TIntegerField;
    GerProCODCLP: TStringField;
    GerProCODGRU: TStringField;
    GerProCODSUB: TStringField;
    GerProCODPRO: TStringField;
    GerProDSCPRO: TStringField;
    GerProNROPRO: TIntegerField;
    GerProFLGTRG: TStringField;
    GerProCODITE: TStringField;
    GerUfeQTDICM: TIntegerField;
    GerUfeSEQICM: TIntegerField;
    GerUfeFLGTRG: TStringField;
    GerUfeQTDPRO: TIntegerField;
    GerUfeSEQPRO: TIntegerField;
    UpPro: TUpdateSQL;
    quSQL2: TwwQuery;
    quSQL3: TwwQuery;
    GerProREGICM: TStringField;
    GerProTIPICM: TStringField;
    GerProFLGDES: TStringField;
    EstIcm: TwwQuery;
    StringField2: TStringField;
    EstIcmCODICM: TStringField;
    EstIcmPERICM: TFloatField;
    DsEstIcm: TwwDataSource;
    GerPro_01: TwwQuery;
    GerPro_01SIGUFE: TStringField;
    GerPro_01SEQPRO: TIntegerField;
    GerPro_01CODCLP: TStringField;
    GerPro_01CODGRU: TStringField;
    GerPro_01CODSUB: TStringField;
    GerPro_01CODPRO: TStringField;
    GerPro_01DSCPRO: TStringField;
    GerPro_01NROPRO: TIntegerField;
    GerPro_01FLGTRG: TStringField;
    GerPro_01REGICM: TStringField;
    GerPro_01TIPICM: TStringField;
    GerPro_01FLGDES: TStringField;
    GerPro_02: TwwQuery;
    GerPro_02SIGUFE: TStringField;
    GerPro_02SEQPRO: TIntegerField;
    GerPro_02CODCLP: TStringField;
    GerPro_02CODGRU: TStringField;
    GerPro_02CODSUB: TStringField;
    GerPro_02CODPRO: TStringField;
    GerPro_02DSCPRO: TStringField;
    GerPro_02NROPRO: TIntegerField;
    GerPro_02FLGTRG: TStringField;
    GerPro_02REGICM: TStringField;
    GerPro_02TIPICM: TStringField;
    GerPro_02FLGDES: TStringField;
    UpPro_01: TUpdateSQL;
    UpPro_02: TUpdateSQL;
    GerIcmNROICM: TIntegerField;
    GerIcmFLGTRG: TStringField;
    GerUfePERICM: TFloatField;
    dxDBColorCurrencyEdit1: TdxDBColorCurrencyEdit;
    Label14: TLabel;
    GerIcmREDINT: TFloatField;
    GerUfeREDINT: TFloatField;
    Label15: TLabel;
    dxDBColorCurrencyEdit2: TdxDBColorCurrencyEdit;
    GerIcmALIQ_INTERNA: TFloatField;
    procedure FormShow(Sender: TObject);
    procedure pcPag1Show(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure grUfeDblClick(Sender: TObject);
    procedure BbselecionarClick(Sender: TObject);
    procedure GerUfeNewRecord(DataSet: TDataSet);
    procedure pcPag2Show(Sender: TObject);
    procedure GerIcmBeforeEdit(DataSet: TDataSet);
    procedure GerIcmAfterCancel(DataSet: TDataSet);
    procedure GerIcmAfterPost(DataSet: TDataSet);
    procedure GerIcmNewRecord(DataSet: TDataSet);
    procedure GerUfeBeforeEdit(DataSet: TDataSet);
    procedure GerUfeAfterCancel(DataSet: TDataSet);
    procedure EdPerIcmKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure nvUfeImprime(Sender: TObject);
    procedure EdCodGruKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodSubKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodProKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GerProNewRecord(DataSet: TDataSet);
    procedure Panel8Exit(Sender: TObject);
    procedure nvProExclui(Sender: TObject);
    procedure dsGerDataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DsUfeDataChange(Sender: TObject; Field: TField);
    procedure DsIcmDataChange(Sender: TObject; Field: TField);
    procedure nvUfeSalva(Sender: TObject);
    procedure GerUfeBeforeDelete(DataSet: TDataSet);
    procedure nvIcmSalva(Sender: TObject);
    procedure GerIcmBeforeDelete(DataSet: TDataSet);
    procedure nvProSalva(Sender: TObject);
    procedure GerProBeforeDelete(DataSet: TDataSet);
    procedure EdRegIcmKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GerUfeAfterPost(DataSet: TDataSet);
    procedure GerProAfterCancel(DataSet: TDataSet);
    procedure GerProAfterPost(DataSet: TDataSet);
    procedure GerProBeforeEdit(DataSet: TDataSet);
    procedure nvProBeforeSalva(Sender: TObject);
    procedure pcUfeChange(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    sBase, sOrdem, sFiltro : string;
  end;

var
  fmManUfe2: TfmManUfe2;

implementation

uses Fpreview, Bbgeral, Bbmensag, Bbfuncao, ManPri, ManGDB, AuxIni, AuxPsq;

{$R *.DFM}

{*************************************************************************
* Rotina: Evitar Movimentação de Janelas
*************************************************************************}
procedure TfmManUfe2.FormCreate(Sender: TObject);
begin
  inherited;
  sBase  := ' Select gu.*, gi.pericm,gi.redint From GerUfe gu' +
            ' left join gericm gi on gu.sigufe = gi.sigufe';
end;

procedure TfmManUfe2.BbselecionarClick(Sender: TObject);
begin
  inherited;

  sFiltro := '';

  {Ordem}
  case rgOrdem.ItemIndex of
       0: sOrdem := ' Order by SigUfe';
       1: sOrdem := ' Order by NomUfe';
  end;

  if (EdpsqSigUfe.Text <> '') then sFiltro := ' Where SigUfe = '''+ EdpsqSigUfe.Text +'''';

  if Rgbusca.ItemIndex = 0 then begin

     if (EdpsqNomUfe.Text <> '') then sFiltro := ' Where NomUfe LIKE '''+ EdpsqNomUfe.Text +'%''';

     end
  else
     begin

     if (EdpsqNomUfe.Text <> '') then sFiltro := ' Where NomUfe LIKE ''%' + EdpsqNomUfe.Text + '%''';

  end;

  with GerUfe,SQL do begin

       Close;
       Text := sBase + sFiltro + sOrdem;
       Open;

  end;
end;

procedure TfmManUfe2.GerUfeNewRecord(DataSet: TDataSet);
begin
  inherited;

  GerUfe.DisableControls;

  GerUfeDscUfe.Value := 0;
  GerUfeDscCom.Value := 0;

  GerUfe.EnableControls;

  PcUfe.ActivePage := pcPag2;

  EdSigUfe.Enabled := True;

  EdSigUfe.Font.Style := [];

  EdPerIcm.Font.Style := [fsBold];

  nvIcm.Enabled := False;
  grIcm.Enabled := False;

  GerIcm.Close;
  GerIcm.Params[0].AsString := GerUfeSigUfe.Value;
  GerIcm.Open;

  EdSigUfe.SetFocus;

end;

procedure TfmManUfe2.pcPag1Show(Sender: TObject);
begin
  inherited;
  EdPsqSigUfe.SetFocus;
end;

procedure TfmManUfe2.grUfeDblClick(Sender: TObject);
begin
  inherited;
  pcUfe.ActivePage := pcPag2;
end;

procedure TfmManUfe2.FormShow(Sender: TObject);
begin
  inherited;

  PcUfe.ActivePage := PcPag1;

  EdPsqSigUfe.SetFocus;

end;

procedure TfmManUfe2.pcPag2Show(Sender: TObject);
begin
  inherited;
  EdNomUfe.SetFocus;
end;

procedure TfmManUfe2.GerIcmBeforeEdit(DataSet: TDataSet);
begin
  inherited;

  EdNomUfe.Enabled := False;
  EdDscUfe.Enabled := False;
  EdDscCom.Enabled := False;
  EdSubTrb.Enabled := False;

  EdNomUfe.Font.Style := [fsBold];
  EdDscUfe.Font.Style := [fsBold];
  EdDscCom.Font.Style := [fsBold];
  EdSubTrb.Font.Style := [fsBold];

  nvUfe.Enabled := False;

end;

procedure TfmManUfe2.GerIcmAfterCancel(DataSet: TDataSet);
begin
  inherited;

  EdNomUfe.Enabled := True;
  EdDscUfe.Enabled := True;
  EdDscCom.Enabled := True;
  EdSubTrb.Enabled := True;

  EdNomUfe.Font.Style := [];
  EdDscUfe.Font.Style := [];
  EdDscCom.Font.Style := [];
  EdSubTrb.Font.Style := [];

  nvUfe.Enabled := True;

end;

procedure TfmManUfe2.GerIcmAfterPost(DataSet: TDataSet);
begin
  inherited;

  EdNomUfe.Enabled := True;
  EdDscUfe.Enabled := True;
  EdDscCom.Enabled := True;
  EdSubTrb.Enabled := True;

  EdNomUfe.Font.Style := [];
  EdDscUfe.Font.Style := [];
  EdDscCom.Font.Style := [];
  EdSubTrb.Font.Style := [];

  nvUfe.Enabled := True;

end;

procedure TfmManUfe2.GerIcmNewRecord(DataSet: TDataSet);
begin
  inherited;

  GerIcm.DisableControls;

  GerIcmSigUfe.Value := GerUfeSigUfe.Value;

  with quSql,SQL do begin

       Close;
       Text := ' Select * From GerIcm '+
               ' Where SigUfe = '''+GerUfeSigUfe.Value+''''+
               ' Order by SigUfe,SeqIcm';
       Open;
       Last;

  end;

  GerIcmSeqIcm.Value := quSql.FieldByName('SeqIcm').AsInteger + 1;

  GerIcm.EnableControls;

  EdNomUfe.Enabled := False;
  EdDscUfe.Enabled := False;
  EdDscCom.Enabled := False;
  EdSubTrb.Enabled := False;

  EdNomUfe.Font.Style := [fsBold];
  EdDscUfe.Font.Style := [fsBold];
  EdDscCom.Font.Style := [fsBold];
  EdSubTrb.Font.Style := [fsBold];

  nvUfe.Enabled := False;

  EdPerIcm.SetFocus;

end;

procedure TfmManUfe2.GerUfeBeforeEdit(DataSet: TDataSet);
begin
  inherited;

  EdPerIcm.Enabled := False;

  EdPerIcm.Font.Style := [fsBold];

  nvIcm.Enabled := False;

end;

procedure TfmManUfe2.GerUfeAfterCancel(DataSet: TDataSet);
begin
  inherited;

  EdPerIcm.Enabled := True;

  EdPerIcm.Font.Style := [];

  nvIcm.Enabled := True;

end;

procedure TfmManUfe2.EdPerIcmKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
operac : string;
begin
  inherited;
  if (key = 13) or (key = 40) then begin

     if nvIcm.Salvar then begin

        if GerIcm.State = dsInsert then Operac := 'I';

        if Trim( GerIcmSigUfe.Value ) <> '' then begin

           nvIcm.SBSalvaClick(Sender);

           if (Operac = 'I') and (not nvIcm.Salvar) then begin

              nvIcm.SBIncluiClick(Sender);

              EdPerIcm.SetFocus;

           end;
        end;
     end;
  end;
end;

procedure TfmManUfe2.nvUfeImprime(Sender: TObject);
begin
  inherited;

  GerUfe.First;

  if not GerUfe.Eof then begin

     try

        ppReport.DeviceType := 'Screen';
        fmPreview := TfmPreview.Create(fmManUfe2);
        fmPreview.ppViewer.Report := ppReport;
        ppReport.PrintToDevices;
        fmPreview.ShowModal;

        if Assigned(ppReport.AfterPrint) then ppReport.AfterPrint(Sender);

     finally

        FreeAndNil(fmPreview);

     end;
  end;
end;

procedure TfmManUfe2.EdCodGruKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := GerProCodClp.Value;

        fmAuxIni.TipoPesq := 'G';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then begin

           if GerPro.State = dsBrowse then begin

              if Trim( GerProSigUfe.Value ) <> '' then
                 GerPro.Edit
              else
                 GerPro.Append;

           end;

           GerProCodGru.Value := fmAuxIni.CodGru;

        end;

     finally   

        FreeAndNil(fmAuxIni);

     end;

  end;

  if key = 113 then begin {F2 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.CodClp := GerProCodClp.Value;

        fmAuxPsq.TipoPesq := 'G';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodGru ) <> '' then begin

           if GerPro.State = dsBrowse then begin

              if Trim( GerProSigUfe.Value ) <> '' then
                 GerPro.Edit
              else
                 GerPro.Append;

           end;

           GerProCodGru.Value := fmAuxPsq.CodGru;

        end;

     finally   

        FreeAndNil(fmAuxPsq);

     end;

  end;
end;

procedure TfmManUfe2.EdCodSubKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        if Trim( GerProCodClp.Value ) <> '' then fmAuxIni.CodClp := GerProCodClp.Value;
        if Trim( GerProCodGru.Value ) <> '' then fmAuxIni.CodGru := GerProCodGru.Value;

        fmAuxIni.TipoPesq := 'S';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then begin

           if GerPro.State = dsBrowse then begin

              if Trim( GerProSigUfe.Value ) <> '' then
                 GerPro.Edit
              else
                 GerPro.Append;

          end;

           GerProCodGru.Value := fmAuxIni.CodGru;
           GerProCodSub.Value := fmAuxIni.CodSub;

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

  end;

  if key = 113 then begin {F2 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        if Trim( GerProCodClp.Value ) <> '' then fmAuxPsq.CodClp := GerProCodClp.Value;
        if Trim( GerProCodGru.Value ) <> '' then fmAuxPsq.CodGru := GerProCodGru.Value;

        fmAuxPsq.TipoPesq := 'S';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodGru ) <> '' then begin

           if GerPro.State = dsBrowse then begin

              if Trim( GerProSigUfe.Value ) <> '' then
                 GerPro.Edit
              else
                 GerPro.Append;

           end;

           GerProCodGru.Value := fmAuxPsq.CodGru;
           GerProCodSub.Value := fmAuxPsq.CodSub;

        end;

     finally

        FreeAndNil(fmAuxPsq);
        
     end;

  end;
end;

procedure TfmManUfe2.EdCodProKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {f1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        if Trim( GerProCodClp.Value ) <> '' then fmAuxIni.CodClp := GerProCodClp.Value;
        if Trim( GerProCodGru.Value ) <> '' then fmAuxIni.CodGru := GerProCodGru.Value;
        if Trim( GerProCodSub.Value ) <> '' then fmAuxIni.CodSub := GerProCodSub.Value;

        fmAuxIni.TipoPesq := 'I';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then begin

           if GerPro.State = dsBrowse then begin

              if Trim( GerProSigUfe.Value ) <> '' then
                 GerPro.Edit
              else
                 GerPro.Append;

           end;

           GerProCodClp.Value := fmAuxIni.CodClp;
           GerProCodGru.Value := fmAuxIni.CodGru;
           GerProCodSub.Value := fmAuxIni.CodSub;
           GerProCodPro.Value := fmAuxIni.CodPro;

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

  end;

  if key = 113 then begin {F5 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        if Trim( GerProCodClp.Value ) <> '' then fmAuxPsq.CodClp := GerProCodClp.Value;
        if Trim( GerProCodGru.Value ) <> '' then fmAuxPsq.CodGru := GerProCodGru.Value;
        if Trim( GerProCodSub.Value ) <> '' then fmAuxPsq.CodSub := GerProCodSub.Value;

        fmAuxPsq.TipoPesq := 'I';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodGru ) <> '' then begin

           if GerPro.State = dsBrowse then begin

              if Trim( GerProSigUfe.Value ) <> '' then
                 GerPro.Edit
              else
                 GerPro.Append;

           end;

           GerProCodClp.Value := fmAuxPsq.CodClp;
           GerProCodGru.Value := fmAuxPsq.CodGru;
           GerProCodSub.Value := fmAuxPsq.CodSub;
           GerProCodPro.Value := fmAuxPsq.CodPro;

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

  end;
end;

procedure TfmManUfe2.GerProNewRecord(DataSet: TDataSet);
begin
  inherited;
  
  GerPro.DisableControls;

  GerProFlgTrg.Value := ' ';
  GerProCodClp.Value := '1';
  GerProFlgDes.Value := 'Nao';
  GerProTipIcm.Value := 'Saida';
  GerProSigUfe.Value := GerUfeSigUfe.Value;
  GerProSeqPro.Value := GerUfeSeqPro.Value + 1;
  GerProNroPro.Value := GerUfeQtdPro.Value + 1;

  GerPro.EnableControls;

  EdNomUfe.Enabled := False;
  EdDscUfe.Enabled := False;
  EdDscCom.Enabled := False;
  EdSubTrb.Enabled := False;
  EdPerIcm.Enabled := False;

  EdNomUfe.Font.Style := [fsBold];
  EdDscUfe.Font.Style := [fsBold];
  EdDscCom.Font.Style := [fsBold];
  EdSubTrb.Font.Style := [fsBold];
  EdPerIcm.Font.Style := [fsBold];

  nvUfe.Enabled := False;
  nvIcm.Enabled := False;

end;

procedure TfmManUfe2.Panel8Exit(Sender: TObject);
var
Operac : string;
begin
  inherited;
  {if nvPro.Salvar then begin

     if Trim( GerProDscPro.Value ) = '' then fmsgErro('Campo de Preenchimento Obrigatorio não Informado.',EdDscPro);

     with quSQL,SQL do begin

          Close;
          Text := ' Select Count(*) as Reg From EstPro'+
                  ' Where EstPro.CodClp = :CodClp'+
                  '   and EstPro.CodGru = :CodGru'+
                  '   and EstPro.CodSub = :CodSub'+
                  '   and EstPro.CodPro = :CodPro';

          with Params do begin

               Params[0].AsString := GerProCodClp.Value;
               Params[1].AsString := GerProCodGru.Value;
               Params[2].AsString := GerProCodSub.Value;
               Params[3].AsString := GerProCodPro.Value;

          end;

          Open;

     end;

     if quSQL.FieldbyName('Reg').AsInteger > 0 then begin

        if GerPro.State = dsInsert then Operac := 'dsInsert';

        nvPro.SBSalvaClick(Sender);

        if (Operac = 'dsInsert') and (not nvPro.Salvar) then begin

           nvPro.SBIncluiClick(Sender);

        end;

        end
     else
        fmsgErro('Item Informado não Encontrado.',EdCodGru);

  end;}
end;

procedure TfmManUfe2.nvProExclui(Sender: TObject);
var
  sSigUfe : string;
  sSeqPro : integer;
begin
  inherited;

  sSigUfe := GerUfeSigUfe.Value;
  sSeqPro := GerProSeqPro.Value;

  GerUfe.Close;
  GerUfe.Open;

  if Trim( sSigUfe ) <> '' then begin

     GerUfe.Locate('SigUfe',sSigUfe,[LoPartialKey]);

     if sSeqPro > 0 then GerPro.Locate('SigUfe;SeqPro',VarArrayOf([sSigUfe,sSeqPro]), [loPartialKey]);

  end;
end;

procedure TfmManUfe2.dsGerDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  {if not nvPro.Salvar then begin

     if EdCodGru.Enabled then begin

        EdCodGru.Enabled := False;
        EdCodSub.Enabled := False;
        EdCodPro.Enabled := False;

        EdCodGru.Font.Style := [fsBold];
        EdCodSub.Font.Style := [fsBold];
        EdCodPro.Font.Style := [fsBold];

     end;
  end;}

  if EstGru.Params[0].AsString <> GerProCodClp.Value then begin

     EstGru.Close;
     EstGru.Params[0].AsString := GerProCodClp.Value;
     EstGru.Open;

  end;

  if (EstSub.Params[0].AsString <> GerProCodGru.Value) or
     (EstSub.Params[1].AsString <> GerProCodClp.Value) then begin

     EstSub.Close;
     EstSub.Params[0].AsString := GerProCodGru.Value;
     EstSub.Params[1].AsString := GerProCodClp.Value;
     EstSub.Open;

  end;

  if (EstPro.Params[0].AsString <> GerProCodClp.Value) or
     (EstPro.Params[1].AsString <> GerProCodGru.Value) or
     (EstPro.Params[2].AsString <> GerProCodSub.Value) then begin

     EstPro.Close;
     EstPro.Params[0].AsString := GerProCodClp.Value;
     EstPro.Params[1].AsString := GerProCodGru.Value;
     EstPro.Params[2].AsString := GerProCodSub.Value;
     EstPro.Open;

  end;

  if (EstIcm.Params[0].AsString <> GerProRegIcm.Value) or
     (EstIcm.Params[1].AsString <> GerProTipIcm.Value) then begin

     EstIcm.Close;
     EstIcm.Params[0].AsString := GerProRegIcm.Value;
     EstIcm.Params[1].AsString := GerProTipIcm.Value;
     EstIcm.Open;

  end;
end;

procedure TfmManUfe2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManUfe2.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManUfe2 := nil;
end;

procedure TfmManUfe2.DsUfeDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if GerPro.Params[0].AsString <> GerUfeSigUfe.Value then begin

     GerPro.Close;
     GerPro.Params[0].AsString := GerUfeSigUfe.Value;
     GerPro.Open;

  end;

  if EstGru.Params[0].AsString <> GerProCodClp.Value then begin

     EstGru.Close;
     EstGru.Params[0].AsString := GerProCodClp.Value;
     EstGru.Open;

  end;

  if (EstSub.Params[0].AsString <> GerProCodGru.Value) or
     (EstSub.Params[1].AsString <> GerProCodClp.Value) then begin

     EstSub.Close;
     EstSub.Params[0].AsString := GerProCodGru.Value;
     EstSub.Params[1].AsString := GerProCodClp.Value;
     EstSub.Open;

  end;

  if (EstPro.Params[0].AsString <> GerProCodClp.Value) or
     (EstPro.Params[1].AsString <> GerProCodGru.Value) or
     (EstPro.Params[2].AsString <> GerProCodSub.Value) then begin

     EstPro.Close;
     EstPro.Params[0].AsString := GerProCodClp.Value;
     EstPro.Params[1].AsString := GerProCodGru.Value;
     EstPro.Params[2].AsString := GerProCodSub.Value;
     EstPro.Open;

  end;
  
  if (EstIcm.Params[0].AsString <> GerProRegIcm.Value) or
     (EstIcm.Params[1].AsString <> GerProTipIcm.Value) then begin

     EstIcm.Close;
     EstIcm.Params[0].AsString := GerProRegIcm.Value;
     EstIcm.Params[1].AsString := GerProTipIcm.Value;
     EstIcm.Open;

  end;
  
  if not nvUfe.Salvar then begin

     if EdSigUfe.Enabled then begin

        EdSigUfe.Enabled := False;

        EdSigUfe.Font.Style := [fsBold];

        EdPerIcm.Enabled := True;

        EdPerIcm.Font.Style := [];

        nvIcm.Enabled := True;

     end;

     if GerIcm.Params[0].AsString <> GerUfeSigUfe.Value then begin

        GerIcm.Close;
        GerIcm.Params[0].AsString := GerUfeSigUfe.Value;
        GerIcm.Open;

     end;
  end;
end;

procedure TfmManUfe2.DsIcmDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if not nvIcm.Salvar then begin

     if not EdNomUfe.Enabled then begin

        EdNomUfe.Enabled := True;
        EdDscUfe.Enabled := True;

        EdNomUfe.Font.Style := [];
        EdDscUfe.Font.Style := [];

        nvUfe.Enabled := True;

     end;
  end;
end;

procedure TfmManUfe2.nvUfeSalva(Sender: TObject);
begin
  inherited;

  if fmmanpri.Emerion_01 then
  with fmManGDB.dbEmerion1 do begin

       try
          Connected := True;
       except
          on E: Exception do begin
             fMsg('Sem comunicação com a Unidade Aurora. Alteração não foi envidada para esta Unidade','E');
          end;
       end;

  end;

  if fmmanpri.Emerion_02 then
  with fmManGDB.dbEmerion2 do begin

       try
          Connected := True;
       except
          on E: Exception do begin
             fMsg('Sem comunicação com a Unidade Gusmões. Alteração não foi envidada para esta Unidade','E');
          end;
       end;

  end;

  sleep(1000);

  try

     if fmManGDB.dbEmerion1.Connected then begin

        with quSQL2,SQL do begin

             Close;
             Text := ' Select * From GerUfe Where GerUfe.SigUfe = '+ QuotedStr(GerUfeSigUfe.Value);
             Open;

        end;

        if Trim( quSQL2.FieldbyName('SigUfe').AsString ) = '' then begin

           with quSQL2,SQL do begin

                Close;
                Text := ' Insert Into GerUfe(SigUfe,NomUfe,DscUfe,DscCom,NroUfe,SubTrb,QtdIcm,SeqIcm,FlgTrg,QtdPro,SeqPro)'+
                        '             Values(:SigUfe,:NomUfe,:DscUfe,:DscCom,:NroUfe,:SubTrb,:QtdIcm,:SeqIcm,:FlgTrg,:QtdPro,:SeqPro)';

                with Params do begin

                     Params[00].AsString  := GerUfeSigUfe.Value;
                     Params[01].AsString  := GerUfeNomUfe.Value;
                     Params[02].AsFloat   := GerUfeDscUfe.Value;
                     Params[03].AsFloat   := GerUfeDscCom.Value;
                     Params[04].AsInteger := GerUfeNroUfe.Value;
                     Params[05].AsString  := GerUfeSubTrb.Value;
                     Params[06].AsInteger := GerUfeQtdIcm.Value;
                     Params[07].AsInteger := GerUfeSeqIcm.Value;
                     Params[08].AsString  := GerUfeFlgTrg.Value;
                     Params[09].AsInteger := GerUfeQtdPro.Value;
                     Params[10].AsInteger := GerUfeSeqPro.Value;

                end;

                ExecSQL;

           end;

           end
        else
           begin

           if ( GerUfeNomUfe.Value <> quSQL2.FieldbyName('NomUfe').AsString ) or
              ( GerUfeDscUfe.Value <> quSQL2.FieldbyName('DscUfe').AsFloat  ) or
              ( GerUfeDscCom.Value <> quSQL2.FieldbyName('DscCom').AsFloat  ) or
              ( GerUfeSubTrb.Value <> quSQL2.FieldbyName('SubTrb').AsString ) then begin
           
              with quSQL2,SQL do begin

                   Close;
                   Text := ' Update GerUfe Set NomUfe = :NumUfe,'+
                           '                   DscUfe = :DscUfe,'+
                           '                   DscCom = :DscCom,'+
                           '                   SubTrb = :SubTrb '+
                           ' Where GerUfe.SigUfe = :SigUfe';

                   with Params do begin

                        Params[00].AsString  := GerUfeNomUfe.Value;
                        Params[01].AsFloat   := GerUfeDscUfe.Value;
                        Params[02].AsFloat   := GerUfeDscCom.Value;
                        Params[03].AsString  := GerUfeSubTrb.Value;
                        Params[04].AsString  := GerUfeSigUfe.Value;

                   end;

                   ExecSQL;

              end;
           end;
        end;
     end;
     
     if fmManGDB.dbEmerion2.Connected then begin

        with quSQL3,SQL do begin

             Close;
             Text := 'Select * From GerUfe Where GerUfe.SigUfe = '+ QuotedStr(GerUfeSigUfe.Value);
             Open;

        end;

        if Trim( quSQL3.FieldbyName('SigUfe').AsString ) = '' then begin

           with quSQL3,SQL do begin

                Close;
                Text := ' Insert Into GerUfe(SigUfe,NomUfe,DscUfe,DscCom,NroUfe,SubTrb,QtdIcm,SeqIcm,FlgTrg,QtdPro,SeqPro)'+
                        '             Values(:SigUfe,:NomUfe,:DscUfe,:DscCom,:NroUfe,:SubTrb,:QtdIcm,:SeqIcm,:FlgTrg,:QtdPro,:SeqPro)';

                with Params do begin

                     Params[00].AsString  := GerUfeSigUfe.Value;
                     Params[01].AsString  := GerUfeNomUfe.Value;
                     Params[02].AsFloat   := GerUfeDscUfe.Value;
                     Params[03].AsFloat   := GerUfeDscCom.Value;
                     Params[04].AsInteger := GerUfeNroUfe.Value;
                     Params[05].AsString  := GerUfeSubTrb.Value;
                     Params[06].AsInteger := GerUfeQtdIcm.Value;
                     Params[07].AsInteger := GerUfeSeqIcm.Value;
                     Params[08].AsString  := GerUfeFlgTrg.Value;
                     Params[09].AsInteger := GerUfeQtdPro.Value;
                     Params[10].AsInteger := GerUfeSeqPro.Value;

                end;

                ExecSQL;

           end;

           end
        else
           begin

           if ( GerUfeNomUfe.Value <> quSQL3.FieldbyName('NomUfe').AsString ) or
              ( GerUfeDscUfe.Value <> quSQL3.FieldbyName('DscUfe').AsFloat  ) or
              ( GerUfeDscCom.Value <> quSQL3.FieldbyName('DscCom').AsFloat  ) or
              ( GerUfeSubTrb.Value <> quSQL3.FieldbyName('SubTrb').AsString ) then begin

              with quSQL3,SQL do begin

                   Close;
                   Text := ' Update GerUfe Set NomUfe = :NumUfe,'+
                           '                   DscUfe = :DscUfe,'+
                           '                   DscCom = :DscCom,'+
                           '                   SubTrb = :SubTrb '+
                           ' Where GerUfe.SigUfe = :SigUfe';

                   with Params do begin

                        Params[00].AsString  := GerUfeNomUfe.Value;
                        Params[01].AsFloat   := GerUfeDscUfe.Value;
                        Params[02].AsFloat   := GerUfeDscCom.Value;
                        Params[03].AsString  := GerUfeSubTrb.Value;
                        Params[04].AsString  := GerUfeSigUfe.Value;

                   end;

                   ExecSQL;

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
end;

procedure TfmManUfe2.GerUfeBeforeDelete(DataSet: TDataSet);
begin
  inherited;

  if fmmanpri.Emerion_01 then
  with fmManGDB.dbEmerion1 do begin

       try
          Connected := True;
       except
          on E: Exception do begin
             fMsg('Sem comunicação com a Unidade Aurora. Alteração não foi envidada para esta Unidade','E');
          end;
       end;

  end;

  if fmmanpri.Emerion_02 then
  with fmManGDB.dbEmerion2 do begin

       try
          Connected := True;
       except
          on E: Exception do begin
             fMsg('Sem comunicação com a Unidade Gusmões. Alteração não foi envidada para esta Unidade','E');
          end;
       end;

  end;

  sleep(1000);
  
  try

     if fmManGDB.dbEmerion1.Connected then begin

        with quSQL2,SQL do begin

             Close;
             Text := ' Delete From GerUfe Where GerUfe.SigUfe = '+ QuotedStr(GerUfeSigUfe.Value);
             ExecSQL;

        end;
     end;

     if fmManGDB.dbEmerion2.Connected then begin

        with quSQL3,SQL do begin

             Close;
             Text := ' Delete From GerUfe Where GerUfe.SigUfe = '+ QuotedStr(GerUfeSigUfe.Value);
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

procedure TfmManUfe2.nvIcmSalva(Sender: TObject);
begin
  inherited;

  if fmmanpri.Emerion_01 then
  with fmManGDB.dbEmerion1 do begin

       try
          Connected := True;
       except
          on E: Exception do begin
             fMsg('Sem comunicação com a Unidade Aurora. Alteração não foi envidada para esta Unidade','E');
          end;
       end;

  end;

  if fmmanpri.Emerion_02 then
  with fmManGDB.dbEmerion2 do begin

       try
          Connected := True;
       except
          on E: Exception do begin
             fMsg('Sem comunicação com a Unidade Gusmões. Alteração não foi envidada para esta Unidade','E');
          end;
       end;

  end;

  sleep(1000);

  try

     if fmManGDB.dbEmerion1.Connected then begin

        with quSQL2,SQL do begin

             Close;
             Text := ' Select * From GerIcm Where GerIcm.PerIcm = '+ QuotedStr(fConvertValor(FloatToStr(GerIcmPerIcm.Value)));
             Open;

        end;

        if Trim( quSQL2.FieldbyName('SigUfe').AsString ) = '' then begin

           with quSQL2,SQL do begin

                Close;
                Text := ' Insert Into GerIcm(SigUfe,SeqIcm,PerIcm)'+
                        '             Values(:SigUfe,:SeqIcm,:PerIcm)';

                with Params do begin

                     Params[00].AsString  := GerIcmSigUfe.Value;
                     Params[01].AsInteger := GerIcmSeqIcm.Value;
                     Params[02].AsFloat   := GerIcmPerIcm.Value;

                end;

                ExecSQL;

           end;

           end
        else
           begin

           if GerIcmPerIcm.Value <> quSQL2.FieldbyName('PerIcm').AsFloat then begin
           
              with quSQL2,SQL do begin

                   Close;
                   Text := ' Update GerIcm Set PerIcm = :PerIcm'+
                           ' Where GerIcm.SigUfe = :SigUfe'+
                           '   and GerIcm.SeqIcm = :SeqIcm';

                   with Params do begin

                        Params[00].AsFloat   := GerIcmPerIcm.Value;
                        Params[01].AsString  := GerIcmSigUfe.Value;
                        Params[02].AsInteger := GerIcmSeqIcm.Value;

                   end;

                   ExecSQL;

              end;
           end;
        end;
     end;
     
     if fmManGDB.dbEmerion2.Connected then begin

        with quSQL3,SQL do begin

             Close;
             Text := ' Select * From GerIcm Where GerIcm.PerIcm = '+ QuotedStr(fConvertValor(FloatToStr(GerIcmPerIcm.Value)));
             Open;

        end;

        if Trim( quSQL3.FieldbyName('SigUfe').AsString ) = '' then begin

           with quSQL3,SQL do begin

                Close;
                Text := ' Insert Into GerIcm(SigUfe,SeqIcm,PerIcm)'+
                        '             Values(:SigUfe,:SeqIcm,:PerIcm)';

                with Params do begin

                     Params[00].AsString  := GerIcmSigUfe.Value;
                     Params[01].AsInteger := GerIcmSeqIcm.Value;
                     Params[02].AsFloat   := GerIcmPerIcm.Value;

                end;

                ExecSQL;

           end;

           end
        else
           begin

           if GerIcmPerIcm.Value <> quSQL3.FieldbyName('PerIcm').AsFloat then begin

              with quSQL3,SQL do begin

                   Close;
                   Text := ' Update GerIcm Set PerIcm = :PerIcm'+
                           ' Where GerIcm.SigUfe = :SigUfe'+
                           '   and GerIcm.SeqIcm = :SeqIcm';

                   with Params do begin

                        Params[00].AsFloat   := GerIcmPerIcm.Value;
                        Params[01].AsString  := GerIcmSigUfe.Value;
                        Params[02].AsInteger := GerIcmSeqIcm.Value;

                   end;

                   ExecSQL;

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
end;

procedure TfmManUfe2.GerIcmBeforeDelete(DataSet: TDataSet);
begin
  inherited;

  if fmmanpri.Emerion_01 then
  with fmManGDB.dbEmerion1 do begin

       try
          Connected := True;
       except
          on E: Exception do begin
             fMsg('Sem comunicação com a Unidade Aurora. Alteração não foi envidada para esta Unidade','E');
          end;
       end;

  end;

  if fmmanpri.Emerion_02 then
  with fmManGDB.dbEmerion2 do begin

       try
          Connected := True;
       except
          on E: Exception do begin
             fMsg('Sem comunicação com a Unidade Gusmões. Alteração não foi envidada para esta Unidade','E');
          end;
       end;

  end;

  sleep(1000);
  
  try

     if fmManGDB.dbEmerion1.Connected then begin

        with quSQL2,SQL do begin

             Close;
             Text := ' Delete From GerIcm Where GerIcm.SigUfe = '+ QuotedStr(GerIcmSigUfe.Value) + ' and GerIcm.SeqIcm = '+ QuotedStr(IntToStr(GerIcmSeqIcm.Value));
             ExecSQL;

        end;
     end;

     if fmManGDB.dbEmerion2.Connected then begin

        with quSQL3,SQL do begin

             Close;
             Text := ' Delete From GerIcm Where GerIcm.SigUfe = '+ QuotedStr(GerIcmSigUfe.Value) + ' and GerIcm.SeqIcm = '+ QuotedStr(IntToStr(GerIcmSeqIcm.Value));
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

procedure TfmManUfe2.nvProSalva(Sender: TObject);
var
  sSigUfe : string;
  sSeqPro : integer;
begin
  inherited;

  if fmmanpri.Emerion_01 then
  with fmManGDB.dbEmerion1 do begin

       try
          Connected := True;
       except
          on E: Exception do begin
             fMsg('Sem comunicação com a Unidade Aurora. Alteração não foi envidada para esta Unidade','E');
          end;
       end;

  end;

  if fmmanpri.Emerion_02 then
  with fmManGDB.dbEmerion2 do begin

       try
          Connected := True;
       except
          on E: Exception do begin
             fMsg('Sem comunicação com a Unidade Gusmões. Alteração não foi envidada para esta Unidade','E');
          end;
       end;

  end;

  sleep(1000);

  try

     if fmManGDB.dbEmerion1.Connected then begin

        GerPro_01.Close;
        GerPro_01.Params[0].AsString := GerProSigUfe.Value;
        GerPro_01.Params[1].AsString := GerProCodClp.Value;
        GerPro_01.Params[2].AsString := GerProCodGru.Value;
        GerPro_01.Params[3].AsString := GerProCodSub.Value;
        GerPro_01.Params[4].AsString := GerProCodPro.Value;
        GerPro_01.Open;

        if Trim( GerPro_01SigUfe.Value ) = '' then begin

           GerPro_01.Insert;

           GerPro_01SigUfe.Value := GerProSigUfe.Value;
           GerPro_01SeqPro.Value := GerProSeqPro.Value;
           GerPro_01CodClp.Value := GerProCodClp.Value;
           GerPro_01CodGru.Value := GerProCodGru.Value;
           GerPro_01CodSub.Value := GerProCodSub.Value;
           GerPro_01CodPro.Value := GerProCodPro.Value;
           GerPro_01DscPro.Value := GerProDscPro.Value;
           GerPro_01FlgDes.Value := GerProFlgDes.Value;
           GerPro_01NroPro.Value := GerProNroPro.Value;
           GerPro_01FlgTrg.Value := GerProFlgTrg.Value;

           if Trim( GerProRegIcm.Value ) <> '' then
              GerPro_01RegIcm.Value := GerProRegIcm.Value
           else
              GerPro_01RegIcm.Clear;
              
           if Trim( GerProTipIcm.Value ) <> '' then
              GerPro_01TipIcm.Value := GerProTipIcm.Value
           else
              GerPro_01TipIcm.Clear;
              
           GerPro_01.ApplyUpdates;

           end
        else
           begin

           if (GerPro_01DscPro.Value <> GerProDscPro.Value) or
              (GerPro_01FlgDes.Value <> GerProFlgDes.Value) or
              (GerPro_01RegIcm.Value <> GerProRegIcm.Value) or
              (GerPro_01TipIcm.Value <> GerProTipIcm.Value) then begin

              GerPro_01.Edit;

              GerPro_01FlgTrg.Value := '*';

              GerPro_01DscPro.Value := GerProDscPro.Value;
              GerPro_01FlgDes.Value := GerProFlgDes.Value;

              if Trim( GerProRegIcm.Value ) <> '' then
                 GerPro_01RegIcm.Value := GerProRegIcm.Value
              else
                 GerPro_01RegIcm.Clear;

              if Trim( GerProTipIcm.Value ) <> '' then
                 GerPro_01TipIcm.Value := GerProTipIcm.Value
              else
                 GerPro_01TipIcm.Clear;

              GerPro_01.ApplyUpdates;

           end;
        end;

        GerPro_01.Close;

     end;

     if fmManGDB.dbEmerion2.Connected then begin

        GerPro_02.Close;
        GerPro_02.Params[0].AsString := GerProSigUfe.Value;
        GerPro_02.Params[1].AsString := GerProCodClp.Value;
        GerPro_02.Params[2].AsString := GerProCodGru.Value;
        GerPro_02.Params[3].AsString := GerProCodSub.Value;
        GerPro_02.Params[4].AsString := GerProCodPro.Value;
        GerPro_02.Open;

        if Trim( GerPro_02SigUfe.Value ) = '' then begin

           GerPro_02.Insert;

           GerPro_02SigUfe.Value := GerProSigUfe.Value;
           GerPro_02SeqPro.Value := GerProSeqPro.Value;
           GerPro_02CodClp.Value := GerProCodClp.Value;
           GerPro_02CodGru.Value := GerProCodGru.Value;
           GerPro_02CodSub.Value := GerProCodSub.Value;
           GerPro_02CodPro.Value := GerProCodPro.Value;
           GerPro_02DscPro.Value := GerProDscPro.Value;
           GerPro_02FlgDes.Value := GerProFlgDes.Value;
           GerPro_02NroPro.Value := GerProNroPro.Value;
           GerPro_02FlgTrg.Value := GerProFlgTrg.Value;

           if Trim( GerProRegIcm.Value ) <> '' then
              GerPro_02RegIcm.Value := GerProRegIcm.Value
           else
              GerPro_02RegIcm.Clear;
              
           if Trim( GerProTipIcm.Value ) <> '' then
              GerPro_02TipIcm.Value := GerProTipIcm.Value
           else
              GerPro_02TipIcm.Clear;
              
           GerPro_02.ApplyUpdates;

           end
        else
           begin

           if (GerPro_02DscPro.Value <> GerProDscPro.Value) or
              (GerPro_02FlgDes.Value <> GerProFlgDes.Value) or
              (GerPro_02RegIcm.Value <> GerProRegIcm.Value) or
              (GerPro_02TipIcm.Value <> GerProTipIcm.Value) then begin

              GerPro_02.Edit;

              GerPro_02FlgTrg.Value := '*';

              GerPro_02DscPro.Value := GerProDscPro.Value;
              GerPro_02FlgDes.Value := GerProFlgDes.Value;

              if Trim( GerProRegIcm.Value ) <> '' then
                 GerPro_02RegIcm.Value := GerProRegIcm.Value
              else
                 GerPro_02RegIcm.Clear;

              if Trim( GerProTipIcm.Value ) <> '' then
                 GerPro_02TipIcm.Value := GerProTipIcm.Value
              else
                 GerPro_02TipIcm.Clear;

              GerPro_02.ApplyUpdates;

           end;
        end;

        GerPro_02.Close;
        
     end;

     fmManGDB.dbEmerion1.Connected := False;
     fmManGDB.dbEmerion2.Connected := False;

  except

     fmManGDB.dbEmerion1.Connected := False;
     fmManGDB.dbEmerion2.Connected := False;

  end;

  sSigUfe := GerUfeSigUfe.Value;
  sSeqPro := GerProSeqPro.Value;

  GerUfe.Close;
  GerUfe.Open;

  if Trim( sSigUfe ) <> '' then begin

     GerUfe.Locate('SigUfe',sSigUfe,[LoPartialKey]);

     if sSeqPro > 0 then GerPro.Locate('SigUfe;SeqPro',VarArrayOf([sSigUfe,sSeqPro]), [loPartialKey]);

  end;
end;

procedure TfmManUfe2.GerProBeforeDelete(DataSet: TDataSet);
begin
  inherited;

  if fmmanpri.Emerion_01 then
  with fmManGDB.dbEmerion1 do begin

       try
          Connected := True;
       except
          on E: Exception do begin
             fMsg('Sem comunicação com a Unidade Aurora. Alteração não foi envidada para esta Unidade','E');
          end;
       end;

  end;

  if fmmanpri.Emerion_02 then
  with fmManGDB.dbEmerion2 do begin

       try
          Connected := True;
       except
          on E: Exception do begin
             fMsg('Sem comunicação com a Unidade Gusmões. Alteração não foi envidada para esta Unidade','E');
          end;
       end;

  end;

  sleep(1000);

  try

     if fmManGDB.dbEmerion1.Connected then begin

        with quSQL2,SQL do begin

             Close;
             Text := ' Delete From GerPro'+
                     ' Where GerPro.SigUfe = '+ QuotedStr(GerProSigUfe.Value) +
                     '   and GerPro.CodClp = '+ QuotedStr(GerProCodClp.Value) +
                     '   and GerPro.CodGru = '+ QuotedStr(GerProCodGru.Value) +
                     '   and GerPro.CodSub = '+ QuotedStr(GerProCodSub.Value) +
                     '   and GerPro.CodPro = '+ QuotedStr(GerProCodPro.Value) ;                                                               
             ExecSQL;

        end;
     end;

     if fmManGDB.dbEmerion2.Connected then begin

        with quSQL3,SQL do begin

             Close;
             Text := ' Delete From GerPro'+
                     ' Where GerPro.SigUfe = '+ QuotedStr(GerProSigUfe.Value) +
                     '   and GerPro.CodClp = '+ QuotedStr(GerProCodClp.Value) +
                     '   and GerPro.CodGru = '+ QuotedStr(GerProCodGru.Value) +
                     '   and GerPro.CodSub = '+ QuotedStr(GerProCodSub.Value) +
                     '   and GerPro.CodPro = '+ QuotedStr(GerProCodPro.Value) ;                                                               
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

procedure TfmManUfe2.EdRegIcmKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'ICMS';

        fmAuxIni.TipIcm := 'Saida';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodIcm ) <> '' then begin

           GerProRegIcm.Value := fmAuxIni.CodIcm;
           GerProTipIcm.Value := fmAuxIni.TipIcm;

        end;

     finally   

        FreeAndNil(fmAuxIni);

     end;

  end;
end;

procedure TfmManUfe2.GerUfeAfterPost(DataSet: TDataSet);
begin
  inherited;

  EdPerIcm.Enabled := True;

  EdPerIcm.Font.Style := [];

  nvIcm.Enabled := True;

end;

procedure TfmManUfe2.GerProAfterCancel(DataSet: TDataSet);
begin
  inherited;

  EdNomUfe.Enabled := True;
  EdDscUfe.Enabled := True;
  EdDscCom.Enabled := True;
  EdSubTrb.Enabled := True;
  EdPerIcm.Enabled := True;

  EdNomUfe.Font.Style := [];
  EdDscUfe.Font.Style := [];
  EdDscCom.Font.Style := [];
  EdSubTrb.Font.Style := [];
  EdPerIcm.Font.Style := [];

  nvUfe.Enabled := True;
  nvIcm.Enabled := True;

end;

procedure TfmManUfe2.GerProAfterPost(DataSet: TDataSet);
begin
  inherited;

  EdNomUfe.Enabled := True;
  EdDscUfe.Enabled := True;
  EdDscCom.Enabled := True;
  EdSubTrb.Enabled := True;
  EdPerIcm.Enabled := True;

  EdNomUfe.Font.Style := [];
  EdDscUfe.Font.Style := [];
  EdDscCom.Font.Style := [];
  EdSubTrb.Font.Style := [];
  EdPerIcm.Font.Style := [];

  nvUfe.Enabled := True;
  nvIcm.Enabled := True;

end;

procedure TfmManUfe2.GerProBeforeEdit(DataSet: TDataSet);
begin
  inherited;

  EdNomUfe.Enabled := False;
  EdDscUfe.Enabled := False;
  EdDscCom.Enabled := False;
  EdSubTrb.Enabled := False;
  EdPerIcm.Enabled := False;

  EdNomUfe.Font.Style := [fsBold];
  EdDscUfe.Font.Style := [fsBold];
  EdDscCom.Font.Style := [fsBold];
  EdSubTrb.Font.Style := [fsBold];
  EdPerIcm.Font.Style := [fsBold];

  nvUfe.Enabled := False;
  nvIcm.Enabled := False;

end;

procedure TfmManUfe2.nvProBeforeSalva(Sender: TObject);
begin
  inherited;
  if Trim(GerProRegIcm.Value) = '' then begin

     GerProRegIcm.Clear;
     GerProTipIcm.Clear;

     end
  else
     GerProTipIcm.Value := 'Saida';
end;

procedure TfmManUfe2.pcUfeChange(Sender: TObject);
begin
  inherited;
  if (pcUfe.ActivePageIndex = 0) then  Bbselecionar.Click;
end;

end.
