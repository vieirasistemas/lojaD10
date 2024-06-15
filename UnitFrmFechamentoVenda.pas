unit UnitFrmFechamentoVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DB, DBTables, Grids, DBGrids, QRCtrls,
  QuickRpt, ExtCtrls, RLReport, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, jpeg, Gauges;

type
  TFrmFechamentoVenda = class(TForm)
    bt1: TBitBtn;
    bt2: TBitBtn;
    medatainicial: TMaskEdit;
    Label4: TLabel;
    Label5: TLabel;
    medatafinal: TMaskEdit;
    cboperador: TComboBox;
    lbOperador: TLabel;
    qratualizar: TZQuery;
    ZQuery1: TZQuery;
    ZQuery1descricao: TStringField;
    ZQuery1Bruto: TFloatField;
    ZQuery1Desconto: TFloatField;
    ZQuery1Total: TFloatField;
    ZQuery2: TZQuery;
    ZQuery2vendaI: TStringField;
    ZQuery2subtotal: TFloatField;
    ZQuery2desconto: TFloatField;
    ZQuery2total: TFloatField;
    ZQuery2descricao: TStringField;
    ZQuery2nome: TStringField;
    DataSource1: TDataSource;
    qrMovEstoque: TZQuery;
    qrMovEstoquedocumento: TStringField;
    qrMovEstoquefavorecido: TIntegerField;
    qrMovEstoqueproduto: TIntegerField;
    qrMovEstoquedata: TDateField;
    qrMovEstoqueTipoMov: TStringField;
    qrMovEstoqueund: TStringField;
    qrMovEstoqueqtd: TFloatField;
    qrMovEstoqueVlrUnit: TFloatField;
    qrMovEstoqueVlrTotal: TFloatField;
    qrMovEstoquenome: TStringField;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    qrcodigo: TRLDBText;
    qrdescricao: TRLDBText;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLBand2: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel12: TRLLabel;
    RLBand3: TRLBand;
    RLDBText5: TRLDBText;
    RLDBText7: TRLDBText;
    RLLabel6: TRLLabel;
    RLDBText8: TRLDBText;
    RLLabel4: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RLBand4: TRLBand;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLBand5: TRLBand;
    RLLabel14: TRLLabel;
    RLDBResult2: TRLDBResult;
    RLDBResult3: TRLDBResult;
    Query1: TZQuery;
    qrtotal: TZQuery;
    qrtotalCredito: TFloatField;
    qrtotalDebito: TFloatField;
    Query1SaldoAnt: TFloatField;
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
    Query1data: TDateField;
    Query1doc: TStringField;
    Query1historico: TStringField;
    Query1credito: TFloatField;
    Query1debito: TFloatField;
    Query1saldoconta: TFloatField;
    ZQuery2operador: TStringField;
    movvenda: TZQuery;
    movvendavendaI: TStringField;
    movvendaqtd: TFloatField;
    movvendaunit: TFloatField;
    movvendatotal: TFloatField;
    movvendanome: TStringField;
    movvendaapelido: TStringField;
    movvendanomecliente: TStringField;
    Gauge1: TGauge;
    ZQuery1formapagto: TStringField;
    rlforn: TRLLabel;
    ZQuery3: TZQuery;
    ZQuery3documento: TStringField;
    ZQuery3data: TDateField;
    ZQuery3nome: TStringField;
    ZQuery3qtd: TFloatField;
    ZQuery3VlrUnit: TFloatField;
    ZQuery3VlrTotal: TFloatField;
    ZQuery3apelido: TStringField;
    ZQuery3produto: TIntegerField;
    ZQuery3und: TStringField;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    RLReport2: TRLReport;
    RLBand6: TRLBand;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLBand7: TRLBand;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLBand8: TRLBand;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLLabel25: TRLLabel;
    RLDBText22: TRLDBText;
    qrtitulo: TRLLabel;
    RLSystemInfo4: TRLSystemInfo;
    RLSystemInfo5: TRLSystemInfo;
    RLSystemInfo6: TRLSystemInfo;
    RLBand9: TRLBand;
    RLLabel27: TRLLabel;
    RLLabel28: TRLLabel;
    RLBand10: TRLBand;
    RLLabel29: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLDBText11: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBResult4: TRLDBResult;
    RLDBResult5: TRLDBResult;
    qroperador: TRLLabel;
    RLReport3: TRLReport;
    RLBand13: TRLBand;
    RLDBText19: TRLDBText;
    RLDBText23: TRLDBText;
    RLLabel23: TRLLabel;
    RLDBText24: TRLDBText;
    qrtituloI: TRLLabel;
    RLSystemInfo7: TRLSystemInfo;
    RLSystemInfo8: TRLSystemInfo;
    RLSystemInfo9: TRLSystemInfo;
    qroperadorI: TRLLabel;
    RLBand14: TRLBand;
    RLLabel30: TRLLabel;
    RLLabel31: TRLLabel;
    RLGroup1: TRLGroup;
    RLBand11: TRLBand;
    RLBand12: TRLBand;
    RLBand15: TRLBand;
    RLLabel19: TRLLabel;
    RLDBText15: TRLDBText;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel32: TRLLabel;
    RLLabel33: TRLLabel;
    RLLabel34: TRLLabel;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText25: TRLDBText;
    RLDBText26: TRLDBText;
    RLDBText27: TRLDBText;
    RLBand17: TRLBand;
    RLLabel36: TRLLabel;
    RLDBResult9: TRLDBResult;
    RLDBResult10: TRLDBResult;
    RLDBResult11: TRLDBResult;
    RLBand16: TRLBand;
    RLLabel24: TRLLabel;
    RLDBResult6: TRLDBResult;
    RLDBResult7: TRLDBResult;
    RLDBResult8: TRLDBResult;
    DataSource4: TDataSource;
    RLReport4: TRLReport;
    RLBand18: TRLBand;
    RLDBText28: TRLDBText;
    RLDBText29: TRLDBText;
    RLLabel26: TRLLabel;
    RLDBText30: TRLDBText;
    qrtituloEV: TRLLabel;
    RLSystemInfo10: TRLSystemInfo;
    RLSystemInfo11: TRLSystemInfo;
    RLSystemInfo12: TRLSystemInfo;
    RLBand19: TRLBand;
    RLLabel38: TRLLabel;
    RLLabel39: TRLLabel;
    RLGroup2: TRLGroup;
    RLBand20: TRLBand;
    RLLabel40: TRLLabel;
    RLDBText31: TRLDBText;
    RLBand21: TRLBand;
    RLLabel41: TRLLabel;
    RLLabel42: TRLLabel;
    RLLabel43: TRLLabel;
    RLLabel44: TRLLabel;
    RLLabel45: TRLLabel;
    RLLabel46: TRLLabel;
    RLBand22: TRLBand;
    RLDBText32: TRLDBText;
    RLDBText35: TRLDBText;
    RLDBText36: TRLDBText;
    RLDBText37: TRLDBText;
    RLBand23: TRLBand;
    RLLabel47: TRLLabel;
    RLDBResult13: TRLDBResult;
    RLDBResult14: TRLDBResult;
    RLBand24: TRLBand;
    RLLabel48: TRLLabel;
    RLDBResult16: TRLDBResult;
    RLDBResult17: TRLDBResult;
    RLLabel49: TRLLabel;
    RLLabel50: TRLLabel;
    RLDBText38: TRLDBText;
    RLDBText39: TRLDBText;
    RLDBText33: TRLDBText;
    RLDBText34: TRLDBText;
    RLDBText40: TRLDBText;
    DataSource5: TDataSource;
    ZQuery5: TZQuery;
    ZQuery5apelido: TStringField;
    ZQuery5vendaI: TStringField;
    ZQuery5nome: TStringField;
    ZQuery5operador: TStringField;
    ZQuery5subtotal: TFloatField;
    ZQuery5desconto: TFloatField;
    ZQuery5total: TFloatField;
    RLReport5: TRLReport;
    RLBand25: TRLBand;
    RLDBText41: TRLDBText;
    RLDBText42: TRLDBText;
    RLLabel35: TRLLabel;
    RLDBText43: TRLDBText;
    qrtitulo5: TRLLabel;
    RLSystemInfo13: TRLSystemInfo;
    RLSystemInfo14: TRLSystemInfo;
    RLSystemInfo15: TRLSystemInfo;
    RLBand26: TRLBand;
    RLLabel51: TRLLabel;
    RLLabel52: TRLLabel;
    RLGroup3: TRLGroup;
    RLBand27: TRLBand;
    RLLabel53: TRLLabel;
    RLDBText44: TRLDBText;
    RLBand28: TRLBand;
    RLBand29: TRLBand;
    RLDBText49: TRLDBText;
    RLBand30: TRLBand;
    RLBand31: TRLBand;
    RLLabel54: TRLLabel;
    RLLabel55: TRLLabel;
    RLLabel56: TRLLabel;
    RLLabel57: TRLLabel;
    RLLabel58: TRLLabel;
    RLLabel59: TRLLabel;
    RLDBText45: TRLDBText;
    RLDBText46: TRLDBText;
    RLDBText47: TRLDBText;
    RLDBText48: TRLDBText;
    RLDBText50: TRLDBText;
    RLDBText51: TRLDBText;
    RLLabel60: TRLLabel;
    RLDBResult12: TRLDBResult;
    RLDBResult15: TRLDBResult;
    RLDBResult18: TRLDBResult;
    RLLabel61: TRLLabel;
    RLDBResult19: TRLDBResult;
    RLDBResult20: TRLDBResult;
    RLDBResult21: TRLDBResult;
    procedure bt2Click(Sender: TObject);
    procedure bt1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure medatainicialExit(Sender: TObject);
    procedure medatafinalExit(Sender: TObject);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFechamentoVenda: TFrmFechamentoVenda;
  saldoAnterior,entrada,saida:double;
  mes:integer;
  dia_1,dia:string;
  qryF,qryestoque,qryvenda  : TZQuery;
  
