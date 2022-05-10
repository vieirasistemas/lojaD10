unit UnitFrmReceberImp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, DB, RLXLSFilter, RLFilters, RLPDFFilter,
  RLDraftFilter, DBTables, EditAlinhado, StdCtrls, Mask, Buttons, QRCtrls,
  QuickRpt, ExtCtrls, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFrmReceberImp = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    qrdescricao: TRLDBText;
    RLDBText3: TRLDBText;
    RLBand2: TRLBand;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLBand3: TRLBand;
    qrrazaoI: TRLDBText;
    RLDBText7: TRLDBText;
    RLLabel6: TRLLabel;
    RLDBText8: TRLDBText;
    qrtitulo: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RLBand5: TRLBand;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLDBText2: TRLDBText;
    RLDBResult3: TRLDBResult;
    RLLabel1: TRLLabel;
    RLDBText9: TRLDBText;
    RLLabel11: TRLLabel;
    RLDBText6: TRLDBText;
    RLLabel7: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel10: TRLLabel;
    RLDBText4: TRLDBText;
    RLDBResult1: TRLDBResult;
    RLLabel12: TRLLabel;
    RLDBText10: TRLDBText;
    RLLabel13: TRLLabel;
    RLDBText11: TRLDBText;
    MeDataInicial: TMaskEdit;
    Label29: TLabel;
    Label5: TLabel;
    MeDataFinal: TMaskEdit;
    medtinicial: TMaskEdit;
    Label25: TLabel;
    Label38: TLabel;
    medtfinal: TMaskEdit;
    mefinal: TMaskEdit;
    Label39: TLabel;
    meinicial: TMaskEdit;
    Label37: TLabel;
    GroupBox1: TGroupBox;
    rb1: TRadioButton;
    rb2: TRadioButton;
    rb5: TRadioButton;
    rbgeral: TRadioButton;
    cbtipoI: TComboBox;
    Label7: TLabel;
    edclienteI: TEdit;
    Label31: TLabel;
    lbclienteI: TLabel;
    bt1: TBitBtn;
    bt2: TBitBtn;
    RLReport2: TRLReport;
    RLBand6: TRLBand;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLBand7: TRLBand;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLBand8: TRLBand;
    qrrazao: TRLDBText;
    RLDBText22: TRLDBText;
    RLLabel23: TRLLabel;
    RLDBText23: TRLDBText;
    qrtituloI: TRLLabel;
    RLSystemInfo4: TRLSystemInfo;
    RLSystemInfo5: TRLSystemInfo;
    RLSystemInfo6: TRLSystemInfo;
    RLBand10: TRLBand;
    RLLabel27: TRLLabel;
    RLDBResult2: TRLDBResult;
    RLDBResult4: TRLDBResult;
    RLLabel28: TRLLabel;
    RLLabel29: TRLLabel;
    RLDBText24: TRLDBText;
    RLDBText25: TRLDBText;
    RLDBResult5: TRLDBResult;
    RLDBResult6: TRLDBResult;
    Label48: TLabel;
    QuickRep1: TQuickRep;
    QRGroup1: TQRGroup;
    QRDBText1: TQRDBText;
    QRBand1: TQRBand;
    qr1: TQRDBText;
    qr3: TQRDBText;
    qr6: TQRExpr;
    PageHeaderBand1: TQRBand;
    QRShape1: TQRShape;
    QRLabel15: TQRLabel;
    qrtituloII: TQRLabel;
    QRLabel21: TQRLabel;
    QRSysData4: TQRSysData;
    QRSysData3: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    SummaryBand1: TQRBand;
    QRLabel13: TQRLabel;
    QRExpr28: TQRExpr;
    QRExpr18: TQRExpr;
    QRLabel14: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel16: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRBand2: TQRBand;
    QRLabel7: TQRLabel;
    QRExpr4: TQRExpr;
    QRExpr16: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRDBText9: TQRDBText;
    qratualizar: TZQuery;
    procedure bt2Click(Sender: TObject);
    procedure MeDataInicialExit(Sender: TObject);
    procedure MeDataFinalExit(Sender: TObject);
    procedure medtinicialExit(Sender: TObject);
    procedure medtfinalExit(Sender: TObject);
    procedure meinicialExit(Sender: TObject);
    procedure mefinalExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edclienteIExit(Sender: TObject);
    procedure edclienteIKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure bt1Click(Sender: TObject);
    procedure rb1Click(Sender: TObject);
    procedure rb2Click(Sender: TObject);
    procedure rb5Click(Sender: TObject);
    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmReceberImp: TFrmReceberImp;
  atraso,juros,multa,valoratraso:real;

implementation

uses Unitdm, UnitFrmCadClientes;

{$R *.dfm}

