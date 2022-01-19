unit ProjetoSyndico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus,uCadPadrao,uCadCondominios,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.Buttons, Vcl.ToolWin, Vcl.ComCtrls,
  System.ImageList, Vcl.ImgList,uCadPredio,uCadMoradores,System.IniFiles,uConCondominios;

type
  TfrSyndicoPrincipal = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Bevel2: TBevel;
    pnFundo: TPanel;
    SpeedButton1: TSpeedButton;
    Panel1: TPanel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Panel2: TPanel;
    Panel3: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    Panel4: TPanel;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    procedure pnFundoResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private
    procedure pFecharPanel(prBarra:integer);
  public
    { Public declarations }
  end;

var
  frSyndicoPrincipal: TfrSyndicoPrincipal;

implementation

{$R *.dfm}

procedure TfrSyndicoPrincipal.FormCreate(Sender: TObject);
var
ArquivoINI    : String;
Configuration : TIniFile;
begin
 ArquivoINI := ExtractFilePath(Application.ExeName) + 'config.ini';
 Configuration := TIniFile.Create(ArquivoINI);
 Configuration.WriteString('Dados','Servidor',ExtractFilePath(Application.ExeName) + 'base\SYNBD.FDB');

 Bevel2.Width  := Screen.Width;
 Panel2.Hide;
 Panel3.Hide;
 Panel4.Hide;

end;

procedure TfrSyndicoPrincipal.Image1Click(Sender: TObject);
begin
  pFecharPanel(4);
end;

procedure TfrSyndicoPrincipal.Panel1Click(Sender: TObject);
begin
    pFecharPanel(4);
end;

procedure TfrSyndicoPrincipal.pFecharPanel(prBarra:integer);
begin
 if prBarra = 1 then
    panel2.hide;
 if prBarra = 2 then
    panel3.hide;
 if prBarra = 3 then
    panel4.hide;
 if prBarra = 4 then
    begin
      panel2.hide;
      panel3.hide;
      panel4.hide;
    end;


end;

procedure TfrSyndicoPrincipal.pnFundoResize(Sender: TObject);
begin
 Bevel2.Width := Screen.Width;
end;

procedure TfrSyndicoPrincipal.SpeedButton15Click(Sender: TObject);
begin
  TfrCadCondominio.Create(self).ShowModal;
end;

procedure TfrSyndicoPrincipal.SpeedButton1Click(Sender: TObject);
begin
  panel2.Show;
   pFecharPanel(2);
   pFecharPanel(3);
end;

procedure TfrSyndicoPrincipal.SpeedButton2Click(Sender: TObject);
begin
  Panel3.Show;
  pFecharPanel(1);
  pFecharPanel(3);
end;

procedure TfrSyndicoPrincipal.SpeedButton3Click(Sender: TObject);
begin
  panel4.Show;
  pFecharPanel(1);
  pFecharPanel(2);

end;

procedure TfrSyndicoPrincipal.SpeedButton4Click(Sender: TObject);
begin
  TfrCadPredioSyndico.Create(self).ShowModal;
end;

procedure TfrSyndicoPrincipal.SpeedButton5Click(Sender: TObject);
begin
  TfrMoradoresSyndicos.Create(self).ShowModal;
end;

procedure TfrSyndicoPrincipal.SpeedButton6Click(Sender: TObject);
begin
 TfrConsultaCondominio.Create(self).Show;
end;

end.
