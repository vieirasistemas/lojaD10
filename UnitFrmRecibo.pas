unit UnitFrmRecibo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, EditAlinhado, Buttons, QuickRpt, ExtCtrls, jpeg,
  QRCtrls, Unit2, UnitFunDatas, DB, DBTables, ComObj, Mask, ECC_Justifica,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFrmRecibo = class(TForm)
    Label1: TLabel;
    edsacado: TEdit;
    edvalor: TEditAlinh;
    lbvalor: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
    btgravar: TBitBtn;
    chword: TCheckBox;
    mecpf: TMaskEdit;
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    qrdata1: TQRLabel;
    qrmemo1: TQRECC_Memo;
    qrvalor1: TQRLabel;
    qrtitulo1: TQRLabel;
    qrtitulo: TQRLabel;
    qrvalor: TQRLabel;
    qrmemo2: TQRECC_Memo;
    qrdata: TQRLabel;
    QRShape1: TQRShape;
    lbcons: TLabel;
    Label3: TLabel;
    qratualizar: TZQuery;
    rbentrada: TRadioButton;
    Label8: TLabel;
    rbsaida: TRadioButton;
    Label4: TLabel;
    cbplanoconta: TComboBox;
    QrAssin: TQRLabel;
    qrdoc: TQRLabel;
    qrdocI: TQRLabel;
    QrAssinI: TQRLabel;
    qrempresa: TQRLabel;
    qrendereco: TQRLabel;
    qrcnpj: TQRLabel;
    qremail: TQRLabel;
    qrempresaI: TQRLabel;
    qrcnpjI: TQRLabel;
    qrenderecoI: TQRLabel;
    qremailI: TQRLabel;
    Label6: TLabel;
    eddoc: TEdit;
    Label5: TLabel;
    cbconta: TComboBox;
    procedure btgravarClick(Sender: TObject);
    procedure edvalorExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edsacadoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rbentradaClick(Sender: TObject);
    procedure rbsaidaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mecpfKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mecpfExit(Sender: TObject);
    procedure cbplanocontaExit(Sender: TObject);
    procedure cbcontaExit(Sender: TObject);
    procedure cbcontaEnter(Sender: TObject);
    procedure cbplanocontaEnter(Sender: TObject);
    procedure mecpfEnter(Sender: TObject);
    procedure edsacadoEnter(Sender: TObject);
    procedure edsacadoExit(Sender: TObject);
    procedure eddocEnter(Sender: TObject);
    procedure eddocExit(Sender: TObject);
    procedure Memo1Enter(Sender: TObject);
    procedure Memo1Exit(Sender: TObject);
    procedure edvalorEnter(Sender: TObject);
  private
    { Private declarations }
  public
  modulo:string;
  aluno,matricula:integer;
    { Public declarations }
  end;

var
  FrmRecibo: TFrmRecibo;

implementation

uses Unitdm, UnitFrmPrincipal, UnitFrmCadClientes, UnitFrmCadFornecedores;

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

procedure InserirTitulos;
var
N_recibo:integer;
begin
     dm.parametros.Close;
     dm.parametros.Open;
     N_recibo:=dm.parametrosrecibo.Value+1;
     FrmRecibo.qratualizar.close;
     FrmRecibo.qratualizar.sql.clear;
     FrmRecibo.qratualizar.sql.add('update parametros set');
     FrmRecibo.qratualizar.sql.add('recibo = :N_recibo');
     FrmRecibo.qratualizar.Params[0].Value := N_recibo;
     FrmRecibo.qratualizar.ExecSQL;

     //Financeiro
     dm.financeiro.Close;
     dm.financeiro.SQL.Clear;
     dm.financeiro.SQL.Add('select * from financeiro');
     dm.financeiro.SQL.Add('where (data = '+chr(39)+
     copy(DateToStr(date),7,4)+'/'+copy(DateToStr(date),4,2)+'/'+
     copy(DateToStr(date),1,2)+chr(39)+')');
     dm.Financeiro.open;
     dm.Financeiro.insert;
     dm.Financeiroconta.Value:=dm.parametroscontacaixa.Value;
     dm.Financeirodata.Value:=date;
     dm.financeiroDoc.Value:='REC '+formatfloat('000000',N_recibo);
     dm.Financeirohistorico.Value:=FrmRecibo.memo1.text+' '+FrmRecibo.edsacado.Text;
     dm.financeiroPlanoConta.Value:='11101005';
     dm.Financeirotipo.value:='C';
     dm.Financeirocredito.Value:=StringToFloat(FrmRecibo.edvalor.Text);
     dm.Financeiro.Post;
     dm.financeiro.Close;
