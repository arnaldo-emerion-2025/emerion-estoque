unit UnitConversor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, StdCtrls, Buttons, ComCtrls, ExtCtrls, Wwquery,
  dxfProgressBar;

type
  TFrmConversor = class(TForm)
    dbMain: TDatabase;
    quSql: TwwQuery;
    EstQte: TQuery;
    PaintBox: TPaintBox;
    bCancelar: TBitBtn;
    bConfirmar: TBitBtn;
    progressbar: TdxfProgressBar;
    Label15: TLabel;
    Label2: TLabel;
    EstQteCODEMP: TIntegerField;
    EstQteCODCLP: TStringField;
    EstQteCODGRU: TStringField;
    EstQteCODSUB: TStringField;
    EstQteCODPRO: TStringField;
    EstQteCODTAM: TStringField;
    EstQteCODCOR: TStringField;
    EstQteCODBAR: TIntegerField;
    EstQteCBAQTE: TStringField;
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
  CodBar : string;
  IniEan : string;
begin
  if fMsg('Confirma Operação ?','O') then begin

     bCancelar.Enabled  := False;
     bConfirmar.Enabled := False;

     Label2.Caption := '';

     with quSQL,SQL do begin

          close;
          Text := ' Select IniEan From EstPar';
          Open;

          IniEan := FieldbyName('IniEan').AsString;

     end;
     
     with quSQL,SQL do begin

          close;
          Text := ' Select Count(*) as QtdReg From EstQte';
          Open;

     end;

     progressbar.Max      := quSQL.FieldbyName('QtdReg').AsInteger;
     progressbar.Min      := 0;
     progressbar.Position := 0;

     EstQte.Close;
     EstQte.Params[0].AsString := '1';
     EstQte.Open;
     EstQte.First;

     while not EstQte.Eof do begin

           Label2.Caption := EstQteCodGru.Value+ '.' +EstQteCodSub.Value+ '.' +EstQteCodPro.Value;

           if EstQteCodBar.Value > 0 then begin

              CodBar := fGeraCB2(IniEan+fNumZeros(IntToStr(EstQteCodBar.Value),5));

              with quSQL,SQL do begin

                   Close;
                   Text := ' Select Count(*) as QtdReg From EstQte'+
                           ' Where EstQte.CodEmp = '+ QuotedStr(IntToStr(EstQteCodEmp.Value)) +
                           '   and EstQte.CodClp = '+ QuotedStr(EstQteCodClp.Value) +
                           '   and EstQte.CodGru = '+ QuotedStr(EstQteCodGru.Value) +
                           '   and EstQte.CodSub = '+ QuotedStr(EstQteCodSub.Value) +
                           '   and EstQte.CodPro = '+ QuotedStr(EstQteCodPro.Value) +
                           '   and EstQte.CodTam = '+ QuotedStr(EstQteCodTam.Value) +
                           '   and EstQte.CodCor = '+ QuotedStr(EstQteCodCor.Value) +
                           '   and EstQte.CbaQte = '+ QuotedStr(CodBar) ;
                   Open;

              end;

              if quSQL.FieldbyName('QtdReg').AsInteger = 0 then begin

                 with quSQL,SQL do begin

                      Close;
                      Text := ' Update EstQte set EstQte.CbaQte = '+ QuotedStr(CodBar) +
                              ' Where EstQte.CodEmp = '+ QuotedStr(IntToStr(EstQteCodEmp.Value)) +
                              '   and EstQte.CodClp = '+ QuotedStr(EstQteCodClp.Value) +
                              '   and EstQte.CodGru = '+ QuotedStr(EstQteCodGru.Value) +
                              '   and EstQte.CodSub = '+ QuotedStr(EstQteCodSub.Value) +
                              '   and EstQte.CodPro = '+ QuotedStr(EstQteCodPro.Value) +
                              '   and EstQte.CodTam = '+ QuotedStr(EstQteCodTam.Value) +
                              '   and EstQte.CodCor = '+ QuotedStr(EstQteCodCor.Value) ;
                      ExecSQL;

                 end;
              end;
           end;

           progressbar.StepBy(1);
           
           EstQte.Next;

     end;

     Label2.Caption := '';

     Progressbar.Position := 0;

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
