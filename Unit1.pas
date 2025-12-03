unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ExtCtrls, DBCtrls, StdCtrls, Mask, Db, DBTables,
  Wwdatsrc, Wwquery;

type
  TForm1 = class(TForm)
    usuario: TwwQuery;
    DsUsuario: TwwDataSource;
    UpUsuario: TUpdateSQL;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    dbMain: TDatabase;
    usuarioID: TIntegerField;
    usuarioNOME: TStringField;
    usuarioFUNCAO: TStringField;
    usuarioOBSERVACAO: TStringField;
    usuarioSENHA: TStringField;
    usuarioLOGIN: TStringField;
    usuarioCURADOR: TStringField;
    usuarioNIVEL_ACESSO: TIntegerField;
    usuarioCONFIRMA_SENHA: TStringField;
    procedure usuarioAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    function applyUpdates(tQuery: TwwQuery): Boolean;
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

function TForm1.applyUpdates(tQuery: TwwQuery): Boolean;
begin
  with TwwQuery(tQuery) do
    begin

      dbMain.StartTransaction; {Inicia a Transação}

      try
        begin
           ApplyUpdates; {Tenta aplicar as alterações}
           dbMain.Commit; {confirma todas as alterações fechando a transação}

           result := True;
        end;
      except
        begin
           dbMain.Rollback; {desfaz as alterações se acontecer um erro}

           if TwwQuery(tQuery).State <> dsBrowse then
              TwwQuery(tQuery).CancelUpdates;

           //grEn2.SetFocus;
           raise;

           result := False;
        end;
      end;

      CommitUpdates; {sucesso!, limpa o cache...}

    end;

end;

procedure TForm1.usuarioAfterPost(DataSet: TDataSet);
begin
   applyUpdates(usuario);
end;

end.
