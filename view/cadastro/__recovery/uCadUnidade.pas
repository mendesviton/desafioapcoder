unit uCadUnidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadPadrao, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.StdCtrls,uControleFluxo;

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
  private
    { Private declarations }
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

procedure TfrCadUnidades.FormCreate(Sender: TObject);
begin
  inherited;
   mmObs.Text:= EmptyStr;
   FControle:=TUnidadeControler.Create;
   pSetaComponentes;
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