unit UnitFrmBalancete;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, Grids, DBGrids, DB, DBTables, Comobj,
  QRCtrls, QuickRpt, ExtCtrls, ZAbstractRODataset, ZAbstractDataset,
  ZDataset;

type
  TFrmBalancete = class(TForm)
    Label2: TLabel;
    Label1: TLabel;
    edano: TEdit;
    edmes: TEdit;
    GroupBox2: TGroupBox;
    rb1: TRadioButton;
    rb2: TRadioButton;
    bt1: TBitBtn;
    bt2: TBitBtn;
    Label3: TLabel;
    cbplanoconta: TComboBox;
    Label4: TLabel;
    edconta: TEdit;
    chExcel: TCheckBox;
    DataSource1: TDataSource;
    QuickRep1: TQuickRep;
    QRGroup2: TQRGroup;
    QRDBText5: TQRDBText;
    QRLabel12: TQRLabel;
    qrsaldoant: TQRExpr;
    QRBand3: TQRBand;
    qr1: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr5: TQRExpr;
    QRBand4: TQRBand;
    QRLabel13: TQRLabel;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRBand5: TQRBand;
    QRShape2: TQRShape;
    QRLabel16: TQRLabel;
    qrtitulo: TQRLabel;
    QRLabel18: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData5: TQRSysData;
    QRSysData6: TQRSysData;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRBand6: TQRBand;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRBand7: TQRBand;
    QRLabel33: TQRLabel;
    QRExpr8: TQRExpr;
    QRExpr9: TQRExpr;
    qratualizar: TZQuery;
    Query1: TZQuery;
    Query1codigo: TIntegerField;
    Query1conta: TStringField;
    Query1data: TDateField;
    Query1doc: TStringField;
    Query1docorigem: TStringField;
    Query1historico: TStringField;
    Query1planoconta: TStringField;
    Query1tipo: TStringField;
    Query1credito: TFloatField;
    Query1debito: TFloatField;
    Query1saldoconta: TFloatField;
    Query1saldoplanoconta: TFloatField;
    Query1empresa: TIntegerField;
    Query1centrocusto: TStringField;
    Query1qtd: TFloatField;
    Query1Operador: TStringField;
    Query1Data_Operacao: TDateField;
    Query1Hora_Operacao: TStringField;
    Query1operador_rec: TStringField;
    Query1data_rec: TDateField;
    Query1hora_rec: TStringField;
    Query1codigo_1: TStringField;
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
    procedure edmesExit(Sender: TObject);
    procedure edanoEnter(Sender: TObject);
    procedure edanoKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure bt1Click(Sender: TObject);
    procedure bt2Click(Sender: TObject);
    procedure cbplanocontaExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBalancete: TFrmBalancete;
  dia,mes:integer;
  saldoAnterior:real;

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

