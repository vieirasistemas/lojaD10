unit UnitFrmResumoGerenciais;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, EditAlinhado, Mask, Buttons, ExtCtrls, DB, DBTables,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFrmResumoGerenciais = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    lbvencidasreceb: TLabel;
    lbvencendoreceb: TLabel;
    lbvencerreceb: TLabel;
    lbvencidaspagar: TLabel;
    lbvencendopagar: TLabel;
    lbvencerpagar: TLabel;
    lbvencidaspos: TLabel;
    lbvencendopos: TLabel;
    lbvencerpos: TLabel;
    Panel2: TPanel;
    lbtotalrec: TLabel;
    lbtotalpagar: TLabel;
    lbtotalpos: TLabel;
    Label11: TLabel;
    Label8: TLabel;
    lbvencidasrecebP: TLabel;
    lbvencendorecebP: TLabel;
    lbvencerrecebP: TLabel;
    lbtotalrecP: TLabel;
    Label9: TLabel;
    lbvencidaspagarP: TLabel;
    lbvencendopagarP: TLabel;
    lbvencerpagarP: TLabel;
    Label10: TLabel;
    lb30rec: TLabel;
    lb60rec: TLabel;
    lb90rec: TLabel;
    lb120rec: TLabel;
    lb150rec: TLabel;
    lb180rec: TLabel;
    lb210rec: TLabel;
    lb240rec: TLabel;
    lb270rec: TLabel;
    lb300rec: TLabel;
    lb330rec: TLabel;
    lb331rec: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    DataSource1: TDataSource;
    lb30pag: TLabel;
    lb60pag: TLabel;
    lb90pag: TLabel;
    lb120pag: TLabel;
    lb150pag: TLabel;
    lb180pag: TLabel;
    lb210pag: TLabel;
    lb240pag: TLabel;
    lb270pag: TLabel;
    lb300pag: TLabel;
    lb330pag: TLabel;
    lb331pag: TLabel;
    Panel3: TPanel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    lbcaixa: TLabel;
    lbbancos: TLabel;
    lbdisponivel: TLabel;
    Panel5: TPanel;
    Label22: TLabel;
    qratualizar: TZQuery;
    qrconsulta: TZQuery;
    qrconsultavalor: TFloatField;
    qrconsultavencto: TDateField;
    qrconsultapgto: TDateField;
    qrconsultaemissao: TDateField;
    qrtotal: TZQuery;
    qrtotalCredito: TFloatField;
    qrtotalDebito: TFloatField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure bt2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmResumoGerenciais: TFrmResumoGerenciais;
  vencidasreceb,vencendoreceb,vencerreceb,totalrec,
  vencidaspagar,vencendopagar,vencerpagar,totalpagar,
  atraso30,atraso3060,atraso6090,atraso90120,atraso120150,
  atraso150180,atraso180210,atraso210240,atraso240270,
  atraso270300,atraso300330,atraso330,atraso,
  saldobanco,saldocx,saldoAnterior: real;
  x:boolean;

implementation

uses Unitdm;

{$R *.dfm}

procedure vencidasrec;
begin
        vencidasreceb:=0;
        dm.TotalDocReceber.Close;
        dm.TotalDocReceber.SQL.Clear;
        dm.TotalDocReceber.SQL.Add('select sum(liquido) as total from DocReceber');
        dm.TotalDocReceber.SQL.Add('where (pgto is null) and (vencto<CURDATE())');
        dm.TotalDocReceber.open;
        if dm.TotalDocRecebertotal.Value>0 then
           begin
             vencidasreceb:=dm.TotalDocReceber['total'];
             FrmResumoGerenciais.lbvencidasreceb.Caption:=formatfloat('#,##0.00',vencidasreceb);
           end
           else
             FrmResumoGerenciais.lbvencidasreceb.Caption:='0.00';
end;

procedure avencerrec;
begin
        vencerreceb:=0;
        dm.TotalDocReceber.Close;
        dm.TotalDocReceber.SQL.Clear;
        dm.TotalDocReceber.SQL.Add('select sum(liquido) as total from DocReceber');
        dm.TotalDocReceber.SQL.Add('where (pgto is null) and (vencto>CURDATE())');
        dm.TotalDocReceber.Open;
        if dm.TotalDocRecebertotal.Value>0 then
           begin
             vencerreceb:=dm.TotalDocReceber['total'];
             FrmResumoGerenciais.lbvencerreceb.Caption:=formatfloat('#,##0.00',vencerreceb);
           end
           else
             FrmResumoGerenciais.lbvencerreceb.Caption:='0.00';
end;

procedure vencendorec;
begin
        vencendoreceb:=0;
        dm.TotalDocReceber.Close;
        dm.TotalDocReceber.SQL.Clear;
        dm.TotalDocReceber.SQL.Add('select sum(liquido) as total from DocReceber');
        dm.TotalDocReceber.SQL.Add('where (pgto is null) and (vencto=CURDATE())');
        dm.TotalDocReceber.Open;
        if dm.TotalDocRecebertotal.Value>0 then
           begin
             vencendoreceb:=dm.TotalDocReceber['total'];
             FrmResumoGerenciais.lbvencendoreceb.Caption:=formatfloat('#,##0.00',vencendoreceb);
           end
           else
             FrmResumoGerenciais.lbvencendoreceb.Caption:='0.00';
end;

