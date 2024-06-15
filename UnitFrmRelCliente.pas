unit UnitFrmRelCliente;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, DBTables, Grids, DBGrids, ZAbstractRODataset,
  ComObj, ZAbstractDataset, ZDataset, QRCtrls, QuickRpt, ExtCtrls;

type
  TFrmRelCliente = class(TForm)
    GroupBox2: TGroupBox;
    rb1: TRadioButton;
    rb2: TRadioButton;
    bt1: TBitBtn;
    bt2: TBitBtn;
    GroupBox1: TGroupBox;
    rbanalitico: TRadioButton;
    rbsintetico: TRadioButton;
    GroupBox3: TGroupBox;
    rbfisica: TRadioButton;
    rbjuridica: TRadioButton;
    rbgeral: TRadioButton;
    cbcidade: TComboBox;
    Label3: TLabel;
    CBBAIRRO: TComboBox;
    Label4: TLabel;
    cbvendedor: TComboBox;
    Label5: TLabel;
    GroupBox4: TGroupBox;
    chgeral: TCheckBox;
    chbairro: TCheckBox;
    chcidade: TCheckBox;
    chetiquetas: TCheckBox;
    chficha: TCheckBox;
    qratualizar: TZQuery;
    Label2: TLabel;
    edmes: TEdit;
    QuickRep1: TQuickRep;
    QRGroup1: TQRGroup;
    qrquebrarI: TQRDBText;
    qrquebrar: TQRLabel;
    QRBand1: TQRBand;
    QRExpr3: TQRExpr;
    QRExpr1: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRDBText1: TQRDBText;
    QRExpr17: TQRExpr;
    QRBand3: TQRBand;
    QRShape1: TQRShape;
    qrtitulo: TQRLabel;
    QRLabel21: TQRLabel;
    QRSysData4: TQRSysData;
    QRSysData5: TQRSysData;
    QRSysData6: TQRSysData;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel1: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel12: TQRLabel;
    QRBand4: TQRBand;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QuickRep4: TQuickRep;
    QRBand8: TQRBand;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QuickRep3: TQuickRep;
    QRBand5: TQRBand;
    QRExpr12: TQRExpr;
    QRExpr13: TQRExpr;
    QRExpr14: TQRExpr;
    QRExpr15: TQRExpr;
    QRExpr16: TQRExpr;
    QRDBText6: TQRDBText;
    QRLabel24: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRExpr18: TQRExpr;
    QRLabel32: TQRLabel;
    QRExpr19: TQRExpr;
    QRExpr20: TQRExpr;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRExpr21: TQRExpr;
    QRLabel3: TQRLabel;
    QRExpr22: TQRExpr;
    QRBand6: TQRBand;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText8: TQRDBText;
    QRBand7: TQRBand;
    QRLabel26: TQRLabel;
    QRLabel29: TQRLabel;
    QuickRep2: TQuickRep;
    PageFooterBand1: TQRBand;
    QRLabel13: TQRLabel;
    QRLabel36: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    DetailBand1: TQRBand;
    QRExpr2: TQRExpr;
    QRDBText17: TQRDBText;
    QRExpr7: TQRExpr;
    QRDBText18: TQRDBText;
    QRExpr8: TQRExpr;
    PageHeaderBand1: TQRBand;
    QRLabel41: TQRLabel;
    QRSysData7: TQRSysData;
    QRLabel42: TQRLabel;
    QRSysData8: TQRSysData;
    QRLabel43: TQRLabel;
    QRSysData9: TQRSysData;
    QRLabel44: TQRLabel;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRLabel45: TQRLabel;
    QRDBText21: TQRDBText;
    chExcel: TCheckBox;
    clientes: TZQuery;
    clientescodigo: TIntegerField;
    clientescpf: TStringField;
    clientesrg: TStringField;
    clientesnome: TStringField;
    clientesendereco: TStringField;
    clientesbairro: TStringField;
    clientescidade: TStringField;
    clientesestado: TStringField;
    clientescep: TStringField;
    clientesfone1: TStringField;
    clientesfone2: TStringField;
    clientesfone3: TStringField;
    clientessexo: TStringField;
    clientesdtnasc: TDateField;
    clientesemail: TStringField;
    clientesinstagran: TStringField;
    clientesperc: TFloatField;
    clientesdias: TIntegerField;
    clientesfantasia: TStringField;
    procedure bt1Click(Sender: TObject);
    procedure bt2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbvendedorExit(Sender: TObject);
    procedure chgeralClick(Sender: TObject);
    procedure chbairroClick(Sender: TObject);
    procedure chcidadeClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure chetiquetasClick(Sender: TObject);
    procedure chfichaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelCliente: TFrmRelCliente;
  Excel : variant;
  Linha : integer; 
  qry   : TZQuery;

