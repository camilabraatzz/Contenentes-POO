program prjContinente;

uses
  Vcl.Forms,
  uFrmPrincipal in 'View\uFrmPrincipal.pas' {FrmPrincipal},
  uContinente in 'Class\uContinente.pas',
  uPais in 'Class\uPais.pas',
  uMundo in 'Class\uMundo.pas',
  uEnumContinente in 'Class\uEnumContinente.pas',
  Vcl.Themes,
  Vcl.Styles,
  uExceptions in 'Exeption\uExceptions.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Auric');
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
