unit uCadUnidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadPadrao, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TfrCadUnidades = class(TfrCadpadraoSyndico)
    lbCodigo: TLabel;
    Bevel1: TBevel;
    edCod: TEdit;
    Panel2: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Panel1: TPanel;
    Label2: TLabel;
    Edit2: TEdit;
    Panel3: TPanel;
    lbEmail: TLabel;
    lbCnpj: TLabel;
    edNome: TEdit;
    edCnpj: TEdit;
    edEmail: TEdit;
    lbNumero: TLabel;
    dfgd: TMemo;
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
    edNomeLocal: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure dfgdKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frCadUnidades: TfrCadUnidades;

implementation

{$R *.dfm}

procedure TfrCadUnidades.dfgdKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   if  length(dfgd.Text)<150 then
      begin
          Label4.Caption := inttostr(length(dfgd.Text)+1) + '/150';
      end
      else
      begin
        showmessage ('A observação ultrapassou o tamanho! ');
        dfgd.Text := dfgd.Text;
      end;

end;

procedure TfrCadUnidades.FormCreate(Sender: TObject);
begin
  inherited;
   dfgd.Text:= EmptyStr;
end;

end.
