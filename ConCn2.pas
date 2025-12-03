unit ConCn2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, Buttons, FShowPadrao,
  dxDBColorMemo, dxDBColorEdit, dxColorEdit;

type
  TfmConCn2 = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    bConfirmar: TBitBtn;
    bCancelar: TBitBtn;
    Label1: TLabel;
    EdNroNfs: TdxColorEdit;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure bConfirmarClick(Sender: TObject);
    procedure EdNroNfsKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    {Private declarations}
  public
    sContinuar: string;
    {Public declarations}
  end;

var
  fmConCn2: TfmConCn2;

implementation

uses dxDemoUtils, ManGDB, Bbmensag, ManCnf, ManLr3;

{$R *.DFM}

procedure TfmConCn2.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then
    bCancelar.OnClick(Sender);

  if key = 123 then
    bConfirmar.OnClick(Sender);

end;

procedure TfmConCn2.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmConCn2.FormShow(Sender: TObject);
begin
  EdNroNfs.SetFocus;
end;

procedure TfmConCn2.bCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfmConCn2.bConfirmarClick(Sender: TObject);
begin

  ActiveControl := nil;

  if Trim(EdNroNfs.Text) <> '' then
  begin

    if StrToInt(EdNroNfs.Text) = fmManlr3.CmpNfsNroNfs.Value then
    begin

      sContinuar := 'S';

      Close;

    end
    else
      fmsgErro('No. de nota fiscal informado incorreto.', EdNroNfs);

  end
  else
    fmsgErro('Campo de preenchimento obrigatório não informado.', EdNroNfs);
end;

procedure TfmConCn2.EdNroNfsKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmConCn2.FormCreate(Sender: TObject);
begin
  inherited;
  sContinuar := 'N';
end;

end.
