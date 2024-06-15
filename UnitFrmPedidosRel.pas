unit UnitFrmPedidosRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, jpeg, QRCtrls, QuickRpt, ExtCtrls, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFrmPedidosRel = class(TForm)
    Label10: TLabel;
    Label15: TLabel;
    Label1: TLabel;
    medatainicial: TMaskEdit;
    medatafinal: TMaskEdit;
    cbtipo: TComboBox;
    btrelatorio: TBitBtn;
    btcancelar: TBitBtn;
    qrpedido: TZQuery;
    qrpedidonome: TStringField;
    qrpedidopedido: TIntegerField;
    qrpedidodata: TDateField;
    qrpedidocliente: TIntegerField;
    qrpedidovendedor: TIntegerField;
    qrpedidoitens: TFloatField;
    qrpedidototal: TFloatField;
    qrpedidoliberacao: TDateField;
    qrpedidonf: TStringField;
    qrpedidotipo: TStringField;
    QuickRep2: TQuickRep;
    QRBand3: TQRBand;
    QRDBText5: TQRDBText;
    QRDBText10: TQRDBText;
    QRExpr5: TQRExpr;
    QRExpr7: TQRExpr;
    QRBand5: TQRBand;
    QRShape12: TQRShape;
    QRLabel26: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData5: TQRSysData;
    QRSysData6: TQRSysData;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel31: TQRLabel;
    qrtituloI: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel15: TQRLabel;
    QRBand6: TQRBand;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRBand7: TQRBand;
    QRLabel38: TQRLabel;
    QRExpr12: TQRExpr;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    chquebrar: TCheckBox;
    QuickRep3: TQuickRep;
    QRGroup1: TQRGroup;
    QRDBText9: TQRDBText;
    QRLabel17: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText3: TQRDBText;
    QRBand1: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText6: TQRDBText;
    QRBand2: TQRBand;
    QRLabel23: TQRLabel;
    QRExpr16: TQRExpr;
    QRBand4: TQRBand;
    QRShape3: TQRShape;
    qrtitulo: TQRLabel;
    QRLabel6: TQRLabel;
    QRSysData7: TQRSysData;
    QRSysData8: TQRSysData;
    QRSysData9: TQRSysData;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel13: TQRLabel;
    QRBand8: TQRBand;
    QRLabel35: TQRLabel;
    QRLabel14: TQRLabel;
    QRBand9: TQRBand;
    QRLabel16: TQRLabel;
    QRExpr18: TQRExpr;
    qrmovpedido: TZQuery;
    qrmovpedidovenda: TIntegerField;
    qrmovpedidoproduto: TIntegerField;
    qrmovpedidonome: TStringField;
    qrmovpedidound: TStringField;
    qrmovpedidoqtd: TFloatField;
    qrmovpedidounit: TFloatField;
    qrmovpedidototal: TFloatField;
    qrmovpedidoseq: TIntegerField;
    qrmovpedidoicms: TFloatField;
    qrmovpedidopedido: TIntegerField;
    qrmovpedidodata: TDateField;
    qrmovpedidonf: TStringField;
    qrmovpedidofantasia: TStringField;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel24: TQRLabel;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText18: TQRDBText;
    Label2: TLabel;
    cbvendedor: TComboBox;
    qrpedidodescricao: TStringField;
    QRLabel18: TQRLabel;
    QRDBText19: TQRDBText;
    GroupBox1: TGroupBox;
    rbD: TRadioButton;
    rbL: TRadioButton;
    QRLabel19: TQRLabel;
    QRDBText20: TQRDBText;
    Label31: TLabel;
    edclienteI: TEdit;
    lbclienteI: TLabel;
    Label40: TLabel;
    procedure btcancelarClick(Sender: TObject);
    procedure btrelatorioClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure cbvendedorExit(Sender: TObject);
    procedure edclienteIKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edclienteIExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPedidosRel: TFrmPedidosRel;

implementation

uses Unitdm, UnitFrmCadClientes;

{$R *.dfm}

procedure TFrmPedidosRel.btcancelarClick(Sender: TObject);
begin
  close;
