unit uCadPredio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadPadrao,uCadCondominios, Vcl.StdCtrls, Vcl.Buttons,uControleFluxo,uConBlocos,
  Vcl.ExtCtrls;

type
  TfrCadPredioSyndico = class(TfrCadpadraoSyndico)
    Bevel1: TBevel;
    lbCodigo: TLabel;
    Bevel2: TBevel;
    edCodCond: TEdit;
    Panel2: TPanel;
    lbTipo: TLabel;
    cbTipo: TComboBox;
    Label1: TLabel;
    edCodigo: TEdit;
    Label2: TLabel;
    edBLoco: TEdit;
    Panel1: TPanel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure btConsultaClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure edCodigoExit(Sender: TObject);
    procedure edCodCondExit(Sender: TObject);
    procedure cbTipoExit(Sender: TObject);
    procedure btProximoClick(Sender: TObject);
    procedure btAnteriorClick(Sender: TObject);
    procedure edCodCondKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    FControle : TBlocoControler;
    procedure pSetaComponentes;
    procedure pLimpaCampos;
  public
  end;

var
  frCadPredioSyndico: TfrCadPredioSyndico;

implementation

{$R *.dfm}

procedure TfrCadPredioSyndico.btAnteriorClick(Sender: TObject);
begin
  inherited;
    if (strtoint(edCodigo.Text)=1) then
      begin
        MessageDlg('Não possui mais registros anteriores ',mtError,mbOKCancel,1)
      end
      else
      begin
        edCodigo.Text:=inttostr(FControle.pRegistroAnterior(trim(edCodigo.Text)));
        FControle.fStatusRegistro(strtoint(edCodigo.Text));
      end;
end;

procedure TfrCadPredioSyndico.btConsultaClick(Sender: TObject);
begin
  inherited;
  TfrConBloco.Create(self).Show;
end;

procedure TfrCadPredioSyndico.btExcluirClick(Sender: TObject);
begin
  inherited;
  FControle.pExcluirRegistro(edCodigo.Text);
end;

procedure TfrCadPredioSyndico.btLimparClick(Sender: TObject);
begin
  inherited;
  pLimpaCampos;
end;

procedure TfrCadPredioSyndico.btProximoClick(Sender: TObject);
begin
  inherited;
  edCodigo.Text:=inttostr(FControle.pProximoRegistro(trim(edCodigo.Text)));
  FControle.fStatusRegistro(strtoint(edCodigo.Text));
end;

procedure TfrCadPredioSyndico.cbTipoExit(Sender: TObject);
begin
  inherited;
  FControle.pInsereRegistro;
end;

procedure TfrCadPredioSyndico.edCodCondExit(Sender: TObject);
begin
  inherited;
  FControle.pExisteCondominio(trim(edCodCond.Text));
end;

procedure TfrCadPredioSyndico.edCodCondKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f4 then
     TfrCadCondominio.Create(self).Show;

end;

procedure TfrCadPredioSyndico.edCodigoExit(Sender: TObject);
begin
  inherited;
   FControle.fStatusRegistro(strtoint(trim(edCodigo.Text)));
end;

procedure TfrCadPredioSyndico.FormCreate(Sender: TObject);
begin
  inherited;
   btRegistroAntigo.Hide;
  FControle:=TBlocoControler.Create;
  pSetaComponentes;
  edCodigo.Text := '1';
  FControle.fStatusRegistro(1);

end;

procedure TfrCadPredioSyndico.pLimpaCampos;
begin
  edCodCond.Text       := EmptyStr;
  edCodigo.Text        := EmptyStr;
  edBLoco.Text         := EmptyStr;
  cbTipo.ItemIndex     := 0;
  edCodIGO.SetFocus;
  FControle.fStatusRegistro(1000);
end;

procedure TfrCadPredioSyndico.pSetaComponentes;
begin

  FControle.edCodigo                   := edCodigo;
  FControle.edNomeBloco                := edBLoco;
  FControle.edCodigoCondominio         := edCodCond;
  FControle.cbtipo                     := cbTipo;
  FControle.sbStatus                   := btStatus;
  FControle.SbNovoregistro              :=btNovoRegistro;
  FControle.SbRegistroAntigo            :=btRegistroAntigo;
  FControle.pnConsulta                  :=Panel2;
  FControle.pnConsultaBloco             :=Panel1;

end;

procedure TfrCadPredioSyndico.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  FControle.pInsereRegistro;
end;

end.
