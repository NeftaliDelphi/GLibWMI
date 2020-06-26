program PPrinterList;

uses
  Forms,
  FMainList in 'FMainList.pas' {FormMain};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