procedure calculosaldoplano;
begin
        saldoAnterior:=0;

        if FrmBalancete.edmes.text='1' then
           saldoAnterior:=dm.PlanoContassaldoant.value
        else if FrmBalancete.edmes.text='2' then
           saldoAnterior:=dm.PlanoContassaldoant.value+
           dm.PlanoContascred1.value-dm.PlanoContasdeb1.value
        else if FrmBalancete.edmes.text='3' then
           saldoAnterior:=dm.PlanoContassaldoant.value+
           dm.PlanoContascred1.value+dm.PlanoContascred2.value-
           dm.PlanoContasdeb1.value-dm.PlanoContasdeb2.value
        else if FrmBalancete.edmes.text='4' then
           saldoAnterior:=dm.PlanoContassaldoant.value+
           dm.PlanoContascred1.value+dm.PlanoContascred2.value+dm.PlanoContascred3.value-
           dm.PlanoContasdeb1.value-dm.PlanoContasdeb2.value-dm.PlanoContasdeb3.value
        else if FrmBalancete.edmes.text='5' then
           saldoAnterior:=dm.PlanoContassaldoant.value+
           dm.PlanoContascred1.value+dm.PlanoContascred2.value+dm.PlanoContascred3.value+
           dm.PlanoContascred4.value-dm.PlanoContasdeb1.value-
           dm.PlanoContasdeb2.value-dm.PlanoContasdeb3.value-dm.PlanoContasdeb4.value
        else if FrmBalancete.edmes.text='6' then
           saldoAnterior:=dm.PlanoContassaldoant.value+
           dm.PlanoContascred1.value+dm.PlanoContascred2.value+dm.PlanoContascred3.value+
           dm.PlanoContascred4.value+dm.PlanoContascred5.value-
           dm.PlanoContasdeb1.value-dm.PlanoContasdeb2.value-dm.PlanoContasdeb3.value-
           dm.PlanoContasdeb4.value-dm.PlanoContasdeb5.value
        else if FrmBalancete.edmes.text='7' then
           saldoAnterior:=dm.PlanoContassaldoant.value+
           dm.PlanoContascred1.value+dm.PlanoContascred2.value+dm.PlanoContascred3.value+
           dm.PlanoContascred4.value+dm.PlanoContascred5.value+dm.PlanoContascred6.value-
           dm.PlanoContasdeb1.value-dm.PlanoContasdeb2.value-
           dm.PlanoContasdeb3.value-dm.PlanoContasdeb4.value-dm.PlanoContasdeb5.value-
           dm.PlanoContasdeb6.value
        else if FrmBalancete.edmes.text='8' then
           saldoAnterior:=dm.PlanoContassaldoant.value+
           dm.PlanoContascred1.value+dm.PlanoContascred2.value+dm.PlanoContascred3.value+
           dm.PlanoContascred4.value+dm.PlanoContascred5.value+dm.PlanoContascred6.value+
           dm.PlanoContascred7.value-dm.PlanoContasdeb1.value-
           dm.PlanoContasdeb2.value-dm.PlanoContasdeb3.value-dm.PlanoContasdeb4.value-
           dm.PlanoContasdeb5.value-dm.PlanoContasdeb6.value-dm.PlanoContasdeb7.value
        else if FrmBalancete.edmes.text='9' then
           saldoAnterior:=dm.PlanoContassaldoant.value+
           dm.PlanoContascred1.value+dm.PlanoContascred2.value+dm.PlanoContascred3.value+
           dm.PlanoContascred4.value+dm.PlanoContascred5.value+dm.PlanoContascred6.value+
           dm.PlanoContascred7.value+dm.PlanoContascred8.value-
           dm.PlanoContasdeb1.value-dm.PlanoContasdeb2.value-dm.PlanoContasdeb3.value-
           dm.PlanoContasdeb4.value-dm.PlanoContasdeb5.value-dm.PlanoContasdeb6.value-
           dm.PlanoContasdeb7.value-dm.PlanoContasdeb8.value
        else if FrmBalancete.edmes.text='10' then
           saldoAnterior:=dm.PlanoContassaldoant.value+
           dm.PlanoContascred1.value+dm.PlanoContascred2.value+dm.PlanoContascred3.value+
           dm.PlanoContascred4.value+dm.PlanoContascred5.value+dm.PlanoContascred6.value+
           dm.PlanoContascred7.value+dm.PlanoContascred8.value+dm.PlanoContascred9.value-
           dm.PlanoContasdeb1.value-dm.PlanoContasdeb2.value-
           dm.PlanoContasdeb3.value-dm.PlanoContasdeb4.value-dm.PlanoContasdeb5.value-
           dm.PlanoContasdeb6.value-dm.PlanoContasdeb7.value-dm.PlanoContasdeb8.value-
           dm.PlanoContasdeb9.value
        else if FrmBalancete.edmes.text='11' then
           saldoAnterior:=dm.PlanoContassaldoant.value+
           dm.PlanoContascred1.value+dm.PlanoContascred2.value+dm.PlanoContascred3.value+
           dm.PlanoContascred4.value+dm.PlanoContascred5.value+dm.PlanoContascred6.value+
           dm.PlanoContascred7.value+dm.PlanoContascred8.value+dm.PlanoContascred9.value+
           dm.PlanoContascred10.value-dm.PlanoContasdeb1.value-
           dm.PlanoContasdeb2.value-dm.PlanoContasdeb3.value-dm.PlanoContasdeb4.value-
           dm.PlanoContasdeb5.value-dm.PlanoContasdeb6.value-dm.PlanoContasdeb7.value-
           dm.PlanoContasdeb8.value-dm.PlanoContasdeb9.value-dm.PlanoContasdeb10.value
        else if FrmBalancete.edmes.text='12' then
           saldoAnterior:=dm.PlanoContassaldoant.value+
           dm.PlanoContascred1.value+dm.PlanoContascred2.value+dm.PlanoContascred3.value+
           dm.PlanoContascred4.value+dm.PlanoContascred5.value+dm.PlanoContascred6.value+
           dm.PlanoContascred7.value+dm.PlanoContascred8.value+dm.PlanoContascred9.value+
           dm.PlanoContascred10.value+dm.PlanoContascred11.value-
           dm.PlanoContasdeb1.value-dm.PlanoContasdeb2.value-dm.PlanoContasdeb3.value-
           dm.PlanoContasdeb4.value-dm.PlanoContasdeb5.value-dm.PlanoContasdeb6.value-
           dm.PlanoContasdeb7.value-dm.PlanoContasdeb8.value-dm.PlanoContasdeb9.value-
           dm.PlanoContasdeb10.value-dm.PlanoContasdeb11.value;

        while not dm.financeiro.Eof do
              begin
                saldoanterior:=saldoanterior+dm.financeirocredito.value-
                dm.financeirodebito.value;
                FrmBalancete.qratualizar.close;
                FrmBalancete.qratualizar.sql.clear;
                FrmBalancete.qratualizar.sql.add('update financeiro set');
                FrmBalancete.qratualizar.sql.add('saldoplanoconta = :saldoanterior');
                FrmBalancete.qratualizar.SQL.Add('where codigo ='+IntToStr(dm.financeirocodigo.Value));
                FrmBalancete.qratualizar.Params[0].Value := saldoanterior;
                FrmBalancete.qratualizar.ExecSQL;

                dm.financeiro.next;
              end;
