unit UnitFrmEstoqueRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DB, DBTables, Grids, DBGrids, RLReport,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, QRCtrls, QuickRpt,
  ExtCtrls;

type
  TFrmEstoqueRel = class(TForm)
    GroupBox1: TGroupBox;
    bt1: TBitBtn;
    bt2: TBitBtn;
    rb5: TRadioButton;
    rb6: TRadioButton;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText6: TRLDBText;
    qrvlr1: TRLDBText;
    RLDBText9: TRLDBText;
    RLBand2: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel7: TRLLabel;
    RLBand3: TRLBand;
    RLDBText5: TRLDBText;
    RLDBText7: TRLDBText;
    RLLabel6: TRLLabel;
    RLDBText8: TRLDBText;
    qrtitulo: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RLBand4: TRLBand;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel11: TRLLabel;
    RLDBText10: TRLDBText;
    RLLabel12: TRLLabel;
    RLDBText11: TRLDBText;
    rb3: TRadioButton;
    RLBand5: TRLBand;
    RLLabel13: TRLLabel;
    RLDBResult2: TRLDBResult;
    RLDBResult3: TRLDBResult;
    qratualizar: TZQuery;
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
    qrMovEstoquenome: TStringField;
    dsmovestoque: TDataSource;
    Label4: TLabel;
    medatainicial: TMaskEdit;
    Label5: TLabel;
    medatafinal: TMaskEdit;
    rbcliente: TRadioButton;
    rbfornecedor: TRadioButton;
    edcliente: TEdit;
    Label8: TLabel;
    lbfavorecido: TLabel;
    Label1: TLabel;
    edproduto: TEdit;
    Label3: TLabel;
    lbproduto: TLabel;
    Label6: TLabel;
    cbtipo: TComboBox;
    Label2: TLabel;
    cbgrupo: TComboBox;
    eddoc: TEdit;
    lbdoc: TLabel;
    chmostrar: TCheckBox;
    chquebrar: TCheckBox;
    RLReport2: TRLReport;
    RLBand6: TRLBand;
    qrcodigo: TRLDBText;
    qrdescricao: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLBand7: TRLBand;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLBand8: TRLBand;
    RLDBText22: TRLDBText;
    RLDBText23: TRLDBText;
    RLLabel26: TRLLabel;
    RLDBText24: TRLDBText;
    RLLabel27: TRLLabel;
    RLSystemInfo4: TRLSystemInfo;
    RLSystemInfo5: TRLSystemInfo;
    RLSystemInfo6: TRLSystemInfo;
    RLBand9: TRLBand;
    RLLabel28: TRLLabel;
    RLLabel29: TRLLabel;
    RLBand10: TRLBand;
    RLLabel30: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLDBResult4: TRLDBResult;
    RLLabel31: TRLLabel;
    qrentrada: TRLLabel;
    RLLabel32: TRLLabel;
    qrsaida: TRLLabel;
    RLLabel33: TRLLabel;
    qrec: TRLLabel;
    RLLabel34: TRLLabel;
    qrsv: TRLLabel;
    RLLabel35: TRLLabel;
    RLLabel36: TRLLabel;
    RLLabel37: TRLLabel;
    RLLabel38: TRLLabel;
    qrvlrentrada: TRLLabel;
    qrvlrsaida: TRLLabel;
    qrvlrec: TRLLabel;
    qrvlrsv: TRLLabel;
    RLLabel39: TRLLabel;
    RLLabel40: TRLLabel;
    RLLabel41: TRLLabel;
    RLLabel42: TRLLabel;
    qrestoque: TRLLabel;
    QuickRep1: TQuickRep;
    PageFooterBand1: TQRBand;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText1: TQRDBText;
    DetailBand1: TQRBand;
    qrproduto: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr1: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRExpr9: TQRExpr;
    qrcliente: TQRDBText;
    qrfornecedor: TQRDBText;
    PageHeaderBand1: TQRBand;
    QRLabel22: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel23: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel24: TQRLabel;
    QRSysData3: TQRSysData;
    qrtituloI: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    SummaryBand1: TQRBand;
    QRLabel12: TQRLabel;
    QRExpr2: TQRExpr;
    QRExpr12: TQRExpr;
    QuickRep4: TQuickRep;
    QRGroup1: TQRGroup;
    QRLabel69: TQRLabel;
    qrtipo: TQRLabel;
    QRBand10: TQRBand;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRExpr21: TQRExpr;
    QRExpr22: TQRExpr;
    QRExpr23: TQRExpr;
    QRExpr30: TQRExpr;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRExpr11: TQRExpr;
    QRBand11: TQRBand;
    QRLabel53: TQRLabel;
    QRExpr26: TQRExpr;
    QRExpr10: TQRExpr;
    QRBand12: TQRBand;
    QRShape29: TQRShape;
    QRLabel54: TQRLabel;
    qrtituloEV: TQRLabel;
    QRLabel56: TQRLabel;
    QRSysData10: TQRSysData;
    QRSysData11: TQRSysData;
    QRSysData12: TQRSysData;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel62: TQRLabel;
    QRLabel63: TQRLabel;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRLabel64: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    QRBand13: TQRBand;
    QRLabel66: TQRLabel;
    QRLabel67: TQRLabel;
    QRBand14: TQRBand;
    QRLabel68: TQRLabel;
    QRExpr29: TQRExpr;
    Query1: TZQuery;
    Query1produto: TIntegerField;
    Query1nomeproduto: TStringField;
    Query1und: TStringField;
    Query1qtd: TFloatField;
    Query1Total: TFloatField;
    Query1nome: TStringField;
    procedure bt2Click(Sender: TObject);
    procedure medatainicialExit(Sender: TObject);
    procedure medatafinalExit(Sender: TObject);
    procedure bt1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure rb5Click(Sender: TObject);
    procedure edclienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edclienteExit(Sender: TObject);
    procedure edprodutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edprodutoExit(Sender: TObject);
    procedure edfornecedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbtipoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEstoqueRel: TFrmEstoqueRel;

