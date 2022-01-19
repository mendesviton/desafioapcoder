program Syndico;

uses
  Vcl.Forms,
  uCadPadrao in 'view\uCadPadrao.pas' {frCadpadraoSyndico},
  ProjetoSyndico in 'ProjetoSyndico.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
