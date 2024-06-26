unit UnitFrmSangria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, EditAlinhado, StdCtrls, Mask, Grids, DBGrids, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFrmSangria = class(TForm)
    medata: TMaskEdit;
    Label3: TLabel;
    edhistorico: TEdit;
    Label4: TLabel;
    edvalor: TEditAlinh;
    Label9: TLabel;
    DBGrid1: TDBGrid;
    qratualizar: TZQuery;
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edvalorExit(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSangria: TFrmSangria;
  busca,R_hora:string;
  ClickedOK:boolean;

implementation

uses Unitdm, UnitFrmPrincipal;

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

procedure TFrmSangria.FormShow(Sender: TObject);
begin
  medata.Text:=DateToStr(date);
  dm.financeiro.Close;
  dm.financeiro.SQL.Clear;
  dm.financeiro.SQL.Add('select * from financeiro');
  dm.financeiro.SQL.Add('where (empresa = '+chr(39)+ FrmPrincipal.sb.Panels[7].text +chr(39)+')');
  dm.financeiro.SQL.Add('and (data = '+chr(39)+
  copy(medata.text,7,4)+'/'+copy(medata.text,4,2)+'/'+
  copy(medata.text,1,2)+chr(39)+')');
  dm.financeiro.SQL.Add('and (conta = '+chr(39)+'CX'+formatfloat('00',StrToInt(FrmPrincipal.sb.Panels[7].text))+chr(39)+')');
  dm.financeiro.SQL.Add('and (debito>0)');
  dm.financeiro.SQL.Add('order by data,historico');
  dm.financeiro.open;
end;

procedure TFrmSangria.FormKeyPress(Sender: TObject; var Key: Char);
begin
        if key=#13 then
        begin
           SelectNext(activecontrol,True,True);
           key:=#0;
        end;
end;

procedure TFrmSangria.edvalorExit(Sender: TObject);
begin
  if (medata.Text<>'  /  /    ') and (edhistorico.Text<>'') and (edvalor.Text<>'') then
     begin
       dm.financeiro.Insert;
       dm.financeiroconta.Value:='CX'+formatfloat('00',StrToInt(FrmPrincipal.sb.Panels[7].text));
       dm.financeirodata.Value:=StrToDate(medata.text);
       dm.financeirohistorico.Value:=edhistorico.text;
       dm.financeirotipo.value:='D';
       dm.financeirodebito.Value:=StringToFloat(edvalor.Text);
       dm.financeiroOperador.Value:=FrmPrincipal.sb.Panels[3].Text;
       dm.financeiroempresa.Value:=StrToInt(FrmPrincipal.sb.Panels[7].Text);
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
       dm.rastrohistorico.Value:=edhistorico.text;
       dm.rastrovalor.Value:=StringToFloat(edvalor.Text);
       dm.rastroobs.Value:='CX'+formatfloat('00',StrToInt(FrmPrincipal.sb.Panels[7].text));
       dm.rastro.Post;
       dm.rastro.Close;
       edhistorico.Text:='';
       edvalor.Text:='';
       medata.SetFocus;
     end;
end;

procedure TFrmSangria.DBGrid1DblClick(Sender: TObject);
begin
  if Application.Messagebox ('Deseja excluir o registro?','Aten��o', Mb_YesNoCancel+mb_iconquestion) = id_yes then
     begin
       busca := '';
       ClickedOK := InputQuery('Digite Motivo da Exclus�o', 'Exclus�o do T�tulo', busca);
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
           dm.rastrorotina.Value:='FINANCEIRO';
           dm.rastrooperacao.Value:='E';
           dm.rastrohistorico.Value:=dm.financeirohistorico.Value;
           dm.rastrovalor.Value:=dm.financeirodebito.Value;
           dm.rastroobs.Value:=busca;
           dm.rastro.Post;
           dm.rastro.Close;

           qratualizar.Close;
           qratualizar.SQL.Clear;
           qratualizar.SQL.Add('delete from financeiro');
           qratualizar.SQL.Add('where codigo = '+IntToStr(dm.financeirocodigo.Value));
           qratualizar.ExecSQL;
           dm.financeiro.Close;
           dm.financeiro.Open;
           medata.SetFocus;
          end;
     end;
end;

end.
