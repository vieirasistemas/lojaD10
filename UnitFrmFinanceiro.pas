unit UnitFrmFinanceiro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, Buttons, Grids, DBGrids, ExtCtrls,
  EditAlinhado, DB, DBTables, QuickRpt, QRCtrls, unit2, RLReport,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFrmFinanceiro = class(TForm)
    DBGrid1: TDBGrid;
    lbcodigo: TLabel;
    medatainicial: TMaskEdit;
    medatafinal: TMaskEdit;
    btfiltrar: TBitBtn;
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    qrvalor: TQRLabel;
    qrlinha1: TQRLabel;
    qrlinha2: TQRLabel;
    qrnominal: TQRLabel;
    qrcidade: TQRLabel;
    qrdia: TQRLabel;
    qrmes: TQRLabel;
    qrano: TQRLabel;
    RLReport1: TRLReport;
    RLBand3: TRLBand;
    qrvalorII: TRLAngleLabel;
    qrlinha1II: TRLAngleLabel;
    qrlinha2II: TRLAngleLabel;
    qrnominalII: TRLAngleLabel;
    qrcidadeII: TRLAngleLabel;
    qrdiaII: TRLAngleLabel;
    qrmesII: TRLAngleLabel;
    qranoII: TRLAngleLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    Panel3: TPanel;
    btnovo: TBitBtn;
    btgravar: TBitBtn;
    btalterar: TBitBtn;
    btexcluir: TBitBtn;
    btrelatorio: TBitBtn;
    btcancelar: TBitBtn;
    BitBtn2: TBitBtn;
    Label10: TLabel;
    Label11: TLabel;
    edcc: TEdit;
    P_Dados: TPanel;
    edconta: TEdit;
    cbconta: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    medata: TMaskEdit;
    Label3: TLabel;
    eddoc: TEdit;
    Label4: TLabel;
    eddocorigem: TEdit;
    Label5: TLabel;
    Label7: TLabel;
    cbplanoconta: TComboBox;
    Label6: TLabel;
    rbentrada: TRadioButton;
    rbsaida: TRadioButton;
    Label8: TLabel;
    edvalor: TEditAlinh;
    Label9: TLabel;
    edcontrapartida: TEdit;
    Label14: TLabel;
    cbcontrapartida: TComboBox;
    Label13: TLabel;
    btprimeiro: TBitBtn;
    btanterior: TBitBtn;
    btproximo: TBitBtn;
    btultimo: TBitBtn;
    edhistorico: TComboBox;
    DataSource1: TDataSource;
    qratualizar: TZQuery;
    Query1: TZQuery;
    Query1historico: TStringField;
    Label12: TLabel;
    edhistoricoI: TEdit;
    cbvendedor: TComboBox;
    Label15: TLabel;
    Label16: TLabel;
    procedure btnovoClick(Sender: TObject);
    procedure btalterarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edcontaExit(Sender: TObject);
    procedure cbcontaExit(Sender: TObject);
    procedure medataExit(Sender: TObject);
    procedure medataEnter(Sender: TObject);
    procedure btcancelarClick(Sender: TObject);
    procedure cbplanocontaExit(Sender: TObject);
    procedure btgravarClick(Sender: TObject);
    procedure edvalorExit(Sender: TObject);
    procedure btprimeiroClick(Sender: TObject);
    procedure btanteriorClick(Sender: TObject);
    procedure btproximoClick(Sender: TObject);
    procedure btultimoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btrelatorioClick(Sender: TObject);
    procedure btexcluirClick(Sender: TObject);
    procedure btfiltrarClick(Sender: TObject);
    procedure medatainicialExit(Sender: TObject);
    procedure medatafinalExit(Sender: TObject);
    procedure edcontrapartidaExit(Sender: TObject);
    procedure cbcontrapartidaExit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure medatainicialEnter(Sender: TObject);
    procedure medatafinalEnter(Sender: TObject);
    procedure edccEnter(Sender: TObject);
    procedure edcontaEnter(Sender: TObject);
    procedure cbcontaEnter(Sender: TObject);
    procedure eddocEnter(Sender: TObject);
    procedure eddocorigemEnter(Sender: TObject);
    procedure edhistoricoEnter(Sender: TObject);
    procedure cbplanocontaEnter(Sender: TObject);
    procedure edvalorEnter(Sender: TObject);
    procedure edcontrapartidaEnter(Sender: TObject);
    procedure cbcontrapartidaEnter(Sender: TObject);
    procedure edccExit(Sender: TObject);
    procedure eddocExit(Sender: TObject);
    procedure eddocorigemExit(Sender: TObject);
    procedure edhistoricoExit(Sender: TObject);
    procedure cbvendedorExit(Sender: TObject);
    procedure cbvendedorEnter(Sender: TObject);
  private
    { Private declarations }
  public
    Exer_Ant:string;
    { Public declarations }
  end;

var
  FrmFinanceiro: TFrmFinanceiro;
  opcao:boolean;
  busca,R_hora:string;
  ClickedOK:boolean;

implementation

uses Unitdm, UnitFrmRelCCImp, UnitFrmPrincipal;

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

