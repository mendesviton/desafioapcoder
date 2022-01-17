unit uCadMoradores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadPadrao, Vcl.StdCtrls, Vcl.Buttons,uControleFluxo,uConMoradores,
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
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure btConsultaClick(Sender: TObject);
  private
    FControle :TMoradorControler;
    procedure pSetComponenteTela;
    procedure pLimpaCampos;

  public
    { Public declarations }
  end;

var
  frMoradoresSyndicos: TfrMoradoresSyndicos;

implementation

{$R *.dfm}

procedure TfrMoradoresSyndicos.btConsultaClick(Sender: TObject);
begin
  inherited;
    TfrConMoradores.Create(self).Show;
end;

procedure TfrMoradoresSyndicos.btLimparClick(Sender: TObject);
begin
  inherited;
  pLimpaCampos;
end;

procedure TfrMoradoresSyndicos.FormCreate(Sender: TObject);
begin
  inherited;
  FControle:=TMoradorControler.Create;
  pSetComponenteTela;          //vitor - 16/01/2022 - método que seta os componentes para a classe controler

end;

procedure TfrMoradoresSyndicos.pLimpaCampos;
begin
  edCodigo.Text           :=  EmptyStr;
  edUnidade.Text          :=  EmptyStr;
  edNome.Text             :=  EmptyStr;
  edNascimento.Text       :=  EmptyStr;
  edTelefone.text         :=  EmptyStr;
  edEmail.Text            :=  EmptyStr;
  ckResponsável.Checked   :=  False;
  edCodigo.SetFocus;
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

  FControle.pInsereRegistro;        //vitor - 15/01/2022 - executa o sql da classe controler.
end;

end.
