unit uCadPredio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls;

type
  TfrCadPredioSyndico = class(TfrCadpadraoSyndico)
    Bevel1: TBevel;
    lbCodigo: TLabel;
    Bevel2: TBevel;
    Edit11: TEdit;
    Panel2: TPanel;
    lbTipo: TLabel;
    cbTipo: TComboBox;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frCadPredioSyndico: TfrCadPredioSyndico;

implementation

{$R *.dfm}

end.
