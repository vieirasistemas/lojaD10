unit UnitFrmDepositoCH;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons, DB, DBTables, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  TFrmDepositoCH = class(TForm)
    medtinicial: TMaskEdit;
    Label25: TLabel;
    medtfinal: TMaskEdit;
    Label38: TLabel;
    bt1: TBitBtn;
    bt2: TBitBtn;
    cbtipo: TComboBox;
    Label1: TLabel;
    qratualizar: TZQuery;
    procedure bt2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure medtinicialExit(Sender: TObject);
    procedure medtfinalExit(Sender: TObject);
    procedure bt1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbtipoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDepositoCH: TFrmDepositoCH;
  R_hora:string;

implementation

uses Unitdm, Unitfrmprincipal;

{$R *.dfm}

procedure TFrmDepositoCH.bt2Click(Sender: TObject);
begin
      close;  
end;

procedure TFrmDepositoCH.FormKeyPress(Sender: TObject; var Key: Char);
begin
        if Key = CHR(13) Then
           Begin
              perform(WM_NextDlgCtl,0,0);
              Key := CHR(0);
           End;
end;

procedure TFrmDepositoCH.medtinicialExit(Sender: TObject);
begin
        if medtinicial.text<>'  /  /    ' then
        begin
        Try
           StrToDate(medtinicial.Text) ;
        Except
        begin
           application.MessageBox('Data Inválida!','Administrador',mb_Ok+mb_iconerror);
           medtinicial.setfocus;
        end;
        end;
        end;
end;

procedure TFrmDepositoCH.medtfinalExit(Sender: TObject);
begin
        if medtfinal.text<>'  /  /    ' then
        begin
        Try
           StrToDate(medtfinal.Text) ;
           If StrToDate(MeDtInicial.Text) > StrToDate(medtfinal.Text) then
              Begin
                 MessageBox(Handle, 'Data inferior à data inicial de pesquisa!!', 'Administrador', mb_IconWarning or mb_Ok);
                 medtfinal.SetFocus;
              End;
        Except
        begin
           application.MessageBox('Data Inválida!','Administrador',mb_Ok+mb_iconerror);
           medtfinal.setfocus;
        end;
        end;
        end;
end;

procedure TFrmDepositoCH.bt1Click(Sender: TObject);
var
totalgeral:real;
D_conta,D_planoconta,D_pgto:String;
begin
   if (MeDtFinal.text<>'  /  /    ') and
      (MeDtFinal.text<>'  /  /    ') and
      (cbtipo.text<>'') then
      begin
        if Application.Messagebox ('Confirma Baixa','Atenção', Mb_YesNo+mb_iconquestion) = id_yes then
           begin
            dm.TotalDocReceber.Close;
            dm.TotalDocReceber.SQL.Clear;
            dm.TotalDocReceber.SQL.Add('select sum(liquido) as total from DocReceber');
            dm.TotalDocReceber.SQL.Add('where (pgto is null)');
            dm.TotalDocReceber.SQL.Add('and (vencto between '+chr(39)+
            copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
            copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
            copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
            copy(MeDtFinal.text,1,2)+chr(39)+')');
            dm.TotalDocReceber.SQL.Add('and (tipo ='+chr(39)+copy(cbtipo.Text,1,2)+chr(39)+')');
            dm.TotalDocReceber.open;
            totalgeral:=0;
            if dm.TotalDocRecebertotal.Value>0 then
               totalgeral:=dm.TotalDocReceber['total']
            else
               totalgeral:=0;

            if totalgeral>0 then
               begin
                 dm.parametros.Close;
                 dm.parametros.Open;
                 D_conta:=dm.parametroscontabanco.value;
                 if copy(cbtipo.Text,1,2)='CC' then
                    D_planoconta:='11101003'
                 else if copy(cbtipo.Text,1,2)='CD' then
                    D_planoconta:='11101004'
                 else
                    D_planoconta:='';
