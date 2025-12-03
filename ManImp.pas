unit ManImp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, ExtCtrls, Buttons, dxCntner, dxEditor, dxEdLib, StdCtrls,
  dxExEdtr, Db, DBTables, Wwquery, dxColorCurrencyEdit, dxColorEdit;

type
  TfmManImp = class(TfmPadrao)
    Label5: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    EdPsqCodPro: TdxColorEdit;
    EdPsqCodSub: TdxColorEdit;
    EdPsqCodGru: TdxColorEdit;
    EdPsqCodClp: TdxColorEdit;
    EdPsqCodEmp: TdxColorEdit;
    BbPsqEmp: TSpeedButton;
    BbPsqClp: TSpeedButton;
    BbPsqGru: TSpeedButton;
    BbPsqSub: TSpeedButton;
    BbPsqPro: TSpeedButton;
    EdPsqNomPro: TdxColorEdit;
    EdPsqNomSub: TdxColorEdit;
    EdPsqNomGru: TdxColorEdit;
    EdPsqNomClp: TdxColorEdit;
    EdPsqNomEmp: TdxColorEdit;
    Label1: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    Bevel2: TBevel;
    Label7: TLabel;
    EdCodUne: TdxColorEdit;
    bPsqUne: TSpeedButton;
    EdCodUns: TdxColorEdit;
    bPsqUns: TSpeedButton;
    Label9: TLabel;
    EdCodCom: TdxColorEdit;
    bPsqCom: TSpeedButton;
    EdPerCom: TdxColorCurrencyEdit;
    Label11: TLabel;
    EdSimPro: TdxColorEdit;
    Label12: TLabel;
    EdQtdEmb: TdxColorCurrencyEdit;
    Label13: TLabel;
    Label14: TLabel;
    EdIcmEnt: TdxColorEdit;
    bPsqIcmEnt: TSpeedButton;
    EdNomIcmEnt: TdxColorEdit;
    Label15: TLabel;
    EdIpiEnt: TdxColorEdit;
    bPsqIpiEnt: TSpeedButton;
    EdNomIpiEnt: TdxColorEdit;
    Label16: TLabel;
    EdCodSte: TdxColorEdit;
    bPsqSte: TSpeedButton;
    EdNomSte: TdxColorEdit;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    EdCodSts: TdxColorEdit;
    EdIpiSai: TdxColorEdit;
    bPsqIcmSai: TSpeedButton;
    bPsqIpiSai: TSpeedButton;
    bPsqSts: TSpeedButton;
    EdNomSts: TdxColorEdit;
    EdNomIpiSai: TdxColorEdit;
    EdNomIcmSai: TdxColorEdit;
    Label21: TLabel;
    EdPerIcmEnt: TdxColorCurrencyEdit;
    Label22: TLabel;
    EdPerIpiEnt: TdxColorCurrencyEdit;
    Label23: TLabel;
    EdPerIcmSai: TdxColorCurrencyEdit;
    Label24: TLabel;
    EdPerIpiSai: TdxColorCurrencyEdit;
    Label25: TLabel;
    EdPsqCodTip: TdxColorEdit;
    bPsqTip: TSpeedButton;
    EdPsqNomTip: TdxColorEdit;
    BbConf: TBitBtn;
    BbCanc: TBitBtn;
    EdIcmSai: TdxColorEdit;
    quSql: TwwQuery;
    Label8: TLabel;
    EdQtdVol: TdxColorCurrencyEdit;
    Label37: TLabel;
    EdPsqCodCat: TdxColorEdit;
    bPsqCat: TSpeedButton;
    EdPsqNomCat: TdxColorEdit;
    Label38: TLabel;
    EdPsqCodMrc: TdxColorEdit;
    bPsqMrc: TSpeedButton;
    EdPsqNomMrc: TdxColorEdit;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    EdCodMrc: TdxColorEdit;
    EdCodTip: TdxColorEdit;
    EdCodCat: TdxColorEdit;
    bPsqCat1: TSpeedButton;
    bPsqTip1: TSpeedButton;
    bPsqMrc1: TSpeedButton;
    EdNomMrc: TdxColorEdit;
    EdNomTip: TdxColorEdit;
    EdNomCat: TdxColorEdit;
    Label26: TLabel;
    EdPesLiq: TdxColorCurrencyEdit;
    Label27: TLabel;
    EdPesBrt: TdxColorCurrencyEdit;
    SpeedButton1: TSpeedButton;
    EdCodst1: TdxColorEdit;
    EdNomst1: TdxColorEdit;
    Label28: TLabel;
    Label29: TLabel;
    EdPsqCodNcm: TdxColorEdit;
    Label30: TLabel;
    edCodCest: TdxColorEdit;
    edFcpEntrada: TdxColorEdit;
    Label31: TLabel;
    edFcpSaida: TdxColorEdit;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    edNCM: TdxColorEdit;
    procedure EdPsqCodEmpKeyPress(Sender: TObject; var Key: Char);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure BbPsqEmpClick(Sender: TObject);
    procedure EdPsqCodClpExit(Sender: TObject);
    procedure BbPsqClpClick(Sender: TObject);
    procedure EdPsqCodGruExit(Sender: TObject);
    procedure BbPsqGruClick(Sender: TObject);
    procedure EdPsqCodSubExit(Sender: TObject);
    procedure EdPsqCodProExit(Sender: TObject);
    procedure BbPsqSubClick(Sender: TObject);
    procedure BbPsqProClick(Sender: TObject);
    procedure bPsqUneClick(Sender: TObject);
    procedure EdCodUneExit(Sender: TObject);
    procedure bPsqUnsClick(Sender: TObject);
    procedure EdCodUnsExit(Sender: TObject);
    procedure bPsqComClick(Sender: TObject);
    procedure EdCodComExit(Sender: TObject);
    procedure bPsqTipClick(Sender: TObject);
    procedure EdPsqCodTipExit(Sender: TObject);
    procedure bPsqIcmEntClick(Sender: TObject);
    procedure EdIcmEntExit(Sender: TObject);
    procedure bPsqIpiEntClick(Sender: TObject);
    procedure EdIpiEntExit(Sender: TObject);
    procedure bPsqSteClick(Sender: TObject);
    procedure EdCodSteExit(Sender: TObject);
    procedure bPsqIcmSaiClick(Sender: TObject);
    procedure EdIcmSaiExit(Sender: TObject);
    procedure bPsqIpiSaiClick(Sender: TObject);
    procedure EdIpiSaiExit(Sender: TObject);
    procedure bPsqStsClick(Sender: TObject);
    procedure EdCodStsExit(Sender: TObject);
    procedure BbConfClick(Sender: TObject);
    procedure BbCancClick(Sender: TObject);
    procedure LimpaControls;
    procedure EdPsqCodCatExit(Sender: TObject);
    procedure EdPsqCodMrcExit(Sender: TObject);
    procedure bPsqCatClick(Sender: TObject);
    procedure bPsqMrcClick(Sender: TObject);
    procedure bPsqTip1Click(Sender: TObject);
    procedure bPsqCat1Click(Sender: TObject);
    procedure bPsqMrc1Click(Sender: TObject);
    procedure EdCodCatExit(Sender: TObject);
    procedure EdCodTipExit(Sender: TObject);
    procedure EdCodMrcExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure EdCodst1Exit(Sender: TObject);
    procedure edFcpEntradaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edFcpEntradaKeyPress(Sender: TObject; var Key: Char);
    procedure edFcpSaidaKeyPress(Sender: TObject; var Key: Char);
    procedure edFcpSaidaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmManImp: TfmManImp;

