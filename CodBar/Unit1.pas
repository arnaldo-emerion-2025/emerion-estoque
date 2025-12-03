unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button2: TButton;
    Edit2: TEdit;
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses bbgeral, bbfuncao;

{$R *.DFM}

procedure TForm1.Button2Click(Sender: TObject);
begin
  Edit2.Text := fGeraCB2('789848242'+fNumZeros(Edit1.Text,3));
end;

end.
