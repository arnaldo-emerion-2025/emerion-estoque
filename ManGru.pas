unit ManGru;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Db, Wwdatsrc, DBTables, Wwquery, dxPageControl, Buttons,
  ExtCtrls, StdCtrls, dxCntner, dxEditor, dxEdLib, ComCtrls, hNavigator,
  Grids, Wwdbigrd, Wwdbgrid, hGrid, dxDBELib, dxExEdtr, dxDBEdtr, Menus,
  ppDB, ppCtrls, ppBands, ppClass, ppVar, ppPrnabl, ppCache, ppProd,
  ppReport, ppComm, ppRelatv, ppDBPipe, dxDBColorEdit, dxColorEdit;

type
  TfmManGru = class(TfmPadrao)
    UpGru: TUpdateSQL;
    EstGru: TwwQuery;
    DsGru: TwwDataSource;
    pcGru: TPageControl;
    pcPag1: TTabSheet;
    pcPag2: TTabSheet;
    Panel2: TPanel;
    Shape2: TShape;
    Label10: TLabel;
    EdPsqCodGru: TdxColorEdit;
    rgOrdem: TRadioGroup;
    rgBusca: TRadioGroup;
    Bbselecionar: TBitBtn;
    Panel3: TPanel;
    grGru: ThGrid;
    Label3: TLabel;
    Shape5: TShape;
    Panel4: TPanel;
    Shape9: TShape;
    Label5: TLabel;
    Shape10: TShape;
    Label7: TLabel;
    Shape11: TShape;
    Label9: TLabel;
    EdNomGru: TdxDBColorEdit;
    Label1: TLabel;
    Label4: TLabel;
    EdPsqNomGru: TdxColorEdit;
    EdCodGru: TdxDBColorEdit;
    Label12: TLabel;
    EstSub: TwwQuery;
    DsSub: TwwDataSource;
    UpSub: TUpdateSQL;
    Label2: TLabel;
    Panel5: TPanel;
    grSub2: ThGrid;
    Label8: TLabel;
    EdCodSub: TdxDBColorEdit;
    Panel7: TPanel;
    grSub1: ThGrid;
    Label14: TLabel;
    Shape8: TShape;
    Label15: TLabel;
    EdNomSub: TdxDBColorEdit;
    Shape12: TShape;
    Shape6: TShape;
    Shape4: TShape;
    EstGruCODGRU: TStringField;
    EstGruNOMGRU: TStringField;
    EstSubCODGRU: TStringField;
    EstSubCODSUB: TStringField;
    EstSubNOMSUB: TStringField;
    Panel8: TPanel;
    Shape3: TShape;
    Label73: TLabel;
    nvSub: ThDBNavigator;
    nvGru: ThDBNavigator;
    quSql: TwwQuery;
    quPsq: TwwQuery;
    dsPsq: TwwDataSource;
    quPsqCODSUB: TStringField;
    quPsqNOMSUB: TStringField;
    quPsqCODGRU: TStringField;
    quPsqNOMGRU: TStringField;
    plOcoCr1: TppDBPipeline;
    ppReport1: TppReport;
    hbReport: TppHeaderBand;
    ppLabel20: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppLabel1: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel45: TppLabel;
    dbReport: TppDetailBand;
    ppSubPlc: TppDBText;
    ppNomSub: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLabel3: TppLabel;
    ppLabel2: TppLabel;
    ppLabel5: TppLabel;
    ppConPlc: TppDBText;
    ppNomPlc: TppDBText;
    ppLabel4: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine1: TppLine;
    quSQL2: TwwQuery;
    quSQL3: TwwQuery;
    procedure FormShow(Sender: TObject);
    procedure pcPag1Show(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure grGruDblClick(Sender: TObject);
    procedure BbselecionarClick(Sender: TObject);
    procedure EstGruNewRecord(DataSet: TDataSet);
    procedure EstSubNewRecord(DataSet: TDataSet);
    procedure DsGruDataChange(Sender: TObject; Field: TField);
    procedure EdNomSubKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DsSubDataChange(Sender: TObject; Field: TField);
    procedure EstSubAfterCancel(DataSet: TDataSet);
    procedure EstSubBeforeEdit(DataSet: TDataSet);
    procedure EstGruAfterCancel(DataSet: TDataSet);
    procedure EstGruBeforeEdit(DataSet: TDataSet);
    procedure EdPsqCodGruExit(Sender: TObject);
    procedure EdPsqCodGruKeyPress(Sender: TObject; var Key: Char);
    procedure nvGruImprime(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure nvGruSalva(Sender: TObject);
    procedure nvSubSalva(Sender: TObject);
    procedure EstGruBeforeDelete(DataSet: TDataSet);
    procedure EstSubBeforeDelete(DataSet: TDataSet);
  private
    {Private declarations}
  public
    {Public declarations}
    sBase, sOrdem, sFiltro : string;
  end;

var
  fmManGru: TfmManGru;

implementation

uses Bbgeral, Bbmensag, ManPri, Fpreview, ManGDB;

{$R *.DFM}

{*************************************************************************
* Rotina: Evitar Movimentação de Janelas
*************************************************************************}
procedure TfmManGru.FormCreate(Sender: TObject);
begin
  inherited;
  sBase  := ' Select * From EstGru ';
end;

procedure TfmManGru.BbselecionarClick(Sender: TObject);
begin
  inherited;

  if Trim( EdPsqCodGru.Text ) <> '' then EdPsqCodGru.Text := FNumZeros(EdPsqCodGru.Text,3);

  sFiltro := '';

  {Ordem}
  case rgOrdem.ItemIndex of
       0: sOrdem := ' Order by CodGru';
       1: sOrdem := ' Order by NomGru';
  end;

  if (EdpsqCodGru.Text <> '') then sFiltro := ' where CodGru = '''+ EdpsqCodGru.Text +'''';

  if Rgbusca.ItemIndex = 0 then begin

     if (EdpsqNomGru.Text <> '') then sFiltro := ' where NomGru LIKE '''+ EdpsqNomGru.Text +'%''';

     end
  else
     begin

     if (EdpsqNomGru.Text <> '') then sFiltro := ' where NomGru LIKE ''%' + EdpsqNomGru.Text + '%''';

  end;

  with EstGru,SQL do begin

       Close;
       Text := sBase + sFiltro + sOrdem;
       Open;

  end;

  grGru.SetFocus;

end;

procedure TfmManGru.EstGruNewRecord(DataSet: TDataSet);
begin
  inherited;

  EstGru.DisableControls;

  with quSql,SQL do begin

       Close;
       Text := ' Select * from EstGru Order by CodGru';
       Open;
       Last;

  end;

  if Trim( quSql.FieldbyName('CodGru').AsString ) <> '' then
     EstGruCodGru.Value := FNumZeros(IntToStr(StrToInt(quSql.FieldByName('CodGru').AsString) + 1),3)
  else
     EstGruCodGru.Value := '001';

  EstGru.EnableControls;

  EstSub.Close;
  EstSub.Params[0].AsString := EstGruCodGru.Value;
  EstSub.Open;

  nvSub.Enabled := False;

  EdNomSub.Enabled := False;

  EdNomSub.Font.Style := [fsbold];

  PcGru.ActivePage := PcPag2;

  EdNomGru.SetFocus;

end;

procedure TfmManGru.pcPag1Show(Sender: TObject);
begin
  inherited;
  EdPsqCodGru.SetFocus;
end;

procedure TfmManGru.grGruDblClick(Sender: TObject);
begin
  inherited;
  pcGru.ActivePage := pcPag2;
end;

procedure TfmManGru.FormShow(Sender: TObject);
begin
  inherited;

  PcGru.ActivePage := PcPag1;

  EdPsqCodGru.SetFocus;

end;

procedure TfmManGru.EstSubNewRecord(DataSet: TDataSet);
begin
  inherited;

  EstSub.DisableControls;

  EstSubCodGru.Value := EstGruCodGru.Value;

  with quSql,SQL do begin

       Close;
       Text := ' Select * From EstSub '+
               ' Where CodGru = '''+EstGruCodGru.Value+''''+
               ' Order by CodGru,CodSub';
       Open;
       Last;

  end;

  if Trim( quSql.FieldbyName('CodGru').AsString ) <> '' then
     EstSubCodSub.Value := FNumZeros(IntToStr(StrToInt(quSql.FieldByName('CodSub').AsString) + 1),4)
  else
     EstSubCodSub.Value := '0001';

  EstSub.EnableControls;

  if not EdNomSub.Enabled then begin

     EdNomSub.Enabled := True;

     EdNomSub.Font.Style := [];

  end;

  EdNomGru.Enabled := False;

  EdNomGru.Font.Style := [fsBold];

  nvGru.Enabled := False;

  EdNomSub.SetFocus;

end;

procedure TfmManGru.DsGruDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if not nvGru.Salvar then begin

     if Trim( EstGruCodGru.Value ) = '' then
        nvSub.Enabled := False
     else
        nvSub.Enabled := True;

     EstSub.Close;
     EstSub.Params[0].AsString := EstGruCodGru.Value;
     EstSub.Open;

  end;

  if Trim( EstGruCodGru.Value ) <> '' then begin

     EdNomSub.Enabled := True;

     EdNomSub.Font.Style := [];

     end
  else
     begin

     EdNomSub.Enabled := False;

     EdNomSub.Font.Style := [fsbold];

  end;
end;

procedure TfmManGru.EdNomSubKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
operac : string;
begin
  inherited;
  if (key = 13) or (key = 40) then begin

     if nvSub.Salvar then begin

        if EstSub.State = dsInsert then Operac := 'I';

        nvSub.SBSalvaClick(Sender);

        if (Operac = 'I') and (not nvSub.Salvar) then begin

           nvSub.SBIncluiClick(Sender);

           EdNomSub.SetFocus;

        end;
     end;
  end;
end;

procedure TfmManGru.DsSubDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if not nvSub.Salvar then begin

     nvGru.Enabled := True;

     EdNomGru.Enabled := True;

     EdNomGru.Font.Style := [];

  end;
end;

procedure TfmManGru.EstSubAfterCancel(DataSet: TDataSet);
begin
  inherited;

  EdNomGru.Enabled := True;

  EdNomGru.Font.Style := [];

end;

procedure TfmManGru.EstSubBeforeEdit(DataSet: TDataSet);
begin
  inherited;

  EdNomGru.Enabled := False;

  EdNomGru.Font.Style := [fsBold];

end;

procedure TfmManGru.EstGruAfterCancel(DataSet: TDataSet);
begin
  inherited;
  if Trim( EstGruCodGru.Value ) <> '' then begin

     EdNomSub.Enabled := True;

     EdNomSub.Font.Style := [];

     end
  else
     begin

     EdNomSub.Enabled := False;

     EdNomSub.Font.Style := [fsbold];

  end;
end;

procedure TfmManGru.EstGruBeforeEdit(DataSet: TDataSet);
begin
  inherited;

  EdNomSub.Enabled := False;

  EdNomSub.Font.Style := [fsbold];

end;

procedure TfmManGru.EdPsqCodGruExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodGru.Text ) <> '' then EdPsqCodGru.Text := FNumZeros(EdPsqCodGru.Text,3);
end;

procedure TfmManGru.EdPsqCodGruKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManGru.nvGruImprime(Sender: TObject);
var
sFiltro1,sOrdem1 : string;
begin
  inherited;

  sFiltro1 := '';

  {Ordem}
  case rgOrdem.ItemIndex of
       0: sOrdem1 := ' Order by EstSub.CodGru,EstSub.CodSub';
       1: sOrdem1 := ' Order by EstGru.NomGru,EstSub.NomSub';
  end;

  if (EdpsqCodGru.Text <> '') then sFiltro1 := ' Where EstGru.CodGru = '''+ EdpsqCodGru.Text +'''';

  if Rgbusca.ItemIndex = 0 then begin

     if (EdpsqNomGru.Text <> '') then sFiltro1 := ' Where EstGru.NomGru LIKE '''+ EdpsqNomGru.Text +'%''';

     end
  else
     begin

     if (EdpsqNomGru.Text <> '') then sFiltro1 := ' Where EstGru.NomGru LIKE ''%' + EdpsqNomGru.Text + '%''';

  end;
  
  with quPsq,SQL do begin

       Close;
       Text := ' Select CodSub,NomSub,CodGru,NomGru'+
               ' From EstSub LEFT JOIN EstGru ON (EstSub.CodGru = EstGru.CodGru)'+ sFiltro1 + sOrdem1;
       Open;
       First;

  end;

  if not quPsq.Eof then begin

     try

        ppReport1.DeviceType := 'Screen';
        fmPreview := TfmPreview.Create(fmManGru);
        fmPreview.ppViewer.Report := ppReport1;
        ppReport1.PrintToDevices;
        fmPreview.ShowModal;

        if Assigned(ppReport1.AfterPrint) then ppReport1.AfterPrint(Sender);

     finally

        FreeAndNil(fmPreview);

     end;
  end;
end;

procedure TfmManGru.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManGru.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManGru := Nil;
end;

procedure TfmManGru.nvGruSalva(Sender: TObject);
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
             Text := ' Select * From EstGru Where EstGru.CodGru = '''+ EstGruCodGru.Value +'''';
             Open;

        end;

        if Trim( quSQL2.FieldbyName('CodGru').AsString ) = '' then begin

           with quSQL2,SQL do begin

                Close;
                Text := ' Insert Into EstGru Values(:CodGru,:NomGru)';

                with Params do begin

                     Params[0].AsString := EstGruCodGru.Value;
                     Params[1].AsString := EstGruNomGru.Value;

                end;

                ExecSQL;

           end;

           end
        else
           begin

           if EstGruNomGru.Value <> quSQL2.FieldbyName('NomGru').AsString then begin

              with quSQL2,SQL do begin

                   Close;
                   Text := ' Update EstGru Set NomGru = :NomGru Where EstGru.CodGru = :CodGru';

                   with Params do begin

                        Params[0].AsString := EstGruNomGru.Value;
                        Params[1].AsString := EstGruCodGru.Value;

                   end;

                   ExecSQL;

              end;
           end;
        end;
     end;

     if fmManGDB.dbEmerion2.Connected then begin

        with quSQL3,SQL do begin

             Close;
             Text := ' Select * From EstGru Where EstGru.CodGru = '''+ EstGruCodGru.Value +'''';
             Open;

        end;

        if Trim( quSQL3.FieldbyName('CodGru').AsString ) = '' then begin

           with quSQL3,SQL do begin

                Close;
                Text := ' Insert Into EstGru Values(:CodGru,:NomGru)';

                with Params do begin

                     Params[0].AsString := EstGruCodGru.Value;
                     Params[1].AsString := EstGruNomGru.Value;

                end;

                ExecSQL;

           end;

           end
        else
           begin

           if EstGruNomGru.Value <> quSQL3.FieldbyName('NomGru').AsString then begin

              with quSQL3,SQL do begin

                   Close;
                   Text := ' Update EstGru Set NomGru = :NomGru Where EstGru.CodGru = :CodGru';

                   with Params do begin

                        Params[0].AsString := EstGruNomGru.Value;
                        Params[1].AsString := EstGruCodGru.Value;

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

procedure TfmManGru.nvSubSalva(Sender: TObject);
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
             Text := ' Select * From EstSub Where EstSub.CodGru = '''+ EstSubCodGru.Value +''' and EstSub.CodSub = '''+ EstSubCodSub.Value +'''';
             Open;

        end;

        if Trim( quSQL2.FieldbyName('CodGru').AsString ) = '' then begin

           with quSQL2,SQL do begin

                Close;
                Text := ' Insert Into EstSub(CodGru,CodSub,NomSub) Values(:CodGru,:CodSub,:NomGru)';

                with Params do begin

                     Params[0].AsString := EstSubCodGru.Value;
                     Params[1].AsString := EstSubCodSub.Value;
                     Params[2].AsString := EstSubNomSub.Value;

                end;

                ExecSQL;

           end;

           end
        else
           begin

           if EstSubNomSub.Value <> quSQL2.FieldbyName('NomSub').AsString then begin

              with quSQL2,SQL do begin

                   Close;
                   Text := ' Update EstSub Set NomSub = :NomSub Where EstSub.CodGru = :CodGru and EstSub.CodSub = :CodSub';

                   with Params do begin

                        Params[0].AsString := EstSubNomSub.Value;
                        Params[1].AsString := EstSubCodGru.Value;
                        Params[2].AsString := EstSubCodSub.Value;

                   end;

                   ExecSQL;

              end;
           end;
        end;
     end;

     if fmManGDB.dbEmerion2.Connected then begin

        with quSQL3,SQL do begin

             Close;
             Text := ' Select * From EstSub Where EstSub.CodGru = '''+ EstSubCodGru.Value +''' and EstSub.CodSub = '''+ EstSubCodSub.Value +'''';
             Open;

        end;

        if Trim( quSQL3.FieldbyName('CodGru').AsString ) = '' then begin

           with quSQL3,SQL do begin

                Close;
                Text := ' Insert Into EstSub(CodGru,CodSub,NomSub) Values(:CodGru,:CodSub,:NomGru)';

                with Params do begin

                     Params[0].AsString := EstSubCodGru.Value;
                     Params[1].AsString := EstSubCodSub.Value;
                     Params[2].AsString := EstSubNomSub.Value;

                end;

                ExecSQL;

           end;

           end
        else
           begin

           if EstSubNomSub.Value <> quSQL3.FieldbyName('NomSub').AsString then begin

              with quSQL3,SQL do begin

                   Close;
                   Text := ' Update EstSub Set NomSub = :NomSub Where EstSub.CodGru = :CodGru and EstSub.CodSub = :CodSub';

                   with Params do begin

                        Params[0].AsString := EstSubNomSub.Value;
                        Params[1].AsString := EstSubCodGru.Value;
                        Params[2].AsString := EstSubCodSub.Value;

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

procedure TfmManGru.EstGruBeforeDelete(DataSet: TDataSet);
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
             Text := ' Delete From EstGru Where EstGru.CodGru = '''+ EstGruCodGru.Value +'''';
             ExecSQL;

        end;
     end;

     if fmManGDB.dbEmerion2.Connected then begin

        with quSQL3,SQL do begin

             Close;
             Text := ' Delete From EstGru Where EstGru.CodGru = '''+ EstGruCodGru.Value +'''';
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

procedure TfmManGru.EstSubBeforeDelete(DataSet: TDataSet);
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
             Text := ' Delete From EstSub Where EstSub.CodGru = '''+ EstSubCodGru.Value +''' and EstSub.CodSub = '''+ EstSubCodSub.Value +'''';
             ExecSQL;

        end;
     end;

     if fmManGDB.dbEmerion2.Connected then begin

        with quSQL3,SQL do begin

             Close;
             Text := ' Delete From EstSub Where EstSub.CodGru = '''+ EstSubCodGru.Value +''' and EstSub.CodSub = '''+ EstSubCodSub.Value +'''';
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

end.
