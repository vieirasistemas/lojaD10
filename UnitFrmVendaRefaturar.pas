unit UnitFrmVendaRefaturar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, Grids, DBGrids, StdCtrls, EditAlinhado, ExtCtrls, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, QRCtrls, QuickRpt,
  Unit2, DBClient, StrUtils, DateUtils, jpeg, ECC_Justifica, Buttons,
  Menus;

type
  TFrmVendaRefaturar = class(TForm)
    qratualizar: TZQuery;
    Label1: TLabel;
    Label2: TLabel;
    edValDesconto: TEditAlinh;
    Label4: TLabel;
    edValTotal: TEditAlinh;
    Label10: TLabel;
    edValDinheiro: TEditAlinh;
    Label11: TLabel;
    edValCredito: TEditAlinh;
    edValDebito: TEditAlinh;
    Label12: TLabel;
    Label14: TLabel;
    edValCheque: TEditAlinh;
    Label20: TLabel;
    edValPago: TEditAlinh;
    Label21: TLabel;
    edValTroco: TEditAlinh;
    edValSubtotal: TEditAlinh;
    cdsPagamento: TClientDataSet;
    cdsPagamentoforma: TStringField;
    cdsPagamentovalor: TFloatField;
    cdsPagamentocartao: TIntegerField;
    cdsPagamentoparcela: TIntegerField;
    cdsPagamentovencimento: TDateField;
    cdsPagamentobanco: TIntegerField;
    cdsPagamentoagencia: TStringField;
    cdsPagamentocontacorrente: TStringField;
    Label5: TLabel;
    eddeposito: TEditAlinh;
    qrtotalizar: TZQuery;
    qrtotalizaritens: TLargeintField;
    qrtotalizartotal: TFloatField;
    Label7: TLabel;
    edfaturado: TEditAlinh;
    Label13: TLabel;
    edareceber: TEditAlinh;
    cbem: TComboBox;
    Panel1: TPanel;
    GbPreVenda: TGroupBox;
    edcodbarra: TEdit;
    Memo1: TMemo;
    edqtd: TEdit;
    edunit: TEdit;
    edvalor: TEdit;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    p_venda: TPanel;
    edvendedor: TEdit;
    Panel6: TPanel;
    lbvendedor: TLabel;
    gb1: TGroupBox;
    Label16: TLabel;
    Label3: TLabel;
    editens: TEditAlinh;
    edtotal: TEditAlinh;
    memo_itens: TMemo;
    edcliente: TEdit;
    Panel7: TPanel;
    lbcliente: TLabel;
    Label6: TLabel;
    Image1: TImage;
    Label8: TLabel;
    Label9: TLabel;
    Label15: TLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edValSubtotalExit(Sender: TObject);
    procedure edValDescontoExit(Sender: TObject);
    procedure edPerDescontoExit(Sender: TObject);
    procedure edValTrocoExit(Sender: TObject);
    procedure edValDinheiroExit(Sender: TObject);
    procedure edValCreditoExit(Sender: TObject);
    procedure edValDebitoExit(Sender: TObject);
    procedure edValChequeExit(Sender: TObject);
    procedure edValDinheiroEnter(Sender: TObject);
    procedure eddepositoExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edfaturadoExit(Sender: TObject);
    procedure chcreditoclienteClick(Sender: TObject);
    procedure AberturaCaixa1Click(Sender: TObject);
    procedure Sangria1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FecharCaixa1Click(Sender: TObject);
    procedure Relatrio1Click(Sender: TObject);
    procedure ReforoCaixa1Click(Sender: TObject);
    procedure cbemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edvendedorExit(Sender: TObject);
    procedure edclienteExit(Sender: TObject);
    procedure edclienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edvendedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbemEnter(Sender: TObject);
    procedure edcodbarraExit(Sender: TObject);
    procedure cbemExit(Sender: TObject);
    procedure edvendedorEnter(Sender: TObject);
    procedure edclienteEnter(Sender: TObject);
    procedure edcodbarraEnter(Sender: TObject);
    procedure edqtdExit(Sender: TObject);
    procedure edqtdEnter(Sender: TObject);
    procedure edcodbarraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edunitExit(Sender: TObject);
  private
    function DescontaTaxaCartao( cartao : integer; valor : currency) : currency;
  public
    procedure CalculaTudo(Sender : TObject; SendFocus : boolean = True);
    procedure CalculaDiferenca(Sender : TObject);
    function StringParaFloat(Val : string) : currency;
    procedure LimpaCampos;
//    procedure BaixaTitulosSelecionados(vTotal, vDesconto : currency);
//    procedure GerarParcelasAcordo(venda : string; valor, desconto : currency);
  end;

var
  FrmVendaRefaturar: TFrmVendaRefaturar;
  C_horafec,C_datafec,Caixa,V_Operador,D_codigo_origem,
  vformapagto : string;
  dataparc : Tdate;
  v,P_codigo,intervalo,prazo,i,qtdparc,vlciente : integer;
  C_valorfec,vtotal,saldoparc0,vlrparcela0,vlrcompra0,vlrcheques,vlrcompra,m_vlrcom,
  VlrProduto,qtd,n_pgto,valoratraso,total,vdesconto,pdesconto,vlrparcela,saldoparc : double;
  qryF,qryP : TZQuery;

implementation

uses Unitdm, UnitFrmPrincipal, UnitFrmCadClientesCartao, 
  UnitFuncoes, UnitFrmWelcome, UnitFrmCadClientes, UnitFrmVenda,
  UnitFrmSangria, UnitFrmFechamentoVenda, UnitFrmCadFuncionarios;

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

procedure TFrmVendaRefaturar.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = CHR(13) Then
     Begin
        perform(WM_NextDlgCtl,0,0);
        Key := CHR(0);
     End;
end;

procedure InserirVenda;
begin
  dm.usuarios.Open;
  dm.usuarios.Locate('nome',FrmPrincipal.sb.Panels[3].Text,[]);

  FrmVendaRefaturar.qratualizar.Close;
  FrmVendaRefaturar.qratualizar.SQL.Clear;
  FrmVendaRefaturar.qratualizar.SQL.Add('CALL sp_i_venda(:v_vendaI, :v_cliente, :v_vendedor, :v_subtotal, :v_total, :v_desconto, :v_fechada, :v_data, :v_formapagto, :v_operador)');
  FrmVendaRefaturar.qratualizar.Params[0].Value := FrmVendaRefaturar.p_venda.Caption;
  FrmVendaRefaturar.qratualizar.Params[1].Value := FrmVendaRefaturar.edcliente.Text;
  FrmVendaRefaturar.qratualizar.Params[2].Value := FrmVendaRefaturar.edvendedor.Text;
  if vdesconto>0 then
     begin
       FrmVendaRefaturar.qratualizar.Params[3].Value := (vdesconto/n_pgto)+vtotal;
       FrmVendaRefaturar.qratualizar.Params[4].Value := vtotal;
       FrmVendaRefaturar.qratualizar.Params[5].Value := (vdesconto/n_pgto);
     end
     else
     begin
       FrmVendaRefaturar.qratualizar.Params[3].Value := vtotal;
       FrmVendaRefaturar.qratualizar.Params[4].Value := vtotal;
       FrmVendaRefaturar.qratualizar.Params[5].Value := 0;
     end;
  FrmVendaRefaturar.qratualizar.Params[6].Value := 'S';
  FrmVendaRefaturar.qratualizar.Params[7].Value := date;
  FrmVendaRefaturar.qratualizar.Params[8].Value := vformapagto;
  FrmVendaRefaturar.qratualizar.Params[9].Value := dm.usuarioscodigo.AsInteger;
  FrmVendaRefaturar.qratualizar.ExecSQL;
end;

