unit UnitFrmRastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, Mask, Buttons, Grids, DBGrids, ComCtrls,
  QRCtrls, QuickRpt, ExtCtrls, Menus, ZAbstractRODataset, ZAbstractDataset,
  ZDataset;

type
  TFrmRastro = class(TForm)
    medatainicial: TMaskEdit;
    medatafinal: TMaskEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label1: TLabel;
    cboperador: TComboBox;
    Label2: TLabel;
    cboperacao: TComboBox;
    btfiltrar: TBitBtn;
    DBGrid1: TDBGrid;
    StatusBar1: TStatusBar;
    QuickRep1: TQuickRep;
    QRGroup1: TQRGroup;
    QRDBText1: TQRDBText;
    QRBand1: TQRBand;
    qr2: TQRDBText;
    qrsaldo: TQRExpr;
    QRBand2: TQRBand;
    QRLabel7: TQRLabel;
    QRExpr4: TQRExpr;
    QRExpr16: TQRExpr;
    PageHeaderBand1: TQRBand;
    QRShape1: TQRShape;
    QRLabel15: TQRLabel;
    qrtitulo: TQRLabel;
    QRLabel21: TQRLabel;
    QRSysData4: TQRSysData;
    QRSysData3: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    PageFooterBand1: TQRBand;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel9: TQRLabel;
    QRExpr28: TQRExpr;
    QRExpr18: TQRExpr;
    BitBtn1: TBitBtn;
    QRLabel13: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText5: TQRDBText;
    qr1: TQRDBText;
    QRLabel12: TQRLabel;
    QRLabel1: TQRLabel;
    Label4: TLabel;
    edrotina: TEdit;
    Label3: TLabel;
    edhistorico: TEdit;
    Label5: TLabel;
    edvalor: TEdit;
    Label6: TLabel;
    edobs: TEdit;
    Label7: TLabel;
    edfavorecido: TEdit;
    PopupMenu1: TPopupMenu;
    ExcluirHistricoCliente1: TMenuItem;
    qratualizar: TZQuery;
    AtualizarVendaFinalizada1: TMenuItem;
    N1: TMenuItem;
    procedure btfiltrarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure medatainicialExit(Sender: TObject);
    procedure medatafinalExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure medatainicialEnter(Sender: TObject);
    procedure medatafinalEnter(Sender: TObject);
    procedure cboperadorEnter(Sender: TObject);
    procedure cboperacaoEnter(Sender: TObject);
    procedure edrotinaEnter(Sender: TObject);
    procedure cboperadorExit(Sender: TObject);
    procedure cboperacaoExit(Sender: TObject);
    procedure edrotinaExit(Sender: TObject);
    procedure edhistoricoEnter(Sender: TObject);
    procedure edhistoricoExit(Sender: TObject);
    procedure edvalorEnter(Sender: TObject);
    procedure edvalorExit(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edobsEnter(Sender: TObject);
    procedure edobsExit(Sender: TObject);
    procedure edfavorecidoEnter(Sender: TObject);
    procedure edfavorecidoExit(Sender: TObject);
    procedure ExcluirHistricoCliente1Click(Sender: TObject);
    procedure AtualizarVendaFinalizada1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRastro: TFrmRastro;
  doc,texto,busca,v_data:string;
  ClickedOK:boolean;
  tam:integer;  

implementation

uses Unitdm, UnitFrmPrincipal;

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

function InserePonto(texto: string): string;
var i:integer;s:string;
begin
   i:=1;
   s:='';
   while (i<=length(texto)) do
   begin
      if not (texto[i] in ['.',',']) then
         s:=s+texto[i]
      else if texto[i]=','then
      begin
         texto[i]:='.';
         s:=s+texto[i];
      end;
      Inc(i);
   end;
   InserePonto := s;
end;

procedure TFrmRastro.btfiltrarClick(Sender: TObject);
begin
  if (medatainicial.text<>'  /  /    ') and (MeDataFinal.text<>'  /  /    ') then
     begin
       dm.rastro.Close;
       dm.rastro.SQL.Clear;
       dm.rastro.SQL.Add('select * from rastro');
       dm.rastro.SQL.Add('where (data between '+chr(39)+
       copy(medatainicial.text,7,4)+'/'+copy(medatainicial.text,4,2)+'/'+
       copy(medatainicial.text,1,2)+chr(39)+' and '+chr(39)+
       copy(MeDataFinal.text,7,4)+'/'+copy(MeDataFinal.text,4,2)+'/'+
       copy(MeDataFinal.text,1,2)+chr(39)+')');
       if edfavorecido.Text<>'' then
          dm.rastro.SQL.Add('and (favorecido = '+chr(39)+edfavorecido.Text+chr(39)+')');
       if cboperador.Text<>'' then
          dm.rastro.SQL.Add('and (operador = '+chr(39)+cboperador.Text+chr(39)+')');
       if edrotina.Text<>'' then
          dm.rastro.SQL.Add('and (rotina = '+chr(39)+edrotina.Text+chr(39)+')');
       if cboperacao.Text<>'' then
          dm.rastro.SQL.Add('and (operacao = '+chr(39)+copy(cboperacao.Text,1,1)+chr(39)+')');
       if edhistorico.Text<>'' then
          dm.rastro.sql.add('and (historico like '+chr(39)+'%'+edhistorico.text+'%'+chr(39)+')');
       if edobs.Text<>'' then
          dm.rastro.sql.add('and (obs like '+chr(39)+'%'+edobs.text+'%'+chr(39)+')');
       if edvalor.Text<>'' then
          dm.rastro.SQL.Add('and (valor ='+InserePonto(edvalor.text)+')');
       dm.rastro.SQL.Add('order by data,hora');
       dm.rastro.open;
     end;
end;

procedure TFrmRastro.FormKeyPress(Sender: TObject; var Key: Char);
begin
        if key=#13 then
        begin
           SelectNext(activecontrol,True,True);
           key:=#0;
        end;
end;

procedure TFrmRastro.FormShow(Sender: TObject);
begin
  dm.usuarios.Open;
  dm.usuarios.first;
  cboperador.Items.Clear;
  while not dm.usuarios.Eof do
        begin
          cboperador.Items.Add(dm.usuariosNome.Value);
          dm.usuarios.Next;
        end;
end;

procedure TFrmRastro.medatainicialExit(Sender: TObject);
begin
        if MeDataInicial.text<>'  /  /    ' then
        begin
        Try
           StrToDate(MeDataInicial.Text) ;
        Except
        begin
           application.MessageBox('Data Inválida!','Atenção',mb_Ok+mb_iconerror);
           MeDataInicial.setfocus;
        end;
        end;
        end;
  MeDataInicial.Color:=clWindow;
end;

procedure TFrmRastro.medatafinalExit(Sender: TObject);
begin
        if MeDataFinal.text<>'  /  /    ' then
        begin
        Try
           StrToDate(MeDataFinal.Text) ;
           If StrToDate(MeDataInicial.Text) > StrToDate(MeDataFinal.Text) then
              Begin
                 MessageBox(Handle, 'Data inferior à data inicial de pesquisa!!', 'Atenção', mb_IconWarning or mb_Ok);
                 MeDataFinal.SetFocus;
              End;
        Except
        begin
           application.MessageBox('Data Inválida!','Atenção',mb_Ok+mb_iconerror);
           MeDataFinal.setfocus;
        end;
        end;
        end;
  MeDataFinal.Color:=clWindow;
end;

procedure TFrmRastro.BitBtn1Click(Sender: TObject);
begin
    qrtitulo.Caption:='Rastro no Período de '+medatainicial.Text+' à '+medatafinal.Text;    
    QuickRep1.Preview;
end;

procedure TFrmRastro.medatainicialEnter(Sender: TObject);
begin
  if MeDataInicial.Text='  /  /    ' then
     begin
       MeDataInicial.Text:=DateToStr(date);
       MeDataInicial.SelStart:=0;
       MeDataInicial.SelLength:=length(MeDataInicial.Text);
     end;
  medatainicial.Color:=$0080FFFF;
end;

procedure TFrmRastro.medatafinalEnter(Sender: TObject);
begin
  if MeDataFinal.Text='  /  /    ' then
     begin
       MeDataFinal.Text:=DateToStr(date);
       MeDataFinal.SelStart:=0;
       MeDataFinal.SelLength:=length(MeDataFinal.Text);
     end;
  medatafinal.Color:=$0080FFFF;
end;

procedure TFrmRastro.cboperadorEnter(Sender: TObject);
begin
  cboperador.Color:=$0080FFFF;
end;

procedure TFrmRastro.cboperacaoEnter(Sender: TObject);
begin
  cboperacao.Color:=$0080FFFF;
end;

procedure TFrmRastro.edrotinaEnter(Sender: TObject);
begin
  edrotina.Color:=$0080FFFF;
end;

procedure TFrmRastro.cboperadorExit(Sender: TObject);
begin
  cboperador.Color:=clWindow;
end;

procedure TFrmRastro.cboperacaoExit(Sender: TObject);
begin
  cboperacao.Color:=clWindow;
end;

procedure TFrmRastro.edrotinaExit(Sender: TObject);
begin
  edrotina.Color:=clWindow;
end;

procedure TFrmRastro.edhistoricoEnter(Sender: TObject);
begin
  edhistorico.Color:=$0080FFFF;
end;

procedure TFrmRastro.edhistoricoExit(Sender: TObject);
begin
  edhistorico.Color:=clWindow;
end;

procedure TFrmRastro.edvalorEnter(Sender: TObject);
begin
  edvalor.Color:=$0080FFFF;
end;

procedure TFrmRastro.edvalorExit(Sender: TObject);
begin
  if edvalor.text<>'' then
     edvalor.text:=formatfloat('#,##0.00',StringToFloat(edvalor.text));
  edvalor.Color:=clWindow;
end;

procedure TFrmRastro.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If ((Shift = [ssCtrl]) and (key = vk_delete)) then Abort;
end;

procedure TFrmRastro.edobsEnter(Sender: TObject);
begin
  edobs.Color:=$0080FFFF;
end;

procedure TFrmRastro.edobsExit(Sender: TObject);
begin
  edobs.Color:=clWindow;
end;

procedure TFrmRastro.edfavorecidoEnter(Sender: TObject);
begin
  edfavorecido.Color:=$0080FFFF;
end;

procedure TFrmRastro.edfavorecidoExit(Sender: TObject);
begin
  edfavorecido.Color:=clWindow;
end;

procedure TFrmRastro.ExcluirHistricoCliente1Click(Sender: TObject);
begin
  if dm.rastrooperacao.Value='E' then
     begin
        if Application.Messagebox ('Confirma Operação?','Excluir Histórico Cliente', mb_yesno+mb_iconquestion+MB_DEFBUTTON2)=id_yes then
           begin
             qratualizar.Close;
             qratualizar.SQL.Clear;
             qratualizar.SQL.Add('delete from historicoclie');
             qratualizar.SQL.Add('where (venda = '+chr(39)+edhistorico.Text+chr(39)+')');
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
             dm.rastrorotina.Value:='HISTORICO';
             dm.rastrooperacao.Value:='E';
             dm.rastrohistorico.Value:='Atendimento: '+edhistorico.Text;
             dm.rastrofavorecido.Value:=0;
             dm.rastrovalor.Value:=0;
             dm.rastroobs.Value:='Exclusão do Histórico do Cliente';
             dm.rastro.Post;
             dm.rastro.Close;
           end;
     end;
end;

procedure TFrmRastro.AtualizarVendaFinalizada1Click(Sender: TObject);
begin
  if (dm.rastrorotina.Value='CAIXA') and
     (dm.rastrooperacao.Value='I') and
     (copy(dm.rastrohistorico.Value,1,9)='FINALIZAR') then
     begin
        if Application.Messagebox ('Confirma Operação?','Atualizar Venda Finalizada', mb_yesno+mb_iconquestion+MB_DEFBUTTON2)=id_yes then
           begin
             busca := '';
             ClickedOK := InputQuery('Digite o Código do Cliente', 'Atualizar Venda Finalizada', busca);
             if ClickedOK then
                begin
                   texto:=dm.rastrohistorico.Value;
//                   showmessage(copy(dm.rastrohistorico.Value,1,23));
                   tam:=length(texto);
//                   showmessage(copy(dm.rastrohistorico.Value,24,tam-23));
                   doc:=copy(dm.rastrohistorico.Value,24,tam-23);
                   v_data:=copy(DateToStr(dm.rastrodata.Value),7,4)+'/'+
                   copy(DateToStr(dm.rastrodata.Value),4,2)+'/'+copy(DateToStr(dm.rastrodata.Value),1,2);

                   qratualizar.Close;
                   qratualizar.SQL.Clear;
                   qratualizar.SQL.Add('update venda set');
                   qratualizar.sql.add('cliente = :busca,');
                   qratualizar.sql.add('data = :v_data');
                   qratualizar.SQL.Add('where vendaI= '+chr(39)+doc+chr(39));
                   qratualizar.Params[0].Value := busca;
                   qratualizar.Params[1].Value := v_data;
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
                   dm.rastrorotina.Value:='CAIXA';
                   dm.rastrooperacao.Value:='A';
                   dm.rastrohistorico.Value:=texto;
                   dm.rastrofavorecido.Value:=StrToInt(busca);
                   dm.rastrovalor.Value:=0;
                   dm.rastroobs.Value:='Atualizar Venda Finalizada';
                   dm.rastro.Post;
                   dm.rastro.Close;
                end;
           end;
     end;
end;

procedure TFrmRastro.DBGrid1DblClick(Sender: TObject);
begin
  if dm.rastrorotina.Value='NFE' then
     begin
      if Application.Messagebox ('Confirma Operação?','Excluir N.F.E.', mb_yesno+mb_iconquestion+MB_DEFBUTTON2)=id_yes then
         begin
           doc   := dm.rastrohistorico.Value;
           texto := dm.rastroobs.Value;

           qratualizar.Close;
           qratualizar.SQL.Clear;
           qratualizar.SQL.Add('delete from rastro');
           qratualizar.sql.add('where (rotina ='+chr(39)+'NFE'+chr(39)+')');
           qratualizar.sql.add('and (operacao ='+chr(39)+'I'+chr(39)+')');
           qratualizar.sql.add('and (hora ='+chr(39)+dm.rastrohora.Value+chr(39)+')');
           qratualizar.sql.add('and (historico ='+chr(39)+dm.rastrohistorico.Value+chr(39)+')');
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
           dm.rastrorotina.Value:='NFE';
           dm.rastrooperacao.Value:='E';
           dm.rastrohistorico.Value:=doc;
           dm.rastrofavorecido.Value:=0;
           dm.rastrovalor.Value:=0;
           dm.rastroobs.Value:=texto+' - Excluido pela auditoria';
           dm.rastro.Post;
           dm.rastro.Close;

           btfiltrar.Click;
         end;
      end;
end;

end.
