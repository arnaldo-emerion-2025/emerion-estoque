unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, ComCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Database1: TDatabase;
    UpPro: TUpdateSQL;
    VwaPro: TQuery;
    VwaProCODVWA: TStringField;
    VwaProCODCLP: TStringField;
    VwaProCODGRU: TStringField;
    VwaProCODSUB: TStringField;
    VwaProCODPRO: TStringField;
    VwaProVALVWA: TFloatField;
    quSQL: TQuery;
    Volks: TQuery;
    VolksCODVW: TStringField;
    VolksGRUPO: TSmallintField;
    VolksSUBGRUPO: TSmallintField;
    VolksITEM: TStringField;
    VolksPUNIT: TFloatField;
    Button1: TButton;
    ProgressBar: TProgressBar;
    qrPsq: TQuery;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Bbfuncao, Bbgeral;

{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
var
r : integer;
begin

  with qrPsq,SQL do begin

       Close;
       Text := ' Select Count(*) as Reg From VwaGen';
       Open;

  end;

  Progressbar.Max      := qrPsq.FieldbyName('Reg').AsInteger;
  Progressbar.Min      := 0;
  Progressbar.Position := 0;

  r := 0;

  Volks.First;

  while not Volks.Eof do begin

        if Trim( Volks.FieldbyName('CodVw').AsString ) <> '' then begin

           with quSQL,SQL do begin

                Close;
                Text := ' Select Count(*) as Reg From VwaPro Where CodVwa = '''+ Volks.FieldbyName('CodVw').AsString +'''';
                Open;

           end;

           if quSQL.FieldbyName('Reg').AsInteger = 0 then begin

              with quSQL,SQL do begin

                   Close;
                   Text := ' Select Count(*) as Reg From EstPro'+
                           ' Where CodClp = :CodClp'+
                           '   and CodGru = :CodGru'+
                           '   and CodSub = :CodSub'+
                           '   and CodPro = :CodPro';

                   with Params do begin

                        Params[0].AsString := '1';
                        Params[1].AsString := FNumZeros(IntToStr(Volks.FieldByName('GRUPO').AsInteger),3);
                        Params[2].AsString := FNumZeros(IntToStr(Volks.FieldByName('SUBGRUPO').AsInteger),4);
                        Params[3].AsString := FNumStrZero(Volks.FieldByName('ITEM').AsString);

                   end;

                   Open;

              end;

              if quSQL.FieldbyName('Reg').AsInteger > 0 then begin

                 VwaPro.Append;

                 VwaProCodClp.Value := '1';
                 VwaProCodVwa.Value := Volks.FieldbyName('CodVw').AsString;
                 VwaProCodGru.Value := FNumZeros(IntToStr(Volks.FieldByName('GRUPO').AsInteger),3);
                 VwaProCodSub.Value := FNumZeros(IntToStr(Volks.FieldByName('SUBGRUPO').AsInteger),4);
                 VwaProCodPro.Value := FNumStrZero(Volks.FieldByName('ITEM').AsString);
                 VwaProValVwa.Value := Volks.FieldByName('PUNIT').AsFloat;

                 VwaPro.ApplyUpdates;

              end;
           end;
        end;

        Volks.Next;

        Inc(r);

  end;
end;

end.
