unit UnitFrmRelCCImp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, ExtCtrls, quickrpt, Qrctrls, ADODB, Mask,
  Grids, DBGrids, ZAbstractRODataset, ZAbstractDataset, ZDataset, jpeg;

type
  TFrmRelCCImp = class(TForm)
    QuickRep1: TQuickRep;
    QRGroup1: TQRGroup;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRLabel7: TQRLabel;
    PageHeaderBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRExpr4: TQRExpr;
    SummaryBand1: TQRBand;
    QRLabel9: TQRLabel;
    QRExpr28: TQRExpr;
    QRShape1: TQRShape;
    QRExpr16: TQRExpr;
    QRExpr18: TQRExpr;
    qr2: TQRDBText;
    qr3: TQRDBText;
    qr5: TQRExpr;
    qr6: TQRExpr;
    qrsaldo: TQRExpr;
    QRLabel15: TQRLabel;
    qrtitulo: TQRLabel;
    QRLabel21: TQRLabel;
    QRSysData4: TQRSysData;
    QRSysData3: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    l1: TQRLabel;
    qrsaldoant: TQRExpr;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    medatainicial: TMaskEdit;
    Label4: TLabel;
    Label5: TLabel;
    medatafinal: TMaskEdit;
    cbconta: TComboBox;
    lbdescricao: TLabel;
    bt1: TBitBtn;
    bt2: TBitBtn;
    GroupBox2: TGroupBox;
    rb1: TRadioButton;
    rb2: TRadioButton;
    QRLabel12: TQRLabel;
    lb8: TQRShape;
    lb1: TQRLabel;
    lb2: TQRLabel;
    lb10: TQRShape;
    lb9: TQRShape;
    lb11: TQRShape;
    lb12: TQRLabel;
    lb3: TQRShape;
    lb4: TQRShape;
    lb14: TQRLabel;
    lb13: TQRShape;
    lb5: TQRShape;
    lb6: TQRShape;
    lb7: TQRShape;
    QuickRep2: TQuickRep;
    QRBand3: TQRBand;
    QRDBText5: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    qrantII: TQRExpr;
    QRBand5: TQRBand;
    QRShape12: TQRShape;
    QRLabel24: TQRLabel;
    qrtituloI: TQRLabel;
    QRLabel26: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData5: TQRSysData;
    QRSysData6: TQRSysData;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    qrantIII: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRBand6: TQRBand;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRBand7: TQRBand;
    QRLabel38: TQRLabel;
    QRExpr8: TQRExpr;
    QRExpr9: TQRExpr;
    Query1: TZQuery;
    qrtotal: TZQuery;
    qrtotalCredito: TFloatField;
    qrtotalDebito: TFloatField;
    qratualizar: TZQuery;
    QRDBText1: TQRDBText;
    qr1: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText2: TQRDBText;
    qrant: TQRLabel;
    Label1: TLabel;
    edhistoricoI: TEdit;
    QRLabel14: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure medatainicialExit(Sender: TObject);
    procedure medatafinalExit(Sender: TObject);
    procedure bt1Click(Sender: TObject);
    procedure bt2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelCCImp: TFrmRelCCImp;
  entrada,saida,saldoAnterior:real;
  dia_1:string;
  mes:integer;

implementation

uses Unitdm, UnitFrmProcFinanceiro, UnitFrmPrincipal;

{$R *.DFM}

