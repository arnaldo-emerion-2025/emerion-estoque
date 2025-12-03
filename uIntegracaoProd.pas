unit uIntegracaoProd;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, Buttons, ExtCtrls, Db, DBTables, ComObj, Fpadrao;

type
  TfmIntegracaoProd = class(TfmPadrao)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    RichEdit1: TRichEdit;
    GroupBox2: TGroupBox;
    edXLS: TEdit;
    SpeedButton2: TSpeedButton;
    Label2: TLabel;
    Button2: TButton;
    GroupBox3: TGroupBox;
    edTXT: TEdit;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    Button3: TButton;
    SQL_PROD: TQuery;
    ProgressBar1: TProgressBar;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    procedure GeraXLS;
    procedure DadosProduto;

  public
    { Public declarations }
  end;

var
  fmIntegracaoProd: TfmIntegracaoProd;

implementation

uses Bbfuncao, ManGDB;

{$R *.DFM}

{ TForm1 }

procedure TfmIntegracaoProd.DadosProduto;
var
  strUFEEmp: string;
begin

  strUFEEmp := fmManGDB.BuscaSimples('GEREMP', 'SIGUFE', '1=1');

  SQL_PROD.Active := False;
  SQL_PROD.SQL.Text := 'select ep.codclp||ep.codgru||ep.codsub||ep.codpro Produto, ep.dscpro, eu.icmsub,ep.coduns,'
    + ' ep.ini_reg_st DtIniRegSt'
    + ' from estpro ep '
    + ' join estufe eu on eu.codstr = ep.codsts and eu.tipstr = ep.tipsts ' + ' and eu.sigufe = ' + quotedstr(strUFEEmp)
    + ' where coalesce(ep.codsts ,'''') <> '''' '
    + ' and coalesce(ep.ini_reg_st,''1901-01-01'') > ''1901-01-01'' ';
    //+ ' and eu.sigufe = '+ quotedstr(strUFEEmp);
  SQL_PROD.Active := True;

  SQL_PROD.First;
  SQL_PROD.Last;
  SQL_PROD.First;

  ProgressBar1.Position := 0;
  ProgressBar1.Max := SQL_PROD.RecordCount;
  ProgressBar1.Min := 0;

end;

procedure TfmIntegracaoProd.GeraXLS;
var
  Excel: variant;
  Linha: integer;

  strCodPro, DescPro, strAliq, strUnidade, strDia, strMes, strAno: string;
  strNBM, strGrupo, strFDia, strFMes, strFAno, strAliqRed: string;
