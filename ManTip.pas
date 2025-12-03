unit ManTip;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Db, Wwdatsrc, DBTables, Wwquery, dxPageControl, Buttons,
  ExtCtrls, StdCtrls, dxCntner, dxEditor, dxEdLib, ComCtrls, hNavigator,
  Grids, Wwdbigrd, Wwdbgrid, hGrid, dxDBELib, dxExEdtr, dxDBEdtr, Menus,
  wwdbdatetimepicker, ppDB, ppDBPipe, ppBands, ppCtrls, ppVar, ppPrnabl,
  ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport, dxDBColorEdit,
  dxColorEdit, ppModule, daDatMod;

type
  TfmManTip = class(TfmPadrao)
    UpTip: TUpdateSQL;
    EstTip: TwwQuery;
    DsTip: TwwDataSource;
    pcTip: TPageControl;
    pcPag1: TTabSheet;
    pcPag2: TTabSheet;
    Panel2: TPanel;
    Label2: TLabel;
    Shape2: TShape;
    Label10: TLabel;
    EdPsqCodTip: TdxColorEdit;
    rgOrdem: TRadioGroup;
    rgBusca: TRadioGroup;
    Bbselecionar: TBitBtn;
    Panel1: TPanel;
    nvTip: ThDBNavigator;
    Panel3: TPanel;
    grTip: ThGrid;
    Label3: TLabel;
    Shape5: TShape;
    Shape6: TShape;
    Panel4: TPanel;
    Label5: TLabel;
    Label7: TLabel;
    Shape11: TShape;
    Label9: TLabel;
    EdNomTip: TdxDBColorEdit;
    Label1: TLabel;
    Label4: TLabel;
    EdPsqNomTip: TdxColorEdit;
    EdCodTip: TdxDBColorEdit;
    Label12: TLabel;
    Shape1: TShape;
    Shape3: TShape;
    EstTipCODTIP: TIntegerField;
    EstTipNOMTIP: TStringField;
    Shape7: TShape;
    ppReport: TppReport;
    hbReport: TppHeaderBand;
    ppApeEmp: TppLabel;
    ppNomEmp: TppLabel;
    ppEndEmp: TppLabel;
    ppRefEmp: TppLabel;
    ppLabel20: TppLabel;
    ppLabel9: TppLabel;
    ppLabel6: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    dbReport: TppDetailBand;
    ppCodTip: TppDBText;
    ppNomTip: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLabel10: TppLabel;
    DsReport: TppDBPipeline;
    quSQL2: TwwQuery;
    quSQL3: TwwQuery;
    procedure FormShow(Sender: TObject);
    procedure pcPag1Show(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure grTipDblClick(Sender: TObject);
    procedure BbselecionarClick(Sender: TObject);
    procedure EstTipNewRecord(DataSet: TDataSet);
    procedure pcPag2Show(Sender: TObject);
    procedure hbReportBeforePrint(Sender: TObject);
    procedure nvTipImprime(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure nvTipSalva(Sender: TObject);
    procedure EstTipBeforeDelete(DataSet: TDataSet);
  private
    {Private declarations}
  public
    {Public declarations}
    sBase, sOrdem, sFiltro : string;
  end;

var
  fmManTip: TfmManTip;

implementation

uses Bbgeral, Bbmensag, ManGDB, ManPri, Fpreview;

{$R *.DFM}

{*************************************************************************
* Rotina: Evitar Movimentação de Janelas
*************************************************************************}
procedure TfmManTip.FormCreate(Sender: TObject);
begin
  inherited;
  sBase  := ' Select * From EstTip ';
end;

procedure TfmManTip.BbselecionarClick(Sender: TObject);
begin
  inherited;

  sFiltro := '';

  {Ordem}
  case rgOrdem.ItemIndex of
       0: sOrdem := ' Order by CodTip';
       1: sOrdem := ' Order by NomTip';
  end;

  if (EdpsqCodTip.Text <> '') then sFiltro := ' Where CodTip = '''+ EdpsqCodTip.Text +'''';

  if Rgbusca.ItemIndex = 0 then begin

     if (EdpsqNomTip.Text <> '') then sFiltro := ' Where NomTip LIKE '''+ EdpsqNomTip.Text +'%''';

     end
  else
     begin

     if (EdpsqNomTip.Text <> '') then sFiltro := ' Where NomTip LIKE ''%' + EdpsqNomTip.Text + '%''';

  end;

  with EstTip,SQL do begin

       Close;
       Text := sBase + sFiltro + sOrdem;
       Open;

  end;
end;

procedure TfmManTip.EstTipNewRecord(DataSet: TDataSet);
begin
  inherited;

  PcTip.ActivePage := pcPag2;

  EdNomTip.SetFocus

end;

procedure TfmManTip.pcPag1Show(Sender: TObject);
begin
  inherited;
  EdPsqCodTip.SetFocus;
end;

procedure TfmManTip.grTipDblClick(Sender: TObject);
begin
  inherited;
  pcTip.ActivePage := pcPag2;
end;

procedure TfmManTip.FormShow(Sender: TObject);
begin
  inherited;

  PcTip.ActivePage := PcPag1;

  EdPsqCodTip.SetFocus;

end;

procedure TfmManTip.pcPag2Show(Sender: TObject);
begin
  inherited;
  EdNomTip.SetFocus;
end;

procedure TfmManTip.hbReportBeforePrint(Sender: TObject);
begin
  inherited;

  ppApeEmp.Caption := GApeEmp;
  ppNomEmp.Caption := GRazEmp;
  ppEndEmp.Caption := GEndEmp;
  ppRefEmp.Caption := GRefEmp;

end;

procedure TfmManTip.nvTipImprime(Sender: TObject);
begin
  inherited;

  EstTip.First;

  if not EstTip.Eof then begin

     try

        ppReport.DeviceType := 'Screen';
        fmPreview := TfmPreview.Create(fmManTip);
        fmPreview.ppViewer.Report := ppReport;
        ppReport.PrintToDevices;
        fmPreview.ShowModal;

        if Assigned(ppReport.AfterPrint) then ppReport.AfterPrint(Sender);

     finally

        FreeAndNil(fmPreview);

     end;
  end;
end;

procedure TfmManTip.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManTip.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManTip := Nil;
end;

procedure TfmManTip.nvTipSalva(Sender: TObject);
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
             Text := ' Select * From EstTip Where EstTip.CodTip = '''+ IntToStr( EstTipCodTip.Value ) +'''';
             Open;

        end;

        if quSQL2.FieldbyName('CodTip').AsInteger = 0 then begin

           with quSQL2,SQL do begin

                Close;
                Text := ' Insert Into EstTip(CodTip,NomTip,FlgInt) Values(:CodTip,:NomTip,:FlgInt)';

                with Params do begin

                     Params[0].AsInteger := EstTipCodTip.Value;
                     Params[1].AsString  := EstTipNomTip.Value;
                     Params[2].AsString  := 'Sim';

                end;

                ExecSQL;

           end;

           end
        else
           begin

           if EstTipNomTip.Value <> quSQL2.FieldbyName('NomTip').AsString then begin

              with quSQL2,SQL do begin

                   Close;
                   Text := ' Update EstTip Set NomTip = :NomTip Where EstTip.CodTip = :CodTip';

                   with Params do begin

                        Params[0].AsString  := EstTipNomTip.Value;
                        Params[1].AsInteger := EstTipCodTip.Value;

                   end;

                   ExecSQL;

              end;
           end;
        end;
     end;

     if fmManGDB.dbEmerion2.Connected then begin

        with quSQL3,SQL do begin

             Close;
             Text := ' Select * From EstTip Where EstTip.CodTip = '''+ IntToStr( EstTipCodTip.Value ) +'''';
             Open;

        end;

        if quSQL3.FieldbyName('CodTip').AsInteger = 0 then begin

           with quSQL3,SQL do begin

                Close;
                Text := ' Insert Into EstTip(CodTip,NomTip,FlgInt) Values(:CodTip,:NomTip,:FlgInt)';

                with Params do begin

                     Params[0].AsInteger := EstTipCodTip.Value;
                     Params[1].AsString  := EstTipNomTip.Value;
                     Params[2].AsString  := 'Sim';

                end;

                ExecSQL;

           end;

           end
        else
           begin

           if EstTipNomTip.Value <> quSQL3.FieldbyName('NomTip').AsString then begin

              with quSQL3,SQL do begin

                   Close;
                   Text := ' Update EstTip Set NomTip = :NomTip Where EstTip.CodTip = :CodTip';

                   with Params do begin

                        Params[0].AsString  := EstTipNomTip.Value;
                        Params[1].AsInteger := EstTipCodTip.Value;

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

procedure TfmManTip.EstTipBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if EstTipCodTip.Value > 0 then begin

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

  if fmmanpri.Emerion_01 then
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
                Text := ' Delete From EstTip Where EstTip.CodTip = '''+ IntToStr(EstTipCodTip.Value) +'''';
                ExecSQL;

           end;
        end;

        if fmManGDB.dbEmerion2.Connected then begin

           with quSQL3,SQL do begin

                Close;
                Text := ' Delete From EstTip Where EstTip.CodTip = '''+ IntToStr(EstTipCodTip.Value) +'''';
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
end;

end.