procedure calculosaldocc;
begin
    saldoAnterior:=0;
    FrmRelCCImp.qratualizar.close;
    FrmRelCCImp.qratualizar.sql.clear;
    FrmRelCCImp.qratualizar.sql.add('update financeiro set');
    FrmRelCCImp.qratualizar.sql.add('saldoconta = :saldoanterior');
    FrmRelCCImp.qratualizar.SQL.Add('where (conta ='+chr(39)+dm.ContasCorrenteconta.Value+chr(39)+')');
    FrmRelCCImp.qratualizar.Params[0].Value := saldoanterior;
    FrmRelCCImp.qratualizar.ExecSQL;

    dm.contascorrente_saldo.Close;
    dm.contascorrente_saldo.SQL.Clear;
    dm.contascorrente_saldo.SQL.Add('select * from contascorrente_saldo');
    dm.contascorrente_saldo.SQL.Add('where (conta ='+chr(39)+dm.ContasCorrenteconta.Value+chr(39)+')');
    dm.contascorrente_saldo.SQL.Add('and (ano ='+chr(39)+copy(FrmRelCCImp.medatainicial.text,7,4)+chr(39)+')');
    dm.contascorrente_saldo.Open;

    if copy(FrmRelCCImp.medatainicial.Text,4,2)='01' then
       saldoAnterior:=dm.contascorrente_saldosaldoant.value
    else if copy(FrmRelCCImp.medatainicial.Text,4,2)='02' then
       saldoAnterior:=dm.contascorrente_saldosaldoant.value+
       dm.contascorrente_saldocred1.value-dm.contascorrente_saldodeb1.value
    else if copy(FrmRelCCImp.medatainicial.Text,4,2)='03' then
       saldoAnterior:=dm.contascorrente_saldosaldoant.value+
       dm.contascorrente_saldocred1.value+dm.contascorrente_saldocred2.value-
       dm.contascorrente_saldodeb1.value-dm.contascorrente_saldodeb2.value
    else if copy(FrmRelCCImp.medatainicial.Text,4,2)='04' then
       saldoAnterior:=dm.contascorrente_saldosaldoant.value+
       dm.contascorrente_saldocred1.value+dm.contascorrente_saldocred2.value+dm.contascorrente_saldocred3.value-
       dm.contascorrente_saldodeb1.value-dm.contascorrente_saldodeb2.value-dm.contascorrente_saldodeb3.value
    else if copy(FrmRelCCImp.medatainicial.Text,4,2)='05' then
       saldoAnterior:=dm.contascorrente_saldosaldoant.value+
       dm.contascorrente_saldocred1.value+dm.contascorrente_saldocred2.value+dm.contascorrente_saldocred3.value+
       dm.contascorrente_saldocred4.value-dm.contascorrente_saldodeb1.value-
       dm.contascorrente_saldodeb2.value-dm.contascorrente_saldodeb3.value-dm.contascorrente_saldodeb4.value
    else if copy(FrmRelCCImp.medatainicial.Text,4,2)='06' then
       saldoAnterior:=dm.contascorrente_saldosaldoant.value+
       dm.contascorrente_saldocred1.value+dm.contascorrente_saldocred2.value+dm.contascorrente_saldocred3.value+
       dm.contascorrente_saldocred4.value+dm.contascorrente_saldocred5.value-
       dm.contascorrente_saldodeb1.value-dm.contascorrente_saldodeb2.value-dm.contascorrente_saldodeb3.value-
       dm.contascorrente_saldodeb4.value-dm.contascorrente_saldodeb5.value
    else if copy(FrmRelCCImp.medatainicial.Text,4,2)='07' then
       saldoAnterior:=dm.contascorrente_saldosaldoant.value+
       dm.contascorrente_saldocred1.value+dm.contascorrente_saldocred2.value+dm.contascorrente_saldocred3.value+
       dm.contascorrente_saldocred4.value+dm.contascorrente_saldocred5.value+dm.contascorrente_saldocred6.value-
       dm.contascorrente_saldodeb1.value-dm.contascorrente_saldodeb2.value-
       dm.contascorrente_saldodeb3.value-dm.contascorrente_saldodeb4.value-dm.contascorrente_saldodeb5.value-
       dm.contascorrente_saldodeb6.value
    else if copy(FrmRelCCImp.medatainicial.Text,4,2)='08' then
       saldoAnterior:=dm.contascorrente_saldosaldoant.value+
       dm.contascorrente_saldocred1.value+dm.contascorrente_saldocred2.value+dm.contascorrente_saldocred3.value+
       dm.contascorrente_saldocred4.value+dm.contascorrente_saldocred5.value+dm.contascorrente_saldocred6.value+
       dm.contascorrente_saldocred7.value-dm.contascorrente_saldodeb1.value-
       dm.contascorrente_saldodeb2.value-dm.contascorrente_saldodeb3.value-dm.contascorrente_saldodeb4.value-
       dm.contascorrente_saldodeb5.value-dm.contascorrente_saldodeb6.value-dm.contascorrente_saldodeb7.value
    else if copy(FrmRelCCImp.medatainicial.Text,4,2)='09' then
       saldoAnterior:=dm.contascorrente_saldosaldoant.value+
       dm.contascorrente_saldocred1.value+dm.contascorrente_saldocred2.value+dm.contascorrente_saldocred3.value+
       dm.contascorrente_saldocred4.value+dm.contascorrente_saldocred5.value+dm.contascorrente_saldocred6.value+
       dm.contascorrente_saldocred7.value+dm.contascorrente_saldocred8.value-
       dm.contascorrente_saldodeb1.value-dm.contascorrente_saldodeb2.value-dm.contascorrente_saldodeb3.value-
       dm.contascorrente_saldodeb4.value-dm.contascorrente_saldodeb5.value-dm.contascorrente_saldodeb6.value-
       dm.contascorrente_saldodeb7.value-dm.contascorrente_saldodeb8.value
    else if copy(FrmRelCCImp.medatainicial.Text,4,2)='10' then
       saldoAnterior:=dm.contascorrente_saldosaldoant.value+
       dm.contascorrente_saldocred1.value+dm.contascorrente_saldocred2.value+dm.contascorrente_saldocred3.value+
       dm.contascorrente_saldocred4.value+dm.contascorrente_saldocred5.value+dm.contascorrente_saldocred6.value+
       dm.contascorrente_saldocred7.value+dm.contascorrente_saldocred8.value+dm.contascorrente_saldocred9.value-
       dm.contascorrente_saldodeb1.value-dm.contascorrente_saldodeb2.value-
       dm.contascorrente_saldodeb3.value-dm.contascorrente_saldodeb4.value-dm.contascorrente_saldodeb5.value-
       dm.contascorrente_saldodeb6.value-dm.contascorrente_saldodeb7.value-dm.contascorrente_saldodeb8.value-
       dm.contascorrente_saldodeb9.value
    else if copy(FrmRelCCImp.medatainicial.Text,4,2)='11' then
       saldoAnterior:=dm.contascorrente_saldosaldoant.value+
       dm.contascorrente_saldocred1.value+dm.contascorrente_saldocred2.value+dm.contascorrente_saldocred3.value+
       dm.contascorrente_saldocred4.value+dm.contascorrente_saldocred5.value+dm.contascorrente_saldocred6.value+
       dm.contascorrente_saldocred7.value+dm.contascorrente_saldocred8.value+dm.contascorrente_saldocred9.value+
       dm.contascorrente_saldocred10.value-dm.contascorrente_saldodeb1.value-
       dm.contascorrente_saldodeb2.value-dm.contascorrente_saldodeb3.value-dm.contascorrente_saldodeb4.value-
       dm.contascorrente_saldodeb5.value-dm.contascorrente_saldodeb6.value-dm.contascorrente_saldodeb7.value-
       dm.contascorrente_saldodeb8.value-dm.contascorrente_saldodeb9.value-dm.contascorrente_saldodeb10.value
    else if copy(FrmRelCCImp.medatainicial.Text,4,2)='12' then
       saldoAnterior:=dm.contascorrente_saldosaldoant.value+
       dm.contascorrente_saldocred1.value+dm.contascorrente_saldocred2.value+dm.contascorrente_saldocred3.value+
       dm.contascorrente_saldocred4.value+dm.contascorrente_saldocred5.value+dm.contascorrente_saldocred6.value+
       dm.contascorrente_saldocred7.value+dm.contascorrente_saldocred8.value+dm.contascorrente_saldocred9.value+
       dm.contascorrente_saldocred10.value+dm.contascorrente_saldocred11.value-
       dm.contascorrente_saldodeb1.value-dm.contascorrente_saldodeb2.value-dm.contascorrente_saldodeb3.value-
       dm.contascorrente_saldodeb4.value-dm.contascorrente_saldodeb5.value-dm.contascorrente_saldodeb6.value-
       dm.contascorrente_saldodeb7.value-dm.contascorrente_saldodeb8.value-dm.contascorrente_saldodeb9.value-
       dm.contascorrente_saldodeb10.value-dm.contascorrente_saldodeb11.value;

    if copy(FrmRelCCImp.medatainicial.text,1,2)<>'01' then
       begin
         dia_1:=IntToStr(StrToInt(copy(FrmRelCCImp.medatainicial.text,1,2))-1);
         FrmRelCCImp.qrtotal.Close;
         FrmRelCCImp.qrtotal.SQL.Clear;
         FrmRelCCImp.qrtotal.SQL.Add('select sum(credito) as Credito, sum(debito) as Debito from financeiro');
         FrmRelCCImp.qrtotal.SQL.Add('where (conta ='+chr(39)+dm.ContasCorrenteconta.Value+chr(39)+')');
         FrmRelCCImp.qrtotal.SQL.Add('and (data between '+chr(39)+
         copy(FrmRelCCImp.medatainicial.text,7,4)+'/'+
         copy(FrmRelCCImp.medatainicial.text,4,2)+'/'+
         '01'+chr(39)+' and '+chr(39)+copy(FrmRelCCImp.medatainicial.text,7,4)+'/'+
         copy(FrmRelCCImp.medatainicial.text,4,2)+'/'+
         dia_1+chr(39)+')');
         FrmRelCCImp.qrtotal.open;
         if FrmRelCCImp.qrtotalCredito.Value>0 then
            entrada:=FrmRelCCImp.qrtotal['Credito']
         else
            entrada:=0;
         if FrmRelCCImp.qrtotalDebito.Value>0 then
            saida:=FrmRelCCImp.qrtotal['Debito']
         else
            saida:=0;
         saldoanterior:=saldoanterior+entrada-saida;

         mes:=StrToInt(copy(FrmRelCCImp.medatainicial.text,4,2));
         FrmRelCCImp.qratualizar.close;
         FrmRelCCImp.qratualizar.sql.clear;
         FrmRelCCImp.qratualizar.sql.add('update contascorrente_saldo set');
         FrmRelCCImp.qratualizar.sql.add('deb'+IntToStr(mes)+' = :saida,');
         FrmRelCCImp.qratualizar.sql.add('cred'+IntToStr(mes)+' = :entrada');
         FrmRelCCImp.qratualizar.SQL.Add('where (conta ='+chr(39)+dm.ContasCorrenteconta.Value+chr(39)+')');
         FrmRelCCImp.qratualizar.SQL.Add('and (ano ='+chr(39)+copy(FrmRelCCImp.medatainicial.text,7,4)+chr(39)+')');
         FrmRelCCImp.qratualizar.Params[0].Value := saida;
         FrmRelCCImp.qratualizar.Params[1].Value := entrada;
         FrmRelCCImp.qratualizar.ExecSQL;
       end;

    dm.financeiro.First;
    while not dm.financeiro.Eof do
          begin
            saldoanterior:=saldoanterior+dm.financeirocredito.value-
            dm.financeirodebito.value;
            FrmRelCCImp.qratualizar.close;
            FrmRelCCImp.qratualizar.sql.clear;
            FrmRelCCImp.qratualizar.sql.add('update financeiro set');
            FrmRelCCImp.qratualizar.sql.add('saldoconta = :saldoanterior');
            FrmRelCCImp.qratualizar.SQL.Add('where codigo ='+IntToStr(dm.financeirocodigo.Value));
            FrmRelCCImp.qratualizar.Params[0].Value := saldoanterior;
            FrmRelCCImp.qratualizar.ExecSQL;

            dm.financeiro.next;
          end;
