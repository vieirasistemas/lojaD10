unit UnitFrmPlanoContas_Graf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, Grids, DBGrids, QRCtrls, TeEngine, Series, TeeProcs, Chart,
  DbChart, QRTEE, QuickRpt, ExtCtrls;

type
  TFrmPlanoContas_Graf = class(TForm)
    GroupBox1: TGroupBox;
    cbmes: TComboBox;
    GroupBox2: TGroupBox;
    rb1: TRadioButton;
    rb2: TRadioButton;
    bt1: TBitBtn;
    bt2: TBitBtn;
    qratualizar: TZQuery;
    QuickRep1: TQuickRep;
    TitleBand2: TQRBand;
    QRChart1: TQRChart;
    QRDBChart1: TQRDBChart;
    Series1: TPieSeries;
    qrtitulo: TQRLabel;
    GroupBox3: TGroupBox;
    rbsintetico: TRadioButton;
    rbanalitico: TRadioButton;
    qrperc: TQRLabel;
    procedure FormShow(Sender: TObject);
    procedure bt1Click(Sender: TObject);
    procedure cbmesExit(Sender: TObject);
    procedure bt2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPlanoContas_Graf: TFrmPlanoContas_Graf;
  vlrentrada,vlrsaida:double;
  mes:string;

implementation

uses UnitFrmProcFinanceiro, Unitdm;

{$R *.dfm}

