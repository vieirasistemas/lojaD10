unit UnitFrmGrupo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Mask, StdCtrls, Grids, DBGrids, Db, DBTables, DBCtrls, ExtDlgs, Buttons,
  ExtCtrls, QRCtrls, QuickRpt, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, jpeg;

type
  TFrmGrupo = class(TForm)
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    btnovo: TBitBtn;
    btgravar: TBitBtn;
    btalterar: TBitBtn;
    btexcluir: TBitBtn;
    btcancelar: TBitBtn;
    P_dados: TPanel;
    Label1: TLabel;
    Label16: TLabel;
    mecodigo: TMaskEdit;
    eddescricao: TEdit;
    qratualizar: TZQuery;
    procedure btnovoClick(Sender: TObject);
    procedure eddescricaoEnter(Sender: TObject);
    procedure btgravarClick(Sender: TObject);
    procedure mecodigoExit(Sender: TObject);
    procedure btexcluirClick(Sender: TObject);
    procedure btlocalizarClick(Sender: TObject);
    procedure btalterarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btcancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure mecodigoEnter(Sender: TObject);
    procedure btprimeiroClick(Sender: TObject);
    procedure btanteriorClick(Sender: TObject);
    procedure btproximoClick(Sender: TObject);
    procedure btultimoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmGrupo: TFrmGrupo;
  opcao,check:boolean;
  log: TextFile;
  R_hora,texto,tip:string;

implementation

uses Unitdm, Unitfrmprincipal;

{$R *.DFM}

procedure Atualiza;
begin
  FrmGrupo.mecodigo.EditMask:='';
  FrmGrupo.mecodigo.text:=dm.gruposcodigo.value;
  FrmGrupo.eddescricao.text:=dm.Gruposdescricao.value;
end;

procedure limpar;
begin
  FrmGrupo.mecodigo.text:='';
  FrmGrupo.eddescricao.text:='';
end;

procedure Desabilita;
begin
  FrmGrupo.btnovo.enabled:=false;
  FrmGrupo.btalterar.enabled:=false;
  FrmGrupo.btexcluir.enabled:=false;
  FrmGrupo.btgravar.enabled:=true;
  FrmGrupo.P_dados.enabled:=true;
end;

procedure Habilita;
begin
  FrmGrupo.btnovo.enabled:=true;
  FrmGrupo.btalterar.enabled:=true;
  FrmGrupo.btexcluir.enabled:=true;
  FrmGrupo.btgravar.enabled:=false;
  FrmGrupo.P_dados.enabled:=false;
end;

procedure TFrmGrupo.btnovoClick(Sender: TObject);
begin
        eddescricao.OnEnter:=eddescricaoEnter;
        opcao:=true;
        Desabilita;
        limpar;
        mecodigo.setfocus;
end;

procedure TFrmGrupo.eddescricaoEnter(Sender: TObject);
begin
      if dm.Grupos.Locate('codigo', mecodigo.text, []) then
         begin
           showmessage('Conta já Cadastrada');
           mecodigo.SetFocus;
         end;
end;

procedure TFrmGrupo.btgravarClick(Sender: TObject);
var
G_descricao:string;
begin
      if opcao=true then
         begin
           dm.Grupos.Insert;
           dm.gruposcodigo.value:=mecodigo.text;
           dm.Gruposdescricao.value:=eddescricao.text;
           dm.Grupos.post;

           R_hora:=TimeToStr(time);
           dm.rastro.Close;
           dm.rastro.SQL.Clear;
           dm.rastro.SQL.Add('select * from rastro');
           dm.rastro.SQL.Add('where (1=2)');
           dm.rastro.Open;
           dm.rastro.Insert;
           dm.rastrodata.Value:=date;
           dm.rastrohora.Value:=R_hora;
           dm.rastrooperador.Value:=FrmPrincipal.sb.Panels[3].Text;
           dm.rastrorotina.Value:='GRUPOS';
           dm.rastrooperacao.Value:='I';
           dm.rastrohistorico.Value:=mecodigo.Text+' '+
           eddescricao.Text;
           dm.rastro.Post;
           dm.rastro.Close;
         end
         else
         begin
           G_descricao:=eddescricao.text;
           qratualizar.close;
           qratualizar.sql.clear;
           qratualizar.sql.add('update grupos set');
           qratualizar.sql.add('descricao = :G_descricao');
           qratualizar.sql.add('where codigo = '+chr(39)+mecodigo.text+chr(39));
           qratualizar.Params[0].Value := G_descricao;
           qratualizar.ExecSQL;

           R_hora:=TimeToStr(time);
           dm.rastro.Close;
           dm.rastro.SQL.Clear;
           dm.rastro.SQL.Add('select * from rastro');
           dm.rastro.SQL.Add('where (1=2)');
           dm.rastro.Open;
           dm.rastro.Insert;
           dm.rastrodata.Value:=date;
           dm.rastrohora.Value:=R_hora;
           dm.rastrooperador.Value:=FrmPrincipal.sb.Panels[3].Text;
           dm.rastrorotina.Value:='GRUPOS';
           dm.rastrooperacao.Value:='A';
           dm.rastrohistorico.Value:=mecodigo.Text+' '+
           eddescricao.Text;
           dm.rastro.Post;
           dm.rastro.Close;
         end;
      dm.Grupos.Close;
      dm.Grupos.Open;
      dm.Grupos.Locate('codigo',mecodigo.Text,[]);
      Habilita;
      btnovo.setfocus;
end;

