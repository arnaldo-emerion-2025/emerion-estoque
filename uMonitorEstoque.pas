unit uMonitorEstoque;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwquery, Wwdatsrc, Grids, Wwdbigrd, Wwdbgrid, hGrid,
  StdCtrls, Buttons, dxCntner, dxEditor, dxEdLib, dxColorEdit, DBGrids,
  Fpadrao, Bbgeral, ComCtrls, Menus, dxTL, dxDBCtrl, dxDBGrid;

type
  TSaveMethod = procedure(const FileName: string; ASaveAll: Boolean) of object;

  TfrmMonitorEstoque = class(TfmPadrao)
    dsMonitor_Estoques: TwwDataSource;
    qMonitor_Estoques: TwwQuery;
    Label112: TLabel;
    EdPsqCodMrc: TdxColorEdit;
    bPsqMrc: TSpeedButton;
    EdPsqNomMrc: TdxColorEdit;
    Label48: TLabel;
    EdPsqCodGru: TdxColorEdit;
    bPsqGru: TSpeedButton;
    EdPsqNomGru: TdxColorEdit;
    Label49: TLabel;
    EdPsqCodSub: TdxColorEdit;
    bPsqSub: TSpeedButton;
    EdPsqNomSub: TdxColorEdit;
    Label50: TLabel;
    EdPsqCodPro: TdxColorEdit;
    Label1: TLabel;
    EdPsqRefPro: TdxColorEdit;
    bPesquisa: TBitBtn;
    StatusBar1: TStatusBar;
    PopUpMenu: TPopupMenu;
    Exportarpara1: TMenuItem;
    HTML: TMenuItem;
    Excel: TMenuItem;
    XML: TMenuItem;
    SaveDialog: TSaveDialog;
    grPro: TdxDBGrid;
    grProDSCPRO: TdxDBGridMaskColumn;
    grProREFPRO: TdxDBGridMaskColumn;
    grProNOMMRC: TdxDBGridMaskColumn;
    grProID: TdxDBGridMaskColumn;
    grProCODGRU: TdxDBGridMaskColumn;
    grProCODSUB: TdxDBGridMaskColumn;
    grProCODPRO: TdxDBGridMaskColumn;
    grProFILIAL_01: TdxDBGridMaskColumn;
    grProFILIAL_02: TdxDBGridMaskColumn;
    grProFILIAL_03: TdxDBGridMaskColumn;
    grProFILIAL_04: TdxDBGridMaskColumn;
    grProFILIAL_05: TdxDBGridMaskColumn;
    grProFILIAL_06: TdxDBGridMaskColumn;
    grProFILIAL_07: TdxDBGridMaskColumn;
    grProFILIAL_08: TdxDBGridMaskColumn;
    quSql: TwwQuery;    procedure FormCreate(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure bPsqMrcClick(Sender: TObject);
    procedure bPsqGruClick(Sender: TObject);
    procedure bPsqSubClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdPsqCodProExit(Sender: TObject);
    procedure EdPsqCodMrcKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdPsqCodGruKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdPsqCodSubKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qMonitor_EstoquesAfterOpen(DataSet: TDataSet);
    procedure HTMLClick(Sender: TObject);
    procedure ExcelClick(Sender: TObject);
    procedure XMLClick(Sender: TObject);
    procedure EdPsqCodGruExit(Sender: TObject);
    procedure EdPsqCodSubExit(Sender: TObject);
    procedure EdPsqCodMrcExit(Sender: TObject);
  private
    { Private declarations }
    sBase: String;

    procedure Save(ADefaultExt, AFilter, AFileName: string; AMethod: TSaveMethod);
  public
    { Public declarations }
  end;

var
  frmMonitorEstoque: TfrmMonitorEstoque;

implementation

uses AuxIni;

{$R *.DFM}

procedure TfrmMonitorEstoque.Save(ADefaultExt, AFilter, AFileName: string; AMethod: TSaveMethod);
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

procedure TfrmMonitorEstoque.FormCreate(Sender: TObject);
begin
   sBase := 'select p.dscpro, p.refpro, mrc.nommrc, m.* from MON_EST_EST_ATUAL m' +
            ' inner join estpro p on p.codgru = m.codgru and' +
                       ' p.codsub = m.codsub and' +
                       ' p.codpro = m.codpro' +
            ' left join estmrc mrc on p.codmrc = mrc.codmrc' +
            ' where 1 = 1';
end;

procedure TfrmMonitorEstoque.bPesquisaClick(Sender: TObject);
var
   sFiltro: String;
begin
   sFiltro := '';

   if(Trim(EdPsqCodMrc.Text) <> '') then
      sFiltro := Sfiltro + ' and mrc.CODMRC = ' + EdPsqCodMrc.Text;

   if(Trim(EdPsqCodGru.Text) <> '') then
      sFiltro := sFiltro + ' and m.codgru = ' + QuotedStr(EdPsqCodGru.Text);

   if(Trim(EdPsqCodSub.Text) <> '') then
      sFiltro := sFiltro + ' and m.codsub = ' + QuotedStr(EdPsqCodSub.Text);

   if(Trim(EdPsqCodSub.Text) <> '') then
      sFiltro := sFiltro + ' and m.codsub = ' + QuotedStr(EdPsqCodSub.Text);

   if(Trim(EdPsqCodPro.Text) <> '') then
      sFiltro := sFiltro + ' and p.codpro = ' + QuotedStr(EdPsqCodPro.Text);

   if(Trim(EdPsqRefPro.Text) <> '') then
      sFiltro := sFiltro + ' and p.refPro = ' + QuotedStr(EdPsqRefPro.Text);

   qMonitor_Estoques.Active := False;
   qMonitor_Estoques.sql.text := sBase + sFiltro;
   qMonitor_Estoques.Active := True;
end;

procedure TfrmMonitorEstoque.bPsqMrcClick(Sender: TObject);
begin
try

    fmAuxIni := TfmAuxIni.Create(Self);

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
end;

procedure TfrmMonitorEstoque.bPsqGruClick(Sender: TObject);
begin

  try

    fmAuxIni := TfmAuxIni.Create(Self);

    if Trim(EdPsqCodMrc.Text) <> '' then
      fmAuxIni.CodMrc := StrToInt(EdPsqCodMrc.Text);

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
end;

procedure TfrmMonitorEstoque.bPsqSubClick(Sender: TObject);
begin
  try

    fmAuxIni := TfmAuxIni.Create(Self);

    if Trim(EdPsqCodGru.Text) <> '' then
      fmAuxIni.CodGru := EdPsqCodGru.Text;
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
end;

procedure TfrmMonitorEstoque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmMonitorEstoque.EdPsqCodProExit(Sender: TObject);
begin
  if EdPsqCodPro.Text <> '' then
    EdPsqCodPro.Text := FNumStrZero(EdPsqCodPro.Text);
end;

procedure TfrmMonitorEstoque.EdPsqCodMrcKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   if (key = VK_F1) then
      bPsqMrc.Click;
end;

procedure TfrmMonitorEstoque.EdPsqCodGruKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   if (key = VK_F1) then
      bPsqGru.Click;
end;

procedure TfrmMonitorEstoque.EdPsqCodSubKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   if (key = VK_F1) then
      bPsqSub.Click;
end;

procedure TfrmMonitorEstoque.qMonitor_EstoquesAfterOpen(DataSet: TDataSet);
begin
  inherited;
   StatusBar1.Panels[1].Text := 'Quantidade de Itens: ' + FormatFloat('00000', qMonitor_Estoques.RecordCount);
end;

procedure TfrmMonitorEstoque.HTMLClick(Sender: TObject);
begin
  inherited;
  Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'Relação Geral de Estoque.htm', grPro.SaveToHTML);
