unit UnitFrmCentrodeCusto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, EditAlinhado, Mask, Grids, DBGrids, ExtCtrls;

type
  TFrmCentrodeCusto = class(TForm)
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    btprimeiro: TBitBtn;
    btanterior: TBitBtn;
    btproximo: TBitBtn;
    btultimo: TBitBtn;
    btnovo: TBitBtn;
    btgravar: TBitBtn;
    btalterar: TBitBtn;
    btexcluir: TBitBtn;
    btrelatorio: TBitBtn;
    btcancelar: TBitBtn;
    P_Dados: TPanel;
    EdCodigo: TEdit;
    Label25: TLabel;
    Label29: TLabel;
    cbpatrimonio: TComboBox;
    Label39: TLabel;
    EdDescricao: TEdit;
    Label32: TLabel;
    Memo1: TMemo;
    Label1: TLabel;
    edfornecedor: TEdit;
    Label46: TLabel;
    meaquisicao: TMaskEdit;
    Label3: TLabel;
    Edvalor: TEditAlinh;
    Label4: TLabel;
    Edmoeda: TEdit;
    Label2: TLabel;
    Edlocalizacao: TEdit;
    procedure btcancelarClick(Sender: TObject);
    procedure btnovoClick(Sender: TObject);
    procedure Memo1Enter(Sender: TObject);
    procedure EdlocalizacaoExit(Sender: TObject);
    procedure btalterarClick(Sender: TObject);
    procedure btgravarClick(Sender: TObject);
    procedure EdvalorExit(Sender: TObject);
    procedure meaquisicaoExit(Sender: TObject);
    procedure btprimeiroClick(Sender: TObject);
    procedure btanteriorClick(Sender: TObject);
    procedure btproximoClick(Sender: TObject);
    procedure btultimoClick(Sender: TObject);
    procedure btexcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCentrodeCusto: TFrmCentrodeCusto;

implementation

uses Unitdm, Unitfrmprincipal;

{$R *.dfm}

function StringToFloat(s : string) : Extended;
{ Filtra uma string qualquer, convertendo as suas partes
  numéricas para sua representação decimal, por exemplo:
  'R$ 1.200,00' para 1200,00 '1AB34TZ' para 134}
var
  i :Integer;
  t : string;
  SeenDecimal,SeenSgn : Boolean;
begin
  t := '';
  SeenDecimal := False;
  SeenSgn := False;
  {Percorre os caracteres da string:}
  for i := Length(s) downto 0 do
  {Filtra a string, aceitando somente números e separador decimal:}
  if (s[i] in ['0'..'9', '-','+',DecimalSeparator]) then
  begin
  if (s[i] = DecimalSeparator) and (not SeenDecimal) then
  begin
  t := s[i] + t;
  SeenDecimal := True;
  end
  else if (s[i] in ['+','-']) and (not SeenSgn) and (i = 1) then
  begin
  t := s[i] + t;
  SeenSgn := True;
  end
  else if s[i] in ['0'..'9'] then
  begin
  t := s[i] + t;
  end;
  end;
  Result := StrToFloat(t);
end;

procedure Atualiza;
begin
        FrmCentrodeCusto.edcodigo.Text:=dm.CentroCustocodigo.value;
        if dm.CentroCustopatrimonio.Value='S' then
           FrmCentrodeCusto.cbpatrimonio.Text:='SIM'
        else
           FrmCentrodeCusto.cbpatrimonio.Text:='NÃO';
        FrmCentrodeCusto.EdDescricao.Text:=dm.CentroCustodescricao.Value;
        FrmCentrodeCusto.Memo1.Text:=dm.CentroCustoespecificacao.Value;
        FrmCentrodeCusto.edfornecedor.Text:=dm.CentroCustofornecedor.Value;
        if dm.CentroCustoaquisicao.value<>StrToDate('30/12/1899') then
           FrmCentrodeCusto.meaquisicao.Text:=DateToStr(dm.CentroCustoaquisicao.Value)
        else
           FrmCentrodeCusto.meaquisicao.Text:='';
        if not dm.CentroCustovalor.IsNull then
           FrmCentrodeCusto.EdValor.Text:=formatfloat('#,##0.00',dm.CentroCustovalor.Value)
        else
           FrmCentrodeCusto.EdValor.Text:='';
end;

procedure limpar;
begin
        FrmCentrodeCusto.cbpatrimonio.Text:='';
        FrmCentrodeCusto.EdCodigo.Text:='';
        FrmCentrodeCusto.EdDescricao.Text:='';
        FrmCentrodeCusto.Memo1.Lines.Clear;
        FrmCentrodeCusto.Edlocalizacao.Text:='';
        FrmCentrodeCusto.Edvalor.Text:='';
        FrmCentrodeCusto.Edmoeda.Text:='';
        FrmCentrodeCusto.meaquisicao.Text:='';
        FrmCentrodeCusto.edfornecedor.Text:='';