procedure vencidaspag;
begin
      vencidaspagar:=0;
      dm.TotalDocPagar.Close;
      dm.TotalDocPagar.SQL.Clear;
      dm.TotalDocPagar.SQL.Add('select sum(valor) as total from DocPagar');
      dm.TotalDocPagar.SQL.Add('where (pgto is null) and (vencto<CURDATE())');
      dm.TotalDocPagar.open;
      if dm.TotalDocPagartotal.Value>0 then
         begin
           vencidaspagar:=dm.TotalDocPagar['total'];
           FrmResumoGerenciais.lbvencidaspagar.Caption:=formatfloat('#,##0.00',vencidaspagar);
         end
         else
           FrmResumoGerenciais.lbvencidaspagar.Caption:='0.00';
end;

procedure vencendopag;
begin
      vencendopagar:=0;
      dm.TotalDocPagar.Close;
      dm.TotalDocPagar.SQL.Clear;
      dm.TotalDocPagar.SQL.Add('select sum(valor) as total from DocPagar');
      dm.TotalDocPagar.SQL.Add('where (pgto is null) and (vencto=CURDATE())');
      dm.TotalDocPagar.open;
      if dm.TotalDocPagartotal.Value>0 then
         begin
           vencendopagar:=dm.TotalDocPagar['total'];
           FrmResumoGerenciais.lbvencendopagar.Caption:=formatfloat('#,##0.00',vencendopagar);
         end
         else
           FrmResumoGerenciais.lbvencendopagar.Caption:='0.00';
end;

procedure vencerpag;
begin
      vencerpagar:=0;
      dm.TotalDocPagar.Close;
      dm.TotalDocPagar.SQL.Clear;
      dm.TotalDocPagar.SQL.Add('select sum(valor) as total from DocPagar');
      dm.TotalDocPagar.SQL.Add('where (pgto is null) and (vencto>CURDATE())');
      dm.TotalDocPagar.open;
      if dm.TotalDocPagartotal.Value>0 then
         begin
           vencerpagar:=dm.TotalDocPagar['total'];
           FrmResumoGerenciais.lbvencerpagar.Caption:=formatfloat('#,##0.00',vencerpagar);
         end
         else
           FrmResumoGerenciais.lbvencerpagar.Caption:='0.00';
end;

procedure TFrmResumoGerenciais.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
      if Key = CHR(13) Then
         Begin
            perform(WM_NextDlgCtl,0,0);
            Key := CHR(0);
         End;
end;

procedure TFrmResumoGerenciais.bt2Click(Sender: TObject);
begin
      close;  
end;

procedure ReceberVencidos;
begin
      FrmResumoGerenciais.qrconsulta.Close;
      FrmResumoGerenciais.qrconsulta.SQL.Clear;
      FrmResumoGerenciais.qrconsulta.SQL.Add('select liquido as valor,vencto,pgto,emissao from docreceber');
      FrmResumoGerenciais.qrconsulta.SQL.Add('where (pgto is null) and (vencto<CURDATE())');
      FrmResumoGerenciais.qrconsulta.SQL.Add('order by vencto');
      FrmResumoGerenciais.qrconsulta.Open;
end;

procedure PagarVencidos;
begin
      FrmResumoGerenciais.qrconsulta.Close;
      FrmResumoGerenciais.qrconsulta.SQL.Clear;
      FrmResumoGerenciais.qrconsulta.SQL.Add('select valor as valor,vencto,pgto,emissao from docpagar');
      FrmResumoGerenciais.qrconsulta.SQL.Add('where (pgto is null) and (vencto<CURDATE())');
      FrmResumoGerenciais.qrconsulta.SQL.Add('order by vencto');
      FrmResumoGerenciais.qrconsulta.Open;
end;