end;

procedure TFrmRecibo.btgravarClick(Sender: TObject);
var
A_Sac_cpf,arquivo,R_hora:string;
MSWord: Variant;
C_Recibo:integer;
begin
  if (edvalor.Text<>'') and (edsacado.Text<>'') then
     begin
       dm.parametros.Close;
       dm.parametros.Open;
       C_Recibo:=dm.parametrosrecibo.value+1;

       qratualizar.close;
       qratualizar.sql.clear;
       qratualizar.sql.add('update parametros set');
       qratualizar.sql.add('Recibo = :C_Recibo');
       qratualizar.Params[0].Value := C_Recibo;
       qratualizar.ExecSQL;

       qrMEMO1.Lines.Clear;
       qrvalor.caption:='Valor R$ '+formatfloat('#,##0.00',StringToFloat(edvalor.text));
       qrvalor1.caption:='Valor R$ '+formatfloat('#,##0.00',StringToFloat(edvalor.text));

       if length(mecpf.text)>11 then
          A_Sac_cpf:='CNPJ: '+copy(mecpf.text,1,2)+'.'+
          copy(mecpf.text,3,3)+'.'+copy(mecpf.text,6,3)+
          '/'+copy(mecpf.text,10,2)+'/'+copy(mecpf.text,9,4)+
          '-'+copy(mecpf.text,13,2)
       else
          A_Sac_cpf:='CPF: '+copy(mecpf.text,1,3)+'.'+
          copy(mecpf.text,4,3)+'.'+copy(mecpf.text,7,3)+
          '-'+copy(mecpf.text,10,2);
       if rbsaida.Checked then
          begin
            qrMEMO1.Lines.Add('Recebi do(a) Sr(a). '+
            dm.parametrosrazaosocial.Value+', '+copy(dm.parametroscnpj.Value,1,2)+'.'+
            copy(dm.parametroscnpj.Value,3,3)+'.'+copy(dm.parametroscnpj.Value,6,3)+
            '/'+copy(dm.parametroscnpj.Value,9,4)+'-'+copy(dm.parametroscnpj.Value,13,2)+', a importância de R$ '+
            formatfloat('#,##0.00',StringToFloat(edvalor.text))+' ('+
            NumeroParaExtenso(StringToFloat(edvalor.text))+'), referente ao '+memo1.text);
            qrassin.Caption:=edsacado.Text;
            qrdoc.Caption:=A_Sac_cpf;
            qrassinI.Caption:=edsacado.Text;
            qrdocI.Caption:=A_Sac_cpf;
          end
          else
          begin
            qrMEMO1.Lines.Add('Recebi do(a) Sr(a). '+
            edsacado.text+', '+A_Sac_cpf+', a importância de R$ '+
            formatfloat('#,##0.00',StringToFloat(edvalor.text))+' ('+
            NumeroParaExtenso(StringToFloat(edvalor.text))+'), referente ao '+memo1.text);
            qrassin.Caption:=dm.parametrosrazaosocial.Value;
            qrdoc.Caption:=copy(dm.parametroscnpj.Value,1,2)+'.'+
            copy(dm.parametroscnpj.Value,3,3)+'.'+copy(dm.parametroscnpj.Value,6,3)+
            '/'+copy(dm.parametroscnpj.Value,9,4)+'-'+copy(dm.parametroscnpj.Value,13,2);
            qrassinI.Caption:=dm.parametrosrazaosocial.Value;
            qrdocI.Caption:=qrdoc.Caption;
          end;
       qrMEMO2.Lines.Clear;
       qrMEMO2.Lines.Add(qrMEMO1.Lines.Text);

       qrempresa.Caption:=dm.parametrosrazaosocial.Value;
       qrempresaI.Caption:=dm.parametrosrazaosocial.Value;
       qrcnpj.Caption:=copy(dm.parametroscnpj.Value,1,2)+'.'+copy(dm.parametroscnpj.Value,3,3)+'.'+copy(dm.parametroscnpj.Value,6,3)+
       '/'+copy(dm.parametroscnpj.Value,9,4)+'-'+copy(dm.parametroscnpj.Value,13,2)+' -  I.E.: '+dm.parametrosie.Value;
       qrcnpjI.Caption:=copy(dm.parametroscnpj.Value,1,2)+'.'+copy(dm.parametroscnpj.Value,3,3)+'.'+copy(dm.parametroscnpj.Value,6,3)+
       '/'+copy(dm.parametroscnpj.Value,9,4)+'-'+copy(dm.parametroscnpj.Value,13,2)+' -  I.E.: '+dm.parametrosie.Value;
       qrendereco.Caption:=dm.parametrosendereco.Value+' - '+dm.parametrosbairro.Value+' - Fone: ('+
       dm.parametrosddd.Value+')'+dm.parametrosfone1.Value;
       qrenderecoI.Caption:=dm.parametrosendereco.Value+' - '+dm.parametrosbairro.Value+' - Fone: ('+
       dm.parametrosddd.Value+')'+dm.parametrosfone1.Value;
       qremail.Caption:=dm.parametroscidade.Value+'-'+dm.parametrosEstado.Value+' - CEP: '+dm.parametroscep.Value;
       qremailI.Caption:=dm.parametroscidade.Value+'-'+dm.parametrosEstado.Value+' - CEP: '+dm.parametroscep.Value;

       qrdata.Caption:=dm.parametroscidade.Value+', '+formatdatetime('dd" de "mmmm" de "yyyy',date);
       qrdata1.Caption:=dm.parametroscidade.Value+', '+formatdatetime('dd" de "mmmm" de "yyyy',date);
        qrtitulo.Caption:='RECIBO - Nº: '+
        formatfloat('00000',C_Recibo)+
        '/'+formatdatetime('YYYY',date);
        qrtitulo1.Caption:='RECIBO - Nº: '+
        formatfloat('00000',C_Recibo)+
        '/'+formatdatetime('YYYY',date);
        qrempresa.Enabled:=true;
        qrcnpj.Enabled:=true;
        qrendereco.Enabled:=true;
        qremail.Enabled:=true;
        qrempresaI.Enabled:=true;
        qrcnpjI.Enabled:=true;
        qrenderecoI.Enabled:=true;
        qremailI.Enabled:=true;

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
       dm.rastrorotina.Value:='RECIBO';
       dm.rastrooperacao.Value:='I';
       if rbentrada.Checked then
          dm.rastrohistorico.Value:='Vlr ref rec '+edsacado.Text
       else
          dm.rastrohistorico.Value:='Vlr ref pagto '+edsacado.Text;
       dm.rastrovalor.Value:=StringToFloat(edvalor.text);
       dm.rastroobs.Value:=memo1.text;
       dm.rastro.Post;
       dm.rastro.Close;

       //Financeiro
       dm.financeiro.Close;
       dm.financeiro.SQL.Clear;
       dm.financeiro.SQL.Add('select * from financeiro');
       dm.financeiro.SQL.Add('where data = '+chr(39)+
       copy(DateToStr(date),7,4)+'/'+copy(DateToStr(date),4,2)+'/'+
       copy(DateToStr(date),1,2)+chr(39));
       dm.financeiro.open;
       dm.financeiro.Insert;
       dm.financeiroconta.value:='CX';
       if eddoc.Text<>'' then
          dm.financeirodoc.Value:=eddoc.Text
       else
          dm.financeirodoc.Value:=formatfloat('00000',C_Recibo)+'/'+formatdatetime('YYYY',date);
       if rbentrada.Checked then
          begin
            dm.financeirotipo.value:='C';
            dm.financeirohistorico.value:='Vlr. ref rec '+memo1.text+' - '+edsacado.Text;
            dm.financeiroCredito.value:=StringToFloat(edvalor.text);
          end
          else
          begin
            dm.financeirotipo.value:='D';
            dm.financeirohistorico.value:='Vlr. ref pagto '+memo1.text+' - '+edsacado.Text;
            dm.financeirodebito.value:=StringToFloat(edvalor.text);
          end;
       dm.financeirodata.value:=date;
       if cbplanoconta.Text<>'' then
          begin
            dm.PlanoContas.Open;
            if dm.PlanoContas.Locate('chave',cbplanoconta.Text,[]) then
               dm.financeiroplanoconta.Value:=dm.PlanoContascodigo.value;
          end;
       if cbconta.Text<>'' then
          begin
            dm.ContasCorrente.Open;
            if dm.ContasCorrente.Locate('descricao',cbconta.Text,[]) then
               dm.financeiroconta.Value:=dm.ContasCorrenteconta.value;
          end;
       dm.financeiroOperador.Value:=FrmPrincipal.sb.Panels[3].Text;
       dm.financeiroData_Operacao.Value:=date;
       dm.financeiroHora_Operacao.Value:=TimeToStr(time);
       dm.financeiro.post;

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
       if rbentrada.Checked then
          dm.rastrohistorico.Value:='Vlr ref rec '+edsacado.Text
       else
          dm.rastrohistorico.Value:='Vlr ref pagto '+edsacado.Text;
       dm.rastrovalor.Value:=StringToFloat(edvalor.text);
       dm.rastro.Post;
       dm.rastro.Close;

       QuickRep1.Preview;

       mecpf.SelStart:=0;
       mecpf.SelLength:=length(mecpf.text);
       mecpf.SetFocus;
     end;
