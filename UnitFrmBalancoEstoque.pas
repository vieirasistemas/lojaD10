unit UnitFrmBalancoEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Grids, DBGrids, QRCtrls, jpeg, QuickRpt;

type
  TFrmBalancoEstoque = class(TForm)
    eddoc: TEdit;
    Panel7: TPanel;
    Panel4: TPanel;
    edcodigoproduto: TEdit;
    Panel5: TPanel;
    ednomeproduto: TMemo;
    Panel6: TPanel;
    edqtdproduto: TMemo;
    coletor_res: TZQuery;
    BitBtn1: TBitBtn;
    bt2: TBitBtn;
    DBGrid1: TDBGrid;
    dscoletor_res: TDataSource;
    coletor_resproduto: TIntegerField;
    coletor_resqtd: TFloatField;
    coletor_resestoque: TFloatField;
    coletor_ressaldo: TFloatField;
    coletor_resdocumento: TStringField;
    coletor_resnome: TStringField;
    qratualizar: TZQuery;
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRExpr6: TQRExpr;
    QRExpr14: TQRExpr;
    QRExpr15: TQRExpr;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRBand2: TQRBand;
    QRShape1: TQRShape;
    QRLabel8: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRImage4: TQRImage;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRLabel54: TQRLabel;
    QRDBText23: TQRDBText;
    qrtituloEV: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRBand4: TQRBand;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    qrAtualizarEstoque: TZQuery;
    qrAtualizarEstoqueCODIGO: TIntegerField;
    qrAtualizarEstoqueENTRADAS: TFloatField;
    qrAtualizarEstoqueSAIDAS: TFloatField;
    procedure bt2Click(Sender: TObject);
    procedure eddocEnter(Sender: TObject);
    procedure eddocExit(Sender: TObject);
    procedure edcodigoprodutoEnter(Sender: TObject);
    procedure edcodigoprodutoExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edqtdprodutoExit(Sender: TObject);
    procedure edqtdprodutoEnter(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBalancoEstoque: TFrmBalancoEstoque;
  P_codigo:integer;
  C_estoque,C_saldo:double;
  P_ativo:string;

implementation

uses Unitdm;

{$R *.dfm}

procedure TFrmBalancoEstoque.bt2Click(Sender: TObject);
begin
  close;
end;

procedure TFrmBalancoEstoque.eddocEnter(Sender: TObject);
begin
  eddoc.Color:=$0080FFFF;
end;

procedure TFrmBalancoEstoque.eddocExit(Sender: TObject);
begin
  if eddoc.text='' then
     begin
       eddoc.Text:=copy(DateToStr(date),1,2)+copy(DateToStr(date),4,2)+
       copy(DateToStr(date),9,2)+' '+
       copy(TimeToStr(time),1,2)+copy(TimeToStr(time),4,2);
     end
     else
     begin
       coletor_res.Close;
       coletor_res.SQL.Clear;
       coletor_res.SQL.Add('select C.produto,C.qtd,C.estoque,C.saldo,C.documento,P.nome');
       coletor_res.SQL.Add('from coletor_res C, produtos P');
       coletor_res.SQL.Add('where C.produto=P.codigo');
       coletor_res.SQL.Add('and C.documento = '+chr(39)+eddoc.Text+chr(39));
       coletor_res.Open;
     end;
  eddoc.Color:=clWindow;
end;

procedure TFrmBalancoEstoque.edcodigoprodutoEnter(Sender: TObject);
begin
  edcodigoproduto.Color:=$0080FFFF;
end;

procedure TFrmBalancoEstoque.edcodigoprodutoExit(Sender: TObject);
begin
  if edcodigoproduto.Text<>'' then
     begin
        dm.dsprodutos.OnDataChange:=nil;
        dm.produtos.close;
        dm.produtos.sql.clear;
        dm.produtos.sql.add('select * from produtos');
        dm.produtos.sql.add('where codbarra = '+edcodigoproduto.text);
        dm.produtos.open;
        if dm.produtos.RecordCount>0 then
           begin
             P_codigo:=dm.produtoscodigo.value;
             ednomeproduto.Text:=dm.produtosnome.Value;
             edqtdproduto.SetFocus;
           end
           else
           begin
             dm.produtos.close;
             dm.produtos.sql.clear;
             dm.produtos.sql.add('select * from produtos');
             dm.produtos.sql.add('where codigo = '+copy(edcodigoproduto.text,1,7));
             dm.produtos.open;
             if dm.produtos.RecordCount>0 then
                begin
                  P_codigo:=dm.produtoscodigo.value;
                  ednomeproduto.Text:=dm.produtosnome.Value;
                  edqtdproduto.SetFocus;
                end;
           end;
     end;
  edcodigoproduto.Color:=clWhite;
end;

procedure TFrmBalancoEstoque.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrmBalancoEstoque.edqtdprodutoExit(Sender: TObject);
begin
  if (eddoc.Text<>'') and (edcodigoproduto.Text<>'') and (edqtdproduto.Text<>'') then
     begin
        P_ativo:='S';
        qratualizar.close;
        qratualizar.sql.clear;
        qratualizar.sql.add('update produtos set');
        qratualizar.sql.add('ativo = :P_ativo');
        qratualizar.SQL.Add('where codigo ='+IntToStr(P_codigo));
        qratualizar.Params[0].Value := P_ativo;
        qratualizar.ExecSQL;

        dm.coletor_res.Close;
        dm.coletor_res.SQL.Clear;
        dm.coletor_res.SQL.Add('select * from coletor_res');
        dm.coletor_res.SQL.Add('where documento = '+chr(39)+eddoc.Text+chr(39));
        dm.coletor_res.SQL.Add('and produto = '+IntToStr(P_codigo));
        dm.coletor_res.Open;
        dm.coletor_res.Insert;
        dm.coletor_resdocumento.Value:=eddoc.Text;
        dm.coletor_resproduto.Value:=P_codigo;
        dm.coletor_resqtd.Value:=StrToFloat(edqtdproduto.Text);
        dm.coletor_res.Post;
        coletor_res.Close;
        coletor_res.Open;
        edcodigoproduto.Text:='';edqtdproduto.Text:='';ednomeproduto.Text:='';
        edcodigoproduto.SetFocus;
     end
     else
     begin
       ShowMessage('Preecha: Documento, Produto e a Quantidade');
       eddoc.SetFocus;
     end;

  edqtdproduto.Color:=clWhite;
end;

procedure TFrmBalancoEstoque.edqtdprodutoEnter(Sender: TObject);
begin
  edqtdproduto.Color:=$0080FFFF;
end;

procedure TFrmBalancoEstoque.DBGrid1DblClick(Sender: TObject);
begin
  if Application.Messagebox ('Deseja excluir o registro?','Aten��o', Mb_YesNoCancel+mb_iconquestion) = id_yes then
     begin
       qratualizar.Close;
       qratualizar.SQL.Clear;
       qratualizar.SQL.Add('delete from coletor_res');
       qratualizar.SQL.Add('where (documento= '+chr(39)+coletor_resdocumento.Value+chr(39)+')');
       qratualizar.SQL.Add('and (produto= '+IntToStr(coletor_resproduto.value)+')');
       qratualizar.ExecSQL;

       coletor_res.Close;
       coletor_res.Open;
       edcodigoproduto.SetFocus;
     end;
end;

procedure AtualizarEstoque;
var
anterior,estoqueatual,LocOrigem,LocDestino,
Entradas,Saidas:real;
begin
        FrmBalancoEstoque.qrAtualizarEstoque.Close;
        FrmBalancoEstoque.qrAtualizarEstoque.SQL.Clear;
        FrmBalancoEstoque.qrAtualizarEstoque.SQL.Add('SELECT V.CODIGO,');
        FrmBalancoEstoque.qrAtualizarEstoque.SQL.Add('SUM(IF(LEFT(M.TIPO,1)='+chr(39)+'E'+chr(39)+', M.QTD,0)) AS ENTRADAS,');
        FrmBalancoEstoque.qrAtualizarEstoque.SQL.Add('SUM(IF(LEFT(M.TIPO,1)='+chr(39)+'S'+chr(39)+', M.QTD, 0)) AS SAIDAS');
        FrmBalancoEstoque.qrAtualizarEstoque.SQL.Add('FROM produtos AS V');
        FrmBalancoEstoque.qrAtualizarEstoque.SQL.Add('INNER JOIN movestoque AS M');
        FrmBalancoEstoque.qrAtualizarEstoque.SQL.Add('ON M.PRODUTO = V.CODIGO');
        FrmBalancoEstoque.qrAtualizarEstoque.sql.add('where M.produto = '+IntToStr(FrmBalancoEstoque.coletor_resproduto.Value));
        FrmBalancoEstoque.qrAtualizarEstoque.SQL.Add('GROUP BY V.CODIGO');
        FrmBalancoEstoque.qrAtualizarEstoque.SQL.Add('ORDER BY V.CODIGO');
        FrmBalancoEstoque.qrAtualizarEstoque.Open;

        while not FrmBalancoEstoque.qrAtualizarEstoque.Eof do
              begin
                Entradas:=FrmBalancoEstoque.qrAtualizarEstoqueENTRADAS.Value;
                Saidas:=FrmBalancoEstoque.qrAtualizarEstoqueSAIDAS.Value;
                estoqueatual:=Entradas-Saidas;

                FrmBalancoEstoque.qratualizar.close;
                FrmBalancoEstoque.qratualizar.sql.clear;
                FrmBalancoEstoque.qratualizar.sql.add('update produtos set');
                FrmBalancoEstoque.qratualizar.sql.add('estoque = :estoqueatual');
                FrmBalancoEstoque.qratualizar.sql.add('where codigo = '+IntToStr(FrmBalancoEstoque.qrAtualizarEstoqueCODIGO.Value));
                FrmBalancoEstoque.qratualizar.Params[0].Value := estoqueatual;
                FrmBalancoEstoque.qratualizar.ExecSQL;

                FrmBalancoEstoque.qrAtualizarEstoque.Next;
              end;
end;

procedure TFrmBalancoEstoque.BitBtn1Click(Sender: TObject);
begin
  if coletor_res.RecordCount>0 then
     begin
        coletor_res.First;
        while not coletor_res.Eof do
              begin
                AtualizarEstoque;

                dm.produtos.close;
                dm.produtos.sql.clear;
                dm.produtos.sql.add('select * from produtos');
                dm.produtos.sql.add('where codigo = '+IntToStr(coletor_resproduto.Value));
                dm.produtos.open;

                C_estoque:= dm.produtosestoque.Value;
                C_saldo  := coletor_resqtd.Value-C_estoque;

                qratualizar.close;
                qratualizar.sql.clear;
                qratualizar.sql.add('update coletor_res set');
                qratualizar.sql.add('estoque = :C_estoque,');
                qratualizar.sql.add('saldo = :C_saldo');
                qratualizar.SQL.Add('where (documento= '+chr(39)+coletor_resdocumento.Value+chr(39)+')');
                qratualizar.SQL.Add('and (produto= '+IntToStr(coletor_resproduto.value)+')');
                qratualizar.Params[0].Value := C_estoque;
                qratualizar.Params[1].Value := C_saldo;
                qratualizar.ExecSQL;

                coletor_res.Next;
              end;

        dm.parametros.Open;

        coletor_res.Close;
        coletor_res.SQL.Clear;
        coletor_res.SQL.Add('select C.produto,C.qtd,C.estoque,C.saldo,P.nome,C.documento');
        coletor_res.SQL.Add('from coletor_res C, produtos P');
        coletor_res.SQL.Add('where C.produto = P.codigo');
        coletor_res.SQL.Add('and C.documento= '+chr(39)+eddoc.Text+chr(39));
        coletor_res.SQL.Add('and C.qtd<>C.estoque');
        coletor_res.Open;
        qrtituloEV.Caption:='Relat�rio de An�lise de Estoque F�sico: Coletor X Sistema (Estoque Diferente)';
        QuickRep1.Preview;

        coletor_res.Close;
        coletor_res.SQL.Clear;
        coletor_res.SQL.Add('select C.produto,C.qtd,C.estoque,C.saldo,P.nome,C.documento');
        coletor_res.SQL.Add('from coletor_res C, produtos P');
        coletor_res.SQL.Add('where C.produto = P.codigo');
        coletor_res.SQL.Add('and C.documento= '+chr(39)+eddoc.Text+chr(39));
        coletor_res.SQL.Add('and C.qtd>C.estoque');
        coletor_res.Open;
        qrtituloEV.Caption:='Relat�rio de An�lise de Estoque F�sico: Coletor X Sistema (Coletor > Estoque)';
        QuickRep1.Preview;

        coletor_res.Close;
        coletor_res.SQL.Clear;
        coletor_res.SQL.Add('select C.produto,C.qtd,C.estoque,C.saldo,P.nome,C.documento');
        coletor_res.SQL.Add('from coletor_res C, produtos P');
        coletor_res.SQL.Add('where C.produto = P.codigo');
        coletor_res.SQL.Add('and C.documento= '+chr(39)+eddoc.Text+chr(39));
        coletor_res.SQL.Add('and C.qtd<C.estoque');
        coletor_res.Open;
        qrtituloEV.Caption:='Relat�rio de An�lise de Estoque F�sico: Coletor X Sistema (Coletor < Estoque)';
        QuickRep1.Preview;

        coletor_res.Close;
        coletor_res.SQL.Clear;
        coletor_res.SQL.Add('select C.produto,C.qtd,C.estoque,C.saldo,P.nome,C.documento');
        coletor_res.SQL.Add('from coletor_res C, produtos P');
        coletor_res.SQL.Add('where C.produto = P.codigo');
        coletor_res.SQL.Add('and C.documento= '+chr(39)+eddoc.Text+chr(39));
        coletor_res.Open;
        qrtituloEV.Caption:='Relat�rio de An�lise de Estoque F�sico: Coletor X Sistema';
        QuickRep1.Preview;
     end;
end;

end.


