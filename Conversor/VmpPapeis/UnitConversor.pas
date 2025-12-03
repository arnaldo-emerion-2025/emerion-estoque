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

  num := Length( Trim(Texto) );

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
begin
  if fMsg('Confirma Conversão dos Dados ?','O') then begin

     bCancelar.Enabled  := False;
     bConfirmar.Enabled := False;

{    FrmConversor.Caption := 'Emerion - SubGrupos...';

     Label2.Caption := '';

     with Query1,SQL do begin

          close;
          Text := ' Select * From SubGrupo Order by Grupo,CodSubg';
          Open;
          First;

     end;

     PB5.Max      := Query1.RecordCount;
     PB5.Min      := 0;
     PB5.Position := 0;

     R := 0;

     while not Query1.Eof do begin

           Application.ProcessMessages;

           Label2.Caption := Trim(IntToStr(Query1.FieldByName('CODGRU').AsInteger))+ '-' +Trim(IntToStr(Query1.FieldByName('CODSUBG').AsInteger));

           if Query1.FieldByName('CODGRU').AsInteger > 0 then begin

              with qrPsq,SQL do begin

                   Close;
                   Text := ' Select Count(*) as Reg From EstSub'+
                           ' Where CodGru = '''+ FNumZeros(IntToStr(Query1.FieldByName('CODGRU').AsInteger),3) +''''+
                           '   and CodSub = '''+ FNumZeros(IntToStr(Query1.FieldByName('CODSUBG').AsInteger),4) +'''';
                   Open;

              end;

              if qrPsq.FieldbyName('Reg').AsInteger = 0 then begin

                 quSql.Close;
                 quSql.Params.Clear;
                 quSql.SQL.Clear;
                 quSql.SQL.Add('Insert Into EstSub(CodGru,CodSub,NomSub) values (:CodGru,:CodSub,:NomSub)');
                 quSql.Params[0].Name     := 'CodGru';
                 quSql.Params[0].DataType := ftString;
                 quSql.Params[0].Value    := FNumZeros(IntToStr(Query1.FieldByName('CODGRU').AsInteger),3);
                 quSql.Params[1].Name     := 'CodSub';
                 quSql.Params[1].DataType := ftString;
                 quSql.Params[1].Value    := FNumZeros(IntToStr(Query1.FieldByName('CODSUBG').AsInteger),4);
                 quSql.Params[2].Name     := 'NomSub';
                 quSql.Params[2].DataType := ftString;
                 quSql.Params[2].Value    := UpperCase(copy(Trim(Query1.FieldByName('SUB_GRUPO').AsString),1,40));
                 quSql.ExecSQL;

              end;
           end;

           Inc(R);

           PB5.Position := R;

           Query1.Next;

     end; }

     FrmConversor.Caption := 'Emerion - Itens...';

     Label2.Caption := '';

     with Query1,SQL do begin

          Close;
          Text := ' Select * from item Order by Grupo,CodSubg,CodPro';
          Open;
          First;

     end;

     PB5.Max      := Query1.RecordCount;
     PB5.Min      := 0;
     PB5.Position := 0;

     R := 0;

     while not Query1.Eof do begin

           Application.ProcessMessages;

           Label2.Caption := FNumZeros(Trim(Query1.FieldByName('GRUPO').AsString),3)+'-'+
                             FNumZeros(IntToStr(Query1.FieldByName('CODSUBG').AsInteger),4)+'-'+
                             FNumStrZero(Trim(Query1.FieldByName('CODPRO').AsString));

           with quSQL,SQL do begin

                Close;
                Text := ' Select Count(*) as Reg From EstPro'+
                        ' Where EstPro.CodClp = :CodClp'+
                        '   and EstPro.CodGru = :CodGru'+
                        '   and EstPro.CodSub = :CodSub'+
                        '   and EstPro.CodPro = :CodPro';

                with Params do begin

                     Params[0].AsString := '1';
                     Params[1].AsString := FNumZeros(Trim(Query1.FieldByName('GRUPO').AsString),3);
                     Params[2].AsString := FNumZeros(IntToStr(Query1.FieldByName('CODSUBG').AsInteger),4);
                     Params[3].AsString := FNumStrZero(Trim(Query1.FieldByName('CODPRO').AsString));

                end;

                Open;

           end;

           if quSQL.FieldbyName('Reg').AsInteger = 0 then begin

              quSql.Close;
              quSql.Params.Clear;
              quSql.SQL.Clear;
              quSql.SQL.Add(' Insert Into EstPro(CodClp,CodGru,CodSub,CodPro,DscPro,DsrPro,FlbPro,FlgTrg,IssPro,QtdEmb,PesLiq,PesBrt)'+
                            '            values (:CodClp,:CodGru,:CodSub,:CodPro,:DscPro,:DsrPro,:FlbPro,:FlgTrg,:IssPro,:QtdEmb,:PesLiq,:PesBrt)');
              quSql.Params[00].Name     := 'CodClp';
              quSql.Params[00].DataType := ftString;
              quSql.Params[00].Value    := '1';
              quSql.Params[01].Name     := 'CodGru';
              quSql.Params[01].DataType := ftString;
              quSql.Params[01].Value    := FNumZeros(Trim(Query1.FieldByName('GRUPO').AsString),3);
              quSql.Params[02].Name     := 'CodSub';
              quSql.Params[02].DataType := ftString;
              quSql.Params[02].Value    := FNumZeros(IntToStr(Query1.FieldByName('CODSUBG').AsInteger),4);
              quSql.Params[03].Name     := 'CodPro';
              quSql.Params[03].DataType := ftString;
              quSql.Params[03].Value    := FNumStrZero(Trim(Query1.FieldByName('CODPRO').AsString));
              quSql.Params[04].Name     := 'DscPro';
              quSql.Params[04].DataType := ftString;
              quSql.Params[04].Value    := copy(Trim(Query1.FieldByName('ITEM').AsString),1,40);
              quSql.Params[05].Name     := 'DsrPro';
              quSql.Params[05].DataType := ftString;
              quSql.Params[05].Value    := copy(Trim(Query1.FieldByName('ITEM').AsString),1,20);
              quSql.Params[06].Name     := 'FlbPro';
              quSql.Params[06].DataType := ftString;
              quSql.Params[06].Value    := ' ';
              quSql.Params[07].Name     := 'FlgTrg';
              quSql.Params[07].DataType := ftString;
              quSql.Params[07].Value    := ' ';
              quSql.Params[08].Name     := 'IssPro';
              quSql.Params[08].DataType := ftFloat;
              quSql.Params[08].Value    := 0;
              quSql.Params[09].Name     := 'QtdEmb';
              quSql.Params[09].DataType := ftFloat;
              quSql.Params[09].Value    := 0;
              quSql.Params[10].Name     := 'PesLiq';
              quSql.Params[10].DataType := ftFloat;
              quSql.Params[10].Value    := 0;
              quSql.Params[11].Name     := 'PesBrt';
              quSql.Params[11].DataType := ftFloat;
              quSql.Params[11].Value    := 0;
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
