unit uCadCondominios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadPadrao, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Menus, Vcl.ExtDlgs, Vcl.StdCtrls,pngimage,uUtil,uControleFluxo;

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
    Image1: TImage;
    Label5: TLabel;
    Label6: TLabel;
    edTotal: TEdit;
    edData: TEdit;
    Label11: TLabel;
    edCod: TEdit;
    Bevel2: TBevel;
    Bevel4: TBevel;
    Panel2: TPanel;
    CheckBox1: TCheckBox;
    cbFeriado: TCheckBox;
    procedure Inseririmagem1Click(Sender: TObject);
    procedure Limparimagem1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    FControle : TCondominioControler;
    procedure pSetaComponentes;

  public
    { Public declarations }
  end;

var
  frCadCondominio: TfrCadCondominio;

implementation

{$R *.dfm}

procedure TfrCadCondominio.FormCreate(Sender: TObject);
begin
  inherited;
  FControle:=TCondominioControler.Create;
  pSetaComponentes;                         //Vitor - Seta os componentes dessa tela para dentro da classe controler

end;

procedure TfrCadCondominio.Inseririmagem1Click(Sender: TObject);
var
wPng    :TPngImage;
wBmp    :TBitmap;
begin
  inherited;
  if OpenPictureDialog1.Execute = true then
     begin
        wPng := TPngImage.Create;
        wPng.LoadFromFile(OpenPictureDialog1.FileName);
        wBmp := TUtil.PngToBmp(wPng);
        wBmp.Width  := image1.Width;
        wBmp.Height := image1.Height;
        Image1.Picture.Bitmap:= wBmp;
     end;


end;

procedure TfrCadCondominio.Limparimagem1Click(Sender: TObject);
begin
  inherited;
  image1.Picture:= nil;
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



end;

procedure TfrCadCondominio.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  FControle.pInsereRegistro;
end;

end.
