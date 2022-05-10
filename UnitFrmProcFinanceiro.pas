unit UnitFrmProcFinanceiro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, Grids, DBGrids, DB, DBTables,
  Gauges, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFrmProcFinanceiro = class(TForm)
    Label2: TLabel;
    Label1: TLabel;
    bt1: TBitBtn;
    bt2: TBitBtn;
    edano: TEdit;
    edmes: TEdit;
    ChAtualizarPl: TCheckBox;
    DataSource1: TDataSource;
    Gauge1: TGauge;
    qratualizar: TZQuery;
    qrtotal: TZQuery;
    qrtotalconta: TStringField;
    qrtotalCredito: TFloatField;
    qrtotalDebito: TFloatField;
    procedure bt2Click(Sender: TObject);
    procedure edanoEnter(Sender: TObject);
    procedure edanoKeyPress(Sender: TObject; var Key: Char);
    procedure edmesExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure bt1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProcFinanceiro: TFrmProcFinanceiro;
  entrada,saida:real;
  codigo,dia:string;

implementation

uses Unitdm;

{$R *.dfm}

function AnoBiSexto(Ayear: Integer): Boolean;
begin
// Verifica se o ano é Bi-Sexto
Result := (AYear mod 4 = 0) and ((AYear mod 100 <> 0) or
(AYear mod 400 = 0));
end;

