unit UnitFrmParametros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, Grids, DBGrids, DB, DBTables,
  ComCtrls, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFrmParametros = class(TForm)
    ColorDialog1: TColorDialog;
    Label79: TLabel;
    eddiasprotesto: TEdit;
    edtarifa_bol: TEdit;
    Label56: TLabel;
    Label54: TLabel;
    edatraso: TEdit;
    edmulta: TEdit;
    Label4: TLabel;
    Label2: TLabel;
    edjuros: TEdit;
    lbcon: TLabel;
    cbcontacaixa: TComboBox;
    Label51: TLabel;
    cbcontabanco: TComboBox;
    Label32: TLabel;
    qratualizar: TZQuery;
    Label1: TLabel;
    edRemessaBrad: TEdit;
    Label3: TLabel;
    eddescmax: TEdit;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure edjurosExit(Sender: TObject);
    procedure edmultaExit(Sender: TObject);
    procedure cbreceberjurosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbcontacaixaExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmParametros: TFrmParametros;
  log: TextFile;
  R_hora,texto,tip:string;

implementation

uses Unitdm, Unitfrmprincipal;

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

procedure limpar;
begin
      FrmParametros.cbcontacaixa.text:='';
      FrmParametros.cbcontabanco.text:='';
      FrmParametros.edjuros.text:='';
      FrmParametros.edmulta.text:='';
//      FrmParametros.edpathfigura.text:='';
end;

procedure TFrmParametros.FormShow(Sender: TObject);
begin
      dm.parametros.Close;
      dm.parametros.Open;

      dm.ContasCorrente.Close;
      dm.ContasCorrente.SQL.Clear;
      dm.ContasCorrente.SQL.Add('select * from contascorrente');
      dm.ContasCorrente.Open;
      cbcontacaixa.Items.Clear;
      cbcontabanco.Items.Clear;
      while not dm.ContasCorrente.Eof do
            begin
              cbcontacaixa.Items.Add(dm.ContasCorrentedescricao.Value);
              cbcontabanco.Items.Add(dm.ContasCorrentedescricao.Value);
              dm.ContasCorrente.Next;
            end;

      dm.parametros.Close;
      dm.parametros.SQL.Clear;
      dm.parametros.SQL.Add('select * from parametros');
      dm.parametros.Open;
      if dm.ContasCorrente.Locate('conta',dm.parametroscontacaixa.Value,[]) then
         cbcontacaixa.Text:=dm.ContasCorrentedescricao.Value
      else
         cbcontacaixa.Text:='';
      if dm.ContasCorrente.Locate('conta',dm.parametroscontabanco.Value,[]) then
         cbcontabanco.Text:=dm.ContasCorrentedescricao.Value
      else
         cbcontabanco.Text:='';
      if dm.parametrosjuros1.IsNull then
         edjuros.Text:=''
      else
         edjuros.Text:=formatfloat('0.00',dm.parametrosjuros1.Value);
      if dm.parametrosDescMax.Value>0 then
         eddescmax.Text:=formatfloat('0.00',dm.parametrosDescMax.Value)
      else
         eddescmax.Text:='';
      if dm.parametrosmulta1.IsNull then
         edmulta.Text:=''
      else
         edmulta.Text:=formatfloat('0.00',dm.parametrosmulta1.Value);
//      edpathfiguraboleto.Text:=dm.parametrospathfiguraboleto.Value;
//      edpathfigura.Text:=dm.parametrospathfigura.Value;
end;

procedure TFrmParametros.SpeedButton2Click(Sender: TObject);
begin
        close;
end;

procedure TFrmParametros.edjurosExit(Sender: TObject);
begin
        if edjuros.Text<>'' then
           edjuros.Text:=formatfloat('0.00',StrToFloat(edjuros.text));
end;

procedure TFrmParametros.edmultaExit(Sender: TObject);
begin
        if edmulta.Text<>'' then
           edmulta.Text:=formatfloat('0.00',StrToFloat(edmulta.text));
end;

