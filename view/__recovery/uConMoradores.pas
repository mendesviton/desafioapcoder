unit uConMoradores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsultaPadrao, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls,uControleSQL, Datasnap.Provider,
  Datasnap.DBClient;

type
  TfrConMoradores = class(TfrConPadraoSyndico)
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    procedure FormCreate(Sender: TObject);
  private
    TSQL : TExecSQL;
  public
    { Public declarations }
  end;

var
  frConMoradores: TfrConMoradores;

implementation

{$R *.dfm}

procedure TfrConMoradores.FormCreate(Sender: TObject);
begin
  inherited;
  TSQL:=TExecSQL.Create;

  DataSetProvider1.DataSet:=TSQL.CommandText;
  ClientDataSet1.Close;
  ClientDataSet1.commandtext:='select * from TB_SYN_MORADORES';
  ClientDataSet1.open;

end;

end.