procedure TFrmPlanoContas_Graf.FormShow(Sender: TObject);
begin
  application.MessageBox('Para realizar este procedimento, realize'+#13+'o processamento financeiro','Atenção',mb_ok+mb_iconinformation);
  try
    Application.CreateForm(TFrmProcFinanceiro, FrmProcFinanceiro);
    FrmProcFinanceiro.showmodal;
  finally
    FrmProcFinanceiro.Release;
    FrmProcFinanceiro:=nil;
  end;
end;

procedure TFrmPlanoContas_Graf.bt1Click(Sender: TObject);
begin
  if cbmes.Text<>'' then
     begin
       qratualizar.Close;
       qratualizar.SQL.Clear;
       qratualizar.SQL.Add('delete from graf_planocontas');
       qratualizar.ExecSQL;

       dm.graf_planocontas.open;
       dm.graf_planocontas.SQL.Clear;
       dm.graf_planocontas.SQL.Add('select * from graf_planocontas');
       dm.graf_planocontas.Open;

       dm.planocontas.open;
       dm.PlanoContas.SQL.Clear;
       dm.PlanoContas.SQL.Add('select * from planocontas');
       dm.PlanoContas.SQL.Add('order by codigo');
       dm.PlanoContas.Open;
       while not dm.PlanoContas.Eof do
             begin
               if length(dm.PlanoContascodigo.Value)=5 then
                  begin
//                    showmessage('PARE');
                    if not dm.graf_planocontas.Locate('descricao',dm.PlanoContasdescricao.Value,[]) then
                       begin
                         dm.graf_planocontas.Insert;
                         dm.graf_planocontasdescricao.Value:=dm.PlanoContasdescricao.Value;
                         if dm.PlanoContas.fieldbyname('cred'+mes).AsFloat>0 then
                            dm.graf_planocontasentrada.Value:=dm.PlanoContas.fieldbyname('cred'+mes).AsFloat
                         else if dm.PlanoContas.fieldbyname('deb'+mes).AsFloat>0 then
                            dm.graf_planocontassaida.Value:=dm.PlanoContas.fieldbyname('deb'+mes).AsFloat;
                         dm.graf_planocontas.Post;
                         dm.graf_planocontas.Close;
                         dm.graf_planocontas.Open;
                       end
                       else
                       begin
                         vlrentrada:=0;vlrsaida:=0;
                         if dm.PlanoContas.fieldbyname('cred'+mes).AsFloat>0 then
                            vlrentrada:=dm.graf_planocontasentrada.Value+dm.PlanoContas.fieldbyname('cred'+mes).AsFloat
                         else if dm.PlanoContas.fieldbyname('deb'+mes).AsFloat>0 then
                            vlrsaida:=dm.graf_planocontassaida.Value+dm.PlanoContas.fieldbyname('deb'+mes).AsFloat;

                         if (vlrentrada>0) or (vlrsaida>0) then
                            begin
                              qratualizar.close;
                              qratualizar.sql.clear;
                              qratualizar.sql.add('update graf_planocontas set');
                              if vlrentrada>0 then
                                 qratualizar.sql.add('entrada = :vlrentrada');
                              if vlrsaida>0 then
                                 qratualizar.sql.add('saida = :vlrsaida');
                              qratualizar.sql.add('where (descricao = '+chr(39)+dm.PlanoContasdescricao.Value+chr(39)+')');
                              if vlrentrada>0 then
                                 qratualizar.Params[0].Value := vlrentrada;
                              if vlrsaida>0 then
                                 qratualizar.Params[0].Value := vlrsaida;
                              qratualizar.ExecSQL;
                            end;
                       end;
                  end;
               dm.PlanoContas.next;
             end;
       dm.graf_planocontas.open;
       dm.graf_planocontas.SQL.Clear;
       dm.graf_planocontas.SQL.Add('select * from graf_planocontas');
       dm.graf_planocontas.Open;
       series1.Clear;
       vlrentrada:=0;vlrsaida:=0;
       while not dm.graf_planocontas.eof do
             begin
               if rbanalitico.Checked then
                  begin
                   if (dm.graf_planocontasentrada.Value>0) or (dm.graf_planocontassaida.Value>0) then
                      begin
                       if dm.graf_planocontasentrada.Value>0 then
                          series1.Add(dm.graf_planocontasentrada.Value, dm.graf_planocontasdescricao.Value, clTeeColor )
                       else
                          series1.Add(dm.graf_planocontassaida.Value, dm.graf_planocontasdescricao.Value, clTeeColor ) ;
                      end;
                  end
                  else
                  begin
                    if dm.graf_planocontasentrada.Value>0 then
                       vlrentrada:=vlrentrada+dm.graf_planocontasentrada.Value
                    else if dm.graf_planocontassaida.Value>0 then
                       vlrsaida:=vlrsaida+dm.graf_planocontassaida.Value;
                  end;
               dm.graf_planocontas.next;
             end;
       if rbsintetico.Checked then
          begin
            qrperc.Caption:='Total Receitas: '+formatfloat('#,##0.00',vlrentrada);
            vlrentrada:=vlrentrada-vlrsaida;
            series1.Add(vlrentrada,'Receitas', clblue );
            series1.Add(vlrsaida,'Despesas', clred );
          end
          else
            qrperc.Caption:='';

       QRChart1.Repaint;
       qrtitulo.Caption:='Receitas x Despesas - Mês: '+cbmes.Text;
       QuickRep1.Preview;
     end;
end;

procedure TFrmPlanoContas_Graf.cbmesExit(Sender: TObject);
begin
  if cbmes.Text='JANEIRO' then
     mes:='1'
  else if cbmes.Text='FEVEREIRO' then
     mes:='2'
  else if cbmes.Text='MARÇO' then
     mes:='3'
  else if cbmes.Text='ABRIL' then
     mes:='4'
  else if cbmes.Text='MAIO' then
     mes:='5'
  else if cbmes.Text='JUNHO' then
     mes:='6'
  else if cbmes.Text='JULHO' then
     mes:='7'
  else if cbmes.Text='AGOSTO' then
     mes:='8'
  else if cbmes.Text='SETEMBRO' then
     mes:='9'
  else if cbmes.Text='OUTUBRO' then
     mes:='10'
  else if cbmes.Text='NOVEMBRO' then
     mes:='11'
  else if cbmes.Text='DEZEMBRO' then
     mes:='12';
end;

procedure TFrmPlanoContas_Graf.bt2Click(Sender: TObject);
begin
  close;
end;

end.
