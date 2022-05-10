unit UnitFrmAlterarSenha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFrmAlterarSenha = class(TForm)
    Label1: TLabel;
    edsenhaatual: TEdit;
    Label2: TLabel;
    ednovasenha: TEdit;
    Label3: TLabel;
    edconfirmarsenha: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edsenhaatualExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAlterarSenha: TFrmAlterarSenha;
  senhaI,senhaII,senhaIII:string;

implementation

uses Unitdm, UnitFrmPrincipal;

{$R *.dfm}

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

procedure TFrmAlterarSenha.BitBtn2Click(Sender: TObject);
begin
        close;
end;

procedure TFrmAlterarSenha.FormKeyPress(Sender: TObject; var Key: Char);
begin
        if key=#13 then
        begin
           SelectNext(activecontrol,True,True);
           key:=#0;
        end;
end;

procedure TFrmAlterarSenha.BitBtn1Click(Sender: TObject);
begin
        senhaII:='';
        senhaIII:='';
        senhaII:= Cript(ednovasenha.text,'DELPHIIHPLEDFCI','cript');
        senhaIII:= Cript(edconfirmarsenha.text,'DELPHIIHPLEDFCI','cript');
        if senhaII<>senhaIII then
           begin
              application.MessageBox('Senhas diferentes','Atenção',mb_ok+mb_iconinformation);
              edsenhaatual.Text:='';
              ednovasenha.Text:='';
              edconfirmarsenha.Text:='';
              edsenhaatual.SetFocus;
           end
           else
           begin
              dm.usuarios.open;
              dm.usuarios.locate('nome',FrmPrincipal.sb.Panels[3].Text,[]);
              dm.usuarios.Edit;
              dm.usuariosSenha.Value:=senhaIII;
              dm.usuarios.Post;
              application.MessageBox('Senha alterada com Sucesso','Atenção',mb_ok+mb_iconinformation);
              close;
           end;
end;

procedure TFrmAlterarSenha.FormShow(Sender: TObject);
begin
        dm.usuarios.open;
        dm.usuarios.locate('nome',FrmPrincipal.sb.Panels[3].Text,[]);
end;

procedure TFrmAlterarSenha.edsenhaatualExit(Sender: TObject);
begin
        if edsenhaatual.Text<>'' then
           begin
              senhaI:='';
              senhaI:= Cript(edsenhaatual.text,'DELPHIIHPLEDFCI','cript');
              if dm.usuariosSenha.AsString<>senhaI then
                 begin
                    application.MessageBox('Senha Inválida','Atenção',mb_ok+mb_iconinformation);
                    edsenhaatual.Text:='';
                    edsenhaatual.SetFocus;
                 end;
           end;
end;

end.
