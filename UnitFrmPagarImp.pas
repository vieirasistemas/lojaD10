unit UnitFrmPagarImp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, DB, RLXLSFilter, RLFilters, RLPDFFilter,
  RLDraftFilter, DBTables, EditAlinhado, StdCtrls, Buttons, Mask, ComObj,
  QRCtrls, QuickRpt, ExtCtrls, ZAbstractRODataset, ZAbstractDataset,
  ZDataset;

type
  TFrmPagarImp = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    qrrazao: TRLDBText;
    RLDBText7: TRLDBText;
    RLLabel6: TRLLabel;
    RLDBText8: TRLDBText;
    qrtitulo: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RLBand4: TRLBand;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLBand5: TRLBand;
    RLLabel4: TRLLabel;
    matricial: TRLDraftFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLXLSFilter1: TRLXLSFilter;
    RLLabel2: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel1: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel11: TRLLabel;
    qrdescricao: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBResult3: TRLDBResult;
    RLLabel12: TRLLabel;
    RLDBText10: TRLDBText;
    RLLabel7: TRLLabel;
    RLDBText1: TRLDBText;
    RLReport2: TRLReport;
    RLBand6: TRLBand;
    RLDBText11: TRLDBText;
    qrentrada: TRLDBText;
    RLBand7: TRLBand;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLBand8: TRLBand;
    qrrazaoI: TRLDBText;
    RLDBText15: TRLDBText;
    RLLabel19: TRLLabel;
    RLDBText16: TRLDBText;
    qrtituloI: TRLLabel;
    RLSystemInfo4: TRLSystemInfo;
    RLSystemInfo5: TRLSystemInfo;
    RLSystemInfo6: TRLSystemInfo;
    RLBand9: TRLBand;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLDBText4: TRLDBText;
    RLLabel10: TRLLabel;
    RLDBText17: TRLDBText;
    RLLabel23: TRLLabel;
    RLDBText12: TRLDBText;
    RLLabel16: TRLLabel;
    RLDBText13: TRLDBText;
    RLLabel17: TRLLabel;
    RLDBText18: TRLDBText;
    RLLabel18: TRLLabel;
    RLLabel24: TRLLabel;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLBand10: TRLBand;
    RLLabel25: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLDBResult4: TRLDBResult;
    GroupBox1: TGroupBox;
    rb1: TRadioButton;
    rb2: TRadioButton;
    rb5: TRadioButton;
    rbgeral: TRadioButton;
    edfornecedorI: TEdit;
    Label31: TLabel;
    cbtipoI: TComboBox;
    Label7: TLabel;
    lbfornecedorI: TLabel;
    Label40: TLabel;
    Label29: TLabel;
    Label5: TLabel;
    Label25: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label37: TLabel;
    MeDataInicial: TMaskEdit;
    MeDataFinal: TMaskEdit;
    medtinicial: TMaskEdit;
    medtfinal: TMaskEdit;
    mefinal: TMaskEdit;
    meinicial: TMaskEdit;
    bt1: TBitBtn;
    bt2: TBitBtn;
    chexcel: TCheckBox;
    RLLabel20: TRLLabel;
    RLDBText5: TRLDBText;
    RLDBResult5: TRLDBResult;
    QuickRep2: TQuickRep;
    QRGroup2: TQRGroup;
    QRDBText3: TQRDBText;
    QRLabel16: TQRLabel;
    QRBand3: TQRBand;
    QRDBText5: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRExpr3: TQRExpr;
    QRBand4: TQRBand;
    QRLabel14: TQRLabel;
    QRExpr6: TQRExpr;
    QRBand5: TQRBand;
    QRShape12: TQRShape;
    QRLabel24: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel26: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData5: TQRSysData;
    QRSysData6: TQRSysData;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel34: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRBand6: TQRBand;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRBand7: TQRBand;
    QRLabel38: TQRLabel;
    QRExpr8: TQRExpr;
    QRLabel2: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText4: TQRDBText;
    chquebrar: TCheckBox;
    qratualizar: TZQuery;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure MeDataInicialExit(Sender: TObject);
    procedure MeDataFinalExit(Sender: TObject);
    procedure medtinicialExit(Sender: TObject);
    procedure medtfinalExit(Sender: TObject);
    procedure meinicialExit(Sender: TObject);
    procedure mefinalExit(Sender: TObject);
    procedure bt2Click(Sender: TObject);
    procedure edfornecedorIExit(Sender: TObject);
    procedure edfornecedorIKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rb5Click(Sender: TObject);
    procedure rb1Click(Sender: TObject);
    procedure rb2Click(Sender: TObject);
    procedure bt1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPagarImp: TFrmPagarImp;
  atraso,juros,multa,valoratraso:real;
  Excel : Variant;
  Linha:Integer;

implementation

uses Unitdm, UnitFrmCadFornecedores;

{$R *.dfm}

