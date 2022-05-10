unit UnitFrmRelExtMensal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, Grids, DBGrids, QRCtrls, QuickRpt, ExtCtrls;

type
  TFrmRelExtMensal = class(TForm)
    rbcompra: TRadioButton;
    Label2: TLabel;
    Label1: TLabel;
    edano: TEdit;
    edmes: TEdit;
    bt1: TBitBtn;
    btrelatorio: TBitBtn;
    bt2: TBitBtn;
    qratualizar: TZQuery;
    qrMovEstoque: TZQuery;
    qrMovEstoqueqtd: TFloatField;
    qrMovEstoquetotal: TFloatField;
    dsmovestoque: TDataSource;
    qrMovEstoqueproduto: TIntegerField;
    dsprodutos_mes: TDataSource;
    produtos_mes: TZQuery;
    produtos_mesdia01: TFloatField;
    produtos_mesdia02: TFloatField;
    produtos_mesdia03: TFloatField;
    produtos_mesdia04: TFloatField;
    produtos_mesdia05: TFloatField;
    produtos_mesdia06: TFloatField;
    produtos_mesdia07: TFloatField;
    produtos_mesdia08: TFloatField;
    produtos_mesdia09: TFloatField;
    produtos_mesdia10: TFloatField;
    produtos_mesdia11: TFloatField;
    produtos_mesdia12: TFloatField;
    produtos_mesdia13: TFloatField;
    produtos_mesdia14: TFloatField;
    produtos_mesdia15: TFloatField;
    produtos_mesdia16: TFloatField;
    produtos_mesdia17: TFloatField;
    produtos_mesdia18: TFloatField;
    produtos_mesdia19: TFloatField;
    produtos_mesdia20: TFloatField;
    produtos_mesdia21: TFloatField;
    produtos_mesdia22: TFloatField;
    produtos_mesdia23: TFloatField;
    produtos_mesdia24: TFloatField;
    produtos_mesdia25: TFloatField;
    produtos_mesdia26: TFloatField;
    produtos_mesdia27: TFloatField;
    produtos_mesdia28: TFloatField;
    produtos_mesdia29: TFloatField;
    produtos_mesdia30: TFloatField;
    produtos_mesdia31: TFloatField;
    DBGrid2: TDBGrid;
    produtos_mesnomeproduto: TStringField;
    QuickRep2: TQuickRep;
    QRBand3: TQRBand;
    QRDBText9: TQRDBText;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRBand5: TQRBand;
    QRLabel24: TQRLabel;
    qrtituloI: TQRLabel;
    QRLabel26: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData5: TQRSysData;
    QRSysData6: TQRSysData;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRBand6: TQRBand;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRBand7: TQRBand;
    QRLabel38: TQRLabel;
    QRExpr9: TQRExpr;
    ColumnHeaderBand1: TQRBand;
    QRLabel30: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel39: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRExpr10: TQRExpr;
    QRExpr11: TQRExpr;
    QRExpr12: TQRExpr;
    QRExpr13: TQRExpr;
    QRExpr14: TQRExpr;
    QRExpr15: TQRExpr;
    QRExpr16: TQRExpr;
    QRExpr17: TQRExpr;
    QRExpr18: TQRExpr;
    QRExpr19: TQRExpr;
    QRExpr20: TQRExpr;
    QRExpr21: TQRExpr;
    QRExpr22: TQRExpr;
    QRExpr23: TQRExpr;
    QRExpr24: TQRExpr;
    QRExpr25: TQRExpr;
    QRExpr26: TQRExpr;
    QRExpr27: TQRExpr;
    QRExpr28: TQRExpr;
    QRExpr29: TQRExpr;
    QRExpr30: TQRExpr;
    QRExpr31: TQRExpr;
    QRExpr32: TQRExpr;
    rbvenda: TRadioButton;
    QRExpr33: TQRExpr;
    QRLabel40: TQRLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edmesExit(Sender: TObject);
    procedure edmesKeyPress(Sender: TObject; var Key: Char);
    procedure edanoEnter(Sender: TObject);
    procedure bt2Click(Sender: TObject);
    procedure bt1Click(Sender: TObject);
    procedure btrelatorioClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelExtMensal: TFrmRelExtMensal;
  dia:string;
  i:integer;
  e_qtd:double;

implementation