end;

procedure TFrmBalancete.edmesExit(Sender: TObject);
begin
        if edmes.Text<>'' then
           begin
              if StrToFloat(edmes.text)>12 then
                 edmes.SetFocus
              else
                 edmes.text:=formatfloat('0',StrToInt(edmes.text));
           end;
end;

procedure TFrmBalancete.edanoEnter(Sender: TObject);
begin
        if edano.Text='' then
           begin
                edano.Text:=formatdatetime('YYYY',date);
                edano.SelStart:=0;
                edano.SelLength:=length(edano.Text);
           end;
end;

procedure TFrmBalancete.edanoKeyPress(Sender: TObject; var Key: Char);
begin
        if ((Key in ['0'..'9'] = False) and
           (Word(Key) <> VK_BACK)) then
           Key := #0;
end;

procedure TFrmBalancete.FormKeyPress(Sender: TObject; var Key: Char);
begin
        if key=#13 then
        begin
           SelectNext(activecontrol,True,True);
           key:=#0;
        end;
end;

procedure TFrmBalancete.bt1Click(Sender: TObject);
var
  Excel : Variant;
  Linha:Integer;
begin
      dm.parametros.Close;
      dm.parametros.Open;
      if (edmes.text<>'') and (edano.text<>'') then
         begin
            dia:=DiasPorMes(StrToInt(edano.text), StrToInt(edmes.text));
            if (cbplanoconta.Text<>'') or (edconta.Text<>'') then
               begin
                  dm.PlanoContas.Open;
                  dm.PlanoContas.Locate('chave',cbplanoconta.text,[]);
                  dm.financeiro.Close;
                  dm.financeiro.SQL.Clear;
                  dm.financeiro.SQL.Add('select * from financeiro');
                  dm.financeiro.SQL.Add('where (data between '+chr(39)+
                  edano.text+'/'+edmes.text+'/'+'01'+chr(39)+' and '+chr(39)+
                  edano.text+'/'+edmes.text+'/'+IntToStr(dia)+chr(39)+')');
                  if edconta.Text='' then
                     dm.financeiro.SQL.Add('and (planoconta = '+chr(39)+dm.PlanoContascodigo.value+chr(39)+')')
                  else
                     dm.financeiro.SQL.Add('and (planoconta like '+chr(39)+edconta.Text+'%'+chr(39)+')');
                  dm.financeiro.SQL.Add('order by data,tipo,doc');
                  dm.financeiro.Open;
                  calculosaldoplano;
               end
               else
               begin
                  dm.PlanoContas.Open;
                  dm.PlanoContas.first;
                  while not dm.PlanoContas.Eof do
                        begin
                          dm.financeiro.Close;
                          dm.financeiro.SQL.Clear;
                          dm.financeiro.SQL.Add('select * from financeiro');
                          dm.financeiro.SQL.Add('where (data between '+chr(39)+
                          edano.text+'/'+edmes.text+'/'+'01'+chr(39)+' and '+chr(39)+
                          edano.text+'/'+edmes.text+'/'+IntToStr(dia)+chr(39)+')');
                          dm.financeiro.SQL.Add('and (planoconta = '+chr(39)+dm.PlanoContascodigo.value+chr(39)+')');
                          dm.financeiro.SQL.Add('order by data,tipo,doc');
                          dm.financeiro.Open;
                          calculosaldoplano;
                          dm.PlanoContas.next;
                        end;
               end;

            if edmes.text='1' then
               qrsaldoant.Expression:='saldoant'
            else if edmes.text='2' then
               qrsaldoant.Expression:='saldoant+cred1-deb1'
            else if edmes.text='3' then
               qrsaldoant.Expression:='saldoant+cred1+cred2-deb1-deb2'
            else if edmes.text='4' then
               qrsaldoant.Expression:='saldoant+cred1+cred2+cred3-deb1-deb2-deb3'
            else if edmes.text='5' then
               qrsaldoant.Expression:='saldoant+cred1+cred2+cred3+cred4-deb1-deb2-deb3-deb4'
            else if edmes.text='6' then
               qrsaldoant.Expression:='saldoant+cred1+cred2+cred3+cred4+cred5-deb1-deb2-deb3-deb4-deb5'
            else if edmes.text='7' then
               qrsaldoant.Expression:='saldoant+cred1+cred2+cred3+cred4+cred5+cred6-deb1-deb2-deb3-deb4-deb5-deb6'
            else if edmes.text='8' then
               qrsaldoant.Expression:='saldoant+cred1+cred2+cred3+cred4+cred5+cred6+cred7-deb1-deb2-deb3-deb4-deb5-deb6-deb7'
            else if edmes.text='9' then
               qrsaldoant.Expression:='saldoant+cred1+cred2+cred3+cred4+cred5+cred6+cred7+cred8-deb1-deb2-deb3-deb4-deb5-deb6-deb7-deb8'
            else if edmes.text='10' then
               qrsaldoant.Expression:='saldoant+cred1+cred2+cred3+cred4+cred5+cred6+cred7+cred8+cred9-deb1-deb2-deb3-deb4-deb5-deb6-deb7-deb8-deb9'
            else if edmes.text='11' then
               qrsaldoant.Expression:='saldoant+cred1+cred2+cred3+cred4+cred5+cred6+cred7+cred8+cred9+cred10-deb1-deb2-deb3-deb4-deb5-deb6-deb7-deb8-deb9-deb10'
            else if edmes.text='12' then
               qrsaldoant.Expression:='saldoant+cred1+cred2+cred3+cred4+cred5+cred6+cred7+cred8+cred9+cred10+cred11-deb1-deb2-deb3-deb4-deb5-deb6-deb7-deb8-deb9-deb10-deb11';

            if chExcel.Checked=false then
               begin
                Query1.Close;
                Query1.SQL.Clear;
                Query1.SQL.Add('select * from financeiro F, planocontas P');
                Query1.SQL.Add('where (F.PlanoConta=P.codigo)');
                Query1.SQL.Add('and (F.data between '+chr(39)+
                edano.text+'/'+edmes.text+'/'+'01'+chr(39)+' and '+chr(39)+
                edano.text+'/'+edmes.text+'/'+IntToStr(dia)+chr(39)+')');
                if (cbplanoconta.Text<>'') or (edconta.Text<>'') then
                   begin
                     dm.PlanoContas.Open;
                     dm.PlanoContas.Locate('chave',cbplanoconta.Text,[]);
                     if edconta.Text='' then
                        Query1.SQL.Add('and (F.planoconta = '+chr(39)+dm.PlanoContascodigo.value+chr(39)+')')
                     else
                        Query1.SQL.Add('and (F.planoconta like '+chr(39)+edconta.Text+'%'+chr(39)+')');
                   end;
                Query1.SQL.Add('order by F.PlanoConta,F.data,F.tipo,F.doc');
                Query1.open;
                qrtitulo.Caption:='Balancete - '+
                edmes.text+'/'+edano.text;
                Quickrep1.preview;
               end
               else
               begin
                 Excel := CreateOleObject('Excel.Application');
                 Excel.Visible :=True;
