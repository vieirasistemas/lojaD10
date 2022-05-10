unit UnitFrmMapaDesembolsoImp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, ExtCtrls, quickrpt, Qrctrls,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFrmMapaDesembolsoImp = class(TForm)
    QuickRep1: TQuickRep;
    QRGroup1: TQRGroup;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRLabel7: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr10: TQRExpr;
    PageFooterBand1: TQRBand;
    QRExpr4: TQRExpr;
    SummaryBand1: TQRBand;
    QRLabel9: TQRLabel;
    QRExpr25: TQRExpr;
    QRExpr28: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr15: TQRExpr;
    QRExpr17: TQRExpr;
    TitleBand1: TQRBand;
    qrtitulo: TQRLabel;
    QRLabel19: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel20: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    QRLabel21: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRExpr2: TQRExpr;
    QRLabel22: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    bt1: TBitBtn;
    bt2: TBitBtn;
    DataSource1: TDataSource;
    qratualizar: TZQuery;
    qrconsulta: TZQuery;
    qrconsultavalor: TFloatField;
    qrconsultavencto: TDateField;
    qrconsultapgto: TDateField;
    qrconsultaemissao: TDateField;
    procedure bt2Click(Sender: TObject);
    procedure bt1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMapaDesembolsoImp: TFrmMapaDesembolsoImp;
  atraso,atraso30,atraso3060,
  atraso6090,atraso90:real;

  implementation

uses Unitdm;

{$R *.DFM}

procedure TitulosReceberVencidos;
begin
      FrmMapaDesembolsoImp.qrconsulta.Close;
      FrmMapaDesembolsoImp.qrconsulta.SQL.Clear;
      FrmMapaDesembolsoImp.qrconsulta.SQL.Add('select liquido as valor,vencto,pgto,emissao from docreceber');
      FrmMapaDesembolsoImp.qrconsulta.SQL.Add('where (pgto is null) and (vencto<CURDATE())');
      FrmMapaDesembolsoImp.qrconsulta.SQL.Add('order by vencto');
      FrmMapaDesembolsoImp.qrconsulta.Open;
      atraso30:=0;
      atraso3060:=0;
      atraso6090:=0;
      atraso90:=0;
      while not FrmMapaDesembolsoImp.qrconsulta.Eof do
            begin
              atraso:=0;
              atraso:=Int(date-FrmMapaDesembolsoImp.qrconsultavencto.value);

              if (atraso>0) and (atraso<=30) then
                 atraso30:=atraso30+FrmMapaDesembolsoImp.qrconsultavalor.Value;
              if (atraso>30) and (atraso<=60) then
                 atraso3060:=atraso3060+FrmMapaDesembolsoImp.qrconsultavalor.Value;
              if (atraso>60) and (atraso<=90) then
                 atraso6090:=atraso6090+FrmMapaDesembolsoImp.qrconsultavalor.Value;
              if atraso>90 then
                 atraso90:=atraso90+FrmMapaDesembolsoImp.qrconsultavalor.Value;

              FrmMapaDesembolsoImp.qrconsulta.Next;
            end;

      FrmMapaDesembolsoImp.qratualizar.close;
      FrmMapaDesembolsoImp.qratualizar.sql.clear;
      FrmMapaDesembolsoImp.qratualizar.sql.add('update mapadesembolso set');
      FrmMapaDesembolsoImp.qratualizar.sql.add('vlrreceber = :atraso30');
      FrmMapaDesembolsoImp.qratualizar.SQL.Add('where tipo ='+chr(39)+'B1'+chr(39));
      FrmMapaDesembolsoImp.qratualizar.Params[0].Value := atraso30;
      FrmMapaDesembolsoImp.qratualizar.ExecSQL;

      FrmMapaDesembolsoImp.qratualizar.close;
      FrmMapaDesembolsoImp.qratualizar.sql.clear;
      FrmMapaDesembolsoImp.qratualizar.sql.add('update mapadesembolso set');
      FrmMapaDesembolsoImp.qratualizar.sql.add('vlrreceber = :atraso3060');
      FrmMapaDesembolsoImp.qratualizar.SQL.Add('where tipo ='+chr(39)+'B2'+chr(39));
      FrmMapaDesembolsoImp.qratualizar.Params[0].Value := atraso3060;
      FrmMapaDesembolsoImp.qratualizar.ExecSQL;

      FrmMapaDesembolsoImp.qratualizar.close;
      FrmMapaDesembolsoImp.qratualizar.sql.clear;
      FrmMapaDesembolsoImp.qratualizar.sql.add('update mapadesembolso set');
      FrmMapaDesembolsoImp.qratualizar.sql.add('vlrreceber = :atraso6090');
      FrmMapaDesembolsoImp.qratualizar.SQL.Add('where tipo ='+chr(39)+'B3'+chr(39));
      FrmMapaDesembolsoImp.qratualizar.Params[0].Value := atraso6090;
      FrmMapaDesembolsoImp.qratualizar.ExecSQL;

      FrmMapaDesembolsoImp.qratualizar.close;
      FrmMapaDesembolsoImp.qratualizar.sql.clear;
      FrmMapaDesembolsoImp.qratualizar.sql.add('update mapadesembolso set');
      FrmMapaDesembolsoImp.qratualizar.sql.add('vlrreceber = :atraso90');
      FrmMapaDesembolsoImp.qratualizar.SQL.Add('where tipo ='+chr(39)+'B4'+chr(39));
      FrmMapaDesembolsoImp.qratualizar.Params[0].Value := atraso90;
      FrmMapaDesembolsoImp.qratualizar.ExecSQL;
