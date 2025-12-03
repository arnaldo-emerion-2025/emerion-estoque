unit ManStr;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, hNavigator, ExtCtrls, DBTables, Db, Wwdatsrc, Wwquery, StdCtrls,
  Mask, DBCtrls, hEdits, Grids, Wwdbigrd, Wwdbgrid, hGrid, ComCtrls,
  wwdblook, Buttons, AlignEdit, ppBands, ppClass, ppDB, ppCtrls, ppVar,
  ppPrnabl, ppProd, ppReport, ppComm, ppRelatv, ppCache, ppDBPipe, dxCntner,
  dxEditor, dxExEdtr, dxEdLib, dxDBELib, wwriched, dxDBEdtr,
  dxDBColorCurrencyEdit, dxDBColorPickEdit, dxDBColorEdit, dxColorPickEdit,
  dxColorEdit;

type
  TfmManStr = class(TfmPadrao)
    pcStr: TPageControl;
    pcPag1: TTabSheet;
    pcPag2: TTabSheet;
    quSql: TwwQuery;
    nvStr: ThDBNavigator;
    EstStr: TwwQuery;
    DsStr: TwwDataSource;
    UpStr: TUpdateSQL;
    Label12: TLabel;
    Shape11: TShape;
    Panel3: TPanel;
    grIcm: ThGrid;
    Label1: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    EdPsqNomStr: TdxColorEdit;
    EdPsqCodStr: TdxColorEdit;
    Label8: TLabel;
    Shape2: TShape;
    BbPesquisa: TBitBtn;
    rgOrdem: TRadioGroup;
    rgBusca: TRadioGroup;
    Shape3: TShape;
    EdPsqTipStr: TdxColorPickEdit;
    Label11: TLabel;
    Label13: TLabel;
    Shape4: TShape;
    Shape5: TShape;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    EdCodStr: TdxDBColorEdit;
    EdNomStr: TdxDBColorEdit;
    EdTipStr: TdxDBColorPickEdit;
    Shape7: TShape;
    Shape1: TShape;
    EdTrbe01: TdxDBCheckEdit;
    Label2: TLabel;
    EdTrbe16: TdxDBCheckEdit;
    Label3: TLabel;
    EdTrbe02: TdxDBCheckEdit;
    Label5: TLabel;
    EdTrbe03: TdxDBCheckEdit;
    Label7: TLabel;
    Label9: TLabel;
    EdTrbe04: TdxDBCheckEdit;
    Label10: TLabel;
    EdTrbe17: TdxDBCheckEdit;
    Label17: TLabel;
    EdTrbe05: TdxDBCheckEdit;
    Label18: TLabel;
    EdTrbe06: TdxDBCheckEdit;
    Label19: TLabel;
    EdTrbe07: TdxDBCheckEdit;
    EdTrbe18: TdxDBCheckEdit;
    Label20: TLabel;
    Label21: TLabel;
    EdTrbe08: TdxDBCheckEdit;
    Label22: TLabel;
    EdTrbe10: TdxDBCheckEdit;
    Label23: TLabel;
    EdTrbe11: TdxDBCheckEdit;
    EdTrbe20: TdxDBCheckEdit;
    Label24: TLabel;
    Label25: TLabel;
    EdTrbe19: TdxDBCheckEdit;
    Label26: TLabel;
    EdTrbe12: TdxDBCheckEdit;
    Label27: TLabel;
    EdTrbe13: TdxDBCheckEdit;
    Label28: TLabel;
    EdTrbe14: TdxDBCheckEdit;
    EdTrbe15: TdxDBCheckEdit;
    Label29: TLabel;
    EdIcmE01: TdxDBColorCurrencyEdit;
    EdMlce01: TdxDBColorCurrencyEdit;
    EdBase01: TdxDBColorCurrencyEdit;
    EdIcmE02: TdxDBColorCurrencyEdit;
    EdMlce02: TdxDBColorCurrencyEdit;
    EdBase02: TdxDBColorCurrencyEdit;
    EdIcmE03: TdxDBColorCurrencyEdit;
    EdMlce03: TdxDBColorCurrencyEdit;
    EdBase03: TdxDBColorCurrencyEdit;
    EdIcmE04: TdxDBColorCurrencyEdit;
    EdMlce04: TdxDBColorCurrencyEdit;
    EdBase04: TdxDBColorCurrencyEdit;
    EdIcmE05: TdxDBColorCurrencyEdit;
    EdMlce05: TdxDBColorCurrencyEdit;
    EdBase05: TdxDBColorCurrencyEdit;
    EdIcmE06: TdxDBColorCurrencyEdit;
    EdMlce06: TdxDBColorCurrencyEdit;
    EdBase06: TdxDBColorCurrencyEdit;
    EdIcmE07: TdxDBColorCurrencyEdit;
    EdMlce07: TdxDBColorCurrencyEdit;
    EdBase07: TdxDBColorCurrencyEdit;
    EdIcmE08: TdxDBColorCurrencyEdit;
    EdMlce08: TdxDBColorCurrencyEdit;
    EdBase08: TdxDBColorCurrencyEdit;
    EdIcmE10: TdxDBColorCurrencyEdit;
    EdMlce10: TdxDBColorCurrencyEdit;
    EdBase10: TdxDBColorCurrencyEdit;
    EdIcmE11: TdxDBColorCurrencyEdit;
    EdMlce11: TdxDBColorCurrencyEdit;
    EdBase11: TdxDBColorCurrencyEdit;
    EdIcmE12: TdxDBColorCurrencyEdit;
    EdMlce12: TdxDBColorCurrencyEdit;
    EdBase12: TdxDBColorCurrencyEdit;
    EdIcmE13: TdxDBColorCurrencyEdit;
    EdMlce13: TdxDBColorCurrencyEdit;
    EdBase13: TdxDBColorCurrencyEdit;
    EdIcmE14: TdxDBColorCurrencyEdit;
    EdMlce14: TdxDBColorCurrencyEdit;
    EdBase14: TdxDBColorCurrencyEdit;
    EdIcmE15: TdxDBColorCurrencyEdit;
    EdMlce15: TdxDBColorCurrencyEdit;
    EdBase15: TdxDBColorCurrencyEdit;
    EdTrbe21: TdxDBCheckEdit;
    Label30: TLabel;
    EdTrbe22: TdxDBCheckEdit;
    Label31: TLabel;
    EdTrbe23: TdxDBCheckEdit;
    Label32: TLabel;
    EdTrbe24: TdxDBCheckEdit;
    Label33: TLabel;
    EdTrbe25: TdxDBCheckEdit;
    Label34: TLabel;
    EdTrbe26: TdxDBCheckEdit;
    Label35: TLabel;
    EdTrbe27: TdxDBCheckEdit;
    Label36: TLabel;
    EdTrbe28: TdxDBCheckEdit;
    Label37: TLabel;
    EdIcmE16: TdxDBColorCurrencyEdit;
    EdMlce16: TdxDBColorCurrencyEdit;
    EdBase16: TdxDBColorCurrencyEdit;
    EstStrCODSTR: TStringField;
    EstStrNOMSTR: TStringField;
    EstStrTRBE01: TStringField;
    EstStrICME01: TFloatField;
    EstStrMLCE01: TFloatField;
    EstStrBASE01: TFloatField;
    EstStrTRBE02: TStringField;
    EstStrICME02: TFloatField;
    EstStrMLCE02: TFloatField;
    EstStrBASE02: TFloatField;
    EstStrTRBE03: TStringField;
    EstStrICME03: TFloatField;
    EstStrMLCE03: TFloatField;
    EstStrBASE03: TFloatField;
    EstStrTRBE04: TStringField;
    EstStrICME04: TFloatField;
    EstStrMLCE04: TFloatField;
    EstStrBASE04: TFloatField;
    EstStrTRBE05: TStringField;
    EstStrICME05: TFloatField;
    EstStrMLCE05: TFloatField;
    EstStrBASE05: TFloatField;
    EstStrTRBE06: TStringField;
    EstStrICME06: TFloatField;
    EstStrMLCE06: TFloatField;
    EstStrBASE06: TFloatField;
    EstStrTRBE07: TStringField;
    EstStrICME07: TFloatField;
    EstStrMLCE07: TFloatField;
    EstStrBASE07: TFloatField;
    EstStrTRBE08: TStringField;
    EstStrICME08: TFloatField;
    EstStrMLCE08: TFloatField;
    EstStrBASE08: TFloatField;
    EstStrTRBE09: TStringField;
    EstStrICME09: TFloatField;
    EstStrMLCE09: TFloatField;
    EstStrBASE09: TFloatField;
    EstStrTRBE10: TStringField;
    EstStrICME10: TFloatField;
    EstStrMLCE10: TFloatField;
    EstStrBASE10: TFloatField;
    EstStrTRBE11: TStringField;
    EstStrICME11: TFloatField;
    EstStrMLCE11: TFloatField;
    EstStrBASE11: TFloatField;
    EstStrTRBE12: TStringField;
    EstStrICME12: TFloatField;
    EstStrMLCE12: TFloatField;
    EstStrBASE12: TFloatField;
    EstStrTRBE13: TStringField;
    EstStrICME13: TFloatField;
    EstStrMLCE13: TFloatField;
    EstStrBASE13: TFloatField;
    EstStrTRBE14: TStringField;
    EstStrICME14: TFloatField;
    EstStrMLCE14: TFloatField;
    EstStrBASE14: TFloatField;
    EstStrTRBE15: TStringField;
    EstStrICME15: TFloatField;
    EstStrMLCE15: TFloatField;
    EstStrBASE15: TFloatField;
    EstStrTRBE16: TStringField;
    EstStrICME16: TFloatField;
    EstStrMLCE16: TFloatField;
    EstStrBASE16: TFloatField;
    EstStrTRBE17: TStringField;
    EstStrICME17: TFloatField;
    EstStrMLCE17: TFloatField;
    EstStrBASE17: TFloatField;
    EstStrTRBE18: TStringField;
    EstStrICME18: TFloatField;
    EstStrMLCE18: TFloatField;
    EstStrBASE18: TFloatField;
    EstStrTRBE19: TStringField;
    EstStrICME19: TFloatField;
    EstStrMLCE19: TFloatField;
    EstStrBASE19: TFloatField;
    EstStrTRBE20: TStringField;
    EstStrICME20: TFloatField;
    EstStrMLCE20: TFloatField;
    EstStrBASE20: TFloatField;
    EstStrTRBE21: TStringField;
    EstStrICME21: TFloatField;
    EstStrMLCE21: TFloatField;
    EstStrBASE21: TFloatField;
    EstStrTRBE22: TStringField;
    EstStrICME22: TFloatField;
    EstStrMLCE22: TFloatField;
    EstStrBASE22: TFloatField;
    EstStrTRBE23: TStringField;
    EstStrICME23: TFloatField;
    EstStrMLCE23: TFloatField;
    EstStrBASE23: TFloatField;
    EstStrTRBE24: TStringField;
    EstStrICME24: TFloatField;
    EstStrMLCE24: TFloatField;
    EstStrBASE24: TFloatField;
    EstStrTRBE25: TStringField;
    EstStrICME25: TFloatField;
    EstStrMLCE25: TFloatField;
    EstStrBASE25: TFloatField;
    EstStrTRBE26: TStringField;
    EstStrICME26: TFloatField;
    EstStrMLCE26: TFloatField;
    EstStrBASE26: TFloatField;
    EstStrTRBE27: TStringField;
    EstStrICME27: TFloatField;
    EstStrMLCE27: TFloatField;
    EstStrBASE27: TFloatField;
    EstStrTRBE28: TStringField;
    EstStrICME28: TFloatField;
    EstStrMLCE28: TFloatField;
    EstStrBASE28: TFloatField;
    EdIcmE17: TdxDBColorCurrencyEdit;
    EdMlce17: TdxDBColorCurrencyEdit;
    EdBase17: TdxDBColorCurrencyEdit;
    EdIcmE18: TdxDBColorCurrencyEdit;
    EdMlce18: TdxDBColorCurrencyEdit;
    EdBase18: TdxDBColorCurrencyEdit;
    EdIcmE19: TdxDBColorCurrencyEdit;
    EdIcmE20: TdxDBColorCurrencyEdit;
    EdIcmE21: TdxDBColorCurrencyEdit;
    EdMlce21: TdxDBColorCurrencyEdit;
    EdMlce20: TdxDBColorCurrencyEdit;
    EdMlce19: TdxDBColorCurrencyEdit;
    EdBase19: TdxDBColorCurrencyEdit;
    EdBase20: TdxDBColorCurrencyEdit;
    EdBase21: TdxDBColorCurrencyEdit;
    EdIcmE22: TdxDBColorCurrencyEdit;
    EdIcmE23: TdxDBColorCurrencyEdit;
    EdIcmE24: TdxDBColorCurrencyEdit;
    EdMlce24: TdxDBColorCurrencyEdit;
    EdMlce23: TdxDBColorCurrencyEdit;
    EdMlce22: TdxDBColorCurrencyEdit;
    EdBase22: TdxDBColorCurrencyEdit;
    EdBase23: TdxDBColorCurrencyEdit;
    EdBase24: TdxDBColorCurrencyEdit;
    EdIcmE25: TdxDBColorCurrencyEdit;
    EdIcmE26: TdxDBColorCurrencyEdit;
    EdIcmE27: TdxDBColorCurrencyEdit;
    EdMlce27: TdxDBColorCurrencyEdit;
    EdMlce26: TdxDBColorCurrencyEdit;
    EdMlce25: TdxDBColorCurrencyEdit;
    EdBase25: TdxDBColorCurrencyEdit;
    EdBase26: TdxDBColorCurrencyEdit;
    EdBase27: TdxDBColorCurrencyEdit;
    EdIcmE28: TdxDBColorCurrencyEdit;
    EdMlce28: TdxDBColorCurrencyEdit;
    EdBase28: TdxDBColorCurrencyEdit;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    EstStrTIPSTR: TStringField;
    quSQL3: TwwQuery;
    quSQL2: TwwQuery;
    procedure AtuaEdits;
    procedure FormCreate(Sender: TObject);
    procedure pcPag1Show(Sender: TObject);
    procedure grIcmDblClick(Sender: TObject);
    procedure bbPesquisaClick(Sender: TObject);
    procedure EstStrNewRecord(DataSet: TDataSet);
    procedure DsStrDataChange(Sender: TObject; Field: TField);
    procedure EdTrbe01Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure nvStrSalva(Sender: TObject);
    procedure EstStrBeforeDelete(DataSet: TDataSet);
  private
    {Private declarations}
  public
    {Public declarations}
    sBase, sFiltro, sOrdem : string;
  end;