procedure AtualizarVencidos;
begin
        dm.DocReceberGeral.Close;
        dm.DocReceberGeral.SQL.Clear;
        dm.DocReceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
        dm.DocReceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
        dm.DocReceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
        dm.DocReceberGeral.SQL.Add('from Clientes C, DocReceber D');
        dm.DocReceberGeral.SQL.Add('where (D.cliente=C.codigo) and (pgto is null) and (vencto<CURDATE())');
        dm.DocReceberGeral.Open;

        dm.parametros.Open;
        while not dm.DocReceberGeral.Eof do
              begin
                atraso:=0;
                atraso:=Int(date-dm.DocReceberGeralvencto.value);
                if atraso>0 then
                   begin
                     juros:=(dm.parametrosJuros1.value*dm.DocReceberGeralliquido.value)/100/30*atraso;
                     multa:=(dm.DocReceberGeralliquido.value*dm.parametrosMulta1.value)/100;
                     valoratraso:=dm.DocReceberGeralliquido.Value+juros+multa;
                   end
                   else
                   begin
                     juros := 0;
                     multa := 0;
                     atraso := 0;
                     valoratraso:=dm.DocReceberGeralliquido.Value;
                   end;

                FrmReceberImp.qratualizar.Close;
                FrmReceberImp.qratualizar.SQL.Clear;
                FrmReceberImp.qratualizar.SQL.Add('update docreceber set');
                FrmReceberImp.qratualizar.SQL.Add('juros1 = :juros,');
                FrmReceberImp.qratualizar.SQL.Add('multa1 = :multa,');
                FrmReceberImp.qratualizar.SQL.Add('atraso = :atraso,');
                FrmReceberImp.qratualizar.SQL.Add('valoratraso = :valoratraso');
                FrmReceberImp.qratualizar.sql.add('where cod = '+chr(39)+IntToStr(dm.DocReceberGeralcod.Value)+chr(39));
                FrmReceberImp.qratualizar.Params[0].Value := juros;
                FrmReceberImp.qratualizar.Params[1].Value := multa;
                FrmReceberImp.qratualizar.Params[2].Value := atraso;
                FrmReceberImp.qratualizar.Params[3].Value := valoratraso;
                FrmReceberImp.qratualizar.ExecSQL;
                dm.DocReceberGeral.Next;
              end;
end;

procedure AtualizaraVencer;
begin
        dm.DocReceberGeral.Close;
        dm.DocReceberGeral.SQL.Clear;
        dm.DocReceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
        dm.DocReceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
        dm.DocReceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
        dm.DocReceberGeral.SQL.Add('from Clientes C, DocReceber D');
        dm.DocReceberGeral.SQL.Add('where (D.cliente=C.codigo) and (pgto is null) and (vencto>=CURDATE())');
        dm.DocReceberGeral.Open;

        while not dm.DocReceberGeral.Eof do
              begin
                juros := 0;
                multa := 0;
                atraso := 0;
                valoratraso:=dm.DocReceberGeralliquido.Value;

                FrmReceberImp.qratualizar.Close;
                FrmReceberImp.qratualizar.SQL.Clear;
                FrmReceberImp.qratualizar.SQL.Add('update docreceber set');
                FrmReceberImp.qratualizar.SQL.Add('juros1 = :juros,');
                FrmReceberImp.qratualizar.SQL.Add('multa1 = :multa,');
                FrmReceberImp.qratualizar.SQL.Add('atraso = :atraso,');
                FrmReceberImp.qratualizar.SQL.Add('valoratraso = :valoratraso');
                FrmReceberImp.qratualizar.sql.add('where cod = '+chr(39)+IntToStr(dm.DocReceberGeralcod.Value)+chr(39));
                FrmReceberImp.qratualizar.Params[0].Value := juros;
                FrmReceberImp.qratualizar.Params[1].Value := multa;
                FrmReceberImp.qratualizar.Params[2].Value := atraso;
                FrmReceberImp.qratualizar.Params[3].Value := valoratraso;
                FrmReceberImp.qratualizar.ExecSQL;
                dm.DocReceberGeral.Next;
              end;
end;

procedure vencidas;
begin
        AtualizarVencidos;
        dm.DocReceberGeral.Close;
        dm.DocReceberGeral.SQL.Clear;
        dm.DocReceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
        dm.DocReceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
        dm.DocReceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
        dm.DocReceberGeral.SQL.Add('from Clientes C, DocReceber D');
        dm.DocReceberGeral.SQL.Add('where (D.cliente=C.codigo) and (pgto is null) and (vencto<CURDATE())');
        dm.DocReceberGeral.SQL.Add('order by D.vencto');
        dm.DocReceberGeral.Open;
end;

procedure avencer;
begin
        AtualizaraVencer;
        dm.DocReceberGeral.Close;
        dm.DocReceberGeral.SQL.Clear;
        dm.DocReceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
        dm.DocReceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
        dm.DocReceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
        dm.DocReceberGeral.SQL.Add('from Clientes C, DocReceber D');
        dm.DocReceberGeral.SQL.Add('where (D.cliente=C.codigo) and (pgto is null) and (vencto>=CURDATE())');
        dm.DocReceberGeral.SQL.Add('order by D.vencto');
        dm.DocReceberGeral.Open;
end;

procedure EmAberto;
begin
        AtualizaraVencer;
        AtualizarVencidos;
        dm.DocReceberGeral.Close;
        dm.DocReceberGeral.SQL.Clear;
        dm.DocReceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
        dm.DocReceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
        dm.DocReceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
        dm.DocReceberGeral.SQL.Add('from Clientes C, DocReceber D');
        dm.DocReceberGeral.SQL.Add('where (D.cliente=C.codigo) and (pgto is null)');
        dm.DocReceberGeral.SQL.Add('order by D.vencto');
        dm.DocReceberGeral.Open;
end;

procedure TFrmReceberImp.bt2Click(Sender: TObject);
begin
      close;  
end;

procedure TFrmReceberImp.MeDataInicialExit(Sender: TObject);
begin
        if MeDataInicial.text<>'  /  /    ' then
        begin
        Try
           StrToDate(MeDataInicial.Text) ;
        Except
        begin
           application.MessageBox('Data Inv�lida!','Administrador',mb_Ok+mb_iconerror);
           MeDataInicial.setfocus;
        end;
        end;
        end;
end;