implementation

uses Unitdm, UnitFrmCadClientes,UnitFrmCadFornecedores,UnitFrmCadProdutos,UnitFrmPrincipal;

{$R *.dfm}

procedure TFrmEstoqueRel.bt2Click(Sender: TObject);
begin
      close;  
end;

procedure TFrmEstoqueRel.medatainicialExit(Sender: TObject);
begin
        if medatainicial.text<>'  /  /    ' then
        begin
        Try
           StrToDate(medatainicial.Text) ;
        Except
        begin
           application.MessageBox('Data Inv�lida!','Aten��o',mb_Ok+mb_iconerror);
           medatainicial.setfocus;
        end;
        end;
        end;
end;

procedure TFrmEstoqueRel.medatafinalExit(Sender: TObject);
begin
        if MeDataFinal.text<>'  /  /    ' then
        begin
        Try
           StrToDate(MeDataFinal.Text) ;
           If StrToDate(MeDataInicial.Text) > StrToDate(MeDataFinal.Text) then
              Begin
                 MessageBox(Handle, 'Data inferior � data inicial de pesquisa!!', 'Aten��o', mb_IconWarning or mb_Ok);
                 medatafinal.text:='';
                 medatainicial.text:='';
                 MeDatainicial.SetFocus;
              End;
        Except
        begin
           application.MessageBox('Data Inv�lida!','Aten��o',mb_Ok+mb_iconerror);
           MeDataFinal.setfocus;
        end;
        end;
        end;
end;