procedure InserirEstoque;
begin
  dm.movvenda.Close;
  dm.movvenda.SQL.Clear;
  dm.movvenda.SQL.Add('select * from movvenda');
  dm.movvenda.SQL.Add('where vendaI='+chr(39)+FrmVendaRefaturar.p_venda.Caption+chr(39));
  dm.movvenda.Open;

  R_hora:=TimeToStr(time);
  while not dm.movvenda.Eof do
        begin
          qryP              :=  TZQuery.Create(nil);
          qryP.Connection   :=  dm.ZConnection1;
          qryP.SQL.Add('select estoque,undint,comissao from produtos');
          qryP.sql.add('where codigo = '+dm.movvendaproduto.AsString);
          qryP.Open;

          if (FrmVendaRefaturar.edValDesconto.Text<>'') and
             (StrToFloat(FrmVendaRefaturar.edValDesconto.Text)>0) then
             begin
               pdesconto:=(StringToFloat(FrmVendaRefaturar.edValDesconto.Text)/StringToFloat(FrmVendaRefaturar.edValSubtotal.Text))*100;
               if itens>1 then
                  begin
                    vdesconto:=round(dm.movvendatotal.Value*pdesconto)/100;
                    saldodesc:=saldodesc+dm.movestoquedesconto.Value;
                  end
                  else
                    vdesconto:=vlrdesc-saldodesc;
             end
             else
               vdesconto:=0;

          if vdesconto>0 then
             total := (dm.movvendaunit.Value*dm.movvendaqtd.Value)-vdesconto
          else
             total := dm.movvendatotal.Value;

          m_vlrcom := (total*qryP.fieldbyname('comissao').AsFloat)/100;

          FrmVendaRefaturar.qratualizar.Close;
          FrmVendaRefaturar.qratualizar.SQL.Clear;
          FrmVendaRefaturar.qratualizar.SQL.Add('CALL sp_i_movestoque(:m_data, :m_TipoMov, :m_produto, :m_und, :m_qtd, :m_VlrUnit, '+
          ':m_desconto, :m_VlrTotal, :m_documento, :m_favorecido, :m_vendedor, :m_local, :m_vlrcom)');
          FrmVendaRefaturar.qratualizar.Params[0].Value := date;
          FrmVendaRefaturar.qratualizar.Params[1].Value := 'SV';
          FrmVendaRefaturar.qratualizar.Params[2].Value := dm.movvendaproduto.Value;
          FrmVendaRefaturar.qratualizar.Params[3].Value := qryP.fieldbyname('undint').AsString;
          FrmVendaRefaturar.qratualizar.Params[4].Value := dm.movvendaqtd.Value;
          FrmVendaRefaturar.qratualizar.Params[5].Value := dm.movvendaunit.Value;
          FrmVendaRefaturar.qratualizar.Params[6].Value := vdesconto;
          FrmVendaRefaturar.qratualizar.Params[7].Value := total;
          FrmVendaRefaturar.qratualizar.Params[8].Value := FrmVendaRefaturar.p_venda.Caption;
          FrmVendaRefaturar.qratualizar.Params[9].Value := FrmVendaRefaturar.edcliente.Text;
          FrmVendaRefaturar.qratualizar.Params[10].Value := FrmVendaRefaturar.edvendedor.Text;
          FrmVendaRefaturar.qratualizar.Params[11].Value := FrmPrincipal.sb.Panels[7].Text;
          FrmVendaRefaturar.qratualizar.Params[12].Value := m_vlrcom;
          FrmVendaRefaturar.qratualizar.ExecSQL;

          antestoque:=qryP.fieldbyname('estoque').AsFloat-dm.movvendaqtd.Value;

          FrmVendaRefaturar.qratualizar.close;
          FrmVendaRefaturar.qratualizar.sql.clear;
          FrmVendaRefaturar.qratualizar.SQL.Add('CALL sp_a_produtosest(:p_codigo, :p_estoque)');
          FrmVendaRefaturar.qratualizar.Params[0].Value := dm.movvendaproduto.AsInteger;
          FrmVendaRefaturar.qratualizar.Params[1].Value := antestoque;
          FrmVendaRefaturar.qratualizar.ExecSQL;

          FrmVendaRefaturar.qratualizar.Close;
          FrmVendaRefaturar.qratualizar.SQL.Clear;
          FrmVendaRefaturar.qratualizar.SQL.Add('CALL sp_i_rastro(:r_data, :r_hora, :r_operador, :r_rotina, :r_operacao, :r_historico, :r_favorecido, :r_valor, :r_obs)');
          FrmVendaRefaturar.qratualizar.Params[0].Value := date;
          FrmVendaRefaturar.qratualizar.Params[1].Value := R_hora;
          FrmVendaRefaturar.qratualizar.Params[2].Value := FrmPrincipal.sb.Panels[3].Text;
          FrmVendaRefaturar.qratualizar.Params[3].Value := 'ESTOQUE';
          FrmVendaRefaturar.qratualizar.Params[4].Value := 'A';
          FrmVendaRefaturar.qratualizar.Params[5].Value := 'Estoque Anterior: '+qryP.fieldbyname('estoque').AsString+
          ' - Venda: '+dm.movvendaqtd.AsString+' - Estoque Atual: '+FloatToStr(antestoque);
          FrmVendaRefaturar.qratualizar.Params[6].Value := dm.movvendaproduto.AsInteger;
          FrmVendaRefaturar.qratualizar.Params[7].Value := 0;
          FrmVendaRefaturar.qratualizar.Params[8].Value := FrmVendaRefaturar.p_venda.Caption;
          FrmVendaRefaturar.qratualizar.ExecSQL;

          FrmVendaRefaturar.qratualizar.Close;
          FrmVendaRefaturar.qratualizar.SQL.Clear;
          FrmVendaRefaturar.qratualizar.SQL.Add('CALL sp_i_rastro(:r_data, :r_hora, :r_operador, :r_rotina, :r_operacao, :r_historico, :r_favorecido, :r_valor, :r_obs)');
          FrmVendaRefaturar.qratualizar.Params[0].Value := date;
          FrmVendaRefaturar.qratualizar.Params[1].Value := R_hora;
          FrmVendaRefaturar.qratualizar.Params[2].Value := FrmPrincipal.sb.Panels[3].Text;
          FrmVendaRefaturar.qratualizar.Params[3].Value := 'MOV. ESTOQUE';
          FrmVendaRefaturar.qratualizar.Params[4].Value := 'I';
          FrmVendaRefaturar.qratualizar.Params[5].Value := 'SV - QTD: '+FloatToStr(dm.movvendaqtd.Value);
          FrmVendaRefaturar.qratualizar.Params[6].Value := dm.movvendaproduto.Value;
          FrmVendaRefaturar.qratualizar.Params[7].Value := (dm.movvendaunit.Value*dm.movvendaqtd.Value)-
          vdesconto;
          FrmVendaRefaturar.qratualizar.Params[8].Value := FrmVendaRefaturar.p_venda.Caption;
          FrmVendaRefaturar.qratualizar.ExecSQL;

          qryP.Free;

          dm.movvenda.Next;
        end;
end;

