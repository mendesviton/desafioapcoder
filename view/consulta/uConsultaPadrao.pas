unit uConsultaPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Data.FMTBcd, Data.SqlExpr;

type
  TfrConPadraoSyndico = class(TForm)
    Panel1: TPanel;
    Bevel3: TBevel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    btAnterior: TSpeedButton;
    btExcluir: TSpeedButton;
    btLimpar: TSpeedButton;
    btProximo: TSpeedButton;
    DBGrid1: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frConPadraoSyndico: TfrConPadraoSyndico;

implementation

{$R *.dfm}

end.
