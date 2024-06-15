unit UnitFrmCFOP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  TFrmCFOP = class(TForm)
    Label37: TLabel;
    edcfop: TEdit;
    Label20: TLabel;
    eddescricao: TEdit;
    BitBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    qratualizar: TZQuery;
    btgravar: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btgravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCFOP: TFrmCFOP;

implementation

uses Unitdm, UnitFrmPrincipal;

{$R *.dfm}

procedure TFrmCFOP.BitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure TFrmCFOP.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
     SelectNext(activecontrol,True,True);
     key:=#0;
  end;
end;

procedure TFrmCFOP.DBGrid1CellClick(Column: TColumn);
begin
  edcfop.Text:=dm.cfopcodigo.Value;
  eddescricao.Text:=dm.cfopdescricao.Value;
end;

procedure TFrmCFOP.FormShow(Sender: TObject);
begin
  dm.cfop.Close;
  dm.cfop.SQL.Clear;
  dm.cfop.SQL.Add('select * from cfop');
  dm.cfop.SQL.Add('order by codigo');
  dm.cfop.Open;
end;

procedure TFrmCFOP.DBGrid1DblClick(Sender: TObject);
begin
  if application.messagebox('Confirma Exclusão','Excluir Item',mb_yesno+mb_iconquestion)=id_yes then
     begin
       qratualizar.close;
       qratualizar.sql.clear;
       qratualizar.sql.add('delete from cfop');
       qratualizar.SQL.Add('where codigo = '+chr(39)+edcfop.Text+chr(39));
       qratualizar.ExecSQL;

       dm.cfop.Close;
       dm.cfop.Open;
     end;
end;

procedure TFrmCFOP.btgravarClick(Sender: TObject);
var
C_descricao:string;
begin
  if (edcfop.Text<>'')  and (eddescricao.Text<>'') then
     begin
       dm.cfop.Close;
       dm.cfop.Open;
       if not dm.cfop.Locate('codigo',edcfop.Text,[]) then
          begin
            dm.cfop.Insert;
            dm.cfopcodigo.Value:=edcfop.Text;
            dm.cfopdescricao.Value:=eddescricao.Text;
            dm.cfopicms.Value:=0;
            dm.cfop.Post;

            dm.rastro.Close;
            dm.rastro.SQL.Clear;
            dm.rastro.SQL.Add('select * from rastro');
            dm.rastro.SQL.Add('where (1=2)');
            dm.rastro.Open;
            dm.rastro.Insert;
            dm.rastrodata.Value:=date;
            dm.rastrohora.Value:=TimeToStr(time);
            dm.rastrooperador.Value:=FrmPrincipal.sb.Panels[3].Text;
            dm.rastrorotina.Value:='CFOP';
            dm.rastrooperacao.Value:='I';
            dm.rastrohistorico.Value:=edcfop.Text+' '+eddescricao.Text;
            dm.rastrofavorecido.Value:=0;
            dm.rastro.Post;
            dm.rastro.Close;
          end
          else
          begin
            C_descricao:=eddescricao.Text;
            qratualizar.close;
            qratualizar.sql.clear;
            qratualizar.sql.add('update cfop set');
            qratualizar.sql.add('descricao = :C_descricao,');
            qratualizar.SQL.Add('where codigo = '+chr(39)+edcfop.Text+chr(39));
            qratualizar.Params[0].Value := C_descricao;
            qratualizar.ExecSQL;

            dm.rastro.Close;
            dm.rastro.SQL.Clear;
            dm.rastro.SQL.Add('select * from rastro');
            dm.rastro.SQL.Add('where (1=2)');
            dm.rastro.Open;
            dm.rastro.Insert;
            dm.rastrodata.Value:=date;
            dm.rastrohora.Value:=TimeToStr(time);
            dm.rastrooperador.Value:=FrmPrincipal.sb.Panels[3].Text;
            dm.rastrorotina.Value:='CFOP';
            dm.rastrooperacao.Value:='A';
            dm.rastrohistorico.Value:=edcfop.Text+' '+eddescricao.Text;
            dm.rastrofavorecido.Value:=0;
            dm.rastro.Post;
            dm.rastro.Close;
          end;
       dm.cfop.Close;
       dm.cfop.Open;
       dm.cfop.Locate('codigo',edcfop.Text,[]);
     end;
end;

end.