procedure TFrmReceberImp.MeDataFinalExit(Sender: TObject);
begin
        if MeDataFinal.text<>'  /  /    ' then
        begin
        Try
           StrToDate(MeDataFinal.Text) ;
           If StrToDate(MeDataInicial.Text) > StrToDate(MeDataFinal.Text) then
              Begin
                 MessageBox(Handle, 'Data inferior � data inicial de pesquisa!!', 'Administrador', mb_IconWarning or mb_Ok);
                 MeDataFinal.SetFocus;
              End;
        Except
        begin
           application.MessageBox('Data Inv�lida!','Administrador',mb_Ok+mb_iconerror);
           MeDataFinal.setfocus;
        end;
        end;
        end;
end;

procedure TFrmReceberImp.medtinicialExit(Sender: TObject);
begin
        if medtinicial.text<>'  /  /    ' then
        begin
        Try
           StrToDate(medtinicial.Text) ;
        Except
        begin
           application.MessageBox('Data Inv�lida!','Administrador',mb_Ok+mb_iconerror);
           medtinicial.setfocus;
        end;
        end;
        end;
end;

procedure TFrmReceberImp.medtfinalExit(Sender: TObject);
begin
        if medtfinal.text<>'  /  /    ' then
        begin
        Try
           StrToDate(medtfinal.Text) ;
           If StrToDate(MeDtInicial.Text) > StrToDate(medtfinal.Text) then
              Begin
                 MessageBox(Handle, 'Data inferior � data inicial de pesquisa!!', 'Administrador', mb_IconWarning or mb_Ok);
                 medtfinal.SetFocus;
              End;
        Except
        begin
           application.MessageBox('Data Inv�lida!','Administrador',mb_Ok+mb_iconerror);
           medtfinal.setfocus;
        end;
        end;
        end;
end;

procedure TFrmReceberImp.meinicialExit(Sender: TObject);
begin
        if meinicial.text<>'  /  /    ' then
        begin
        Try
           StrToDate(meinicial.Text) ;
        Except
        begin
           application.MessageBox('Data Inv�lida!','Administrador',mb_Ok+mb_iconerror);
           meinicial.setfocus;
        end;
        end;
        end;
end;

procedure TFrmReceberImp.mefinalExit(Sender: TObject);
begin
        if mefinal.text<>'  /  /    ' then
        begin
        Try
           StrToDate(mefinal.Text) ;
           If StrToDate(MeInicial.Text) > StrToDate(mefinal.Text) then
              Begin
                 MessageBox(Handle, 'Data inferior � data inicial de pesquisa!!', 'Administrador', mb_IconWarning or mb_Ok);
                 mefinal.SetFocus;
              End;
        Except
        begin
           application.MessageBox('Data Inv�lida!','Administrador',mb_Ok+mb_iconerror);
           mefinal.setfocus;
        end;
        end;
        end;
end;

procedure TFrmReceberImp.FormShow(Sender: TObject);
begin
      dm.formapagto.Close;
      dm.formapagto.SQL.Clear;
      dm.formapagto.SQL.Add('select * from formapagto');
      dm.formapagto.Open;
      cbtipoI.Items.Clear;
      while not dm.formapagto.Eof do
            begin
              cbtipoI.Items.Add(dm.formapagtocodigo.Value+' - '+
              dm.formapagtodescricao.Value);
              dm.formapagto.Next;
            end;
end;

procedure TFrmReceberImp.edclienteIExit(Sender: TObject);
begin
      if edclienteI.Text<>'' then
         begin
            dm.Clientes.close;
            dm.Clientes.sql.clear;
            dm.Clientes.sql.add('select * from clientes');
            dm.Clientes.sql.add('where codigo = '+edclienteI.text);
            dm.Clientes.open;
            if dm.Clientes.RecordCount<1 then
               begin
                 application.MessageBox('Cliente n�o Localizado','Aten��o',mb_ok+mb_iconinformation);
                 edclienteI.SetFocus;
               end
               else
                 lbclienteI.Caption:=dm.Clientesnome.value;
         end
         else
           lbclienteI.Caption:='';
end;

procedure TFrmReceberImp.edclienteIKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key=vk_f10 then
           begin
             try
               Application.CreateForm(TFrmCadClientes, FrmCadClientes);
               FrmCadClientes.showmodal;
             finally
               FrmCadClientes.Release;
               FrmCadClientes:=nil;
             end;
           end;
end;

procedure TFrmReceberImp.FormKeyPress(Sender: TObject; var Key: Char);
begin
      if Key = CHR(13) Then
         Begin
           perform(WM_NextDlgCtl,0,0);
           Key := CHR(0);
         End;
end;