function DiasPorMes(Ayear, AMonth: Integer): Integer;
const DaysInMonth: array[1..12] of Integer = (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
begin
Result := DaysInMonth[AMonth];
if (AMonth = 2) and AnoBiSexto(AYear) then
Inc(Result);
end;

procedure Processamento;
begin
  dm.parametros.Close;
  dm.parametros.Open;
  entrada:=0;
  saida:=0;

  FrmProcFinanceiro.qratualizar.close;
  FrmProcFinanceiro.qratualizar.sql.clear;
  FrmProcFinanceiro.qratualizar.sql.add('update contascorrente_saldo set');
  FrmProcFinanceiro.qratualizar.sql.add('deb'+FrmProcFinanceiro.edmes.text+' = :saida,');
  FrmProcFinanceiro.qratualizar.sql.add('cred'+FrmProcFinanceiro.edmes.text+' = :entrada');
  FrmProcFinanceiro.qratualizar.SQL.Add('where (ano ='+chr(39)+FrmProcFinanceiro.edano.text+chr(39)+')');
  FrmProcFinanceiro.qratualizar.SQL.Add('and (conta ='+chr(39)+dm.ContasCorrenteconta.Value+chr(39)+')');
  FrmProcFinanceiro.qratualizar.Params[0].Value := saida;
  FrmProcFinanceiro.qratualizar.Params[1].Value := entrada;
  FrmProcFinanceiro.qratualizar.ExecSQL;

  if FrmProcFinanceiro.ChAtualizarPl.Checked=true then
     begin
      FrmProcFinanceiro.qratualizar.close;
      FrmProcFinanceiro.qratualizar.sql.clear;
      FrmProcFinanceiro.qratualizar.sql.add('update planocontas set');
      FrmProcFinanceiro.qratualizar.sql.add('deb'+FrmProcFinanceiro.edmes.text+' = :saida,');
      FrmProcFinanceiro.qratualizar.sql.add('cred'+FrmProcFinanceiro.edmes.text+' = :entrada');
      FrmProcFinanceiro.qratualizar.Params[0].Value := saida;
      FrmProcFinanceiro.qratualizar.Params[1].Value := entrada;
      FrmProcFinanceiro.qratualizar.ExecSQL;
     end;

  dia:=IntToStr(DiasPorMes(StrToInt(FrmProcFinanceiro.edano.text), StrToInt(FrmProcFinanceiro.edmes.text)));

  dm.ContasCorrente.Close;
  dm.ContasCorrente.SQL.Clear;
  dm.ContasCorrente.SQL.Add('select * from contascorrente');
  dm.ContasCorrente.open;
  while not dm.ContasCorrente.Eof do
        begin
          FrmProcFinanceiro.qrtotal.Close;
          FrmProcFinanceiro.qrtotal.SQL.Clear;
          FrmProcFinanceiro.qrtotal.SQL.Add('select conta,sum(credito) as Credito, sum(debito) as Debito from financeiro');
          FrmProcFinanceiro.qrtotal.SQL.Add('where (conta ='+chr(39)+dm.ContasCorrenteconta.Value+chr(39)+')');
          FrmProcFinanceiro.qrtotal.SQL.Add('and (data between '+chr(39)+
          FrmProcFinanceiro.edano.text+'/'+FrmProcFinanceiro.edmes.text+'/'+'01'+chr(39)+' and '+chr(39)+
          FrmProcFinanceiro.edano.text+'/'+FrmProcFinanceiro.edmes.text+'/'+dia+chr(39)+')');
          FrmProcFinanceiro.qrtotal.SQL.Add('group by conta');
          FrmProcFinanceiro.qrtotal.open;
          if FrmProcFinanceiro.qrtotalCredito.Value>0 then
             entrada:=FrmProcFinanceiro.qrtotal['Credito']
          else
             entrada:=0;
          if FrmProcFinanceiro.qrtotalDebito.Value>0 then
             saida:=FrmProcFinanceiro.qrtotal['Debito']
          else
             saida:=0;

          dm.contascorrente_saldo.Close;
          dm.contascorrente_saldo.SQL.Clear;
          dm.contascorrente_saldo.SQL.Add('select * from contascorrente_saldo');
          dm.contascorrente_saldo.SQL.Add('where (conta ='+chr(39)+dm.ContasCorrenteconta.Value+chr(39)+')');
          dm.contascorrente_saldo.SQL.Add('and (ano ='+chr(39)+FrmProcFinanceiro.edano.text+chr(39)+')');
          dm.contascorrente_saldo.open;
          if dm.contascorrente_saldo.RecordCount<1 then
             begin
               dm.contascorrente_saldo.Insert;
               dm.contascorrente_saldoconta.Value:=dm.ContasCorrenteconta.Value;
               dm.contascorrente_saldoano.Value:=FrmProcFinanceiro.edano.text;
               dm.contascorrente_saldo.FieldByName('deb'+FrmProcFinanceiro.edmes.text).AsFloat:=saida;
               dm.contascorrente_saldo.FieldByName('cred'+FrmProcFinanceiro.edmes.text).AsFloat:=entrada;
               dm.contascorrente_saldo.Post;
             end
             else
             begin
               FrmProcFinanceiro.qratualizar.close;
               FrmProcFinanceiro.qratualizar.sql.clear;
               FrmProcFinanceiro.qratualizar.sql.add('update contascorrente_saldo set');
               FrmProcFinanceiro.qratualizar.sql.add('deb'+FrmProcFinanceiro.edmes.text+' = :saida,');
               FrmProcFinanceiro.qratualizar.sql.add('cred'+FrmProcFinanceiro.edmes.text+' = :entrada');
               FrmProcFinanceiro.qratualizar.SQL.Add('where (conta ='+chr(39)+dm.ContasCorrenteconta.Value+chr(39)+')');
               FrmProcFinanceiro.qratualizar.SQL.Add('and (ano ='+chr(39)+FrmProcFinanceiro.edano.text+chr(39)+')');
               FrmProcFinanceiro.qratualizar.Params[0].Value := saida;
               FrmProcFinanceiro.qratualizar.Params[1].Value := entrada;
               FrmProcFinanceiro.qratualizar.ExecSQL;
             end;

          dm.ContasCorrente.Next;
        end;

  if FrmProcFinanceiro.ChAtualizarPl.Checked=true then
     begin
      FrmProcFinanceiro.qrtotal.Close;
      FrmProcFinanceiro.qrtotal.SQL.Clear;
      FrmProcFinanceiro.qrtotal.SQL.Add('select planoconta as conta,sum(credito) as Credito, sum(debito) as Debito from financeiro');
      FrmProcFinanceiro.qrtotal.SQL.Add('where (data between '+chr(39)+
      FrmProcFinanceiro.edano.text+'/'+FrmProcFinanceiro.edmes.text+'/'+'01'+chr(39)+' and '+chr(39)+
      FrmProcFinanceiro.edano.text+'/'+FrmProcFinanceiro.edmes.text+'/'+dia+chr(39)+')');
      FrmProcFinanceiro.qrtotal.SQL.Add('group by planoconta');
      FrmProcFinanceiro.qrtotal.open;
      FrmProcFinanceiro.Gauge1.MaxValue:=FrmProcFinanceiro.qrtotal.RecordCount;
      FrmProcFinanceiro.Gauge1.Progress:=0;

      while not FrmProcFinanceiro.qrtotal.Eof do
            begin
              if FrmProcFinanceiro.qrtotalCredito.Value>0 then
                 entrada:=FrmProcFinanceiro.qrtotal['Credito']
              else
                 entrada:=0;
              if FrmProcFinanceiro.qrtotalDebito.Value>0 then
                 saida:=FrmProcFinanceiro.qrtotal['Debito']
              else
                 saida:=0;
              codigo:=FrmProcFinanceiro.qrtotalconta.value;
              dm.PlanoContas.Close;
              dm.PlanoContas.Open;
              dm.PlanoContas.Locate('codigo',codigo,[]);
              saida:=saida+dm.PlanoContas.fieldbyname('deb'+FrmProcFinanceiro.edmes.text).AsFloat;
              entrada:=entrada+dm.PlanoContas.fieldbyname('cred'+FrmProcFinanceiro.edmes.text).AsFloat;
              FrmProcFinanceiro.qratualizar.close;
              FrmProcFinanceiro.qratualizar.sql.clear;
              FrmProcFinanceiro.qratualizar.sql.add('update planocontas set');
              FrmProcFinanceiro.qratualizar.sql.add('deb'+FrmProcFinanceiro.edmes.text+' = :saida,');
              FrmProcFinanceiro.qratualizar.sql.add('cred'+FrmProcFinanceiro.edmes.text+' = :entrada');
              FrmProcFinanceiro.qratualizar.SQL.Add('where (codigo ='+chr(39)+codigo+chr(39)+')');
              FrmProcFinanceiro.qratualizar.Params[0].Value := saida;
              FrmProcFinanceiro.qratualizar.Params[1].Value := entrada;
              FrmProcFinanceiro.qratualizar.ExecSQL;
//                  showmessage('Plano de Contas '+codigo);
//                  showmessage(FloatToStr(saida));

              codigo:=copy(FrmProcFinanceiro.qrtotalconta.value,1,5);
              dm.planocontas.Close;
              dm.planocontas.Open;
              dm.planocontas.Locate('codigo',codigo,[]);
              saida:=FrmProcFinanceiro.qrtotaldebito.Value+dm.planocontas.fieldbyname('deb'+FrmProcFinanceiro.edmes.text).AsFloat;
              entrada:=FrmProcFinanceiro.qrtotalcredito.Value+dm.planocontas.fieldbyname('cred'+FrmProcFinanceiro.edmes.text).AsFloat;
              FrmProcFinanceiro.qratualizar.close;
              FrmProcFinanceiro.qratualizar.sql.clear;
              FrmProcFinanceiro.qratualizar.sql.add('update planocontas set');
              FrmProcFinanceiro.qratualizar.sql.add('deb'+FrmProcFinanceiro.edmes.text+' = :saida,');
              FrmProcFinanceiro.qratualizar.sql.add('cred'+FrmProcFinanceiro.edmes.text+' = :entrada');
              FrmProcFinanceiro.qratualizar.SQL.Add('where (codigo ='+chr(39)+codigo+chr(39)+')');
              FrmProcFinanceiro.qratualizar.Params[0].Value := saida;
              FrmProcFinanceiro.qratualizar.Params[1].Value := entrada;
              FrmProcFinanceiro.qratualizar.ExecSQL;
//                  showmessage('Plano de Contas '+codigo);
//                  showmessage(FloatToStr(saida));

              codigo:=copy(FrmProcFinanceiro.qrtotalconta.value,1,3);
              dm.planocontas.Close;
              dm.planocontas.Open;
              dm.planocontas.Locate('codigo',codigo,[]);
              saida:=FrmProcFinanceiro.qrtotaldebito.Value+dm.planocontas.fieldbyname('deb'+FrmProcFinanceiro.edmes.text).AsFloat;
              entrada:=FrmProcFinanceiro.qrtotalcredito.Value+dm.planocontas.fieldbyname('cred'+FrmProcFinanceiro.edmes.text).AsFloat;
              FrmProcFinanceiro.qratualizar.close;
              FrmProcFinanceiro.qratualizar.sql.clear;
              FrmProcFinanceiro.qratualizar.sql.add('update planocontas set');
              FrmProcFinanceiro.qratualizar.sql.add('deb'+FrmProcFinanceiro.edmes.text+' = :saida,');
              FrmProcFinanceiro.qratualizar.sql.add('cred'+FrmProcFinanceiro.edmes.text+' = :entrada');
              FrmProcFinanceiro.qratualizar.SQL.Add('where (codigo ='+chr(39)+codigo+chr(39)+')');
              FrmProcFinanceiro.qratualizar.Params[0].Value := saida;
              FrmProcFinanceiro.qratualizar.Params[1].Value := entrada;
              FrmProcFinanceiro.qratualizar.ExecSQL;
//                  showmessage('Plano de Contas '+codigo);
//                  showmessage(FloatToStr(saida));

              codigo:=copy(FrmProcFinanceiro.qrtotalconta.value,1,2);
              dm.planocontas.Close;
              dm.planocontas.Open;
              dm.planocontas.Locate('codigo',codigo,[]);
              saida:=FrmProcFinanceiro.qrtotaldebito.Value+dm.planocontas.fieldbyname('deb'+FrmProcFinanceiro.edmes.text).AsFloat;
              entrada:=FrmProcFinanceiro.qrtotalcredito.Value+dm.planocontas.fieldbyname('cred'+FrmProcFinanceiro.edmes.text).AsFloat;
              FrmProcFinanceiro.qratualizar.close;
              FrmProcFinanceiro.qratualizar.sql.clear;
              FrmProcFinanceiro.qratualizar.sql.add('update planocontas set');
              FrmProcFinanceiro.qratualizar.sql.add('deb'+FrmProcFinanceiro.edmes.text+' = :saida,');
              FrmProcFinanceiro.qratualizar.sql.add('cred'+FrmProcFinanceiro.edmes.text+' = :entrada');
              FrmProcFinanceiro.qratualizar.SQL.Add('where (codigo ='+chr(39)+codigo+chr(39)+')');
              FrmProcFinanceiro.qratualizar.Params[0].Value := saida;
              FrmProcFinanceiro.qratualizar.Params[1].Value := entrada;
              FrmProcFinanceiro.qratualizar.ExecSQL;
//                  showmessage(FloatToStr(saida));

              codigo:=copy(FrmProcFinanceiro.qrtotalconta.value,1,1);
              dm.planocontas.Close;
              dm.planocontas.Open;
              dm.planocontas.Locate('codigo',codigo,[]);
              saida:=FrmProcFinanceiro.qrtotaldebito.Value+dm.planocontas.fieldbyname('deb'+FrmProcFinanceiro.edmes.text).AsFloat;
              entrada:=FrmProcFinanceiro.qrtotalcredito.Value+dm.planocontas.fieldbyname('cred'+FrmProcFinanceiro.edmes.text).AsFloat;
              FrmProcFinanceiro.qratualizar.close;
              FrmProcFinanceiro.qratualizar.sql.clear;
              FrmProcFinanceiro.qratualizar.sql.add('update planocontas set');
              FrmProcFinanceiro.qratualizar.sql.add('deb'+FrmProcFinanceiro.edmes.text+' = :saida,');
              FrmProcFinanceiro.qratualizar.sql.add('cred'+FrmProcFinanceiro.edmes.text+' = :entrada');
              FrmProcFinanceiro.qratualizar.SQL.Add('where (codigo ='+chr(39)+codigo+chr(39)+')');
              FrmProcFinanceiro.qratualizar.Params[0].Value := saida;
              FrmProcFinanceiro.qratualizar.Params[1].Value := entrada;
              FrmProcFinanceiro.qratualizar.ExecSQL;
//                  showmessage(FloatToStr(saida));

              FrmProcFinanceiro.qrtotal.next;
              FrmProcFinanceiro.Gauge1.Progress:=FrmProcFinanceiro.Gauge1.Progress+1;
            end;
     end;
  if Application.Messagebox ('Processar outro Mês?','Processamento Financeiro', Mb_YesNo+mb_iconquestion) = id_yes then
     FrmProcFinanceiro.edmes.SetFocus
  else
     FrmProcFinanceiro.close;
end;

procedure TFrmProcFinanceiro.bt2Click(Sender: TObject);
begin
        close;
end;

procedure TFrmProcFinanceiro.edanoEnter(Sender: TObject);
begin
        if edano.Text='' then
           begin
                edano.Text:=formatdatetime('YYYY',date);
                edano.SelStart:=0;
                edano.SelLength:=length(edano.Text);
           end;
end;

procedure TFrmProcFinanceiro.edanoKeyPress(Sender: TObject; var Key: Char);
begin
        if ((Key in ['0'..'9'] = False) and
           (Word(Key) <> VK_BACK)) then
           Key := #0;
end;

procedure TFrmProcFinanceiro.edmesExit(Sender: TObject);
begin
        if edmes.Text<>'' then
           begin
              if StrToFloat(edmes.text)>12 then
                 edmes.SetFocus
              else
                 edmes.text:=formatfloat('0',StrToInt(edmes.text));
           end;
end;

procedure TFrmProcFinanceiro.FormKeyPress(Sender: TObject; var Key: Char);
begin
        if key=#13 then
        begin
           SelectNext(activecontrol,True,True);
           key:=#0;
        end;
end;

procedure TFrmProcFinanceiro.bt1Click(Sender: TObject);
begin
      if (edmes.Text<>'') and (edano.Text<>'') then
         begin
           Processamento
         end
         else
         begin
           application.MessageBox('Para realizar este procedimento, Preencha o Mês e o Ano','Atenção',mb_ok+MB_ICONEXCLAMATION);
           edmes.SetFocus;
         end;
end;

end.
