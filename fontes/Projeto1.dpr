program Projeto1;

uses
  Forms,
  frmPrincipal in 'frmPrincipal.pas' {frmPricipal},
  frmProdutos in 'frmProdutos.pas' {formProdutos},
  frmSobre in 'C:\Users\Eduardo\Pictures\Delphi Developer\Images\Icons\frmSobre.pas' {formSobre},
  frmCalendario in 'frmCalendario.pas' {formCalendario},
  frmFornecedores in 'frmFornecedores.pas' {formFornecedores},
  frmClientes in 'frmClientes.pas' {formClientes},
  rptFichaCliente in 'relatorio\rptFichaCliente.pas' {reportFichaCliente},
  frmAbertura in 'frmAbertura.pas' {formAbertura},
  rptFichaClienteRave in 'relatorio\rptFichaClienteRave.pas' {rptFichaClientefrm},
  frm_dtmPrincipal in 'frm_dtmPrincipal.pas' {dtmPrincipal: TDataModule},
  frmGrafico in 'frmGrafico.pas' {formGraficoVendas};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Sistema';

  // tela splash
  formAbertura := TformAbertura.Create(Application);
  formAbertura.Show;
  formAbertura.free;


  Application.CreateForm(TfrmPricipal, frmPricipal);
  Application.CreateForm(TformAbertura, formAbertura);
  Application.CreateForm(TdtmPrincipal, dtmPrincipal);
  Application.CreateForm(TformGraficoVendas, formGraficoVendas);
  Application.Run;

  Application.HintPause:= 1500;
  Application.HintHidePause := 3000;
end.