end;

procedure TfrmMonitorEstoque.ExcelClick(Sender: TObject);
begin
  inherited;
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Relação Geral de Estoque.xls', grPro.SaveToXLS);
end;

procedure TfrmMonitorEstoque.XMLClick(Sender: TObject);
begin
  inherited;
  Save('xml', 'XML File (*.xml)|*.xml', 'Relação Geral de Estoque.xml', grPro.SaveToXML);
end;

procedure TfrmMonitorEstoque.EdPsqCodGruExit(Sender: TObject);
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

      EdPsqNomGru.Text := FieldByName('NomGru').AsString;

    end;

  end
  else
    EdPsqNomGru.Text := '';
end;

procedure TfrmMonitorEstoque.EdPsqCodSubExit(Sender: TObject);
begin
  if (EdPsqCodSub.Text <> '') and (EdPsqCodGru.Text <> '') then
  begin

    EdPsqCodSub.Text := FNumZeros(EdPsqCodSub.Text, 4);

    with quSql, SQL do
    begin

      Close;
      Text := ' Select NomSub From EstSub ' +
        ' Where CodGru = ''' + EdPsqCodGru.Text + '''' +
        '   and CodSub = ''' + EdPsqCodSub.Text + '''';
      Open;

      EdPsqNomSub.Text := FieldByName('NomSub').AsString;

    end;

  end
  else
    EdPsqNomSub.Text := '';
end;

procedure TfrmMonitorEstoque.EdPsqCodMrcExit(Sender: TObject);
begin
  if Trim(EdPsqCodMrc.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := ' Select NomMrc From EstMrc Where CodMrc = ''' + EdPsqCodMrc.Text + '''';
      Open;

      EdPsqNomMrc.Text := FieldByName('NomMrc').AsString;

    end;

  end
  else
    EdPsqNomMrc.Text := '';
end;

end.
