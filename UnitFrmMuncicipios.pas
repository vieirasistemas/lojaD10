unit UnitFrmMuncicipios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TFrmMuncicipios = class(TForm)
    edpesquisa: TEdit;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    procedure edpesquisaExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMuncicipios: TFrmMuncicipios;

implementation

uses Unitdm;

{$R *.dfm}

procedure TFrmMuncicipios.edpesquisaExit(Sender: TObject);
begin
  if edpesquisa.Text<>'' then
     begin
       dm.municipios.close;
       dm.municipios.sql.clear;
       dm.municipios.sql.add('select * from municipios');
       dm.municipios.sql.add('where Municipio like '+chr(39)+'%'+edpesquisa.text+'%'+chr(39));
       dm.municipios.sql.add('order by Municipio');
       dm.municipios.open;
     end;
end;

end.