implementation

uses Unitdm;

{$R *.DFM}

procedure TFrmRelCliente.bt1Click(Sender: TObject);
begin
  if chExcel.Checked=true then
     begin
      Excel := CreateOleObject('Excel.Application');
      Excel.Visible :=True;
      Excel.WorkBooks.Open(ExtractFilePath(ParamStr(0))+'base.xls');
      Excel.WorkBooks[1].Sheets[1].Cells[1,1]:='Nome';
      Excel.WorkBooks[1].Sheets[1].Cells[1,2]:='CNPJ/CPF';
      Excel.WorkBooks[1].Sheets[1].Cells[1,3]:='Endereço';
      Excel.WorkBooks[1].Sheets[1].Cells[1,4]:='Bairro';
      Excel.WorkBooks[1].Sheets[1].Cells[1,5]:='Cidade';
      Excel.WorkBooks[1].Sheets[1].Cells[1,6]:='Estado';
      Excel.WorkBooks[1].Sheets[1].Cells[1,7]:='CEP';
      Excel.WorkBooks[1].Sheets[1].Cells[1,8]:='Telefone1';
      Excel.WorkBooks[1].Sheets[1].Cells[1,9]:='Telefone2';
      Excel.WorkBooks[1].Sheets[1].Cells[1,10]:='E-mail';
      Excel.WorkBooks[1].Sheets[1].Cells[1,11]:='Cliente';
      Excel.WorkBooks[1].Sheets[1].Cells[1,12]:='Ult. Compra';
      dm.Clientes.close;
      dm.Clientes.sql.clear;
      dm.Clientes.sql.add('select * from clientes');
      if cbcidade.Text<>'' then
         dm.Clientes.sql.add('where (cidade = '+chr(39)+cbcidade.Text+chr(39)+')');
      if CBBAIRRO.Text<>'' then
         dm.Clientes.sql.add('where (bairro = '+chr(39)+CBBAIRRO.Text+chr(39)+')');
      if cbvendedor.Text<>'' then
         dm.Clientes.sql.add('where (vendedor = '+IntToStr(dm.fornecedorescodigo.Value)+')');
      dm.Clientes.open;
      Linha:=2;
      While not dm.Clientes.Eof do
           Begin
             Excel.WorkBooks[1].Sheets[1].Cells[Linha,1]:=dm.Clientesnome.value;
             Excel.WorkBooks[1].Sheets[1].Cells[Linha,2]:=dm.clientescpf.value;
             Excel.WorkBooks[1].Sheets[1].Cells[Linha,3]:=dm.clientesendereco.Value;
             Excel.WorkBooks[1].Sheets[1].Cells[Linha,4]:=dm.clientesbairro.Value;
             Excel.WorkBooks[1].Sheets[1].Cells[Linha,5]:=dm.clientescidade.Value;
             Excel.WorkBooks[1].Sheets[1].Cells[Linha,6]:=dm.clientesestado.Value;
             Excel.WorkBooks[1].Sheets[1].Cells[Linha,7]:=dm.clientescep.Value;
             Excel.WorkBooks[1].Sheets[1].Cells[Linha,8]:=dm.clientesfone1.Value;
             Excel.WorkBooks[1].Sheets[1].Cells[Linha,9]:=dm.clientesfone2.Value;
             Excel.WorkBooks[1].Sheets[1].Cells[Linha,10]:=dm.clientesemail.Value;
             Excel.WorkBooks[1].Sheets[1].Cells[Linha,11]:=dm.clientescodigo.Value;

             qry              :=  TZQuery.Create(nil);
             qry.Connection   :=  dm.ZConnection1;
             qry.close;
             qry.sql.clear;
             qry.sql.add('select data from venda');
             qry.sql.add('where cliente = '+dm.clientescodigo.AsString);
             qry.sql.add('order by data desc');
             qry.sql.add('limit 1');
             qry.Open;
             if qry.RecordCount>0 then
                Excel.WorkBooks[1].Sheets[1].Cells[Linha,12]:=qry.FieldByName('data').AsString;
             qry.Free;

             dm.Clientes.Next;
             Linha:=Linha+1;
             Application.ProcessMessages;
           end;
     end
     else
     begin
       dm.parametros.Close;
       dm.parametros.Open;
        if rbanalitico.checked then
           begin
             clientes.close;
             clientes.sql.clear;
             clientes.sql.add('select * from clientes');
             if rbgeral.Checked then
                begin
                  if (cbcidade.Text='') and
                     (edmes.Text<>'') and
                     (CBBAIRRO.Text='') and
                     (cbvendedor.Text='') then
                     clientes.sql.add('where (EXTRACT(MONTH FROM DtNasc) = '+edmes.Text+')')
                  else if (cbcidade.Text<>'') and
                     (edmes.Text='') and
                     (CBBAIRRO.Text='') and
                     (cbvendedor.Text='') then
                     clientes.sql.add('where (cidade = '+chr(39)+cbcidade.Text+chr(39)+')')
                  else if (cbcidade.Text='') and
                     (CBBAIRRO.Text<>'') and
                     (edmes.Text='') and
                     (cbvendedor.Text='') then
                     clientes.sql.add('where (bairro = '+chr(39)+CBBAIRRO.Text+chr(39)+')')
                  else if (cbcidade.Text='') and
                     (edmes.Text='') and
                     (CBBAIRRO.Text='') and
                     (cbvendedor.Text<>'') then
                     begin
                       clientes.sql.add('where (vendedor = '+IntToStr(dm.fornecedorescodigo.Value)+')');
                       qrtitulo.Caption:='Relatório de Clientes - Vendedor(a): '+cbvendedor.Text;
                     end
                  else if (cbcidade.Text<>'') and
                     (edmes.Text='') and
                     (CBBAIRRO.Text<>'') and
                     (cbvendedor.Text='') then
                     begin
                       clientes.sql.add('where (cidade = '+chr(39)+cbcidade.Text+chr(39)+')');
                       clientes.sql.add('and (bairro = '+chr(39)+CBBAIRRO.Text+chr(39)+')');
                     end
                  else if (cbcidade.Text<>'') and
                     (edmes.Text='') and
                     (CBBAIRRO.Text='') and
                     (cbvendedor.Text<>'') then
                     begin
                       clientes.sql.add('where (cidade = '+chr(39)+cbcidade.Text+chr(39)+')');
                       clientes.sql.add('and (vendedor = '+IntToStr(dm.fornecedorescodigo.Value)+')');
                       qrtitulo.Caption:='Relatório de Clientes - Vendedor(a): '+cbvendedor.Text;
                     end
                  else if (cbcidade.Text<>'') and
                     (edmes.Text='') and
                     (CBBAIRRO.Text<>'') and
                     (cbvendedor.Text<>'') then
                     begin
                       clientes.sql.add('where (cidade = '+chr(39)+cbcidade.Text+chr(39)+')');
                       clientes.sql.add('and (bairro = '+chr(39)+CBBAIRRO.Text+chr(39)+')');
                       clientes.sql.add('and (vendedor = '+IntToStr(dm.fornecedorescodigo.Value)+')');
                       qrtitulo.Caption:='Relatório de Clientes - Vendedor(a): '+cbvendedor.Text;
                     end;
                end
             else if rbfisica.Checked then
                begin
                  clientes.sql.add('where tipo = '+chr(39)+'F'+chr(39));
                  if (cbcidade.Text<>'') and
                     (CBBAIRRO.Text='') and
                     (cbvendedor.Text='') then
                     clientes.sql.add('and (cidade = '+chr(39)+cbcidade.Text+chr(39)+')')
                  else if (cbcidade.Text='') and
                     (CBBAIRRO.Text<>'') and
                     (cbvendedor.Text='') then
                     clientes.sql.add('and (bairro = '+chr(39)+CBBAIRRO.Text+chr(39)+')')
                  else if (cbcidade.Text='') and
                     (CBBAIRRO.Text='') and
                     (cbvendedor.Text<>'') then
                     clientes.sql.add('and (vendedor = '+IntToStr(dm.fornecedorescodigo.Value)+')')
                  else if (cbcidade.Text<>'') and
                     (CBBAIRRO.Text<>'') and
                     (cbvendedor.Text='') then
                     begin
                       clientes.sql.add('and (cidade = '+chr(39)+cbcidade.Text+chr(39)+')');
                       clientes.sql.add('and (bairro = '+chr(39)+CBBAIRRO.Text+chr(39)+')');
                     end
                  else if (cbcidade.Text<>'') and
                     (CBBAIRRO.Text='') and
                     (cbvendedor.Text<>'') then
                     begin
                       clientes.sql.add('and (cidade = '+chr(39)+cbcidade.Text+chr(39)+')');
                       clientes.sql.add('and (vendedor = '+IntToStr(dm.fornecedorescodigo.Value)+')')
                     end;
                end
             else if rbjuridica.Checked then
                begin
                  clientes.sql.add('where tipo = '+chr(39)+'J'+chr(39));
                  if (cbcidade.Text<>'') and
                     (CBBAIRRO.Text='') and
                     (cbvendedor.Text='') then
                     clientes.sql.add('and (cidade = '+chr(39)+cbcidade.Text+chr(39)+')')
                  else if (cbcidade.Text='') and
                     (CBBAIRRO.Text<>'') and
                     (cbvendedor.Text='') then
                     clientes.sql.add('and (bairro = '+chr(39)+CBBAIRRO.Text+chr(39)+')')
                  else if (cbcidade.Text='') and
                     (CBBAIRRO.Text='') and
                     (cbvendedor.Text<>'') then
                     begin
                       clientes.sql.add('and (vendedor = '+IntToStr(dm.fornecedorescodigo.Value)+')');
                       qrtitulo.Caption:='Relatório de Clientes - Vendedor(a): '+cbvendedor.Text;
                     end
                  else if (cbcidade.Text<>'') and
                     (CBBAIRRO.Text<>'') and
                     (cbvendedor.Text='') then
                     begin
                       clientes.sql.add('and (cidade = '+chr(39)+cbcidade.Text+chr(39)+')');
                       clientes.sql.add('and (bairro = '+chr(39)+CBBAIRRO.Text+chr(39)+')');
                     end
                  else if (cbcidade.Text<>'') and
                     (CBBAIRRO.Text='') and
                     (cbvendedor.Text<>'') then
                     begin
                       clientes.sql.add('and (cidade = '+chr(39)+cbcidade.Text+chr(39)+')');
                       clientes.sql.add('and (vendedor = '+IntToStr(dm.fornecedorescodigo.Value)+')')
                     end;
                end;
             if chgeral.Checked=true then
                begin
                  QRGroup1.Enabled:=false;
                  clientes.sql.add('order by nome');
                end
             else if chbairro.Checked=true then
                begin
                  QRGroup1.Enabled:=true;
                  QRGroup1.Expression:='bairro';
                  qrquebrar.Caption:='BAIRRO:';
                  qrquebrarI.DataField:='bairro';
                  clientes.sql.add('order by bairro,nome');
                end
                else
                begin
                  QRGroup1.Enabled:=true;
                  qrquebrar.Caption:='CIDADE:';
                  QRGroup1.Expression:='cidade';
                  qrquebrarI.DataField:='cidade';
                  clientes.sql.add('order by cidade,nome');
                end;
             clientes.open;
             if (chetiquetas.Checked=false) and (chficha.Checked=false) then
                begin
                  if rb1.Checked then
                     Quickrep1.preview
                  else
                     Quickrep1.print;
                end
             else if (chetiquetas.Checked=false) and (chficha.Checked=true) then
                begin
                  if rb1.Checked then
                     Quickrep3.preview
                  else
                     Quickrep3.print;
                end
             else if (chetiquetas.Checked=true) and (chficha.Checked=false) then
                begin
                  if rb1.Checked then
                     Quickrep4.preview
                  else
                     Quickrep4.print;
                end;
           end
        else if rbsintetico.checked then
           begin
             clientes.close;
             clientes.sql.clear;
             clientes.sql.add('select * from clientes');
             if rbfisica.Checked then
                clientes.sql.add('where tipo = '+chr(39)+'F'+chr(39))
             else if rbjuridica.Checked then
                clientes.sql.add('where tipo = '+chr(39)+'J'+chr(39));
             if edmes.Text<>'' then
                clientes.sql.add('where (EXTRACT(MONTH FROM DtNasc) = '+edmes.Text+')');
             clientes.sql.add('order by nome');
             clientes.open;
             if rb1.Checked then
                Quickrep2.preview
             else
                Quickrep2.print;
           end;
     end;