implementation

uses Unitdm, Unitfrmprincipal, UnitFrmCadClientes;

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

procedure TFrmFechamentoVenda.bt2Click(Sender: TObject);
begin
      close;
end;

procedure ProcessamentoCC;
begin
  dm.parametros.Close;
  dm.parametros.Open;
  entrada:=0;
  saida:=0;

//  FrmFechamentoVenda.qratualizar.close;
//  FrmFechamentoVenda.qratualizar.sql.clear;
//  FrmFechamentoVenda.qratualizar.sql.add('update contascorrente_saldo set');
//  FrmFechamentoVenda.qratualizar.sql.add('deb'+IntToStr(mes)+' = :saida,');
//  FrmFechamentoVenda.qratualizar.sql.add('cred'+IntToStr(mes)+' = :entrada');
//  FrmFechamentoVenda.qratualizar.SQL.Add('where (ano ='+chr(39)+copy(FrmFechamentoVenda.MeDataFinal.text,7,4)+chr(39)+')');
//  FrmFechamentoVenda.qratualizar.SQL.Add('and (conta ='+chr(39)+'CX'+chr(39)+')');
//  FrmFechamentoVenda.qratualizar.Params[0].Value := saida;
//  FrmFechamentoVenda.qratualizar.Params[1].Value := entrada;
//  FrmFechamentoVenda.qratualizar.ExecSQL;

  dia:=IntToStr(DiasPorMes(StrToInt(copy(FrmFechamentoVenda.MeDataFinal.text,7,4)), StrToInt(copy(FrmFechamentoVenda.MeDataFinal.text,4,2))));

  FrmFechamentoVenda.qrtotal.Close;
  FrmFechamentoVenda.qrtotal.SQL.Clear;
  FrmFechamentoVenda.qrtotal.SQL.Add('select conta,sum(credito) as Credito, sum(debito) as Debito from financeiro');
  FrmFechamentoVenda.qrtotal.SQL.Add('where (conta ='+chr(39)+'CX'+chr(39)+')');
  FrmFechamentoVenda.qrtotal.SQL.Add('and (data between '+chr(39)+
  copy(FrmFechamentoVenda.MeDataFinal.text,7,4)+'/'+copy(FrmFechamentoVenda.MeDataFinal.text,4,2)+'/'+'01'+chr(39)+' and '+chr(39)+
  copy(FrmFechamentoVenda.MeDataFinal.text,7,4)+'/'+copy(FrmFechamentoVenda.MeDataFinal.text,4,2)+'/'+dia+chr(39)+')');

  FrmFechamentoVenda.qrtotal.SQL.Add('group by conta');
  FrmFechamentoVenda.qrtotal.open;
  if FrmFechamentoVenda.qrtotalCredito.Value>0 then
     entrada:=FrmFechamentoVenda.qrtotal['Credito']
  else
     entrada:=0;
  if FrmFechamentoVenda.qrtotalDebito.Value>0 then
     saida:=FrmFechamentoVenda.qrtotal['Debito']
  else
     saida:=0;