procedure Atualiza;
begin
        dm.PlanoContas.Close;
        dm.PlanoContas.SQL.Clear;
        dm.PlanoContas.SQL.Add('select * from planocontas');
        dm.PlanoContas.SQL.Add('order by codigo');
        dm.PlanoContas.Open;

        dm.ContasCorrente.Close;
        dm.ContasCorrente.SQL.Clear;
        dm.ContasCorrente.SQL.Add('select * from contascorrente');
        dm.ContasCorrente.Open;

        FrmFinanceiro.lbcodigo.Caption:=IntToStr(dm.financeirocodigo.value);
        FrmFinanceiro.edconta.Text:=dm.financeiroconta.Value;
        if FrmFinanceiro.edconta.Text<>'' then
           begin
             dm.ContasCorrente.open;
             if dm.ContasCorrente.Locate('conta',FrmFinanceiro.edconta.text,[]) then
                FrmFinanceiro.cbconta.Text:=dm.ContasCorrentedescricao.value;
           end;
        if dm.financeirodata.value<>StrToDate('30/12/1899') then
           FrmFinanceiro.medata.text:=DateToStr(dm.financeirodata.Value)
        else
           FrmFinanceiro.medata.text:='';
        FrmFinanceiro.eddoc.Text:=dm.financeirodoc.Value;
        FrmFinanceiro.eddocorigem.text:=dm.financeirodocorigem.Value;
        FrmFinanceiro.edhistorico.text:=dm.financeirohistorico.Value;
        dm.PlanoContas.Open;
        if dm.PlanoContas.Locate('codigo',dm.financeiroplanoconta.Value,[]) then
           FrmFinanceiro.cbplanoconta.text:=dm.PlanoContaschave.value
        else
           FrmFinanceiro.cbplanoconta.text:='';
        if dm.financeirovendedor.Value>0 then
           begin
             dm.Fornecedores.close;
             dm.Fornecedores.sql.clear;
             dm.Fornecedores.sql.add('select * from fornecedores');
             dm.Fornecedores.sql.add('where codigo = '+IntToStr(dm.financeirovendedor.Value));
             dm.Fornecedores.open;
             FrmFinanceiro.cbvendedor.Text:=dm.fornecedoresfantasia.Value;
           end
           else
             FrmFinanceiro.cbvendedor.Text:='';
        if dm.financeirotipo.value='C' then
           begin
                FrmFinanceiro.rbentrada.Checked:=true;
                FrmFinanceiro.edvalor.Text:=formatfloat('#,##0.00',dm.financeirocredito.value);
           end
           else
           begin
                FrmFinanceiro.rbsaida.Checked:=true;
                FrmFinanceiro.edvalor.Text:=formatfloat('#,##0.00',dm.financeirodebito.value);
           end;
        FrmFinanceiro.edconta.Text:=dm.financeiroconta.Value;
end;

procedure desabilita;
begin
        FrmFinanceiro.btfiltrar.enabled:=false;
        FrmFinanceiro.btprimeiro.enabled:=false;
        FrmFinanceiro.btanterior.enabled:=false;
        FrmFinanceiro.btproximo.enabled:=false;
        FrmFinanceiro.btultimo.enabled:=false;
        FrmFinanceiro.btnovo.enabled:=false;
        FrmFinanceiro.btalterar.enabled:=false;
        FrmFinanceiro.btexcluir.enabled:=false;
        FrmFinanceiro.btrelatorio.enabled:=false;
        FrmFinanceiro.btgravar.enabled:=true;
        FrmFinanceiro.btcancelar.Caption:='Cancelar';
        FrmFinanceiro.P_Dados.enabled:=true;
end;

procedure habilita;
begin
      dm.usuarios.close;
      dm.usuarios.Open;
      dm.usuarios.Locate('nome',FrmPrincipal.sb.Panels[3].Text,[]);
      FrmFinanceiro.btcancelar.Caption:='Sair';
{      if dm.usuariosfinanceiro.value='1' then
         begin
            FrmFinanceiro.btgravar.enabled:=false;
            FrmFinanceiro.btnovo.Enabled:=false;
            FrmFinanceiro.btexcluir.Enabled:=false;
            FrmFinanceiro.btalterar.Enabled:=false;
            FrmFinanceiro.btprimeiro.Enabled:=true;
            FrmFinanceiro.btanterior.Enabled:=true;
            FrmFinanceiro.btproximo.Enabled:=true;
            FrmFinanceiro.btultimo.Enabled:=true;
            FrmFinanceiro.btrelatorio.enabled:=false;
            FrmFinanceiro.P_Dados.enabled:=false;
         end
      else if dm.usuariosfinanceiro.value='2' then
         begin
            FrmFinanceiro.btgravar.enabled:=false;
            FrmFinanceiro.btnovo.Enabled:=true;
            FrmFinanceiro.btexcluir.Enabled:=false;
            FrmFinanceiro.btalterar.Enabled:=false;
            FrmFinanceiro.btprimeiro.Enabled:=true;
            FrmFinanceiro.btanterior.Enabled:=true;
            FrmFinanceiro.btproximo.Enabled:=true;
            FrmFinanceiro.btultimo.Enabled:=true;
            FrmFinanceiro.btrelatorio.enabled:=false;
            FrmFinanceiro.P_Dados.enabled:=false;
         end
      else if dm.usuariosfinanceiro.value='3' then
         begin
            FrmFinanceiro.btgravar.enabled:=false;
            FrmFinanceiro.btnovo.Enabled:=true;
            FrmFinanceiro.btexcluir.Enabled:=false;
            FrmFinanceiro.btalterar.Enabled:=true;
            FrmFinanceiro.btprimeiro.Enabled:=true;
            FrmFinanceiro.btanterior.Enabled:=true;
            FrmFinanceiro.btproximo.Enabled:=true;
            FrmFinanceiro.btultimo.Enabled:=true;
            FrmFinanceiro.btrelatorio.enabled:=false;
            FrmFinanceiro.P_Dados.enabled:=false;
         end
      else if dm.usuariosfinanceiro.value='4' then
         begin
            FrmFinanceiro.btgravar.enabled:=false;
            FrmFinanceiro.btnovo.Enabled:=true;
            FrmFinanceiro.btexcluir.Enabled:=true;
            FrmFinanceiro.btalterar.Enabled:=true;
            FrmFinanceiro.btprimeiro.Enabled:=true;
            FrmFinanceiro.btanterior.Enabled:=true;
            FrmFinanceiro.btproximo.Enabled:=true;
            FrmFinanceiro.btultimo.Enabled:=true;
            FrmFinanceiro.btrelatorio.enabled:=true;
            FrmFinanceiro.P_Dados.enabled:=false;
         end
      else if dm.usuariosfinanceiro.value='5' then
         begin
}            FrmFinanceiro.btgravar.enabled:=false;
            FrmFinanceiro.btnovo.Enabled:=true;
            FrmFinanceiro.btexcluir.Enabled:=true;
            FrmFinanceiro.btalterar.Enabled:=true;
            FrmFinanceiro.btprimeiro.Enabled:=true;
            FrmFinanceiro.btanterior.Enabled:=true;
            FrmFinanceiro.btproximo.Enabled:=true;
            FrmFinanceiro.btultimo.Enabled:=true;
            FrmFinanceiro.btrelatorio.enabled:=true;
            FrmFinanceiro.P_Dados.enabled:=false;