procedure TFrmGrupo.mecodigoExit(Sender: TObject);
var
  pos_anterior: string;
begin
        if eddescricao.text<>'' then
           begin
              if not (length(mecodigo.text) in [2, 4]) then
                 begin
                    showmessage('Preenchimento Incorreto...');
                    mecodigo.setfocus;
                 end;

              case length(mecodigo.text) of
                2    : pos_anterior := mecodigo.text;
                4    : pos_anterior := copy(mecodigo.text,1,2);
              end;


             if length(mecodigo.text)=2 then
                if dm.Grupos.Locate('codigo', mecodigo.text, []) then
                   begin
                     showmessage('Conta já Cadastrada');
                     mecodigo.SetFocus;
                   end
                  else
                   eddescricao.setfocus
             else
             if not dm.Grupos.Locate('codigo', pos_anterior, []) then
             begin
                showmessage('Conta Superior não Localizada');
                mecodigo.SetFocus;
             end
             else
             begin
                mecodigo.EditMask:='99.99;0;_';
                eddescricao.setfocus;
             end;
           end;
end;
procedure TFrmGrupo.btexcluirClick(Sender: TObject);
begin
      if eddescricao.Text='' then
         begin
           application.MessageBox('Clique em um grupo para excluí-lo','Atenção',mb_ok);
           dbgrid1.setfocus;
         end
         else
         begin
           check:=false;

{           dm.produtos.close;
           dm.produtos.sql.clear;
           dm.produtos.sql.add('select * from produtos');
           dm.produtos.sql.add('where grupo = '+chr(39)+mecodigo.text+chr(39));
           dm.produtos.open;
           if dm.produtos.RecordCount>0 then
              check:=true;

}           if check=true then
              begin
                application.MessageBox('Grupo com Movimentação','Atenção',mb_ok+MB_ICONWARNING);
                dbgrid1.setfocus;
              end
              else
              begin
                if application.messagebox('Deseja apagar o registro?','Gestor',mb_yesno+mb_iconquestion)=id_yes then
                   begin
                    R_hora:=TimeToStr(time);
                    dm.rastro.Close;
                    dm.rastro.SQL.Clear;
                    dm.rastro.SQL.Add('select * from rastro');
                    dm.rastro.SQL.Add('where (1=2)');
                    dm.rastro.Open;
                    dm.rastro.Insert;
                    dm.rastrodata.Value:=date;
                    dm.rastrohora.Value:=R_hora;
                    dm.rastrooperador.Value:=FrmPrincipal.sb.Panels[3].Text;
                    dm.rastrorotina.Value:='GRUPOS';
                    dm.rastrooperacao.Value:='E';
                    dm.rastrohistorico.Value:=mecodigo.Text+' '+
                    eddescricao.Text;
                    dm.rastro.Post;
                    dm.rastro.Close;

                     qratualizar.Close;
                     qratualizar.SQL.Clear;
                     qratualizar.SQL.Add('delete from grupos');
                     qratualizar.sql.add('where codigo = '+chr(39)+mecodigo.text+chr(39));
                     qratualizar.ExecSQL;
                     dm.Grupos.Close;
                     dm.Grupos.SQL.Clear;
                     dm.Grupos.SQL.Add('select * from grupos');
                     dm.Grupos.SQL.Add('order by codigo');
                     dm.Grupos.open;
                     limpar;
                   end;
              end;
         end;
end;

procedure TFrmGrupo.btlocalizarClick(Sender: TObject);
var BMP: TBitMap;
begin
end;

procedure TFrmGrupo.btalterarClick(Sender: TObject);
begin
        eddescricao.OnEnter:=nil;
        opcao:=false;
        Desabilita;
        eddescricao.setfocus;
end;

procedure TFrmGrupo.FormKeyPress(Sender: TObject; var Key: Char);
begin
        if key=#13 then
        begin
           SelectNext(activecontrol,True,True);
           key:=#0;
        end;
end;

procedure TFrmGrupo.btcancelarClick(Sender: TObject);
begin
  if btnovo.Enabled=false then
     begin
      btnovo.enabled:=true;
      btalterar.enabled:=true;
      btexcluir.enabled:=true;
      btgravar.enabled:=false;
      P_dados.enabled:=false;
      dm.Grupos.cancel;
      eddescricao.text:=dm.Gruposdescricao.Value;
      mecodigo.text:=dm.gruposcodigo.value;
      btnovo.setfocus;
     end
     else
      close;
end;

procedure TFrmGrupo.FormShow(Sender: TObject);
begin
      dm.Grupos.Close;
      dm.Grupos.SQL.Clear;
      dm.Grupos.SQL.Add('select * from grupos');
      dm.Grupos.SQL.Add('order by codigo');
      dm.Grupos.open;
end;

procedure TFrmGrupo.DBGrid1CellClick(Column: TColumn);
begin
      atualiza;
end;

procedure TFrmGrupo.mecodigoEnter(Sender: TObject);
begin
        mecodigo.EditMask:='';
end;

procedure TFrmGrupo.btprimeiroClick(Sender: TObject);
begin
      dm.Grupos.First;
      atualiza;
end;

procedure TFrmGrupo.btanteriorClick(Sender: TObject);
begin
      dm.Grupos.Prior;
      atualiza;
end;

procedure TFrmGrupo.btproximoClick(Sender: TObject);
begin
      dm.Grupos.Next;
      atualiza;
end;

procedure TFrmGrupo.btultimoClick(Sender: TObject);
begin
      dm.Grupos.Last;
      atualiza;
end;

end.
