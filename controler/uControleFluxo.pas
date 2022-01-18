unit uControleFluxo;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
    Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage,uUtil, uCadPadrao, Vcl.Buttons,Vcl.Menus, Vcl.ExtCtrls, Vcl.ExtDlgs, Vcl.StdCtrls,uControleSQL;

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
    FedPanelCodigo: TEdit;
    FpnConsulta: TPanel;
    FSbNovoregistro: TSpeedButton;
    FsbStatus: TSpeedButton;
    FSbRegistroAntigo: TSpeedButton;
    FUtil:TUtil;
    FFimagem: TFileStream;
    FFCaminho: String;
    FLocalImage: timage;

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
    procedure SetedPanelCodigo(const Value: TEdit);
    procedure SetpnConsulta(const Value: TPanel);
    procedure SetSbNovoregistro(const Value: TSpeedButton);
    procedure SetSbRegistroAntigo(const Value: TSpeedButton);
    procedure SetsbStatus(const Value: TSpeedButton);
    procedure SetFimagem(const Value: TFileStream);
    procedure SetFCaminho(const Value: String);
    procedure SetLocalImage(const Value: timage);





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
      // property edPanelCodigo          :TEdit read FedPanelCodigo write SetedPanelCodigo;
      property pnConsulta  :TPanel read FpnConsulta write SetpnConsulta;
      property Fimagem:TFileStream read FFimagem write SetFimagem;
      property FCaminho :String read FFCaminho write SetFCaminho;
      procedure pInsereRegistro;
      procedure pExcluirRegistro(prCodigo:String);
      function  fStatusRegistro(prCodigo:integer):boolean;
      property sbStatus:TSpeedButton read FsbStatus write SetsbStatus;
      property SbNovoregistro:TSpeedButton read FSbNovoregistro write SetSbNovoregistro;
      property SbRegistroAntigo:TSpeedButton read FSbRegistroAntigo write SetSbRegistroAntigo;
      property LocalImage:timage read FLocalImage write SetLocalImage;
      function pProximoRegistro(prCodigo:String):integer;
      function pRegistroAnterior(prCodigo:String):integer;






    end;
type
      TBlocoControler = class
              FSQLControl:TExecSQL ;
          private
              FedCodigoCondom�nio: Tedit;
              Fcbtipo: TComboBox;
              FedCodigo: TEdit;
              FedNomeBloco: Tedit;
              FSbNovoregistro: TSpeedButton;
              FsbStatus: TSpeedButton;
              FSbRegistroAntigo: TSpeedButton;
              FpnConsulta: TPanel;
              FpnConsultaBloco: TPanel;
              procedure SetedCodigoCondominio(const Value: Tedit);
              procedure Setcbtipo(const Value: TComboBox);
              procedure SetedCodigo(const Value: TEdit);
              procedure SetedNomeBloco(const Value: Tedit);
              procedure SetSbNovoregistro(const Value: TSpeedButton);
              procedure SetSbRegistroAntigo(const Value: TSpeedButton);
              procedure SetsbStatus(const Value: TSpeedButton);
              procedure SetpnConsulta(const Value: TPanel);
              procedure SetpnConsultaBloco(const Value: TPanel);

          public
              property edCodigoCondominio         :Tedit read FedCodigoCondom�nio write SetedCodigoCondominio;
              property cbtipo                     :TComboBox read Fcbtipo write Setcbtipo;
              property edCodigo                   :TEdit read FedCodigo write SetedCodigo;
              property edNomeBloco                :Tedit read FedNomeBloco write SetedNomeBloco;

              procedure pInsereRegistro;
              procedure pExcluirRegistro(prCodigo:String);
              function  fStatusRegistro(prCodigo:integer):boolean;
              property sbStatus:TSpeedButton read FsbStatus write SetsbStatus;
              property SbNovoregistro:TSpeedButton read FSbNovoregistro write SetSbNovoregistro;
              property SbRegistroAntigo:TSpeedButton read FSbRegistroAntigo write SetSbRegistroAntigo;
              property pnConsulta  :TPanel read FpnConsulta write SetpnConsulta;
              property pnConsultaBloco :TPanel read FpnConsultaBloco write SetpnConsultaBloco;
              procedure pExisteCondominio(prCodigo:String);
              function pProximoRegistro(prCodigo:String):integer;
              function pRegistroAnterior(prCodigo:String):integer;

      end;
