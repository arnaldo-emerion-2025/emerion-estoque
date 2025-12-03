program Conversor;

uses
  Forms,
  UnitConversor in '..\Betina\UnitConversor.pas' {FrmConversor};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TFrmConversor, FrmConversor);
  Application.Run;
end.