end;

procedure TFrmRelCliente.bt2Click(Sender: TObject);
begin
        close;
end;

procedure TFrmRelCliente.FormShow(Sender: TObject);
begin
  cbcidade.Items.Clear;
  CBBAIRRO.Items.Clear;
  dm.Clientes.close;
  dm.Clientes.sql.clear;
  dm.Clientes.sql.add('select * from clientes');
  dm.Clientes.open;
  while not dm.Clientes.Eof do
     begin
        if dm.Clientescidade.Value<>'' then
           begin
             if cbcidade.Items.IndexOf(dm.Clientescidade.AsString) < 0 then
                cbcidade.Items.Add(dm.Clientescidade.AsString);
           end;
        if dm.Clientesbairro.Value<>'' then
           begin
             if CBBAIRRO.Items.IndexOf(dm.Clientesbairro.AsString) < 0 then
                CBBAIRRO.Items.Add(dm.Clientesbairro.AsString);
           end;
        dm.Clientes.Next;
     end;

  dm.fornecedores.Close;
  dm.fornecedores.SQL.Clear;
  dm.fornecedores.SQL.Add('select * from fornecedores');
  dm.fornecedores.sql.add('where (tipo = '+chr(39)+'V'+chr(39)+')');
  dm.fornecedores.Open;
  cbvendedor.Items.Clear;
  while not dm.fornecedores.Eof do
        begin
          cbvendedor.Items.add(dm.fornecedoresnome.value);
          dm.fornecedores.Next;
        end;