end;

procedure TFrmPedidosRel.btrelatorioClick(Sender: TObject);
begin
  dm.parametros.Close;
  dm.parametros.Open;
  if chquebrar.Checked=false then
     begin
        qrpedido.Close;
        qrpedido.SQL.Clear;
        qrpedido.SQL.Add('select C.nome,P.pedido,P.data,P.cliente,P.vendedor,P.itens,P.total,P.liberacao,P.nf,P.tipo,F.descricao');
        qrpedido.SQL.Add('from clientes C, pedidos P, formapagto F');
        qrpedido.SQL.Add('where P.cliente=C.codigo and P.formapagto=F.codigo');
        qrtituloI.Caption:='Relatório de Pedidos';
        if (medatainicial.Text<>'  /  /    ') and
           (medatafinal.Text<>'  /  /    ') then
           begin
             if rbD.Checked=true then
                qrpedido.SQL.Add('and (P.data between '+chr(39)+
                copy(medatainicial.text,7,4)+'/'+copy(medatainicial.text,4,2)+'/'+
                copy(medatainicial.text,1,2)+chr(39)+' and '+chr(39)+
                copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                copy(MeDataFinal.text,1,2)+chr(39)+')')
             else
                qrpedido.SQL.Add('and (P.liberacao between '+chr(39)+
                copy(medatainicial.text,7,4)+'/'+copy(medatainicial.text,4,2)+'/'+
                copy(medatainicial.text,1,2)+chr(39)+' and '+chr(39)+
                copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                copy(MeDataFinal.text,1,2)+chr(39)+')');
             qrtituloI.Caption:=qrtituloI.Caption+' em: '+medatainicial.Text+' à '+medatafinal.Text;
           end;
        if cbtipo.Text<>'' then
           begin
             qrpedido.SQL.Add('and (P.tipo = '+chr(39)+copy(cbtipo.Text,1,2)+chr(39)+')');
             qrtituloI.Caption:=qrtituloI.Caption+' Tipo: '+cbtipo.Text;
           end;
        if edclienteI.Text<>'' then
           begin
             qrpedido.SQL.Add('and (P.cliente = '+edclienteI.Text+')');
             qrtituloI.Caption:=qrtituloI.Caption+' Cliente: '+lbclienteI.Caption;
           end;
        if cbvendedor.Text<>'' then
           begin
             dm.fornecedores.close;
             dm.fornecedores.sql.clear;
             dm.fornecedores.sql.add('select * from fornecedores');
             dm.fornecedores.sql.add('where apelido = '+chr(39)+cbvendedor.text+chr(39));
             dm.fornecedores.open;
             qrpedido.SQL.Add('and (P.vendedor = '+IntToStr(dm.fornecedorescodigo.Value)+')');
             qrtituloI.Caption:=qrtituloI.Caption+' Vendedor(a): '+cbvendedor.Text;
           end;
        qrpedido.SQL.Add('order by P.pedido');
        qrpedido.open;
        QuickRep2.Preview;
     end
     else
     begin
        qrmovpedido.Close;
        qrmovpedido.SQL.Clear;
        qrmovpedido.SQL.Add('select M.venda,M.produto,P.nome,M.und,M.qtd,');
        qrmovpedido.SQL.Add('M.unit,M.total,M.seq,M.icms, I.pedido,I.data,I.nf,C.fantasia');
        qrmovpedido.SQL.Add('from movpedido M, produtos P, pedidos I, clientes C');
        qrmovpedido.SQL.Add('where (I.pedido=M.venda) and (M.produto=P.codigo) and (I.cliente=C.codigo)');
        qrtitulo.Caption:='Relatório de Pedidos';
        if (medatainicial.Text<>'  /  /    ') and
           (medatafinal.Text<>'  /  /    ') then
           begin
             if rbD.Checked=true then
                qrmovpedido.SQL.Add('and (I.data between '+chr(39)+
                copy(medatainicial.text,7,4)+'/'+copy(medatainicial.text,4,2)+'/'+
                copy(medatainicial.text,1,2)+chr(39)+' and '+chr(39)+
                copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                copy(MeDataFinal.text,1,2)+chr(39)+')')
             else
                qrmovpedido.SQL.Add('and (I.liberacao between '+chr(39)+
                copy(medatainicial.text,7,4)+'/'+copy(medatainicial.text,4,2)+'/'+
                copy(medatainicial.text,1,2)+chr(39)+' and '+chr(39)+
                copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                copy(MeDataFinal.text,1,2)+chr(39)+')');
             qrtitulo.Caption:=qrtitulo.Caption+' em : '+medatainicial.Text+' à '+medatafinal.Text;
           end;
        if cbtipo.Text<>'' then
           begin
             qrmovpedido.SQL.Add('and (I.tipo = '+chr(39)+copy(cbtipo.Text,1,2)+chr(39)+')');
             qrtitulo.Caption:=qrtitulo.Caption+' Tipo : '+cbtipo.Text;
           end;
        if edclienteI.Text<>'' then
           begin
             qrmovpedido.SQL.Add('and (I.cliente = '+edclienteI.Text+')');
             qrtituloI.Caption:=qrtitulo.Caption+' Cliente: '+lbclienteI.Caption;
           end;
        if cbvendedor.Text<>'' then
           begin
             dm.fornecedores.close;
             dm.fornecedores.sql.clear;
             dm.fornecedores.sql.add('select * from fornecedores');
             dm.fornecedores.sql.add('where apelido = '+chr(39)+cbvendedor.text+chr(39));
             dm.fornecedores.open;
             qrmovpedido.SQL.Add('and (I.vendedor = '+IntToStr(dm.fornecedorescodigo.Value)+')');
             qrtitulo.Caption:=qrtitulo.Caption+' Vendedor(a): '+cbvendedor.Text;
           end;
        qrmovpedido.SQL.Add('order by I.pedido');
        qrmovpedido.open;
        QuickRep3.Preview;
     end;