end;

procedure TitulosVencer;
begin
      FrmMapaDesembolsoImp.qrconsulta.Close;
      FrmMapaDesembolsoImp.qrconsulta.SQL.Clear;
      FrmMapaDesembolsoImp.qrconsulta.SQL.Add('select liquido as valor,vencto,pgto,emissao from docreceber');
      FrmMapaDesembolsoImp.qrconsulta.SQL.Add('where (pgto is null) and (vencto>=CURDATE())');
      FrmMapaDesembolsoImp.qrconsulta.SQL.Add('order by vencto');
      FrmMapaDesembolsoImp.qrconsulta.Open;
      atraso30:=0;
      atraso3060:=0;
      atraso6090:=0;
      atraso90:=0;
      while not FrmMapaDesembolsoImp.qrconsulta.Eof do
            begin
              atraso:=0;
              atraso:=Int(FrmMapaDesembolsoImp.qrconsultavencto.value-date);

              if (atraso>=0) and (atraso<=30) then
                 atraso30:=atraso30+FrmMapaDesembolsoImp.qrconsultavalor.Value;
              if (atraso>30) and (atraso<=60) then
                 atraso3060:=atraso3060+FrmMapaDesembolsoImp.qrconsultavalor.Value;
              if (atraso>60) and (atraso<=90) then
                 atraso6090:=atraso6090+FrmMapaDesembolsoImp.qrconsultavalor.Value;
              if atraso>90 then
                 atraso90:=atraso90+FrmMapaDesembolsoImp.qrconsultavalor.Value;

              FrmMapaDesembolsoImp.qrconsulta.Next;
            end;
      FrmMapaDesembolsoImp.qratualizar.close;
      FrmMapaDesembolsoImp.qratualizar.sql.clear;
      FrmMapaDesembolsoImp.qratualizar.sql.add('update mapadesembolso set');
      FrmMapaDesembolsoImp.qratualizar.sql.add('vlrreceber = :atraso30');
      FrmMapaDesembolsoImp.qratualizar.SQL.Add('where tipo ='+chr(39)+'A1'+chr(39));
      FrmMapaDesembolsoImp.qratualizar.Params[0].Value := atraso30;
      FrmMapaDesembolsoImp.qratualizar.ExecSQL;

      FrmMapaDesembolsoImp.qratualizar.close;
      FrmMapaDesembolsoImp.qratualizar.sql.clear;
      FrmMapaDesembolsoImp.qratualizar.sql.add('update mapadesembolso set');
      FrmMapaDesembolsoImp.qratualizar.sql.add('vlrreceber = :atraso3060');
      FrmMapaDesembolsoImp.qratualizar.SQL.Add('where tipo ='+chr(39)+'A2'+chr(39));
      FrmMapaDesembolsoImp.qratualizar.Params[0].Value := atraso3060;
      FrmMapaDesembolsoImp.qratualizar.ExecSQL;

      FrmMapaDesembolsoImp.qratualizar.close;
      FrmMapaDesembolsoImp.qratualizar.sql.clear;
      FrmMapaDesembolsoImp.qratualizar.sql.add('update mapadesembolso set');
      FrmMapaDesembolsoImp.qratualizar.sql.add('vlrreceber = :atraso6090');
      FrmMapaDesembolsoImp.qratualizar.SQL.Add('where tipo ='+chr(39)+'A3'+chr(39));
      FrmMapaDesembolsoImp.qratualizar.Params[0].Value := atraso6090;
      FrmMapaDesembolsoImp.qratualizar.ExecSQL;

      FrmMapaDesembolsoImp.qratualizar.close;
      FrmMapaDesembolsoImp.qratualizar.sql.clear;
      FrmMapaDesembolsoImp.qratualizar.sql.add('update mapadesembolso set');
      FrmMapaDesembolsoImp.qratualizar.sql.add('vlrreceber = :atraso90');
      FrmMapaDesembolsoImp.qratualizar.SQL.Add('where tipo ='+chr(39)+'A4'+chr(39));
      FrmMapaDesembolsoImp.qratualizar.Params[0].Value := atraso90;
      FrmMapaDesembolsoImp.qratualizar.ExecSQL;