//                 D_pgto:=copy(frmprincipal.sb.Panels[0].Text,7,4)+'/'+
//                 copy(frmprincipal.sb.Panels[0].Text,4,2)+'/'+
//                 copy(frmprincipal.sb.Panels[0].Text,1,2);

                 qratualizar.close;
                 qratualizar.sql.clear;
                 qratualizar.sql.add('update DocReceber set');
                 qratualizar.sql.add('conta = :D_conta,');
                 qratualizar.sql.add('planoconta = :D_planoconta,');
                 qratualizar.sql.add('pgto = vencto,');
                 qratualizar.sql.add('valorpago = liquido');
                 qratualizar.SQL.Add('where (pgto is null)');
                 qratualizar.SQL.Add('and (vencto between '+chr(39)+
                 copy(medtinicial.text,7,4)+'/'+copy(medtinicial.text,4,2)+'/'+
                 copy(medtinicial.text,1,2)+chr(39)+' and '+chr(39)+
                 copy(MeDtFinal.text,7,4)+'/'+copy(MeDtFinal.text,4,2)+'/'+
                 copy(MeDtFinal.text,1,2)+chr(39)+')');
                 qratualizar.SQL.Add('and (tipo ='+chr(39)+copy(cbtipo.Text,1,2)+chr(39)+')');
                 qratualizar.Params[0].Value := D_conta;
                 qratualizar.Params[1].Value := D_planoconta;
//                 qratualizar.Params[2].Value := D_pgto;
                 qratualizar.ExecSQL;

                 R_hora:=TimeToStr(time);
                 dm.rastro.Close;
                 dm.rastro.SQL.Clear;
                 dm.rastro.SQL.Add('select * from rastro');
                 dm.rastro.SQL.Add('where (data = '+chr(39)+
                 copy(DateToStr(date),7,4)+'/'+copy(DateToStr(date),4,2)+'/'+
                 copy(DateToStr(date),1,2)+chr(39)+')');
                 dm.rastro.SQL.Add('and (operador='+chr(39)+FrmPrincipal.sb.Panels[3].Text+chr(39)+')');
                 dm.rastro.SQL.Add('and (hora='+chr(39)+R_hora+chr(39)+')');
                 dm.rastro.Open;
                 dm.rastro.Insert;
                 dm.rastrodata.Value:=date;
                 dm.rastrohora.Value:=R_hora;
                 dm.rastrooperador.Value:=FrmPrincipal.sb.Panels[3].Text;
                 dm.rastrorotina.Value:='DOC. RECEBER';
                 dm.rastrooperacao.Value:='B';
                 dm.rastrohistorico.Value:='Vlr ref '+cbtipo.Text;
                 dm.rastrovalor.Value:=totalgeral;
                 dm.rastroobs.Value:=medtfinal.Text;
                 dm.rastro.Post;
                 dm.rastro.Close;

                 //Financeiro
                 dm.financeiro.Close;
                 dm.financeiro.SQL.Clear;
                 dm.financeiro.SQL.Add('select * from financeiro');
                 dm.Financeiro.SQL.Add('where data = '+chr(39)+
                 copy(DateToStr(date),7,4)+'/'+copy(DateToStr(date),4,2)+'/'+
                 copy(DateToStr(date),1,2)+chr(39));
                 dm.Financeiro.open;
                 dm.Financeiro.insert;
                 dm.Financeiroconta.Value:=D_conta;
                 dm.Financeirodata.Value:=StrToDate(FrmDepositoCH.medtfinal.text);
                 dm.Financeirodoc.Value:=copy(medtfinal.text,7,4)+
                 copy(medtfinal.text,4,2)+
                 copy(medtfinal.text,1,2);
                 dm.Financeirohistorico.Value:='Vlr ref '+cbtipo.Text;
                 dm.Financeiroplanoconta.Value:=D_planoconta;
                 dm.Financeirotipo.value:='C';
                 dm.Financeirocredito.Value:=totalgeral;
                 dm.Financeiro.Post;
                 dm.financeiro.Close;
                 application.MessageBox('Baixa Efetuada com Sucesso','Atenção',mb_Ok+MB_ICONINFORMATION);
               end
               else
                 application.MessageBox('Não Existem Título(s) com este Vencimento','Atenção',mb_Ok+mb_iconerror);
            close;
           end;
      end;
end;

procedure TFrmDepositoCH.FormShow(Sender: TObject);
begin
      dm.formapagto.Close;
      dm.formapagto.SQL.Clear;
      dm.formapagto.SQL.Add('select * from formapagto');
      dm.formapagto.Open;
      cbtipo.Items.Clear;
      while not dm.formapagto.Eof do
            begin
              cbtipo.Items.Add(dm.formapagtocodigo.Value+' - '+
              dm.formapagtodescricao.Value);
              dm.formapagto.Next;
            end;
end;

procedure TFrmDepositoCH.cbtipoExit(Sender: TObject);
begin
        if cbtipo.Text<>'' then
           begin
             dm.formapagto.Open;
             if not dm.formapagto.Locate('codigo',copy(cbtipo.Text,1,2),[]) then
                begin
                  application.MessageBox('Tipo de Documento Inválido','Atenção',mb_ok+mb_iconinformation);
                  cbtipo.SetFocus;
                end;
           end;
end;

end.