//         end;
    FrmFinanceiro.btfiltrar.enabled:=true;
end;

procedure limpar;
begin
        FrmFinanceiro.cbplanoconta.text:='';
        FrmFinanceiro.eddoc.text:='';
        FrmFinanceiro.eddocorigem.text:='';
        FrmFinanceiro.edhistorico.text:='';
        FrmFinanceiro.edvalor.text:='';
        FrmFinanceiro.edcontrapartida.text:='';
        FrmFinanceiro.cbcontrapartida.text:='';
end;

procedure TFrmFinanceiro.btnovoClick(Sender: TObject);
begin
        opcao:=true;
        limpar;
        desabilita;
        edconta.SetFocus;
end;

procedure TFrmFinanceiro.btalterarClick(Sender: TObject);
begin
      if lbcodigo.Caption<>'' then
         begin
           opcao:=false;
           desabilita;
           edconta.SetFocus;
         end;
end;

procedure TFrmFinanceiro.FormShow(Sender: TObject);
begin
  edhistorico.Items.Clear;
  Query1.Close;
  query1.SQL.Clear;
  Query1.SQL.Add('select historico from financeiro');
  Query1.SQL.Add('group by historico');
  Query1.Open;
  while not query1.Eof do
        begin
          edhistorico.Items.add(Query1historico.value);
          query1.Next;
        end;
  Query1.Close;

  habilita;
  medatainicial.Text:=DateToStr(date);
  medatafinal.Text:=DateToStr(date);
  btfiltrar.Click;

  dm.PlanoContas.Close;
  dm.PlanoContas.SQL.Clear;
  dm.PlanoContas.SQL.Add('select * from planocontas');
  dm.PlanoContas.SQL.Add('order by codigo');
  dm.PlanoContas.Open;
  cbplanoconta.Items.Clear;
  while not dm.PlanoContas.Eof do
        begin
          cbplanoconta.Items.add(dm.PlanoContaschave.value);
          dm.PlanoContas.next;
        end;

  dm.fornecedores.Close;
  dm.fornecedores.SQL.Clear;
  dm.fornecedores.SQL.Add('select * from fornecedores');
  dm.fornecedores.SQL.Add('where comissao>0');
  dm.fornecedores.Open;
  cbvendedor.Items.Clear;
  while not dm.fornecedores.Eof do
        begin
          cbvendedor.Items.add(dm.fornecedoresfantasia.value);
          dm.fornecedores.next;
        end;

  dm.ContasCorrente.Close;
  dm.ContasCorrente.SQL.Clear;
  dm.ContasCorrente.SQL.Add('select * from contascorrente');
  dm.ContasCorrente.Open;
  cbconta.Items.Clear;
  cbcontrapartida.Items.Clear;
  while not dm.ContasCorrente.Eof do
  begin
    cbconta.Items.Add(dm.ContasCorrentedescricao.value);
    cbcontrapartida.Items.Add(dm.ContasCorrentedescricao.value);
    dm.ContasCorrente.Next;
  end;
end;

procedure TFrmFinanceiro.edcontaExit(Sender: TObject);
begin
  if edconta.Text<>'' then
     begin
       dm.ContasCorrente.open;
       if not dm.ContasCorrente.Locate('conta',edconta.text,[]) then
          begin
            application.MessageBox('Conta n�o Cadastrada','Aten��o',mb_ok+mb_iconinformation);
            edconta.text:='';
          end
          else
          begin
            cbconta.Text:=dm.ContasCorrentedescricao.value;
            medata.SetFocus;
          end;
     end;
  edconta.Color:=clWindow;
end;

procedure TFrmFinanceiro.cbcontaExit(Sender: TObject);
begin
      if cbconta.Text<>'' then
         begin
           dm.ContasCorrente.Open;
           if not dm.ContasCorrente.Locate('descricao',cbconta.text,[]) then
              begin
                application.MessageBox('Conta n�o Cadastrada','Aten��o',mb_ok+mb_iconinformation);
                cbconta.text:='';
                cbconta.SetFocus;
              end
              else
                edconta.Text:=dm.ContasCorrenteconta.value;
         end;
  cbconta.Color:=clWindow;
end;

procedure TFrmFinanceiro.medataExit(Sender: TObject);
begin
  if medata.text<>'  /  /    ' then
  Try
     StrToDate(medata.Text) ;
  Except
  begin
     application.MessageBox('Data Inv�lida!','Aten��o',mb_Ok+mb_iconerror);
     medata.setfocus;
  end;
  end;
  medata.Color:=clWindow;
end;

