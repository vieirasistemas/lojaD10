unit UnitFrmCadProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, EditAlinhado, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, DBGrids, Mask,
  Menus;

type
  TFrmCadProdutos = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel3: TPanel;
    btanterior: TBitBtn;
    btproximo: TBitBtn;
    btnovo: TBitBtn;
    btgravar: TBitBtn;
    btalterar: TBitBtn;
    btexcluir: TBitBtn;
    btrelatorio: TBitBtn;
    btcancelar: TBitBtn;
    P_dados: TPanel;
    Label22: TLabel;
    Label3: TLabel;
    Label20: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label29: TLabel;
    Label31: TLabel;
    Label53: TLabel;
    Label2: TLabel;
    Label60: TLabel;
    lbfornecedor: TLabel;
    Edreferencia: TEdit;
    ednome: TEdit;
    cbgrupo: TComboBox;
    Edqtd: TEdit;
    edundint: TEdit;
    edundext: TEdit;
    edestmin: TEdit;
    edestmax: TEdit;
    edprazores: TEdit;
    edfornecedor: TEdit;
    cbativo: TComboBox;
    edcompra: TEditAlinh;
    Label17: TLabel;
    edestoque: TEditAlinh;
    qratualizar: TZQuery;
    GroupBox1: TGroupBox;
    rbcodigo: TRadioButton;
    rbnome: TRadioButton;
    rbgeral: TRadioButton;
    edpesquisa: TEdit;
    Label18: TLabel;
    BitBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    Label5: TLabel;
    edatacado: TEditAlinh;
    Label6: TLabel;
    edvenda: TEditAlinh;
    rbcodbarra: TRadioButton;
    lbcodigo: TLabel;
    BitBtn6: TBitBtn;
    Label1: TLabel;
    edncm: TEdit;
    Label4: TLabel;
    edcodbarra: TEdit;
    Label7: TLabel;
    edcomissao: TEdit;
    PopupMenu1: TPopupMenu;
    AlteraroEstoque1: TMenuItem;
    AlterarComisso1: TMenuItem;
    N1: TMenuItem;
    AlterarCdigodoProduto1: TMenuItem;
    procedure btnovoClick(Sender: TObject);
    procedure btgravarClick(Sender: TObject);
    procedure btcancelarClick(Sender: TObject);
    procedure EdqtdExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edundextEnter(Sender: TObject);
    procedure cbativoExit(Sender: TObject);
    procedure edfornecedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edfornecedorExit(Sender: TObject);
    procedure edfornecedorEnter(Sender: TObject);
    procedure EdreferenciaEnter(Sender: TObject);
    procedure ednomeEnter(Sender: TObject);
    procedure cbgrupoEnter(Sender: TObject);
    procedure EdqtdEnter(Sender: TObject);
    procedure edundintEnter(Sender: TObject);
    procedure edestminEnter(Sender: TObject);
    procedure edestmaxEnter(Sender: TObject);
    procedure cbativoEnter(Sender: TObject);
    procedure edprazoresEnter(Sender: TObject);
    procedure edcompraEnter(Sender: TObject);
    procedure edestoqueEnter(Sender: TObject);
    procedure EdreferenciaExit(Sender: TObject);
    procedure ednomeExit(Sender: TObject);
    procedure cbgrupoExit(Sender: TObject);
    procedure edundintExit(Sender: TObject);
    procedure edundextExit(Sender: TObject);
    procedure edestminExit(Sender: TObject);
    procedure edestmaxExit(Sender: TObject);
    procedure edprazoresExit(Sender: TObject);
    procedure btprimeiroClick(Sender: TObject);
    procedure btanteriorClick(Sender: TObject);
    procedure btproximoClick(Sender: TObject);
    procedure btultimoClick(Sender: TObject);
    procedure btalterarClick(Sender: TObject);
    procedure rbgeralClick(Sender: TObject);
    procedure edpesquisaExit(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btexcluirClick(Sender: TObject);
    procedure edcompraExit(Sender: TObject);
    procedure edatacadoEnter(Sender: TObject);
    procedure edatacadoExit(Sender: TObject);
    procedure edvendaEnter(Sender: TObject);
    procedure edvendaExit(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rbcodigoClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure edcomissaoEnter(Sender: TObject);
    procedure edcomissaoExit(Sender: TObject);
    procedure AlteraroEstoque1Click(Sender: TObject);
    procedure AlterarComisso1Click(Sender: TObject);
    procedure edestoqueExit(Sender: TObject);
    procedure AlterarCdigodoProduto1Click(Sender: TObject);
  private
    { Private declarations }
  public
    function  ValidateFields: boolean;
    { Public declarations }
  end;

var
  FrmCadProdutos: TFrmCadProdutos;

implementation

uses Unitdm, UnitFrmPrincipal, UnitFrmCadFornecedores, UnitFrmEstoque,
  UnitFrmNotasFiscais, UnitFrmEtiquetasImp,
  UnitFrmGrupo;

{$R *.dfm}

function StringToFloat(s : string) : Extended;
{ Filtra uma string qualquer, convertendo as suas partes
  numéricas para sua representação decimal, por exemplo:
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
  {Filtra a string, aceitando somente números e separador decimal:}
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

procedure ListarGrupos;
begin
  dm.Grupos.Close;
  dm.Grupos.SQL.Clear;
  dm.Grupos.SQL.Add('select * from grupos');
  dm.Grupos.SQL.Add('order by codigo');
  dm.Grupos.Open;
  FrmCadProdutos.cbgrupo.Items.Clear;
  while not dm.Grupos.Eof do
        begin
          FrmCadProdutos.cbgrupo.Items.Add(dm.Gruposcodigo.Value+' '+dm.Gruposdescricao.value);
          dm.Grupos.Next;
        end;
end;

function TFrmCadProdutos.ValidateFields: boolean;
begin
    if trim ( ednome.text ) = '' then
       begin
          MessageBox( handle , 'Nome do Produto Deve Ser Preenchido' ,
                               'Erro de Preenchimento de Campo'   ,
                               mb_ok+mb_iconstop );
          ednome.setfocus;
          Result := false;
          exit;
       end;
    Result := true ;

    if trim ( Edqtd.text ) = '' then
       begin
          MessageBox( handle , 'QTD por Embalagem do Produto Deve Ser Preenchido' ,
                               'Erro de Preenchimento de Campo'   ,
                               mb_ok+mb_iconstop );
          Edqtd.setfocus;
          Result := false;
          exit;
       end;
    Result := true ;

    if trim ( edundint.text ) = '' then
       begin
          MessageBox( handle , 'Unidade Interna do Produto Deve Ser Preenchido' ,
                               'Erro de Preenchimento de Campo'   ,
                               mb_ok+mb_iconstop );
          edundint.setfocus;
          Result := false;
          exit;
       end;
    Result := true ;

    if trim ( edcompra.text ) = '' then
       begin
          MessageBox( handle , 'Valor da Compra do Produto Deve Ser Preenchido' ,
                               'Erro de Preenchimento de Campo'   ,
                               mb_ok+mb_iconstop );
          edcompra.setfocus;
          Result := false;
          exit;
       end;
    Result := true ;

end;

procedure Atualiza;
begin
  FrmCadProdutos.lbcodigo.Caption:=FloatToStr(dm.produtoscodigo.value);
  FrmCadProdutos.ednome.Text:=dm.produtosnome.Value;

  if dm.produtosgrupo.Value<>'' then
     begin
        dm.Grupos.Open;
        dm.Grupos.Locate('codigo',dm.produtosgrupo.value,[]);
        FrmCadProdutos.cbgrupo.Text:=dm.produtosgrupo.Value+' '+dm.Gruposdescricao.value;
     end
     else
        FrmCadProdutos.cbgrupo.Text:='';

  FrmCadProdutos.Edreferencia.Text:=dm.produtosreferencia.value;
  FrmCadProdutos.edcodbarra.Text:=dm.produtoscodbarra.value;
  FrmCadProdutos.edncm.Text:=dm.produtosncm.value;
  FrmCadProdutos.Edqtd.Text:=FloatToStr(dm.produtosqtdemb.value);
  FrmCadProdutos.edundint.Text:=dm.produtosundint.value;
  FrmCadProdutos.edundext.Text:=dm.produtosundext.value;
  FrmCadProdutos.edestmin.Text:=formatfloat('0.00',dm.produtosestmin.value);
  FrmCadProdutos.edestmax.Text:=formatfloat('0.00',dm.produtosestmax.value);
  FrmCadProdutos.edprazores.Text:=FloatToStr(dm.produtosprazores.value);
  if dm.produtosfornecedor.Value>0 then
     begin
        qry              :=  TZQuery.Create(nil);
        qry.Connection   :=  dm.ZConnection1;
        qry.SQL.Add('select nome from fornecedores');
        qry.sql.add('where codigo = '+dm.produtosfornecedor.AsString);
        qry.Open;
        FrmCadProdutos.edfornecedor.Text    := dm.produtosfornecedor.AsString;
        FrmCadProdutos.lbfornecedor.Caption := qry.fieldbyname('nome').AsString;
        qry.Free;
     end
     else
     begin
        FrmCadProdutos.edfornecedor.Text:='';
        FrmCadProdutos.lbfornecedor.Caption:='';
     end;
  if dm.produtosativo.Value='N' then
     FrmCadProdutos.cbativo.Text:='NÃO'
  else
     FrmCadProdutos.cbativo.Text:='SIM';
  if dm.produtoscompra.Value>0 then
     FrmCadProdutos.Edcompra.Text:=formatfloat('#,##0.00',dm.produtoscompra.value)
  else
     FrmCadProdutos.Edcompra.Text:='';
  if dm.produtosatacado.Value>0 then
     FrmCadProdutos.edatacado.Text:=formatfloat('#,##0.00',dm.produtosatacado.value)
  else
     FrmCadProdutos.edatacado.Text:='';
  if dm.produtosvenda.Value>0 then
     FrmCadProdutos.edvenda.Text:=formatfloat('#,##0.00',dm.produtosvenda.value)
  else
     FrmCadProdutos.edvenda.Text:='';
  if dm.produtoscomissao.Value>0 then
     FrmCadProdutos.edcomissao.Text:=formatfloat('0.00',dm.produtoscomissao.value)
  else
     FrmCadProdutos.edcomissao.Text:='';
  FrmCadProdutos.edestoque.Text:=FloatToStr(dm.produtosestoque.value);
end;

procedure limpar;
begin
  FrmCadProdutos.lbcodigo.Caption:='';
  FrmCadProdutos.ednome.Text:='';
  FrmCadProdutos.cbgrupo.Text:='';
  FrmCadProdutos.Edreferencia.Text:='';
  FrmCadProdutos.edcodbarra.Text:='';
  FrmCadProdutos.edncm.Text:='';
  FrmCadProdutos.Edqtd.Text:='';
  FrmCadProdutos.edundint.Text:='';
  FrmCadProdutos.edundext.Text:='';
  FrmCadProdutos.edestmin.Text:='';
  FrmCadProdutos.edestmax.Text:='';
  FrmCadProdutos.edprazores.Text:='';
  FrmCadProdutos.edfornecedor.Text:='';
  FrmCadProdutos.lbfornecedor.Caption:='';
  FrmCadProdutos.Edcompra.Text:='';
  FrmCadProdutos.edatacado.Text:='';
  FrmCadProdutos.edvenda.Text:='';
  FrmCadProdutos.edestoque.Text:='';
  FrmCadProdutos.edcomissao.Text:='';
end;

procedure ExcluirProduto;
begin
 if Application.Messagebox ('Deseja excluir o registro?','Gestor', Mb_YesNoCancel+mb_iconquestion) = id_yes then
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
      dm.rastrorotina.Value:='PRODUTOS';
      dm.rastrooperacao.Value:='E';
      dm.rastrohistorico.Value:=FrmCadProdutos.lbcodigo.Caption+' - '+FrmCadProdutos.ednome.Text;
      dm.rastro.Post;
      dm.rastro.Close;

      FrmCadProdutos.qratualizar.close;
      FrmCadProdutos.qratualizar.sql.clear;
      FrmCadProdutos.qratualizar.sql.add('delete from produtos');
      FrmCadProdutos.qratualizar.sql.add('where codigo = '+FrmCadProdutos.lbcodigo.Caption);
      FrmCadProdutos.qratualizar.ExecSQL;
      dm.produtos.Close;
      dm.produtos.Open;
      limpar;
    end;
end;

procedure desabilita;
begin
  FrmCadProdutos.btanterior.enabled:=false;
  FrmCadProdutos.btproximo.enabled:=false;
  FrmCadProdutos.btnovo.enabled:=false;
  FrmCadProdutos.btalterar.enabled:=false;
  FrmCadProdutos.btexcluir.enabled:=false;
  FrmCadProdutos.btrelatorio.enabled:=false;
  FrmCadProdutos.btgravar.enabled:=true;
  FrmCadProdutos.btcancelar.Caption:='Cancelar';
  FrmCadProdutos.P_dados.enabled:=true;
end;

procedure habilita;
begin
        dm.usuarios.Open;
        dm.usuarios.Locate('nome',FrmPrincipal.sb.Panels[3].Text,[]);
{        if dm.usuariosprodutos.value='1' then
           begin
                FrmCadProdutos.btgravar.enabled:=false;
                FrmCadProdutos.btnovo.Enabled:=false;
                FrmCadProdutos.btexcluir.Enabled:=false;
                FrmCadProdutos.btalterar.Enabled:=false;
                FrmCadProdutos.btprimeiro.Enabled:=true;
                FrmCadProdutos.btanterior.Enabled:=true;
                FrmCadProdutos.btproximo.Enabled:=true;
                FrmCadProdutos.btultimo.Enabled:=true;
                FrmCadProdutos.btrelatorio.enabled:=false;
           end;
        if dm.usuariosprodutos.value='2' then
           begin
                FrmCadProdutos.btgravar.enabled:=false;
                FrmCadProdutos.btnovo.Enabled:=true;
                FrmCadProdutos.btexcluir.Enabled:=false;
                FrmCadProdutos.btalterar.Enabled:=false;
                FrmCadProdutos.btprimeiro.Enabled:=true;
                FrmCadProdutos.btanterior.Enabled:=true;
                FrmCadProdutos.btproximo.Enabled:=true;
                FrmCadProdutos.btultimo.Enabled:=true;
                FrmCadProdutos.btrelatorio.enabled:=false;
           end;
        if dm.usuariosprodutos.value='3' then
           begin
                FrmCadProdutos.btgravar.enabled:=false;
                FrmCadProdutos.btnovo.Enabled:=true;
                FrmCadProdutos.btexcluir.Enabled:=false;
                FrmCadProdutos.btalterar.Enabled:=true;
                FrmCadProdutos.btprimeiro.Enabled:=true;
                FrmCadProdutos.btanterior.Enabled:=true;
                FrmCadProdutos.btproximo.Enabled:=true;
                FrmCadProdutos.btultimo.Enabled:=true;
                FrmCadProdutos.btrelatorio.enabled:=false;
           end;
        if dm.usuariosprodutos.value='4' then
           begin
                FrmCadProdutos.btgravar.enabled:=false;
                FrmCadProdutos.btnovo.Enabled:=true;
                FrmCadProdutos.btexcluir.Enabled:=true;
                FrmCadProdutos.btalterar.Enabled:=true;
                FrmCadProdutos.btprimeiro.Enabled:=true;
                FrmCadProdutos.btanterior.Enabled:=true;
                FrmCadProdutos.btproximo.Enabled:=true;
                FrmCadProdutos.btultimo.Enabled:=true;
                FrmCadProdutos.btrelatorio.enabled:=true;
           end;
        if dm.usuariosprodutos.value='5' then
           begin
}                FrmCadProdutos.btgravar.enabled:=false;
                FrmCadProdutos.btnovo.Enabled:=true;
                FrmCadProdutos.btexcluir.Enabled:=true;
                FrmCadProdutos.btalterar.Enabled:=true;
                FrmCadProdutos.btanterior.Enabled:=true;
                FrmCadProdutos.btproximo.Enabled:=true;
                FrmCadProdutos.btrelatorio.enabled:=true;
//           end;
        FrmCadProdutos.P_dados.enabled:=false;
  FrmCadProdutos.btcancelar.Caption:='Sair';
end;

procedure TFrmCadProdutos.btnovoClick(Sender: TObject);
begin
  novo:=true;
  desabilita;
  if ednome.Text<>'' then
     begin
       if Application.Messagebox ('Limpar Campos?','Atenção', Mb_YesNo+mb_iconquestion) = id_yes then
          limpar;
       ednome.SetFocus;
     end
     else
     begin
       limpar;
       ednome.SetFocus;
     end;
end;

procedure TFrmCadProdutos.btgravarClick(Sender: TObject);
begin
  if not ValidateFields then
     exit
  else
  begin
    if novo=true then
       begin
         dm.produtos.close;
         dm.produtos.sql.clear;
         dm.produtos.sql.add('select * from produtos');
         dm.produtos.sql.add('where nome = '+chr(39)+ednome.text+chr(39));
         dm.produtos.open;
         dm.produtos.Insert;
         dm.produtosnome.Value:=ednome.Text;
         if cbgrupo.Text<>'' then
            dm.produtosgrupo.value:=copy(cbgrupo.Text,1,4);
         dm.produtosreferencia.value:=Edreferencia.Text;
         dm.produtosreferencia.value:=Edreferencia.Text;
         if edqtd.Text<>'' then
            dm.produtosqtdemb.value:=StringToFloat(Edqtd.Text);
         dm.produtosundint.value:=edundint.Text;
         dm.produtosundext.value:=edundext.Text;
         if edestmin.text<>'' then
            dm.produtosestmin.Value:=StringToFloat(edestmin.text);
         if edestmax.text<>'' then
            dm.produtosestmax.Value:=StringToFloat(edestmax.text);
         if edprazores.Text<>'' then
            dm.produtosprazores.value:=StrToInt(edprazores.Text);
         if edfornecedor.Text<>'' then
            dm.produtosfornecedor.value:=StrToInt(edfornecedor.Text);
         dm.produtosativo.Value:=copy(cbativo.Text,1,1);
         if Edcompra.Text<>'' then
            dm.produtoscompra.value:=StringToFloat(Edcompra.Text);
         if edatacado.Text<>'' then
            dm.produtosatacado.value:=StringToFloat(edatacado.Text);
         if edvenda.Text<>'' then
            dm.produtosvenda.value:=StringToFloat(edvenda.Text);
         if edcomissao.Text<>'' then
            dm.produtoscomissao.value:=StringToFloat(edcomissao.Text);
         if edestoque.Text<>'' then
            dm.produtosestoque.value:=StringToFloat(edestoque.Text);
         dm.produtos.Post;
         tip:='I';
       end
       else
       begin
         tip:='A';
         qratualizar.Close;
         qratualizar.SQL.Clear;
         qratualizar.SQL.Add('CALL sp_a_produtos(:p_codigo, :p_nome, :p_codbarra, :p_grupo, :p_referencia, :p_qtdemb, :p_undint,'+
         ':p_undext, :p_estmin, :p_estmax, :p_prazores, :p_fornecedor, :p_ativo, :p_compra, :p_venda, :p_atacado, :p_comissao)');
         qratualizar.Params[0].Value := lbcodigo.Caption;
         qratualizar.Params[1].Value := ednome.Text;
         qratualizar.Params[2].Value := edcodbarra.Text;
         if cbgrupo.Text<>'' then
            qratualizar.Params[3].Value := copy(cbgrupo.Text,1,4)
         else
            qratualizar.Params[3].Value := '';
         qratualizar.Params[4].Value := Edreferencia.Text;
         if Edqtd.Text<>'' then
            qratualizar.Params[5].Value := StrToFloat(Edqtd.Text)
         else
            qratualizar.Params[5].Value := 1;
         qratualizar.Params[6].Value := edundint.Text;
         qratualizar.Params[7].Value := edundext.Text;
         if edestmin.Text<>'' then
            qratualizar.Params[8].Value := StrToFloat(edestmin.Text)
         else
            qratualizar.Params[8].Value := 0;
         if edestmax.Text<>'' then
            qratualizar.Params[9].Value := StrToFloat(edestmax.Text)
         else
            qratualizar.Params[9].Value := 0;
         if edprazores.Text<>'' then
            qratualizar.Params[10].Value := StrToInt(edprazores.Text)
         else
            qratualizar.Params[10].Value := 0;
         if edfornecedor.Text<>'' then
            qratualizar.Params[11].Value := StrToInt(edfornecedor.Text)
         else
            qratualizar.Params[11].Value := 0;
         qratualizar.Params[12].Value := copy(cbativo.Text,1,1);
         if edcompra.Text<>'' then
            qratualizar.Params[13].Value := StringToFloat(edcompra.Text)
         else
            qratualizar.Params[13].Value := 0;
         if edvenda.Text<>'' then
            qratualizar.Params[14].Value := StringToFloat(edvenda.Text)
         else
            qratualizar.Params[14].Value := 0;
         if edatacado.Text<>'' then
            qratualizar.Params[15].Value := StringToFloat(edatacado.Text)
         else
            qratualizar.Params[15].Value := 0;
         if edcomissao.Text<>'' then
            qratualizar.Params[16].Value := StringToFloat(edcomissao.Text)
         else
            qratualizar.Params[16].Value := 0;
         qratualizar.ExecSQL;
       end;
      R_hora:=TimeToStr(time);
      qratualizar.Close;
      qratualizar.SQL.Clear;
      qratualizar.SQL.Add('CALL sp_i_rastro(:r_data, :r_hora, :r_operador, :r_rotina, :r_operacao, :r_historico, :r_favorecido, :r_valor, :r_obs)');
      qratualizar.Params[0].Value := date;
      qratualizar.Params[1].Value := R_hora;
      qratualizar.Params[2].Value := FrmPrincipal.sb.Panels[3].Text;
      qratualizar.Params[3].Value := 'PRODUTOS';
      qratualizar.Params[4].Value := tip;
      qratualizar.Params[5].Value := ednome.Text;
      if lbcodigo.Caption<>'' then
         qratualizar.Params[6].Value := StrToInt(lbcodigo.Caption)
      else
         qratualizar.Params[6].Value := 0;
      qratualizar.Params[7].Value := 0;
      qratualizar.Params[8].Value := '';
      qratualizar.ExecSQL;
      habilita;
  end;
end;

procedure TFrmCadProdutos.btcancelarClick(Sender: TObject);
begin
  if btnovo.Enabled=false then
     begin
       habilita;
     end
     else
       close;
end;

procedure TFrmCadProdutos.EdqtdExit(Sender: TObject);
begin
  if Edqtd.Text='' then
     Edqtd.Text:='1';
  Edqtd.Color:=clWindow;
end;

procedure TFrmCadProdutos.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrmCadProdutos.edundextEnter(Sender: TObject);
begin
  edundext.Color:=$0080FFFF;
  if edundext.Text='' then
     begin
       edundext.Text:=edundint.Text;
       edundext.SelStart:=0;
       edundext.SelLength:=length(edundext.Text);
     end;
end;

procedure TFrmCadProdutos.cbativoExit(Sender: TObject);
begin
  if cbativo.Text='' then
     cbativo.Text:='SIM';
  cbativo.Color:=clWindow;
end;

procedure TFrmCadProdutos.edfornecedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key=vk_f10 then
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

procedure TFrmCadProdutos.edfornecedorExit(Sender: TObject);
begin
  if edfornecedor.Text<>'' then
     begin
        dm.Fornecedores.close;
        dm.Fornecedores.sql.clear;
        dm.Fornecedores.sql.add('select * from fornecedores');
        dm.Fornecedores.sql.add('where codigo = '+edfornecedor.text);
        dm.Fornecedores.open;
        if dm.Fornecedores.RecordCount<1 then
           begin
             application.MessageBox('Fornecedor não Localizado','Atenção',mb_ok+mb_iconinformation);
             edfornecedor.SetFocus;
           end
           else
             lbfornecedor.Caption:=dm.Fornecedoresnome.value;
     end;
  edfornecedor.Color:=clWindow;
end;

procedure TFrmCadProdutos.edfornecedorEnter(Sender: TObject);
begin
  edfornecedor.Color:=$0080FFFF;
end;

procedure TFrmCadProdutos.EdreferenciaEnter(Sender: TObject);
begin
  Edreferencia.Color:=$0080FFFF;
end;

procedure TFrmCadProdutos.ednomeEnter(Sender: TObject);
begin
  ednome.Color:=$0080FFFF;
end;

procedure TFrmCadProdutos.cbgrupoEnter(Sender: TObject);
begin
  cbgrupo.Color:=$0080FFFF;
end;

procedure TFrmCadProdutos.EdqtdEnter(Sender: TObject);
begin
  Edqtd.Color:=$0080FFFF;
end;

procedure TFrmCadProdutos.edundintEnter(Sender: TObject);
begin
  edundint.Color:=$0080FFFF;
end;

procedure TFrmCadProdutos.edestminEnter(Sender: TObject);
begin
  edestmin.Color:=$0080FFFF;
end;

procedure TFrmCadProdutos.edestmaxEnter(Sender: TObject);
begin
  edestmax.Color:=$0080FFFF;
end;

procedure TFrmCadProdutos.cbativoEnter(Sender: TObject);
begin
  cbativo.Color:=$0080FFFF;
end;

procedure TFrmCadProdutos.edprazoresEnter(Sender: TObject);
begin
  edprazores.Color:=$0080FFFF;
end;

procedure TFrmCadProdutos.edcompraEnter(Sender: TObject);
begin
  edcompra.Color:=$0080FFFF;
end;

procedure TFrmCadProdutos.edestoqueEnter(Sender: TObject);
begin
  edestoque.Color:=$0080FFFF;
end;

procedure TFrmCadProdutos.EdreferenciaExit(Sender: TObject);
begin
  Edreferencia.Color:=clWindow;
end;

procedure TFrmCadProdutos.ednomeExit(Sender: TObject);
begin
  ednome.Color:=clWindow;
end;

procedure TFrmCadProdutos.cbgrupoExit(Sender: TObject);
begin
  if cbgrupo.Text<>'' then
     begin
       if copy(cbgrupo.Text,3,1)=' ' then
          begin
            application.MessageBox('Grupo Inválido','Atenção',mb_ok+MB_ICONERROR);
            cbgrupo.SetFocus;
          end
          else
          begin
            dm.grupos.Open;
            if not dm.grupos.Locate('codigo',copy(cbgrupo.Text,1,4),[]) then
               begin
                  application.MessageBox('Grupo não Cadastrado','Atenção',mb_ok+mb_iconinformation);
                  cbgrupo.SetFocus;
               end
          end;
     end;
  cbgrupo.Color:=clWindow;
end;

procedure TFrmCadProdutos.edundintExit(Sender: TObject);
begin
  edundint.Color:=clWindow;
end;

procedure TFrmCadProdutos.edundextExit(Sender: TObject);
begin
  edundext.Color:=clWindow;
end;

procedure TFrmCadProdutos.edestminExit(Sender: TObject);
begin
  edestmin.Color:=clWindow;
end;

procedure TFrmCadProdutos.edestmaxExit(Sender: TObject);
begin
  edestmax.Color:=clWindow;
end;

procedure TFrmCadProdutos.edprazoresExit(Sender: TObject);
begin
  edprazores.Color:=clWindow;
end;

procedure TFrmCadProdutos.btprimeiroClick(Sender: TObject);
begin
  dm.produtos.First;
  Atualiza;
end;

procedure TFrmCadProdutos.btanteriorClick(Sender: TObject);
begin
  dm.produtos.Prior;
  Atualiza;
end;

procedure TFrmCadProdutos.btproximoClick(Sender: TObject);
begin
  dm.produtos.Next;
  Atualiza;
end;

procedure TFrmCadProdutos.btultimoClick(Sender: TObject);
begin
  dm.produtos.Last;
  Atualiza;
end;

procedure TFrmCadProdutos.btalterarClick(Sender: TObject);
begin
  novo:=false;
  desabilita;
  ednome.SetFocus;
end;

procedure TFrmCadProdutos.rbgeralClick(Sender: TObject);
begin
  if rbgeral.Checked then
     begin
       dm.produtos.Close;
       dm.produtos.SQL.Clear;
       dm.produtos.SQL.Add('select * from produtos');
       dm.produtos.SQL.Add('order by nome');
       dm.produtos.Open;
     end;
end;

procedure TFrmCadProdutos.edpesquisaExit(Sender: TObject);
begin
  if edpesquisa.text<>'' then
     begin
       dm.produtos.close;
       dm.produtos.sql.clear;
       dm.produtos.sql.add('select * from produtos');
       if rbcodigo.Checked then
          dm.produtos.sql.add('where codigo = '+edpesquisa.text)
       else if rbcodbarra.Checked then
          dm.produtos.sql.add('where codbarra = '+chr(39)+edpesquisa.text+chr(39))
       else if rbnome.Checked then
          dm.produtos.sql.add('where nome like '+chr(39)+'%'+edpesquisa.text+'%'+chr(39));
       dm.produtos.sql.add('order by nome');
       dm.produtos.open;
     end;
end;

procedure TFrmCadProdutos.DBGrid1DblClick(Sender: TObject);
begin
  if assigned(FrmEtiquetasImp) then
     begin
       if (dm.produtos.Active) and (dm.produtos.RecordCount>0) then
          begin
            FrmEtiquetasImp.edproduto.Text:=IntToStr(dm.produtoscodigo.value);
            FrmEtiquetasImp.edproduto.SelStart:=0;
            FrmEtiquetasImp.edproduto.SelLength:=length(FrmEtiquetasImp.edproduto.Text);
            modalresult := mrok;
          end;
     end
     else
     begin
       dm.usuarios.Open;
       dm.usuarios.Locate('nome',FrmPrincipal.sb.Panels[3].Text,[]);
       if dm.usuariosusuarios.value='5' then
          Atualiza
       else
          limpar;
       PageControl1.ActivePageIndex := 1;
     end;
end;

procedure TFrmCadProdutos.BitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure TFrmCadProdutos.FormShow(Sender: TObject);
begin
  ListarGrupos;
  PageControl1.ActivePageIndex := 0;
  edpesquisa.SetFocus;
end;

procedure TFrmCadProdutos.btexcluirClick(Sender: TObject);
begin
  if lbcodigo.Caption='' then
     begin
       application.MessageBox('Selecione um Produto','Atenção',mb_ok+mb_iconinformation);
       PageControl1.ActivePageIndex := 0;
       edpesquisa.SetFocus;
     end
     else
     begin
       check:=false;
       dm.movestoque.close;
       dm.movestoque.sql.clear;
       dm.movestoque.sql.add('select * from movestoque');
       dm.movestoque.sql.add('where produto = '+lbcodigo.Caption);
       dm.movestoque.open;
       if dm.movestoque.RecordCount>0 then
          check:=true;

       dm.movvenda.close;
       dm.movvenda.sql.clear;
       dm.movvenda.sql.add('select * from movvenda');
       dm.movvenda.sql.add('where produto = '+lbcodigo.Caption);
       dm.movvenda.open;
       if dm.movvenda.RecordCount>0 then
          check:=true;

       if check=true then
          application.MessageBox('Produto com Movimentação','Atenção',mb_ok+MB_ICONWARNING)
       else
          ExcluirProduto;
     end;
end;

procedure TFrmCadProdutos.edcompraExit(Sender: TObject);
begin
  if edcompra.Text<>'' then
     edcompra.Text:=formatfloat('#,##0.00',StringToFloat(edcompra.text));
  edcompra.Color:=clWindow;
end;

procedure TFrmCadProdutos.edatacadoEnter(Sender: TObject);
begin
  edatacado.Color:=$0080FFFF;
end;

procedure TFrmCadProdutos.edatacadoExit(Sender: TObject);
begin
  if edatacado.Text<>'' then
     edatacado.Text:=formatfloat('#,##0.00',StringToFloat(edatacado.text));
  edatacado.Color:=clWindow;
end;

procedure TFrmCadProdutos.edvendaEnter(Sender: TObject);
begin
  edvenda.Color:=$0080FFFF;
end;

procedure TFrmCadProdutos.edvendaExit(Sender: TObject);
begin
  if edvenda.Text<>'' then
     edvenda.Text:=formatfloat('#,##0.00',StringToFloat(edvenda.text));
  edvenda.Color:=clWindow;
end;

procedure TFrmCadProdutos.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
     begin
        if assigned(FrmEstoque) then
           begin
             if (dm.produtos.Active) and (dm.produtos.RecordCount>0) then
                begin
                  FrmEstoque.edproduto.Text:=IntToStr(dm.produtoscodigo.value);
                  FrmEstoque.edproduto.SelStart:=0;
                  FrmEstoque.edproduto.SelLength:=length(FrmEstoque.edproduto.Text);
                  modalresult := mrok;
                end;
           end
        else if assigned(FrmEtiquetasImp) then
           begin
             if (dm.produtos.Active) and (dm.produtos.RecordCount>0) then
                begin
                  FrmEtiquetasImp.edproduto.Text:=IntToStr(dm.produtoscodigo.value);
                  FrmEtiquetasImp.edproduto.SelStart:=0;
                  FrmEtiquetasImp.edproduto.SelLength:=length(FrmEtiquetasImp.edproduto.Text);
                  modalresult := mrok;
                end;
           end
           else
           begin
             dm.usuarios.Open;
             dm.usuarios.Locate('nome',FrmPrincipal.sb.Panels[3].Text,[]);
             if dm.usuariosusuarios.value='5' then
                Atualiza
             else
                limpar;
             PageControl1.ActivePageIndex := 1;
           end;
     end;
end;

procedure TFrmCadProdutos.rbcodigoClick(Sender: TObject);
begin
  edpesquisa.Text:='';
  edpesquisa.SetFocus;
end;

procedure TFrmCadProdutos.BitBtn4Click(Sender: TObject);
begin
  dm.usuarios.Open;
  dm.usuarios.Locate('nome',FrmPrincipal.sb.Panels[3].Text,[]);
  if dm.usuariosparametros.value='5' then
     begin
        if Application.Messagebox ('Confirma Operação?','Inativar Produtos', MB_YESNO+mb_iconquestion) = id_yes then
           begin
              busca := '';
              ClickedOK := InputQuery('Digite Motivo da Operação', 'Inativar Produtos', busca);
              if ClickedOK then
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
                    dm.rastrorotina.Value:='PRODUTOS';
                    dm.rastrooperacao.Value:='A';
                    dm.rastrohistorico.Value:='Produtos Inativados';
                    dm.rastrofavorecido.Value:=0;
                    dm.rastrovalor.Value:=0;
                    dm.rastroobs.Value:=busca;
                    dm.rastro.Post;
                    dm.rastro.Close;

                    P_ativo:='N';
                    qratualizar.close;
                    qratualizar.sql.clear;
                    qratualizar.sql.add('update produtos set');
                    qratualizar.sql.add('ativo = :P_ativo');
                    qratualizar.Params[0].Value := P_ativo;
                    qratualizar.ExecSQL;
                 end;
           end;
     end
     else
        application.MessageBox('Acesso não Permitido','Atenção',mb_ok+MB_ICONINFORMATION);
end;

procedure TFrmCadProdutos.BitBtn6Click(Sender: TObject);
begin
  try
    dm.ZConnection1.Connected:=false;
    dm.ZConnection1.Database:='vieir463_gestor_caramelle';
    dm.ZConnection1.HostName:='vieirasistemas.com.br';
    dm.ZConnection1.User:='vieir463_cliente';
    dm.ZConnection1.Password:='AW3se4DR5ft6*#';
    dm.ZConnection1.Connected:=true;
  except
    application.messagebox('Tente Novamente','Atenção! Sistema Fora do Ar',mb_ok+mb_iconexclamation);
  end;
end;

procedure TFrmCadProdutos.edcomissaoEnter(Sender: TObject);
begin
  edcomissao.Color:=$0080FFFF;
end;

procedure TFrmCadProdutos.edcomissaoExit(Sender: TObject);
begin
  if edcomissao.Text<>'' then
     edcomissao.Text:=formatfloat('0.00',StringToFloat(edcomissao.text));
  edcomissao.Color:=clWindow;
end;

procedure TFrmCadProdutos.AlteraroEstoque1Click(Sender: TObject);
begin
  dm.usuarios.Close;
  dm.usuarios.Open;
  dm.usuarios.Locate('nome',FrmPrincipal.sb.Panels[3].Text,[]);
  if dm.usuariosusuarios.value='5' then
    begin
       if dm.produtos.RecordCount<1 then
          begin
            showmessage('Consulte um Produto!!!');
            Exit;
          end;
       busca := '';
       ClickedOK := InputQuery('Digite o Estoque do Produto', 'Alterar o Estoque do Produto', busca);
       if ClickedOK then
          begin
            antestoque:=dm.produtosestoque.Value;

            qratualizar.close;
            qratualizar.sql.clear;
            qratualizar.SQL.Add('CALL sp_a_produtosest(:p_codigo, :p_estoque)');
            qratualizar.Params[0].Value := dm.produtoscodigo.AsInteger;
            qratualizar.Params[1].Value := StrToFloat(busca);
            qratualizar.ExecSQL;

            qratualizar.Close;
            qratualizar.SQL.Clear;
            qratualizar.SQL.Add('CALL sp_i_rastro(:r_data, :r_hora, :r_operador, :r_rotina, :r_operacao, :r_historico, :r_favorecido, :r_valor, :r_obs)');
            qratualizar.Params[0].Value := date;
            qratualizar.Params[1].Value := TimeToStr(time);
            qratualizar.Params[2].Value := FrmPrincipal.sb.Panels[3].Text;
            qratualizar.Params[3].Value := 'ESTOQUE';
            qratualizar.Params[4].Value := 'A';
            qratualizar.Params[5].Value := 'Estoque Anterior: '+FloatToStr(antestoque)+' - Estoque Atual: '+busca;
            qratualizar.Params[6].Value := dm.produtoscodigo.AsInteger;
            qratualizar.Params[7].Value := 0;
            qratualizar.Params[8].Value := 'Alteração Manual';
            qratualizar.ExecSQL;

            busca := dm.produtoscodigo.AsString;
            dm.produtos.Close;
            dm.produtos.Open;
            dm.produtos.Locate('codigo',busca,[]);
          end;
    end
    else
      application.MessageBox('Contate a Diretoria','Atenção',mb_ok+MB_ICONINFORMATION);
end;

procedure TFrmCadProdutos.AlterarComisso1Click(Sender: TObject);
begin
  dm.usuarios.Close;
  dm.usuarios.Open;
  dm.usuarios.Locate('nome',FrmPrincipal.sb.Panels[3].Text,[]);
  if dm.usuariosusuarios.value='5' then
    begin
       if dm.produtos.RecordCount<1 then
          begin
            showmessage('Consulte um Produto!!!');
            Exit;
          end;
       busca := '';
       ClickedOK := InputQuery('Digite a Comissão do Produto', 'Alterar a Comissão do Produto', busca);
       if ClickedOK then
          begin
            qratualizar.close;
            qratualizar.sql.clear;
            qratualizar.sql.add('update produtos set');
            qratualizar.sql.add('comissao = :busca');
            qratualizar.sql.add('where codigo = '+dm.produtoscodigo.AsString);
            qratualizar.Params[0].Value := busca;
            qratualizar.ExecSQL;

            busca := dm.produtoscodigo.AsString;
            dm.produtos.Close;
            dm.produtos.Open;
            dm.produtos.Locate('codigo',busca,[]);
          end;
    end
    else
      application.MessageBox('Contate a Diretoria','Atenção',mb_ok+MB_ICONINFORMATION);
end;

procedure TFrmCadProdutos.edestoqueExit(Sender: TObject);
begin
  if edestoque.Text='' then
     edestoque.Text:='0';
  Edreferencia.Color:=clWindow;
end;

procedure TFrmCadProdutos.AlterarCdigodoProduto1Click(Sender: TObject);
begin
  dm.usuarios.Close;
  dm.usuarios.Open;
  dm.usuarios.Locate('nome',FrmPrincipal.sb.Panels[3].Text,[]);
  if dm.usuariosusuarios.value='5' then
    begin
       if dm.produtos.RecordCount<1 then
          begin
            showmessage('Consulte um Produto!!!');
            Exit;
          end;
       busca := '';
       ClickedOK := InputQuery('Digite o Código do Produto', 'Alterar o Código do Produto', busca);
       if ClickedOK then
          begin
            qratualizar.close;
            qratualizar.sql.clear;
            qratualizar.sql.add('update produtos set');
            qratualizar.sql.add('codigo = :busca');
            qratualizar.sql.add('where codigo = '+dm.produtoscodigo.AsString);
            qratualizar.Params[0].Value := busca;
            qratualizar.ExecSQL;

            qratualizar.Close;
            qratualizar.SQL.Clear;
            qratualizar.SQL.Add('CALL sp_i_rastro(:r_data, :r_hora, :r_operador, :r_rotina, :r_operacao, :r_historico, :r_favorecido, :r_valor, :r_obs)');
            qratualizar.Params[0].Value := date;
            qratualizar.Params[1].Value := TimeToStr(time);
            qratualizar.Params[2].Value := FrmPrincipal.sb.Panels[3].Text;
            qratualizar.Params[3].Value := 'PRODUTOS';
            qratualizar.Params[4].Value := 'A';
            qratualizar.Params[5].Value := 'Código Anterior: '+dm.produtoscodigo.AsString+' - Código Atual: '+busca;
            qratualizar.Params[6].Value := dm.produtoscodigo.AsInteger;
            qratualizar.Params[7].Value := 0;
            qratualizar.Params[8].Value := 'Alteração Manual';
            qratualizar.ExecSQL;

            busca := dm.produtosnome.AsString;
            dm.produtos.Close;
            dm.produtos.Open;
            dm.produtos.Locate('nome',busca,[]);
          end;
    end
    else
      application.MessageBox('Contate a Diretoria','Atenção',mb_ok+MB_ICONINFORMATION);
end;

end.



