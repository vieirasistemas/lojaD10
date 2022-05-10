unit UnitFrmWelcome;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Db, DBTables, Grids, DBGrids, ShellAPI, {rxhints,} Menus,
  Buttons;

const
  wm_IconMessage = wm_User;

type
  TFrmWelcome = class(TForm)
    Label1: TLabel;
    EdUsuario: TEdit;
    Label2: TLabel;
    EdSenha: TEdit;
    procedure EdUsuarioExit(Sender: TObject);
    procedure EdSenhaExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EdUsuarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmWelcome: TFrmWelcome;
  empresa,endereco,cgc:string;
implementation

uses Unitdm, UnitFrmPrincipal;

{$R *.DFM}

Const
  Servico_Simples = 1;
  Servico_Unregister = 1;

Function RegisterServiceProcess(DwProcessID, dwType: DWord): DWord; StdCall; External 'KERNEL32.dll';

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

procedure TFrmWelcome.EdUsuarioExit(Sender: TObject);
begin
        if EdUsuario.text<>'' then
        Begin
           dm.usuarios.open;
           if not dm.usuarios.locate('nome',EdUsuario.text,[])then
              begin
               application.messagebox('Usuário não cadastrado','Administrador',mb_ok+mb_iconexclamation);
               edusuario.setfocus;
              end;
        end;
end;

procedure TFrmWelcome.EdSenhaExit(Sender: TObject);
begin
        if (edusuario.Text='') and (edsenha.Text='') then
           close
        else
        begin
           dm.usuarios.Open;
           if dm.usuarios.locate('nome',EdUsuario.text,[]) then
              begin
               edsenha.Text := Cript(edsenha.Text,'DELPHIIHPLEDFCI','cript');
               if trim(EdSenha.text)=trim(dm.usuariosSenha.Value) then
                  begin
                    FrmPrincipal.sb.Panels[3].Text := edusuario.text;
                    close;
                  end
                  else
                  begin
                    application.messagebox('Acesso não permitido','Atenção',mb_ok+mb_iconexclamation);
                    close
                  end;
              end
              else
                close;
        end;
end;

procedure TFrmWelcome.FormKeyPress(Sender: TObject; var Key: Char);
begin
        if key=#13 then
        begin
           SelectNext(activecontrol,True,True);
           key:=#0;
        end;
end;

procedure TFrmWelcome.EdUsuarioKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if key = vk_Escape then
         close;
end;

end.
