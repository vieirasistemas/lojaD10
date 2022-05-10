unit UnitFrmCadUsuarios;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,ZDataset,
    StdCtrls, Buttons, Db, DBTables, Mask, DBCtrls, ExtCtrls, Grids, DBGrids;

type
  TFrmCadUsuarios = class(TForm)
    Gb1: TGroupBox;
    Gb2: TGroupBox;
    Gb3: TGroupBox;
    Gb4: TGroupBox;
    dbusuario: TDBEdit;
    dbsenha: TDBEdit;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit10: TDBEdit;
    Label10: TLabel;
    DBEdit14: TDBEdit;
    Label14: TLabel;
    gbacessos: TGroupBox;
    lb0: TLabel;
    lb1: TLabel;
    lb2: TLabel;
    lb5: TLabel;
    lb3: TLabel;
    lb4: TLabel;
    DBEdit15: TDBEdit;
    Label21: TLabel;
    DBEdit16: TDBEdit;
    Label22: TLabel;
    DBEdit17: TDBEdit;
    Label23: TLabel;
    DBEdit19: TDBEdit;
    Label25: TLabel;
    DBEdit20: TDBEdit;
    Label26: TLabel;
    gb6: TGroupBox;
    Label12: TLabel;
    Label16: TLabel;
    DBEdit12: TDBEdit;
    DBEdit21: TDBEdit;
    lb6: TLabel;
    Panel1: TPanel;
    btnovo: TBitBtn;
    btgravar: TBitBtn;
    btalterar: TBitBtn;
    btexcluir: TBitBtn;
    btcancelar: TBitBtn;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    btprimeiro: TBitBtn;
    btanterior: TBitBtn;
    btproximo: TBitBtn;
    btultimo: TBitBtn;
    DBGrid1: TDBGrid;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit13: TDBEdit;
    Label13: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnovoClick(Sender: TObject);
    procedure btalterarClick(Sender: TObject);
    procedure btgravarClick(Sender: TObject);
    procedure btprimeiroClick(Sender: TObject);
    procedure btanteriorClick(Sender: TObject);
    procedure btproximoClick(Sender: TObject);
    procedure btultimoClick(Sender: TObject);
    procedure btexcluirClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dbsenhaExit(Sender: TObject);
    procedure btcancelarClick(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit13Exit(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBEdit14Exit(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit17Exit(Sender: TObject);
    procedure DBEdit20Exit(Sender: TObject);
    procedure DBEdit2Enter(Sender: TObject);
    procedure DBEdit15Exit(Sender: TObject);
    procedure DBEdit19Exit(Sender: TObject);
    procedure DBEdit16Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit22Enter(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure DBEdit21Exit(Sender: TObject);
    procedure DBEdit4Enter(Sender: TObject);
    procedure DBEdit15Enter(Sender: TObject);
    procedure DBEdit11Enter(Sender: TObject);
    procedure DBEdit8Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  FrmCadUsuarios: TFrmCadUsuarios;
  log: TextFile;
  texto,tip:string;
  novo:boolean;
  qry : TZQuery;

implementation

uses Unitdm, Unitfrmprincipal;

{$R *.DFM}

Function Cript(mStr, mchave, moperacao : string):String;
Var
  i, TamanhoString, pos, posLetra, TamanhoChave : integer;
Begin
   Result := mStr;
   TamanhoString := length(mStr);
   TamanhoChave := length(mchave);
   for i := 1 to TamanhoString do
   Begin
      pos := (i mod Tamanhochave);
      If pos = 0 then pos := TamanhoChave;
      pos := pos + 7;
      If mOperacao = 'descript' then
         posletra := ord(result[i]) + pos
      else posletra := ord(result[i]) - pos;
      result[i] := chr(posletra);
   End;
End;

procedure TFrmCadUsuarios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        Action:= caFree;
end;

procedure Atualiza;
begin
end;

procedure TFrmCadUsuarios.btnovoClick(Sender: TObject);
begin
        novo:=true;
        gb1.enabled:=true;
        gb2.enabled:=true;
        gb3.enabled:=true;
        gb4.enabled:=true;
        gb6.enabled:=true;
        btprimeiro.enabled:=false;
        btcancelar.Caption:='Cancelar';
        btanterior.enabled:=false;
        btproximo.enabled:=false;
        btultimo.enabled:=false;
        btnovo.enabled:=false;
        btgravar.enabled:=true;
        btalterar.enabled:=false;
        btexcluir.enabled:=false;
        dbusuario.setfocus;
        dm.usuarios.append;
end;

procedure TFrmCadUsuarios.btalterarClick(Sender: TObject);
begin
        novo:=false;
        gb3.enabled:=true;
        gb4.enabled:=true;
        gb6.enabled:=true;
        btprimeiro.enabled:=false;
        btanterior.enabled:=false;
        btproximo.enabled:=false;
        btultimo.enabled:=false;
        btnovo.enabled:=false;
        btalterar.enabled:=false;
        btgravar.enabled:=true;
        btexcluir.enabled:=false;
        DBEdit3.setfocus;
        dm.usuarios.edit;
end;

procedure TFrmCadUsuarios.btgravarClick(Sender: TObject);
begin
        gb1.enabled:=false;
        gb2.enabled:=false;
        gb3.enabled:=false;
        gb4.enabled:=false;
        gb6.enabled:=false;
        btcancelar.Caption:='Sair';
        btprimeiro.enabled:=true;
        btanterior.enabled:=true;
        btproximo.enabled:=true;
        btultimo.enabled:=true;
        btnovo.enabled:=true;
        btalterar.enabled:=true;
        btexcluir.enabled:=true;
        dm.usuarios.post;

        if novo=true then
           tip:='I'
        else
           tip:='A';

        dm.rastro.Close;
        dm.rastro.SQL.Clear;
        dm.rastro.SQL.Add('select * from rastro');
        dm.rastro.SQL.Add('where (1=2)');
        dm.rastro.Open;
        dm.rastro.Insert;
        dm.rastrodata.Value:=date;
        dm.rastrohora.Value:=TimeToStr(time);
        dm.rastrooperador.Value:=FrmPrincipal.sb.Panels[3].Text;
        dm.rastrorotina.Value:='USUÁRIOS';
        dm.rastrooperacao.Value:=tip;
        dm.rastrohistorico.Value:=dm.usuariosnome.Value;
        dm.rastro.Post;
        dm.rastro.Close;

        showmessage('Gravação efetuada');
        btgravar.enabled:=false;
        BtNovo.setfocus;

end;

procedure TFrmCadUsuarios.btprimeiroClick(Sender: TObject);
begin
        dm.usuarios.first;
        Atualiza;
end;

procedure TFrmCadUsuarios.btanteriorClick(Sender: TObject);
begin
        dm.usuarios.prior;
        Atualiza;
end;

procedure TFrmCadUsuarios.btproximoClick(Sender: TObject);
begin
        dm.usuarios.next;
        Atualiza;
end;

procedure TFrmCadUsuarios.btultimoClick(Sender: TObject);
begin
        dm.usuarios.last;
        Atualiza;
end;

procedure TFrmCadUsuarios.btexcluirClick(Sender: TObject);
begin
        if dm.usuarios.recordcount<1 then
           Application.Messagebox ('Não tem Registros','Atenção', Mb_Ok)
        else
           if Application.Messagebox ('Deseja apagar o registro?','Atenção', Mb_YesNo+mb_iconquestion) = id_yes then
              begin
                //USUARIOS 09
                dm.rastro.Close;
                dm.rastro.SQL.Clear;
                dm.rastro.SQL.Add('select * from rastro');
                dm.rastro.SQL.Add('where (1=2)');
                dm.rastro.Open;
                dm.rastro.Insert;
                dm.rastrodata.Value:=date;
                dm.rastrohora.Value:=TimeToStr(time);
                dm.rastrooperador.Value:=FrmPrincipal.sb.Panels[3].Text;
                dm.rastrorotina.Value:='USUARIOS';
                dm.rastrooperacao.Value:='E';
                dm.rastrohistorico.Value:=dbusuario.Text;
                dm.rastro.Post;
                dm.rastro.Close;

                dm.usuarios.Delete;
                dm.usuarios.Close;
                dm.usuarios.Open;
              end;
end;

procedure TFrmCadUsuarios.FormKeyPress(Sender: TObject; var Key: Char);
begin
        if key=#13 then
        begin
           SelectNext(activecontrol,True,True);
           key:=#0;
        end;
end;

procedure TFrmCadUsuarios.dbsenhaExit(Sender: TObject);
begin
        dm.usuariosSenha.value := Cript(dm.usuariosSenha.value,'DELPHIIHPLEDFCI','cript');
end;

procedure TFrmCadUsuarios.btcancelarClick(Sender: TObject);
begin
        if btnovo.enabled=false then
           begin
                dm.usuarios.cancel;
                gb1.enabled:=false;
                gb2.enabled:=false;
                gb3.enabled:=false;
                gb4.enabled:=false;
                gb6.enabled:=false;
                btcancelar.Caption:='Sair';
                btprimeiro.enabled:=true;
                btanterior.enabled:=true;
                btproximo.enabled:=true;
                btultimo.enabled:=true;
                btnovo.enabled:=true;
                btalterar.enabled:=true;
                btexcluir.enabled:=true;
                btgravar.enabled:=false;
           end
           else
                close;
end;

procedure TFrmCadUsuarios.DBEdit3Exit(Sender: TObject);
begin
        if dm.usuariosclientes.value='' then
           dm.usuariosclientes.value:='0'
        else
        begin
            if (dm.usuariosclientes.value<>'0') and
               (dm.usuariosclientes.value<>'1') and
               (dm.usuariosclientes.value<>'2') and
               (dm.usuariosclientes.value<>'3') and
               (dm.usuariosclientes.value<>'4') and
               (dm.usuariosclientes.value<>'5') then
               begin
                    showmessage('Tipo de Acesso inválido!');
                    DBEdit3.setfocus;
               end;
        end;
end;

procedure TFrmCadUsuarios.DBEdit13Exit(Sender: TObject);
begin
        if dm.usuariosFornecedores.value='' then
           dm.usuariosFornecedores.value:='0'
        else
        begin
            if (dm.usuariosFornecedores.value<>'0') and
               (dm.usuariosFornecedores.value<>'1') and
               (dm.usuariosFornecedores.value<>'2') and
               (dm.usuariosFornecedores.value<>'3') and
               (dm.usuariosFornecedores.value<>'4') and
               (dm.usuariosFornecedores.value<>'5') then
               begin
                    showmessage('Tipo de Acesso inválido!');
                    DBEdit13.setfocus;
               end;
        end;
end;

procedure TFrmCadUsuarios.DBEdit10Exit(Sender: TObject);
begin
        if dm.usuariosUsuarios.value='' then
           dm.usuariosUsuarios.value:='0'
        else
        begin
            if (dm.usuariosUsuarios.value<>'0') and
               (dm.usuariosUsuarios.value<>'1') and
               (dm.usuariosUsuarios.value<>'2') and
               (dm.usuariosUsuarios.value<>'3') and
               (dm.usuariosUsuarios.value<>'4') and
               (dm.usuariosUsuarios.value<>'5') then
               begin
                    showmessage('Tipo de Acesso inválido!');
                    DBEdit10.setfocus;
               end;
        end;
end;

procedure TFrmCadUsuarios.DBEdit14Exit(Sender: TObject);
begin
        if dm.usuariosParametros.value='' then
           dm.usuariosParametros.value:='0'
        else
        begin
            if (dm.usuariosParametros.value<>'0') and
               (dm.usuariosParametros.value<>'2') and
               (dm.usuariosParametros.value<>'5') then
               begin
                    showmessage('Tipo de Acesso inválido!');
                    DBEdit14.setfocus;
               end;
        end;
end;

procedure TFrmCadUsuarios.DBEdit1Enter(Sender: TObject);
begin
        lb0.Enabled:=true;
        lb1.Enabled:=true;
        lb2.Enabled:=true;
        lb3.Enabled:=true;
        lb4.Enabled:=true;
        lb5.Enabled:=true;
        lb6.Enabled:=false;
end;

procedure TFrmCadUsuarios.DBEdit17Exit(Sender: TObject);
begin
        if dm.usuarioscontaspagar.value='' then
           dm.usuarioscontaspagar.value:='0'
        else
        begin
            if (dm.usuarioscontaspagar.value<>'0') and
               (dm.usuarioscontaspagar.value<>'1') and
               (dm.usuarioscontaspagar.value<>'2') and
               (dm.usuarioscontaspagar.value<>'3') and
               (dm.usuarioscontaspagar.value<>'4') and
               (dm.usuarioscontaspagar.value<>'5') and
               (dm.usuarioscontaspagar.value<>'6') then
               begin
                    showmessage('Tipo de Acesso inválido!');
                    DBEdit17.setfocus;
               end;
        end;
end;

procedure TFrmCadUsuarios.DBEdit20Exit(Sender: TObject);
begin
        if dm.usuariosplanocontas.value='' then
           dm.usuariosplanocontas.value:='0'
        else
        begin
            if (dm.usuariosplanocontas.value<>'0') and
               (dm.usuariosplanocontas.value<>'5') then
               begin
                    showmessage('Tipo de Acesso inválido!');
                    DBEdit20.setfocus;
               end;
        end;
end;

procedure TFrmCadUsuarios.DBEdit2Enter(Sender: TObject);
begin
      lb0.Enabled:=true;
      lb1.Enabled:=false;
      lb2.Enabled:=true;
      lb3.Enabled:=false;
      lb4.Enabled:=false;
      lb5.Enabled:=true;
      lb6.Enabled:=false;
end;

procedure TFrmCadUsuarios.DBEdit15Exit(Sender: TObject);
begin
        if dm.usuarioscontasreceber.value='' then
           dm.usuarioscontasreceber.value:='0'
        else
        begin
            if (dm.usuarioscontasreceber.value<>'0') and
               (dm.usuarioscontasreceber.value<>'1') and
               (dm.usuarioscontasreceber.value<>'2') and
               (dm.usuarioscontasreceber.value<>'3') and
               (dm.usuarioscontasreceber.value<>'4') and
               (dm.usuarioscontasreceber.value<>'5') and
               (dm.usuarioscontasreceber.value<>'6') then
               begin
                    showmessage('Tipo de Acesso inválido!');
                    DBEdit15.setfocus;
               end;
        end;
end;

procedure TFrmCadUsuarios.DBEdit19Exit(Sender: TObject);
begin
        if dm.usuarioscontascorrente.value='' then
           dm.usuarioscontascorrente.value:='0'
        else
        begin
            if (dm.usuarioscontascorrente.value<>'0') and
               (dm.usuarioscontascorrente.value<>'5') then
               begin
                    showmessage('Tipo de Acesso inválido!');
                    DBEdit19.setfocus;
               end;
        end;
end;

procedure TFrmCadUsuarios.DBEdit16Exit(Sender: TObject);
begin
        if dm.usuariosfinanceiro.value='' then
           dm.usuariosfinanceiro.value:='0'
        else
        begin
            if (dm.usuariosfinanceiro.value<>'0') and
               (dm.usuariosfinanceiro.value<>'1') and
               (dm.usuariosfinanceiro.value<>'2') and
               (dm.usuariosfinanceiro.value<>'3') and
               (dm.usuariosfinanceiro.value<>'4') and
               (dm.usuariosfinanceiro.value<>'5') then
               begin
                    showmessage('Tipo de Acesso inválido!');
                    DBEdit16.setfocus;
               end;
        end;
end;

procedure TFrmCadUsuarios.FormShow(Sender: TObject);
begin
  dm.usuarios.Close;
  dm.usuarios.SQL.Clear;
  dm.usuarios.SQL.Add('select * from usuarios');
  dm.usuarios.SQL.Add('order by nome');
  dm.usuarios.Open;
  Atualiza;
end;

procedure TFrmCadUsuarios.DBEdit22Enter(Sender: TObject);
begin
        lb0.Enabled:=true;
        lb1.Enabled:=true;
        lb2.Enabled:=true;
        lb3.Enabled:=false;
        lb4.Enabled:=false;
        lb5.Enabled:=true;
        lb6.Enabled:=false;
end;

procedure TFrmCadUsuarios.DBEdit12Exit(Sender: TObject);
begin
        if dm.usuariosrelcadastrais.value='' then
           dm.usuariosrelcadastrais.value:='0'
        else
        begin
            if (dm.usuariosrelcadastrais.value<>'0') and
               (dm.usuariosrelcadastrais.value<>'5') then
               begin
                    showmessage('Tipo de Acesso inválido!');
                    DBEdit12.setfocus;
               end;
        end;
end;

procedure TFrmCadUsuarios.DBEdit21Exit(Sender: TObject);
begin
        if dm.usuariosrelfinanceiro.value='' then
           dm.usuariosrelfinanceiro.value:='0'
        else
        begin
            if (dm.usuariosrelfinanceiro.value<>'0') and
               (dm.usuariosrelfinanceiro.value<>'5') then
               begin
                    showmessage('Tipo de Acesso inválido!');
                    DBEdit21.setfocus;
               end;
        end;
end;

procedure TFrmCadUsuarios.DBEdit4Enter(Sender: TObject);
begin
        lb0.Enabled:=true;
        lb1.Enabled:=false;
        lb2.Enabled:=true;
        lb3.Enabled:=false;
        lb4.Enabled:=false;
        lb5.Enabled:=true;
end;

procedure TFrmCadUsuarios.DBEdit15Enter(Sender: TObject);
begin
        lb0.Enabled:=true;
        lb1.Enabled:=true;
        lb2.Enabled:=true;
        lb3.Enabled:=true;
        lb4.Enabled:=true;
        lb5.Enabled:=true;
        lb6.Enabled:=true;
end;

procedure TFrmCadUsuarios.DBEdit11Enter(Sender: TObject);
begin
        lb0.Enabled:=true;
        lb1.Enabled:=false;
        lb2.Enabled:=true;
        lb3.Enabled:=false;
        lb4.Enabled:=true;
        lb5.Enabled:=true;
end;

procedure TFrmCadUsuarios.DBEdit8Enter(Sender: TObject);
begin
      lb0.Enabled:=true;
      lb1.Enabled:=false;
      lb2.Enabled:=true;
      lb3.Enabled:=false;
      lb4.Enabled:=false;
      lb5.Enabled:=true;
      lb6.Enabled:=false;
end;

end.
