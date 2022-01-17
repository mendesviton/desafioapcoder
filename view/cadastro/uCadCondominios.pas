unit uCadCondominios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadPadrao, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Menus, Vcl.ExtDlgs, Vcl.StdCtrls,pngimage,uUtil,uControleFluxo,uConCondominios,
  Vcl.Mask;

type
  TfrCadCondominio = class(TfrCadpadraoSyndico)
    lbNome: TLabel;
    lbNumero: TLabel;
    lbEmail: TLabel;
    lbCnpj: TLabel;
    lbCodigo: TLabel;
    gpEndereco: TGroupBox;
    gbParametros: TGroupBox;
    Bevel1: TBevel;
    lbEndereco: TLabel;
    edNome: TEdit;
    edCnpj: TEdit;
    edEmail: TEdit;
    edNumero: TEdit;
    edComplemento: TEdit;
    Label1: TLabel;
    edCidade: TEdit;
    Label2: TLabel;
    edBairro: TEdit;
    Label3: TLabel;
    cbUf: TComboBox;
    cbTipoLocal: TComboBox;
    Label4: TLabel;
    edNomeLocal: TEdit;
    PopupMenu1: TPopupMenu;
    Panel1: TPanel;
    Inseririmagem1: TMenuItem;
    Limparimagem1: TMenuItem;
    OpenPictureDialog1: TOpenPictureDialog;
    tilocalimagem: TImage;
    Label5: TLabel;
    Label6: TLabel;
    edTotal: TEdit;
    edData: TEdit;
    Label11: TLabel;
    edCod: TEdit;
    Bevel2: TBevel;
    Bevel4: TBevel;
    pnConsulta: TPanel;
    procedure Inseririmagem1Click(Sender: TObject);
    procedure Limparimagem1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure btConsultaClick(Sender: TObject);
    procedure edCodExit(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure edDataExit(Sender: TObject);
    procedure btProximoClick(Sender: TObject);
    procedure btAnteriorClick(Sender: TObject);

  private
    FControle : TCondominioControler;
    procedure pSetaComponentes;
    procedure pLimpaCampos;
    procedure pCarregaInforma�oes(prCodigo:integer);

  public

  end;

var
  frCadCondominio: TfrCadCondominio;

implementation

{$R *.dfm}

procedure TfrCadCondominio.btAnteriorClick(Sender: TObject);
begin
  inherited;
  if (strtoint(edCod.Text)=1) then
      begin
        MessageDlg('N�o possui mais registros anteriores ',mtError,mbOKCancel,1)
      end
      else
      begin
        edCod.Text:=inttostr(FControle.pRegistroAnterior(trim(edCod.Text)));
        FControle.fStatusRegistro(strtoint(edCod.Text));
      end;
end;

procedure TfrCadCondominio.btConsultaClick(Sender: TObject);
begin
  inherited;
  TfrConsultaCondominio.Create(self).Show;
end;

procedure TfrCadCondominio.btExcluirClick(Sender: TObject);
begin
  inherited;
   FControle.pExcluirRegistro(trim(edCod.Text));
end;

procedure TfrCadCondominio.btLimparClick(Sender: TObject);
begin
  inherited;
  pLimpaCampos;
end;

procedure TfrCadCondominio.btProximoClick(Sender: TObject);
begin
  inherited;
  edCod.Text:=inttostr(FControle.pProximoRegistro(trim(edCod.Text)));
  FControle.fStatusRegistro(strtoint(edCod.Text));
end;

procedure TfrCadCondominio.edCodExit(Sender: TObject);
begin
  inherited;
  // implementar rotina que controla a pesquisa
  FControle.fStatusRegistro(strtoint(trim(edCod.Text)))
end;

procedure TfrCadCondominio.edDataExit(Sender: TObject);
begin
  inherited;
  FControle.pInsereRegistro;
end;

procedure TfrCadCondominio.FormCreate(Sender: TObject);
begin
  inherited;

  btRegistroAntigo.Hide;
  FControle:=TCondominioControler.Create;
  pSetaComponentes;                       //Vitor -12/01/2022- Seta os componentes dessa tela para dentro da classe controler
  edCod.Text := '1';
  FControle.fStatusRegistro(1);
end;

procedure TfrCadCondominio.Inseririmagem1Click(Sender: TObject);
var
wPng    :TPngImage;
wBmp    :TBitmap;
begin
  inherited;
  if OpenPictureDialog1.Execute = true then
     begin
        tilocalimagem.Picture:=nil;
        wPng := TPngImage.Create;
        wPng.LoadFromFile(OpenPictureDialog1.FileName);
        wBmp := TUtil.PngToBmp(wPng);
        wBmp.Width  := tilocalimagem.Width;
        wBmp.Height := tilocalimagem.Height;
        tilocalimagem.Picture.Bitmap:= wBmp;
        FControle.FCaminho := OpenPictureDialog1.FileName;

     end;


end;

procedure TfrCadCondominio.Limparimagem1Click(Sender: TObject);
begin
  inherited;
  tilocalimagem.Picture:= nil;
end;

procedure TfrCadCondominio.pCarregaInforma�oes(prCodigo: integer);
begin

end;

procedure TfrCadCondominio.pLimpaCampos;
var
wContador:integer;
begin
  edNome.Text              :=  EmptyStr;
  edCod.text               :=  EmptyStr;
  edNome.Text              :=  EmptyStr;
  edEmail.Text             :=  EmptyStr;
  edCNPJ.Text              :=  EmptyStr;
  edComplemento.Text       :=  EmptyStr;
  cbTipolocal.ItemIndex    := 0;
  edNomeLocal.Text         :=  EmptyStr;
  cbUF.ItemIndex           := 0;
  edCidade.Text            :=  EmptyStr;
  edbairro.Text            :=  EmptyStr;
  edTotal.text             :=  EmptyStr;
  edNumero.Text            :=  EmptyStr;
  edData.text              :=  EmptyStr;
  pnConsulta.Caption       :=  EmptyStr;
  edCod.SetFocus;
  FControle.fStatusRegistro(1000);

end;


procedure TfrCadCondominio.pSetaComponentes;
begin

    FControle.edCodigo            :=  edCod;
    FControle.edNome              :=  edNome;
    FControle.edEmail             :=  edEmail;
    FControle.edCNPJ              :=  edCnpj;
    FControle.edComplemento       :=  edComplemento;
    FControle.cbTipolocal         :=  cbTipoLocal;
    FControle.edNomeLocal         :=  edNomeLocal;
    FControle.cbUF                :=  cbUf;
    FControle.edCidade            :=  edCidade;
    FControle.edbairro            :=  edBairro;
    FControle.edTotalCondonimio   :=  edTotal;
    FControle.edNumero            :=  edNumero;
    FControle.edDiaVencimento     :=  edData;
    FControle.pnConsulta          := pnConsulta;
    FControle.sbStatus            := btStatus;
    FControle.SbNovoregistro      := btNovoRegistro;
    FControle.SbRegistroAntigo    := btRegistroAntigo;
    FControle.LocalImage          := tilocalimagem;



end;

procedure TfrCadCondominio.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  FControle.pInsereRegistro;
end;

end.
