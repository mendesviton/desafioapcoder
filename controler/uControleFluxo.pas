unit uControleFluxo;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
    Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadPadrao, Vcl.Buttons,Vcl.Menus, Vcl.ExtDlgs, Vcl.StdCtrls,uControleSQL;

  type
    TCondominioControler = class


    private
    FedCodigo: Tedit;
    FedBairro: Tedit;
    FedEmail: Tedit;
    FedDiaVencimento: Tedit;
    FcbTipolocal: TComboBox;
    FedComplemento: Tedit;
    FedNomeLocal: Tedit;
    FedNome: Tedit;
    FedCidade: Tedit;
    FcbUF: TcomboBox;
    FedTotalCondonimio: Tedit;
    FedCNPJ: Tedit;
    FedNumero: TEdit;
    FedDiaVenc: TEdit;
    FSQLControl : TExecSQL;

    procedure SetedCodigo(const Value: Tedit);
    procedure SetcbTipolocal(const Value: TComboBox);
    procedure SetcbUF(const Value: TCombobox);
    procedure SetedBairro(const Value: Tedit);
    procedure SetedCidade(const Value: Tedit);
    procedure SetedCNPJ(const Value: Tedit);
    procedure SetedComplemento(const Value: Tedit);
    procedure SetedDiaVencimento(const Value: Tedit);
    procedure SetedEmail(const Value: Tedit);
    procedure SetedNome(const Value: Tedit);
    procedure SetedNomeLocal(const Value: Tedit);
    procedure SetedTotalCondonimio(const Value: Tedit);
    procedure SetedNumero(const Value: TEdit);
    procedure SetedDiaVenc(const Value: TEdit);




    public

      property edCodigo               :Tedit read FedCodigo write SetedCodigo;
      property edNome                 :Tedit read FedNome write SetedNome;
      property edEmail                :Tedit read FedEmail write SetedEmail;
      property edCNPJ                 :Tedit read FedCNPJ write SetedCNPJ;
      property edComplemento          :Tedit read FedComplemento write SetedComplemento;
      property cbTipolocal            :TComboBox read FcbTipolocal write SetcbTipolocal;
      property edNomeLocal            :Tedit read FedNomeLocal write SetedNomeLocal;
      property cbUF                   :TComboBox read FcbUF write SetcbUF;
      property edCidade               :Tedit read FedCidade write SetedCidade;
      property edBairro               :Tedit read FedBairro write SetedBairro;
      property edTotalCondonimio      :Tedit read FedTotalCondonimio write SetedTotalCondonimio;
      property edDiaVencimento        :Tedit  read FedDiaVencimento write SetedDiaVencimento;
      property edNumero               :TEdit read FedNumero write SetedNumero;
      property edDiaVenc              :TEdit read FedDiaVenc write SetedDiaVenc;
      procedure pInsereRegistro;



    end;
implementation

{ TCondominioControler }

procedure TCondominioControler.pInsereRegistro;
var
wSQL:String;
begin
 FSQLControl:= TExecSQL.Create;
 wSQL:=EmptyStr;

 wSQL := ' update or insert into TB_SYN_CONDOMINIO(';
 wSQL := wSQL + ' BDCODIGO,  BDNOME,  BDEMAIL,  BDTIPOLOCAL,  BDNUMERO,  BDCOMPLEMENTO, ' ;
 wSQL := wSQL + ' BDUF,  BDCIDADE,  BDBAIRRO,  BDTOTALCOND,  BDDIASUTEIS,  BDANTECIPAR, ' ;
 wSQL := wSQL + ' BDIMAGEM,  BDDIAVENC,  BDCNPJ)' ;
 wSQL := wSQL + ' values (3,'''+trim(edNome.Text)+''','''+trim(edEmail.Text)+''','''+trim(cbTipolocal.Text)+''','+trim(edNumero.Text);
 wSQL := wSQL + ','''+trim(edComplemento.Text)+''','''+trim(cbUF.Text)+''','''+trim(edCidade.Text)+''','''+trim(edBairro.text)+''','''+trim(edTotalCondonimio.Text);
 wSQL := wSQL + ''',1,1,NULL,'+trim(edDiaVencimento.Text)+','''+trim(edCNPJ.Text)+''')';
 wSQL := wSQL + ' matching (bdcodigo);  ';

 FSQLControl.SQL(wSQL);


end;

procedure TCondominioControler.SetcbTipolocal(const Value: TComboBox);
begin
  FcbTipolocal := Value;
end;

procedure TCondominioControler.SetcbUF(const Value: TCombobox);
begin
  FcbUF := Value;
end;

procedure TCondominioControler.SetedBairro(const Value: Tedit);
begin
  FedBairro := Value;
end;

procedure TCondominioControler.SetedCidade(const Value: Tedit);
begin
  FedCidade := Value;
end;

procedure TCondominioControler.SetedCNPJ(const Value: Tedit);
begin
  FedCNPJ := Value;
end;

procedure TCondominioControler.SetedCodigo(const Value: Tedit);
begin
  FedCodigo := Value;
end;

procedure TCondominioControler.SetedComplemento(const Value: Tedit);
begin
  FedComplemento := Value;
end;

procedure TCondominioControler.SetedDiaVenc(const Value: TEdit);
begin
  FedDiaVenc := Value;
end;

procedure TCondominioControler.SetedDiaVencimento(const Value: Tedit);
begin
  FedDiaVencimento := Value;
end;

procedure TCondominioControler.SetedEmail(const Value: Tedit);
begin
  FedEmail := Value;
end;

procedure TCondominioControler.SetedNome(const Value: Tedit);
begin
  FedNome := Value;
end;

procedure TCondominioControler.SetedNomeLocal(const Value: Tedit);
begin
  FedNomeLocal := Value;
end;

procedure TCondominioControler.SetedNumero(const Value: TEdit);
begin
  FedNumero := Value;
end;

procedure TCondominioControler.SetedTotalCondonimio(const Value: Tedit);
begin
  FedTotalCondonimio := Value;
end;

end.
