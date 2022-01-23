unit uCentralPagamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsultaPadrao, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls, Datasnap.Provider,uControleSQL, Datasnap.DBClient,
  Vcl.StdCtrls;

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
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
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
    procedure FormCreate(Sender: TObject);
    procedure DBGrid3CellClick(Column: TColumn);
    procedure SpeedButton15Click(Sender: TObject);
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
  wValor := DBGrid3.Fields[2].Value;
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

procedure TfrCentralDespesas.SpeedButton15Click(Sender: TObject);
var
wSQL:string;
begin
  inherited;
  if not Assigned(TSQL) then
         TSQL:=TExecSQL.Create;

   wSQL := 'update TB_SYN_CENTRALPAGAMENTOS ';
   wSQL := wSQL + ' set bdstatus = ''Pago'' ,';
   wSQL := wSQL + ' bdpagamento = ''01/12/2022''';
   wSQL := wSQL + ' where bdcodespesa = '+ quotedstr(trim(Label2.Caption));
   TSQL.SQL(wSQL);
   DataSetProvider1.DataSet:=TSQL.CommandText;
   ClientDataSet1.Close;
   ClientDataSet1.commandtext:=pSelectall;
   ClientDataSet1.open;


end;

end.
