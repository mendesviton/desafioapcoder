unit uCadUnidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadPadrao, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.StdCtrls,uControleFluxo,uConUnidades;

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
  private
    procedure pLimpaCampos;
  public
    { Public declarations }
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

procedure TfrCadUnidades.FormCreate(Sender: TObject);
begin
  inherited;
   mmObs.Text:= EmptyStr;
   FControle:=TUnidadeControler.Create;
   pSetaComponentes;
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

end;

procedure TfrCadUnidades.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  FControle.pInsereBanco;
end;

end.
