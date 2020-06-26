program OSInfo;

{$I .\..\package\jedi.inc}

uses
  {$IFDEF DELPHIX_TOKYO_UP}
  Vcl.Forms,
  {$ELSE}
  Forms, SysUtils,
  {$ENDIF}
  fMain in 'fMain.pas' {FormMain};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
