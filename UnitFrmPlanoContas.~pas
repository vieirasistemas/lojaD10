unit UnitFrmplanocontas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, Mask, EditAlinhado, ExtCtrls,
  DB, DBTables, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFrmplanocontas = class(TForm)
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    btnovo: TBitBtn;
    btgravar: TBitBtn;
    btalterar: TBitBtn;
    btexcluir: TBitBtn;
    btrelatorio: TBitBtn;
    btcancelar: TBitBtn;
    P_Dados: TPanel;
    Label1: TLabel;
    dbclassificacao: TMaskEdit;
    Label2: TLabel;
    eddescricao: TEdit;
    Label13: TLabel;
    EdSaldoAnt: TEditAlinh;
    Label15: TLabel;
    Label16: TLabel;
    Label29: TLabel;
    Label14: TLabel;
    EdEntJan: TEditAlinh;
    edSaiJan: TEditAlinh;
    edSldJan: TEditAlinh;
    Label17: TLabel;
    EdEntFev: TEditAlinh;
    edSaiFev: TEditAlinh;
    edSldFev: TEditAlinh;
    Label18: TLabel;
    EdEntMar: TEditAlinh;
    edSaiMai: TEditAlinh;
    edSaiMar: TEditAlinh;
    edSldMar: TEditAlinh;
    Label19: TLabel;
    EdEntAbr: TEditAlinh;
    edSaiAbr: TEditAlinh;
    edSldAbr: TEditAlinh;
    Label20: TLabel;
    EdEntMai: TEditAlinh;
    edSldMai: TEditAlinh;
    Label21: TLabel;
    EdEntJun: TEditAlinh;
    edSaiJun: TEditAlinh;
    edSldJun: TEditAlinh;
    Label22: TLabel;
    EdEntJul: TEditAlinh;
    edSaiJul: TEditAlinh;
    edSldJul: TEditAlinh;
    Label23: TLabel;
    EdEntAgo: TEditAlinh;
    edSaiAgo: TEditAlinh;
    edSldAgo: TEditAlinh;
    Label24: TLabel;
    EdEntSet: TEditAlinh;
    edSaiSet: TEditAlinh;
    edSldSet: TEditAlinh;
    Label26: TLabel;
    EdEntOut: TEditAlinh;
    edSaiOut: TEditAlinh;
    edSldOut: TEditAlinh;
    Label27: TLabel;
    EdEntNov: TEditAlinh;
    edSaiNov: TEditAlinh;
    edSldNov: TEditAlinh;
    Label28: TLabel;
    EdEntDez: TEditAlinh;
    edSaiDez: TEditAlinh;
    edSldDez: TEditAlinh;
    btprimeiro: TBitBtn;
    btanterior: TBitBtn;
    btproximo: TBitBtn;
    btultimo: TBitBtn;
    qratualizar: TZQuery;
    procedure dbclassificacaoExit(Sender: TObject);
    procedure eddescricaoEnter(Sender: TObject);
    procedure eddescricaoExit(Sender: TObject);
    procedure btgravarClick(Sender: TObject);
    procedure btnovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btcancelarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btexcluirClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btprimeiroClick(Sender: TObject);
    procedure btanteriorClick(Sender: TObject);
    procedure btproximoClick(Sender: TObject);
    procedure btultimoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btrelatorioClick(Sender: TObject);
    procedure btalterarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frmplanocontas: TFrmplanocontas;
  novo:boolean;

implementation

uses Unitdm, UnitFrmRelplano;

{$R *.dfm}

