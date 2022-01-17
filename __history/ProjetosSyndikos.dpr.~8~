program ProjetosSyndikos;

uses
  Vcl.Forms,
  ProjetoSyndico in 'ProjetoSyndico.pas' {frSyndicoPrincipal},
  uCadPadrao in 'view\uCadPadrao.pas' {frCadpadraoSyndico},
  Vcl.Themes,
  Vcl.Styles,
  uCadCondominios in 'view\uCadCondominios.pas' {frCadCondominio},
  uUtil in 'uUtil.pas',
  uCadPredio in 'view\uCadPredio.pas' {frCadPredioSyndico},
  uCadMoradores in 'view\uCadMoradores.pas' {frMoradoresSyndicos},
  uConexaoBanco in 'model\uConexaoBanco.pas',
  uControleSQL in 'model\uControleSQL.pas',
  uControleFluxo in 'controler\uControleFluxo.pas',
  uConsultaPadrao in 'view\uConsultaPadrao.pas' {frConPadraoSyndico},
  uConCondominios in 'view\uConCondominios.pas' {frConsultaCondominio};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrSyndicoPrincipal, frSyndicoPrincipal);
  Application.Run;
end.