implementation

uses dxDemoUtils, Bbmensag, Bbgeral, Bbfuncao, PsqEmp, PsqClp, PsqTip, PsqUnd,
  PsqCom, PsqIcm, PsqIpi, PsqStr, ManGDB, AuxIni;

{$R *.DFM}

procedure TfmManImp.LimpaControls;
var
  i: integer;
begin
  ;

  for i := 0 to ComponentCount - 1 do
  begin

    if Components[i] is TdxColorEdit then
      (Components[i] as TdxColorEdit).Text := '';

    if Components[i] is TdxColorCurrencyEdit then
      (Components[i] as TdxColorCurrencyEdit).Value := 0;

  end;

  EdPsqCodClp.Text := '1';

  EdPsqNomClp.Text := 'ACABADO';

end;

procedure TfmManImp.EdPsqCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmManImp.EdPsqCodEmpExit(Sender: TObject);
begin
  inherited;
  if Trim(EdPsqCodEmp.Text) <> '' then
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
      Text := ' Select NomEmp From GerEmp Where GerEmp.CodEmp = ' + QuotedStr(EdPsqCodEmp.Text);

      if GFlgAce = 'Sim' then
      begin

        if GEmpLog > 0 then
          Text := Text + ' and GerEmp.CodEmp = ' + QuotedStr(IntToStr(GEmpLog))
        else
          Text := Text + ' and GerEmp.CodFil > 0';

      end;

      Open;

      if Trim(FieldByName('NomEmp').AsString) <> '' then
        EdPsqNomEmp.Text := FieldByName('NomEmp').AsString
      else
      begin

        EdPsqNomEmp.Text := '';

        fmsgErro('Empresa Informada não Encontrada.', EdPsqCodEmp);

      end;
    end;

  end
  else
    EdPsqNomEmp.Text := '';
end;

procedure TfmManImp.BbPsqEmpClick(Sender: TObject);
begin
  inherited;

  try

    fmPsqEmp := TfmPsqEmp.Create(Self);
    fmPsqEmp.ShowModal;

    if fmPsqEmp.CodEmp > 0 then
    begin

      EdPsqNomEmp.Text := fmPsqEmp.NomEmp;
      EdPsqCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

    end;

  finally

    FreeAndNil(fmPsqEmp);

  end;

  if Trim(EdPsqCodEmp.Text) <> '' then
    EdPsqCodCat.SetFocus;

end;

