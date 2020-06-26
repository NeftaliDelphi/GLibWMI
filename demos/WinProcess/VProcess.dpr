program VProcess;

uses
  Forms,
  FMain in 'FMain.pas' {FormMain},
  UConst in 'UConst.pas',
  FormAbout in '..\..\sources\FormAbout.pas' {FAbout};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Win32 Process viewer';
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