procedure TitulosReceberVencidos;
begin
      if x=false then
         ReceberVencidos
      else
         PagarVencidos;
      atraso30:=0;
      atraso3060:=0;
      atraso6090:=0;
      atraso90120:=0;
      atraso120150:=0;
      atraso150180:=0;
      atraso180210:=0;
      atraso210240:=0;
      atraso240270:=0;
      atraso270300:=0;
      atraso300330:=0;
      atraso330:=0;
      while not FrmResumoGerenciais.qrconsulta.Eof do
            begin
              atraso:=0;
              atraso:=Int(date-FrmResumoGerenciais.qrconsultavencto.value);

              if (atraso>0) and (atraso<=30) then
                 atraso30:=atraso30+FrmResumoGerenciais.qrconsultavalor.Value
              else if (atraso>30) and (atraso<=60) then
                 atraso3060:=atraso3060+FrmResumoGerenciais.qrconsultavalor.Value
              else if (atraso>60) and (atraso<=90) then
                 atraso6090:=atraso6090+FrmResumoGerenciais.qrconsultavalor.Value
              else if (atraso>90) and (atraso<=120) then
                 atraso90120:=atraso90120+FrmResumoGerenciais.qrconsultavalor.Value
              else if (atraso>120) and (atraso<=150) then
                 atraso120150:=atraso120150+FrmResumoGerenciais.qrconsultavalor.Value
              else if (atraso>150) and (atraso<=180) then
                 atraso150180:=atraso150180+FrmResumoGerenciais.qrconsultavalor.Value
              else if (atraso>180) and (atraso<=210) then
                 atraso180210:=atraso180210+FrmResumoGerenciais.qrconsultavalor.Value
              else if (atraso>210) and (atraso<=240) then
                 atraso210240:=atraso210240+FrmResumoGerenciais.qrconsultavalor.Value
              else if (atraso>240) and (atraso<=270) then
                 atraso240270:=atraso240270+FrmResumoGerenciais.qrconsultavalor.Value
              else if (atraso>270) and (atraso<=300) then
                 atraso270300:=atraso270300+FrmResumoGerenciais.qrconsultavalor.Value
              else if (atraso>300) and (atraso<=330) then
                 atraso300330:=atraso300330+FrmResumoGerenciais.qrconsultavalor.Value
              else if atraso>330 then
                 atraso330:=atraso330+FrmResumoGerenciais.qrconsultavalor.Value;

              FrmResumoGerenciais.qrconsulta.Next;
            end;

      FrmResumoGerenciais.qratualizar.close;
      FrmResumoGerenciais.qratualizar.sql.clear;
      FrmResumoGerenciais.qratualizar.sql.add('update mapadesembolso set');
      FrmResumoGerenciais.qratualizar.sql.add('vlrreceber = :atraso30');
      FrmResumoGerenciais.qratualizar.SQL.Add('where tipo ='+chr(39)+'A1'+chr(39));
      FrmResumoGerenciais.qratualizar.Params[0].Value := atraso30;
      FrmResumoGerenciais.qratualizar.ExecSQL;

      FrmResumoGerenciais.qratualizar.close;
      FrmResumoGerenciais.qratualizar.sql.clear;
      FrmResumoGerenciais.qratualizar.sql.add('update mapadesembolso set');
      FrmResumoGerenciais.qratualizar.sql.add('vlrreceber = :atraso3060');
      FrmResumoGerenciais.qratualizar.SQL.Add('where tipo ='+chr(39)+'A2'+chr(39));
      FrmResumoGerenciais.qratualizar.Params[0].Value := atraso3060;
      FrmResumoGerenciais.qratualizar.ExecSQL;

      FrmResumoGerenciais.qratualizar.close;
      FrmResumoGerenciais.qratualizar.sql.clear;
      FrmResumoGerenciais.qratualizar.sql.add('update mapadesembolso set');
      FrmResumoGerenciais.qratualizar.sql.add('vlrreceber = :atraso6090');
      FrmResumoGerenciais.qratualizar.SQL.Add('where tipo ='+chr(39)+'A3'+chr(39));
      FrmResumoGerenciais.qratualizar.Params[0].Value := atraso6090;
      FrmResumoGerenciais.qratualizar.ExecSQL;

      FrmResumoGerenciais.qratualizar.close;
      FrmResumoGerenciais.qratualizar.sql.clear;
      FrmResumoGerenciais.qratualizar.sql.add('update mapadesembolso set');
      FrmResumoGerenciais.qratualizar.sql.add('vlrreceber = :atraso90120');
      FrmResumoGerenciais.qratualizar.SQL.Add('where tipo ='+chr(39)+'A4'+chr(39));
      FrmResumoGerenciais.qratualizar.Params[0].Value := atraso90120;
      FrmResumoGerenciais.qratualizar.ExecSQL;

      FrmResumoGerenciais.qratualizar.close;
      FrmResumoGerenciais.qratualizar.sql.clear;
      FrmResumoGerenciais.qratualizar.sql.add('update mapadesembolso set');
      FrmResumoGerenciais.qratualizar.sql.add('vlrreceber = :atraso120150');
      FrmResumoGerenciais.qratualizar.SQL.Add('where tipo ='+chr(39)+'A5'+chr(39));
      FrmResumoGerenciais.qratualizar.Params[0].Value := atraso120150;
      FrmResumoGerenciais.qratualizar.ExecSQL;

      FrmResumoGerenciais.qratualizar.close;
      FrmResumoGerenciais.qratualizar.sql.clear;
      FrmResumoGerenciais.qratualizar.sql.add('update mapadesembolso set');
      FrmResumoGerenciais.qratualizar.sql.add('vlrreceber = :atraso150180');
      FrmResumoGerenciais.qratualizar.SQL.Add('where tipo ='+chr(39)+'A6'+chr(39));
      FrmResumoGerenciais.qratualizar.Params[0].Value := atraso150180;
      FrmResumoGerenciais.qratualizar.ExecSQL;

      FrmResumoGerenciais.qratualizar.close;
      FrmResumoGerenciais.qratualizar.sql.clear;
      FrmResumoGerenciais.qratualizar.sql.add('update mapadesembolso set');
      FrmResumoGerenciais.qratualizar.sql.add('vlrreceber = :atraso180210');
      FrmResumoGerenciais.qratualizar.SQL.Add('where tipo ='+chr(39)+'A7'+chr(39));
      FrmResumoGerenciais.qratualizar.Params[0].Value := atraso180210;
      FrmResumoGerenciais.qratualizar.ExecSQL;

      FrmResumoGerenciais.qratualizar.close;
      FrmResumoGerenciais.qratualizar.sql.clear;
      FrmResumoGerenciais.qratualizar.sql.add('update mapadesembolso set');
      FrmResumoGerenciais.qratualizar.sql.add('vlrreceber = :atraso210240');
      FrmResumoGerenciais.qratualizar.SQL.Add('where tipo ='+chr(39)+'A8'+chr(39));
      FrmResumoGerenciais.qratualizar.Params[0].Value := atraso210240;
      FrmResumoGerenciais.qratualizar.ExecSQL;

      FrmResumoGerenciais.qratualizar.close;
      FrmResumoGerenciais.qratualizar.sql.clear;
      FrmResumoGerenciais.qratualizar.sql.add('update mapadesembolso set');
      FrmResumoGerenciais.qratualizar.sql.add('vlrreceber = :atraso240270');
      FrmResumoGerenciais.qratualizar.SQL.Add('where tipo ='+chr(39)+'A9'+chr(39));
      FrmResumoGerenciais.qratualizar.Params[0].Value := atraso240270;
      FrmResumoGerenciais.qratualizar.ExecSQL;

      FrmResumoGerenciais.qratualizar.close;
      FrmResumoGerenciais.qratualizar.sql.clear;
      FrmResumoGerenciais.qratualizar.sql.add('update mapadesembolso set');
      FrmResumoGerenciais.qratualizar.sql.add('vlrreceber = :atraso270300');
      FrmResumoGerenciais.qratualizar.SQL.Add('where tipo ='+chr(39)+'A10'+chr(39));
      FrmResumoGerenciais.qratualizar.Params[0].Value := atraso270300;
      FrmResumoGerenciais.qratualizar.ExecSQL;

      FrmResumoGerenciais.qratualizar.close;
      FrmResumoGerenciais.qratualizar.sql.clear;
      FrmResumoGerenciais.qratualizar.sql.add('update mapadesembolso set');
      FrmResumoGerenciais.qratualizar.sql.add('vlrreceber = :atraso300330');
      FrmResumoGerenciais.qratualizar.SQL.Add('where tipo ='+chr(39)+'A11'+chr(39));
      FrmResumoGerenciais.qratualizar.Params[0].Value := atraso300330;
      FrmResumoGerenciais.qratualizar.ExecSQL;

      FrmResumoGerenciais.qratualizar.close;
      FrmResumoGerenciais.qratualizar.sql.clear;
      FrmResumoGerenciais.qratualizar.sql.add('update mapadesembolso set');
      FrmResumoGerenciais.qratualizar.sql.add('vlrreceber = :atraso330');
      FrmResumoGerenciais.qratualizar.SQL.Add('where tipo ='+chr(39)+'A12'+chr(39));
      FrmResumoGerenciais.qratualizar.Params[0].Value := atraso330;
      FrmResumoGerenciais.qratualizar.ExecSQL;