type
      TMoradorControler = class
        private
          FedCodigo: tedit;
          Fedcodunidade: tedit;
          Fcheckpropietario: TCheckBox;
          Fedemail: tedit;
          Fednascimento: tedit;
          Fednome: tedit;
          Fedtelefone: tedit;
          FSQLCONTROL : TExecSQL;
          FSbNovoregistro: TSpeedButton;
          FsbStatus: TSpeedButton;
          FSbRegistroAntigo: TSpeedButton;
    FpnConsultaBloco: TPanel;
    FpnConsulta: TPanel;
          procedure SetedCodigo(const Value: tedit);
          procedure Setedcodunidade(const Value: tedit);
          procedure Setcheckpropietario(const Value: TCheckBox);
          procedure Setedemail(const Value: tedit);
          procedure Setednascimento(const Value: tedit);
          procedure Setednome(const Value: tedit);
          procedure Setedtelefone(const Value: tedit);
          procedure SetSbNovoregistro(const Value: TSpeedButton);
          procedure SetSbRegistroAntigo(const Value: TSpeedButton);
          procedure SetsbStatus(const Value: TSpeedButton);
    procedure SetpnConsulta(const Value: TPanel);
    procedure SetpnConsultaBloco(const Value: TPanel);

        public
          property  edCodigo:tedit read FedCodigo write SetedCodigo;
          property  edcodunidade : tedit read Fedcodunidade write Setedcodunidade;
          property  ednome:tedit read Fednome write Setednome;
          property  ednascimento:tedit read Fednascimento write Setednascimento;
          property  edtelefone:tedit read Fedtelefone write Setedtelefone;
          property  edemail:tedit read Fedemail write Setedemail;
          property  checkpropietario:TCheckBox read Fcheckpropietario write Setcheckpropietario;
          procedure pInsereRegistro;
           function  fStatusRegistro(prCodigo:integer):boolean;
          property sbStatus:TSpeedButton read FsbStatus write SetsbStatus;
          property SbNovoregistro:TSpeedButton read FSbNovoregistro write SetSbNovoregistro;
          property SbRegistroAntigo:TSpeedButton read FSbRegistroAntigo write SetSbRegistroAntigo;
          property pnConsulta  :TPanel read FpnConsulta write SetpnConsulta;
          property pnConsultaUnidade :TPanel read FpnConsultaBloco write SetpnConsultaBloco;
      end;
type
    TUnidadeControler = class
       private
        FedEmail: TEdit;
        FedCodigo: TEdit;
        FedCPF: Tedit;
        FedBairo: Tedit;
        FedNumero: TEdit;
        FedCodBloco: TEdit;
        FedCodCond: TEdit;
        FedNome: Tedit;
        Fedcidade: TEdit;
        FcbUF: TComboBox;
        FedCOmplemente: TEdit;
        Fmemobs: TMemo;
        FedCNPJ: Tedit;
        FSQLCONTROL : TExecSQL;
        procedure SetcbUF(const Value: TComboBox);
        procedure SetedBairo(const Value: Tedit);
        procedure Setedcidade(const Value: TEdit);
        procedure SetedCNPJ(const Value: Tedit);
        procedure SetedCodBloco(const Value: TEdit);
        procedure SetedCodCond(const Value: TEdit);
        procedure SetedCodigo(const Value: TEdit);
        procedure SetedCOmplemente(const Value: TEdit);
        procedure SetedCPF(const Value: Tedit);
        procedure SetedEmail(const Value: TEdit);
        procedure SetedNome(const Value: Tedit);
        procedure SetedNumero(const Value: TEdit);
        procedure Setmemobs(const Value: TMemo);
       public
        property edCodigo           :TEdit read FedCodigo write SetedCodigo;
        property edCodCond          :TEdit read FedCodCond write SetedCodCond;
        property edCodBloco         :TEdit read FedCodBloco write SetedCodBloco;
        property edNumero           :TEdit read FedNumero write SetedNumero;
        property edCNPJ             :Tedit read FedCNPJ write SetedCNPJ;
        property memobs             :TMemo read Fmemobs write Setmemobs;
        property edNome             :Tedit read FedNome write SetedNome;
        property edCPF              :Tedit read FedCPF write SetedCPF;
        property edEmail            :TEdit read FedEmail write SetedEmail;
        property cbUF               :TComboBox read FcbUF write SetcbUF;
        property edcidade           :TEdit read Fedcidade write Setedcidade;
        property edCOmplemente      :TEdit read FedCOmplemente write SetedCOmplemente;
        property edBairo            :Tedit read FedBairo write SetedBairo;
        procedure pInsereBanco;
        procedure pExcluirRegistro;



    end;

implementation

{ TCondominioControler }


