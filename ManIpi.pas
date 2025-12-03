unit ManIpi;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, hNavigator, ExtCtrls, DBTables, Db, Wwdatsrc, Wwquery, StdCtrls,
  Mask, DBCtrls, hEdits, Grids, Wwdbigrd, Wwdbgrid, hGrid, ComCtrls,
  wwdblook, Buttons, AlignEdit, ppBands, ppClass, ppDB, ppCtrls, ppVar,
  ppPrnabl, ppProd, ppReport, ppComm, ppRelatv, ppCache, ppDBPipe, dxCntner,
  dxEditor, dxExEdtr, dxEdLib, dxDBELib, wwriched, dxDBEdtr,
  dxDBColorCurrencyEdit, dxDBColorPickEdit, dxDBColorEdit, dxColorPickEdit,
  dxColorEdit, dxDBColorLookupEdit, clipbrd;

type
  TfmManIpi = class(TfmPadrao)
    pcIpi: TPageControl;
    pcPag1: TTabSheet;
    pcPag2: TTabSheet;
    quSql: TwwQuery;
    nvIpi: ThDBNavigator;
    EstIpi: TwwQuery;
    DsIpi: TwwDataSource;
    UpIpi: TUpdateSQL;
    EstIpiTIPIPI: TStringField;
    EstIpiNOMIPI: TStringField;
    Label12: TLabel;
    Shape11: TShape;
    Panel3: TPanel;
    grIpi: ThGrid;
    Label1: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    EdPsqNomIpi: TdxColorEdit;
    EdPsqCodIpi: TdxColorEdit;
    Label8: TLabel;
    Shape2: TShape;
    BbPesquisa: TBitBtn;
    rgOrdem: TRadioGroup;
    rgBusca: TRadioGroup;
    Shape3: TShape;
    EdPsqTipIpi: TdxColorPickEdit;
    Label11: TLabel;
    Label13: TLabel;
    Shape4: TShape;
    Shape5: TShape;
    Shape7: TShape;
    Shape1: TShape;
    DsReport: TppDBPipeline;
    ppReport: TppReport;
    hbReport: TppHeaderBand;
    ppLabel20: TppLabel;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    dbReport: TppDetailBand;
    ppCodIpi: TppDBText;
    ppNomIpi: TppDBText;
    ppTipIpi: TppDBText;
    ppPerIPi: TppDBText;
    ppRedIpi: TppDBText;
    ppRecIpi: TppDBText;
    ppBasIpi: TppDBText;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppClsIpi: TppDBText;
    ppLabel11: TppLabel;
    ppTrbIpi: TppDBText;
    ppLabel14: TppLabel;
    EstIpiCODIPI: TStringField;
    ppLabel45: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel15: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    quSQL2: TwwQuery;
    quSQL3: TwwQuery;
    EstTxf: TwwQuery;
    EstTxfCODTXF: TStringField;
    EstTxfTIPTXF: TStringField;
    EstTxfDSRTXF: TStringField;
    DsTxf: TwwDataSource;
    EstSip: TwwQuery;
    dsSip: TwwDataSource;
    EstIpiID_ESTNCM: TIntegerField;
    Label20: TLabel;
    EstIpiCSTPIS: TStringField;
    EstIpiCSTCOF: TStringField;
    EstIpiALIQ_PIS: TFloatField;
    EstIpiALIQ_COF: TFloatField;
    EstCof: TwwQuery;
    dsCof: TwwDataSource;
    EstPis: TwwQuery;
    dsPis: TwwDataSource;
    EstPisNOMPIS: TStringField;
    EstPisSIGNFE: TStringField;
    EstCofNOMCOF: TStringField;
    EstCofSIGNFE: TStringField;
    EstSipNOMSIP: TStringField;
    EstSipSIGNFE: TStringField;
    EstIpiREGIPI: TStringField;
    EstIpiTRBIPI: TStringField;
    EstIpiPERIPI: TFloatField;
    EstIpiREDIPI: TFloatField;
    EstIpiRECIPI: TFloatField;
    EstIpiBASIPI: TFloatField;
    EstIpiCLSIPI: TStringField;
    EstIpiPERIMP: TFloatField;
    EstIpiCODTXF: TStringField;
    EstIpiFLG_SINEIF20: TStringField;
    EstIpiCSTIPI: TStringField;
    wwQuery3: TwwQuery;
    StringField5: TStringField;
    StringField6: TStringField;
    GroupBox1: TGroupBox;
    Label19: TLabel;
    Label22: TLabel;
    EstCstPis: TdxDBColorEdit;
    dxDBColorLookupEdit2: TdxDBColorLookupEdit;
    EstAliqPis: TdxDBColorCurrencyEdit;
    GroupBox2: TGroupBox;
    dxDBColorLookupEdit3: TdxDBColorLookupEdit;
    EstCstCof: TdxDBColorEdit;
    EstAliqCof: TdxDBColorCurrencyEdit;
    Label23: TLabel;
    Label21: TLabel;
    dxDBCheckEdit1: TdxDBCheckEdit;
    dxDBCheckEdit2: TdxDBCheckEdit;
    EstIpiFLG_DESC_ZF_PIS: TStringField;
    EstIpiFLG_DESC_ZF_COF: TStringField;
    GroupBox3: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    EdCodIpi: TdxDBColorEdit;
    EdNomIpi: TdxDBColorEdit;
    EdTipIpi: TdxDBColorPickEdit;
    EdClsIpi: TdxDBColorEdit;
    GroupBox4: TGroupBox;
    Label54: TLabel;
    Label17: TLabel;
    EdPerIpi: TdxDBColorCurrencyEdit;
    EdBasIpi: TdxDBColorCurrencyEdit;
    Label7: TLabel;
    EdRedIpi: TdxDBColorCurrencyEdit;
    EdRecIpi: TdxDBColorCurrencyEdit;
    Label10: TLabel;
    EdTrbIpi: TdxDBColorPickEdit;
    Label3: TLabel;
    dxDBColorLookupEdit1: TdxDBColorLookupEdit;
    dxDBColorEdit1: TdxDBColorEdit;
    Label9: TLabel;
    EdPerImp: TdxDBColorCurrencyEdit;
    Label2: TLabel;
    EdFlgAnt: TdxDBColorPickEdit;
    lbSINIEF20: TLabel;
    CbNomTxf: TdxDBColorLookupEdit;
    EdCodTxf: TdxDBColorEdit;
    Label5: TLabel;
    EstIpiCOD_ENQ: TStringField;
    Label24: TLabel;
    dxDBColorEdit2: TdxDBColorEdit;
    ckStatus: TDBCheckBox;
    EstIpiID_ESTSIP: TIntegerField;
    EstIpiID_ESTIPI: TIntegerField;
    EstIpiFLGATIVO: TSmallintField;
    edPsqStatus: TdxColorPickEdit;
    Label34: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure bbPesquisaClick(Sender: TObject);
    procedure DsIpiDataChange(Sender: TObject; Field: TField);
    procedure pcPag1Show(Sender: TObject);
    procedure dbReportBeforePrint(Sender: TObject);
    procedure EstIpiNewRecord(DataSet: TDataSet);
    procedure grIpiDblClick(Sender: TObject);
    procedure nvIpiImprime(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure nvIpiSalva(Sender: TObject);
    procedure EstIpiBeforeDelete(DataSet: TDataSet);
    procedure EstIpiFLG_SINEIF20GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure EstIpiFLG_SINEIF20SetText(Sender: TField;
      const Text: string);
    procedure dxDBColorEdit1Exit(Sender: TObject);
    procedure EstCstPisExit(Sender: TObject);
    procedure EstCstCofExit(Sender: TObject);
    procedure EdClsIpiExit(Sender: TObject);
    procedure EstIpiAfterScroll(DataSet: TDataSet);
    procedure EstIpiTIPIPIChange(Sender: TField);
    procedure ckStatusClick(Sender: TObject);
  private
    {Private declarations}
   
  public
    {Public declarations}
    sBase, sFiltro, sOrdem, ncmOld, ncmAtu: string;
    procedure localiza(regra: string; readOnly: Boolean; tipo: string);
  end;

var
  fmManIpi: TfmManIpi;

implementation

uses Bbgeral, BbMensag, ManPri, Fpreview, ManGDB,bbfuncao;

{$R *.DFM}

procedure TfmManIpi.localiza(regra: string; readOnly: Boolean; tipo: string);
begin
  EdPsqTipIpi.Text := tipo;
  EdPsqCodIpi.Text := regra;
  BbPesquisa.Click;
  pcIpi.Enabled := readOnly;
  nvIpi.Visible := readOnly;

  if regra <> '' then
    pcIpi.ActivePageIndex := 1;
end;

procedure TfmManIpi.FormCreate(Sender: TObject);
begin
  inherited;
  sBase := ' Select * From EstIpi ';
  pcIpi.ActivePage := pcPag1;
end;

procedure TfmManIpi.bbPesquisaClick(Sender: TObject);
begin
  inherited;

  sFiltro := ' where 1 = 1 ';

  {Ordem}
  case rgOrdem.ItemIndex of
    0: sOrdem := ' Order by EstIpi.CodIpi';
    1: sOrdem := ' Order by EstIpi.NomIpi';
    2: sOrdem := ' Order by EstIpi.TipIpi';
  end;

  if (edPsqStatus.Text = 'Ativo')then
  begin
      sFiltro := sFiltro + ' and coalesce(flgativo,1) = 1 ';
  end
  else if (edPsqStatus.Text = 'Inativo')then
  begin
      sFiltro := sFiltro + ' and coalesce(flgativo,1) = 0 ';
  end;

  if (EdPsqTipIpi.Text <> '') and (EdPsqTipIpi.Text <> 'Todos') then
    sFiltro := sFiltro + ' and  EstIpi.TipIpi = ''' + EdPsqTipIpi.Text + '''';

  if (EdPsqCodIpi.Text <> '') then
  begin
       sFiltro := sFiltro + ' and EstIpi.CodIpi = ''' + EdPsqCodIpi.Text + '''';
  end;

  if Rgbusca.ItemIndex = 0 then
  begin

    if (EdPsqNomIpi.Text <> '') then
    begin
        sFiltro := sFiltro + ' and NomIpi LIKE ''' + EdPsqNomIpi.Text + '%''';
    end;

  end
  else
  begin

    if (EdPsqNomIpi.Text <> '') then
    begin
        sFiltro := sFiltro + ' and NomIpi LIKE ''%' + EdPsqNomIpi.Text + '%''';
    end;
  end;

  with EstIpi, SQL do
  begin

    Close;
    Text := sBase + sFiltro + sOrdem;
    Open;

  end;
end;

procedure TfmManIpi.DsIpiDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if not nvIpi.Salvar then
  begin

    if EstIpiCodIpi.Value <> '' then
    begin

      EdCodIpi.Enabled := False;
      EdTipIpi.Enabled := False;

      EdCodIpi.Font.Style := [fsBold];
      EdTipIpi.Font.Style := [fsBold];

    end
    else
    begin

      EdCodIpi.Enabled := True;
      EdTipIpi.Enabled := True;

      EdCodIpi.Font.Style := [];
      EdTipIpi.Font.Style := [];

    end;
  end;
end;

procedure TfmManIpi.pcPag1Show(Sender: TObject);
begin
  inherited;
  EdPsqCodIpi.SetFocus;
end;

procedure TfmManIpi.dbReportBeforePrint(Sender: TObject);
begin
  inherited;
  ppCodIpi.Caption := PreString(EstIpiCodIpi.Value, 7);
  ppTipIpi.Caption := EstIpiTipIpi.Value;
  ppNomIpi.Caption := EstIpiNomIpi.Value;
end;

procedure TfmManIpi.EstIpiNewRecord(DataSet: TDataSet);
begin
  inherited;

  if copy(GFprm, 1, 1) <> 'S' then
    Abort;

  EstIpi.DisableControls;

  EstIpiPerIpi.Value := 0;
  EstIpiRedIpi.Value := 0;
  EstIpiClsIpi.Value := '';
  EstIpiRecIpi.Value := 100;
  EstIpiBasIpi.Value := 100;
  EstIpiRegIpi.Value := 'Nao';
  EstIpiTrbIpi.Value := 'Sim';
  EstIpiTipIpi.Value := 'Saida';

  EstIpi.EnableControls;

  PcIpi.ActivePage := pcPag2;

  EdCodIpi.Enabled := True;
  EdTipIpi.Enabled := True;

  EdCodIpi.Font.Style := [];
  EdTipIpi.Font.Style := [];

  EdCodIpi.Setfocus;

end;

procedure TfmManIpi.grIpiDblClick(Sender: TObject);
begin
  inherited;
  pcIpi.ActivePage := pcPag2;
end;

procedure TfmManIpi.nvIpiImprime(Sender: TObject);
begin
  inherited;

  EstIpi.First;

  if not EstIpi.Eof then
  begin

    try

      ppReport.DeviceType := 'Screen';
      fmPreview := TfmPreview.Create(fmManIpi);
      fmPreview.ppViewer.Report := ppReport;
      ppReport.PrintToDevices;
      fmPreview.ShowModal;

      if Assigned(ppReport.AfterPrint) then
        ppReport.AfterPrint(Sender);

    finally

      FreeAndNil(fmPreview);

    end;
  end;
end;

procedure TfmManIpi.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManIpi.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManIpi := nil;
end;

procedure TfmManIpi.nvIpiSalva(Sender: TObject);
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
        Text := ' Select * From EstIpi Where EstIpi.CodIpi = ''' + EstIpiCodIpi.Value + ''' and EstIpi.TipIpi = ''' + EstIpiTipIpi.Value + '''';
        Open;

      end;

      if Trim(quSQL2.FieldbyName('CodIpi').AsString) = '' then
      begin

        with quSQL2, SQL do
        begin

          Close;
          Text := ' Insert Into EstIpi(CodIpi,TipIpi,NomIpi,RegIpi,TrbIpi,PerIpi,PerImp,RedIpi,RecIpi,BasIpi,ClsIpi,CodTxf, CSTPIS, CSTCOF, ALIQ_PIS, ALIQ_COF)'
            +
            '             Values(:CodIpi,:TipIpi,:NomIpi,:RegIpi,:TrbIpi,:PerIpi,:PerImp,:RedIpi,:RecIpi,:BasIpi,:ClsIpi,:CodTxf, :CSTIPI, :FLG_SINEIF20, :CSTPIS, :CSTCOF, :ALIQ_PIS, :ALIQ_COF)';

          with Params do
          begin

            Params[00].AsString := EstIpiCodIpi.Value;
            Params[01].AsString := EstIpiTipIpi.Value;
            Params[02].AsString := EstIpiNomIpi.Value;
            Params[03].AsString := EstIpiRegIpi.Value;
            Params[04].AsString := EstIpiTrbIpi.Value;
            Params[05].AsFloat := EstIpiPerIpi.Value;
            Params[06].AsFloat := EstIpiPerImp.Value;
            Params[07].AsFloat := EstIpiRedIpi.Value;
            Params[08].AsFloat := EstIpiRecIpi.Value;
            Params[09].AsFloat := EstIpiBasIpi.Value;
            Params[10].AsString := EstIpiClsIpi.Value;
            Params[11].AsString := EstIpiCodTxf.Value;
            Params[12].AsString := EstIpiCstPis.Value;
            Params[13].AsString := EstIpiCstCof.Value;
            Params[14].AsFloat := EstIpiAliq_Pis.Value;
            Params[15].AsFloat := EstIpiAliq_Cof.Value;

          end;

          ExecSQL;

        end;

      end
      else
      begin

        if (EstIpiNomIpi.Value <> quSQL2.FieldbyName('NomIpi').AsString) or
          (EstIpiRegIpi.Value <> quSQL2.FieldbyName('RegIpi').AsString) or
          (EstIpiTrbIpi.Value <> quSQL2.FieldbyName('TrbIpi').AsString) or
          (EstIpiPerIpi.Value <> quSQL2.FieldbyName('PerIpi').AsFloat) or
          (EstIpiPerImp.Value <> quSQL2.FieldbyName('PerImp').AsFloat) or
          (EstIpiRedIpi.Value <> quSQL2.FieldbyName('RedIpi').AsFloat) or
          (EstIpiRecIpi.Value <> quSQL2.FieldbyName('RecIpi').AsFloat) or
          (EstIpiBasIpi.Value <> quSQL2.FieldbyName('BasIpi').AsFloat) or
          (EstIpiClsIpi.Value <> quSQL2.FieldbyName('ClsIpi').AsString) or
          (EstIpiCodTxf.Value <> quSQL2.FieldbyName('CodTxf').AsString) or
          (EstIpiCodTxf.Value <> quSQL2.FieldbyName('CSTPIS').AsString) or
          (EstIpiCodTxf.Value <> quSQL2.FieldbyName('CSTCOF').AsString) or
          (EstIpiCodTxf.Value <> quSQL2.FieldbyName('ALIQ_PIS').AsString) or
          (EstIpiCodTxf.Value <> quSQL2.FieldbyName('ALIQ_COF').AsString) then
        begin

          with quSQL2, SQL do
          begin

            Close;
            Text := ' Update EstIpi Set NomIpi = :NomIpi,' +
              '                   RegIpi = :RegIpi,' +
              '                   TrbIpi = :TrbIpi,' +
              '                   PerIpi = :PerIpi,' +
              '                   PerImp = :PerImp,' +
              '                   RedIpi = :RedIpi,' +
              '                   RecIpi = :RecIpi,' +
              '                   BasIpi = :BasIpi,' +
              '                   ClsIpi = :ClsIpi,' +
              '                   CodTxf = :CodTxf, ' +
              '                   CSTPIS = :CSTPIS, ' +
              '                   CSTCOF = :CSTCOF, ' +
              '                   ALIQ_PIS = :ALIQ_PIS, ' +
              '                   ALIQ_COF = :ALIQ_COF ' +
              ' Where EstIpi.CodIpi = :CodIpi      ' +
              '   and EstIpi.TipIpi = :TipIpi      ';

            with Params do
            begin

              Params[00].AsString := EstIpiNomIpi.Value;
              Params[01].AsString := EstIpiRegIpi.Value;
              Params[02].AsString := EstIpiTrbIpi.Value;
              Params[03].AsFloat := EstIpiPerIpi.Value;
              Params[04].AsFloat := EstIpiPerImp.Value;
              Params[05].AsFloat := EstIpiRedIpi.Value;
              Params[06].AsFloat := EstIpiRecIpi.Value;
              Params[07].AsFloat := EstIpiBasIpi.Value;
              Params[08].AsString := EstIpiClsIpi.Value;
              Params[09].AsString := EstIpiCodTxf.Value;
              Params[10].AsString := EstIpiCodIpi.Value;
              Params[11].AsString := EstIpiTipIpi.Value;
              Params[12].AsString := EstIpiCstPis.Value;
              Params[13].AsString := EstIpiCstCof.Value;
              Params[14].AsFloat := EstIpiAliq_Pis.Value;
              Params[15].AsFloat := EstIpiAliq_Cof.Value;

            end;

            ExecSQL;

          end;
        end;
      end;
    end;

    if fmManGDB.dbEmerion2.Connected then
    begin

      with quSQL3, SQL do
      begin

        Close;
        Text := ' Select * From EstIpi Where EstIpi.CodIpi = ''' + EstIpiCodIpi.Value + ''' and EstIpi.TipIpi = ''' + EstIpiTipIpi.Value + '''';
        Open;

      end;

      if Trim(quSQL3.FieldbyName('CodIpi').AsString) = '' then
      begin

        with quSQL3, SQL do
        begin

          Close;
          Text := ' Insert Into EstIpi(CodIpi,TipIpi,NomIpi,RegIpi,TrbIpi,PerIpi,PerImp,RedIpi,RecIpi,BasIpi,ClsIpi,CodTxf, CSTPIS, CSTCOF, ALIQ_PIS, ALIQ_COF)'
            +
            '             Values(:CodIpi,:TipIpi,:NomIpi,:RegIpi,:TrbIpi,:PerIpi,:PerImp,:RedIpi,:RecIpi,:BasIpi,:ClsIpi,:CodTxf, :CSTPIS, :CSTCOF, :ALIQ_PIS, :ALIQ_COF)';

          with Params do
          begin

            Params[00].AsString := EstIpiCodIpi.Value;
            Params[01].AsString := EstIpiTipIpi.Value;
            Params[02].AsString := EstIpiNomIpi.Value;
            Params[03].AsString := EstIpiRegIpi.Value;
            Params[04].AsString := EstIpiTrbIpi.Value;
            Params[05].AsFloat := EstIpiPerIpi.Value;
            Params[06].AsFloat := EstIpiPerImp.Value;
            Params[07].AsFloat := EstIpiRedIpi.Value;
            Params[08].AsFloat := EstIpiRecIpi.Value;
            Params[09].AsFloat := EstIpiBasIpi.Value;
            Params[10].AsString := EstIpiClsIpi.Value;
            Params[11].AsString := EstIpiCodTxf.Value;
            Params[12].AsString := EstIpiCstPis.Value;
            Params[13].AsString := EstIpiCstCof.Value;
            Params[14].AsFloat := EstIpiAliq_Pis.Value;
            Params[15].AsFloat := EstIpiAliq_Cof.Value;

          end;

          ExecSQL;

        end;

      end
      else
      begin

        if (EstIpiNomIpi.Value <> quSQL3.FieldbyName('NomIpi').AsString) or
          (EstIpiRegIpi.Value <> quSQL3.FieldbyName('RegIpi').AsString) or
          (EstIpiTrbIpi.Value <> quSQL3.FieldbyName('TrbIpi').AsString) or
          (EstIpiPerIpi.Value <> quSQL3.FieldbyName('PerIpi').AsFloat) or
          (EstIpiPerImp.Value <> quSQL3.FieldbyName('PerImp').AsFloat) or
          (EstIpiRedIpi.Value <> quSQL3.FieldbyName('RedIpi').AsFloat) or
          (EstIpiRecIpi.Value <> quSQL3.FieldbyName('RecIpi').AsFloat) or
          (EstIpiBasIpi.Value <> quSQL3.FieldbyName('BasIpi').AsFloat) or
          (EstIpiClsIpi.Value <> quSQL3.FieldbyName('ClsIpi').AsString) or
          (EstIpiCodTxf.Value <> quSQL3.FieldbyName('CodTxf').AsString) or
          (EstIpiCodTxf.Value <> quSQL2.FieldbyName('CSTPIS').AsString) or
          (EstIpiCodTxf.Value <> quSQL2.FieldbyName('CSTCOF').AsString) or
          (EstIpiCodTxf.Value <> quSQL2.FieldbyName('ALIQ_PIS').AsString) or
          (EstIpiCodTxf.Value <> quSQL2.FieldbyName('ALIQ_COF').AsString) then
        begin

          with quSQL3, SQL do
          begin

            Close;
            Text := ' Update EstIpi Set NomIpi = :NomIpi,' +
              '                   RegIpi = :RegIpi,' +
              '                   TrbIpi = :TrbIpi,' +
              '                   PerIpi = :PerIpi,' +
              '                   PerImp = :PerImp,' +
              '                   RedIpi = :RedIpi,' +
              '                   RecIpi = :RecIpi,' +
              '                   BasIpi = :BasIpi,' +
              '                   ClsIpi = :ClsIpi,' +
              '                   CodTxf = :CodTxf, ' +
              '                   CSTPIS = :CSTPIS, ' +
              '                   CSTCOF = :CSTCOF, ' +
              '                   ALIQ_PIS = :ALIQ_PIS, ' +
              '                   ALIQ_COF = :ALIQ_COF ' +
              ' Where EstIpi.CodIpi = :CodIpi      ' +
              '   and EstIpi.TipIpi = :TipIpi      ';

            with Params do
            begin

              Params[00].AsString := EstIpiNomIpi.Value;
              Params[01].AsString := EstIpiRegIpi.Value;
              Params[02].AsString := EstIpiTrbIpi.Value;
              Params[03].AsFloat := EstIpiPerIpi.Value;
              Params[04].AsFloat := EstIpiPerImp.Value;
              Params[05].AsFloat := EstIpiRedIpi.Value;
              Params[06].AsFloat := EstIpiRecIpi.Value;
              Params[07].AsFloat := EstIpiBasIpi.Value;
              Params[08].AsString := EstIpiClsIpi.Value;
              Params[09].AsString := EstIpiCodTxf.Value;
              Params[10].AsString := EstIpiCodIpi.Value;
              Params[11].AsString := EstIpiTipIpi.Value;
              Params[12].AsString := EstIpiCstPis.Value;
              Params[13].AsString := EstIpiCstCof.Value;
              Params[14].AsFloat := EstIpiAliq_Pis.Value;
              Params[15].AsFloat := EstIpiAliq_Cof.Value;

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

procedure TfmManIpi.EstIpiBeforeDelete(DataSet: TDataSet);
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
        Text := ' Delete From EstIpi Where EstIpi.CodIpi = ''' + EstIpiCodIpi.Value + ''' and EstIpi.TipIpi = ''' + EstIpiTipIpi.Value + '''';
        ExecSQL;

      end;
    end;

    if fmManGDB.dbEmerion2.Connected then
    begin

      with quSQL3, SQL do
      begin

        Close;
        Text := ' Delete From EstIpi Where EstIpi.CodIpi = ''' + EstIpiCodIpi.Value + ''' and EstIpi.TipIpi = ''' + EstIpiTipIpi.Value + '''';
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

procedure TfmManIpi.EstIpiFLG_SINEIF20GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString = 'S' then
    Text := 'Sim'
  else
    Text := 'Nao';
end;

procedure TfmManIpi.EstIpiFLG_SINEIF20SetText(Sender: TField;
  const Text: string);
begin
  inherited;
  if Text = 'Sim' then
    Sender.AsString := 'S'
  else
    Sender.AsString := 'N';
end;

procedure TfmManIpi.dxDBColorEdit1Exit(Sender: TObject);
begin
  inherited;
  {if Length(dxDBColorEdit1.Text) = 1 then
    EstIpi.FieldByName('CSTIPI').AsString:= '0' + dxDBColorEdit1.Text; }
end;

procedure TfmManIpi.EstCstPisExit(Sender: TObject);
begin
  inherited;
  if Length(EstCstPis.Text) = 1 then
    EstIpi.FieldByName('CSTPIS').AsString := '0' + EstCstPis.Text;
end;

procedure TfmManIpi.EstCstCofExit(Sender: TObject);
begin
  inherited;
  if Length(EstCstCof.Text) = 1 then
    EstIpi.FieldByName('CSTCOF').AsString := '0' + EstCstCof.Text;
end;

procedure TfmManIpi.EdClsIpiExit(Sender: TObject);
var
  qtdreg: string;
begin
  inherited;
  ncmAtu := EdClsIpi.Text;

  if ((ncmOld <> '') and (ncmOld <> ncmAtu)) then
  begin
    qtdreg := fmManGDB.BuscaSimples('', 'COUNT', '', 'select  count(1) From estpro Where 1 = 1 and  ipisai = ' + QuotedStr(edCodIpi.Text));
    ShowMessage('Deseja realmente alterar a Regra?' + #13 + #13 + #13 +
      'Atualmente ' + qtdreg + ' produto(s) utilizam esta Regra');
  end;
end;

procedure TfmManIpi.EstIpiAfterScroll(DataSet: TDataSet);
begin
  inherited;
  ncmOld := EdClsIpi.Text;
end;

procedure TfmManIpi.EstIpiTIPIPIChange(Sender: TField);
begin
  inherited;
  EstSip.Active := False;
  EstSip.Active := True;
end;



procedure TfmManIpi.ckStatusClick(Sender: TObject);
begin
  inherited;
        if(EstIpi.State in [dsEdit])then
        begin
           if (ckstatus.Checked = false)then
           begin
               if (validaUsoIpi(EstIpiCodIpi.AsString,EstIpiTipIPI.AsString)) then
               begin
                   MessageBox(handle, 'Esta regra não pode ser inativada por estar em uso. Os produtos estão listados na ''Área de transferência''.','validação da regra de IPI',mb_ok+MB_ICONEXCLAMATION);
                   ckstatus.Checked := true;
                   abort;
               end;
           end;

        end;
end;

end.
