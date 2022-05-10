unit UnitFrmEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Mask, Grids, DBGrids, ComCtrls, Buttons,
  ExtCtrls, EditAlinhado, DB, DBTables, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  TFrmEstoque = class(TForm)
    DBGrid2: TDBGrid;
    GroupBox3: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    eddoc: TEdit;
    medataI: TMaskEdit;
    edprodutoI: TEdit;
    Panel3: TPanel;
    btnovo: TBitBtn;
    btgravar: TBitBtn;
    btexcluir: TBitBtn;
    btrelatorio: TBitBtn;
    btcancelar: TBitBtn;
    btexcluirItem: TBitBtn;
    P_dado: TPanel;
    Label13: TLabel;
    cbtipo: TComboBox;
    Label26: TLabel;
    eddocumento: TEdit;
    Label27: TLabel;
    medata: TMaskEdit;
    Label29: TLabel;
    edcliente: TEdit;
    lbcliente: TLabel;
    Label2: TLabel;
    Label10: TLabel;
    edproduto: TEdit;
    lbproduto: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    Label14: TLabel;
    cbund: TComboBox;
    Label15: TLabel;
    edqtd: TEditAlinh;
    Label16: TLabel;
    edunitario: TEditAlinh;
    Label25: TLabel;
    edtotal: TEditAlinh;
    btprimeiro: TBitBtn;
    btanterior: TBitBtn;
    btproximo: TBitBtn;
    btultimo: TBitBtn;
    qrmovestoque: TZQuery;
    qrmovestoquedocumento: TStringField;
    qrmovestoquefavorecido: TIntegerField;
    qrmovestoqueproduto: TIntegerField;
    qrmovestoquedata: TDateField;
    qrmovestoqueTipoMov: TStringField;
    qrmovestoqueund: TStringField;
    qrmovestoqueqtd: TFloatField;
    qrmovestoqueVlrUnit: TFloatField;
    qrmovestoqueVlrTotal: TFloatField;
    dsmovestoque: TDataSource;
    qrmovestoquenome: TStringField;
    qratualizar: TZQuery;
    qratualizar2: TZQuery;
    qrtotal: TZQuery;
    qrtotalTotalSC: TFloatField;
    qrmovestoquelocal: TStringField;
    BitBtn4: TBitBtn;
    chSintetico: TCheckBox;
    lbqtd: TLabel;
    Label9: TLabel;
    procedure FormShow(Sender: TObject);
    procedure eddocExit(Sender: TObject);
    procedure medataIExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btexcluirClick(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure btcancelarClick(Sender: TObject);
    procedure cbtipoExit(Sender: TObject);
    procedure edunitarioExit(Sender: TObject);
    procedure edtotalExit(Sender: TObject);
    procedure btgravarClick(Sender: TObject);
    procedure btnovoClick(Sender: TObject);
    procedure edclienteExit(Sender: TObject);
    procedure edclienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edprodutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure medataExit(Sender: TObject);
    procedure edprodutoExit(Sender: TObject);
    procedure btrelatorioClick(Sender: TObject);
    procedure medataEnter(Sender: TObject);
    procedure cbundExit(Sender: TObject);
    procedure btprimeiroClick(Sender: TObject);
    procedure btanteriorClick(Sender: TObject);
    procedure btproximoClick(Sender: TObject);
    procedure btultimoClick(Sender: TObject);
    procedure medataIEnter(Sender: TObject);
    procedure edprodutoIExit(Sender: TObject);
    procedure mevalidadeExit(Sender: TObject);
    procedure eddocumentoExit(Sender: TObject);
    procedure btexcluirItemClick(Sender: TObject);
    procedure cbtipoEnter(Sender: TObject);
    procedure eddocumentoEnter(Sender: TObject);
    procedure edclienteEnter(Sender: TObject);
    procedure edprodutoEnter(Sender: TObject);
    procedure cbundEnter(Sender: TObject);
    procedure edqtdEnter(Sender: TObject);
    procedure edunitarioEnter(Sender: TObject);
    procedure edtotalEnter(Sender: TObject);
    procedure edqtdExit(Sender: TObject);
    procedure edloteEnter(Sender: TObject);
    procedure edloteExit(Sender: TObject);
    procedure mevalidadeEnter(Sender: TObject);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEstoque: TFrmEstoque;
  E_vendedor,mes,i,x,casas,CodCliente:integer;
  anterior,antestoque,LocOrigem,
  LocDestino,P_estoqueext,QtdP:real;
  P_ativo,R_hora,prod,mascara,vfechada,busca:string;
  comp : array [0..20] of string;
  comp1 : array [0..20] of string;
  check,ClickedOK:boolean;
  IMPRESSORA:TextFile;
  qry : TZQuery;

implementation

uses Unitdm, UnitFrmCadClientes, UnitFrmCadfornecedores,
  UnitFrmPrincipal, UnitFrmEstoqueRel, UnitFrmCadProdutos;

{$R *.dfm}

function StringToFloat(s : string) : Extended;
{ Filtra uma string qualquer, convertendo as suas partes
  num�ricas para sua representa��o decimal, por exemplo:
  'R$ 1.200,00' para 1200,00 '1AB34TZ' para 134}
var
  i :Integer;
  t : string;
  SeenDecimal,SeenSgn : Boolean;
begin
  t := '';
  SeenDecimal := False;
  SeenSgn := False;
  {Percorre os caracteres da string:}
  for i := Length(s) downto 0 do
  {Filtra a string, aceitando somente n�meros e separador decimal:}
  if (s[i] in ['0'..'9', '-','+',DecimalSeparator]) then
  begin
  if (s[i] = DecimalSeparator) and (not SeenDecimal) then
  begin
  t := s[i] + t;
  SeenDecimal := True;
  end
  else if (s[i] in ['+','-']) and (not SeenSgn) and (i = 1) then
  begin
  t := s[i] + t;
  SeenSgn := True;
  end
  else if s[i] in ['0'..'9'] then
  begin
  t := s[i] + t;
  end;
  end;
  Result := StrToFloat(t);
end;

procedure limpar;
begin
      FrmEstoque.edproduto.text:='';
      FrmEstoque.lbproduto.Caption:='';
      FrmEstoque.cbtipo.text:='';
      FrmEstoque.cbund.text:='';
      FrmEstoque.edcliente.text:='';
      FrmEstoque.medata.text:='';
      FrmEstoque.eddocumento.text:='';
      FrmEstoque.edqtd.text:='';
      FrmEstoque.edunitario.text:='';
      FrmEstoque.edtotal.text:='';
end;

procedure Atualiza;
begin
      dm.movestoque.Close;
      dm.movestoque.SQL.Clear;
      dm.movestoque.SQL.Add('select * from movestoque');
      dm.movestoque.SQL.Add('where (produto = '+IntToStr(FrmEstoque.qrmovestoqueproduto.Value)+')');
      dm.movestoque.SQL.Add('and (favorecido = '+IntToStr(FrmEstoque.qrmovestoquefavorecido.Value)+')');
      dm.movestoque.SQL.Add('and (documento = '+chr(39)+FrmEstoque.qrmovestoquedocumento.Value+chr(39)+')');
      dm.movestoque.SQL.Add('and (tipomov = '+chr(39)+FrmEstoque.qrmovestoqueTipoMov.Value+chr(39)+')');
      dm.movestoque.SQL.Add('and (local = '+chr(39)+FrmEstoque.qrmovestoquelocal.Value+chr(39)+')');
      dm.movestoque.Open;

      if dm.movestoqueTipoMov.Value='SV' then
         FrmEstoque.cbtipo.Text:='SV - SA�DA POR VENDA'
      else if dm.movestoqueTipoMov.Value='SC' then
         FrmEstoque.cbtipo.Text:='SC - SA�DA POR CONSUMO'
      else if dm.movestoqueTipoMov.Value='SB' then
         FrmEstoque.cbtipo.Text:='SB - SA�DA POR BONIFICA��O'
      else if dm.movestoqueTipoMov.Value='SE' then
         FrmEstoque.cbtipo.Text:='SE - SA�DA POR EMPR�STIMO'
      else if dm.movestoqueTipoMov.Value='SD' then
         FrmEstoque.cbtipo.Text:='SD - SA�DA POR DEVOLU��O'
      else if dm.movestoqueTipoMov.Value='SA' then
         FrmEstoque.cbtipo.Text:='SA - SA�DA POR ACERTO'
      else if dm.movestoqueTipoMov.Value='SN' then
         FrmEstoque.cbtipo.Text:='SN - SA�DA POR CONSIGNA��O'
      else if dm.movestoqueTipoMov.Value='SF' then
         FrmEstoque.cbtipo.Text:='SF - SA�DA POR FILIAL'
      else if dm.movestoqueTipoMov.Value='SR' then
         FrmEstoque.cbtipo.Text:='SR - SA�DA POR AVARIA'
      else if dm.movestoqueTipoMov.Value='EA' then
         FrmEstoque.cbtipo.Text:='EA - ENTRADA POR ACERTO'
      else if dm.movestoqueTipoMov.Value='EC' then
         FrmEstoque.cbtipo.Text:='EC - ENTRADA POR COMPRA'
      else if dm.movestoqueTipoMov.Value='ED' then
         FrmEstoque.cbtipo.Text:='ED - ENTRADA POR DEVOLU��O'
      else if dm.movestoqueTipoMov.Value='EE' then
         FrmEstoque.cbtipo.Text:='EE - ENTRADA POR EMPR�STIMO'
      else if dm.movestoqueTipoMov.Value='EF' then
         FrmEstoque.cbtipo.Text:='EF - ENTRADA POR FILIAL'
      else if dm.movestoqueTipoMov.Value='ER' then
         FrmEstoque.cbtipo.Text:='ER - ENTRADA POR AVARIA'
      else if dm.movestoqueTipoMov.Value='EN' then
         FrmEstoque.cbtipo.Text:='EN - ENTRADA POR DEV/CONSIGNA��O'
      else if dm.movestoqueTipoMov.Value='EZ' then
         FrmEstoque.cbtipo.Text:='EZ - ENTRADA POR COMPOSI��O'
      else if dm.movestoqueTipoMov.Value='TL' then
         FrmEstoque.cbtipo.Text:='TL - TRANSFERENCIA ENTRE LOCAIS'
      else
         FrmEstoque.cbtipo.Text:='';
      FrmEstoque.eddocumento.Text:=dm.movestoquedocumento.value;
      if not dm.movestoquedata.IsNull then
         FrmEstoque.medata.Text:=DateToStr(dm.movestoquedata.Value)
      else
         FrmEstoque.medata.Text:='';
      FrmEstoque.edcliente.Text:=IntToStr(dm.movestoquefavorecido.value);
      if copy(FrmEstoque.cbtipo.Text,1,1)='S' then
         begin
           dm.Clientes.close;
           dm.Clientes.sql.clear;
           dm.Clientes.sql.add('select * from clientes');
           dm.Clientes.sql.add('where codigo = '+IntToStr(dm.movestoquefavorecido.Value));
           dm.Clientes.open;
           FrmEstoque.lbcliente.Caption:=dm.clientesnome.Value;
         end;
      if copy(FrmEstoque.cbtipo.Text,1,1)='E' then
         begin
           dm.fornecedores.close;
           dm.fornecedores.sql.clear;
           dm.fornecedores.sql.add('select * from fornecedores');
           dm.fornecedores.sql.add('where codigo = '+IntToStr(dm.movestoquefavorecido.Value));
           dm.fornecedores.open;
           FrmEstoque.lbcliente.Caption:=dm.fornecedoresnome.Value;
         end;
      FrmEstoque.edproduto.Text:=IntToStr(dm.movestoqueproduto.Value);
      dm.produtos.close;
      dm.produtos.sql.clear;
      dm.produtos.sql.add('select * from produtos');
      dm.produtos.sql.add('where codigo = '+IntToStr(dm.movestoqueproduto.Value));
      dm.produtos.open;
      FrmEstoque.lbproduto.Caption:=dm.produtosnome.Value;
      FrmEstoque.cbund.Text:=dm.movestoqueund.Value;
      FrmEstoque.edqtd.Text:=FloatToStr(dm.movestoqueqtd.Value);
      if not dm.movestoqueVlrUnit.IsNull then
         FrmEstoque.edunitario.Text:=formatfloat('#,##0.00',dm.movestoqueVlrUnit.Value)
      else
         FrmEstoque.edunitario.Text:='';
      if not dm.movestoqueVlrTotal.IsNull then
         FrmEstoque.edtotal.Text:=formatfloat('#,##0.00',dm.movestoqueVlrTotal.Value)
      else
         FrmEstoque.edtotal.Text:='';
{      FrmEstoque.edlote.Text:=dm.movestoquelote.Value;
      if not dm.movestoquevalidade_lote.IsNull then
         FrmEstoque.mevalidade.Text:=DateToStr(dm.movestoquevalidade_lote.Value)
      else
         FrmEstoque.mevalidade.Text:='';
}
      FrmEstoque.qrtotal.Close;
      FrmEstoque.qrtotal.SQL.Clear;
      FrmEstoque.qrtotal.SQL.Add('select sum(qtd) as TotalSC from movestoque');
      FrmEstoque.qrtotal.SQL.Add('where (documento = '+chr(39)+FrmEstoque.eddocumento.Text+chr(39)+')');
      FrmEstoque.qrtotal.SQL.Add('and (tipomov = '+chr(39)+copy(FrmEstoque.cbtipo.Text,1,2)+chr(39)+')');
      FrmEstoque.qrtotal.Open;
      FrmEstoque.lbqtd.Caption:=FrmEstoque.qrtotalTotalSC.AsVariant;


end;

procedure desabilita;
begin
  FrmEstoque.btprimeiro.enabled:=false;
  FrmEstoque.btanterior.enabled:=false;
  FrmEstoque.btproximo.enabled:=false;
  FrmEstoque.btultimo.enabled:=false;
  FrmEstoque.btnovo.enabled:=false;
  FrmEstoque.btexcluir.enabled:=false;
  FrmEstoque.btexcluirItem.enabled:=false;
  FrmEstoque.btrelatorio.enabled:=false;
  FrmEstoque.btcancelar.Caption:='Cancelar';
  FrmEstoque.btgravar.enabled:=true;
  FrmEstoque.P_dado.enabled:=true;
end;

procedure habilita;
begin
  FrmEstoque.btprimeiro.enabled:=true;
  FrmEstoque.btanterior.enabled:=true;
  FrmEstoque.btproximo.enabled:=true;
  FrmEstoque.btultimo.enabled:=true;
  FrmEstoque.btnovo.enabled:=true;
  dm.usuarios.Open;
  dm.usuarios.Locate('nome',FrmPrincipal.sb.Panels[3].Text,[]);
  if dm.usuariosfornecedores.value='5' then
     begin
       FrmEstoque.btexcluir.enabled:=true;
       FrmEstoque.btexcluirItem.enabled:=true;
     end
     else
     begin
       FrmEstoque.btexcluir.enabled:=false;
       FrmEstoque.btexcluirItem.enabled:=false;
     end;
  FrmEstoque.btrelatorio.enabled:=true;
  FrmEstoque.btgravar.enabled:=false;
  FrmEstoque.P_dado.enabled:=false;
  FrmEstoque.btcancelar.Caption:='Sair';
  FrmEstoque.btnovo.SetFocus;
end;

procedure TFrmEstoque.eddocExit(Sender: TObject);
begin
  if eddoc.Text<>'' then
     begin
       qrmovestoque.Close;
       qrmovestoque.SQL.Clear;
       qrmovestoque.SQL.Add('select E.documento,E.favorecido,E.produto,E.data,E.tipomov,E.und,E.qtd,E.vlrunit,E.vlrtotal,');
       qrmovestoque.SQL.Add('P.nome,E.local');
       qrmovestoque.SQL.Add('from movestoque E, produtos P');
       qrmovestoque.SQL.Add('where (E.produto=P.codigo)');
       qrmovestoque.SQL.Add('and (E.documento = '+chr(39)+eddoc.Text+chr(39)+')');
       qrmovestoque.SQL.Add('order by P.nome');
       qrmovestoque.Open;
       if qrmovestoque.RecordCount>0 then
          begin
            Atualiza;
          end;
     end;
end;

procedure TFrmEstoque.FormShow(Sender: TObject);
var
i:integer;
begin
      dm.parametros.Close;
      dm.parametros.Open;
      casas:=2;
      mascara:='#,##0.';
      for i:=1 to casas do
          begin
            mascara:=mascara+'0';
          end;
      dm.movestoqueVlrUnit.DisplayFormat:=mascara;
      qrmovestoqueVlrUnit.DisplayFormat:=mascara;

      habilita;
      eddoc.SetFocus;
end;

procedure TFrmEstoque.medataIExit(Sender: TObject);
begin
      if medataI.text<>'  /  /    ' then
         begin
           qrmovestoque.Close;
           qrmovestoque.SQL.Clear;
           qrmovestoque.SQL.Add('select E.documento,E.favorecido,E.produto,E.data,E.tipomov,E.und,E.qtd,E.vlrunit,E.vlrtotal,');
           qrmovestoque.SQL.Add('P.nome,E.local');
           qrmovestoque.SQL.Add('from movestoque E, produtos P');
           qrmovestoque.SQL.Add('where (E.produto=P.codigo)');
           qrmovestoque.SQL.Add('and (E.data = '+chr(39)+
           copy(medataI.text,7,4)+'/'+copy(medataI.text,4,2)+'/'+
           copy(medataI.text,1,2)+chr(39)+')');
           qrmovestoque.SQL.Add('order by documento,nome');
           qrmovestoque.Open;
           Atualiza;
         end;
end;

procedure TFrmEstoque.FormKeyPress(Sender: TObject; var Key: Char);
begin
      if Key = CHR(13) Then
         Begin
            perform(WM_NextDlgCtl,0,0);
            Key := CHR(0);
         End;
end;

procedure TFrmEstoque.btexcluirClick(Sender: TObject);
begin
  if eddocumento.text='' then
     begin
        application.MessageBox('Selecione um Documento','Aten��o',mb_ok+mb_iconinformation);
        dbgrid2.SetFocus;
     end
     else
     begin
       dm.usuarios.Close;
       dm.usuarios.Open;
       dm.usuarios.Locate('nome',FrmPrincipal.sb.Panels[3].Text,[]);
       if dm.usuariosparametros.value='5' then
          begin
            if Application.Messagebox ('Confirma Opera��o?','Deseja excluir Toda Movimenta��o desse documento', mb_yesno+mb_iconquestion+MB_DEFBUTTON2)=id_yes then
               begin
                 busca := '';
                 ClickedOK := InputQuery('Digite Motivo da Exclus�o', 'Exclus�o do Documento', busca);
                 dm.parametros.Close;
                 dm.parametros.Open;

                 qrmovestoque.Close;
                 qrmovestoque.SQL.Clear;
                 qrmovestoque.SQL.Add('select E.documento,E.favorecido,E.produto,E.data,E.tipomov,E.und,E.qtd,E.vlrunit,E.vlrtotal,');
                 qrmovestoque.SQL.Add('P.nome,E.local');
                 qrmovestoque.SQL.Add('from movestoque E, produtos P');
                 qrmovestoque.SQL.Add('where (E.produto=P.codigo)');
                 qrmovestoque.SQL.Add('and (E.documento = '+chr(39)+eddocumento.Text+chr(39)+')');
                 qrmovestoque.SQL.Add('and (E.tipomov = '+chr(39)+copy(cbtipo.Text,1,2)+chr(39)+')');
                 qrmovestoque.SQL.Add('and (E.favorecido = '+edcliente.Text+')');
                 qrmovestoque.Open;
                 dm.dsprodutos.OnDataChange:=nil;
                 while not qrmovestoque.Eof do
                       begin
                         R_hora:=TimeToStr(time);
                         dm.rastro.Close;
                         dm.rastro.SQL.Clear;
                         dm.rastro.SQL.Add('select * from rastro');
                         dm.rastro.SQL.Add('where (1=2)');
                         dm.rastro.Open;
                         dm.rastro.Insert;
                         dm.rastrodata.Value:=date;
                         dm.rastrohora.Value:=R_hora;
                         dm.rastrooperador.Value:=FrmPrincipal.sb.Panels[3].Text;
                         dm.rastrorotina.Value:='MOV. ESTOQUE';
                         dm.rastrooperacao.Value:='E';
                         dm.rastrohistorico.Value:='DOC: '+eddocumento.text+' - PRODUTO: '+
                         formatfloat('0000',qrmovestoqueproduto.Value)+' - QTD: '+
                         formatfloat('0000',qrmovestoqueqtd.Value)+' - FAVORECIDO: '+
                         formatfloat('0000',qrmovestoquefavorecido.Value);
                         dm.rastrofavorecido.Value:=StrToInt(edcliente.Text);
//                         dm.rastrovalor.Value:=dm.TotalDocRecebersumliquido.Value;
                         dm.rastroobs.Value:=busca;
                         dm.rastro.Post;
                         dm.rastro.Close;

                         dm.produtos.close;
                         dm.produtos.sql.clear;
                         dm.produtos.sql.add('select * from produtos');
                         dm.produtos.sql.add('where codigo = '+IntToStr(qrmovestoqueproduto.Value));
                         dm.produtos.open;
                          if copy(qrmovestoqueTipoMov.Value,1,1)='E' then
                             antestoque:=dm.produtosestoque.Value-qrmovestoqueqtd.Value
                          else if copy(qrmovestoqueTipoMov.Value,1,1)='S' then
                             antestoque:=dm.produtosestoque.Value+qrmovestoqueqtd.Value;

                         qratualizar.close;
                         qratualizar.sql.clear;
                         qratualizar.sql.add('update produtos set');
                         qratualizar.sql.add('estoque = :antestoque');
                         qratualizar.sql.add('where codigo = '+IntToStr(qrmovestoqueproduto.Value));
                         qratualizar.Params[0].Value := antestoque;
                         qratualizar.ExecSQL;
                         qrmovestoque.Next;
                         Application.ProcessMessages;
                       end;

                 qratualizar.Close;
                 qratualizar.SQL.Clear;
                 qratualizar.SQL.Add('delete from movestoque');
                 qratualizar.SQL.Add('where (documento = '+chr(39)+eddocumento.Text+chr(39)+')');
                 qratualizar.SQL.Add('and (tipomov = '+chr(39)+copy(cbtipo.Text,1,2)+chr(39)+')');
                 qratualizar.SQL.Add('and (favorecido = '+edcliente.Text+')');
                 qratualizar.ExecSQL;
                 qrmovestoque.Close;
                 qrmovestoque.open;
                 limpar;
               end;
          end;
     end;
end;

procedure TFrmEstoque.DBGrid2CellClick(Column: TColumn);
begin
  Atualiza;
end;

procedure TFrmEstoque.btcancelarClick(Sender: TObject);
begin
        if btnovo.Enabled=false then
           begin
              dm.movestoque.Cancel;
              habilita;
              limpar;
           end
           else
              close;
end;

procedure TFrmEstoque.cbtipoExit(Sender: TObject);
begin
  if cbtipo.Text='' then
     btcancelar.SetFocus
  else
  begin
     dm.usuarios.Close;
     dm.usuarios.Open;
     dm.usuarios.Locate('nome',FrmPrincipal.sb.Panels[3].Text,[]);
     if dm.usuariosparametros.value='5' then
        begin
           if (cbtipo.Text<>'SV - SA�DA POR VENDA') and
              (cbtipo.Text<>'SC - SA�DA POR CONSUMO') and
              (cbtipo.Text<>'SE - SA�DA POR EMPR�STIMO') and
              (cbtipo.Text<>'SD - SA�DA POR DEVOLU��O') and
              (cbtipo.Text<>'SA - SA�DA POR ACERTO') and
              (cbtipo.Text<>'SB - SA�DA POR BONIFICA��O') and
              (cbtipo.Text<>'SN - SA�DA POR CONSIGNA��O') and
              (cbtipo.Text<>'SP - SA�DA POR PATROCINIO') and
              (cbtipo.Text<>'SG - SA�DA POR DEGUSTA��O') and
              (cbtipo.Text<>'SF - SA�DA POR FILIAL') and
              //(cbtipo.Text<>'ST - SA�DA FILIAL (TURU)') and
              //(cbtipo.Text<>'SL - SA�DA FILIAL (LAGOA)') and
              (cbtipo.Text<>'SR - SA�DA POR AVARIA') and
              (cbtipo.Text<>'EA - ENTRADA POR ACERTO') and
              (cbtipo.Text<>'EC - ENTRADA POR COMPRA') and
              (cbtipo.Text<>'EE - ENTRADA POR EMPR�STIMO') and
              //(cbtipo.Text<>'ET - ENTRADA FILIAL (TURU)') and
              //(cbtipo.Text<>'EL - ENTRADA FILIAL (LAGOA)') and
              (cbtipo.Text<>'EF - ENTRADA POR FILIAL') and
              (cbtipo.Text<>'ED - ENTRADA POR DEVOLU��O') and
              (cbtipo.Text<>'ER - ENTRADA POR AVARIA') and
              (cbtipo.Text<>'EN - ENTRADA POR DEV/CONSIGNA��O') and
//              (cbtipo.Text<>'TL - TRANSFERENCIA ENTRE LOCAIS') and
              (cbtipo.Text<>'EZ - ENTRADA POR COMPOSI��O') then
              begin
                application.MessageBox('Tipo de Movimento Inv�lido','Aten��o',mb_ok+mb_iconinformation);
                cbtipo.SetFocus;
              end;
        end
        else
        begin
           if (cbtipo.Text<>'SC - SA�DA POR CONSUMO') and
              (cbtipo.Text<>'SB - SA�DA POR BONIFICA��O') and
              (cbtipo.Text<>'ED - ENTRADA POR DEVOLU��O') then
//              (cbtipo.Text<>'TL - TRANSFERENCIA ENTRE LOCAIS') then
              begin
                application.MessageBox('Escolha: SC ou SB ou ED','Aten��o',mb_ok+mb_iconinformation);
                cbtipo.SetFocus;
              end;
        end;
  end;
  cbtipo.Color:=clWindow;
end;

procedure TFrmEstoque.edunitarioExit(Sender: TObject);
begin
  if edunitario.Text<>'' then
     begin
       edunitario.Text:=formatfloat('#,##0.0000',StringToFloat(edunitario.text));
       edtotal.Text:=formatfloat('#,##0.00',StringToFloat(edunitario.text)*StrToFloat(edqtd.text));
     end;
  edunitario.Color:=clWindow;
end;

procedure TFrmEstoque.edtotalExit(Sender: TObject);
begin
  if edtotal.Text<>'' then
     edtotal.Text:=formatfloat('#,##0.00',StringToFloat(edtotal.text));
  edtotal.Color:=clWindow;
end;

procedure TFrmEstoque.btgravarClick(Sender: TObject);
var
E_qtd:real;
begin
  dm.parametros.Close;
  dm.parametros.Open;

  qratualizar.Close;
  qratualizar.SQL.Clear;
  qratualizar.SQL.Add('CALL sp_i_movestoque(:m_data, :m_TipoMov, :m_produto, :m_und, :m_qtd, :m_VlrUnit, :m_desconto, :m_VlrTotal,'+
                      ':m_documento, :m_favorecido, :m_vendedor, :m_local, :m_vlrcom)');
  qratualizar.Params[0].Value := StrToDate(medata.Text);
  qratualizar.Params[1].Value := copy(cbtipo.Text,1,2);
  qratualizar.Params[2].Value := StrToInt(edproduto.Text);
  if cbund.Text=dm.produtosundint.Value then
     begin
       qratualizar.Params[3].Value := cbund.Text;
       qratualizar.Params[4].Value := StrToFloat(edqtd.Text);
       qratualizar.Params[5].Value := StringToFloat(edunitario.Text);
     end
     else
     begin
       qratualizar.Params[3].Value := dm.produtosundint.Value;
       qratualizar.Params[4].Value := StrToFloat(edqtd.Text)*dm.produtosqtdemb.Value;
       qratualizar.Params[5].Value := StringToFloat(edunitario.Text)/dm.produtosqtdemb.Value;
     end;
  qratualizar.Params[6].Value := 0;
  qratualizar.Params[7].Value := StringToFloat(edtotal.text);
  qratualizar.Params[8].Value := eddocumento.Text;
  qratualizar.Params[9].Value := StrToInt(edcliente.text);
  qratualizar.Params[10].Value := 0;
  qratualizar.Params[11].Value := FrmPrincipal.sb.Panels[7].Text;
  qratualizar.Params[12].Value := 0;
  qratualizar.ExecSQL;

  if copy(cbtipo.Text,1,1)='E' then
     antestoque:=dm.produtosestoque.AsFloat+StrToFloat(edqtd.Text)
  else
     antestoque:=dm.produtosestoque.AsFloat-StrToFloat(edqtd.Text);

  qratualizar.close;
  qratualizar.sql.clear;
  qratualizar.SQL.Add('CALL sp_a_produtosest(:p_codigo, :p_estoque)');
  qratualizar.Params[0].Value := edproduto.Text;
  qratualizar.Params[1].Value := antestoque;
  qratualizar.ExecSQL;

  qratualizar.Close;
  qratualizar.SQL.Clear;
  qratualizar.SQL.Add('CALL sp_i_rastro(:r_data, :r_hora, :r_operador, :r_rotina, :r_operacao, :r_historico, :r_favorecido, :r_valor, :r_obs)');
  qratualizar.Params[0].Value := date;
  qratualizar.Params[1].Value := R_hora;
  qratualizar.Params[2].Value := FrmPrincipal.sb.Panels[3].Text;
  qratualizar.Params[3].Value := 'ESTOQUE';
  qratualizar.Params[4].Value := 'A';
  if copy(cbtipo.Text,1,1)='E' then
     qratualizar.Params[5].Value := 'Estoque Anterior: '+dm.produtosestoque.AsString+
     ' - Entrada: '+edqtd.Text+' - Estoque Atual: '+FloatToStr(antestoque)
  else
     qratualizar.Params[5].Value := 'Estoque Anterior: '+dm.produtosestoque.AsString+
     ' - Saida: '+edqtd.Text+' - Estoque Atual: '+FloatToStr(antestoque);
  qratualizar.Params[6].Value := edproduto.Text;
  qratualizar.Params[7].Value := 0;
  qratualizar.Params[8].Value := eddocumento.Text;
  qratualizar.ExecSQL;

   if (Copy(cbtipo.text, 1, 2) = 'EC') then
      begin
        P_ativo:='S';
        qratualizar.close;
        qratualizar.sql.clear;
        qratualizar.sql.add('update produtos set');
        qratualizar.sql.add('ativo = :P_ativo');
        qratualizar.sql.add('where codigo = '+edproduto.text);
        qratualizar.Params[0].Value := P_ativo;
        qratualizar.ExecSQL;
      end;

   R_hora:=TimeToStr(time);
   qratualizar.Close;
   qratualizar.SQL.Clear;
   qratualizar.SQL.Add('CALL sp_i_rastro(:r_data, :r_hora, :r_operador, :r_rotina, :r_operacao, :r_historico, :r_favorecido, :r_valor, :r_obs)');
   qratualizar.Params[0].Value := date;
   qratualizar.Params[1].Value := R_hora;
   qratualizar.Params[2].Value := FrmPrincipal.sb.Panels[3].Text;
   qratualizar.Params[3].Value := 'MOV. ESTOQUE';
   qratualizar.Params[4].Value := 'I';
   qratualizar.Params[5].Value := copy(cbtipo.Text,1,2)+' '+lbproduto.Caption+' - '+edqtd.Text;
   qratualizar.Params[6].Value := StrToInt(edproduto.Text);
   qratualizar.Params[7].Value := 0;
   qratualizar.Params[8].Value := FrmPrincipal.sb.Panels[7].text+' - '+FrmPrincipal.Panel2.Caption+' - '+eddocumento.Text;
   qratualizar.ExecSQL;

   qrmovestoque.Close;
   qrmovestoque.SQL.Clear;
   qrmovestoque.SQL.Add('select E.documento,E.favorecido,E.produto,E.data,E.tipomov,E.und,E.qtd,E.vlrunit,E.vlrtotal,');
   qrmovestoque.SQL.Add('P.nome,E.local');
   qrmovestoque.SQL.Add('from movestoque E, produtos P');
   qrmovestoque.SQL.Add('where (E.produto=P.codigo)');
   qrmovestoque.SQL.Add('and (E.documento = '+chr(39)+eddocumento.Text+chr(39)+')');
   qrmovestoque.SQL.Add('and (E.favorecido='+chr(39)+edcliente.Text+chr(39)+')');
   qrmovestoque.Open;

   qrtotal.Close;
   qrtotal.SQL.Clear;
   qrtotal.SQL.Add('select sum(qtd) as TotalSC from movestoque');
   qrtotal.SQL.Add('where (documento = '+chr(39)+eddocumento.Text+chr(39)+')');
   qrtotal.SQL.Add('and (tipomov = '+chr(39)+copy(cbtipo.Text,1,2)+chr(39)+')');
   qrtotal.Open;
   lbqtd.Caption:=qrtotalTotalSC.AsVariant;

   habilita;
end;

procedure TFrmEstoque.btnovoClick(Sender: TObject);
begin
      DBGrid2.OnCellClick:=nil;
      DBGrid2.OnDblClick:=nil;
      desabilita;
      cbtipo.SetFocus;
end;

procedure TFrmEstoque.edclienteExit(Sender: TObject);
begin
      if edcliente.Text<>'' then
         begin
           if (copy(cbtipo.Text,1,1)='S') or
              (copy(cbtipo.Text,1,2)='TL') then
              begin
                dm.Clientes.close;
                dm.Clientes.sql.clear;
                dm.Clientes.sql.add('select * from clientes');
                dm.Clientes.sql.add('where codigo = '+edcliente.text);
                dm.Clientes.open;
                if dm.Clientes.RecordCount<1 then
                   begin
                     application.MessageBox('Cliente n�o Localizado','Aten��o',mb_ok+mb_iconinformation);
                     edcliente.SetFocus;
                   end
                   else
                     lbcliente.Caption:=dm.clientesnome.value;
              end
           else if (copy(cbtipo.Text,1,1)='E') then
              begin
                dm.fornecedores.close;
                dm.fornecedores.sql.clear;
                dm.fornecedores.sql.add('select * from fornecedores');
                dm.fornecedores.sql.add('where codigo = '+edcliente.text);
                dm.fornecedores.open;
                if dm.fornecedores.RecordCount<1 then
                   begin
                     application.MessageBox('Fornecedor n�o Localizado','Aten��o',mb_ok+mb_iconinformation);
                     edcliente.SetFocus;
                   end
                   else
                     lbcliente.Caption:=dm.fornecedoresnome.value;
              end;
         end
         else
         begin
           application.MessageBox('Preencha o Favorecido','Aten��o',mb_ok+MB_ICONERROR);
           edcliente.SetFocus;
         end;
  edcliente.Color:=clWindow;
end;

procedure TFrmEstoque.edclienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_f10 then
     begin
       if (copy(cbtipo.Text,1,1)='S') then
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
              Application.CreateForm(TFrmCadfornecedores, FrmCadfornecedores);
              FrmCadfornecedores.showmodal;
            finally
              FrmCadfornecedores.Release;
              FrmCadfornecedores:=nil;
            end;
          end;
     end;
end;

procedure TFrmEstoque.edprodutoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if key=vk_f11 then
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

procedure TFrmEstoque.medataExit(Sender: TObject);
begin
  if medata.text<>'  /  /    ' then
  Try
     StrToDate(medata.Text) ;
  Except
  begin
     application.MessageBox('Data Inv�lida!','Aten��o',mb_Ok+mb_iconerror);
     medata.setfocus;
  end;
  end
  else
    medata.Text:=DateToStr(date);
  medata.Color:=clWindow;
end;

procedure TFrmEstoque.edprodutoExit(Sender: TObject);
begin
  if edproduto.Text<>'' then
     begin
      dm.produtos.close;
      dm.produtos.sql.clear;
      dm.produtos.sql.add('select * from produtos');
      dm.produtos.sql.add('where codbarra = '+chr(39)+edproduto.text+chr(39));
      dm.produtos.open;
      if dm.produtos.RecordCount>0 then
         begin
           edproduto.Text:=IntToStr(dm.produtoscodigo.Value);
           lbproduto.Caption:=dm.produtosnome.value;
           edunitario.Text:=formatfloat('#,##0.00',dm.produtoscompra.Value);
           cbund.Text:=dm.produtosundint.Value;
           cbund.Items.Clear;
           cbund.Items.Add(dm.produtosundext.AsString);
           cbund.Items.Add(dm.produtosundint.AsString);
           cbund.SetFocus;
         end
         else
         begin
           dm.produtos.close;
           dm.produtos.sql.clear;
           dm.produtos.sql.add('select * from produtos');
           dm.produtos.sql.add('where codigo = '+edproduto.Text);
           dm.produtos.open;
           if dm.produtos.RecordCount>0 then
              begin
                lbproduto.Caption:=dm.produtosnome.value;
                edunitario.Text:=formatfloat('#,##0.00',dm.produtoscompra.Value);
                cbund.Text:=dm.produtosundint.Value;
                cbund.Items.Clear;
                cbund.Items.Add(dm.produtosundext.AsString);
                cbund.Items.Add(dm.produtosundint.AsString);
                cbund.SetFocus;
              end
              else
              begin
                application.MessageBox('Produto n�o Localizado','Aten��o',mb_ok+mb_iconinformation);
                edproduto.Text:='';
              end;
         end;
     end;
  edproduto.Color:=clWindow;
end;

procedure TFrmEstoque.btrelatorioClick(Sender: TObject);
begin
      try
        Application.CreateForm(TFrmEstoqueRel, FrmEstoqueRel);
        FrmEstoqueRel.showmodal;
      finally
        FrmEstoqueRel.Release;
        FrmEstoqueRel:=nil;
      end;
end;

procedure TFrmEstoque.medataEnter(Sender: TObject);
begin
  medata.Color:=$0080FFFF;
  if medata.text='  /  /    ' then
     begin
        medata.Text:=DateToStr(date);
        medata.SelStart:=0;
        medata.SelLength:=length(medata.text);
     end;
end;

procedure TFrmEstoque.cbundExit(Sender: TObject);
begin
  if copy(cbtipo.Text,1,1)='E' then
     begin
        if cbund.Text=dm.produtosundint.Value then
           edunitario.Text:=formatfloat('#,##0.00',dm.produtoscompra.Value/dm.produtosqtdemb.Value)
        else
           edunitario.Text:=formatfloat('#,##0.00',dm.produtoscompra.Value);
     end
     else
       edunitario.Text:=formatfloat('#,##0.00',dm.produtosvenda.Value);
  cbund.Color:=clWindow;
end;

procedure TFrmEstoque.btprimeiroClick(Sender: TObject);
begin
      qrmovestoque.First;
      Atualiza;
end;

procedure TFrmEstoque.btanteriorClick(Sender: TObject);
begin
      qrmovestoque.Prior;
      Atualiza;
end;

procedure TFrmEstoque.btproximoClick(Sender: TObject);
begin
      qrmovestoque.Next;
      Atualiza;
end;

procedure TFrmEstoque.btultimoClick(Sender: TObject);
begin
      qrmovestoque.Last;
      Atualiza;
end;

procedure TFrmEstoque.medataIEnter(Sender: TObject);
begin
      if (medataI.text='  /  /    ') and (eddoc.Text='') then
         begin
            medataI.Text:=DateToStr(date);
            medataI.SelStart:=0;
            medataI.SelLength:=length(medataI.text);
         end;
end;

procedure TFrmEstoque.edprodutoIExit(Sender: TObject);
begin
  if edprodutoI.Text<>'' then
     begin
       qrmovestoque.Close;
       qrmovestoque.SQL.Clear;
       if chSintetico.Checked=false then
          begin
             qrmovestoque.SQL.Add('select E.documento,E.favorecido,E.produto,E.data,E.tipomov,E.und,E.qtd,E.vlrunit,E.vlrtotal,');
             qrmovestoque.SQL.Add('P.nome,E.local');
             qrmovestoque.SQL.Add('from movestoque E, produtos P');
             qrmovestoque.SQL.Add('where (E.produto=P.codigo)');
             qrmovestoque.SQL.Add('and (E.produto = '+edprodutoI.Text+')');
             qrmovestoque.SQL.Add('order by E.data,P.nome');
             qrmovestoque.Open;
             qrmovestoque.Last;
             Atualiza;
          end
          else
          begin
             qrmovestoque.SQL.Add('select E.documento,E.favorecido,E.produto,E.data,E.tipomov,E.und,sum(E.qtd) as qtd,E.vlrunit,sum(E.vlrtotal) as vlrtotal,');
             qrmovestoque.SQL.Add('P.nome,E.tipo,E.local,E.local2');
             qrmovestoque.SQL.Add('from movestoque E, produtos P');
             qrmovestoque.SQL.Add('where (E.produto=P.codigo)');
             qrmovestoque.SQL.Add('and (E.produto = '+edprodutoI.Text+')');
             if FrmPrincipal.sb.Panels[7].text<>'5' then
                qrmovestoque.SQL.Add('and (E.local = '+chr(39)+FrmPrincipal.sb.Panels[7].text+chr(39)+')');
             qrmovestoque.SQL.Add('group by E.tipomov');
             qrmovestoque.Open;
          end;
     end;
end;

procedure TFrmEstoque.mevalidadeExit(Sender: TObject);
begin
{  if mevalidade.text<>'  /  /    ' then
  Try
     StrToDate(mevalidade.Text) ;
  Except
  begin
     application.MessageBox('Data Inv�lida!','Aten��o',mb_Ok+mb_iconerror);
     mevalidade.setfocus;
  end;
  end;
  mevalidade.Color:=clWindow;
}end;

procedure TFrmEstoque.eddocumentoExit(Sender: TObject);
begin
  if eddocumento.text='' then
     begin
       eddocumento.Text:=copy(DateToStr(date),1,2)+copy(DateToStr(date),4,2)+
       copy(DateToStr(date),9,2)+' '+
       copy(TimeToStr(time),1,2)+copy(TimeToStr(time),4,2)+
       copy(TimeToStr(time),7,2);
     end;
  eddocumento.Color:=clWindow;
end;

procedure TFrmEstoque.btexcluirItemClick(Sender: TObject);
begin
  if edproduto.text='' then
     begin
        application.MessageBox('Selecione um Produto','Aten��o',mb_ok+mb_iconinformation);
        dbgrid2.SetFocus;
     end
     else
     begin
       if copy(cbtipo.Text,1,2)='SV' then
          begin
            busca := '';
            ClickedOK := InputQuery('Digite o Documento de Origem', 'Deseja excluir o Item', busca);
            if ClickedOK then
               begin
                 dm.movestoque.Close;
                 dm.movestoque.SQL.Clear;
                 dm.movestoque.SQL.Add('select * from movestoque');
                 dm.movestoque.SQL.Add('where (produto = '+edproduto.Text+')');
                 dm.movestoque.SQL.Add('and (documento = '+chr(39)+busca+chr(39)+')');
                 dm.movestoque.Open;
                 if dm.movestoque.RecordCount>0 then
                    begin
                       R_hora:=TimeToStr(time);
                       dm.rastro.Close;
                       dm.rastro.SQL.Clear;
                       dm.rastro.SQL.Add('select * from rastro');
                       dm.rastro.SQL.Add('where (1=2)');
                       dm.rastro.Open;
                       dm.rastro.Insert;
                       dm.rastrodata.Value:=date;
                       dm.rastrohora.Value:=R_hora;
                       dm.rastrooperador.Value:=FrmPrincipal.sb.Panels[3].Text;
                       dm.rastrorotina.Value:='MOV. ESTOQUE';
                       dm.rastrooperacao.Value:='E';
                       dm.rastrohistorico.Value:='ITEM DOC: '+eddocumento.text+' - PRODUTO: '+
                       formatfloat('0000',qrmovestoqueproduto.Value)+' - QTD: '+
                       formatfloat('0000',qrmovestoqueqtd.Value)+' - FAVORECIDO: '+
                       formatfloat('0000',qrmovestoquefavorecido.Value);
                       dm.rastrofavorecido.Value:=StrToInt(edcliente.Text);
                       dm.rastrovalor.Value:=StringToFloat(edtotal.Text);
                       dm.rastroobs.Value:=busca;
                       dm.rastro.Post;
                       dm.rastro.Close;

                       dm.produtos.close;
                       dm.produtos.sql.clear;
                       dm.produtos.sql.add('select * from produtos');
                       dm.produtos.sql.add('where codigo = '+IntToStr(qrmovestoqueproduto.Value));
                       dm.produtos.open;

                       mes:=StrToInt(copy(medata.text,4,2));
                       if copy(cbtipo.Text,1,1)='E' then
                          antestoque:=dm.produtosestoque.Value-qrmovestoqueqtd.Value
                       else if copy(cbtipo.Text,1,1)='S' then
                          antestoque:=dm.produtosestoque.Value+qrmovestoqueqtd.Value;

                       qratualizar.close;
                       qratualizar.sql.clear;
                       qratualizar.sql.add('update produtos set');
                       qratualizar.sql.add('estoque = :antestoque');
                       qratualizar.sql.add('where codigo = '+IntToStr(qrmovestoqueproduto.Value));
                       qratualizar.Params[0].Value := antestoque;
                       qratualizar.ExecSQL;

                       qratualizar.Close;
                       qratualizar.SQL.Clear;
                       qratualizar.SQL.Add('delete from movestoque');
                       qratualizar.SQL.Add('where (documento= '+chr(39)+eddocumento.Text+chr(39)+')');
                       qratualizar.SQL.Add('and (produto= '+edproduto.Text+')');
                       qratualizar.SQL.Add('and (favorecido= '+edcliente.Text+')');
                       qratualizar.SQL.Add('and (tipomov='+chr(39)+copy(cbtipo.Text,1,2)+chr(39)+')');
                       qratualizar.ExecSQL;

                       qrmovestoque.Close;
                       qrmovestoque.Open;
                    end
                    else
                      application.MessageBox('Documento n�o Localizado para Esse Produto!','Aten��o',mb_Ok+mb_iconerror);
               end;
          end
          else
          begin
            if Application.Messagebox ('Confirma Opera��o?','Deseja excluir esse Item', mb_yesno+mb_iconquestion+MB_DEFBUTTON2)=id_yes then
               begin
                 R_hora:=TimeToStr(time);
                 dm.rastro.Close;
                 dm.rastro.SQL.Clear;
                 dm.rastro.SQL.Add('select * from rastro');
                 dm.rastro.SQL.Add('where (1=2)');
                 dm.rastro.Open;
                 dm.rastro.Insert;
                 dm.rastrodata.Value:=date;
                 dm.rastrohora.Value:=R_hora;
                 dm.rastrooperador.Value:=FrmPrincipal.sb.Panels[3].Text;
                 dm.rastrorotina.Value:='MOV. ESTOQUE';
                 dm.rastrooperacao.Value:='E';
                 dm.rastrohistorico.Value:='ITEM DOC: '+eddocumento.text+' - PRODUTO: '+
                 formatfloat('0000',StrToInt(edproduto.Text))+' - QTD: '+
                 formatfloat('0000',qrmovestoqueqtd.Value)+' - FAVORECIDO: '+
                 formatfloat('0000',qrmovestoquefavorecido.Value);
                 dm.rastrofavorecido.Value:=StrToInt(edcliente.Text);
                 dm.rastrovalor.Value:=StringToFloat(edtotal.Text);
                 dm.rastroobs.Value:=busca;
                 dm.rastro.Post;
                 dm.rastro.Close;

                 dm.produtos.close;
                 dm.produtos.sql.clear;
                 dm.produtos.sql.add('select * from produtos');
                 dm.produtos.sql.add('where codigo = '+IntToStr(qrmovestoqueproduto.Value));
                 dm.produtos.open;

                 mes:=StrToInt(copy(medata.text,4,2));
                 if copy(cbtipo.Text,1,1)='E' then
                    antestoque:=dm.produtosestoque.Value-qrmovestoqueqtd.Value
                 else if copy(cbtipo.Text,1,1)='S' then
                    antestoque:=dm.produtosestoque.Value+qrmovestoqueqtd.Value;

                 qratualizar.close;
                 qratualizar.sql.clear;
                 qratualizar.sql.add('update produtos set');
                 qratualizar.sql.add('estoque = :antestoque');
                 qratualizar.sql.add('where codigo = '+IntToStr(qrmovestoqueproduto.Value));
                 qratualizar.Params[0].Value := antestoque;
                 qratualizar.ExecSQL;

                 qratualizar.Close;
                 qratualizar.SQL.Clear;
                 qratualizar.SQL.Add('delete from movestoque');
                 qratualizar.SQL.Add('where (documento= '+chr(39)+eddocumento.Text+chr(39)+')');
                 qratualizar.SQL.Add('and (produto= '+edproduto.Text+')');
                 qratualizar.SQL.Add('and (favorecido= '+edcliente.Text+')');
                 qratualizar.SQL.Add('and (tipomov='+chr(39)+copy(cbtipo.Text,1,2)+chr(39)+')');
                 qratualizar.ExecSQL;

                 qrmovestoque.Close;
                 qrmovestoque.Open;
               end;
          end;
     end;
end;

procedure TFrmEstoque.cbtipoEnter(Sender: TObject);
begin
  cbtipo.Color:=$0080FFFF;
end;

procedure TFrmEstoque.eddocumentoEnter(Sender: TObject);
begin
  eddocumento.Color:=$0080FFFF;
end;

procedure TFrmEstoque.edclienteEnter(Sender: TObject);
begin
  edcliente.Color:=$0080FFFF;
end;

procedure TFrmEstoque.edprodutoEnter(Sender: TObject);
begin
  edproduto.Color:=$0080FFFF;
end;

procedure TFrmEstoque.cbundEnter(Sender: TObject);
begin
  cbund.Color:=$0080FFFF;
end;

procedure TFrmEstoque.edqtdEnter(Sender: TObject);
begin
  edqtd.Color:=$0080FFFF;
end;

procedure TFrmEstoque.edunitarioEnter(Sender: TObject);
begin
  edunitario.Color:=$0080FFFF;
end;

procedure TFrmEstoque.edtotalEnter(Sender: TObject);
begin
  edtotal.Color:=$0080FFFF;
end;

procedure TFrmEstoque.edqtdExit(Sender: TObject);
begin
  edqtd.Color:=clWindow;
end;

procedure TFrmEstoque.edloteEnter(Sender: TObject);
begin
//  edlote.Color:=$0080FFFF;
end;

procedure TFrmEstoque.edloteExit(Sender: TObject);
begin
//  edlote.Color:=clWindow;
end;

procedure TFrmEstoque.mevalidadeEnter(Sender: TObject);
begin
//  mevalidade.Color:=$0080FFFF;
end;

procedure TFrmEstoque.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_f10 then
     begin
       qrmovestoque.First;
       while not qrmovestoque.Eof do
             begin
               P_ativo:='S';
               qratualizar.close;
               qratualizar.sql.clear;
               qratualizar.sql.add('update produtos set');
               qratualizar.sql.add('ativo = :P_ativo');
               qratualizar.SQL.Add('where codigo ='+IntToStr(qrmovestoqueproduto.Value));
               qratualizar.Params[0].Value := P_ativo;
               qratualizar.ExecSQL;
               qrmovestoque.Next;
             end;
       showmessage('Processamento Finalizado!');
     end;
end;

procedure TFrmEstoque.BitBtn4Click(Sender: TObject);
begin
  try
    dm.ZConnection1.Connected:=false;
    dm.ZConnection1.Database:='vieir463_gestor_caramelle';
    dm.ZConnection1.HostName:='vieirasistemas.com.br';
    dm.ZConnection1.User:='vieir463_cliente';
    dm.ZConnection1.Password:='AW3se4DR5ft6*#';
    dm.ZConnection1.Connected:=true;
  except
    application.messagebox('Tente Novamente','Aten��o! Sistema Fora do Ar',mb_ok+mb_iconexclamation);
  end;
end;

end.


