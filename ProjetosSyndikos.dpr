program ProjetosSyndikos;

uses
  Vcl.Forms,
  ProjetoSyndico in 'ProjetoSyndico.pas' {frSyndicoPrincipal},
  Vcl.Themes,
  Vcl.Styles,
  uUtil in 'uUtil.pas',
  uConexaoBanco in 'model\uConexaoBanco.pas',
  uControleSQL in 'model\uControleSQL.pas',
  uControleFluxo in 'controler\uControleFluxo.pas',
  uCadCondominios in 'view\cadastro\uCadCondominios.pas',
  uCadMoradores in 'view\cadastro\uCadMoradores.pas',
  uCadPadrao in 'view\cadastro\uCadPadrao.pas' {frCadpadraoSyndico},
  uCadPredio in 'view\cadastro\uCadPredio.pas' {frCadPredioSyndico},
  uCadUnidade in 'view\cadastro\uCadUnidade.pas' {frCadUnidades},
  uConBlocos in 'view\consulta\uConBlocos.pas' {frConBloco},
  uConCondominios in 'view\consulta\uConCondominios.pas' {frConsultaCondominio},
  uConsultaPadrao in 'view\consulta\uConsultaPadrao.pas' {frConPadraoSyndico},
  uConMoradores in 'view\consulta\uConMoradores.pas' {frConMoradores},
  uConUnidades in 'view\consulta\uConUnidades.pas' {frConUnidades},
  uControleValida in 'controler\uControleValida.pas',
  uLancaDespesa in 'view\lanšamento\uLancaDespesa.pas' {frLancaDespesa},
  uCentralPagamentos in 'view\consulta\uCentralPagamentos.pas' {frCentralDespesas},
  uAjudaSyndico in 'uAjudaSyndico.pas' {frAjuda};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrSyndicoPrincipal, frSyndicoPrincipal);
  Application.CreateForm(TfrConBloco, frConBloco);
  Application.CreateForm(TfrCadpadraoSyndico, frCadpadraoSyndico);
  Application.CreateForm(TfrCadPredioSyndico, frCadPredioSyndico);
  Application.CreateForm(TfrCadUnidades, frCadUnidades);
  Application.CreateForm(TfrConsultaCondominio, frConsultaCondominio);
  Application.CreateForm(TfrConBloco, frConBloco);
  Application.CreateForm(TfrConsultaCondominio, frConsultaCondominio);
  Application.CreateForm(TfrConPadraoSyndico, frConPadraoSyndico);
  Application.CreateForm(TfrConMoradores, frConMoradores);
  Application.CreateForm(TfrConUnidades, frConUnidades);
  Application.CreateForm(TfrLancaDespesa, frLancaDespesa);
  Application.CreateForm(TfrCentralDespesas, frCentralDespesas);
  Application.CreateForm(TfrAjuda, frAjuda);
  Application.Run;
end.
