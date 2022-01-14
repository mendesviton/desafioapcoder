program ProjetosSyndikos;

uses
  Vcl.Forms,
  ProjetoSyndico in 'ProjetoSyndico.pas' {frSyndicoPrincipal},
  uCadPadrao in 'view\uCadPadrao.pas' {frCadpadraoSyndico},
  Vcl.Themes,
  Vcl.Styles,
  uCadCondominios in 'view\uCadCondominios.pas' {frCadCondominio},
  uUtil in 'uUtil.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrSyndicoPrincipal, frSyndicoPrincipal);
  Application.CreateForm(TfrCadCondominio, frCadCondominio);
  Application.Run;
end.
