unit ManPri;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, StdCtrls, Buttons, ComCtrls, ExtCtrls, Wwquery,
  dxfProgressBar;

type
  TfmConversor = class(TForm)
    Database1: TDatabase;
    Query3: TQuery;
    quSql: TwwQuery;
    Query2: TQuery;
    qrPsq: TQuery;
    qrLista: TQuery;
    PaintBox: TPaintBox;
    bCancelar: TBitBtn;
    bConfirmar: TBitBtn;
    ProgressBar: TdxfProgressBar;
    Label1: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    pnCodIte: TLabel;
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
  fmConversor: TfmConversor;

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
      if (copy(Texto,i,1) <> '.') and (copy(Texto,i,1) <> '-') and (copy(Texto,i,1) <> '/') then linha := linha + copy(Texto,i,1);
  end;

  Result := linha;

end;

procedure TfmConversor.bConfirmarClick(Sender: TObject);
var
r       : integer;
TotLan  : real;
CstLan  : real;
Linha   : string;
SeqEnf  : string;
SeqSdf  : string;
CodGru  : string;
CodSub  : string;
CodPro  : string;
Codigo  : string;
TotEnc  : string;
TotQtd  : string;
TotDif  : string;
ArqTxt1 : TextFile;
ArqTxt2 : TextFile;
begin
  if fMsg('Confirma Conversão dos Dados ?','O') then begin

     bCancelar.Enabled  := False;
     bConfirmar.Enabled := False;

     fmConversor.Caption := 'Emerion - Estoque...';

     pnCodIte.Caption := '';

     with qrLista,SQL do begin

          close;
          Text := ' Select * From Balanco Order by Codigo';
          Open;
          First;

     end;

     AssignFile(ArqTxt1,'C:\Emerion\ListaIt1.Txt');

     Rewrite(ArqTxt1);

     Writeln(ArqTxt1,'ITEM           DESCRICAO                                ESTOQUE ANTERIOR ESTOQUE ATUAL DIF LANCADA T');
     Writeln(ArqTxt1,'-------------- ---------------------------------------- ---------------- ------------- ----------- -');

     AssignFile(ArqTxt2,'C:\Emerion\ListaIt2.Txt');

     Rewrite(ArqTxt2);

     Writeln(ArqTxt2,'ITEM           DESCRICAO                                ESTOQUE ANTERIOR ESTOQUE ATUAL');
     Writeln(ArqTxt2,'-------------- ---------------------------------------- ---------------- -------------');

     ProgressBar.Max      := qrLista.RecordCount;
     ProgressBar.Min      := 0;
     ProgressBar.Position := 0;

     r := 0;

     while not qrLista.Eof do begin

           Application.ProcessMessages;

           Codigo := qrLista.FieldbyName('Codigo').AsString;

           CodGru := Trim( copy(Codigo,1,pos('.',Codigo) - 1) );

           Codigo := copy(Codigo,pos('.',Codigo) + 1,15);

           CodSub := Trim( copy(Codigo,1,pos('.',Codigo) - 1) );

           Codigo := copy(Codigo,pos('.',Codigo) + 1,15);

           CodPro := Trim( copy(Codigo,1,15) );

           if Trim(Codigo) <> '' then begin

              pnCodIte.Caption := qrLista.FieldbyName('Codigo').AsString;

              //  Estoque - Fiscal //

              with quSQL,SQL do begin

                   Close;
                   Text := ' Select QtdIte,VpfIte From EstIte'+
                           ' Where EstIte.CodEmp = :CodEmp'+
                           '   and EstIte.CodClp = :CodClp'+
                           '   and EstIte.CodGru = :CodGru'+
                           '   and EstIte.CodSub = :CodSub'+
                           '   and EstIte.CodPro = :CodPro';

                   with Params do begin

                        Params[0].AsInteger := 1;
                        Params[1].AsString  := '1';
                        Params[2].AsString  := CodGru;
                        Params[3].AsString  := CodSub;
                        Params[4].AsString  := CodPro;

                   end;

                   Open;

                   CstLan := quSQL.FieldbyName('VPFITE').AsFloat;

              end;

              if qrLista.FieldbyName('TOTAL').AsFloat > quSQL.FieldbyName('QTDITE').AsFloat then begin

                 TotLan := fRound(qrLista.FieldbyName('TOTAL').AsFloat - quSQL.FieldbyName('QTDITE').AsFloat,4);

                 if CstLan > 0 then begin

                    Randomize;
                    SeqEnf := FNumZeros(Trim( IntToStr(1) ),3)+FNumZeros(Trim( IntToStr(Random(50000)) ),5);

                    with quSQL,SQL do begin

                         Close;
                         Text := ' Insert Into EstEnf(AnoEnf,SeqEnf,CodEmp,CodClp,CodGru,CodSub,CodPro,CodTam,CodCor,DteEnf,DteOpe,HreOpe,CodOpe,'+
                                 '                    ValEnf,QtdEnf,PerIcm,ValIcm,PerIpi,ValIpi,ValCst,ClsIpi,CodUsu,FlgEnf,FlgTrg,ValRef,FlgSeq,FlgOpe,ObsEnf)'+
                                 '             Values(:AnoEnf,:SeqEnf,:CodEmp,:CodClp,:CodGru,:CodSub,:CodPro,:CodTam,:CodCor,:DteEnf,:DteOpe,:HreOpe,:CodOpe,'+
                                 '                    :ValEnf,:QtdEnf,:PerIcm,:ValIcm,:PerIpi,:ValIpi,:ValCst,:ClsIpi,:CodUsu,:FlgEnf,:FlgTrg,:ValRef,:FlgSeq,:FlgOpe,:ObsEnf)';

                         with Params do begin

                              Params[00].AsInteger  := StrToInt(copy(FormatDateTime('dd/mm/yyyy',Date),7,4));
                              Params[01].AsInteger  := 1;
                              Params[02].AsInteger  := 5;
                              Params[03].AsString   := '1';
                              Params[04].AsString   := CodGru;
                              Params[05].AsString   := CodSub;
                              Params[06].AsString   := CodPro;
                              Params[07].AsString   := 'UN';
                              Params[08].AsString   := 'UN';
                              Params[09].AsDateTime := Date;
                              Params[10].AsDateTime := Date;
                              Params[11].AsString   := TimeToStr(Time);
                              Params[12].AsString   := 'EA';
                              Params[13].AsFloat    := CstLan;
                              Params[14].AsFloat    := TotLan;
                              Params[15].AsFloat    := 0;
                              Params[16].AsFloat    := 0;
                              Params[17].AsFloat    := 0;
                              Params[18].AsFloat    := 0;
                              Params[19].AsFloat    := 0;
                              Params[20].AsString   := ' ';
                              Params[21].AsInteger  := 1;
                              Params[22].AsString   := SeqEnf;
                              Params[23].AsString   := ' ';
                              Params[24].AsFloat    := CstLan;
                              Params[25].AsString   := ' ';
                              Params[26].AsString   := ' ';
                              Params[27].AsString   := 'REF BALANCO REALIZADO DE 03 a 06/01/2008';

                         end;

                         ExecSQL;

                    end;
                 end;

                 end
              else
                 begin

                 if qrLista.FieldbyName('TOTAL').AsFloat < quSQL.FieldbyName('QTDITE').AsFloat then begin

                    TotLan := fRound(quSQL.FieldbyName('QTDITE').AsFloat - qrLista.FieldbyName('TOTAL').AsFloat,4);

                    Randomize;
                    SeqSdf := FNumZeros(Trim( IntToStr(1) ),3)+FNumZeros(Trim( IntToStr(Random(50000)) ),5);

                    with quSQL,SQL do begin

                         Close;
                         Text := ' Insert Into EstSdf(AnoSdf,SeqSdf,CodEmp,CodClp,CodGru,CodSub,CodPro,CodTam,CodCor,DteSdf,DteOpe,HreOpe,CodOpe,'+
                                 '                    QtdSdf,CodUsu,FlgSdf,FlgTrg,FlgSeq,ObsSdf)'+
                                 '             Values(:AnoSdf,:SeqSdf,:CodEmp,:CodClp,:CodGru,:CodSub,:CodPro,:CodTam,:CodCor,:DteSdf,:DteOpe,:HreOpe,:CodOpe,'+
                                 '                    :QtdSdf,:CodUsu,:FlgSdf,:FlgTrg,:FlgSeq,:ObsSdf)';

                         with Params do begin

                              Params[00].AsInteger  := StrToInt(copy(FormatDateTime('dd/mm/yyyy',Date),7,4));
                              Params[01].AsInteger  := 1;
                              Params[02].AsInteger  := 5;
                              Params[03].AsString   := '1';
                              Params[04].AsString   := CodGru;
                              Params[05].AsString   := CodSub;
                              Params[06].AsString   := CodPro;
                              Params[07].AsString   := 'UN';
                              Params[08].AsString   := 'UN';
                              Params[09].AsDateTime := Date;
                              Params[10].AsDateTime := Date;
                              Params[11].AsString   := TimeToStr(Time);
                              Params[12].AsString   := 'SA';
                              Params[13].AsFloat    := TotLan;
                              Params[14].AsInteger  := 1;
                              Params[15].AsString   := SeqSdf;
                              Params[16].AsString   := ' ';
                              Params[17].AsString   := ' ';
                              Params[18].AsString   := 'REF BALANCO REALIZADO DE 03 a 06/01/2008';

                         end;

                         ExecSQL;

                    end;
                 end;
              end;

              //  Estoque - Fisico //

              with quSQL,SQL do begin

                   Close;
                   Text := ' Select QtdIte,VpfIte From EstIte'+
                           ' Where EstIte.CodEmp = :CodEmp'+
                           '   and EstIte.CodClp = :CodClp'+
                           '   and EstIte.CodGru = :CodGru'+
                           '   and EstIte.CodSub = :CodSub'+
                           '   and EstIte.CodPro = :CodPro';

                   with Params do begin

                        Params[0].AsInteger := 2;
                        Params[1].AsString  := '1';
                        Params[2].AsString  := CodGru;
                        Params[3].AsString  := CodSub;
                        Params[4].AsString  := CodPro;

                   end;

                   Open;

                   CstLan := quSQL.FieldbyName('VPFITE').AsFloat;

              end;

              if qrLista.FieldbyName('TOTAL').AsFloat > quSQL.FieldbyName('QTDITE').AsFloat then begin

                 TotLan := fRound(qrLista.FieldbyName('TOTAL').AsFloat - quSQL.FieldbyName('QTDITE').AsFloat,4);

                 if CstLan > 0 then begin

                    TotEnc := PreString(FormatFloat('###,###,##0',quSQL.FieldbyName('QTDITE').AsFloat),16);

                    TotQtd := PreString(FormatFloat('###,###,##0',qrLista.FieldbyName('TOTAL').AsFloat),13);

                    Randomize;
                    SeqEnf := FNumZeros(Trim( IntToStr(1) ),3)+FNumZeros(Trim( IntToStr(Random(50000)) ),5);

                    with quSQL,SQL do begin

                         Close;
                         Text := ' Insert Into EstEnf(AnoEnf,SeqEnf,CodEmp,CodClp,CodGru,CodSub,CodPro,CodTam,CodCor,DteEnf,DteOpe,HreOpe,CodOpe,'+
                                 '                    ValEnf,QtdEnf,PerIcm,ValIcm,PerIpi,ValIpi,ValCst,ClsIpi,CodUsu,FlgEnf,FlgTrg,ValRef,FlgSeq,FlgOpe,ObsEnf)'+
                                 '             Values(:AnoEnf,:SeqEnf,:CodEmp,:CodClp,:CodGru,:CodSub,:CodPro,:CodTam,:CodCor,:DteEnf,:DteOpe,:HreOpe,:CodOpe,'+
                                 '                    :ValEnf,:QtdEnf,:PerIcm,:ValIcm,:PerIpi,:ValIpi,:ValCst,:ClsIpi,:CodUsu,:FlgEnf,:FlgTrg,:ValRef,:FlgSeq,:FlgOpe,:ObsEnf)';

                         with Params do begin

                              Params[00].AsInteger  := StrToInt(copy(FormatDateTime('dd/mm/yyyy',Date),7,4));
                              Params[01].AsInteger  := 1;
                              Params[02].AsInteger  := 6;
                              Params[03].AsString   := '1';
                              Params[04].AsString   := CodGru;
                              Params[05].AsString   := CodSub;
                              Params[06].AsString   := CodPro;
                              Params[07].AsString   := 'UN';
                              Params[08].AsString   := 'UN';
                              Params[09].AsDateTime := Date;
                              Params[10].AsDateTime := Date;
                              Params[11].AsString   := TimeToStr(Time);
                              Params[12].AsString   := 'EA';
                              Params[13].AsFloat    := CstLan;
                              Params[14].AsFloat    := TotLan;
                              Params[15].AsFloat    := 0;
                              Params[16].AsFloat    := 0;
                              Params[17].AsFloat    := 0;
                              Params[18].AsFloat    := 0;
                              Params[19].AsFloat    := 0;
                              Params[20].AsString   := ' ';
                              Params[21].AsInteger  := 1;
                              Params[22].AsString   := SeqEnf;
                              Params[23].AsString   := ' ';
                              Params[24].AsFloat    := CstLan;
                              Params[25].AsString   := ' ';
                              Params[26].AsString   := ' ';
                              Params[27].AsString   := 'REF BALANCO REALIZADO DE 03 a 06/01/2008';
                              

                         end;

                         ExecSQL;

                    end;

                    TotDif := PreString(FormatFloat('###,###,##0',TotLan),11);

                    with quSQL,SQL do begin

                         Close;
                         Text := ' Select CodPro,DscPro From EstPro'+
                                 ' Where EstPro.CodClp = :CodClp'+
                                 '   and EstPro.CodGru = :CodGru'+
                                 '   and EstPro.CodSub = :CodSub'+
                                 '   and EstPro.CodPro = :CodPro';

                          with Params do begin

                               Params[0].AsString  := '1';
                               Params[1].AsString  := CodGru;
                               Params[2].AsString  := CodSub;
                               Params[3].AsString  := CodPro;

                          end;

                          Open;

                    end;

                    if Trim(quSQL.FieldbyName('CodPro').AsString) <> '' then begin

                       Linha := CodGru+'.'+CodSub+'.'+CodPro+' '+copy( Trim(quSQL.FieldbyName('DscPro').AsString),1,40) + fReplicate(' ',40 - Length(copy(Trim(quSQL.FieldbyName('DscPro').AsString),1,40)))+' '+TotEnc+' '+TotQtd+' '+TotDif+' '+'+';

                       Writeln(ArqTxt1,Linha);

                    end;
                 end;

                 end
              else
                 begin

                 if qrLista.FieldbyName('TOTAL').AsFloat < quSQL.FieldbyName('QTDITE').AsFloat then begin

                    TotLan := fRound(quSQL.FieldbyName('QTDITE').AsFloat - qrLista.FieldbyName('TOTAL').AsFloat,4);

                    TotEnc := PreString(FormatFloat('###,###,##0',quSQL.FieldbyName('QTDITE').AsFloat),16);

                    TotQtd := PreString(FormatFloat('###,###,##0',qrLista.FieldbyName('TOTAL').AsFloat),13);

                    Randomize;
                    SeqSdf := FNumZeros(Trim( IntToStr(1) ),3)+FNumZeros(Trim( IntToStr(Random(50000)) ),5);

                    with quSQL,SQL do begin

                         Close;
                         Text := ' Insert Into EstSdf(AnoSdf,SeqSdf,CodEmp,CodClp,CodGru,CodSub,CodPro,CodTam,CodCor,DteSdf,DteOpe,HreOpe,CodOpe,'+
                                 '                    QtdSdf,CodUsu,FlgSdf,FlgTrg,FlgSeq,ObsSdf)'+
                                 '             Values(:AnoSdf,:SeqSdf,:CodEmp,:CodClp,:CodGru,:CodSub,:CodPro,:CodTam,:CodCor,:DteSdf,:DteOpe,:HreOpe,:CodOpe,'+
                                 '                    :QtdSdf,:CodUsu,:FlgSdf,:FlgTrg,:FlgSeq,:ObsSdf)';

                         with Params do begin

                              Params[00].AsInteger  := StrToInt(copy(FormatDateTime('dd/mm/yyyy',Date),7,4));
                              Params[01].AsInteger  := 1;
                              Params[02].AsInteger  := 6;
                              Params[03].AsString   := '1';
                              Params[04].AsString   := CodGru;
                              Params[05].AsString   := CodSub;
                              Params[06].AsString   := CodPro;
                              Params[07].AsString   := 'UN';
                              Params[08].AsString   := 'UN';
                              Params[09].AsDateTime := Date;
                              Params[10].AsDateTime := Date;
                              Params[11].AsString   := TimeToStr(Time);
                              Params[12].AsString   := 'SA';
                              Params[13].AsFloat    := TotLan;
                              Params[14].AsInteger  := 1;
                              Params[15].AsString   := SeqSdf;
                              Params[16].AsString   := ' ';
                              Params[17].AsString   := ' ';
                              Params[18].AsString   := 'REF BALANCO REALIZADO DE 03 a 06/01/2008';


                         end;

                         ExecSQL;

                    end;

                    TotDif := PreString(FormatFloat('###,###,##0',TotLan),11);

                    with quSQL,SQL do begin

                         Close;
                         Text := ' Select CodPro,DscPro From EstPro'+
                                 ' Where EstPro.CodClp = :CodClp'+
                                 '   and EstPro.CodGru = :CodGru'+
                                 '   and EstPro.CodSub = :CodSub'+
                                 '   and EstPro.CodPro = :CodPro';

                          with Params do begin

                               Params[0].AsString  := '1';
                               Params[1].AsString  := CodGru;
                               Params[2].AsString  := CodSub;
                               Params[3].AsString  := CodPro;

                          end;

                          Open;

                    end;

                    if Trim(quSQL.FieldbyName('CodPro').AsString) <> '' then begin

                       Linha := CodGru+'.'+CodSub+'.'+CodPro+' '+copy( Trim(quSQL.FieldbyName('DscPro').AsString),1,40) + fReplicate(' ',40 - Length(copy(Trim(quSQL.FieldbyName('DscPro').AsString),1,40)))+' '+TotEnc+' '+TotQtd+' '+TotDif+' '+'-';

                       Writeln(ArqTxt1,Linha);

                    end;

                    end
                 else
                    begin

                    TotEnc := PreString(FormatFloat('###,###,##0',quSQL.FieldbyName('QTDITE').AsFloat),16);

                    TotQtd := PreString(FormatFloat('###,###,##0',qrLista.FieldbyName('TOTAL').AsFloat),13);

                    with quSQL,SQL do begin

                         Close;
                         Text := ' Select CodPro,DscPro From EstPro'+
                                 ' Where EstPro.CodClp = :CodClp'+
                                 '   and EstPro.CodGru = :CodGru'+
                                 '   and EstPro.CodSub = :CodSub'+
                                 '   and EstPro.CodPro = :CodPro';

                          with Params do begin

                               Params[0].AsString  := '1';
                               Params[1].AsString  := CodGru;
                               Params[2].AsString  := CodSub;
                               Params[3].AsString  := CodPro;

                          end;

                          Open;

                    end;

                    if Trim(quSQL.FieldbyName('CodPro').AsString) <> '' then begin

                       Linha := CodGru+'.'+CodSub+'.'+CodPro+' '+copy( Trim(quSQL.FieldbyName('DscPro').AsString),1,40) + fReplicate(' ',40 - Length(copy(Trim(quSQL.FieldbyName('DscPro').AsString),1,40)))+' '+TotEnc+' '+TotQtd;

                       Writeln(ArqTxt2,Linha);

                    end;
                 end;
              end;
           end;

           Inc(R);

           ProgressBar.Position := R;

           qrLista.Next;

     end;

     CloseFile(ArqTxt1);
     CloseFile(ArqTxt2);

     fmConversor.Caption := 'Emerion Estoque';

     pnCodIte.Caption := '';

     ProgressBar.Max      := 1;
     ProgressBar.Min      := 0;
     ProgressBar.Position := 0;

     bCancelar.Enabled  := True;
     bConfirmar.Enabled := True;

  end;
end;

procedure TfmConversor.bCancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfmConversor.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmConversor.FormShow(Sender: TObject);
begin
  pnCodIte.Caption := '';
end;

end.
