unit uConCondominios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsultaPadrao, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls, Data.FMTBcd, Data.SqlExpr,uControleSQL,uConexaoBanco,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Datasnap.DBClient, Datasnap.Provider;

type
  TfrConsultaCondominio = class(TfrConPadraoSyndico)
    TSQL:TExecSQL;
    DataSource1: TDataSource;
    FConnection    : TBDConnection;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1bdcodigo: TIntegerField;
    ClientDataSet1BDBAIRRO: TStringField;
    ClientDataSet1BDDIASUTEIS: TIntegerField;
    ClientDataSet1BDANTECIPAR: TIntegerField;
    ClientDataSet1BDTOTALCOND: TFMTBCDField;
    ClientDataSet1BDNOME: TStringField;
    ClientDataSet1BDCNPJ: TStringField;
    ClientDataSet1BDEMAIL: TStringField;
    ClientDataSet1BDTIPOLOCAL: TStringField;
    ClientDataSet1BDNOMELOCAL: TStringField;
    ClientDataSet1BDNUMERO: TIntegerField;
    ClientDataSet1BDCOMPLEMENTO: TStringField;
    ClientDataSet1BDUF: TStringField;
    ClientDataSet1BDCIDADE: TStringField;
    ClientDataSet1BDDIAVENC: TIntegerField;
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frConsultaCondominio: TfrConsultaCondominio;

implementation

{$R *.dfm}

procedure TfrConsultaCondominio.FormCreate(Sender: TObject);
begin
  inherited;
  FConnection  := TBDConnection.Create;
  TSQL:=TExecSQL.Create;

  DataSetProvider1.DataSet:=TSQL.CommandText;
  ClientDataSet1.Close;
  ClientDataSet1.commandtext:='select * from TB_SYN_CONDOMINIO';
  ClientDataSet1.open;


end;

end.