procedure TFrmEstoqueRel.bt1Click(Sender: TObject);
var
nomefavorecido:string;
begin
  dm.parametros.close;
  dm.parametros.sql.clear;
  dm.parametros.sql.add('select * from parametros');
  dm.parametros.sql.add('where fantasia like '+chr(39)+'%'+FrmPrincipal.Panel2.Caption+'%'+chr(39));
  dm.parametros.open;
       if (rb5.Checked) or (rb3.Checked) then
          begin
                qrMovEstoque.Close;
                qrMovEstoque.SQL.Clear;
                qrMovEstoque.SQL.Add('select * from movestoque E, produtos P');
                qrMovEstoque.SQL.Add('where (E.produto=P.codigo)');

                //por PRODUTO
                if edproduto.text<>'' then
                   begin
                     qrMovEstoque.sql.add('and (E.produto = '+edproduto.Text+')');
                     qrtitulo.Caption:='Relat�rio de Mov. de Produtos - Produto: '+
                     edproduto.Text;
                     qrtituloI.Caption:='Relat�rio de Mov. de Produtos - Produto: '+
                     edproduto.Text;
                   end;
                //por GRUPO
                if cbgrupo.text<>'' then
                   begin
                     qrMovEstoque.sql.add('and (P.grupo = '+chr(39)+copy(cbgrupo.Text,1,4)+chr(39)+')');
                     qrtitulo.Caption:='Relat�rio de Mov. de Produtos - Produto: '+
                     edproduto.Text;
                     qrtituloI.Caption:='Relat�rio de Mov. de Produtos - Produto: '+
                     edproduto.Text;
                   end;
                //por DOCUMENTO
                if eddoc.text<>'' then
                   begin
                     qrMovEstoque.sql.add('and (E.documento = '+chr(39)+eddoc.Text+chr(39)+')');
                     qrtitulo.Caption:='Relat�rio de Mov. de Produtos';
                     qrtituloI.Caption:='Relat�rio de Mov. de Produtos';
                   end;
                //por TIPOMOV
                if cbtipo.text<>'' then
                   begin
                     qrMovEstoque.SQL.Add('and (E.tipomov= '+chr(39)+copy(cbtipo.Text,1,2)+chr(39)+')');
                     qrtitulo.Caption:='Relat�rio de Mov. de Produtos - Produto: '+
                     edproduto.Text;
                     qrtituloI.Caption:='Relat�rio de Mov. de Produtos - Produto: '+
                     edproduto.Text;
                   end;
                //por PERIODO
                if (medatainicial.Text<>'  /  /    ') and
                   (medatafinal.Text<>'  /  /    ') then
                   begin
                     qrMovEstoque.SQL.Add('and (E.data between '+chr(39)+
                     copy(medatainicial.text,7,4)+'/'+copy(medatainicial.text,4,2)+'/'+
                     copy(medatainicial.text,1,2)+chr(39)+' and '+chr(39)+
                     copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                     copy(MeDataFinal.text,1,2)+chr(39)+')');
                     qrtitulo.Caption:='Relat�rio de Mov. de Produtos - Grupo: '+
                     cbgrupo.Text+' em '+medatainicial.text+' � '+medatafinal.text;
                     qrtituloI.Caption:='Relat�rio de Mov. de Produtos - Grupo: '+
                     cbgrupo.Text+' em '+medatainicial.text+' � '+medatafinal.text;
                   end;
                //FAVORECIDO
                if edcliente.text<>'' then
                   begin
                     qrMovEstoque.sql.add('and (E.favorecido = '+chr(39)+edcliente.Text+chr(39)+')');
                     qrtitulo.Caption:='Relat�rio de Mov. de Produtos - Grupo: '+
                     cbgrupo.Text+' em '+medatainicial.text+' � '+medatafinal.text+' - Favorecido: '+lbfavorecido.Caption;
                     qrtituloI.Caption:='Relat�rio de Mov. de Produtos - Grupo: '+
                     cbgrupo.Text+' em '+medatainicial.text+' � '+medatafinal.text+' - Favorecido: '+lbfavorecido.Caption;
                   end;
                if chquebrar.Checked=false then
                   qrMovEstoque.SQL.Add('order by E.data,E.documento')
                else
                   qrMovEstoque.SQL.Add('order by E.tipomov,E.data,E.documento');
                qrMovEstoque.Open;
                qrMovEstoque.Last;
                if chquebrar.Checked=false then
                   begin
                      if rb3.Checked then
                         QuickRep1.Preview
                      else
                         RLReport1.Preview;
                   end
                   else
                     QuickRep4.Preview;
          end
       else if rb6.Checked then
          begin
            Query1.Close;
            Query1.SQL.Clear;
            Query1.SQL.Add('select E.produto,P.nome as nomeproduto,E.und,sum(E.qtd) as qtd,sum(E.vlrtotal) as Total,V.nome');
            Query1.SQL.Add('from movestoque E, produtos P, fornecedores V');
            Query1.SQL.Add('where (E.produto=P.codigo) and (E.vendedor=V.codigo)');
            Query1.SQL.Add('and (E.data between '+chr(39)+
            copy(medatainicial.text,7,4)+'/'+copy(medatainicial.text,4,2)+'/'+
            copy(medatainicial.text,1,2)+chr(39)+' and '+chr(39)+
            copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
            copy(MeDataFinal.text,1,2)+chr(39)+')');
            if edcliente.Text<>'' then
               Query1.sql.add('and (P.fornecedor = '+chr(39)+edcliente.Text+chr(39)+')');
            Query1.SQL.Add('group by V.nome,P.nome');
            Query1.Open;
            qrtitulo.Caption:='Per�odo de '+
            medatainicial.text+' � '+medatafinal.text+' - Fornecedor: '+lbfavorecido.Caption;
            QuickRep1.Preview;
          end;
end;

