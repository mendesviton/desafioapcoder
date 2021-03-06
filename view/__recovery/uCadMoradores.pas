unit uCadMoradores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadPadrao, Vcl.StdCtrls, Vcl.Buttons,uControleFluxo,
  Vcl.ExtCtrls;

type
  TfrMoradoresSyndicos = class(TfrCadpadraoSyndico)
    lbCodigo  : TLabel;
    Bevel2    : TBevel;
    edCodigo: TEdit;
    Panel2    : TPanel;
    lbNome    : TLabel;
    lbEmail   : TLabel;
    lbCnpj    : TLabel;
    edUnidade: TEdit;
    edNome: TEdit;
    edNascimento: TEdit;
    Label1    : TLabel;
    Label2    : TLabel;
    edTelefone: TEdit;
    edEmail: TEdit;
    Label11   : TLabel;
    Bevel1    : TBevel;
    Bevel4    : TBevel;
    Panel1    : TPanel;
    Image1    : TImage;
    Panel3    : TPanel;
    ckResponsável: TCheckBox;
    FControle : TMoradorControler;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    procedure pSetComponenteTela;
  public
    { Public declarations }
  end;

var
  frMoradoresSyndicos: TfrMoradoresSyndicos;

implementation

{$R *.dfm}

procedure TfrMoradoresSyndicos.FormCreate(Sender: TObject);
begin
  inherited;
  FControle:=TMoradorControler.Create;
  pSetComponenteTela;

end;

procedure TfrMoradoresSyndicos.pSetComponenteTela;
begin

   FControle.edCodigo        := edcodigo;
   FControle.edcodunidade    := edUnidade;
   FControle.ednome          := edNome;
   FControle.ednascimento    := edNascimento;
   FControle.edtelefone      := edTelefone;
   FControle.edemail         := edEmail;
   FControle.checkpropietario:= ckResponsável;


end;

procedure TfrMoradoresSyndicos.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  FControle.pInsereRegistro;
end;

end.
