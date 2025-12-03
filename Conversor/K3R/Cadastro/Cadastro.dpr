program Cadastro;

uses
  Forms,
  UnitCadastro in 'UnitCadastro.pas' {FrmConversor};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TFrmConversor, FrmConversor);
  Application.Run;
end.
