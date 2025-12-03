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
SeqEnf : string;
begin
  if fMsg('Confirma Conversão dos Dados ?','O') then begin

     bCancelar.Enabled  := False;
     bConfirmar.Enabled := False;

     {Conversão da Base de Dados TIPOS}

{    FrmConversor.Caption := 'Emerion - Grupos...';

     with Query1,SQL do begin

          close;
          Text := ' Select * From Grupo Order by Codigo';
          Open;
          First;

     end;

     PB5.Max      := Query1.RecordCount;
     PB5.Min      := 0;
     PB5.Position := 0;

     R := 0;

     while not Query1.Eof do begin

           Application.ProcessMessages;

           Label2.Caption := TrimLeft(TrimRight(IntToStr(Query1.FieldByName('CODIGO').AsInteger)));

           with qrPsq,SQL do begin

                Close;
                Text := ' Select Count(*) as Reg From EstGru'+
                        ' Where CodGru = '''+FNumZeros(IntToStr(Query1.FieldByName('CODIGO').AsInteger),3)+'''';
                Open;

           end;

           if qrPsq.FieldbyName('Reg').AsInteger = 0 then begin

              quSql.Close;
              quSql.Params.Clear;
              quSql.SQL.Clear;
              quSql.SQL.Add('Insert Into EstGru(CodGru,NomGru) values (:CodGru,:NomGru)');
              quSql.Params[0].Name     := 'CodGru';
              quSql.Params[0].DataType := ftString;
              quSql.Params[0].Value    := FNumZeros(IntToStr(Query1.FieldByName('CODIGO').AsInteger),3);
              quSql.Params[1].Name     := 'NomGru';
              quSql.Params[1].DataType := ftString;
              quSql.Params[1].Value    := TrimLeft(TrimRight(Query1.FieldByName('NOME').AsString));
              quSql.ExecSQL;

           end;

           Inc(R);

           PB5.Position := R;

           Query1.Next;

     end;

     FrmConversor.Caption := 'Emerion - SubGrupos...';

     Label2.Caption := '';

     with Query1,SQL do begin

          close;
          Text := ' Select * From SubGrupo Order by Grupo,Codigo';
          Open;
          First;

     end;

     PB5.Max      := Query1.RecordCount;
     PB5.Min      := 0;
     PB5.Position := 0;

     R := 0;

     while not Query1.Eof do begin

           Application.ProcessMessages;

           Label2.Caption := TrimLeft(TrimRight(IntToStr(Query1.FieldByName('GRUPO').AsInteger)))+'-'+
                             TrimLeft(TrimRight(IntToStr(Query1.FieldByName('CODIGO').AsInteger)));

           if Query1.FieldByName('GRUPO').AsInteger > 0 then begin

              with qrPsq,SQL do begin

                   Close;
                   Text := 'Select * from EstGru Where CodGru = '''+FNumZeros(IntToStr(Query1.FieldByName('GRUPO').AsInteger),3)+'''';
                   Open;
                   First;

              end;

              if qrPsq.Eof then begin

                 qrPsq.Close;
                 qrPsq.Params.Clear;
                 qrPsq.SQL.Clear;
                 qrPsq.SQL.Add('Insert Into EstGru(CodGru,NomGru) Values(:CodGru,:NomGru)');
                 qrPsq.Params[0].Name     := 'CodGru';
                 qrPsq.Params[0].DataType := ftString;
                 qrPsq.Params[0].Value    := FNumZeros(IntToStr(Query1.FieldByName('GRUPO').AsInteger),3);
                 qrPsq.Params[1].Name     := 'NomGru';
                 qrPsq.Params[1].DataType := ftString;
                 qrPsq.Params[1].Value    := 'INDEFINIDO';
                 qrPsq.ExecSQL;

              end;
           end;

           with qrPsq,SQL do begin

                Close;
                Text := ' Select Count(*) as Reg From EstSub'+
                        ' Where CodGru = '''+ FNumZeros(IntToStr(Query1.FieldByName('GRUPO').AsInteger),3) +''''+
                        '   and CodSub = '''+ FNumZeros(IntToStr(Query1.FieldByName('CODIGO').AsInteger),4) +'''';
                Open;

           end;

           if qrPsq.FieldbyName('Reg').AsInteger = 0 then begin

              quSql.Close;
              quSql.Params.Clear;
              quSql.SQL.Clear;
              quSql.SQL.Add('Insert Into EstSub(CodGru,CodSub,NomSub) values (:CodGru,:CodSub,:NomSub)');
              quSql.Params[0].Name     := 'CodGru';
              quSql.Params[0].DataType := ftString;
              quSql.Params[0].Value    := FNumZeros(IntToStr(Query1.FieldByName('GRUPO').AsInteger),3);
              quSql.Params[1].Name     := 'CodSub';
              quSql.Params[1].DataType := ftString;
              quSql.Params[1].Value    := FNumZeros(IntToStr(Query1.FieldByName('CODIGO').AsInteger),4);
              quSql.Params[2].Name     := 'NomSub';
              quSql.Params[2].DataType := ftString;
              quSql.Params[2].Value    := TrimLeft(TrimRight(Query1.FieldByName('DESCR').AsString));
              quSql.ExecSQL;

           end;

           Inc(R);

           PB5.Position := R;

           Query1.Next;

     end;

     FrmConversor.Caption := 'Emerion - Itens...';

     Label2.Caption := '';

     with Query1,SQL do begin

          close;
          Text := 'select * from itens Order by Grupo,SubGrupo,Seq';
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

              with qrPsq,SQL do begin

                   Close;
                   Text := ' Select * from EstGru Where EstGru.CodGru = '''+FNumZeros(IntToStr(Query1.FieldByName('GRUPO').AsInteger),3)+'''';
                   Open;

              end;

              if qrPsq.Eof then begin

                 qrPsq.Close;
                 qrPsq.Params.Clear;
                 qrPsq.SQL.Clear;
                 qrPsq.SQL.Add('Insert Into EstGru(CodGru,NomGru) Values(:CodGru,:NomGru)');
                 qrPsq.Params[0].Name     := 'CodGru';
                 qrPsq.Params[0].DataType := ftString;
                 qrPsq.Params[0].Value    := FNumZeros(IntToStr(Query1.FieldByName('GRUPO').AsInteger),3);
                 qrPsq.Params[1].Name     := 'NomGru';
                 qrPsq.Params[1].DataType := ftString;
                 qrPsq.Params[1].Value    := 'INDEFINIDO';
                 qrPsq.ExecSQL;

              end;
           end;

           if Query1.FieldByName('SUBGRUPO').AsInteger > 0 then begin

              with qrPsq,SQL do begin

                   Close;
                   Text := ' Select * From EstSub '+
                           ' Where EstSub.CodGru = '''+ FNumZeros(IntToStr(Query1.FieldByName('GRUPO').AsInteger),3)    +''''+
                           '   and EstSub.CodSub = '''+ FNumZeros(IntToStr(Query1.FieldByName('SUBGRUPO').AsInteger),4) +'''';
                   Open;

              end;

              if qrPsq.Eof then begin

                 qrPsq.Close;
                 qrPsq.Params.Clear;
                 qrPsq.SQL.Clear;
                 qrPsq.SQL.Add('Insert Into EstSub(CodGru,CodSub,NomSub) Values(:CodGru,:CodSub,:NomSub)');
                 qrPsq.Params[0].Name     := 'CodGru';
                 qrPsq.Params[0].DataType := ftString;
                 qrPsq.Params[0].Value    := FNumZeros(IntToStr(Query1.FieldByName('GRUPO').AsInteger),3);
                 qrPsq.Params[1].Name     := 'CodSub';
                 qrPsq.Params[1].DataType := ftString;
                 qrPsq.Params[1].Value    := FNumZeros(IntToStr(Query1.FieldByName('SUBGRUPO').AsInteger),4);
                 qrPsq.Params[2].Name     := 'NomSub';
                 qrPsq.Params[2].DataType := ftString;
                 qrPsq.Params[2].Value    := 'INDEFINIDO';
                 qrPsq.ExecSQL;

              end;
           end;

           if Query1.FieldByName('UNID').AsString <> '' then begin

              with qrPsq,SQL do begin

                   Close;
                   Text := ' Select * from EstUnd Where EstUnd.CodUnd = '''+ Query1.FieldByName('UNID').AsString +'''';
                   Open;
                   First;

              end;

              if qrPsq.Eof then begin

                 qrPsq.Close;
                 qrPsq.Params.Clear;
                 qrPsq.SQL.Clear;
                 qrPsq.SQL.Add('Insert Into EstUnd(CodUnd,NomUnd) Values(:CodUnd,:NomUnd)');
                 qrPsq.Params[0].Name     := 'CodUnd';
                 qrPsq.Params[0].DataType := ftString;
                 qrPsq.Params[0].Value    := Query1.FieldByName('UNID').AsString;
                 qrPsq.Params[1].Name     := 'NomUnd';
                 qrPsq.Params[1].DataType := ftString;
                 qrPsq.Params[1].Value    := 'INDEFINIDO';
                 qrPsq.ExecSQL;

              end;
           end;

           with quSQL,SQL do begin

                Close;
                Text := ' Select Count(*) as Reg From EstPro'+
                        ' Where EstPro.CodClp = :CodClp'+
                        '   and EstPro.CodGru = :CodGru'+
                        '   and EstPro.CodSub = :CodSub'+
                        '   and EstPro.CodPro = :CodPro';

                with Params do begin

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

     end;

     FrmConversor.Caption := 'Emerion - Tabela de Preços...';

     Label2.Caption := '';

     with Query1,SQL do begin

          close;
          Text := ' Select * From Itens Order by Grupo,SubGrupo,Seq';
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

           quSql.Close;
           quSql.Params.Clear;
           quSql.SQL.Clear;
           quSql.SQL.Add(' Update EstIte set VchIte = :VchIte, VcrIte = :VcrIte,VcpIte = :VcpIte,'+
                         '                   Vb1Ite = :Vb1Ite, Vb2Ite = :Vb2Ite,Vb3Ite = :Vb3Ite,'+
                         '                   Vb4Ite = :Vb4Ite, Vb5Ite = :Vb5Ite,VreIte = :VreIte,'+
                         '                   VprIte = :VprIte, FlgTrg = :FlgTrg'+
                         ' Where CodEmp = :CodEmp and CodClp = :CodClp and CodGru = :CodGru'+
                         '   and CodSub = :CodSub and CodPro = :CodPro');
           quSql.Params[00].Name     := 'VchIte';
           quSql.Params[00].DataType := ftFloat;
           quSql.Params[00].Value    := 0;
           quSql.Params[01].Name     := 'VcrIte';
           quSql.Params[01].DataType := ftFloat;
           quSql.Params[01].Value    := Query1.FieldByName('CUSTO').AsFloat;
           quSql.Params[02].Name     := 'VcpIte';
           quSql.Params[02].DataType := ftFloat;
           quSql.Params[02].Value    := 0;
           quSql.Params[03].Name     := 'Vb1Ite';
           quSql.Params[03].DataType := ftFloat;
           if (Query1.FieldByName('CUSTO').AsFloat > 0) and (Query1.FieldByName('T1').AsFloat > 0) then
              quSql.Params[03].Value := Query1.FieldByName('CUSTO').AsFloat + fStrRound(fStrRound(Query1.FieldByName('CUSTO').AsFloat * Query1.FieldByName('T1').AsFloat,4)/100,4)
           else
              quSql.Params[03].Value := 0;
           quSql.Params[04].Name     := 'Vb2Ite';
           quSql.Params[04].DataType := ftFloat;
           if (Query1.FieldByName('CUSTO').AsFloat > 0) and (Query1.FieldByName('T2').AsFloat > 0) then
              quSql.Params[04].Value := Query1.FieldByName('CUSTO').AsFloat + fStrRound(fStrRound(Query1.FieldByName('CUSTO').AsFloat * Query1.FieldByName('T2').AsFloat,4)/100,4)
           else
              quSql.Params[04].Value := 0;
           quSql.Params[05].Name     := 'Vb3Ite';
           quSql.Params[05].DataType := ftFloat;
           if (Query1.FieldByName('CUSTO').AsFloat > 0) and (Query1.FieldByName('T3').AsFloat > 0) then
              quSql.Params[05].Value := Query1.FieldByName('CUSTO').AsFloat + fStrRound(fStrRound(Query1.FieldByName('CUSTO').AsFloat * Query1.FieldByName('T3').AsFloat,4)/100,4)
           else
              quSql.Params[05].Value := 0;
           quSql.Params[06].Name     := 'Vb4Ite';
           quSql.Params[06].DataType := ftFloat;
           quSql.Params[06].Value    := 0;
           quSql.Params[07].Name     := 'Vb5Ite';
           quSql.Params[07].DataType := ftFloat;
           quSql.Params[07].Value    := 0;
           quSql.Params[08].Name     := 'VreIte';
           quSql.Params[08].DataType := ftFloat;
           quSql.Params[08].Value    := 0;
           quSql.Params[09].Name     := 'VprIte';
           quSql.Params[09].DataType := ftFloat;
           quSql.Params[09].Value    := 0;
           quSql.Params[10].Name     := 'FlgTrg';
           quSql.Params[10].DataType := ftString;
           quSql.Params[10].Value    := '*';
           quSql.Params[11].Name     := 'CodEmp';
           quSql.Params[11].DataType := ftInteger;
           quSql.Params[11].Value    := 1;
           quSql.Params[12].Name     := 'CodClp';
           quSql.Params[12].DataType := ftString;
           quSql.Params[12].Value    := '1';
           quSql.Params[13].Name     := 'CodGru';
           quSql.Params[13].DataType := ftString;
           quSql.Params[13].Value    := FNumZeros(IntToStr(Query1.FieldByName('GRUPO').AsInteger),3);
           quSql.Params[14].Name     := 'CodSub';
           quSql.Params[14].DataType := ftString;
           quSql.Params[14].Value    := FNumZeros(IntToStr(Query1.FieldByName('SUBGRUPO').AsInteger),4);
           quSql.Params[15].Name     := 'CodPro';
           quSql.Params[15].DataType := ftString;
           quSql.Params[15].Value    := FNumStrZero(Query1.FieldByName('SEQ').AsString);
           quSql.ExecSQL;

           Inc(R);

           PB5.Position := R;

           Query1.Next;

     end;

     FrmConversor.Caption := 'Emerion - Estoque...';

     Label2.Caption := '';

     with Query1,SQL do begin

          close;
          Text := ' Select * From Itens Where ESTOQ > '''+ '0' +''' Order by Grupo,SubGrupo,Seq';
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

           with quSQL,SQL do begin

                Close;
                Text := ' Select Count(*) as Reg From EstEnf'+
                        ' Where EstEnf.CodClp = :CodClp'+
                        '   and EstEnf.CodGru = :CodGru'+
                        '   and EstEnf.CodSub = :CodSub'+
                        '   and EstEnf.CodPro = :CodPro';

                with Params do begin

                     Params[0].AsString := '1';
                     Params[1].AsString := FNumZeros(IntToStr(Query1.FieldByName('GRUPO').AsInteger),3);
                     Params[2].AsString := FNumZeros(IntToStr(Query1.FieldByName('SUBGRUPO').AsInteger),4);
                     Params[3].AsString := FNumStrZero(Query1.FieldByName('SEQ').AsString);

                end;

                Open;

           end;

           if quSQL.FieldbyName('Reg').AsInteger = 0 then begin

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
                        Params[02].AsInteger  := 1;
                        Params[03].AsString   := '1';
                        Params[04].AsString   := FNumZeros(IntToStr(Query1.FieldByName('GRUPO').AsInteger),3);
                        Params[05].AsString   := FNumZeros(IntToStr(Query1.FieldByName('SUBGRUPO').AsInteger),4);
                        Params[06].AsString   := FNumStrZero(Query1.FieldByName('SEQ').AsString);
                        Params[07].AsString   := 'UN';
                        Params[08].AsString   := 'UN';
                        Params[09].AsDateTime := Date;
                        Params[10].AsDateTime := Date;
                        Params[11].AsString   := TimeToStr(Time);
                        Params[12].AsString   := 'EA';
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

           Inc(R);

           PB5.Position := R;

           Query1.Next;

     end; }

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