function TCondominioControler.fStatusRegistro(prCodigo: integer): boolean;
var
wSQL :String;
wPng    :TPngImage;
wBmp    :TBitmap;
begin
 if not Assigned(FSQLControl) then
    FSQLControl:= TExecSQL.Create;

wSQL := EmptyStr;

wSQL := 'select *  from TB_SYN_CONDOMINIO where bdcodigo = '+ (inttostr(prcodigo));

 FSQLControl.CommandText.SQL.Clear;
 FSQLControl.CommandText.SQL.Add(wSQL);
 FSQLControl.CommandText.Open;
 if (FSQLControl.CommandText.IsEmpty)then
    begin
     SbNovoregistro.Show;
     SbRegistroAntigo.hide;
     sbStatus.Caption := 'Inserindo Registro' ;
     sbStatus.Font.Color := clGreen;
     pnConsulta.Caption       := EmptyStr;
     edNome.Text              :=  EmptyStr;
     edNome.Text              :=  EmptyStr;
     edEmail.Text             :=  EmptyStr;
     edCNPJ.Text              :=  EmptyStr;
     edComplemento.Text       :=  EmptyStr;
     cbTipolocal.ItemIndex    := 0;
     edNomeLocal.Text         :=  EmptyStr;
     cbUF.ItemIndex           := 0;
     edCidade.Text            :=  EmptyStr;
     edbairro.Text            :=  EmptyStr;
     edTotalCondonimio.text   :=  EmptyStr;
     edNumero.Text            :=  EmptyStr;
     edDiaVencimento.text     :=  EmptyStr;
     LocalImage.Picture       := nil;

    end
    else
    begin
      SbRegistroAntigo.Show;
      SbNovoregistro.hide;
      sbStatus.Caption := 'Editando Registro' ;
      sbStatus.Font.Color := clRed;
      edCodigo.Text          :=FSQLControl.CommandText.FieldByName('BDCODIGO').AsString;
      edNome.Text            :=FSQLControl.CommandText.FieldByName('BDNOME').AsString;
      edEmail.Text           :=FSQLControl.CommandText.FieldByName('BDEMAIL').AsString;
      edCNPJ.Text            :=FSQLControl.CommandText.FieldByName('BDCNPJ').AsString;
      edComplemento.Text     :=FSQLControl.CommandText.FieldByName('BDCOMPLEMENTO').AsString;
      edNomeLocal.Text       :=FSQLControl.CommandText.FieldByName('BDNOMELOCAL').AsString;
      edCidade.Text          :=FSQLControl.CommandText.FieldByName('BDCIDADE').AsString;
      edBairro.Text          :=FSQLControl.CommandText.FieldByName('BDBAIRRO').AsString;
      edTotalCondonimio.Text :=FSQLControl.CommandText.FieldByName('BDTOTALCOND').AsString;
      edDiaVencimento.Text   :=FSQLControl.CommandText.FieldByName('BDDIAVENC').AsString;
      edNumero.Text          :=FSQLControl.CommandText.FieldByName('BDNUMERO').AsString;
      cbTipolocal.Text       :=FSQLControl.CommandText.FieldByName('BDTIPOLOCAL').AsString;
      pnConsulta.Caption     :=FSQLControl.CommandText.FieldByName('BDNOME').AsString;
      cbUF.Text              :=FSQLControl.CommandText.FieldByName('BDUF').AsString;
      if FSQLControl.CommandText.FieldByName('BDCAMINHOIMAGEM').AsString <> EmptyStr then
         begin
            wPng := TPngImage.Create;
            wPng.LoadFromFile(FSQLControl.CommandText.FieldByName('BDCAMINHOIMAGEM').AsString);
            wBmp:=TUtil.PngToBmp(wPng);
            LocalImage.Picture.Bitmap := wBmp;
         end
         else
          LocalImage.Picture       := nil;

    end;


end;

procedure TCondominioControler.pExcluirRegistro(prCodigo:String);
var
wSQL:String;
begin
 if not Assigned(FSQLControl) then
    FSQLControl:= TExecSQL.Create;
       wSQL:='Select bdcodigo from TB_SYN_CONDOMINIO where bdcodigo ='+prCodigo;
       FSQLControl.CommandText.SQL.Clear;
       FSQLControl.CommandText.SQL.Add(wSQL);
       FSQLControl.CommandText.Open;
       if (FSQLControl.CommandText.IsEmpty)then
          begin
            MessageDlg('Condom�nio c�digo '+prCodigo+' n�o consta na base de dados',mtError,mbOKCancel,1);
          end
          else
          begin
            if (MessageDlg('Certeza que deseja excluir o condom�nio '+edNome.Text+' ? ',mtError,[mbYes, mbNo],1) =mrYes) then
                begin
               wSQL := EmptyStr;
               wSQL := 'delete from TB_SYN_CONDOMINIO where bdcodigo = '+trim(prCodigo);
               FSQLControl.SQL(wSQL);
               MessageDlg('Condom�nio '+edNome.Text+' excluido com sucesso',mtInformation,mbOKCancel,1);
               fStatusRegistro(StrToInt(prCodigo));
            end;
          end;







