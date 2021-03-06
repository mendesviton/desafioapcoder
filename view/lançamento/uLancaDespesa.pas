unit uLancaDespesa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadPadrao, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Mask, Vcl.StdCtrls,uControleFluxo,uCentralPagamentos,uConUnidades,uCadUnidade;

type
  TfrLancaDespesa = class(TfrCadpadraoSyndico)
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
    Bevel2: TBevel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MaskEdit1Exit(Sender: TObject);
    procedure btConsultaClick(Sender: TObject);
    procedure cbTipoLocalExit(Sender: TObject);
    procedure cbTipoLocalKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edUnidadeExit(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure edCodigoExit(Sender: TObject);
    procedure edUnidadeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaskEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    FControle:TLancamento;
    procedure pLimpaCampos;
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

procedure TfrLancaDespesa.btLimparClick(Sender: TObject);
begin
  inherited;
  pLimpaCampos;
end;

procedure TfrLancaDespesa.cbTipoLocalExit(Sender: TObject);
begin
  inherited;
  //implementar  auto preenchimento quando escolhido condominio
  FControle.pValorCondominio;
end;

procedure TfrLancaDespesa.cbTipoLocalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  cbTipoLocal.Text:= 'Condomínio'
end;

procedure TfrLancaDespesa.edCodigoExit(Sender: TObject);
begin
  inherited;
  //rotina que busca a despesa
  FControle.fStatusRegistro(STRTOINT(TRIM(edCodigo.Text)))
end;

procedure TfrLancaDespesa.edUnidadeExit(Sender: TObject);
begin
  inherited;
  //implementar busca de unidade por código
  FControle.pExisteUnidade(Trim(edUnidade.Text));
end;

procedure TfrLancaDespesa.edUnidadeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = VK_F9 then
     TfrConUnidades.Create(self).Show;
  if key = VK_F4 then
     TfrCadUnidades.Create(self).Show;

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

procedure TfrLancaDespesa.MaskEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = VK_F2 then
     MaskEdit1.Text := datetostr(date);
end;

procedure TfrLancaDespesa.pLimpaCampos;
begin
  edCodigo.Text           :=  EmptyStr;
  edUnidade.Text          :=  EmptyStr;
  MaskEdit1.Text          :=  EmptyStr;
  cbTipoLocal.ItemIndex   :=0;
  Panel3.Caption          := EmptyStr;
  edUnidade.SetFocus;
end;

procedure TfrLancaDespesa.pSetaComponente;
begin
  // Vitor - 19/01/2022 seta os componentes para manipular dentro da classe controler
  FControle.edCodigo     := edCodigo;
  FControle.edCodUnidade := edUnidade;
  FControle.edValor      := edNumero;
  FControle.edVencimento := TEdit(MaskEdit1);
  FControle.cbTipo       := cbTipoLocal;
  FControle.panelunidade := Panel3;
  FControle.SbNovoregistro :=btNovoRegistro;
  FControle.SbRegistroAntigo := btRegistroAntigo;
  FControle.sbStatus        := btStatus;
  end;


procedure TfrLancaDespesa.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  FControle.pInsereRegistro;
end;

end.