var
  fmManStr: TfmManStr;

implementation

uses Bbgeral, BbMensag, ManGDB, ManPri, Fpreview;

{$R *.DFM}

procedure TfmManStr.FormCreate(Sender: TObject);
begin
  inherited;
  sBase := ' Select * From EstStr ';
end;

procedure TfmManStr.bbPesquisaClick(Sender: TObject);
begin
  inherited;

  sFiltro := '';

  {Ordem}
  case rgOrdem.ItemIndex of
       0: sOrdem := ' Order by CodStr';
       1: sOrdem := ' Order by NomStr';
       2: sOrdem := ' Order by TipStr';
  end;

  if (EdPsqTipStr.Text <> '') and (EdPsqTipStr.Text <> 'Todos') then sFiltro := ' Where TipStr = '''+EdPsqTipStr.Text+'''';

  if (EdPsqCodStr.Text <> '') then begin
     if pos('Where',sFiltro) = 0 then
        sFiltro := ' Where CodStr = '''+ EdPsqCodStr.Text +''''
     else
        sFiltro := sFiltro + ' and CodStr = '''+ EdPsqCodStr.Text +'''';
  end;

  if Rgbusca.ItemIndex = 0 then begin

     if (EdPsqNomStr.Text <> '') then begin
        if pos('Where',sFiltro) = 0 then
           sFiltro := ' Where NomStr LIKE '''+ EdPsqNomStr.Text +'%'''
        else
           sFiltro := sFiltro + ' and NomStr LIKE '''+ EdPsqNomStr.Text +'%''';
     end;

     end
  else
     begin

     if (EdPsqNomStr.Text <> '') then begin
        if pos('Where',sFiltro) = 0 then
           sFiltro := ' Where NomStr LIKE ''%' + EdPsqNomStr.Text + '%'''
        else
           sFiltro := sFiltro + ' and NomStr LIKE ''%' + EdPsqNomStr.Text + '%''';
     end;
  end;

  with EstStr,SQL do begin

       Close;
       Text := sBase + sFiltro + sOrdem;
       Open;

  end;
end;

procedure TfmManStr.DsStrDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  AtuaEdits;

  if not nvStr.Salvar then begin

     if EstStrCodStr.Value <> '' then begin

        EdCodStr.Enabled := False;
        EdTipStr.Enabled := False;

        EdCodStr.Font.Style := [fsBold];
        EdTipStr.Font.Style := [fsBold];

        end
     else
        begin

        EdCodStr.Enabled := True;
        EdTipStr.Enabled := True;

        EdCodStr.Font.Style := [];
        EdTipStr.Font.Style := [];

     end;
  end;
end;

procedure TfmManStr.pcPag1Show(Sender: TObject);
begin
  inherited;
  EdPsqCodStr.SetFocus;
end;

procedure TfmManStr.EstStrNewRecord(DataSet: TDataSet);
begin
  inherited;

  EstStr.DisableControls;

  EstStrIcmE01.Value := 0;
  EstStrIcmE02.Value := 0;
  EstStrIcmE03.Value := 0;
  EstStrIcmE04.Value := 0;
  EstStrIcmE05.Value := 0;
  EstStrIcmE06.Value := 0;
  EstStrIcmE07.Value := 0;
  EstStrIcmE08.Value := 0;
  EstStrIcmE09.Value := 0;
  EstStrIcmE10.Value := 0;
  EstStrIcmE11.Value := 0;
  EstStrIcmE12.Value := 0;
  EstStrIcmE13.Value := 0;
  EstStrIcmE14.Value := 0;
  EstStrIcmE15.Value := 0;
  EstStrIcmE16.Value := 0;
  EstStrIcmE17.Value := 0;
  EstStrIcmE18.Value := 0;
  EstStrIcmE19.Value := 0;
  EstStrIcmE20.Value := 0;
  EstStrIcmE21.Value := 0;
  EstStrIcmE22.Value := 0;
  EstStrIcmE23.Value := 0;
  EstStrIcmE24.Value := 0;
  EstStrIcmE25.Value := 0;
  EstStrIcmE26.Value := 0;
  EstStrIcmE27.Value := 0;
  EstStrIcmE28.Value := 0;
  EstStrMlcE01.Value := 0;
  EstStrMlcE02.Value := 0;
  EstStrMlcE03.Value := 0;
  EstStrMlcE04.Value := 0;
  EstStrMlcE05.Value := 0;
  EstStrMlcE06.Value := 0;
  EstStrMlcE07.Value := 0;
  EstStrMlcE08.Value := 0;
  EstStrMlcE09.Value := 0;
  EstStrMlcE10.Value := 0;
  EstStrMlcE11.Value := 0;
  EstStrMlcE12.Value := 0;
  EstStrMlcE13.Value := 0;
  EstStrMlcE14.Value := 0;
  EstStrMlcE15.Value := 0;
  EstStrMlcE16.Value := 0;
  EstStrMlcE17.Value := 0;
  EstStrMlcE18.Value := 0;
  EstStrMlcE19.Value := 0;
  EstStrMlcE20.Value := 0;
  EstStrMlcE21.Value := 0;
  EstStrMlcE22.Value := 0;
  EstStrMlcE23.Value := 0;
  EstStrMlcE24.Value := 0;
  EstStrMlcE25.Value := 0;
  EstStrMlcE26.Value := 0;
  EstStrMlcE27.Value := 0;
  EstStrMlcE28.Value := 0;
  EstStrBase01.Value := 0;
  EstStrBase02.Value := 0;
  EstStrBase03.Value := 0;
  EstStrBase04.Value := 0;
  EstStrBase05.Value := 0;
  EstStrBase06.Value := 0;
  EstStrBase07.Value := 0;
  EstStrBase08.Value := 0;
  EstStrBase09.Value := 0;
  EstStrBase10.Value := 0;
  EstStrBase11.Value := 0;
  EstStrBase12.Value := 0;
  EstStrBase13.Value := 0;
  EstStrBase14.Value := 0;
  EstStrBase15.Value := 0;
  EstStrBase16.Value := 0;
  EstStrBase17.Value := 0;
  EstStrBase18.Value := 0;
  EstStrBase19.Value := 0;
  EstStrBase20.Value := 0;
  EstStrBase21.Value := 0;
  EstStrBase22.Value := 0;
  EstStrBase23.Value := 0;
  EstStrBase24.Value := 0;
  EstStrBase25.Value := 0;
  EstStrBase26.Value := 0;
  EstStrBase27.Value := 0;
  EstStrBase28.Value := 0;
  EstStrTrbE01.Value := 'Nao';
  EstStrTrbE02.Value := 'Nao';
  EstStrTrbE03.Value := 'Nao';
  EstStrTrbE04.Value := 'Nao';
  EstStrTrbE05.Value := 'Nao';
  EstStrTrbE06.Value := 'Nao';
  EstStrTrbE07.Value := 'Nao';
  EstStrTrbE08.Value := 'Nao';
  EstStrTrbE09.Value := 'Nao';
  EstStrTrbE10.Value := 'Nao';
  EstStrTrbE11.Value := 'Nao';
  EstStrTrbE12.Value := 'Nao';
  EstStrTrbE13.Value := 'Nao';
  EstStrTrbE14.Value := 'Nao';
  EstStrTrbE15.Value := 'Nao';
  EstStrTrbE16.Value := 'Nao';
  EstStrTrbE17.Value := 'Nao';
  EstStrTrbE18.Value := 'Nao';
  EstStrTrbE19.Value := 'Nao';
  EstStrTrbE20.Value := 'Nao';
  EstStrTrbE21.Value := 'Nao';
  EstStrTrbE22.Value := 'Nao';
  EstStrTrbE23.Value := 'Nao';
  EstStrTrbE24.Value := 'Nao';
  EstStrTrbE25.Value := 'Nao';
  EstStrTrbE26.Value := 'Nao';
  EstStrTrbE27.Value := 'Nao';
  EstStrTrbE28.Value := 'Nao';
  EstStrTipStr.Value := 'Saida';

  EstStr.EnableControls;

  PcStr.ActivePage := pcPag2;

  EdCodStr.Enabled := True;
  EdTipStr.Enabled := True;

  EdCodStr.Font.Style := [];
  EdTipStr.Font.Style := [];

  EdCodStr.Setfocus;

end;

procedure TfmManStr.grIcmDblClick(Sender: TObject);
begin
  inherited;
  pcStr.ActivePage := pcPag2;
end;

procedure TfmManStr.AtuaEdits;
var
Campo : string;
i,j,r : integer;
begin
  for i := 0 to ComponentCount - 1 do begin

      if (Components[i] is TdxDBCheckEdit) then begin

         if pos('EDTRBE',UpperCase(Components[i].Name)) > 0 then begin

            j := StrToInt(copy(Components[i].Name,7,2));

            if TdxDBCheckEdit(Components[i]).Checked then begin

               for r := 0 to ComponentCount - 1 do begin

                   if (Components[r] is TdxDBCurrencyEdit) then begin

                      Campo := 'EdIcmE'+fNumZeros(IntToStr(j),2);

                      if UpperCase(Components[r].Name) = UpperCase(Campo) then begin

                         with TdxDBCurrencyEdit(Components[r]) do begin
                              Enabled := True;
                              Font.Style := [];
                         end;
                      end;
                   end;
               end;

               for r := 0 to ComponentCount - 1 do begin

                   if (Components[r] is TdxDBCurrencyEdit) then begin

                      Campo := 'EdMlce'+fNumZeros(IntToStr(j),2);

                      if UpperCase(Components[r].Name) = UpperCase(Campo) then begin

                         with TdxDBCurrencyEdit(Components[r]) do begin
                              Enabled    := True;
                              Font.Style := [];
                         end;
                      end;
                   end;
               end;

               for r := 0 to ComponentCount - 1 do begin

                   if (Components[r] is TdxDBCurrencyEdit) then begin

                      Campo := 'Edbase'+fNumZeros(IntToStr(j),2);

                      if UpperCase(Components[r].Name) = UpperCase(Campo) then begin

                         with TdxDBCurrencyEdit(Components[r]) do begin
                              Enabled    := True;
                              Font.Style := [];
                         end;
                      end;
                   end;
               end;

               end
            else
               begin

               for r := 0 to ComponentCount - 1 do begin

                   if (Components[r] is TdxDBCurrencyEdit) then begin

                      Campo := 'EdIcmE'+fNumZeros(IntToStr(j),2);

                      if UpperCase(Components[r].Name) = UpperCase(Campo) then begin

                         with TdxDBCurrencyEdit(Components[r]) do begin
                              Enabled    := False;
                              Font.Style := [fsBold];
                         end;
                      end;
                   end;
               end;

               for r := 0 to ComponentCount - 1 do begin

                   if (Components[r] is TdxDBCurrencyEdit) then begin

                      Campo := 'EdMlce'+fNumZeros(IntToStr(j),2);

                      if UpperCase(Components[r].Name) = UpperCase(Campo) then begin

                         with TdxDBCurrencyEdit(Components[r]) do begin
                              Enabled    := False;
                              Font.Style := [fsBold];
                         end;
                      end;
                   end;
               end;

               for r := 0 to ComponentCount - 1 do begin

                   if (Components[r] is TdxDBCurrencyEdit) then begin

                      Campo := 'Edbase'+fNumZeros(IntToStr(j),2);

                      if UpperCase(Components[r].Name) = UpperCase(Campo) then begin

                         with TdxDBCurrencyEdit(Components[r]) do begin
                              Enabled    := False;
                              Font.Style := [fsBold];
                         end;
                      end;
                   end;
               end;
            end;
         end;
      end;
  end;