end;

procedure TitulosPagarVencidos;
begin
      FrmMapaDesembolsoImp.qrconsulta.Close;
      FrmMapaDesembolsoImp.qrconsulta.SQL.Clear;
      FrmMapaDesembolsoImp.qrconsulta.SQL.Add('select valor,vencto,pgto,emissao from docPagar');
      FrmMapaDesembolsoImp.qrconsulta.SQL.Add('where (pgto is null) and (vencto<CURDATE())');
      FrmMapaDesembolsoImp.qrconsulta.SQL.Add('order by vencto');
      FrmMapaDesembolsoImp.qrconsulta.Open;
      atraso30:=0;
      atraso3060:=0;
      atraso6090:=0;
      atraso90:=0;
      while not FrmMapaDesembolsoImp.qrconsulta.Eof do
            begin
              atraso:=0;
              atraso:=Int(date-FrmMapaDesembolsoImp.qrconsultavencto.value);

              if (atraso>0) and (atraso<=30) then
                 atraso30:=atraso30+FrmMapaDesembolsoImp.qrconsultavalor.Value;
              if (atraso>30) and (atraso<=60) then
                 atraso3060:=atraso3060+FrmMapaDesembolsoImp.qrconsultavalor.Value;
              if (atraso>60) and (atraso<=90) then
                 atraso6090:=atraso6090+FrmMapaDesembolsoImp.qrconsultavalor.Value;
              if atraso>90 then
                 atraso90:=atraso90+FrmMapaDesembolsoImp.qrconsultavalor.Value;

              FrmMapaDesembolsoImp.qrconsulta.Next;
            end;
      FrmMapaDesembolsoImp.qratualizar.close;
      FrmMapaDesembolsoImp.qratualizar.sql.clear;
      FrmMapaDesembolsoImp.qratualizar.sql.add('update mapadesembolso set');
      FrmMapaDesembolsoImp.qratualizar.sql.add('vlrPagar = :atraso30');
      FrmMapaDesembolsoImp.qratualizar.SQL.Add('where tipo ='+chr(39)+'B1'+chr(39));
      FrmMapaDesembolsoImp.qratualizar.Params[0].Value := atraso30;
      FrmMapaDesembolsoImp.qratualizar.ExecSQL;

      FrmMapaDesembolsoImp.qratualizar.close;
      FrmMapaDesembolsoImp.qratualizar.sql.clear;
      FrmMapaDesembolsoImp.qratualizar.sql.add('update mapadesembolso set');
      FrmMapaDesembolsoImp.qratualizar.sql.add('vlrPagar = :atraso3060');
      FrmMapaDesembolsoImp.qratualizar.SQL.Add('where tipo ='+chr(39)+'B2'+chr(39));
      FrmMapaDesembolsoImp.qratualizar.Params[0].Value := atraso3060;
      FrmMapaDesembolsoImp.qratualizar.ExecSQL;

      FrmMapaDesembolsoImp.qratualizar.close;
      FrmMapaDesembolsoImp.qratualizar.sql.clear;
      FrmMapaDesembolsoImp.qratualizar.sql.add('update mapadesembolso set');
      FrmMapaDesembolsoImp.qratualizar.sql.add('vlrPagar = :atraso6090');
      FrmMapaDesembolsoImp.qratualizar.SQL.Add('where tipo ='+chr(39)+'B3'+chr(39));
      FrmMapaDesembolsoImp.qratualizar.Params[0].Value := atraso6090;
      FrmMapaDesembolsoImp.qratualizar.ExecSQL;

      FrmMapaDesembolsoImp.qratualizar.close;
      FrmMapaDesembolsoImp.qratualizar.sql.clear;
      FrmMapaDesembolsoImp.qratualizar.sql.add('update mapadesembolso set');
      FrmMapaDesembolsoImp.qratualizar.sql.add('vlrPagar = :atraso90');
      FrmMapaDesembolsoImp.qratualizar.SQL.Add('where tipo ='+chr(39)+'B4'+chr(39));
      FrmMapaDesembolsoImp.qratualizar.Params[0].Value := atraso90;
      FrmMapaDesembolsoImp.qratualizar.ExecSQL;
