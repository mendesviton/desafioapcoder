unit uConBlocos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsultaPadrao, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls, Datasnap.DBClient, Datasnap.Provider,uConexaoBanco,uControleSQL;

type
  TfrConBloco = class(TfrConPadraoSyndico)
    Panel2: TPanel;
    Bevel1: TBevel;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    DBGrid2: TDBGrid;
    TSQL:TExecSQL;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1BDCODIGO: TIntegerField;
    ClientDataSet1BDCODCOND: TIntegerField;
    ClientDataSet1BDTIPO: TStringField;
    ClientDataSet1BDNOMEBLOCO: TStringField;
    ClientDataSet1BDCONDOMINIO: TStringField;
    ClientDataSet1bdvalor: TFMTBCDField;
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frConBloco: TfrConBloco;

implementation

{$R *.dfm}

procedure TfrConBloco.FormCreate(Sender: TObject);
var
wSQL:String;
begin
  inherited;
  TSQL:=TExecSQL.Create;

  DataSetProvider1.DataSet:=TSQL.CommandText;
  ClientDataSet1.Close;
  wSQL:= 'Select blo.*,(cond.bdnome)as bdcondominio, (cond.bdtotalcond) as bdvalor from TB_SYN_BLOCO blo ';
  wSQL:= wSQL + 'join TB_SYN_CONDOMINIO  cond on (cond.bdcodigo = blo.bdcodcond)';

  ClientDataSet1.commandtext:=wSQL;
  ClientDataSet1.open;
end;

end.