end;

procedure TfmManStr.EdTrbe01Click(Sender: TObject);
begin
  inherited;
  AtuaEdits;
end;

procedure TfmManStr.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManStr.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManStr := Nil;
end;

procedure TfmManStr.nvStrSalva(Sender: TObject);
begin
  inherited;

  with fmManGDB.dbEmerion1 do begin

       try
          Connected := True;
       except
          Connected := False;
       end;

  end;

  with fmManGDB.dbEmerion2 do begin

       try
          Connected := True;
       except
          Connected := False;
       end;

  end;

  sleep(1000);

  try

     if fmManGDB.dbEmerion1.Connected then begin

        with quSQL2,SQL do begin

             Close;
             Text := ' Select * From EstStr Where EstStr.CodStr = '''+ EstStrCodStr.Value +''' and EstStr.TipStr = '''+ EstStrTipStr.Value +'''';
             Open;

        end;

        if Trim( quSQL2.FieldbyName('CodStr').AsString ) = '' then begin

           with quSQL2,SQL do begin

                Close;
                Text := ' Insert Into EstStr(CodStr,TipStr,NomStr,TrbE01,IcmE01,MlcE01,BasE01,TrbE02,IcmE02,MlcE02,BasE02,TrbE03,IcmE03,MlcE03,BasE03,'+
                        '                    TrbE04,IcmE04,MlcE04,BasE04,TrbE05,IcmE05,MlcE05,BasE05,TrbE06,IcmE06,MlcE06,BasE06,TrbE07,IcmE07,MlcE07,BasE07,'+
                        '                    TrbE08,IcmE08,MlcE08,BasE08,TrbE09,IcmE09,MlcE09,BasE09,TrbE10,IcmE10,MlcE10,BasE10,TrbE11,IcmE11,MlcE11,BasE11,'+
                        '                    TrbE12,IcmE12,MlcE12,BasE12,TrbE13,IcmE13,MlcE13,BasE13,TrbE14,IcmE14,MlcE14,BasE14,TrbE15,IcmE15,MlcE15,BasE15,'+
                        '                    TrbE16,IcmE16,MlcE16,BasE16,TrbE17,IcmE17,MlcE17,BasE17,TrbE18,IcmE18,MlcE18,BasE18,TrbE19,IcmE19,MlcE19,BasE19,'+
                        '                    TrbE20,IcmE20,MlcE20,BasE20,TrbE21,IcmE21,MlcE21,BasE21,TrbE22,IcmE22,MlcE22,BasE22,TrbE23,IcmE23,MlcE23,BasE23,'+
                        '                    TrbE24,IcmE24,MlcE24,BasE24,TrbE25,IcmE25,MlcE25,BasE25,TrbE26,IcmE26,MlcE26,BasE26,TrbE27,IcmE27,MlcE27,BasE27,'+
                        '                    TrbE28,IcmE28,MlcE28,BasE28)'+
                        '             Values(:CodStr,:TipStr,:NomStr,:TrbE01,:IcmE01,:MlcE01,:BasE01,:TrbE02,:IcmE02,:MlcE02,:BasE02,:TrbE03,:IcmE03,:MlcE03,:BasE03,'+
                        '                    :TrbE04,:IcmE04,:MlcE04,:BasE04,:TrbE05,:IcmE05,:MlcE05,:BasE05,:TrbE06,:IcmE06,:MlcE06,:BasE06,:TrbE07,:IcmE07,:MlcE07,:BasE07,'+
                        '                    :TrbE08,:IcmE08,:MlcE08,:BasE08,:TrbE09,:IcmE09,:MlcE09,:BasE09,:TrbE10,:IcmE10,:MlcE10,:BasE10,:TrbE11,:IcmE11,:MlcE11,:BasE11,'+
                        '                    :TrbE12,:IcmE12,:MlcE12,:BasE12,:TrbE13,:IcmE13,:MlcE13,:BasE13,:TrbE14,:IcmE14,:MlcE14,:BasE14,:TrbE15,:IcmE15,:MlcE15,:BasE15,'+
                        '                    :TrbE16,:IcmE16,:MlcE16,:BasE16,:TrbE17,:IcmE17,:MlcE17,:BasE17,:TrbE18,:IcmE18,:MlcE18,:BasE18,:TrbE19,:IcmE19,:MlcE19,:BasE19,'+
                        '                    :TrbE20,:IcmE20,:MlcE20,:BasE20,:TrbE21,:IcmE21,:MlcE21,:BasE21,:TrbE22,:IcmE22,:MlcE22,:BasE22,:TrbE23,:IcmE23,:MlcE23,:BasE23,'+
                        '                    :TrbE24,:IcmE24,:MlcE24,:BasE24,:TrbE25,:IcmE25,:MlcE25,:BasE25,:TrbE26,:IcmE26,:MlcE26,:BasE26,:TrbE27,:IcmE27,:MlcE27,:BasE27,'+
                        '                    :TrbE28,:IcmE28,:MlcE28,:BasE28)';
  
                with Params do begin

                     Params[000].AsString := EstStrCodStr.Value;
                     Params[001].AsString := EstStrTipStr.Value;
                     Params[002].AsString := EstStrNomStr.Value;

                     Params[003].AsString := EstStrTrbE01.Value;
                     Params[004].AsFloat  := EstStrIcmE01.Value;
                     Params[005].AsFloat  := EstStrMlcE01.Value;
                     Params[006].AsFloat  := EstStrBasE01.Value;

                     Params[007].AsString := EstStrTrbE02.Value;
                     Params[008].AsFloat  := EstStrIcmE02.Value;
                     Params[009].AsFloat  := EstStrMlcE02.Value;
                     Params[010].AsFloat  := EstStrBasE02.Value;

                     Params[011].AsString := EstStrTrbE03.Value;
                     Params[012].AsFloat  := EstStrIcmE03.Value;
                     Params[013].AsFloat  := EstStrMlcE03.Value;
                     Params[014].AsFloat  := EstStrBasE03.Value;

                     Params[015].AsString := EstStrTrbE04.Value;
                     Params[016].AsFloat  := EstStrIcmE04.Value;
                     Params[017].AsFloat  := EstStrMlcE04.Value;
                     Params[018].AsFloat  := EstStrBasE04.Value;

                     Params[019].AsString := EstStrTrbE05.Value;
                     Params[020].AsFloat  := EstStrIcmE05.Value;
                     Params[021].AsFloat  := EstStrMlcE05.Value;
                     Params[022].AsFloat  := EstStrBasE05.Value;

                     Params[023].AsString := EstStrTrbE06.Value;
                     Params[024].AsFloat  := EstStrIcmE06.Value;
                     Params[025].AsFloat  := EstStrMlcE06.Value;
                     Params[026].AsFloat  := EstStrBasE06.Value;

                     Params[027].AsString := EstStrTrbE07.Value;
                     Params[028].AsFloat  := EstStrIcmE07.Value;
                     Params[029].AsFloat  := EstStrMlcE07.Value;
                     Params[030].AsFloat  := EstStrBasE07.Value;

                     Params[031].AsString := EstStrTrbE08.Value;
                     Params[032].AsFloat  := EstStrIcmE08.Value;
                     Params[033].AsFloat  := EstStrMlcE08.Value;
                     Params[034].AsFloat  := EstStrBasE08.Value;

                     Params[035].AsString := EstStrTrbE09.Value;
                     Params[036].AsFloat  := EstStrIcmE09.Value;
                     Params[037].AsFloat  := EstStrMlcE09.Value;
                     Params[038].AsFloat  := EstStrBasE09.Value;

                     Params[039].AsString := EstStrTrbE10.Value;
                     Params[040].AsFloat  := EstStrIcmE10.Value;
                     Params[041].AsFloat  := EstStrMlcE10.Value;
                     Params[042].AsFloat  := EstStrBasE10.Value;

                     Params[043].AsString := EstStrTrbE11.Value;
                     Params[044].AsFloat  := EstStrIcmE11.Value;
                     Params[045].AsFloat  := EstStrMlcE11.Value;
                     Params[046].AsFloat  := EstStrBasE11.Value;

                     Params[047].AsString := EstStrTrbE12.Value;
                     Params[048].AsFloat  := EstStrIcmE12.Value;
                     Params[049].AsFloat  := EstStrMlcE12.Value;
                     Params[050].AsFloat  := EstStrBasE12.Value;

                     Params[051].AsString := EstStrTrbE13.Value;
                     Params[052].AsFloat  := EstStrIcmE13.Value;
                     Params[053].AsFloat  := EstStrMlcE13.Value;
                     Params[054].AsFloat  := EstStrBasE13.Value;

                     Params[055].AsString := EstStrTrbE14.Value;
                     Params[056].AsFloat  := EstStrIcmE14.Value;
                     Params[057].AsFloat  := EstStrMlcE14.Value;
                     Params[058].AsFloat  := EstStrBasE14.Value;

                     Params[059].AsString := EstStrTrbE15.Value;
                     Params[060].AsFloat  := EstStrIcmE15.Value;
                     Params[061].AsFloat  := EstStrMlcE15.Value;
                     Params[062].AsFloat  := EstStrBasE15.Value;

                     Params[063].AsString := EstStrTrbE16.Value;
                     Params[064].AsFloat  := EstStrIcmE16.Value;
                     Params[065].AsFloat  := EstStrMlcE16.Value;
                     Params[066].AsFloat  := EstStrBasE16.Value;

                     Params[067].AsString := EstStrTrbE17.Value;
                     Params[068].AsFloat  := EstStrIcmE17.Value;
                     Params[069].AsFloat  := EstStrMlcE17.Value;
                     Params[070].AsFloat  := EstStrBasE17.Value;

                     Params[071].AsString := EstStrTrbE18.Value;
                     Params[072].AsFloat  := EstStrIcmE18.Value;
                     Params[073].AsFloat  := EstStrMlcE18.Value;
                     Params[074].AsFloat  := EstStrBasE18.Value;

                     Params[075].AsString := EstStrTrbE19.Value;
                     Params[076].AsFloat  := EstStrIcmE19.Value;
                     Params[077].AsFloat  := EstStrMlcE19.Value;
                     Params[078].AsFloat  := EstStrBasE19.Value;

                     Params[079].AsString := EstStrTrbE20.Value;
                     Params[080].AsFloat  := EstStrIcmE20.Value;
                     Params[081].AsFloat  := EstStrMlcE20.Value;
                     Params[082].AsFloat  := EstStrBasE20.Value;

                     Params[083].AsString := EstStrTrbE21.Value;
                     Params[084].AsFloat  := EstStrIcmE21.Value;
                     Params[085].AsFloat  := EstStrMlcE21.Value;
                     Params[086].AsFloat  := EstStrBasE21.Value;

                     Params[087].AsString := EstStrTrbE22.Value;
                     Params[088].AsFloat  := EstStrIcmE22.Value;
                     Params[089].AsFloat  := EstStrMlcE22.Value;
                     Params[090].AsFloat  := EstStrBasE22.Value;

                     Params[091].AsString := EstStrTrbE23.Value;
                     Params[092].AsFloat  := EstStrIcmE23.Value;
                     Params[093].AsFloat  := EstStrMlcE23.Value;
                     Params[094].AsFloat  := EstStrBasE23.Value;

                     Params[095].AsString := EstStrTrbE24.Value;
                     Params[096].AsFloat  := EstStrIcmE24.Value;
                     Params[097].AsFloat  := EstStrMlcE24.Value;
                     Params[098].AsFloat  := EstStrBasE24.Value;

                     Params[099].AsString := EstStrTrbE25.Value;
                     Params[100].AsFloat  := EstStrIcmE25.Value;
                     Params[101].AsFloat  := EstStrMlcE25.Value;
                     Params[102].AsFloat  := EstStrBasE25.Value;

                     Params[103].AsString := EstStrTrbE26.Value;
                     Params[104].AsFloat  := EstStrIcmE26.Value;
                     Params[105].AsFloat  := EstStrMlcE26.Value;
                     Params[106].AsFloat  := EstStrBasE26.Value;

                     Params[107].AsString := EstStrTrbE27.Value;
                     Params[108].AsFloat  := EstStrIcmE27.Value;
                     Params[109].AsFloat  := EstStrMlcE27.Value;
                     Params[110].AsFloat  := EstStrBasE27.Value;

                     Params[111].AsString := EstStrTrbE28.Value;
                     Params[112].AsFloat  := EstStrIcmE28.Value;
                     Params[113].AsFloat  := EstStrMlcE28.Value;
                     Params[114].AsFloat  := EstStrBasE28.Value;

                end;

                ExecSQL;

           end;

           end
        else
           begin

           if ( EstStrNomStr.Value <> quSQL2.FieldbyName('NomStr').AsString ) or
              ( EstStrTrbE01.Value <> quSQL2.FieldbyName('TrbE01').AsString ) or
              ( EstStrIcmE01.Value <> quSQL2.FieldbyName('IcmE01').AsFloat  ) or
              ( EstStrMlcE01.Value <> quSQL2.FieldbyName('MlcE01').AsFloat  ) or
              ( EstStrBasE01.Value <> quSQL2.FieldbyName('BasE01').AsFloat  ) or

              ( EstStrTrbE02.Value <> quSQL2.FieldbyName('TrbE02').AsString ) or
              ( EstStrIcmE02.Value <> quSQL2.FieldbyName('IcmE02').AsFloat  ) or
              ( EstStrMlcE02.Value <> quSQL2.FieldbyName('MlcE02').AsFloat  ) or
              ( EstStrBasE02.Value <> quSQL2.FieldbyName('BasE02').AsFloat  ) or

              ( EstStrTrbE03.Value <> quSQL2.FieldbyName('TrbE03').AsString ) or
              ( EstStrIcmE03.Value <> quSQL2.FieldbyName('IcmE03').AsFloat  ) or
              ( EstStrMlcE03.Value <> quSQL2.FieldbyName('MlcE03').AsFloat  ) or
              ( EstStrBasE03.Value <> quSQL2.FieldbyName('BasE03').AsFloat  ) or

              ( EstStrTrbE04.Value <> quSQL2.FieldbyName('TrbE04').AsString ) or
              ( EstStrIcmE04.Value <> quSQL2.FieldbyName('IcmE04').AsFloat  ) or
              ( EstStrMlcE04.Value <> quSQL2.FieldbyName('MlcE04').AsFloat  ) or
              ( EstStrBasE04.Value <> quSQL2.FieldbyName('BasE04').AsFloat  ) or

              ( EstStrTrbE05.Value <> quSQL2.FieldbyName('TrbE05').AsString ) or
              ( EstStrIcmE05.Value <> quSQL2.FieldbyName('IcmE05').AsFloat  ) or
              ( EstStrMlcE05.Value <> quSQL2.FieldbyName('MlcE05').AsFloat  ) or
              ( EstStrBasE05.Value <> quSQL2.FieldbyName('BasE05').AsFloat  ) or

              ( EstStrTrbE06.Value <> quSQL2.FieldbyName('TrbE06').AsString ) or
              ( EstStrIcmE06.Value <> quSQL2.FieldbyName('IcmE06').AsFloat  ) or
              ( EstStrMlcE06.Value <> quSQL2.FieldbyName('MlcE06').AsFloat  ) or
              ( EstStrBasE06.Value <> quSQL2.FieldbyName('BasE06').AsFloat  ) or

              ( EstStrTrbE07.Value <> quSQL2.FieldbyName('TrbE07').AsString ) or
              ( EstStrIcmE07.Value <> quSQL2.FieldbyName('IcmE07').AsFloat  ) or
              ( EstStrMlcE07.Value <> quSQL2.FieldbyName('MlcE07').AsFloat  ) or
              ( EstStrBasE07.Value <> quSQL2.FieldbyName('BasE07').AsFloat  ) or

              ( EstStrTrbE08.Value <> quSQL2.FieldbyName('TrbE08').AsString ) or
              ( EstStrIcmE08.Value <> quSQL2.FieldbyName('IcmE08').AsFloat  ) or
              ( EstStrMlcE08.Value <> quSQL2.FieldbyName('MlcE08').AsFloat  ) or
              ( EstStrBasE08.Value <> quSQL2.FieldbyName('BasE08').AsFloat  ) or

              ( EstStrTrbE09.Value <> quSQL2.FieldbyName('TrbE09').AsString ) or
              ( EstStrIcmE09.Value <> quSQL2.FieldbyName('IcmE09').AsFloat  ) or
              ( EstStrMlcE09.Value <> quSQL2.FieldbyName('MlcE09').AsFloat  ) or
              ( EstStrBasE09.Value <> quSQL2.FieldbyName('BasE09').AsFloat  ) or

              ( EstStrTrbE10.Value <> quSQL2.FieldbyName('TrbE10').AsString ) or
              ( EstStrIcmE10.Value <> quSQL2.FieldbyName('IcmE10').AsFloat  ) or
              ( EstStrMlcE10.Value <> quSQL2.FieldbyName('MlcE10').AsFloat  ) or
              ( EstStrBasE10.Value <> quSQL2.FieldbyName('BasE10').AsFloat  ) or

              ( EstStrTrbE11.Value <> quSQL2.FieldbyName('TrbE11').AsString ) or
              ( EstStrIcmE11.Value <> quSQL2.FieldbyName('IcmE11').AsFloat  ) or
              ( EstStrMlcE11.Value <> quSQL2.FieldbyName('MlcE11').AsFloat  ) or
              ( EstStrBasE11.Value <> quSQL2.FieldbyName('BasE11').AsFloat  ) or

              ( EstStrTrbE12.Value <> quSQL2.FieldbyName('TrbE12').AsString ) or
              ( EstStrIcmE12.Value <> quSQL2.FieldbyName('IcmE12').AsFloat  ) or
              ( EstStrMlcE12.Value <> quSQL2.FieldbyName('MlcE12').AsFloat  ) or
              ( EstStrBasE12.Value <> quSQL2.FieldbyName('BasE12').AsFloat  ) or

              ( EstStrTrbE13.Value <> quSQL2.FieldbyName('TrbE13').AsString ) or
              ( EstStrIcmE13.Value <> quSQL2.FieldbyName('IcmE13').AsFloat  ) or
              ( EstStrMlcE13.Value <> quSQL2.FieldbyName('MlcE13').AsFloat  ) or
              ( EstStrBasE13.Value <> quSQL2.FieldbyName('BasE13').AsFloat  ) or

              ( EstStrTrbE14.Value <> quSQL2.FieldbyName('TrbE14').AsString ) or
              ( EstStrIcmE14.Value <> quSQL2.FieldbyName('IcmE14').AsFloat  ) or
              ( EstStrMlcE14.Value <> quSQL2.FieldbyName('MlcE14').AsFloat  ) or
              ( EstStrBasE14.Value <> quSQL2.FieldbyName('BasE14').AsFloat  ) or

              ( EstStrTrbE15.Value <> quSQL2.FieldbyName('TrbE15').AsString ) or
              ( EstStrIcmE15.Value <> quSQL2.FieldbyName('IcmE15').AsFloat  ) or
              ( EstStrMlcE15.Value <> quSQL2.FieldbyName('MlcE15').AsFloat  ) or
              ( EstStrBasE15.Value <> quSQL2.FieldbyName('BasE15').AsFloat  ) or

              ( EstStrTrbE16.Value <> quSQL2.FieldbyName('TrbE16').AsString ) or
              ( EstStrIcmE16.Value <> quSQL2.FieldbyName('IcmE16').AsFloat  ) or
              ( EstStrMlcE16.Value <> quSQL2.FieldbyName('MlcE16').AsFloat  ) or
              ( EstStrBasE16.Value <> quSQL2.FieldbyName('BasE16').AsFloat  ) or

              ( EstStrTrbE17.Value <> quSQL2.FieldbyName('TrbE17').AsString ) or
              ( EstStrIcmE17.Value <> quSQL2.FieldbyName('IcmE17').AsFloat  ) or
              ( EstStrMlcE17.Value <> quSQL2.FieldbyName('MlcE17').AsFloat  ) or
              ( EstStrBasE17.Value <> quSQL2.FieldbyName('BasE17').AsFloat  ) or

              ( EstStrTrbE18.Value <> quSQL2.FieldbyName('TrbE18').AsString ) or
              ( EstStrIcmE18.Value <> quSQL2.FieldbyName('IcmE18').AsFloat  ) or
              ( EstStrMlcE18.Value <> quSQL2.FieldbyName('MlcE18').AsFloat  ) or
              ( EstStrBasE18.Value <> quSQL2.FieldbyName('BasE18').AsFloat  ) or

              ( EstStrTrbE19.Value <> quSQL2.FieldbyName('TrbE19').AsString ) or
              ( EstStrIcmE19.Value <> quSQL2.FieldbyName('IcmE19').AsFloat  ) or
              ( EstStrMlcE19.Value <> quSQL2.FieldbyName('MlcE19').AsFloat  ) or
              ( EstStrBasE19.Value <> quSQL2.FieldbyName('BasE19').AsFloat  ) or

              ( EstStrTrbE20.Value <> quSQL2.FieldbyName('TrbE20').AsString ) or
              ( EstStrIcmE20.Value <> quSQL2.FieldbyName('IcmE20').AsFloat  ) or
              ( EstStrMlcE20.Value <> quSQL2.FieldbyName('MlcE20').AsFloat  ) or
              ( EstStrBasE20.Value <> quSQL2.FieldbyName('BasE20').AsFloat  ) or

              ( EstStrTrbE21.Value <> quSQL2.FieldbyName('TrbE21').AsString ) or
              ( EstStrIcmE21.Value <> quSQL2.FieldbyName('IcmE21').AsFloat  ) or
              ( EstStrMlcE21.Value <> quSQL2.FieldbyName('MlcE21').AsFloat  ) or
              ( EstStrBasE21.Value <> quSQL2.FieldbyName('BasE21').AsFloat  ) or

              ( EstStrTrbE22.Value <> quSQL2.FieldbyName('TrbE22').AsString ) or
              ( EstStrIcmE22.Value <> quSQL2.FieldbyName('IcmE22').AsFloat  ) or
              ( EstStrMlcE22.Value <> quSQL2.FieldbyName('MlcE22').AsFloat  ) or
              ( EstStrBasE22.Value <> quSQL2.FieldbyName('BasE22').AsFloat  ) or

              ( EstStrTrbE23.Value <> quSQL2.FieldbyName('TrbE23').AsString ) or
              ( EstStrIcmE23.Value <> quSQL2.FieldbyName('IcmE23').AsFloat  ) or
              ( EstStrMlcE23.Value <> quSQL2.FieldbyName('MlcE23').AsFloat  ) or
              ( EstStrBasE23.Value <> quSQL2.FieldbyName('BasE23').AsFloat  ) or

              ( EstStrTrbE24.Value <> quSQL2.FieldbyName('TrbE24').AsString ) or
              ( EstStrIcmE24.Value <> quSQL2.FieldbyName('IcmE24').AsFloat  ) or
              ( EstStrMlcE24.Value <> quSQL2.FieldbyName('MlcE24').AsFloat  ) or
              ( EstStrBasE24.Value <> quSQL2.FieldbyName('BasE24').AsFloat  ) or

              ( EstStrTrbE25.Value <> quSQL2.FieldbyName('TrbE25').AsString ) or
              ( EstStrIcmE25.Value <> quSQL2.FieldbyName('IcmE25').AsFloat  ) or
              ( EstStrMlcE25.Value <> quSQL2.FieldbyName('MlcE25').AsFloat  ) or
              ( EstStrBasE25.Value <> quSQL2.FieldbyName('BasE25').AsFloat  ) or

              ( EstStrTrbE26.Value <> quSQL2.FieldbyName('TrbE26').AsString ) or
              ( EstStrIcmE26.Value <> quSQL2.FieldbyName('IcmE26').AsFloat  ) or
              ( EstStrMlcE26.Value <> quSQL2.FieldbyName('MlcE26').AsFloat  ) or
              ( EstStrBasE26.Value <> quSQL2.FieldbyName('BasE26').AsFloat  ) or

              ( EstStrTrbE27.Value <> quSQL2.FieldbyName('TrbE27').AsString ) or
              ( EstStrIcmE27.Value <> quSQL2.FieldbyName('IcmE27').AsFloat  ) or
              ( EstStrMlcE27.Value <> quSQL2.FieldbyName('MlcE27').AsFloat  ) or
              ( EstStrBasE27.Value <> quSQL2.FieldbyName('BasE27').AsFloat  ) or

              ( EstStrTrbE28.Value <> quSQL2.FieldbyName('TrbE28').AsString ) or
              ( EstStrIcmE28.Value <> quSQL2.FieldbyName('IcmE28').AsFloat  ) or
              ( EstStrMlcE28.Value <> quSQL2.FieldbyName('MlcE28').AsFloat  ) or
              ( EstStrBasE28.Value <> quSQL2.FieldbyName('BasE28').AsFloat  ) then begin

              with quSQL2,SQL do begin

                   Close;
                   Text := ' Update EstStr Set NomStr = :NomStr,'+
                           '                   TrbE01 = :TrbE01,'+
                           '                   IcmE01 = :IcmE01,'+
                           '                   MlcE01 = :MlcE01,'+
                           '                   BasE01 = :BasE01,'+
                           '                   TrbE02 = :TrbE02,'+
                           '                   IcmE02 = :IcmE02,'+
                           '                   MlcE02 = :MlcE02,'+
                           '                   BasE02 = :BasE02,'+
                           '                   TrbE03 = :TrbE03,'+
                           '                   IcmE03 = :IcmE03,'+
                           '                   MlcE03 = :MlcE03,'+
                           '                   BasE03 = :BasE03,'+
                           '                   TrbE04 = :TrbE04,'+
                           '                   IcmE04 = :IcmE04,'+
                           '                   MlcE04 = :MlcE04,'+
                           '                   BasE04 = :BasE04,'+
                           '                   TrbE05 = :TrbE05,'+
                           '                   IcmE05 = :IcmE05,'+
                           '                   MlcE05 = :MlcE05,'+
                           '                   BasE05 = :BasE05,'+
                           '                   TrbE06 = :TrbE06,'+
                           '                   IcmE06 = :IcmE06,'+
                           '                   MlcE06 = :MlcE06,'+
                           '                   BasE06 = :BasE06,'+
                           '                   TrbE07 = :TrbE07,'+
                           '                   IcmE07 = :IcmE07,'+
                           '                   MlcE07 = :MlcE07,'+
                           '                   BasE07 = :BasE07,'+
                           '                   TrbE08 = :TrbE08,'+
                           '                   IcmE08 = :IcmE08,'+
                           '                   MlcE08 = :MlcE08,'+
                           '                   BasE08 = :BasE08,'+
                           '                   TrbE09 = :TrbE09,'+
                           '                   IcmE09 = :IcmE09,'+
                           '                   MlcE09 = :MlcE09,'+
                           '                   BasE09 = :BasE09,'+
                           '                   TrbE10 = :TrbE10,'+
                           '                   IcmE10 = :IcmE10,'+
                           '                   MlcE10 = :MlcE10,'+
                           '                   BasE10 = :BasE10,'+
                           '                   TrbE11 = :TrbE11,'+
                           '                   IcmE11 = :IcmE11,'+
                           '                   MlcE11 = :MlcE11,'+
                           '                   BasE11 = :BasE11,'+
                           '                   TrbE12 = :TrbE12,'+
                           '                   IcmE12 = :IcmE12,'+
                           '                   MlcE12 = :MlcE12,'+
                           '                   BasE12 = :BasE12,'+
                           '                   TrbE13 = :TrbE13,'+
                           '                   IcmE13 = :IcmE13,'+
                           '                   MlcE13 = :MlcE13,'+
                           '                   BasE13 = :BasE13,'+
                           '                   TrbE14 = :TrbE14,'+
                           '                   IcmE14 = :IcmE14,'+
                           '                   MlcE14 = :MlcE14,'+
                           '                   BasE14 = :BasE14,'+
                           '                   TrbE15 = :TrbE15,'+
                           '                   IcmE15 = :IcmE15,'+
                           '                   MlcE15 = :MlcE15,'+
                           '                   BasE15 = :BasE15,'+
                           '                   TrbE16 = :TrbE16,'+
                           '                   IcmE16 = :IcmE16,'+
                           '                   MlcE16 = :MlcE16,'+
                           '                   BasE16 = :BasE16,'+
                           '                   TrbE17 = :TrbE17,'+
                           '                   IcmE17 = :IcmE17,'+
                           '                   MlcE17 = :MlcE17,'+
                           '                   BasE17 = :BasE17,'+
                           '                   TrbE18 = :TrbE18,'+
                           '                   IcmE18 = :IcmE18,'+
                           '                   MlcE18 = :MlcE18,'+
                           '                   BasE18 = :BasE18,'+
                           '                   TrbE19 = :TrbE19,'+
                           '                   IcmE19 = :IcmE19,'+
                           '                   MlcE19 = :MlcE19,'+
                           '                   BasE19 = :BasE19,'+
                           '                   TrbE20 = :TrbE20,'+
                           '                   IcmE20 = :IcmE20,'+
                           '                   MlcE20 = :MlcE20,'+
                           '                   BasE20 = :BasE20,'+
                           '                   TrbE21 = :TrbE21,'+
                           '                   IcmE21 = :IcmE21,'+
                           '                   MlcE21 = :MlcE21,'+
                           '                   BasE21 = :BasE21,'+
                           '                   TrbE22 = :TrbE22,'+
                           '                   IcmE22 = :IcmE22,'+
                           '                   MlcE22 = :MlcE22,'+
                           '                   BasE22 = :BasE22,'+
                           '                   TrbE23 = :TrbE23,'+
                           '                   IcmE23 = :IcmE23,'+
                           '                   MlcE23 = :MlcE23,'+
                           '                   BasE23 = :BasE23,'+
                           '                   TrbE24 = :TrbE24,'+
                           '                   IcmE24 = :IcmE24,'+
                           '                   MlcE24 = :MlcE24,'+
                           '                   BasE24 = :BasE24,'+
                           '                   TrbE25 = :TrbE25,'+
                           '                   IcmE25 = :IcmE25,'+
                           '                   MlcE25 = :MlcE25,'+
                           '                   BasE25 = :BasE25,'+
                           '                   TrbE26 = :TrbE26,'+
                           '                   IcmE26 = :IcmE26,'+
                           '                   MlcE26 = :MlcE26,'+
                           '                   BasE26 = :BasE26,'+
                           '                   TrbE27 = :TrbE27,'+
                           '                   IcmE27 = :IcmE27,'+
                           '                   MlcE27 = :MlcE27,'+
                           '                   BasE27 = :BasE27,'+
                           '                   TrbE28 = :TrbE28,'+
                           '                   IcmE28 = :IcmE28,'+
                           '                   MlcE28 = :MlcE28,'+
                           '                   BasE28 = :BasE28'+
                           ' Where EstStr.CodStr = :CodStr '+
                           '   and EstStr.TipStr = :TipStr ';



                with Params do begin

                     Params[000].AsString := EstStrNomStr.Value;

                     Params[001].AsString := EstStrTrbE01.Value;
                     Params[002].AsFloat  := EstStrIcmE01.Value;
                     Params[003].AsFloat  := EstStrMlcE01.Value;
                     Params[004].AsFloat  := EstStrBasE01.Value;

                     Params[005].AsString := EstStrTrbE02.Value;
                     Params[006].AsFloat  := EstStrIcmE02.Value;
                     Params[007].AsFloat  := EstStrMlcE02.Value;
                     Params[008].AsFloat  := EstStrBasE02.Value;

                     Params[009].AsString := EstStrTrbE03.Value;
                     Params[010].AsFloat  := EstStrIcmE03.Value;
                     Params[011].AsFloat  := EstStrMlcE03.Value;
                     Params[012].AsFloat  := EstStrBasE03.Value;

                     Params[013].AsString := EstStrTrbE04.Value;
                     Params[014].AsFloat  := EstStrIcmE04.Value;
                     Params[015].AsFloat  := EstStrMlcE04.Value;
                     Params[016].AsFloat  := EstStrBasE04.Value;

                     Params[017].AsString := EstStrTrbE05.Value;
                     Params[018].AsFloat  := EstStrIcmE05.Value;
                     Params[019].AsFloat  := EstStrMlcE05.Value;
                     Params[020].AsFloat  := EstStrBasE05.Value;

                     Params[021].AsString := EstStrTrbE06.Value;
                     Params[022].AsFloat  := EstStrIcmE06.Value;
                     Params[023].AsFloat  := EstStrMlcE06.Value;
                     Params[024].AsFloat  := EstStrBasE06.Value;

                     Params[025].AsString := EstStrTrbE07.Value;
                     Params[026].AsFloat  := EstStrIcmE07.Value;
                     Params[027].AsFloat  := EstStrMlcE07.Value;
                     Params[028].AsFloat  := EstStrBasE07.Value;

                     Params[029].AsString := EstStrTrbE08.Value;
                     Params[030].AsFloat  := EstStrIcmE08.Value;
                     Params[031].AsFloat  := EstStrMlcE08.Value;
                     Params[032].AsFloat  := EstStrBasE08.Value;

                     Params[033].AsString := EstStrTrbE09.Value;
                     Params[034].AsFloat  := EstStrIcmE09.Value;
                     Params[035].AsFloat  := EstStrMlcE09.Value;
                     Params[036].AsFloat  := EstStrBasE09.Value;

                     Params[037].AsString := EstStrTrbE10.Value;
                     Params[038].AsFloat  := EstStrIcmE10.Value;
                     Params[039].AsFloat  := EstStrMlcE10.Value;
                     Params[040].AsFloat  := EstStrBasE10.Value;

                     Params[041].AsString := EstStrTrbE11.Value;
                     Params[042].AsFloat  := EstStrIcmE11.Value;
                     Params[043].AsFloat  := EstStrMlcE11.Value;
                     Params[044].AsFloat  := EstStrBasE11.Value;

                     Params[045].AsString := EstStrTrbE12.Value;
                     Params[046].AsFloat  := EstStrIcmE12.Value;
                     Params[047].AsFloat  := EstStrMlcE12.Value;
                     Params[048].AsFloat  := EstStrBasE12.Value;

                     Params[049].AsString := EstStrTrbE13.Value;
                     Params[050].AsFloat  := EstStrIcmE13.Value;
                     Params[051].AsFloat  := EstStrMlcE13.Value;
                     Params[052].AsFloat  := EstStrBasE13.Value;

                     Params[053].AsString := EstStrTrbE14.Value;
                     Params[054].AsFloat  := EstStrIcmE14.Value;
                     Params[055].AsFloat  := EstStrMlcE14.Value;
                     Params[056].AsFloat  := EstStrBasE14.Value;

                     Params[057].AsString := EstStrTrbE15.Value;
                     Params[058].AsFloat  := EstStrIcmE15.Value;
                     Params[059].AsFloat  := EstStrMlcE15.Value;
                     Params[060].AsFloat  := EstStrBasE15.Value;

                     Params[061].AsString := EstStrTrbE16.Value;
                     Params[062].AsFloat  := EstStrIcmE16.Value;
                     Params[063].AsFloat  := EstStrMlcE16.Value;
                     Params[064].AsFloat  := EstStrBasE16.Value;

                     Params[065].AsString := EstStrTrbE17.Value;
                     Params[066].AsFloat  := EstStrIcmE17.Value;
                     Params[067].AsFloat  := EstStrMlcE17.Value;
                     Params[068].AsFloat  := EstStrBasE17.Value;

                     Params[069].AsString := EstStrTrbE18.Value;
                     Params[070].AsFloat  := EstStrIcmE18.Value;
                     Params[071].AsFloat  := EstStrMlcE18.Value;
                     Params[072].AsFloat  := EstStrBasE18.Value;

                     Params[073].AsString := EstStrTrbE19.Value;
                     Params[074].AsFloat  := EstStrIcmE19.Value;
                     Params[075].AsFloat  := EstStrMlcE19.Value;
                     Params[076].AsFloat  := EstStrBasE19.Value;

                     Params[077].AsString := EstStrTrbE20.Value;
                     Params[078].AsFloat  := EstStrIcmE20.Value;
                     Params[079].AsFloat  := EstStrMlcE20.Value;
                     Params[080].AsFloat  := EstStrBasE20.Value;

                     Params[081].AsString := EstStrTrbE21.Value;
                     Params[082].AsFloat  := EstStrIcmE21.Value;
                     Params[083].AsFloat  := EstStrMlcE21.Value;
                     Params[084].AsFloat  := EstStrBasE21.Value;

                     Params[085].AsString := EstStrTrbE22.Value;
                     Params[086].AsFloat  := EstStrIcmE22.Value;
                     Params[087].AsFloat  := EstStrMlcE22.Value;
                     Params[088].AsFloat  := EstStrBasE22.Value;

                     Params[089].AsString := EstStrTrbE23.Value;
                     Params[090].AsFloat  := EstStrIcmE23.Value;
                     Params[091].AsFloat  := EstStrMlcE23.Value;
                     Params[092].AsFloat  := EstStrBasE23.Value;

                     Params[093].AsString := EstStrTrbE24.Value;
                     Params[094].AsFloat  := EstStrIcmE24.Value;
                     Params[095].AsFloat  := EstStrMlcE24.Value;
                     Params[096].AsFloat  := EstStrBasE24.Value;

                     Params[097].AsString := EstStrTrbE25.Value;
                     Params[098].AsFloat  := EstStrIcmE25.Value;
                     Params[099].AsFloat  := EstStrMlcE25.Value;
                     Params[100].AsFloat  := EstStrBasE25.Value;

                     Params[101].AsString := EstStrTrbE26.Value;
                     Params[102].AsFloat  := EstStrIcmE26.Value;
                     Params[103].AsFloat  := EstStrMlcE26.Value;
                     Params[104].AsFloat  := EstStrBasE26.Value;

                     Params[105].AsString := EstStrTrbE27.Value;
                     Params[106].AsFloat  := EstStrIcmE27.Value;
                     Params[107].AsFloat  := EstStrMlcE27.Value;
                     Params[108].AsFloat  := EstStrBasE27.Value;

                     Params[109].AsString := EstStrTrbE28.Value;
                     Params[110].AsFloat  := EstStrIcmE28.Value;
                     Params[111].AsFloat  := EstStrMlcE28.Value;
                     Params[112].AsFloat  := EstStrBasE28.Value;

                     Params[113].AsString := EstStrCodStr.Value;
                     Params[114].AsString := EstStrTipStr.Value;
                  
                end;

                ExecSQL;
             
              end;
           end;
        end;        
     end;

     if fmManGDB.dbEmerion2.Connected then begin

        with quSQL3,SQL do begin

             Close;
             Text := ' Select * From EstStr Where EstStr.CodStr = '''+ EstStrCodStr.Value +''' and EstStr.TipStr = '''+ EstStrTipStr.Value +'''';
             Open;

        end;

        if Trim( quSQL3.FieldbyName('CodStr').AsString ) = '' then begin

           with quSQL3,SQL do begin

                Close;
                Text := ' Insert Into EstStr(CodStr,TipStr,NomStr,TrbE01,IcmE01,MlcE01,BasE01,TrbE02,IcmE02,MlcE02,BasE02,TrbE03,IcmE03,MlcE03,BasE03,'+
                        '                    TrbE04,IcmE04,MlcE04,BasE04,TrbE05,IcmE05,MlcE05,BasE05,TrbE06,IcmE06,MlcE06,BasE06,TrbE07,IcmE07,MlcE07,BasE07,'+
                        '                    TrbE08,IcmE08,MlcE08,BasE08,TrbE09,IcmE09,MlcE09,BasE09,TrbE10,IcmE10,MlcE10,BasE10,TrbE11,IcmE11,MlcE11,BasE11,'+
                        '                    TrbE12,IcmE12,MlcE12,BasE12,TrbE13,IcmE13,MlcE13,BasE13,TrbE14,IcmE14,MlcE14,BasE14,TrbE15,IcmE15,MlcE15,BasE15,'+
                        '                    TrbE16,IcmE16,MlcE16,BasE16,TrbE17,IcmE17,MlcE17,BasE17,TrbE18,IcmE18,MlcE18,BasE18,TrbE19,IcmE19,MlcE19,BasE19,'+
                        '                    TrbE20,IcmE20,MlcE20,BasE20,TrbE21,IcmE21,MlcE21,BasE21,TrbE22,IcmE22,MlcE22,BasE22,TrbE23,IcmE23,MlcE23,BasE23,'+
                        '                    TrbE24,IcmE24,MlcE24,BasE24,TrbE25,IcmE25,MlcE25,BasE25,TrbE26,IcmE26,MlcE26,BasE26,TrbE27,IcmE27,MlcE27,BasE27,'+
                        '                    TrbE28,IcmE28,MlcE28,BasE28)'+
                        '             Values(:CodStr,:TipStr,:NomStr,:TrbE01,:IcmE01,:MlcE01,:BasE01,:TrbE02,:IcmE02,:MlcE02,:BasE02,:TrbE03,:IcmE03,:MlcE03,:BasE03,'+
                        '                    :TrbE04,:IcmE04,:MlcE04,:BasE04,:TrbE05,:IcmE05,:MlcE05,:BasE05,:TrbE06,:IcmE06,:MlcE06,:BasE06,:TrbE07,:IcmE07,:MlcE07,:BasE07,'+
                        '                    :TrbE08,:IcmE08,:MlcE08,:BasE08,:TrbE09,:IcmE09,:MlcE09,:BasE09,:TrbE10,:IcmE10,:MlcE10,:BasE10,:TrbE11,:IcmE11,:MlcE11,:BasE11,'+
                        '                    :TrbE12,:IcmE12,:MlcE12,:BasE12,:TrbE13,:IcmE13,:MlcE13,:BasE13,:TrbE14,:IcmE14,:MlcE14,:BasE14,:TrbE15,:IcmE15,:MlcE15,:BasE15,'+
                        '                    :TrbE16,:IcmE16,:MlcE16,:BasE16,:TrbE17,:IcmE17,:MlcE17,:BasE17,:TrbE18,:IcmE18,:MlcE18,:BasE18,:TrbE19,:IcmE19,:MlcE19,:BasE19,'+
                        '                    :TrbE20,:IcmE20,:MlcE20,:BasE20,:TrbE21,:IcmE21,:MlcE21,:BasE21,:TrbE22,:IcmE22,:MlcE22,:BasE22,:TrbE23,:IcmE23,:MlcE23,:BasE23,'+
                        '                    :TrbE24,:IcmE24,:MlcE24,:BasE24,:TrbE25,:IcmE25,:MlcE25,:BasE25,:TrbE26,:IcmE26,:MlcE26,:BasE26,:TrbE27,:IcmE27,:MlcE27,:BasE27,'+
                        '                    :TrbE28,:IcmE28,:MlcE28,:BasE28)';
  
                with Params do begin

                     Params[000].AsString := EstStrCodStr.Value;
                     Params[001].AsString := EstStrTipStr.Value;
                     Params[002].AsString := EstStrNomStr.Value;

                     Params[003].AsString := EstStrTrbE01.Value;
                     Params[004].AsFloat  := EstStrIcmE01.Value;
                     Params[005].AsFloat  := EstStrMlcE01.Value;
                     Params[006].AsFloat  := EstStrBasE01.Value;

                     Params[007].AsString := EstStrTrbE02.Value;
                     Params[008].AsFloat  := EstStrIcmE02.Value;
                     Params[009].AsFloat  := EstStrMlcE02.Value;
                     Params[010].AsFloat  := EstStrBasE02.Value;

                     Params[011].AsString := EstStrTrbE03.Value;
                     Params[012].AsFloat  := EstStrIcmE03.Value;
                     Params[013].AsFloat  := EstStrMlcE03.Value;
                     Params[014].AsFloat  := EstStrBasE03.Value;

                     Params[015].AsString := EstStrTrbE04.Value;
                     Params[016].AsFloat  := EstStrIcmE04.Value;
                     Params[017].AsFloat  := EstStrMlcE04.Value;
                     Params[018].AsFloat  := EstStrBasE04.Value;

                     Params[019].AsString := EstStrTrbE05.Value;
                     Params[020].AsFloat  := EstStrIcmE05.Value;
                     Params[021].AsFloat  := EstStrMlcE05.Value;
                     Params[022].AsFloat  := EstStrBasE05.Value;

                     Params[023].AsString := EstStrTrbE06.Value;
                     Params[024].AsFloat  := EstStrIcmE06.Value;
                     Params[025].AsFloat  := EstStrMlcE06.Value;
                     Params[026].AsFloat  := EstStrBasE06.Value;

                     Params[027].AsString := EstStrTrbE07.Value;
                     Params[028].AsFloat  := EstStrIcmE07.Value;
                     Params[029].AsFloat  := EstStrMlcE07.Value;
                     Params[030].AsFloat  := EstStrBasE07.Value;

                     Params[031].AsString := EstStrTrbE08.Value;
                     Params[032].AsFloat  := EstStrIcmE08.Value;
                     Params[033].AsFloat  := EstStrMlcE08.Value;
                     Params[034].AsFloat  := EstStrBasE08.Value;

                     Params[035].AsString := EstStrTrbE09.Value;
                     Params[036].AsFloat  := EstStrIcmE09.Value;
                     Params[037].AsFloat  := EstStrMlcE09.Value;
                     Params[038].AsFloat  := EstStrBasE09.Value;

                     Params[039].AsString := EstStrTrbE10.Value;
                     Params[040].AsFloat  := EstStrIcmE10.Value;
                     Params[041].AsFloat  := EstStrMlcE10.Value;
                     Params[042].AsFloat  := EstStrBasE10.Value;

                     Params[043].AsString := EstStrTrbE11.Value;
                     Params[044].AsFloat  := EstStrIcmE11.Value;
                     Params[045].AsFloat  := EstStrMlcE11.Value;
                     Params[046].AsFloat  := EstStrBasE11.Value;

                     Params[047].AsString := EstStrTrbE12.Value;
                     Params[048].AsFloat  := EstStrIcmE12.Value;
                     Params[049].AsFloat  := EstStrMlcE12.Value;
                     Params[050].AsFloat  := EstStrBasE12.Value;

                     Params[051].AsString := EstStrTrbE13.Value;
                     Params[052].AsFloat  := EstStrIcmE13.Value;
                     Params[053].AsFloat  := EstStrMlcE13.Value;
                     Params[054].AsFloat  := EstStrBasE13.Value;

                     Params[055].AsString := EstStrTrbE14.Value;
                     Params[056].AsFloat  := EstStrIcmE14.Value;
                     Params[057].AsFloat  := EstStrMlcE14.Value;
                     Params[058].AsFloat  := EstStrBasE14.Value;

                     Params[059].AsString := EstStrTrbE15.Value;
                     Params[060].AsFloat  := EstStrIcmE15.Value;
                     Params[061].AsFloat  := EstStrMlcE15.Value;
                     Params[062].AsFloat  := EstStrBasE15.Value;

                     Params[063].AsString := EstStrTrbE16.Value;
                     Params[064].AsFloat  := EstStrIcmE16.Value;
                     Params[065].AsFloat  := EstStrMlcE16.Value;
                     Params[066].AsFloat  := EstStrBasE16.Value;

                     Params[067].AsString := EstStrTrbE17.Value;
                     Params[068].AsFloat  := EstStrIcmE17.Value;
                     Params[069].AsFloat  := EstStrMlcE17.Value;
                     Params[070].AsFloat  := EstStrBasE17.Value;

                     Params[071].AsString := EstStrTrbE18.Value;
                     Params[072].AsFloat  := EstStrIcmE18.Value;
                     Params[073].AsFloat  := EstStrMlcE18.Value;
                     Params[074].AsFloat  := EstStrBasE18.Value;

                     Params[075].AsString := EstStrTrbE19.Value;
                     Params[076].AsFloat  := EstStrIcmE19.Value;
                     Params[077].AsFloat  := EstStrMlcE19.Value;
                     Params[078].AsFloat  := EstStrBasE19.Value;

                     Params[079].AsString := EstStrTrbE20.Value;
                     Params[080].AsFloat  := EstStrIcmE20.Value;
                     Params[081].AsFloat  := EstStrMlcE20.Value;
                     Params[082].AsFloat  := EstStrBasE20.Value;

                     Params[083].AsString := EstStrTrbE21.Value;
                     Params[084].AsFloat  := EstStrIcmE21.Value;
                     Params[085].AsFloat  := EstStrMlcE21.Value;
                     Params[086].AsFloat  := EstStrBasE21.Value;

                     Params[087].AsString := EstStrTrbE22.Value;
                     Params[088].AsFloat  := EstStrIcmE22.Value;
                     Params[089].AsFloat  := EstStrMlcE22.Value;
                     Params[090].AsFloat  := EstStrBasE22.Value;

                     Params[091].AsString := EstStrTrbE23.Value;
                     Params[092].AsFloat  := EstStrIcmE23.Value;
                     Params[093].AsFloat  := EstStrMlcE23.Value;
                     Params[094].AsFloat  := EstStrBasE23.Value;

                     Params[095].AsString := EstStrTrbE24.Value;
                     Params[096].AsFloat  := EstStrIcmE24.Value;
                     Params[097].AsFloat  := EstStrMlcE24.Value;
                     Params[098].AsFloat  := EstStrBasE24.Value;

                     Params[099].AsString := EstStrTrbE25.Value;
                     Params[100].AsFloat  := EstStrIcmE25.Value;
                     Params[101].AsFloat  := EstStrMlcE25.Value;
                     Params[102].AsFloat  := EstStrBasE25.Value;

                     Params[103].AsString := EstStrTrbE26.Value;
                     Params[104].AsFloat  := EstStrIcmE26.Value;
                     Params[105].AsFloat  := EstStrMlcE26.Value;
                     Params[106].AsFloat  := EstStrBasE26.Value;

                     Params[107].AsString := EstStrTrbE27.Value;
                     Params[108].AsFloat  := EstStrIcmE27.Value;
                     Params[109].AsFloat  := EstStrMlcE27.Value;
                     Params[110].AsFloat  := EstStrBasE27.Value;

                     Params[111].AsString := EstStrTrbE28.Value;
                     Params[112].AsFloat  := EstStrIcmE28.Value;
                     Params[113].AsFloat  := EstStrMlcE28.Value;
                     Params[114].AsFloat  := EstStrBasE28.Value;

                end;

                ExecSQL;

           end;

           end
        else
           begin

           if ( EstStrNomStr.Value <> quSQL3.FieldbyName('NomStr').AsString ) or
              ( EstStrTrbE01.Value <> quSQL3.FieldbyName('TrbE01').AsString ) or
              ( EstStrIcmE01.Value <> quSQL3.FieldbyName('IcmE01').AsFloat  ) or
              ( EstStrMlcE01.Value <> quSQL3.FieldbyName('MlcE01').AsFloat  ) or
              ( EstStrBasE01.Value <> quSQL3.FieldbyName('BasE01').AsFloat  ) or

              ( EstStrTrbE02.Value <> quSQL3.FieldbyName('TrbE02').AsString ) or
              ( EstStrIcmE02.Value <> quSQL3.FieldbyName('IcmE02').AsFloat  ) or
              ( EstStrMlcE02.Value <> quSQL3.FieldbyName('MlcE02').AsFloat  ) or
              ( EstStrBasE02.Value <> quSQL3.FieldbyName('BasE02').AsFloat  ) or

              ( EstStrTrbE03.Value <> quSQL3.FieldbyName('TrbE03').AsString ) or
              ( EstStrIcmE03.Value <> quSQL3.FieldbyName('IcmE03').AsFloat  ) or
              ( EstStrMlcE03.Value <> quSQL3.FieldbyName('MlcE03').AsFloat  ) or
              ( EstStrBasE03.Value <> quSQL3.FieldbyName('BasE03').AsFloat  ) or

              ( EstStrTrbE04.Value <> quSQL3.FieldbyName('TrbE04').AsString ) or
              ( EstStrIcmE04.Value <> quSQL3.FieldbyName('IcmE04').AsFloat  ) or
              ( EstStrMlcE04.Value <> quSQL3.FieldbyName('MlcE04').AsFloat  ) or
              ( EstStrBasE04.Value <> quSQL3.FieldbyName('BasE04').AsFloat  ) or

              ( EstStrTrbE05.Value <> quSQL3.FieldbyName('TrbE05').AsString ) or
              ( EstStrIcmE05.Value <> quSQL3.FieldbyName('IcmE05').AsFloat  ) or
              ( EstStrMlcE05.Value <> quSQL3.FieldbyName('MlcE05').AsFloat  ) or
              ( EstStrBasE05.Value <> quSQL3.FieldbyName('BasE05').AsFloat  ) or

              ( EstStrTrbE06.Value <> quSQL3.FieldbyName('TrbE06').AsString ) or
              ( EstStrIcmE06.Value <> quSQL3.FieldbyName('IcmE06').AsFloat  ) or
              ( EstStrMlcE06.Value <> quSQL3.FieldbyName('MlcE06').AsFloat  ) or
              ( EstStrBasE06.Value <> quSQL3.FieldbyName('BasE06').AsFloat  ) or

              ( EstStrTrbE07.Value <> quSQL3.FieldbyName('TrbE07').AsString ) or
              ( EstStrIcmE07.Value <> quSQL3.FieldbyName('IcmE07').AsFloat  ) or
              ( EstStrMlcE07.Value <> quSQL3.FieldbyName('MlcE07').AsFloat  ) or
              ( EstStrBasE07.Value <> quSQL3.FieldbyName('BasE07').AsFloat  ) or

              ( EstStrTrbE08.Value <> quSQL3.FieldbyName('TrbE08').AsString ) or
              ( EstStrIcmE08.Value <> quSQL3.FieldbyName('IcmE08').AsFloat  ) or
              ( EstStrMlcE08.Value <> quSQL3.FieldbyName('MlcE08').AsFloat  ) or
              ( EstStrBasE08.Value <> quSQL3.FieldbyName('BasE08').AsFloat  ) or

              ( EstStrTrbE09.Value <> quSQL3.FieldbyName('TrbE09').AsString ) or
              ( EstStrIcmE09.Value <> quSQL3.FieldbyName('IcmE09').AsFloat  ) or
              ( EstStrMlcE09.Value <> quSQL3.FieldbyName('MlcE09').AsFloat  ) or
              ( EstStrBasE09.Value <> quSQL3.FieldbyName('BasE09').AsFloat  ) or

              ( EstStrTrbE10.Value <> quSQL3.FieldbyName('TrbE10').AsString ) or
              ( EstStrIcmE10.Value <> quSQL3.FieldbyName('IcmE10').AsFloat  ) or
              ( EstStrMlcE10.Value <> quSQL3.FieldbyName('MlcE10').AsFloat  ) or
              ( EstStrBasE10.Value <> quSQL3.FieldbyName('BasE10').AsFloat  ) or

              ( EstStrTrbE11.Value <> quSQL3.FieldbyName('TrbE11').AsString ) or
              ( EstStrIcmE11.Value <> quSQL3.FieldbyName('IcmE11').AsFloat  ) or
              ( EstStrMlcE11.Value <> quSQL3.FieldbyName('MlcE11').AsFloat  ) or
              ( EstStrBasE11.Value <> quSQL3.FieldbyName('BasE11').AsFloat  ) or

              ( EstStrTrbE12.Value <> quSQL3.FieldbyName('TrbE12').AsString ) or
              ( EstStrIcmE12.Value <> quSQL3.FieldbyName('IcmE12').AsFloat  ) or
              ( EstStrMlcE12.Value <> quSQL3.FieldbyName('MlcE12').AsFloat  ) or
              ( EstStrBasE12.Value <> quSQL3.FieldbyName('BasE12').AsFloat  ) or

              ( EstStrTrbE13.Value <> quSQL3.FieldbyName('TrbE13').AsString ) or
              ( EstStrIcmE13.Value <> quSQL3.FieldbyName('IcmE13').AsFloat  ) or
              ( EstStrMlcE13.Value <> quSQL3.FieldbyName('MlcE13').AsFloat  ) or
              ( EstStrBasE13.Value <> quSQL3.FieldbyName('BasE13').AsFloat  ) or

              ( EstStrTrbE14.Value <> quSQL3.FieldbyName('TrbE14').AsString ) or
              ( EstStrIcmE14.Value <> quSQL3.FieldbyName('IcmE14').AsFloat  ) or
              ( EstStrMlcE14.Value <> quSQL3.FieldbyName('MlcE14').AsFloat  ) or
              ( EstStrBasE14.Value <> quSQL3.FieldbyName('BasE14').AsFloat  ) or

              ( EstStrTrbE15.Value <> quSQL3.FieldbyName('TrbE15').AsString ) or
              ( EstStrIcmE15.Value <> quSQL3.FieldbyName('IcmE15').AsFloat  ) or
              ( EstStrMlcE15.Value <> quSQL3.FieldbyName('MlcE15').AsFloat  ) or
              ( EstStrBasE15.Value <> quSQL3.FieldbyName('BasE15').AsFloat  ) or

              ( EstStrTrbE16.Value <> quSQL3.FieldbyName('TrbE16').AsString ) or
              ( EstStrIcmE16.Value <> quSQL3.FieldbyName('IcmE16').AsFloat  ) or
              ( EstStrMlcE16.Value <> quSQL3.FieldbyName('MlcE16').AsFloat  ) or
              ( EstStrBasE16.Value <> quSQL3.FieldbyName('BasE16').AsFloat  ) or

              ( EstStrTrbE17.Value <> quSQL3.FieldbyName('TrbE17').AsString ) or
              ( EstStrIcmE17.Value <> quSQL3.FieldbyName('IcmE17').AsFloat  ) or
              ( EstStrMlcE17.Value <> quSQL3.FieldbyName('MlcE17').AsFloat  ) or
              ( EstStrBasE17.Value <> quSQL3.FieldbyName('BasE17').AsFloat  ) or

              ( EstStrTrbE18.Value <> quSQL3.FieldbyName('TrbE18').AsString ) or
              ( EstStrIcmE18.Value <> quSQL3.FieldbyName('IcmE18').AsFloat  ) or
              ( EstStrMlcE18.Value <> quSQL3.FieldbyName('MlcE18').AsFloat  ) or
              ( EstStrBasE18.Value <> quSQL3.FieldbyName('BasE18').AsFloat  ) or

              ( EstStrTrbE19.Value <> quSQL3.FieldbyName('TrbE19').AsString ) or
              ( EstStrIcmE19.Value <> quSQL3.FieldbyName('IcmE19').AsFloat  ) or
              ( EstStrMlcE19.Value <> quSQL3.FieldbyName('MlcE19').AsFloat  ) or
              ( EstStrBasE19.Value <> quSQL3.FieldbyName('BasE19').AsFloat  ) or

              ( EstStrTrbE20.Value <> quSQL3.FieldbyName('TrbE20').AsString ) or
              ( EstStrIcmE20.Value <> quSQL3.FieldbyName('IcmE20').AsFloat  ) or
              ( EstStrMlcE20.Value <> quSQL3.FieldbyName('MlcE20').AsFloat  ) or
              ( EstStrBasE20.Value <> quSQL3.FieldbyName('BasE20').AsFloat  ) or

              ( EstStrTrbE21.Value <> quSQL3.FieldbyName('TrbE21').AsString ) or
              ( EstStrIcmE21.Value <> quSQL3.FieldbyName('IcmE21').AsFloat  ) or
              ( EstStrMlcE21.Value <> quSQL3.FieldbyName('MlcE21').AsFloat  ) or
              ( EstStrBasE21.Value <> quSQL3.FieldbyName('BasE21').AsFloat  ) or

              ( EstStrTrbE22.Value <> quSQL3.FieldbyName('TrbE22').AsString ) or
              ( EstStrIcmE22.Value <> quSQL3.FieldbyName('IcmE22').AsFloat  ) or
              ( EstStrMlcE22.Value <> quSQL3.FieldbyName('MlcE22').AsFloat  ) or
              ( EstStrBasE22.Value <> quSQL3.FieldbyName('BasE22').AsFloat  ) or

              ( EstStrTrbE23.Value <> quSQL3.FieldbyName('TrbE23').AsString ) or
              ( EstStrIcmE23.Value <> quSQL3.FieldbyName('IcmE23').AsFloat  ) or
              ( EstStrMlcE23.Value <> quSQL3.FieldbyName('MlcE23').AsFloat  ) or
              ( EstStrBasE23.Value <> quSQL3.FieldbyName('BasE23').AsFloat  ) or

              ( EstStrTrbE24.Value <> quSQL3.FieldbyName('TrbE24').AsString ) or
              ( EstStrIcmE24.Value <> quSQL3.FieldbyName('IcmE24').AsFloat  ) or
              ( EstStrMlcE24.Value <> quSQL3.FieldbyName('MlcE24').AsFloat  ) or
              ( EstStrBasE24.Value <> quSQL3.FieldbyName('BasE24').AsFloat  ) or

              ( EstStrTrbE25.Value <> quSQL3.FieldbyName('TrbE25').AsString ) or
              ( EstStrIcmE25.Value <> quSQL3.FieldbyName('IcmE25').AsFloat  ) or
              ( EstStrMlcE25.Value <> quSQL3.FieldbyName('MlcE25').AsFloat  ) or
              ( EstStrBasE25.Value <> quSQL3.FieldbyName('BasE25').AsFloat  ) or

              ( EstStrTrbE26.Value <> quSQL3.FieldbyName('TrbE26').AsString ) or
              ( EstStrIcmE26.Value <> quSQL3.FieldbyName('IcmE26').AsFloat  ) or
              ( EstStrMlcE26.Value <> quSQL3.FieldbyName('MlcE26').AsFloat  ) or
              ( EstStrBasE26.Value <> quSQL3.FieldbyName('BasE26').AsFloat  ) or

              ( EstStrTrbE27.Value <> quSQL3.FieldbyName('TrbE27').AsString ) or
              ( EstStrIcmE27.Value <> quSQL3.FieldbyName('IcmE27').AsFloat  ) or
              ( EstStrMlcE27.Value <> quSQL3.FieldbyName('MlcE27').AsFloat  ) or
              ( EstStrBasE27.Value <> quSQL3.FieldbyName('BasE27').AsFloat  ) or

              ( EstStrTrbE28.Value <> quSQL3.FieldbyName('TrbE28').AsString ) or
              ( EstStrIcmE28.Value <> quSQL3.FieldbyName('IcmE28').AsFloat  ) or
              ( EstStrMlcE28.Value <> quSQL3.FieldbyName('MlcE28').AsFloat  ) or
              ( EstStrBasE28.Value <> quSQL3.FieldbyName('BasE28').AsFloat  ) then begin

              with quSQL3,SQL do begin

                   Close;
                   Text := ' Update EstStr Set NomStr = :NomStr,'+
                           '                   TrbE01 = :TrbE01,'+
                           '                   IcmE01 = :IcmE01,'+
                           '                   MlcE01 = :MlcE01,'+
                           '                   BasE01 = :BasE01,'+
                           '                   TrbE02 = :TrbE02,'+
                           '                   IcmE02 = :IcmE02,'+
                           '                   MlcE02 = :MlcE02,'+
                           '                   BasE02 = :BasE02,'+
                           '                   TrbE03 = :TrbE03,'+
                           '                   IcmE03 = :IcmE03,'+
                           '                   MlcE03 = :MlcE03,'+
                           '                   BasE03 = :BasE03,'+
                           '                   TrbE04 = :TrbE04,'+
                           '                   IcmE04 = :IcmE04,'+
                           '                   MlcE04 = :MlcE04,'+
                           '                   BasE04 = :BasE04,'+
                           '                   TrbE05 = :TrbE05,'+
                           '                   IcmE05 = :IcmE05,'+
                           '                   MlcE05 = :MlcE05,'+
                           '                   BasE05 = :BasE05,'+
                           '                   TrbE06 = :TrbE06,'+
                           '                   IcmE06 = :IcmE06,'+
                           '                   MlcE06 = :MlcE06,'+
                           '                   BasE06 = :BasE06,'+
                           '                   TrbE07 = :TrbE07,'+
                           '                   IcmE07 = :IcmE07,'+
                           '                   MlcE07 = :MlcE07,'+
                           '                   BasE07 = :BasE07,'+
                           '                   TrbE08 = :TrbE08,'+
                           '                   IcmE08 = :IcmE08,'+
                           '                   MlcE08 = :MlcE08,'+
                           '                   BasE08 = :BasE08,'+
                           '                   TrbE09 = :TrbE09,'+
                           '                   IcmE09 = :IcmE09,'+
                           '                   MlcE09 = :MlcE09,'+
                           '                   BasE09 = :BasE09,'+
                           '                   TrbE10 = :TrbE10,'+
                           '                   IcmE10 = :IcmE10,'+
                           '                   MlcE10 = :MlcE10,'+
                           '                   BasE10 = :BasE10,'+
                           '                   TrbE11 = :TrbE11,'+
                           '                   IcmE11 = :IcmE11,'+
                           '                   MlcE11 = :MlcE11,'+
                           '                   BasE11 = :BasE11,'+
                           '                   TrbE12 = :TrbE12,'+
                           '                   IcmE12 = :IcmE12,'+
                           '                   MlcE12 = :MlcE12,'+
                           '                   BasE12 = :BasE12,'+
                           '                   TrbE13 = :TrbE13,'+
                           '                   IcmE13 = :IcmE13,'+
                           '                   MlcE13 = :MlcE13,'+
                           '                   BasE13 = :BasE13,'+
                           '                   TrbE14 = :TrbE14,'+
                           '                   IcmE14 = :IcmE14,'+
                           '                   MlcE14 = :MlcE14,'+
                           '                   BasE14 = :BasE14,'+
                           '                   TrbE15 = :TrbE15,'+
                           '                   IcmE15 = :IcmE15,'+
                           '                   MlcE15 = :MlcE15,'+
                           '                   BasE15 = :BasE15,'+
                           '                   TrbE16 = :TrbE16,'+
                           '                   IcmE16 = :IcmE16,'+
                           '                   MlcE16 = :MlcE16,'+
                           '                   BasE16 = :BasE16,'+
                           '                   TrbE17 = :TrbE17,'+
                           '                   IcmE17 = :IcmE17,'+
                           '                   MlcE17 = :MlcE17,'+
                           '                   BasE17 = :BasE17,'+
                           '                   TrbE18 = :TrbE18,'+
                           '                   IcmE18 = :IcmE18,'+
                           '                   MlcE18 = :MlcE18,'+
                           '                   BasE18 = :BasE18,'+
                           '                   TrbE19 = :TrbE19,'+
                           '                   IcmE19 = :IcmE19,'+
                           '                   MlcE19 = :MlcE19,'+
                           '                   BasE19 = :BasE19,'+
                           '                   TrbE20 = :TrbE20,'+
                           '                   IcmE20 = :IcmE20,'+
                           '                   MlcE20 = :MlcE20,'+
                           '                   BasE20 = :BasE20,'+
                           '                   TrbE21 = :TrbE21,'+
                           '                   IcmE21 = :IcmE21,'+
                           '                   MlcE21 = :MlcE21,'+
                           '                   BasE21 = :BasE21,'+
                           '                   TrbE22 = :TrbE22,'+
                           '                   IcmE22 = :IcmE22,'+
                           '                   MlcE22 = :MlcE22,'+
                           '                   BasE22 = :BasE22,'+
                           '                   TrbE23 = :TrbE23,'+
                           '                   IcmE23 = :IcmE23,'+
                           '                   MlcE23 = :MlcE23,'+
                           '                   BasE23 = :BasE23,'+
                           '                   TrbE24 = :TrbE24,'+
                           '                   IcmE24 = :IcmE24,'+
                           '                   MlcE24 = :MlcE24,'+
                           '                   BasE24 = :BasE24,'+
                           '                   TrbE25 = :TrbE25,'+
                           '                   IcmE25 = :IcmE25,'+
                           '                   MlcE25 = :MlcE25,'+
                           '                   BasE25 = :BasE25,'+
                           '                   TrbE26 = :TrbE26,'+
                           '                   IcmE26 = :IcmE26,'+
                           '                   MlcE26 = :MlcE26,'+
                           '                   BasE26 = :BasE26,'+
                           '                   TrbE27 = :TrbE27,'+
                           '                   IcmE27 = :IcmE27,'+
                           '                   MlcE27 = :MlcE27,'+
                           '                   BasE27 = :BasE27,'+
                           '                   TrbE28 = :TrbE28,'+
                           '                   IcmE28 = :IcmE28,'+
                           '                   MlcE28 = :MlcE28,'+
                           '                   BasE28 = :BasE28'+
                           ' Where EstStr.CodStr = :CodStr '+
                           '   and EstStr.TipStr = :TipStr ';

                with Params do begin

                     Params[000].AsString := EstStrNomStr.Value;

                     Params[001].AsString := EstStrTrbE01.Value;
                     Params[002].AsFloat  := EstStrIcmE01.Value;
                     Params[003].AsFloat  := EstStrMlcE01.Value;
                     Params[004].AsFloat  := EstStrBasE01.Value;

                     Params[005].AsString := EstStrTrbE02.Value;
                     Params[006].AsFloat  := EstStrIcmE02.Value;
                     Params[007].AsFloat  := EstStrMlcE02.Value;
                     Params[008].AsFloat  := EstStrBasE02.Value;

                     Params[009].AsString := EstStrTrbE03.Value;
                     Params[010].AsFloat  := EstStrIcmE03.Value;
                     Params[011].AsFloat  := EstStrMlcE03.Value;
                     Params[012].AsFloat  := EstStrBasE03.Value;

                     Params[013].AsString := EstStrTrbE04.Value;
                     Params[014].AsFloat  := EstStrIcmE04.Value;
                     Params[015].AsFloat  := EstStrMlcE04.Value;
                     Params[016].AsFloat  := EstStrBasE04.Value;

                     Params[017].AsString := EstStrTrbE05.Value;
                     Params[018].AsFloat  := EstStrIcmE05.Value;
                     Params[019].AsFloat  := EstStrMlcE05.Value;
                     Params[020].AsFloat  := EstStrBasE05.Value;

                     Params[021].AsString := EstStrTrbE06.Value;
                     Params[022].AsFloat  := EstStrIcmE06.Value;
                     Params[023].AsFloat  := EstStrMlcE06.Value;
                     Params[024].AsFloat  := EstStrBasE06.Value;

                     Params[025].AsString := EstStrTrbE07.Value;
                     Params[026].AsFloat  := EstStrIcmE07.Value;
                     Params[027].AsFloat  := EstStrMlcE07.Value;
                     Params[028].AsFloat  := EstStrBasE07.Value;

                     Params[029].AsString := EstStrTrbE08.Value;
                     Params[030].AsFloat  := EstStrIcmE08.Value;
                     Params[031].AsFloat  := EstStrMlcE08.Value;
                     Params[032].AsFloat  := EstStrBasE08.Value;

                     Params[033].AsString := EstStrTrbE09.Value;
                     Params[034].AsFloat  := EstStrIcmE09.Value;
                     Params[035].AsFloat  := EstStrMlcE09.Value;
                     Params[036].AsFloat  := EstStrBasE09.Value;

                     Params[037].AsString := EstStrTrbE10.Value;
                     Params[038].AsFloat  := EstStrIcmE10.Value;
                     Params[039].AsFloat  := EstStrMlcE10.Value;
                     Params[040].AsFloat  := EstStrBasE10.Value;

                     Params[041].AsString := EstStrTrbE11.Value;
                     Params[042].AsFloat  := EstStrIcmE11.Value;
                     Params[043].AsFloat  := EstStrMlcE11.Value;
                     Params[044].AsFloat  := EstStrBasE11.Value;

                     Params[045].AsString := EstStrTrbE12.Value;
                     Params[046].AsFloat  := EstStrIcmE12.Value;
                     Params[047].AsFloat  := EstStrMlcE12.Value;
                     Params[048].AsFloat  := EstStrBasE12.Value;

                     Params[049].AsString := EstStrTrbE13.Value;
                     Params[050].AsFloat  := EstStrIcmE13.Value;
                     Params[051].AsFloat  := EstStrMlcE13.Value;
                     Params[052].AsFloat  := EstStrBasE13.Value;

                     Params[053].AsString := EstStrTrbE14.Value;
                     Params[054].AsFloat  := EstStrIcmE14.Value;
                     Params[055].AsFloat  := EstStrMlcE14.Value;
                     Params[056].AsFloat  := EstStrBasE14.Value;

                     Params[057].AsString := EstStrTrbE15.Value;
                     Params[058].AsFloat  := EstStrIcmE15.Value;
                     Params[059].AsFloat  := EstStrMlcE15.Value;
                     Params[060].AsFloat  := EstStrBasE15.Value;

                     Params[061].AsString := EstStrTrbE16.Value;
                     Params[062].AsFloat  := EstStrIcmE16.Value;
                     Params[063].AsFloat  := EstStrMlcE16.Value;
                     Params[064].AsFloat  := EstStrBasE16.Value;

                     Params[065].AsString := EstStrTrbE17.Value;
                     Params[066].AsFloat  := EstStrIcmE17.Value;
                     Params[067].AsFloat  := EstStrMlcE17.Value;
                     Params[068].AsFloat  := EstStrBasE17.Value;

                     Params[069].AsString := EstStrTrbE18.Value;
                     Params[070].AsFloat  := EstStrIcmE18.Value;
                     Params[071].AsFloat  := EstStrMlcE18.Value;
                     Params[072].AsFloat  := EstStrBasE18.Value;

                     Params[073].AsString := EstStrTrbE19.Value;
                     Params[074].AsFloat  := EstStrIcmE19.Value;
                     Params[075].AsFloat  := EstStrMlcE19.Value;
                     Params[076].AsFloat  := EstStrBasE19.Value;

                     Params[077].AsString := EstStrTrbE20.Value;
                     Params[078].AsFloat  := EstStrIcmE20.Value;
                     Params[079].AsFloat  := EstStrMlcE20.Value;
                     Params[080].AsFloat  := EstStrBasE20.Value;

                     Params[081].AsString := EstStrTrbE21.Value;
                     Params[082].AsFloat  := EstStrIcmE21.Value;
                     Params[083].AsFloat  := EstStrMlcE21.Value;
                     Params[084].AsFloat  := EstStrBasE21.Value;

                     Params[085].AsString := EstStrTrbE22.Value;
                     Params[086].AsFloat  := EstStrIcmE22.Value;
                     Params[087].AsFloat  := EstStrMlcE22.Value;
                     Params[088].AsFloat  := EstStrBasE22.Value;

                     Params[089].AsString := EstStrTrbE23.Value;
                     Params[090].AsFloat  := EstStrIcmE23.Value;
                     Params[091].AsFloat  := EstStrMlcE23.Value;
                     Params[092].AsFloat  := EstStrBasE23.Value;

                     Params[093].AsString := EstStrTrbE24.Value;
                     Params[094].AsFloat  := EstStrIcmE24.Value;
                     Params[095].AsFloat  := EstStrMlcE24.Value;
                     Params[096].AsFloat  := EstStrBasE24.Value;

                     Params[097].AsString := EstStrTrbE25.Value;
                     Params[098].AsFloat  := EstStrIcmE25.Value;
                     Params[099].AsFloat  := EstStrMlcE25.Value;
                     Params[100].AsFloat  := EstStrBasE25.Value;

                     Params[101].AsString := EstStrTrbE26.Value;
                     Params[102].AsFloat  := EstStrIcmE26.Value;
                     Params[103].AsFloat  := EstStrMlcE26.Value;
                     Params[104].AsFloat  := EstStrBasE26.Value;

                     Params[105].AsString := EstStrTrbE27.Value;
                     Params[106].AsFloat  := EstStrIcmE27.Value;
                     Params[107].AsFloat  := EstStrMlcE27.Value;
                     Params[108].AsFloat  := EstStrBasE27.Value;

                     Params[109].AsString := EstStrTrbE28.Value;
                     Params[110].AsFloat  := EstStrIcmE28.Value;
                     Params[111].AsFloat  := EstStrMlcE28.Value;
                     Params[112].AsFloat  := EstStrBasE28.Value;

                     Params[113].AsString := EstStrCodStr.Value;
                     Params[114].AsString := EstStrTipStr.Value;

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

procedure TfmManStr.EstStrBeforeDelete(DataSet: TDataSet);
begin
  inherited;

  with fmManGDB.dbEmerion1 do begin

       try
          Connected := True;
       except
          Connected := False;
       end;

  end;

  with fmManGDB.dbEmerion2 do begin

       try
          Connected := True;
       except
          Connected := False;
       end;

  end;

  sleep(1000);
  
  try

     if fmManGDB.dbEmerion1.Connected then begin

        with quSQL2,SQL do begin

             Close;
             Text := ' Delete From EstStr Where EstStr.CodStr = '''+ EstStrCodStr.Value +''' and EstStr.TipStr = '''+ EstStrTipStr.Value +'''';
             ExecSQL;

        end;
     end;

     if fmManGDB.dbEmerion2.Connected then begin

        with quSQL3,SQL do begin

             Close;
             Text := ' Delete From EstStr Where EstStr.CodStr = '''+ EstStrCodStr.Value +''' and EstStr.TipStr = '''+ EstStrTipStr.Value +'''';
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
