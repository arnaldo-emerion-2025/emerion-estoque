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
R        : integer;
VpfIte   : real;
Linha    : string;
SeqEnf   : string;
CodGru   : string;
CodSub   : string;
CodPro   : string;
TotQtd   : string;
ArqTexto : TextFile;
begin
  if fMsg('Confirma Conversão dos Dados ?','O') then begin

     bCancelar.Enabled  := False;
     bConfirmar.Enabled := False;

     FrmConversor.Caption := 'Emerion - Estoque...';

     Label2.Caption := '';

     with Query1,SQL do begin

          close;
          Text := ' Select * From Balanco Order by Balanco.Novo';
          Open;
          First;

     end;

     AssignFile(ArqTexto,'C:\Emerion\ListaItem.Txt');

     Rewrite(ArqTexto);

     Writeln(ArqTexto,'ITEM           DESCRICAO                                        CONTAGEM');
     Writeln(ArqTexto,'-------------- ---------------------------------------- ----------------');

     PB5.Max      := Query1.RecordCount;
     PB5.Min      := 0;
     PB5.Position := 0;

     R := 0;

     while not Query1.Eof do begin

           Application.ProcessMessages;

           // Estoque Fiscal //

           CodGru := copy(Query1.FieldByName('NOVO').AsString,01,3);
           CodSub := copy(Query1.FieldByName('NOVO').AsString,05,4);
           CodPro := copy(Query1.FieldByName('NOVO').AsString,10,5);

           Label2.Caption := CodGru+ '.' +CodSub+ '.' +CodPro;

           if Query1.FieldByName('QTDE').AsFloat > 0 then begin

              with quSQL,SQL do begin

                   Close;
                   Text := ' Select Count(*) as QtdReg From EstEnf'+
                           ' Where EstEnf.CodClp = :CodClp'+
                           '   and EstEnf.CodGru = :CodGru'+
                           '   and EstEnf.CodSub = :CodSub'+
                           '   and EstEnf.CodPro = :CodPro';

                   with Params do begin

                        Params[0].AsString := '1';
                        Params[1].AsString := CodGru;
                        Params[2].AsString := CodSub;
                        Params[3].AsString := CodPro;

                   end;

                   Open;

              end;

              if quSQL.FieldbyName('QtdReg').AsInteger = 0 then begin

                 with quSQL,SQL do begin

                      Close;
                      Text := ' Select VcrIte From EstIte'+
                              ' Where EstIte.CodClp = :CodClp'+
                              '   and EstIte.CodGru = :CodGru'+
                              '   and EstIte.CodSub = :CodSub'+
                              '   and EstIte.CodPro = :CodPro';

                      with Params do begin

                           Params[0].AsString := '1';
                           Params[1].AsString := CodGru;
                           Params[2].AsString := CodSub;
                           Params[3].AsString := CodPro;

                      end;

                      Open;

                      VpfIte := quSQL.FieldbyName('VcrIte').AsFloat;

                 end;

                 if VpfIte > 0 then begin

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
                              Params[02].AsInteger  := 3;
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
                              Params[13].AsFloat    := VpfIte;
                              Params[14].AsFloat    := Query1.FieldByName('QTDE').AsFloat;
                              Params[15].AsFloat    := 0;
                              Params[16].AsFloat    := 0;
                              Params[17].AsFloat    := 0;
                              Params[18].AsFloat    := 0;
                              Params[19].AsFloat    := 0;
                              Params[20].AsString   := ' ';
                              Params[21].AsInteger  := 1;
                              Params[22].AsString   := SeqEnf;
                              Params[23].AsString   := ' ';
                              Params[24].AsFloat    := VpfIte;
                              Params[25].AsString   := ' ';
                              Params[26].AsString   := ' ';

                         end;

                         ExecSQL;

                    end;

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
                              Params[13].AsFloat    := VpfIte;
                              Params[14].AsFloat    := Query1.FieldByName('QTDE').AsFloat;
                              Params[15].AsFloat    := 0;
                              Params[16].AsFloat    := 0;
                              Params[17].AsFloat    := 0;
                              Params[18].AsFloat    := 0;
                              Params[19].AsFloat    := 0;
                              Params[20].AsString   := ' ';
                              Params[21].AsInteger  := 1;
                              Params[22].AsString   := SeqEnf;
                              Params[23].AsString   := ' ';
                              Params[24].AsFloat    := VpfIte;
                              Params[25].AsString   := ' ';
                              Params[26].AsString   := ' ';

                         end;

                         ExecSQL;

                    end;

                    end
                 else
                    begin

                    TotQtd := PreString(FormatFloat('###,###,##0',Query1.FieldbyName('QTDE').AsFloat),16);

                    Linha := CodGru+'.'+CodSub+'.'+CodPro+' '+copy(Trim(Query1.FieldbyName('Descricao').AsString),1,40)+ fReplicate(' ',40 - Length(copy(Trim(Query1.FieldbyName('Descricao').AsString),1,40)))+' '+TotQtd;

                    Writeln(ArqTexto,Linha);

                 end;
              end;
           end;
           
           Inc(R);

           PB5.Position := R;

           Query1.Next;

     end;

     CloseFile(ArqTexto);
     
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