end;




procedure TCondominioControler.pInsereRegistro;
var
wSQL:String;
begin
 if not Assigned(FSQLControl) then
    FSQLControl:= TExecSQL.Create;
 wSQL:=EmptyStr;
 wSQL := ' update or insert into TB_SYN_CONDOMINIO(';
 wSQL := wSQL + ' BDCODIGO,  BDNOME,  BDEMAIL,  BDTIPOLOCAL,  BDNUMERO,  BDCOMPLEMENTO, ' ;
 wSQL := wSQL + ' BDUF,  BDCIDADE,  BDBAIRRO,  BDTOTALCOND,BDNOMELOCAL,  ' ;
 wSQL := wSQL + ' BDCAMINHOIMAGEM,  BDDIAVENC,  BDCNPJ)' ;
 wSQL := wSQL + ' values ('+trim(edCodigo.Text)+','+QuotedStr(trim(edNome.Text))+','+QuotedStr(trim(edEmail.Text))+','+QuotedStr(trim(cbTipolocal.Text))+','+trim(edNumero.Text);
 wSQL := wSQL + ','+QuotedStr(trim(edComplemento.Text))+','+QuotedStr(trim(cbUF.Text))+','+QuotedStr(trim(edCidade.Text))+','+QuotedStr(trim(edBairro.text))+','+trim(edTotalCondonimio.Text)+','+QuotedStr(trim(edNomeLocal.Text));
 wSQL := wSQL + ','+QuotedStr(FCaminho)+','+trim(edDiaVencimento.Text)+','+QuotedStr(trim(edCNPJ.Text))+')';
 wSQL := wSQL + ' matching (bdcodigo);  ';

 FSQLControl.SQL(wSQL);
 if  (pnConsulta.Caption = EmptyStr) then
    MessageDlg('Registro gravado com  sucesso',mtInformation,mbOKCancel,1)
    else
    MessageDlg('Registro editado com  sucesso',mtInformation,mbOKCancel,1);


end;

function TCondominioControler.pProximoRegistro(prCodigo:String):integer;
var
wSQL:String;
begin
   if not Assigned(FSQLControl) then
    FSQLControl:= TExecSQL.Create;

  wSQL:='select min(bdcodigo) as bdcodigo from tb_syn_condominio where bdcodigo >'+prCodigo;
  FSQLControl.CommandText.SQL.Clear;
  FSQLControl.CommandText.SQL.Add(wSQL);
  FSQLControl.CommandText.Open;
  if FSQLControl.CommandText.FieldByName('bdcodigo').IsNull then
     begin
       result := strtoint(prCodigo)+1
     end
     else
     begin

         FSQLControl.CommandText.SQL.Clear;
         FSQLControl.CommandText.SQL.Add(wSQL);
         FSQLControl.CommandText.Open;
         result:=strtoint(FSQLControl.CommandText.FieldByName('bdcodigo').AsString)
     end;


end;

function TCondominioControler.pRegistroAnterior(prCodigo:String):integer;
var
wSQL:String;

begin
     if not Assigned(FSQLControl) then
    FSQLControl:= TExecSQL.Create;

  wSQL:='select max(bdcodigo) as bdcodigo from tb_syn_condominio where bdcodigo <'+prCodigo;
  FSQLControl.CommandText.SQL.Clear;
  FSQLControl.CommandText.SQL.Add(wSQL);
  FSQLControl.CommandText.Open;
  if FSQLControl.CommandText.FieldByName('bdcodigo').IsNull then
     begin
       result := strtoint(prCodigo)+1
     end
     else
     begin

         FSQLControl.CommandText.SQL.Clear;
         FSQLControl.CommandText.SQL.Add(wSQL);
         FSQLControl.CommandText.Open;
         result:=strtoint(FSQLControl.CommandText.FieldByName('bdcodigo').AsString)
     end;
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

procedure TCondominioControler.SetedPanelCodigo(const Value: TEdit);
begin
  FedPanelCodigo := Value;
end;