procedure FecharVenda;
begin
  if 1 = 1 then
  begin
    texto:='INICIAR REC. VENDA : '+FrmVendaRefaturar.p_venda.Caption;
    R_hora:=TimeToStr(time);
    FrmVendaRefaturar.qratualizar.Close;
    FrmVendaRefaturar.qratualizar.SQL.Clear;
    FrmVendaRefaturar.qratualizar.SQL.Add('CALL sp_i_rastro(:r_data, :r_hora, :r_operador, :r_rotina, :r_operacao, :r_historico, :r_favorecido, :r_valor, :r_obs)');
    FrmVendaRefaturar.qratualizar.Params[0].Value := date;
    FrmVendaRefaturar.qratualizar.Params[1].Value := R_hora;
    FrmVendaRefaturar.qratualizar.Params[2].Value := FrmPrincipal.sb.Panels[3].Text;
    FrmVendaRefaturar.qratualizar.Params[3].Value := 'VENDA';
    FrmVendaRefaturar.qratualizar.Params[4].Value := 'I';
    FrmVendaRefaturar.qratualizar.Params[5].Value := texto;
    FrmVendaRefaturar.qratualizar.Params[6].Value := FrmVendaRefaturar.edcliente.Text;
    FrmVendaRefaturar.qratualizar.Params[7].Value := StringToFloat(FrmVendaRefaturar.edValTotal.Text);
    FrmVendaRefaturar.qratualizar.Params[8].Value := '';
    FrmVendaRefaturar.qratualizar.ExecSQL;

    vlciente:=StrToInt(FrmVendaRefaturar.edcliente.Text);

    dm.parametros.Close;
    dm.parametros.Open;

    dm.formapagto.Close;
    dm.formapagto.SQL.Clear;
    dm.formapagto.SQL.Add('select * from formapagto');
    dm.formapagto.open;

    with FrmVendaRefaturar do
    begin
      cdsPagamento.First;

      while not(cdsPagamento.Eof) do
      begin
        dm.formapagto.Locate('codigo', cdsPagamentoforma.Value, []);

        if (cdsPagamentoforma.Value = 'CC') or (cdsPagamentoforma.Value = 'CD') or (cdsPagamentoforma.Value = 'SD') then
        begin
          vlrcheques              :=  0;
          vlrcompra               :=  cdsPagamentovalor.Value;
          qtdparc                 :=  cdsPagamentoparcela.Value;
          vlrparcela              :=  trunc(vlrcompra/qtdparc*100)/100;
          saldoparc               :=  vlrcompra-vlrparcela*qtdparc;
          dataparc                :=  date;

          if
            1 = 1
          then
          begin
            vlrcompra0            :=  FrmVendaRefaturar.DescontaTaxaCartao(
              cdsPagamentocartao.Value,
              cdsPagamentovalor.Value
            );

            vlrparcela0           :=  trunc(vlrcompra0/qtdparc*100)/100;
            saldoparc0            :=  vlrcompra0-vlrparcela0*qtdparc;
          end;

          dm.docreceber.Close;
          dm.docreceber.SQL.Clear;
          dm.docreceber.SQL.Add('select * from docreceber');
          dm.docreceber.SQL.Add('where (doc = '+chr(39)+FrmVendaRefaturar.p_venda.Caption+chr(39)+')');
          dm.docreceber.SQL.Add('and (tipo = '+chr(39)+cdsPagamentoforma.Value+chr(39)+')');
          dm.docreceber.SQL.Add('and (emissao = '+chr(39)+copy(DateToStr(date),7,4)+'/'+
          copy(DateToStr(date),4,2)+'/'+copy(DateToStr(date),1,2)+chr(39)+')');
          dm.docreceber.Open;
          if dm.docreceber.RecordCount<1 then
             begin
              for i:=1 to qtdparc do
              begin
                dm.docreceber.Insert;

                if
                  (cdsPagamentoforma.Value='CC') or
                  (cdsPagamentoforma.Value='CD')
                then
                begin
                  dm.clientes.close;
                  dm.clientes.sql.clear;
                  dm.clientes.sql.add('select * from clientes');
                  dm.clientes.sql.add('where codigo = '+IntToStr(cdsPagamentocartao.Value));
                  dm.clientes.open;
                  dm.docrecebercliente.Value:=cdsPagamentocartao.Value;

                  if i=1 then
                    dm.docrecebervalor.Value:=vlrparcela+saldoparc
                  else
                    dm.docrecebervalor.Value:=vlrparcela;

                  dataparc:=dataparc+dm.clientesdias.Value;
                  dm.docrecebervencto.Value:=dataparc;
                  dm.docreceberliquido.Value:=dm.docrecebervalor.Value-
                  ((dm.docrecebervalor.Value*dm.clientesperc.Value)/100);
                  dm.docreceberobs.Value:='CLIENTE: '+FrmVendaRefaturar.lbcliente.Caption+' - '+FrmVendaRefaturar.edcliente.Text;

                end
                else
                begin
                  dm.docrecebercliente.Value:=vlciente;

                  intervalo:=0;

                  prazo:=0;

                  if i=1 then
                  begin
                    dataparc:=date+dm.formapagtodias.Value;
                    dia:=copy(DateTimeToStr(dataparc),1,2);
                  end
                  else
                    dataparc:=dataparc+intervalo;

                  dm.docrecebervencto.Value:=dataparc;
                  dm.docreceberliquido.Value:=dm.docrecebervalor.Value;
                end;

                dm.docrecebertipo.Value:=cdsPagamentoforma.Value;

                if qtdparc=1 then
                  dm.docreceberdoc.Value:=FrmVendaRefaturar.p_venda.Caption
                else
                  dm.docreceberdoc.Value:=FrmVendaRefaturar.p_venda.Caption+'-'+IntToStr(i);

                dm.docreceberemissao.Value:=date;

                if cdsPagamentoforma.Value='BB' then
                  dm.docreceberlocalcob.Value:=dm.parametroscontabanco.Value;

                dm.docreceber.Post;
              end;
             end;
          dm.docreceber.Close;
        end;

        cdsPagamento.Next;
      end;
    end;
  end;

    vtotal:=StringToFloat(FrmVendaRefaturar.edValTotal.Text);

    if FrmVendaRefaturar.edValDesconto.Text<>'' then
      vdesconto:=StringToFloat(FrmVendaRefaturar.edValDesconto.Text)
    else
      vdesconto:=0;

    total:=vtotal+vdesconto;

    if (StringToFloat(FrmVendaRefaturar.edValDinheiro.Text) > 0) then
       begin
         vformapagto:= 'AV';
         vtotal     := StringToFloat(FrmVendaRefaturar.edValDinheiro.Text)-StringToFloat(FrmVendaRefaturar.edValTroco.Text);
         qtdparc    := 1;
         InserirVenda;
       end;

    if (StringToFloat(FrmVendaRefaturar.edValCredito.Text) > 0) then
       begin
         vformapagto:='CC';
         vtotal     :=StringToFloat(FrmVendaRefaturar.edValCredito.Text);
         InserirVenda;
       end;

    if (StringToFloat(FrmVendaRefaturar.edValDebito.Text) > 0) then
       begin
         vformapagto:='CD';
         vtotal     :=StringToFloat(FrmVendaRefaturar.edValDebito.Text);
         qtdparc    := 1;
         InserirVenda;
       end;

    if (StringToFloat(FrmVendaRefaturar.edValCheque.Text) > 0) then
       begin
         vformapagto:='CA';
         vtotal     :=StringToFloat(FrmVendaRefaturar.edValCheque.Text);
         qtdparc    := 1;
         InserirVenda;
       end;

    if (StringToFloat(FrmVendaRefaturar.eddeposito.Text) > 0) then
       begin
         vformapagto:='PI';
         vtotal     :=StringToFloat(FrmVendaRefaturar.eddeposito.Text);
         qtdparc    := 1;
         InserirVenda;
       end;

    if (StringToFloat(FrmVendaRefaturar.edfaturado.Text) > 0) then
       begin
         vformapagto:='SD';
         vtotal     :=StringToFloat(FrmVendaRefaturar.edfaturado.Text);
         qtdparc    := 1;
         InserirVenda;
       end;

    InserirEstoque;

    texto:='FINALIZAR REC. VENDA : '+FrmVendaRefaturar.p_venda.Caption;
    R_hora:=TimeToStr(time);
    FrmVendaRefaturar.qratualizar.Close;
    FrmVendaRefaturar.qratualizar.SQL.Clear;
    FrmVendaRefaturar.qratualizar.SQL.Add('CALL sp_i_rastro(:r_data, :r_hora, :r_operador, :r_rotina, :r_operacao, :r_historico, :r_favorecido, :r_valor, :r_obs)');
    FrmVendaRefaturar.qratualizar.Params[0].Value := date;
    FrmVendaRefaturar.qratualizar.Params[1].Value := R_hora;
    FrmVendaRefaturar.qratualizar.Params[2].Value := FrmPrincipal.sb.Panels[3].Text;
    FrmVendaRefaturar.qratualizar.Params[3].Value := 'VENDA';
    FrmVendaRefaturar.qratualizar.Params[4].Value := 'I';
    FrmVendaRefaturar.qratualizar.Params[5].Value := texto;
    FrmVendaRefaturar.qratualizar.Params[6].Value := FrmVendaRefaturar.edcliente.Text;
    FrmVendaRefaturar.qratualizar.Params[7].Value := StringToFloat(FrmVendaRefaturar.edValTotal.Text);
    FrmVendaRefaturar.qratualizar.Params[8].Value := '';
    FrmVendaRefaturar.qratualizar.ExecSQL;

    FrmVendaRefaturar.LimpaCampos;
    FrmVendaRefaturar.p_venda.Caption           :=  '';
    FrmVendaRefaturar.edvendedor.Text           :=  '';
    FrmVendaRefaturar.lbvendedor.Caption        :=  '';
    FrmVendaRefaturar.edcliente.Text            :=  '';
    FrmVendaRefaturar.lbcliente.Caption         :=  '';
    FrmVendaRefaturar.editens.Text              :=  '';
    FrmVendaRefaturar.edtotal.Text              :=  '';
    FrmVendaRefaturar.memo_itens.Lines.Clear;

    FrmVendaRefaturar.edvendedor.SetFocus;
end;

procedure ReconectarBD;
begin
  dm.ZConnection1.Connected:=false;
  while dm.ZConnection1.Connected=false do
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
end;

function TFrmVendaRefaturar.DescontaTaxaCartao(cartao: integer;
  valor: currency): currency;

  var
    sql : TZQuery;

begin
  try
    sql                     :=  TZQuery.Create(nil);
    sql.Connection          :=  dm.ZConnection1;
    sql.SQL.Add('Select perc From clientes Where codigo = ' + IntToStr(cartao));
    sql.Open;

    Result                  :=
      valor - (valor * (sql.FieldByName('perc').AsCurrency/100));
  finally
    sql.Free;
  end;
end;

procedure TFrmVendaRefaturar.CalculaTudo(Sender : TObject; SendFocus : boolean = True);
  var
    valSubtotal,
    valDesconto,
    valTotal,
    perDesconto,
    valDinheiro,
    valDeposito,
    valCredito,
    valPermulta,
    valCreditoCliente,
    valFaturado,
    valDebito,
    valCheque,
    valPago,
    valTroco : currency;
begin
  valSubtotal               :=  StringParaFloat(edValSubtotal.Text);
  valDesconto               :=  StringParaFloat(edValDesconto.Text);
  valTotal                  :=  StringParaFloat(edValTotal.Text);
  valDinheiro               :=  StringParaFloat(edValDinheiro.Text);
  valDeposito               :=  StringParaFloat(eddeposito.Text);
  valCredito                :=  StringParaFloat(edValCredito.Text);
  valDebito                 :=  StringParaFloat(edValDebito.Text);
  valFaturado               :=  StringParaFloat(edfaturado.Text);
  valCheque                 :=  StringParaFloat(edValCheque.Text);
  valPago                   :=  StringParaFloat(edValPago.Text);
  valTroco                  :=  StringParaFloat(edValTroco.Text);

  valTotal                  :=
    valSubtotal - valDesconto;

  edValTotal.Text           :=  FormatFloat('#,##0.00', valTotal);

  valPago                   :=
    valDinheiro + valDeposito + valCredito + valPermulta + valCreditoCliente + valDebito + valCheque + valFaturado;

  edValPago.Text            :=  FormatFloat('#,##0.00', valPago);

  if ((valPago - valTotal) >= 0) then
    edValTroco.Text           :=  FormatFloat('#,##0.00', valPago - valTotal)
  else
    edValTroco.Text           :=  '0,00';

//  if
//    (valPago >= valTotal) and
//    ((Sender as TWinControl).Tag > 999) and
//    (SendFocus)
//  then
//    edvaltroco.SetFocus;

  if (Sender is TEditAlinh) then
    (Sender as TEditAlinh).Text   :=
      FormatFloat('#,##0.00', StringParaFloat((Sender as TEditAlinh).Text));
end;

function TFrmVendaRefaturar.StringParaFloat(Val: string): currency;
begin
  Result                    :=
    StrToFloatDef(StringReplace(Val, '.', '', [rfReplaceAll]), 0);
end;

procedure TFrmVendaRefaturar.edValSubtotalExit(Sender: TObject);
begin
  CalculaTudo(Sender);
end;