end;

procedure TitulosPagar;
begin
      FrmMapaDesembolsoImp.qrconsulta.Close;
      FrmMapaDesembolsoImp.qrconsulta.SQL.Clear;
      FrmMapaDesembolsoImp.qrconsulta.SQL.Add('select valor,vencto,pgto,emissao from docPagar');
      FrmMapaDesembolsoImp.qrconsulta.SQL.Add('where (pgto is null) and (vencto>=CURDATE())');
      FrmMapaDesembolsoImp.qrconsulta.SQL.Add('order by vencto');
      FrmMapaDesembolsoImp.qrconsulta.Open;
      atraso30:=0;
      atraso3060:=0;
      atraso6090:=0;
      atraso90:=0;
      while not FrmMapaDesembolsoImp.qrconsulta.Eof do
            begin
              atraso:=0;
              atraso:=Int(FrmMapaDesembolsoImp.qrconsultavencto.value-date);

              if (atraso>=0) and (atraso<=30) then
                 atraso30:=atraso30+FrmMapaDesembolsoImp.qrconsultavalor.Value;
              if (atraso>30) and (atraso<=60) then
                 atraso3060:=atraso3060+FrmMapaDesembolsoImp.qrconsultavalor.Value;
              if (atraso>60) and (atraso<=90) then
                 atraso6090:=atraso6090+FrmMapaDesembolsoImp.qrconsultavalor.Value;
              if atraso>90 then
                 atraso90:=atraso90+FrmMapaDesembolsoImp.qrconsultavalor.Value;

              FrmMapaDesembolsoImp.qrconsulta.Next;
            end;
      FrmMapaDesembolsoImp.qratualizar.close;
      FrmMapaDesembolsoImp.qratualizar.sql.clear;
      FrmMapaDesembolsoImp.qratualizar.sql.add('update mapadesembolso set');
      FrmMapaDesembolsoImp.qratualizar.sql.add('vlrPagar = :atraso30');
      FrmMapaDesembolsoImp.qratualizar.SQL.Add('where tipo ='+chr(39)+'A1'+chr(39));
      FrmMapaDesembolsoImp.qratualizar.Params[0].Value := atraso30;
      FrmMapaDesembolsoImp.qratualizar.ExecSQL;

      FrmMapaDesembolsoImp.qratualizar.close;
      FrmMapaDesembolsoImp.qratualizar.sql.clear;
      FrmMapaDesembolsoImp.qratualizar.sql.add('update mapadesembolso set');
      FrmMapaDesembolsoImp.qratualizar.sql.add('vlrPagar = :atraso3060');
      FrmMapaDesembolsoImp.qratualizar.SQL.Add('where tipo ='+chr(39)+'A2'+chr(39));
      FrmMapaDesembolsoImp.qratualizar.Params[0].Value := atraso3060;
      FrmMapaDesembolsoImp.qratualizar.ExecSQL;

      FrmMapaDesembolsoImp.qratualizar.close;
      FrmMapaDesembolsoImp.qratualizar.sql.clear;
      FrmMapaDesembolsoImp.qratualizar.sql.add('update mapadesembolso set');
      FrmMapaDesembolsoImp.qratualizar.sql.add('vlrPagar = :atraso6090');
      FrmMapaDesembolsoImp.qratualizar.SQL.Add('where tipo ='+chr(39)+'A3'+chr(39));
      FrmMapaDesembolsoImp.qratualizar.Params[0].Value := atraso6090;
      FrmMapaDesembolsoImp.qratualizar.ExecSQL;

      FrmMapaDesembolsoImp.qratualizar.close;
      FrmMapaDesembolsoImp.qratualizar.sql.clear;
      FrmMapaDesembolsoImp.qratualizar.sql.add('update mapadesembolso set');
      FrmMapaDesembolsoImp.qratualizar.sql.add('vlrPagar = :atraso90');
      FrmMapaDesembolsoImp.qratualizar.SQL.Add('where tipo ='+chr(39)+'A4'+chr(39));
      FrmMapaDesembolsoImp.qratualizar.Params[0].Value := atraso90;
      FrmMapaDesembolsoImp.qratualizar.ExecSQL;
