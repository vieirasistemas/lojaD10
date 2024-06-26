unit UnitFrmPlanoContasAno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, QRCtrls, QuickRpt, ExtCtrls, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Gauges;

type
  TFrmPlanoContasAno = class(TForm)
    GroupBox2: TGroupBox;
    rb1: TRadioButton;
    rb2: TRadioButton;
    bt1: TBitBtn;
    bt2: TBitBtn;
    GroupBox3: TGroupBox;
    edano: TEdit;
    Query1: TZQuery;
    Query1codigo: TStringField;
    Query1descricao: TStringField;
    Query1chave: TStringField;
    Query1deb1: TFloatField;
    Query1deb2: TFloatField;
    Query1deb3: TFloatField;
    Query1deb4: TFloatField;
    Query1deb5: TFloatField;
    Query1deb6: TFloatField;
    Query1deb7: TFloatField;
    Query1deb8: TFloatField;
    Query1deb9: TFloatField;
    Query1deb10: TFloatField;
    Query1deb11: TFloatField;
    Query1deb12: TFloatField;
    Query1cred1: TFloatField;
    Query1cred2: TFloatField;
    Query1cred3: TFloatField;
    Query1cred4: TFloatField;
    Query1cred5: TFloatField;
    Query1cred6: TFloatField;
    Query1cred7: TFloatField;
    Query1cred8: TFloatField;
    Query1cred9: TFloatField;
    Query1cred10: TFloatField;
    Query1cred11: TFloatField;
    Query1cred12: TFloatField;
    Query1saldoant: TFloatField;
    QuickRep1: TQuickRep;
    PageFooterBand1: TQRBand;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    DetailBand1: TQRBand;
    QRExpr2: TQRExpr;
    qrjan: TQRExpr;
    qrmar: TQRExpr;
    qrfev: TQRExpr;
    qrabr: TQRExpr;
    PageHeaderBand1: TQRBand;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    QRLabel24: TQRLabel;
    QRSysData3: TQRSysData;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    qrtitulo: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    qrmai: TQRExpr;
    qrjun: TQRExpr;
    qrjul: TQRExpr;
    qrago: TQRExpr;
    qrset: TQRExpr;
    qrout: TQRExpr;
    qrnov: TQRExpr;
    qrdez: TQRExpr;
    Gauge1: TGauge;
    qrtotal: TZQuery;
    qrtotalconta: TStringField;
    qrtotalCredito: TFloatField;
    qrtotalDebito: TFloatField;
    DataSource1: TDataSource;
    qratualizar: TZQuery;
    procedure bt2Click(Sender: TObject);
    procedure edanoKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure bt1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPlanoContasAno: TFrmPlanoContasAno;
  entrada,saida:real;
  codigo,dia:string;
  i:integer;

implementation

uses Unitdm;

{$R *.dfm}

