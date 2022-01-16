unit uCadMoradores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls;

type
  TfrMoradoresSyndicos = class(TfrCadpadraoSyndico)
    lbCodigo: TLabel;
    Bevel2: TBevel;
    Edit11: TEdit;
    Panel2: TPanel;
    lbNome: TLabel;
    lbEmail: TLabel;
    lbCnpj: TLabel;
    edNome: TEdit;
    edCnpj: TEdit;
    edEmail: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Label11: TLabel;
    Bevel1: TBevel;
    Bevel4: TBevel;
    Panel1: TPanel;
    Image1: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frMoradoresSyndicos: TfrMoradoresSyndicos;

implementation

{$R *.dfm}

end.