procedure TFrmParametros.cbreceberjurosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
P_pathbd,P_receberpadrao,
P_pagarpadrao,P_pagarjuros,P_conta,P_contabanco,
P_centroreceber,P_centropagar,
P_mensagemboleto,P_pathfiguraboleto,
P_pathfigura,P_ano,P_diasprotesto,P_cor:string;
P_DescMax,P_juros1,P_multa1,P_atraso,P_tarifa_bol:real;
P_RemessaBrad:integer;
begin
      if key=vk_f5 then
         begin
            if cbcontacaixa.Text<>'' then
               begin
                 dm.ContasCorrente.Open;
                 dm.ContasCorrente.Locate('descricao',cbcontacaixa.Text,[]);
                 P_conta:=dm.ContasCorrenteconta.Value;
               end
               else
                 P_conta:='';
            if cbcontabanco.Text<>'' then
               begin
                 dm.ContasCorrente.Open;
                 dm.ContasCorrente.Locate('descricao',cbcontabanco.Text,[]);
                 P_contabanco:=dm.ContasCorrenteconta.Value;
               end
               else
                 P_contabanco:='';
            if edjuros.Text<>'' then
               P_juros1:=StrToFloat(edjuros.Text)
            else
               P_juros1:=0;
            if edmulta.Text<>'' then
               P_multa1:=StrToFloat(edmulta.Text)
            else
               P_multa1:=0;
            if eddescmax.Text<>'' then
               P_DescMax:=StrToFloat(eddescmax.Text)
            else
               P_DescMax:=0;
//            P_pathfiguraboleto:=edpathfiguraboleto.Text;
//            P_pathfigura:=edpathfigura.Text;
            if edatraso.Text<>'' then
               P_atraso:=StrToFloat(edatraso.Text)
            else
               P_atraso:=0;
            if edtarifa_bol.Text='' then
               P_tarifa_bol:=0
            else
               P_tarifa_bol:=StringToFloat(edtarifa_bol.Text);
            if edRemessaBrad.Text='' then
               P_RemessaBrad:=0
            else
               P_RemessaBrad:=StrToInt(edRemessaBrad.Text);
            P_diasprotesto:=eddiasprotesto.Text;

            qratualizar.close;
            qratualizar.sql.clear;
            qratualizar.sql.add('update parametros set');
            qratualizar.sql.add('juros1 = :P_juros1,');
            qratualizar.sql.add('multa1 = :P_multa1,');
            qratualizar.sql.add('contacaixa = :P_conta,');
            qratualizar.sql.add('contabanco = :P_contabanco,');
            qratualizar.sql.add('RemessaBrad = :P_RemessaBrad,');
            qratualizar.sql.add('DescMax = :P_DescMax');
            qratualizar.Params[0].Value := P_juros1;
            qratualizar.Params[1].Value := P_multa1;
            qratualizar.Params[2].Value := P_conta;
            qratualizar.Params[3].Value := P_contabanco;
            qratualizar.Params[4].Value := P_RemessaBrad;
            qratualizar.Params[5].Value := P_DescMax;
            qratualizar.ExecSQL;

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
            dm.rastrorotina.Value:='PARAMETROS';
            dm.rastrooperacao.Value:='A';
            dm.rastrohistorico.Value:='Desc: '+eddescmax.Text+' - Juros: '+edjuros.Text+' - Multa: '+edmulta.Text;
            dm.rastro.Post;
            dm.rastro.Close;

            dm.parametros.Close;
            dm.parametros.SQL.Clear;
            dm.parametros.SQL.Add('select * from parametros');
            dm.parametros.Open;

         end
end;

procedure TFrmParametros.cbcontacaixaExit(Sender: TObject);
begin
      if cbcontacaixa.Text<>'' then
         begin
            dm.ContasCorrente.Open;
            if not dm.ContasCorrente.Locate('descricao',cbcontacaixa.Text,[]) then
               begin
                  application.MessageBox('Conta não Cadastrada','Atenção',mb_ok+mb_iconinformation);
                  cbcontacaixa.SetFocus;
               end;
         end;
end;

procedure TFrmParametros.FormKeyPress(Sender: TObject; var Key: Char);
begin
        if Key = CHR(13) Then
           Begin
              perform(WM_NextDlgCtl,0,0);
              Key := CHR(0);
           End;
end;

procedure TFrmParametros.SpeedButton3Click(Sender: TObject);
begin
        close;
end;

procedure TFrmParametros.SpeedButton4Click(Sender: TObject);
begin
        close;
end;

end.



