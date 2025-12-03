unit ManBar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxCntner, dxExEdtr,
  dxEdLib, dxDBELib, Db, Wwdatsrc, DBTables, Wwquery, dxEditor, StdCtrls,
  dxDBColorPickEdit, dxDBColorCurrencyEdit, dxDBColorEdit, Menus;

type
  TfmManBar = class(TForm)
    PaintBox: TPaintBox;
    grPro: TdxDBGraphicEdit;
    grBar: ThGrid;
    EstBar: TwwQuery;
    DsBar: TwwDataSource;
    UpBar: TUpdateSQL;
    quSQL: TwwQuery;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel3: TPanel;
    Label1: TLabel;
    EstBarCODCLP: TStringField;
    EstBarCODGRU: TStringField;
    EstBarCODSUB: TStringField;
    EstBarCODPRO: TStringField;
    EstBarSEQBAR: TIntegerField;
    EstBarCODBAR: TStringField;
    EstBarNROBAR: TIntegerField;
    Panel1: TPanel;
    EdCodBar: TdxDBColorEdit;
    EstBarFLGINT: TStringField;
    EstBarQTDEMB: TFloatField;
    Label2: TLabel;
    EdQtdEmb: TdxDBColorCurrencyEdit;
    Label3: TLabel;
    EdFlgInt: TdxDBCheckEdit;
    StoredProcedure: TStoredProc;
    EstBarTIPEMB: TStringField;
    EdTipEmb: TdxDBColorPickEdit;
    Label4: TLabel;
    ppmenu: TPopupMenu;
    Copiar1: TMenuItem;
    procedure PaintBoxPaint(Sender: TObject);
    procedure grBarKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EstBarNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure Panel1Exit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodBarExit(Sender: TObject);
    procedure grBarDrawDataCell(Sender: TObject; const Rect: TRect; Field: TField; State: TGridDrawState);
    procedure EdCodBarEnter(Sender: TObject);
    procedure EdCodBarKeyPress(Sender: TObject; var Key: Char);
  private
    {Private declarations}
  public
    formulario: TForm;
  end;

var
  fmManBar: TfmManBar;

implementation

uses dxDemoUtils, Bbfuncao, Bbgeral, Bbmensag, ManGDB, ManPro; //, ManPro2;

{$R *.DFM}

procedure TfmManBar.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManBar.grBarKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  SeqBar: integer;
begin
  if key = 13 then
  begin {Tecla - ENTER}

    if Trim(UpperCase(GLibAce)) = 'SIM' then
    begin

      if EstBarSeqBar.Value > 0 then
      begin

        if EstBarFlgInt.Value = 'Nao' then
        begin

          EdCodBar.Enabled := True;
          EdQtdEmb.Enabled := True;
          EdTipEmb.Enabled := True;

          EdCodBar.SetFocus;

        end
        else
        begin

          EdQtdEmb.Enabled := True;
          EdTipEmb.Enabled := True;

          EdQtdEmb.SetFocus;

        end;
      end;

    end
    else
      fmsgErro(GMensagem, nil);

  end;

  if key = 40 then
  begin {Tecla - Seta para Baixo}

    if EstBarNroBar.Value = TField(formulario.FindComponent('EstProQtdBar')).Value then
    begin

      if Trim(UpperCase(GLibAce)) = 'SIM' then
        EstBar.Append
      else
        fmsgErro(GMensagem, nil);

    end;
  end;

  if key = 46 then
  begin {Tecla - DEL}

    if EstBarSeqBar.Value > 0 then
    begin

      if Trim(UpperCase(GLibAce)) = 'SIM' then
      begin

        //if EstBarFlgInt.Value = 'Nao' then begin
        if true then
        begin
          SeqBar := EstBarSeqBar.Value;

          if (fMsg('Deseja realmente excluir este código de barras?', 'O')) then
          begin
            EstBar.Delete;
          end;

          with EstBar do
          begin

            fmManGDB.dbMain.StartTransaction; {Inicia a Transação}
            ;

            try

              ApplyUpdates; {Tenta aplicar as alterações}
              ;

              fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação}
              ;

            except

              fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro}
              ;

              if EstBar.State <> dsBrowse then
                EstBar.CancelUpdates;

              grBar.SetFocus;

              raise;

            end;

            CommitUpdates; {sucesso!, limpa o cache...}

          end;

          EstBar.Close;
          EstBar.Open;

          TwwQuery(formulario.FindComponent('EstPro')).Close;
          TwwQuery(formulario.FindComponent('EstPro')).Open;

          if SeqBar < TField(formulario.FindComponent('EstProQtdBar')).Value then
            EstBar.Locate('SeqBar', VarArrayOf([SeqBar]), [LoPartialKey])
          else
          begin

            if TField(formulario.FindComponent('EstProQtdBar')).Value = 0 then
              EstBar.Append
            else
              EstBar.Last;

          end;

        end
        else
          fmsgErro('Código não Pode ser Excluido.', nil);

      end
      else
        fmsgErro(GMensagem, nil);

    end;
  end;