end;

procedure TFrmRecibo.edvalorExit(Sender: TObject);
begin
  if edvalor.Text<>'' then
     edvalor.Text:=formatfloat('#,##0.00',StringToFloat(edvalor.text));
  edvalor.Color:=clWindow;
end;

procedure TFrmRecibo.FormKeyPress(Sender: TObject; var Key: Char);
begin
        if key=#13 then
           begin
              SelectNext(activecontrol,True,True);
              key:=#0
           end;
end;

procedure TFrmRecibo.edsacadoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_f10 then
     begin
      if rbentrada.checked=true then
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
         end;
     end;
end;

procedure TFrmRecibo.rbentradaClick(Sender: TObject);
begin
  lbcons.caption:='F10 para Consultar Cliente';
  mecpf.SetFocus;
end;

procedure TFrmRecibo.rbsaidaClick(Sender: TObject);
begin
  lbcons.caption:='F10 para Consultar Fornecedor';
  mecpf.SetFocus;
end;

procedure TFrmRecibo.FormShow(Sender: TObject);
begin
  dm.contascorrente.Close;
  dm.contascorrente.SQL.Clear;
  dm.contascorrente.SQL.Add('select * from contascorrente');
  dm.contascorrente.Open;
  cbconta.Items.Clear;
  while not dm.contascorrente.Eof do
        begin
          cbconta.Items.Add(dm.contascorrentedescricao.Value);
          dm.contascorrente.Next;
        end;

  dm.PlanoContas.Close;
  dm.PlanoContas.SQL.Clear;
  dm.PlanoContas.SQL.Add('select * from PlanoContas');
  dm.PlanoContas.SQL.Add('order by codigo');
  dm.PlanoContas.Open;
  cbplanoconta.Items.Clear;
  while not dm.PlanoContas.Eof do
        begin
          cbplanoconta.Items.add(dm.PlanoContaschave.value);
          dm.PlanoContas.next;
        end;

  mecpf.SetFocus;
