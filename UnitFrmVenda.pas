unit UnitFrmVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Mask, Buttons, DB, DBTables, ComCtrls,
  QRCtrls, QuickRpt, Unit2, ExtCtrls, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, jpeg, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdFTP, ComObj, Menus, xmldom, XMLIntf, msxmldom, XMLDoc,
  Gauges;

type
  TFrmVenda = class(TForm)
    DataSource1: TDataSource;
    dsMovEstoque: TDataSource;
    qrconsulta: TZQuery;
    qrMovEstoque: TZQuery;
    qrMovEstoquedocumento: TStringField;
    qrMovEstoquefavorecido: TIntegerField;
    qrMovEstoqueproduto: TIntegerField;
    qrMovEstoquedata: TDateField;
    qrMovEstoqueTipoMov: TStringField;
    qrMovEstoqueund: TStringField;
    qrMovEstoqueqtd: TFloatField;
    qrMovEstoqueVlrUnit: TFloatField;
    qrMovEstoqueVlrTotal: TFloatField;
    qratualizar: TZQuery;
    qrconsultavendaI: TStringField;
    qrconsultaDescricao: TStringField;
    qrconsultacliente: TIntegerField;
    qrconsultanome: TStringField;
    qrconsultasubtotal: TFloatField;
    qrconsultadesconto: TFloatField;
    qrconsultatotal: TFloatField;
    qrconsultadata: TDateField;
    dsmovvenda: TDataSource;
    Label2: TLabel;
    medatainicial: TMaskEdit;
    Label1: TLabel;
    medatafinal: TMaskEdit;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox2: TGroupBox;
    DBGrid2: TDBGrid;
    qrMovEstoquenome: TStringField;
    movvenda: TZQuery;
    movvendavendaI: TStringField;
    movvendaproduto: TIntegerField;
    movvendaqtd: TFloatField;
    movvendaunit: TFloatField;
    movvendatotal: TFloatField;
    movvendanome: TStringField;
    Label3: TLabel;
    Label26: TLabel;
    edcliente: TEdit;
    lbcliente: TLabel;
    Panel4: TPanel;
    bt1: TBitBtn;
    btexcluir: TBitBtn;
    qrtotalizar: TZQuery;
    qrtotalizartotal: TFloatField;
    btgravar: TBitBtn;
    btrelatorio: TBitBtn;
    qrtotalvenda: TZQuery;
    qrtotalvendasubtotal: TFloatField;
    qrtotalvendadesconto: TFloatField;
    qrtotalvendatotal: TFloatField;
    btnf: TBitBtn;
    ZQuery1: TZQuery;
    qrult_nfdocumento: TStringField;
    qrconsultanf: TIntegerField;
    IdFTP1: TIdFTP;
    movestoque: TZQuery;
    movestoqueproduto: TIntegerField;
    movestoqueqtd: TFloatField;
    movestoqueVlrUnit: TFloatField;
    movestoqueVlrTotal: TFloatField;
    movestoqueund: TStringField;
    movestoquedesconto: TFloatField;
    movestoquebaseicms: TFloatField;
    BitBtn4: TBitBtn;
    BitBtn2: TBitBtn;
    qrconsultaprotocolo_nfce: TStringField;
    cbtipo: TComboBox;
    Label6: TLabel;
    BitBtn5: TBitBtn;
    qrtotalvendaformapagto: TStringField;
    Label7: TLabel;
    edvenda: TEdit;
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRBand2: TQRBand;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    qritem: TQRExpr;
    QRBand3: TQRBand;
    QRLabel19: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel12: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText15: TQRDBText;
    QRDBText19: TQRDBText;
    QRShape2: TQRShape;
    QRLabel24: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel32: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel42: TQRLabel;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRLabel44: TQRLabel;
    QRDBText25: TQRDBText;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRLabel47: TQRLabel;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRLabel48: TQRLabel;
    QRDBText37: TQRDBText;
    QRLabel49: TQRLabel;
    QRDBText38: TQRDBText;
    QRBand4: TQRBand;
    QRLabel22: TQRLabel;
    qrsubtotal: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel28: TQRLabel;
    qrdesc: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    qrtotal: TQRLabel;
    movvendaundint: TStringField;
    qrpago: TQRMemo;
    PopupMenu2: TPopupMenu;
    AlterarFormadePagamento1: TMenuItem;
    QRLabel2: TQRLabel;
    N1: TMenuItem;
    qrtotalM: TZQuery;
    qrtotalMtotalvenda: TFloatField;
    EnviarNFE1: TMenuItem;
    GerarExcel1: TMenuItem;
    N6: TMenuItem;
    AtualizarValorPago1: TMenuItem;
    N7: TMenuItem;
    XMLDocument1: TXMLDocument;
    N8: TMenuItem;
    ChCancelada: TCheckBox;
    DesfazerCancelamento1: TMenuItem;
    Gauge1: TGauge;
    PageFooterBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRSysData3: TQRSysData;
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
    qrcnpj_cpf: TQRLabel;
    qrie_rg: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText2: TQRDBText;
    lbtotal: TLabel;
    Label5: TLabel;
    procedure FormShow(Sender: TObject);
    procedure medatainicialExit(Sender: TObject);
    procedure medatafinalExit(Sender: TObject);
    procedure bt1Click(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btexcluirClick(Sender: TObject);
    procedure edclienteExit(Sender: TObject);
    procedure edclienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnovoClick(Sender: TObject);
    procedure btrelatorioClick(Sender: TObject);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure BitBtn5Click(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btgravarClick(Sender: TObject);
    procedure btnfClick(Sender: TObject);
    procedure AlterarFormadePagamento1Click(Sender: TObject);
    procedure EnviarNFE1Click(Sender: TObject);
    procedure RegistrarNmeroNFSe1Click(Sender: TObject);
    procedure GerarExcel1Click(Sender: TObject);
    procedure AtualizarValorPago1Click(Sender: TObject);
    procedure DesfazerCancelamento1Click(Sender: TObject);
    procedure AtualizarClientes1Click(Sender: TObject);
  private
    { Private declarations }
  public
    sCodigos,id_prof:string;
    { Public declarations }
  end;

var
  FrmVenda: TFrmVenda;
  arq: TextFile;
  vXMLDoc: TXMLDocument;
  NodePrim, NodeCabecalhoXML, NodeEmitente, NodeEmitenteEnd,NodeEmitenteEnd2,
  NodeProd,Node_Mae,NodeItens,NodeImpProd,NodeIcms,NodeIcms00,NodeTotal,NodeICMSTotal,
  NodePIS,NodePISAliq,NodeCOFINS,NodeCOFINSAliq,
  NodePai,NodeSec,NodeTmp: IXMLNode;
  searchResult : TSearchRec;
  documento,vendac,sit,produto,
  nomeproduto,mensagem,aliquota,MensagemLiberacao,
  desconto,sTipoQtde,vlrunit,sTipoDesconto,
  recebido,pagtoem,descontovenda,qtdprod,sAcreDesc,
  vfechada,sPercValor,N_obs,N_cancelada,vformapagto,
  N_ValorProdutos,N_ValorNota,N_BaseIcms,N_ValorIcms,N_Aliquota,
  Direc,nomeArquivo,line,dir,repli,n_procolo_nfce,N_CPF,imp_nfce,
  edcnpjcartao,edbandcartao,edautcartao,edintcartao,
  V_datan,busca,P_ncm,N_nota,texto,V_Operador,TED,nomearq,
  N_Serie,N_NF,N_Emissao,N_vlrfrete,N_vlrnota,N_vlrtrib,
  N_Ambiente,N_ChaveNFE,N_Data,N_Protocolo,
  p_cnpj,p_uf,V_vendaI,V_placa,V_agrupada:string;
  mes,nnotas,i,iRetorno,iDecimal,itensnota,
  N_faturas,itensnf,ultnf,nlinhas,V_cliente,
  V_cartao,V_nf,reduc,Linha,
  E_venda_nf,vcliente,V_vendedor,ultimav:integer;
  anterior,antestoque,LocOrigem,
  P_estoqueext,totalprodutos,itens,desc,
  vlrtotal,Valorbase,ValorbaseS,valoricms,notas_imp,
  n_notas,icms,nf_qtd,nf_peso,DescB,DescS,
  vlrdesc,vdesconto,saldodesc,P_reserva,
  vtotal,V_desconto,V_subtotal:real;
  IMPRESSORA:TextFile;
  ClickedOK,afaturar:Boolean;
  Excel:variant;
  V_data:Tdatetime;
  qry,qryR,qryV,qrytot,qryN,qrymun : TZQuery;
  messageAnsi : AnsiString;

implementation

uses Unitdm, Unitfrmprincipal, UnitFrmCadclientes,
  UnitFrmRelNfceNfe,  UEnvioNfe, UEnvioNfce;

{$R *.dfm}

function AjustaStr ( str: String; tam: Integer ): String;
begin
while Length ( str ) < tam do
str := str + ' ';
if Length ( str ) > tam then
str := Copy ( str, 1, tam );
Result := str;
end;

function InserePonto(texto: string): string;
var i:integer;s:string;
begin
   i:=1;
   s:='';
   while (i<=length(texto)) do
   begin
      if not (texto[i] in ['.',',']) then
         s:=s+texto[i]
      else if texto[i]=','then
      begin
         texto[i]:='.';
         s:=s+texto[i];
      end;
      Inc(i);
   end;
   InserePonto := s;
end;

function IfThen(AValue: Boolean; const ATrue: string;
  AFalse: string = ''): string;
begin
  if AValue then
    Result := ATrue
  else
    Result := AFalse;
end;

procedure inserirmovestoque;
begin
  FrmVenda.qratualizar.Close;
  FrmVenda.qratualizar.SQL.Clear;
  FrmVenda.qratualizar.SQL.Add('delete from movestoque');
  FrmVenda.qratualizar.SQL.Add('where documento = '+chr(39)+FrmVenda.qrconsultavendaI.Value+chr(39));
  FrmVenda.qratualizar.ExecSQL;

  FrmVenda.qratualizar.Close;
  FrmVenda.qratualizar.SQL.Clear;
  FrmVenda.qratualizar.SQL.Add('delete from historicoclie');
  FrmVenda.qratualizar.SQL.Add('where venda = '+chr(39)+FrmVenda.qrconsultavendaI.Value+chr(39));
  FrmVenda.qratualizar.ExecSQL;

  dm.venda.Close;
  dm.venda.SQL.Clear;
  dm.venda.SQL.Add('select * from venda');
  dm.venda.SQL.Add('where vendaI='+chr(39)+FrmVenda.qrconsultavendaI.Value+chr(39));
  dm.venda.SQL.Add('and fechada='+chr(39)+'S'+chr(39));
  dm.venda.Open;

  dm.movvenda.Close;
  dm.movvenda.SQL.Clear;
  dm.movvenda.SQL.Add('select * from movvenda');
  dm.movvenda.SQL.Add('where vendaI='+chr(39)+FrmVenda.qrconsultavendaI.Value+chr(39));
  dm.movvenda.Open;

  dm.movestoque.Close;
  dm.movestoque.SQL.Clear;
  dm.movestoque.SQL.Add('select * from movestoque');
  dm.movestoque.SQL.Add('where (1=2)');
  dm.movestoque.Open;

  dm.historicoclie.Close;
  dm.historicoclie.SQL.Clear;
  dm.historicoclie.SQL.Add('select * from historicoclie');
  dm.historicoclie.SQL.Add('where (1=2)');
  dm.historicoclie.Open;

  dm.dsprodutos.OnDataChange:=nil;
  while not dm.movvenda.Eof do
        begin
          dm.produtos.close;
          dm.produtos.sql.clear;
          dm.produtos.sql.add('select * from produtos');
          dm.produtos.sql.add('where codigo = '+IntToStr(dm.movvendaproduto.Value));
          dm.produtos.open;

          dm.movestoque.Insert;
          dm.movestoquedata.Value:=dm.vendadata.Value;
          dm.movestoqueTipoMov.Value:='SV';
          dm.movestoqueproduto.Value:=dm.movvendaproduto.Value;
//          dm.movestoquelote.Value:=dm.movvendalote.Value;
          dm.movestoqueund.Value:=dm.produtosundint.Value;
          dm.movestoqueqtd.Value:=dm.movvendaqtd.Value;
          dm.movestoqueVlrUnit.Value:=dm.movvendaunit.Value;
          dm.movestoquedesconto.Value:=0;
          dm.movestoqueVlrTotal.Value:=(dm.movestoqueVlrUnit.Value*dm.movestoqueqtd.Value);
          dm.movestoquedocumento.Value:=dm.vendavendaI.Value;
          dm.movestoquefavorecido.Value:=dm.vendacliente.Value;
          dm.movestoquevendedor.Value:=dm.vendavendedor.Value;

          dm.movestoquelocal.asstring := FrmPrincipal.sb.Panels[7].Text;
          dm.movestoque.Post;

          dm.movvenda.Next;
          Application.ProcessMessages;
        end;
  FrmVenda.qrMovEstoque.Close;
  FrmVenda.qrMovEstoque.Open;
end;

procedure AtualizarDescontoE;
begin
  saldodesc:=0;

  if qry.FieldByName('desconto').AsFloat>0 then
     begin
       vdesconto:=qry.FieldByName('desconto').AsFloat;
       desc:=100-((qry.FieldByName('total').AsFloat/qry.FieldByName('subtotal').AsFloat)*100);   //54,60%
     end
     else
     begin
       vdesconto:=0;
       desc:=0;
     end;

  qryN              :=  TZQuery.Create(nil);
  qryN.Connection   :=  dm.ZConnection1;
  qryN.Close;
  qryN.SQL.Clear;
  qryN.SQL.Add('select * from movestoque');
  qryN.SQL.Add('where documento = '+chr(39)+qry.FieldByName('vendaI').AsString+chr(39));
  qryN.open;

  itensnota:=qryN.RecordCount;
  itens:=qryN.RecordCount;
  vlrdesc:=round(vdesconto/itensnota);
  while not qryN.Eof do
        begin
          if desc>0 then
          begin
            if desc>0 then
               begin
                 if itens>1 then
                    begin
                      vlrdesc:=round(qryN.FieldByName('VlrTotal').AsFloat*desc)/100;
                      saldodesc:=saldodesc+vlrdesc;
                    end
                    else
                      vlrdesc:=vdesconto-saldodesc;
               end;
            totalprodutos:=(qryN.FieldByName('VlrUnit').AsFloat*qryN.FieldByName('qtd').AsFloat)-vlrdesc;

            FrmVenda.qratualizar.close;
            FrmVenda.qratualizar.sql.clear;
            FrmVenda.qratualizar.sql.add('update movestoque set');
            FrmVenda.qratualizar.sql.add('vlrtotal = :totalprodutos');
            FrmVenda.qratualizar.sql.add('where produto = '+qryN.FieldByName('produto').AsString);
            FrmVenda.qratualizar.SQL.Add('and documento = '+chr(39)+qry.FieldByName('vendaI').AsString+chr(39));
            FrmVenda.qratualizar.Params[0].Value := totalprodutos;
            FrmVenda.qratualizar.ExecSQL;
          end
          else
          begin
            totalprodutos:=qryN.FieldByName('VlrUnit').AsFloat*qryN.FieldByName('qtd').AsFloat;
            FrmVenda.qratualizar.close;
            FrmVenda.qratualizar.sql.clear;
            FrmVenda.qratualizar.sql.add('update movestoque set');
            FrmVenda.qratualizar.sql.add('vlrtotal = :totalprodutos');
            FrmVenda.qratualizar.sql.add('where produto = '+qryN.FieldByName('produto').AsString);
            FrmVenda.qratualizar.SQL.Add('and documento = '+chr(39)+qry.FieldByName('vendaI').AsString+chr(39));
            FrmVenda.qratualizar.Params[0].Value := totalprodutos;
            FrmVenda.qratualizar.ExecSQL;
          end;

          qryN.Next;
          itens:=itens-1;
        end;
  qryN.Free;
end;

procedure AtualizarMovEstoque;
begin
  dm.movestoque.Close;
  dm.movestoque.SQL.Clear;
  dm.movestoque.SQL.Add('select * from movestoque');
  dm.movestoque.SQL.Add('where (documento='+chr(39)+FrmVenda.qrconsultavendaI.Value+chr(39)+')');
  dm.movestoque.SQL.Add('and (favorecido='+IntToStr(FrmVenda.qrconsultacliente.value)+')');
  dm.movestoque.open;
  if dm.movestoque.RecordCount<1 then
     begin
        dm.MovVenda.Close;
        dm.MovVenda.SQL.Clear;
        dm.MovVenda.SQL.Add('select * from movvenda');
        dm.MovVenda.SQL.Add('where vendaI = '+chr(39)+FrmVenda.qrconsultavendaI.Value+chr(39));
        dm.movvenda.open;

        vlrdesc:=0;
        vdesconto:=0;
        saldodesc:=0;
        itens:=dm.MovVenda.RecordCount;
        if FrmVenda.qrconsultadesconto.Value>0 then
           begin
             try
               vlrdesc:=FrmVenda.qrconsultadesconto.Value;
               vdesconto:=FrmVenda.qrconsultadesconto.Value/FrmVenda.qrconsultatotal.Value;
               saldodesc:=0;
             except
             end;
           end;

        while not dm.MovVenda.Eof do
              begin
                dm.fornecedores.close;
                dm.fornecedores.sql.clear;
                dm.fornecedores.sql.add('select * from fornecedores');
                dm.fornecedores.sql.add('where codigo = '+IntToStr(dm.vendavendedor.value));
                dm.fornecedores.open;

                dm.produtos.close;
                dm.produtos.sql.clear;
                dm.produtos.sql.add('select * from produtos');
                dm.produtos.sql.add('where codigo = '+IntToStr(dm.MovVendaproduto.Value));
                dm.produtos.open;

                dm.movestoque.Insert;
                dm.movestoquedata.Value:=dm.vendadata.Value;
                dm.movestoqueTipoMov.Value:='SV';
                dm.movestoqueproduto.Value:=dm.MovVendaproduto.Value;
                dm.movestoqueund.Value:=dm.produtosundint.Value;
                dm.movestoqueqtd.Value:=dm.MovVendaqtd.Value;
                dm.movestoqueVlrUnit.Value:=dm.MovVendaunit.Value;
                dm.movestoqueVlrTotal.Value:=dm.movvendatotal.Value;
                dm.movestoquedesconto.Value:=0;
                if FrmVenda.qrconsultadesconto.Value>0 then
                   begin
                     if itens>1 then
                        begin
                          dm.movestoquedesconto.Value:=round(dm.MovVendatotal.Value*
                          vdesconto);
                          saldodesc:=saldodesc+dm.movestoquedesconto.Value;
                        end
                        else
                          dm.movestoquedesconto.Value:=vlrdesc-saldodesc;
                   end;
                dm.movestoqueVlrTotal.Value:=(dm.movestoqueVlrUnit.Value*dm.movestoqueqtd.Value)-
                dm.movestoquedesconto.Value;
                dm.movestoquedocumento.Value:=FrmVenda.qrconsultavendaI.Value;
                dm.movestoquefavorecido.Value:=dm.vendacliente.Value;
                dm.movestoquevendedor.Value:=dm.vendavendedor.Value;
                dm.movestoquelocal.Value:='1';
                dm.movestoque.Post;
                itens:=itens-1;

                dm.MovVenda.Next;
              end;
     end;
end;

procedure AtualizarFinanceiro;
begin
     dm.financeiro.Close;
     dm.financeiro.SQL.Clear;
     dm.financeiro.SQL.Add('select * from financeiro');
     dm.financeiro.SQL.Add('where (data = '+chr(39)+
     copy(DateToStr(dm.vendadata.Value),7,4)+'/'+
     copy(DateToStr(dm.vendadata.Value),4,2)+'/'+
     copy(DateToStr(dm.vendadata.Value),1,2)+chr(39)+')');
     dm.financeiro.Open;
     dm.financeiro.Insert;
     dm.financeiroconta.Value:='CX';
     dm.financeirodata.Value:=dm.vendadata.Value;
     dm.financeirodoc.Value:=dm.vendavendaI.Value;
     dm.financeirohistorico.Value:='ESTORNO DA VENDA - '+dm.vendavendaI.Value;
     dm.financeiroplanoconta.Value:='12105001';
     dm.financeirotipo.Value:='D';
     dm.financeirodebito.Value:=dm.vendatotal.Value;
     dm.financeiro.Post;
     dm.financeiro.Close;
end;

procedure AtualizarEstoque;
begin
   FrmVenda.qratualizar.Close;
   FrmVenda.qratualizar.SQL.Clear;
   FrmVenda.qratualizar.SQL.Add('delete from docreceber');
   FrmVenda.qratualizar.SQL.Add('where (doc like '+chr(39)+copy(documento,5,6)+'%'+chr(39)+')');
   FrmVenda.qratualizar.SQL.Add('and (emissao = '+chr(39)+copy(DateToStr(FrmVenda.qrconsultadata.Value),7,4)+'/'+
   copy(DateToStr(FrmVenda.qrconsultadata.Value),4,2)+'/'+
   copy(DateToStr(FrmVenda.qrconsultadata.Value),1,2)+chr(39)+')');
   FrmVenda.qratualizar.ExecSQL;

   FrmVenda.qrMovEstoque.Close;
   FrmVenda.qrMovEstoque.SQL.Clear;
   FrmVenda.qrMovEstoque.SQL.Add('select E.documento,E.favorecido,E.produto,E.data,E.TipoMov,');
   FrmVenda.qrMovEstoque.SQL.Add('E.und,E.qtd,E.VlrUnit,E.VlrTotal,P.nome');
   FrmVenda.qrMovEstoque.SQL.Add('from movestoque E, produtos P');
   FrmVenda.qrMovEstoque.SQL.Add('where (E.produto=P.codigo)');
   FrmVenda.qrMovEstoque.SQL.Add('and (E.documento = '+chr(39)+documento+chr(39)+')');
   FrmVenda.qrMovEstoque.Open;
   while not FrmVenda.qrMovEstoque.Eof do
         begin
           dm.produtos.close;
           dm.produtos.sql.clear;
           dm.produtos.sql.add('select * from produtos');
           dm.produtos.sql.add('where codigo = '+IntToStr(FrmVenda.qrMovEstoqueproduto.Value));
           dm.produtos.open;
           antestoque:=dm.produtosestoque.Value+FrmVenda.qrMovEstoqueqtd.Value;

           FrmVenda.qratualizar.close;
           FrmVenda.qratualizar.sql.clear;
           FrmVenda.qratualizar.SQL.Add('CALL sp_a_produtosest(:p_codigo, :p_estoque)');
           FrmVenda.qratualizar.Params[0].Value := FrmVenda.qrMovEstoqueproduto.AsInteger;
           FrmVenda.qratualizar.Params[1].Value := antestoque;
           FrmVenda.qratualizar.ExecSQL;

           FrmVenda.qratualizar.Close;
           FrmVenda.qratualizar.SQL.Clear;
           FrmVenda.qratualizar.SQL.Add('CALL sp_i_rastro(:r_data, :r_hora, :r_operador, :r_rotina, :r_operacao, :r_historico, :r_favorecido, :r_valor, :r_obs)');
           FrmVenda.qratualizar.Params[0].Value := date;
           FrmVenda.qratualizar.Params[1].Value := R_hora;
           FrmVenda.qratualizar.Params[2].Value := FrmPrincipal.sb.Panels[3].Text;
           FrmVenda.qratualizar.Params[3].Value := 'ESTOQUE';
           FrmVenda.qratualizar.Params[4].Value := 'A';
           FrmVenda.qratualizar.Params[5].Value := 'Estoque Anterior: '+dm.produtosestoque.AsString+
           ' - Cancel: '+FrmVenda.qrMovEstoqueqtd.AsString+' - Estoque Atual: '+FloatToStr(antestoque);
           FrmVenda.qratualizar.Params[6].Value := FrmVenda.qrMovEstoqueproduto.AsInteger;
           FrmVenda.qratualizar.Params[7].Value := 0;
           FrmVenda.qratualizar.Params[8].Value := FrmVenda.qrMovEstoquedocumento.AsString;
           FrmVenda.qratualizar.ExecSQL;

           FrmVenda.qrMovEstoque.Next;
         end;

   FrmVenda.qratualizar.Close;
   FrmVenda.qratualizar.SQL.Clear;
   FrmVenda.qratualizar.SQL.Add('delete from movestoque');
   FrmVenda.qratualizar.SQL.Add('where documento= '+chr(39)+documento+chr(39));
   FrmVenda.qratualizar.ExecSQL;
   FrmVenda.qrMovEstoque.Close;
   FrmVenda.qrMovEstoque.Open;
end;

procedure TFrmVenda.FormShow(Sender: TObject);
begin
  qratualizar.close;
  qratualizar.sql.clear;
  qratualizar.SQL.Add('CALL apagar_movestoquefav0()');
  qratualizar.ExecSQL;

  qratualizar.Close;
  qratualizar.SQL.Clear;
  qratualizar.SQL.Add('CALL sp_apagar_venda(:m_vendaI)');
  qratualizar.Params[0].Value := '';
  qratualizar.ExecSQL;

  dm.formapagto.Close;
  dm.formapagto.SQL.Clear;
  dm.formapagto.SQL.Add('select * from formapagto');
  dm.formapagto.Open;
  cbtipo.Items.Clear;
  while not dm.formapagto.Eof do
        begin
          cbtipo.Items.Add(dm.formapagtocodigo.Value+' - '+
          dm.formapagtodescricao.Value);
          dm.formapagto.Next;
        end;

  medatainicial.Text:=DateToStr(date);
  medatafinal.Text:=DateToStr(date);
  bt1.Click;
end;

procedure TFrmVenda.medatainicialExit(Sender: TObject);
begin
  if medatainicial.text<>'  /  /    ' then
  begin
  Try
     StrToDate(medatainicial.Text) ;
  Except
  begin
     application.MessageBox('Data Inválida!','Atenção',mb_Ok+mb_iconerror);
     medatainicial.setfocus;
  end;
  end;
  end;
end;

procedure TFrmVenda.medatafinalExit(Sender: TObject);
begin
        if MeDataFinal.text<>'  /  /    ' then
        begin
        Try
           StrToDate(MeDataFinal.Text) ;
           If StrToDate(MeDataInicial.Text) > StrToDate(MeDataFinal.Text) then
              Begin
                 MessageBox(Handle, 'Data inferior à data inicial de pesquisa!!', 'Atenção', mb_IconWarning or mb_Ok);
                 medatafinal.text:='';
                 medatainicial.text:='';
                 MeDatainicial.SetFocus;
              End;
        Except
        begin
           application.MessageBox('Data Inválida!','Atenção',mb_Ok+mb_iconerror);
           MeDataFinal.setfocus;
        end;
        end;
        end;
end;

procedure TFrmVenda.bt1Click(Sender: TObject);
begin
  documento:='';
  qrconsulta.Close;
  qrconsulta.SQL.Clear;
  qrconsulta.SQL.Add('select V.vendaI,P.Descricao,V.cliente,C.nome,');
  qrconsulta.SQL.Add('V.subtotal,V.desconto,V.total, V.data,V.nf,V.protocolo_nfce');
  qrconsulta.SQL.Add('from venda V, clientes C, formapagto P');
  qrconsulta.SQL.Add('where (V.cliente=C.codigo) and (V.formapagto=P.codigo)');
  if ChCancelada.Checked = false then
     qrconsulta.SQL.Add('and (V.fechada= '+chr(39)+'S'+chr(39)+')')
  else
     qrconsulta.SQL.Add('and (V.fechada= '+chr(39)+'C'+chr(39)+')');
  if edvenda.Text<>'' then
     qrconsulta.SQL.Add('and (V.vendaI = '+chr(39)+edvenda.Text+chr(39)+')');
  if cbtipo.Text<>'' then
     qrconsulta.SQL.Add('and (V.formapagto= '+chr(39)+copy(cbtipo.Text,1,2)+chr(39)+')');
  if (medatainicial.text<>'  /  /    ') and (MeDataFinal.text<>'  /  /    ') then
     qrconsulta.SQL.Add('and (V.data between '+chr(39)+
     copy(medatainicial.text,7,4)+'/'+copy(medatainicial.text,4,2)+'/'+
     copy(medatainicial.text,1,2)+chr(39)+' and '+chr(39)+
     copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
     copy(MeDataFinal.text,1,2)+chr(39)+')');
  if edcliente.Text<>'' then
     qrconsulta.SQL.Add('and (V.cliente = '+edcliente.Text+')');
  qrconsulta.SQL.Add('order by V.data,V.vendaI');
  qrconsulta.open;
  //       DBGrid1.Height:=257;
  dbgrid1.SetFocus;
end;

procedure TFrmVenda.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  if qrconsulta.RecordCount>0 then
     begin
       qrMovEstoque.Close;
       qrMovEstoque.SQL.Clear;
       qrMovEstoque.SQL.Add('select E.documento,E.favorecido,E.produto,E.data,E.TipoMov,');
       qrMovEstoque.SQL.Add('E.und,E.qtd,E.VlrUnit,E.VlrTotal,P.nome');
       qrMovEstoque.SQL.Add('from movestoque E, produtos P');
       qrMovEstoque.SQL.Add('where (E.produto=P.codigo)');
       qrMovEstoque.SQL.Add('and (E.documento = '+chr(39)+qrconsultavendaI.Value+chr(39)+')');
       qrMovEstoque.Open;

       qrtotalizar.Close;
       qrtotalizar.SQL.Clear;
       qrtotalizar.SQL.Add('select sum(E.VlrTotal) as total');
       qrtotalizar.SQL.Add('from movestoque E, produtos P');
       qrtotalizar.SQL.Add('where (E.produto=P.codigo)');
       qrtotalizar.SQL.Add('and (E.documento = '+chr(39)+qrconsultavendaI.Value+chr(39)+')');
       qrtotalizar.Open;
       lbtotal.Caption:=formatfloat('#,##0.00',qrtotalizartotal.Value);
     end
     else
     begin
       qrMovEstoque.Close;
       lbtotal.Caption:='';
     end;
end;

procedure TFrmVenda.FormKeyPress(Sender: TObject; var Key: Char);
begin
        if key=#13 then
        begin
           SelectNext(activecontrol,True,True);
           key:=#0;
        end;
end;

procedure RetornarEstoque;
begin
  dm.venda.Close;
  dm.venda.SQL.Clear;
  dm.venda.SQL.Add('select * from venda');
  dm.venda.SQL.Add('where (agrupada='+chr(39)+'S'+chr(39)+')');
  dm.venda.SQL.Add('and (operador='+chr(39)+V_Operador+chr(39)+')');
  dm.venda.SQL.Add('and (formapagto ='+chr(39)+'PD'+chr(39)+')');
  dm.venda.Open;
  while not dm.venda.Eof do
        begin
          documento:=dm.vendavendaI.Value;
          AtualizarEstoque;
          dm.venda.Next;
        end;
end;

procedure CancelarVenda;
begin
  if Application.Messagebox ('Confirma Operação?','Cancelar Venda', mb_yesno+mb_iconquestion+MB_DEFBUTTON2)=id_yes then
     begin
       dm.parametros.Open;
       if dm.venda.RecordCount>0 then
          begin
           AtualizarEstoque;
           FrmVenda.qratualizar.Close;
           FrmVenda.qratualizar.SQL.Clear;
           FrmVenda.qratualizar.SQL.Add('delete from docreceber');
           FrmVenda.qratualizar.SQL.Add('where (doc like '+chr(39)+dm.vendavendaI.Value+'%'+chr(39)+')');
           FrmVenda.qratualizar.ExecSQL;

           vlrunit:=formatfloat('#,##0.00',dm.vendatotal.Value);

           R_hora:=TimeToStr(time);
           FrmVenda.qratualizar.Close;
           FrmVenda.qratualizar.SQL.Clear;
           FrmVenda.qratualizar.SQL.Add('CALL sp_i_rastro(:r_data, :r_hora, :r_operador, :r_rotina, :r_operacao, :r_historico, :r_favorecido, :r_valor, :r_obs)');
           FrmVenda.qratualizar.Params[0].Value := date;
           FrmVenda.qratualizar.Params[1].Value := R_hora;
           FrmVenda.qratualizar.Params[2].Value := FrmPrincipal.sb.Panels[3].Text;
           FrmVenda.qratualizar.Params[3].Value := 'DOC. RECEBER';
           FrmVenda.qratualizar.Params[4].Value := 'E';
           FrmVenda.qratualizar.Params[5].Value := 'CANCELAMENTO DA VENDA - '+dm.vendavendaI.Value;
           FrmVenda.qratualizar.Params[6].Value := 0;
           FrmVenda.qratualizar.Params[7].Value := 0;
           FrmVenda.qratualizar.Params[8].Value := '';
           FrmVenda.qratualizar.ExecSQL;

           vfechada:='C';
           FrmVenda.qratualizar.Close;
           FrmVenda.qratualizar.SQL.Clear;
           FrmVenda.qratualizar.SQL.Add('update venda set');
           FrmVenda.qratualizar.SQL.Add('fechada = :vfechada');
           FrmVenda.qratualizar.SQL.Add('where (vendaI= '+chr(39)+documento+chr(39)+')');
           FrmVenda.qratualizar.SQL.Add('and (fechada = '+chr(39)+'S'+chr(39)+')');
           FrmVenda.qratualizar.Params[0].Value := vfechada;
           FrmVenda.qratualizar.ExecSQL;

           FrmVenda.qratualizar.Close;
           FrmVenda.qratualizar.SQL.Clear;
           FrmVenda.qratualizar.SQL.Add('CALL sp_i_rastro(:r_data, :r_hora, :r_operador, :r_rotina, :r_operacao, :r_historico, :r_favorecido, :r_valor, :r_obs)');
           FrmVenda.qratualizar.Params[0].Value := date;
           FrmVenda.qratualizar.Params[1].Value := R_hora;
           FrmVenda.qratualizar.Params[2].Value := FrmPrincipal.sb.Panels[3].Text;
           FrmVenda.qratualizar.Params[3].Value := 'VENDA';
           FrmVenda.qratualizar.Params[4].Value := 'C';
           FrmVenda.qratualizar.Params[5].Value := 'CANCELAMENTO DA VENDA - '+dm.vendavendaI.Value;
           FrmVenda.qratualizar.Params[6].Value := dm.vendacliente.Value;
           FrmVenda.qratualizar.Params[7].Value := dm.vendatotal.Value;
           FrmVenda.qratualizar.Params[8].Value := '';
           FrmVenda.qratualizar.ExecSQL;

           FrmVenda.qrconsulta.Close;
           FrmVenda.qrconsulta.Open;
          end;
     end;
end;

procedure TFrmVenda.btexcluirClick(Sender: TObject);
begin
  dm.usuarios.Close;
  dm.usuarios.Open;
  dm.usuarios.Locate('nome',FrmPrincipal.sb.Panels[3].Text,[]);
  if dm.usuariosparametros.value='5' then
     begin
        documento:=qrconsultavendaI.Value;
        dm.Venda.Close;
        dm.Venda.SQL.Clear;
        dm.Venda.SQL.Add('select * from venda');
        dm.Venda.SQL.Add('where (vendaI = '+chr(39)+documento+chr(39)+')');
        dm.Venda.SQL.Add('and (fechada= '+chr(39)+'S'+chr(39)+')');
        dm.venda.open;
        CancelarVenda;
     end
     else
        application.MessageBox('Acesso não permitido','Atenção',mb_ok+MB_ICONINFORMATION);
end;

procedure TFrmVenda.edclienteExit(Sender: TObject);
begin
  if edcliente.Text<>'' then
     begin
        dm.clientes.close;
        dm.clientes.sql.clear;
        dm.clientes.sql.add('select * from clientes');
        dm.clientes.sql.add('where codigo = '+edcliente.text);
        dm.clientes.open;
        if dm.clientes.RecordCount<1 then
           begin
             application.MessageBox('Cliente não Localizado','Atenção',mb_ok+mb_iconinformation);
             edcliente.SetFocus;
           end
           else
             lbcliente.Caption:=dm.clientesnome.value;
     end
     else
       lbcliente.Caption:='';
end;

procedure TFrmVenda.edclienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_f10 then
     begin
       try
         Application.CreateForm(TFrmCadclientes, FrmCadclientes);
         FrmCadclientes.showmodal;
       finally
         FrmCadclientes.Release;
         FrmCadclientes:=nil;
       end;
     end;
end;

procedure TFrmVenda.btnovoClick(Sender: TObject);
begin
  if (medatainicial.Text<>'  /  /    ') and (medatafinal.Text<>'  /  /    ') and
     (edcliente.Text<>'') then
     begin
      if Application.Messagebox ('Confirma Operação?','Agrupar Vendas', mb_yesno+mb_iconquestion+MB_DEFBUTTON2)=id_yes then
         begin
           dm.fornecedores.Close;
           dm.fornecedores.SQL.Clear;
           dm.fornecedores.SQL.Add('select * from fornecedores');
           dm.fornecedores.SQL.Add('where apelido = '+chr(39)+FrmPrincipal.sb.Panels[3].Text+chr(39));
           dm.fornecedores.Open;
           if dm.fornecedores.RecordCount>0 then
              begin
                ultimav:=dm.fornecedoresultvenda.Value+1;
                qratualizar.close;
                qratualizar.sql.clear;
                qratualizar.sql.add('update fornecedores set');
                qratualizar.sql.add('ultvenda = :ultimav');
                qratualizar.SQL.Add('where codigo = '+IntToStr(dm.fornecedorescodigo.Value));
                qratualizar.Params[0].Value := ultimav;
                qratualizar.ExecSQL;
                documento:=formatfloat('000',dm.fornecedorescodigo.Value)+'-'+
                formatfloat('000000',ultimav);
                qrconsulta.First;
                while not qrconsulta.Eof do
                      begin
                        qratualizar.close;
                        qratualizar.sql.clear;
                        qratualizar.sql.add('update venda set');
                        qratualizar.sql.add('venda_agrupada = :documento');
                        qratualizar.SQL.Add('where vendaI = '+chr(39)+qrconsultavendaI.Value+chr(39));
                        qratualizar.Params[0].Value := documento;
                        qratualizar.ExecSQL;
                        qrconsulta.Next;
                      end;
                qrconsulta.Refresh;
              end;
         end;
     end
     else
     begin
       application.MessageBox('Preencha o Período e o Cliente','Atenção',mb_ok+MB_ICONERROR);
       medatainicial.SetFocus;
     end;
end;

procedure TFrmVenda.btrelatorioClick(Sender: TObject);
begin
  dm.venda.Close;
  dm.venda.SQL.Clear;
  dm.venda.SQL.Add('select * from venda');
  dm.venda.SQL.Add('where (vendaI='+chr(39)+qrconsultavendaI.Value+chr(39)+')');
  dm.venda.SQL.Add('and (fechada = '+chr(39)+'S'+chr(39)+')');
  dm.venda.Open;
  AtualizarMovEstoque;

  dm.clientes.Close;
  dm.clientes.SQL.Clear;
  dm.clientes.SQL.Add('select * from clientes');
  dm.clientes.SQL.Add('where (codigo='+IntToStr(dm.vendacliente.Value)+')');
  dm.clientes.Open;

  qrcnpj_cpf.Caption:=dm.clientescpf.Value;
  qrie_rg.Caption:=dm.clientesrg.Value;

  movvenda.Close;
  movvenda.SQL.Clear;
  movvenda.SQL.Add('select M.vendaI,M.produto,M.qtd,M.unit,M.total,P.nome,P.undint');
  movvenda.SQL.Add('from movvenda M, produtos P');
  movvenda.SQL.Add('where (M.produto = P.codigo)');
  movvenda.SQL.Add('and (vendaI='+chr(39)+qrconsultavendaI.Value+chr(39)+')');
  movvenda.Open;

  qrytot              :=  TZQuery.Create(nil);
  qrytot.Connection   :=  dm.ZConnection1;
  qrytot.Close;
  qrytot.SQL.Clear;
  qrytot.SQL.Add('select sum(total) as subtotal from movvenda');
  qrytot.SQL.Add('where (vendaI ='+chr(39)+qrconsultavendaI.Value+chr(39)+')');
  qrytot.Open;
  qrsubtotal.Caption:=formatfloat('#,##0.00',qrytot.FieldByName('subtotal').Value);

  qrytot.Close;
  qrytot.SQL.Clear;
  qrytot.SQL.Add('select sum(subtotal) as subtotal, sum(desconto) as desconto, sum(total) as total from venda');
  qrytot.SQL.Add('where (vendaI ='+chr(39)+qrconsultavendaI.Value+chr(39)+')');
  qrytot.SQL.Add('and (fechada ='+chr(39)+'S'+chr(39)+')');
  qrytot.SQL.Add('and (formapagto <>'+chr(39)+'C9'+chr(39)+')');//forma de pagamento = crédito deixado pelo cliente
  qrytot.Open;
  qrdesc.Caption:=formatfloat('#,##0.00',qrytot.FieldByName('desconto').Value);
  qrtotal.Caption:=formatfloat('#,##0.00',qrytot.FieldByName('total').Value);

  qrpago.Lines.Clear;
  qrpago.Lines.Clear;
  dm.venda.First;
  while not dm.venda.Eof do
     begin
       if dm.vendaformapagto.Value='SD' then
          begin
            dm.DocReceber.Close;
            dm.DocReceber.SQL.Clear;
            dm.DocReceber.SQL.Add('select * from docreceber');
            dm.DocReceber.sql.add('where cliente = '+qrconsultacliente.AsString);
            dm.DocReceber.SQL.Add('and doc like '+chr(39)+qrconsultavendaI.Value+'%'+chr(39));
            dm.docreceber.SQL.Add('order by vencto');
            dm.DocReceber.Open;
            if dm.DocReceber.RecordCount>0 then
               begin
                 while not dm.DocReceber.Eof do
                       begin
                         qrpago.Lines.Add(qrconsultaDescricao.Value+' - '+DateToStr(dm.docrecebervencto.value)+' - '+formatfloat('#,##0.00',dm.docreceberliquido.Value));
                         dm.docreceber.Next;
                       end;
               end;
          end
          else
          begin
            dm.formapagto.open;
            dm.formapagto.Locate('codigo',dm.vendaformapagto.Value,[]);
            if dm.vendaformapagto.Value='C9' then
               qrpago.Lines.Add('CREDITO DEIXADO PELA CLIENTE - '+formatfloat('#,##0.00',dm.vendatotal.Value))
            else
               qrpago.Lines.Add(dm.formapagtodescricao.Value+' - '+formatfloat('#,##0.00',dm.vendatotal.Value));
          end;
       dm.venda.Next;
     end;

  dm.fornecedores.Close;
  dm.fornecedores.SQL.Clear;
  dm.fornecedores.SQL.Add('select * from fornecedores');
  dm.fornecedores.SQL.Add('where (codigo='+IntToStr(dm.vendavendedor.Value)+')');
  dm.fornecedores.Open;
  QuickRep1.Preview;
end;

procedure TFrmVenda.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  dm.produtos.close;
  dm.produtos.sql.clear;
  dm.produtos.sql.add('select * from produtos');
  dm.produtos.sql.add('where codigo = '+IntToStr(dm.movvendaproduto.Value));
  dm.produtos.open;
end;

Function RemoveAcentos(Str:String): String;
{Remove caracteres acentuados de uma string}
Const ComAcento = 'àâêôûãõáéíóúçüÀÂÊÔÛÃÕÁÉÍÓÚÇÜ';
  SemAcento = 'aaeouaoaeioucuAAEOUAOAEIOUCU';
Var
x : Integer;
Begin
For x := 1 to Length(Str) do
  Begin
  if Pos(Str[x],ComAcento)<>0 Then
  begin
  Str[x] := SemAcento[Pos(Str[x],ComAcento)];
  end;
  end;
Result := Str;
end;

procedure TFrmVenda.BitBtn5Click(Sender: TObject);
begin
  try
    dm.parametros.Close;
    dm.parametros.Open;
    Application.CreateForm(TfEnvioNfce, fEnvioNfce);

    if dm.parametrosCRT.Value = '3' then
      fEnvioNfce.rbCRT.ItemIndex                   :=  0
    else
      fEnvioNfce.rbCRT.ItemIndex                   :=  1;

    fEnvioNfce.edtEmitCNPJ.Text:=dm.parametroscnpj.Value;
    fEnvioNfce.edtEmitIE.Text:=dm.parametrosie.Value;
    fEnvioNfce.edtEmitRazao.Text:=RemoveAcentos(dm.parametrosrazaosocial.Value);
    fEnvioNfce.edtEmitFantasia.Text:=RemoveAcentos(dm.parametrosfantasia.Value);
    fEnvioNfce.edtEmitFone.Text:=dm.parametrosddd.Value+dm.parametrosfone1.Value;
    fEnvioNfce.edtEmitCEP.Text:=dm.parametroscep.Value;
    fEnvioNfce.edtEmitLogradouro.Text:=RemoveAcentos(dm.parametrosendereco.Value);
    fEnvioNfce.edtEmitNumero.Text:=IntToStr(dm.parametrosnumero.Value);
    fEnvioNfce.edtEmitComp.Text:='';
    fEnvioNfce.edtEmitBairro.Text:=RemoveAcentos(dm.parametrosbairro.Value);
    fEnvioNfce.edtEmitCodCidade.Text:=dm.parametrosCodigo_Municipio.Value;
    fEnvioNfce.edtEmitCidade.Text:=RemoveAcentos(dm.parametroscidade.Value);
    fEnvioNfce.edtEmitUF.Text:=dm.parametrosEstado.Value;


  if edcliente.Text<>'' then
     begin
       N_CPF     := '';
       ClickedOK := InputQuery('Digite o CPF do Consumidor (Somente números)', 'Identificar Consumidor', N_CPF);
       if ClickedOK then
          begin
            dm.clientes.close;
            dm.clientes.sql.clear;
            dm.clientes.sql.add('select * from clientes');
            dm.Clientes.sql.add('where cpf = '+chr(39)+N_CPF+chr(39));
            dm.clientes.open;
            if dm.clientes.RecordCount>0 then
               begin
                 fEnvioNfce.edtDestCNPJ.Text:=dm.clientescpf.Value;
                 fEnvioNfce.edtDestRazao.Text:=RemoveAcentos(dm.clientesnome.Value);
                 fEnvioNfce.edtDestFone.Text:=dm.clientesfone1.Value;
                 fEnvioNfce.edtDestCEP.Text:=dm.clientescep.Value;
                 fEnvioNfce.edtDestLogradouro.Text:=RemoveAcentos(dm.clientesendereco.Value);
                 fEnvioNfce.edtDestNumero.Text:='0';
                 fEnvioNfce.edtDestComp.Text:='';
                 fEnvioNfce.edtDestBairro.Text:=RemoveAcentos(dm.clientesbairro.Value);
                 fEnvioNfce.edtDestCidade.Text:=RemoveAcentos(dm.clientescidade.Value);
                 fEnvioNfce.edtDestUF.Text:=dm.clientesestado.Value;
               end;
          end;
     end
     else
     begin
      fEnvioNfce.edtDestCNPJ.Text:='';
      fEnvioNfce.edtDestRazao.Text:=RemoveAcentos(dm.parametrosrazaosocial.Value);
      fEnvioNfce.edtDestFone.Text:=dm.parametrosfone1.Value;
      fEnvioNfce.edtDestCEP.Text:=dm.parametroscep.Value;
      fEnvioNfce.edtDestLogradouro.Text:=RemoveAcentos(dm.parametrosendereco.Value);
      fEnvioNfce.edtDestNumero.Text:='0';
      fEnvioNfce.edtDestComp.Text:='';
      fEnvioNfce.edtDestBairro.Text:=RemoveAcentos(dm.parametrosbairro.Value);
      fEnvioNfce.edtDestCidade.Text:=RemoveAcentos(dm.parametroscidade.Value);
      fEnvioNfce.edtDestUF.Text:=dm.parametrosEstado.Value;
     end;

    fEnvioNfce.edtDestCodCidade.Text:=dm.parametroscodigo_municipio.Value;

    dm.venda.Close;
    dm.venda.SQL.Clear;
    dm.venda.SQL.Add('select * from venda');
    dm.venda.SQL.Add('where vendaI='+chr(39)+FrmVenda.qrconsultavendaI.Value+chr(39));
    dm.venda.SQL.Add('and fechada='+chr(39)+'S'+chr(39));
    dm.venda.Open;

    fEnvioNfce.lbtipo.Caption:='SV';
    if FrmVenda.qrconsultaDescricao.Value='FATURADO' then
       fEnvioNfce.cbPagamento.Text:='1 - À prazo'
    else
       fEnvioNfce.cbPagamento.Text:='0 - À vista';

    fEnvioNfce.edModelo.Text:='65';
    fEnvioNfce.edSerie.Text:='1';
    fEnvioNfce.edNatureza.Text:='VENDA DENTRO DO ESTADO';
    fEnvioNfce.edCfop.Text:='5102';
    fEnvioNfce.edEmissao.Text:=DateToStr(date);
    fEnvioNfce.cbImpressao.Text:='1 - Retrato';
    fEnvioNfce.edValorProdutos.Text:=formatfloat('0.00',qrconsultatotal.value);
    fEnvioNfce.edValorNota.Text:=formatfloat('0.00',qrconsultatotal.value);
    fEnvioNfce.edBaseIcms.Text:='0,00';
    fEnvioNfce.edValorIcms.Text:='0,00';
    fEnvioNfce.edAliquota.Text:='0';
    fEnvioNfce.lbvenda.Caption:=qrconsultavendaI.Value;
    busca :=IntToStr(dm.parametrosultnfce.Value+1);
    ClickedOK := InputQuery('Digite a última NFCe', 'QTD NFCe', busca);
    fEnvioNfce.edNota.Text:=busca;

    dm.rastro.Close;
    dm.rastro.SQL.Clear;
    dm.rastro.SQL.Add('select * from rastro');
    dm.rastro.SQL.Add('where (1=2)');
    dm.rastro.Open;
    dm.rastro.Insert;
    dm.rastrodata.Value:=date;
    dm.rastrohora.Value:=TimeToStr(time);
    dm.rastrooperador.Value:=FrmPrincipal.sb.Panels[3].Text;
    dm.rastrorotina.Value:='NFCe';
    dm.rastrooperacao.Value:='I';
    dm.rastrohistorico.Value:='VENDA - '+FrmVenda.qrconsultavendaI.Value;
    dm.rastrofavorecido.Value:=FrmVenda.qrconsultacliente.Value;
    dm.rastrovalor.Value:=FrmVenda.qrconsultatotal.Value;
    dm.rastroobs.Value:=formatfloat('000000000',StrToFloat(busca));//000000077
    dm.rastro.Post;
    dm.rastro.Close;

    qratualizar.Close;
    qratualizar.SQL.Clear;
    qratualizar.SQL.Add('update parametros set');
    qratualizar.sql.add('ultnfce = :busca');
//    qratualizar.sql.add('where fantasia = '+chr(39)+FrmPrincipal.Panel2.Caption+chr(39));
    qratualizar.Params[0].Value := busca;
    qratualizar.ExecSQL;

    fEnvioNfce.cbModeloDF.Text:='moNFCe';
    fEnvioNfce.btnSalvarConfig.Click;


    if FrmPrincipal.sb.Panels[3].Text='FLVIEIRA' then
       fEnvioNfce.showmodal
    else
       fEnvioNfce.btMontar.Click;
  finally
    fEnvioNfce.Release;
    fEnvioNfce:=nil;
    bt1.Click;
  end;
end;

procedure TFrmVenda.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_f2 then // Inserir Mov. Estoque
     begin
      qrconsulta.First;
      while not qrconsulta.Eof do
            begin
              inserirmovestoque;
              qrconsulta.Next;
            end;
       bt1.Click;
     end;
  if key=vk_f3 then // Atualizar Desconto no Estoque
     begin
      qrconsulta.First;
      while not qrconsulta.Eof do
            begin
              AtualizarDescontoE;
              qrconsulta.Next;
            end;
       bt1.Click;
     end;
  if key=vk_f4 then // Atualizar Data da Venda
     begin
       busca := '';
       ClickedOK := InputQuery('Digite a Data das Vendas', 'Alterar Data das Vendas', busca);
       if ClickedOK then
          begin
            qrconsulta.First;
            if busca<>'' then
               V_datan:=copy(busca,7,4)+'/'+copy(busca,4,2)+'/'+copy(busca,1,2);
            while not qrconsulta.Eof do
                  begin
                    if busca='' then
                       begin
                         if not qrMovEstoquedata.IsNull then
                            V_datan:=copy(DateToStr(qrMovEstoquedata.Value),7,4)+'/'+
                            copy(DateToStr(qrMovEstoquedata.Value),4,2)+'/'+
                            copy(DateToStr(qrMovEstoquedata.Value),1,2);
                       end;
                    R_hora:=TimeToStr(time);
                    dm.rastro.Close;
                    dm.rastro.SQL.Clear;
                    dm.rastro.SQL.Add('select * from rastro');
                    dm.rastro.SQL.Add('where (1=2)');
                    dm.rastro.Open;
                    dm.rastro.Insert;
                    dm.rastrodata.Value:=date;
                    dm.rastrohora.Value:=TimeToStr(time);
                    dm.rastrooperador.Value:=FrmPrincipal.sb.Panels[3].Text;
                    dm.rastrorotina.Value:='VENDA';
                    dm.rastrooperacao.Value:='A';
                    dm.rastrohistorico.Value:='VENDA - '+qrconsultavendaI.Value+' - Nova Data: '+busca;
                    dm.rastrofavorecido.Value:=qrconsultacliente.Value;
                    dm.rastrovalor.Value:=qrconsultatotal.Value;
                    dm.rastroobs.Value:='Data Anterior: '+DateToStr(qrconsultadata.value);
                    dm.rastro.Post;

                    sit:=V_datan;
                    qratualizar.Close;
                    qratualizar.SQL.Clear;
                    qratualizar.SQL.Add('update venda set');
                    qratualizar.sql.add('data = :V_datan,');
                    qratualizar.sql.add('pgto = :sit');
                    qratualizar.SQL.Add('where vendaI= '+chr(39)+qrconsultavendaI.Value+chr(39));
                    qratualizar.Params[0].Value := V_datan;
                    qratualizar.Params[1].Value := sit;
                    qratualizar.ExecSQL;

                    qratualizar.Close;
                    qratualizar.SQL.Clear;
                    qratualizar.SQL.Add('update movestoque set');
                    qratualizar.sql.add('data = :V_datan');
                    qratualizar.SQL.Add('where documento= '+chr(39)+qrconsultavendaI.Value+chr(39));
                    qratualizar.Params[0].Value := V_datan;
                    qratualizar.ExecSQL;

                    qrconsulta.Next;
                  end;
          end;
       bt1.Click;
     end;

end;

procedure TFrmVenda.DBGrid1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  DBGrid1.hint := 'Pressione: F2 para Inserir Movimento de Estoque'+#13+
                  'Pressione: F3 para Atualizar o Desconto no Movimento de Estoque'+#13+
                  'Pressione: F4 para Alterar a Data das Vendas'+#13+
                  'Pressione: F5 para Atualizar o Protocolo de NFCe';
end;

procedure TFrmVenda.btgravarClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmRelNfceNfe, FrmRelNfceNfe);
    FrmRelNfceNfe.showmodal;
  finally
    FrmRelNfceNfe.Release;
    FrmRelNfceNfe:=nil;
  end;

end;

procedure TFrmVenda.btnfClick(Sender: TObject);
begin
  dm.usuarios.Open;
  dm.usuarios.Locate('nome',FrmPrincipal.sb.Panels[3].Text,[]);
  if dm.usuariosparametros.value='5' then  //Acesso 5 no caixa
     begin
        if
          Application.MessageBox(
            'Confirma Operação ?',
            'Retornar ao Caixa',
            MB_YESNO + MB_DEFBUTTON2 + MB_ICONQUESTION
          ) = mrYes
        then
          begin
            busca := '';
            ClickedOK := InputQuery('Digite o Motivo', 'Retornar ao Caixa', busca);

            R_hora:=TimeToStr(time);
            dm.rastro.Close;
            dm.rastro.SQL.Clear;
            dm.rastro.SQL.Add('select * from rastro');
            dm.rastro.SQL.Add('where (1=2)');
            dm.rastro.Open;
            dm.rastro.Insert;
            dm.rastrodata.Value:=date;
            dm.rastrohora.Value:=TimeToStr(time);
            dm.rastrooperador.Value:=FrmPrincipal.sb.Panels[3].Text;
            dm.rastrorotina.Value:='VENDA';
            dm.rastrooperacao.Value:='C';
            dm.rastrohistorico.Value:='RETORNAR AO CAIXA - '+qrconsultavendaI.Value;
            dm.rastrofavorecido.Value:=qrconsultacliente.Value;
            dm.rastrovalor.Value:=qrconsultatotal.Value;
            dm.rastroobs.Value:=busca;
            dm.rastro.Post;

            dm.venda.Close;
            dm.venda.SQL.Clear;
            dm.venda.SQL.Add('select * from venda');
            dm.venda.SQL.Add('where vendaI='+chr(39)+FrmVenda.qrconsultavendaI.Value+chr(39));
            dm.venda.Open;

            qratualizar.Close;
            qratualizar.SQL.Clear;
            qratualizar.SQL.Add('delete from movestoque');
            qratualizar.SQL.Add('where documento = '+chr(39)+qrconsultavendaI.Value+chr(39));
            qratualizar.ExecSQL;

            qratualizar.Close;
            qratualizar.SQL.Clear;
            qratualizar.SQL.Add('delete from historicoclie');
            qratualizar.SQL.Add('where venda = '+chr(39)+qrconsultavendaI.Value+chr(39));
            qratualizar.ExecSQL;

            while not dm.venda.Eof do
                  begin
                    dm.formapagto.close;
                    dm.formapagto.Open;
                    dm.formapagto.Locate('codigo',dm.vendaformapagto.Value,[]);
                    if dm.formapagtodias.Value=0 then
                       AtualizarFinanceiro;
                    dm.venda.Next;
                  end;

            qratualizar.Close;
            qratualizar.SQL.Clear;
            qratualizar.SQL.Add('delete from docreceber');
            qratualizar.SQL.Add('where (doc like '+chr(39)+dm.vendavendaI.Value+'%'+chr(39)+')');
            qratualizar.ExecSQL;

            sit:='N';
            qratualizar.Close;
            qratualizar.SQL.Clear;
            qratualizar.SQL.Add('update venda set');
            qratualizar.sql.add('fechada = :sit');
            qratualizar.SQL.Add('where vendaI= '+chr(39)+qrconsultavendaI.Value+chr(39));
            qratualizar.Params[0].Value := sit;
            qratualizar.ExecSQL;
            
            bt1.Click;
          end;
     end;
end;

procedure TFrmVenda.AlterarFormadePagamento1Click(Sender: TObject);
begin
  dm.usuarios.Close;
  dm.usuarios.Open;
  dm.usuarios.Locate('nome',FrmPrincipal.sb.Panels[3].Text,[]);
  if dm.usuariosparametros.value='5' then
     begin
       busca := '';
       ClickedOK := InputQuery('Alterar Forma de Pagamento', 'Digite:'+#13+
      'AV  - DINHEIRO'+#13+
      'BB - BOLETO BANCARIO'+#13+
      'CC - CARTÃO CRÉDITO'+#13+
      'CD - CARTÃO DÉBITO'+#13+
      'CP - CHEQUE PRÉ-DATADO'+#13+
      'CF - CRÉDITO CLIENTE'+#13+
      'SD - FATURADO'+#13+
      'TB - TRANSFERÊNCIA BANCÁRIA'+#13+
      'UC - UTILIZAÇÃO CRÉDITO'+#13+
      'BB - PERMULTA'+#13+
      'PE - UTILIZAÇÃO CRÉDITO', busca);
       if ClickedOK then
          begin
            dm.formapagto.close;
            dm.formapagto.Open;
            if not dm.formapagto.Locate('codigo',busca,[]) then
               begin
                 showmessage('Forma de Pagamento não Localizada!!!');
                 exit;
               end;
            dm.rastro.Close;
            dm.rastro.SQL.Clear;
            dm.rastro.SQL.Add('select * from rastro');
            dm.rastro.SQL.Add('where (1=2)');
            dm.rastro.Open;
            dm.rastro.Insert;
            dm.rastrodata.Value:=date;
            dm.rastrohora.Value:=TimeToStr(time);
            dm.rastrooperador.Value:=FrmPrincipal.sb.Panels[3].Text;
            dm.rastrorotina.Value:='VENDA';
            dm.rastrooperacao.Value:='A';
            dm.rastrohistorico.Value:='Forma de Pagamento Anterior: '+qrconsultaDescricao.Value;
            dm.rastrofavorecido.Value:=qrconsultacliente.Value;
            dm.rastrovalor.Value:=qrconsultatotal.Value;
            dm.rastroobs.Value:=busca;
            dm.rastro.Post;
            dm.rastro.Close;

            V_agrupada:=qrconsultaDescricao.Value;
            dm.formapagto.close;
            dm.formapagto.Open;
            dm.formapagto.Locate('descricao',V_agrupada,[]);
            qratualizar.Close;
            qratualizar.SQL.Clear;
            qratualizar.SQL.Add('update venda set');
            qratualizar.sql.add('formapagto = :busca');
            qratualizar.SQL.Add('where vendaI= '+chr(39)+qrconsultavendaI.Value+chr(39));
            qratualizar.SQL.Add('and formapagto= '+chr(39)+dm.formapagtocodigo.Value+chr(39));
            qratualizar.Params[0].Value := busca;
            qratualizar.ExecSQL;

            qratualizar.Close;
            qratualizar.SQL.Clear;
            qratualizar.SQL.Add('update docreceber set');
            qratualizar.sql.add('tipo = :busca');
            qratualizar.SQL.Add('where doc = '+chr(39)+qrconsultavendaI.Value+chr(39));
            qratualizar.Params[0].Value := busca;
            qratualizar.ExecSQL;

            qrconsulta.Close;
            qrconsulta.Open;
          end;
     end
     else
        application.MessageBox('Acesso não permitido','Atenção',mb_ok+MB_ICONINFORMATION);
end;

procedure verificarnfe;
begin
        dm.nf.Close;
        dm.nf.sql.clear;
        dm.nf.sql.add('select * from nf');
        dm.nf.sql.add('where (documento ='+chr(39)+N_NF+chr(39)+')');
        dm.nf.sql.add('and (tipo ='+chr(39)+'S'+chr(39)+')');
//        dm.nf.sql.add('and (empresa ='+FrmVenda.edempresa.Text+')');
        dm.nf.open;
        if dm.nf.RecordCount<1 then
           begin
             dm.nf.Insert;
             dm.nftipo.Value:='S';
             dm.nffavorecido.Value:=FrmVenda.qrconsultacliente.Value;
             dm.nfdocumento.Value:=formatfloat('000000',StrToFloat(N_NF));
             dm.nfemissao.Value:=StrToDate(copy(N_Data,9,2)+'/'+copy(N_Data,6,2)+'/'+copy(N_Data,1,4));
             dm.nfrecepcao.Value:=StrToDate(copy(N_Data,9,2)+'/'+copy(N_Data,6,2)+'/'+copy(N_Data,1,4));
             dm.nfserie.Value:=N_Serie;
             dm.nfvlrcontabil.value:=FrmVenda.qrconsultatotal.Value;
             dm.nfprotocolonfe.Value:=n_procolo_nfce;
             dm.nfchavenfe.Value:=N_ChaveNFE;
             dm.nf.Post;
             dm.nf.Close;

             FrmVenda.qratualizar.Close;
             FrmVenda.qratualizar.SQL.Clear;
             FrmVenda.qratualizar.SQL.Add('update venda set');
             FrmVenda.qratualizar.sql.add('nf = :N_NF');
             FrmVenda.qratualizar.SQL.Add('where vendaI='+chr(39)+FrmVenda.qrconsultavendaI.Value+chr(39));
             FrmVenda.qratualizar.Params[0].Value := N_NF;
             FrmVenda.qratualizar.ExecSQL;

             dm.DocReceber.Close;
             dm.DocReceber.SQL.Clear;
             dm.DocReceber.SQL.Add('select * from docreceber');
             dm.docreceber.SQL.Add('where (cliente ='+IntToStr(FrmVenda.qrconsultacliente.value)+')');
             dm.docreceber.SQL.Add('and (doc like '+chr(39)+FrmVenda.qrconsultavendaI.Value+'%'+chr(39)+')');
             dm.DocReceber.Open;
             if dm.DocReceber.RecordCount>0 then
                begin
                  FrmVenda.qratualizar.Close;
                  FrmVenda.qratualizar.SQL.Clear;
                  FrmVenda.qratualizar.SQL.Add('update docreceber set');
                  FrmVenda.qratualizar.sql.add('nf = :N_NF');
                  FrmVenda.qratualizar.SQL.Add('where (cliente ='+IntToStr(FrmVenda.qrconsultacliente.value)+')');
                  FrmVenda.qratualizar.SQL.Add('and (doc like '+chr(39)+FrmVenda.qrconsultavendaI.Value+'%'+chr(39)+')');
                  FrmVenda.qratualizar.Params[0].Value := N_NF;
                  FrmVenda.qratualizar.ExecSQL;
                end;

           end;
end;

procedure TFrmVenda.EnviarNFE1Click(Sender: TObject);
begin
  try
//    Application.CreateForm(TFrmMonitorNF, FrmMonitorNF);
    Application.CreateForm(TfEnvioNfe, fEnvioNfe);

    dm.parametros.Close;
    dm.parametros.Open;

    if dm.parametrosCRT.Value = '3' then
      fEnvioNfe.rbCRT.ItemIndex                   :=  0
    else
      fEnvioNfe.rbCRT.ItemIndex                   :=  1;

    fEnvioNfe.edtEmitCNPJ.Text:=dm.parametroscnpj.Value;
    fEnvioNfe.edtEmitIE.Text:=dm.parametrosie.Value;
    fEnvioNfe.edtEmitRazao.Text:=RemoveAcentos(dm.parametrosrazaosocial.Value);
    fEnvioNfe.edtEmitFantasia.Text:=RemoveAcentos(dm.parametrosfantasia.Value);
    fEnvioNfe.edtEmitFone.Text:=dm.parametrosddd.Value+dm.parametrosfone1.Value;
    fEnvioNfe.edtEmitCEP.Text:=dm.parametroscep.Value;
    fEnvioNfe.edtEmitLogradouro.Text:=RemoveAcentos(dm.parametrosendereco.Value);
    fEnvioNfe.edtEmitNumero.Text:=IntToStr(dm.parametrosnumero.Value);
    fEnvioNfe.edtEmitComp.Text:='';
    fEnvioNfe.edtEmitBairro.Text:=RemoveAcentos(dm.parametrosbairro.Value);
    fEnvioNfe.edtEmitCodCidade.Text:=dm.parametrosCodigo_Municipio.Value;
    fEnvioNfe.edtEmitCidade.Text:=RemoveAcentos(dm.parametroscidade.Value);
    fEnvioNfe.edtEmitUF.Text:=dm.parametrosEstado.Value;
    dm.clientes.close;
    dm.clientes.sql.clear;
    dm.clientes.sql.add('select * from clientes');
    dm.clientes.sql.add('where codigo = '+IntToStr(qrconsultacliente.Value));
    dm.clientes.open;

    if length(dm.clientescpf.Value)>11 then
       begin
         fEnvioNfe.edtDestCNPJ.Text:=dm.clientescpf.Value;
         if dm.clientesrg.Value<>'' then
            fEnvioNfe.edtDestIE.Text:=dm.clientesrg.Value
         else
            fEnvioNfe.edtDestIE.Text:='';
       end
       else
       begin
         fEnvioNfe.edtDestCNPJ.Text:=dm.clientescpf.Value;
         fEnvioNfe.edtDestIE.Text:='';
       end;
    fEnvioNfe.edtDestRazao.Text:=RemoveAcentos(dm.clientesnome.Value);
    fEnvioNfe.edtDestFantasia.Text:=RemoveAcentos(dm.clientesnome.Value);
    fEnvioNfe.edtDestFone.Text:=dm.clientesfone1.Value;
    fEnvioNfe.edtDestCEP.Text:=dm.clientescep.Value;
    fEnvioNfe.edtDestLogradouro.Text:=RemoveAcentos(dm.clientesendereco.Value);
    fEnvioNfe.edtDestNumero.Text:='0';
    fEnvioNfe.edtDestComp.Text:='';
    fEnvioNfe.edtDestBairro.Text:=RemoveAcentos(dm.clientesbairro.Value);
    fEnvioNfe.edtDestCidade.Text:=RemoveAcentos(dm.clientescidade.Value);
    fEnvioNfe.edtDestUF.Text:=dm.clientesestado.Value;

    qrymun              :=  TZQuery.Create(nil);
    qrymun.Connection   :=  dm.ZConnection1;
    qrymun.SQL.Add('select Codigo from municipios');
    qrymun.sql.add('where Municipio = '+chr(39)+fEnvioNfe.edtDestCidade.Text+chr(39));
    qrymun.sql.add('and UF = '+chr(39)+fEnvioNfe.edtDestUF.Text+chr(39));
    qrymun.Open;

    fEnvioNfe.edtDestCodCidade.Text:=qrymun.FieldByName('Codigo').AsString;
    qrymun.Free;

    fEnvioNfe.cbModeloDF.Text:='moNFe';
    fEnvioNfe.btnSalvarConfig.Click;

    dm.venda.Close;
    dm.venda.SQL.Clear;
    dm.venda.SQL.Add('select * from venda');
    dm.venda.SQL.Add('where vendaI='+chr(39)+FrmVenda.qrconsultavendaI.Value+chr(39));
    dm.venda.SQL.Add('and fechada='+chr(39)+'S'+chr(39));
    dm.venda.Open;

    fEnvioNfe.lbtipo.Caption:='SV';
    if FrmVenda.qrconsultaDescricao.Value='FATURADO' then
       fEnvioNfe.cbPagamento.Text:='1 - À prazo'
    else
       fEnvioNfe.cbPagamento.Text:='0 - À vista';

    fEnvioNfe.edModelo.Text:='55';
    fEnvioNfe.edSerie.Text:='1';
    dm.cfop.Open;
    if fEnvioNfe.edtEmitUF.Text = fEnvioNfe.edtDestUF.Text then
       dm.cfop.Locate('codigo',5102,[])
    else
       dm.cfop.Locate('codigo',6102,[]);
    fEnvioNfe.edNatureza.Text:=dm.cfopdescricao.Value;
    fEnvioNfe.edCfop.Text:=dm.cfopcodigo.Value;
    fEnvioNfe.cbtipo.Text:='1 - Saída';

    if not qrconsultanf.IsNull then
       fEnvioNfe.edNota.Text:=IntToStr(qrconsultanf.Value)
    else
    begin
      qryN              :=  TZQuery.Create(nil);
      qryN.Connection   :=  dm.ZConnection1;
      qryN.SQL.Add('select nf from venda');
      qryN.SQL.Add('where nf is not null');
      qryN.sql.add('order by nf desc');
      qryN.Open;

      if qryN.RecordCount>0 then
         fEnvioNfe.edNota.Text:=IntToStr(qryN.FieldByName('nf').AsInteger+1)
      else
         fEnvioNfe.edNota.Text:='1';
      qryN.Free;
    end;

    fEnvioNfe.edEmissao.Text:=DateToStr(date);
    fEnvioNfe.cbImpressao.Text:='1 - Retrato';

    qrytot              :=  TZQuery.Create(nil);
    qrytot.Connection   :=  dm.ZConnection1;
    qrytot.Close;
    qrytot.SQL.Clear;
    qrytot.SQL.Add('select sum(total) as total from venda');
    qrytot.SQL.Add('where vendaI ='+chr(39)+FrmVenda.qrconsultavendaI.Value+chr(39));
    qrytot.SQL.Add('and fechada ='+chr(39)+'S'+chr(39));
    qrytot.Open;
    Valorbase := qrytot.FieldByName('total').AsFloat;

    fEnvioNfe.edValorProdutos.Text:=formatfloat('0.00',Valorbase);
    fEnvioNfe.edValorNota.Text:=formatfloat('0.00',Valorbase);
    if dm.parametrosCRT.Value = '3' then
       begin
         fEnvioNfe.edBaseIcms.Text:=formatfloat('0.00',Valorbase);
         fEnvioNfe.edValorIcms.Text:=formatfloat('0.00',(Valorbase*dm.parametrosaliicms.value)/100);
         fEnvioNfe.edAliquota.Text:=formatfloat('0.00',dm.parametrosaliicms.value);
       end
       else
       begin
         fEnvioNfe.edBaseIcms.Text:='0,00';
         fEnvioNfe.edValorIcms.Text:='0,00';
         fEnvioNfe.edAliquota.Text:='0';
       end;
    fEnvioNfe.lbvenda.Caption:=qrconsultavendaI.Value;

    dm.DocReceber.Close;
    dm.DocReceber.SQL.Clear;
    dm.DocReceber.SQL.Add('select * from docreceber');
    dm.DocReceber.SQL.Add('where (emissao = '+chr(39)+
    copy(DateToStr(qrconsultadata.Value),7,4)+'/'+copy(DateToStr(qrconsultadata.Value),4,2)+'/'+
    copy(DateToStr(qrconsultadata.Value),1,2)+chr(39)+')');
    dm.docreceber.SQL.Add('and (cliente ='+IntToStr(qrconsultacliente.value)+')');
    dm.docreceber.SQL.Add('and (doc = '+chr(39)+qrconsultavendaI.Value+chr(39)+')');
    dm.DocReceber.Open;
    if dm.DocReceber.RecordCount>0 then
       begin
         fEnvioNfe.ednrfatura.Text:=fEnvioNfe.edNota.Text;
         fEnvioNfe.edvlrfatura.Text:=formatfloat('0.00',dm.docreceberliquido.value);
         fEnvioNfe.edvlrliqfatura.Text:=formatfloat('0.00',dm.docreceberliquido.value);
         fEnvioNfe.edvenctofatura.Text:=DateToStr(dm.docrecebervencto.value);
       end;

    fEnvioNfe.showmodal;
  finally
    fEnvioNfe.Release;
    fEnvioNfe:=nil;
  end;
end;

procedure TFrmVenda.RegistrarNmeroNFSe1Click(Sender: TObject);
begin
  dm.usuarios.Close;
  dm.usuarios.Open;
  dm.usuarios.Locate('nome',FrmPrincipal.sb.Panels[3].Text,[]);
  if dm.usuariosparametros.value='5' then
     begin
        busca := '';
        ClickedOK := InputQuery('Digite o Número da NFSe', 'Registrar Número da NFSe', busca);
        if ClickedOK then
           begin
             qratualizar.Close;
             qratualizar.SQL.Clear;
             qratualizar.SQL.Add('update venda set');
             qratualizar.sql.add('nfse = :busca');
             qratualizar.SQL.Add('where vendaI= '+chr(39)+qrconsultavendaI.Value+chr(39));
             qratualizar.Params[0].Value := busca;
             qratualizar.ExecSQL;
             bt1.Click;
           end;
     end
     else
        application.MessageBox('Acesso não permitido','Atenção',mb_ok+MB_ICONINFORMATION);
end;

procedure TFrmVenda.GerarExcel1Click(Sender: TObject);
begin
  Excel := CreateOleObject('Excel.Application');
  Excel.Visible :=True;
  Excel.WorkBooks.Open('C:\Gestor\teste.xls');
  Excel.WorkBooks[1].Sheets[1].Cells[1,1]:='VENDA';
  Excel.WorkBooks[1].Sheets[1].Cells[1,2]:='PRODUTO';
  Excel.WorkBooks[1].Sheets[1].Cells[1,3]:='NOME';
  Excel.WorkBooks[1].Sheets[1].Cells[1,4]:='UND';
  Excel.WorkBooks[1].Sheets[1].Cells[1,5]:='UNITARIO';
  Excel.WorkBooks[1].Sheets[1].Cells[1,6]:='QTD';
  Excel.WorkBooks[1].Sheets[1].Cells[1,7]:='TOTAL';
  movvenda.Close;
  movvenda.SQL.Clear;
  movvenda.SQL.Add('select M.vendaI,M.produto,M.qtd,M.unit,M.total,P.nome,P.undint');
  movvenda.SQL.Add('from movvenda M, produtos P');
  movvenda.SQL.Add('where (M.produto = P.codigo)');
  movvenda.SQL.Add('and (vendaI='+chr(39)+qrconsultavendaI.Value+chr(39)+')');
  movvenda.Open;
  Linha:=2;
  while not movvenda.Eof do
  begin
      Begin
        Excel.WorkBooks[1].Sheets[1].Cells[Linha,1]:=movvendavendaI.value;
        Excel.WorkBooks[1].Sheets[1].Cells[Linha,2]:=movvendaproduto.Value;
        Excel.WorkBooks[1].Sheets[1].Cells[Linha,3]:=movvendanome.Value;
        Excel.WorkBooks[1].Sheets[1].Cells[Linha,4]:=movvendaundint.Value;
        Excel.WorkBooks[1].Sheets[1].Cells[Linha,5]:=movvendaunit.Value;
        Excel.WorkBooks[1].Sheets[1].Cells[Linha,6]:=movvendaqtd.Value;
        Excel.WorkBooks[1].Sheets[1].Cells[Linha,7]:=movvendatotal.Value;
        movvenda.Next;
        Linha:=Linha+1;
      end;
  end;
end;

procedure TFrmVenda.AtualizarValorPago1Click(Sender: TObject);
begin
  dm.usuarios.Close;
  dm.usuarios.Open;
  dm.usuarios.Locate('nome',FrmPrincipal.sb.Panels[3].Text,[]);
  if dm.usuariosparametros.value='5' then
     begin
       busca := '';
       ClickedOK := InputQuery('Alterar Valor Pago', 'Digite o Valor Pago', busca);
       if ClickedOK then
          begin
            vtotal     :=StrToFloat(busca);
            V_subtotal :=StrToFloat(busca);
            dm.rastro.Close;
            dm.rastro.SQL.Clear;
            dm.rastro.SQL.Add('select * from rastro');
            dm.rastro.SQL.Add('where (1=2)');
            dm.rastro.Open;
            dm.rastro.Insert;
            dm.rastrodata.Value:=date;
            dm.rastrohora.Value:=TimeToStr(time);
            dm.rastrooperador.Value:=FrmPrincipal.sb.Panels[3].Text;
            dm.rastrorotina.Value:='VENDA';
            dm.rastrooperacao.Value:='A';
            dm.rastrohistorico.Value:='Valor Pago Anterior: '+formatfloat('#,##0.00',qrconsultatotal.Value);
            dm.rastrofavorecido.Value:=qrconsultacliente.Value;
            dm.rastrovalor.Value:=vtotal;
            dm.rastroobs.Value:=qrconsultavendaI.Value;
            dm.rastro.Post;
            dm.rastro.Close;

            dm.formapagto.close;
            dm.formapagto.Open;
            dm.formapagto.Locate('descricao',qrconsultaDescricao.Value,[]);
            
            qratualizar.close;
            qratualizar.sql.clear;
            qratualizar.sql.add('update venda set');
            qratualizar.sql.add('subtotal = :V_subtotal,');
            qratualizar.sql.add('total = :vtotal');
            qratualizar.SQL.Add('where vendaI = '+chr(39)+qrconsultavendaI.Value+chr(39));
            qratualizar.SQL.Add('and formapagto = '+chr(39)+dm.formapagtocodigo.Value+chr(39));
            qratualizar.Params[0].Value := V_subtotal;
            qratualizar.Params[1].Value := vtotal;
            qratualizar.ExecSQL;
            qrconsulta.Close;
            qrconsulta.Open;
          end;
     end
     else
        application.MessageBox('Acesso não permitido','Atenção',mb_ok+MB_ICONINFORMATION);
end;

procedure LocalizarArquivo;
begin
  // Try to find regular files matching Unit1.d* in the current dir
  if findfirst('C:\nfedocs\logxml\*'+dm.rastroobs.Value+'*.xml', faAnyFile, searchResult) = 0 then
  begin
    repeat
      nomearq:=searchResult.Name;
    until FindNext(searchResult) <> 0;

    // Must free up resources used by these successful finds
    FindClose(searchResult);
  end;
end;

procedure CopiarXML;
var
arq: TextFile;
linha: String;
begin
  AssignFile ( arq, 'C:\nfedocs\logxml\'+nomearq );
  Reset ( arq );
  ReadLn ( arq, linha );
  messageAnsi:=linha;
end;


procedure TFrmVenda.DesfazerCancelamento1Click(Sender: TObject);
begin
  if Application.Messagebox ('Confirma Operação?','Desfazer Cancelamento', mb_yesno+mb_iconquestion+MB_DEFBUTTON2)=id_yes then
     begin
        dm.venda.Close;
        dm.venda.SQL.Clear;
        dm.venda.SQL.Add('select * from venda');
        dm.venda.SQL.Add('where vendaI='+chr(39)+FrmVenda.qrconsultavendaI.Value+chr(39));
        dm.venda.Open;
        if dm.vendafechada.Value='C' then
           begin
              dm.movvenda.Close;
              dm.movvenda.SQL.Clear;
              dm.movvenda.SQL.Add('select * from movvenda');
              dm.movvenda.SQL.Add('where vendaI='+chr(39)+FrmVenda.qrconsultavendaI.Value+chr(39));
              dm.movvenda.Open;

              dm.movestoque.Close;
              dm.movestoque.SQL.Clear;
              dm.movestoque.SQL.Add('select * from movestoque');
              dm.movestoque.SQL.Add('where (1=2)');
              dm.movestoque.Open;

              dm.dsprodutos.OnDataChange:=nil;
              while not dm.movvenda.Eof do
                    begin
                      dm.produtos.close;
                      dm.produtos.sql.clear;
                      dm.produtos.sql.add('select * from produtos');
                      dm.produtos.sql.add('where codigo = '+IntToStr(dm.movvendaproduto.Value));
                      dm.produtos.open;

                      dm.movestoque.Insert;
                      dm.movestoquedata.Value:=dm.vendadata.Value;
                      dm.movestoqueTipoMov.Value:='SV';
                      dm.movestoqueproduto.Value:=dm.movvendaproduto.Value;
                      dm.movestoqueund.Value:=dm.produtosundint.Value;
                      dm.movestoqueqtd.Value:=dm.movvendaqtd.Value;
                      dm.movestoqueVlrUnit.Value:=dm.movvendaunit.Value;
                      dm.movestoquedesconto.Value:=0;
                      dm.movestoqueVlrTotal.Value:=(dm.movestoqueVlrUnit.Value*dm.movestoqueqtd.Value);
                      dm.movestoquedocumento.Value:=dm.vendavendaI.Value;
                      dm.movestoquefavorecido.Value:=dm.vendacliente.Value;
                      dm.movestoquevendedor.Value:=dm.vendavendedor.Value;
                      dm.movestoquelocal.asstring := FrmPrincipal.sb.Panels[7].Text;
                      dm.movestoque.Post;

                      dm.movvenda.Next;
                      Application.ProcessMessages;
                    end;
             vfechada:='S';
             FrmVenda.qratualizar.Close;
             FrmVenda.qratualizar.SQL.Clear;
             FrmVenda.qratualizar.SQL.Add('update venda set');
             FrmVenda.qratualizar.SQL.Add('fechada = :vfechada');
             FrmVenda.qratualizar.SQL.Add('where (vendaI= '+chr(39)+dm.vendavendaI.Value+chr(39)+')');
             FrmVenda.qratualizar.Params[0].Value := vfechada;
             FrmVenda.qratualizar.ExecSQL;

             R_hora:=TimeToStr(time);
             dm.rastro.Close;
             dm.rastro.SQL.Clear;
             dm.rastro.SQL.Add('select * from rastro');
             dm.rastro.SQL.Add('where (1=2)');
             dm.rastro.Open;
             dm.rastro.Insert;
             dm.rastrodata.Value:=date;
             dm.rastrohora.Value:=TimeToStr(time);
             dm.rastrooperador.Value:=FrmPrincipal.sb.Panels[3].Text;
             dm.rastrorotina.Value:='VENDA';
             dm.rastrooperacao.Value:='A';
             dm.rastrohistorico.Value:='DESFAZER CANCELAMENTO DA VENDA - '+dm.vendavendaI.Value;
             dm.rastrofavorecido.Value:=dm.vendacliente.Value;
             dm.rastrovalor.Value:=dm.vendatotal.Value;
             dm.rastro.Post;
             dm.rastro.Close;
           end;
     end;
end;

procedure TFrmVenda.AtualizarClientes1Click(Sender: TObject);
begin
  qry              :=  TZQuery.Create(nil);
  qry.Connection   :=  dm.ZConnection1;
  qry.Close;
  qry.SQL.Clear;
  qry.SQL.Add('select cliente from venda');
  qry.sql.add('where vendaI like '+chr(39)+'097%'+chr(39));
  qry.SQL.Add('group by cliente');
  qry.open;
  while not qry.Eof do
        begin
          qratualizar.close;
          qratualizar.sql.clear;
          qratualizar.sql.add('update clientes set');
          qratualizar.sql.add('empresa = 1');
          qratualizar.sql.add('where codigo = '+qry.fieldbyname('cliente').AsString);
          qratualizar.ExecSQL;

          qry.Next;
        end;

  qry.Free;
  showmessage('FIM!!!');
end;

end.