procedure AtualizarVencidas;
begin
        dm.DocPagarGeral.Close;
        dm.DocPagarGeral.SQL.Clear;
        dm.DocPagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,D.tipo,D.localcob,');
        dm.DocPagarGeral.SQL.Add('D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
        dm.DocPagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
        dm.DocPagarGeral.SQL.Add('from Fornecedores F, DocPagar D');
        dm.DocPagarGeral.SQL.Add('where (D.fornecedor=F.codigo) and (pgto is null) and (vencto<CURDATE())');
        dm.DocPagarGeral.Open;

        while not dm.DocPagarGeral.Eof do
              begin
                atraso:=0;
                atraso:=Int(date-dm.DocPagarGeralvencto.value);
                juros:=(dm.DocPagarGeralpercjuros.value*dm.DocPagarGeralvalor.value)/100/30*atraso;
                multa:=(dm.DocPagarGeralvalor.value*dm.DocPagarGeralmulta.value)/100;
                valoratraso:=dm.DocPagarGeralvalor.Value+juros+multa;

                FrmPagarImp.qratualizar.Close;
                FrmPagarImp.qratualizar.SQL.Clear;
                FrmPagarImp.qratualizar.SQL.Add('update docPagar set');
                FrmPagarImp.qratualizar.SQL.Add('juros1 = :juros,');
                FrmPagarImp.qratualizar.SQL.Add('multa1 = :multa,');
                FrmPagarImp.qratualizar.SQL.Add('atraso = :atraso,');
                FrmPagarImp.qratualizar.SQL.Add('valoratraso = :valoratraso');
                FrmPagarImp.qratualizar.sql.add('where cod = '+chr(39)+IntToStr(dm.DocPagarGeralcod.Value)+chr(39));
                FrmPagarImp.qratualizar.Params[0].Value := juros;
                FrmPagarImp.qratualizar.Params[1].Value := multa;
                FrmPagarImp.qratualizar.Params[2].Value := atraso;
                FrmPagarImp.qratualizar.Params[3].Value := valoratraso;
                FrmPagarImp.qratualizar.ExecSQL;
                dm.DocPagarGeral.Next;
              end;
end;

procedure AtualizaraVencer;
begin
        dm.DocPagarGeral.Close;
        dm.DocPagarGeral.SQL.Clear;
        dm.DocPagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,D.tipo,D.localcob,');
        dm.DocPagarGeral.SQL.Add('D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
        dm.DocPagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
        dm.DocPagarGeral.SQL.Add('from Fornecedores F, DocPagar D');
        dm.DocPagarGeral.SQL.Add('where (D.fornecedor=F.codigo) and (pgto is null) and (vencto>=CURDATE())');
        dm.DocPagarGeral.Open;

        while not dm.DocPagarGeral.Eof do
              begin
                atraso:=0;
                juros:=0;
                multa:=0;
                valoratraso:=dm.DocPagarGeralvalor.Value;

                FrmPagarImp.qratualizar.Close;
                FrmPagarImp.qratualizar.SQL.Clear;
                FrmPagarImp.qratualizar.SQL.Add('update docPagar set');
                FrmPagarImp.qratualizar.SQL.Add('juros1 = :juros,');
                FrmPagarImp.qratualizar.SQL.Add('multa1 = :multa,');
                FrmPagarImp.qratualizar.SQL.Add('atraso = :atraso,');
                FrmPagarImp.qratualizar.SQL.Add('valoratraso = :valoratraso');
                FrmPagarImp.qratualizar.sql.add('where cod = '+chr(39)+IntToStr(dm.DocPagarGeralcod.Value)+chr(39));
                FrmPagarImp.qratualizar.Params[0].Value := juros;
                FrmPagarImp.qratualizar.Params[1].Value := multa;
                FrmPagarImp.qratualizar.Params[2].Value := atraso;
                FrmPagarImp.qratualizar.Params[3].Value := valoratraso;
                FrmPagarImp.qratualizar.ExecSQL;
                dm.DocPagarGeral.Next;
              end;
end;

procedure EmAberto;
begin
        AtualizaraVencer;
        AtualizarVencidas;

        dm.DocPagarGeral.Close;
        dm.DocPagarGeral.SQL.Clear;
        dm.DocPagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
        dm.DocPagarGeral.SQL.Add('D.tipo,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
        dm.DocPagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
        dm.DocPagarGeral.SQL.Add('from Fornecedores F, DocPagar D');
        dm.DocPagarGeral.SQL.Add('where (D.fornecedor=F.codigo) and (pgto is null)');
        dm.DocPagarGeral.SQL.Add('order by D.vencto');
        dm.DocPagarGeral.Open;
end;

procedure vencidas;
begin
        AtualizarVencidas;
        dm.DocPagarGeral.Close;
        dm.DocPagarGeral.SQL.Clear;
        dm.DocPagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
        dm.DocPagarGeral.SQL.Add('D.tipo,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
        dm.DocPagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
        dm.DocPagarGeral.SQL.Add('from Fornecedores F, DocPagar D');
        dm.DocPagarGeral.SQL.Add('where (D.fornecedor=F.codigo) and (pgto is null) and (vencto<CURDATE())');
        dm.DocPagarGeral.SQL.Add('order by D.vencto');
        dm.DocPagarGeral.Open;
end;

procedure avencer;
begin
        AtualizaraVencer;
        dm.DocPagarGeral.Close;
        dm.DocPagarGeral.SQL.Clear;
        dm.DocPagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,D.tipo,D.localcob,');
        dm.DocPagarGeral.SQL.Add('D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
        dm.DocPagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
        dm.DocPagarGeral.SQL.Add('from Fornecedores F, DocPagar D');
        dm.DocPagarGeral.SQL.Add('where (D.fornecedor=F.codigo) and (pgto is null) and (vencto>=CURDATE())');
        dm.DocPagarGeral.SQL.Add('order by D.vencto');
        dm.DocPagarGeral.Open;
end;

procedure TFrmPagarImp.FormKeyPress(Sender: TObject; var Key: Char);
begin
      if Key = CHR(13) Then
         Begin
           perform(WM_NextDlgCtl,0,0);
           Key := CHR(0);
         End;
end;

procedure TFrmPagarImp.MeDataInicialExit(Sender: TObject);
begin
        if MeDataInicial.text<>'  /  /    ' then
        begin
        Try
           StrToDate(MeDataInicial.Text) ;
        Except
        begin
           application.MessageBox('Data Inválida!','Administrador',mb_Ok+mb_iconerror);
           MeDataInicial.setfocus;
        end;
        end;
        end;
end;

procedure TFrmPagarImp.MeDataFinalExit(Sender: TObject);
begin
        if MeDataFinal.text<>'  /  /    ' then
        begin
        Try
           StrToDate(MeDataFinal.Text) ;
           If StrToDate(MeDataInicial.Text) > StrToDate(MeDataFinal.Text) then
              Begin
                 MessageBox(Handle, 'Data inferior à data inicial de pesquisa!!', 'Administrador', mb_IconWarning or mb_Ok);
                 MeDataFinal.SetFocus;
              End;
        Except
        begin
           application.MessageBox('Data Inválida!','Administrador',mb_Ok+mb_iconerror);
           MeDataFinal.setfocus;
        end;
        end;
        end;
end;

procedure TFrmPagarImp.medtinicialExit(Sender: TObject);
begin
        if medtinicial.text<>'  /  /    ' then
        begin
        Try
           StrToDate(medtinicial.Text) ;
        Except
        begin
           application.MessageBox('Data Inválida!','Administrador',mb_Ok+mb_iconerror);
           medtinicial.setfocus;
        end;
        end;
        end;
end;

procedure TFrmPagarImp.medtfinalExit(Sender: TObject);
begin
        if medtfinal.text<>'  /  /    ' then
        begin
        Try
           StrToDate(medtfinal.Text) ;
           If StrToDate(MeDtInicial.Text) > StrToDate(medtfinal.Text) then
              Begin
                 MessageBox(Handle, 'Data inferior à data inicial de pesquisa!!', 'Administrador', mb_IconWarning or mb_Ok);
                 medtfinal.SetFocus;
              End;
        Except
        begin
           application.MessageBox('Data Inválida!','Administrador',mb_Ok+mb_iconerror);
           medtfinal.setfocus;
        end;
        end;
        end;
end;

procedure TFrmPagarImp.meinicialExit(Sender: TObject);
begin
        if meinicial.text<>'  /  /    ' then
        begin
        Try
           StrToDate(meinicial.Text) ;
        Except
        begin
           application.MessageBox('Data Inválida!','Administrador',mb_Ok+mb_iconerror);
           meinicial.setfocus;
        end;
        end;
        end;
end;

procedure TFrmPagarImp.mefinalExit(Sender: TObject);
begin
        if mefinal.text<>'  /  /    ' then
        begin
        Try
           StrToDate(mefinal.Text) ;
           If StrToDate(MeInicial.Text) > StrToDate(mefinal.Text) then
              Begin
                 MessageBox(Handle, 'Data inferior à data inicial de pesquisa!!', 'Administrador', mb_IconWarning or mb_Ok);
                 mefinal.SetFocus;
              End;
        Except
        begin
           application.MessageBox('Data Inválida!','Administrador',mb_Ok+mb_iconerror);
           mefinal.setfocus;
        end;
        end;
        end;
end;

procedure TFrmPagarImp.bt2Click(Sender: TObject);
begin
      close;  
end;

procedure TFrmPagarImp.edfornecedorIExit(Sender: TObject);
begin
      if edfornecedorI.Text<>'' then
         begin
            dm.Fornecedores.close;
            dm.Fornecedores.sql.clear;
            dm.Fornecedores.sql.add('select * from Fornecedores');
            dm.Fornecedores.sql.add('where codigo = '+edfornecedorI.text);
            dm.Fornecedores.open;
            if dm.Fornecedores.RecordCount<1 then
               begin
                 application.MessageBox('Fornecedor não Localizado','Atenção',mb_ok+mb_iconinformation);
                 edfornecedorI.SetFocus;
               end
               else
                 lbfornecedorI.Caption:=dm.Fornecedoresnome.value;
         end
         else
           lbfornecedorI.Caption:='';
end;

procedure TFrmPagarImp.edfornecedorIKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key=vk_f10 then
           begin
             try
               Application.CreateForm(TFrmCadFornecedores, FrmCadFornecedores);
               FrmCadFornecedores.showmodal;
             finally
               FrmCadFornecedores.Release;
               FrmCadFornecedores:=nil;
             end;
           end;
end;

procedure TFrmPagarImp.rb5Click(Sender: TObject);
begin
      EmAberto;
end;

procedure TFrmPagarImp.rb1Click(Sender: TObject);
begin
      vencidas;
end;

procedure TFrmPagarImp.rb2Click(Sender: TObject);
begin
      avencer;
end;

procedure TFrmPagarImp.bt1Click(Sender: TObject);
begin
        //Consulta por Doc. Vencidos
        if rb1.Checked then
           begin
             //Vencidos por Fornecedor
             if (MeDataFinal.text='  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (mefinal.text='  /  /    ') and
                (edfornecedorI.Text<>'') and
                (cbtipoI.Text='') then
                begin
                  dm.DocPagarGeral.Close;
                  dm.DocPagarGeral.SQL.Clear;
                  dm.DocPagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.DocPagarGeral.SQL.Add('D.tipo,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.DocPagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.DocPagarGeral.SQL.Add('from Fornecedores F, DocPagar D');
                  dm.DocPagarGeral.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.DocPagarGeral.SQL.Add('and (D.vencto<CURDATE()) and');
                  dm.DocPagarGeral.SQL.Add('(D.fornecedor = '+edfornecedorI.text+')');
                  dm.DocPagarGeral.SQL.Add('order by D.vencto');
                  dm.DocPagarGeral.Open;
                end

             //Vencidos por Tipo do Documento
             else if (MeDataFinal.text='  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (mefinal.text='  /  /    ') and
                (lbfornecedorI.caption='') and
                (cbtipoI.Text<>'') then
                begin
                  dm.DocPagarGeral.Close;
                  dm.DocPagarGeral.SQL.Clear;
                  dm.DocPagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.DocPagarGeral.SQL.Add('D.tipo,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.DocPagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.DocPagarGeral.SQL.Add('from Fornecedores F, DocPagar D');
                  dm.DocPagarGeral.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.DocPagarGeral.SQL.Add('and (D.vencto<CURDATE()) and');
                  dm.DocPagarGeral.SQL.Add('(D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.DocPagarGeral.SQL.Add('order by D.vencto');
                  dm.DocPagarGeral.Open;
                end

             //Vencidos por Período
             else if (MeDataFinal.text='  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (mefinal.text='  /  /    ') and
                (lbfornecedorI.caption='') and
                (cbtipoI.Text='') then
                begin
                  dm.DocPagarGeral.Close;
                  dm.DocPagarGeral.SQL.Clear;
                  dm.DocPagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.DocPagarGeral.SQL.Add('D.tipo,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.DocPagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.DocPagarGeral.SQL.Add('from Fornecedores F, DocPagar D');
                  dm.DocPagarGeral.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.DocPagarGeral.SQL.Add('and (D.vencto<CURDATE()) and');
                  dm.DocPagarGeral.SQL.Add('(D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.DocPagarGeral.SQL.Add('order by D.vencto');
                  dm.DocPagarGeral.Open;
                end

             //Vencidos por Perído e fornecedor
             else if (MeDataFinal.text='  /  /    ') and
                (mefinal.text='  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (lbfornecedorI.caption<>'') and
                (cbtipoI.Text='') then
                begin
                  dm.DocPagarGeral.Close;
                  dm.DocPagarGeral.SQL.Clear;
                  dm.DocPagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.DocPagarGeral.SQL.Add('D.tipo,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.DocPagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.DocPagarGeral.SQL.Add('from Fornecedores F, DocPagar D');
                  dm.DocPagarGeral.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.DocPagarGeral.SQL.Add('and (D.vencto<CURDATE()) and');
                  dm.DocPagarGeral.SQL.Add('(D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.DocPagarGeral.SQL.Add('and (D.fornecedor = '+edfornecedorI.text+')');
                  dm.DocPagarGeral.SQL.Add('order by D.vencto');
                  dm.DocPagarGeral.Open;
                end

             //Vencidos por Perído e Tipo
             else if (MeDataFinal.text='  /  /    ') and
                (mefinal.text='  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (lbfornecedorI.caption='') and
                (cbtipoI.Text<>'') then
                begin
                  dm.DocPagarGeral.Close;
                  dm.DocPagarGeral.SQL.Clear;
                  dm.DocPagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.DocPagarGeral.SQL.Add('D.tipo,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.DocPagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.DocPagarGeral.SQL.Add('from Fornecedores F, DocPagar D');
                  dm.DocPagarGeral.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.DocPagarGeral.SQL.Add('and (D.vencto<CURDATE()) and');
                  dm.DocPagarGeral.SQL.Add('(D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.DocPagarGeral.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.DocPagarGeral.SQL.Add('order by D.vencto');
                  dm.DocPagarGeral.Open;
                end;
           end
        //Consulta por Doc. à Vencer
        else if rb2.Checked then
           begin
             //à Vencer por fornecedor
             if (MeDataFinal.text='  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (mefinal.text='  /  /    ') and
                (edfornecedorI.Text<>'') and
                (cbtipoI.Text='') then
                begin
                  dm.DocPagarGeral.Close;
                  dm.DocPagarGeral.SQL.Clear;
                  dm.DocPagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.DocPagarGeral.SQL.Add('D.tipo,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.DocPagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.DocPagarGeral.SQL.Add('from Fornecedores F, DocPagar D');
                  dm.DocPagarGeral.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.DocPagarGeral.SQL.Add('and (D.vencto>=CURDATE()) and');
                  dm.DocPagarGeral.SQL.Add('(D.fornecedor = '+edfornecedorI.text+')');
                  dm.DocPagarGeral.SQL.Add('order by D.vencto');
                  dm.DocPagarGeral.Open;
                end

             //à Vencer por Tipo do Documento
             else if (MeDataFinal.text='  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (mefinal.text='  /  /    ') and
                (lbfornecedorI.caption='') and
                (cbtipoI.Text<>'') then
                begin
                  dm.DocPagarGeral.Close;
                  dm.DocPagarGeral.SQL.Clear;
                  dm.DocPagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.DocPagarGeral.SQL.Add('D.tipo,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.DocPagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.DocPagarGeral.SQL.Add('from Fornecedores F, DocPagar D');
                  dm.DocPagarGeral.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.DocPagarGeral.SQL.Add('and (D.vencto>=CURDATE()) and');
                  dm.DocPagarGeral.SQL.Add('(D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.DocPagarGeral.SQL.Add('order by D.vencto');
                  dm.DocPagarGeral.Open;
                end

             //à Vencer por Período
             else if (MeDataFinal.text='  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (mefinal.text='  /  /    ') and
                (lbfornecedorI.caption='') and
                (cbtipoI.Text='') then
                begin
                  dm.DocPagarGeral.Close;
                  dm.DocPagarGeral.SQL.Clear;
                  dm.DocPagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.DocPagarGeral.SQL.Add('D.tipo,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.DocPagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.DocPagarGeral.SQL.Add('from Fornecedores F, DocPagar D');
                  dm.DocPagarGeral.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.DocPagarGeral.SQL.Add('and (D.vencto>=CURDATE()) and');
                  dm.DocPagarGeral.SQL.Add('(D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.DocPagarGeral.SQL.Add('order by D.vencto');
                  dm.DocPagarGeral.Open;
                end

             //à Vencer por Perído e fornecedor
             else if (MeDataFinal.text='  /  /    ') and
                (mefinal.text='  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (lbfornecedorI.caption<>'') and
                (cbtipoI.Text='') then
                begin
                  dm.DocPagarGeral.Close;
                  dm.DocPagarGeral.SQL.Clear;
                  dm.DocPagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.DocPagarGeral.SQL.Add('D.tipo,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.DocPagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.DocPagarGeral.SQL.Add('from Fornecedores F, DocPagar D');
                  dm.DocPagarGeral.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.DocPagarGeral.SQL.Add('and (D.vencto>=CURDATE()) and');
                  dm.DocPagarGeral.SQL.Add('(D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.DocPagarGeral.SQL.Add('and (D.fornecedor = '+edfornecedorI.text+')');
                  dm.DocPagarGeral.SQL.Add('order by D.vencto');
                  dm.DocPagarGeral.Open;
                end

             //à Vencer por Perído e Tipo
             else if (MeDataFinal.text='  /  /    ') and
                (mefinal.text='  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (lbfornecedorI.caption='') and
                (cbtipoI.Text<>'') then
                begin
                  dm.DocPagarGeral.Close;
                  dm.DocPagarGeral.SQL.Clear;
                  dm.DocPagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.DocPagarGeral.SQL.Add('D.tipo,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.DocPagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.DocPagarGeral.SQL.Add('from Fornecedores F, DocPagar D');
                  dm.DocPagarGeral.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.DocPagarGeral.SQL.Add('and (D.vencto>=CURDATE()) and');
                  dm.DocPagarGeral.SQL.Add('(D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.DocPagarGeral.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.DocPagarGeral.SQL.Add('order by D.vencto');
                  dm.DocPagarGeral.Open;
                end;
           end
        //Consulta por Doc. Em Aberto
        else if rb5.Checked then
           begin
             //Em aberto por fornecedor
             if (MeDataFinal.text='  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (mefinal.text='  /  /    ') and
                (edfornecedorI.Text<>'') and
                (cbtipoI.Text='') then
                begin
                  dm.DocPagarGeral.Close;
                  dm.DocPagarGeral.SQL.Clear;
                  dm.DocPagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.DocPagarGeral.SQL.Add('D.tipo,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.DocPagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.DocPagarGeral.SQL.Add('from Fornecedores F, DocPagar D');
                  dm.DocPagarGeral.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.DocPagarGeral.SQL.Add('and (D.fornecedor = '+edfornecedorI.text+')');
                  dm.DocPagarGeral.SQL.Add('order by D.vencto');
                  dm.DocPagarGeral.Open;
                end

             //Em aberto por tipo
             else if (MeDataFinal.text='  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (mefinal.text='  /  /    ') and
                (edfornecedorI.Text='') and
                (cbtipoI.Text<>'') then
                begin
                  dm.DocPagarGeral.Close;
                  dm.DocPagarGeral.SQL.Clear;
                  dm.DocPagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.DocPagarGeral.SQL.Add('D.tipo,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.DocPagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.DocPagarGeral.SQL.Add('from Fornecedores F, DocPagar D');
                  dm.DocPagarGeral.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.DocPagarGeral.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.DocPagarGeral.SQL.Add('order by D.vencto');
                  dm.DocPagarGeral.Open;
                end

             //Em aberto por período
             else if (MeDataFinal.text='  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (mefinal.text='  /  /    ') and
                (edfornecedorI.Text='') and
                (cbtipoI.Text='') then
                begin
                  dm.DocPagarGeral.Close;
                  dm.DocPagarGeral.SQL.Clear;
                  dm.DocPagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.DocPagarGeral.SQL.Add('D.tipo,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.DocPagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.DocPagarGeral.SQL.Add('from Fornecedores F, DocPagar D');
                  dm.DocPagarGeral.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.DocPagarGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(medtfinal.text,7,4)+'/'+copy(medtfinal.text,4,2)+'/'+
                  copy(medtfinal.text,1,2)+chr(39)+')');
                  dm.DocPagarGeral.SQL.Add('order by D.vencto');
                  dm.DocPagarGeral.Open;
                end

             //Em aberto por período e fornecedor
             else if (MeDataFinal.text='  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (mefinal.text='  /  /    ') and
                (edfornecedorI.Text<>'') and
                (cbtipoI.Text='') then
                begin
                  dm.DocPagarGeral.Close;
                  dm.DocPagarGeral.SQL.Clear;
                  dm.DocPagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.DocPagarGeral.SQL.Add('D.tipo,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.DocPagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.DocPagarGeral.SQL.Add('from Fornecedores F, DocPagar D');
                  dm.DocPagarGeral.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.DocPagarGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(medtfinal.text,7,4)+'/'+copy(medtfinal.text,4,2)+'/'+
                  copy(medtfinal.text,1,2)+chr(39)+')');
                  dm.DocPagarGeral.SQL.Add('and (D.fornecedor = '+edfornecedorI.text+')');
                  dm.DocPagarGeral.SQL.Add('order by D.vencto');
                  dm.DocPagarGeral.Open;
                end

             //Em aberto por período e tipo
             else if (MeDataFinal.text='  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (mefinal.text='  /  /    ') and
                (edfornecedorI.Text='') and
                (cbtipoI.Text<>'') then
                begin
                  dm.DocPagarGeral.Close;
                  dm.DocPagarGeral.SQL.Clear;
                  dm.DocPagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.DocPagarGeral.SQL.Add('D.tipo,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.DocPagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.DocPagarGeral.SQL.Add('from Fornecedores F, DocPagar D');
                  dm.DocPagarGeral.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is null)');
                  dm.DocPagarGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                  copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(medtfinal.text,7,4)+'/'+copy(medtfinal.text,4,2)+'/'+
                  copy(medtfinal.text,1,2)+chr(39)+')');
                  dm.DocPagarGeral.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.DocPagarGeral.SQL.Add('order by D.vencto');
                  dm.DocPagarGeral.Open;
                end;
           end
           else
           begin
             //Liquidados por periodo
             if (mefinal.text<>'  /  /    ') and
                (MeDataFinal.text='  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (edfornecedorI.text='') and
                (cbtipoI.Text='') then
                begin
                  dm.DocPagarGeral.Close;
                  dm.DocPagarGeral.SQL.Clear;
                  dm.DocPagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.DocPagarGeral.SQL.Add('D.tipo,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.DocPagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.DocPagarGeral.SQL.Add('from Fornecedores F, DocPagar D');
                  dm.DocPagarGeral.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is not null)');
                  dm.DocPagarGeral.SQL.Add('and (D.pgto between '+chr(39)+
                  copy(meinicial.text,7,4)+'/'+copy(meinicial.text,4,2)+'/'+
                  copy(meinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeFinal.text,7,4)+'/'+copy(MeFinal.text,4,2)+'/'+
                  copy(MeFinal.text,1,2)+chr(39)+')');
                  dm.DocPagarGeral.SQL.Add('order by D.pgto');
                  dm.DocPagarGeral.Open;
                end

             //Liquidados por periodo e fornecedor
             else if (mefinal.text<>'  /  /    ') and
                (MeDataFinal.text='  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (edfornecedorI.text<>'') and
                (cbtipoI.Text='') then
                begin
                  dm.DocPagarGeral.Close;
                  dm.DocPagarGeral.SQL.Clear;
                  dm.DocPagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.DocPagarGeral.SQL.Add('D.tipo,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.DocPagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.DocPagarGeral.SQL.Add('from Fornecedores F, DocPagar D');
                  dm.DocPagarGeral.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is not null)');
                  dm.DocPagarGeral.SQL.Add('and (D.pgto between '+chr(39)+
                  copy(meinicial.text,7,4)+'/'+copy(meinicial.text,4,2)+'/'+
                  copy(meinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeFinal.text,7,4)+'/'+copy(MeFinal.text,4,2)+'/'+
                  copy(MeFinal.text,1,2)+chr(39)+')');
                  dm.DocPagarGeral.SQL.Add('and (D.fornecedor = '+edfornecedorI.text+')');
                  dm.DocPagarGeral.SQL.Add('order by D.pgto');
                  dm.DocPagarGeral.Open;
                end

             //Liquidados por periodo e tipo
             else if (mefinal.text<>'  /  /    ') and
                (MeDataFinal.text='  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (edfornecedorI.text='') and
                (cbtipoI.Text<>'') then
                begin
                  dm.DocPagarGeral.Close;
                  dm.DocPagarGeral.SQL.Clear;
                  dm.DocPagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.DocPagarGeral.SQL.Add('D.tipo,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.DocPagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.DocPagarGeral.SQL.Add('from Fornecedores F, DocPagar D');
                  dm.DocPagarGeral.SQL.Add('where (D.fornecedor=F.codigo) and (D.pgto is not null)');
                  dm.DocPagarGeral.SQL.Add('and (D.pgto between '+chr(39)+
                  copy(meinicial.text,7,4)+'/'+copy(meinicial.text,4,2)+'/'+
                  copy(meinicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeFinal.text,7,4)+'/'+copy(MeFinal.text,4,2)+'/'+
                  copy(MeFinal.text,1,2)+chr(39)+')');
                  dm.DocPagarGeral.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.DocPagarGeral.SQL.Add('order by D.pgto');
                  dm.DocPagarGeral.Open;
                end

             //Emitidos por periodo
             else if (mefinal.text='  /  /    ') and
                (MeDataFinal.text<>'  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (edfornecedorI.text='') and
                (cbtipoI.Text='') then
                begin
                  dm.DocPagarGeral.Close;
                  dm.DocPagarGeral.SQL.Clear;
                  dm.DocPagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.DocPagarGeral.SQL.Add('D.tipo,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.DocPagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.DocPagarGeral.SQL.Add('from Fornecedores F, DocPagar D');
                  dm.DocPagarGeral.SQL.Add('where (D.fornecedor=F.codigo)');
                  dm.DocPagarGeral.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.DocPagarGeral.SQL.Add('order by D.emissao');
                  dm.DocPagarGeral.Open;
                end

             //Emitidos por periodo e fornecedor
             else if (mefinal.text<>'  /  /    ') and
                (MeDataFinal.text='  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (edfornecedorI.text<>'') and
                (cbtipoI.Text='') then
                begin
                  dm.DocPagarGeral.Close;
                  dm.DocPagarGeral.SQL.Clear;
                  dm.DocPagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.DocPagarGeral.SQL.Add('D.tipo,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.DocPagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.DocPagarGeral.SQL.Add('from Fornecedores F, DocPagar D');
                  dm.DocPagarGeral.SQL.Add('where (D.fornecedor=F.codigo)');
                  dm.DocPagarGeral.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.DocPagarGeral.SQL.Add('and (D.fornecedor = '+edfornecedorI.text+')');
                  dm.DocPagarGeral.SQL.Add('order by D.emissao');
                  dm.DocPagarGeral.Open;
                end

             //Emitidos por periodo e tipo
             else if (mefinal.text<>'  /  /    ') and
                (MeDataFinal.text='  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (edfornecedorI.text='') and
                (cbtipoI.Text<>'') then
                begin
                  dm.DocPagarGeral.Close;
                  dm.DocPagarGeral.SQL.Clear;
                  dm.DocPagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.DocPagarGeral.SQL.Add('D.tipo,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.DocPagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.DocPagarGeral.SQL.Add('from Fornecedores F, DocPagar D');
                  dm.DocPagarGeral.SQL.Add('where (D.fornecedor=F.codigo)');
                  dm.DocPagarGeral.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.DocPagarGeral.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.DocPagarGeral.SQL.Add('order by D.emissao');
                  dm.DocPagarGeral.Open;
                end

             //Vencimento no periodo
             else if (mefinal.text='  /  /    ') and
                (MeDataFinal.text='  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (edfornecedorI.text='') and
                (cbtipoI.Text='') then
                begin
                  dm.DocPagarGeral.Close;
                  dm.DocPagarGeral.SQL.Clear;
                  dm.DocPagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.DocPagarGeral.SQL.Add('D.tipo,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.DocPagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.DocPagarGeral.SQL.Add('from Fornecedores F, DocPagar D');
                  dm.DocPagarGeral.SQL.Add('where (D.fornecedor=F.codigo)');
                  dm.DocPagarGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(MeDtInicial.text,7,4)+'/'+copy(MeDtInicial.text,4,2)+'/'+
                  copy(MeDtInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(medtfinal.text,7,4)+'/'+copy(medtfinal.text,4,2)+'/'+
                  copy(medtfinal.text,1,2)+chr(39)+')');
                  dm.DocPagarGeral.SQL.Add('order by D.vencto');
                  dm.DocPagarGeral.Open;
                end

             //Vencimento no periodo por fornecedor
             else if (mefinal.text='  /  /    ') and
                (MeDataFinal.text='  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (edfornecedorI.text<>'') and
                (cbtipoI.Text='') then
                begin
                  dm.DocPagarGeral.Close;
                  dm.DocPagarGeral.SQL.Clear;
                  dm.DocPagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.DocPagarGeral.SQL.Add('D.tipo,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.DocPagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.DocPagarGeral.SQL.Add('from Fornecedores F, DocPagar D');
                  dm.DocPagarGeral.SQL.Add('where (D.fornecedor=F.codigo)');
                  dm.DocPagarGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(MeDtInicial.text,7,4)+'/'+copy(MeDtInicial.text,4,2)+'/'+
                  copy(MeDtInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(medtfinal.text,7,4)+'/'+copy(medtfinal.text,4,2)+'/'+
                  copy(medtfinal.text,1,2)+chr(39)+')');
                  dm.DocPagarGeral.SQL.Add('and (D.fornecedor = '+edfornecedorI.text+')');
                  dm.DocPagarGeral.SQL.Add('order by D.vencto');
                  dm.DocPagarGeral.Open;
                end

             //Vencimento no periodo por tipo
             else if (mefinal.text='  /  /    ') and
                (MeDataFinal.text='  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (edfornecedorI.text='') and
                (cbtipoI.Text<>'') then
                begin
                  dm.DocPagarGeral.Close;
                  dm.DocPagarGeral.SQL.Clear;
                  dm.DocPagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.DocPagarGeral.SQL.Add('D.tipo,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.DocPagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.DocPagarGeral.SQL.Add('from Fornecedores F, DocPagar D');
                  dm.DocPagarGeral.SQL.Add('where (D.fornecedor=F.codigo)');
                  dm.DocPagarGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(MeDtInicial.text,7,4)+'/'+copy(MeDtInicial.text,4,2)+'/'+
                  copy(MeDtInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(medtfinal.text,7,4)+'/'+copy(medtfinal.text,4,2)+'/'+
                  copy(medtfinal.text,1,2)+chr(39)+')');
                  dm.DocPagarGeral.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.DocPagarGeral.SQL.Add('order by D.vencto');
                  dm.DocPagarGeral.Open;
                end

             //Emitidos com Vencimento
             else if (mefinal.text='  /  /    ') and
                (MeDataFinal.text<>'  /  /    ') and
                (medtfinal.text<>'  /  /    ') and
                (edfornecedorI.text='') and
                (cbtipoI.Text='') then
                begin
                  dm.DocPagarGeral.Close;
                  dm.DocPagarGeral.SQL.Clear;
                  dm.DocPagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.DocPagarGeral.SQL.Add('D.tipo,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.DocPagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.DocPagarGeral.SQL.Add('from Fornecedores F, DocPagar D');
                  dm.DocPagarGeral.SQL.Add('where (D.fornecedor=F.codigo)');
                  dm.DocPagarGeral.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.DocPagarGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(MeDtInicial.text,7,4)+'/'+copy(MeDtInicial.text,4,2)+'/'+
                  copy(MeDtInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.DocPagarGeral.SQL.Add('order by D.emissao');
                  dm.DocPagarGeral.Open;
                end

             //Emitidos com Vencimento por fornecedor
             else if (mefinal.text<>'  /  /    ') and
                (MeDataFinal.text<>'  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (edfornecedorI.text<>'') and
                (cbtipoI.Text='') then
                begin
                  dm.DocPagarGeral.Close;
                  dm.DocPagarGeral.SQL.Clear;
                  dm.DocPagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.DocPagarGeral.SQL.Add('D.tipo,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.DocPagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.DocPagarGeral.SQL.Add('from Fornecedores F, DocPagar D');
                  dm.DocPagarGeral.SQL.Add('where (D.fornecedor=F.codigo)');
                  dm.DocPagarGeral.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.DocPagarGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(MeDtInicial.text,7,4)+'/'+copy(MeDtInicial.text,4,2)+'/'+
                  copy(MeDtInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.DocPagarGeral.SQL.Add('and (D.fornecedor = '+edfornecedorI.text+')');
                  dm.DocPagarGeral.SQL.Add('order by D.emissao');
                  dm.DocPagarGeral.Open;
                end

             //por fornecedor
             else if (mefinal.text='  /  /    ') and
                (MeDataFinal.text='  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (edfornecedorI.text<>'') and
                (cbtipoI.Text='') then
                begin
                  dm.DocPagarGeral.Close;
                  dm.DocPagarGeral.SQL.Clear;
                  dm.DocPagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.DocPagarGeral.SQL.Add('D.tipo,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.DocPagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.DocPagarGeral.SQL.Add('from Fornecedores F, DocPagar D');
                  dm.DocPagarGeral.SQL.Add('where (D.fornecedor=F.codigo)');
                  dm.DocPagarGeral.SQL.Add('and (D.fornecedor = '+edfornecedorI.text+')');
                  dm.DocPagarGeral.SQL.Add('order by D.emissao');
                  dm.DocPagarGeral.Open;
                end

             //Emitidos com Vencimento por tipo
             else if (mefinal.text<>'  /  /    ') and
                (MeDataFinal.text<>'  /  /    ') and
                (medtfinal.text='  /  /    ') and
                (edfornecedorI.text='') and
                (cbtipoI.Text<>'') then
                begin
                  dm.DocPagarGeral.Close;
                  dm.DocPagarGeral.SQL.Clear;
                  dm.DocPagarGeral.SQL.Add('select F.nome,D.doc,D.emissao,D.vencto,D.valor,');
                  dm.DocPagarGeral.SQL.Add('D.tipo,D.localcob,D.cod,D.atraso,D.valoratraso,D.juros1,D.multa1,');
                  dm.DocPagarGeral.SQL.Add('D.pgto,D.obs,D.valorpago,D.percjuros,D.multa,D.juros,D.desconto,D.Autorizado,D.DataAutorizacao,D.AutorizadoPor');
                  dm.DocPagarGeral.SQL.Add('from Fornecedores F, DocPagar D');
                  dm.DocPagarGeral.SQL.Add('where (D.fornecedor=F.codigo)');
                  dm.DocPagarGeral.SQL.Add('and (D.emissao between '+chr(39)+
                  copy(MeDataInicial.text,7,4)+'/'+copy(MeDataInicial.text,4,2)+'/'+
                  copy(MeDataInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
                  copy(MeDataFinal.text,1,2)+chr(39)+')');
                  dm.DocPagarGeral.SQL.Add('and (D.vencto between '+chr(39)+
                  copy(MeDtInicial.text,7,4)+'/'+copy(MeDtInicial.text,4,2)+'/'+
                  copy(MeDtInicial.text,1,2)+chr(39)+' and '+chr(39)+
                  copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                  copy(MeDtFinal.text,1,2)+chr(39)+')');
                  dm.DocPagarGeral.SQL.Add('and (D.tipo ='+chr(39)+copy(cbtipoI.text,1,2)+chr(39)+')');
                  dm.DocPagarGeral.SQL.Add('order by D.emissao');
                  dm.DocPagarGeral.Open;
                end;
           end;
      if chexcel.Checked=false then
         begin
           dm.parametros.Close;
           dm.parametros.Open;
           qrrazao.DataField:='razaosocial';
           qrrazao.DataSource:=dm.dsparametros;
           qrrazaoI.DataField:='razaosocial';
           qrrazaoI.DataSource:=dm.dsparametros;
           if rb2.Checked then
              qrtitulo.Caption:='Relatório Documentos à Pagar - à Vencer'
           else if rb1.Checked then
              qrtitulo.Caption:='Relatório Documentos à Pagar - Vencidos'
           else
              qrtitulo.Caption:='Relatório Documentos à Pagar ';
           if mefinal.Text<>'  /  /    ' then
              begin
                qrtituloI.Caption:='Documentos Pagos em '+meinicial.Text+' à '+mefinal.Text;
                RLReport2.preview;
              end
              else
                if chquebrar.Checked=false then
                   RLReport1.preview
                else
                   QuickRep2.preview;
         end
         else
         begin
           Excel := CreateOleObject('Excel.Application');
           Excel.Visible :=True;
           Excel.WorkBooks.Open('C:\Gestor Trasnp\teste.xls');
           if rb2.Checked then
              Excel.WorkBooks[1].Sheets[1].Cells[1,1]:='Relatório Documentos à Pagar - à Vencer'
           else if rb1.Checked then
              Excel.WorkBooks[1].Sheets[1].Cells[1,1]:='Relatório Documentos à Pagar - Vencidos'
           else
              Excel.WorkBooks[1].Sheets[1].Cells[1,1]:='Relatório Documentos à Pagar ';
           if mefinal.Text<>'  /  /    ' then
              Excel.WorkBooks[1].Sheets[1].Cells[1,1]:='Documentos Pagos em '+meinicial.Text+' à '+mefinal.Text;
           Excel.WorkBooks[1].Sheets[1].Cells[3,1]:='Fornecedor';
           Excel.WorkBooks[1].Sheets[1].Cells[3,2]:='Documento';
           Excel.WorkBooks[1].Sheets[1].Cells[3,3]:='Emissão';
           Excel.WorkBooks[1].Sheets[1].Cells[3,4]:='Valor R$';
           Excel.WorkBooks[1].Sheets[1].Cells[3,5]:='Vencto';
           Excel.WorkBooks[1].Sheets[1].Cells[3,6]:='Local de Cobrança';
           Excel.WorkBooks[1].Sheets[1].Cells[3,7]:='Atraso';
           Excel.WorkBooks[1].Sheets[1].Cells[3,8]:='Juros R$';
           Excel.WorkBooks[1].Sheets[1].Cells[3,9]:='Multa R$';
           Excel.WorkBooks[1].Sheets[1].Cells[3,10]:='Valor Atraso';
           Excel.WorkBooks[1].Sheets[1].Cells[3,11]:='Pagto';
           Excel.WorkBooks[1].Sheets[1].Cells[3,12]:='Valor Pago';
           Excel.WorkBooks[1].Sheets[1].Cells[3,13]:='Juros';
           Excel.WorkBooks[1].Sheets[1].Cells[3,14]:='Multa';
           Excel.WorkBooks[1].Sheets[1].Cells[3,15]:='Desconto';
           dm.DocPagarGeral.First;
           Linha:=4;
           While not dm.DocPagarGeral.Eof do
                Begin
                  Excel.WorkBooks[1].Sheets[1].Cells[Linha,1]:=dm.DocPagarGeralnome.value;
                  Excel.WorkBooks[1].Sheets[1].Cells[Linha,2]:=dm.DocPagarGeraldoc.Value;
                  Excel.WorkBooks[1].Sheets[1].Cells[Linha,3]:=dm.DocPagarGeralemissao.Value;
                  Excel.WorkBooks[1].Sheets[1].Cells[Linha,4]:=dm.DocPagarGeralvalor.Value;
                  Excel.WorkBooks[1].Sheets[1].Cells[Linha,5]:=dm.DocPagarGeralvencto.Value;
                  Excel.WorkBooks[1].Sheets[1].Cells[Linha,6]:=dm.DocPagarGerallocalcob.Value;
                  Excel.WorkBooks[1].Sheets[1].Cells[Linha,7]:=dm.DocPagarGeralatraso.Value;
                  Excel.WorkBooks[1].Sheets[1].Cells[Linha,8]:=dm.DocPagarGeraljuros1.Value;
                  Excel.WorkBooks[1].Sheets[1].Cells[Linha,9]:=dm.DocPagarGeralmulta1.Value;
                  Excel.WorkBooks[1].Sheets[1].Cells[Linha,10]:=dm.DocPagarGeralvaloratraso.Value;
                  if dm.DocPagarGeralpgto.IsNull then
                     Excel.WorkBooks[1].Sheets[1].Cells[Linha,11]:=''
                  else
                     Excel.WorkBooks[1].Sheets[1].Cells[Linha,11]:=dm.DocPagarGeralpgto.Value;
                  Excel.WorkBooks[1].Sheets[1].Cells[Linha,12]:=dm.DocPagarGeralvalorpago.Value;
                  Excel.WorkBooks[1].Sheets[1].Cells[Linha,13]:=dm.DocPagarGeraljuros.Value;
                  Excel.WorkBooks[1].Sheets[1].Cells[Linha,14]:=dm.DocPagarGeralmulta.Value;
                  Excel.WorkBooks[1].Sheets[1].Cells[Linha,15]:=dm.DocPagarGeraldesconto.Value;
                  dm.DocPagarGeral.Next;
                  Linha:=Linha+1;
                end;
         end;
end;

procedure TFrmPagarImp.FormShow(Sender: TObject);
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

end.