procedure Limpar;
begin
        Frmplanocontas.dbclassificacao.OnExit:=Frmplanocontas.dbclassificacaoExit;
        Frmplanocontas.eddescricao.OnExit:=Frmplanocontas.eddescricaoExit;
        Frmplanocontas.dbclassificacao.Text:='';
        Frmplanocontas.eddescricao.Text:='';
        Frmplanocontas.EdSaldoAnt.Text:='';
        Frmplanocontas.EdEntJan.Text:='';
        Frmplanocontas.EdEntFev.Text:='';
        Frmplanocontas.EdEntMar.Text:='';
        Frmplanocontas.EdEntAbr.Text:='';
        Frmplanocontas.EdEntMai.Text:='';
        Frmplanocontas.EdEntJun.Text:='';
        Frmplanocontas.EdEntJul.Text:='';
        Frmplanocontas.EdEntAgo.Text:='';
        Frmplanocontas.EdEntSet.Text:='';
        Frmplanocontas.EdEntOut.Text:='';
        Frmplanocontas.EdEntNov.Text:='';
        Frmplanocontas.EdEntDez.Text:='';
        Frmplanocontas.EdSaiJan.Text:='';
        Frmplanocontas.EdSaiFev.Text:='';
        Frmplanocontas.EdSaiMar.Text:='';
        Frmplanocontas.EdSaiAbr.Text:='';
        Frmplanocontas.EdSaiMai.Text:='';
        Frmplanocontas.EdSaiJun.Text:='';
        Frmplanocontas.EdSaiJul.Text:='';
        Frmplanocontas.EdSaiAgo.Text:='';
        Frmplanocontas.EdSaiSet.Text:='';
        Frmplanocontas.EdSaiOut.Text:='';
        Frmplanocontas.EdSaiNov.Text:='';
        Frmplanocontas.EdSaiDez.Text:='';
        Frmplanocontas.EdSldJan.Text:='';
        Frmplanocontas.EdSldFev.Text:='';
        Frmplanocontas.EdSldMar.Text:='';
        Frmplanocontas.EdSldAbr.Text:='';
        Frmplanocontas.EdSldMai.Text:='';
        Frmplanocontas.EdSldJun.Text:='';
        Frmplanocontas.EdSldJul.Text:='';
        Frmplanocontas.EdSldAgo.Text:='';
        Frmplanocontas.EdSldSet.Text:='';
        Frmplanocontas.EdSldOut.Text:='';
        Frmplanocontas.EdSldNov.Text:='';
        Frmplanocontas.EdSldDez.Text:='';
end;