uses Unitdm, UnitFrmCadClientes, UnitFrmCadFornecedores;

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
  FrmRelExtMensal.qratualizar.close;
  FrmRelExtMensal.qratualizar.sql.clear;
  FrmRelExtMensal.qratualizar.sql.add('delete from produtos_mes');
  FrmRelExtMensal.qratualizar.ExecSQL;

  dia:=IntToStr(DiasPorMes(StrToInt(FrmRelExtMensal.edano.text), StrToInt(FrmRelExtMensal.edmes.text)));

  for i:=1 to StrToInt(dia) do
      begin
        FrmRelExtMensal.qrMovEstoque.Close;
        FrmRelExtMensal.qrMovEstoque.SQL.Clear;
        FrmRelExtMensal.qrMovEstoque.SQL.Add('select E.produto,sum(E.qtd) as qtd,sum(E.VlrTotal) as total');
        FrmRelExtMensal.qrMovEstoque.SQL.Add('from movestoque E');
        FrmRelExtMensal.qrMovEstoque.SQL.Add('where (E.data = '+chr(39)+FrmRelExtMensal.edano.text+'/'+FrmRelExtMensal.edmes.text+'/'+IntToStr(i)+chr(39)+')');
        if FrmRelExtMensal.rbcompra.Checked then
           FrmRelExtMensal.qrMovEstoque.sql.add('and (E.TipoMov = '+chr(39)+'EC'+chr(39)+')')
        else if FrmRelExtMensal.rbvenda.Checked then
           FrmRelExtMensal.qrMovEstoque.sql.add('and (E.TipoMov = '+chr(39)+'SV'+chr(39)+')');
        FrmRelExtMensal.qrMovEstoque.SQL.Add('group by produto');
        FrmRelExtMensal.qrMovEstoque.open;
        while not FrmRelExtMensal.qrMovEstoque.Eof do
              begin
                dm.produtos_mes.close;
                dm.produtos_mes.sql.clear;
                dm.produtos_mes.sql.add('select * from produtos_mes');
                dm.produtos_mes.sql.add('where produto = '+IntToStr(FrmRelExtMensal.qrMovEstoqueproduto.Value));
                dm.produtos_mes.open;
                if dm.produtos_mes.RecordCount<1 then
                   begin
                     dm.produtos_mes.Insert;
                     dm.produtos_mesproduto.Value:=FrmRelExtMensal.qrMovEstoqueproduto.Value;
                     dm.produtos_mes.FieldByName('dia'+formatfloat('00',i)).Value:=FrmRelExtMensal.qrMovEstoqueqtd.Value;
                     dm.produtos_mes.Post;
                   end
                   else
                   begin
                     e_qtd:=FrmRelExtMensal.qrMovEstoqueqtd.Value;
                     FrmRelExtMensal.qratualizar.close;
                     FrmRelExtMensal.qratualizar.sql.clear;
                     FrmRelExtMensal.qratualizar.sql.add('update produtos_mes set');
                     FrmRelExtMensal.qratualizar.sql.add('dia'+formatfloat('00',i)+' = :e_qtd');
                     FrmRelExtMensal.qratualizar.sql.add('where produto = '+IntToStr(FrmRelExtMensal.qrMovEstoqueproduto.Value));
                     FrmRelExtMensal.qratualizar.Params[0].Value := e_qtd;
                     FrmRelExtMensal.qratualizar.ExecSQL;
                   end;

                FrmRelExtMensal.qrMovEstoque.Next;
              end;
      end;
  FrmRelExtMensal.produtos_mes.close;
  FrmRelExtMensal.produtos_mes.sql.clear;
  FrmRelExtMensal.produtos_mes.sql.add('select L.nome nomeproduto,P.dia01,P.dia02,P.dia03,P.dia04,P.dia05,P.dia06,P.dia07,');
  FrmRelExtMensal.produtos_mes.sql.add('P.dia08,P.dia09,P.dia10,P.dia11,P.dia12,P.dia13,P.dia14,P.dia15,P.dia16,P.dia17,');
  FrmRelExtMensal.produtos_mes.sql.add('P.dia18,P.dia19,P.dia20,P.dia21,P.dia22,P.dia23,P.dia24,P.dia25,P.dia26,P.dia27,');
  FrmRelExtMensal.produtos_mes.sql.add('P.dia28,P.dia29,P.dia30,P.dia31');
  FrmRelExtMensal.produtos_mes.sql.add('from produtos_mes P, produtos L');
  FrmRelExtMensal.produtos_mes.sql.add('where P.produto=L.codigo');
  FrmRelExtMensal.produtos_mes.sql.add('order by nomeproduto');
  FrmRelExtMensal.produtos_mes.Open;
end;

procedure TFrmRelExtMensal.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
     SelectNext(activecontrol,True,True);
     key:=#0;
  end;
end;

procedure TFrmRelExtMensal.edmesExit(Sender: TObject);
begin
  if edmes.Text<>'' then
     begin
        if StrToFloat(edmes.text)>12 then
           edmes.SetFocus
        else
           edmes.text:=formatfloat('0',StrToInt(edmes.text));
     end;
end;

procedure TFrmRelExtMensal.edmesKeyPress(Sender: TObject; var Key: Char);
begin
  if ((Key in ['0'..'9'] = False) and
     (Word(Key) <> VK_BACK)) then
     Key := #0;
end;

procedure TFrmRelExtMensal.edanoEnter(Sender: TObject);
begin
  if edano.Text='' then
     begin
        edano.Text:=formatdatetime('YYYY',date);
        edano.SelStart:=0;
        edano.SelLength:=length(edano.Text);
     end;
end;

procedure TFrmRelExtMensal.bt2Click(Sender: TObject);
begin
  close;
end;

procedure TFrmRelExtMensal.bt1Click(Sender: TObject);
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

procedure TFrmRelExtMensal.btrelatorioClick(Sender: TObject);
begin
  if FrmRelExtMensal.produtos_mes.RecordCount>0 then
     begin
       dm.parametros.Close;
       dm.parametros.Open;
       if rbcompra.Checked then
          qrtituloI.Caption:='Compras no Mês: '+edmes.Text+'/'+edano.Text
       else if rbvenda.Checked then
          qrtituloI.Caption:='Vendas no Mês: '+edmes.Text+'/'+edano.Text;
       QuickRep2.Preview;
     end;
end;

procedure TFrmRelExtMensal.FormShow(Sender: TObject);
begin
  edmes.Text:=formatdatetime('MM',date);
  edano.Text:=formatdatetime('YYYY',date);
end;

end.



