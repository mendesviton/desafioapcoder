unit ProjetoSyndico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus,uCadPadrao,uCadCondominios,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.Buttons, Vcl.ToolWin, Vcl.ComCtrls,
  System.ImageList,Vcl.ImgList,uCadPredio,uCadMoradores,System.IniFiles,
  uConCondominios,uControleSQL,uConBlocos,uCadUnidade,uConMoradores,uConUnidades,uUtil,
  Vcl.StdCtrls,uLancaDespesa,uCentralPagamentos,uAjudaSyndico;

type
  TfrSyndicoPrincipal = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Bevel2: TBevel;
    pnFundo: TPanel;
    SpeedButton1: TSpeedButton;
    Panel1: TPanel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Panel2: TPanel;
    Panel3: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    Panel4: TPanel;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    FSQL:TExecSQL;
    SpeedButton11: TSpeedButton;
    Panel5: TPanel;
    SpeedButton10: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    procedure pnFundoResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton13Click(Sender: TObject);
  private
    Fajuda:TfrAjuda;
    procedure pFecharPanel(prBarra:integer);


  public
    { Public declarations }
  end;

var
  frSyndicoPrincipal: TfrSyndicoPrincipal;

implementation

{$R *.dfm}

procedure TfrSyndicoPrincipal.FormCreate(Sender: TObject);
var
wCont:integer;
ArquivoINI    : String;
Configuration : TIniFile;
begin
 ArquivoINI := ExtractFilePath(Application.ExeName) + 'config.ini';
 Configuration := TIniFile.Create(ArquivoINI);
 Configuration.WriteString('Dados','Servidor',ExtractFilePath(Application.ExeName) + 'base\SYNBD.FDB');
 FSQL:=TExecSQL.Create;
 FSQL.CommandText.SQL.Clear;
 FSQL.CommandText.SQL.Add('select bdcaminhoimagem from TB_SYN_CONDOMINIO where bdcodigo = 1');
 FSQL.CommandText.Open;
 if FSQL.CommandText.FieldByName('BDCAMINHOIMAGEM').AsString <> ExtractFilePath(Application.ExeName)+'persiste\imagecod1.png' then
    begin
     FSQL.SQL('update or insert into TB_SYN_CONDOMINIO (BDCODIGO,BDCAMINHOIMAGEM) values (1,'+quotedstr(ExtractFilePath(Application.ExeName)+'persiste\imagecod1.png')+')  matching(bdcodigo)');
     FSQL.SQL('update or insert into TB_SYN_CONDOMINIO (BDCODIGO,BDCAMINHOIMAGEM) values (2,'+quotedstr(ExtractFilePath(Application.ExeName)+'persiste\imagecod2.png')+')  matching(bdcodigo)');
     FSQL.SQL('update or insert into TB_SYN_CONDOMINIO (BDCODIGO,BDCAMINHOIMAGEM) values (3,'+quotedstr(ExtractFilePath(Application.ExeName)+'persiste\imagecod3.png')+')  matching(bdcodigo)');
     FSQL.SQL('update or insert into TB_SYN_CONDOMINIO (BDCODIGO,BDCAMINHOIMAGEM) values (4,'+quotedstr(ExtractFilePath(Application.ExeName)+'persiste\imagecod4.png')+')  matching(bdcodigo)');
     FSQL.SQL('update or insert into TB_SYN_MORADORES  (BDCODIGO,BDCAMINHOIMAGEM) values (1,'+quotedstr(ExtractFilePath(Application.ExeName)+'persiste\vitao.png')+')      matching(bdcodigo)');
end;


 Bevel2.Width  := Screen.Width;
 pFecharPanel(4);

end;

procedure TfrSyndicoPrincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key = VK_ESCAPE then
    frAjuda.Close;


end;

procedure TfrSyndicoPrincipal.FormShow(Sender: TObject);
begin
    frAjuda.Show;
end;

procedure TfrSyndicoPrincipal.Image1Click(Sender: TObject);
begin
  pFecharPanel(4);
  frAjuda.Close;
end;

procedure TfrSyndicoPrincipal.Panel1Click(Sender: TObject);
begin
    pFecharPanel(4);
    frAjuda.Close;
end;

procedure TfrSyndicoPrincipal.pFecharPanel(prBarra:integer);
begin
 if prBarra = 1 then
    panel2.hide;
 if prBarra = 2 then
    panel3.hide;
 if prBarra = 3 then
    panel4.hide;
 if prBarra = 4 then
    begin
      panel2.hide;
      panel3.hide;
      panel4.hide;
      Panel5.hide;
    end;
 if prBarra = 5 then
    Panel5.hide;


end;

procedure TfrSyndicoPrincipal.pnFundoResize(Sender: TObject);
begin
 Bevel2.Width := Screen.Width;
end;

procedure TfrSyndicoPrincipal.SpeedButton10Click(Sender: TObject);
begin
  Panel3.Show;
  pFecharPanel(1);
  pFecharPanel(3);
end;

procedure TfrSyndicoPrincipal.SpeedButton11Click(Sender: TObject);
begin
   TfrLancaDespesa.Create(self).Show;
end;

procedure TfrSyndicoPrincipal.SpeedButton12Click(Sender: TObject);
begin
  TfrCentralDespesas.Create(self).Show;
end;

procedure TfrSyndicoPrincipal.SpeedButton13Click(Sender: TObject);
begin
  TfrAjuda.Create(self).Show;
end;

procedure TfrSyndicoPrincipal.SpeedButton14Click(Sender: TObject);
begin
  TfrCadUnidades.Create(self).show;
end;

procedure TfrSyndicoPrincipal.SpeedButton15Click(Sender: TObject);
begin
  TfrCadCondominio.Create(self).ShowModal;
end;

procedure TfrSyndicoPrincipal.SpeedButton1Click(Sender: TObject);
begin
   panel2.Show;
   pFecharPanel(2);
   pFecharPanel(3);
   pFecharPanel(5);
   frAjuda.Close;
end;

procedure TfrSyndicoPrincipal.SpeedButton2Click(Sender: TObject);
begin
  Panel5.Show;
  pFecharPanel(1);
  pFecharPanel(3);
  frAjuda.Close;
end;

procedure TfrSyndicoPrincipal.SpeedButton3Click(Sender: TObject);
begin
  panel4.Show;
  pFecharPanel(1);
  pFecharPanel(2);
  pFecharPanel(5);
  frAjuda.Close;

end;

procedure TfrSyndicoPrincipal.SpeedButton4Click(Sender: TObject);
begin
  TfrCadPredioSyndico.Create(self).ShowModal;
end;

procedure TfrSyndicoPrincipal.SpeedButton5Click(Sender: TObject);
begin
  TfrMoradoresSyndicos.Create(self).ShowModal;
end;

procedure TfrSyndicoPrincipal.SpeedButton6Click(Sender: TObject);
begin
  TfrConsultaCondominio.Create(self).Show;
end;

procedure TfrSyndicoPrincipal.SpeedButton7Click(Sender: TObject);
begin
   TfrConBloco.Create(self).ShowModal;
end;

procedure TfrSyndicoPrincipal.SpeedButton8Click(Sender: TObject);
begin
  tfrConMoradores.Create(self).ShowModal;
end;

procedure TfrSyndicoPrincipal.SpeedButton9Click(Sender: TObject);
begin
 TfrConUnidades.create(self).ShowModal
end;

end.
