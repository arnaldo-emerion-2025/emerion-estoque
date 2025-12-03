unit uFcp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxDBELib, dxDBColorPickEdit, hNavigator, dxExEdtr, dxEdLib,
  dxDBColorCurrencyEdit, dxDBEdtr, dxDBColorLookupEdit, dxDBColorEdit,
  dxEditor, dxColorPickEdit, StdCtrls, ExtCtrls, Buttons, dxCntner,
  dxColorEdit, Grids, Wwdbigrd, Wwdbgrid, hGrid, ComCtrls, Db, Wwdatsrc,
  DBTables, Wwquery, FPadrao;

type
  TfmFcp = class(TfmPadrao)
    pcStr: TPageControl;
    pcPag1: TTabSheet;
    Shape1: TShape;
    Shape7: TShape;
    Shape11: TShape;
    Label12: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    Shape2: TShape;
    Shape3: TShape;
    Label11: TLabel;
    Panel3: TPanel;
    grREGRA_FCP: ThGrid;
    EdPsqCodStr: TdxColorEdit;
    BbPesquisa: TBitBtn;
    rgOrdem: TRadioGroup;
    rgBusca: TRadioGroup;
    EdPsqTipStr: TdxColorPickEdit;
    pcPag2: TTabSheet;
    Shape5: TShape;
    Shape4: TShape;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Shape6: TShape;
    Label73: TLabel;
    Label16: TLabel;
    EdCodStr: TdxDBColorEdit;
    EdNomStr: TdxDBColorEdit;
    pEstUfe: TPanel;
    Label28: TLabel;
    edAliquota: TdxDBColorCurrencyEdit;
    edUfEmitente: TdxDBColorEdit;
    Panel8: TPanel;
    nvUfe: ThDBNavigator;
    grUfe: ThGrid;
    EdTipStr: TdxDBColorPickEdit;
    Label25: TLabel;
    Label19: TLabel;
    EdSigUfe: TdxDBColorEdit;
    CbNomUfe: TdxDBColorLookupEdit;
    nvREGRA_FCP: ThDBNavigator;
    REGRA_FCP: TwwQuery;
    UpREGRA_FCP: TUpdateSQL;
    DsREGRA_FCP: TwwDataSource;
    REGRA_FCPID_REGRA_FCP: TIntegerField;
    REGRA_FCPCOD_REGRA_FCP: TStringField;
    REGRA_FCPTIP_FCP: TStringField;
    REGRA_FCP_UF: TwwQuery;
    UpREGRA_FCP_UF: TUpdateSQL;
    dsREGRA_FCP_UF: TwwDataSource;
    REGRA_FCP_UFID_REGRA_FCP_UF: TIntegerField;
    REGRA_FCP_UFID_REGRA_FCP: TIntegerField;
    REGRA_FCP_UFSIGUFE: TStringField;
    REGRA_FCP_UFALIQ_CFP: TFloatField;
    DsGerUfe: TwwDataSource;
    GerUfe: TwwQuery;
    GerUfeSIGUFE: TStringField;
    GerUfeNOMUFE: TStringField;
    procedure REGRA_FCP_UFNewRecord(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure nvUfeAltera(Sender: TObject);
    procedure nvREGRA_FCPAltera(Sender: TObject);
    procedure REGRA_FCPNewRecord(DataSet: TDataSet);
    procedure REGRA_FCPAfterScroll(DataSet: TDataSet);
    procedure nvUfeSalva(Sender: TObject);
    procedure BbPesquisaClick(Sender: TObject);
  private
    { Private declarations }
    Permissao: string;
  public
    { Public declarations }
  end;

var
  fmFcp: TfmFcp;

implementation

uses ManGDB, Bbacesso;

{$R *.DFM}

procedure TfmFcp.REGRA_FCP_UFNewRecord(DataSet: TDataSet);
begin
   REGRA_FCP_UFID_REGRA_FCP.AsInteger := REGRA_FCPID_REGRA_FCP.AsInteger;
   edAliquota.SetFocus;
end;

procedure TfmFcp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfmFcp.FormShow(Sender: TObject);
begin
  if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) then
     Permissao := fAcesso('FundodeCombatePobreza1')
  else
     Permissao := 'SSSSS';
end;

procedure TfmFcp.nvUfeAltera(Sender: TObject);
begin
   if (REGRA_FCP.State in [dsEdit, dsInsert]) then
      begin
         ShowMessage('Favor Salvar o Registro antes de Prosseguir');
         abort;
      end
end;

procedure TfmFcp.nvREGRA_FCPAltera(Sender: TObject);
begin
   if (REGRA_FCP_UF.State in [dsEdit, dsInsert]) then
      begin
         ShowMessage('Favor Salvar o Registro antes de Prosseguir');
         abort;
      end
end;

procedure TfmFcp.REGRA_FCPNewRecord(DataSet: TDataSet);
begin
  PcStr.ActivePage := pcPag2;
  EdNomStr.SetFocus;
end;

procedure TfmFcp.REGRA_FCPAfterScroll(DataSet: TDataSet);
begin
   REGRA_FCP_UF.Active := False;
   REGRA_FCP_UF.sql.Text := 'select * from REGRA_FCP_UF where ID_REGRA_FCP = ' +
                            IntToStr(REGRA_FCPID_REGRA_FCP.AsInteger);
   REGRA_FCP_UF.Active := True;
end;

procedure TfmFcp.nvUfeSalva(Sender: TObject);
begin
  inherited;
  if(Trim(EdSigUfe.Text) <> '') then
     begin
        if(fmManGDB.BuscaSimples('GERUFE','RESULTADO','','select count(1) RESULTADO from GERUFE ' +
                                 ' where SIGUFE = ' + QuotedStr(Trim(EdSigUfe.Text))) = '0') then
           begin
              ShowMessage('UF Informada Incorretamente. Favor Verificar');
              Abort;
           end;
     end;
end;

procedure TfmFcp.BbPesquisaClick(Sender: TObject);
var
   sBase, sFiltro, sOrdem : String;
begin
  inherited;

  sFiltro := '';
  sBase := 'Select * From REGRA_FCP where 1 = 1';
  //Order by ID_REGRA_FCP

  case (rgOrdem.ItemIndex) of
        0: sOrdem := ' order by ID_REGRA_FCP';
        1: sOrdem := ' order by COD_REGRA_FCP';
        2: sOrdem := ' order by TIP_FCP';
  end;

  if(Trim(EdPsqTipStr.Text) <> 'Todos') then
     begin
        sFiltro := sFiltro + ' and TIP_FCP = ' + QuotedStr(Trim(EdPsqTipStr.Text));
     end;

  if(Trim(EdPsqCodStr.Text) <> '') then
     begin
        case(rgBusca.ItemIndex) of
           0: sFiltro := sFiltro + ' and COD_REGRA_FCP like ' + QuotedStr(EdPsqCodStr.Text + '%');
           1: sFiltro := sFiltro + ' and COD_REGRA_FCP like ' + QuotedStr('%' + EdPsqCodStr.Text + '%');
        end;
     end;

  REGRA_FCP.Active := False;
  REGRA_FCP.SQL.text := sBase + sFiltro + sOrdem;
  REGRA_FCP.Active := True;
end;

end.
