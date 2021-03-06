unit uCadPredio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadPadrao, Vcl.StdCtrls, Vcl.Buttons,uControleFluxo,
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
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FControle : TBlocoControler;
    procedure pSetaComponentes;
  public
    { Public declarations }
  end;

var
  frCadPredioSyndico: TfrCadPredioSyndico;

implementation

{$R *.dfm}

procedure TfrCadPredioSyndico.FormCreate(Sender: TObject);
begin
  inherited;
  FControle:=TBlocoControler.Create;
  pSetaComponentes;

end;

procedure TfrCadPredioSyndico.pSetaComponentes;
begin

          FControle.edCodigo                   := edCodigo;
          FControle.edNomeBloco                := edBLoco;
          FControle.edCodigoCondominio         := edCodCond;
          FControle.cbtipo                     := cbTipo;

end;

procedure TfrCadPredioSyndico.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  FControle.pInsereRegistro;
end;

end.
