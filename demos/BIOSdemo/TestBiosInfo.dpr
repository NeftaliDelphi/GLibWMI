program TestBiosInfo;

uses
  Forms,
  UMainDemoBIOS in 'UMainDemoBIOS.pas' {FormMainBios},
  FormAbout in '..\..\sources\FormAbout.pas' {FAbout};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'BIOSInfo Demo (GLibWMI)';
  Application.CreateForm(TFormMainBios, FormMainBios);
  Application.Run;
end.