procedure atualiza;
begin
        Frmplanocontas.dbclassificacao.Text:=dm.planocontascodigo.value;
        Frmplanocontas.eddescricao.Text:=dm.planocontasdescricao.value;
        Frmplanocontas.EdSaldoAnt.Text:=formatfloat('#,##0.00',dm.planocontassaldoant.value);
        Frmplanocontas.EdEntJan.Text:=formatfloat('#,##0.00',dm.planocontascred1.value);
        Frmplanocontas.EdEntFev.Text:=formatfloat('#,##0.00',dm.planocontascred2.value);
        Frmplanocontas.EdEntMar.Text:=formatfloat('#,##0.00',dm.planocontascred3.value);
        Frmplanocontas.EdEntAbr.Text:=formatfloat('#,##0.00',dm.planocontascred4.value);
        Frmplanocontas.EdEntMai.Text:=formatfloat('#,##0.00',dm.planocontascred5.value);
        Frmplanocontas.EdEntJun.Text:=formatfloat('#,##0.00',dm.planocontascred6.value);
        Frmplanocontas.EdEntJul.Text:=formatfloat('#,##0.00',dm.planocontascred7.value);
        Frmplanocontas.EdEntAgo.Text:=formatfloat('#,##0.00',dm.planocontascred8.value);
        Frmplanocontas.EdEntSet.Text:=formatfloat('#,##0.00',dm.planocontascred9.value);
        Frmplanocontas.EdEntOut.Text:=formatfloat('#,##0.00',dm.planocontascred10.value);
        Frmplanocontas.EdEntNov.Text:=formatfloat('#,##0.00',dm.planocontascred11.value);
        Frmplanocontas.EdEntDez.Text:=formatfloat('#,##0.00',dm.planocontascred12.value);
        Frmplanocontas.EdSaiJan.Text:=formatfloat('#,##0.00',dm.planocontasdeb1.value);
        Frmplanocontas.EdSaiFev.Text:=formatfloat('#,##0.00',dm.planocontasdeb2.value);
        Frmplanocontas.EdSaiMar.Text:=formatfloat('#,##0.00',dm.planocontasdeb3.value);
        Frmplanocontas.EdSaiAbr.Text:=formatfloat('#,##0.00',dm.planocontasdeb4.value);
        Frmplanocontas.EdSaiMai.Text:=formatfloat('#,##0.00',dm.planocontasdeb5.value);
        Frmplanocontas.EdSaiJun.Text:=formatfloat('#,##0.00',dm.planocontasdeb6.value);
        Frmplanocontas.EdSaiJul.Text:=formatfloat('#,##0.00',dm.planocontasdeb7.value);
        Frmplanocontas.EdSaiAgo.Text:=formatfloat('#,##0.00',dm.planocontasdeb8.value);
        Frmplanocontas.EdSaiSet.Text:=formatfloat('#,##0.00',dm.planocontasdeb9.value);
        Frmplanocontas.EdSaiOut.Text:=formatfloat('#,##0.00',dm.planocontasdeb10.value);
        Frmplanocontas.EdSaiNov.Text:=formatfloat('#,##0.00',dm.planocontasdeb11.value);
        Frmplanocontas.EdSaiDez.Text:=formatfloat('#,##0.00',dm.planocontasdeb12.value);
        Frmplanocontas.EdSldJan.Text:=formatfloat('#,##0.00',dm.planocontassaldoant.value+
        dm.planocontascred1.value-dm.planocontasdeb1.value);
        Frmplanocontas.EdSldFev.Text:=formatfloat('#,##0.00',dm.planocontassaldoant.value+
        dm.planocontascred1.value+dm.planocontascred2.value-dm.planocontasdeb1.value-
        dm.planocontasdeb2.value);
        Frmplanocontas.EdSldMar.Text:=formatfloat('#,##0.00',dm.planocontassaldoant.value+
        dm.planocontascred1.value+dm.planocontascred2.value+dm.planocontascred3.value-
        dm.planocontasdeb1.value-dm.planocontasdeb2.value-dm.planocontasdeb3.value);
        Frmplanocontas.EdSldAbr.Text:=formatfloat('#,##0.00',dm.planocontassaldoant.value+
        dm.planocontascred1.value+dm.planocontascred2.value+dm.planocontascred3.value+
        dm.planocontascred4.value-dm.planocontasdeb1.value-dm.planocontasdeb2.value-
        dm.planocontasdeb3.value-dm.planocontasdeb4.value);
        Frmplanocontas.EdSldMai.Text:=formatfloat('#,##0.00',dm.planocontassaldoant.value+
        dm.planocontascred1.value+dm.planocontascred2.value+dm.planocontascred3.value+
        dm.planocontascred4.value+dm.planocontascred5.value-dm.planocontasdeb1.value-
        dm.planocontasdeb2.value-dm.planocontasdeb3.value-dm.planocontasdeb4.value-
        dm.planocontasdeb5.value);
        Frmplanocontas.EdSldJun.Text:=formatfloat('#,##0.00',dm.planocontassaldoant.value+
        dm.planocontascred1.value+dm.planocontascred2.value+dm.planocontascred3.value+
        dm.planocontascred4.value+dm.planocontascred5.value+dm.planocontascred6.value-
        dm.planocontasdeb1.value-dm.planocontasdeb2.value-dm.planocontasdeb3.value-
        dm.planocontasdeb4.value-dm.planocontasdeb5.value-dm.planocontasdeb6.value);
        Frmplanocontas.EdSldJul.Text:=formatfloat('#,##0.00',dm.planocontassaldoant.value+
        dm.planocontascred1.value+dm.planocontascred2.value+dm.planocontascred3.value+
        dm.planocontascred4.value+dm.planocontascred5.value+dm.planocontascred6.value+
        dm.planocontascred7.value-dm.planocontasdeb1.value-dm.planocontasdeb2.value-
        dm.planocontasdeb3.value-dm.planocontasdeb4.value-dm.planocontasdeb5.value-
        dm.planocontasdeb6.value-dm.planocontasdeb7.value);
        Frmplanocontas.EdSldAgo.Text:=formatfloat('#,##0.00',dm.planocontassaldoant.value+
        dm.planocontascred1.value+dm.planocontascred2.value+dm.planocontascred3.value+
        dm.planocontascred4.value+dm.planocontascred5.value+dm.planocontascred6.value+
        dm.planocontascred7.value+dm.planocontascred8.value-dm.planocontasdeb1.value-
        dm.planocontasdeb2.value-dm.planocontasdeb3.value-dm.planocontasdeb4.value-
        dm.planocontasdeb5.value-dm.planocontasdeb6.value-dm.planocontasdeb7.value-
        dm.planocontasdeb8.value);
        Frmplanocontas.EdSldSet.Text:=formatfloat('#,##0.00',dm.planocontassaldoant.value+
        dm.planocontascred1.value+dm.planocontascred2.value+dm.planocontascred3.value+
        dm.planocontascred4.value+dm.planocontascred5.value+dm.planocontascred6.value+
        dm.planocontascred7.value+dm.planocontascred8.value+dm.planocontascred9.value-
        dm.planocontasdeb1.value-dm.planocontasdeb2.value-dm.planocontasdeb3.value-
        dm.planocontasdeb4.value-dm.planocontasdeb5.value-dm.planocontasdeb6.value-
        dm.planocontasdeb7.value-dm.planocontasdeb8.value-dm.planocontasdeb9.value);
        Frmplanocontas.EdSldOut.Text:=formatfloat('#,##0.00',dm.planocontassaldoant.value+
        dm.planocontascred1.value+dm.planocontascred2.value+dm.planocontascred3.value+
        dm.planocontascred4.value+dm.planocontascred5.value+dm.planocontascred6.value+
        dm.planocontascred7.value+dm.planocontascred8.value+dm.planocontascred9.value+
        dm.planocontascred10.value-dm.planocontasdeb1.value-dm.planocontasdeb2.value-
        dm.planocontasdeb3.value-dm.planocontasdeb4.value-dm.planocontasdeb5.value-
        dm.planocontasdeb6.value-dm.planocontasdeb7.value-dm.planocontasdeb8.value-
        dm.planocontasdeb9.value-dm.planocontasdeb10.value);
        Frmplanocontas.EdSldNov.Text:=formatfloat('#,##0.00',dm.planocontassaldoant.value+
        dm.planocontascred1.value+dm.planocontascred2.value+dm.planocontascred3.value+
        dm.planocontascred4.value+dm.planocontascred5.value+dm.planocontascred6.value+
        dm.planocontascred7.value+dm.planocontascred8.value+dm.planocontascred9.value+
        dm.planocontascred10.value+dm.planocontascred11.value-dm.planocontasdeb1.value-
        dm.planocontasdeb2.value-dm.planocontasdeb3.value-dm.planocontasdeb4.value-
        dm.planocontasdeb5.value-dm.planocontasdeb6.value-dm.planocontasdeb7.value-
        dm.planocontasdeb8.value-dm.planocontasdeb9.value-dm.planocontasdeb10.value-
        dm.planocontasdeb11.value);
        Frmplanocontas.EdSldDez.Text:=formatfloat('#,##0.00',dm.planocontassaldoant.value+
        dm.planocontascred1.value+dm.planocontascred2.value+dm.planocontascred3.value+
        dm.planocontascred4.value+dm.planocontascred5.value+dm.planocontascred6.value+
        dm.planocontascred7.value+dm.planocontascred8.value+dm.planocontascred9.value+
        dm.planocontascred10.value+dm.planocontascred11.value+dm.planocontascred12.value-
        dm.planocontasdeb1.value-dm.planocontasdeb2.value-dm.planocontasdeb3.value-
        dm.planocontasdeb4.value-dm.planocontasdeb5.value-dm.planocontasdeb6.value-
        dm.planocontasdeb7.value-dm.planocontasdeb8.value-dm.planocontasdeb9.value-
        dm.planocontasdeb10.value-dm.planocontasdeb11.value-dm.planocontasdeb12.value);
