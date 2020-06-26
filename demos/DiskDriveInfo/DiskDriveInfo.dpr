program DiskDriveInfo;

uses
  Forms,
  UMainDemoDiskDrive in 'UMainDemoDiskDrive.pas' {FormMainDiskDrive},
  FrameInfo in 'FrameInfo.pas' {FrInfo: TFrame},
  FormAbout in '..\..\sources\FormAbout.pas' {FAbout};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormMainDiskDrive, FormMainDiskDrive);
  Application.Run;
end.
