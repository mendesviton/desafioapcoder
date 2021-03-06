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
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1bdcodigo: TIntegerField;
    ClientDataSet1BDBAIRRO: TStringField;
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
    FConnection:TBDConnection;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1CellClick(Column: TColumn);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frConsultaCondominio: TfrConsultaCondominio;

implementation
uses
 uCadCondominios,uCadPredio;

{$R *.dfm}

procedure TfrConsultaCondominio.DBGrid1CellClick(Column: TColumn);
begin
  inherited;
   if Owner.ClassName = 'TfrCadCondominio' then
     begin
      TfrCadCondominio(Owner).edCod.Text := DBGrid1.Fields[0].Value;
      TfrCadCondominio(Owner).pCarregoudaConsulta;
      self.Close;
     end;
      if Owner.ClassName = 'TfrCadPredioSyndico' then
     begin
      TfrCadPredioSyndico(Owner).edCodCond.Text := DBGrid1.Fields[0].Value;
      TfrCadPredioSyndico(Owner).pCarregouCondConsulta;
      self.Close;
     end;
end;

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

procedure TfrConsultaCondominio.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    if key = VK_ESCAPE then
     self.Close;
end;

end.
