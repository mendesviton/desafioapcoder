unit uCentralPagamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsultaPadrao, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls, Datasnap.Provider,uControleSQL, Datasnap.DBClient,uUtil,
  Vcl.StdCtrls, IBX.IBCustomDataSet;

type
  TfrCentralDespesas = class(TfrConPadraoSyndico)
    Panel2: TPanel;
    Bevel1: TBevel;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    DBGrid2: TDBGrid;
    Panel3: TPanel;
    Bevel2: TBevel;
    DBGrid3: TDBGrid;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    SpeedButton15: TSpeedButton;
    Bevel4: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    ClientDataSet1BDCODESPESA: TIntegerField;
    ClientDataSet1BDTIPO: TStringField;
    ClientDataSet1BDCODUNID: TIntegerField;
    ClientDataSet1BDNOMEBLOCO: TStringField;
    ClientDataSet1BDVENCIMENTO: TDateField;
    ClientDataSet1BDSTATUS: TStringField;
    ClientDataSet1BDPAGAMENTO: TStringField;
    ClientDataSet1BDVALOR: TFMTBCDField;
    lbCodigo: TLabel;
    edCodigo: TEdit;
    Edit1: TEdit;
    Label3: TLabel;
    SpeedButton13: TSpeedButton;
    SpeedButton9: TSpeedButton;
    ckVencida: TRadioButton;
    ckAberto: TRadioButton;
    ckPago: TRadioButton;
    procedure FormCreate(Sender: TObject);
    procedure DBGrid3CellClick(Column: TColumn);
    procedure SpeedButton15Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
  private
    TSQL:TExecSQL;
    function pSelectall:String;
  public
    { Public declarations }
  end;

var
  frCentralDespesas: TfrCentralDespesas;

implementation

{$R *.dfm}

procedure TfrCentralDespesas.DBGrid3CellClick(Column: TColumn);
var
wValor:String;
begin
  inherited;
  label2.Caption := DBGrid3.Fields[0].Value;
  wValor := DBGrid3.Fields[7].Value;
  label5.Caption := DBGrid3.Fields[3].Value;
  label6.Caption := DBGrid3.Fields[4].Value;
  label7.Caption := datetostr(date);
  label4.Caption := 'R$ '+ wValor;

  wValor := EmptyStr;
end;

procedure TfrCentralDespesas.FormCreate(Sender: TObject);
var
wSQL:String;
begin
  inherited;
  if not Assigned(TSQL) then
  TSQL:=TExecSQL.Create;

  DataSetProvider1.DataSet:=TSQL.CommandText;
  ClientDataSet1.Close;
  ClientDataSet1.commandtext:=pSelectall;
  ClientDataSet1.open;




end;


procedure TfrCentralDespesas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  // fecha o form ao digitar esc
  if key = VK_ESCAPE then
     self.Close;
end;

function TfrCentralDespesas.pSelectall: String;
var
wSQL :string;
begin
wSQL := ' select cp.bdcodespesa,dp.bdtipo,dp.bdvalor,dp.bdcodunid,bl.bdnomebloco,dp.bdvencimento,  ';
  wSQL := wSQL +        '  CASE ';
  wSQL := wSQL +        '      WHEN cp.bdpagamento is null THEN ''Aguardando Pagamento''  ';
  wSQL := wSQL +        '      ELSE cp.bdpagamento  ';
  wSQL := wSQL +        '  END AS BDPAGAMENTO,cp.bdstatus ';
  wSQL := wSQL +        '  from tb_syn_centralpagamentos cp   ';
  wSQL := wSQL +        '  join tb_syn_despesas dp on(dp.bdcodigo = cp.bdcodespesa)  ';
  wSQL := wSQL +        '  join tb_syn_unidades und on(und.bdcodigo = dp.bdcodunid)  ' ;
  wSQL := wSQL +       '   join tb_syn_bloco bl on (bl.bdcodigo = und.bdcodbloco)  ';
  result :=wSQL;

end;

procedure TfrCentralDespesas.SpeedButton13Click(Sender: TObject);
begin
  inherited;
  Edit1.Text    := EmptyStr;
  edCodigo.Text := EmptyStr;
  ckVencida.Checked     := false;
  ckAberto.Checked      := false;
  ckPago.Checked        := false;
end;