procedure TFrmVendaRefaturar.edValDescontoExit(Sender: TObject);
begin
  dm.parametros.Open;

  if (StringParaFloat(edValDesconto.Text) < 0) then
  begin
    ShowMessage('Desconto inv�lido!');
    edValDesconto.SetFocus;
    Exit;
  end;

  if (StringParaFloat(edValDesconto.Text) > 0) then
  begin
    dm.usuarios.Close;
    dm.usuarios.Open;
    dm.usuarios.Locate('nome',frmprincipal.sb.Panels[3].Text,[]);
    if (dm.usuariosfinanceiro.value='5') {or (dm.usuariosacesso_diretoria.value='T') }then
       begin
         edValDinheiro.Text  :=  '0,00';
         edValCredito.Text   :=  '0,00';
         edValDebito.Text    :=  '0,00';
         edValCheque.Text    :=  '0,00';

         CalculaTudo(Sender);

         edValDinheiro.SetFocus;

         V_Operador:=Caixa;
         frmprincipal.sb.Panels[3].Text:=V_Operador;
       end
       else
       begin
          if
            ((StringParaFloat(edValDesconto.Text) / StringParaFloat(edValSubtotal.Text))*100) >
            dm.parametrosDescMax.Value then
            begin
              if ( Application.MessageBox( 'Desconto Superior ao Permitido.' + #13 +
                 'Deseja Prosseguir?', 'Aten��o! Contate a Ger�ncia',
                 MB_ICONQUESTION + MB_YESNO ) = IDYES ) then
                 begin
                   try
                      V_Operador:=Caixa;
                      Application.CreateForm(TFrmWelcome, FrmWelcome);
                      FrmWelcome.Caption:='Login Administrador';
                      FrmWelcome.showmodal;
                   finally
                      FrmWelcome.Release;
                      FrmWelcome:=nil;
                   end;
                 end;
              edValDesconto.SelStart:=0;
              edValDesconto.SelLength:=length(edValDesconto.Text);
              edValDesconto.SetFocus;
            end
            else
            begin
              frmprincipal.sb.Panels[3].Text:=Caixa;
              edValDinheiro.Text  :=  '0,00';
              edValCredito.Text   :=  '0,00';
              edValDebito.Text    :=  '0,00';
              edValCheque.Text    :=  '0,00';

              CalculaTudo(Sender);

              edValDinheiro.SetFocus;
            end;
       end;
  end;

  CalculaTudo(Sender);
end;

procedure TFrmVendaRefaturar.edPerDescontoExit(Sender: TObject);
begin
{  dm.parametros.Open;

  if (StringParaFloat(edPerDesconto.Text) < 0) then
  begin
    ShowMessage('Desconto inv�lido!');
    edPerDesconto.SetFocus;
    Exit;
  end;

  if (StringParaFloat(edPerDesconto.Text) > 0) then
  begin
    if
      ((StringParaFloat(edPerDesconto.Text))) >
      dm.parametrosDescMax.Value
    then
    begin
      ShowMessage('Desconto superior ao permitido!');

      try
        Application.CreateForm(TFrmWelcome, FrmWelcome);
        FrmWelcome.ShowModal;
      finally
        if (FrmWelcome.descmax > 0) then
        begin
          if
            ((StringParaFloat(edPerDesconto.Text))) > FrmWelcome.descmax
          then
          begin
            ShowMessage('Desconto superior ao permitido!');
            edPerDesconto.SetFocus;
            Abort;
          end
          else
          begin
            edValDesconto.Text                :=
              FormatFloat('#,##0.00',
                StringParaFloat(edValSubtotal.Text) * (StringParaFloat(edPerDesconto.Text)/100)
              );

            edValDinheiro.Text  :=  '0,00';
            edValCredito.Text   :=  '0,00';
            edValDebito.Text    :=  '0,00';
            edValCheque.Text    :=  '0,00';

            CalculaTudo(Sender);

            edValDinheiro.SetFocus;
          end;
        end
        else
        begin
          edPerDesconto.SetFocus;
          Abort;
        end;

        FrmWelcome.Release;
        FrmWelcome                     :=  nil;
      end;
    end
    else
    begin
      edValDesconto.Text                :=
        FormatFloat('#,##0.00',
          StringParaFloat(edValSubtotal.Text) * (StringParaFloat(edPerDesconto.Text)/100)
        );

      edValDinheiro.Text  :=  '0,00';
      edValCredito.Text   :=  '0,00';
      edValDebito.Text    :=  '0,00';
      edValCheque.Text    :=  '0,00';

      CalculaTudo(Sender);

      edValDinheiro.SetFocus;
    end;
  end
  else
    edValDesconto.Text                :=  '0,00';

  CalculaTudo(Sender);
}
end;

procedure TFrmVendaRefaturar.edValTrocoExit(Sender: TObject);
begin
  if (StringParaFloat(edValPago.Text) > 0) and (StringParaFloat(edValPago.Text) >= StringParaFloat(edValTotal.Text)) then
  begin
    if
      Application.MessageBox(
        'Finalizar Atendimento ?',
        'Aten��o',
        MB_YESNO + MB_DEFBUTTON2 + MB_ICONQUESTION
      ) = mrYes
    then
      FecharVenda
    else
    begin

//      LimpaCampos;
      edValTroco.SetFocus;
    end;
  end;
end;

procedure TFrmVendaRefaturar.LimpaCampos;
begin
  edValSubtotal.Text        :=  '0,00';
  edValDesconto.Text        :=  '0,00';
  edValTotal.Text           :=  '0,00';
  edareceber.Text           :=  '0,00';
  edValDinheiro.Text        :=  '0,00';
  edfaturado.Text           :=  '0,00';
  eddeposito.Text           :=  '0,00';
  edValCredito.Text         :=  '0,00';
  edValDebito.Text          :=  '0,00';
  edValCheque.Text          :=  '0,00';
  edValPago.Text            :=  '0,00';
  edValTroco.Text           :=  '0,00';
end;

procedure TFrmVendaRefaturar.edValDinheiroExit(Sender: TObject);
begin
  CalculaTudo(Sender);

  if (StringParaFloat(edValDinheiro.Text) > 0) then
  begin
    n_pgto:=n_pgto+1;
    if (cdsPagamento.Locate('forma', 'AV', [])) then
      cdsPagamento.Edit
    else
      cdsPagamento.Append;

    cdsPagamentoforma.Value           :=  'AV';
    cdsPagamentovalor.Value           :=  StringParaFloat(edValDinheiro.Text);
    cdsPagamentocartao.Value          :=  0;
    cdsPagamentoparcela.Value         :=  1;
    cdsPagamentovencimento.Value      :=  Date;

    cdsPagamento.Post;
  end
  else
  begin
    if (cdsPagamento.Locate('forma', 'AV', [])) then
      cdsPagamento.Delete;
  end;
end;

procedure TFrmVendaRefaturar.edValCreditoExit(Sender: TObject);
begin
  CalculaTudo(Sender);

  if (StringParaFloat(edValCredito.Text) > 0) then
  begin
    n_pgto:=n_pgto+1;

    if (cdsPagamento.Locate('forma', 'CC', [])) then
      cdsPagamento.Edit
    else
      cdsPagamento.Append;

    cdsPagamentoforma.Value           :=  'CC';
    cdsPagamentovalor.Value           :=  StringParaFloat(edValCredito.Text);
    cdsPagamentocartao.Value          :=  9017;//CART�O CREDITO
    cdsPagamentoparcela.Value         :=  1;
    cdsPagamentovencimento.Value      :=  Date;

    cdsPagamento.Post;
  end
  else
  begin
    if (cdsPagamento.Locate('forma', 'CC', [])) then
      cdsPagamento.Delete;
  end;

{
  if (StringParaFloat(edValCredito.Text) > 0) then
  begin
    n_pgto:=n_pgto+1;
    try
      Application.CreateForm(TFrmAPrazo, FrmAPrazo);

//      FrmPrincipal.GetSkin(FrmAPrazo);

      FrmAPrazo.lbForma.Caption       :=  'CART�O DE CR�DITO';
      FrmAPrazo.lbValor.Caption       :=  edValCredito.Text;
      FrmAPrazo.edParcelas.Text       :=  '1';

      FrmPrincipal.LoadList(
        FrmAPrazo.cbBandeira.Items,
        'select nome from clientes where clientes.tipo = "C" order by nome'
      );

      FrmAPrazo.ShowModal;
    finally
      if (FrmAPrazo.ModalResult = mrOk) then
      begin
        if (cdsPagamento.Locate('forma', 'CC', [])) then
          cdsPagamento.Edit
        else
          cdsPagamento.Append;

        cdsPagamentoforma.Value           :=  'CC';
        cdsPagamentovalor.Value           :=  StringParaFloat(edValCredito.Text);
        cdsPagamentocartao.Value          :=  FrmAPrazo.qryGeral.FieldByName('codigo').AsInteger;
        cdsPagamentoparcela.Value         :=  StrToInt(FrmAPrazo.edParcelas.Text);
        cdsPagamentovencimento.Value      :=  Date;

        cdsPagamento.Post;
      end
      else
      begin
        ShowMessage('Preencha corretamente as informa��es' + sLineBreak + 'de pagamento!');
        edValCredito.SetFocus;
      end;

      FrmAPrazo.Release;
      FrmAPrazo             :=  nil;
    end;
  end
  else
  begin
    if (cdsPagamento.Locate('forma', 'CC', [])) then
    begin
      cdsPagamento.First;

      while not(cdsPagamento.Eof) do
      begin
        if cdsPagamentoforma.Value = 'CC' then
          cdsPagamento.Delete;

        cdsPagamento.Next;
      end;
    end;
  end;
}
end;