end;

procedure desabilita;
begin
        Frmplanocontas.btprimeiro.enabled:=false;
        Frmplanocontas.btanterior.enabled:=false;
        Frmplanocontas.btproximo.enabled:=false;
        Frmplanocontas.btultimo.enabled:=false;
        Frmplanocontas.btnovo.enabled:=false;
        Frmplanocontas.btexcluir.enabled:=false;
        Frmplanocontas.btrelatorio.enabled:=false;
        Frmplanocontas.btgravar.enabled:=true;
        Frmplanocontas.btcancelar.Caption:='Cancelar';
        Frmplanocontas.P_Dados.enabled:=true;
end;

procedure habilita;
begin
        Frmplanocontas.dbclassificacao.OnExit:=nil;
        Frmplanocontas.eddescricao.OnExit:=nil;
        Frmplanocontas.btprimeiro.enabled:=true;
        Frmplanocontas.btanterior.enabled:=true;
        Frmplanocontas.btproximo.enabled:=true;
        Frmplanocontas.btultimo.enabled:=true;
        Frmplanocontas.btnovo.enabled:=true;
        Frmplanocontas.btexcluir.enabled:=true;
        Frmplanocontas.btrelatorio.enabled:=true;
        Frmplanocontas.btgravar.enabled:=false;
        Frmplanocontas.btcancelar.Caption:='Sair';
        Frmplanocontas.P_Dados.enabled:=false;
