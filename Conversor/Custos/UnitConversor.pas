unit UnitConversor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, StdCtrls, Buttons, ComCtrls, ExtCtrls, Wwquery,
  dxfProgressBar;

type
  TFrmConversor = class(TForm)
    PaintBox: TPaintBox;
    bCancelar: TBitBtn;
    bConfirmar: TBitBtn;
    ProgressBar: TdxfProgressBar;
    Label15: TLabel;
    Label2: TLabel;
    dbEmerion1: TDatabase;
    dbEmerion2: TDatabase;
    dbEmerion3: TDatabase;
    Query1: TQuery;
    quSQL1: TQuery;
    quSQL2: TQuery;
    quSQL3: TQuery;
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
SeqSdf : string;
CodGru : string;
CodSub : string;
CodPro : string;
begin
  if fMsg('Confirma Verificação ?','O') then begin

     bCancelar.Enabled  := False;
     bConfirmar.Enabled := False;

     Label2.Caption := '';

     with Query1,SQL do begin

          close;
          Text := ' Select Count(*) as QtdReg From Aurora';
          Open;

          ProgressBar.Max := FieldbyName('QtdReg').AsInteger;
          
     end;

     with Query1,SQL do begin

          close;
          Text := ' Select Count(*) as QtdReg From Gusmoes';
          Open;

          ProgressBar.Max := ProgressBar.Max + FieldbyName('QtdReg').AsInteger;
          
     end;

     ProgressBar.Min      := 0;
     ProgressBar.Position := 0;

     with Query1,SQL do begin

          close;
          Text := ' Select * From Aurora Order by Codigo';
          Open;
          First;

     end;
     
     while not Query1.Eof do begin

           Application.ProcessMessages;

           Label2.Caption := Trim(Query1.FieldbyName('CODIGO').AsString);

           CodGru := copy(Trim(Query1.FieldbyName('CODIGO').AsString),01,03);
           CodSub := copy(Trim(Query1.FieldbyName('CODIGO').AsString),07,04);
           CodPro := copy(Trim(Query1.FieldbyName('CODIGO').AsString),14,05);

           if Query1.FieldByName('TOTAL').AsFloat > 0 then begin

              with quSQL1,SQL do begin

                   Close;
                   Text := ' Select EstIte.VpfIte'+
                           ' From EstIte'+
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

              end;
              
              if quSQL1.FieldbyName('VpfIte').AsFloat > 0 then begin

                 with quSQL2,SQL do begin

                      Close;
                      Text := ' Select EstIte.VpfIte'+
                              ' From EstIte'+
                              ' Where EstIte.CodEmp = :CodEmp'+
                              '   and EstIte.CodClp = :CodClp'+
                              '   and EstIte.CodGru = :CodGru'+
                              '   and EstIte.CodSub = :CodSub'+
                              '   and EstIte.CodPro = :CodPro';

                      with Params do begin

                           Params[0].AsInteger := 6;
                           Params[1].AsString  := '1';
                           Params[2].AsString  := CodGru;
                           Params[3].AsString  := CodSub;
                           Params[4].AsString  := CodPro;

                      end;

                      Open;

                 end;

                 if quSQL1.FieldbyName('VpfIte').AsFloat <> quSQL2.FieldbyName('VpfIte').AsFloat then begin

                    Randomize;
                    SeqEnf := FNumZeros(Trim( IntToStr(1) ),3)+FNumZeros(Trim( IntToStr(Random(50000)) ),5);

                    with quSQL2,SQL do begin

                         Close;
                         Text := ' Insert Into EstEnf(AnoEnf,SeqEnf,CodEmp,CodClp,CodGru,CodSub,CodPro,CodTam,CodCor,DteEnf,DteOpe,HreOpe,CodOpe,'+
                                 '                    ValEnf,QtdEnf,PerIcm,ValIcm,PerIpi,ValIpi,ValCst,CodUsu,FlgEnf,FlgTrg,ValRef,FlgSeq,FlgOpe,ObsEnf)'+
                                 '             Values(:AnoEnf,:SeqEnf,:CodEmp,:CodClp,:CodGru,:CodSub,:CodPro,:CodTam,:CodCor,:DteEnf,:DteOpe,:HreOpe,:CodOpe,'+
                                 '                    :ValEnf,:QtdEnf,:PerIcm,:ValIcm,:PerIpi,:ValIpi,:ValCst,:CodUsu,:FlgEnf,:FlgTrg,:ValRef,:FlgSeq,:FlgOpe,:ObsEnf)';

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
                              Params[12].AsString   := 'EP';
                              Params[13].AsFloat    := quSQL1.FieldbyName('VpfIte').AsFloat;
                              Params[14].AsFloat    := 1;
                              Params[15].AsFloat    := 0;
                              Params[16].AsFloat    := 0;
                              Params[17].AsFloat    := 0;
                              Params[18].AsFloat    := 0;
                              Params[19].AsFloat    := 0;
                              Params[20].AsInteger  := 1;
                              Params[21].AsString   := SeqEnf;
                              Params[22].AsString   := ' ';
                              Params[23].AsFloat    := 0;
                              Params[24].AsString   := ' ';
                              Params[25].AsString   := ' ';
                              Params[26].AsString   := 'ACERTO DE CUSTO COM A UNIDADE TATUAPE';

                         end;

                         ExecSQL;

                    end;

                    Randomize;
                    SeqSdf := FNumZeros(Trim( IntToStr(1) ),3)+FNumZeros(Trim( IntToStr(Random(50000)) ),5);

                    with quSQL2,SQL do begin

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
                              Params[13].AsFloat    := 1;
                              Params[14].AsInteger  := 1;
                              Params[15].AsString   := SeqSdf;
                              Params[16].AsString   := ' ';
                              Params[17].AsString   := ' ';
                              Params[18].AsString   := 'ACERTO DE CUSTO COM A UNIDADE TATUAPE';

                         end;

                         ExecSQL;

                    end;
                 end;
              end;
           end;   

           ProgressBar.StepBy(1);

           Query1.Next;

     end;

     with Query1,SQL do begin

          close;
          Text := ' Select * From Gusmoes Order by Codigo';
          Open;
          First;

     end;
     
     while not Query1.Eof do begin

           Application.ProcessMessages;

           Label2.Caption := Trim(Query1.FieldbyName('CODIGO').AsString);

           CodGru := copy(Trim(Query1.FieldbyName('CODIGO').AsString),01,03);
           CodSub := copy(Trim(Query1.FieldbyName('CODIGO').AsString),07,04);
           CodPro := copy(Trim(Query1.FieldbyName('CODIGO').AsString),14,05);

           if Query1.FieldByName('TOTAL').AsFloat > 0 then begin

              with quSQL1,SQL do begin

                   Close;
                   Text := ' Select EstIte.VpfIte'+
                           ' From EstIte'+
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

              end;
              
              if quSQL1.FieldbyName('VpfIte').AsFloat > 0 then begin

                 with quSQL3,SQL do begin

                      Close;
                      Text := ' Select EstIte.VpfIte'+
                              ' From EstIte'+
                              ' Where EstIte.CodEmp = :CodEmp'+
                              '   and EstIte.CodClp = :CodClp'+
                              '   and EstIte.CodGru = :CodGru'+
                              '   and EstIte.CodSub = :CodSub'+
                              '   and EstIte.CodPro = :CodPro';

                      with Params do begin

                           Params[0].AsInteger := 4;
                           Params[1].AsString  := '1';
                           Params[2].AsString  := CodGru;
                           Params[3].AsString  := CodSub;
                           Params[4].AsString  := CodPro;

                      end;

                      Open;

                 end;

                 if quSQL1.FieldbyName('VpfIte').AsFloat <> quSQL3.FieldbyName('VpfIte').AsFloat then begin

                    Randomize;
                    SeqEnf := FNumZeros(Trim( IntToStr(1) ),3)+FNumZeros(Trim( IntToStr(Random(50000)) ),5);

                    with quSQL3,SQL do begin

                         Close;
                         Text := ' Insert Into EstEnf(AnoEnf,SeqEnf,CodEmp,CodClp,CodGru,CodSub,CodPro,CodTam,CodCor,DteEnf,DteOpe,HreOpe,CodOpe,'+
                                 '                    ValEnf,QtdEnf,PerIcm,ValIcm,PerIpi,ValIpi,ValCst,CodUsu,FlgEnf,FlgTrg,ValRef,FlgSeq,FlgOpe,ObsEnf)'+
                                 '             Values(:AnoEnf,:SeqEnf,:CodEmp,:CodClp,:CodGru,:CodSub,:CodPro,:CodTam,:CodCor,:DteEnf,:DteOpe,:HreOpe,:CodOpe,'+
                                 '                    :ValEnf,:QtdEnf,:PerIcm,:ValIcm,:PerIpi,:ValIpi,:ValCst,:CodUsu,:FlgEnf,:FlgTrg,:ValRef,:FlgSeq,:FlgOpe,:ObsEnf)';

                         with Params do begin

                              Params[00].AsInteger  := StrToInt(copy(FormatDateTime('dd/mm/yyyy',Date),7,4));
                              Params[01].AsInteger  := 1;
                              Params[02].AsInteger  := 4;
                              Params[03].AsString   := '1';
                              Params[04].AsString   := CodGru;
                              Params[05].AsString   := CodSub;
                              Params[06].AsString   := CodPro;
                              Params[07].AsString   := 'UN';
                              Params[08].AsString   := 'UN';
                              Params[09].AsDateTime := Date;
                              Params[10].AsDateTime := Date;
                              Params[11].AsString   := TimeToStr(Time);
                              Params[12].AsString   := 'EP';
                              Params[13].AsFloat    := quSQL1.FieldbyName('VpfIte').AsFloat;
                              Params[14].AsFloat    := 1;
                              Params[15].AsFloat    := 0;
                              Params[16].AsFloat    := 0;
                              Params[17].AsFloat    := 0;
                              Params[18].AsFloat    := 0;
                              Params[19].AsFloat    := 0;
                              Params[20].AsInteger  := 1;
                              Params[21].AsString   := SeqEnf;
                              Params[22].AsString   := ' ';
                              Params[23].AsFloat    := 0;
                              Params[24].AsString   := ' ';
                              Params[25].AsString   := ' ';
                              Params[26].AsString   := 'ACERTO DE CUSTO COM A UNIDADE TATUAPE';

                         end;

                         ExecSQL;

                    end;

                    Randomize;
                    SeqSdf := FNumZeros(Trim( IntToStr(1) ),3)+FNumZeros(Trim( IntToStr(Random(50000)) ),5);

                    with quSQL3,SQL do begin

                         Close;
                         Text := ' Insert Into EstSdf(AnoSdf,SeqSdf,CodEmp,CodClp,CodGru,CodSub,CodPro,CodTam,CodCor,DteSdf,DteOpe,HreOpe,CodOpe,'+
                                 '                    QtdSdf,CodUsu,FlgSdf,FlgTrg,FlgSeq,ObsSdf)'+
                                 '             Values(:AnoSdf,:SeqSdf,:CodEmp,:CodClp,:CodGru,:CodSub,:CodPro,:CodTam,:CodCor,:DteSdf,:DteOpe,:HreOpe,:CodOpe,'+
                                 '                    :QtdSdf,:CodUsu,:FlgSdf,:FlgTrg,:FlgSeq,:ObsSdf)';

                         with Params do begin

                              Params[00].AsInteger  := StrToInt(copy(FormatDateTime('dd/mm/yyyy',Date),7,4));
                              Params[01].AsInteger  := 1;
                              Params[02].AsInteger  := 4;
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
                              Params[13].AsFloat    := 1;
                              Params[14].AsInteger  := 1;
                              Params[15].AsString   := SeqSdf;
                              Params[16].AsString   := ' ';
                              Params[17].AsString   := ' ';
                              Params[18].AsString   := 'ACERTO DE CUSTO COM A UNIDADE TATUAPE';

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
