program TestBiosInfo;

uses
  Forms,
  UMainDemoBIOS in 'UMainDemoBIOS.pas' {FormMainBios};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'BIOSInfo Demo (GLibWMI)';
  Application.CreateForm(TFormMainBios, FormMainBios);
  Application.Run;
end.