function AnoBiSexto(Ayear: Integer): Boolean;
begin
// Verifica se o ano � Bi-Sexto
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
  entrada:=0;
  saida:=0;
  FrmPlanoContasAno.qratualizar.close;
  FrmPlanoContasAno.qratualizar.sql.clear;
  FrmPlanoContasAno.qratualizar.sql.add('update PlanoContas set');
  FrmPlanoContasAno.qratualizar.sql.add('deb'+IntToStr(i)+' = :saida,');
  FrmPlanoContasAno.qratualizar.sql.add('cred'+IntToStr(i)+' = :entrada');
  FrmPlanoContasAno.qratualizar.Params[0].Value := saida;
  FrmPlanoContasAno.qratualizar.Params[1].Value := entrada;
  FrmPlanoContasAno.qratualizar.ExecSQL;

  dia:=IntToStr(DiasPorMes(StrToInt(FrmPlanoContasAno.edano.text), StrToInt(IntToStr(i))));

  FrmPlanoContasAno.qrtotal.Close;
  FrmPlanoContasAno.qrtotal.Connection:=dm.ZConnection1;
  FrmPlanoContasAno.qrtotal.SQL.Clear;
  FrmPlanoContasAno.qrtotal.SQL.Add('select planoconta as conta,sum(credito) as Credito, sum(debito) as Debito from financeiro');
  FrmPlanoContasAno.qrtotal.SQL.Add('where (data between '+chr(39)+
  FrmPlanoContasAno.edano.text+'/'+IntToStr(i)+'/'+'01'+chr(39)+' and '+chr(39)+
  FrmPlanoContasAno.edano.text+'/'+IntToStr(i)+'/'+dia+chr(39)+')');
  FrmPlanoContasAno.qrtotal.SQL.Add('group by planoconta');
  FrmPlanoContasAno.qrtotal.open;

  while not FrmPlanoContasAno.qrtotal.Eof do
        begin
          if FrmPlanoContasAno.qrtotalCredito.Value>0 then
             entrada:=FrmPlanoContasAno.qrtotal['Credito']
          else
             entrada:=0;
          if FrmPlanoContasAno.qrtotalDebito.Value>0 then
             saida:=FrmPlanoContasAno.qrtotal['Debito']
          else
             saida:=0;
          codigo:=FrmPlanoContasAno.qrtotalconta.value;
          dm.PlanoContas.Close;
          dm.PlanoContas.Open;
          dm.PlanoContas.Locate('codigo',codigo,[]);
          saida:=saida+dm.PlanoContas.fieldbyname('deb'+IntToStr(i)).AsFloat;
          entrada:=entrada+dm.PlanoContas.fieldbyname('cred'+IntToStr(i)).AsFloat;
          FrmPlanoContasAno.qratualizar.close;
          FrmPlanoContasAno.qratualizar.sql.clear;
          FrmPlanoContasAno.qratualizar.sql.add('update PlanoContas set');
          FrmPlanoContasAno.qratualizar.sql.add('deb'+IntToStr(i)+' = :saida,');
          FrmPlanoContasAno.qratualizar.sql.add('cred'+IntToStr(i)+' = :entrada');
          FrmPlanoContasAno.qratualizar.SQL.Add('where (codigo ='+chr(39)+codigo+chr(39)+')');
          FrmPlanoContasAno.qratualizar.Params[0].Value := saida;
          FrmPlanoContasAno.qratualizar.Params[1].Value := entrada;
          FrmPlanoContasAno.qratualizar.ExecSQL;

          codigo:=copy(FrmPlanoContasAno.qrtotalconta.value,1,5);
          dm.PlanoContas.Close;
          dm.PlanoContas.Open;
          dm.PlanoContas.Locate('codigo',codigo,[]);
          saida:=FrmPlanoContasAno.qrtotaldebito.Value+dm.PlanoContas.fieldbyname('deb'+IntToStr(i)).AsFloat;
          entrada:=FrmPlanoContasAno.qrtotalcredito.Value+dm.PlanoContas.fieldbyname('cred'+IntToStr(i)).AsFloat;
          FrmPlanoContasAno.qratualizar.close;
          FrmPlanoContasAno.qratualizar.sql.clear;
          FrmPlanoContasAno.qratualizar.sql.add('update PlanoContas set');
          FrmPlanoContasAno.qratualizar.sql.add('deb'+IntToStr(i)+' = :saida,');
          FrmPlanoContasAno.qratualizar.sql.add('cred'+IntToStr(i)+' = :entrada');
          FrmPlanoContasAno.qratualizar.SQL.Add('where (codigo ='+chr(39)+codigo+chr(39)+')');
          FrmPlanoContasAno.qratualizar.Params[0].Value := saida;
          FrmPlanoContasAno.qratualizar.Params[1].Value := entrada;
          FrmPlanoContasAno.qratualizar.ExecSQL;

          codigo:=copy(FrmPlanoContasAno.qrtotalconta.value,1,3);
          dm.PlanoContas.Close;
          dm.PlanoContas.Open;
          dm.PlanoContas.Locate('codigo',codigo,[]);
          saida:=FrmPlanoContasAno.qrtotaldebito.Value+dm.PlanoContas.fieldbyname('deb'+IntToStr(i)).AsFloat;
          entrada:=FrmPlanoContasAno.qrtotalcredito.Value+dm.PlanoContas.fieldbyname('cred'+IntToStr(i)).AsFloat;
          FrmPlanoContasAno.qratualizar.close;
          FrmPlanoContasAno.qratualizar.sql.clear;
          FrmPlanoContasAno.qratualizar.sql.add('update PlanoContas set');
          FrmPlanoContasAno.qratualizar.sql.add('deb'+IntToStr(i)+' = :saida,');
          FrmPlanoContasAno.qratualizar.sql.add('cred'+IntToStr(i)+' = :entrada');
          FrmPlanoContasAno.qratualizar.SQL.Add('where (codigo ='+chr(39)+codigo+chr(39)+')');
          FrmPlanoContasAno.qratualizar.Params[0].Value := saida;
          FrmPlanoContasAno.qratualizar.Params[1].Value := entrada;
          FrmPlanoContasAno.qratualizar.ExecSQL;

          codigo:=copy(FrmPlanoContasAno.qrtotalconta.value,1,2);
          dm.PlanoContas.Close;
          dm.PlanoContas.Open;
          dm.PlanoContas.Locate('codigo',codigo,[]);
          saida:=FrmPlanoContasAno.qrtotaldebito.Value+dm.PlanoContas.fieldbyname('deb'+IntToStr(i)).AsFloat;
          entrada:=FrmPlanoContasAno.qrtotalcredito.Value+dm.PlanoContas.fieldbyname('cred'+IntToStr(i)).AsFloat;
          FrmPlanoContasAno.qratualizar.close;
          FrmPlanoContasAno.qratualizar.sql.clear;
          FrmPlanoContasAno.qratualizar.sql.add('update PlanoContas set');
          FrmPlanoContasAno.qratualizar.sql.add('deb'+IntToStr(i)+' = :saida,');
          FrmPlanoContasAno.qratualizar.sql.add('cred'+IntToStr(i)+' = :entrada');
          FrmPlanoContasAno.qratualizar.SQL.Add('where (codigo ='+chr(39)+codigo+chr(39)+')');
          FrmPlanoContasAno.qratualizar.Params[0].Value := saida;
          FrmPlanoContasAno.qratualizar.Params[1].Value := entrada;
          FrmPlanoContasAno.qratualizar.ExecSQL;

          codigo:=copy(FrmPlanoContasAno.qrtotalconta.value,1,1);
          dm.PlanoContas.Close;
          dm.PlanoContas.Open;
          dm.PlanoContas.Locate('codigo',codigo,[]);
          saida:=FrmPlanoContasAno.qrtotaldebito.Value+dm.PlanoContas.fieldbyname('deb'+IntToStr(i)).AsFloat;
          entrada:=FrmPlanoContasAno.qrtotalcredito.Value+dm.PlanoContas.fieldbyname('cred'+IntToStr(i)).AsFloat;
          FrmPlanoContasAno.qratualizar.close;
          FrmPlanoContasAno.qratualizar.sql.clear;
          FrmPlanoContasAno.qratualizar.sql.add('update PlanoContas set');
          FrmPlanoContasAno.qratualizar.sql.add('deb'+IntToStr(i)+' = :saida,');
          FrmPlanoContasAno.qratualizar.sql.add('cred'+IntToStr(i)+' = :entrada');
          FrmPlanoContasAno.qratualizar.SQL.Add('where (codigo ='+chr(39)+codigo+chr(39)+')');
          FrmPlanoContasAno.qratualizar.Params[0].Value := saida;
          FrmPlanoContasAno.qratualizar.Params[1].Value := entrada;
          FrmPlanoContasAno.qratualizar.ExecSQL;