procedure TfmManImp.EdPsqCodClpExit(Sender: TObject);
begin
  inherited;
  if Trim(EdPsqCodClp.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := ' Select NomClp From EstClp ' +
        ' Where CodClp = ''' + EdPsqCodClp.Text + '''';
      Open;

    end;

    if Trim(quSQL.FieldbyName('NomClp').AsString) <> '' then
      EdPsqNomClp.Text := quSql.FieldByName('NomClp').AsString
    else
      fmsgErro('Classificação Informada não Encontrada.', EdPsqCodClp);

  end
  else
    EdPsqNomClp.Text := 'TODAS';
end;

procedure TfmManImp.BbPsqClpClick(Sender: TObject);
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

procedure TfmManImp.EdPsqCodGruExit(Sender: TObject);
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

    end;

    if Trim(quSQL.FieldbyName('NomGru').AsString) <> '' then
      EdPsqNomGru.Text := quSql.FieldByName('NomGru').AsString
    else
      fmsgErro('Grupo Informado não Encontrado.', EdPsqCodGru);

  end
  else
    EdPsqNomGru.Text := 'TODOS';
end;

procedure TfmManImp.BbPsqGruClick(Sender: TObject);
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

procedure TfmManImp.EdPsqCodSubExit(Sender: TObject);
begin
  inherited;
  if Trim(EdPsqCodSub.Text) <> '' then
  begin

    EdPsqCodSub.Text := FNumZeros(EdPsqCodSub.Text, 4);

    with quSql, SQL do
    begin

      Close;
      Text := ' Select NomSub From EstSub ' +
        ' Where CodGru = ''' + EdPsqCodGru.Text + '''' +
        '   and CodSub = ''' + EdPsqCodSub.Text + '''';
      Open;

    end;

    if Trim(quSQL.FieldbyName('NomSub').AsString) <> '' then
      EdPsqNomSub.Text := quSql.FieldByName('NomSub').AsString
    else
      fmsgErro('SubGrupo Informado não Encontrado.', EdPsqCodSub);

  end
  else
    EdPsqNomSub.Text := 'TODOS';
end;

procedure TfmManImp.BbPsqSubClick(Sender: TObject);
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

procedure TfmManImp.EdPsqCodProExit(Sender: TObject);
begin
  inherited;
  if Trim(EdPsqCodPro.Text) <> '' then
  begin

    EdPsqCodPro.Text := FNumStrZero(EdPsqCodPro.Text);

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

        Params[0].AsString := EdPsqCodClp.Text;
        Params[1].AsString := EdPsqCodGru.Text;
        Params[2].AsString := EdPsqCodSub.Text;
        Params[3].AsString := EdPsqCodPro.Text;

      end;

      Open;

    end;

    if Trim(quSQL.FieldbyName('DscPro').AsString) <> '' then
      EdPsqNomPro.Text := quSql.FieldByName('DscPro').AsString
    else
      fmsgErro('Item Informado não Encontrado.', EdPsqCodPro);

  end
  else
    EdPsqNomPro.Text := 'TODOS';
end;

procedure TfmManImp.BbPsqProClick(Sender: TObject);
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

    fmAuxIni.TipoPesq := 'I';

    fmAuxIni.ShowModal;

    if Trim(fmAuxIni.CodPro) <> '' then
    begin

      EdPsqCodClp.Text := fmAuxIni.CodClp;
      EdPsqNomClp.Text := fmAuxIni.NomClp;
      EdPsqCodGru.Text := fmAuxIni.CodGru;
      EdPsqNomGru.Text := fmAuxIni.NomGru;
      EdPsqCodSub.Text := fmAuxIni.CodSub;
      EdPsqNomSub.Text := fmAuxIni.NomSub;
      EdPsqCodPro.Text := fmAuxIni.CodPro;
      EdPsqNomPro.Text := fmAuxIni.DscPro;

    end;

  finally

    FreeAndNil(fmAuxIni);

  end;

  if Trim(EdPsqCodPro.Text) <> '' then
    EdCodCat.SetFocus;

end;

procedure TfmManImp.bPsqTipClick(Sender: TObject);
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

procedure TfmManImp.EdPsqCodTipExit(Sender: TObject);
begin
  inherited;
  if Trim(EdPsqCodTip.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := ' Select NomTip From EstTip ' +
        ' Where CodTip = ''' + EdPsqCodTip.Text + '''';
      Open;

    end;

    if Trim(quSQL.FieldbyName('NomTip').AsString) <> '' then
      EdPsqNomTip.Text := quSql.FieldByName('NomTip').AsString
    else
      fmsgErro('Tipo Informado não Encontrado.', EdPsqCodTip);

  end
  else
    EdPsqNomTip.Text := 'TODOS';
end;

procedure TfmManImp.bPsqUneClick(Sender: TObject);
begin
  inherited;

  try

    fmPsqUnd := TfmPsqUnd.Create(Self);

    fmPsqUnd.ShowModal;

    if Trim(fmPsqUnd.CodUnd) <> '' then
      EdCodUne.Text := fmPsqUnd.CodUnd;

  finally

    FreeAndNil(fmPsqUnd);

  end;

  EdCodUne.SetFocus;

end;

procedure TfmManImp.EdCodUneExit(Sender: TObject);
begin
  inherited;
  if Trim(EdCodUne.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := ' Select NomUnd From EstUnd ' +
        ' Where CodUnd = ''' + EdCodUne.Text + '''';
      Open;

    end;

    if Trim(quSQL.FieldbyName('NomUnd').AsString) = '' then
      fmsgErro('Unidade de Medida Informada não Encontrada.', EdCodUne);

  end;
end;

procedure TfmManImp.bPsqUnsClick(Sender: TObject);
begin
  inherited;

  try

    fmPsqUnd := TfmPsqUnd.Create(Self);

    fmPsqUnd.ShowModal;

    if Trim(fmPsqUnd.CodUnd) <> '' then
      EdCodUns.Text := fmPsqUnd.CodUnd;

  finally

    FreeAndNil(fmPsqUnd);

  end;

  EdCodUns.SetFocus;

end;

procedure TfmManImp.EdCodUnsExit(Sender: TObject);
begin
  inherited;
  if Trim(EdCodUns.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := ' Select NomUnd From EstUnd ' +
        ' Where CodUnd = ''' + EdCodUns.Text + '''';
      Open;

    end;

    if Trim(quSQL.FieldbyName('NomUnd').AsString) = '' then
      fmsgErro('Unidade de Medida Informada não Encontrada.', EdCodUns);

  end;
end;

procedure TfmManImp.bPsqComClick(Sender: TObject);
begin
  inherited;

  try

    fmPsqCom := TfmPsqCom.Create(Self);

    fmPsqCom.ShowModal;

    if Trim(fmPsqCom.CodCom) <> '' then
    begin

      EdCodCom.Text := fmPsqCom.CodCom;
      EdPerCom.Value := fmPsqCom.PerCom;

    end;

  finally

    FreeAndNil(fmPsqCom);

  end;

  EdCodCom.SetFocus;

end;

procedure TfmManImp.EdCodComExit(Sender: TObject);
begin
  inherited;
  if Trim(EdCodCom.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := ' Select * From FinCom ' +
        ' Where CodCom = ''' + EdCodCom.Text + '''';
      Open;

    end;

    if Trim(quSql.FieldByName('CodCom').AsString) <> '' then
      EdPerCom.Value := quSql.FieldByName('PerCom').AsFloat
    else
      fmsgErro('Letra de Comissão Informada não Encontrada.', EdCodCom);

  end
  else
    EdPerCom.Value := 0;
end;

procedure TfmManImp.bPsqIcmEntClick(Sender: TObject);
begin
  inherited;

  try

    fmPsqIcm := TfmPsqIcm.Create(Self);

    fmPsqIcm.EstIcm.Close;
    fmPsqIcm.EstIcm.Params[0].AsString := 'Entrada';
    fmPsqIcm.EstIcm.Open;

    fmPsqIcm.ShowModal;

    if Trim(fmPsqIcm.CodIcm) <> '' then
    begin

      EdIcmEnt.Text := fmPsqIcm.CodIcm;
      EdNomIcmEnt.Text := fmPsqIcm.NomIcm;
      EdPerIcmEnt.Value := fmPsqIcm.PerIcm;

    end;

  finally

    FreeAndNil(fmPsqIcm);

  end;

  EdIcmEnt.SetFocus;

end;

procedure TfmManImp.EdIcmEntExit(Sender: TObject);
begin
  inherited;
  if Trim(EdIcmEnt.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      if (StrToIntDef(fmManGDB.BuscaSimples('ESTICM','COUNT','',
          'select count(1) from esticm where coalesce(flgativo,1) = 1 and codicm = ' + QuotedStr(EdIcmEnt.Text) +
          ' and TipIcm = ' + QuotedStr('Entrada')),0) > 1) then //Possui mais de uma regra
         ShowMessage('O código informado Possui mais de uma referência. Favor pesquisar através do F1')
      else
         begin

            Close;
            Text := ' Select * From EstIcm ' +
            ' Where coalesce(flgativo,1) = 1 '+
            '   and CodIcm = :CodIcm' +
            '   and TipIcm = :TipIcm';
            with Params do
               begin
                  Params[0].AsString := EdIcmEnt.Text;
                  Params[1].AsString := 'Entrada';
               end;
            Open;

         end;
    end;

    if Trim(quSql.FieldByName('CodIcm').AsString) <> '' then
    begin

      EdNomIcmEnt.Text := quSql.FieldByName('NomIcm').AsString;

      EdPerIcmEnt.Value := quSql.FieldByName('PerIcm').AsFloat;

    end
    else
      fmsgErro('Regra de ICMS Informada não Encontrada ou Inativa.', EdIcmEnt);

  end
  else
  begin

    EdNomIcmEnt.Text := '';

    EdPerIcmEnt.Value := 0;

  end;
end;

procedure TfmManImp.bPsqIpiEntClick(Sender: TObject);
begin
  inherited;

  try

    fmPsqIpi := TfmPsqIpi.Create(Self);

    fmPsqIpi.EstIpi.Close;
    fmPsqIpi.EstIpi.Params[0].AsString := 'Entrada';
    fmPsqIpi.EstIpi.Open;

    fmPsqIpi.ShowModal;

    if Trim(fmPsqIpi.CodIpi) <> '' then
    begin

      EdIpiEnt.Text := fmPsqIpi.CodIpi;
      EdNomIpiEnt.Text := fmPsqIpi.NomIpi;
      EdPerIpiEnt.Value := fmPsqIpi.PerIpi;

    end;

  finally

    FreeAndNil(fmPsqIpi);

  end;

  EdIpiEnt.SetFocus;

end;

procedure TfmManImp.EdIpiEntExit(Sender: TObject);
begin
  inherited;
  if Trim(EdIpiEnt.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := ' Select * From EstIpi ' +
        ' Where coalesce(flgativo,1) = 1 '+
        '   and CodIpi = :CodIpi' +
        '   and TipIpi = :TipIpi';

      with Params do
      begin

        Params[0].AsString := EdIpiEnt.Text;
        Params[1].AsString := 'Entrada';

      end;

      Open;

    end;

    if Trim(quSql.FieldByName('CodIpi').AsString) <> '' then
    begin

      EdNomIpiEnt.Text := quSql.FieldByName('NomIpi').AsString;

      EdPerIpiEnt.Value := quSql.FieldByName('PerIpi').AsFloat;

    end
    else
      fmsgErro('Regra de IPI Informada não Encontrada ou Inativa.', EdIpiEnt);

  end
  else
  begin

    EdNomIpiEnt.Text := '';

    EdPerIpiEnt.Value := 0;

  end;
end;

procedure TfmManImp.bPsqSteClick(Sender: TObject);
begin
  inherited;

  try

    fmPsqStr := TfmPsqStr.Create(Self);

    fmPsqStr.EstStr.Close;
    fmPsqStr.EstStr.Params[0].AsString := 'Entrada';
    fmPsqStr.EstStr.Open;

    fmPsqStr.ShowModal;

    if Trim(fmPsqStr.CodStr) <> '' then
    begin

      EdCodSte.Text := fmPsqStr.CodStr;
      EdNomSte.Text := fmPsqStr.NomStr;

    end;

  finally

    FreeAndNil(fmPsqStr);

  end;

  EdCodSte.SetFocus;

end;

procedure TfmManImp.EdCodSteExit(Sender: TObject);
begin
  inherited;
  if Trim(EdCodSte.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := ' Select * From EstStr ' +
        ' Where coalesce(flgativo,1) = 1 '+
        '   and CodStr = :CodStr' +
        '   and TipStr = :TipStr';

      with Params do
      begin

        Params[0].AsString := EdCodSte.Text;
        Params[1].AsString := 'Entrada';

      end;

      Open;

    end;

    if Trim(quSql.FieldByName('CodStr').AsString) <> '' then
      EdNomSte.Text := quSql.FieldByName('NomStr').AsString
    else
      fmsgErro('Regra de Substituição Tributária Informada não Encontrada ou Inativa.', EdCodSte);

  end
  else
    EdNomSte.Text := '';
end;

procedure TfmManImp.bPsqIcmSaiClick(Sender: TObject);
begin
  inherited;

  try

    fmPsqIcm := TfmPsqIcm.Create(Self);

    fmPsqIcm.EstIcm.Close;
    fmPsqIcm.EstIcm.Params[0].AsString := 'Saida';
    fmPsqIcm.EstIcm.Open;

    fmPsqIcm.ShowModal;

    if Trim(fmPsqIcm.CodIcm) <> '' then
    begin

      EdIcmSai.Text := fmPsqIcm.CodIcm;
      EdNomIcmSai.Text := fmPsqIcm.NomIcm;
      EdPerIcmSai.Value := fmPsqIcm.PerIcm;

    end;

  finally

    FreeAndNil(fmPsqIcm);

  end;

  EdIcmSai.SetFocus;

end;

procedure TfmManImp.EdIcmSaiExit(Sender: TObject);
begin
  inherited;
  if Trim(EdIcmSai.Text) <> '' then
  begin

  with quSql, SQL do
    begin

      {if (StrToIntDef(fmManGDB.BuscaSimples('ESTICM','COUNT','',
          'select count(1) from esticm where codicm = ' + QuotedStr(EdIcmSai.Text) +
          ' and TipIcm = ' + QuotedStr('Saida')),0) > 1) then //Possui mais de uma regra
         ShowMessage('O código informado Possui mais de uma referência. Favor pesquisar através do F1')
      else
         begin}

            Close;
            Text := ' Select * From EstIcm ' +
            ' Where coalesce(flgativo,1) = 1 '+
            '   and CodIcm = :CodIcm' +
            '   and TipIcm = :TipIcm';
            with Params do
               begin
                  Params[0].AsString := EdIcmSai.Text;
                  Params[1].AsString := 'Saida';
               end;
            Open;

         {end;}
    end;

    if Trim(quSql.FieldByName('CodIcm').AsString) <> '' then
    begin

      EdNomIcmSai.Text := quSql.FieldByName('NomIcm').AsString;

      EdPerIcmSai.Value := quSql.FieldByName('PerIcm').AsFloat;

    end
    else
      fmsgErro('Regra de ICMS Informada não Encontrada ou Inativa.', EdIcmSai);

  end
  else
  begin

    EdNomIcmSai.Text := '';

    EdPerIcmSai.Value := 0;

  end;
end;

procedure TfmManImp.bPsqIpiSaiClick(Sender: TObject);
begin
  inherited;

  try

    fmPsqIpi := TfmPsqIpi.Create(Self);

    fmPsqIpi.EstIpi.Close;
    fmPsqIpi.EstIpi.Params[0].AsString := 'Saida';
    fmPsqIpi.EstIpi.Open;

    fmPsqIpi.ShowModal;

    if Trim(fmPsqIpi.CodIpi) <> '' then
    begin

      EdIpiSai.Text := fmPsqIpi.CodIpi;
      EdNomIpiSai.Text := fmPsqIpi.NomIpi;
      EdPerIpiSai.Value := fmPsqIpi.PerIpi;

    end;

  finally

    FreeAndNil(fmPsqIpi);

  end;

  EdIpiSai.SetFocus;

end;

procedure TfmManImp.EdIpiSaiExit(Sender: TObject);
begin
  inherited;
  if Trim(EdIpiSai.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := ' Select * From EstIpi ' +
        ' Where coalesce(flgativo,1) = 1 '+
        '   and CodIpi = :CodIpi' +
        '   and TipIpi = :TipIpi';

      with Params do
      begin

        Params[0].AsString := EdIpiSai.Text;
        Params[1].AsString := 'Saida';

      end;

      Open;

    end;

    if Trim(quSql.FieldByName('CodIpi').AsString) <> '' then
    begin

      EdNomIpiSai.Text := quSql.FieldByName('NomIpi').AsString;

      EdPerIpiSai.Value := quSql.FieldByName('PerIpi').AsFloat;

    end
    else
      fmsgErro('Regra de IPI Informada não Encontrada ou Inativa.', EdIpiSai);

  end
  else
  begin

    EdNomIpiSai.Text := '';

    EdPerIpiSai.Value := 0;

  end;
end;

procedure TfmManImp.bPsqStsClick(Sender: TObject);
begin
  inherited;

  try

    fmPsqStr := TfmPsqStr.Create(Self);

    fmPsqStr.EstStr.Close;
    fmPsqStr.EstStr.Params[0].AsString := 'Saida';
    fmPsqStr.EstStr.Open;

    fmPsqStr.ShowModal;

    if Trim(fmPsqStr.CodStr) <> '' then
    begin

      EdCodSts.Text := fmPsqStr.CodStr;
      EdNomSts.Text := fmPsqStr.NomStr;

    end;

  finally

    FreeAndNil(fmPsqStr);

  end;

  EdCodSts.SetFocus;

end;

procedure TfmManImp.EdCodStsExit(Sender: TObject);
begin
  inherited;
  if Trim(EdCodSts.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := ' Select * From EstStr ' +
        ' Where coalesce(flgativo,1) = 1 '+
        '   and CodStr = :CodStr' +
        '   and TipStr = :TipStr';

      with Params do
      begin

        Params[0].AsString := EdCodSts.Text;
        Params[1].AsString := 'Saida';

      end;

      Open;

    end;

    if Trim(quSql.FieldByName('CodStr').AsString) <> '' then
      EdNomSts.Text := quSql.FieldByName('NomStr').AsString
    else
      fmsgErro('Regra de Substituição Tributária Informada não Encontrada ou Inativa.', EdCodSts);

  end
  else
    EdNomSts.Text := '';
end;

procedure TfmManImp.BbCancClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TfmManImp.BbConfClick(Sender: TObject);
var
  sUpdate, SeqArq, sFiltro, IcmTen, IpiTen, TipSte, IcmTsd, IpiTsd, TipSts: string;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then
  begin

    ActiveControl := nil;

    if fMsg('Atenção !' + #10 + 'Alterações Globais costumam ser MUITO DEMORADAS.' + #10 +
      'Disso Depende a velocidade e a Memoria do seu Servidor, quanto maior for a Seleção de Itens, mais Tende a Demorar.' + #10 +
      'Tem Certeza que Deseja Realizar esta Operação ?', 'S') then
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

      sUpdate := ' Update EstPro Set FLGATU = ' + QuotedStr('U') + ', FlgTrg = ''' + '*' + '''';

      if Trim(EdCodTip.Text) <> '' then
        sUpdate := sUpdate + ' ,CodTip = ''' + EdCodTip.Text + '''';
      if Trim(EdCodCat.Text) <> '' then
        sUpdate := sUpdate + ' ,CodCat = ''' + EdCodCat.Text + '''';
      if Trim(EdCodMrc.Text) <> '' then
        sUpdate := sUpdate + ' ,CodMrc = ''' + EdCodMrc.Text + '''';
      if Trim(EdCodUne.Text) <> '' then
        sUpdate := sUpdate + ' ,CodUne = ''' + EdCodUne.Text + '''';
      if Trim(EdCodUns.Text) <> '' then
        sUpdate := sUpdate + ' ,CodUns = ''' + EdCodUns.Text + '''';
      if Trim(EdCodCom.Text) <> '' then
        sUpdate := sUpdate + ' ,CodCom = ''' + EdCodCom.Text + '''';
      if Trim(EdSimPro.Text) <> '' then
        sUpdate := sUpdate + ' ,SimPro = ''' + EdSimPro.Text + '''';
      if Trim(EdCodst1.Text) <> '' then
        sUpdate := sUpdate + ' ,CodSt1 = ''' + EdCodst1.Text + '''';
      if Trim(edCodCest.Text) <> '' then
        sUpdate := sUpdate + ' ,CEST = ''' + edCodCest.Text + '''';

      if Trim(edFcpEntrada.Text) <> '' then
        sUpdate := sUpdate + ' ,COD_FCP_ENTRADA = ''' + edFcpEntrada.Text + '''';
      if Trim(edFcpSaida.Text) <> '' then
        sUpdate := sUpdate + ' ,COD_FCP_SAIDA = ''' + edFcpSaida.Text + '''';

      if EdQtdEmb.Value > 0 then
        sUpdate := sUpdate + ' ,QtdEmb = ''' + fConvertValor(EdQtdEmb.Text) + '''';
      if EdPesLiq.Value > 0 then
        sUpdate := sUpdate + ' ,PesLiq = ''' + fConvertValor(EdPesLiq.Text) + '''';
      if EdPesBrt.Value > 0 then
        sUpdate := sUpdate + ' ,PesBrt = ''' + fConvertValor(EdPesBrt.Text) + '''';

      if EdQtdVol.Value > 0 then
        sUpdate := sUpdate + ' ,QtdVol = ''' + EdQtdVol.Text + '''';

      if Trim(EdIcmEnt.Text) <> '' then
        sUpdate := sUpdate + ' ,IcmEnt = ''' + EdIcmEnt.Text + ''', IcmTEn = ''' + 'Entrada' + '''';
      if Trim(EdIpiEnt.Text) <> '' then
        sUpdate := sUpdate + ' ,IpiEnt = ''' + EdIpiEnt.Text + ''', IpiTEn = ''' + 'Entrada' + '''';
      if Trim(EdCodSte.Text) <> '' then
        sUpdate := sUpdate + ' ,CodSte = ''' + EdCodSte.Text + ''', TipSte = ''' + 'Entrada' + '''';
      if Trim(EdIcmSai.Text) <> '' then
        sUpdate := sUpdate + ' ,IcmSai = ''' + EdIcmSai.Text + ''', IcmTsd = ''' + 'Saida' + '''';
      if Trim(EdIpiSai.Text) <> '' then
        sUpdate := sUpdate + ' ,IpiSai = ''' + EdIpiSai.Text + ''', IpiTsd = ''' + 'Saida' + '''';
      if Trim(EdCodSts.Text) <> '' then
        sUpdate := sUpdate + ' ,CodSts = ''' + EdCodSts.Text + ''', TipSts = ''' + 'Saida' + '''';
      if Trim(edNCM.Text) <> '' then
        sUpdate := sUpdate + ' ,CODNCM = ''' + edNCM.Text + '''';

      if Pos(',', sUpdate) > 0 then
      begin

        sFiltro := ' Where FlbPro = ''' + ' ' + '''';

        if Trim(EdPsqCodClp.Text) <> '' then
          sFiltro := sFiltro + ' and CodClp = ''' + EdPsqCodClp.Text + '''';
        if Trim(EdPsqCodGru.Text) <> '' then
          sFiltro := sFiltro + ' and CodGru = ''' + EdPsqCodGru.Text + '''';
        if Trim(EdPsqCodSub.Text) <> '' then
          sFiltro := sFiltro + ' and CodSub = ''' + EdPsqCodSub.Text + '''';
        if Trim(EdPsqCodPro.Text) <> '' then
          sFiltro := sFiltro + ' and CodPro = ''' + EdPsqCodPro.Text + '''';
        if Trim(EdPsqCodCat.Text) <> '' then
          sFiltro := sFiltro + ' and CodCat = ''' + EdPsqCodCat.Text + '''';
        if Trim(EdPsqCodTip.Text) <> '' then
          sFiltro := sFiltro + ' and CodTip = ''' + EdPsqCodTip.Text + '''';
        if Trim(EdPsqCodMrc.Text) <> '' then
          sFiltro := sFiltro + ' and CodMrc = ''' + EdPsqCodMrc.Text + '''';
        if Trim(EdPsqCodNcm.Text) <> '' then
          sFiltro := sFiltro + ' and CodNCM = ''' + EdPsqCodNcm.Text + '''';

        if Pos('and', sFiltro) > 0 then
        begin

          fmManGDB.dbMain.StartTransaction;

          try

            with quSQL, SQL do
            begin

              Close;
              Text := sUpdate + sFiltro;
              ExecSQL;

            end;

            fmManGDB.dbMain.Commit;

          except

            fmManGDB.dbMain.Rollback;

            EdPsqCodEmp.SetFocus;

          end;
        end;
      end;

      if Pos(',', sUpdate) > 0 then
      begin

        if Trim(EdIcmEnt.Text) <> '' then
          IcmTen := 'Entrada';
        if Trim(EdIpiEnt.Text) <> '' then
          IpiTen := 'Entrada';
        if Trim(EdCodSte.Text) <> '' then
          TipSte := 'Entrada';

        if Trim(EdIcmSai.Text) <> '' then
          IcmTsd := 'Saida';
        if Trim(EdIpiSai.Text) <> '' then
          IpiTsd := 'Saida';
        if Trim(EdCodSts.Text) <> '' then
          TipSts := 'Saida';

        with quSQL, SQL do
        begin

          Close;
          Text := ' Insert Into EstAtu(AnoAtu,SeqAtu,DteAtu,HreAtu,CodUsu,CodEmp,CodClp,CodGru,CodSub,CodPro,CodCat,CodTip,CodMrc,' +
            '                    AtuCat,AtuTip,AtuMrc,CodUne,CodUns,CodCom,SimPro,QtdEmb,IcmEnt,IcmTen,IpiEnt,IpiTen,CodSte,' +
            '                    TipSte,IcmSai,IcmTsd,IpiSai,IpiTsd,CodSts,TipSts,SeqArq,Cest,COD_FCP_ENTRADA,COD_FCP_SAIDA)' +
            '             Values(:AnoAtu,:SeqAtu,:DteAtu,:HreAtu,:CodUsu,:CodEmp,:CodClp,:CodGru,:CodSub,:CodPro,:CodCat,:CodTip,' +
            '                    :CodMrc,:AtuCat,:AtuTip,:AtuMrc,:CodUne,:CodUns,:CodCom,:SimPro,:QtdEmb,:IcmEnt,:IcmTen,:IpiEnt,' +
            '                    :IpiTen,:CodSte,:TipSte,:IcmSai,:IcmTsd,:IpiSai,:IpiTsd,:CodSts,:TipSts,:SeqArq,:Cest,:COD_FCP_ENTRADA,:COD_FCP_SAIDA)';

          with Params do
          begin

            Params[00].AsInteger := 1;
            Params[01].AsInteger := 1;
            Params[02].AsString := fDateToSQL(Date);
            Params[03].AsString := TimeToStr(Time);
            Params[04].AsInteger := GUsu_Id;

            Params[05].DataType := ftString;
            if Trim(EdPsqCodEmp.Text) <> '' then
              Params[05].Value := EdPsqCodEmp.Text;

            Params[06].DataType := ftString;
            if Trim(EdPsqCodClp.Text) <> '' then
              Params[06].Value := EdPsqCodClp.Text;

            Params[07].DataType := ftString;
            if Trim(EdPsqCodGru.Text) <> '' then
              Params[07].Value := EdPsqCodGru.Text;

            Params[08].DataType := ftString;
            if Trim(EdPsqCodSub.Text) <> '' then
              Params[08].Value := EdPsqCodSub.Text;

            Params[09].DataType := ftString;
            if Trim(EdPsqCodPro.Text) <> '' then
              Params[09].Value := EdPsqCodPro.Text;

            Params[10].DataType := ftString;
            if Trim(EdPsqCodCat.Text) <> '' then
              Params[10].Value := EdPsqCodCat.Text;

            Params[11].DataType := ftString;
            if Trim(EdPsqCodTip.Text) <> '' then
              Params[11].Value := EdPsqCodTip.Text;

            Params[12].DataType := ftString;
            if Trim(EdPsqCodMrc.Text) <> '' then
              Params[12].Value := EdPsqCodMrc.Text;

            Params[13].DataType := ftString;
            if Trim(EdCodCat.Text) <> '' then
              Params[13].Value := EdCodCat.Text;

            Params[14].DataType := ftString;
            if Trim(EdCodTip.Text) <> '' then
              Params[14].Value := EdCodTip.Text;

            Params[15].DataType := ftString;
            if Trim(EdCodMrc.Text) <> '' then
              Params[15].Value := EdCodMrc.Text;

            Params[16].DataType := ftString;
            if Trim(EdCodUne.Text) <> '' then
              Params[16].Value := EdCodUne.Text;

            Params[17].DataType := ftString;
            if Trim(EdCodUns.Text) <> '' then
              Params[17].Value := EdCodUns.Text;

            Params[18].DataType := ftString;
            if Trim(EdCodCom.Text) <> '' then
              Params[18].Value := EdCodCom.Text;

            Params[19].DataType := ftString;
            if Trim(EdSimPro.Text) <> '' then
              Params[19].Value := EdSimPro.Text;

            Params[20].AsFloat := EdQtdEmb.Value;

            Params[21].DataType := ftString;
            if Trim(EdIcmEnt.Text) <> '' then
              Params[21].Value := EdIcmEnt.Text;

            Params[22].DataType := ftString;
            if Trim(IcmTen) <> '' then
              Params[22].Value := IcmTen;

            Params[23].DataType := ftString;
            if Trim(EdIpiEnt.Text) <> '' then
              Params[23].Value := EdIpiEnt.Text;

            Params[24].DataType := ftString;
            if Trim(IpiTen) <> '' then
              Params[24].Value := IpiTen;

            Params[25].DataType := ftString;
            if Trim(EdCodSte.Text) <> '' then
              Params[25].Value := EdCodSte.Text;

            Params[26].DataType := ftString;
            if Trim(TipSte) <> '' then
              Params[26].Value := TipSte;

            Params[27].DataType := ftString;
            if Trim(EdIcmSai.Text) <> '' then
              Params[27].Value := EdIcmSai.Text;

            Params[28].DataType := ftString;
            if Trim(IcmTsd) <> '' then
              Params[28].Value := IcmTsd;

            Params[29].DataType := ftString;
            if Trim(EdIpiSai.Text) <> '' then
              Params[29].Value := EdIpiSai.Text;

            Params[30].DataType := ftString;
            if Trim(IpiTsd) <> '' then
              Params[30].Value := IpiTsd;

            Params[31].DataType := ftString;
            if Trim(EdCodSts.Text) <> '' then
              Params[31].Value := EdCodSts.Text;

            Params[32].DataType := ftString;
            if Trim(TipSts) <> '' then
              Params[32].Value := TipSts;

            Params[33].DataType := ftString;
            Params[33].AsString := SeqArq;

            Params[34].DataType := ftString;
            if Trim(edCodCest.Text) <> '' then
              Params[34].Value := edCodCest.Text;

            Params[35].DataType := ftString;
            if Trim(edFcpEntrada.Text) <> '' then
              Params[35].Value := edFcpEntrada.Text;

            Params[36].DataType := ftString;
            if Trim(edFcpSaida.Text) <> '' then
              Params[36].Value := edFcpSaida.Text;
          end;

          ExecSQL;

        end;
      end;

      fMsg('Operação Realizada com Sucesso.', 'I');

      LimpaControls;

      EdPsqCodEmp.SetFocus;

    end;

  end
  else
    fmsgErro(GMensagem, nil);

end;

procedure TfmManImp.EdPsqCodCatExit(Sender: TObject);
begin
  inherited;
  if Trim(EdPsqCodCat.Text) <> '' then
  begin

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select NomCat From EstCat Where CodCat = ''' + EdPsqCodCat.Text + '''';
      Open;

    end;

    if Trim(quSQL.FieldbyName('NomCat').AsString) <> '' then
      EdPsqNomCat.Text := quSql.FieldByName('NomCat').AsString
    else
      fmsgErro('Categoria Informada não Encontrada.', EdPsqCodCat);

  end
  else
    EdPsqNomCat.Text := 'TODAS';
end;

procedure TfmManImp.EdPsqCodMrcExit(Sender: TObject);
begin
  inherited;
  if Trim(EdPsqCodMrc.Text) <> '' then
  begin

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select NomMrc From EstMrc Where CodMrc = ''' + EdPsqCodMrc.Text + '''';
      Open;

    end;

    if Trim(quSQL.FieldbyName('NomMrc').AsString) <> '' then
      EdPsqNomMrc.Text := quSql.FieldByName('NomMrc').AsString
    else
      fmsgErro('Marca Informada não Encontrada.', EdPsqCodMrc);

  end
  else
    EdPsqNomMrc.Text := 'TODAS';
end;

procedure TfmManImp.bPsqCatClick(Sender: TObject);
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

procedure TfmManImp.bPsqMrcClick(Sender: TObject);
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

procedure TfmManImp.bPsqTip1Click(Sender: TObject);
begin
  inherited;

  try

    fmAuxIni := TfmAuxIni.Create(Self);

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

procedure TfmManImp.bPsqCat1Click(Sender: TObject);
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

procedure TfmManImp.bPsqMrc1Click(Sender: TObject);
begin
  inherited;

  try

    fmAuxIni := TfmAuxIni.Create(Self);

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
    EdSimPro.SetFocus;

end;

procedure TfmManImp.EdCodCatExit(Sender: TObject);
begin
  inherited;
  if Trim(EdCodCat.Text) <> '' then
  begin

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select NomCat From EstCat Where CodCat = ''' + EdCodCat.Text + '''';
      Open;

    end;

    if Trim(quSQL.FieldbyName('NomCat').AsString) <> '' then
      EdNomCat.Text := quSql.FieldByName('NomCat').AsString
    else
      fmsgErro('Categoria Informada não Encontrada.', EdCodCat);

  end
  else
    EdNomCat.Text := ' ';
end;

procedure TfmManImp.EdCodTipExit(Sender: TObject);
begin
  inherited;
  if Trim(EdCodTip.Text) <> '' then
  begin

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select NomTip From EstTip Where CodTip = ''' + EdCodTip.Text + '''';
      Open;

    end;

    if Trim(quSQL.FieldbyName('NomTip').AsString) <> '' then
      EdNomTip.Text := quSql.FieldByName('NomTip').AsString
    else
      fmsgErro('Tipo Informado não Encontrado.', EdCodTip);

  end
  else
    EdNomTip.Text := ' ';
end;

procedure TfmManImp.EdCodMrcExit(Sender: TObject);
begin
  inherited;
  if Trim(EdCodMrc.Text) <> '' then
  begin

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select NomMrc From EstMrc Where CodMrc = ''' + EdCodMrc.Text + '''';
      Open;

    end;

    if Trim(quSQL.FieldbyName('NomMrc').AsString) <> '' then
      EdNomMrc.Text := quSql.FieldByName('NomMrc').AsString
    else
      fmsgErro('Marca Informada não Encontrada.', EdCodMrc);

  end
  else
    EdNomMrc.Text := ' ';
end;

procedure TfmManImp.FormShow(Sender: TObject);
begin
  inherited;

  EdPsqCodClp.Text := '1';

  EdPsqNomClp.Text := 'ACABADO';

  EdPsqCodEmp.SetFocus;

end;

procedure TfmManImp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManImp.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManImp := nil;
end;

procedure TfmManImp.SpeedButton1Click(Sender: TObject);
begin
  inherited;

  try

    fmAuxIni := TfmAuxIni.Create(Self);

    fmAuxIni.TipoPesq := 'ORIGEM';

    fmAuxIni.ShowModal;

    if fmAuxIni.CodSt1 <> '' then
    begin

      EdNomSt1.Text := fmAuxIni.NomSt1;
      EdCodst1.Text := fmAuxIni.CodSt1;

    end;

  finally

    FreeAndNil(fmAuxIni);

  end;

  if Trim(EdCodCat.Text) <> '' then
    EdCodTip.SetFocus;
end;

procedure TfmManImp.EdCodst1Exit(Sender: TObject);
begin
  inherited;
  if Trim(EdCodSt1.Text) <> '' then
  begin

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select NomSt1 From EstSt1 Where CodSt1 = ''' + EdCodst1.Text + '''';
      Open;

    end;

    if Trim(quSQL.FieldbyName('NomSt1').AsString) <> '' then
      EdNomst1.Text := quSql.FieldByName('NomSt1').AsString
    else
      fmsgErro('Origem Informada não Encontrada.', EdNomst1);

  end
  else
    EdNomst1.Text := ' ';
end;

procedure TfmManImp.edFcpEntradaKeyDown(Sender: TObject; var Key: Word;
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

        edFcpEntrada.Text := fmAuxIni.Codfcp;

      end;

    finally

      FreeAndNil(fmAuxIni);

    end;

    {if Trim(EstProCodSts.Value) <> '' then
      EdCodSte.SetFocus;}

  end;
end;

procedure TfmManImp.edFcpEntradaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9', #9, #7]) then
    key := #0;
end;

procedure TfmManImp.edFcpSaidaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9', #9, #7]) then
    key := #0;
end;

procedure TfmManImp.edFcpSaidaKeyDown(Sender: TObject; var Key: Word;
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

        edFcpSaida.Text := fmAuxIni.Codfcp;

      end;

    finally

      FreeAndNil(fmAuxIni);

    end;

    {if Trim(EstProCodSts.Value) <> '' then
      EdCodSte.SetFocus;}

  end;
end;

end.