end;

procedure TFrmRecibo.mecpfKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_f10 then
     begin
       if rbsaida.Checked then
          begin
           try
             Application.CreateForm(TFrmCadFornecedores, FrmCadFornecedores);
             FrmCadFornecedores.showmodal;
           finally
             FrmCadFornecedores.Release;
             FrmCadFornecedores:=nil;
           end;
          end
          else
          begin
           try
             Application.CreateForm(TFrmCadClientes, FrmCadClientes);
             FrmCadClientes.showmodal;
           finally
             FrmCadClientes.Release;
             FrmCadClientes:=nil;
           end;
          end;
     end;
end;

procedure TFrmRecibo.mecpfExit(Sender: TObject);
begin
  if mecpf.Text<>'' then
     begin
       memo1.text:='';
       dm.usuarios.Open;
       dm.usuarios.Locate('nome',FrmPrincipal.sb.Panels[3].Text,[]);
       if dm.usuariosfinanceiro.value<>'2' then
          begin
           if rbsaida.Checked then
              begin
                dm.Fornecedores.close;
                dm.Fornecedores.sql.clear;
                dm.Fornecedores.sql.add('select * from Fornecedores');
                dm.Fornecedores.sql.add('where cpf = '+chr(39)+mecpf.text+chr(39));
                dm.Fornecedores.open;
                if dm.fornecedores.RecordCount>0 then
                   edsacado.Text:=dm.fornecedoresnome.Value
                else
                begin
                  dm.Fornecedores.close;
                  dm.Fornecedores.sql.clear;
                  dm.Fornecedores.sql.add('select * from Fornecedores');
                  dm.Fornecedores.sql.add('where cnpj = '+chr(39)+mecpf.text+chr(39));
                  dm.Fornecedores.open;
                  if dm.fornecedores.RecordCount>0 then
                     edsacado.Text:=dm.fornecedoresnome.Value
                end;
              end
              else
              begin
                dm.clientes.close;
                dm.clientes.sql.clear;
                dm.clientes.sql.add('select * from clientes');
                dm.clientes.sql.add('where cpf = '+chr(39)+mecpf.text+chr(39));
                dm.clientes.open;
                if dm.clientes.RecordCount>0 then
                   edsacado.Text:=dm.clientesnome.Value
                else
                begin
                  dm.clientes.close;
                  dm.clientes.sql.clear;
                  dm.clientes.sql.add('select * from clientes');
                  dm.clientes.sql.add('where cnpj = '+chr(39)+mecpf.text+chr(39));
                  dm.clientes.open;
                  if dm.clientes.RecordCount>0 then
                     edsacado.Text:=dm.clientesnome.Value
                end;
              end;
          end;
     end;
  mecpf.Color:=clWindow;
