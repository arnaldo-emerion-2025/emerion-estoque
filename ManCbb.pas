unit ManCbb;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, ExtCtrls, Buttons, dxCntner, dxEditor, dxEdLib, StdCtrls,
  dxExEdtr, Db, DBTables, Wwquery, AlignEdit, dxColorCurrencyEdit,
  dxColorEdit, dxColorPickEdit, jpeg;

type
  TfmManCbB = class(TfmPadrao)
    Label6: TLabel;
    Label10: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    EdPsqCodPro: TdxColorEdit;
    EdPsqCodSub: TdxColorEdit;
    EdPsqCodGru: TdxColorEdit;
    EdPsqCodClp: TdxColorEdit;
    bPsqClp: TSpeedButton;
    bPsqGru: TSpeedButton;
    bPsqSub: TSpeedButton;
    bPsqPro: TSpeedButton;
    EdPsqNomPro: TdxColorEdit;
    EdPsqNomSub: TdxColorEdit;
    EdPsqNomGru: TdxColorEdit;
    EdPsqNomClp: TdxColorEdit;
    bConfirmar: TBitBtn;
    bCancelar: TBitBtn;
    PaintBox: TPaintBox;
    quSql: TwwQuery;
    Label8: TLabel;
    EdQtdBar: TdxColorEdit;
    Label7: TLabel;
    EdPsqRefPro: TdxColorEdit;
    Image1: TImage;
    Image2: TImage;
    CheckBox1: TCheckBox;
    Label5: TLabel;
    CheckBox2: TCheckBox;
    Label9: TLabel;
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdPsqCodEmpKeyPress(Sender: TObject; var Key: Char);
    procedure EdPsqCodClpExit(Sender: TObject);
    procedure bPsqClpClick(Sender: TObject);
    procedure EdPsqCodGruExit(Sender: TObject);
    procedure bPsqGruClick(Sender: TObject);
    procedure EdPsqCodSubExit(Sender: TObject);
    procedure EdPsqCodProExit(Sender: TObject);
    procedure bPsqSubClick(Sender: TObject);
    procedure bPsqProClick(Sender: TObject);
    procedure bConfirmarClick(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure EdPsqRefProExit(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmManCbB: TfmManCbB;

implementation

uses dxDemoUtils, Bbmensag, Bbgeral, Bbfuncao, PsqEmp, PsqClp, ManGDB, AuxIni;



{$R *.DFM}

procedure TfmManCbB.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManCbB.EdPsqCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManCbB.EdPsqCodClpExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodClp.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select NomClp From EstClp '+
                  ' Where CodClp = '''+ EdPsqCodClp.Text +'''';
          Open;


     end;

     if Trim( quSQL.FieldbyName('NomClp').AsString ) <> '' then
        EdPsqNomClp.Text := quSql.FieldByName('NomClp').AsString
     else
        fmsgErro('Classificação Informada não Encontrada.',EdPsqCodClp);

     end
  else
     fmsgErro('Campo de Preenchimento Obrigatorio.',EdPsqCodClp);
end;

procedure TfmManCbB.bPsqClpClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'Cls';

     fmAuxIni.ShowModal;

     if Trim( fmAuxIni.CodClp ) <> '' then begin

        EdPsqCodClp.Text := fmAuxIni.CodClp;
        EdPsqNomClp.Text := fmAuxIni.NomClp;

     end;

  finally   

     FreeAndNil(fmAuxIni);

  end;

  if Trim( EdPsqCodClp.Text ) <> '' then EdPsqCodGru.SetFocus;

end;

procedure TfmManCbB.EdPsqCodGruExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodGru.Text ) <> '' then begin

     EdPsqCodGru.Text := FNumZeros(EdPsqCodGru.Text,3);

     with quSql,SQL do begin

          Close;
          Text := ' Select NomGru From EstGru '+
                  ' Where CodGru = '''+ EdPsqCodGru.Text +'''';
          Open;

     end;

     if Trim( quSQL.FieldbyName('NomGru').AsString ) <> '' then
        EdPsqNomGru.Text := quSql.FieldByName('NomGru').AsString
     else
        fmsgErro('Grupo Informado não Encontrado.',EdPsqCodGru);

     end
  else
     fmsgErro('Campo de Preenchimento Obrigatorio.',EdPsqCodGru);
     
end;

procedure TfmManCbB.bPsqGruClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     if Trim( EdPsqCodClp.Text ) <> '' then fmAuxIni.CodClp := EdPsqCodClp.Text;

     fmAuxIni.TipoPesq := 'G';

     fmAuxIni.ShowModal;

     if Trim( fmAuxIni.CodGru ) <> '' then begin

        EdPsqCodGru.Text := fmAuxIni.CodGru;
        EdPsqNomGru.Text := fmAuxIni.NomGru;

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;
  
  if Trim( EdPsqCodGru.Text ) <> '' then EdPsqCodSub.SetFocus;

end;

procedure TfmManCbB.EdPsqCodSubExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodSub.Text ) <> '' then begin

     EdPsqCodSub.Text := FNumZeros(EdPsqCodSub.Text,4);

     with quSql,SQL do begin

          Close;
          Text := ' Select NomSub From EstSub '+
                  ' Where CodGru = '''+ EdPsqCodGru.Text +''''+
                  '   and CodSub = '''+ EdPsqCodSub.Text +'''';
          Open;

     end;

     if Trim( quSQL.FieldbyName('NomSub').AsString ) <> '' then
        EdPsqNomSub.Text := quSql.FieldByName('NomSub').AsString
     else
        fmsgErro('SubGrupo Informado não Encontrado.',EdPsqCodSub);

     end
  else
     fmsgErro('Campo de Preenchimento Obrigatorio.',EdPsqCodSub);

end;

procedure TfmManCbB.bPsqSubClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     if Trim( EdPsqCodClp.Text ) <> '' then fmAuxIni.CodClp := EdPsqCodClp.Text;
     if Trim( EdPsqCodGru.Text ) <> '' then fmAuxIni.CodGru := EdPsqCodGru.Text;

     fmAuxIni.TipoPesq := 'S';

     fmAuxIni.ShowModal;

     if Trim( fmAuxIni.CodSub ) <> '' then begin

        EdPsqCodGru.Text := fmAuxIni.CodGru;
        EdPsqNomGru.Text := fmAuxIni.NomGru;
        EdPsqCodSub.Text := fmAuxIni.CodSub;
        EdPsqNomSub.Text := fmAuxIni.NomSub;

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;
  
  if Trim( EdPsqCodSub.Text ) <> '' then EdPsqCodPro.SetFocus;

end;

procedure TfmManCbB.EdPsqCodProExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodPro.Text ) <> '' then begin

     EdPsqCodPro.Text := FNumStrZero(EdPsqCodPro.Text);

     with quSql,SQL do begin

          Close;
          Text := ' Select DscPro From EstPro '+
                  ' Where CodClp = :CodClp'+
                  '   and CodGru = :CodGru'+
                  '   and CodSub = :CodSub'+
                  '   and CodPro = :CodPro';

          with Params do begin

               Params[0].AsString := EdPsqCodClp.Text;
               Params[1].AsString := EdPsqCodGru.Text;
               Params[2].AsString := EdPsqCodSub.Text;
               Params[3].AsString := EdPsqCodPro.Text;

          end;

          Open;

     end;

     if Trim( quSQL.FieldbyName('DscPro').AsString ) <> '' then
        EdPsqNomPro.Text := quSQL.FieldByName('DscPro').AsString
     else
        fmsgErro('Item Informado não Encontrado.',EdPsqCodPro);

     end
  else
     fmsgErro('Campo de Preenchimento Obrigatorio.',EdPsqCodPro);
end;

procedure TfmManCbB.bPsqProClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     if Trim( EdPsqCodClp.Text ) <> '' then fmAuxIni.CodClp := EdPsqCodClp.Text;
     if Trim( EdPsqCodGru.Text ) <> '' then fmAuxIni.CodGru := EdPsqCodGru.Text;

     fmAuxIni.TipoPesq := 'I';

     fmAuxIni.ShowModal;

     if Trim( fmAuxIni.CodPro ) <> '' then begin

        EdPsqCodClp.Text := fmAuxIni.CodClp;
        EdPsqNomClp.Text := fmAuxIni.NomClp;
        EdPsqCodGru.Text := fmAuxIni.CodGru;
        EdPsqNomGru.Text := fmAuxIni.NomGru;
        EdPsqCodSub.Text := fmAuxIni.CodSub;
        EdPsqNomSub.Text := fmAuxIni.NomSub;
        EdPsqCodPro.Text := fmAuxIni.CodPro;
        EdPsqNomPro.Text := fmAuxIni.DscPro;

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;
  
  if Trim( EdPsqCodPro.Text ) <> '' then EdQtdBar.SetFocus;

end;

procedure TfmManCbB.bCancelarClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TfmManCbB.bConfirmarClick(Sender: TObject);
var
Impr    : TextFile;
i,j     : Integer;
Texto01 : string;
Texto02 : string;
Texto03 : string;
Texto04 : string;
Texto05 : string;
Texto06 : string;
Texto07 : string;
Texto08 : string;
CodEan  : string;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     if fMsg('Confirma Impressão de Etiquetas de Código de Barras ?','S') then begin

        ActiveControl := nil;

        if Trim( EdQtdBar.Text ) <> '' then begin

           if Trim( EdQtdBar.Text ) <> '0' then begin

              if Trim( EdPsqCodPro.Text ) <> '' then begin

                 with quSQL,SQL do begin

                      Close;
                      Text := ' Select EstBar.CodBar From EstBar '+
                              ' Where EstBar.CodClp = :CodClp'+
                              '   and EstBar.CodGru = :CodGru'+
                              '   and EstBar.CodSub = :CodSub'+
                              '   and EstBar.CodPro = :CodPro'+
                              '   and EstBar.FlgInt = :FlgInt';

                      with Params do begin

                           Params[0].AsString := EdPsqCodClp.Text;
                           Params[1].AsString := EdPsqCodGru.Text;
                           Params[2].AsString := EdPsqCodSub.Text;
                           Params[3].AsString := EdPsqCodPro.Text;
                           Params[4].AsString := 'Sim';

                      end;

                      Open;

                      CodEan := Trim( FieldbyName('CodBar').AsString );

                 end;

                 if Trim(CodEan) <> '' then begin
              
                    with quSql,SQL do begin

                         Close;
                         Text := ' Select EstPro.DscPro,'+
                                 '        EstPro.RefPro,'+
                                 '        EstPro.QtdEmb'+
                                 ' From EstPro '+
                                 ' Where EstPro.CodClp = :CodClp'+
                                 '   and EstPro.CodGru = :CodGru'+
                                 '   and EstPro.CodSub = :CodSub'+
                                 '   and EstPro.CodPro = :CodPro';

                         with Params do begin

                              Params[0].AsString := EdPsqCodClp.Text;
                              Params[1].AsString := EdPsqCodGru.Text;
                              Params[2].AsString := EdPsqCodSub.Text;
                              Params[3].AsString := EdPsqCodPro.Text;

                         end;

                         Open;

                    end;

                    if CheckBox1.Checked then begin

                       Texto01 := 'Ref: '+copy(Trim(quSQL.FieldbyName('RefPro').AsString),1,20);

                       Texto02 := CodEan;

                       Texto03 := 'CNPJ:08.982.270/0001-57';

                       Texto04 := copy(Trim(quSQL.FieldbyName('DscPro').AsString),01,40);

                       Texto05 := CodEan;

                       Texto06 := 'Validade: Indet.';

                       Texto07 := 'Contem: '+FloatToStr(quSQL.FieldbyName('QtdEmb').AsFloat)+' Peca(s)';

                       Texto08 := 'DISTRIBUIDO POR MPV ELETRO ELETRONICA';

                       AssignFile(Impr, 'LPT1');

                       Rewrite(Impr);

                       i := 1;

                       while i <= StrToInt(EdQtdBar.Text) do begin

                             Writeln(Impr,CHR(02) + 'qA'     + CHR(13));
                             Writeln(Impr,CHR(02) + 'c0000'  + CHR(13));
                             Writeln(Impr,CHR(02) + 'KI503'  + CHR(13));
                             Writeln(Impr,CHR(02) + 'O0220'  + CHR(13));
                             Writeln(Impr,CHR(02) + 'f220'   + CHR(13));
                             Writeln(Impr,CHR(02) + 'KW0279' + CHR(13));
                             Writeln(Impr,CHR(02) + 'KI7'    + CHR(01));
                             Writeln(Impr,CHR(02) + 'V0'     + CHR(13));
                             Writeln(Impr,CHR(02) + 'L'      + CHR(13));
                             Writeln(Impr,'H12');
                             Writeln(Impr,'PC');
                             Writeln(Impr,'A2');
                             Writeln(Impr,'D11');
                             Writeln(Impr,'121200000720010' + Texto01 + CHR(13));
                             Writeln(Impr,'1f3305401390010' + Texto02 + CHR(13));
                             Writeln(Impr,'121100000260011' + Texto03 + CHR(13));
                             Writeln(Impr,'121200001000010' + Texto04 + CHR(13));
                             Writeln(Impr,'121100001270010' + Texto05 + CHR(13));
                             Writeln(Impr,'121100000090011' + Texto06 + CHR(13));
                             Writeln(Impr,'121100000090120' + Texto07 + CHR(13));
                             Writeln(Impr,'121200000420010' + Texto08 + CHR(13));

                             Writeln(Impr,'^01');

                             Writeln(Impr,'Q' + '0001');

                             Writeln(Impr,'E');

                             Inc(i);

                       end;

                       CloseFile(Impr);

                    end;

                    if CheckBox2.Checked then begin

                       Texto01 := 'Ref: '+copy(Trim(quSQL.FieldbyName('RefPro').AsString),1,20)+' Contem: '+FloatToStr(quSQL.FieldbyName('QtdEmb').AsFloat)+' Peca(s)';

                       Texto02 := CodEan;

                       Texto03 := 'Distribuido por MPV Eletro Eletronica';

                       Texto04 := 'CNPJ:08.982.270/0001-57';

                       Texto05 := copy(Trim(quSQL.FieldbyName('DscPro').AsString),01,30);

                       Texto07 := copy(Trim(quSQL.FieldbyName('DscPro').AsString),31,30);

                       Texto06 := CodEan;

                       Texto08 := 'Validade: Indet.';

                       AssignFile(Impr, 'LPT1');

                       Rewrite(Impr);

                       i := 1;

                       while i <= StrToInt(EdQtdBar.Text) do begin

                             if i = 1 then i := 2;

                             Writeln(Impr,CHR(02) + 'qA'     + CHR(13));
                             Writeln(Impr,CHR(02) + 'c0000'  + CHR(13));
                             Writeln(Impr,CHR(02) + 'KI503'  + CHR(13));
                             Writeln(Impr,CHR(02) + 'O0220'  + CHR(13));
                             Writeln(Impr,CHR(02) + 'f220'   + CHR(13));
                             Writeln(Impr,CHR(02) + 'KW0400' + CHR(13));
                             Writeln(Impr,CHR(02) + 'KI7'    + CHR(01));
                             Writeln(Impr,CHR(02) + 'V0'     + CHR(13));
                             Writeln(Impr,CHR(02) + 'L'      + CHR(13));
                             Writeln(Impr,'H12');
                             Writeln(Impr,'PC');
                             Writeln(Impr,'A2');
                             Writeln(Impr,'D11');

                             for j := 1 to 2 do begin

                                 if j = 1 then begin         // 1ª Coluna

                                    Writeln(Impr,'121100000290009' + Texto01 + CHR(13));
                                    Writeln(Impr,'1f3303200790009' + Texto02 + CHR(13));
                                    Writeln(Impr,'111100000180009' + Texto03 + CHR(13));
                                    Writeln(Impr,'111100000090009' + Texto04 + CHR(13));
                                    Writeln(Impr,'121100000570009' + Texto05 + CHR(13));
                                    Writeln(Impr,'111100000700009' + Texto06 + CHR(13));
                                    Writeln(Impr,'121100000430009' + Texto07 + CHR(13));
                                    Writeln(Impr,'111100000090115' + Texto08 + CHR(13));

                                 end;

                                 if j = 2 then begin         // 2ª Coluna

                                    Writeln(Impr,'121100000290216' + Texto01 + CHR(13));
                                    Writeln(Impr,'1f3303200790216' + Texto02 + CHR(13));
                                    Writeln(Impr,'111100000180216' + Texto03 + CHR(13));
                                    Writeln(Impr,'111100000090216' + Texto04 + CHR(13));
                                    Writeln(Impr,'121100000570216' + Texto05 + CHR(13));
                                    Writeln(Impr,'111100000700216' + Texto06 + CHR(13));
                                    Writeln(Impr,'121100000430216' + Texto07 + CHR(13));
                                    Writeln(Impr,'111100000090322' + Texto08 + CHR(13));

                                 end;
                             end;

                             Writeln(Impr,'^02');

                             Writeln(Impr,'Q' + '0001');

                             Writeln(Impr,'E');

                             i := i + 2;

                       end;

                       CloseFile(Impr);

                    end;

                    end
                 else
                    fmsgErro('Item Informado não Possui Código de Barras.',EdPsqCodPro);

                 end
              else
                 fmsgErro('Item não Informado para Impressão dos Códigos de Barras.',EdPsqCodPro);

              end
           else
              fmsgErro('Quantidade de Estiquetas a Serem Emitidas não Informada.',EdQtdBar);

           end
        else
           fmsgErro('Campo de Preenchimento Obrigatorio não Informado.',EdQtdBar);

      end;

      end
   else
      fmsgErro(GMensagem,Nil);

end;

procedure TfmManCbB.FormShow(Sender: TObject);
begin
  inherited;

  EdPsqCodClp.Text := '1';

  EdPsqNomClp.Text := 'ACABADO';

  EdPsqRefPro.SetFocus;

end;

procedure TfmManCbB.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManCbB.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManCbb := Nil;
end;

procedure TfmManCbB.EdPsqRefProExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqRefPro.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select EstPro.CodClp,'+
                  '        EstPro.CodGru,'+
                  '        EstPro.CodSub,'+
                  '        EstPro.CodPro,'+
                  '        EstPro.DscPro'+
                  ' From EstPro'+
                  ' Where EstPro.RefPro = '''+ EdPsqRefPro.Text +'''';
          Open;

     end;

     if Trim( quSQL.FieldbyName('CodPro').AsString ) <> '' then begin

        EdPsqCodClp.Text := quSQL.FieldByName('CodClp').AsString;
        EdPsqCodGru.Text := quSQL.FieldByName('CodGru').AsString;
        EdPsqCodSub.Text := quSQL.FieldByName('CodSub').AsString;
        EdPsqCodPro.Text := quSQL.FieldByName('CodPro').AsString;
        EdPsqNomPro.Text := quSQL.FieldByName('DscPro').AsString;

        with quSql,SQL do begin

             Close;
             Text := ' Select EstClp.NomClp From EstClp Where EstClp.CodClp = '''+ EdPsqCodClp.Text +'''';
             Open;

             EdPsqNomClp.Text := FieldByName('NomClp').AsString;

        end;

        with quSql,SQL do begin

             Close;
             Text := ' Select EstGru.NomGru From EstGru Where EstGru.CodGru = '''+ EdPsqCodGru.Text +'''';
             Open;

             EdPsqNomGru.Text := quSql.FieldByName('NomGru').AsString;

        end;

        with quSql,SQL do begin

             Close;
             Text := ' Select EstSub.NomSub From EstSub '+
                     ' Where EstSub.CodGru = '''+ EdPsqCodGru.Text +''''+
                     '   and EstSub.CodSub = '''+ EdPsqCodSub.Text +'''';
             Open;

             EdPsqNomSub.Text := FieldByName('NomSub').AsString;

        end;

        EdQtdBar.SetFocus;

        end
     else
        fmsgErro('Referência Informada não Encontrada.',EdPsqRefPro);

  end;
end;

procedure TfmManCbB.CheckBox1Click(Sender: TObject);
begin
  inherited;
  if not CheckBox1.Checked then
     CheckBox2.Checked := True
  else
     CheckBox2.Checked := False;
end;

procedure TfmManCbB.CheckBox2Click(Sender: TObject);
begin
  inherited;
  if not CheckBox2.Checked then
     CheckBox1.Checked := True
  else
     CheckBox1.Checked := False;
end;

end.