end;

procedure TFrmplanocontas.dbclassificacaoExit(Sender: TObject);
var
  pos_anterior: string;
begin
   dm.planocontas.Close;
   dm.planocontas.Open;
   if not (length(dbclassificacao.text) in [1, 2, 3, 5 , 8]) then
      begin
         showmessage('Preenchimento Incorreto...');
         dbclassificacao.setfocus;
      end;

   case length(dbclassificacao.text) of
     1    : pos_anterior := dbclassificacao.text;
     2    : pos_anterior := copy(dbclassificacao.text,1,1);
     3    : pos_anterior := copy(dbclassificacao.text,1,2);
     5    : pos_anterior := copy(dbclassificacao.text,1,3);
     8    : pos_anterior := copy(dbclassificacao.text,1,5);
   end;
   if length(dbclassificacao.text)=1 then
      if dm.planocontas.Locate('codigo', dbclassificacao.text, []) then
         begin
           showmessage('Conta já Cadastrada');
           btcancelar.Click;
         end
        else
         eddescricao.setfocus
   else
   if not dm.planocontas.Locate('codigo', pos_anterior, []) then
   begin
      showmessage('Conta Superior não Localizada');
      dbclassificacao.SetFocus;
   end
   else
      eddescricao.setfocus;

end;

procedure TFrmplanocontas.eddescricaoEnter(Sender: TObject);
begin
      if dm.planocontas.Locate('codigo', dbclassificacao.text, []) then
         begin
           showmessage('Conta já Cadastrada');
           btcancelar.Click;
         end;
end;

procedure TFrmplanocontas.eddescricaoExit(Sender: TObject);
begin
        if eddescricao.Text='' then
           eddescricao.SetFocus
        else
           btgravar.Click;
end;

procedure TFrmplanocontas.btgravarClick(Sender: TObject);
var
P_descricao,P_chave:string;
begin
 if novo=true then
    begin
      try
        dm.planocontas.insert;
        dm.planocontascodigo.value:=dbclassificacao.text;
        dm.planocontasdescricao.Value:=eddescricao.text;
        dbclassificacao.editmask:='#.#.#.##.###';
        dm.planocontaschave.value:=dbclassificacao.text+'   '+eddescricao.text;
        dm.planocontas.post;
      except
        showmessage('Erro ao Inserir Registro');
        btcancelar.Click;
      end;
    end
    else
    begin
      try
        P_descricao:=eddescricao.text;
        dbclassificacao.editmask:='#.#.#.##.###';
        P_chave:=dbclassificacao.text+'   '+eddescricao.text;

        dbclassificacao.editmask:='9.9.9.99.999;0;_';
        qratualizar.close;
        qratualizar.sql.clear;
        qratualizar.sql.add('update planocontas set');
        qratualizar.sql.add('descricao = :P_descricao,');
        qratualizar.sql.add('chave = :P_chave');
        qratualizar.sql.add('where codigo = '+chr(39)+dbclassificacao.text+chr(39));
        qratualizar.Params[0].Value := P_descricao;
        qratualizar.Params[1].Value := P_chave;
        qratualizar.ExecSQL;
      except
        showmessage('Erro ao Atualizar Registro');
        btcancelar.Click;
      end;
    end;
  dbclassificacao.editmask:='9.9.9.99.999;0;_';
  dm.planocontas.Close;
  dm.planocontas.SQL.Clear;
  dm.planocontas.SQL.Add('select * from planocontas');
  dm.planocontas.SQL.Add('order by codigo');
  dm.planocontas.open;
  dm.planocontas.Locate('codigo',dbclassificacao.Text,[]);
  atualiza;
  habilita;
  btnovo.setfocus;
