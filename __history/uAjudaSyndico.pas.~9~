unit uAjudaSyndico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.jpeg, Vcl.Buttons, Vcl.Menus;

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
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Fechar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frAjuda: TfrAjuda;

implementation

{$R *.dfm}

procedure TfrAjuda.Fechar1Click(Sender: TObject);
begin
  self.Close;
end;

procedure TfrAjuda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_ESCAPE then
     self.Close;
end;

procedure TfrAjuda.SpeedButton1Click(Sender: TObject);
begin
 self.Close;
end;

end.
