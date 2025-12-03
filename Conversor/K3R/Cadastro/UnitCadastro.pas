unit UnitCadastro;

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
CodGru : string;
CodSub : string;
CodPro : string;
icment : string;
begin
  if fMsg('Confirma Conversão dos Dados ?','O') then begin

     bCancelar.Enabled  := False;
     bConfirmar.Enabled := False;

     Label2.Caption := '';

     with Query1,SQL do begin

          close;
          Text := ' Select Count(*) as QtdReg From Lista';
          Open;

          PB5.Max := FieldbyName('QtdReg').AsInteger;

     end;

     PB5.Min      := 0;
     PB5.Position := 0;

     with Query1,SQL do begin

          close;
          Text := ' Select * From Lista Order by Codigo';
          Open;
          First;

     end;
     
     while not Query1.Eof do begin

           Application.ProcessMessages;

           if Trim( Query1.FieldbyName('Codigo').AsString ) <> '' then begin
           
              CodGru := copy(Trim(Query1.FieldbyName('Codigo').AsString),01,3);
              CodSub := copy(Trim(Query1.FieldbyName('Codigo').AsString),05,4);
              CodPro := copy(Trim(Query1.FieldbyName('Codigo').AsString),10,5);

              Label2.Caption := CodGru+ '.' +CodSub+ '.' +CodPro;

              if Trim(Query1.FieldByName('SAIDA').AsString) <> '' then begin

                 if Query1.FieldByName('ENTRADA').AsFloat = 0 then
                    icment := '12 - 1 00'
                 else
                    icment := Trim(Query1.FieldByName('ENTRADA').AsString);

                 quSql.Close;
                 quSql.Params.Clear;
                 quSql.SQL.Clear;
                 quSql.SQL.Add(' Update EstPro set IcmSai = :IcmSai,IcmTsd = :IcmTsd,IcmEnt = :IcmEnt,IcmTen = :IcmTen,FlgTrg = :FlgTrg'+
                               ' Where EstPro.CodClp = :CodClp'+
                               '   and EstPro.CodGru = :CodGru'+
                               '   and EstPro.CodSub = :CodSub'+
                               '   and EstPro.CodPro = :CodPro');

                 quSql.Params[0].Name     := 'IcmSai';
                 quSql.Params[0].DataType := ftString;
                 quSql.Params[0].Value    := Trim(Query1.FieldByName('SAIDA').AsString);

                 quSql.Params[1].Name     := 'IcmTsd';
                 quSql.Params[1].DataType := ftString;
                 quSql.Params[1].Value    := 'Saida';

                 quSql.Params[2].Name     := 'IcmEnt';
                 quSql.Params[2].DataType := ftString;
                 quSql.Params[2].Value    := icment;

                 quSql.Params[3].Name     := 'IcmTen';
                 quSql.Params[3].DataType := ftString;
                 quSql.Params[3].Value    := 'Entrada';

                 quSql.Params[4].Name     := 'FlgTrg';
                 quSql.Params[4].DataType := ftString;
                 quSql.Params[4].Value    := '*';

                 quSql.Params[5].Name     := 'CodClp';
                 quSql.Params[5].DataType := ftString;
                 quSql.Params[5].Value    := '1';

                 quSql.Params[6].Name     := 'CodGru';
                 quSql.Params[6].DataType := ftString;
                 quSql.Params[6].Value    := CodGru;

                 quSql.Params[7].Name     := 'CodSub';
                 quSql.Params[7].DataType := ftString;
                 quSql.Params[7].Value    := CodSub;

                 quSql.Params[8].Name     := 'CodPro';
                 quSql.Params[8].DataType := ftString;
                 quSql.Params[8].Value    := CodPro;

                 quSql.ExecSQL;

              end;
           end;

           PB5.StepBy(1);

           Query1.Next;

     end;

     FrmConversor.Caption := 'Atualização de Cadastro';

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