//  dm.contascorrente_saldo.Close;
//  dm.contascorrente_saldo.SQL.Clear;
//  dm.contascorrente_saldo.SQL.Add('select * from contascorrente_saldo');
//  dm.contascorrente_saldo.SQL.Add('where (conta ='+chr(39)+'CX'+chr(39)+')');
//  dm.contascorrente_saldo.SQL.Add('and (ano ='+chr(39)+copy(FrmFechamentoVenda.MeDataFinal.text,7,4)+chr(39)+')');
//  dm.contascorrente_saldo.open;
//  if dm.contascorrente_saldo.RecordCount<1 then
//     begin
//       dm.contascorrente_saldo.Insert;
//       dm.contascorrente_saldoconta.Value:='CX';
//       dm.contascorrente_saldoano.Value:=copy(FrmFechamentoVenda.MeDataFinal.text,7,4);
//       dm.contascorrente_saldo.FieldByName('deb'+IntToStr(mes)).AsFloat:=saida;
//       dm.contascorrente_saldo.FieldByName('cred'+IntToStr(mes)).AsFloat:=entrada;
//       dm.contascorrente_saldo.Post;
//     end
//     else
//     begin
//       FrmFechamentoVenda.qratualizar.close;
//       FrmFechamentoVenda.qratualizar.sql.clear;
//       FrmFechamentoVenda.qratualizar.sql.add('update contascorrente_saldo set');
//       FrmFechamentoVenda.qratualizar.sql.add('deb'+IntToStr(mes)+' = :saida,');
//       FrmFechamentoVenda.qratualizar.sql.add('cred'+IntToStr(mes)+' = :entrada');
//       FrmFechamentoVenda.qratualizar.SQL.Add('where (conta ='+chr(39)+'CX'+chr(39)+')');
//       FrmFechamentoVenda.qratualizar.SQL.Add('and (ano ='+chr(39)+copy(FrmFechamentoVenda.MeDataFinal.text,7,4)+chr(39)+')');
//       FrmFechamentoVenda.qratualizar.Params[0].Value := saida;
//       FrmFechamentoVenda.qratualizar.Params[1].Value := entrada;
//       FrmFechamentoVenda.qratualizar.ExecSQL;
//     end;
end;

procedure calculosaldocc;
begin
//    saldoAnterior:=0;
//    FrmFechamentoVenda.qratualizar.close;
//    FrmFechamentoVenda.qratualizar.sql.clear;
//    FrmFechamentoVenda.qratualizar.sql.add('update financeiro set');
//    FrmFechamentoVenda.qratualizar.sql.add('saldoconta = :saldoanterior');
//    FrmFechamentoVenda.qratualizar.SQL.Add('where (conta ='+chr(39)+'CX'+chr(39)+')');
//    FrmFechamentoVenda.qratualizar.Params[0].Value := saldoanterior;
//    FrmFechamentoVenda.qratualizar.ExecSQL;