end;

procedure desabilita;
begin
        FrmCentrodeCusto.btprimeiro.enabled:=false;
        FrmCentrodeCusto.btanterior.enabled:=false;
        FrmCentrodeCusto.btproximo.enabled:=false;
        FrmCentrodeCusto.btultimo.enabled:=false;
        FrmCentrodeCusto.btnovo.enabled:=false;
        FrmCentrodeCusto.btalterar.enabled:=false;
        FrmCentrodeCusto.btexcluir.enabled:=false;
        FrmCentrodeCusto.btrelatorio.enabled:=false;
        FrmCentrodeCusto.btgravar.enabled:=true;
        FrmCentrodeCusto.btcancelar.Caption:='Cancelar';
        FrmCentrodeCusto.P_Dados.enabled:=true;
end;

procedure habilita;
begin
        dm.usuarios.Open;
        dm.usuarios.Locate('nome',frmprincipal.sb.Panels[3].Text,[]);
        FrmCentrodeCusto.btcancelar.Caption:='Sair';
        if dm.usuarioscentrocusto.value='1' then
           begin
                FrmCentrodeCusto.btgravar.enabled:=false;
                FrmCentrodeCusto.btnovo.Enabled:=false;
                FrmCentrodeCusto.btexcluir.Enabled:=false;
                FrmCentrodeCusto.btalterar.Enabled:=false;
                FrmCentrodeCusto.btprimeiro.Enabled:=true;
                FrmCentrodeCusto.btanterior.Enabled:=true;
                FrmCentrodeCusto.btproximo.Enabled:=true;
                FrmCentrodeCusto.btultimo.Enabled:=true;
                FrmCentrodeCusto.btrelatorio.enabled:=false;
                FrmCentrodeCusto.P_Dados.enabled:=false;
           end;
        if dm.usuarioscentrocusto.value='2' then
           begin
                FrmCentrodeCusto.btgravar.enabled:=false;
                FrmCentrodeCusto.btnovo.Enabled:=true;
                FrmCentrodeCusto.btexcluir.Enabled:=false;
                FrmCentrodeCusto.btalterar.Enabled:=false;
                FrmCentrodeCusto.btprimeiro.Enabled:=true;
                FrmCentrodeCusto.btanterior.Enabled:=true;
                FrmCentrodeCusto.btproximo.Enabled:=true;
                FrmCentrodeCusto.btultimo.Enabled:=true;
                FrmCentrodeCusto.btrelatorio.enabled:=false;
                FrmCentrodeCusto.P_Dados.enabled:=false;
           end;
        if dm.usuarioscentrocusto.value='3' then
           begin
                FrmCentrodeCusto.btgravar.enabled:=false;
                FrmCentrodeCusto.btnovo.Enabled:=true;
                FrmCentrodeCusto.btexcluir.Enabled:=false;
                FrmCentrodeCusto.btalterar.Enabled:=true;
                FrmCentrodeCusto.btprimeiro.Enabled:=true;
                FrmCentrodeCusto.btanterior.Enabled:=true;
                FrmCentrodeCusto.btproximo.Enabled:=true;
                FrmCentrodeCusto.btultimo.Enabled:=true;
                FrmCentrodeCusto.btrelatorio.enabled:=false;
                FrmCentrodeCusto.P_Dados.enabled:=false;
           end;
        if dm.usuarioscentrocusto.value='4' then
           begin
                FrmCentrodeCusto.btgravar.enabled:=false;
                FrmCentrodeCusto.btnovo.Enabled:=true;
                FrmCentrodeCusto.btexcluir.Enabled:=true;
                FrmCentrodeCusto.btalterar.Enabled:=true;
                FrmCentrodeCusto.btprimeiro.Enabled:=true;
                FrmCentrodeCusto.btanterior.Enabled:=true;
                FrmCentrodeCusto.btproximo.Enabled:=true;
                FrmCentrodeCusto.btultimo.Enabled:=true;
                FrmCentrodeCusto.btrelatorio.enabled:=true;
                FrmCentrodeCusto.P_Dados.enabled:=false;
           end;
        if dm.usuarioscentrocusto.value='5' then
           begin
                FrmCentrodeCusto.btgravar.enabled:=false;
                FrmCentrodeCusto.btnovo.Enabled:=true;
                FrmCentrodeCusto.btexcluir.Enabled:=true;
                FrmCentrodeCusto.btalterar.Enabled:=true;
                FrmCentrodeCusto.btprimeiro.Enabled:=true;
                FrmCentrodeCusto.btanterior.Enabled:=true;
                FrmCentrodeCusto.btproximo.Enabled:=true;
                FrmCentrodeCusto.btultimo.Enabled:=true;
                FrmCentrodeCusto.btrelatorio.enabled:=true;
                FrmCentrodeCusto.P_Dados.enabled:=false;
           end;