end;

procedure calculosaldocc;
begin
  dm.contascorrente_saldo.Close;
  dm.contascorrente_saldo.SQL.Clear;
  dm.contascorrente_saldo.SQL.Add('select * from contascorrente_saldo');
  dm.contascorrente_saldo.SQL.Add('where (conta ='+chr(39)+dm.ContasCorrenteconta.Value+chr(39)+')');
  dm.contascorrente_saldo.SQL.Add('and (ano ='+chr(39)+formatdatetime('yyyy',DATE)+chr(39)+')');
  dm.contascorrente_saldo.Open;

  saldoAnterior:=0;

  if copy(DateToStr(date),4,2)='01' then
     saldoAnterior:=dm.contascorrente_saldosaldoant.value
  else if copy(DateToStr(date),4,2)='02' then
     saldoAnterior:=dm.contascorrente_saldosaldoant.value+
     dm.contascorrente_saldocred1.value-dm.contascorrente_saldodeb1.value
  else if copy(DateToStr(date),4,2)='03' then
     saldoAnterior:=dm.contascorrente_saldosaldoant.value+
     dm.contascorrente_saldocred1.value+dm.contascorrente_saldocred2.value-
     dm.contascorrente_saldodeb1.value-dm.contascorrente_saldodeb2.value
  else if copy(DateToStr(date),4,2)='04' then
     saldoAnterior:=dm.contascorrente_saldosaldoant.value+
     dm.contascorrente_saldocred1.value+dm.contascorrente_saldocred2.value+dm.contascorrente_saldocred3.value-
     dm.contascorrente_saldodeb1.value-dm.contascorrente_saldodeb2.value-dm.contascorrente_saldodeb3.value
  else if copy(DateToStr(date),4,2)='05' then
     saldoAnterior:=dm.contascorrente_saldosaldoant.value+
     dm.contascorrente_saldocred1.value+dm.contascorrente_saldocred2.value+dm.contascorrente_saldocred3.value+
     dm.contascorrente_saldocred4.value-dm.contascorrente_saldodeb1.value-
     dm.contascorrente_saldodeb2.value-dm.contascorrente_saldodeb3.value-dm.contascorrente_saldodeb4.value
  else if copy(DateToStr(date),4,2)='06' then
     saldoAnterior:=dm.contascorrente_saldosaldoant.value+
     dm.contascorrente_saldocred1.value+dm.contascorrente_saldocred2.value+dm.contascorrente_saldocred3.value+
     dm.contascorrente_saldocred4.value+dm.contascorrente_saldocred5.value-
     dm.contascorrente_saldodeb1.value-dm.contascorrente_saldodeb2.value-dm.contascorrente_saldodeb3.value-
     dm.contascorrente_saldodeb4.value-dm.contascorrente_saldodeb5.value
  else if copy(DateToStr(date),4,2)='07' then
     saldoAnterior:=dm.contascorrente_saldosaldoant.value+
     dm.contascorrente_saldocred1.value+dm.contascorrente_saldocred2.value+dm.contascorrente_saldocred3.value+
     dm.contascorrente_saldocred4.value+dm.contascorrente_saldocred5.value+dm.contascorrente_saldocred6.value-
     dm.contascorrente_saldodeb1.value-dm.contascorrente_saldodeb2.value-
     dm.contascorrente_saldodeb3.value-dm.contascorrente_saldodeb4.value-dm.contascorrente_saldodeb5.value-
     dm.contascorrente_saldodeb6.value
  else if copy(DateToStr(date),4,2)='08' then
     saldoAnterior:=dm.contascorrente_saldosaldoant.value+
     dm.contascorrente_saldocred1.value+dm.contascorrente_saldocred2.value+dm.contascorrente_saldocred3.value+
     dm.contascorrente_saldocred4.value+dm.contascorrente_saldocred5.value+dm.contascorrente_saldocred6.value+
     dm.contascorrente_saldocred7.value-dm.contascorrente_saldodeb1.value-
     dm.contascorrente_saldodeb2.value-dm.contascorrente_saldodeb3.value-dm.contascorrente_saldodeb4.value-
     dm.contascorrente_saldodeb5.value-dm.contascorrente_saldodeb6.value-dm.contascorrente_saldodeb7.value
  else if copy(DateToStr(date),4,2)='09' then
     saldoAnterior:=dm.contascorrente_saldosaldoant.value+
     dm.contascorrente_saldocred1.value+dm.contascorrente_saldocred2.value+dm.contascorrente_saldocred3.value+
     dm.contascorrente_saldocred4.value+dm.contascorrente_saldocred5.value+dm.contascorrente_saldocred6.value+
     dm.contascorrente_saldocred7.value+dm.contascorrente_saldocred8.value-
     dm.contascorrente_saldodeb1.value-dm.contascorrente_saldodeb2.value-dm.contascorrente_saldodeb3.value-
     dm.contascorrente_saldodeb4.value-dm.contascorrente_saldodeb5.value-dm.contascorrente_saldodeb6.value-
     dm.contascorrente_saldodeb7.value-dm.contascorrente_saldodeb8.value
  else if copy(DateToStr(date),4,2)='10' then
     saldoAnterior:=dm.contascorrente_saldosaldoant.value+
     dm.contascorrente_saldocred1.value+dm.contascorrente_saldocred2.value+dm.contascorrente_saldocred3.value+
     dm.contascorrente_saldocred4.value+dm.contascorrente_saldocred5.value+dm.contascorrente_saldocred6.value+
     dm.contascorrente_saldocred7.value+dm.contascorrente_saldocred8.value+dm.contascorrente_saldocred9.value-
     dm.contascorrente_saldodeb1.value-dm.contascorrente_saldodeb2.value-
     dm.contascorrente_saldodeb3.value-dm.contascorrente_saldodeb4.value-dm.contascorrente_saldodeb5.value-
     dm.contascorrente_saldodeb6.value-dm.contascorrente_saldodeb7.value-dm.contascorrente_saldodeb8.value-
     dm.contascorrente_saldodeb9.value
  else if copy(DateToStr(date),4,2)='11' then
     saldoAnterior:=dm.contascorrente_saldosaldoant.value+
     dm.contascorrente_saldocred1.value+dm.contascorrente_saldocred2.value+dm.contascorrente_saldocred3.value+
     dm.contascorrente_saldocred4.value+dm.contascorrente_saldocred5.value+dm.contascorrente_saldocred6.value+
     dm.contascorrente_saldocred7.value+dm.contascorrente_saldocred8.value+dm.contascorrente_saldocred9.value+
     dm.contascorrente_saldocred10.value-dm.contascorrente_saldodeb1.value-
     dm.contascorrente_saldodeb2.value-dm.contascorrente_saldodeb3.value-dm.contascorrente_saldodeb4.value-
     dm.contascorrente_saldodeb5.value-dm.contascorrente_saldodeb6.value-dm.contascorrente_saldodeb7.value-
     dm.contascorrente_saldodeb8.value-dm.contascorrente_saldodeb9.value-dm.contascorrente_saldodeb10.value
  else if copy(DateToStr(date),4,2)='12' then
     saldoAnterior:=dm.contascorrente_saldosaldoant.value+
     dm.contascorrente_saldocred1.value+dm.contascorrente_saldocred2.value+dm.contascorrente_saldocred3.value+
     dm.contascorrente_saldocred4.value+dm.contascorrente_saldocred5.value+dm.contascorrente_saldocred6.value+
     dm.contascorrente_saldocred7.value+dm.contascorrente_saldocred8.value+dm.contascorrente_saldocred9.value+
     dm.contascorrente_saldocred10.value+dm.contascorrente_saldocred11.value-
     dm.contascorrente_saldodeb1.value-dm.contascorrente_saldodeb2.value-dm.contascorrente_saldodeb3.value-
     dm.contascorrente_saldodeb4.value-dm.contascorrente_saldodeb5.value-dm.contascorrente_saldodeb6.value-
     dm.contascorrente_saldodeb7.value-dm.contascorrente_saldodeb8.value-dm.contascorrente_saldodeb9.value-
     dm.contascorrente_saldodeb10.value-dm.contascorrente_saldodeb11.value;