//    dm.contascorrente_saldo.Close;
//    dm.contascorrente_saldo.SQL.Clear;
//    dm.contascorrente_saldo.SQL.Add('select * from contascorrente_saldo');
//    dm.contascorrente_saldo.SQL.Add('where (conta ='+chr(39)+'CX'+chr(39)+')');
//    dm.contascorrente_saldo.SQL.Add('and (ano ='+chr(39)+copy(FrmFechamentoVenda.medatainicial.text,7,4)+chr(39)+')');
//    dm.contascorrente_saldo.Open;
//
//    if copy(FrmFechamentoVenda.medatainicial.Text,4,2)='01' then
//       saldoAnterior:=dm.contascorrente_saldosaldoant.value
//    else if copy(FrmFechamentoVenda.medatainicial.Text,4,2)='02' then
//       saldoAnterior:=dm.contascorrente_saldosaldoant.value+
//       dm.contascorrente_saldocred1.value-dm.contascorrente_saldodeb1.value
//    else if copy(FrmFechamentoVenda.medatainicial.Text,4,2)='03' then
//       saldoAnterior:=dm.contascorrente_saldosaldoant.value+
//       dm.contascorrente_saldocred1.value+dm.contascorrente_saldocred2.value-
//       dm.contascorrente_saldodeb1.value-dm.contascorrente_saldodeb2.value
//    else if copy(FrmFechamentoVenda.medatainicial.Text,4,2)='04' then
//       saldoAnterior:=dm.contascorrente_saldosaldoant.value+
//       dm.contascorrente_saldocred1.value+dm.contascorrente_saldocred2.value+dm.contascorrente_saldocred3.value-
//       dm.contascorrente_saldodeb1.value-dm.contascorrente_saldodeb2.value-dm.contascorrente_saldodeb3.value
//    else if copy(FrmFechamentoVenda.medatainicial.Text,4,2)='05' then
//       saldoAnterior:=dm.contascorrente_saldosaldoant.value+
//       dm.contascorrente_saldocred1.value+dm.contascorrente_saldocred2.value+dm.contascorrente_saldocred3.value+
//       dm.contascorrente_saldocred4.value-dm.contascorrente_saldodeb1.value-
//       dm.contascorrente_saldodeb2.value-dm.contascorrente_saldodeb3.value-dm.contascorrente_saldodeb4.value
//    else if copy(FrmFechamentoVenda.medatainicial.Text,4,2)='06' then
//       saldoAnterior:=dm.contascorrente_saldosaldoant.value+
//       dm.contascorrente_saldocred1.value+dm.contascorrente_saldocred2.value+dm.contascorrente_saldocred3.value+
//       dm.contascorrente_saldocred4.value+dm.contascorrente_saldocred5.value-
//       dm.contascorrente_saldodeb1.value-dm.contascorrente_saldodeb2.value-dm.contascorrente_saldodeb3.value-
//       dm.contascorrente_saldodeb4.value-dm.contascorrente_saldodeb5.value
//    else if copy(FrmFechamentoVenda.medatainicial.Text,4,2)='07' then
//       saldoAnterior:=dm.contascorrente_saldosaldoant.value+
//       dm.contascorrente_saldocred1.value+dm.contascorrente_saldocred2.value+dm.contascorrente_saldocred3.value+
//       dm.contascorrente_saldocred4.value+dm.contascorrente_saldocred5.value+dm.contascorrente_saldocred6.value-
//       dm.contascorrente_saldodeb1.value-dm.contascorrente_saldodeb2.value-
//       dm.contascorrente_saldodeb3.value-dm.contascorrente_saldodeb4.value-dm.contascorrente_saldodeb5.value-
//       dm.contascorrente_saldodeb6.value
//    else if copy(FrmFechamentoVenda.medatainicial.Text,4,2)='08' then
//       saldoAnterior:=dm.contascorrente_saldosaldoant.value+
//       dm.contascorrente_saldocred1.value+dm.contascorrente_saldocred2.value+dm.contascorrente_saldocred3.value+
//       dm.contascorrente_saldocred4.value+dm.contascorrente_saldocred5.value+dm.contascorrente_saldocred6.value+
//       dm.contascorrente_saldocred7.value-dm.contascorrente_saldodeb1.value-
//       dm.contascorrente_saldodeb2.value-dm.contascorrente_saldodeb3.value-dm.contascorrente_saldodeb4.value-
//       dm.contascorrente_saldodeb5.value-dm.contascorrente_saldodeb6.value-dm.contascorrente_saldodeb7.value
//    else if copy(FrmFechamentoVenda.medatainicial.Text,4,2)='09' then
//       saldoAnterior:=dm.contascorrente_saldosaldoant.value+
//       dm.contascorrente_saldocred1.value+dm.contascorrente_saldocred2.value+dm.contascorrente_saldocred3.value+
//       dm.contascorrente_saldocred4.value+dm.contascorrente_saldocred5.value+dm.contascorrente_saldocred6.value+
//       dm.contascorrente_saldocred7.value+dm.contascorrente_saldocred8.value-
//       dm.contascorrente_saldodeb1.value-dm.contascorrente_saldodeb2.value-dm.contascorrente_saldodeb3.value-
//       dm.contascorrente_saldodeb4.value-dm.contascorrente_saldodeb5.value-dm.contascorrente_saldodeb6.value-
//       dm.contascorrente_saldodeb7.value-dm.contascorrente_saldodeb8.value
//    else if copy(FrmFechamentoVenda.medatainicial.Text,4,2)='10' then
//       saldoAnterior:=dm.contascorrente_saldosaldoant.value+
//       dm.contascorrente_saldocred1.value+dm.contascorrente_saldocred2.value+dm.contascorrente_saldocred3.value+
//       dm.contascorrente_saldocred4.value+dm.contascorrente_saldocred5.value+dm.contascorrente_saldocred6.value+
//       dm.contascorrente_saldocred7.value+dm.contascorrente_saldocred8.value+dm.contascorrente_saldocred9.value-
//       dm.contascorrente_saldodeb1.value-dm.contascorrente_saldodeb2.value-
//       dm.contascorrente_saldodeb3.value-dm.contascorrente_saldodeb4.value-dm.contascorrente_saldodeb5.value-
//       dm.contascorrente_saldodeb6.value-dm.contascorrente_saldodeb7.value-dm.contascorrente_saldodeb8.value-
//       dm.contascorrente_saldodeb9.value
//    else if copy(FrmFechamentoVenda.medatainicial.Text,4,2)='11' then
//       saldoAnterior:=dm.contascorrente_saldosaldoant.value+
//       dm.contascorrente_saldocred1.value+dm.contascorrente_saldocred2.value+dm.contascorrente_saldocred3.value+
//       dm.contascorrente_saldocred4.value+dm.contascorrente_saldocred5.value+dm.contascorrente_saldocred6.value+
//       dm.contascorrente_saldocred7.value+dm.contascorrente_saldocred8.value+dm.contascorrente_saldocred9.value+
//       dm.contascorrente_saldocred10.value-dm.contascorrente_saldodeb1.value-
//       dm.contascorrente_saldodeb2.value-dm.contascorrente_saldodeb3.value-dm.contascorrente_saldodeb4.value-
//       dm.contascorrente_saldodeb5.value-dm.contascorrente_saldodeb6.value-dm.contascorrente_saldodeb7.value-
//       dm.contascorrente_saldodeb8.value-dm.contascorrente_saldodeb9.value-dm.contascorrente_saldodeb10.value
//    else if copy(FrmFechamentoVenda.medatainicial.Text,4,2)='12' then
//       saldoAnterior:=dm.contascorrente_saldosaldoant.value+
//       dm.contascorrente_saldocred1.value+dm.contascorrente_saldocred2.value+dm.contascorrente_saldocred3.value+
//       dm.contascorrente_saldocred4.value+dm.contascorrente_saldocred5.value+dm.contascorrente_saldocred6.value+
//       dm.contascorrente_saldocred7.value+dm.contascorrente_saldocred8.value+dm.contascorrente_saldocred9.value+
//       dm.contascorrente_saldocred10.value+dm.contascorrente_saldocred11.value-
//       dm.contascorrente_saldodeb1.value-dm.contascorrente_saldodeb2.value-dm.contascorrente_saldodeb3.value-
//       dm.contascorrente_saldodeb4.value-dm.contascorrente_saldodeb5.value-dm.contascorrente_saldodeb6.value-
//       dm.contascorrente_saldodeb7.value-dm.contascorrente_saldodeb8.value-dm.contascorrente_saldodeb9.value-
//       dm.contascorrente_saldodeb10.value-dm.contascorrente_saldodeb11.value;
//
//    if copy(FrmFechamentoVenda.medatainicial.text,1,2)<>'01' then
//       begin
//         dia_1:=IntToStr(StrToInt(copy(FrmFechamentoVenda.medatainicial.text,1,2))-1);
//         FrmFechamentoVenda.qrtotal.Close;
//         FrmFechamentoVenda.qrtotal.SQL.Clear;
//         FrmFechamentoVenda.qrtotal.SQL.Add('select sum(credito) as Credito, sum(debito) as Debito from financeiro');
//         FrmFechamentoVenda.qrtotal.SQL.Add('where (conta ='+chr(39)+'CX'+chr(39)+')');
//         FrmFechamentoVenda.qrtotal.SQL.Add('and (data between '+chr(39)+
//         copy(FrmFechamentoVenda.medatainicial.text,7,4)+'/'+
//         copy(FrmFechamentoVenda.medatainicial.text,4,2)+'/'+
//         '01'+chr(39)+' and '+chr(39)+copy(FrmFechamentoVenda.medatainicial.text,7,4)+'/'+
//         copy(FrmFechamentoVenda.medatainicial.text,4,2)+'/'+
//         dia_1+chr(39)+')');
//         FrmFechamentoVenda.qrtotal.open;
//         if FrmFechamentoVenda.qrtotalCredito.Value>0 then
//            entrada:=FrmFechamentoVenda.qrtotal['Credito']
//         else
//            entrada:=0;
//         if FrmFechamentoVenda.qrtotalDebito.Value>0 then
//            saida:=FrmFechamentoVenda.qrtotal['Debito']
//         else
//            saida:=0;
//         saldoanterior:=saldoanterior+entrada-saida;
//
//         FrmFechamentoVenda.qratualizar.close;
//         FrmFechamentoVenda.qratualizar.sql.clear;
//         FrmFechamentoVenda.qratualizar.sql.add('update contascorrente_saldo set');
//         FrmFechamentoVenda.qratualizar.sql.add('deb'+IntToStr(mes)+' = :saida,');
//         FrmFechamentoVenda.qratualizar.sql.add('cred'+IntToStr(mes)+' = :entrada');
//         FrmFechamentoVenda.qratualizar.SQL.Add('where (conta ='+chr(39)+'CX'+chr(39)+')');
//         FrmFechamentoVenda.qratualizar.SQL.Add('and (ano ='+chr(39)+copy(FrmFechamentoVenda.medatainicial.text,7,4)+chr(39)+')');
//         FrmFechamentoVenda.qratualizar.Params[0].Value := saida;
//         FrmFechamentoVenda.qratualizar.Params[1].Value := entrada;
//         FrmFechamentoVenda.qratualizar.ExecSQL;
//       end;

    dm.financeiro.First;
    while not dm.financeiro.Eof do
          begin
            saldoanterior:=saldoanterior+dm.financeirocredito.value-
            dm.financeirodebito.value;
            FrmFechamentoVenda.qratualizar.close;
            FrmFechamentoVenda.qratualizar.sql.clear;
            FrmFechamentoVenda.qratualizar.sql.add('update financeiro set');
            FrmFechamentoVenda.qratualizar.sql.add('saldoconta = :saldoanterior');
            FrmFechamentoVenda.qratualizar.SQL.Add('where codigo ='+IntToStr(dm.financeirocodigo.Value));
            FrmFechamentoVenda.qratualizar.Params[0].Value := saldoanterior;
            FrmFechamentoVenda.qratualizar.ExecSQL;

            dm.financeiro.next;
          end;
