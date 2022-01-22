unit uLancaDespesa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadPadrao, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Mask, Vcl.StdCtrls,uControleFluxo,uCentralPagamentos;

type
  TfrLancaDespesa = class(TfrCadpadraoSyndico)
    Bevel1: TBevel;
    lbCodigo: TLabel;
    lbNome: TLabel;
    edCodigo: TEdit;
    edUnidade: TEdit;
    Panel3: TPanel;
    cbTipoLocal: TComboBox;
    edNumero: TEdit;
    MaskEdit1: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    Tipo: TLabel;
    Label4: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MaskEdit1Exit(Sender: TObject);
    procedure btConsultaClick(Sender: TObject);
  private
    FControle:TLancamento;
  public
    procedure pSetaComponente;
  end;

var
  frLancaDespesa: TfrLancaDespesa;

implementation

{$R *.dfm}

procedure TfrLancaDespesa.btConsultaClick(Sender: TObject);
begin
  inherited;
  TfrCentralDespesas.Create(self).Show;
end;

procedure TfrLancaDespesa.FormCreate(Sender: TObject);
begin
  inherited;
  FControle:=TLancamento.Create;
  pSetaComponente;
end;

procedure TfrLancaDespesa.MaskEdit1Exit(Sender: TObject);
begin
  inherited;
  FControle.pInsereRegistro;
end;

procedure TfrLancaDespesa.pSetaComponente;
begin
  // Vitor - 19/01/2022 seta os componentes para manipular dentro da classe controler
  FControle.edCodigo     := edCodigo;
  FControle.edCodUnidade := edUnidade;
  FControle.edValor      := edNumero;
  FControle.edVencimento := TEdit(MaskEdit1);
  FControle.cbTipo       := cbTipoLocal;
end;

procedure TfrLancaDespesa.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  FControle.pInsereRegistro;
end;

end.