procedure TFrmFinanceiro.medataEnter(Sender: TObject);
begin
  medata.Color:=$0080FFFF;
      if medata.text='  /  /    ' then
         begin
            medata.Text:=DateToStr(date);
            medata.SelStart:=0;
            medata.SelLength:=length(medata.text);
         end;
end;

procedure TFrmFinanceiro.btcancelarClick(Sender: TObject);
begin
        if btnovo.Enabled=false then
           begin
                habilita;
                limpar;
           end
           else
                close;
end;

procedure TFrmFinanceiro.cbplanocontaExit(Sender: TObject);
begin
        if cbplanoconta.Text<>'' then
           begin
                dm.PlanoContas.Open;
                if not dm.PlanoContas.Locate('chave',cbplanoconta.Text,[]) then
                   begin
                      application.MessageBox('Conta n�o Cadastrada','Aten��o',mb_ok+mb_iconinformation);
                      cbplanoconta.SetFocus;
                   end
                   else
                   begin
                      if length(dm.PlanoContascodigo.Value)<8 then
                         begin
                            application.MessageBox('Conta inv�lida. Escolha outra conta','Aten��o',mb_ok+mb_iconinformation);
                            cbplanoconta.SetFocus;
                         end;
                   end;
           end;
  cbplanoconta.Color:=clWindow;
end;

procedure InserirFinanceiro;
begin
       R_hora:=TimeToStr(time);
       dm.rastro.Close;
       dm.rastro.SQL.Clear;
       dm.rastro.SQL.Add('select * from rastro');
       dm.rastro.SQL.Add('where (data = '+chr(39)+
       copy(DateToStr(date),7,4)+'/'+copy(DateToStr(date),4,2)+'/'+
       copy(DateToStr(date),1,2)+chr(39)+')');
       dm.rastro.SQL.Add('and (operador='+chr(39)+FrmPrincipal.sb.Panels[3].Text+chr(39)+')');
       dm.rastro.SQL.Add('and (hora='+chr(39)+R_hora+chr(39)+')');
       dm.rastro.Open;
       dm.rastro.Insert;
       dm.rastrodata.Value:=date;
       dm.rastrohora.Value:=R_hora;
       dm.rastrooperador.Value:=FrmPrincipal.sb.Panels[3].Text;
       dm.rastrorotina.Value:='FINANCEIRO';
       dm.rastrooperacao.Value:='I';
       dm.rastrohistorico.Value:=FrmFinanceiro.eddoc.Text+' '+
       FrmFinanceiro.edhistorico.text;
//       dm.rastrofavorecido.Value:=StrToInt(edcliente.Text);
       dm.rastrovalor.Value:=StringToFloat(FrmFinanceiro.edvalor.Text);
       dm.rastro.Post;
       dm.rastro.Close;

       dm.financeiro.Insert;
       dm.financeiroconta.Value:=FrmFinanceiro.edconta.Text;
       dm.financeirodata.Value:=StrToDate(FrmFinanceiro.medata.text);
       dm.financeirodoc.Value:=FrmFinanceiro.eddoc.Text;
       dm.financeirodocorigem.Value:=FrmFinanceiro.eddocorigem.text;
       dm.financeirohistorico.Value:=FrmFinanceiro.edhistorico.text;
       if (FrmFinanceiro.cbplanoconta.Text<>'') and (FrmFinanceiro.edcontrapartida.Text='') then
          begin
               dm.PlanoContas.Open;
               if dm.PlanoContas.Locate('chave',FrmFinanceiro.cbplanoconta.Text,[]) then
                  dm.financeiroplanoconta.Value:=dm.PlanoContascodigo.value;
          end;
       if FrmFinanceiro.rbentrada.Checked then
          begin
               dm.financeirotipo.value:='C';
               dm.financeirocredito.Value:=StringToFloat(FrmFinanceiro.edvalor.Text);
          end
          else
          begin
               dm.financeirotipo.value:='D';
               dm.financeirodebito.Value:=StringToFloat(FrmFinanceiro.edvalor.Text);
          end;
       dm.financeiroOperador.Value:=FrmPrincipal.sb.Panels[3].Text;
       dm.financeiroData_Operacao.Value:=date;
       dm.financeiroHora_Operacao.Value:=TimeToStr(time);
       if FrmFinanceiro.cbvendedor.Text<>'' then
          begin
            dm.Fornecedores.close;
            dm.Fornecedores.sql.clear;
            dm.Fornecedores.sql.add('select * from fornecedores');
            dm.fornecedores.sql.add('where fantasia = '+chr(39)+FrmFinanceiro.cbvendedor.text+chr(39));
            dm.Fornecedores.open;
            dm.financeirovendedor.Value:=dm.fornecedorescodigo.Value;
            dm.financeirocomissao.Value:=dm.fornecedorescomissao.Value;
          end;
       dm.financeiro.Post;
end;