procedure TFrmVendaRefaturar.edValDebitoExit(Sender: TObject);
begin
  CalculaTudo(Sender);

  if (StringParaFloat(edValDebito.Text) > 0) then
  begin
    n_pgto:=n_pgto+1;

    if (cdsPagamento.Locate('forma', 'CD', [])) then
      cdsPagamento.Edit
    else
      cdsPagamento.Append;

    cdsPagamentoforma.Value           :=  'CD';
    cdsPagamentovalor.Value           :=  StringParaFloat(edValDebito.Text);
    cdsPagamentocartao.Value          :=  9018;//CART�O DEBITO
    cdsPagamentoparcela.Value         :=  1;
    cdsPagamentovencimento.Value      :=  Date;

    cdsPagamento.Post;
  end
  else
  begin
    if (cdsPagamento.Locate('forma', 'CD', [])) then
      cdsPagamento.Delete;
  end;
{
    try
      Application.CreateForm(TFrmAPrazo, FrmAPrazo);
      FrmAPrazo.lbForma.Caption       :=  'CART�O DE D�BITO';
      FrmAPrazo.lbValor.Caption       :=  edValDebito.Text;
      FrmAPrazo.edParcelas.Text       :=  '1';
      FrmAPrazo.edParcelas.Enabled    :=  False;

      FrmPrincipal.LoadList(
        FrmAPrazo.cbBandeira.Items,
        'select nome from clientes where clientes.tipo = "C" order by nome'
      );

      FrmAPrazo.ShowModal;
    finally
      if (FrmAPrazo.ModalResult = mrOk) then
      begin
        if (cdsPagamento.Locate('forma', 'CD', [])) then
          cdsPagamento.Edit
        else
          cdsPagamento.Append;

        cdsPagamentoforma.Value           :=  'CD';
        cdsPagamentovalor.Value           :=  StringParaFloat(edValDebito.Text);
        cdsPagamentocartao.Value          :=  FrmAPrazo.qryGeral.FieldByName('codigo').AsInteger;
        cdsPagamentoparcela.Value         :=  StrToInt(FrmAPrazo.edParcelas.Text);
        cdsPagamentovencimento.Value      :=  Date;

        cdsPagamento.Post;
      end
      else
      begin
        ShowMessage('Preencha corretamente as informa��es' + sLineBreak + 'de pagamento!');
        edValDebito.SetFocus;
      end;

      FrmAPrazo.Release;
      FrmAPrazo             :=  nil;
    end;
  end
  else
  begin
    if (cdsPagamento.Locate('forma', 'CD', [])) then
    begin
      cdsPagamento.First;

      while not(cdsPagamento.Eof) do
      begin
        if cdsPagamentoforma.Value = 'CD' then
          cdsPagamento.Delete;

        cdsPagamento.Next;
      end;
    end;
  end;
}
end;

procedure TFrmVendaRefaturar.edValChequeExit(Sender: TObject);
begin
  CalculaTudo(Sender);

  if (StringParaFloat(edValCheque.Text) > 0) then
  begin
    n_pgto:=n_pgto+1;
    if (cdsPagamento.Locate('forma', 'CA', [])) then
      cdsPagamento.Edit
    else
      cdsPagamento.Append;

    cdsPagamentoforma.Value           :=  'CA';
    cdsPagamentovalor.Value           :=  StringParaFloat(edValCheque.Text);
    cdsPagamentocartao.Value          :=  0;
    cdsPagamentoparcela.Value         :=  1;
    cdsPagamentovencimento.Value      :=  Date;

    cdsPagamento.Post;
  end
  else
  begin
    if (cdsPagamento.Locate('forma', 'CA', [])) then
      cdsPagamento.Delete;
  end;
end;

procedure TFrmVendaRefaturar.CalculaDiferenca(Sender: TObject);
begin
  if (StringParaFloat((Sender as TEditAlinh).Text) <= 0) then
  begin
    (Sender as TEditAlinh).Text         :=
      FormatFloat('#,##0.00', StringParaFloat(edValTotal.Text) - StringParaFloat(edValPago.Text));

    if (StringParaFloat((Sender as TEditAlinh).Text) < 0) then
      (Sender as TEditAlinh).Text         :=  '0,00';

    (Sender as TEditAlinh).SelStart       :=  0;
    (Sender as TEditAlinh).SelLength      :=  50;
  end;
end;

procedure TFrmVendaRefaturar.edValDinheiroEnter(Sender: TObject);
begin
  CalculaDiferenca(Sender);
end;
{
procedure TFrmVendaRefaturar.BaixaTitulosSelecionados(vTotal, vDesconto : currency);
  var
    vPago : double;
    codigo,dPgto,vobs,
    vtipo_pg,vOrigem: string;
begin
  dm.movprodutos.Close;
  dm.movprodutos.SQL.Clear;
  dm.movprodutos.SQL.Add('select * from movprodutos');
  dm.movprodutos.SQL.Add('where (vendaI = '+chr(39)+FrmVendaRefaturar.vendavendaI.Value+chr(39)+')');
  dm.movprodutos.Open;

  dm.clientes_acordo.Close;
  dm.clientes_acordo.SQL.Clear;
  dm.clientes_acordo.SQL.Add('Select * From clientes_acordo Where cliente = ' + IntToStr(dm.vendacliente.Value));
  dm.clientes_acordo.SQL.Add('and venda = '+chr(39)+dm.vendavendaI.Value+chr(39));
  dm.clientes_acordo.Open;
  if dm.clientes_acordotipo.Value = 'R' then
     vOrigem:='RE'
  else if dm.clientes_acordotipo.Value = 'A' then
     vOrigem:='AC'
  else
     vOrigem:='';

  D_codigo_origem  :=  dm.clientes_acordocodigo.Value;
  while not(dm.movprodutos.Eof) do
  begin
//    if (dm.movprodutosproduto.Value = -1) then
//    begin
      codigo                :=  IntToStr(dm.movprodutosid_receber.Value);

      if vOrigem='' then
         begin
            if (StringToFloat(edPerDesconto.Text) > 0) then
               vPago               :=  dm.movprodutosvalor.Value-((dm.movprodutosvalor.Value * StringToFloat(edPerDesconto.Text)/100))
            else
               vPago               :=  dm.movprodutosvalor.Value
         end
         else
           vPago                 :=  0.00;

      if dm.vendaobs.Value='CB' then
         vtipo_pg:='CB'
      else
         vtipo_pg:='PN';

      dPgto:=copy(DateToStr(date),7,4)+'/'+
      copy(DateToStr(date),4,2)+'/'+copy(DateToStr(date),1,2);

      if dm.vendaobs.Value='CB' then
         vobs     :=  'TITULO LIQUIDADO VIA CB.'
      else if vOrigem='RE' then
         vobs     :=  'TITULO LIQUIDADO VIA REC.'
      else if vOrigem='AC' then
         vobs     :=  'TITULO LIQUIDADO VIA AC.'
      else
         vobs     :=  'TITULO LIQUIDADO AUTOMATICAMENTE';
      dm.contascorrente.open;
      if dm.contascorrente.Locate('descricao',FrmVendaRefaturar.cbconta.text,[]) then
         D_conta:=dm.ContasCorrenteconta.Value;
      D_docorigem:=dm.vendavendaI.Value;

       qratualizar.close;
       qratualizar.sql.clear;
       qratualizar.sql.add('update docreceber set');
       qratualizar.sql.add('pgto = :dPgto,');
       qratualizar.sql.add('valorpago = :vPago,');
       qratualizar.sql.add('tipo_pg = :vtipo_pg,');
       qratualizar.sql.add('obs = :vobs,');
       qratualizar.sql.add('codigo_origem = :D_codigo_origem,');
       qratualizar.sql.add('conta = :D_conta,');
       if vOrigem<>'' then
          begin
            qratualizar.sql.add('docorigem = :D_docorigem,');
            qratualizar.sql.add('origem = :vOrigem');
          end
          else
            qratualizar.sql.add('docorigem = :D_docorigem');
       qratualizar.SQL.Add('where cod ='+codigo);
       qratualizar.Params[0].Value := dPgto;
       qratualizar.Params[1].Value := vPago;
       qratualizar.Params[2].Value := vtipo_pg;
       qratualizar.Params[3].Value := vobs;
       qratualizar.Params[4].Value := D_codigo_origem;
       qratualizar.Params[5].Value := D_conta;
       if vOrigem<>'' then
          begin
            qratualizar.Params[6].Value := D_docorigem;
            qratualizar.Params[7].Value := vOrigem;
          end
          else
            qratualizar.Params[6].Value := D_docorigem;
       qratualizar.ExecSQL;

       dm.docreceber.Close;
       dm.docreceber.SQL.Clear;
       dm.docreceber.SQL.Add('Select * From docreceber');
       dm.docreceber.SQL.Add('where (cod = '+IntToStr(dm.movprodutosid_receber.Value)+')');
       dm.docreceber.Open;
       if dm.docreceber.RecordCount>0 then
          texto:='TITULO: '+codigo+' - Atendimento: '+dm.vendavendaI.Value+' - Vencto: '+
          DateToStr(dm.docrecebervencto.value)+' - Origem: '+dm.docreceberorigem.Value
       else
          texto:='TITULO: '+codigo+' - Atendimento: '+dm.vendavendaI.Value;
       InsereRastro(
         'DOC. RECEBER','B',
         texto,
         dm.vendacliente.Value,
         vPago,
         FrmVendaRefaturar.vendanome.Value
       );
    //end;

    dm.movprodutos.Next;
  end;
end;

procedure TFrmVendaRefaturar.GerarParcelasAcordo(venda: string; valor, desconto : currency);
  var
    i : integer;
    v : TDate;
    d,
    m,
    a : string;
begin

  dm.clientes_acordo.Close;
  dm.clientes_acordo.SQL.Clear;
  dm.clientes_acordo.SQL.Add('Select * From clientes_acordo');
  dm.clientes_acordo.SQL.Add('Where(venda = "'+ venda +'")');
  dm.clientes_acordo.Open;

  if (dm.clientes_acordocodigo.Value > 0) then
  begin
    dm.docreceber.Close;
    dm.docreceber.SQL.Clear;
    dm.docreceber.SQL.Add('select * from docreceber');
    dm.docreceber.SQL.Add('where (cliente = '+IntToStr(dm.vendacliente.Value)+')');
    dm.docreceber.SQL.Add('and (doc = '+chr(39)+venda+chr(39)+')');
    dm.docreceber.Open;
    if dm.docreceber.RecordCount<1 then
       begin
          dm.docreceber.Close;
          dm.docreceber.SQL.Clear;
          dm.docreceber.SQL.Add('Select * From docreceber Where 1 = 2');
          dm.docreceber.Open;

          dm.docreceber.Insert;

          dm.docrecebercliente.Value        :=  dm.clientes_acordocliente.Value;
          dm.docrecebertipo.Value           :=  'OU';
          dm.docreceberdoc.Value            :=  dm.clientes_acordovenda.Value;
          dm.docreceberemissao.Value        :=  Date;
          dm.docrecebervencto.Value         :=  dm.clientes_acordovencto1.Value;
          dm.docrecebervalor.Value          :=  dm.clientes_acordoentrada.Value;
          dm.docreceberdesconto.Value       :=  desconto;
          dm.docreceberliquido.Value        :=  dm.docrecebervalor.Value - desconto;
          dm.docreceberpgto.Value           :=  Date;
          dm.docrecebervalorpago.Value      :=  valor;
          dm.docreceberorigem.Value         :=  IfThen(dm.clientes_acordotipo.Value = 'A', 'AC', 'RE');
          if (vformapagto='CC') or (vformapagto='CD') or (vformapagto='FD') then
             begin
//               showmessage(vformapagto);
               dm.docrecebertipo_pg.Value        :=  vformapagto;
               if vformapagto='FD' then
                  dm.docreceberconta.Value          :=  'BB'
               else
                  dm.docreceberconta.Value          :=  'CCD';
             end
             else
             begin
               dm.docrecebertipo_pg.Value        :=  'PN';
               dm.contascorrente.open;
               if dm.contascorrente.Locate('descricao',FrmVendaRefaturar.cbconta.text,[]) then
                  D_conta:=dm.ContasCorrenteconta.Value;
//               dm.docreceberconta.Value          :=  'CXA';
             end;
          dm.docrecebertipo_titulo.Value    :=  'P';
          dm.docrecebercodigo_origem.Value  :=  dm.clientes_acordocodigo.Value;
          dm.docreceber.Post;

          d                                   :=  FormatDateTime('dd', dm.clientes_acordovencto1.Value);
          m                                   :=  FormatDateTime('mm', dm.clientes_acordovencto1.Value);
          a                                   :=  FormatDateTime('yyyy', dm.clientes_acordovencto1.Value);

          m                                 :=  FormatFloat('00', StrToInt(m) + 1);

          if (StrToInt(m) > 12) then
          begin
            m                               :=  '01';
            a                               :=  FormatFloat('0000', StrToInt(a) + 1);
          end;

          for i := 1 to dm.clientes_acordoparcelas.Value do
          begin
            if (StrToInt(d) > 28) then
            begin
              if (StrToInt(m) = 2) then
              begin
                if (StrToInt(d) > 29) then
                begin
                  v                           :=
                    StrToDate(
                      FormatFloat('00', DaysInMonth(StrToDate('01/' + m + '/' + a))) + '/' + m + '/' + a
                    );
                end
                else
                begin
                  v                           :=
                    StrToDate(
                      FormatFloat('00', DaysInMonth(StrToDate('01/' + m + '/' + a))) + '/' + m + '/' + a
                    );
                end
              end
              else
              if (StrToInt(d) > 30) then
              begin
                if (StrToInt(d) > DaysInMonth(StrToDate('01/' + m + '/' + a))) then
                begin
                  v                           :=
                    StrToDate(
                      FormatFloat('00', DaysInMonth(StrToDate('01/' + m + '/' + a))) + '/' + m + '/' + a
                    );
                end
                else
                  v                               :=
                    StrToDate(d + '/' + m + '/' + a);
              end
              else
                v                               :=
                  StrToDate(d + '/' + m + '/' + a);
            end
            else
              v                               :=
                StrToDate(d + '/' + m + '/' + a);

            dm.docreceber.Close;
            dm.docreceber.SQL.Clear;
            dm.docreceber.SQL.Add('Select * From docreceber Where 1 = 2');
            dm.docreceber.Open;

            dm.docreceber.Insert;

            dm.docrecebercliente.Value        :=  dm.clientes_acordocliente.Value;
            dm.docrecebertipo.Value           :=  'OU';
//            dm.docreceberdoc.Value            :=  dm.clientes_acordovenda.Value;
            dm.docreceberdoc.Value            :=  copy(dm.clientes_acordovenda.Value,1,3)+
                                                  copy(dm.clientes_acordovenda.Value,5,6)+IntToStr(i-1);

            dm.docreceberemissao.Value        :=  Date;
            dm.docrecebervencto.Value         :=  v;
            dm.docrecebervalor.Value          :=  dm.clientes_acordovalor_parc.Value;
            dm.docreceberliquido.Value        :=  dm.clientes_acordovalor_parc.Value;
            dm.docreceberorigem.Value         :=  IfThen(dm.clientes_acordotipo.Value = 'A', 'AC', 'RE');
            dm.docrecebercodigo_origem.Value  :=  dm.clientes_acordocodigo.Value;
            dm.docrecebertipo_titulo.Value    :=  'P';
            dm.docreceber.Post;

            m                                 :=  FormatFloat('00', StrToInt(FormatDateTime('mm', v)) + 1);

            if (StrToInt(m) > 12) then
            begin
              m                               :=  '01';
              a                               :=  FormatFloat('0000', StrToInt(a) + 1);
            end;
          end;
       end;
  end;
end;
}
procedure TFrmVendaRefaturar.eddepositoExit(Sender: TObject);
begin
  CalculaTudo(Sender);

  if (StringParaFloat(eddeposito.Text) > 0) then
  begin
    n_pgto:=n_pgto+1;
    if (cdsPagamento.Locate('forma', 'PI', [])) then
      cdsPagamento.Edit
    else
      cdsPagamento.Append;

    cdsPagamentoforma.Value           :=  'PI';
    cdsPagamentovalor.Value           :=  StringParaFloat(eddeposito.Text);
    cdsPagamentocartao.Value          :=  0;
    cdsPagamentoparcela.Value         :=  1;
    cdsPagamentovencimento.Value      :=  Date;

    cdsPagamento.Post;
  end
  else
  begin
    if (cdsPagamento.Locate('forma', 'PI', [])) then
      cdsPagamento.Delete;
  end;
