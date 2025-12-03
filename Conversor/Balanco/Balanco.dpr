program Balanco;

uses
  Forms,
  ManPri in 'ManPri.pas' {fmConversor};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TfmConversor, fmConversor);
  Application.Run;
end.