end;

procedure TFrmMapaDesembolsoImp.bt2Click(Sender: TObject);
begin
      close;  
end;

procedure TFrmMapaDesembolsoImp.bt1Click(Sender: TObject);
begin
      qratualizar.Close;
      qratualizar.SQL.Clear;
      qratualizar.SQL.Add('delete from mapadesembolso');
      qratualizar.ExecSQL;

      dm.mapadesembolso.Close;
      dm.mapadesembolso.SQL.Clear;
      dm.mapadesembolso.SQL.Add('select * from mapadesembolso');
      dm.mapadesembolso.Open;

      dm.mapadesembolso.Insert;
      dm.mapadesembolsotexto.value:='Até 30 Dias';
      dm.mapadesembolsoTipoI.value:='A';
      dm.mapadesembolsoTipo.value:='A1';
      dm.mapadesembolso.post;
      dm.mapadesembolso.Insert;
      dm.mapadesembolsotexto.value:='de 31 à 60 Dias';
      dm.mapadesembolsoTipoI.value:='A';
      dm.mapadesembolsoTipo.value:='A2';
      dm.mapadesembolso.post;
      dm.mapadesembolso.Insert;
      dm.mapadesembolsotexto.value:='de 61 à 90 Dias';
      dm.mapadesembolsoTipoI.value:='A';
      dm.mapadesembolsoTipo.value:='A3';
      dm.mapadesembolso.post;
      dm.mapadesembolso.Insert;
      dm.mapadesembolsotexto.value:='Maior de 90 Dias';
      dm.mapadesembolsoTipoI.value:='A';
      dm.mapadesembolsoTipo.value:='A4';
      dm.mapadesembolso.post;

      dm.mapadesembolso.Insert;
      dm.mapadesembolsotexto.value:='Atraso Até 30 Dias';
      dm.mapadesembolsoTipoI.value:='B';
      dm.mapadesembolsoTipo.value:='B1';
      dm.mapadesembolso.post;
      dm.mapadesembolso.Insert;
      dm.mapadesembolsotexto.value:='de 31 à 60 Dias';
      dm.mapadesembolsoTipoI.value:='B';
      dm.mapadesembolsoTipo.value:='B2';
      dm.mapadesembolso.post;
      dm.mapadesembolso.Insert;
      dm.mapadesembolsotexto.value:='de 61 à 90 Dias';
      dm.mapadesembolsoTipoI.value:='B';
      dm.mapadesembolsoTipo.value:='B3';
      dm.mapadesembolso.post;
      dm.mapadesembolso.Insert;
      dm.mapadesembolsotexto.value:='Maior de 90 Dias';
      dm.mapadesembolsoTipoI.value:='B';
      dm.mapadesembolsoTipo.value:='B4';
      dm.mapadesembolso.post;

      TitulosVencer;
      TitulosReceberVencidos;
      TitulosPagar;
      TitulosPagarVencidos;

      dm.mapadesembolso.Close;
      dm.mapadesembolso.Open;
      dm.parametros.Close;
      dm.parametros.Open;
      qrtitulo.Caption:='Mapa de Desembolso';
      Quickrep1.preview;
end;

end.
