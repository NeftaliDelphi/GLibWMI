program ServiceControl;



uses
  Forms,
  FMain in 'FMain.pas' {FormMain};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Control de servicios - Ejemplo GLibWMI';
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
