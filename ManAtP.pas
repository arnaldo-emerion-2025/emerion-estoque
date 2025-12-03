unit ManAtP;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Db, DBTables, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, Wwquery, FPadrao,
   DBClient, Bbgeral;

type
   TfmManAtP = class(TfmPadrao)
      Panel1: TPanel;
      DataSource1: TDataSource;
      EstPro: TwwQuery;
      EstProCODITE: TStringField;
      EstProDSCPRO: TStringField;
      EstProSIMPRO: TStringField;
      EstProCODCAT: TIntegerField;
      EstProCODTIP: TIntegerField;
      EstProCODMRC: TIntegerField;
      EstProFLBPRO: TStringField;
      EstProENTIMP: TFloatField;
      EstProDSRPRO: TStringField;
      EstProTIPSTE: TStringField;
      EstProTIPSTS: TStringField;
      EstProPESLIQ: TFloatField;
      EstProPESBRT: TFloatField;
      EstProCODCLP: TStringField;
      EstProCODGRU: TStringField;
      EstProCODSUB: TStringField;
      EstProCODPRO: TStringField;
      EstProCBAPRO: TStringField;
      EstProCBAEMB: TStringField;
      EstProQTDEMB: TFloatField;
      EstProCATPRO: TStringField;
      EstProLOCPRO: TStringField;
      EstProISSPRO: TFloatField;
      EstProCODUNE: TStringField;
      EstProQTEPRO: TFloatField;
      EstProCODUNS: TStringField;
      EstProQTSPRO: TFloatField;
      EstProWEBPRO: TStringField;
      EstProDTCPRO: TDateTimeField;
      EstProOBSPRO: TMemoField;
      EstProCODST1: TStringField;
      EstProCODST2: TStringField;
      EstProCODCOM: TStringField;
      EstProCODUSU: TIntegerField;
      EstProSAIICM: TFloatField;
      EstProENTICM: TFloatField;
      EstProSAIIPI: TFloatField;
      EstProENTIPI: TFloatField;
      EstProIMGPRO: TBlobField;
      EstProCODANT: TStringField;
      EstProFLGTRG: TStringField;
      EstProNUMPRO: TStringField;
      EstProQTDVOL: TIntegerField;
      EstProIDEPRO: TStringField;
      EstProICMSAI: TStringField;
      EstProICMTSD: TStringField;
      EstProICMENT: TStringField;
      EstProICMTEN: TStringField;
      EstProIPISAI: TStringField;
      EstProIPITSD: TStringField;
      EstProIPIENT: TStringField;
      EstProIPITEN: TStringField;
      EstProCLFENT: TStringField;
      EstProCLFSAI: TStringField;
      EstProCODSTE: TStringField;
      EstProCODSTS: TStringField;
      EstProFLGPRO: TStringField;
      EstProFLGKIT: TStringField;
      EstProCBAEM2: TStringField;
      EstProCBAEM3: TStringField;
      EstProLIQEMB: TFloatField;
      EstProBRTEMB: TFloatField;
      EstProCUBPRO: TFloatField;
      EstProCXAPRO: TFloatField;
      EstProDESIMP: TMemoField;
      EstProNROPRO: TIntegerField;
      EstProCODBAR: TIntegerField;
      EstProQTDBAR: TIntegerField;
      EstProSEQBAR: TIntegerField;
      EstProDESIM2: TMemoField;
      EstProVALIMP: TFloatField;
      EstProDSCIMP: TStringField;
      EstProDSRIMP: TStringField;
      EstProDESNC1: TStringField;
      EstProDESNC2: TStringField;
      EstProDESNC3: TStringField;
      EstProDESNC4: TStringField;
      EstProDESNC5: TStringField;
      EstProDESNC6: TStringField;
      EstProDESNC7: TStringField;
      EstProDESNC8: TStringField;
      EstProFLGLIS: TStringField;
      EstProPESCUB: TFloatField;
      EstProALTPRO: TFloatField;
      EstProCOMPRO: TFloatField;
      EstProLARPRO: TFloatField;
      EstProGARPRO: TIntegerField;
      EstProPRODEP: TStringField;
      EstProREFPRO: TStringField;
      DBGrid1: TDBGrid;
      wwQuery1: TwwQuery;
      StringField1: TStringField;
      StringField2: TStringField;
      StringField3: TStringField;
      IntegerField1: TIntegerField;
      IntegerField2: TIntegerField;
      IntegerField3: TIntegerField;
      StringField4: TStringField;
      FloatField1: TFloatField;
      StringField5: TStringField;
      StringField6: TStringField;
      StringField7: TStringField;
      FloatField2: TFloatField;
      FloatField3: TFloatField;
      StringField8: TStringField;
      StringField9: TStringField;
      StringField10: TStringField;
      StringField11: TStringField;
      StringField12: TStringField;
      StringField13: TStringField;
      FloatField4: TFloatField;
      StringField14: TStringField;
      StringField15: TStringField;
      FloatField5: TFloatField;
      StringField16: TStringField;
      FloatField6: TFloatField;
      StringField17: TStringField;
      FloatField7: TFloatField;
      StringField18: TStringField;
      DateTimeField1: TDateTimeField;
      MemoField1: TMemoField;
      StringField19: TStringField;
      StringField20: TStringField;
      StringField21: TStringField;
      IntegerField4: TIntegerField;
      FloatField8: TFloatField;
      FloatField9: TFloatField;
      FloatField10: TFloatField;
      FloatField11: TFloatField;
      BlobField1: TBlobField;
      StringField22: TStringField;
      StringField23: TStringField;
      StringField24: TStringField;
      IntegerField5: TIntegerField;
      StringField25: TStringField;
      StringField26: TStringField;
      StringField27: TStringField;
      StringField28: TStringField;
      StringField29: TStringField;
      StringField30: TStringField;
      StringField31: TStringField;
      StringField32: TStringField;
      StringField33: TStringField;
      StringField34: TStringField;
      StringField35: TStringField;
      StringField36: TStringField;
      StringField37: TStringField;
      StringField38: TStringField;
      StringField39: TStringField;
      StringField40: TStringField;
      StringField41: TStringField;
      FloatField12: TFloatField;
      FloatField13: TFloatField;
      FloatField14: TFloatField;
      FloatField15: TFloatField;
      MemoField2: TMemoField;
      IntegerField6: TIntegerField;
      IntegerField7: TIntegerField;
      IntegerField8: TIntegerField;
      IntegerField9: TIntegerField;
      MemoField3: TMemoField;
      FloatField16: TFloatField;
      StringField42: TStringField;
      StringField43: TStringField;
      StringField44: TStringField;
      StringField45: TStringField;
      StringField46: TStringField;
      StringField47: TStringField;
      StringField48: TStringField;
      StringField49: TStringField;
      StringField50: TStringField;
      StringField51: TStringField;
      StringField52: TStringField;
      FloatField17: TFloatField;
      FloatField18: TFloatField;
      FloatField19: TFloatField;
      FloatField20: TFloatField;
      IntegerField10: TIntegerField;
      StringField53: TStringField;
      StringField54: TStringField;
      Panel2: TPanel;
      edpath: TEdit;
      bPsqCat: TSpeedButton;
      Label1: TLabel;
      btnCarregaTabela: TButton;
      btnAtualiza: TButton;
      OpenDialog1: TOpenDialog;
      cdsTabela: TClientDataSet;
      cdsTabelaCODCLP: TStringField;
      cdsTabelaCODGRU: TStringField;
      cdsTabelaCODSUB: TStringField;
      cdsTabelaCODPRO: TStringField;
      cdsTabelaDSCPRO: TStringField;
      cdsTabelaVBTAB: TFloatField;
      cboTab: TComboBox;
      cboEmp: TComboBox;
      Label2: TLabel;
      Label3: TLabel;
      UpdateSQL1: TUpdateSQL;
      procedure bPsqCatClick(Sender: TObject);
      procedure btnCarregaTabelaClick(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormCreate(Sender: TObject);
      procedure FormDestroy(Sender: TObject);
      procedure btnAtualizaClick(Sender: TObject);
   private
      { Private declarations }
      strMsgItens: string;

      procedure EncontraPacth;
      procedure Carregatabela;
      procedure CarregaLinhaTabela(tLinha: string);
      function LimpaCodProd(strCod: string): string;
      function ValidaProduto: string;
      function ValidaPreco(strPreco: string): Double;
      procedure CarregaCboTab;
      procedure CarregaCboEmpresa;
      procedure ValidaDados;
      procedure atualizaPreco;
   public
      { Public declarations }
   end;

var
   fmManAtP: TfmManAtP;

implementation

uses ManGDB, Bbmensag, Bbfuncao;

{$R *.DFM}

procedure TfmManAtP.EncontraPacth;
begin

   //OpenDialog1.Filter := '*.csv';

   if OpenDialog1.Execute then
      begin
         edpath.text := OpenDialog1.FileName;
      end
   else
      edPath.text := '';
end;

procedure TfmManAtP.bPsqCatClick(Sender: TObject);
begin
   EncontraPacth;
end;

procedure TfmManAtP.Carregatabela;
var
   lstPreco: TextFile;
   strLinha: string;
begin
   cdsTabela.EmptyDataSet;
   strMsgItens := '';

   try
      AssignFile(lstPreco, edPath.text);
      Reset(lstPreco);

      while not Eof(lstPreco) do
         begin
            ReadLn(lstPreco, strLinha);
            CarregaLinhaTabela(strLinha);
            application.ProcessMessages;
         end;

      if strMsgItens <> '' then
         fmsg('Os itens abaixo não serão atualizados. ' + #10 + #10 + strMsgItens, 'I');

   finally
      CloseFile(lstPreco);
   end;
end;

procedure TfmManAtP.CarregaLinhaTabela(tLinha: string);
var
   strAux: string;

   procedure CarregaCodProd(strCodProd: string);
   begin
      //CodCPL
      cdsTabelaCODclp.asString := '1';

      //CODGRU
      cdsTabelaCODGRU.asString := Copy(strCodProd, 1, pos('.', strCodProd) - 1);
      cdsTabelaCODGRU.asString := fReplicate('0', 3 - length(cdsTabelaCODGRU.asString)) + cdsTabelaCODGRU.asString;
      delete(strCodProd, 1, pos('.', strCodProd));

      //CODSUB
      cdsTabelaCODSUB.asString := Copy(strCodProd, 1, pos('.', strCodProd) - 1);
      cdsTabelaCODSUB.asString := fReplicate('0', 4 - length(cdsTabelaCODSUB.asString)) + cdsTabelaCODSUB.asString;
      delete(strCodProd, 1, pos('.', strCodProd));

      //CODPRO
      cdsTabelaCODPRO.AsString := Trim(strCodProd);
      cdsTabelaCODPRO.asString := fReplicate('0', 5 - length(cdsTabelaCODPRO.asString)) + cdsTabelaCODPRO.asString;
   end;

begin
   if trim(Copy(tLinha, 1, pos(';', tLinha) - 1)) <> '' then
      begin
         cdsTabela.Append;

         CarregaCodProd(LimpaCodProd(Copy(tLinha, 1, pos(';', tLinha) - 1)));
         delete(tLinha, 1, pos(';', tLinha)); //Apaga Código do Produto

         cdsTabelaDSCPRO.AsString := ValidaProduto;
         delete(tLinha, 1, pos(';', tLinha)); //Apaga Referencia

         delete(tLinha, 1, pos(';', tLinha)); //Apaga Descrição

         cdsTabelaVBTAB.AsFloat := ValidaPreco(tLinha);

         cdsTabela.Post;
      end
   else
      begin
         strMsgItens := strMsgItens + tLinha + #10;
      end;
end;

function TfmManAtP.LimpaCodProd(strCod: string): string;
var
   i: integer;
begin
   Result := '';

   for i := 1 to length(strCod)  do
      begin
         if strCod[i] in ['0'..'9', '.'] then
            Result := Result + strCod[i];
      end;
end;

function TfmManAtP.ValidaProduto: string;
var
   strDescProd: string;
begin
   strDescProd := fmManGDB.BuscaSimples('ESTPRO', 'DSCPRO', ' CODGRU = ' + QuotedStr(cdsTabelaCODGRU.AsString)
      + ' AND CODSUB = ' + QuotedStr(cdsTabelaCODSUB.AsString) + ' AND CODPRO = ' + QuotedStr(cdsTabelaCODPRO.AsString));

   if strDescProd = '' then
      begin
         fMsg('Item 1.' + cdsTabelaCODGRU.AsString + '.' + cdsTabelaCODSUB.AsString + '.' + cdsTabelaCODPRO.AsString +
            'Verifique se este item existe e tente novamente a importação.', 'O');
         Abort;
      end;

   Result := strDescProd;
end;

function TfmManAtP.ValidaPreco(strPreco: string): Double;
var
   strPrc: string;
   i: integer;
begin
   strPrc := '';

   for i := 1 to length(strPreco)  do
      begin
         if strPreco[i] in ['0'..'9', '.', ','] then
            strPrc := strPrc + strPreco[i];
      end;

   if pos('.', strPrc) > 0 then
      strPrc := StringReplace(strPrc, '.', '', [rfReplaceAll]);

   //strPrc := StringReplace(strPrc, ',', '.', [rfReplaceAll]);

   if trim(strPrc) = '' then
      begin
         fMsg('Item 1.' + cdsTabelaCODGRU.AsString + '.' + cdsTabelaCODSUB.AsString + '.' + cdsTabelaCODPRO.AsString +
            'Verifique se este item possui valor para atualiza e tente novamente a importação.', 'O');
         Abort;
      end;

   Result := StrToFloat(strPrc);
end;

procedure TfmManAtP.btnCarregaTabelaClick(Sender: TObject);
begin
   Carregatabela;
end;

procedure TfmManAtP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   inherited;
   Action := CaFree;
end;

procedure TfmManAtP.CarregaCboEmpresa;
var
   SQL_TEMP: TwwQuery;
begin
   SQL_TEMP := TwwQuery.Create(Self);

   try
      SQL_TEMP.DatabaseName := 'ISade';

      SQL_TEMP.Active := False;

      SQL_TEMP.SQL.Text := ' SELECT CODEMP, NOMEMP FROM GEREMP ORDER BY CODEMP ASC ';

      SQL_TEMP.Active := True;

      SQL_TEMP.First;

      while not SQL_TEMP.Eof do
         begin
            AddPCbo(SQL_TEMP.FieldByName('CODEMP').AsString, SQL_TEMP.FieldByName('NOMEMP').AsString,
               SQL_TEMP.FieldByName('CODEMP').AsString + ' - ' + SQL_TEMP.FieldByName('NOMEMP').AsString, cboEmp);

            SQL_TEMP.Next;
         end;
   finally
      FreeandNil(SQL_TEMP);
   end;
end;

procedure TfmManAtP.CarregaCboTab;
begin
   cboTab.Items.Clear;

   AddPCbo('1', 'Tabela 1', '1 - Tabela Preço 1', cboTab);
   AddPCbo('2', 'Tabela 2', '2 - Tabela Preço 2', cboTab);
   AddPCbo('3', 'Tabela 3', '3 - Tabela Preço 3', cboTab);
   AddPCbo('4', 'Tabela 4', '4 - Tabela Preço 4', cboTab);
   AddPCbo('5', 'Tabela 5', '5 - Tabela Preço 5', cboTab);
   AddPCbo('0', 'Referenciado', '0 - Custo referênciado', cboTab);

end;

procedure TfmManAtP.FormCreate(Sender: TObject);
begin
   inherited;
   CarregaCboTab;
   CarregaCboEmpresa;

end;

procedure TfmManAtP.FormDestroy(Sender: TObject);
begin
   inherited;
   FreeObjCbo(cboTab);
   FreeObjCbo(cboEmp);
end;

procedure TfmManAtP.ValidaDados;
begin
   if cdsTabela.RecordCount = 0 then
      begin
         fMsg('Não há itens a serem atualizados. Favor carregar tabela.', 'I');
         Abort;
      end;

   if cboTab.Text = '' then
      begin
         fMsg('Obrigatório informar a tabela de preço que será alterada.', 'I');

         if cboTab.CanFocus then
            cboTab.SetFocus;
         Abort;
      end;

   if cboEmp.Text = '' then
      begin
         fMsg('Obrigatório informar a Empresa que terá a tabela de preço alterada.', 'I');

         if cboEmp.CanFocus then
            cboEmp.SetFocus;
         Abort;
      end;

   if fMsgConf('Apartir deste ponto o sistema realizará alterações na tabela de preço: '
      + RetornaParamObj(cbotab.ItemIndex, 2, cboTab) + ' na empresa: ' + cboemp.Text
      + '. Este processo não poderá ser desfeito. Realmente deseja continuar?', 'O') <> 'SIM' then
      Abort;

end;

procedure TfmManAtP.btnAtualizaClick(Sender: TObject);
begin
   inherited;
   ValidaDados;
   atualizaPreco

end;

procedure TfmManAtP.atualizaPreco;
var
   SQL_TEMP: TwwQuery;
begin
   SQL_TEMP := TwwQuery.Create(Self);

   try
      try

         SQL_TEMP.DatabaseName := 'ISade';

         SQL_TEMP.Active := False;
         fmManGDB.dbMain.StartTransaction;

         SQL_TEMP.SQL.Text := ' INSERT INTO ATUPRC (ID_ATUPRC,TABATU,CODEMP) VALUES (0,'
            + RetornaParamObj(cboTab.ItemIndex, 1, cbotab) + ','
            + RetornaParamObj(cboEmp.ItemIndex, 1, cboEmp) + ')';
         SQL_TEMP.ExecSQL;

         cdsTabela.First;
         while not cdsTabela.Eof do
            begin
               SQL_TEMP.SQL.Text := ' UPDATE ESTITE '
                  + ifthen(RetornaParamObj(cboTab.ItemIndex, 1, cbotab)[1] in ['1'..'5'],
                  ' SET VB' + RetornaParamObj(cboTab.ItemIndex, 1, cbotab) + 'ITE = ',
                  ' SET VCRITE = ' )
                  + StringReplace(StringReplace(cdsTabelaVBTAB.AsString, '.', '', [rfReplaceAll]), ',', '.', [rfReplaceAll])
                  + ' WHERE (CODEMP = ' + RetornaParamObj(cboEmp.ItemIndex, 1, cboEmp) + ') '
                  + ' AND (CODCLP = ' + quotedstr(cdsTabelaCODCLP.AsString) + ') '
                  + ' AND (CODGRU = ' + quotedstr(cdsTabelaCODGRU.AsString) + ') '
                  + ' AND (CODSUB = ' + quotedstr(cdsTabelaCODSUB.AsString) + ') '
                  + ' AND (CODPRO = ' + quotedstr(cdsTabelaCODPRO.AsString) + ')';
               SQL_TEMP.ExecSQL;

               cdsTabela.Next;
               Application.ProcessMessages;
            end;

         fmManGDB.dbMain.Commit;

         fmsg('Processo realizado com sucesso.', 'I');
      except
         fmManGDB.dbMain.Rollback;
      end;

   finally
      FreeAndNil(SQL_TEMP);
   end;

end;

end.

