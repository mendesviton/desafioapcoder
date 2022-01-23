unit uCadMoradores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadPadrao,pngimage, Vcl.StdCtrls, Vcl.Buttons,uControleFluxo,uConMoradores,
  Vcl.ExtCtrls, Vcl.Mask,uControleValida, Vcl.Menus, Vcl.ExtDlgs,uUtil,uCadUnidade,uConUnidades;

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
    Label1    : TLabel;
    Label2    : TLabel;
    edEmail: TEdit;
    Label11   : TLabel;
    Bevel1    : TBevel;
    Bevel4    : TBevel;
    Panel1    : TPanel;
    Image1    : TImage;
    Panel3    : TPanel;
    ckResponsável: TCheckBox;
    MaskEdit1: TMaskEdit;
    PopupMenu1: TPopupMenu;
    Inserirfoto1: TMenuItem;
    Retirarfoto1: TMenuItem;
    OpenPictureDialog1: TOpenPictureDialog;
    edTelefone: TMaskEdit;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure btConsultaClick(Sender: TObject);
    procedure edCodigoExit(Sender: TObject);
    procedure edNomeExit(Sender: TObject);
    procedure Inserirfoto1Click(Sender: TObject);
    procedure edUnidadeExit(Sender: TObject);
    procedure edUnidadeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ckResponsávelExit(Sender: TObject);
    procedure btProximoClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btAnteriorClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure Retirarfoto1Click(Sender: TObject);
  private
    FValida   :TValidaCampo;
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

procedure TfrMoradoresSyndicos.btAnteriorClick(Sender: TObject);
begin
  inherited;
    if (strtoint(edCodigo.Text)=1) then
      begin
        MessageDlg('Não possui moradores anteriores ',mtError,mbOKCancel,1)
      end
      else
      begin
        edCodigo.Text:=inttostr(FControle.pRegistroAnterior(trim(edCodigo.Text)));
        FControle.fStatusRegistro(strtoint(edCodigo.Text));
      end;
end;

procedure TfrMoradoresSyndicos.btConsultaClick(Sender: TObject);
begin
  inherited;
    TfrConMoradores.Create(self).Show;
end;

procedure TfrMoradoresSyndicos.btExcluirClick(Sender: TObject);
begin
  inherited;
   //vitor - 15/01/2022 - executar sql delete na classe controller.
   FControle.pExcluirRegistro(edCodigo.Text);
end;

procedure TfrMoradoresSyndicos.btLimparClick(Sender: TObject);
begin
  inherited;
  pLimpaCampos;
end;

procedure TfrMoradoresSyndicos.btProximoClick(Sender: TObject);
begin
  inherited;
  edCodigo.Text:=inttostr(FControle.pProximoRegistro(trim(edCodigo.Text)));
  FControle.fStatusRegistro(strtoint(edCodigo.Text));
 
end;

procedure TfrMoradoresSyndicos.ckResponsávelExit(Sender: TObject);
begin
  inherited;
  FControle.pInsereRegistro;        //vitor - 15/01/2022 - executa o sql da classe controler.
end;

procedure TfrMoradoresSyndicos.edCodigoExit(Sender: TObject);
begin
  inherited;
  FControle.fStatusRegistro(strtoint(trim(edCodigo.Text)))
end;

procedure TfrMoradoresSyndicos.edCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if key = vk_f9 then
      TfrConMoradores.Create(self).Show;

      if key = vk_f4 then
      MessageDlg('Você ja se encontra na tela de cadastro de moradores',mtInformation,([mbOK]),1)
end;

procedure TfrMoradoresSyndicos.edNomeExit(Sender: TObject);
begin
  inherited;
   FValida.pValidaNome(edNome)
end;

procedure TfrMoradoresSyndicos.edUnidadeExit(Sender: TObject);
begin
  inherited;
    FControle.pExisteCondominio(trim(edUnidade.Text));
end;

procedure TfrMoradoresSyndicos.edUnidadeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = VK_F4 then
      TfrCadUnidades.Create(self).Show;
  if key = VK_F9 then
      TfrConUnidades.Create(self).Show;

end;

procedure TfrMoradoresSyndicos.FormCreate(Sender: TObject);
begin
  inherited;
  //vitor - 16/01/2022 - método que seta os componentes para a classe controler
  FValida:= TValidaCampo.Create;
  FControle:=TMoradorControler.Create;
  pSetComponenteTela;
  edCodigo.Text := '1';
  FControle.fStatusRegistro(1);
end;

procedure TfrMoradoresSyndicos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = VK_ESCAPE then
     self.Close;
end;

procedure TfrMoradoresSyndicos.Inserirfoto1Click(Sender: TObject);
var
wPng    :TPngImage;
wBmp    :TBitmap;
begin
  inherited;
  // Vitor - 13/01/2022 - seta a imagem e converte para bmp
  if OpenPictureDialog1.Execute = true then
     begin
        Image1.Picture:=nil;
        wPng := TPngImage.Create;
        wPng.LoadFromFile(OpenPictureDialog1.FileName);
        wBmp := TUtil.PngToBmp(wPng);
        wBmp.Width  := Image1.Width;
        wBmp.Height := Image1.Height;
        Image1.Picture.Bitmap:= wBmp;
        FControle.FCaminho := OpenPictureDialog1.FileName;

     end;


end;

procedure TfrMoradoresSyndicos.pLimpaCampos;
begin
  edCodigo.Text           :=  EmptyStr;
  edUnidade.Text          :=  EmptyStr;
  edNome.Text             :=  EmptyStr;
  MaskEdit1.Text       :=  EmptyStr;
  edTelefone.text         :=  EmptyStr;
  edEmail.Text            :=  EmptyStr;
  ckResponsável.Checked   :=  False;
  Panel2.Caption          := EmptyStr;
  Panel3.Caption          := EmptyStr;
  edCodigo.SetFocus;
end;

procedure TfrMoradoresSyndicos.pSetComponenteTela;
begin

   FControle.edCodigo          := edcodigo;
   FControle.edcodunidade      := edUnidade;
   FControle.ednome            := edNome;
   FControle.ednascimento      := TEdit(MaskEdit1);
   FControle.edtelefone        := TEdit(edTelefone);
   FControle.edemail           := edEmail;
   FControle.checkpropietario  := ckResponsável;
   FControle.sbStatus          := btStatus;
   FControle.SbNovoregistro    :=btNovoRegistro;
   FControle.SbRegistroAntigo  :=btRegistroAntigo;
   FControle.pnConsulta        :=panel2;
   FControle.pnConsultaUnidade :=Panel3;
   FControle.timage            :=Image1;


end;

procedure TfrMoradoresSyndicos.Retirarfoto1Click(Sender: TObject);
begin
  inherited;
  Image1.Picture:= nil;
end;

procedure TfrMoradoresSyndicos.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  FControle.pInsereRegistro;        //vitor - 15/01/2022 - executa o sql da classe controler.
end;

end.