end;

procedure TFrmRecibo.cbplanocontaExit(Sender: TObject);
begin
  if cbplanoconta.Text<>'' then
     begin
        dm.PlanoContas.Open;
        if not dm.PlanoContas.Locate('chave',cbplanoconta.Text,[]) then
           begin
             application.MessageBox('Conta não Cadastrada','Atenção',mb_ok+mb_iconinformation);
             cbplanoconta.SetFocus;
           end
           else
           begin
             if length(dm.PlanoContascodigo.Value)<8 then
                begin
                  application.MessageBox('Conta inválida. Escolha outra conta','Atenção',mb_ok+mb_iconinformation);
                  cbplanoconta.SetFocus;
                end;
           end;
     end;
  cbplanoconta.Color:=clWindow;
end;

procedure TFrmRecibo.cbcontaExit(Sender: TObject);
begin
  if cbconta.Text<>'' then
     begin
       dm.contascorrente.open;
       if not dm.contascorrente.Locate('descricao',cbconta.text,[]) then
          begin
            application.MessageBox('Conta não Cadastrada','Atenção',mb_ok+mb_iconinformation);
            cbconta.text:='';
            cbconta.SetFocus;
          end;
     end;
  cbconta.Color:=clWindow;
end;

procedure TFrmRecibo.cbcontaEnter(Sender: TObject);
begin
  cbconta.Color:=$0080FFFF;
end;

procedure TFrmRecibo.cbplanocontaEnter(Sender: TObject);
begin
  cbplanoconta.Color:=$0080FFFF;
end;

procedure TFrmRecibo.mecpfEnter(Sender: TObject);
begin
  mecpf.Color:=$0080FFFF;
end;

procedure TFrmRecibo.edsacadoEnter(Sender: TObject);
begin
  edsacado.Color:=$0080FFFF;
end;

procedure TFrmRecibo.edsacadoExit(Sender: TObject);
begin
  edsacado.Color:=clWindow;
end;

procedure TFrmRecibo.eddocEnter(Sender: TObject);
begin
  eddoc.Color:=$0080FFFF;
end;

procedure TFrmRecibo.eddocExit(Sender: TObject);
begin
  eddoc.Color:=clWindow;
end;

procedure TFrmRecibo.Memo1Enter(Sender: TObject);
begin
  Memo1.Color:=$0080FFFF;
end;

procedure TFrmRecibo.Memo1Exit(Sender: TObject);
begin
  Memo1.Color:=clWindow;
end;

procedure TFrmRecibo.edvalorEnter(Sender: TObject);
begin
  edvalor.Color:=$0080FFFF;
end;

end.