end;

procedure TFrmVendaRefaturar.FormActivate(Sender: TObject);
begin
//  dm.ZConnection1.Connected:=false;
end;

procedure TFrmVendaRefaturar.edfaturadoExit(Sender: TObject);
begin
  CalculaTudo(Sender);

  if (StringParaFloat(edfaturado.Text) > 0) then
  begin
    n_pgto:=n_pgto+1;
    if (cdsPagamento.Locate('forma', 'SD', [])) then
      cdsPagamento.Edit
    else
      cdsPagamento.Append;

    cdsPagamentoforma.Value           :=  'SD';
    cdsPagamentovalor.Value           :=  StringParaFloat(edfaturado.Text);
    cdsPagamentocartao.Value          :=  0;
    cdsPagamentoparcela.Value         :=  1;
    cdsPagamentovencimento.Value      :=  Date;

    cdsPagamento.Post;
  end
  else
  begin
    if (cdsPagamento.Locate('forma', 'SD', [])) then
      cdsPagamento.Delete;
  end;
end;

procedure TFrmVendaRefaturar.chcreditoclienteClick(Sender: TObject);
begin
  edValTroco.setfocus;
end;

procedure TFrmVendaRefaturar.AberturaCaixa1Click(Sender: TObject);
begin
  busca := '';
  ClickedOK := InputQuery('Digite o Valor da Abertura do Caixa', 'Abrir Caixa', busca);
  if ClickedOK then
    begin
      dm.usuarios.Open;
      dm.usuarios.Locate('nome',FrmPrincipal.sb.Panels[3].Text,[]);

      dm.controlcaixa.Close;
      dm.controlcaixa.SQL.Clear;
      dm.controlcaixa.SQL.Add('select * from controlcaixa');
      dm.controlcaixa.SQL.Add('where (1=2)');
      dm.controlcaixa.open;
      dm.controlcaixa.Insert;
      dm.controlcaixausuario.Value:=dm.usuarioscodigo.Value;
      dm.controlcaixadataab.Value:=date;
      dm.controlcaixahoraab.Value:=copy(TimeToStr(time),1,5);
      dm.controlcaixavalorab.Value:=StringToFloat(busca);
      dm.controlcaixa.Post;
      dm.controlcaixa.Close;

      dm.financeiro.Close;
      dm.financeiro.SQL.Clear;
      dm.financeiro.SQL.Add('select * from financeiro');
      dm.financeiro.SQL.Add('where (1=2)');
      dm.financeiro.open;
      dm.financeiro.Insert;
      dm.financeiroconta.Value:='CX';
      dm.financeirodata.Value:=date;
      dm.financeirohistorico.Value:='Abertura Caixa';
      dm.financeirotipo.value:='C';
      dm.financeirocredito.Value:=StringToFloat(busca);
      dm.financeiroOperador.Value:=FrmPrincipal.sb.Panels[3].Text;
      dm.financeiroData_Operacao.Value:=date;
      dm.financeiroHora_Operacao.Value:=TimeToStr(time);
      dm.financeiro.Post;

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
      dm.rastrorotina.Value:='FINANCEIRO';
      dm.rastrooperacao.Value:='I';
      dm.rastrohistorico.Value:='Abrir Caixa';
      dm.rastrovalor.Value:=StringToFloat(busca);
      dm.rastro.Post;
      dm.rastro.Close;
    end;
end;

procedure TFrmVendaRefaturar.Sangria1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmSangria, FrmSangria);
    FrmSangria.showmodal;
  finally
    FrmSangria.Release;
    FrmSangria:=nil;
  end;
end;

procedure TFrmVendaRefaturar.FormShow(Sender: TObject);
begin
  Caixa := frmprincipal.sb.Panels[3].Text;
end;