end;

procedure TFrmPedidosRel.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = CHR(13) Then
     Begin
        try
          perform(WM_NextDlgCtl,0,0);
          Key := CHR(0);
        except
        end;
     End;
end;

procedure TFrmPedidosRel.FormShow(Sender: TObject);
begin
  dm.fornecedores.close;
  dm.fornecedores.sql.clear;
  dm.fornecedores.sql.add('select * from fornecedores');
  dm.fornecedores.sql.add('where funcao = '+chr(39)+'VENDEDOR'+chr(39));
  dm.fornecedores.sql.add('order by nome');
  dm.fornecedores.open;
  cbvendedor.Items.Clear;
  while not dm.fornecedores.Eof do
        begin
          if dm.fornecedoresapelido.Value<>'' then
             cbvendedor.Items.Add(dm.fornecedoresapelido.Value);
          dm.fornecedores.Next;
        end;
end;

procedure TFrmPedidosRel.cbvendedorExit(Sender: TObject);
begin
  if cbvendedor.Text<>'' then
     begin
       dm.fornecedores.close;
       dm.fornecedores.sql.clear;
       dm.fornecedores.sql.add('select * from fornecedores');
       dm.fornecedores.sql.add('where apelido = '+chr(39)+cbvendedor.text+chr(39));
       dm.fornecedores.open;
       if dm.fornecedores.RecordCount<1 then
          begin
            showmessage('Vendedor não Cadastrado');
            cbvendedor.SetFocus;
          end;
     end;
end;

procedure TFrmPedidosRel.edclienteIKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmPedidosRel.edclienteIExit(Sender: TObject);
begin
  if edclienteI.Text<>'' then
     begin
        dm.clientes.close;
        dm.clientes.sql.clear;
        dm.clientes.sql.add('select * from clientes');
        dm.clientes.sql.add('where codigo = '+edclienteI.text);
        dm.clientes.open;
        if dm.clientes.RecordCount<1 then
           begin
             application.MessageBox('Cliente não Localizado','Atenção',mb_ok+mb_iconinformation);
             edclienteI.SetFocus;
           end
           else
             lbclienteI.Caption:=dm.clientesnome.value;
     end
     else
       lbclienteI.Caption:='';
end;

end.