procedure TFrmFinanceiro.btgravarClick(Sender: TObject);
var
F_vendedor:integer;
F_conta,F_data,F_doc,
F_docorigem,F_historico,
F_planoconta,F_centrocusto,
F_tipo:string;
F_comissao,F_credito,F_debito:real;
begin
      if opcao=true then
         begin
           try
             if edcontrapartida.Text='' then
                InserirFinanceiro
             else
             begin
                if eddoc.Text='' then
                   begin
                     application.MessageBox('Preenchimento Obrigat�rio de Documento para Contra Partida','Aten��o',mb_Ok+MB_ICONINFORMATION);
                     eddoc.SetFocus;
                   end
                   else
                   begin
                     InserirFinanceiro;

                     dm.financeiro.Insert;
                     dm.financeiroconta.Value:=edcontrapartida.Text;
                     dm.financeirodata.Value:=StrToDate(medata.text);
                     dm.financeirodoc.Value:=eddoc.Text;
                     dm.financeirodocorigem.Value:=eddocorigem.text;
                     dm.financeirohistorico.Value:=edhistorico.text;
                     if (cbplanoconta.Text<>'') and (edcontrapartida.Text='') then
                        begin
                             dm.PlanoContas.Open;
                             if dm.PlanoContas.Locate('chave',cbplanoconta.Text,[]) then
                                dm.financeiroplanoconta.Value:=dm.PlanoContascodigo.value;
                        end;
                     if rbentrada.Checked then
                        begin
                             dm.financeirotipo.value:='D';
                             dm.financeirodebito.Value:=StringToFloat(edvalor.Text);
                        end
                        else
                        begin
                             dm.financeirotipo.value:='C';
                             dm.financeirocredito.Value:=StringToFloat(edvalor.Text);
                        end;
                     dm.financeiroOperador.Value:=FrmPrincipal.sb.Panels[3].Text;
                     dm.financeiroData_Operacao.Value:=date;
                     dm.financeiroHora_Operacao.Value:=TimeToStr(time);
                     dm.financeiro.Post;

                     R_hora:=TimeToStr(time);
                     dm.rastro.Close;
                     dm.rastro.SQL.Clear;
                     dm.rastro.SQL.Add('select * from rastro');
                     dm.rastro.SQL.Add('where (data = '+chr(39)+
                     copy(DateToStr(date),7,4)+'/'+copy(DateToStr(date),4,2)+'/'+
                     copy(DateToStr(date),1,2)+chr(39)+')');
                     dm.rastro.SQL.Add('and (operador='+chr(39)+FrmPrincipal.sb.Panels[3].Text+chr(39)+')');
                     dm.rastro.SQL.Add('and (hora='+chr(39)+R_hora+chr(39)+')');
                     dm.rastro.Open;
                     dm.rastro.Insert;
                     dm.rastrodata.Value:=date;
                     dm.rastrohora.Value:=R_hora;
                     dm.rastrooperador.Value:=FrmPrincipal.sb.Panels[3].Text;
                     dm.rastrorotina.Value:='FINANCEIRO';
                     dm.rastrooperacao.Value:='I';
                     dm.rastrohistorico.Value:=FrmFinanceiro.eddoc.Text+' '+
                     FrmFinanceiro.edhistorico.text;
            //       dm.rastrofavorecido.Value:=StrToInt(edcliente.Text);
                     dm.rastrovalor.Value:=StringToFloat(edvalor.Text);
                     dm.rastro.Post;
                     dm.rastro.Close;

                   end;
             end;
           Except
             application.MessageBox('Erro ao Inserir Registro!','Aten��o',mb_Ok+mb_iconerror);
             limpar;
           end;
         end
         else
         begin
           F_vendedor:=0;
           F_comissao:=0;
           F_conta:='';
           F_data:='';
           F_doc:='';
           F_docorigem:='';
           F_historico:='';
           F_planoconta:='';
           F_centrocusto:='';
           F_tipo:='';
           F_credito:=0;
           F_debito:=0;

           F_conta:=edconta.Text;
           F_data:=copy(medata.text,7,4)+'/'+
           copy(medata.text,4,2)+'/'+copy(medata.text,1,2);
           F_doc:=eddoc.Text;
           F_docorigem:=eddocorigem.text;
           F_historico:=edhistorico.text;
           if cbplanoconta.Text<>'' then
              begin
                   dm.PlanoContas.Open;
                   if dm.PlanoContas.Locate('chave',cbplanoconta.Text,[]) then
                      F_planoconta:=dm.PlanoContascodigo.value;
              end;
           if rbentrada.Checked then
              begin
                   F_tipo:='C';
                   F_credito:=StringToFloat(edvalor.Text);
              end
              else
              begin
                   F_tipo:='D';
                   F_debito:=StringToFloat(edvalor.Text);
              end;
           if FrmFinanceiro.cbvendedor.Text<>'' then
              begin
                dm.Fornecedores.close;
                dm.Fornecedores.sql.clear;
                dm.Fornecedores.sql.add('select * from fornecedores');
                dm.fornecedores.sql.add('where fantasia = '+chr(39)+FrmFinanceiro.cbvendedor.text+chr(39));
                dm.Fornecedores.open;
                F_vendedor:=dm.fornecedorescodigo.Value;
                F_comissao:=dm.fornecedorescomissao.Value;
              end;

           R_hora:=TimeToStr(time);
           dm.rastro.Close;
           dm.rastro.SQL.Clear;
           dm.rastro.SQL.Add('select * from rastro');
           dm.rastro.SQL.Add('where (data = '+chr(39)+
           copy(DateToStr(date),7,4)+'/'+copy(DateToStr(date),4,2)+'/'+
           copy(DateToStr(date),1,2)+chr(39)+')');
           dm.rastro.SQL.Add('and (operador='+chr(39)+FrmPrincipal.sb.Panels[3].Text+chr(39)+')');
           dm.rastro.SQL.Add('and (hora='+chr(39)+R_hora+chr(39)+')');
           dm.rastro.Open;
           dm.rastro.Insert;
           dm.rastrodata.Value:=date;
           dm.rastrohora.Value:=R_hora;
           dm.rastrooperador.Value:=FrmPrincipal.sb.Panels[3].Text;
           dm.rastrorotina.Value:='FINANCEIRO';
           dm.rastrooperacao.Value:='A';
           dm.rastrohistorico.Value:=FrmFinanceiro.eddoc.Text+' '+
           FrmFinanceiro.edhistorico.text;
  //       dm.rastrofavorecido.Value:=StrToInt(edcliente.Text);
           dm.rastrovalor.Value:=StringToFloat(edvalor.Text);
           dm.rastro.Post;
           dm.rastro.Close;

           qratualizar.close;
           qratualizar.sql.clear;
           qratualizar.sql.add('update financeiro set');
           qratualizar.sql.add('conta = :F_conta,');
           qratualizar.sql.add('data = :F_data,');
           qratualizar.sql.add('doc = :F_doc,');
           qratualizar.sql.add('docorigem = :F_docorigem,');
           qratualizar.sql.add('historico = :F_historico,');
           qratualizar.sql.add('planoconta = :F_planoconta,');
           qratualizar.sql.add('centrocusto = :F_centrocusto,');
           qratualizar.sql.add('tipo = :F_tipo,');
           qratualizar.sql.add('credito = :F_credito,');
           qratualizar.sql.add('debito = :F_debito,');
           qratualizar.sql.add('vendedor = :F_vendedor,');
           qratualizar.sql.add('comissao = :F_comissao');
           qratualizar.SQL.Add('where codigo ='+lbcodigo.Caption);
           qratualizar.Params[0].Value := F_conta;
           qratualizar.Params[1].Value := F_data;
           qratualizar.Params[2].Value := F_doc;
           qratualizar.Params[3].Value := F_docorigem;
           qratualizar.Params[4].Value := F_historico;
           qratualizar.Params[5].Value := F_planoconta;
           qratualizar.Params[6].Value := F_centrocusto;
           qratualizar.Params[7].Value := F_tipo;
           qratualizar.Params[8].Value := F_credito;
           qratualizar.Params[9].Value := F_debito;
           qratualizar.Params[10].Value := F_vendedor;
           qratualizar.Params[11].Value := F_comissao;
           qratualizar.ExecSQL;
         end;
      dm.financeiro.Close;
      dm.financeiro.Open;
      dm.financeiro.Locate('codigo',lbcodigo.Caption,[]);
      habilita;