begin

  if Trim(edXLS.Text) <> '' then
  begin
    DadosProduto;


    try
      if not SQL_PROD.IsEmpty then
      begin
        Excel := CreateOleObject('Excel.Application');
        {Excel.Workbooks.Add;}
        try
          Excel.Visible := False;
          Excel.WorkBooks.Add;
        {Excel.Cells[1, 1].Font.Bold := True;
        Excel.Cells[1, 1] := 'Integração';}

          Excel.Cells[1, 1].Font.Bold := True;
          Excel.Cells[1, 1] := 'Cód.Produto';
          Excel.Cells[1, 2].Font.Bold := True;
          Excel.Cells[1, 2] := 'NBM';
          Excel.Cells[1, 3].Font.Bold := True;
          Excel.Cells[1, 3] := 'Grupo';
          Excel.Cells[1, 4].Font.Bold := True;
          Excel.Cells[1, 4] := 'Descrição';
          Excel.Cells[1, 5].Font.Bold := True;
          Excel.Cells[1, 5] := 'Aliquota';
          Excel.Cells[1, 6].Font.Bold := True;
          Excel.Cells[1, 6] := 'Unidade';
          Excel.Cells[1, 7].Font.Bold := True;
          Excel.Cells[1, 7] := 'Dia Inicial';
          Excel.Cells[1, 8].Font.Bold := True;
          Excel.Cells[1, 8] := 'Mês Inicial';
          Excel.Cells[1, 9].Font.Bold := True;
          Excel.Cells[1, 9] := 'Ano Inicial';
          Excel.Cells[1, 10].Font.Bold := True;
          Excel.Cells[1, 10] := 'Dia Final';
          Excel.Cells[1, 11].Font.Bold := True;
          Excel.Cells[1, 11] := 'Mês Final';
          Excel.Cells[1, 12].Font.Bold := True;
          Excel.Cells[1, 12] := 'Ano Final';
          Excel.Cells[1, 13].Font.Bold := True;
          Excel.Cells[1, 13] := 'Aliquota Reduzida';

          Linha := 2;

          try
            fmIntegracaoProd.Height := 410;

            while not SQL_PROD.Eof do
            begin
        //Campos
              strCodPro := SQL_PROD.FieldByName('Produto').AsString + ' ';

              DescPro := Trim(SQL_PROD.FieldByName('dscpro').AsString);
              DescPro := DescPro + Replicate(' ', 100 - length(DescPro));
              DescPro := copy(DescPro, 1, 100);

              strAliq := formatFloat('0.000', SQL_PROD.FieldByName('icmsub').AsFloat);
              strAliq := StringReplace(strAliq, ',', '', []);
              strAliq := Replicate(' ', 6 - length(strAliq)) + strAliq;
              strAliq := copy(strAliq, 1, 6);

              strUnidade := Trim(SQL_PROD.FieldByName('coduns').AsString);
              strUnidade := strUnidade + Replicate(' ', 3 - length(strUnidade));
              strUnidade := copy(strUnidade, 1, 3);

              strDia := FormatDateTime('dd', SQL_PROD.FieldByName('DtIniRegSt').AsDateTime);
              strMes := FormatDateTime('MM', SQL_PROD.FieldByName('DtIniRegSt').AsDateTime);
              strAno := FormatDateTime('yyyy', SQL_PROD.FieldByName('DtIniRegSt').AsDateTime);

        //Campos que ficarão em branco por dafault
              strNBM := Replicate(' ', 13);
              strGrupo := Replicate(' ', 3);
              strFDia := '31';
              strFMes := '12';
              strFAno := '2099';
              strAliqRed := Replicate(' ', 7);

              Excel.WorkBooks[1].Sheets[1].Cells[Linha, 1] := '''' + strCodPro;
              Excel.WorkBooks[1].Sheets[1].Cells[Linha, 2] := strNBM;
              Excel.WorkBooks[1].Sheets[1].Cells[Linha, 3] := strGrupo;
              Excel.WorkBooks[1].Sheets[1].Cells[Linha, 4] := DescPro;
              Excel.WorkBooks[1].Sheets[1].Cells[Linha, 5] := strAliq;
              Excel.WorkBooks[1].Sheets[1].Cells[Linha, 6] := strUnidade;
              Excel.WorkBooks[1].Sheets[1].Cells[Linha, 7] := '''' + strDia;
              Excel.WorkBooks[1].Sheets[1].Cells[Linha, 8] := strMes;
              Excel.WorkBooks[1].Sheets[1].Cells[Linha, 9] := strAno;
              Excel.WorkBooks[1].Sheets[1].Cells[Linha, 10] := strFDia;
              Excel.WorkBooks[1].Sheets[1].Cells[Linha, 11] := strFMes;
              Excel.WorkBooks[1].Sheets[1].Cells[Linha, 12] := strFAno;
              Excel.WorkBooks[1].Sheets[1].Cells[Linha, 13] := strAliqRed;

              inc(Linha);
              SQL_PROD.Next;
              ProgressBar1.Position := ProgressBar1.Position + 1;
            end;
          finally
            fmIntegracaoProd.Height := 370;
          end;


          Excel.WorkBooks[1].Sheets[1].SaveAs(edXLS.Text);
        finally
          FreeAndNil(Excel);
        end;
      end;
    except
      on E: exception do
      begin
        showmessage('Ocorreu erro ao executar a transferência. ' + E.Message);
      end;
    end;
  end
  else
  begin
    messagebox(handle, pchar('Obrigatório informar nome do arquivo xls'), 'Validação de integração', MB_OK);
  end;
end;

procedure TfmIntegracaoProd.SpeedButton2Click(Sender: TObject);
begin
  SaveDialog1.Filter := 'XLS - Excel|*.xls';
  SaveDialog1.Title := 'Salvar arquivo XLS';
  SaveDialog1.FileName := 'TesteProd.xls';
  if SaveDialog1.Execute then
  begin
    edXLS.Text := SaveDialog1.FileName;
  end;
end;

procedure TfmIntegracaoProd.SpeedButton1Click(Sender: TObject);
begin
  SaveDialog1.Filter := 'XLS - Text|*.txt';
  SaveDialog1.Title := 'Salvar arquivo TXT';
  if SaveDialog1.Execute then
  begin
    edTXT.Text := SaveDialog1.FileName;
  end;
end;

procedure TfmIntegracaoProd.Button2Click(Sender: TObject);
begin
  GeraXLS;
end;

procedure TfmIntegracaoProd.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TfmIntegracaoProd.FormDestroy(Sender: TObject);
begin
  fmIntegracaoProd := nil;
end;

end.

