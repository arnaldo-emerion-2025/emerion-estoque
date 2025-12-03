unit UnitConversor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, StdCtrls, Buttons, ComCtrls, ExtCtrls, Wwquery,
  dxfProgressBar, Grids;

type
  TFrmConversor = class(TForm)
    dbMain: TDatabase;
    quSql: TwwQuery;
    PaintBox: TPaintBox;
    ProgressBar: TdxfProgressBar;
    pnCodIte1: TLabel;
    OpenDialog1: TOpenDialog;
    bConfirmar: TButton;
    StringGrid1: TStringGrid;
    pnCodIte2: TLabel;
    pnCodIte3: TLabel;
    pnCodIte4: TLabel;
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bConfirmarClick(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  FrmConversor: TFrmConversor;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag;

{$R *.DFM}

Function LimpaStr(Texto: string): string;
var
i,num : integer;
linha : string;
begin

  num := Length(TrimLeft(TrimRight(Texto)));

  linha := '';

  for i := 1 to num do begin
      if (copy(Texto,i,1) <> '.') and (copy(Texto,i,1) <> '-') and (copy(Texto,i,1) <> '/') then
          linha := linha + copy(Texto,i,1);
  end;

  Result := linha;

end;

procedure TFrmConversor.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TFrmConversor.FormShow(Sender: TObject);
begin
  pnCodIte1.Caption := '';
  pnCodIte2.Caption := '';
  pnCodIte3.Caption := '';
  pnCodIte4.Caption := '';
end;

procedure TFrmConversor.bConfirmarClick(Sender: TObject);
var
  i      : integer;
  CodGru : string;
  CodSub : string;
  CodPro : string;
begin
  if OpenDialog1.Execute then begin

     fXlsToStringGrid(StringGrid1,OpenDialog1.FileName);

     bConfirmar.Enabled := False;

     ProgressBar.Min      := 0;
     ProgressBar.Position := 0;

     ProgressBar.Max      := StringGrid1.RowCount - 1;

     pnCodIte1.Caption := '';
     pnCodIte2.Caption := '';
     pnCodIte3.Caption := '';
     pnCodIte4.Caption := '';

     for i := 1 to StringGrid1.RowCount -1 do begin

         pnCodIte1.Caption := StringGrid1.Cells[0,i];
         pnCodIte2.Caption := StringGrid1.Cells[1,i];
         pnCodIte3.Caption := StringGrid1.Cells[2,i];
         pnCodIte4.Caption := FormatFloat('###,###,##0.000000',StrToFloat(StringGrid1.Cells[3,i]));

         if Trim(StringGrid1.Cells[0,i]) <> '' then begin

            CodGru := copy(StringGrid1.Cells[0,i],01,03);
            CodSub := copy(StringGrid1.Cells[0,i],05,04);
            CodPro := copy(StringGrid1.Cells[0,i],10,05);

            if StrToFloat(StringGrid1.Cells[3,i]) > 0 then begin

               quSql.Close;
               quSql.Params.Clear;
               quSql.SQL.Clear;
               quSql.SQL.Add(' Update EstPro set ValImp = :ValImp, Flgtrg = :FlgTrg'+
                             ' Where EstPro.CodClp = :CodClp'+
                             '   and EstPro.CodGru = :CodGru'+
                             '   and EstPro.CodSub = :CodSub'+
                             '   and EstPro.CodPro = :CodPro');

               quSql.Params[0].Name     := 'ValImp';
               quSql.Params[0].DataType := ftFloat;
               quSql.Params[0].Value    := StrToFloat(StringGrid1.Cells[3,i]);

               quSql.Params[1].Name     := 'FlgTrg';
               quSql.Params[1].DataType := ftString;
               quSql.Params[1].Value    := '*';

               quSql.Params[2].Name     := 'CodClp';
               quSql.Params[2].DataType := ftString;
               quSql.Params[2].Value    := '1';

               quSql.Params[3].Name     := 'CodGru';
               quSql.Params[3].DataType := ftString;
               quSql.Params[3].Value    := CodGru;

               quSql.Params[4].Name     := 'CodSub';
               quSql.Params[4].DataType := ftString;
               quSql.Params[4].Value    := CodSub;

               quSql.Params[5].Name     := 'CodPro';
               quSql.Params[5].DataType := ftString;
               quSql.Params[5].Value    := CodPro;

               quSql.ExecSQL;

            end;
         end;

         Application.ProcessMessages;

         ProgressBar.StepBy(1);

     end;

     pnCodIte1.Caption := '';
     pnCodIte2.Caption := '';
     pnCodIte3.Caption := '';
     pnCodIte4.Caption := '';

     bConfirmar.Enabled := True;

     ProgressBar.Position := 0;

     close;

  end;
end;

end.
