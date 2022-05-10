unit UnitFrmBemVindo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, jpeg, DB, DBTables,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFrmBemVindo = class(TForm)
    Image1: TImage;
    edusuario: TEdit;
    edsenha: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure edsenhaExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edusuarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edusuarioExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  fecha: Boolean;
  operacao : integer;
  descmax : double;
  end;

var
  FrmBemVindo: TFrmBemVindo;
  U_logado: String;
  U_maq: Integer;

implementation

uses Unitfrmprincipal, Unitdm;

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

Function GetStateK (Key: integer): boolean;
begin
  Result := Odd (GetKeyState (Key));
end;

procedure TFrmBemVindo.edsenhaExit(Sender: TObject);
begin
  if (edusuario.Text='') and (edsenha.Text='') then
     Application.Terminate
  else
  begin
     if edsenha.text<>'' then
        begin
          edsenha.Text := Cript(edsenha.Text,'DELPHIIHPLEDFCI','cript');
          if trim(EdSenha.text)=trim(dm.usuariosSenha.Value) then
             begin
               FrmBemVindo.OnClose:=nil;
               FrmPrincipal.sb.Panels[3].Text := edusuario.text;
               close;
             end
             else
             begin
               application.messagebox('Acesso n�o permitido','Aten��o',mb_ok+mb_iconexclamation);
               EdSenha.text:='';
               Edusuario.setfocus;
             end;
        end
        else
        begin
          application.messagebox('Senha Obrigat�ria','Aten��o',mb_ok+MB_ICONWARNING);
          EdSenha.setfocus;
        end;
  end;
end;

procedure TFrmBemVindo.FormKeyPress(Sender: TObject; var Key: Char);
begin
        if key=#13 then
        begin
           SelectNext(activecontrol,True,True);
           key:=#0;
        end;
end;

procedure TFrmBemVindo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        If Not fecha Then
           Action := caNone
        Else
           Action := caFree;
end;

procedure TFrmBemVindo.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        If GetStateK (VK_LMENU) And (Key = VK_F4) Then
           fecha := False;
end;

procedure TFrmBemVindo.edusuarioKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if key = vk_Escape then
         Application.Terminate;
end;


procedure TFrmBemVindo.edusuarioExit(Sender: TObject);
begin
    if EdUsuario.text<>'' then
       Begin
         dm.parametros.Close;
         dm.parametros.Open;
         dm.usuarios.close;
         dm.usuarios.open;
         if not dm.usuarios.locate('nome',EdUsuario.text,[])then
            begin
              application.messagebox('Usu�rio n�o cadastrado','Aten��o',mb_ok+mb_iconexclamation);
              edusuario.setfocus;
            end;
       end;
end;

end.