end;

procedure TFrmRelCliente.cbvendedorExit(Sender: TObject);
begin
  if cbvendedor.Text<>'' then
     begin
       dm.fornecedores.Close;
       dm.fornecedores.SQL.Clear;
       dm.fornecedores.SQL.Add('select * from fornecedores');
       dm.fornecedores.sql.add('where (tipo = '+chr(39)+'V'+chr(39)+')');
       dm.fornecedores.Open;
       if not dm.fornecedores.Locate('nome',cbvendedor.Text,[]) then
          begin
            application.MessageBox('Vendedor não Cadastrado!','Atenção',mb_Ok+MB_ICONINFORMATION);
            cbvendedor.setfocus;
          end;
     end;
end;

procedure TFrmRelCliente.chgeralClick(Sender: TObject);
begin
      if chgeral.Checked=true then
         begin
           chbairro.Checked:=false;
           chcidade.Checked:=false;
         end;
end;

procedure TFrmRelCliente.chbairroClick(Sender: TObject);
begin
      if chbairro.Checked=true then
         begin
           chgeral.Checked:=false;
           chcidade.Checked:=false;
         end;
end;

procedure TFrmRelCliente.chcidadeClick(Sender: TObject);
begin
      if chcidade.Checked=true then
         begin
           chgeral.Checked:=false;
           chbairro.Checked:=false;
         end;
end;

procedure TFrmRelCliente.FormKeyPress(Sender: TObject; var Key: Char);
begin
        if Key = CHR(13) Then
           Begin
              perform(WM_NextDlgCtl,0,0);
              Key := CHR(0);
           End;
end;

procedure TFrmRelCliente.chetiquetasClick(Sender: TObject);
begin
      if chetiquetas.Checked=true then
         chficha.Checked:=false;
end;

procedure TFrmRelCliente.chfichaClick(Sender: TObject);
begin
      if chficha.Checked=true then
         chetiquetas.Checked:=false;
end;

end.