{        if copy(DateToStr(date),1,2)<>'01' then
     begin
       dia_1:=IntToStr(StrToInt(copy(DateToStr(date),1,2))-1);
       FrmResumoGerenciais.qrtotal.Close;
       FrmResumoGerenciais.qrtotal.SQL.Clear;
       FrmResumoGerenciais.qrtotal.SQL.Add('select sum(credito) as Credito, sum(debito) as Debito from financeiro');
       FrmResumoGerenciais.qrtotal.SQL.Add('where (conta ='+chr(39)+dm.ContasCorrenteconta.Value+chr(39)+')');
       FrmResumoGerenciais.qrtotal.SQL.Add('and (data between '+chr(39)+
       copy(DateToStr(date),7,4)+'/'+
       copy(DateToStr(date),4,2)+'/'+
       '01'+chr(39)+' and '+chr(39)+copy(DateToStr(date),7,4)+'/'+
       copy(DateToStr(date),4,2)+'/'+
       dia_1+chr(39)+')');
       FrmResumoGerenciais.qrtotal.open;
       if FrmResumoGerenciais.qrtotalCredito.Value>0 then
          entrada:=FrmResumoGerenciais.qrtotal['Credito']
       else
          entrada:=0;
       if FrmResumoGerenciais.qrtotalDebito.Value>0 then
          saida:=FrmResumoGerenciais.qrtotal['Debito']
       else
          saida:=0;

       mes:=StrToInt(copy(DateToStr(date),4,2));
       FrmResumoGerenciais.qratualizar.close;
       FrmResumoGerenciais.qratualizar.sql.clear;
       FrmResumoGerenciais.qratualizar.sql.add('update ContasCorrente set');
       FrmResumoGerenciais.qratualizar.sql.add('deb'+IntToStr(mes)+' = :saida,');
       FrmResumoGerenciais.qratualizar.sql.add('cred'+IntToStr(mes)+' = :entrada');
       FrmResumoGerenciais.qratualizar.SQL.Add('where (conta ='+chr(39)+dm.ContasCorrenteconta.Value+chr(39)+')');
       FrmResumoGerenciais.qratualizar.Params[0].Value := saida;
       FrmResumoGerenciais.qratualizar.Params[1].Value := entrada;
       FrmResumoGerenciais.qratualizar.ExecSQL;
     end;
}
  dm.financeiro.Close;
  dm.financeiro.SQL.Clear;
  dm.financeiro.SQL.Add('select * from financeiro');
  dm.financeiro.SQL.Add('where (data between '+chr(39)+
  copy(DateToStr(date),7,4)+'/'+
  copy(DateToStr(date),4,2)+'/'+
  '01'+chr(39)+' and '+chr(39)+copy(DateToStr(date),7,4)+'/'+
  copy(DateToStr(date),4,2)+'/'+
  copy(DateToStr(date),1,2)+chr(39)+')');
  dm.financeiro.SQL.Add('and (conta = '+chr(39)+dm.ContasCorrenteconta.value+chr(39)+')');
  dm.financeiro.SQL.Add('order by data');
  dm.financeiro.Open;

  while not dm.financeiro.Eof do
        begin
          saldoanterior:=saldoanterior+dm.financeirocredito.value-
          dm.financeirodebito.value;
          dm.financeiro.next;
        end;
