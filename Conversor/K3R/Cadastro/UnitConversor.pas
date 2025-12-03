unit UnitConversor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, StdCtrls, Buttons, ComCtrls, ExtCtrls, Wwquery,
  dxfProgressBar;

type
  TFrmConversor = class(TForm)
    Database1: TDatabase;
    Query3: TQuery;
    quSql: TwwQuery;
    Query2: TQuery;
    qrPsq: TQuery;
    Query1: TQuery;
    PaintBox: TPaintBox;
    bCancelar: TBitBtn;
    bConfirmar: TBitBtn;
    PB5: TdxfProgressBar;
    Label2: TLabel;
    procedure bConfirmarClick(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
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

procedure TFrmConversor.bConfirmarClick(Sender: TObject);
var
R      : integer;
CodGru : string;
CodSub : string;
CodPro : string;
begin
  if fMsg('Confirma Conversão dos Dados ?','O') then begin

     bCancelar.Enabled  := False;
     bConfirmar.Enabled := False;

     Label2.Caption := '';

     with Query1,SQL do begin

          close;
          Text := ' Select * From Price';
          Open;
          First;

     end;

     PB5.Max      := Query1.RecordCount;
     PB5.Min      := 0;
     PB5.Position := 0;

     R := 0;

     while not Query1.Eof do begin

           Application.ProcessMessages;

           CodGru := copy(Trim(Query1.FieldbyName('Codigo').AsString),01,3);
           CodSub := copy(Trim(Query1.FieldbyName('Codigo').AsString),05,4);
           CodPro := copy(Trim(Query1.FieldbyName('Codigo').AsString),10,5);

           Label2.Caption := CodGru+ '.' +CodSub+ '.' +CodPro;

           if Query1.FieldByName('VALOR').AsFloat > 0 then begin

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
              quSql.Params[0].Value    := Query1.FieldByName('VALOR').AsFloat;

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
              
           Inc(R);

           PB5.Position := R;

           Query1.Next;

     end;

     FrmConversor.Caption := 'Emerion Estoque';

     Label2.Caption := '';

     PB5.Max      := 1;
     PB5.Min      := 0;
     PB5.Position := 0;

     bCancelar.Enabled  := True;
     bConfirmar.Enabled := True;

  end;
end;

procedure TFrmConversor.bCancelarClick(Sender: TObject);
begin
  close;
end;

procedure TFrmConversor.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TFrmConversor.FormShow(Sender: TObject);
begin
  Label2.Caption := '';
end;

end.
