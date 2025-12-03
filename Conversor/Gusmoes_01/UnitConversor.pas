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
R      : integer;
SeqEnf : string;
CodAnt : string;
CodGru : string;
CodSub : string;
CodPro : string;
begin
  if fMsg('Confirma Conversão dos Dados ?','O') then begin

     bCancelar.Enabled  := False;
     bConfirmar.Enabled := False;

     FrmConversor.Caption := 'Emerion - Tabela de Preços...';

     Label2.Caption := '';

     with Query1,SQL do begin

          close;
          Text := ' Select * From Testes Order by CodGru,CodSub,CodPro';
          Open;
          First;

     end;

     PB5.Max      := Query1.RecordCount;
     PB5.Min      := 0;
     PB5.Position := 0;

     R := 0;

     while not Query1.Eof do begin

           Application.ProcessMessages;

           // Estoque Fiscal //

           Label2.Caption := Query1.FieldByName('CODGRU').AsString + '.' +
                             Query1.FieldByName('CODSUB').AsString + '.' +
                             Query1.FieldByName('CODPRO').AsString;

           quSql.Close;
           quSql.Params.Clear;
           quSql.SQL.Clear;
           quSql.SQL.Add(' Update EstIte set EstIte.Vb1Ite = :Vb1Ite,'+
                         '                   EstIte.Vb2Ite = :Vb2Ite,'+
                         '                   EstIte.Vb3Ite = :Vb3Ite,'+
                         '                   EstIte.VcrIte = :VcrIte,'+
                         '                   EstIte.Ds1Ite = :Ds1Ite,'+
                         '                   EstIte.Ds2Ite = :Ds2Ite,'+
                         '                   EstIte.Ds3Ite = :Ds3Ite,'+
                         '                   EstIte.Mk1Ite = :Mk1Ite,'+
                         '                   EstIte.Mk2Ite = :Mk2Ite,'+
                         '                   EstIte.Mk3Ite = :Mk3Ite,'+
                         '                   EstIte.Flgtrg = :FlgTrg'+
                         ' Where EstIte.CodEmp = :CodEmp'+
                         '   and EstIte.CodClp = :CodClp'+
                         '   and EstIte.CodGru = :CodGru'+
                         '   and EstIte.CodSub = :CodSub'+
                         '   and EstIte.CodPro = :CodPro');

           quSql.Params[00].Name     := 'Vb1Ite';
           quSql.Params[00].DataType := ftFloat;
           quSql.Params[00].Value    := Query1.FieldByName('VB1ITE').AsFloat;

           quSql.Params[01].Name     := 'Vb2Ite';
           quSql.Params[01].DataType := ftFloat;
           quSql.Params[01].Value    := Query1.FieldByName('VB2ITE').AsFloat;

           quSql.Params[02].Name     := 'Vb3Ite';
           quSql.Params[02].DataType := ftFloat;
           quSql.Params[02].Value    := Query1.FieldByName('VB3ITE').AsFloat;

           quSql.Params[03].Name     := 'VcrIte';
           quSql.Params[03].DataType := ftFloat;
           quSql.Params[03].Value    := Query1.FieldByName('VCRITE').AsFloat;

           quSql.Params[04].Name     := 'Ds1Ite';
           quSql.Params[04].DataType := ftFloat;
           quSql.Params[04].Value    := Query1.FieldByName('DS1ITE').AsFloat;

           quSql.Params[05].Name     := 'Ds2Ite';
           quSql.Params[05].DataType := ftFloat;
           quSql.Params[05].Value    := Query1.FieldByName('DS2ITE').AsFloat;

           quSql.Params[06].Name     := 'Ds3Ite';
           quSql.Params[06].DataType := ftFloat;
           quSql.Params[06].Value    := Query1.FieldByName('DS3ITE').AsFloat;

           quSql.Params[07].Name     := 'Mk1Ite';
           quSql.Params[07].DataType := ftFloat;
           quSql.Params[07].Value    := Query1.FieldByName('MK1ITE').AsFloat;

           quSql.Params[08].Name     := 'Mk2Ite';
           quSql.Params[08].DataType := ftFloat;
           quSql.Params[08].Value    := Query1.FieldByName('MK2ITE').AsFloat;

           quSql.Params[09].Name     := 'Mk3Ite';
           quSql.Params[09].DataType := ftFloat;
           quSql.Params[09].Value    := Query1.FieldByName('MK3ITE').AsFloat;

           quSql.Params[10].Name     := 'FlgTrg';
           quSql.Params[10].DataType := ftString;
           quSql.Params[10].Value    := '*';

           quSql.Params[11].Name     := 'CodEmp';
           quSql.Params[11].DataType := ftInteger;
           quSql.Params[11].Value    := 3;

           quSql.Params[12].Name     := 'CodClp';
           quSql.Params[12].DataType := ftString;
           quSql.Params[12].Value    := Query1.FieldByName('CODCLP').AsString;

           quSql.Params[13].Name     := 'CodGru';
           quSql.Params[13].DataType := ftString;
           quSql.Params[13].Value    := Query1.FieldByName('CODGRU').AsString;

           quSql.Params[14].Name     := 'CodSub';
           quSql.Params[14].DataType := ftString;
           quSql.Params[14].Value    := Query1.FieldByName('CODSUB').AsString;

           quSql.Params[15].Name     := 'CodPro';
           quSql.Params[15].DataType := ftString;
           quSql.Params[15].Value    := Query1.FieldByName('CODPRO').AsString;

           quSql.ExecSQL;

           // Estoque Fisico //

           quSql.Close;
           quSql.Params.Clear;
           quSql.SQL.Clear;
           quSql.SQL.Add(' Update EstIte set EstIte.Vb1Ite = :Vb1Ite,'+
                         '                   EstIte.Vb2Ite = :Vb2Ite,'+
                         '                   EstIte.Vb3Ite = :Vb3Ite,'+
                         '                   EstIte.VcrIte = :VcrIte,'+
                         '                   EstIte.Ds1Ite = :Ds1Ite,'+
                         '                   EstIte.Ds2Ite = :Ds2Ite,'+
                         '                   EstIte.Ds3Ite = :Ds3Ite,'+
                         '                   EstIte.Mk1Ite = :Mk1Ite,'+
                         '                   EstIte.Mk2Ite = :Mk2Ite,'+
                         '                   EstIte.Mk3Ite = :Mk3Ite,'+
                         '                   EstIte.Flgtrg = :FlgTrg'+
                         ' Where EstIte.CodEmp = :CodEmp'+
                         '   and EstIte.CodClp = :CodClp'+
                         '   and EstIte.CodGru = :CodGru'+
                         '   and EstIte.CodSub = :CodSub'+
                         '   and EstIte.CodPro = :CodPro');

           quSql.Params[00].Name     := 'Vb1Ite';
           quSql.Params[00].DataType := ftFloat;
           quSql.Params[00].Value    := Query1.FieldByName('VB1ITE').AsFloat;

           quSql.Params[01].Name     := 'Vb2Ite';
           quSql.Params[01].DataType := ftFloat;
           quSql.Params[01].Value    := Query1.FieldByName('VB2ITE').AsFloat;

           quSql.Params[02].Name     := 'Vb3Ite';
           quSql.Params[02].DataType := ftFloat;
           quSql.Params[02].Value    := Query1.FieldByName('VB3ITE').AsFloat;

           quSql.Params[03].Name     := 'VcrIte';
           quSql.Params[03].DataType := ftFloat;
           quSql.Params[03].Value    := Query1.FieldByName('VCRITE').AsFloat;

           quSql.Params[04].Name     := 'Ds1Ite';
           quSql.Params[04].DataType := ftFloat;
           quSql.Params[04].Value    := Query1.FieldByName('DS1ITE').AsFloat;

           quSql.Params[05].Name     := 'Ds2Ite';
           quSql.Params[05].DataType := ftFloat;
           quSql.Params[05].Value    := Query1.FieldByName('DS2ITE').AsFloat;

           quSql.Params[06].Name     := 'Ds3Ite';
           quSql.Params[06].DataType := ftFloat;
           quSql.Params[06].Value    := Query1.FieldByName('DS3ITE').AsFloat;

           quSql.Params[07].Name     := 'Mk1Ite';
           quSql.Params[07].DataType := ftFloat;
           quSql.Params[07].Value    := Query1.FieldByName('MK1ITE').AsFloat;

           quSql.Params[08].Name     := 'Mk2Ite';
           quSql.Params[08].DataType := ftFloat;
           quSql.Params[08].Value    := Query1.FieldByName('MK2ITE').AsFloat;

           quSql.Params[09].Name     := 'Mk3Ite';
           quSql.Params[09].DataType := ftFloat;
           quSql.Params[09].Value    := Query1.FieldByName('MK3ITE').AsFloat;

           quSql.Params[10].Name     := 'FlgTrg';
           quSql.Params[10].DataType := ftString;
           quSql.Params[10].Value    := '*';

           quSql.Params[11].Name     := 'CodEmp';
           quSql.Params[11].DataType := ftInteger;
           quSql.Params[11].Value    := 4;

           quSql.Params[12].Name     := 'CodClp';
           quSql.Params[12].DataType := ftString;
           quSql.Params[12].Value    := Query1.FieldByName('CODCLP').AsString;

           quSql.Params[13].Name     := 'CodGru';
           quSql.Params[13].DataType := ftString;
           quSql.Params[13].Value    := Query1.FieldByName('CODGRU').AsString;

           quSql.Params[14].Name     := 'CodSub';
           quSql.Params[14].DataType := ftString;
           quSql.Params[14].Value    := Query1.FieldByName('CODSUB').AsString;

           quSql.Params[15].Name     := 'CodPro';
           quSql.Params[15].DataType := ftString;
           quSql.Params[15].Value    := Query1.FieldByName('CODPRO').AsString;

           quSql.ExecSQL;

           Inc(R);

           PB5.Position := R;

           Query1.Next;

     end;