end;

procedure TfmManBar.EstBarNewRecord(DataSet: TDataSet);
begin

  EstBar.DisableControls;

  EstBarQtdEmb.Value := 1;
  EstBarFlgInt.Value := 'Nao';
  EstBarTipEmb.Value := 'Unidade';
  EstBarCodClp.Value := TField(formulario.FindComponent('EstProCodClp')).Value;
  EstBarCodGru.Value := TField(formulario.FindComponent('EstProCodGru')).Value;
  EstBarCodSub.Value := TField(formulario.FindComponent('EstProCodSub')).Value;
  EstBarCodPro.Value := TField(formulario.FindComponent('EstProCodPro')).Value;
  EstBarSeqBar.Value := TField(formulario.FindComponent('EstProSeqBar')).Value + 1;
  EstBarNroBar.Value := TField(formulario.FindComponent('EstProQtdBar')).Value + 1;

  EstBar.EnableControls;

  EdCodBar.Enabled := True;
  EdQtdEmb.Enabled := True;
  EdTipEmb.Enabled := True;
  EdFlgInt.Enabled := True;

  EdCodBar.SetFocus;

end;

procedure TfmManBar.FormShow(Sender: TObject);
begin
  grBar.SetFocus;
end;

procedure TfmManBar.Panel1Exit(Sender: TObject);
var
  SeqBar, sCodBar: integer;
begin
  if EstBar.State <> dsBrowse then
  begin

    if TField(formulario.FindComponent('EstParLanCba')).Value = 'Sim' then
    begin

      if TField(formulario.FindComponent('EstParTipEan')).Value = 'Itens' then
      begin

        if Trim(TField(formulario.FindComponent('EstParIniEan')).Value) <> '' then
        begin

          if EstBarFlgInt.Value = 'Sim' then
          begin

            if Trim(EstBarCodBar.Value) = '' then
            begin

              fmManGDB.dbMain.StartTransaction;

              with StoredProcedure do
              begin

                ParamByName('SEQOPE').AsInteger := 1;
                Close;
                Prepare;
                ExecProc;
                Unprepare;

                if ParamByName('RETORNO').Value <> null then
                begin

                  sCodBar := ParamByName('RETORNO').Value;

                  fmManGDB.dbMain.Commit;

                end
                else
                  fmManGDB.dbMain.Rollback;

              end;

              if sCodBar > 0 then
                EstBarCodBar.Value := fGeraCB2(TField(formulario.FindComponent('EstParIniEan')).Value + fNumZeros(IntToStr(sCodBar), 5));

            end;
          end;
        end;
      end;
    end;

    if Trim(EstBarCodBar.Value) = '' then
      fmsgErro('Campo de Preenchimento Obrigatorio não Informado.', EdCodBar);

    if EstBar.State = dsInsert then
    begin

      with EstBar do
      begin

        fmManGDB.dbMain.StartTransaction; {Inicia a Transação}
        ;

        try

          ApplyUpdates; {Tenta aplicar as alterações}
          ;

          fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação}
          ;

        except

          fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro}
          ;

          if EstBar.State = dsBrowse then
            EstBar.Edit;

          if EdCodBar.Enabled then
            EdCodBar.SetFocus
          else
            EdQtdEmb.SetFocus;

          raise;

        end;

        CommitUpdates; {sucesso!, limpa o cache...}

      end;

      EstBar.Close;
      EstBar.Open;

      TwwQuery(formulario.FindComponent('EstPro')).Close;
      TwwQuery(formulario.FindComponent('EstPro')).Open;

      EstBar.Append;

      EdCodBar.SetFocus;

    end
    else
    begin

      SeqBar := EstBarSeqBar.Value;

      with EstBar do
      begin

        fmManGDB.dbMain.StartTransaction; {Inicia a Transação}
        ;

        try

          ApplyUpdates; {Tenta aplicar as alterações}
          ;

          fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação}
          ;

        except

          fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro}
          ;

          if EstBar.State = dsBrowse then
            EstBar.Edit;

          if EdCodBar.Enabled then
            EdCodBar.SetFocus
          else
            EdQtdEmb.SetFocus;

          raise;

        end;

        CommitUpdates; {sucesso!, limpa o cache...}

      end;

      EstBar.Close;
      EstBar.Open;

      TwwQuery(formulario.FindComponent('EstPro')).Close;
      TwwQuery(formulario.FindComponent('EstPro')).Open;

      if SeqBar > 0 then
        EstBar.Locate('SeqBar', SeqBar, [LoPartialKey]);

      if EstBarSeqBar.Value = TField(formulario.FindComponent('EstProQtdBar')).Value then
        EstBar.Append
      else
      begin

        EstBar.Next;

        EdCodBar.Enabled := False;
        EdQtdEmb.Enabled := False;
        EdTipEmb.Enabled := False;
        EdFlgInt.Enabled := False;

        grBar.SetFocus;

      end;
    end;

  end
  else
  begin

    EdCodBar.Enabled := False;
    EdQtdEmb.Enabled := False;
    EdTipEmb.Enabled := False;
    EdFlgInt.Enabled := False;

    grBar.SetFocus;

  end;