procedure TFrmEstoqueRel.FormShow(Sender: TObject);
begin
      dm.parametros.Close;
      dm.parametros.Open;
      medatainicial.Text:=DateToStr(date);
      medatafinal.Text:=DateToStr(date);
      dm.Grupos.Close;
      dm.Grupos.SQL.Clear;
      dm.Grupos.SQL.Add('select * from grupos');
      dm.Grupos.Open;
      cbgrupo.Items.Clear;
      while not dm.Grupos.Eof do
            begin
              cbgrupo.Items.Add(dm.Gruposcodigo.Value+
              ' '+dm.Gruposdescricao.Value);
              dm.Grupos.Next;
            end;
end;

procedure TFrmEstoqueRel.FormKeyPress(Sender: TObject; var Key: Char);
begin
        if key=#13 then
        begin
           SelectNext(activecontrol,True,True);
           key:=#0;
        end;
end;

procedure TFrmEstoqueRel.rb5Click(Sender: TObject);
begin
      edcliente.Text:='';
      edproduto.Text:='';
      eddoc.Text:='';
end;

procedure TFrmEstoqueRel.edclienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if key=vk_f10 then
         begin
           if rbcliente.Checked then
              begin
                try
                  Application.CreateForm(TFrmCadClientes, FrmCadClientes);
                  FrmCadClientes.showmodal;
                finally
                  FrmCadClientes.Release;
                  FrmCadClientes:=nil;
                end;
              end
              else
              begin
                try
                  Application.CreateForm(TFrmCadFornecedores, FrmCadFornecedores);
                  FrmCadFornecedores.showmodal;
                finally
                  FrmCadFornecedores.Release;
                  FrmCadFornecedores:=nil;
                end;
              end;
         end;
end;

procedure TFrmEstoqueRel.edclienteExit(Sender: TObject);
begin
      if edcliente.Text<>'' then
         begin
           if rbcliente.Checked then
              begin
                dm.Clientes.close;
                dm.Clientes.sql.clear;
                dm.Clientes.sql.add('select * from clientes');
                dm.Clientes.sql.add('where codigo = '+edcliente.text);
                dm.Clientes.open;
                if dm.Clientes.RecordCount<1 then
                   begin
                     application.MessageBox('Cliente n�o Localizado','Aten��o',mb_ok+mb_iconinformation);
                     edcliente.Text:='';
                     lbfavorecido.Caption:='';
                     edcliente.SetFocus;
                   end
                   else
                     lbfavorecido.Caption:=dm.Clientesnome.value;
              end
              else
              begin
                dm.Fornecedores.close;
                dm.Fornecedores.sql.clear;
                dm.Fornecedores.sql.add('select * from fornecedores');
                dm.Fornecedores.sql.add('where codigo = '+edcliente.text);
                dm.Fornecedores.open;
                if dm.Fornecedores.RecordCount<1 then
                   begin
                     application.MessageBox('Cliente n�o Localizado','Aten��o',mb_ok+mb_iconinformation);
                     edcliente.Text:='';
                     lbfavorecido.Caption:='';
                     edcliente.SetFocus;
                   end
                   else
                     lbfavorecido.Caption:=dm.Fornecedoresnome.value;
              end;
         end;
end;

procedure TFrmEstoqueRel.edprodutoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if key=vk_f10 then
         begin
           try
             Application.CreateForm(TFrmCadProdutos, FrmCadProdutos);
             FrmCadProdutos.showmodal;
           finally
             FrmCadProdutos.Release;
             FrmCadProdutos:=nil;
           end;
         end;
end;

procedure TFrmEstoqueRel.edprodutoExit(Sender: TObject);
begin
      if edproduto.Text<>'' then
         begin
           dm.produtos.close;
           dm.produtos.sql.clear;
           dm.produtos.sql.add('select * from produtos');
           dm.produtos.sql.add('where codigo = '+edproduto.text);
           dm.produtos.open;
           if dm.produtos.RecordCount>0 then
              lbproduto.Caption:=dm.produtosnome.value
           else
           begin
             application.MessageBox('Produto n�o Localizado','Aten��o',mb_ok+mb_iconinformation);
             edproduto.Text:='';
             lbproduto.Caption:='';
           end;
         end;
end;

procedure TFrmEstoqueRel.edfornecedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
        if key=vk_f10 then
           begin
            try
              Application.CreateForm(TFrmCadFornecedores, FrmCadFornecedores);
              FrmCadFornecedores.showmodal;
            finally
              FrmCadFornecedores.Release;
            end;
           end;
end;

procedure TFrmEstoqueRel.cbtipoExit(Sender: TObject);
begin
      if cbtipo.text='SV - SA�DA POR VENDA' then
         chmostrar.Visible:=true
      else
         chmostrar.Visible:=false;
end;

end.
