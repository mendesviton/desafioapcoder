unit uConUnidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsultaPadrao, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls, Datasnap.Provider,uControleSQL, Datasnap.DBClient;

type
  TfrConUnidades = class(TfrConPadraoSyndico)
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    TSQL:TExecSQL;
    ClientDataSet1BDCODIGO: TIntegerField;
    ClientDataSet1BDCODBLOCO: TIntegerField;
    ClientDataSet1BDNUMERO: TIntegerField;
    ClientDataSet1BDCNPJ: TStringField;
    ClientDataSet1BDOBS: TStringField;
    ClientDataSet1BDNOMEPROPRIETARIO: TStringField;
    ClientDataSet1BDCPFPROPRIETARIO: TStringField;
    ClientDataSet1BDEMAIL: TStringField;
    ClientDataSet1BDUF: TStringField;
    ClientDataSet1BDCIDADE: TStringField;
    ClientDataSet1BDCOMPLEMENTO: TStringField;
    ClientDataSet1BDBAIRRO: TStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frConUnidades: TfrConUnidades;

implementation

{$R *.dfm}

procedure TfrConUnidades.FormCreate(Sender: TObject);
var
wSQL:String;
begin
  inherited;

  TSQL:=TExecSQL.Create;

  DataSetProvider1.DataSet:=TSQL.CommandText;
  ClientDataSet1.Close;
  wSQL:= 'Select *  from TB_SYN_UNIDADES';
  ClientDataSet1.commandtext:=wSQL;
  ClientDataSet1.open;
end;

end.
