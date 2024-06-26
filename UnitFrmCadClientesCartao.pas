unit UnitFrmCadClientesCartao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, EditAlinhado, Buttons, Grids, DBGrids, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFrmCadClientesCartao = class(TForm)
    Label37: TLabel;
    ednome: TEdit;
    edtaxa: TEditAlinh;
    Label16: TLabel;
    eddias: TEditAlinh;
    Label1: TLabel;
    btgravar: TBitBtn;
    btcancelar: TBitBtn;
    DBGrid1: TDBGrid;
    QrTotal: TZQuery;
    QrTotalultimocod: TIntegerField;
    Label2: TLabel;
    procedure btcancelarClick(Sender: TObject);
    procedure btgravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadClientesCartao: TFrmCadClientesCartao;
  R_hora,busca : string;
  ClickedOK : boolean;

implementation

uses Unitdm, UnitFrmPrincipal;

{$R *.dfm}

procedure TFrmCadClientesCartao.btcancelarClick(Sender: TObject);
begin
  close;
end;

procedure TFrmCadClientesCartao.btgravarClick(Sender: TObject);
begin
  if (ednome.Text<>'') and (edtaxa.Text<>'') and (eddias.Text<>'') then
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
       dm.rastrorotina.Value:='CART�ES';
       dm.rastrooperacao.Value:='I';
       dm.rastrohistorico.Value:=ednome.Text;
       dm.rastrofavorecido.Value:=0;
       dm.rastrovalor.Value:=0;
       dm.rastroobs.Value:='Taxa: '+edtaxa.Text+' - Dias: '+eddias.Text;
       dm.rastro.Post;
       dm.rastro.Close;

       dm.clientes.Insert;
       dm.clientesnome.Value:=ednome.Text;
       dm.clientesperc.Value:=StrToFloat(edtaxa.Text);
       dm.clientesdias.Value:=StrToInt(eddias.Text);
       dm.clientes.Post;
       ednome.Text:='';
       edtaxa.Text:='';
       eddias.Text:='';
       ednome.SetFocus;
     end;
end;

procedure TFrmCadClientesCartao.FormShow(Sender: TObject);
begin
  dm.Clientes.close;
  dm.Clientes.sql.clear;
  dm.Clientes.sql.add('select * from clientes');
  dm.Clientes.sql.add('where perc>0');
  dm.Clientes.sql.add('order by nome');
  dm.Clientes.open;
end;

procedure TFrmCadClientesCartao.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = CHR(13) Then
     Begin
        perform(WM_NextDlgCtl,0,0);
        Key := CHR(0);
     End;
end;

procedure TFrmCadClientesCartao.DBGrid1DblClick(Sender: TObject);
begin
//  if assigned(FrmVendaRefaturar) then
//     begin
//       if (dm.Clientes.Active) and (dm.Clientes.RecordCount>0) then
//          begin
//            FrmVendaRefaturar.edcartao.Text:=IntToStr(dm.Clientescodigo.value);
//            FrmVendaRefaturar.edcartao.SelStart:=0;
//            FrmVendaRefaturar.edcartao.SelLength:=length(FrmVendaRefaturar.edcartao.Text);
//            modalresult := mrok;
//          end
//     end;
end;

procedure TFrmCadClientesCartao.DBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  If ((Shift = [ssCtrl]) and (key = vk_delete)) then Abort;

  if key=vk_f2 then
     begin
       busca := '';
       ClickedOK := InputQuery('Digite a Nova Taxa', 'Alterar Taxa do Cart�o', busca);
       if ClickedOK then
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
            dm.rastrorotina.Value:='CART�ES';
            dm.rastrooperacao.Value:='A';
            dm.rastrohistorico.Value:=dm.clientesnome.Value;
            dm.rastrofavorecido.Value:=0;
            dm.rastrovalor.Value:=0;
            dm.rastroobs.Value:='Taxa Anterior: '+formatfloat('0.00',dm.clientesperc.Value)+' - Nova Taxa: '+busca;
            dm.rastro.Post;
            dm.rastro.Close;


            dm.clientes.Edit;
            dm.clientesperc.Value:=StrToFloat(busca);
            dm.clientes.Post;
            dm.clientes.Close;
            dm.clientes.Open;
          end;
     end;
  if key=vk_f3 then
     begin
       busca := dm.clientesnome.Value;
       ClickedOK := InputQuery('Digite o Novo Nome', 'Alterar Nome do Cart�o', busca);
       if ClickedOK then
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
            dm.rastrorotina.Value:='CART�ES';
            dm.rastrooperacao.Value:='A';
            dm.rastrohistorico.Value:=dm.clientesnome.Value;
            dm.rastrofavorecido.Value:=0;
            dm.rastrovalor.Value:=0;
            dm.rastroobs.Value:='Novo Nome: '+busca;
            dm.rastro.Post;
            dm.rastro.Close;
            
            dm.clientes.Edit;
            dm.clientesnome.Value:=busca;
            dm.clientes.Post;
            dm.clientes.Close;
            dm.clientes.Open;
          end;
     end;
end;

end.
