{
   Vitor Daniel - 12/01/2022 - Criação  do form  de cadastro de unidades
   tabela dos registro gravados TB_SYN_UNIDADE.
}
unit uCadUnidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadPadrao, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.StdCtrls,uControleFluxo,uConUnidades,uConCondominios,uCadCondominios,uCadPredio,uConBlocos;

type
  TfrCadUnidades = class(TfrCadpadraoSyndico)
    lbCodigo: TLabel;
    Bevel1: TBevel;
    edCodCond: TEdit;
    Panel2: TPanel;
    Label1: TLabel;
    edBLoco: TEdit;
    Panel1: TPanel;
    Label2: TLabel;
    edCodigo: TEdit;
    Panel3: TPanel;
    lbEmail: TLabel;
    lbCnpj: TLabel;
    edNome: TEdit;
    edCnpj: TEdit;
    edEmail: TEdit;
    lbNumero: TLabel;
    mmObs: TMemo;
    Label3: TLabel;
    Label4: TLabel;
    gpEndereco: TGroupBox;
    lbEndereco: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    edNumero: TEdit;
    edComplemento: TEdit;
    edCidade: TEdit;
    edBairro: TEdit;
    cbUf: TComboBox;
    edCPF: TEdit;
    FControle:TUnidadeControler;
    procedure FormCreate(Sender: TObject);
    procedure mmObsKeyPress(Sender: TObject; var Key: Char);
    procedure pSetaComponentes;
    procedure SpeedButton1Click(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure btConsultaClick(Sender: TObject);
    procedure cbUfKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edBairroExit(Sender: TObject);
    procedure edCodCondExit(Sender: TObject);
    procedure edCodigoExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edCodCondKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edBLocoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edBLocoExit(Sender: TObject);
  private
    procedure pLimpaCampos;
  public
    procedure pCarregaBloco;
  end;

var
  frCadUnidades: TfrCadUnidades;

implementation

{$R *.dfm}

procedure TfrCadUnidades.mmObsKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   // vitor daniel - 16/01/2022 - Controla o campo de observaçoes.
   if  length(mmObs.Text)<150 then
      begin
          Label4.Caption := inttostr(length(mmObs.Text)+1) + '/150';
      end
      else
      begin
        showmessage ('A observação ultrapassou o tamanho! ');
        mmObs.Text := mmObs.Text;
      end;

end;

procedure TfrCadUnidades.btConsultaClick(Sender: TObject);
begin
  inherited;
  TfrConUnidades.Create(self).Show; // Vitor Daniel - 16/01/2022 - chama a tela de consulta.
end;

procedure TfrCadUnidades.btLimparClick(Sender: TObject);
begin
  inherited;
  pLimpaCampos;
end;

procedure TfrCadUnidades.cbUfKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  cbuf.Text := 'SC'
end;

procedure TfrCadUnidades.edBairroExit(Sender: TObject);
begin
  inherited;
  FControle.pInsereBanco;
end;

procedure TfrCadUnidades.edBLocoExit(Sender: TObject);
begin
  inherited;
  //Vitor - 23/01/2022 - sql para saber se existe bloco
  FControle.pExisteBloco(trim(edBLoco.Text));
end;

procedure TfrCadUnidades.edBLocoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if key = VK_F9 then
     TfrConBloco.Create(self).Show;
   if key = vk_f4 then
      TfrCadPredioSyndico.Create(self).Show;
end;

procedure TfrCadUnidades.edCodCondExit(Sender: TObject);
begin
  inherited;
  //Vitor - 23/01/2022 - sql para saber se existe condominio
  FControle.pExisteCondominio(trim(edCodCond.Text));
end;

procedure TfrCadUnidades.edCodCondKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = VK_F9 then
     TfrConsultaCondominio.Create(self).Show;
   if key = vk_f4 then
      TfrCadCondominio.Create(self).Show;

end;

procedure TfrCadUnidades.edCodigoExit(Sender: TObject);
begin
  inherited;
  //Vitor - 23/01/2022 - verificar se existe a unidade
  FControle.fStatusRegistro(strtoint(trim(edCodigo.Text)))
end;

procedure TfrCadUnidades.FormCreate(Sender: TObject);
begin
  inherited;
   mmObs.Text:= EmptyStr;
   FControle:=TUnidadeControler.Create;
   pSetaComponentes;
   edCodigo.Text := '1';
   FControle.fStatusRegistro(1);
end;

procedure TfrCadUnidades.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = VK_ESCAPE then
     self.Close;
end;

procedure TfrCadUnidades.pCarregaBloco;
begin
  FControle.pExisteBloco(trim(edBLoco.Text));
end;

procedure TfrCadUnidades.pLimpaCampos;
begin
    edCodigo.Text            :=  EmptyStr;
    edCodCond.Text           :=  EmptyStr;
    edBLoco.Text             :=  EmptyStr;
    edNome.Text              :=  EmptyStr;
    mmObs.Text               :=  EmptyStr;
    edCPF.Text               :=  EmptyStr;
    edEmail.Text             :=  EmptyStr;
    edCNPJ.Text              :=  EmptyStr;
    cbUf.ItemIndex           :=  0 ;
    edComplemento.Text       :=  EmptyStr;
    edCidade.Text            :=  EmptyStr;
    edBairro.text            :=  EmptyStr;
    edNumero.Text            :=  EmptyStr;
    panel1.Caption                   :=  EmptyStr;
    panel2.Caption                   :=  EmptyStr;
    panel3.Caption                   :=  EmptyStr;
    edCodigo.SetFocus;
end;

procedure TfrCadUnidades.pSetaComponentes;
begin

    FControle.edCodigo            :=  edCodigo;
    FControle.edCodCond           :=  edCodCond;
    FControle.edCodBloco          :=  edBLoco;
    FControle.edNome              :=  edNome;
    FControle.memobs              :=  mmObs;
    FControle.edCPF               :=  edCPF;
    FControle.edEmail             :=  edEmail;
    FControle.edCNPJ              :=  edCnpj;
    FControle.cbUF                :=  cbUf;
    FControle.edCOmplemente       :=  edComplemento;
    FControle.edCidade            :=  edCidade;
    FControle.edBairo             :=  edBairro;
    FControle.edNumero            :=  edNumero;
    FControle.panelcond           :=  Panel2;
    FControle.panelbloco          :=  panel1;
    FControle.panelunidade        :=  Panel3;
    FControle.sbStatus            :=  btStatus;
    FControle.SbNovoregistro      :=  btNovoRegistro;
    FControle.SbRegistroAntigo    :=  btRegistroAntigo;




end;



procedure TfrCadUnidades.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  FControle.pInsereBanco;
end;

end.