procedure TfrCentralDespesas.SpeedButton15Click(Sender: TObject);
var
wSQL:string;
begin
  inherited;
  if not Assigned(TSQL) then
         TSQL:=TExecSQL.Create;

   wSQL := 'update TB_SYN_CENTRALPAGAMENTOS ';
   wSQL := wSQL + ' set bdstatus = ''Pago'' ,';
   wSQL := wSQL + ' bdpagamento = '+QuotedStr(TUtil.FConverteData(datetostr(date)));
   wSQL := wSQL + ' where bdcodespesa = '+ quotedstr(trim(Label2.Caption));
   TSQL.SQL(wSQL);
   DataSetProvider1.DataSet:=TSQL.CommandText;
   ClientDataSet1.Close;
   ClientDataSet1.commandtext:=pSelectall;
   ClientDataSet1.open;


end;

procedure TfrCentralDespesas.SpeedButton9Click(Sender: TObject);
var
fExisteAnd:boolean;
wSQL:String;
begin
  inherited;
   //filtro
 if (edCodigo.Text = EmptyStr) and (Edit1.Text = EmptyStr) and (ckVencida.Checked = false)and (ckAberto.Checked = false)and (ckPago.Checked = false) then
     MessageDlg('Nenhum filtro foi feito',mtWarning,[mbOK],1)
     else
     begin

          if not Assigned(TSQL) then
         TSQL:=TExecSQL.Create;
         fExisteAnd := false;
         wSQL:= 'select cp.bdcodespesa,dp.bdtipo,dp.bdvalor,dp.bdcodunid,bl.bdnomebloco,dp.bdvencimento,' ;
         wSQL:= wSQL + 'CASE     WHEN cp.bdpagamento is null THEN ''Aguardando Pagamento''  ELSE cp.bdpagamento  END AS BDPAGAMENTO,cp.bdstatus ' ;
         wSQL:= wSQL + ' from tb_syn_centralpagamentos cp' ;
         wSQL:= wSQL + ' join tb_syn_despesas dp on(dp.bdcodigo = cp.bdcodespesa)';
         wSQL:= wSQL + ' join tb_syn_unidades und on(und.bdcodigo = dp.bdcodunid) ';
         wSQL:= wSQL + ' join tb_syn_bloco bl on (bl.bdcodigo = und.bdcodbloco)';
         wSQL:= wSQL + ' where ' ;

         if edCodigo.Text <> EmptyStr then
            begin
              wSQL:= wSQL + 'cp.bdcodespesa = '+trim(edCodigo.Text);
              fExisteAnd:= true;
            end;
         if (fExisteAnd) and (Edit1.Text<> EmptyStr) then
            begin
             wSQL:= wSQL + ' and und.bdcodigo = '+trim(Edit1.Text);
            end
            else if not(fExisteAnd) and (Edit1.Text<> EmptyStr)  then
             begin
             wSQL:= wSQL + ' und.bdcodigo = '+trim(Edit1.Text);
             fExisteAnd:= true;
             end;
         if ckVencida.Checked and (fExisteAnd) then
            begin
            wSQL:= wSQL +   'and upper(cp.bdstatus) = upper('+QuotedStr('vencida')+')';
            end
             else if ckVencida.Checked and not(fExisteAnd) then
                  begin
                     wSQL:= wSQL +   '  upper(cp.bdstatus) = upper('+QuotedStr('vencida')+')';
                  end;




         if ckAberto.Checked and (fExisteAnd) then
            begin
            wSQL:= wSQL +  ' and upper(cp.bdstatus) = upper('+QuotedStr('em aberto')+')';
            end
             else if ckAberto.Checked and not(fExisteAnd) then
                  begin
                     wSQL:= wSQL +   '  upper(cp.bdstatus) = upper('+QuotedStr('em aberto')+')';
                  end;



         if ckPago.Checked and (fExisteAnd)  then
            begin
             wSQL:= wSQL +  ' and upper(cp.bdstatus) = upper('+QuotedStr('pago')+')';
            end
              else if ckPago.Checked and not(fExisteAnd) then
                  begin
                     wSQL:= wSQL +   '  upper(cp.bdstatus) = upper('+QuotedStr('pago')+')';
                  end;









         DataSetProvider1.DataSet:=TSQL.CommandText;
         ClientDataSet1.Close;
         ClientDataSet1.commandtext:=wSQL;
         ClientDataSet1.open;
     end;


end;

end.
