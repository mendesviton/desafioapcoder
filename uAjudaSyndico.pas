unit uAjudaSyndico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.jpeg;

type
  TfrAjuda = class(TForm)
    Panel1: TPanel;
    lbCnpj: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Image1: TImage;
    Bevel2: TBevel;
    Bevel1: TBevel;
    Bevel4: TBevel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frAjuda: TfrAjuda;

implementation

{$R *.dfm}

end.