end;

procedure TFrmResumoGerenciais.FormShow(Sender: TObject);
begin
      x:=false;
      //Documentos a Receber
      vencidasrec;
      vencendorec;
      avencerrec;
      totalrec:=vencidasreceb+vencendoreceb+vencerreceb;
      FrmResumoGerenciais.lbtotalrec.Caption:=formatfloat('#,##0.00',totalrec);
      if totalrec>0 then
         begin
           FrmResumoGerenciais.lbvencidasrecebP.Caption:=formatfloat('0.00',(vencidasreceb/totalrec)*100);
           FrmResumoGerenciais.lbvencendorecebP.Caption:=formatfloat('0.00',(vencendoreceb/totalrec)*100);
           FrmResumoGerenciais.lbvencerrecebP.Caption:=formatfloat('0.00',(vencerreceb/totalrec)*100);
         end
         else
         begin
           FrmResumoGerenciais.lbvencidasrecebP.Caption:='0.00';
           FrmResumoGerenciais.lbvencendorecebP.Caption:='0.00';
           FrmResumoGerenciais.lbvencerrecebP.Caption:='0.00';
         end;

      //Documentos a Receber
      vencidaspag;
      vencendopag;
      vencerpag;
      totalpagar:=vencidaspagar+vencendopagar+vencerpagar;
      FrmResumoGerenciais.lbtotalpagar.Caption:=formatfloat('#,##0.00',totalpagar);
      if totalpagar>0 then
         begin
           FrmResumoGerenciais.lbvencidaspagarP.Caption:=formatfloat('0.00',(vencidaspagar/totalpagar)*100);
           FrmResumoGerenciais.lbvencendopagarP.Caption:=formatfloat('0.00',(vencendopagar/totalpagar)*100);
           FrmResumoGerenciais.lbvencerpagarP.Caption:=formatfloat('0.00',(vencerpagar/totalpagar)*100);
         end
         else
         begin
           FrmResumoGerenciais.lbvencidaspagarP.Caption:='0.00';
           FrmResumoGerenciais.lbvencendopagarP.Caption:='0.00';
           FrmResumoGerenciais.lbvencerpagarP.Caption:='0.00';
         end;

      //Posição
      FrmResumoGerenciais.lbvencidaspos.Caption:=formatfloat('#,##0.00',vencidasreceb-vencidaspagar);
      FrmResumoGerenciais.lbvencendopos.Caption:=formatfloat('#,##0.00',vencendoreceb-vencendopagar);
      FrmResumoGerenciais.lbvencerpos.Caption:=formatfloat('#,##0.00',vencerreceb-vencerpagar);
      FrmResumoGerenciais.lbtotalpos.Caption:=formatfloat('#,##0.00',totalrec-totalpagar);

      qratualizar.Close;
      qratualizar.SQL.Clear;
      qratualizar.SQL.Add('delete from mapadesembolso');
      qratualizar.ExecSQL;

      dm.mapadesembolso.Close;
      dm.mapadesembolso.SQL.Clear;
      dm.mapadesembolso.SQL.Add('select * from mapadesembolso');
      dm.mapadesembolso.Open;

      dm.mapadesembolso.Insert;
      dm.mapadesembolsotexto.value:='30';
      dm.mapadesembolsoTipo.value:='A1';
      dm.mapadesembolsoTipoI.value:='1';
      dm.mapadesembolso.post;
      dm.mapadesembolso.Insert;
      dm.mapadesembolsotexto.value:='60';
      dm.mapadesembolsoTipo.value:='A2';
      dm.mapadesembolsoTipoI.value:='2';
      dm.mapadesembolso.post;
      dm.mapadesembolso.Insert;
      dm.mapadesembolsotexto.value:='90';
      dm.mapadesembolsoTipo.value:='A3';
      dm.mapadesembolsoTipoI.value:='3';
      dm.mapadesembolso.post;
      dm.mapadesembolso.Insert;
      dm.mapadesembolsotexto.value:='120';
      dm.mapadesembolsoTipo.value:='A4';
      dm.mapadesembolsoTipoI.value:='4';
      dm.mapadesembolso.post;
      dm.mapadesembolso.Insert;
      dm.mapadesembolsotexto.value:='150';
      dm.mapadesembolsoTipo.value:='A5';
      dm.mapadesembolsoTipoI.value:='5';
      dm.mapadesembolso.post;
      dm.mapadesembolso.Insert;
      dm.mapadesembolsotexto.value:='180';
      dm.mapadesembolsoTipo.value:='A6';
      dm.mapadesembolsoTipoI.value:='6';
      dm.mapadesembolso.post;
      dm.mapadesembolso.Insert;
      dm.mapadesembolsotexto.value:='210';
      dm.mapadesembolsoTipo.value:='A7';
      dm.mapadesembolsoTipoI.value:='7';
      dm.mapadesembolso.post;
      dm.mapadesembolso.Insert;
      dm.mapadesembolsotexto.value:='240';
      dm.mapadesembolsoTipo.value:='A8';
      dm.mapadesembolsoTipoI.value:='8';
      dm.mapadesembolso.post;
      dm.mapadesembolso.Insert;
      dm.mapadesembolsotexto.value:='270';
      dm.mapadesembolsoTipo.value:='A9';
      dm.mapadesembolsoTipoI.value:='9';
      dm.mapadesembolso.post;
      dm.mapadesembolso.Insert;
      dm.mapadesembolsotexto.value:='300';
      dm.mapadesembolsoTipo.value:='A10';
      dm.mapadesembolsoTipoI.value:='A';
      dm.mapadesembolso.post;
      dm.mapadesembolso.Insert;
      dm.mapadesembolsotexto.value:='330';
      dm.mapadesembolsoTipo.value:='A11';
      dm.mapadesembolsoTipoI.value:='B';
      dm.mapadesembolso.post;
      dm.mapadesembolso.Insert;
      dm.mapadesembolsotexto.value:='331';
      dm.mapadesembolsoTipo.value:='A12';
      dm.mapadesembolsoTipoI.value:='C';
      dm.mapadesembolso.post;
      TitulosReceberVencidos;
      dm.mapadesembolso.Close;
      dm.mapadesembolso.Open;

      dm.mapadesembolso.Locate('texto','30',[]);
      FrmResumoGerenciais.lb30rec.Caption:=formatfloat('#,##0.00',dm.mapadesembolsoVlrReceber.Value);
      dm.mapadesembolso.Locate('texto','60',[]);
      FrmResumoGerenciais.lb60rec.Caption:=formatfloat('#,##0.00',dm.mapadesembolsoVlrReceber.Value);
      dm.mapadesembolso.Locate('texto','90',[]);
      FrmResumoGerenciais.lb90rec.Caption:=formatfloat('#,##0.00',dm.mapadesembolsoVlrReceber.Value);
      dm.mapadesembolso.Locate('texto','120',[]);
      FrmResumoGerenciais.lb120rec.Caption:=formatfloat('#,##0.00',dm.mapadesembolsoVlrReceber.Value);
      dm.mapadesembolso.Locate('texto','150',[]);
      FrmResumoGerenciais.lb150rec.Caption:=formatfloat('#,##0.00',dm.mapadesembolsoVlrReceber.Value);
      dm.mapadesembolso.Locate('texto','180',[]);
      FrmResumoGerenciais.lb180rec.Caption:=formatfloat('#,##0.00',dm.mapadesembolsoVlrReceber.Value);
      dm.mapadesembolso.Locate('texto','210',[]);
      FrmResumoGerenciais.lb210rec.Caption:=formatfloat('#,##0.00',dm.mapadesembolsoVlrReceber.Value);
      dm.mapadesembolso.Locate('texto','240',[]);
      FrmResumoGerenciais.lb240rec.Caption:=formatfloat('#,##0.00',dm.mapadesembolsoVlrReceber.Value);
      dm.mapadesembolso.Locate('texto','270',[]);
      FrmResumoGerenciais.lb270rec.Caption:=formatfloat('#,##0.00',dm.mapadesembolsoVlrReceber.Value);
      dm.mapadesembolso.Locate('texto','300',[]);
      FrmResumoGerenciais.lb300rec.Caption:=formatfloat('#,##0.00',dm.mapadesembolsoVlrReceber.Value);
      dm.mapadesembolso.Locate('texto','330',[]);
      FrmResumoGerenciais.lb330rec.Caption:=formatfloat('#,##0.00',dm.mapadesembolsoVlrReceber.Value);
      dm.mapadesembolso.Locate('texto','331',[]);
      FrmResumoGerenciais.lb331rec.Caption:=formatfloat('#,##0.00',dm.mapadesembolsoVlrReceber.Value);

      qratualizar.Close;
      qratualizar.SQL.Clear;
      qratualizar.sql.add('update mapadesembolso set');
      qratualizar.sql.add('vlrreceber = null');
      qratualizar.ExecSQL;
      x:=true;
      TitulosReceberVencidos;
      dm.mapadesembolso.Close;
      dm.mapadesembolso.Open;

      dm.mapadesembolso.Locate('texto','30',[]);
      FrmResumoGerenciais.lb30pag.Caption:=formatfloat('#,##0.00',dm.mapadesembolsoVlrReceber.Value);
      dm.mapadesembolso.Locate('texto','60',[]);
      FrmResumoGerenciais.lb60pag.Caption:=formatfloat('#,##0.00',dm.mapadesembolsoVlrReceber.Value);
      dm.mapadesembolso.Locate('texto','90',[]);
      FrmResumoGerenciais.lb90pag.Caption:=formatfloat('#,##0.00',dm.mapadesembolsoVlrReceber.Value);
      dm.mapadesembolso.Locate('texto','120',[]);
      FrmResumoGerenciais.lb120pag.Caption:=formatfloat('#,##0.00',dm.mapadesembolsoVlrReceber.Value);
      dm.mapadesembolso.Locate('texto','150',[]);
      FrmResumoGerenciais.lb150pag.Caption:=formatfloat('#,##0.00',dm.mapadesembolsoVlrReceber.Value);
      dm.mapadesembolso.Locate('texto','180',[]);
      FrmResumoGerenciais.lb180pag.Caption:=formatfloat('#,##0.00',dm.mapadesembolsoVlrReceber.Value);
      dm.mapadesembolso.Locate('texto','210',[]);
      FrmResumoGerenciais.lb210pag.Caption:=formatfloat('#,##0.00',dm.mapadesembolsoVlrReceber.Value);
      dm.mapadesembolso.Locate('texto','240',[]);
      FrmResumoGerenciais.lb240pag.Caption:=formatfloat('#,##0.00',dm.mapadesembolsoVlrReceber.Value);
      dm.mapadesembolso.Locate('texto','270',[]);
      FrmResumoGerenciais.lb270pag.Caption:=formatfloat('#,##0.00',dm.mapadesembolsoVlrReceber.Value);
      dm.mapadesembolso.Locate('texto','300',[]);
      FrmResumoGerenciais.lb300pag.Caption:=formatfloat('#,##0.00',dm.mapadesembolsoVlrReceber.Value);
      dm.mapadesembolso.Locate('texto','330',[]);
      FrmResumoGerenciais.lb330pag.Caption:=formatfloat('#,##0.00',dm.mapadesembolsoVlrReceber.Value);
      dm.mapadesembolso.Locate('texto','331',[]);
      FrmResumoGerenciais.lb331pag.Caption:=formatfloat('#,##0.00',dm.mapadesembolsoVlrReceber.Value);

      saldocx:=0;
      saldobanco:=0;
      dm.ContasCorrente.Close;
      dm.ContasCorrente.SQL.Clear;
      dm.ContasCorrente.SQL.Add('select * from ContasCorrente');
      dm.ContasCorrente.open;
      while not dm.ContasCorrente.Eof do
            begin
              dm.financeiro.Close;
              dm.financeiro.SQL.Clear;
              dm.financeiro.SQL.Add('select * from financeiro');
              dm.financeiro.SQL.Add('where (conta  = '+chr(39)+dm.ContasCorrenteconta.value+chr(39)+')');
              dm.financeiro.SQL.Add('and (data = '+chr(39)+copy(DateToStr(date),7,4)+'/'+
              copy(DateToStr(date),4,2)+'/'+
              copy(DateToStr(date),1,2)+chr(39)+')');
              dm.financeiro.SQL.Add('order by data');
              dm.financeiro.open;
              calculosaldocc;
              if dm.ContasCorrenteconta.Value='CX' then
                 saldocx:=saldoAnterior
              else
                 saldobanco:=saldobanco+saldoAnterior;
              dm.ContasCorrente.next;
            end;
      dm.ContasCorrente.Close;
      dm.ContasCorrente.SQL.Clear;
      dm.ContasCorrente.SQL.Add('select * from ContasCorrente');
      dm.ContasCorrente.open;
      FrmResumoGerenciais.lbcaixa.Caption:=formatfloat('#,##0.00',saldocx);
      FrmResumoGerenciais.lbbancos.Caption:=formatfloat('#,##0.00',saldobanco);
      FrmResumoGerenciais.lbdisponivel.Caption:=formatfloat('#,##0.00',saldocx+saldobanco);

end;

end.
