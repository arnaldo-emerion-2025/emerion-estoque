unit uLogEststr;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Wwdatsrc, DBTables, Wwquery, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TfmLogST = class(TForm)
    Shape5: TShape;
    Shape4: TShape;
    Label13: TLabel;
    gEststr: TDBGrid;
    eststr: TwwQuery;
    dsEststr: TwwDataSource;
    Shape1: TShape;
    Shape2: TShape;
    Label73: TLabel;
    gEstufe: TDBGrid;
    dsEstufe: TwwDataSource;
    estufe: TwwQuery;
    estufeOPERACAO: TStringField;
    estufeUSUARIO: TStringField;
    estufeDTELOG: TDateTimeField;
    estufeOPELOG: TStringField;
    estufeSEQLOG: TIntegerField;
    estufeHRELOG: TStringField;
    estufeUSULOG: TIntegerField;
    estufeCODSTR: TStringField;
    estufeTIPSTR: TStringField;
    estufeSIGUFE: TStringField;
    estufeICMSUB: TFloatField;
    estufeMRGSUB: TFloatField;
    estufeBASESB: TFloatField;
    estufeCODCFO: TStringField;
    estufeREGICM: TStringField;
    estufeTIPICM: TStringField;
    estufeREGIPI: TStringField;
    estufeTIPIPI: TStringField;
    estufeCODTXF: TStringField;
    estufeCODTME: TStringField;
    estufeDTEENV: TDateTimeField;
    estufeCODTCL: TIntegerField;
    estufeUFEMITENTE: TStringField;
    estufeCODREGTRIB: TIntegerField;
    estufeMRGMVA: TFloatField;
    estufeMRGMVA_SINIEF: TFloatField;
    estufeIVA_ORIGNAL: TFloatField;
    estufeREGIME: TStringField;

    constructor Create(AOwner: TComponent; codStr, tipstr: String);overload;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmLogST: TfmLogST;

implementation

{$R *.DFM}

{ TfmLogST }

constructor TfmLogST.Create(AOwner: TComponent; codStr, tipstr: String);
begin
   inherited Create(AOwner);

   eststr.Active := False;
   eststr.Params.ParamByName('CODSTR').AsString := codStr;
   eststr.Params.ParamByName('TIPSTR').AsString := tipstr;
   eststr.Active := True;

   estufe.Active := False;
   estufe.Params.ParamByName('CODSTR').AsString := codstr;
   estufe.Params.ParamByName('TIPSTR').AsString := tipstr;
   estufe.Active := True;
end;

end.