end;

procedure TFrmFinanceiro.edvalorExit(Sender: TObject);
begin
        if edvalor.Text<>'' then
           edvalor.Text:=formatfloat('#,##0.00',StringToFloat(edvalor.text));
  edvalor.Color:=clWindow;
end;

procedure TFrmFinanceiro.btprimeiroClick(Sender: TObject);
begin
        dm.financeiro.First;
        atualiza;
end;

procedure TFrmFinanceiro.btanteriorClick(Sender: TObject);
begin
        dm.financeiro.prior;
        atualiza;
end;

procedure TFrmFinanceiro.btproximoClick(Sender: TObject);
begin
        dm.financeiro.next;
        atualiza;
end;

procedure TFrmFinanceiro.btultimoClick(Sender: TObject);
begin
        dm.financeiro.last;
        atualiza;
end;

procedure TFrmFinanceiro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        dm.financeiro.Close;
end;

procedure TFrmFinanceiro.FormKeyPress(Sender: TObject; var Key: Char);
begin
        if key=#13 then
        begin
           SelectNext(activecontrol,True,True);
           key:=#0;
        end;
end;

procedure TFrmFinanceiro.DBGrid1CellClick(Column: TColumn);
begin
        atualiza;
end;

procedure TFrmFinanceiro.btrelatorioClick(Sender: TObject);
begin
      try
        Application.CreateForm(TFrmRelCCImp, FrmRelCCImp);
        FrmRelCCImp.showmodal;
      finally
        FrmRelCCImp.Release;
        FrmRelCCImp:=nil;
      end;
end;

procedure TFrmFinanceiro.btexcluirClick(Sender: TObject);
begin
        if edconta.text='' then
           begin
              application.MessageBox('Selecione um Registro','Aten��o',mb_ok+mb_iconinformation);
              dbgrid1.SetFocus;
           end
           else
           begin
              if Application.Messagebox ('Deseja excluir o registro?','Aten��o', Mb_YesNoCancel+mb_iconquestion) = id_yes then
                 begin
                   busca := '';
                   ClickedOK := InputQuery('Digite Motivo da Exclus�o', 'Exclus�o do T�tulo', busca);
                   R_hora:=TimeToStr(time);
                   dm.rastro.Close;
                   dm.rastro.SQL.Clear;
                   dm.rastro.SQL.Add('select * from rastro');
                   dm.rastro.SQL.Add('where (data = '+chr(39)+
                   copy(DateToStr(date),7,4)+'/'+copy(DateToStr(date),4,2)+'/'+
                   copy(DateToStr(date),1,2)+chr(39)+')');
                   dm.rastro.SQL.Add('and (operador='+chr(39)+FrmPrincipal.sb.Panels[3].Text+chr(39)+')');
                   dm.rastro.SQL.Add('and (hora='+chr(39)+R_hora+chr(39)+')');
                   dm.rastro.Open;
                   dm.rastro.Insert;
                   dm.rastrodata.Value:=date;
                   dm.rastrohora.Value:=R_hora;
                   dm.rastrooperador.Value:=FrmPrincipal.sb.Panels[3].Text;
                   dm.rastrorotina.Value:='FINANCEIRO';
                   dm.rastrooperacao.Value:='E';
                   dm.rastrohistorico.Value:=FrmFinanceiro.eddoc.Text+' '+
                   FrmFinanceiro.edhistorico.text;
          //       dm.rastrofavorecido.Value:=StrToInt(edcliente.Text);
                   dm.rastrovalor.Value:=StringToFloat(edvalor.Text);
                   dm.rastroobs.Value:=busca;
                   dm.rastro.Post;
                   dm.rastro.Close;

                   qratualizar.Close;
                   qratualizar.SQL.Clear;
                   qratualizar.SQL.Add('delete from financeiro');
                   qratualizar.SQL.Add('where codigo = '+lbcodigo.caption);
                   qratualizar.ExecSQL;
                   limpar;
                   btfiltrar.Click;
                 end;
           end;
end;

