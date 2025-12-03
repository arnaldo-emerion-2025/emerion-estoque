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
    Label1: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label5: TLabel;
    Label16: TLabel;
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
R : integer;
UltCst : real;
SeqEnf,SeqSdf : string;
Grupo,SubGrupo,Item : string;
begin
  if fMsg('Confirma Conversão dos Dados ?','O') then begin

     bCancelar.Enabled  := False;
     bConfirmar.Enabled := False;

     {Conversão da Base de Dados TIPOS}

     FrmConversor.Caption := 'Emerion - Estoque...';

     Label2.Caption := '';

     with Query1,SQL do begin

          close;
          Text := ' Select * From Itens Order by Grupo,SubGrupo,Item';
          Open;
          First;

     end;

     PB5.Max      := Query1.RecordCount;
     PB5.Min      := 0;
     PB5.Position := 0;

     R := 0;

     while not Query1.Eof do begin

           Application.ProcessMessages;

           if Trim(Query1.FieldByName('GRUPO').AsString) <> '' then begin

              Label2.Caption := copy(Query1.FieldByName('GRUPO').AsString,1,3)+ '.' +copy(Query1.FieldByName('SUBGRUPO').AsString,1,4)+ '.' +Query1.FieldByName('ITEM').AsString;

              Grupo    := copy(Query1.FieldByName('GRUPO').AsString,1,3);
              SubGrupo := copy(Query1.FieldbyName('SUBGRUPO').AsString,1,4);
              Item     := Query1.FieldbyName('ITEM').AsString;

              if Query1.FieldbyName('ENTRADA').AsInteger > 0 then begin

                 UltCst := Query1.FieldbyName('CUSTO').AsFloat;

                 if UltCst = 0 then begin

                    with quSQL,SQL do begin

                         Close;
                         Text := ' Select * From EstIte'+
                                 ' Where CodEmp = :CodEmp'+
                                 '   and CodClp = :CodClp'+
                                 '   and CodGru = :CodGru'+
                                 '   and CodSub = :CodSub'+
                                 '   and CodPro = :CodPro';

                         with Params do begin

                              Params[0].AsInteger := 2;
                              Params[1].AsString  := '1';
                              Params[2].AsString  := Grupo;
                              Params[3].AsString  := SubGrupo;
                              Params[4].AsString  := Item;

                         end;

                         Open;

                         UltCst := FieldbyName('VpfIte').AsFloat;

                    end;
                 end;
                 
                 if UltCst > 0 then begin

                    Randomize;
                    SeqEnf := FNumZeros(Trim( IntToStr(1) ),3)+FNumZeros(Trim( IntToStr(Random(50000)) ),5);

                    with quSQL,SQL do begin

                         Close;
                         Text := ' Insert Into EstEnf(AnoEnf,SeqEnf,CodEmp,CodClp,CodGru,CodSub,CodPro,CodTam,CodCor,DteEnf,DteOpe,HreOpe,CodOpe,'+
                                 '                    ValEnf,QtdEnf,PerIcm,ValIcm,PerIpi,ValIpi,ValCst,ClsIpi,CodUsu,FlgEnf,FlgTrg,ValRef,FlgSeq,FlgOpe)'+
                                 '             Values(:AnoEnf,:SeqEnf,:CodEmp,:CodClp,:CodGru,:CodSub,:CodPro,:CodTam,:CodCor,:DteEnf,:DteOpe,:HreOpe,:CodOpe,'+
                                 '                    :ValEnf,:QtdEnf,:PerIcm,:ValIcm,:PerIpi,:ValIpi,:ValCst,:ClsIpi,:CodUsu,:FlgEnf,:FlgTrg,:ValRef,:FlgSeq,:FlgOpe)';

                         with Params do begin

                              Params[00].AsInteger  := StrToInt(copy(FormatDateTime('dd/mm/yyyy',Date),7,4));
                              Params[01].AsInteger  := 1;
                              Params[02].AsInteger  := 2;
                              Params[03].AsString   := '1';
                              Params[04].AsString   := Grupo;
                              Params[05].AsString   := SubGrupo;
                              Params[06].AsString   := Item;
                              Params[07].AsString   := 'UN';
                              Params[08].AsString   := 'UN';
                              Params[09].AsDateTime := Date;
                              Params[10].AsDateTime := Date;
                              Params[11].AsString   := TimeToStr(Time);
                              Params[12].AsString   := 'EP';
                              Params[13].AsFloat    := UltCst;
                              Params[14].AsFloat    := Query1.FieldByName('ENTRADA').AsFloat;
                              Params[15].AsFloat    := 0;
                              Params[16].AsFloat    := 0;
                              Params[17].AsFloat    := 0;
                              Params[18].AsFloat    := 0;
                              Params[19].AsFloat    := 0;
                              Params[20].AsString   := ' ';
                              Params[21].AsInteger  := 1;
                              Params[22].AsString   := SeqEnf;
                              Params[23].AsString   := ' ';
                              Params[24].AsFloat    := UltCst;
                              Params[25].AsString   := ' ';
                              Params[26].AsString   := ' ';

                         end;

                         ExecSQL;

                    end;
                 end;

                 end
              else
                 begin

                 if Query1.FieldbyName('SAIDA').AsInteger > 0 then begin

                    Randomize;
                    SeqSdf := FNumZeros(Trim( IntToStr(1) ),3)+FNumZeros(Trim( IntToStr(Random(50000)) ),5);

                    with quSQL,SQL do begin

                         Close;
                         Text := ' Insert Into EstSdf(AnoSdf,SeqSdf,CodEmp,CodClp,CodGru,CodSub,CodPro,CodTam,CodCor,DteSdf,DteOpe,HreOpe,CodOpe,'+
                                 '                    QtdSdf,CodUsu,FlgSdf,FlgTrg,FlgSeq)'+
                                 '             Values(:AnoSdf,:SeqSdf,:CodEmp,:CodClp,:CodGru,:CodSub,:CodPro,:CodTam,:CodCor,:DteSdf,:DteOpe,:HreOpe,:CodOpe,'+
                                 '                    :QtdSdf,:CodUsu,:FlgSdf,:FlgTrg,:FlgSeq)';

                         with Params do begin

                              Params[00].AsInteger  := StrToInt(copy(FormatDateTime('dd/mm/yyyy',Date),7,4));
                              Params[01].AsInteger  := 1;
                              Params[02].AsInteger  := 2;
                              Params[03].AsString   := '1';
                              Params[04].AsString   := Grupo;
                              Params[05].AsString   := SubGrupo;
                              Params[06].AsString   := Item;
                              Params[07].AsString   := 'UN';
                              Params[08].AsString   := 'UN';
                              Params[09].AsDateTime := Date;
                              Params[10].AsDateTime := Date;
                              Params[11].AsString   := TimeToStr(Time);
                              Params[12].AsString   := 'SA';
                              Params[13].AsFloat    := Query1.FieldByName('SAIDA').AsFloat;
                              Params[14].AsInteger  := 1;
                              Params[15].AsString   := SeqSdf;
                              Params[16].AsString   := ' ';
                              Params[17].AsString   := ' ';

                         end;

                         ExecSQL;

                    end;
                 end;
              end;
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
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TFrmConversor.FormShow(Sender: TObject);
begin
  Label2.Caption := '';
end;

end.
