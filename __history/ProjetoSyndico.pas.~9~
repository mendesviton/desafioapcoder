unit ProjetoSyndico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus,uCadPadrao,uCadCondominios,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.Buttons, Vcl.ToolWin, Vcl.ComCtrls,
  System.ImageList, Vcl.ImgList;

type
  TfrSyndicoPrincipal = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Bevel2: TBevel;
    pnFundo: TPanel;
    SpeedButton1: TSpeedButton;
    procedure pADRAO1Click(Sender: TObject);
    procedure pnFundoResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frSyndicoPrincipal: TfrSyndicoPrincipal;

implementation

{$R *.dfm}

procedure TfrSyndicoPrincipal.FormCreate(Sender: TObject);
begin
 Bevel2.Width := Screen.Width;
end;

procedure TfrSyndicoPrincipal.pADRAO1Click(Sender: TObject);
begin
  TfrCadCondominio.Create(self).Show;

end;

procedure TfrSyndicoPrincipal.pnFundoResize(Sender: TObject);
begin
 Bevel2.Width := Screen.Width;
end;

end.