//                  showmessage(FloatToStr(saida));

          FrmPlanoContasAno.qrtotal.next;
        end;
  FrmPlanoContasAno.qrtotal.Close;
  FrmPlanoContasAno.qrtotal.Connection:=dm.ZConnection2;
  FrmPlanoContasAno.qrtotal.SQL.Clear;
  FrmPlanoContasAno.qrtotal.SQL.Add('select planoconta as conta,sum(credito) as Credito, sum(debito) as Debito from financeiro');
  FrmPlanoContasAno.qrtotal.SQL.Add('where (data between '+chr(39)+
  FrmPlanoContasAno.edano.text+'/'+IntToStr(i)+'/'+'01'+chr(39)+' and '+chr(39)+
  FrmPlanoContasAno.edano.text+'/'+IntToStr(i)+'/'+dia+chr(39)+')');
  FrmPlanoContasAno.qrtotal.SQL.Add('group by planoconta');
  FrmPlanoContasAno.qrtotal.open;

  while not FrmPlanoContasAno.qrtotal.Eof do
        begin
          if FrmPlanoContasAno.qrtotalCredito.Value>0 then
             entrada:=FrmPlanoContasAno.qrtotal['Credito']
          else
             entrada:=0;
          if FrmPlanoContasAno.qrtotalDebito.Value>0 then
             saida:=FrmPlanoContasAno.qrtotal['Debito']
          else
             saida:=0;
          codigo:=FrmPlanoContasAno.qrtotalconta.value;
          dm.PlanoContas.Close;
          dm.PlanoContas.Open;
          dm.PlanoContas.Locate('codigo',codigo,[]);
          saida:=saida+dm.PlanoContas.fieldbyname('deb'+IntToStr(i)).AsFloat;
          entrada:=entrada+dm.PlanoContas.fieldbyname('cred'+IntToStr(i)).AsFloat;
          FrmPlanoContasAno.qratualizar.close;
          FrmPlanoContasAno.qratualizar.sql.clear;
          FrmPlanoContasAno.qratualizar.sql.add('update PlanoContas set');
          FrmPlanoContasAno.qratualizar.sql.add('deb'+IntToStr(i)+' = :saida,');
          FrmPlanoContasAno.qratualizar.sql.add('cred'+IntToStr(i)+' = :entrada');
          FrmPlanoContasAno.qratualizar.SQL.Add('where (codigo ='+chr(39)+codigo+chr(39)+')');
          FrmPlanoContasAno.qratualizar.Params[0].Value := saida;
          FrmPlanoContasAno.qratualizar.Params[1].Value := entrada;
          FrmPlanoContasAno.qratualizar.ExecSQL;

          codigo:=copy(FrmPlanoContasAno.qrtotalconta.value,1,5);
          dm.PlanoContas.Close;
          dm.PlanoContas.Open;
          dm.PlanoContas.Locate('codigo',codigo,[]);
          saida:=FrmPlanoContasAno.qrtotaldebito.Value+dm.PlanoContas.fieldbyname('deb'+IntToStr(i)).AsFloat;
          entrada:=FrmPlanoContasAno.qrtotalcredito.Value+dm.PlanoContas.fieldbyname('cred'+IntToStr(i)).AsFloat;
          FrmPlanoContasAno.qratualizar.close;
          FrmPlanoContasAno.qratualizar.sql.clear;
          FrmPlanoContasAno.qratualizar.sql.add('update PlanoContas set');
          FrmPlanoContasAno.qratualizar.sql.add('deb'+IntToStr(i)+' = :saida,');
          FrmPlanoContasAno.qratualizar.sql.add('cred'+IntToStr(i)+' = :entrada');
          FrmPlanoContasAno.qratualizar.SQL.Add('where (codigo ='+chr(39)+codigo+chr(39)+')');
          FrmPlanoContasAno.qratualizar.Params[0].Value := saida;
          FrmPlanoContasAno.qratualizar.Params[1].Value := entrada;
          FrmPlanoContasAno.qratualizar.ExecSQL;

          codigo:=copy(FrmPlanoContasAno.qrtotalconta.value,1,3);
          dm.PlanoContas.Close;
          dm.PlanoContas.Open;
          dm.PlanoContas.Locate('codigo',codigo,[]);
          saida:=FrmPlanoContasAno.qrtotaldebito.Value+dm.PlanoContas.fieldbyname('deb'+IntToStr(i)).AsFloat;
          entrada:=FrmPlanoContasAno.qrtotalcredito.Value+dm.PlanoContas.fieldbyname('cred'+IntToStr(i)).AsFloat;
          FrmPlanoContasAno.qratualizar.close;
          FrmPlanoContasAno.qratualizar.sql.clear;
          FrmPlanoContasAno.qratualizar.sql.add('update PlanoContas set');
          FrmPlanoContasAno.qratualizar.sql.add('deb'+IntToStr(i)+' = :saida,');
          FrmPlanoContasAno.qratualizar.sql.add('cred'+IntToStr(i)+' = :entrada');
          FrmPlanoContasAno.qratualizar.SQL.Add('where (codigo ='+chr(39)+codigo+chr(39)+')');
          FrmPlanoContasAno.qratualizar.Params[0].Value := saida;
          FrmPlanoContasAno.qratualizar.Params[1].Value := entrada;
          FrmPlanoContasAno.qratualizar.ExecSQL;

          codigo:=copy(FrmPlanoContasAno.qrtotalconta.value,1,2);
          dm.PlanoContas.Close;
          dm.PlanoContas.Open;
          dm.PlanoContas.Locate('codigo',codigo,[]);
          saida:=FrmPlanoContasAno.qrtotaldebito.Value+dm.PlanoContas.fieldbyname('deb'+IntToStr(i)).AsFloat;
          entrada:=FrmPlanoContasAno.qrtotalcredito.Value+dm.PlanoContas.fieldbyname('cred'+IntToStr(i)).AsFloat;
          FrmPlanoContasAno.qratualizar.close;
          FrmPlanoContasAno.qratualizar.sql.clear;
          FrmPlanoContasAno.qratualizar.sql.add('update PlanoContas set');
          FrmPlanoContasAno.qratualizar.sql.add('deb'+IntToStr(i)+' = :saida,');
          FrmPlanoContasAno.qratualizar.sql.add('cred'+IntToStr(i)+' = :entrada');
          FrmPlanoContasAno.qratualizar.SQL.Add('where (codigo ='+chr(39)+codigo+chr(39)+')');
          FrmPlanoContasAno.qratualizar.Params[0].Value := saida;
          FrmPlanoContasAno.qratualizar.Params[1].Value := entrada;
          FrmPlanoContasAno.qratualizar.ExecSQL;

          codigo:=copy(FrmPlanoContasAno.qrtotalconta.value,1,1);
          dm.PlanoContas.Close;
          dm.PlanoContas.Open;
          dm.PlanoContas.Locate('codigo',codigo,[]);
          saida:=FrmPlanoContasAno.qrtotaldebito.Value+dm.PlanoContas.fieldbyname('deb'+IntToStr(i)).AsFloat;
          entrada:=FrmPlanoContasAno.qrtotalcredito.Value+dm.PlanoContas.fieldbyname('cred'+IntToStr(i)).AsFloat;
          FrmPlanoContasAno.qratualizar.close;
          FrmPlanoContasAno.qratualizar.sql.clear;
          FrmPlanoContasAno.qratualizar.sql.add('update PlanoContas set');
          FrmPlanoContasAno.qratualizar.sql.add('deb'+IntToStr(i)+' = :saida,');
          FrmPlanoContasAno.qratualizar.sql.add('cred'+IntToStr(i)+' = :entrada');
          FrmPlanoContasAno.qratualizar.SQL.Add('where (codigo ='+chr(39)+codigo+chr(39)+')');
          FrmPlanoContasAno.qratualizar.Params[0].Value := saida;
          FrmPlanoContasAno.qratualizar.Params[1].Value := entrada;
          FrmPlanoContasAno.qratualizar.ExecSQL;
