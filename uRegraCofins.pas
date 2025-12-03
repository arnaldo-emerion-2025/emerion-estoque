unit uRegraCofins;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Wwdatsrc, DBTables, Wwquery, DBCtrls, ExtCtrls, StdCtrls, Mask,
  Grids, DBGrids, Buttons, ComCtrls, clipBrd;

type
  TFrmRegraCofins = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    edPsqId_Regra_Cofins: TEdit;
    edPsqDescricao: TEdit;
    rgOrdem: TRadioGroup;
    rgBusca: TRadioGroup;
    BbPesquisa: TBitBtn;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    TabSheet2: TTabSheet;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit4: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Panel1: TPanel;
    bNovo: TBitBtn;
    bAlterar: TBitBtn;
    bExcluir: TBitBtn;
    bSalvar: TBitBtn;
    bCancelar: TBitBtn;
    DBNavigator1: TDBNavigator;
    upRegra_Cofins: TUpdateSQL;
    Regra_Cofins: TwwQuery;
    dsRegraCofins: TwwDataSource;
    EstCof: TwwQuery;
    dsEstCof: TwwDataSource;
    Regra_CofinsID_REGRA_COFINS: TIntegerField;
    Regra_CofinsDESCRICAO: TStringField;
    Regra_CofinsID_ESTCOF: TIntegerField;
    Regra_CofinsTRIBUTADO: TIntegerField;
    Regra_CofinsALIQUOTA: TFloatField;
    EstCofID_ESTCOF: TIntegerField;
    EstCofNOMCOF: TStringField;
    Regra_CofinsNOMCOF: TStringField;
    procedure BbPesquisaClick(Sender: TObject);
    procedure changeControls(habilita: boolean);
    procedure bNovoClick(Sender: TObject);
    procedure bAlterarClick(Sender: TObject);
    procedure bSalvarClick(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bExcluirClick(Sender: TObject);
    procedure Regra_CofinsAfterPost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRegraCofins: TFrmRegraCofins;

implementation

{$R *.DFM}

procedure TFrmRegraCofins.BbPesquisaClick(Sender: TObject);
var
  sqlSelect: string;
begin

  sqlSelect :=
    'select'
    + #13 + ' ID_Regra_Cofins,'
    + #13 + ' Descricao,'
    + #13 + ' ID_EStCof,'
    + #13 + ' Tributado,'
    + #13 + ' Aliquota'
    + #13 + 'From Regra_Cofins';

  if (rgBusca.ItemIndex = 0) then
  begin
    if (trim(edPsqId_Regra_COFINS.Text) <> '') then
      sqlSelect := sqlSelect + #13 + ' where ID_REGRA_COFINS = ' + trim(edPsqId_Regra_Cofins.Text)
    else
      sqlSelect := sqlSelect + #13 + ' where DESCRICAO like ' + QuotedStr(trim(edPsqDescricao.Text) + '%');
  end
  else
  begin
    if (trim(edPsqId_Regra_COFINS.Text) <> '') then
      sqlSelect := sqlSelect + #13 + ' where ID_REGRA_COFINS like ' + trim(edPsqId_Regra_Cofins.Text)
    else
      sqlSelect := sqlSelect + #13 + ' where DESCRICAO like ' + QuotedStr('%' + trim(edPsqDescricao.Text) + '%');
  end;

  if (rgOrdem.ItemIndex = 0) then
    sqlSelect := sqlSelect + #13 + ' Order By ID_REGRA_COFINS'
  else
    sqlSelect := sqlSelect + #13 + ' Order By DESCRICAO';

  Regra_Cofins.Active := false;
  Regra_Cofins.SQL.Text := sqlSelect;
  Regra_Cofins.Active := true;

end;

procedure TFrmRegraCofins.changeControls(habilita: boolean);
begin
  bNovo.Enabled := habilita;
  bAlterar.Enabled := habilita;
  bExcluir.Enabled := habilita;
  bSalvar.Enabled := not (habilita);
  bCancelar.Enabled := not (habilita);

  PageControl1.ActivePageIndex := 1;
end;

procedure TFrmRegraCofins.bNovoClick(Sender: TObject);
begin
  Regra_Cofins.insert;
  changeControls(false);
end;

procedure TFrmRegraCofins.bAlterarClick(Sender: TObject);
begin
  Regra_Cofins.edit;
  changeControls(false);
end;

procedure TFrmRegraCofins.bSalvarClick(Sender: TObject);
begin
  Regra_Cofins.post;

  Regra_Cofins.Active := false;
  Regra_Cofins.SQL.Text := 'select * from regra_cofins where ID_REGRA_COFINS = (select max(ID_REGRA_COFINS) from regra_Cofins)';
  Regra_Cofins.Active := true;

  changeControls(true);
end;

procedure TFrmRegraCofins.bCancelarClick(Sender: TObject);
begin
  Regra_Cofins.Cancel;
  changeControls(true);
end;

procedure TFrmRegraCofins.FormDestroy(Sender: TObject);
begin
  FrmRegraCofins := nil;
end;

procedure TFrmRegraCofins.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmRegraCofins.bExcluirClick(Sender: TObject);
begin
  if (application.messageBox('Deseja realmente excluir essa regra?', 'Atenção', MB_YESNO + MB_ICONQUESTION) = IDYES) then
  begin
    Regra_Cofins.delete;
    Regra_Cofins.ApplyUpdates;
    Regra_Cofins.CommitUpdates;
  end;
end;

procedure TFrmRegraCofins.Regra_CofinsAfterPost(DataSet: TDataSet);
begin
  Regra_Cofins.ApplyUpdates;
  Regra_Cofins.CommitUpdates;
end;

procedure TFrmRegraCofins.FormCreate(Sender: TObject);
begin
  Regra_Cofins.Active := true;
  EstCof.Active := true;
  changeControls(true);
end;

end.

