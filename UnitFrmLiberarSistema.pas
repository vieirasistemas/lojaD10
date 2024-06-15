unit UnitFrmLiberarSistema;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ShellAPI, DB, DBTables, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  TFrmLiberarSistema = class(TForm)
    Label2: TLabel;
    Label1: TLabel;
    edsenha: TEdit;
    Label3: TLabel;
    lbcnpj: TLabel;
    lbrazao: TLabel;
    lbdata: TLabel;
    qratualizar: TZQuery;
    qratualizarNET: TZQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edsenhaKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
  dias:string;
    { Public declarations }
  end;

var
  FrmLiberarSistema: TFrmLiberarSistema;
  arq,log: TextFile;
  texto,caminho,linha,liberacao,password:string;
  i,Result:integer;
  senha,atraso:real;
  SearchRec: TSearchRec;

implementation

uses Unitdm;

{$R *.dfm}

Function DeleteFileWithUndo(sFileName : string ) : boolean;
var
fos : TSHFileOpStruct;
Begin
FillChar( fos, SizeOf( fos ), 0 );
With fos do
  begin
  wFunc := FO_DELETE;
  pFrom := PChar( sFileName );
  fFlags := FOF_ALLOWUNDO
  or FOF_NOCONFIRMATION
  or FOF_SILENT;
  end;
Result := ( 0 = ShFileOperation( fos ) );
end;

procedure TFrmLiberarSistema.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        Application.Terminate;
end;

procedure TFrmLiberarSistema.edsenhaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
     begin
        dm.parametros.Close;
        dm.parametros.Open;

        dias:='05';
        liberacao:='';
        password:='';
        senha:=0;
        atraso:=Int(date-StrToDate('05/08/2006'));
        senha:=atraso*StrToFloat(copy(dm.parametroscnpj.Value,13,2)+copy(dm.parametroscnpj.Value,1,2));
        password:=FloatToStr(senha);
//        showmessage('ATRASO: '+FloatToStr(atraso));
//        showmessage('CNPJ(13,2): '+copy(dm.parametroscnpj.Value,13,2));
//        showmessage('CNPJ(1,2): '+copy(dm.parametroscnpj.Value,1,2));
//        showmessage('SENHA: '+password);
        if edsenha.Text=password then
           begin
//            dias:=eddias.text;
//            liberacao:='';
//            atraso:=Int(date-StrToDate('05/08/2006'));

//            senha:=atraso*StrToFloat(copy(mecnpj.text,13,2)+copy(mecnpj.text,1,2));
//            password:=FloatToStr(senha);

            texto:=copy(dm.parametroscnpj.Value,13,2)+
            copy(dm.parametroscnpj.Value,8,1)+
            copy(dm.parametroscnpj.Value,6,1)+
            copy(dm.parametroscnpj.Value,4,1)+
            formatdatetime('dd',date+StrToInt(dias))+
            formatdatetime('mm',date+StrToInt(dias))+
            formatdatetime('yyyy',date+StrToInt(dias))+
            dias+formatdatetime('dd',date)+formatdatetime('mm',date)+
            formatdatetime('yyyy',date);

//            showmessage(texto);

            for i:=1 to length(texto) do
                begin
                  if copy(texto,i,1)='1' then
                     liberacao:=liberacao+'QX8'
                  else if copy(texto,i,1)='2' then
                     liberacao:=liberacao+'RT9'
                  else if copy(texto,i,1)='3' then
                     liberacao:=liberacao+'SM3'
                  else if copy(texto,i,1)='4' then
                     liberacao:=liberacao+'KL1'
                  else if copy(texto,i,1)='5' then
                     liberacao:=liberacao+'OP3'
                  else if copy(texto,i,1)='6' then
                     liberacao:=liberacao+'IG8'
                  else if copy(texto,i,1)='7' then
                     liberacao:=liberacao+'AZ7'
                  else if copy(texto,i,1)='8' then
                     liberacao:=liberacao+'LN0'
                  else if copy(texto,i,1)='0' then
                     liberacao:=liberacao+'UJ5'
                  else if copy(texto,i,1)='9' then
                     liberacao:=liberacao+'WH4'
                end;

//            showmessage(INtToStr(length(liberacao)));
//            showmessage(INtToStr(length(password)));
            for i:=1 to length(password) do
                begin
                  if copy(password,i,1)='1' then
                     liberacao:=liberacao+'QX8'
                  else if copy(password,i,1)='2' then
                     liberacao:=liberacao+'RT9'
                  else if copy(password,i,1)='3' then
                     liberacao:=liberacao+'SM3'
                  else if copy(password,i,1)='4' then
                     liberacao:=liberacao+'KL1'
                  else if copy(password,i,1)='5' then
                     liberacao:=liberacao+'OP3'
                  else if copy(password,i,1)='6' then
                     liberacao:=liberacao+'IG8'
                  else if copy(password,i,1)='7' then
                     liberacao:=liberacao+'AZ7'
                  else if copy(password,i,1)='8' then
                     liberacao:=liberacao+'LN0'
                  else if copy(password,i,1)='0' then
                     liberacao:=liberacao+'UJ5'
                  else if copy(password,i,1)='9' then
                     liberacao:=liberacao+'WH4'
                end;

             qratualizar.close;
             qratualizar.sql.clear;
             qratualizar.sql.add('update parametros set');
             qratualizar.sql.add('chave = :liberacao');
             qratualizar.Params[0].Value := liberacao;
             qratualizar.ExecSQL;

             dm.ZConnection2.Connected:=false;
             dm.ZConnection2.Connected:=true;

             qratualizarNET.close;
             qratualizarNET.sql.clear;
             qratualizarNET.sql.add('update empresas set');
             qratualizarNET.sql.add('chave = :liberacao');
             qratualizarNET.sql.add('where cliente_cnpj = '+chr(39)+dm.parametroscnpj.Value+chr(39));
             qratualizarNET.Params[0].Value := liberacao;
             qratualizarNET.ExecSQL;

             application.MessageBox('Liberação Efetuada com Sucesso','Atenção',mb_ok+MB_ICONINFORMATION);
           end
           else
             application.MessageBox('Senha Inválida','Atenção',mb_ok+MB_ICONERROR);
        close;
     end;
end;

procedure TFrmLiberarSistema.FormShow(Sender: TObject);
begin
      dm.parametros.Close;
      dm.parametros.Open;
      lbrazao.Caption:=dm.parametrosrazaosocial.Value;
      lbcnpj.Caption:='CNPJ: '+copy(dm.parametroscnpj.value,1,2)+'.'+
      copy(dm.parametroscnpj.value,3,3)+'.'+
      copy(dm.parametroscnpj.value,6,3)+'/'+
      copy(dm.parametroscnpj.value,9,4)+'-'+
      copy(dm.parametroscnpj.value,13,2)+
      ' - I.E.: '+dm.parametrosie.Value;
      lbdata.Caption:=DateToStr(date);
{      senha:=0;
      atraso:=Int(date-StrToDate('05/08/2006'));
      senha:=atraso*StrToFloat(copy(dm.parametroscnpj.Value,13,2)+copy(dm.parametroscnpj.Value,1,2));
      password:=FloatToStr(senha);
      edit1.Text:=password;
}end;

end.