procedure TFrmReceberImp.bt1Click(Sender: TObject);
begin
        //Consulta por Doc. Vencidos
        if rb1.Checked then
           begin
             //Vencidos por Cliente
             if (MeDataFinal.text='  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (mefinal.text='  /  /    ') and
                (edclienteI.Text<>'') and
                (cbtipoI.Text='') then
                begin
                  dm.DocReceberGeral.Close;
                  dm.DocReceberGeral.SQL.Clear;
                  dm.DocReceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.DocReceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.DocReceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.DocReceberGeral.SQL.Add('from Clientes C, DocReceber D');
                  dm.DocReceberGeral.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.DocReceberGeral.SQL.Add('and (D.vencto<CURDATE()) and');
                  dm.DocReceberGeral.SQL.Add('(D.cliente = '+edclienteI.text+')');
                  dm.DocReceberGeral.SQL.Add('order by D.vencto');
                  dm.DocReceberGeral.Open;
                end

             //Vencidos por Tipo do Documento
             else if (MeDataFinal.text='  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (mefinal.text='  /  /    ') and
                (lbclienteI.caption='') and
                (cbtipoI.Text<>'') then
                begin
                  dm.DocReceberGeral.Close;
                  dm.DocReceberGeral.SQL.Clear;
                  dm.DocReceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.DocReceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.DocReceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.DocReceberGeral.SQL.Add('from Clientes C, DocReceber D');
                  dm.DocReceberGeral.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.DocReceberGeral.SQL.Add('and (D.vencto<CURDATE()) and');
                  dm.DocReceberGeral.SQL.Add('(D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.DocReceberGeral.SQL.Add('order by D.vencto');
                  dm.DocReceberGeral.Open;
                end

             //Vencidos por Per�odo
             else if (MeDataFinal.text='  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (mefinal.text='  /  /    ') and
                (lbclienteI.caption='') and
                (cbtipoI.Text='') then
                begin
                  dm.DocReceberGeral.Close;
                  dm.DocReceberGeral.SQL.Clear;
                  dm.DocReceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.DocReceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.DocReceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.DocReceberGeral.SQL.Add('from Clientes C, DocReceber D');
                  dm.DocReceberGeral.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.DocReceberGeral.SQL.Add('and (D.vencto<CURDATE()) and');
                  dm.DocReceberGeral.SQL.Add('(D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.DocReceberGeral.SQL.Add('order by D.vencto');
                  dm.DocReceberGeral.Open;
                end

             //Vencidos por Per�do e Cliente
             else if (MeDataFinal.text='  /  /    ') and
                (mefinal.text='  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (lbclienteI.caption<>'') and
                (cbtipoI.Text='') then
                begin
                  dm.DocReceberGeral.Close;
                  dm.DocReceberGeral.SQL.Clear;
                  dm.DocReceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.DocReceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.DocReceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.DocReceberGeral.SQL.Add('from Clientes C, DocReceber D');
                  dm.DocReceberGeral.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.DocReceberGeral.SQL.Add('and (D.vencto<CURDATE()) and');
                  dm.DocReceberGeral.SQL.Add('(D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.DocReceberGeral.SQL.Add('and (D.cliente = '+edclienteI.text+')');
                  dm.DocReceberGeral.SQL.Add('order by D.vencto');
                  dm.DocReceberGeral.Open;
                end

             //Vencidos por Per�do e Tipo
             else if (MeDataFinal.text='  /  /    ') and
                (mefinal.text='  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (lbclienteI.caption='') and
                (cbtipoI.Text<>'') then
                begin
                  dm.DocReceberGeral.Close;
                  dm.DocReceberGeral.SQL.Clear;
                  dm.DocReceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.DocReceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.DocReceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.DocReceberGeral.SQL.Add('from Clientes C, DocReceber D');
                  dm.DocReceberGeral.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.DocReceberGeral.SQL.Add('and (D.vencto<CURDATE()) and');
                  dm.DocReceberGeral.SQL.Add('(D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.DocReceberGeral.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.DocReceberGeral.SQL.Add('order by D.vencto');
                  dm.DocReceberGeral.Open;
                end;
           end
        //Consulta por Doc. � Vencer
        else if rb2.Checked then
           begin
             //� Vencer por Cliente
             if (MeDataFinal.text='  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (mefinal.text='  /  /    ') and
                (edclienteI.Text<>'') and
                (cbtipoI.Text='') then
                begin
                  dm.DocReceberGeral.Close;
                  dm.DocReceberGeral.SQL.Clear;
                  dm.DocReceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.DocReceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.DocReceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.DocReceberGeral.SQL.Add('from Clientes C, DocReceber D');
                  dm.DocReceberGeral.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.DocReceberGeral.SQL.Add('and (D.vencto>=CURDATE()) and');
                  dm.DocReceberGeral.SQL.Add('(D.cliente = '+edclienteI.text+')');
                  dm.DocReceberGeral.SQL.Add('order by D.vencto');
                  dm.DocReceberGeral.Open;
                end

             //� Vencer por Tipo do Documento
             else if (MeDataFinal.text='  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (mefinal.text='  /  /    ') and
                (lbclienteI.caption='') and
                (cbtipoI.Text<>'') then
                begin
                  dm.DocReceberGeral.Close;
                  dm.DocReceberGeral.SQL.Clear;
                  dm.DocReceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.DocReceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.DocReceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.DocReceberGeral.SQL.Add('from Clientes C, DocReceber D');
                  dm.DocReceberGeral.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.DocReceberGeral.SQL.Add('and (D.vencto>=CURDATE()) and');
                  dm.DocReceberGeral.SQL.Add('(D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.DocReceberGeral.SQL.Add('order by D.vencto');
                  dm.DocReceberGeral.Open;
                end

             //� Vencer por Per�odo de Vencimento
             else if (MeDataFinal.text='  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (mefinal.text='  /  /    ') and
                (lbclienteI.caption='') and
                (cbtipoI.Text='') then
                begin
                  dm.DocReceberGeral.Close;
                  dm.DocReceberGeral.SQL.Clear;
                  dm.DocReceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.DocReceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.DocReceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.DocReceberGeral.SQL.Add('from Clientes C, DocReceber D');
                  dm.DocReceberGeral.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.DocReceberGeral.SQL.Add('and (D.vencto>=CURDATE()) and');
                  dm.DocReceberGeral.SQL.Add('(D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.DocReceberGeral.SQL.Add('order by D.vencto');
                  dm.DocReceberGeral.Open;
                end

             //� Vencer por Per�odo de Emiss�o
             else if (MeDataFinal.text<>'  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (mefinal.text='  /  /    ') and
                (lbclienteI.caption='') and
                (cbtipoI.Text='') then
                begin
                  dm.DocReceberGeral.Close;
                  dm.DocReceberGeral.SQL.Clear;
                  dm.DocReceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.DocReceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.DocReceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.DocReceberGeral.SQL.Add('from Clientes C, DocReceber D');
                  dm.DocReceberGeral.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.DocReceberGeral.SQL.Add('and (D.vencto>=CURDATE()) and');
                  dm.DocReceberGeral.SQL.Add('(D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.DocReceberGeral.SQL.Add('order by D.emissao');
                  dm.DocReceberGeral.Open;
                end

             //� Vencer por Per�do de Vencimento e Cliente
             else if (MeDataFinal.text='  /  /    ') and
                (mefinal.text='  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (lbclienteI.caption<>'') and
                (cbtipoI.Text='') then
                begin
                  dm.DocReceberGeral.Close;
                  dm.DocReceberGeral.SQL.Clear;
                  dm.DocReceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.DocReceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.DocReceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.DocReceberGeral.SQL.Add('from Clientes C, DocReceber D');
                  dm.DocReceberGeral.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.DocReceberGeral.SQL.Add('and (D.vencto>=CURDATE()) and');
                  dm.DocReceberGeral.SQL.Add('(D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.DocReceberGeral.SQL.Add('and (D.cliente = '+edclienteI.text+')');
                  dm.DocReceberGeral.SQL.Add('order by D.vencto');
                  dm.DocReceberGeral.Open;
                end

             //� Vencer por Per�do de Emiss�o e Cliente
             else if (MeDataFinal.text<>'  /  /    ') and
                (mefinal.text='  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (lbclienteI.caption<>'') and
                (cbtipoI.Text='') then
                begin
                  dm.DocReceberGeral.Close;
                  dm.DocReceberGeral.SQL.Clear;
                  dm.DocReceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.DocReceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.DocReceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.DocReceberGeral.SQL.Add('from Clientes C, DocReceber D');
                  dm.DocReceberGeral.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.DocReceberGeral.SQL.Add('and (D.vencto>=CURDATE()) and');
                  dm.DocReceberGeral.SQL.Add('(D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.DocReceberGeral.SQL.Add('and (D.cliente = '+edclienteI.text+')');
                  dm.DocReceberGeral.SQL.Add('order by D.emissao');
                  dm.DocReceberGeral.Open;
                end

             //� Vencer por Per�do de Vencimento e Tipo
             else if (MeDataFinal.text='  /  /    ') and
                (mefinal.text='  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (lbclienteI.caption='') and
                (cbtipoI.Text<>'') then
                begin
                  dm.DocReceberGeral.Close;
                  dm.DocReceberGeral.SQL.Clear;
                  dm.DocReceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.DocReceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.DocReceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.DocReceberGeral.SQL.Add('from Clientes C, DocReceber D');
                  dm.DocReceberGeral.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.DocReceberGeral.SQL.Add('and (D.vencto>=CURDATE()) and');
                  dm.DocReceberGeral.SQL.Add('(D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.DocReceberGeral.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.DocReceberGeral.SQL.Add('order by D.vencto');
                  dm.DocReceberGeral.Open;
                end;
           end
        //Consulta por Doc. Em Aberto
        else if rb5.Checked then
           begin
             //Em aberto por cliente
             if (MeDataFinal.text='  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (mefinal.text='  /  /    ') and
                (edclienteI.Text<>'') and
                (cbtipoI.Text='') then
                begin
                  dm.DocReceberGeral.Close;
                  dm.DocReceberGeral.SQL.Clear;
                  dm.DocReceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.DocReceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.DocReceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.DocReceberGeral.SQL.Add('from Clientes C, DocReceber D');
                  dm.DocReceberGeral.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.DocReceberGeral.SQL.Add('and (D.cliente = '+edclienteI.text+')');
                  dm.DocReceberGeral.SQL.Add('order by D.vencto');
                  dm.DocReceberGeral.Open;
                end

             //Em aberto por tipo
             else if (MeDataFinal.text='  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (mefinal.text='  /  /    ') and
                (edclienteI.Text='') and
                (cbtipoI.Text<>'') then
                begin
                  dm.DocReceberGeral.Close;
                  dm.DocReceberGeral.SQL.Clear;
                  dm.DocReceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.DocReceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.DocReceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.DocReceberGeral.SQL.Add('from Clientes C, DocReceber D');
                  dm.DocReceberGeral.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.DocReceberGeral.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.DocReceberGeral.SQL.Add('order by D.vencto');
                  dm.DocReceberGeral.Open;
                end

             //Em aberto por per�odo de vencimento
             else if (MeDataFinal.text='  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (mefinal.text='  /  /    ') and
                (edclienteI.Text='') and
                (cbtipoI.Text='') then
                begin
                  dm.DocReceberGeral.Close;
                  dm.DocReceberGeral.SQL.Clear;
                  dm.DocReceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.DocReceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.DocReceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.DocReceberGeral.SQL.Add('from Clientes C, DocReceber D');
                  dm.DocReceberGeral.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.DocReceberGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(medtfinal.text,7,4)+'/'+copy(medtfinal.text,4,2)+'/'+
                  copy(medtfinal.text,1,2)+chr(39)+')');
                  dm.DocReceberGeral.SQL.Add('order by D.vencto');
                  dm.DocReceberGeral.Open;
                end

             //Em aberto por per�odo de emiss�o
             else if (MeDataFinal.text<>'  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (mefinal.text='  /  /    ') and
                (edclienteI.Text='') and
                (cbtipoI.Text='') then
                begin
                  dm.DocReceberGeral.Close;
                  dm.DocReceberGeral.SQL.Clear;
                  dm.DocReceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.DocReceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.DocReceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.DocReceberGeral.SQL.Add('from Clientes C, DocReceber D');
                  dm.DocReceberGeral.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.DocReceberGeral.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.DocReceberGeral.SQL.Add('order by D.emissao');
                  dm.DocReceberGeral.Open;
                end

             //Em aberto por per�odo de vencimento e cliente
             else if (MeDataFinal.text='  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (mefinal.text='  /  /    ') and
                (edclienteI.Text<>'') and
                (cbtipoI.Text='') then
                begin
                  dm.DocReceberGeral.Close;
                  dm.DocReceberGeral.SQL.Clear;
                  dm.DocReceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.DocReceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.DocReceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.DocReceberGeral.SQL.Add('from Clientes C, DocReceber D');
                  dm.DocReceberGeral.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.DocReceberGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(medtfinal.text,7,4)+'/'+copy(medtfinal.text,4,2)+'/'+
                  copy(medtfinal.text,1,2)+chr(39)+')');
                  dm.DocReceberGeral.SQL.Add('and (D.cliente = '+edclienteI.text+')');
                  dm.DocReceberGeral.SQL.Add('order by D.vencto');
                  dm.DocReceberGeral.Open;
                end

             //Em aberto por per�odo de emiss�o e cliente
             else if (MeDataFinal.text<>'  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (mefinal.text='  /  /    ') and
                (edclienteI.Text<>'') and
                (cbtipoI.Text='') then
                begin
                  dm.DocReceberGeral.Close;
                  dm.DocReceberGeral.SQL.Clear;
                  dm.DocReceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.DocReceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.DocReceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.DocReceberGeral.SQL.Add('from Clientes C, DocReceber D');
                  dm.DocReceberGeral.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.DocReceberGeral.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.DocReceberGeral.SQL.Add('and (D.cliente = '+edclienteI.text+')');
                  dm.DocReceberGeral.SQL.Add('order by D.emissao');
                  dm.DocReceberGeral.Open;
                end

             //Em aberto por per�odo de vencimento e tipo
             else if (MeDataFinal.text='  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (mefinal.text='  /  /    ') and
                (edclienteI.Text='') and
                (cbtipoI.Text<>'') then
                begin
                  dm.DocReceberGeral.Close;
                  dm.DocReceberGeral.SQL.Clear;
                  dm.DocReceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.DocReceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.DocReceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.DocReceberGeral.SQL.Add('from Clientes C, DocReceber D');
                  dm.DocReceberGeral.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is null)');
                  dm.DocReceberGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(medtfinal.text,7,4)+'/'+copy(medtfinal.text,4,2)+'/'+
                  copy(medtfinal.text,1,2)+chr(39)+')');
                  dm.DocReceberGeral.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.DocReceberGeral.SQL.Add('order by D.vencto');
                  dm.DocReceberGeral.Open;
                end;
           end
           else
           begin
             //Liquidados por periodo
             if (mefinal.text<>'  /  /    ') and
                (MeDataFinal.text='  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (edclienteI.text='') and
                (cbtipoI.Text='') then
                begin
                  dm.DocReceberGeral.Close;
                  dm.DocReceberGeral.SQL.Clear;
                  dm.DocReceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.DocReceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.DocReceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.DocReceberGeral.SQL.Add('from Clientes C, DocReceber D');
                  dm.DocReceberGeral.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is not null)');
                  dm.DocReceberGeral.SQL.Add('and (D.pgto between '+chr(39)+
                  copy(meinicial.text,7,4)+'/'+copy(meinicial.text,4,2)+'/'+
                  copy(meinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeFinal.text,7,4)+'/'+copy(MeFinal.text,4,2)+'/'+
                  copy(MeFinal.text,1,2)+chr(39)+')');
                  dm.DocReceberGeral.SQL.Add('order by D.pgto');
                  dm.DocReceberGeral.Open;
                end

             //Liquidados por periodo e cliente
             else if (mefinal.text<>'  /  /    ') and
                (MeDataFinal.text='  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (edclienteI.text<>'') and
                (cbtipoI.Text='') then
                begin
                  dm.DocReceberGeral.Close;
                  dm.DocReceberGeral.SQL.Clear;
                  dm.DocReceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.DocReceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.DocReceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.DocReceberGeral.SQL.Add('from Clientes C, DocReceber D');
                  dm.DocReceberGeral.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is not null)');
                  dm.DocReceberGeral.SQL.Add('and (D.pgto between '+chr(39)+
                  copy(meinicial.text,7,4)+'/'+copy(meinicial.text,4,2)+'/'+
                  copy(meinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeFinal.text,7,4)+'/'+copy(MeFinal.text,4,2)+'/'+
                  copy(MeFinal.text,1,2)+chr(39)+')');
                  dm.DocReceberGeral.SQL.Add('and (D.cliente = '+edclienteI.text+')');
                  dm.DocReceberGeral.SQL.Add('order by D.pgto');
                  dm.DocReceberGeral.Open;
                end

             //Liquidados por periodo e tipo
             else if (mefinal.text<>'  /  /    ') and
                (MeDataFinal.text='  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (edclienteI.text='') and
                (cbtipoI.Text<>'') then
                begin
                  dm.DocReceberGeral.Close;
                  dm.DocReceberGeral.SQL.Clear;
                  dm.DocReceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.DocReceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.DocReceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.DocReceberGeral.SQL.Add('from Clientes C, DocReceber D');
                  dm.DocReceberGeral.SQL.Add('where (D.cliente=C.codigo) and (D.pgto is not null)');
                  dm.DocReceberGeral.SQL.Add('and (D.pgto between '+chr(39)+
                  copy(meinicial.text,7,4)+'/'+copy(meinicial.text,4,2)+'/'+
                  copy(meinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeFinal.text,7,4)+'/'+copy(MeFinal.text,4,2)+'/'+
                  copy(MeFinal.text,1,2)+chr(39)+')');
                  dm.DocReceberGeral.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.DocReceberGeral.SQL.Add('order by D.pgto');
                  dm.DocReceberGeral.Open;
                end

             //Emitidos por periodo
             else if (mefinal.text='  /  /    ') and
                (MeDataFinal.text<>'  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (edclienteI.text='') and
                (cbtipoI.Text='') then
                begin
                  dm.DocReceberGeral.Close;
                  dm.DocReceberGeral.SQL.Clear;
                  dm.DocReceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.DocReceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.DocReceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.DocReceberGeral.SQL.Add('from Clientes C, DocReceber D');
                  dm.DocReceberGeral.SQL.Add('where (D.cliente=C.codigo)');
                  dm.DocReceberGeral.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.DocReceberGeral.SQL.Add('order by D.emissao');
                  dm.DocReceberGeral.Open;
                end

             //Emitidos por periodo e cliente
             else if (mefinal.text='  /  /    ') and
                (MeDataFinal.text<>'  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (edclienteI.text<>'') and
                (cbtipoI.Text='') then
                begin
                  dm.DocReceberGeral.Close;
                  dm.DocReceberGeral.SQL.Clear;
                  dm.DocReceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.DocReceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.DocReceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.DocReceberGeral.SQL.Add('from Clientes C, DocReceber D');
                  dm.DocReceberGeral.SQL.Add('where (D.cliente=C.codigo)');
                  dm.DocReceberGeral.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.DocReceberGeral.SQL.Add('and (D.cliente = '+edclienteI.text+')');
                  dm.DocReceberGeral.SQL.Add('order by D.emissao');
                  dm.DocReceberGeral.Open;
                end

             //Emitidos por periodo e tipo
             else if (mefinal.text='  /  /    ') and
                (MeDataFinal.text<>'  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (edclienteI.text='') and
                (cbtipoI.Text<>'') then
                begin
                  dm.DocReceberGeral.Close;
                  dm.DocReceberGeral.SQL.Clear;
                  dm.DocReceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.DocReceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.DocReceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.DocReceberGeral.SQL.Add('from Clientes C, DocReceber D');
                  dm.DocReceberGeral.SQL.Add('where (D.cliente=C.codigo)');
                  dm.DocReceberGeral.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.DocReceberGeral.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.DocReceberGeral.SQL.Add('order by D.emissao');
                  dm.DocReceberGeral.Open;
                end

             //Vencimento no periodo
             else if (mefinal.text='  /  /    ') and
                (MeDataFinal.text='  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (edclienteI.text='') and
                (cbtipoI.Text='') then
                begin
                  dm.DocReceberGeral.Close;
                  dm.DocReceberGeral.SQL.Clear;
                  dm.DocReceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.DocReceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.DocReceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.DocReceberGeral.SQL.Add('from Clientes C, DocReceber D');
                  dm.DocReceberGeral.SQL.Add('where (D.cliente=C.codigo)');
                  dm.DocReceberGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(MeDtInicial.text,7,4)+'/'+copy(MeDtInicial.text,4,2)+'/'+
                  copy(MeDtInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(medtfinal.text,7,4)+'/'+copy(medtfinal.text,4,2)+'/'+
                  copy(medtfinal.text,1,2)+chr(39)+')');
                  dm.DocReceberGeral.SQL.Add('order by D.vencto');
                  dm.DocReceberGeral.Open;
                end

             //Vencimento no periodo por cliente
             else if (mefinal.text='  /  /    ') and
                (MeDataFinal.text='  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (edclienteI.text<>'') and
                (cbtipoI.Text='') then
                begin
                  dm.DocReceberGeral.Close;
                  dm.DocReceberGeral.SQL.Clear;
                  dm.DocReceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.DocReceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.DocReceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.DocReceberGeral.SQL.Add('from Clientes C, DocReceber D');
                  dm.DocReceberGeral.SQL.Add('where (D.cliente=C.codigo)');
                  dm.DocReceberGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(MeDtInicial.text,7,4)+'/'+copy(MeDtInicial.text,4,2)+'/'+
                  copy(MeDtInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(medtfinal.text,7,4)+'/'+copy(medtfinal.text,4,2)+'/'+
                  copy(medtfinal.text,1,2)+chr(39)+')');
                  dm.DocReceberGeral.SQL.Add('and (D.cliente = '+edclienteI.text+')');
                  dm.DocReceberGeral.SQL.Add('order by D.vencto');
                  dm.DocReceberGeral.Open;
                end

             //Vencimento no periodo por tipo
             else if (mefinal.text='  /  /    ') and
                (MeDataFinal.text='  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (edclienteI.text='') and
                (cbtipoI.Text<>'') then
                begin
                  dm.DocReceberGeral.Close;
                  dm.DocReceberGeral.SQL.Clear;
                  dm.DocReceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.DocReceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.DocReceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.DocReceberGeral.SQL.Add('from Clientes C, DocReceber D');
                  dm.DocReceberGeral.SQL.Add('where (D.cliente=C.codigo)');
                  dm.DocReceberGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(MeDtInicial.text,7,4)+'/'+copy(MeDtInicial.text,4,2)+'/'+
                  copy(MeDtInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(medtfinal.text,7,4)+'/'+copy(medtfinal.text,4,2)+'/'+
                  copy(medtfinal.text,1,2)+chr(39)+')');
                  dm.DocReceberGeral.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.DocReceberGeral.SQL.Add('order by D.vencto');
                  dm.DocReceberGeral.Open;
                end

             //Emitidos com Vencimento
             else if (mefinal.text='  /  /    ') and
                (MeDataFinal.text<>'  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (edclienteI.text='') and
                (cbtipoI.Text='') then
                begin
                  dm.DocReceberGeral.Close;
                  dm.DocReceberGeral.SQL.Clear;
                  dm.DocReceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.DocReceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.DocReceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.DocReceberGeral.SQL.Add('from Clientes C, DocReceber D');
                  dm.DocReceberGeral.SQL.Add('where (D.cliente=C.codigo)');
                  dm.DocReceberGeral.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.DocReceberGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(MeDtInicial.text,7,4)+'/'+copy(MeDtInicial.text,4,2)+'/'+
                  copy(MeDtInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.DocReceberGeral.SQL.Add('order by D.emissao');
                  dm.DocReceberGeral.Open;
                end

             //Emitidos com Vencimento por cliente
             else if (mefinal.text<>'  /  /    ') and
                (MeDataFinal.text<>'  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (edclienteI.text<>'') and
                (cbtipoI.Text='') then
                begin
                  dm.DocReceberGeral.Close;
                  dm.DocReceberGeral.SQL.Clear;
                  dm.DocReceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.DocReceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.DocReceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.DocReceberGeral.SQL.Add('from Clientes C, DocReceber D');
                  dm.DocReceberGeral.SQL.Add('where (D.cliente=C.codigo)');
                  dm.DocReceberGeral.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.DocReceberGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(MeDtInicial.text,7,4)+'/'+copy(MeDtInicial.text,4,2)+'/'+
                  copy(MeDtInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.DocReceberGeral.SQL.Add('and (D.cliente = '+edclienteI.text+')');
                  dm.DocReceberGeral.SQL.Add('order by D.emissao');
                  dm.DocReceberGeral.Open;
                end

             //por cliente
             else if (mefinal.text='  /  /    ') and
                (MeDataFinal.text='  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (edclienteI.text<>'') and
                (cbtipoI.Text='') then
                begin
                  dm.DocReceberGeral.Close;
                  dm.DocReceberGeral.SQL.Clear;
                  dm.DocReceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.DocReceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.DocReceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.DocReceberGeral.SQL.Add('from Clientes C, DocReceber D');
                  dm.DocReceberGeral.SQL.Add('where (D.cliente=C.codigo)');
                  dm.DocReceberGeral.SQL.Add('and (D.cliente = '+edclienteI.text+')');
                  dm.DocReceberGeral.SQL.Add('order by D.emissao');
                  dm.DocReceberGeral.Open;
                end

             //Emitidos com Vencimento por tipo
             else if (mefinal.text<>'  /  /    ') and
                (MeDataFinal.text<>'  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (edclienteI.text='') and
                (cbtipoI.Text<>'') then
                begin
                  dm.DocReceberGeral.Close;
                  dm.DocReceberGeral.SQL.Clear;
                  dm.DocReceberGeral.SQL.Add('select C.nome,D.doc,D.emissao,D.vencto,D.liquido,');
                  dm.DocReceberGeral.SQL.Add('D.tipo,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.DocReceberGeral.SQL.Add('D.pgto,D.valorpago,D.N_numero,D.cliente,D.nf');
                  dm.DocReceberGeral.SQL.Add('from Clientes C, DocReceber D');
                  dm.DocReceberGeral.SQL.Add('where (D.cliente=C.codigo)');
                  dm.DocReceberGeral.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.DocReceberGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(MeDtInicial.text,7,4)+'/'+copy(MeDtInicial.text,4,2)+'/'+
                  copy(MeDtInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.DocReceberGeral.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.DocReceberGeral.SQL.Add('order by D.emissao');
                  dm.DocReceberGeral.Open;
                end

           end;
      dm.parametros.Close;
      dm.parametros.Open;
      qrrazao.DataField:='razaosocial';
      qrrazao.DataSource:=dm.dsparametros;
      qrrazaoI.DataField:='razaosocial';
      qrrazaoI.DataSource:=dm.dsparametros;
      dm.parametros.Close;
      dm.parametros.Open;
      if rb2.Checked then
         begin
           qrtitulo.Caption:='Relat�rio Documentos � Receber - � Vencer';
           RLReport2.preview;
         end
      else if rb5.Checked then
         begin
           qrtitulo.Caption:='Relat�rio Documentos � Receber - em Aberto';
           RLReport2.preview;
         end
      else if rb1.Checked then
         begin
           qrtitulo.Caption:='Relat�rio Documentos � Receber - Vencidos';
           RLReport2.preview;
         end
         else
         begin
           qrtituloI.Caption:='Relat�rio Documentos � Receber';
           RLReport1.preview;
         end;
end;

procedure TFrmReceberImp.rb1Click(Sender: TObject);
begin
      vencidas;
end;

procedure TFrmReceberImp.rb2Click(Sender: TObject);
begin
      avencer;
end;

procedure TFrmReceberImp.rb5Click(Sender: TObject);
begin
      EmAberto;
end;

procedure TFrmReceberImp.RLBand6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  dm.Clientes.close;
  dm.Clientes.sql.clear;
  dm.Clientes.sql.add('select * from clientes');
  dm.Clientes.sql.add('where codigo = '+IntToStr(dm.DocReceberGeralcliente.Value));
  dm.Clientes.open;
end;

procedure TFrmReceberImp.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  dm.DocReceber.Close;
  dm.DocReceber.SQL.Clear;
  dm.DocReceber.SQL.Add('select * from docreceber');
  dm.DocReceber.sql.add('where cod = '+IntToStr(dm.DocReceberGeralcod.Value));
  dm.DocReceber.Open;
end;

end.
