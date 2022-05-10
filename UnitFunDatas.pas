unit UnitFunDatas;
{** Criada em 24/07/1999 - Baseada em necessidades genericas de tratamento de datas ** Autor : Fabio Camara}
interface
 uses
  Forms, Dialogs, Messages, WinProcs, SysUtils, Classes,
  Graphics, ExtCtrls, Controls;
 
Type {Tipos criados}
  TSemestre = record
  Mes, Ano : Word;
  end;
  Semestre = array[0..5] of TSemestre;
 
function ReturnSixMonth(Actual:TDateTime):Semestre;
function NameMonth(Mes:Word;Abrev:Boolean):string;
function DataExtenso(Data:TDateTime): string;
function DataValida(StrD: string): boolean;
function PrimeiroDiaUtil(Data:TDateTime):TDateTime;
function IsWeekEnd(dData : TDateTime) : boolean;
 
implementation
 
function ReturnSixMonth(Actual:TDateTime):Semestre;
{Retorna 6 meses atrás da data enviada, de mes em mes}
var
  d,m,y : word;
  i : byte;
  Data : TDateTime;
begin
  for i := 6 downto 1 do begin
  Data := Actual - (30 * i);
  DecodeDate(Data,y,m,d);
  Result[i].Mes := m;
  Result[i].Ano := y;
  end;
end;
 
function NameMonth(Mes:Word;Abrev:Boolean):String;
{Retorna o nome de um mês abreviado ou não}
const
  NameL : array [1..12] of String[9] = ('JANEIRO','FEVEREIRO','MARÇO','ABRIL',
'MAIO','JUNHO','JULHO','AGOSTO',
'SETEMBRO','OUTUBRO','NOVEMBRO',
'DEZEMBRO');
begin
  if (Mes in [1..12]) then
  if Abrev then
  Result := Copy(NameL[Mes],1,3)
  else
  Result := NameL[Mes];
end;
 
function DataExtenso(Data:TDateTime): String;
{Retorna uma data por extenso}
var
  NoDia : Integer;
  DiaDaSemana : array [1..7] of String;
  Meses : array [1..12] of String;
  Dia, Mes, Ano : Word;
begin
{ Dias da Semana }
  DiaDasemana [1]:= 'Domingo';
  DiaDasemana [2]:= 'Segunda-feira';
  DiaDasemana [3]:= 'Terçafeira';
  DiaDasemana [4]:= 'Quarta-feira';
  DiaDasemana [5]:= 'Quinta-feira';
  DiaDasemana [6]:= 'Sexta-feira';
  DiaDasemana [7]:= 'Sábado';
{ Meses do ano }
  Meses [1] := 'Janeiro';
  Meses [2] := 'Fevereiro';
  Meses [3] := 'Março';
  Meses [4] := 'Abril';
  Meses [5] := 'Maio';
  Meses [6] := 'Junho';
  Meses [7] := 'Julho';
  Meses [8] := 'Agosto';
  Meses [9] := 'Setembro';
  Meses [10]:= 'Outubro';
  Meses [11]:= 'Novembro';
  Meses [12]:= 'Dezembro';
  DecodeDate (Data, Ano, Mes, Dia);
  NoDia := DayOfWeek (Data);
  Result := {DiaDaSemana[NoDia] + ', ' +}
  IntToStr(Dia) + ' de ' + Meses[Mes]+ ' de ' + IntToStr(Ano);
end;

function DataValida(StrD: string): Boolean;
{Testa se uma data é valida}
begin
  Result := true;
  try
  StrToDate(StrD);
  except
  on EConvertError do Result:=False;
  end;
end;
 
function PrimeiroDiaUtil(Data:TDateTime):TDateTime;
{Retorna data do primeiro dia Util do mes, de uma data informada}
var Ano, Mes, Dia : word;
DiaDaSemana : Integer;
begin
  DecodeDate (Data, Ano, Mes, Dia);
  Dia := 1;
  DiaDaSemana := DayOfWeek(Data);
  if DiaDaSemana in [1,7] then
  Dia := 2;
  Result := EncodeDate(Ano, Mes, Dia);
end;
 
function IsWeekEnd(dData : TDateTime) : boolean;
{Verifica se uma data informada cai em um final de semana}
begin
  if DayOfWeek(dData) in [1,7] then
  result := true
  else
  result := false;
end;
end. 
