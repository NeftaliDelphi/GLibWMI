program PTestWMIQuery;

uses
  Forms,
  FMain in 'FMain.pas' {FormMain};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Demo para WMSISQL';
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
