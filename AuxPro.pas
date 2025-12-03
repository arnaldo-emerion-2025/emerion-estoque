unit AuxPro;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, dxCntner, dxEditor, dxEdLib, FShowPadrao, dxColorEdit;

type
  TfmAuxPro = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    Label4: TLabel;
    EdPsqTexto: TdxColorEdit;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    CodFor: integer;
    TipoPsq: string;
    CodClp, CodGru, CodSub, CodPro, SimPro: string;
    sCodClp, sCodGru, sCodSub, sCodPro, sSimpro: string;
  end;

var
  fmAuxPro: TfmAuxPro;

implementation

uses dxDemoUtils, BbMensag, PsqPro, PsqRef;

{$R *.DFM}

procedure TfmAuxPro.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then
    close;

  if (key = 13) and (Trim(EdPsqTexto.Text) <> '') then
  begin

    if TipoPsq = 'I' then
    begin {Descrição}

      try

        fmPsqPro := TfmPsqPro.Create(Self);

        with fmPsqPro.EstPro, SQL do
        begin

          Close;
          Text := ' Select CodClp,' +
            '        CodGru,' +
            '        CodSub,' +
            '        CodPro,' +
            '        DscPro,' +
            '        RefPro,' +
            '        SimPro,' +
            '        CbaPro,' +
            '        NumPro,' +
            '        CodUns,' +
            '        ClfSai,' +
            '        SaiIpi,' +
            '        SaiIcm,' +
            '        QtdEmb,' +
            '        CodTip,' +
            '        CodCat,' +
            '        FlgPro,' +
            '        LocPro,' +
            '        CodAnt,' +
            '        CodMrc,' +
            '        CodGru || _UNICODE_FSS ''' + '.' + ''' || CodSub || _UNICODE_FSS ''' + '.' + ''' || CodPro as CodIte' +
            ' From EstPro' +
            ' Where FlbPro  = ''' + ' ' + '''' +
            '   and SimPro <> ''' + ' ' + '''';

          if pos('#', EdPsqTexto.Text) > 0 then
          begin

            Text := Text + ' and DscPro LIKE ''%' + copy(EdPsqTexto.Text, 1, pos('#', EdPsqTexto.Text) - 1) + '%''';
            Text := Text + ' and DscPro LIKE ''%' + copy(EdPsqTexto.Text, pos('#', EdPsqTexto.Text) + 1, 60) + '%''';

          end
          else
            Text := Text + ' and DscPro LIKE ''%' + EdPsqTexto.Text + '%''';

          Text := Text + ' Order by DscPro ';
          Open;

        end;

        fmPsqPro.ShowModal;

        if Trim(fmPsqPro.CodClp) <> '' then
          CodClp := fmPsqPro.CodClp;
        if Trim(fmPsqPro.CodGru) <> '' then
          CodGru := fmPsqPro.CodGru;
        if Trim(fmPsqPro.CodGru) <> '' then
          CodSub := fmPsqPro.CodSub;
        if Trim(fmPsqPro.CodGru) <> '' then
          CodPro := fmPsqPro.CodPro;
        if Trim(fmPsqPro.SimPro) <> '' then
          SimPro := fmPsqPro.SimPro;

      finally

        FreeAndNil(fmPsqPro);

      end;

      if Trim(CodGru) <> '' then
        Close;

    end;

    if TipoPsq = 'R' then
    begin {Referência}

      try

        fmPsqRef := TfmPsqRef.Create(Self);

        with fmPsqRef.EstPro, SQL do
        begin

          Close;
          Text := ' Select CodClp,CodGru,CodSub,CodPro,DscPro,RefPro,NomGru,NomSub,SimPro,CbaPro,' +
            '        CodGru || _UNICODE_FSS ''' + '.' + ''' || CodSub || _UNICODE_FSS ''' + '.' + ''' || CodPro as CodIte' +
            ' From EstPro  LEFT JOIN EstClp ON (EstPro.CodClp = EstClp.CodClp)' +
            '              LEFT JOIN EstSub ON (EstPro.CodGru = EstSub.CodGru)' +
            '                              AND (EstPro.CodSub = EstSub.CodSub)' +
            '              LEFT JOIN EstGru ON (EstSub.CodGru = EstGru.CodGru)' +
            ' Where EstPro.SimPro <> = ''' + ' ' + '''';

          if pos('#', EdPsqTexto.Text) > 0 then
          begin

            Text := Text + '   and EstPro.RefPro LIKE ''%' + copy(EdPsqTexto.Text, 1, pos('#', EdPsqTexto.Text) - 1) + '%''';
            Text := Text + '   and EstPro.RefPro LIKE ''%' + copy(EdPsqTexto.Text, pos('#', EdPsqTexto.Text) + 1, 60) + '%''';

          end
          else
            Text := Text + '   and EstPro.RefPro LIKE ''%' + EdPsqTexto.Text + '%''';

          Text := Text + ' Order by EstPro.RefPro ';

          Open;

        end;

        fmPsqRef.ShowModal;

        if Trim(fmPsqRef.CodClp) <> '' then
          CodClp := fmPsqRef.CodClp;
        if Trim(fmPsqRef.CodGru) <> '' then
          CodGru := fmPsqRef.CodGru;
        if Trim(fmPsqRef.CodGru) <> '' then
          CodSub := fmPsqRef.CodSub;
        if Trim(fmPsqRef.CodGru) <> '' then
          CodPro := fmPsqRef.CodPro;
        if Trim(fmPsqRef.SimPro) <> '' then
          SimPro := fmPsqRef.SimPro;

      finally

        FreeAndNil(fmPsqRef);

      end;

      if Trim(CodGru) <> '' then
        Close;

    end;

  end
  else
  begin
    if key = 13 then
      fmsgErro('Texto para Pesquisa não Informado', EdPsqTexto);
  end;
end;

procedure TfmAuxPro.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

end.
