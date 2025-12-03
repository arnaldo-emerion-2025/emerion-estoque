unit ManIcm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, hNavigator, ExtCtrls, DBTables, Db, Wwdatsrc, Wwquery, StdCtrls,
  Mask, DBCtrls, hEdits, Grids, Wwdbigrd, Wwdbgrid, hGrid, ComCtrls,
  wwdblook, Buttons, AlignEdit, ppBands, ppClass, ppDB, ppCtrls, ppVar,
  ppPrnabl, ppProd, ppReport, ppComm, ppRelatv, ppCache, ppDBPipe, dxCntner,
  dxEditor, dxExEdtr, dxEdLib, dxDBELib, wwriched, dxDBEdtr,
  dxDBColorLookupEdit, dxDBColorCurrencyEdit, dxDBColorPickEdit,
  dxDBColorEdit, dxColorPickEdit, dxColorEdit, DBGrids;

type
  TfmManIcm = class(TfmPadrao)
    pcIcm: TPageControl;
    pcPag1: TTabSheet;
    pcPag2: TTabSheet;
    quSql: TwwQuery;
    nvIcm: ThDBNavigator;
    EstIcm: TwwQuery;
    DsIcm: TwwDataSource;
    UpIcm: TUpdateSQL;
    Label12: TLabel;
    Shape11: TShape;
    Panel3: TPanel;
    grIcm: ThGrid;
    Label1: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    EdPsqNomIcm: TdxColorEdit;
    EdPsqCodIcm: TdxColorEdit;
    Label8: TLabel;
    Shape2: TShape;
    BbPesquisa: TBitBtn;
    rgOrdem: TRadioGroup;
    rgBusca: TRadioGroup;
    Shape3: TShape;
    EdPsqTipIcm: TdxColorPickEdit;
    Label11: TLabel;
    Label13: TLabel;
    Shape4: TShape;
    Shape5: TShape;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    EdCodIcm: TdxDBColorEdit;
    EdNomIcm: TdxDBColorEdit;
    EdTipIcm: TdxDBColorPickEdit;
    Label3: TLabel;
    EdTrbIcm: TdxDBColorPickEdit;
    Shape7: TShape;
    Shape1: TShape;
    Label54: TLabel;
    EdPerIcm: TdxDBColorCurrencyEdit;
    Label7: TLabel;
    EdRedIcm: TdxDBColorCurrencyEdit;
    EdRecIcm: TdxDBColorCurrencyEdit;
    Label10: TLabel;
    Label17: TLabel;
    EdBasIcm: TdxDBColorCurrencyEdit;
    EstIcmTIPICM: TStringField;
    EstIcmNOMICM: TStringField;
    EstIcmTRBICM: TStringField;
    EstIcmPERICM: TFloatField;
    EstIcmREDICM: TFloatField;
    EstIcmRECICM: TFloatField;
    EstIcmBASICM: TFloatField;
    EstIcmINCREV: TFloatField;
    EstIcmINCFIN: TFloatField;
    EstIcmITECON: TStringField;
    EstIcmCODST1: TStringField;
    EdIncRev: TdxDBColorCurrencyEdit;
    Label2: TLabel;
    EdIncFin: TdxDBColorCurrencyEdit;
    Label19: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    Label23: TLabel;
    EdCodSt2: TdxDBColorEdit;
    CbNomSt2: TdxDBColorLookupEdit;
    EstSt2: TwwQuery;
    EstSt2NOMST2: TStringField;
    EstSt1: TwwQuery;
    EstSt1NOMST1: TStringField;
    EstSt1CODST1: TStringField;
    DsSt1: TwwDataSource;
    DsSt2: TwwDataSource;
    DsReport: TppDBPipeline;
    ppReport: TppReport;
    hbReport: TppHeaderBand;
    ppLabel20: TppLabel;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel11: TppLabel;
    ppLabel14: TppLabel;
    dbReport: TppDetailBand;
    ppCodIcm: TppDBText;
    ppNomIcm: TppDBText;
    ppTipIcm: TppDBText;
    ppPerIcm: TppDBText;
    ppRedIcm: TppDBText;
    ppRecIcm: TppDBText;
    ppBasIcm: TppDBText;
    ppIncRev: TppDBText;
    ppTrbIcm: TppDBText;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppIncFin: TppDBText;
    ppLabel17: TppLabel;
    ppCodSt1: TppDBText;
    ppCodSt2: TppDBText;
    EstIcmCODICM: TStringField;
    ppLabel45: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel6: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    quSQL3: TwwQuery;
    quSQL2: TwwQuery;
    EstSt2CODST2: TStringField;
    EstIcmCODST2: TStringField;
    CbNomSt1: TdxDBColorLookupEdit;
    EdCodSt1: TdxDBColorEdit;
    Label22: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure bbPesquisaClick(Sender: TObject);
    procedure DsIcmDataChange(Sender: TObject; Field: TField);
    procedure pcPag1Show(Sender: TObject);
    procedure dbReportBeforePrint(Sender: TObject);
    procedure EstIcmNewRecord(DataSet: TDataSet);
    procedure grIcmDblClick(Sender: TObject);
    procedure nvIcmImprime(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure nvIcmSalva(Sender: TObject);
    procedure EstIcmBeforeDelete(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    sBase, sFiltro, sOrdem: string;
  end;

var
  fmManIcm: TfmManIcm;

implementation

uses Bbgeral, BbMensag, ManPri, Fpreview, ManGDB;

{$R *.DFM}

procedure TfmManIcm.FormCreate(Sender: TObject);
begin
  inherited;
  sBase := ' Select * From EstIcm ';
  pcIcm.ActivePage := pcPag1;
end;

procedure TfmManIcm.bbPesquisaClick(Sender: TObject);
begin
  inherited;

  sFiltro := '';

  {Ordem}
  case rgOrdem.ItemIndex of
    0: sOrdem := ' Order by CodIcm';
    1: sOrdem := ' Order by NomIcm';
    2: sOrdem := ' Order by TipIcm';
  end;

  if (EdPsqTipIcm.Text <> '') and (EdPsqTipIcm.Text <> 'Todos') then
    sFiltro := ' Where TipIcm = ''' + EdPsqTipIcm.Text + '''';

  if (EdPsqCodIcm.Text <> '') then
  begin
    if pos('Where', sFiltro) = 0 then
      sFiltro := ' Where CodIcm = ''' + EdPsqCodIcm.Text + ''''
    else
      sFiltro := sFiltro + ' and CodIcm = ''' + EdPsqCodIcm.Text + '''';
  end;

  if Rgbusca.ItemIndex = 0 then
  begin

    if (EdPsqNomIcm.Text <> '') then
    begin
      if pos('Where', sFiltro) = 0 then
        sFiltro := ' Where NomIcm LIKE ''' + EdPsqNomIcm.Text + '%'''
      else
        sFiltro := sFiltro + ' and NomIcm LIKE ''' + EdPsqNomIcm.Text + '%''';
    end;

  end
  else
  begin

    if (EdPsqNomIcm.Text <> '') then
    begin
      if pos('Where', sFiltro) = 0 then
        sFiltro := ' Where NomIcm LIKE ''%' + EdPsqNomIcm.Text + '%'''
      else
        sFiltro := sFiltro + ' and NomIcm LIKE ''%' + EdPsqNomIcm.Text + '%''';
    end;
  end;

  with EstIcm, SQL do
  begin

    Close;
    Text := sBase + sFiltro + sOrdem;
    Open;

  end;
end;

procedure TfmManIcm.DsIcmDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if not nvIcm.Salvar then
  begin

    if EstIcmCodIcm.Value <> '' then
    begin

      EdCodIcm.Enabled := False;
      EdTipIcm.Enabled := False;

      EdCodIcm.Font.Style := [fsBold];
      EdTipIcm.Font.Style := [fsBold];

    end
    else
    begin

      EdCodIcm.Enabled := True;
      EdTipIcm.Enabled := True;

      EdCodIcm.Font.Style := [];
      EdTipIcm.Font.Style := [];

    end;
  end;
end;

procedure TfmManIcm.pcPag1Show(Sender: TObject);
begin
  inherited;
  EdPsqCodIcm.SetFocus;
end;

procedure TfmManIcm.dbReportBeforePrint(Sender: TObject);
begin
  inherited;
  ppCodIcm.Caption := PreString(EstIcmCodIcm.Value, 7);
  ppTipIcm.Caption := EstIcmTipIcm.Value;
  ppNomIcm.Caption := EstIcmNomIcm.Value;
end;

procedure TfmManIcm.EstIcmNewRecord(DataSet: TDataSet);
begin
  inherited;

  EstIcm.DisableControls;

  EstIcmPerIcm.Value := 0;
  EstIcmRedIcm.Value := 0;
  EstIcmIncRev.Value := 0;
  EstIcmRecIcm.Value := 100;
  EstIcmIncFin.Value := 100;
  EstIcmBasIcm.Value := 100;
  EstIcmTrbIcm.Value := 'Sim';
  EstIcmIteCon.Value := 'Nao';
  EstIcmTipIcm.Value := 'Saida';

  EstIcm.EnableControls;

  PcIcm.ActivePage := pcPag2;

  EdCodIcm.Enabled := True;
  EdTipIcm.Enabled := True;

  EdCodIcm.Font.Style := [];
  EdTipIcm.Font.Style := [];

  EdCodIcm.Setfocus;

end;

procedure TfmManIcm.grIcmDblClick(Sender: TObject);
begin
  inherited;
  pcIcm.ActivePage := pcPag2;
end;

procedure TfmManIcm.nvIcmImprime(Sender: TObject);
begin
  inherited;

  EstIcm.First;

  if not EstIcm.Eof then
  begin

    try

      ppReport.DeviceType := 'Screen';
      fmPreview := TfmPreview.Create(fmManIcm);
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

procedure TfmManIcm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManIcm.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManIcm := nil;
end;

procedure TfmManIcm.nvIcmSalva(Sender: TObject);
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
        Text := ' Select * From EstIcm Where EstIcm.CodIcm = ''' + EstIcmCodIcm.Value + ''' and EstIcm.TipIcm = ''' + EstIcmTipIcm.Value + '''';
        Open;

      end;

      if Trim(quSQL2.FieldbyName('CodIcm').AsString) = '' then
      begin

        with quSQL2, SQL do
        begin

          Close;
          Text := ' Insert Into EstIcm(CodIcm,TipIcm,NomIcm,TrbIcm,PerIcm,RedIcm,RecIcm,BasIcm,IncRev,IncFin,IteCon,CodSt1,CodSt2)' +
            '             Values(:CodIcm,:TipIcm,:NomIcm,:TrbIcm,:PerIcm,:RedIcm,:RecIcm,:BasIcm,:IncRev,:IncFin,:IteCon,:CodSt1,:CodSt2)';

          with Params do
          begin

            Params[00].AsString := EstIcmCodIcm.Value;
            Params[01].AsString := EstIcmTipIcm.Value;
            Params[02].AsString := EstIcmNomIcm.Value;
            Params[03].AsString := EstIcmTrbIcm.Value;
            Params[04].AsFloat := EstIcmPerIcm.Value;
            Params[05].AsFloat := EstIcmRedIcm.Value;
            Params[06].AsFloat := EstIcmRecIcm.Value;
            Params[07].AsFloat := EstIcmBasIcm.Value;
            Params[08].AsFloat := EstIcmIncRev.Value;
            Params[09].AsFloat := EstIcmIncFin.Value;
            Params[10].AsString := EstIcmIteCon.Value;
            Params[11].AsString := EstIcmCodSt1.Value;
            Params[12].AsString := EstIcmCodSt2.Value;

          end;

          ExecSQL;

        end;

      end
      else
      begin

        if (EstIcmNomIcm.Value <> quSQL2.FieldbyName('NomIcm').AsString) or
          (EstIcmTrbIcm.Value <> quSQL2.FieldbyName('TrbIcm').AsString) or
          (EstIcmPerIcm.Value <> quSQL2.FieldbyName('PerIcm').AsFloat) or
          (EstIcmRedIcm.Value <> quSQL2.FieldbyName('RedIcm').AsFloat) or
          (EstIcmRecIcm.Value <> quSQL2.FieldbyName('RecIcm').AsFloat) or
          (EstIcmBasIcm.Value <> quSQL2.FieldbyName('BasIcm').AsFloat) or
          (EstIcmIncRev.Value <> quSQL2.FieldbyName('IncRev').AsFloat) or
          (EstIcmIncFin.Value <> quSQL2.FieldbyName('IncFin').AsFloat) or
          (EstIcmIteCon.Value <> quSQL2.FieldbyName('IteCon').AsString) or
          (EstIcmCodSt1.Value <> quSQL2.FieldbyName('CodSt1').AsString) or
          (EstIcmCodSt2.Value <> quSQL2.FieldbyName('CodSt2').AsString) then
        begin

          with quSQL2, SQL do
          begin

            Close;
            Text := ' Update EstIcm Set NomIcm = :NomIcm,' +
              '                   TrbIcm = :TrbIcm,' +
              '                   PerIcm = :PerIcm,' +
              '                   RedIcm = :RedIcm,' +
              '                   RecIcm = :RecIcm,' +
              '                   BasIcm = :BasIcm,' +
              '                   IncRev = :IncRev,' +
              '                   IncFin = :IncFin,' +
              '                   IteCon = :IteCon,' +
              '                   CodSt1 = :CodSt1,' +
              '                   CodSt2 = :CodSt2 ' +
              ' Where EstIcm.CodIcm = :CodIcm      ' +
              '   and EstIcm.TipIcm = :TipIcm      ';

            with Params do
            begin

              Params[00].AsString := EstIcmNomIcm.Value;
              Params[01].AsString := EstIcmTrbIcm.Value;
              Params[02].AsFloat := EstIcmPerIcm.Value;
              Params[03].AsFloat := EstIcmRedIcm.Value;
              Params[04].AsFloat := EstIcmRecIcm.Value;
              Params[05].AsFloat := EstIcmBasIcm.Value;
              Params[06].AsFloat := EstIcmIncRev.Value;
              Params[07].AsFloat := EstIcmIncFin.Value;
              Params[08].AsString := EstIcmIteCon.Value;
              Params[09].AsString := EstIcmCodSt1.Value;
              Params[10].AsString := EstIcmCodSt2.Value;
              Params[11].AsString := EstIcmCodIcm.Value;
              Params[12].AsString := EstIcmTipIcm.Value;

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
        Text := ' Select * From EstIcm Where EstIcm.CodIcm = ''' + EstIcmCodIcm.Value + ''' and EstIcm.TipIcm = ''' + EstIcmTipIcm.Value + '''';
        Open;

      end;

      if Trim(quSQL3.FieldbyName('CodIcm').AsString) = '' then
      begin

        with quSQL3, SQL do
        begin

          Close;
          Text := ' Insert Into EstIcm(CodIcm,TipIcm,NomIcm,TrbIcm,PerIcm,RedIcm,RecIcm,BasIcm,IncRev,IncFin,IteCon,CodSt1,CodSt2)' +
            '             Values(:CodIcm,:TipIcm,:NomIcm,:TrbIcm,:PerIcm,:RedIcm,:RecIcm,:BasIcm,:IncRev,:IncFin,:IteCon,:CodSt1,:CodSt2)';

          with Params do
          begin

            Params[00].AsString := EstIcmCodIcm.Value;
            Params[01].AsString := EstIcmTipIcm.Value;
            Params[02].AsString := EstIcmNomIcm.Value;
            Params[03].AsString := EstIcmTrbIcm.Value;
            Params[04].AsFloat := EstIcmPerIcm.Value;
            Params[05].AsFloat := EstIcmRedIcm.Value;
            Params[06].AsFloat := EstIcmRecIcm.Value;
            Params[07].AsFloat := EstIcmBasIcm.Value;
            Params[08].AsFloat := EstIcmIncRev.Value;
            Params[09].AsFloat := EstIcmIncFin.Value;
            Params[10].AsString := EstIcmIteCon.Value;
            Params[11].AsString := EstIcmCodSt1.Value;
            Params[12].AsString := EstIcmCodSt2.Value;

          end;

          ExecSQL;

        end;

      end
      else
      begin

        if (EstIcmNomIcm.Value <> quSQL3.FieldbyName('NomIcm').AsString) or
          (EstIcmTrbIcm.Value <> quSQL3.FieldbyName('TrbIcm').AsString) or
          (EstIcmPerIcm.Value <> quSQL3.FieldbyName('PerIcm').AsFloat) or
          (EstIcmRedIcm.Value <> quSQL3.FieldbyName('RedIcm').AsFloat) or
          (EstIcmRecIcm.Value <> quSQL3.FieldbyName('RecIcm').AsFloat) or
          (EstIcmBasIcm.Value <> quSQL3.FieldbyName('BasIcm').AsFloat) or
          (EstIcmIncRev.Value <> quSQL3.FieldbyName('IncRev').AsFloat) or
          (EstIcmIncFin.Value <> quSQL3.FieldbyName('IncFin').AsFloat) or
          (EstIcmIteCon.Value <> quSQL3.FieldbyName('IteCon').AsString) or
          (EstIcmCodSt1.Value <> quSQL3.FieldbyName('CodSt1').AsString) or
          (EstIcmCodSt2.Value <> quSQL3.FieldbyName('CodSt2').AsString) then
        begin

          with quSQL3, SQL do
          begin

            Close;
            Text := ' Update EstIcm Set NomIcm = :NomIcm,' +
              '                   TrbIcm = :TrbIcm,' +
              '                   PerIcm = :PerIcm,' +
              '                   RedIcm = :RedIcm,' +
              '                   RecIcm = :RecIcm,' +
              '                   BasIcm = :BasIcm,' +
              '                   IncRev = :IncRev,' +
              '                   IncFin = :IncFin,' +
              '                   IteCon = :IteCon,' +
              '                   CodSt1 = :CodSt1,' +
              '                   CodSt2 = :CodSt2 ' +
              ' Where EstIcm.CodIcm = :CodIcm      ' +
              '   and EstIcm.TipIcm = :TipIcm      ';

            with Params do
            begin

              Params[00].AsString := EstIcmNomIcm.Value;
              Params[01].AsString := EstIcmTrbIcm.Value;
              Params[02].AsFloat := EstIcmPerIcm.Value;
              Params[03].AsFloat := EstIcmRedIcm.Value;
              Params[04].AsFloat := EstIcmRecIcm.Value;
              Params[05].AsFloat := EstIcmBasIcm.Value;
              Params[06].AsFloat := EstIcmIncRev.Value;
              Params[07].AsFloat := EstIcmIncFin.Value;
              Params[08].AsString := EstIcmIteCon.Value;
              Params[09].AsString := EstIcmCodSt1.Value;
              Params[10].AsString := EstIcmCodSt2.Value;
              Params[11].AsString := EstIcmCodIcm.Value;
              Params[12].AsString := EstIcmTipIcm.Value;

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

procedure TfmManIcm.EstIcmBeforeDelete(DataSet: TDataSet);
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
        Text := ' Delete From EstIcm Where EstIcm.CodIcm = ''' + EstIcmCodIcm.Value + ''' and EstIcm.TipIcm = ''' + EstIcmTipIcm.Value + '''';
        ExecSQL;

      end;
    end;

    if fmManGDB.dbEmerion2.Connected then
    begin

      with quSQL3, SQL do
      begin

        Close;
        Text := ' Delete From EstIcm Where EstIcm.CodIcm = ''' + EstIcmCodIcm.Value + ''' and EstIcm.TipIcm = ''' + EstIcmTipIcm.Value + '''';
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

procedure TfmManIcm.FormShow(Sender: TObject);
begin
  inherited;
  //Selecionando se o ICMS sera (SIMPLES>100) OU (NORMAL<100)

    //Pegando classificação da empresa
  qusql.active := false;
  qusql.SQL.text := 'Select TIPEMP from GEREMP where codemp = ' + QuotedStr(inttostr(GEmp_Id));
  qusql.Open;

  EstSt2.Active := false;
  if (qusql.fieldbyname('TIPEMP').asstring = 'Simples Nacional') then
    estst2.sql.text := 'Select * from ESTST2 where  cast(codst2 as integer) > ' + QuotedStr('100')
  else
    estst2.sql.text := 'Select * from ESTST2 where  cast(codst2 as integer) < ' + QuotedStr('100');

  estst2.Open;
end;

end.