end;

procedure TFrmFechamentoVenda.bt1Click(Sender: TObject);
begin
  if
    (medatainicial.Text='  /  /    ') and
    (medatafinal.Text='  /  /    ')
  then
  begin
    application.MessageBox('Período Inválido','Atenção',mb_ok+mb_iconinformation);
    medatainicial.SetFocus;
    Exit;
  end;

  dm.parametros.Close;
  dm.parametros.Open;

  qryestoque              :=  TZQuery.Create(nil);
  qryestoque.Connection   :=  dm.ZConnection1;
  qryestoque.Close;
  qryestoque.SQL.Clear;
  qryestoque.SQL.Add('select documento from movestoque');
  qryestoque.SQL.Add('where (tipomov= '+chr(39)+'SV'+chr(39)+')');
  qryestoque.SQL.Add('and (data between '+chr(39)+
  copy(medatainicial.text,7,4)+'/'+copy(medatainicial.text,4,2)+'/'+
  copy(medatainicial.text,1,2)+chr(39)+' and '+chr(39)+
  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
  copy(MeDataFinal.text,1,2)+chr(39)+')');
  qryestoque.SQL.Add('group by documento');
  qryestoque.open;
  Gauge1.Progress:=0;
  Gauge1.MaxValue:=qryestoque.RecordCount;
  while not qryestoque.eof do
        begin
          qryvenda              :=  TZQuery.Create(nil);
          qryvenda.Connection   :=  dm.ZConnection1;
          qryvenda.Close;
          qryvenda.SQL.Clear;
          qryvenda.SQL.Add('select vendaI from venda');
          qryvenda.SQL.Add('where vendaI= '+chr(39)+qryestoque.FieldByName('documento').AsString+chr(39));
          qryvenda.SQL.Add('and fechada= '+chr(39)+'S'+chr(39));
          qryvenda.open;
          if qryvenda.RecordCount<1 then
             begin
               qratualizar.Close;
               qratualizar.SQL.Clear;
               qratualizar.SQL.Add('delete from movestoque');
               qratualizar.SQL.Add('where documento = '+chr(39)+qryestoque.FieldByName('documento').AsString+chr(39));
               qratualizar.SQL.Add('and tipomov= '+chr(39)+'SV'+chr(39));
               qratualizar.ExecSQL;

               qratualizar.Close;
               qratualizar.SQL.Clear;
               qratualizar.SQL.Add('delete from docreceber');
               qratualizar.SQL.Add('where nf = '+chr(39)+qryestoque.FieldByName('documento').AsString+chr(39));
               qratualizar.ExecSQL;
             end;
          qryestoque.next;
          Gauge1.Progress:=Gauge1.Progress+1;
          Application.ProcessMessages;
        end;
  qryvenda.Free;
  qryestoque.Free;
{
  if medatainicial.Text=medatafinal.Text then
     begin
       dm.Totaldocreceber.Close;
       dm.Totaldocreceber.SQL.Clear;
       dm.Totaldocreceber.SQL.Add('select sum(total) as total from venda');
       dm.Totaldocreceber.SQL.Add('where (fechada= '+chr(39)+'S'+chr(39)+')');
       dm.Totaldocreceber.SQL.Add('and (formapagto= '+chr(39)+'AV'+chr(39)+')');
       if cbtipo.Text<>'' then
          dm.Totaldocreceber.SQL.Add('and (tipo= '+chr(39)+copy(cbtipo.Text,1,1)+chr(39)+')');
       dm.Totaldocreceber.SQL.Add('and (data between '+chr(39)+
       copy(medatainicial.text,7,4)+'/'+copy(medatainicial.text,4,2)+'/'+
       copy(medatainicial.text,1,2)+chr(39)+' and '+chr(39)+
       copy(medatafinal.text,7,4)+'/'+copy(medatafinal.text,4,2)+'/'+
       copy(medatafinal.text,1,2)+chr(39)+')');
       dm.Totaldocreceber.open;
       if dm.Totaldocrecebertotal.Value>0 then
          begin
            qratualizar.Close;
            qratualizar.SQL.Clear;
            qratualizar.SQL.Add('delete from financeiro');
            qratualizar.SQL.Add('where (conta = '+chr(39)+'CX'+chr(39)+')');
            qratualizar.SQL.Add('and (historico = '+chr(39)+'VLR REFERENTE REC DINHEIRO'+chr(39)+')');
            qratualizar.SQL.Add('and (data between '+chr(39)+
            copy(medatainicial.text,7,4)+'/'+copy(medatainicial.text,4,2)+'/'+
            copy(medatainicial.text,1,2)+chr(39)+' and '+chr(39)+
            copy(medatafinal.text,7,4)+'/'+copy(medatafinal.text,4,2)+'/'+
            copy(medatafinal.text,1,2)+chr(39)+')');
            qratualizar.ExecSQL;

            dm.financeiro.Close;
            dm.financeiro.SQL.Clear;
            dm.financeiro.SQL.Add('select * from financeiro');
            dm.financeiro.SQL.Add('where (1=2)');
            dm.financeiro.Open;
            dm.financeiro.Insert;
            dm.financeiroconta.Value:='CX';
            dm.financeirodata.Value:=StrToDate(medatainicial.text);
            dm.financeirodoc.Value:=copy(medatainicial.text,1,2)+'/'+
            copy(medatainicial.text,4,2)+'/'+
            copy(medatainicial.text,7,4);
            dm.financeirohistorico.Value:='VLR REFERENTE REC DINHEIRO';
            dm.financeirotipo.Value:='C';
            dm.financeiroplanoconta.Value:='11101001';
            dm.financeirocredito.Value:=dm.Totaldocrecebertotal.Value;
            dm.financeiroempresa.asstring :=dm.empresasCodigo.AsString;
            dm.financeiro.Post;
          end;
     end;
}
  ZQuery1.Close;
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select V.formapagto,F.descricao,sum(V.subtotal) as Bruto,sum(V.desconto) as Desconto,sum(V.subtotal)-sum(V.desconto) as Total from formapagto F, venda V');
  ZQuery1.SQL.Add('where (F.codigo=V.formapagto)');
  ZQuery1.SQL.Add('and (V.fechada= '+chr(39)+'S'+chr(39)+')');
  ZQuery1.SQL.Add('and (V.data between '+chr(39)+
  copy(medatainicial.text,7,4)+'/'+copy(medatainicial.text,4,2)+'/'+
  copy(medatainicial.text,1,2)+chr(39)+' and '+chr(39)+
  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
  copy(MeDataFinal.text,1,2)+chr(39)+')');
  if cboperador.Text<>'' then
     begin
       dm.usuarios.Open;
       dm.usuarios.Locate('nome',FrmPrincipal.sb.Panels[3].Text,[]);
       ZQuery1.SQL.Add('and (V.operador = '+dm.usuarioscodigo.AsString+')');
     end;

  ZQuery1.SQL.Add('group by V.formapagto');
  ZQuery1.SQL.Add('order by F.descricao');
  ZQuery1.open;
  qrtitulo.Caption:='Relatório Sintético  - Vendas no Período de '+medatainicial.text+' à '+medatafinal.text;
  if cboperador.Text<>'' then
     qroperador.Caption:='OPERADOR(A): '+cboperador.Text
  else
     qroperador.Caption:='OPERADOR(A) - GERAL';

  RLReport2.Preview;  //Alterado

  ZQuery2.Close;
  ZQuery2.SQL.Clear;
  ZQuery2.SQL.Add('select V.vendaI,U.nome as operador,V.subtotal,V.desconto,V.total,P.descricao,C.nome');
  ZQuery2.SQL.Add('from venda V, formapagto P, clientes C, usuarios U');
  ZQuery2.SQL.Add('where (V.formapagto=P.codigo) and (V.cliente=C.codigo) and (V.operador=U.codigo)');
  ZQuery2.SQL.Add('and (V.fechada= '+chr(39)+'S'+chr(39)+')');
  ZQuery2.SQL.Add('and (V.data between '+chr(39)+
  copy(medatainicial.text,7,4)+'/'+copy(medatainicial.text,4,2)+'/'+
  copy(medatainicial.text,1,2)+chr(39)+' and '+chr(39)+
  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
  copy(MeDataFinal.text,1,2)+chr(39)+')');
  if cboperador.Text<>'' then
     begin
       dm.usuarios.Open;
       dm.usuarios.Locate('nome',FrmPrincipal.sb.Panels[3].Text,[]);
       ZQuery2.SQL.Add('and (V.operador = '+dm.usuarioscodigo.AsString+')');
     end;

  ZQuery2.SQL.Add('order by descricao,nome');

  ZQuery2.open;
  qrtituloI.Caption:='Relatório Analítico  - Vendas no Período de '+medatainicial.text+' à '+medatafinal.text;
  if cboperador.Text<>'' then
     qroperadorI.Caption:='OPERADOR(A): '+cboperador.Text
  else
     qroperadorI.Caption:='OPERADOR(A) - GERAL';

  RLReport3.Preview;  //Alterado

  ZQuery5.Close;
  ZQuery5.SQL.Clear;
  ZQuery5.SQL.Add('select V.vendaI,U.nome as operador,V.subtotal,V.desconto,V.total,P.apelido,C.nome');
  ZQuery5.SQL.Add('from venda V, fornecedores P, clientes C, usuarios U');
  ZQuery5.SQL.Add('where (V.vendedor=P.codigo) and (V.cliente=C.codigo) and (V.operador=U.codigo)');
  ZQuery5.SQL.Add('and (V.fechada= '+chr(39)+'S'+chr(39)+')');
  ZQuery5.SQL.Add('and (V.data between '+chr(39)+
  copy(medatainicial.text,7,4)+'/'+copy(medatainicial.text,4,2)+'/'+
  copy(medatainicial.text,1,2)+chr(39)+' and '+chr(39)+
  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
  copy(MeDataFinal.text,1,2)+chr(39)+')');
  if cboperador.Text<>'' then
     begin
       dm.usuarios.Open;
       dm.usuarios.Locate('nome',FrmPrincipal.sb.Panels[3].Text,[]);
       ZQuery5.SQL.Add('and (V.operador = '+dm.usuarioscodigo.AsString+')');
     end;

  ZQuery5.SQL.Add('order by apelido,nome');

  ZQuery5.open;
  qrtitulo5.Caption:='Relatório Vendas por Vendedor em '+medatainicial.text+' à '+medatafinal.text;

  RLReport5.Preview;

  ZQuery1.Close;
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select V.formapagto,F.descricao,sum(V.subtotal) as Bruto,sum(V.desconto) as Desconto,sum(V.subtotal)-sum(V.desconto) as Total from formapagto F, venda V');
  ZQuery1.SQL.Add('where (F.codigo=V.formapagto)');
  ZQuery1.SQL.Add('and (V.fechada= '+chr(39)+'C'+chr(39)+')');
  ZQuery1.SQL.Add('and (V.data between '+chr(39)+
  copy(medatainicial.text,7,4)+'/'+copy(medatainicial.text,4,2)+'/'+
  copy(medatainicial.text,1,2)+chr(39)+' and '+chr(39)+
  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
  copy(MeDataFinal.text,1,2)+chr(39)+')');
  if cboperador.Text<>'' then
     begin
       dm.usuarios.Open;
       dm.usuarios.Locate('nome',FrmPrincipal.sb.Panels[3].Text,[]);
       ZQuery1.SQL.Add('and (V.operador = '+dm.usuarioscodigo.AsString+')');
     end;

  ZQuery1.SQL.Add('group by V.formapagto');
  ZQuery1.SQL.Add('order by F.descricao');
  ZQuery1.open;
  qrtitulo.Caption:='Relatório - Vendas Canceladas no Período de '+medatainicial.text+' à '+medatafinal.text;
  if cboperador.Text<>'' then
     qroperador.Caption:='OPERADOR(A): '+cboperador.Text
  else
     qroperador.Caption:='OPERADOR(A) - GERAL';

  RLReport2.Preview;  //Alterado

  ZQuery3.Close;
  ZQuery3.SQL.Clear;
  ZQuery3.SQL.Add('select E.documento,E.data,E.produto,P.nome,E.qtd,E.und,E.VlrUnit,E.VlrTotal,F.apelido');
  ZQuery3.SQL.Add('from movestoque E, fornecedores F, produtos P');
  ZQuery3.SQL.Add('where E.vendedor=F.codigo and E.produto=P.codigo');
  ZQuery3.SQL.Add('and (E.tipomov= '+chr(39)+'SV'+chr(39)+')');
  ZQuery3.SQL.Add('and (E.data between '+chr(39)+
  copy(medatainicial.text,7,4)+'/'+copy(medatainicial.text,4,2)+'/'+
  copy(medatainicial.text,1,2)+chr(39)+' and '+chr(39)+
  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
  copy(MeDataFinal.text,1,2)+chr(39)+')');
  if cboperador.Text<>'' then
     ZQuery3.SQL.Add('and (F.apelido= '+chr(39)+FrmPrincipal.sb.Panels[3].Text+chr(39)+')');
  ZQuery3.SQL.Add('order by F.apelido,P.nome');
  ZQuery3.Open;
  qrtituloEV.Caption:='Relatório de Produtos Vendidos por Vendedor(a) em '+medatainicial.text+' à '+medatafinal.text;

  RLReport4.Preview;  //Alterado

  qrtitulo.Caption:='Relatório de Produtos Vendidos em '+medatainicial.text+' à '+medatafinal.text;
  qrMovEstoque.Close;
  qrMovEstoque.SQL.Clear;
  qrMovEstoque.SQL.Add('select E.documento,E.favorecido,E.produto,E.data,E.TipoMov,E.und,E.qtd,E.VlrUnit,E.VlrTotal,P.nome');
  qrMovEstoque.SQL.Add('from movestoque E, produtos P');
  qrMovEstoque.SQL.Add('where (E.produto=P.codigo)');
  qrMovEstoque.SQL.Add('and (E.tipomov= '+chr(39)+'SV'+chr(39)+')');
  qrMovEstoque.SQL.Add('and (E.data between '+chr(39)+
  copy(medatainicial.text,7,4)+'/'+copy(medatainicial.text,4,2)+'/'+
  copy(medatainicial.text,1,2)+chr(39)+' and '+chr(39)+
  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
  copy(MeDataFinal.text,1,2)+chr(39)+')');
  if cboperador.Text<>'' then
     begin
       qryF              :=  TZQuery.Create(nil);
       qryF.Connection   :=  dm.ZConnection1;
       qryF.SQL.Add('select codigo from fornecedores');
       qryF.sql.add('where apelido= '+chr(39)+cboperador.Text+chr(39));
       qryF.Open;
       qrMovEstoque.SQL.Add('and E.vendedor= '+qryF.fieldbyname('codigo').AsString);
       qrtitulo.Caption:=qrtitulo.Caption+' - Vendedor(a): '+cboperador.Text;
       qryF.Free;
     end;
  qrMovEstoque.SQL.Add('order by E.data,E.documento');
  qrMovEstoque.Open;

  RLReport1.Preview;
