program DiskDriveInfo;

uses
  Forms,
  UMainDemoDiskDrive in 'UMainDemoDiskDrive.pas' {FormMainDiskDrive};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'DiskDriveInfo Demo (GLibWMI)';
  Application.CreateForm(TFormMainDiskDrive, FormMainDiskDrive);
  Application.Run;
end.
