program ServiceControl;



uses
  Forms,
  FMain in 'FMain.pas' {FormMain},
  FormAbout in '..\..\sources\FormAbout.pas' {FAbout};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Control de servicios - Ejemplo GLibWMI';
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