procedure TCondominioControler.SetedTotalCondonimio(const Value: Tedit);
begin
  FedTotalCondonimio := Value;
end;

procedure TCondominioControler.SetFCaminho(const Value: String);
begin
  FFCaminho := Value;
end;

procedure TCondominioControler.SetFimagem(const Value: TFileStream);
begin
  FFimagem := Value;
end;

procedure TCondominioControler.SetLocalImage(const Value: timage);
begin
  FLocalImage := Value;
end;

procedure TCondominioControler.SetpnConsulta(const Value: TPanel);
begin
  FpnConsulta := Value;
end;

procedure TCondominioControler.SetSbNovoregistro(const Value: TSpeedButton);
begin
  FSbNovoregistro := Value;
end;

procedure TCondominioControler.SetSbRegistroAntigo(const Value: TSpeedButton);
begin
  FSbRegistroAntigo := Value;
end;

procedure TCondominioControler.SetsbStatus(const Value: TSpeedButton);
begin
  FsbStatus := Value;
end;

{



 TBlocoControler




  }

function TBlocoControler.fStatusRegistro(prCodigo: integer): boolean;
var
wSQL :String;
wPng    :TPngImage;
wBmp    :TBitmap;
begin
 if not Assigned(FSQLControl) then
    FSQLControl:= TExecSQL.Create;

wSQL := EmptyStr;

wSQL := 'select *  from TB_SYN_BLOCO blo';
wSQL := wSQL + ' join tb_syn_condominio cond on (cond.bdcodigo = blo.bdcodcond) where blo.bdcodigo = '+ (inttostr(prcodigo));


 FSQLControl.CommandText.SQL.Clear;
 FSQLControl.CommandText.SQL.Add(wSQL);
 FSQLControl.CommandText.Open;
 if (FSQLControl.CommandText.IsEmpty)then
    begin
     SbNovoregistro.Show;
     SbRegistroAntigo.hide;
     sbStatus.Caption := 'Inserindo Registro' ;
     sbStatus.Font.Color := clGreen;
     pnConsulta.Caption            := EmptyStr;
     pnConsultaBloco.Caption            := EmptyStr;
     edNomeBloco.Text              :=  EmptyStr;
     edCodigoCondominio.Text       :=  EmptyStr;
     cbtipo.ItemIndex              := 0;

    end
    else
    begin
      SbRegistroAntigo.Show;
      SbNovoregistro.hide;
      sbStatus.Caption := 'Editando Registro' ;
      sbStatus.Font.Color := clRed;
      edCodigo.Text:=FSQLControl.CommandText.FieldByName('BDCODIGO').AsString;
      edCodigoCondominio.Text :=FSQLControl.CommandText.FieldByName('BDCODCOND').AsString;
      edNomeBloco.Text:=FSQLControl.CommandText.FieldByName('BDNOMEBLOCO').AsString;
      cbtipo.Text:=FSQLControl.CommandText.FieldByName('BDTIPO').AsString;
      pnConsulta.Caption:= FSQLControl.CommandText.FieldByName('BDNOME').AsString;
      pnConsultaBloco.Caption := FSQLControl.CommandText.FieldByName('BDNOMEBLOCO').AsString;



    end;


end;

procedure TBlocoControler.pExcluirRegistro(prCodigo: String);
var
wSQL:String;
begin
 if not Assigned(FSQLControl) then
    FSQLControl:= TExecSQL.Create;



       wSQL:='Select bdcodigo from TB_SYN_BLOCO where bdcodigo ='+prCodigo;
       FSQLControl.CommandText.SQL.Clear;
       FSQLControl.CommandText.SQL.Add(wSQL);
       FSQLControl.CommandText.Open;
       if (FSQLControl.CommandText.IsEmpty)then
          begin
            MessageDlg('Bloco/Pr�dio c�digo '+prCodigo+' n�o consta na base de dados',mtError,mbOKCancel,1);
          end
          else
          begin
             if (MessageDlg('Certeza que deseja excluir o bloco/predio  '+edNomeBloco.Text+' ? ',mtError,[mbYes, mbNo],1) =mrYes) then
                begin
                 wSQL := EmptyStr;
                 wSQL := 'delete from TB_SYN_BLOCO where bdcodigo = '+trim(prCodigo);
                 FSQLControl.SQL(wSQL);
                 MessageDlg('Bloco/Pr�dio '+edNomeBloco.Text+' excluido com sucesso',mtInformation,mbOKCancel,1);
                 fStatusRegistro(StrToInt(prCodigo));
                end;
          end;



end;