end;

procedure TFrmplanocontas.btnovoClick(Sender: TObject);
begin
  dbclassificacao.ReadOnly:=false;
  eddescricao.OnEnter:=eddescricaoEnter;
  novo:=true;
  Limpar;
  dbclassificacao.editmask:='9.9.9.99.999;0;_';
  desabilita;
  dbclassificacao.SetFocus;
end;

procedure TFrmplanocontas.FormShow(Sender: TObject);
begin
      dm.planocontas.Close;
      dm.planocontas.SQL.Clear;
      dm.planocontas.SQL.Add('select * from planocontas');
      dm.planocontas.SQL.Add('order by codigo');
      dm.planocontas.open;
end;

procedure TFrmplanocontas.btcancelarClick(Sender: TObject);
begin
      if btnovo.Enabled=false then
         begin
           habilita;
           limpar;
         end
         else
           close;
end;

procedure TFrmplanocontas.FormKeyPress(Sender: TObject; var Key: Char);
begin
        if key=#13 then
        begin
           SelectNext(activecontrol,True,True);
           key:=#0;
        end;
end;

procedure TFrmplanocontas.btexcluirClick(Sender: TObject);
begin
      if dbclassificacao.Text='' then
         begin
            application.MessageBox('Clique numa conta para excluí-la','Atenção',mb_ok);
            dbgrid1.setfocus;
         end
         else
         begin
           if application.messagebox('Deseja apagar o registro?','Administrador',mb_yesno+mb_iconquestion)=id_yes then
              begin
                qratualizar.Close;
                qratualizar.SQL.Clear;
                qratualizar.SQL.Add('delete from planocontas');
                qratualizar.SQL.Add('where codigo= '+chr(39)+dbclassificacao.text+chr(39));
                qratualizar.ExecSQL;
                dm.planocontas.Close;
                dm.planocontas.Open;
                limpar;
              end;
         end;
end;

procedure TFrmplanocontas.DBGrid1CellClick(Column: TColumn);
begin
        atualiza;
end;

procedure TFrmplanocontas.btprimeiroClick(Sender: TObject);
begin
        dm.planocontas.First;
        atualiza;
end;

procedure TFrmplanocontas.btanteriorClick(Sender: TObject);
begin
        dm.planocontas.prior;
        atualiza;
end;

procedure TFrmplanocontas.btproximoClick(Sender: TObject);
begin
        dm.planocontas.next;
        atualiza;
end;

procedure TFrmplanocontas.btultimoClick(Sender: TObject);
begin
        dm.planocontas.last;
        atualiza;
end;

procedure TFrmplanocontas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        dm.planocontas.close;
end;

procedure TFrmplanocontas.btrelatorioClick(Sender: TObject);
begin
        try
          Application.CreateForm(TFrmRelplano, FrmRelplano);
          FrmRelplano.showmodal;
        finally
          FrmRelplano.Release;
          FrmRelplano:=nil;
        end;
end;

procedure TFrmplanocontas.btalterarClick(Sender: TObject);
begin
  novo:=false;
  desabilita;
  dbclassificacao.ReadOnly:=true;
  eddescricao.OnEnter:=nil;
  eddescricao.SetFocus;
end;

end.