end;

procedure TFrmFechamentoVenda.FormShow(Sender: TObject);
begin
  qratualizar.close;
  qratualizar.sql.clear;
  qratualizar.SQL.Add('CALL apagar_movestoquefav0()');
  qratualizar.ExecSQL;

  qratualizar.Close;
  qratualizar.SQL.Clear;
  qratualizar.SQL.Add('delete from venda');
  qratualizar.SQL.Add('where (vendaI = '+chr(39)+''+chr(39)+')');
  qratualizar.ExecSQL;

  dm.usuarios.Close;
  dm.usuarios.SQL.Clear;  
  dm.usuarios.SQL.Add('select * from usuarios');
  dm.usuarios.Open;
  cboperador.Items.Clear;
  while not dm.usuarios.Eof do
        begin
          cboperador.Items.Add(dm.usuariosNome.Value);
          dm.usuarios.Next;
        end;

  medatainicial.Text:=DateToStr(date);
  medatafinal.Text:=DateToStr(date);

  dm.usuarios.Close;
  dm.usuarios.Open;
  dm.usuarios.Locate('nome',FrmPrincipal.sb.Panels[3].Text,[]);
  if dm.usuariosfornecedores.value='0' then
     begin
       medatainicial.Enabled:=false;
       medatafinal.Enabled:=false;
     end
     else
     begin
       medatainicial.Enabled:=true;
       medatafinal.Enabled:=true;
     end;
  dm.parametros.Close;
  dm.parametros.Open;
