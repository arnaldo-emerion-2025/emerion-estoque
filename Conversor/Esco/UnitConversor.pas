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
    ProgressBar: TdxfProgressBar;
    Label1: TLabel;
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
SeqEnf : string;
begin
  if fMsg('Confirma Conversão dos Dados ?','O') then begin

     bCancelar.Enabled  := False;
     bConfirmar.Enabled := False;

     Label2.Caption := '';

     with Query1,SQL do begin

          close;
          Text := ' Select * From Estoque Order by Grupo,SubGrupo,Item';
          Open;
          First;

     end;

     ProgressBar.Max      := Query1.RecordCount;
     ProgressBar.Min      := 0;
     ProgressBar.Position := 0;

     while not Query1.Eof do begin

           Application.ProcessMessages;

           if Trim(Query1.FieldByName('GRUPO').AsString) <> '' then begin

              Label2.Caption := Query1.FieldByName('Grupo').AsString    + '.' +
                                Query1.FieldByName('SubGrupo').AsString + '.' +
                                Query1.FieldByName('Item').AsString;

              if Query1.FieldByName('ESTOQUE').AsFloat > 0 then begin

                 with quSQL,SQL do begin

                      Close;
                      Text := ' Select Count(*) as QtdReg From EstEnf'+
                              ' Where EstEnf.CodClp = :CodClp'+
                              '   and EstEnf.CodGru = :CodGru'+
                              '   and EstEnf.CodSub = :CodSub'+
                              '   and EstEnf.CodPro = :CodPro';

                      with Params do begin

                           Params[0].AsString := '1';
                           Params[1].AsString := Query1.FieldByName('Grupo').AsString;
                           Params[2].AsString := Query1.FieldByName('SubGrupo').AsString;
                           Params[3].AsString := Query1.FieldByName('Item').AsString;

                      end;

                      Open;

                 end;

                 if quSQL.FieldbyName('QtdReg').AsInteger = 0 then begin

                    Randomize;
                    SeqEnf := FNumZeros(Trim( IntToStr(1) ),3)+FNumZeros(Trim( IntToStr(Random(50000)) ),5);

                    with quSQL,SQL do begin

                         Close;
                         Text := ' Insert Into EstEnf(AnoEnf,SeqEnf,CodEmp,CodClp,CodGru,CodSub,CodPro,CodTam,CodCor,DteEnf,DteOpe,HreOpe,CodOpe,'+
                                 '                    ValEnf,QtdEnf,PerIcm,ValIcm,PerIpi,ValIpi,ValCst,CodUsu,FlgEnf,FlgTrg,ValRef,FlgSeq,FlgOpe,ObsEnf)'+
                                 '             Values(:AnoEnf,:SeqEnf,:CodEmp,:CodClp,:CodGru,:CodSub,:CodPro,:CodTam,:CodCor,:DteEnf,:DteOpe,:HreOpe,:CodOpe,'+
                                 '                    :ValEnf,:QtdEnf,:PerIcm,:ValIcm,:PerIpi,:ValIpi,:ValCst,:CodUsu,:FlgEnf,:FlgTrg,:ValRef,:FlgSeq,:FlgOpe,:ObsEnf)';

                         with Params do begin

                              Params[00].AsInteger  := StrToInt(copy(FormatDateTime('dd/mm/yyyy',Date),7,4));
                              Params[01].AsInteger  := 1;
                              Params[02].AsInteger  := 1;
                              Params[03].AsString   := '1';
                              Params[04].AsString   := Query1.FieldByName('Grupo').AsString;
                              Params[05].AsString   := Query1.FieldByName('SubGrupo').AsString;
                              Params[06].AsString   := Query1.FieldByName('Item').AsString;
                              Params[07].AsString   := 'UN';
                              Params[08].AsString   := 'UN';
                              Params[09].AsDateTime := Date;
                              Params[10].AsDateTime := Date;
                              Params[11].AsString   := TimeToStr(Time);
                              Params[12].AsString   := 'EP';
                              Params[13].AsFloat    := 0.10;
                              Params[14].AsFloat    := Query1.FieldByName('ESTOQUE').AsFloat;
                              Params[15].AsFloat    := 0;
                              Params[16].AsFloat    := 0;
                              Params[17].AsFloat    := 0;
                              Params[18].AsFloat    := 0;
                              Params[19].AsFloat    := 0;
                              Params[20].AsInteger  := 1;
                              Params[21].AsString   := SeqEnf;
                              Params[22].AsString   := ' ';
                              Params[23].AsFloat    := 0.10;
                              Params[24].AsString   := ' ';
                              Params[25].AsString   := ' ';
                              Params[26].AsString   := 'BALANCO DE 14/02/2007';

                         end;

                         ExecSQL;

                    end;
                 end;
              end;
           end;

           ProgressBar.StepBy(1);

           Query1.Next;

     end;

     Label2.Caption := '';

     ProgressBar.Max      := 1;
     ProgressBar.Min      := 0;
     ProgressBar.Position := 0;

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