end;

procedure TFrmRelCCImp.FormShow(Sender: TObject);
begin
      application.MessageBox('Para realizar este procedimento, realize'+#13+'o processamento financeiro','Aten��o',mb_ok+mb_iconinformation);
      try
        Application.CreateForm(TFrmProcFinanceiro, FrmProcFinanceiro);
        FrmProcFinanceiro.showmodal;
      finally
        FrmProcFinanceiro.Release;
        FrmProcFinanceiro:=nil;
      end;

      dm.ContasCorrente.Close;
      dm.ContasCorrente.SQL.Clear;
      dm.contascorrente.SQL.Add('select * from contascorrente');
      dm.contascorrente.Open;
      dm.contascorrente.first;
      cbconta.Items.Clear;
      while not dm.contascorrente.Eof do
            begin
              cbconta.Items.Add(dm.contascorrentedescricao.Value);
              dm.contascorrente.Next;
            end;
end;

procedure TFrmRelCCImp.FormKeyPress(Sender: TObject; var Key: Char);
begin
        if key=#13 then
        begin
           SelectNext(activecontrol,True,True);
           key:=#0;
        end;
end;

procedure TFrmRelCCImp.medatainicialExit(Sender: TObject);
begin
        if medatainicial.text<>'  /  /    ' then
        begin
        Try
           StrToDate(medatainicial.Text) ;
        Except
        begin
           application.MessageBox('Data Inv�lida!','Aten��o',mb_Ok+mb_iconerror);
           medatainicial.setfocus;
        end;
        end;
        end;
end;

procedure TFrmRelCCImp.medatafinalExit(Sender: TObject);
begin
        if MeDataFinal.text<>'  /  /    ' then
        begin
        Try
           StrToDate(MeDataFinal.Text) ;
           If StrToDate(MeDataInicial.Text) > StrToDate(MeDataFinal.Text) then
              Begin
                 MessageBox(Handle, 'Data inferior � data inicial de pesquisa!!', 'Aten��o', mb_IconWarning or mb_Ok);
                 medatafinal.text:='';
                 medatainicial.text:='';
                 MeDatainicial.SetFocus;
              End;
        Except
        begin
           application.MessageBox('Data Inv�lida!','Aten��o',mb_Ok+mb_iconerror);
           MeDataFinal.setfocus;
        end;
        end;
        end;
end;

procedure TFrmRelCCImp.bt1Click(Sender: TObject);
begin
      if (medatainicial.Text='  /  /    ') and
         (medatafinal.Text='  /  /    ') and
         (cbconta.Text='') then
         begin
              application.MessageBox('Per�odo Inv�lido','Aten��o',mb_ok+mb_iconinformation);
              medatainicial.SetFocus;
         end
         else
         begin
           dm.parametros.close;
           dm.parametros.sql.clear;
           dm.parametros.sql.add('select * from parametros');
           dm.parametros.sql.add('where fantasia like '+chr(39)+'%'+FrmPrincipal.Panel2.Caption+'%'+chr(39));
           dm.parametros.open;

           dm.financeiro.Close;
           dm.financeiro.SQL.Clear;
           dm.financeiro.SQL.Add('select * from financeiro');
           dm.financeiro.SQL.Add('where (data between '+chr(39)+
           copy(medatainicial.text,7,4)+'/'+copy(medatainicial.text,4,2)+'/'+
           copy(medatainicial.text,1,2)+chr(39)+' and '+chr(39)+
           copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
           copy(MeDataFinal.text,1,2)+chr(39)+')');
           if cbconta.Text<>'' then
              begin
                dm.contascorrente.Close;
                dm.contascorrente.SQL.Clear;
                dm.contascorrente.SQL.Add('select * from contascorrente');
                dm.contascorrente.open;
                dm.contascorrente.Locate('descricao',cbconta.text,[]);
                dm.financeiro.SQL.Add('and (conta  = '+chr(39)+dm.contascorrenteconta.value+chr(39)+')');
              end;
           dm.financeiro.SQL.Add('order by data,tipo,doc,codigo');
           dm.financeiro.open;
           calculosaldocc;
            Query1.close;
            Query1.SQL.Clear;
            Query1.SQL.Add('select * from financeiro F, contascorrente_saldo C');
            Query1.SQL.Add('where (F.conta=C.conta)');
            Query1.SQL.Add('and (C.ano  = '+chr(39)+copy(MeDataFinal.text,7,4)+chr(39)+')');
            if cbconta.Text<>'' then
               begin
                  dm.contascorrente.Open;
                  dm.contascorrente.Locate('descricao',cbconta.text,[]);
                  Query1.SQL.Add('and (F.conta  = '+chr(39)+dm.contascorrenteconta.value+chr(39)+')');
                  Query1.SQL.Add('and (F.data between '+chr(39)+
                  copy(medatainicial.text,7,4)+'/'+copy(medatainicial.text,4,2)+'/'+
                  copy(medatainicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  qrtitulo.Caption:='Relat�rio - Conta Corrente - '+
                  dm.contascorrenteconta.value+' - '+dm.contascorrentedescricao.value+
                  ' - Per�odo: '+medatainicial.text+' � '+medatafinal.text;
                  qrtituloI.Caption:='Relat�rio - Conta Corrente - '+
                  dm.contascorrenteconta.value+' - '+dm.contascorrentedescricao.value+
                  ' - Per�odo: '+medatainicial.text+' � '+medatafinal.text;
               end
               else
               begin
                  Query1.SQL.Add('and (F.data between '+chr(39)+
                  copy(medatainicial.text,7,4)+'/'+copy(medatainicial.text,4,2)+'/'+
                  copy(medatainicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  qrtitulo.Caption:='Relat�rio - Contas Corrente'+
                  ' - Per�odo: '+medatainicial.text+' � '+medatafinal.text;
                  qrtituloI.Caption:='Relat�rio - Contas Corrente'+
                  ' - Per�odo: '+medatainicial.text+' � '+medatafinal.text;
               end;
            if edhistoricoI.Text<>'' then
               begin
                 Query1.sql.add('and (historico like '+chr(39)+'%'+edhistoricoI.text+'%'+chr(39)+')');
                 qrant.Enabled:=false;
                 qrantII.Enabled:=false;
                 qrantIII.Enabled:=false;
               end
               else
               begin
                 qrant.Enabled:=true;
                 qrantII.Enabled:=true;
                 qrantIII.Enabled:=true;
               end;
            Query1.SQL.Add('order by F.data,F.tipo,F.doc,F.codigo');
            Query1.open;
            saldoAnterior:=0;
            if rb1.Checked then
               begin
                if copy(medatainicial.text,1,2)='01' then
                   begin
                     if copy(medatainicial.Text,4,2)='01' then
                        saldoAnterior:=query1.FieldByName('saldoant').AsFloat
                     else if copy(medatainicial.Text,4,2)='02' then
                        saldoAnterior:=query1.FieldByName('saldoant').AsFloat+query1.FieldByName('cred1').AsFloat-query1.FieldByName('deb1').AsFloat
                     else if copy(medatainicial.Text,4,2)='03' then
                        saldoAnterior:=query1.FieldByName('saldoant').AsFloat+query1.FieldByName('cred1').AsFloat+query1.FieldByName('cred2').AsFloat-
                        query1.FieldByName('deb1').AsFloat-query1.FieldByName('deb2').AsFloat
                     else if copy(medatainicial.Text,4,2)='04' then
                        saldoAnterior:=query1.FieldByName('saldoant').AsFloat+query1.FieldByName('cred1').AsFloat+query1.FieldByName('cred2').AsFloat+
                        query1.FieldByName('cred3').AsFloat-query1.FieldByName('deb1').AsFloat-query1.FieldByName('deb2').AsFloat-
                        query1.FieldByName('deb3').AsFloat
                     else if copy(medatainicial.Text,4,2)='05' then
                        saldoAnterior:=query1.FieldByName('saldoant').AsFloat+query1.FieldByName('cred1').AsFloat+query1.FieldByName('cred2').AsFloat+
                        query1.FieldByName('cred3').AsFloat+query1.FieldByName('cred4').AsFloat-query1.FieldByName('deb1').AsFloat-
                        query1.FieldByName('deb2').AsFloat-query1.FieldByName('deb3').AsFloat-query1.FieldByName('deb4').AsFloat
                     else if copy(medatainicial.Text,4,2)='06' then
                        saldoAnterior:=query1.FieldByName('saldoant').AsFloat+query1.FieldByName('cred1').AsFloat+query1.FieldByName('cred2').AsFloat+
                        query1.FieldByName('cred3').AsFloat+query1.FieldByName('cred4').AsFloat+query1.FieldByName('cred5').AsFloat-
                        query1.FieldByName('deb1').AsFloat-query1.FieldByName('deb2').AsFloat-query1.FieldByName('deb3').AsFloat-
                        query1.FieldByName('deb4').AsFloat-query1.FieldByName('deb5').AsFloat
                     else if copy(medatainicial.Text,4,2)='07' then
                        saldoAnterior:=query1.FieldByName('saldoant').AsFloat+query1.FieldByName('cred1').AsFloat+query1.FieldByName('cred2').AsFloat+
                        query1.FieldByName('cred3').AsFloat+query1.FieldByName('cred4').AsFloat+query1.FieldByName('cred5').AsFloat+
                        query1.FieldByName('cred6').AsFloat-query1.FieldByName('deb1').AsFloat-query1.FieldByName('deb2').AsFloat-
                        query1.FieldByName('deb3').AsFloat-query1.FieldByName('deb4').AsFloat-query1.FieldByName('deb5').AsFloat-
                        query1.FieldByName('deb6').AsFloat
                     else if copy(medatainicial.Text,4,2)='08' then
                        saldoAnterior:=query1.FieldByName('saldoant').AsFloat+query1.FieldByName('cred1').AsFloat+query1.FieldByName('cred2').AsFloat+
                        query1.FieldByName('cred3').AsFloat+query1.FieldByName('cred4').AsFloat+query1.FieldByName('cred5').AsFloat+
                        query1.FieldByName('cred6').AsFloat+query1.FieldByName('cred7').AsFloat-query1.FieldByName('deb1').AsFloat-
                        query1.FieldByName('deb2').AsFloat-query1.FieldByName('deb3').AsFloat-query1.FieldByName('deb4').AsFloat-
                        query1.FieldByName('deb5').AsFloat-query1.FieldByName('deb6').AsFloat-query1.FieldByName('deb7').AsFloat
                     else if copy(medatainicial.Text,4,2)='09' then
                        saldoAnterior:=query1.FieldByName('saldoant').AsFloat+query1.FieldByName('cred1').AsFloat+query1.FieldByName('cred2').AsFloat+
                        query1.FieldByName('cred3').AsFloat+query1.FieldByName('cred4').AsFloat+query1.FieldByName('cred5').AsFloat+
                        query1.FieldByName('cred6').AsFloat+query1.FieldByName('cred7').AsFloat+query1.FieldByName('cred8').AsFloat-
                        query1.FieldByName('deb1').AsFloat-query1.FieldByName('deb2').AsFloat-query1.FieldByName('deb3').AsFloat-
                        query1.FieldByName('deb4').AsFloat-query1.FieldByName('deb5').AsFloat-query1.FieldByName('deb6').AsFloat-
                        query1.FieldByName('deb7').AsFloat-query1.FieldByName('deb8').AsFloat
                     else if copy(medatainicial.Text,4,2)='10' then
                        saldoAnterior:=query1.FieldByName('saldoant').AsFloat+query1.FieldByName('cred1').AsFloat+query1.FieldByName('cred2').AsFloat+
                        query1.FieldByName('cred3').AsFloat+query1.FieldByName('cred4').AsFloat+query1.FieldByName('cred5').AsFloat+
                        query1.FieldByName('cred6').AsFloat+query1.FieldByName('cred7').AsFloat+query1.FieldByName('cred8').AsFloat+
                        query1.FieldByName('cred9').AsFloat-query1.FieldByName('deb1').AsFloat-query1.FieldByName('deb2').AsFloat-
                        query1.FieldByName('deb3').AsFloat-query1.FieldByName('deb4').AsFloat-query1.FieldByName('deb5').AsFloat-
                        query1.FieldByName('deb6').AsFloat-query1.FieldByName('deb7').AsFloat-query1.FieldByName('deb8').AsFloat-
                        query1.FieldByName('deb9').AsFloat
                     else if copy(medatainicial.Text,4,2)='11' then
                        saldoAnterior:=query1.FieldByName('saldoant').AsFloat+query1.FieldByName('cred1').AsFloat+query1.FieldByName('cred2').AsFloat+
                        query1.FieldByName('cred3').AsFloat+query1.FieldByName('cred4').AsFloat+query1.FieldByName('cred5').AsFloat+
                        query1.FieldByName('cred6').AsFloat+query1.FieldByName('cred7').AsFloat+query1.FieldByName('cred8').AsFloat+
                        query1.FieldByName('cred9').AsFloat+query1.FieldByName('cred10').AsFloat-query1.FieldByName('deb1').AsFloat-
                        query1.FieldByName('deb2').AsFloat-query1.FieldByName('deb3').AsFloat-query1.FieldByName('deb4').AsFloat-
                        query1.FieldByName('deb5').AsFloat-query1.FieldByName('deb6').AsFloat-query1.FieldByName('deb7').AsFloat-
                        query1.FieldByName('deb8').AsFloat-query1.FieldByName('deb9').AsFloat-query1.FieldByName('deb10').AsFloat
                     else if copy(medatainicial.Text,4,2)='12' then
                        saldoAnterior:=query1.FieldByName('saldoant').AsFloat+query1.FieldByName('cred1').AsFloat+query1.FieldByName('cred2').AsFloat+
                        query1.FieldByName('cred3').AsFloat+query1.FieldByName('cred4').AsFloat+query1.FieldByName('cred5').AsFloat+
                        query1.FieldByName('cred6').AsFloat+query1.FieldByName('cred7').AsFloat+query1.FieldByName('cred8').AsFloat+
                        query1.FieldByName('cred9').AsFloat+query1.FieldByName('cred10').AsFloat+query1.FieldByName('cred11').AsFloat-
                        query1.FieldByName('deb1').AsFloat-query1.FieldByName('deb2').AsFloat-query1.FieldByName('deb3').AsFloat-
                        query1.FieldByName('deb4').AsFloat-query1.FieldByName('deb5').AsFloat-query1.FieldByName('deb6').AsFloat-
                        query1.FieldByName('deb7').AsFloat-query1.FieldByName('deb8').AsFloat-query1.FieldByName('deb9').AsFloat-
                        query1.FieldByName('deb10').AsFloat-query1.FieldByName('deb11').AsFloat;
                   end
                   else
                   begin
                     if copy(medatainicial.Text,4,2)='01' then
                        saldoAnterior:=query1.FieldByName('saldoant').AsFloat+query1.FieldByName('cred1').AsFloat-query1.FieldByName('deb1').AsFloat
                     else if copy(medatainicial.Text,4,2)='02' then
                        saldoAnterior:=query1.FieldByName('saldoant').AsFloat+query1.FieldByName('cred1').AsFloat+query1.FieldByName('cred2').AsFloat-
                        query1.FieldByName('deb1').AsFloat-query1.FieldByName('deb2').AsFloat
                     else if copy(medatainicial.Text,4,2)='03' then
                        saldoAnterior:=query1.FieldByName('saldoant').AsFloat+query1.FieldByName('cred1').AsFloat+query1.FieldByName('cred2').AsFloat+
                        query1.FieldByName('cred3').AsFloat-query1.FieldByName('deb1').AsFloat-query1.FieldByName('deb2').AsFloat-
                        query1.FieldByName('deb3').AsFloat
                     else if copy(medatainicial.Text,4,2)='04' then
                        saldoAnterior:=query1.FieldByName('saldoant').AsFloat+query1.FieldByName('cred1').AsFloat+query1.FieldByName('cred2').AsFloat+
                        query1.FieldByName('cred3').AsFloat+query1.FieldByName('cred4').AsFloat-query1.FieldByName('deb1').AsFloat-
                        query1.FieldByName('deb2').AsFloat-query1.FieldByName('deb3').AsFloat-query1.FieldByName('deb4').AsFloat
                     else if copy(medatainicial.Text,4,2)='05' then
                        saldoAnterior:=query1.FieldByName('saldoant').AsFloat+query1.FieldByName('cred1').AsFloat+query1.FieldByName('cred2').AsFloat+
                        query1.FieldByName('cred3').AsFloat+query1.FieldByName('cred4').AsFloat+query1.FieldByName('cred5').AsFloat-
                        query1.FieldByName('deb1').AsFloat-query1.FieldByName('deb2').AsFloat-query1.FieldByName('deb3').AsFloat-
                        query1.FieldByName('deb4').AsFloat-query1.FieldByName('deb5').AsFloat
                     else if copy(medatainicial.Text,4,2)='06' then
                        saldoAnterior:=query1.FieldByName('saldoant').AsFloat+query1.FieldByName('cred1').AsFloat+query1.FieldByName('cred2').AsFloat+
                        query1.FieldByName('cred3').AsFloat+query1.FieldByName('cred4').AsFloat+query1.FieldByName('cred5').AsFloat+
                        query1.FieldByName('cred6').AsFloat-query1.FieldByName('deb1').AsFloat-query1.FieldByName('deb2').AsFloat-
                        query1.FieldByName('deb3').AsFloat-query1.FieldByName('deb4').AsFloat-query1.FieldByName('deb5').AsFloat-
                        query1.FieldByName('deb6').AsFloat
                     else if copy(medatainicial.Text,4,2)='07' then
                        saldoAnterior:=query1.FieldByName('saldoant').AsFloat+query1.FieldByName('cred1').AsFloat+query1.FieldByName('cred2').AsFloat+
                        query1.FieldByName('cred3').AsFloat+query1.FieldByName('cred4').AsFloat+query1.FieldByName('cred5').AsFloat+
                        query1.FieldByName('cred6').AsFloat+query1.FieldByName('cred7').AsFloat-query1.FieldByName('deb1').AsFloat-
                        query1.FieldByName('deb2').AsFloat-query1.FieldByName('deb3').AsFloat-query1.FieldByName('deb4').AsFloat-
                        query1.FieldByName('deb5').AsFloat-query1.FieldByName('deb6').AsFloat-query1.FieldByName('deb7').AsFloat
                     else if copy(medatainicial.Text,4,2)='08' then
                        saldoAnterior:=query1.FieldByName('saldoant').AsFloat+query1.FieldByName('cred1').AsFloat+query1.FieldByName('cred2').AsFloat+
                        query1.FieldByName('cred3').AsFloat+query1.FieldByName('cred4').AsFloat+query1.FieldByName('cred5').AsFloat+
                        query1.FieldByName('cred6').AsFloat+query1.FieldByName('cred7').AsFloat+query1.FieldByName('cred8').AsFloat-
                        query1.FieldByName('deb1').AsFloat-query1.FieldByName('deb2').AsFloat-query1.FieldByName('deb3').AsFloat-
                        query1.FieldByName('deb4').AsFloat-query1.FieldByName('deb5').AsFloat-query1.FieldByName('deb6').AsFloat-
                        query1.FieldByName('deb7').AsFloat-query1.FieldByName('deb8').AsFloat
                     else if copy(medatainicial.Text,4,2)='09' then
                        saldoAnterior:=query1.FieldByName('saldoant').AsFloat+query1.FieldByName('cred1').AsFloat+query1.FieldByName('cred2').AsFloat+
                        query1.FieldByName('cred3').AsFloat+query1.FieldByName('cred4').AsFloat+query1.FieldByName('cred5').AsFloat+
                        query1.FieldByName('cred6').AsFloat+query1.FieldByName('cred7').AsFloat+query1.FieldByName('cred8').AsFloat+
                        query1.FieldByName('cred9').AsFloat-query1.FieldByName('deb1').AsFloat-query1.FieldByName('deb2').AsFloat-
                        query1.FieldByName('deb3').AsFloat-query1.FieldByName('deb4').AsFloat-query1.FieldByName('deb5').AsFloat-
                        query1.FieldByName('deb6').AsFloat-query1.FieldByName('deb7').AsFloat-query1.FieldByName('deb8').AsFloat-
                        query1.FieldByName('deb9').AsFloat
                     else if copy(medatainicial.Text,4,2)='10' then
                        saldoAnterior:=query1.FieldByName('saldoant').AsFloat+query1.FieldByName('cred1').AsFloat+query1.FieldByName('cred2').AsFloat+
                        query1.FieldByName('cred3').AsFloat+query1.FieldByName('cred4').AsFloat+query1.FieldByName('cred5').AsFloat+
                        query1.FieldByName('cred6').AsFloat+query1.FieldByName('cred7').AsFloat+query1.FieldByName('cred8').AsFloat+
                        query1.FieldByName('cred9').AsFloat+query1.FieldByName('cred10').AsFloat-query1.FieldByName('deb1').AsFloat-
                        query1.FieldByName('deb2').AsFloat-query1.FieldByName('deb3').AsFloat-query1.FieldByName('deb4').AsFloat-
                        query1.FieldByName('deb5').AsFloat-query1.FieldByName('deb6').AsFloat-query1.FieldByName('deb7').AsFloat-
                        query1.FieldByName('deb8').AsFloat-query1.FieldByName('deb9').AsFloat-query1.FieldByName('deb10').AsFloat
                     else if copy(medatainicial.Text,4,2)='11' then
                        saldoAnterior:=query1.FieldByName('saldoant').AsFloat+query1.FieldByName('cred1').AsFloat+query1.FieldByName('cred2').AsFloat+
                        query1.FieldByName('cred3').AsFloat+query1.FieldByName('cred4').AsFloat+query1.FieldByName('cred5').AsFloat+
                        query1.FieldByName('cred6').AsFloat+query1.FieldByName('cred7').AsFloat+query1.FieldByName('cred8').AsFloat+
                        query1.FieldByName('cred9').AsFloat+query1.FieldByName('cred10').AsFloat+query1.FieldByName('cred11').AsFloat-
                        query1.FieldByName('deb1').AsFloat-query1.FieldByName('deb2').AsFloat-query1.FieldByName('deb3').AsFloat-
                        query1.FieldByName('deb4').AsFloat-query1.FieldByName('deb5').AsFloat-query1.FieldByName('deb6').AsFloat-
                        query1.FieldByName('deb7').AsFloat-query1.FieldByName('deb8').AsFloat-query1.FieldByName('deb9').AsFloat-
                        query1.FieldByName('deb10').AsFloat-query1.FieldByName('deb11').AsFloat
                     else if copy(medatainicial.Text,4,2)='12' then
                        saldoAnterior:=query1.FieldByName('saldoant').AsFloat+query1.FieldByName('cred1').AsFloat+query1.FieldByName('cred2').AsFloat+
                        query1.FieldByName('cred3').AsFloat+query1.FieldByName('cred4').AsFloat+query1.FieldByName('cred5').AsFloat+
                        query1.FieldByName('cred6').AsFloat+query1.FieldByName('cred7').AsFloat+query1.FieldByName('cred8').AsFloat+
                        query1.FieldByName('cred9').AsFloat+query1.FieldByName('cred10').AsFloat+query1.FieldByName('cred11').AsFloat+
                        query1.FieldByName('cred12').AsFloat-query1.FieldByName('deb1').AsFloat-query1.FieldByName('deb2').AsFloat-
                        query1.FieldByName('deb3').AsFloat-query1.FieldByName('deb4').AsFloat-query1.FieldByName('deb5').AsFloat-
                        query1.FieldByName('deb6').AsFloat-query1.FieldByName('deb7').AsFloat-query1.FieldByName('deb8').AsFloat-
                        query1.FieldByName('deb9').AsFloat-query1.FieldByName('deb10').AsFloat-query1.FieldByName('deb11').AsFloat-
                        query1.FieldByName('deb12').AsFloat;
                   end;
                 lb1.Enabled:=true;
                 lb2.Enabled:=true;
                 lb3.Enabled:=true;
                 lb4.Enabled:=true;
                 lb5.Enabled:=true;
                 lb6.Enabled:=true;
                 lb7.Enabled:=true;
                 lb8.Enabled:=true;
                 lb9.Enabled:=true;
                 lb10.Enabled:=true;
                 lb11.Enabled:=true;
                 lb12.Enabled:=true;
                 lb13.Enabled:=true;
                 lb14.Enabled:=true;
                 QRBand2.Height:=195;
                 SummaryBand1.Enabled:=false;
               end
               else
               begin
                if copy(medatainicial.text,1,2)='01' then
                   begin
                     if copy(medatainicial.Text,4,2)='01' then
                        qrsaldoant.Expression:='saldoant'
                     else if copy(medatainicial.Text,4,2)='02' then
                        qrsaldoant.Expression:='saldoant+cred1-deb1'
                     else if copy(medatainicial.Text,4,2)='03' then
                        qrsaldoant.Expression:='saldoant+cred1+cred2-deb1-deb2'
                     else if copy(medatainicial.Text,4,2)='04' then
                        qrsaldoant.Expression:='saldoant+cred1+cred2+cred3-deb1-deb2-deb3'
                     else if copy(medatainicial.Text,4,2)='05' then
                        qrsaldoant.Expression:='saldoant+cred1+cred2+cred3+cred4-deb1-deb2-deb3-deb4'
                     else if copy(medatainicial.Text,4,2)='06' then
                        qrsaldoant.Expression:='saldoant+cred1+cred2+cred3+cred4+cred5-deb1-deb2-deb3-deb4-deb5'
                     else if copy(medatainicial.Text,4,2)='07' then
                        qrsaldoant.Expression:='saldoant+cred1+cred2+cred3+cred4+cred5+cred6-deb1-deb2-deb3-deb4-deb5-deb6'
                     else if copy(medatainicial.Text,4,2)='08' then
                        qrsaldoant.Expression:='saldoant+cred1+cred2+cred3+cred4+cred5+cred6+cred7-deb1-deb2-deb3-deb4-deb5-deb6-deb7'
                     else if copy(medatainicial.Text,4,2)='09' then
                        qrsaldoant.Expression:='saldoant+cred1+cred2+cred3+cred4+cred5+cred6+cred7+cred8-deb1-deb2-deb3-deb4-deb5-deb6-deb7-deb8'
                     else if copy(medatainicial.Text,4,2)='10' then
                        qrsaldoant.Expression:='saldoant+cred1+cred2+cred3+cred4+cred5+cred6+cred7+cred8+cred9-deb1-deb2-deb3-deb4-deb5-deb6-deb7-deb8-deb9'
                     else if copy(medatainicial.Text,4,2)='11' then
                        qrsaldoant.Expression:='saldoant+cred1+cred2+cred3+cred4+cred5+cred6+cred7+cred8+cred9+cred10-deb1-deb2-deb3-deb4-deb5-deb6-deb7-deb8-deb9-deb10'
                     else if copy(medatainicial.Text,4,2)='12' then
                        qrsaldoant.Expression:='saldoant+cred1+cred2+cred3+cred4+cred5+cred6+cred7+cred8+cred9+cred10+cred11-deb1-deb2-deb3-deb4-deb5-deb6-deb7-deb8-deb9-deb10-deb11';
                   end
                   else
                   begin
                     if copy(medatainicial.Text,4,2)='01' then
                        qrsaldoant.Expression:='saldoant+cred1-deb1'
                     else if copy(medatainicial.Text,4,2)='02' then
                        qrsaldoant.Expression:='saldoant+cred1+cred2-deb1-deb2'
                     else if copy(medatainicial.Text,4,2)='03' then
                        qrsaldoant.Expression:='saldoant+cred1+cred2+cred3-deb1-deb2-deb3'
                     else if copy(medatainicial.Text,4,2)='04' then
                        qrsaldoant.Expression:='saldoant+cred1+cred2+cred3+cred4-deb1-deb2-deb3-deb4'
                     else if copy(medatainicial.Text,4,2)='05' then
                        qrsaldoant.Expression:='saldoant+cred1+cred2+cred3+cred4+cred5-deb1-deb2-deb3-deb4-deb5'
                     else if copy(medatainicial.Text,4,2)='06' then
                        qrsaldoant.Expression:='saldoant+cred1+cred2+cred3+cred4+cred5+cred6-deb1-deb2-deb3-deb4-deb5-deb6'
                     else if copy(medatainicial.Text,4,2)='07' then
                        qrsaldoant.Expression:='saldoant+cred1+cred2+cred3+cred4+cred5+cred6+cred7-deb1-deb2-deb3-deb4-deb5-deb6-deb7'
                     else if copy(medatainicial.Text,4,2)='08' then
                        qrsaldoant.Expression:='saldoant+cred1+cred2+cred3+cred4+cred5+cred6+cred7+cred8-deb1-deb2-deb3-deb4-deb5-deb6-deb7-deb8'
                     else if copy(medatainicial.Text,4,2)='09' then
                        qrsaldoant.Expression:='saldoant+cred1+cred2+cred3+cred4+cred5+cred6+cred7+cred8+cred9-deb1-deb2-deb3-deb4-deb5-deb6-deb7-deb8-deb9'
                     else if copy(medatainicial.Text,4,2)='10' then
                        qrsaldoant.Expression:='saldoant+cred1+cred2+cred3+cred4+cred5+cred6+cred7+cred8+cred9+cred10-deb1-deb2-deb3-deb4-deb5-deb6-deb7-deb8-deb9-deb10'
                     else if copy(medatainicial.Text,4,2)='11' then
                        qrsaldoant.Expression:='saldoant+cred1+cred2+cred3+cred4+cred5+cred6+cred7+cred8+cred9+cred10+cred11-deb1-deb2-deb3-deb4-deb5-deb6-deb7-deb8-deb9-deb10-deb11'
                     else if copy(medatainicial.Text,4,2)='12' then
                        qrsaldoant.Expression:='saldoant+cred1+cred2+cred3+cred4+cred5+cred6+cred7+cred8+cred9+cred10+cred11+cred12-deb1-deb2-deb3-deb4-deb5-deb6-deb7-deb8-deb9-deb10-deb11-deb12';
                   end;
                 SummaryBand1.Enabled:=true;
                 QRBand2.Height:=28;
                 lb1.Enabled:=false;
                 lb2.Enabled:=false;
                 lb3.Enabled:=false;
                 lb4.Enabled:=false;
                 lb5.Enabled:=false;
                 lb6.Enabled:=false;
                 lb7.Enabled:=false;
                 lb8.Enabled:=false;
                 lb9.Enabled:=false;
                 lb10.Enabled:=false;
                 lb11.Enabled:=false;
                 lb12.Enabled:=false;
                 lb13.Enabled:=false;
                 lb14.Enabled:=false;
               end;
            qrant.Caption:='Saldo Anterior R$. . . . . . . . . . : '+formatfloat('#,##0.00',saldoAnterior);
            if rb1.Checked=true then
               begin
                 Quickrep2.preview;
                 qrantII.Enabled:=true;
                 qrantIII.Enabled:=true;
               end
               else
               begin
                 Quickrep1.preview;
                 qrantII.Enabled:=false;
                 qrantIII.Enabled:=false;
               end;
         end;
end;

procedure TFrmRelCCImp.bt2Click(Sender: TObject);
begin
      close;
end;

end.