procedure TFrmVendaRefaturar.FecharCaixa1Click(Sender: TObject);
begin
  busca := '';
  ClickedOK := InputQuery('Digite o Valor do Fechamento do Caixa', 'Fechar Caixa', busca);
  if ClickedOK then
    begin
      dm.usuarios.Open;
      dm.usuarios.Locate('nome',FrmPrincipal.sb.Panels[3].Text,[]);

      C_datafec:=copy(DateToStr(date),7,4)+'/'+
      copy(DateToStr(date),4,2)+'/'+copy(DateToStr(date),1,2);
      C_horafec:=copy(TimeToStr(time),1,5);
      C_valorfec:=StringToFloat(busca);

      qratualizar.Close;
      qratualizar.SQL.Clear;
      qratualizar.SQL.Add('update controlcaixa set');
      qratualizar.SQL.Add('datafec = :C_datafec,');
      qratualizar.SQL.Add('horafec = :C_horafec,');
      qratualizar.SQL.Add('valorfec = :C_valorfec');
      qratualizar.SQL.Add('where (usuario = '+IntToStr(dm.usuarioscodigo.Value)+')');
      qratualizar.SQL.Add('and (dataab = '+chr(39)+copy(DateToStr(date),7,4)+'/'+copy(DateToStr(date),4,2)+'/'+
      copy(DateToStr(date),1,2)+chr(39)+')');
      qratualizar.Params[0].Value := C_datafec;
      qratualizar.Params[1].Value := C_horafec;
      qratualizar.Params[2].Value := C_valorfec;
      qratualizar.ExecSQL;

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
      dm.rastrorotina.Value:='FINANCEIRO';
      dm.rastrooperacao.Value:='I';
      dm.rastrohistorico.Value:='Fechar Caixa';
      dm.rastrovalor.Value:=StringToFloat(busca);
      dm.rastro.Post;
      dm.rastro.Close;
    end;
end;

procedure TFrmVendaRefaturar.Relatrio1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmFechamentoVenda, FrmFechamentoVenda);
    FrmFechamentoVenda.showmodal;
  finally
    FrmFechamentoVenda.Release;
    FrmFechamentoVenda:=nil;
  end;
end;

procedure TFrmVendaRefaturar.ReforoCaixa1Click(Sender: TObject);
begin
  busca := '';
  ClickedOK := InputQuery('Digite o Valor do Refor�o do Caixa', 'Refor�o Caixa', busca);
  if ClickedOK then
    begin
      dm.usuarios.Open;
      dm.usuarios.Locate('nome',FrmPrincipal.sb.Panels[3].Text,[]);

      dm.controlcaixa.Close;
      dm.controlcaixa.SQL.Clear;
      dm.controlcaixa.SQL.Add('select * from controlcaixa');
      dm.controlcaixa.SQL.Add('where (1=2)');
      dm.controlcaixa.open;
      dm.controlcaixa.Insert;
      dm.controlcaixausuario.Value:=dm.usuarioscodigo.Value;
      dm.controlcaixadataab.Value:=date;
      dm.controlcaixahoraab.Value:=copy(TimeToStr(time),1,5);
      dm.controlcaixavalorab.Value:=StringToFloat(busca);
      dm.controlcaixa.Post;
      dm.controlcaixa.Close;

      dm.financeiro.Close;
      dm.financeiro.SQL.Clear;
      dm.financeiro.SQL.Add('select * from financeiro');
      dm.financeiro.SQL.Add('where (1=2)');
      dm.financeiro.open;
      dm.financeiro.Insert;
      dm.financeiroconta.Value:='CX';
      dm.financeirodata.Value:=date;
      dm.financeirohistorico.Value:='Refor�o Caixa';
      dm.financeirotipo.value:='C';
      dm.financeirocredito.Value:=StringToFloat(busca);
      dm.financeiroOperador.Value:=FrmPrincipal.sb.Panels[3].Text;
      dm.financeiroData_Operacao.Value:=date;
      dm.financeiroHora_Operacao.Value:=TimeToStr(time);
      dm.financeiro.Post;

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
      dm.rastrorotina.Value:='FINANCEIRO';
      dm.rastrooperacao.Value:='I';
      dm.rastrohistorico.Value:='Refor�o Caixa';
      dm.rastrovalor.Value:=StringToFloat(busca);
      dm.rastro.Post;
      dm.rastro.Close;
    end;
end;

procedure TFrmVendaRefaturar.cbemKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_escape then
     begin
       LimpaCampos;
       cbem.SetFocus;
     end;
end;

procedure ConectarBD;
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

procedure IniciarVenda;
var
ultimav:integer;
begin
  if dm.ZConnection1.Connected=false then
     ConectarBD;
     
  ultimav:=qry.fieldbyname('ultvenda').AsInteger+1;

  FrmVendaRefaturar.qratualizar.close;
  FrmVendaRefaturar.qratualizar.sql.clear;
  FrmVendaRefaturar.qratualizar.SQL.Add('CALL sp_a_ultvenda(:f_codigo, :f_ultvenda)');
  FrmVendaRefaturar.qratualizar.Params[0].Value := FrmVendaRefaturar.edvendedor.Text;
  FrmVendaRefaturar.qratualizar.Params[1].Value := ultimav;
  FrmVendaRefaturar.qratualizar.ExecSQL;
  FrmVendaRefaturar.p_venda.Caption:=formatfloat('000',StrToInt(FrmVendaRefaturar.edvendedor.Text))+'-'+
  formatfloat('000000',ultimav);

  FrmVendaRefaturar.qratualizar.close;
  FrmVendaRefaturar.qratualizar.sql.clear;
  FrmVendaRefaturar.qratualizar.SQL.Add('CALL sp_apagar_movvenda(:m_vendaI)');
  FrmVendaRefaturar.qratualizar.Params[0].Value := FrmVendaRefaturar.p_venda.Caption;
  FrmVendaRefaturar.qratualizar.ExecSQL;
{
  FrmVendaRefaturar.qratualizar.Close;
  FrmVendaRefaturar.qratualizar.SQL.Clear;
  FrmVendaRefaturar.qratualizar.SQL.Add('delete from movvenda');
  FrmVendaRefaturar.qratualizar.SQL.Add('where vendaI = '+chr(39)+FrmVendaRefaturar.lbvenda.Caption+chr(39));
  FrmVendaRefaturar.qratualizar.ExecSQL;
}
  R_hora:=TimeToStr(time);
  FrmVendaRefaturar.qratualizar.Close;
  FrmVendaRefaturar.qratualizar.SQL.Clear;
  FrmVendaRefaturar.qratualizar.SQL.Add('CALL sp_i_rastro(:r_data, :r_hora, :r_operador, :r_rotina, :r_operacao, :r_historico, :r_favorecido, :r_valor, :r_obs)');
  FrmVendaRefaturar.qratualizar.Params[0].Value := date;
  FrmVendaRefaturar.qratualizar.Params[1].Value := R_hora;
  FrmVendaRefaturar.qratualizar.Params[2].Value := FrmPrincipal.sb.Panels[3].Text;
  FrmVendaRefaturar.qratualizar.Params[3].Value := 'VENDA';
  FrmVendaRefaturar.qratualizar.Params[4].Value := 'I';
  FrmVendaRefaturar.qratualizar.Params[5].Value := 'INICIO VENDA - '+FrmVendaRefaturar.p_venda.caption;
  FrmVendaRefaturar.qratualizar.Params[6].Value := 0;
  FrmVendaRefaturar.qratualizar.Params[7].Value := 0;
  FrmVendaRefaturar.qratualizar.Params[8].Value := FrmVendaRefaturar.lbvendedor.Caption;
  FrmVendaRefaturar.qratualizar.ExecSQL;
end;

procedure TFrmVendaRefaturar.edvendedorExit(Sender: TObject);
begin
  if edvendedor.Text<>'' then
     begin
       qry              :=  TZQuery.Create(nil);
       qry.Connection   :=  dm.ZConnection1;
       qry.SQL.Clear;
       qry.SQL.Add('select apelido,ultvenda from fornecedores');
       qry.SQL.Add('where codigo = '+edvendedor.Text);
       qry.Open;
       if qry.RecordCount<1 then
          application.MessageBox('Vendedor(a) n�o Cadastrado','Aten��o',mb_ok+mb_iconinformation)
       else
       begin
         lbvendedor.Caption := qry.fieldbyname('apelido').AsString;
         v := 0;
         IniciarVenda;
       end;
       qry.Free;
     end
     else
       lbvendedor.Caption := '';
  edvendedor.Color:=clWindow;
end;

procedure TFrmVendaRefaturar.edclienteExit(Sender: TObject);
begin
  if edcliente.Text<>'' then
     begin
       qry              :=  TZQuery.Create(nil);
       qry.Connection   :=  dm.ZConnection1;
       qry.SQL.Clear;
       qry.SQL.Add('select nome from clientes');
       qry.SQL.Add('where codigo = '+edcliente.Text);
       qry.Open;
       if qry.RecordCount<1 then
          application.MessageBox('Cliente n�o Cadastrado','Aten��o',mb_ok+mb_iconinformation)
       else
         lbcliente.Caption := qry.fieldbyname('nome').AsString;
       qry.Free;
     end
     else
       lbcliente.Caption := '';
  edcliente.Color:=clWindow;
end;

procedure TFrmVendaRefaturar.edclienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
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
  if key=vk_escape then
     begin
       LimpaCampos;
       cbem.SetFocus;
     end;
end;

procedure TFrmVendaRefaturar.edvendedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key=vk_f10 then
     begin
       try
         Application.CreateForm(TFrmCadFuncionarios, FrmCadFuncionarios);
         FrmCadFuncionarios.showmodal;
       finally
         FrmCadFuncionarios.Release;
         FrmCadFuncionarios:=nil;
       end;
     end;
  if key=vk_escape then
     begin
       LimpaCampos;
       cbem.SetFocus;
     end;