procedure TFrmFinanceiro.btfiltrarClick(Sender: TObject);
begin
    if (medatainicial.Text<>'  /  /    ') and
       (medatafinal.Text<>'  /  /    ') then
       begin
         dm.financeiro.Close;
         dm.financeiro.SQL.Clear;
         dm.financeiro.SQL.Add('select * from financeiro');
         dm.financeiro.SQL.Add('where (data between '+chr(39)+
         copy(medatainicial.text,7,4)+'/'+copy(medatainicial.text,4,2)+'/'+
         copy(medatainicial.text,1,2)+chr(39)+' and '+chr(39)+
         copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
         copy(MeDataFinal.text,1,2)+chr(39)+')');
         if edcc.Text<>'' then
            dm.financeiro.SQL.Add('and (conta = '+chr(39)+edcc.Text+chr(39)+')');
         if edhistoricoI.Text<>'' then
            dm.financeiro.sql.add('and (historico like '+chr(39)+'%'+edhistoricoI.text+'%'+chr(39)+')');
         dm.financeiro.SQL.Add('order by data,tipo,doc,codigo');
         dm.financeiro.open;
       end;
end;

procedure TFrmFinanceiro.medatainicialExit(Sender: TObject);
begin
        if MeDataInicial.text<>'  /  /    ' then
        begin
        Try
           StrToDate(MeDataInicial.Text) ;
        Except
        begin
           application.MessageBox('Data Inv�lida!','Aten��o',mb_Ok+mb_iconerror);
           MeDataInicial.setfocus;
        end;
        end;
        end;
  MeDataInicial.Color:=clWindow;
end;

procedure TFrmFinanceiro.medatafinalExit(Sender: TObject);
begin
        if MeDataFinal.text<>'  /  /    ' then
        begin
        Try
           StrToDate(MeDataFinal.Text) ;
           If StrToDate(MeDataInicial.Text) > StrToDate(MeDataFinal.Text) then
              Begin
                 MessageBox(Handle, 'Data inferior � data inicial de pesquisa!!', 'Aten��o', mb_IconWarning or mb_Ok);
                 MeDataFinal.SetFocus;
              End;
        Except
        begin
           application.MessageBox('Data Inv�lida!','Aten��o',mb_Ok+mb_iconerror);
           MeDataFinal.setfocus;
        end;
        end;
        end;
  MeDataFinal.Color:=clWindow;
end;

procedure TFrmFinanceiro.edcontrapartidaExit(Sender: TObject);
begin
      if edcontrapartida.Text<>'' then
         begin
           dm.ContasCorrente.open;
           if not dm.ContasCorrente.Locate('conta',edcontrapartida.text,[]) then
              begin
                application.MessageBox('Conta n�o Cadastrada','Aten��o',mb_ok+mb_iconinformation);
                edcontrapartida.text:='';
              end
              else
              begin
                if eddoc.text='' then
                   begin
                     eddoc.Text:=copy(DateToStr(date),1,2)+copy(DateToStr(date),4,2)+
                     copy(DateToStr(date),9,2)+' '+
                     copy(TimeToStr(time),1,2)+copy(TimeToStr(time),4,2)+
                     copy(TimeToStr(time),7,2);
                   end;
                cbcontrapartida.Text:=dm.ContasCorrentedescricao.value;
                btgravar.SetFocus;
              end;
         end;
  edcontrapartida.Color:=clWindow;
end;

procedure TFrmFinanceiro.cbcontrapartidaExit(Sender: TObject);
begin
      if cbcontrapartida.Text<>'' then
         begin
           dm.ContasCorrente.Open;
           if not dm.ContasCorrente.Locate('descricao',cbcontrapartida.text,[]) then
              begin
                application.MessageBox('Conta n�o Cadastrada','Aten��o',mb_ok+mb_iconinformation);
                cbcontrapartida.text:='';
                cbcontrapartida.SetFocus;
              end
              else
              begin
                if eddoc.text='' then
                   begin
                     eddoc.Text:=copy(DateToStr(date),1,2)+copy(DateToStr(date),4,2)+
                     copy(DateToStr(date),9,2)+' '+
                     copy(TimeToStr(time),1,2)+copy(TimeToStr(time),4,2)+
                     copy(TimeToStr(time),7,2);
                   end;
                edcontrapartida.Text:=dm.ContasCorrenteconta.value;
                btgravar.SetFocus;
              end;
         end
         else
           btgravar.SetFocus;
  cbcontrapartida.Color:=clWindow;
end;