//                  showmessage(FloatToStr(saida));

          FrmPlanoContasAno.qrtotal.next;
        end;
  FrmPlanoContasAno.qrtotal.Close;
  FrmPlanoContasAno.qrtotal.Connection:=dm.ZConnection2;
  FrmPlanoContasAno.qrtotal.SQL.Clear;
  FrmPlanoContasAno.qrtotal.SQL.Add('select planoconta as conta,sum(credito) as Credito, sum(debito) as Debito from financeiro');
  FrmPlanoContasAno.qrtotal.SQL.Add('where (data between '+chr(39)+
  FrmPlanoContasAno.edano.text+'/'+IntToStr(i)+'/'+'01'+chr(39)+' and '+chr(39)+
  FrmPlanoContasAno.edano.text+'/'+IntToStr(i)+'/'+dia+chr(39)+')');
  FrmPlanoContasAno.qrtotal.SQL.Add('group by planoconta');
  FrmPlanoContasAno.qrtotal.open;

  while not FrmPlanoContasAno.qrtotal.Eof do
        begin
          if FrmPlanoContasAno.qrtotalCredito.Value>0 then
             entrada:=FrmPlanoContasAno.qrtotal['Credito']
          else
             entrada:=0;
          if FrmPlanoContasAno.qrtotalDebito.Value>0 then
             saida:=FrmPlanoContasAno.qrtotal['Debito']
          else
             saida:=0;
          codigo:=FrmPlanoContasAno.qrtotalconta.value;
          dm.PlanoContas.Close;
          dm.PlanoContas.Open;
          dm.PlanoContas.Locate('codigo',codigo,[]);
          saida:=saida+dm.PlanoContas.fieldbyname('deb'+IntToStr(i)).AsFloat;
          entrada:=entrada+dm.PlanoContas.fieldbyname('cred'+IntToStr(i)).AsFloat;
          FrmPlanoContasAno.qratualizar.close;
          FrmPlanoContasAno.qratualizar.sql.clear;
          FrmPlanoContasAno.qratualizar.sql.add('update PlanoContas set');
          FrmPlanoContasAno.qratualizar.sql.add('deb'+IntToStr(i)+' = :saida,');
          FrmPlanoContasAno.qratualizar.sql.add('cred'+IntToStr(i)+' = :entrada');
          FrmPlanoContasAno.qratualizar.SQL.Add('where (codigo ='+chr(39)+codigo+chr(39)+')');
          FrmPlanoContasAno.qratualizar.Params[0].Value := saida;
          FrmPlanoContasAno.qratualizar.Params[1].Value := entrada;
          FrmPlanoContasAno.qratualizar.ExecSQL;

          codigo:=copy(FrmPlanoContasAno.qrtotalconta.value,1,5);
          dm.PlanoContas.Close;
          dm.PlanoContas.Open;
          dm.PlanoContas.Locate('codigo',codigo,[]);
          saida:=FrmPlanoContasAno.qrtotaldebito.Value+dm.PlanoContas.fieldbyname('deb'+IntToStr(i)).AsFloat;
          entrada:=FrmPlanoContasAno.qrtotalcredito.Value+dm.PlanoContas.fieldbyname('cred'+IntToStr(i)).AsFloat;
          FrmPlanoContasAno.qratualizar.close;
          FrmPlanoContasAno.qratualizar.sql.clear;
          FrmPlanoContasAno.qratualizar.sql.add('update PlanoContas set');
          FrmPlanoContasAno.qratualizar.sql.add('deb'+IntToStr(i)+' = :saida,');
          FrmPlanoContasAno.qratualizar.sql.add('cred'+IntToStr(i)+' = :entrada');
          FrmPlanoContasAno.qratualizar.SQL.Add('where (codigo ='+chr(39)+codigo+chr(39)+')');
          FrmPlanoContasAno.qratualizar.Params[0].Value := saida;
          FrmPlanoContasAno.qratualizar.Params[1].Value := entrada;
          FrmPlanoContasAno.qratualizar.ExecSQL;

          codigo:=copy(FrmPlanoContasAno.qrtotalconta.value,1,3);
          dm.PlanoContas.Close;
          dm.PlanoContas.Open;
          dm.PlanoContas.Locate('codigo',codigo,[]);
          saida:=FrmPlanoContasAno.qrtotaldebito.Value+dm.PlanoContas.fieldbyname('deb'+IntToStr(i)).AsFloat;
          entrada:=FrmPlanoContasAno.qrtotalcredito.Value+dm.PlanoContas.fieldbyname('cred'+IntToStr(i)).AsFloat;
          FrmPlanoContasAno.qratualizar.close;
          FrmPlanoContasAno.qratualizar.sql.clear;
          FrmPlanoContasAno.qratualizar.sql.add('update PlanoContas set');
          FrmPlanoContasAno.qratualizar.sql.add('deb'+IntToStr(i)+' = :saida,');
          FrmPlanoContasAno.qratualizar.sql.add('cred'+IntToStr(i)+' = :entrada');
          FrmPlanoContasAno.qratualizar.SQL.Add('where (codigo ='+chr(39)+codigo+chr(39)+')');
          FrmPlanoContasAno.qratualizar.Params[0].Value := saida;
          FrmPlanoContasAno.qratualizar.Params[1].Value := entrada;
          FrmPlanoContasAno.qratualizar.ExecSQL;

          codigo:=copy(FrmPlanoContasAno.qrtotalconta.value,1,2);
          dm.PlanoContas.Close;
          dm.PlanoContas.Open;
          dm.PlanoContas.Locate('codigo',codigo,[]);
          saida:=FrmPlanoContasAno.qrtotaldebito.Value+dm.PlanoContas.fieldbyname('deb'+IntToStr(i)).AsFloat;
          entrada:=FrmPlanoContasAno.qrtotalcredito.Value+dm.PlanoContas.fieldbyname('cred'+IntToStr(i)).AsFloat;
          FrmPlanoContasAno.qratualizar.close;
          FrmPlanoContasAno.qratualizar.sql.clear;
          FrmPlanoContasAno.qratualizar.sql.add('update PlanoContas set');
          FrmPlanoContasAno.qratualizar.sql.add('deb'+IntToStr(i)+' = :saida,');
          FrmPlanoContasAno.qratualizar.sql.add('cred'+IntToStr(i)+' = :entrada');
          FrmPlanoContasAno.qratualizar.SQL.Add('where (codigo ='+chr(39)+codigo+chr(39)+')');
          FrmPlanoContasAno.qratualizar.Params[0].Value := saida;
          FrmPlanoContasAno.qratualizar.Params[1].Value := entrada;
          FrmPlanoContasAno.qratualizar.ExecSQL;

          codigo:=copy(FrmPlanoContasAno.qrtotalconta.value,1,1);
          dm.PlanoContas.Close;
          dm.PlanoContas.Open;
          dm.PlanoContas.Locate('codigo',codigo,[]);
          saida:=FrmPlanoContasAno.qrtotaldebito.Value+dm.PlanoContas.fieldbyname('deb'+IntToStr(i)).AsFloat;
          entrada:=FrmPlanoContasAno.qrtotalcredito.Value+dm.PlanoContas.fieldbyname('cred'+IntToStr(i)).AsFloat;
          FrmPlanoContasAno.qratualizar.close;
          FrmPlanoContasAno.qratualizar.sql.clear;
          FrmPlanoContasAno.qratualizar.sql.add('update PlanoContas set');
          FrmPlanoContasAno.qratualizar.sql.add('deb'+IntToStr(i)+' = :saida,');
          FrmPlanoContasAno.qratualizar.sql.add('cred'+IntToStr(i)+' = :entrada');
          FrmPlanoContasAno.qratualizar.SQL.Add('where (codigo ='+chr(39)+codigo+chr(39)+')');
          FrmPlanoContasAno.qratualizar.Params[0].Value := saida;
          FrmPlanoContasAno.qratualizar.Params[1].Value := entrada;
          FrmPlanoContasAno.qratualizar.ExecSQL;