{    FrmConversor.Caption := 'Emerion - Estoque...';

     Label2.Caption := '';

     with Query1,SQL do begin

          close;
          Text := ' Select * From Itens Where Itens.ESTOQ > '''+ '0' +''' Order by Grupo,SubGrupo,Seq';
          Open;
          First;

     end;

     PB5.Max      := Query1.RecordCount;
     PB5.Min      := 0;
     PB5.Position := 0;

     R := 0;

     while not Query1.Eof do begin

           Application.ProcessMessages;

           Label2.Caption := FNumZeros(IntToStr(Query1.FieldByName('GRUPO').AsInteger),3)+'-'+
                             FNumZeros(IntToStr(Query1.FieldByName('SUBGRUPO').AsInteger),4)+'-'+
                             FNumStrZero(Query1.FieldByName('SEQ').AsString);

           CodGru := '';
           CodSub := '';
           CodPro := '';
                             
           if Query1.FieldByName('ESTOQ').AsFloat > 0 then begin

              if Length( Trim(Query1.FieldByName('SEQ').AsString) ) = 5 then begin

                 quSql.Close;
                 quSql.Params.Clear;
                 quSql.SQL.Clear;
                 quSql.SQL.Add('Select CodGru,CodSub,CodPro From EstPro'+
                               ' Where EstPro.CodGru = :CodGru'+
                               '   and EstPro.CodSub = :CodSub'+
                               '   and EstPro.CodPro = :CodPro');

                 quSql.Params[0].Name     := 'CodGru';
                 quSql.Params[0].DataType := ftString;
                 quSql.Params[0].Value    := FNumZeros(IntToStr(Query1.FieldByName('GRUPO').AsInteger),3);
                 quSql.Params[1].Name     := 'CodSub';
                 quSql.Params[1].DataType := ftString;
                 quSql.Params[1].Value    := FNumZeros(IntToStr(Query1.FieldByName('SUBGRUPO').AsInteger),4);
                 quSql.Params[2].Name     := 'CodPro';
                 quSql.Params[2].DataType := ftString;
                 quSql.Params[2].Value    := FNumStrZero(Query1.FieldByName('SEQ').AsString);

                 quSQL.Open;

                 CodGru := quSQL.FieldByName('CODGRU').AsString;
                 CodSub := quSQL.FieldByName('CODSUB').AsString;
                 CodPro := quSQL.FieldByName('CODPRO').AsString;

                 if Trim( CodGru ) <> '' then begin

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
                                 Params[12].AsString   := 'EP';
                                 Params[13].AsFloat    := Query1.FieldByName('CUSTOVEN').AsFloat;
                                 Params[14].AsFloat    := Query1.FieldByName('ESTOQ').AsFloat;
                                 Params[15].AsFloat    := 0;
                                 Params[16].AsFloat    := 0;
                                 Params[17].AsFloat    := 0;
                                 Params[18].AsFloat    := 0;
                                 Params[19].AsFloat    := 0;
                                 Params[20].AsString   := ' ';
                                 Params[21].AsInteger  := 1;
                                 Params[22].AsString   := SeqEnf;
                                 Params[23].AsString   := ' ';
                                 Params[24].AsFloat    := Query1.FieldByName('CUSTOVEN').AsFloat;
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
                                 Params[13].AsFloat    := Query1.FieldByName('CUSTOVEN').AsFloat;
                                 Params[14].AsFloat    := Query1.FieldByName('ESTOQ').AsFloat;
                                 Params[15].AsFloat    := 0;
                                 Params[16].AsFloat    := 0;
                                 Params[17].AsFloat    := 0;
                                 Params[18].AsFloat    := 0;
                                 Params[19].AsFloat    := 0;
                                 Params[20].AsString   := ' ';
                                 Params[21].AsInteger  := 1;
                                 Params[22].AsString   := SeqEnf;
                                 Params[23].AsString   := ' ';
                                 Params[24].AsFloat    := Query1.FieldByName('CUSTOVEN').AsFloat;
                                 Params[25].AsString   := ' ';
                                 Params[26].AsString   := ' ';

                            end;

                            ExecSQL;

                       end;
                    end;
                 end;
              end;
           end;
           
           Inc(R);

           PB5.Position := R;

           Query1.Next;

     end;

     FrmConversor.Caption := 'Emerion - Atualizando Descrições...';

     Label2.Caption := '';

     with Query1,SQL do begin

          close;
          Text := ' Select * from itens Order by Grupo,SubGrupo,Seq';
          Open;
          First;

     end;

     PB5.Max      := Query1.RecordCount;
     PB5.Min      := 0;
     PB5.Position := 0;

     R := 0;

     while not Query1.Eof do begin

           Application.ProcessMessages;

           Label2.Caption := FNumZeros(IntToStr(Query1.FieldByName('GRUPO').AsInteger),3)+'-'+
                             FNumZeros(IntToStr(Query1.FieldByName('SUBGRUPO').AsInteger),4)+'-'+
                             FNumStrZero(Query1.FieldByName('SEQ').AsString);

           if Query1.FieldByName('GRUPO').AsInteger > 0 then begin

           with quSQL,SQL do begin

                Close;
                Text := ' Update EstPro Set FlgTrg = :FlgTrg'+
                        ' Where CodClp = :CodClp'+
                        '   and CodGru = :CodGru'+
                        '   and CodSub = :CodSub'+
                        '   and CodPro = :CodPro';

                with Params do begin

                     Params[0].AsString := '*';                
                     Params[0].AsString := '1';
                     Params[1].AsString := FNumZeros(IntToStr(Query1.FieldByName('GRUPO').AsInteger),3);
                     Params[2].AsString := FNumZeros(IntToStr(Query1.FieldByName('SUBGRUPO').AsInteger),4);
                     Params[3].AsString := FNumStrZero(Query1.FieldByName('SEQ').AsString);

                end;

                Open;

           end;

           if quSQL.FieldbyName('Reg').AsInteger = 0 then begin

              quSql.Close;
              quSql.Params.Clear;
              quSql.SQL.Clear;
              quSql.SQL.Add(' Insert Into EstPro(CodClp,CodGru,CodSub,CodPro,DscPro,DsrPro,CbaPro,RefPro,'+
                            '                    SimPro,CodUne,QtePro,CodUns,QtsPro,FlbPro,FlgTrg,IssPro,QtdEmb,PesLiq,PesBrt)'+
                            ' values (:CodClp,:CodGru,:CodSub,:CodPro,:DscPro,:DsrPro,:CbaPro,:RefPro,:SimPro,'+
                            '         :CodUne,:QtePro,:CodUns,:QtsPro,:FlbPro,:FlgTrg,:IssPro,:QtdEmb,:PesLiq,:PesBrt)');
              quSql.Params[00].Name     := 'CodClp';
              quSql.Params[00].DataType := ftString;
              quSql.Params[00].Value    := '1';
              quSql.Params[01].Name     := 'CodGru';
              quSql.Params[01].DataType := ftString;
              quSql.Params[01].Value    := FNumZeros(IntToStr(Query1.FieldByName('GRUPO').AsInteger),3);
              quSql.Params[02].Name     := 'CodSub';
              quSql.Params[02].DataType := ftString;
              quSql.Params[02].Value    := FNumZeros(IntToStr(Query1.FieldByName('SUBGRUPO').AsInteger),4);
              quSql.Params[03].Name     := 'CodPro';
              quSql.Params[03].DataType := ftString;
              quSql.Params[03].Value    := FNumStrZero(Query1.FieldByName('SEQ').AsString);
              quSql.Params[04].Name     := 'DscPro';
              quSql.Params[04].DataType := ftString;
              if Query1.FieldByName('DESCR').AsString <> '' then
                 quSql.Params[04].Value := Query1.FieldByName('DESCR').AsString
              else
                 quSql.Params[04].Value := 'INDEFINIDO';
              quSql.Params[05].Name     := 'DsrPro';
              quSql.Params[05].DataType := ftString;
              if Query1.FieldByName('DESCR').AsString <> '' then
                 quSql.Params[05].Value := Query1.FieldByName('DESCR').AsString
              else
                 quSql.Params[05].Value := 'INDEFINIDO';

              quSql.Params[06].Name     := 'CbaPro';
              quSql.Params[06].DataType := ftString;
              quSql.Params[06].Value    := Query1.FieldByName('CB').AsString;
              quSql.Params[07].Name     := 'RefPro';
              quSql.Params[07].DataType := ftString;
              quSql.Params[07].Value    := Query1.FieldByName('REF').AsString;
              quSql.Params[08].Name     := 'SimPro';
              quSql.Params[08].DataType := ftString;
              quSql.Params[08].Value    := Query1.FieldByName('SIMILAR').AsString;
              quSql.Params[09].Name     := 'CodUne';
              quSql.Params[09].DataType := ftString;
              if Query1.FieldByName('UNID').AsString <> '' then
                 quSql.Params[09].Value := Query1.FieldByName('UNID').AsString;
              quSql.Params[10].Name     := 'QtePro';
              quSql.Params[10].DataType := ftFloat;
              quSql.Params[10].Value    := 1;
              quSql.Params[11].Name     := 'CodUns';
              quSql.Params[11].DataType := ftString;
              if Query1.FieldByName('UNID').AsString <> '' then
                 quSql.Params[11].Value := Query1.FieldByName('UNID').AsString;
              quSql.Params[12].Name     := 'QtsPro';
              quSql.Params[12].DataType := ftFloat;
              quSql.Params[12].Value    := 1;
              quSql.Params[13].Name     := 'FlbPro';
              quSql.Params[13].DataType := ftString;
              quSql.Params[13].Value    := ' ';
              quSql.Params[14].Name     := 'FlgTrg';
              quSql.Params[14].DataType := ftString;
              quSql.Params[14].Value    := ' ';
              quSql.Params[15].Name     := 'IssPro';
              quSql.Params[15].DataType := ftFloat;
              quSql.Params[15].Value    := 0;
              quSql.Params[16].Name     := 'QtdEmb';
              quSql.Params[16].DataType := ftFloat;
              quSql.Params[16].Value    := 0;
              quSql.Params[17].Name     := 'PesLiq';
              quSql.Params[17].DataType := ftFloat;
              quSql.Params[17].Value    := 0;
              quSql.Params[18].Name     := 'PesBrt';
              quSql.Params[18].DataType := ftFloat;
              quSql.Params[18].Value    := 0;
              quSql.ExecSQL;

           end;

           Inc(R);

           PB5.Position := R;

           Query1.Next;

     end; }

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