procedure TFrmFinanceiro.BitBtn2Click(Sender: TObject);
var
busca,vlrextenso,espacos:string;
ClickedOK: Boolean;
i:integer;
begin
      if edvalor.Text<>'' then
         begin
            busca := '';
            ClickedOK := InputQuery('Impress�o de Cheque Individual', 'Digite: 1  - para Nominal', busca);
            if ClickedOK then
               begin
                 qrlinha1.Caption:='';
                 qrlinha2.Caption:='';
                 qrnominal.Caption:='';
                 dm.parametros.Close;
                 dm.parametros.Open;
                 qrvalor.Caption:='#'+edvalor.Text+'#';
                 qrdia.caption:=copy(medata.text,1,2);
                 if copy(medata.text,4,2)='01' then
                    qrmes.caption:='Janeiro'
                 else if copy(medata.text,4,2)='02' then
                    qrmes.caption:='Fevereiro'
                 else if copy(medata.text,4,2)='03' then
                    qrmes.caption:='Mar�o'
                 else if copy(medata.text,4,2)='04' then
                    qrmes.caption:='Abril'
                 else if copy(medata.text,4,2)='05' then
                    qrmes.caption:='Maio'
                 else if copy(medata.text,4,2)='06' then
                    qrmes.caption:='Junho'
                 else if copy(medata.text,4,2)='07' then
                    qrmes.caption:='Julho'
                 else if copy(medata.text,4,2)='08' then
                    qrmes.caption:='Agosto'
                 else if copy(medata.text,4,2)='09' then
                    qrmes.caption:='Setembro'
                 else if copy(medata.text,4,2)='10' then
                    qrmes.caption:='Outubro'
                 else if copy(medata.text,4,2)='11' then
                    qrmes.caption:='Novembro'
                 else if copy(medata.text,4,2)='12' then
                    qrmes.caption:='Dezembro';
                 qrano.caption:=copy(medata.text,7,4);
                 qrcidade.Caption:=dm.parametroscidade.Value;
                 vlrextenso:=NumeroParaExtenso(StringToFloat(edvalor.Text));
                 qrlinha1.Caption:=copy(vlrextenso,1,69);
{                 espacos:='';
                 if length(vlrextenso)<82 then
                    begin
                      for i:=length(qrlinha1.Caption) to 82 do
                          begin
                            espacos:=espacos+'*.';
                          end;
                    end;
                 qrlinha1.Caption:=copy(vlrextenso,1,82)+espacos;
}                 qrlinha2.Caption:=copy(vlrextenso,70,60);
                 if busca='1' then
                    begin
                      dm.DocPagarGeral.Close;
                      dm.DocPagarGeral.SQL.Clear;
                      dm.DocPagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                      dm.DocPagarGeral.SQL.Add('D.tipo,D.localcob,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                      dm.DocPagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                      dm.DocPagarGeral.SQL.Add('from fornecedores F, docPagar D');
                      dm.DocPagarGeral.SQL.Add('where (D.fornecedor=F.codigo)');
                      dm.DocPagarGeral.SQL.Add('and (D.doc = '+chr(39)+eddoc.text+chr(39)+')');
                      dm.DocPagarGeral.SQL.Add('order by D.emissao');
                      dm.DocPagarGeral.Open;
                      qrnominal.Caption:=dm.DocPagarGeralnome.Value;
{                      espacos:='';
                      if length(qrnominal.Caption)<90 then
                         begin
                           for i:=length(qrnominal.Caption) to 90 do
                               begin
                                 espacos:=espacos+' ';
                               end;
                         end;
                      qrnominal.Caption:=qrnominal.Caption+espacos;
}                    end;
//                 RLReport1.Preview;
                 QuickRep1.Preview;
               end;
         end
         else
         begin
           application.MessageBox('Escolha um T�tulo','Aten��o',mb_ok+mb_iconinformation);
         end;
end;

procedure TFrmFinanceiro.medatainicialEnter(Sender: TObject);
begin
  medatainicial.Color:=$0080FFFF;
end;

procedure TFrmFinanceiro.medatafinalEnter(Sender: TObject);
begin
  medatafinal.Color:=$0080FFFF;
end;

procedure TFrmFinanceiro.edccEnter(Sender: TObject);
begin
  edcc.Color:=$0080FFFF;
end;

procedure TFrmFinanceiro.edcontaEnter(Sender: TObject);
begin
  edconta.Color:=$0080FFFF;
end;

procedure TFrmFinanceiro.cbcontaEnter(Sender: TObject);
begin
  cbconta.Color:=$0080FFFF;
end;

procedure TFrmFinanceiro.eddocEnter(Sender: TObject);
begin
  eddoc.Color:=$0080FFFF;
end;

procedure TFrmFinanceiro.eddocorigemEnter(Sender: TObject);
begin
  eddocorigem.Color:=$0080FFFF;
end;

procedure TFrmFinanceiro.edhistoricoEnter(Sender: TObject);
begin
  edhistorico.Color:=$0080FFFF;
end;

procedure TFrmFinanceiro.cbplanocontaEnter(Sender: TObject);
begin
  cbplanoconta.Color:=$0080FFFF;
end;

procedure TFrmFinanceiro.edvalorEnter(Sender: TObject);
begin
  edvalor.Color:=$0080FFFF;
end;

procedure TFrmFinanceiro.edcontrapartidaEnter(Sender: TObject);
begin
  edcontrapartida.Color:=$0080FFFF;
end;

procedure TFrmFinanceiro.cbcontrapartidaEnter(Sender: TObject);
begin
  cbcontrapartida.Color:=$0080FFFF;
end;

procedure TFrmFinanceiro.edccExit(Sender: TObject);
begin
  edcc.Color:=clWindow;
end;

procedure TFrmFinanceiro.eddocExit(Sender: TObject);
begin
  eddoc.Color:=clWindow;
end;

procedure TFrmFinanceiro.eddocorigemExit(Sender: TObject);
begin
  eddocorigem.Color:=clWindow;
end;

procedure TFrmFinanceiro.edhistoricoExit(Sender: TObject);
begin
  edhistorico.Color:=clWindow;
end;

procedure TFrmFinanceiro.cbvendedorExit(Sender: TObject);
begin
  if cbvendedor.Text<>'' then
     begin
       dm.Fornecedores.close;
       dm.Fornecedores.sql.clear;
       dm.Fornecedores.sql.add('select * from fornecedores');
       dm.fornecedores.sql.add('where fantasia = '+chr(39)+cbvendedor.text+chr(39));
       dm.Fornecedores.open;
       if dm.fornecedores.RecordCount<1 then
          begin
            application.MessageBox('Vendedor n�o Localizado!','Aten��o',mb_Ok+mb_iconerror);
            cbvendedor.setfocus;
          end;
     end;
  cbvendedor.Color:=clWindow;
end;

procedure TFrmFinanceiro.cbvendedorEnter(Sender: TObject);
begin
  cbvendedor.Color:=$0080FFFF;
end;

end.