end;

procedure TFrmFechamentoVenda.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
     SelectNext(activecontrol,True,True);
     key:=#0;
  end;
end;

procedure TFrmFechamentoVenda.medatainicialExit(Sender: TObject);
begin
  if medatainicial.text<>'  /  /    ' then
  begin
  Try
     StrToDate(medatainicial.Text) ;
  Except
  begin
     application.MessageBox('Data Inválida!','Atenção',mb_Ok+mb_iconerror);
     medatainicial.setfocus;
  end;
  end;
  end;
end;

procedure TFrmFechamentoVenda.medatafinalExit(Sender: TObject);
begin
  if MeDataFinal.text<>'  /  /    ' then
  begin
  Try
     StrToDate(MeDataFinal.Text) ;
     If StrToDate(MeDataInicial.Text) > StrToDate(MeDataFinal.Text) then
        Begin
           MessageBox(Handle, 'Data inferior à data inicial de pesquisa!!', 'Atenção', mb_IconWarning or mb_Ok);
           medatafinal.text:='';
           medatainicial.text:='';
           MeDatainicial.SetFocus;
        End;
  Except
  begin
     application.MessageBox('Data Inválida!','Atenção',mb_Ok+mb_iconerror);
     MeDataFinal.setfocus;
  end;
  end;
  end;
end;

procedure TFrmFechamentoVenda.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  qryF              :=  TZQuery.Create(nil);
  qryF.Connection   :=  dm.ZConnection1;
  qryF.SQL.Add('select fornecedor from produtos');
  qryF.sql.add('where codigo = '+qrMovEstoqueproduto.AsString);
  qryF.Open;
  rlforn.Caption:=qryF.fieldbyname('fornecedor').AsString;
end;

end.