//                 Excel.WorkBooks.Open(dm.parametrosPathSistema.Value+'teste.xls');
                 Excel.WorkBooks.Open('teste.xls');
                 Excel.WorkBooks[1].Sheets[1].Cells[1,1]:='Balancete - '+edmes.text+'/'+edano.text;
                 Excel.WorkBooks[1].Sheets[1].Cells[2,1]:='DATA';
                 Excel.WorkBooks[1].Sheets[1].Cells[2,2]:='HISTÓRICO';
                 Excel.WorkBooks[1].Sheets[1].Cells[2,3]:='DOCUMENTO';
                 Excel.WorkBooks[1].Sheets[1].Cells[2,4]:='C / C';
                 Excel.WorkBooks[1].Sheets[1].Cells[2,5]:='ENTRADA';
                 Excel.WorkBooks[1].Sheets[1].Cells[2,6]:='SAÍDA';
                 Excel.WorkBooks[1].Sheets[1].Cells[2,7]:='PLANO DE CONTAS';
                 Linha:=3;
                 dm.PlanoContas.Close;
                 dm.PlanoContas.SQL.Clear;
                 dm.PlanoContas.SQL.Add('select * from PlanoContas');
                 dm.PlanoContas.SQL.Add('order by codigo');
                 dm.PlanoContas.open;

                 Query1.Close;
                 Query1.SQL.Clear;
                 Query1.SQL.Add('select * from financeiro F, planocontas P');
                 Query1.SQL.Add('where (F.PlanoConta=P.codigo)');
                 Query1.SQL.Add('and (F.data between '+chr(39)+
                 edano.text+'/'+edmes.text+'/'+'01'+chr(39)+' and '+chr(39)+
                 edano.text+'/'+edmes.text+'/'+IntToStr(dia)+chr(39)+')');
                 if (cbplanoconta.Text<>'') or (edconta.Text<>'') then
                    begin
                      dm.PlanoContas.Open;
                      dm.PlanoContas.Locate('chave',cbplanoconta.Text,[]);
                      if edconta.Text='' then
                         Query1.SQL.Add('and (F.planoconta = '+chr(39)+dm.PlanoContascodigo.value+chr(39)+')')
                      else
                         Query1.SQL.Add('and (F.planoconta like '+chr(39)+edconta.Text+'%'+chr(39)+')');
                    end;
                 Query1.SQL.Add('order by F.PlanoConta,F.data,F.tipo,F.doc');
                 Query1.open;
                 while not Query1.Eof do
                       begin
                         dm.PlanoContas.Locate('codigo',Query1PlanoConta.Value,[]);
                         Excel.WorkBooks[1].Sheets[1].Cells[Linha,1]:=Query1data.value;
                         Excel.WorkBooks[1].Sheets[1].Cells[Linha,2]:=Query1historico.Value;
                         Excel.WorkBooks[1].Sheets[1].Cells[Linha,3]:=Query1Doc.Value;
                         Excel.WorkBooks[1].Sheets[1].Cells[Linha,4]:=Query1conta.Value;
                         Excel.WorkBooks[1].Sheets[1].Cells[Linha,5]:=Query1credito.Value;
                         Excel.WorkBooks[1].Sheets[1].Cells[Linha,6]:=Query1debito.Value;
                         Excel.WorkBooks[1].Sheets[1].Cells[Linha,7]:=dm.PlanoContaschave.Value;
                         Query1.Next;
                         linha:=linha+1;
                       end;
                end;
         end;
end;

procedure TFrmBalancete.bt2Click(Sender: TObject);
begin
        close;
end;

procedure TFrmBalancete.cbplanocontaExit(Sender: TObject);
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
end;

procedure TFrmBalancete.FormShow(Sender: TObject);
begin
        dm.PlanoContas.Open;
        dm.PlanoContas.first;
        cbplanoconta.Items.Clear;
        while not dm.PlanoContas.Eof do
              begin
                cbplanoconta.Items.add(dm.PlanoContaschave.value);
                dm.PlanoContas.Next;
              end;
end;

end.