//                  showmessage(FloatToStr(saida));

          FrmPlanoContasAno.qrtotal.next;
        end;

end;

procedure TFrmPlanoContasAno.bt2Click(Sender: TObject);
begin
  close;
end;

procedure TFrmPlanoContasAno.edanoKeyPress(Sender: TObject; var Key: Char);
begin
  if ((Key in ['0'..'9'] = False) and
     (Word(Key) <> VK_BACK)) then
     Key := #0;
end;

procedure TFrmPlanoContasAno.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
     SelectNext(activecontrol,True,True);
     key:=#0;
  end;
end;

procedure TFrmPlanoContasAno.bt1Click(Sender: TObject);
begin
  Gauge1.MaxValue:=12;
  Gauge1.Progress:=0;
  for i:=1 to 12 do
      begin
        Processamento;
        Gauge1.Progress:=Gauge1.Progress+1;
      end;
  qrjan.Expression:='cred1-deb1';
  qrfev.Expression:='cred2-deb2';
  qrmar.Expression:='cred3-deb3';
  qrabr.Expression:='cred4-deb4';
  qrmai.Expression:='cred5-deb5';
  qrjun.Expression:='cred6-deb6';
  qrjul.Expression:='cred7-deb7';
  qrago.Expression:='cred8-deb8';
  qrset.Expression:='cred9-deb9';
  qrout.Expression:='cred10-deb10';
  qrnov.Expression:='cred11-deb11';
  qrdez.Expression:='cred12-deb12';


  Query1.Close;
  Query1.Open;
  qrtitulo.Caption:='Demonstrativo Plano de Contas - Ano: '+edano.text;
  if rb1.checked then
     Quickrep1.preview
  else
     Quickrep1.print;
end;

end.