end;

procedure TfmManBar.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then
  begin

    if EdCodBar.Enabled then
    begin

      EstBar.CancelUpdates;

      EdCodBar.Enabled := False;
      EdQtdEmb.Enabled := False;
      EdTipEmb.Enabled := False;
      EdFlgInt.Enabled := False;

      grBar.SetFocus;

    end
    else
      Close;

  end;

  if (key = 40) or (key = 38) then
  begin

    if key = 40 then
      Perform(Wm_NextDlgCtl, 0, 0)
    else
      Perform(Wm_NextDlgCtl, 1, 0);

  end
  else
  begin

    if key = 13 then
      Perform(Wm_NextDlgCtl, 0, 0);

  end;
end;

procedure TfmManBar.EdCodBarExit(Sender: TObject);
begin

  EdCodBar.Color := $00FCF4ED;

  if Tecla = 'UP' then
  begin

    if TField(formulario.FindComponent('EstProQtdBar')).Value > 0 then
    begin

      EdCodBar.Enabled := False;
      EdQtdEmb.Enabled := False;
      EdTipEmb.Enabled := False;
      EdFlgInt.Enabled := False;

      if EstBar.State <> dsBrowse then
        EstBar.CancelUpdates
      else
      begin

        if not EstBar.BOF then
          EstBar.Prior;

      end;

      grBar.SetFocus;

    end
    else
      EdCodBar.SetFocus;

  end;
end;

procedure TfmManBar.grBarDrawDataCell(Sender: TObject; const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  if gdSelected in State then
  begin

    with (Sender as ThGrid).Canvas do
    begin

      Font.Color := clWhite;

      FillRect(Rect);

    end;

  end
  else
  begin

    if EstBar.FieldbyName('FlgInt').AsString = 'Sim' then
    begin

      with (Sender as ThGrid).Canvas do
      begin

        Font.Color := clRed;

        FillRect(Rect);

      end;
    end;
  end;

  (Sender as ThGrid).DefaultDrawDataCell(Rect, Field, State);

end;

procedure TfmManBar.EdCodBarEnter(Sender: TObject);
begin
  EdCodBar.Color := clInfobk;
end;

procedure TfmManBar.EdCodBarKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9', #8, #9, #16]) then
    key := #0;

end;

end.