end;

procedure TFrmVendaRefaturar.cbemEnter(Sender: TObject);
begin
  cbem.Color:=$0080FFFF;
end;

procedure TFrmVendaRefaturar.edcodbarraExit(Sender: TObject);
begin
  if edcodbarra.Text<>'' then
     begin
       qry              :=  TZQuery.Create(nil);
       qry.Connection   :=  dm.ZConnection1;
       qry.SQL.Clear;
       qry.SQL.Add('select codigo,nome,venda,atacado from produtos');
       qry.sql.add('where (');
       qry.sql.add('(codbarra = ' + QuotedStr(edcodbarra.text) + ') or ');
       qry.sql.add('(codigo = ' + IntToStr(StrToIntDef(edcodbarra.text, 0)) + ')');
       qry.sql.add(')');
       qry.SQL.Add('and ativo = '+chr(39)+'S'+chr(39));
       qry.Open;
       if qry.RecordCount>0 then
          begin
            qtd:=1;
            P_codigo   := qry.fieldbyname('codigo').AsInteger;
            edqtd.Text := FloatToStr(qtd);
            memo1.Text := qry.fieldbyname('nome').AsString;
            if copy(cbem.Text,1,1)='1' then
               edunit.Text:=formatfloat('#,##0.00',qry.fieldbyname('atacado').AsFloat)
            else
               edunit.Text:=formatfloat('#,##0.00',qry.fieldbyname('venda').AsFloat);
          end
          else
          begin
            application.MessageBox('Produto n�o Localizado','Aten��o',mb_ok+mb_iconinformation);
            edcodbarra.SetFocus;
            edcodbarra.Text:='';
          end;
       qry.Free;
     end;
  edcodbarra.Color:=clWindow;
end;

procedure TFrmVendaRefaturar.cbemExit(Sender: TObject);
begin
  cbem.Color:=clWindow;
end;

procedure TFrmVendaRefaturar.edvendedorEnter(Sender: TObject);
begin
  edvendedor.Color:=$0080FFFF;
end;

procedure TFrmVendaRefaturar.edclienteEnter(Sender: TObject);
begin
  edcliente.Color:=$0080FFFF;
end;

procedure TFrmVendaRefaturar.edcodbarraEnter(Sender: TObject);
begin
  edcodbarra.Color:=$0080FFFF;
end;

procedure TotalizarVenda;
begin
  FrmVendaRefaturar.qrtotalizar.Close;
  FrmVendaRefaturar.qrtotalizar.SQL.Clear;
  FrmVendaRefaturar.qrtotalizar.SQL.Add('select count(*) as itens,sum(total) as total from movvenda');
  FrmVendaRefaturar.qrtotalizar.SQL.Add('where vendai = '+chr(39)+FrmVendaRefaturar.p_venda.Caption+chr(39));
  FrmVendaRefaturar.qrtotalizar.Open;
  itens:=FrmVendaRefaturar.qrtotalizaritens.Value;
  total:=FrmVendaRefaturar.qrtotalizartotal.Value;
  FrmVendaRefaturar.editens.text:=FloatToStr(itens);
  FrmVendaRefaturar.edtotal.text:=formatfloat('#,##0.00',total);
  FrmVendaRefaturar.edValSubtotal.text:=formatfloat('#,##0.00',total);
end;

procedure InserirVendaCheck;
begin
  qtd        := StrToFloat(FrmVendaRefaturar.edqtd.Text);
  v:=v+1;
  vtotal     := VlrProduto;

  FrmVendaRefaturar.qratualizar.Close;
  FrmVendaRefaturar.qratualizar.SQL.Clear;
  FrmVendaRefaturar.qratualizar.SQL.Add('CALL sp_i_movvenda(:m_seq, :m_vendaI, :m_produto, :m_qtd, :m_unit, :m_total)');
  FrmVendaRefaturar.qratualizar.Params[0].Value := v;
  FrmVendaRefaturar.qratualizar.Params[1].Value := FrmVendaRefaturar.p_venda.Caption;
  FrmVendaRefaturar.qratualizar.Params[2].Value := P_codigo;
  FrmVendaRefaturar.qratualizar.Params[3].Value := qtd;
  FrmVendaRefaturar.qratualizar.Params[4].Value := StringToFloat(FrmVendaRefaturar.edunit.Text);
  FrmVendaRefaturar.qratualizar.Params[5].Value := vtotal;
  FrmVendaRefaturar.qratualizar.ExecSQL;

  FrmVendaRefaturar.memo_itens.Lines.Add(formatfloat('000',v)+' - Produto: '+IntToStr(P_codigo)+' '+copy(FrmVendaRefaturar.Memo1.Text,1,49)+
                                         '  QTD: '+FrmVendaRefaturar.edqtd.Text+'  UNIT.: '+FrmVendaRefaturar.edunit.Text+'  TOTAL: '+
                                         FrmVendaRefaturar.edvalor.Text);

  TotalizarVenda;
  FrmVendaRefaturar.edcodbarra.Text:='';
  FrmVendaRefaturar.edqtd.Text:='';
  FrmVendaRefaturar.edunit.Text:='';
  FrmVendaRefaturar.edvalor.Text:='';
  FrmVendaRefaturar.Memo1.Lines.Clear;
  FrmVendaRefaturar.edcodbarra.SetFocus
end;

procedure TFrmVendaRefaturar.edqtdExit(Sender: TObject);
begin
  if edqtd.Text='' then
     edqtd.Text:='1';
  edqtd.Color:=clWindow;
end;

procedure TFrmVendaRefaturar.edqtdEnter(Sender: TObject);
begin
  edqtd.Color:=$0080FFFF;
end;

procedure TFrmVendaRefaturar.edcodbarraKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key=vk_f11 then
     begin
        busca := '';
        ClickedOK := InputQuery('Digite o C�digo do Produto', 'Excluir Produto', busca);
        if ClickedOK then
          begin
            qratualizar.Close;
            qratualizar.SQL.Clear;
            qratualizar.SQL.Add('CALL sp_apagar_movvendaitem(:m_vendaI, :m_produto)');
            qratualizar.Params[0].Value := p_venda.Caption;
            qratualizar.Params[1].Value := busca;
            qratualizar.ExecSQL;

            dm.MovVenda.Close;
            dm.MovVenda.SQL.Clear;
            dm.MovVenda.SQL.Add('select * from movvenda');
            dm.MovVenda.SQL.Add('where vendaI = '+chr(39)+p_venda.Caption+chr(39));
            dm.movvenda.open;
            memo_itens.Clear;
            while not dm.MovVenda.Eof do
                  begin
                    qryP              :=  TZQuery.Create(nil);
                    qryP.Connection   :=  dm.ZConnection1;
                    qryP.SQL.Add('select nome from produtos');
                    qryP.sql.add('where codigo = '+dm.movvendaproduto.AsString);
                    qryP.Open;

                    memo_itens.Lines.Add(formatfloat('000',dm.movvendaseq.Value)+' - Produto: '+dm.movvendaproduto.AsString+' '+
                                        copy(qryP.FieldByName('nome').AsString,1,49)+'  QTD: '+dm.movvendaqtd.AsString+
                                        '  UNIT.: '+formatfloat('#,##0.00',dm.movvendaunit.Value)+'  TOTAL: '+formatfloat('#,##0.00',dm.movvendatotal.Value));

                    qryP.Free;

                    dm.MovVenda.Next;
                  end;
            TotalizarVenda;
            dm.MovVenda.Close;
            edcodbarra.SetFocus;
          end;
     end;
  if key=vk_f12 then
     begin
        LimpaCampos;

        cdsPagamento.Close;
        cdsPagamento.CreateDataSet;

        valoratraso:=0;
        dm.Totaldocreceber.Close;
        dm.Totaldocreceber.SQL.Clear;
        dm.Totaldocreceber.SQL.Add('select sum(D.liquido) as total from clientes C, docreceber D');
        dm.Totaldocreceber.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
        dm.Totaldocreceber.SQL.Add('and (D.cliente = '+edcliente.Text+')');
        dm.Totaldocreceber.open;
        if dm.Totaldocrecebertotal.Value>0 then
           begin
             valoratraso:=dm.Totaldocreceber['total'];
             edareceber.Text        := FormatFloat('#,##0.00', valoratraso);
           end;

        edValSubtotal.Text        :=
          FormatFloat('#,##0.00', FrmVendaRefaturar.qrtotalizartotal.Value+valoratraso);
        edValTotal.Text        :=
          FormatFloat('#,##0.00', FrmVendaRefaturar.qrtotalizartotal.Value+valoratraso);

        edValDinheiro.Text        := FormatFloat('#,##0.00', FrmVendaRefaturar.qrtotalizartotal.Value+valoratraso);

        CalculaTudo(edValDinheiro, False);
        n_pgto:=0;
        edValDinheiro.SetFocus;
        Exit;

     end;
  if key=vk_escape then
     begin
       LimpaCampos;
       cbem.SetFocus;
     end;
end;

procedure TFrmVendaRefaturar.edunitExit(Sender: TObject);
begin
  if (edcliente.Text<>'') and (edvendedor.Text<>'') and (edcodbarra.Text<>'') and (edqtd.Text<>'') then
     begin
       VlrProduto   := StringToFloat(FrmVendaRefaturar.edunit.Text)*StringToFloat(FrmVendaRefaturar.edqtd.Text);
       edvalor.Text := formatfloat('#,##0.00',VlrProduto);
       InserirVendaCheck;
     end
     else
     begin
       if edvendedor.Text='' then
          edvendedor.SetFocus
       else if edcliente.Text='' then
          edcliente.SetFocus
       else if edcodbarra.Text='' then
          edcodbarra.SetFocus;
     end;
end;

end.