procedure TBlocoControler.pInsereRegistro;
var
wSQL:String;
begin
 FSQLControl:= TExecSQL.Create;
 wSQL:=EmptyStr;
  wSQL := ' update or insert into TB_SYN_BLOCO(';
 wSQL := wSQL + ' BDCODIGO,  BDCODCOND,  BDTIPO,  BDNOMEBLOCO) ' ;
 wSQL := wSQL + ' values ('+Trim(edCodigo.Text)+','+trim(edCodigoCondominio.Text) ;
 wSQL := wSQL + ' ,'''+trim(cbtipo.Text)+''','''+trim(edNomeBloco.Text)+''')';
 wSQL := wSQL + ' matching (bdcodigo);  ';
 FSQLControl.SQL(wSQL);
 if  (pnConsultaBloco.Caption = EmptyStr) then
    MessageDlg('Registro gravado com  sucesso',mtInformation,mbOKCancel,1)
    else
    MessageDlg('Registro editado com  sucesso',mtInformation,mbOKCancel,1);


end;

function TBlocoControler.pProximoRegistro(prCodigo: String): integer;
var
wSQL:String;
begin
   if not Assigned(FSQLControl) then
    FSQLControl:= TExecSQL.Create;

  wSQL:='select min(bdcodigo) as bdcodigo from TB_SYN_BLOCO where bdcodigo >'+prCodigo;
  FSQLControl.CommandText.SQL.Clear;
  FSQLControl.CommandText.SQL.Add(wSQL);
  FSQLControl.CommandText.Open;
  if FSQLControl.CommandText.FieldByName('bdcodigo').IsNull then
     begin
       result := strtoint(prCodigo)+1
     end
     else
     begin

         FSQLControl.CommandText.SQL.Clear;
         FSQLControl.CommandText.SQL.Add(wSQL);
         FSQLControl.CommandText.Open;
         result:=strtoint(FSQLControl.CommandText.FieldByName('bdcodigo').AsString)
     end;


end;


function TBlocoControler.pRegistroAnterior(prCodigo: String): integer;
var
wSQL:String;

begin
     if not Assigned(FSQLControl) then
    FSQLControl:= TExecSQL.Create;

  wSQL:='select max(bdcodigo) as bdcodigo from tb_syn_condominio where bdcodigo <'+prCodigo;
  FSQLControl.CommandText.SQL.Clear;
  FSQLControl.CommandText.SQL.Add(wSQL);
  FSQLControl.CommandText.Open;
  if FSQLControl.CommandText.FieldByName('bdcodigo').IsNull then
     begin
       result := strtoint(prCodigo)+1
     end
     else
     begin

         FSQLControl.CommandText.SQL.Clear;
         FSQLControl.CommandText.SQL.Add(wSQL);
         FSQLControl.CommandText.Open;
         result:=strtoint(FSQLControl.CommandText.FieldByName('bdcodigo').AsString)
     end;
end;


procedure TBlocoControler.Setcbtipo(const Value: TComboBox);
begin
  Fcbtipo := Value;
end;

procedure TBlocoControler.SetedCodigo(const Value: TEdit);
begin
  FedCodigo := Value;
end;

procedure TBlocoControler.SetedCodigoCondominio(const Value: Tedit);
begin
  FedCodigoCondom�nio := Value;
end;

procedure TBlocoControler.SetedNomeBloco(const Value: Tedit);
begin
  FedNomeBloco := Value;
end;

procedure TBlocoControler.SetpnConsulta(const Value: TPanel);
begin
  FpnConsulta := Value;
end;

procedure TBlocoControler.SetpnConsultaBloco(const Value: TPanel);
begin
  FpnConsultaBloco := Value;
end;

procedure TBlocoControler.SetSbNovoregistro(const Value: TSpeedButton);
begin
  FSbNovoregistro := Value;
end;

procedure TBlocoControler.SetSbRegistroAntigo(const Value: TSpeedButton);
begin
  FSbRegistroAntigo := Value;
end;

procedure TBlocoControler.SetsbStatus(const Value: TSpeedButton);
begin
  FsbStatus := Value;
end;

{






TMoradorControler







}

function TMoradorControler.fStatusRegistro(prCodigo: integer): boolean;
var
wSQL :String;
wPng    :TPngImage;
wBmp    :TBitmap;
begin
 if not Assigned(FSQLControl) then
    FSQLControl:= TExecSQL.Create;

wSQL := EmptyStr;

wSQL := 'select *  from TB_SYN_MORADORES mor';
wSQL := wSQL + ' join tb_syn_unidades und on (und.bdcodigo = mor.bdcodigounid)';
wSQL := wSQL + ' join TB_SYN_BLOCO blo on (und.bdcodbloco = blo.bdcodigo) where mor.bdcodigo = '+ (inttostr(prcodigo));


 FSQLControl.CommandText.SQL.Clear;
 FSQLControl.CommandText.SQL.Add(wSQL);
 FSQLControl.CommandText.Open;
 if (FSQLControl.CommandText.IsEmpty)then
    begin
     SbNovoregistro.Show;
     SbRegistroAntigo.hide;
     sbStatus.Caption := 'Inserindo Registro' ;
     sbStatus.Font.Color := clGreen;
     pnConsulta.Caption            := EmptyStr;
     pnConsultaunidade.Caption     := EmptyStr;

     edCodigo.Text                 :=  EmptyStr;
     edcodunidade.Text             :=  EmptyStr;
     ednome.text                   :=  emptyStr;
     ednascimento.Text             :=  EmptyStr;
     edtelefone.Text               :=  EmptyStr;
     edemail.Text                  :=  EmptyStr;
     checkpropietario.Checked      :=  False;


    end
    else
    begin
      SbRegistroAntigo.Show;
      SbNovoregistro.hide;
      sbStatus.Caption := 'Editando Registro' ;
      sbStatus.Font.Color := clRed;

      edCodigo.Text               :=FSQLControl.CommandText.FieldByName('BDCODIGO').AsString;
      edcodunidade.Text           :=FSQLControl.CommandText.FieldByName('BDCODIGOUNID').AsString;
      ednome.Text                 :=FSQLControl.CommandText.FieldByName('BDNOME').AsString;
      ednascimento.text           :=FSQLControl.CommandText.FieldByName('BDNASCIMENTO').AsString;
      edtelefone.text             :=FSQLControl.CommandText.FieldByName('BDTELEFONE').AsString;
      edemail.text                :=FSQLControl.CommandText.FieldByName('BDEMAIL').AsString;
      pnConsultaUnidade.Caption   :='Apartamento  n�mero : '+(FSQLControl.CommandText.FieldByName('BDNUMERO').AsString +'    '+ FSQLControl.CommandText.FieldByName('BDNOMEBLOCO').AsString);
      pnConsulta.caption          :=FSQLControl.CommandText.FieldByName('BDNOME').AsString;
      if FSQLControl.CommandText.FieldByName('BDRESPONSAVELFIN').AsInteger = 1  then
         checkpropietario.Checked := true
         else
         checkpropietario.Checked := false;




    end;

end;

procedure TMoradorControler.pInsereRegistro;
var
wSQL:String;
begin
 FSQLControl:= TExecSQL.Create;
 showmessage(edCodigo.Text);
 wSQL:=EmptyStr;
 wSQL := ' update or insert into TB_SYN_MORADORES(';
 wSQL := wSQL + ' BDCODIGO,BDCODIGOUNID,BDNOME,BDNASCIMENTO,BDTELEFONE,' ;
 wSQL := wSQL + 'BDEMAIL,BDRESPONSAVELFIN )' ;
 wSQL := wSQL + ' values ('+QuotedStr(trim(edCodigo.Text))+','+QuotedStr(trim(edcodunidade.Text)) ;
 wSQL := wSQL + ' ,'+QuotedStr(trim(ednome.Text))+','+QuotedStr(trim(ednascimento.Text));
 wSQL := wSQL + ' ,'+QuotedStr(trim(edtelefone.Text))+','+QuotedStr(trim(edemail.Text))+',1)';
 wSQL := wSQL + ' matching (bdcodigo);  ';

 FSQLControl.SQL(wSQL);

end;

procedure TMoradorControler.Setcheckpropietario(const Value: TCheckBox);
begin
  Fcheckpropietario := Value;
end;

procedure TMoradorControler.SetedCodigo(const Value: tedit);
begin
  FedCodigo := Value;
end;

procedure TMoradorControler.Setedcodunidade(const Value: tedit);
begin
  Fedcodunidade := Value;
end;

procedure TMoradorControler.Setedemail(const Value: tedit);
begin
  Fedemail := Value;
end;

procedure TMoradorControler.Setednascimento(const Value: tedit);
begin
  Fednascimento := Value;
end;

procedure TMoradorControler.Setednome(const Value: tedit);
begin
  Fednome := Value;
end;

procedure TMoradorControler.Setedtelefone(const Value: tedit);
begin
  Fedtelefone := Value;
end;

procedure TMoradorControler.SetpnConsulta(const Value: TPanel);
begin
  FpnConsulta := Value;
end;

procedure TMoradorControler.SetpnConsultaBloco(const Value: TPanel);
begin
  FpnConsultaBloco := Value;
end;

procedure TMoradorControler.SetSbNovoregistro(const Value: TSpeedButton);
begin
  FSbNovoregistro := Value;
end;

procedure TMoradorControler.SetSbRegistroAntigo(const Value: TSpeedButton);
begin
  FSbRegistroAntigo := Value;
end;

procedure TMoradorControler.SetsbStatus(const Value: TSpeedButton);
begin
  FsbStatus := Value;
end;

{







TUnidadeControler






}


procedure TUnidadeControler.pExcluirRegistro;
begin

end;

procedure TUnidadeControler.pInsereBanco;
var
  wSQL:String;
begin
 FSQLControl:= TExecSQL.Create;
 showmessage(edCodigo.Text);
 wSQL:=EmptyStr;
 wSQL := ' update or insert into TB_SYN_UNIDADES(';
 wSQL := wSQL + 'BDCODIGO,BDCODBLOCO,BDNUMERO,BDCNPJ,BDOBS,';
 wSQL := wSQL + 'BDNOMEPROPRIETARIO,BDCPFPROPRIETARIO,BDEMAIL,BDUF,';
 wSQL := wSQL + 'BDCIDADE,BDCOMPLEMENTO,BDBAIRRO)';
 wSQL := wSQL + ' values ('+Trim(edCodigo.Text)+','+Trim(edCodBloco.Text)+','+Trim(edNumero.Text);
 wSQL := wSQL + ', '''+Trim(edCNPJ.Text)+''','''+trim(memobs.Text)+''','''+Trim(edNome.Text) ;
 wSQL := wSQL + ''', '''+Trim(edEmail.Text)+''','''+Trim(edCPF.Text)+''','''+Trim(cbUF.Text)+''','''+Trim(edcidade.Text);
 wSQL := wSQL + ''', '''+Trim(edCOmplemente.Text)+''','''+Trim(edBairo.Text)+''')';
 wSQL := wSQL + ' matching (bdcodigo);  ';

 FSQLControl.SQL(wSQL);

end;

procedure TUnidadeControler.SetcbUF(const Value: TComboBox);
begin
  FcbUF := Value;
end;

procedure TUnidadeControler.SetedBairo(const Value: Tedit);
begin
  FedBairo := Value;
end;

procedure TUnidadeControler.Setedcidade(const Value: TEdit);
begin
  Fedcidade := Value;
end;

procedure TUnidadeControler.SetedCNPJ(const Value: Tedit);
begin
  FedCNPJ := Value;
end;

procedure TUnidadeControler.SetedCodBloco(const Value: TEdit);
begin
  FedCodBloco := Value;
end;

procedure TUnidadeControler.SetedCodCond(const Value: TEdit);
begin
  FedCodCond := Value;
end;

procedure TUnidadeControler.SetedCodigo(const Value: TEdit);
begin
  FedCodigo := Value;
end;

procedure TUnidadeControler.SetedCOmplemente(const Value: TEdit);
begin
  FedCOmplemente := Value;
end;

procedure TUnidadeControler.SetedCPF(const Value: Tedit);
begin
  FedCPF := Value;
end;

procedure TUnidadeControler.SetedEmail(const Value: TEdit);
begin
  FedEmail := Value;
end;

procedure TUnidadeControler.SetedNome(const Value: Tedit);
begin
  FedNome := Value;
end;

procedure TUnidadeControler.SetedNumero(const Value: TEdit);
begin
  FedNumero := Value;
end;

procedure TUnidadeControler.Setmemobs(const Value: TMemo);
begin
  Fmemobs := Value;
end;

{ TBlocoControler }

procedure TBlocoControler.pExisteCondominio(prCodigo: String);

 var
wSQL:String;
begin
   if not Assigned(FSQLControl) then
    FSQLControl:= TExecSQL.Create;

  wSQL:='select bdnome from TB_SYN_CONDOMINIO where bdcodigo ='+prCodigo;
  FSQLControl.CommandText.SQL.Clear;
  FSQLControl.CommandText.SQL.Add(wSQL);
  FSQLControl.CommandText.Open;
  if FSQLControl.CommandText.IsEmpty then
     begin
       MessageDlg('C�digo do condom�nio nao consta no sistema  ',mtError,mbOKCancel,1)
     end
     else
     begin
       pnConsulta.Caption:= FSQLControl.CommandText.FieldByName('BDNOME').AsString;
     end;

end;

end.