end;

procedure TFrmCentrodeCusto.btcancelarClick(Sender: TObject);
begin
        if btnovo.Enabled=false then
           begin
             limpar;
             habilita;
           end
           else
             close;
end;

procedure TFrmCentrodeCusto.btnovoClick(Sender: TObject);
begin
        desabilita;
        limpar;
        edcodigo.SetFocus;
end;

procedure TFrmCentrodeCusto.Memo1Enter(Sender: TObject);
begin
        if copy(cbpatrimonio.Text,1,1)='N' then
           btgravar.click;
end;

procedure TFrmCentrodeCusto.EdlocalizacaoExit(Sender: TObject);
begin
        btgravar.click;
end;

procedure TFrmCentrodeCusto.btalterarClick(Sender: TObject);
begin
        desabilita;
        edcodigo.SetFocus;
end;

procedure TFrmCentrodeCusto.btgravarClick(Sender: TObject);
begin
        if edcodigo.Text<>'' then
           begin
             dm.CentroCusto.close;
             dm.CentroCusto.sql.clear;
             dm.CentroCusto.sql.add('select * from CentroCusto');
             dm.CentroCusto.sql.add('where codigo = '+chr(39)+edcodigo.text+chr(39));
             dm.CentroCusto.open;
             dm.CentroCusto.Edit;
             dm.CentroCustocodigo.Value:=edcodigo.Text;
             dm.CentroCustopatrimonio.Value:=copy(cbpatrimonio.Text,1,1);
             dm.CentroCustodescricao.Value:=EdDescricao.Text;
             dm.CentroCustoespecificacao.Value:=memo1.Text;
             dm.CentroCustofornecedor.Value:=edfornecedor.Text;
             if meaquisicao.Text<>'  /  /    ' then
                dm.CentroCustoaquisicao.Value:=StrToDate(meaquisicao.Text);
             if edvalor.Text<>'' then
                dm.CentroCustovalor.Value:=StringToFloat(edvalor.text);
             dm.CentroCustomoeda.Value:=Edmoeda.Text;
             dm.CentroCustolocalizacao.Value:=Edlocalizacao.Text;
             dm.CentroCusto.Post;
             dm.CentroCusto.close;
             dm.CentroCusto.sql.clear;
             dm.CentroCusto.sql.add('select * from CentroCusto');
             dm.CentroCusto.open;
             dm.CentroCusto.Last;
             habilita;
           end;
end;

procedure TFrmCentrodeCusto.EdvalorExit(Sender: TObject);
begin
        if edvalor.Text<>'' then
           edvalor.Text:=formatfloat('#,##0.00',StringToFloat(edvalor.text));
end;

procedure TFrmCentrodeCusto.meaquisicaoExit(Sender: TObject);
begin
        if meaquisicao.text<>'  /  /    ' then
        Try
           StrToDate(meaquisicao.Text) ;
        Except
        begin
           application.MessageBox('Data Inválida!','Atenção',mb_Ok+mb_iconerror);
           meaquisicao.setfocus;
        end;
        end;
end;

procedure TFrmCentrodeCusto.btprimeiroClick(Sender: TObject);
begin
        dm.CentroCusto.First;
        atualiza;
end;

procedure TFrmCentrodeCusto.btanteriorClick(Sender: TObject);
begin
        dm.CentroCusto.Prior;
        atualiza;
end;

procedure TFrmCentrodeCusto.btproximoClick(Sender: TObject);
begin
        dm.CentroCusto.Next;
        atualiza;
end;

procedure TFrmCentrodeCusto.btultimoClick(Sender: TObject);
begin
        dm.CentroCusto.last;
        atualiza;
end;

procedure TFrmCentrodeCusto.btexcluirClick(Sender: TObject);
begin
        if edcodigo.Text='' then
           begin
              application.MessageBox('Selecione um Registro','Atenção',mb_ok+mb_iconinformation);
              dbgrid1.SetFocus;
           end
           else
           begin
              if Application.Messagebox ('Deseja excluir o registro?','Administrador', Mb_YesNoCancel+mb_iconquestion) = id_yes then
                 begin
                      dm.CentroCusto.Locate('codigo',edcodigo.Text,[]);
                      dm.CentroCusto.Delete;
                      limpar;
                 end;
           end;
end;

procedure TFrmCentrodeCusto.FormShow(Sender: TObject);
begin
        dm.CentroCusto.Open;
        habilita;
end;

procedure TFrmCentrodeCusto.FormKeyPress(Sender: TObject; var Key: Char);
begin
        if Key = CHR(13) Then
           Begin
              perform(WM_NextDlgCtl,0,0);
              Key := CHR(0);
           End;
end;

end.
