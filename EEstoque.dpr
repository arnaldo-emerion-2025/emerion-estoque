program EEstoque;

uses
  Forms,
  Windows,
  Dialogs,
  SysUtils,
  Bberro in '..\..\..\..\_wgLib\Lib\Bberro.pas',
  Bbfuncao in '..\..\..\..\_wgLib\Lib\Bbfuncao.pas',
  Bbmensag in '..\..\..\..\_wgLib\Lib\Bbmensag.pas',
  BbQFuncao in '..\..\..\..\_wgLib\Lib\BbQfuncao.pas',
  Bbgeral in '..\..\..\..\_wgLib\Lib\Bbgeral.pas',
  Frelpadrao in '..\..\..\..\_wgLib\Padrao\Frelpadrao.pas' {fmRelPadrao},
  BbGetText in '..\..\..\..\_wgLib\Lib\Bbgettext.pas',
  ManTUs in '..\..\..\..\_WGLIB\padrao\ManTUs.pas' {fmManTUs},
  ManTSe in '..\..\..\..\_WGLIB\padrao\ManTse.pas' {fmManTSe},
  Fpadrao in '..\..\..\..\_WGLIB\padrao\Fpadrao.pas' {fmPadrao},
  Fpreview in '..\..\..\..\_WGLIB\padrao\Fpreview.pas' {fmPreview},
  ManInf in '..\..\..\..\_WGLIB\padrao\ManInf.pas' {fmManInf},
  ManLog in '..\..\..\..\_WGLIB\padrao\ManLog.pas' {fmManLog},
  AuxCod in 'AuxCod.pas' {fmAuxCod},
  AuxPro in 'AuxPro.pas' {fmAuxPro},
  VerUsu in '..\..\..\..\_WGLIB\padrao\VerUsu.pas' {fmVerUsu},
  ManCat in 'ManCat.pas' {fmManCat},
  ManCor in 'ManCor.pas' {fmManCor},
  ManUnd in 'ManUnd.pas' {fmManUnd},
  ManIpi in 'ManIpi.pas' {fmManIpi},
  ManGru in 'ManGru.pas' {fmManGru},
  ManDef in '..\..\..\..\_WGLIB\padrao\ManDef.pas' {fmManDef},
  Bbacesso in '..\..\..\..\_WGLIB\lib\Bbacesso.pas',
  SadReg in '..\..\..\..\_WGLIB\padrao\SadReg.pas' {fmSadReg},
  ManEnf in 'ManEnf.pas' {fmManEnf},
  ManSda in 'ManSda.pas' {fmManSda},
  ColR02 in 'ColR02.pas' {fmColR02},
  PsqCpr in '..\..\..\..\_WGLIB\PadraoPsq\PsqCpr.pas' {fmPsqCpr},
  PsqCor in '..\..\..\..\_WGLIB\PadraoPsq\PsqCor.pas' {fmPsqCor},
  PsqClp in '..\..\..\..\_WGLIB\PadraoPsq\PsqClp.pas' {fmPsqClp},
  PsqIcms in '..\..\..\..\_WGLIB\PadraoPsq\PsqIcms.pas' {fmPsqIcms},
  PsqSub in '..\..\..\..\_WGLIB\PadraoPsq\PsqSub.pas' {fmPsqSub},
  PsqCom in '..\..\..\..\_WGLIB\PadraoPsq\PsqCom.pas' {fmPsqCom},
  PsqOpe in '..\..\..\..\_WGLIB\PadraoPsq\PsqOpe.pas' {fmPsqOpe},
  ManPar in 'ManPar.pas' {fmManPar},
  ManAce in '..\..\..\..\_WGLIB\padrao\ManAce.pas' {fmManAce},
  ManAtu in '..\..\..\..\_WGLIB\padrao\ManAtu.pas' {fmManAtu},
  PsqIpi in '..\..\..\..\_WGLIB\PadraoPsq\PsqIpi.pas' {fmPsqIpi},
  PsqStr in '..\..\..\..\_WGLIB\PadraoPsq\PsqStr.pas' {fmPsqStr},
  EstR01 in '..\Emerion\EstR01.pas' {fmEstR01},
  EstR05 in '..\Emerion\EstR05.pas' {fmEstR05},
  PsqPro in '..\..\..\..\_WGLIB\PadraoPsq\PsqPro.pas' {fmPsqPro},
  AuxIni in '..\..\..\..\_WGLIB\PadraoPsq\AuxIni.pas' {fmAuxIni},
  PsqGru in '..\..\..\..\_WGLIB\PadraoPsq\PsqGru.pas' {fmPsqGru},
  PsqRef in '..\..\..\..\_WGLIB\PadraoPsq\PsqRef.pas' {fmPsqRef},
  EstR04 in '..\Emerion\EstR04.pas' {fmEstR04},
  FMensag in '..\..\..\..\_WGLIB\padrao\FMensag.pas' {fmMensag},
  FMsgConf in '..\..\..\..\_WGLIB\padrao\FMsgConf.pas' {fmMsgConf},
  ManTip in 'ManTip.pas' {fmManTip},
  ManApr in 'ManApr.pas' {fmManApr},
  ManSds in 'ManSds.pas' {fmManSds},
  ManMrc in 'ManMrc.pas' {fmManMrc},
  PsqMrc in '..\..\..\..\_WGLIB\PadraoPsq\PsqMrc.pas' {fmPsqMrc},
  PsqTip in '..\..\..\..\_WGLIB\PadraoPsq\PsqTip.pas' {fmPsqTip},
  EstR02 in '..\Emerion\EstR02.pas' {fmEstR02},
  ManImp in 'ManImp.pas' {fmManImp},
  ManCba in 'ManCba.pas' {fmManCba},
  ColR06 in 'ColR06.pas' {fmColR06},
  AuxPsq in '..\..\..\..\_WGLIB\PadraoPsq\AuxPsq.pas' {fmAuxPsq},
  PsqEco in '..\..\..\..\_WGLIB\PadraoPsq\PsqEco.pas' {fmPsqEco},
  ConClf in 'ConClf.pas' {fmConClf},
  EstR07 in '..\Emerion\EstR07.pas' {fmEstR07},
  ManEns in 'ManEns.pas' {fmManEns},
  ManNro in 'ManNro.pas' {fmManDsc},
  ManPro2 in 'ManPro2.pas' {fmManPro2},
  FShowpadrao in '..\..\..\..\_WGLIB\padrao\FShowpadrao.pas' {fmShowPadrao},
  ManBDE in '..\..\..\..\_WGLIB\padrao\ManBDE.pas' {fmManBDE},
  ManApl in '..\..\..\..\_WGLIB\padrao\ManApl.pas' {fmManApl},
  ManBar in 'ManBar.pas' {fmManBar},
  ManPrc in 'ManPrc.pas' {fmManPrc},
  ManTxf in 'ManTxf.pas' {fmManTxf},
  ManCol in '..\Emerion\ManCol.pas' {fmManCol},
  EstR10 in '..\Emerion\EstR10.pas' {fmEstR10},
  ManUfe in 'ManUfe.pas' {fmManUfe},
  ManEnv in '..\Emerion\ManEnv.pas' {fmManEnv},
  EstR06 in 'EstR06.pas' {fmEstR06},
  EstR11 in '..\Emerion\EstR11.pas' {fmEstR11},
  EstR03 in 'EstR03.pas' {fmEstR03},
  EstR08 in '..\Emerion\EstR08.pas' {fmEstR08},
  EstR09 in '..\Emerion\EstR09.pas' {fmEstR09},
  ManPri in '..\Emerion\ManPri.pas' {fmManPri},
  ManEmb in '..\Emerion\ManEmb.pas' {fmManEmb},
  ManRef in '..\Emerion\ManRef.pas' {fmManRef},
  ManTrf in '..\Emerion\ManTrf.pas' {fmManTrf},
  EstR12 in '..\Emerion\EstR12.pas' {fmEstR12},
  ManRo1 in '\\192.168.5.100\fontes\_wgsys\emerion\fatura\Dualcomp - Thiago\Nota Fiscal\Compras\dualcomp\ManRo1.pas' {fmManRo1},
  PsqCmp in '\\192.168.5.100\fontes\_wgsys\emerion\pedidos\dualcomp\PsqCmp.pas' {fmPsqCmp},
  PsqRes in '\\192.168.5.100\fontes\_wgsys\emerion\pedidos\dualcomp\PsqRes.pas' {fmPsqRes},
  ManRom in '\\192.168.5.100\fontes\_wgsys\emerion\compras\dualcompSN\ManRom.pas' {fmManRom},
  ManCnf in '\\192.168.5.100\fontes\_wgsys\emerion\compras\dualcompSN\ManCnf.pas' {fmManCnf},
  ConCn2 in '\\192.168.5.100\fontes\_wgsys\emerion\compras\dualcompSN\ConCn2.pas' {fmConCn2},
  ManFro in '\\192.168.5.100\fontes\_wgsys\emerion\compras\dualcompSN\ManFro.pas' {fmManFro},
  PsqCro in '\\192.168.5.100\fontes\_wgsys\emerion\compras\dualcompSN\PsqCro.pas' {fmPsqCro},
  PsqFro in '\\192.168.5.100\fontes\_wgsys\emerion\compras\dualcompSN\PsqFro.pas' {fmPsqFro},
  ManCbb in '\\192.168.5.100\fontes\_wgsys\emerion\estoque\dualcomp\ManCbb.pas' {fmManCbB},
  ConPar in '\\192.168.5.100\fontes\_wgsys\emerion\estoque\dualcomp\ConPar.pas' {fmConPar},
  ManAtP in '\\192.168.5.100\fontes\_wgsys\emerion\estoque\dualcompSN\ManAtP.pas' {fmManAtP},
  ManGDB in '\\192.168.5.100\fontes\_wglib\padrao\ManGDB.pas' {fmManGDB: TDataModule},
  uIntegracaoProd in 'uIntegracaoProd.pas' {fmIntegracaoProd},
  ExcelControl in '..\..\..\..\_wglib\lib\ExcelControl.pas',
  uRegraPis in 'uRegraPis.pas' {FrmRegraPis},
  uRegraCofins in 'uRegraCofins.pas' {FrmRegraCofins},
  ManIcm in '\\192.168.5.100\fontes\_wgsys\emerion\pedidos\dualcompSN\ManIcm.pas' {fmManIcm},
  ManAtuProd in '\\192.168.5.100\fontes\_wgsys\emerion\frenteloja\dualcompSN\ManAtuProd.pas' {fmManAtuProd},
  ManThrPAF in '..\..\..\..\_wglib\Lazarus\Linux\ManThrPAF.pas',
  ManPAF in '\\192.168.5.100\fontes\_wgsys\emerion\fatura\Dualcomp - DISN\Nota Fiscal\ManPAF.pas' {fmManPAF: TDataModule},
  uManPsqPro in '..\..\..\..\_WGLIB\PadraoPsq\uManPsqPro.pas' {fmManPsqPro},
  uLogEststr in 'uLogEststr.pas' {fmLogST},
  ManUfe2 in '\\192.168.5.100\fontes\_wgsys\emerion\estoque\dualcompSN\ManUfe2.pas' {fmManUfe2},
  ManStr2 in '\\192.168.5.100\fontes\_wgsys\emerion\estoque\dualcompSN\ManStr2.pas' {fmManStr2},
  uMonitorEstoque in 'uMonitorEstoque.pas' {frmMonitorEstoque},
  uFcp in 'uFcp.pas' {fmFcp},
  uPsqFcp in 'uPsqFcp.pas' {fmPsqFcp}   ;

//uMonitorEstoques in 'uMonitorEstoques.pas' {monitorEstoques};

{$R *.RES}
  var
  sAlias    : string;
  HprevHist : HWND;

begin

  Application.Initialize;

  if not FileExists('C:\Windows\Emerion.prg') then
     HprevHist := FindWindow(Nil,'Emerion Estoque')
  else
     HprevHist := 0;

  if HprevHist = 0 then
  begin

     Application.Title := 'Emerion Estoque';

     try

        fmManApl := TFmManApl.Create(Application);

        fmManApl.Show;
        fmManApl.Refresh;

        sAlias := fmManApl.sAlias;

     finally

        FreeAndNil(fmManApl);

     end;

     if sAlias = 'S' then
     begin

       Application.CreateForm(TfmManGDB, fmManGDB);
       Application.CreateForm(TfmManPri, fmManPri);
       Application.CreateForm(TfmManPAF, fmManPAF);
       fmManPri.Top := 0;
     end;

     Application.Run;

     end
  else
     MessageDlg('Existe uma Cópia do Aplicativo em Execução no Momento.', mtInformation, [mbOK], 0);
end.
