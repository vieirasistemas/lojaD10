unit UnitFrmRelFornecedor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, DBTables, Grids, DBGrids, QRCtrls, QuickRpt,
  ExtCtrls, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFrmRelFornecedor = class(TForm)
    GroupBox2: TGroupBox;
    rb1: TRadioButton;
    rb2: TRadioButton;
    bt1: TBitBtn;
    bt2: TBitBtn;
    GroupBox1: TGroupBox;
    rbficha: TRadioButton;
    rbanalitico: TRadioButton;
    rbsintetico: TRadioButton;
    Label29: TLabel;
    edfornecedor: TEdit;
    Label1: TLabel;
    lbFornecedor: TLabel;
    QuickRep1: TQuickRep;
    PageFooterBand1: TQRBand;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    DetailBand1: TQRBand;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRExpr4: TQRExpr;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    lbcpf: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    qrcpf: TQRDBText;
    lbrg: TQRLabel;
    qrrg: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel16: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel17: TQRLabel;
    QRExpr17: TQRExpr;
    PageHeaderBand1: TQRBand;
    QRLabel19: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel20: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel21: TQRLabel;
    QRSysData3: TQRSysData;
    QRLabel18: TQRLabel;
    QuickRep2: TQuickRep;
    QRBand1: TQRBand;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRBand2: TQRBand;
    QRExpr1: TQRExpr;
    QRExpr8: TQRExpr;
    QRExpr9: TQRExpr;
    QRExpr10: TQRExpr;
    QRExpr11: TQRExpr;
    QRExpr12: TQRExpr;
    QRDBText5: TQRDBText;
    TitleBand1: TQRBand;
    QRLabel29: TQRLabel;
    QRSysData4: TQRSysData;
    QRLabel30: TQRLabel;
    QRSysData5: TQRSysData;
    QRLabel31: TQRLabel;
    QRSysData6: TQRSysData;
    QRLabel32: TQRLabel;
    QuickRep3: TQuickRep;
    QRBand3: TQRBand;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRBand4: TQRBand;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRBand5: TQRBand;
    QRExpr13: TQRExpr;
    QRExpr14: TQRExpr;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRBand6: TQRBand;
    QRLabel40: TQRLabel;
    QRSysData7: TQRSysData;
    QRLabel41: TQRLabel;
    QRSysData8: TQRSysData;
    QRLabel42: TQRLabel;
    QRSysData9: TQRSysData;
    QRLabel43: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel44: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRLabel46: TQRLabel;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRLabel45: TQRLabel;
    QRDBText19: TQRDBText;
    Query1: TZQuery;
    Query1codigo: TIntegerField;
    Query1tipo: TStringField;
    Query1cnpj: TStringField;
    Query1ie: TStringField;
    Query1im: TStringField;
    Query1cpf: TStringField;
    Query1rg: TStringField;
    Query1nome: TStringField;
    Query1endereco: TStringField;
    Query1bairro: TStringField;
    Query1cidade: TStringField;
    Query1estado: TStringField;
    Query1cep: TStringField;
    Query1fone1: TStringField;
    Query1fone2: TStringField;
    Query1fone3: TStringField;
    Query1email: TStringField;
    Query1homepage: TStringField;
    Query1obs: TStringField;
    Query1contato: TStringField;
    Query1empresa: TIntegerField;
    Query1fantasia: TStringField;
    procedure bt1Click(Sender: TObject);
    procedure bt2Click(Sender: TObject);
    procedure edfornecedorExit(Sender: TObject);
    procedure edfornecedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rbanaliticoClick(Sender: TObject);
    procedure rbfichaClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelFornecedor: TFrmRelFornecedor;

implementation

uses Unitdm, UnitFrmCadFornecedores;

{$R *.DFM}

procedure TFrmRelFornecedor.bt1Click(Sender: TObject);
begin
      dm.parametros.Close;
      dm.parametros.SQL.Clear;
      dm.parametros.SQL.Add('select * from parametros');
      dm.parametros.Open;
      if rbficha.Checked then
         begin
            if dm.Fornecedorestipo.Value='F' then
               begin
                 lbcpf.caption:='C.P.F.';
                 qrcpf.datafield:='cpf';
                 lbrg.caption:='R.G.';
                 qrcpf.datafield:='rg';
               end
               else
               begin
                 lbcpf.caption:='C.N.P.J';
                 qrcpf.datafield:='cnpj';
                 lbrg.caption:='I.E.';
                 qrcpf.datafield:='ie';
               end;
            query1.close;
            query1.sql.clear;
            query1.sql.add('select * from Fornecedores');
            query1.sql.add('where codigo = '+edfornecedor.text);
            query1.open;
            if rb1.checked then
               Quickrep1.preview
            else
               Quickrep1.print;
         end
         else
         begin
            query1.close;
            query1.sql.clear;
            query1.sql.add('select * from Fornecedores');
            query1.sql.add('order by nome');
            query1.open;
            if rbanalitico.checked then
               begin
                if rb1.checked then
                   Quickrep2.preview
                else
                   Quickrep2.print;
               end
               else
               begin
                if rb1.checked then
                   Quickrep3.preview
                else
                   Quickrep3.print;
               end;
         end;
end;

procedure TFrmRelFornecedor.bt2Click(Sender: TObject);
begin
        close;
end;

procedure TFrmRelFornecedor.edfornecedorExit(Sender: TObject);
begin
      if edfornecedor.Text<>'' then
         begin
            dm.Fornecedores.close;
            dm.Fornecedores.sql.clear;
            dm.Fornecedores.sql.add('select * from Fornecedores');
            dm.Fornecedores.sql.add('where codigo = '+edfornecedor.text);
            dm.Fornecedores.open;
            if dm.Fornecedores.RecordCount<1 then
               begin
                 application.MessageBox('Cliente não Localizado','Atenção',mb_ok+mb_iconinformation);
                 edfornecedor.SetFocus;
               end
               else
                 lbFornecedor.Caption:=dm.Fornecedoresnome.value;
         end;
end;

procedure TFrmRelFornecedor.edfornecedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
      if key=vk_f10 then
         begin
            try
              Application.CreateForm(TFrmCadFornecedores, FrmCadFornecedores);
              FrmCadFornecedores.showmodal;
            finally
              FrmCadFornecedores.Release;
            end;
         end;

end;

procedure TFrmRelFornecedor.rbanaliticoClick(Sender: TObject);
begin
      edfornecedor.Text:='';
      lbFornecedor.Caption:='';
end;

procedure TFrmRelFornecedor.rbfichaClick(Sender: TObject);
begin
      edfornecedor.SetFocus;  
end;

procedure TFrmRelFornecedor.FormKeyPress(Sender: TObject; var Key: Char);
begin
        if Key = CHR(13) Then
           Begin
              perform(WM_NextDlgCtl,0,0);
              Key := CHR(0);
           End;
end;

end.
