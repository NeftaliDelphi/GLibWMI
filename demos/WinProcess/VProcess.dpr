program VProcess;

uses
  Forms,
  FMain in 'FMain.pas' {FormMain},
  UConst in 'UConst.pas',
  FAbout in 'FAbout.pas' {FormAbout};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Win32 Process viewer';
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
