unit UnitFrmRelABCImp;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, DBTables, RLXLSFilter,
  RLFilters, RLPDFFilter, RLDraftFilter, RLReport, Buttons, Mask,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, jpeg;

type
  TFrmRelABCImp = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    qrdescricao: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText1: TRLDBText;
    RLBand2: TRLBand;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel7: TRLLabel;
    RLBand3: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RLBand4: TRLBand;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLBand5: TRLBand;
    RLLabel4: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    DataSource1: TDataSource;
    RLLabel5: TRLLabel;
    RLDBText4: TRLDBText;
    RLLabel10: TRLLabel;
    RLDBText6: TRLDBText;
    RLLabel11: TRLLabel;
    gbabc: TGroupBox;
    rbqtd: TRadioButton;
    rbvalor: TRadioButton;
    rblucratividade: TRadioButton;
    bt1: TBitBtn;
    bt2: TBitBtn;
    RLDBText9: TRLDBText;
    Label4: TLabel;
    Label5: TLabel;
    lbfavorecido: TLabel;
    lbnomefavorecido: TLabel;
    Label1: TLabel;
    medatainicial: TMaskEdit;
    medatafinal: TMaskEdit;
    edfavorecido: TEdit;
    Query1: TZQuery;
    Query1nome: TStringField;
    Query1und: TStringField;
    Query1QTD: TFloatField;
    Query1Total: TFloatField;
    Query1PrecoMedio: TFloatField;
    Query1Lucratividade: TFloatField;
    qrtitulo: TRLLabel;
    RLImage1: TRLImage;
    Label2: TLabel;
    cbgrupo: TComboBox;
    procedure bt2Click(Sender: TObject);
    procedure medatainicialExit(Sender: TObject);
    procedure medatafinalExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure bt1Click(Sender: TObject);
    procedure edfavorecidoExit(Sender: TObject);
    procedure edfavorecidoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
  end;

var
  FrmRelABCImp: TFrmRelABCImp;

implementation

uses Unitdm, UnitFrmCadClientes;

{$R *.DFM}

procedure TFrmRelABCImp.bt2Click(Sender: TObject);
begin
      close;  
end;

procedure TFrmRelABCImp.medatainicialExit(Sender: TObject);
begin
        if medatainicial.text<>'  /  /    ' then
        begin
        Try
           StrToDate(medatainicial.Text) ;
        Except
        begin
           application.MessageBox('Data Inválida!','Administrador',mb_Ok+mb_iconerror);
           medatainicial.setfocus;
        end;
        end;
        end;
end;

procedure TFrmRelABCImp.medatafinalExit(Sender: TObject);
begin
        if MeDataFinal.text<>'  /  /    ' then
        begin
        Try
           StrToDate(MeDataFinal.Text) ;
           If StrToDate(MeDataInicial.Text) > StrToDate(MeDataFinal.Text) then
              Begin
                 MessageBox(Handle, 'Data inferior à data inicial de pesquisa!!', 'Administrador', mb_IconWarning or mb_Ok);
                 medatafinal.text:='';
                 medatainicial.text:='';
                 MeDatainicial.SetFocus;
              End;
        Except
        begin
           application.MessageBox('Data Inválida!','Administrador',mb_Ok+mb_iconerror);
           MeDataFinal.setfocus;
        end;
        end;
        end;
end;

procedure TFrmRelABCImp.FormKeyPress(Sender: TObject; var Key: Char);
begin
      if key=#13 then
      begin
         SelectNext(activecontrol,True,True);
         key:=#0;
      end;
end;

procedure TFrmRelABCImp.bt1Click(Sender: TObject);
begin
  if (medatainicial.Text<>'  /  /    ') and
     (medatafinal.Text<>'  /  /    ') then
     begin
        dm.parametros.close;
        dm.parametros.Open;
        Query1.Close;
        Query1.SQL.Clear;
        Query1.SQL.Add('select P.nome,P.referencia,M.und,sum(M.qtd) as QTD,');
        Query1.SQL.Add('sum(M.vlrtotal) as Total,(sum(M.vlrtotal)/sum(M.qtd)) as PrecoMedio,');
        Query1.SQL.Add('(P.custo/(sum(M.vlrtotal)/sum(M.qtd)))*100 as Lucratividade');
        Query1.SQL.Add('from movestoque M, produtos P');
        Query1.SQL.Add('where (M.produto=P.codigo)');
        Query1.SQL.Add('and (M.tipomov = '+chr(39)+'SV'+chr(39)+')');
        Query1.SQL.Add('and (M.data between '+chr(39)+
        copy(medatainicial.text,7,4)+'/'+copy(medatainicial.text,4,2)+'/'+
        copy(medatainicial.text,1,2)+chr(39)+' and '+chr(39)+
        copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
        copy(MeDataFinal.text,1,2)+chr(39)+')');
        if edfavorecido.Text<>'' then
           Query1.SQL.Add('and (E.favorecido= '+edfavorecido.Text+')');
        if cbgrupo.text<>'' then
           Query1.sql.add('and (P.grupo = '+chr(39)+copy(cbgrupo.Text,1,4)+chr(39)+')');
        Query1.SQL.Add('group by nome');
        if rbqtd.Checked then
           Query1.SQL.Add('order by qtd desc')
        else if rbvalor.Checked then
           Query1.SQL.Add('order by total desc')
        else if rblucratividade.Checked then
           Query1.SQL.Add('order by Lucratividade desc');
        Query1.Open;
        qrtitulo.Caption:='Curva ABC do Período de  '+medatainicial.text+' à '+medatafinal.text;
        if edfavorecido.Text<>'' then
           qrtitulo.Caption:=qrtitulo.Caption+' - Cliente: '+lbnomefavorecido.Caption;
        if cbgrupo.Text <> '' then
           qrtitulo.Caption:=qrtitulo.Caption+' - Grupo: '+cbgrupo.Text;
        RLReport1.Preview;
     end;
end;

procedure TFrmRelABCImp.edfavorecidoExit(Sender: TObject);
begin
  if edfavorecido.Text<>'' then
     begin
      dm.Clientes.close;
      dm.Clientes.sql.clear;
      dm.Clientes.sql.add('select * from clientes');
      dm.Clientes.sql.add('where codigo = '+edfavorecido.text);
      dm.Clientes.open;
      if dm.Clientes.RecordCount<1 then
         begin
           application.MessageBox('Cliente não Localizado','Atenção',mb_ok+mb_iconinformation);
           edfavorecido.SetFocus;
         end
         else
           lbnomefavorecido.Caption:=dm.clientesnome.value;
     end;
end;

procedure TFrmRelABCImp.edfavorecidoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_f10 then
     begin
        try
          Application.CreateForm(TFrmCadClientes, FrmCadClientes);
          FrmCadClientes.showmodal;
        finally
          FrmCadClientes.Release;
          FrmCadClientes:=nil;
        end;
     end;
end;

procedure TFrmRelABCImp.FormShow(Sender: TObject);
begin
  dm.Grupos.Close;
  dm.Grupos.SQL.Clear;
  dm.Grupos.SQL.Add('select * from grupos');
  dm.Grupos.Open;
  cbgrupo.Items.Clear;
  while not dm.Grupos.Eof do
        begin
          cbgrupo.Items.Add(dm.Gruposcodigo.Value+
          ' '+dm.Gruposdescricao.Value);
          dm.Grupos.Next;
        end;
end;

end.
