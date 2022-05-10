unit UnitFrmFinanceiroRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DB, DBTables, Grids, DBGrids, QRCtrls,
  QuickRpt, ExtCtrls, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFrmFinanceiroRel = class(TForm)
    bt1: TBitBtn;
    bt2: TBitBtn;
    edmes: TEdit;
    Label2: TLabel;
    edano: TEdit;
    Label1: TLabel;
    DataSource1: TDataSource;
    QuickRep1: TQuickRep;
    PageFooterBand1: TQRBand;
    QRLabel8: TQRLabel;
    QRLabel22: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    DetailBand1: TQRBand;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr1: TQRExpr;
    TitleBand1: TQRBand;
    qrtitulo: TQRLabel;
    QRLabel19: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel20: TQRLabel;
    QRSysData3: TQRSysData;
    QRLabel21: TQRLabel;
    QRSysData4: TQRSysData;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText8: TQRDBText;
    SummaryBand1: TQRBand;
    QRLabel6: TQRLabel;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    qratualizar: TZQuery;
    qrconsulta: TZQuery;
    qrconsultavalor: TFloatField;
    qrconsultavencto: TDateField;
    qrconsultapgto: TDateField;
    qrconsultaemissao: TDateField;
    procedure bt2Click(Sender: TObject);
    procedure bt1Click(Sender: TObject);
    procedure edmesExit(Sender: TObject);
    procedure edanoEnter(Sender: TObject);
    procedure edanoKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFinanceiroRel: TFrmFinanceiroRel;
  dia:integer;
  vlrvista,vlrprazo,vlracumulado:real;

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

procedure Calcular;
begin
      dm.parametros.Close;
      dm.parametros.Open;
      dm.formapagto.Close;
      dm.formapagto.Open;
      for dia := 1 to dia do
          begin
            dm.mapafaturamento.Insert;
            dm.mapafaturamentodata.value:=StrToDate(IntToStr(dia)+'/'+
            FrmFinanceiroRel.edmes.text+'/'+FrmFinanceiroRel.edano.text);
            dm.mapafaturamento.Post;
            dm.mapafaturamento.Close;
            dm.mapafaturamento.Open;

             FrmFinanceiroRel.qrconsulta.Close;
             FrmFinanceiroRel.qrconsulta.SQL.Clear;
             FrmFinanceiroRel.qrconsulta.SQL.Add('select liquido as valor,vencto,pgto,emissao from docreceber');
             FrmFinanceiroRel.qrconsulta.SQL.Add('where (emissao = '+chr(39)+
             FrmFinanceiroRel.edano.text+'/'+FrmFinanceiroRel.edmes.text+'/'+
             IntToStr(dia)+chr(39)+')');
             FrmFinanceiroRel.qrconsulta.Open;

             vlrvista:=0;
             vlrprazo:=0;
             while not FrmFinanceiroRel.qrconsulta.eof do
                   begin
                     if FrmFinanceiroRel.qrconsultaEmissao.value=FrmFinanceiroRel.qrconsultaVencto.value then
                        vlrvista:=vlrvista+FrmFinanceiroRel.qrconsultavalor.Value
                     else
                        vlrprazo:=vlrprazo+FrmFinanceiroRel.qrconsultavalor.Value;
                     FrmFinanceiroRel.qrconsulta.next;
                   end;

            vlracumulado:=vlracumulado+vlrvista+vlrprazo;
            FrmFinanceiroRel.qratualizar.close;
            FrmFinanceiroRel.qratualizar.sql.clear;
            FrmFinanceiroRel.qratualizar.sql.add('update mapafaturamento set');
            FrmFinanceiroRel.qratualizar.sql.add('avista = :vlrvista,');
            FrmFinanceiroRel.qratualizar.sql.add('aprazo = :vlrprazo,');
            FrmFinanceiroRel.qratualizar.sql.add('acumulado = :vlracumulado');
            FrmFinanceiroRel.qratualizar.SQL.Add('where (data = '+chr(39)+
            FrmFinanceiroRel.edano.text+'/'+FrmFinanceiroRel.edmes.text+'/'+
            IntToStr(dia)+chr(39)+')');
            FrmFinanceiroRel.qratualizar.Params[0].Value := vlrvista;
            FrmFinanceiroRel.qratualizar.Params[1].Value := vlrprazo;
            FrmFinanceiroRel.qratualizar.Params[2].Value := vlracumulado;
            FrmFinanceiroRel.qratualizar.ExecSQL;
          end;
end;

procedure TFrmFinanceiroRel.bt2Click(Sender: TObject);
begin
        close;
end;

procedure TFrmFinanceiroRel.bt1Click(Sender: TObject);
begin
      if (edmes.text<>'') and (edano.text<>'') then
         begin
           dm.parametros.Close;
           dm.parametros.Open;

           qratualizar.Close;
           qratualizar.SQL.Clear;
           qratualizar.SQL.Add('delete from mapafaturamento');
           qratualizar.ExecSQL;

           dm.mapafaturamento.Close;
           dm.mapafaturamento.SQL.Clear;
           dm.mapafaturamento.SQL.Add('select * from mapafaturamento');
           dm.mapafaturamento.Open;

           dia:=DiasPorMes(StrToInt(edano.text), StrToInt(edmes.text));
           vlracumulado:=0;

           Calcular;

           dm.mapafaturamento.Close;
           dm.mapafaturamento.Open;
           qrtitulo.Caption:='Mapa de Faturamento de '+
           edmes.text+'/'+edano.text;
           Quickrep1.preview;
         end;
end;

procedure TFrmFinanceiroRel.edmesExit(Sender: TObject);
begin
        if edmes.Text<>'' then
           begin
              if StrToFloat(edmes.text)>12 then
                 edmes.SetFocus
              else
                 edmes.text:=formatfloat('0',StrToInt(edmes.text));
           end;
end;

procedure TFrmFinanceiroRel.edanoEnter(Sender: TObject);
begin
        if edano.Text='' then
           begin
                edano.Text:=formatdatetime('YYYY',date);
                edano.SelStart:=0;
                edano.SelLength:=length(edano.Text);
           end;
end;

procedure TFrmFinanceiroRel.edanoKeyPress(Sender: TObject; var Key: Char);
begin
        if ((Key in ['0'..'9'] = False) and
           (Word(Key) <> VK_BACK)) then
           Key := #0;
end;

procedure TFrmFinanceiroRel.FormKeyPress(Sender: TObject; var Key: Char);
begin
        if key=#13 then
        begin
           SelectNext(activecontrol,True,True);
           key:=#0;
        end;
end;

end.
