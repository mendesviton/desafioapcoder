{
   Vitor Daniel - 12/01/2022 - Cria??o  do form  de cadastro de condom?nio
   tabela dos registro gravados TB_SYN_CONDOMINIO.
}

unit uCadCondominios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadPadrao, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Menus, Vcl.ExtDlgs, Vcl.StdCtrls,pngimage,uUtil,uControleFluxo,uConCondominios,
  Vcl.Mask,uControleValida;

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
    edTotal: TEdit;
    Label11: TLabel;
    edCod: TEdit;
    Bevel2: TBevel;
    Bevel4: TBevel;
    pnConsulta: TPanel;
    edData: TEdit;
    Label6: TLabel;
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
    procedure edNomeExit(Sender: TObject);
    procedure edCodKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbUfKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbTipoLocalKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edNomeEnter(Sender: TObject);

  private
    FConfirmaValida:boolean;
    FValida   : TValidaCampo;
    FControle : TCondominioControler;
    procedure pSetaComponentes;
    procedure pLimpaCampos;
    procedure pCarregaInforma?oes(prCodigo:integer);


  public
    procedure pCarregoudaConsulta;
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
        MessageDlg('N?o possui mais registros anteriores ',mtError,mbOKCancel,1)
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

procedure TfrCadCondominio.cbTipoLocalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  cbTipoLocal.Text := 'Rua'
end;

procedure TfrCadCondominio.cbUfKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  cbUf.Text := 'SC'
end;

procedure TfrCadCondominio.edCodExit(Sender: TObject);
begin
  inherited;
  // Implementar rotina que controla a pesquisa
  FConfirmaValida:= FValida.pValidaCod(edCod);

end;

procedure TfrCadCondominio.edCodKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if key = vk_f9 then
      TfrConsultaCondominio.Create(self).Show;

   if key = vk_f4 then
      MessageDlg('Voc? ja se encontra na tela de cadastro de condom?nio',mtInformation,([mbOK]),1)

end;

procedure TfrCadCondominio.edDataExit(Sender: TObject);
begin
  inherited;
  if MessageDlg('Dia de vencimento  '+Trim(edData.Text) +' esse ser? o dia padr?o de vencimento das despesas, confirma o dia digitado ?',mtInformation,[mbYes,mbNo],1) = mrYes then
     FControle.pInsereRegistro
     else
     edData.SetFocus;
end;

procedure TfrCadCondominio.edNomeEnter(Sender: TObject);
begin
  inherited;
  if FConfirmaValida then
     FControle.fStatusRegistro(strtoint(trim(edCod.Text)))
     else
     FConfirmaValida := true;
end;

procedure TfrCadCondominio.edNomeExit(Sender: TObject);
begin
  inherited;

   FValida.pValidaNome(edNome)

end;

procedure TfrCadCondominio.FormCreate(Sender: TObject);
begin
  inherited;
  FConfirmaValida:=true;
  FValida:=TValidaCampo.Create;
  btRegistroAntigo.Hide;
  FControle:=TCondominioControler.Create;
  pSetaComponentes;                       //Vitor -12/01/2022- Seta os componentes dessa tela para dentro da classe controler
  edCod.Text := '1';
  FControle.fStatusRegistro(1);
end;

procedure TfrCadCondominio.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = VK_ESCAPE then
     self.Close;
end;

procedure TfrCadCondominio.Inseririmagem1Click(Sender: TObject);
var
wPng    :TPngImage;
wBmp    :TBitmap;
begin
  inherited;
  // Vitor - 13/01/2022 - seta a imagem e converte para bmp
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

procedure TfrCadCondominio.pCarregaInforma?oes(prCodigo: integer);
begin

end;

procedure TfrCadCondominio.pCarregoudaConsulta;
begin
 FControle.fStatusRegistro(strtoint(trim(edCod.Text)))
end;

procedure TfrCadCondominio.pLimpaCampos;
var
wContador:integer;
begin
  // Vitor daniel - 17/01/2022 - rotina limpa os componentes da tela e  seta para o o editcodigo
  edNome.Text              :=  EmptyStr;
  edCod.text               :=  EmptyStr;
  edNome.Text              :=  EmptyStr;
  edEmail.Text             :=  EmptyStr;
  edCNPJ.Text              :=  EmptyStr;
  edComplemento.Text       :=  EmptyStr;
  cbTipolocal.ItemIndex    := 0;
  edNomeLocal.Text         :=  EmptyStr;
  edData.Text              :=  EmptyStr;
  cbUF.ItemIndex           := 0;
  edCidade.Text            :=  EmptyStr;
  edbairro.Text            :=  EmptyStr;
  edTotal.text             :=  EmptyStr;
  edNumero.Text            :=  EmptyStr;
  pnConsulta.Caption       :=  EmptyStr;
  edCod.SetFocus;
  FControle.fStatusRegistro(1000);

end;


procedure TfrCadCondominio.pSetaComponentes;
begin

    // Vitor - daniel - 17/01/2022 - rotina seta os componentes para a classe controler, deixando o acesso aos eventos e propriedades dos mesmo.

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
