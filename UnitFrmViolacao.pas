unit UnitFrmViolacao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TFrmViolacao = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmViolacao: TFrmViolacao;

implementation

uses UnitFrmBemVindo;

{$R *.DFM}

procedure TFrmViolacao.Button1Click(Sender: TObject);
begin
        application.Terminate;
end;

procedure TFrmViolacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        application.Terminate;
end;

end.
