unit UnitFuncoes;

interface

uses SysUtils, Unitdm, UnitFrmPrincipal;

function StringToFloat(s : string) : Extended;
function InserePonto(texto: string): string;
function BuscaDireita(Busca,Text : string) : integer;
procedure InsereRastro(
  rotina,
  operacao,
  historico   : string;
  favorecido  : integer = 0;
  valor       : double = 0;
  obs         : string = ''
);

implementation

function StringToFloat(s : string) : Extended;
{ Filtra uma string qualquer, convertendo as suas partes
  num�ricas para sua representa��o decimal, por exemplo:
  'R$ 1.200,00' para 1200,00 '1AB34TZ' para 134}
  var
    i :Integer;
    t : string;
    SeenDecimal,SeenSgn : Boolean;
begin
  if s = '' then
    s := '0'
  else
    s :=  StringReplace(s, '.', '', [rfReplaceAll]);    

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

function BuscaDireita(Busca,Text : string) : integer;
{Pesquisa um caractere � direita da string,
 retornando sua posi��o}
var n,retorno : integer;
begin
retorno := 0;
for n := length(Text) downto 1 do
  begin
  if Copy(Text,n,1) = Busca then
  begin
  retorno := n;
  break;
  end;
  end;
Result := retorno;
end;

function InserePonto(texto: string): string;
var i:integer;s:string;
begin
   i:=1;
   s:='';
   while (i<=length(texto)) do
   begin
      if not (texto[i] in ['.',',']) then
         s:=s+texto[i]
      else if texto[i]=','then
      begin
         texto[i]:='.';
         s:=s+texto[i];
      end;
      Inc(i);
   end;
   InserePonto := s;
end;

procedure InsereRastro(
  rotina,
  operacao,
  historico   : string;
  favorecido  : integer = 0;
  valor       : double = 0;
  obs         : string = ''
);
begin
  dm.rastro.Close;
  dm.rastro.SQL.Clear;
  dm.rastro.SQL.Add('select * from rastro');
  dm.rastro.SQL.Add('where(1=2)');
  dm.rastro.Open;
  dm.rastro.Insert;
  dm.rastrodata.Value                 :=  Date;
  dm.rastrohora.Value                 :=  TimeToStr(Now);
  dm.rastrooperador.Value             :=  FrmPrincipal.sb.Panels[3].Text;
  dm.rastrorotina.Value               :=  rotina;
  dm.rastrooperacao.Value             :=  operacao;  
  dm.rastrohistorico.Value            :=  historico;
  dm.rastrofavorecido.Value           :=  favorecido;
  dm.rastrovalor.Value                :=  valor;
  dm.rastroobs.Value                  :=  obs;
  dm.rastro.Post;
  dm.rastro.Close;
end;

end.
