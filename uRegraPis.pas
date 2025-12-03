unit uRegraPis;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, Db, DBTables, Wwdatsrc, Wwquery, Grids, DBGrids,
  Buttons, ExtCtrls, hNavigator, DBCtrls, Mask;

type
  TFrmRegraPis = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    edPsqId_Regra_Pis: TEdit;
    Label2: TLabel;
    edPsqDescricao: TEdit;
    rgOrdem: TRadioGroup;
    rgBusca: TRadioGroup;
    BbPesquisa: TBitBtn;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    Regra_Pis: TwwQuery;
    dsRegraPis: TwwDataSource;
    upRegra_Pis: TUpdateSQL;
    wwQuery1: TwwQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    wwDataSource1: TwwDataSource;
    UpdateSQL1: TUpdateSQL;
    Regra_PisID_REGRA_PIS: TIntegerField;
    Regra_PisDESCRICAO: TStringField;
    Regra_PisID_ESTPIS: TIntegerField;
    Regra_PisTRIBUTADO: TIntegerField;
    Regra_PisALIQUOTA: TFloatField;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    EstPis: TwwQuery;
    dsEstPis: TwwDataSource;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Regra_Pisnompis: TStringField;
    EstPisID_ESTPIS: TIntegerField;
    EstPisNOMPIS: TStringField;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBNavigator1: TDBNavigator;
    Panel1: TPanel;
    bNovo: TBitBtn;
    bAlterar: TBitBtn;
    bExcluir: TBitBtn;
    bSalvar: TBitBtn;
    bCancelar: TBitBtn;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bNovoClick(Sender: TObject);
    procedure bAlterarClick(Sender: TObject);
    procedure bExcluirClick(Sender: TObject);
    procedure bSalvarClick(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure changeControls(habilita: boolean);
    procedure FormCreate(Sender: TObject);
    procedure Regra_PisAfterPost(DataSet: TDataSet);
    procedure Regra_PisAfterDelete(DataSet: TDataSet);
    procedure BbPesquisaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRegraPis: TFrmRegraPis;

implementation

{$R *.DFM}

procedure TFrmRegraPis.FormDestroy(Sender: TObject);
begin
  FrmRegraPis := nil
end;

procedure TFrmRegraPis.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := caFree;
end;

procedure TFrmRegraPis.bNovoClick(Sender: TObject);
begin
  Regra_Pis.Insert;
  Regra_PisTRIBUTADO.AsInteger := 0;

  changeControls(false);
end;

procedure TFrmRegraPis.bAlterarClick(Sender: TObject);
begin
  Regra_Pis.Edit;

  changeControls(false);
end;

procedure TFrmRegraPis.bExcluirClick(Sender: TObject);
begin
  if (application.messageBox('Deseja realmente excluir essa regra?', 'Atenção', MB_YESNO + MB_ICONQUESTION) = IDYES) then
  begin
    Regra_Pis.delete;
    Regra_Pis.ApplyUpdates;
    Regra_Pis.CommitUpdates;
  end;
end;

procedure TFrmRegraPis.bSalvarClick(Sender: TObject);
begin

  Regra_Pis.post;

  Regra_Pis.Active := false;
  Regra_Pis.SQL.Text := 'select * from regra_pis where id_regra_pis = (select max(id_regra_pis) from regra_pis)';
  Regra_Pis.Active := true;

  changeControls(true);
end;

procedure TFrmRegraPis.bCancelarClick(Sender: TObject);
begin
  Regra_Pis.cancel;

  changeControls(true);
end;

procedure TFrmRegraPis.changeControls(habilita: boolean);
begin
  bNovo.Enabled := habilita;
  bAlterar.Enabled := habilita;
  bExcluir.Enabled := habilita;
  bSalvar.Enabled := not (habilita);
  bCancelar.Enabled := not (habilita);

  PageControl1.ActivePageIndex := 1;
end;

procedure TFrmRegraPis.FormCreate(Sender: TObject);
begin
  changeControls(true);
  PageControl1.ActivePageIndex := 0;
end;

procedure TFrmRegraPis.Regra_PisAfterPost(DataSet: TDataSet);
begin
  Regra_Pis.ApplyUpdates;
  Regra_Pis.CommitUpdates;
end;

procedure TFrmRegraPis.Regra_PisAfterDelete(DataSet: TDataSet);
begin
  Regra_Pis.ApplyUpdates;
  Regra_Pis.CommitUpdates;
end;

procedure TFrmRegraPis.BbPesquisaClick(Sender: TObject);
var
  sqlSelect: string;
begin

  sqlSelect :=
    'select'
    + #13 + ' ID_Regra_Pis,'
    + #13 + ' Descricao,'
    + #13 + ' ID_EStPis,'
    + #13 + ' Tributado,'
    + #13 + ' Aliquota'
    + #13 + 'From Regra_Pis';

  if (rgBusca.ItemIndex = 0) then
  begin
    if (trim(edPsqId_Regra_Pis.Text) <> '') then
      sqlSelect := sqlSelect + #13 + ' where ID_REGRA_PIS = ' + trim(edPsqId_Regra_Pis.Text)
    else
      sqlSelect := sqlSelect + #13 + ' where DESCRICAO like ' + QuotedStr(trim(edPsqDescricao.Text) + '%');
  end
  else
  begin
    if (trim(edPsqId_Regra_Pis.Text) <> '') then
      sqlSelect := sqlSelect + #13 + ' where ID_REGRA_PIS like ' + trim(edPsqId_Regra_Pis.Text)
    else
      sqlSelect := sqlSelect + #13 + ' where DESCRICAO like ' + QuotedStr('%' + trim(edPsqDescricao.Text) + '%');
  end;

  if (rgOrdem.ItemIndex = 0) then
    sqlSelect := sqlSelect + #13 + ' Order By ID_REGRA_PIS'
  else
    sqlSelect := sqlSelect + #13 + ' Order By DESCRICAO';

  Regra_Pis.Active := false;
  Regra_Pis.SQL.Text := sqlSelect;
  Regra_Pis.Active := true;

end;

end.

