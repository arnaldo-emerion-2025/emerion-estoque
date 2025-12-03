unit uPsqFcp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Wwdatsrc, DBTables, Wwquery, ExtCtrls, dxExEdtr, dxEdLib, dxDBELib,
  dxColorEdit, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxCntner, dxEditor,
  dxDBColorEdit, StdCtrls;

type
  TfmPsqFcp = class(TForm)
    Label21: TLabel;
    Label28: TLabel;
    dxDBEdit28: TdxDBColorEdit;
    grStr: ThGrid;
    Edpesquisa: TdxColorEdit;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel3: TPanel;
    Label1: TLabel;
    REGRA_FCP: TwwQuery;
    DsStr: TwwDataSource;
    REGRA_FCPID_REGRA_FCP: TIntegerField;
    REGRA_FCPCOD_REGRA_FCP: TStringField;
    REGRA_FCPTIP_FCP: TStringField;
    procedure grStrDblClick(Sender: TObject);
    procedure EdpesquisaChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    ID_REGRA_FCP: string;
  end;

var
  fmPsqFcp: TfmPsqFcp;

implementation

{$R *.DFM}

procedure TfmPsqFcp.grStrDblClick(Sender: TObject);
begin
  ID_REGRA_FCP := REGRA_FCPCOD_REGRA_FCP.AsString;

  Close;
end;

procedure TfmPsqFcp.EdpesquisaChange(Sender: TObject);
begin
   REGRA_FCP.Locate('COD_REGRA_FCP', EdPesquisa.Text, [LoPartialKey]);
end;

procedure TfmPsqFcp.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 27 then
    close;

  if key = 13 then
  begin

    ID_REGRA_FCP := REGRA_FCPCOD_REGRA_FCP.AsString;

    Close;

  end;

  if key = 33 then
    REGRA_FCP.MoveBy(-10); {Page Up}
  if key = 34 then
    REGRA_FCP.MoveBy(10); {Page Down}

  if not (ActiveControl is ThGrid) then
  begin

    if key = 35 then
      REGRA_FCP.Last; {End}
    if key = 36 then
      REGRA_FCP.First; {Home}

    if key = 40 then
      REGRA_FCP.Next; {Para Baixo}
    if key = 38 then
      REGRA_FCP.Prior; {Para Cima}

  end;
end;

end.
