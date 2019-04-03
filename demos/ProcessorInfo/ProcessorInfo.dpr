program ProcessorInfo;

uses
  Forms,
  FrameInfo in 'FrameInfo.pas' {FrInfo: TFrame} ,
  UMainDemoProcessor in 'UMainDemoProcessor.pas' {FormMainProcessor};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'ProcessorInfo Demo (GLibWMI)';
  Application.CreateForm(TFormMainProcessor, FormMainProcessor);
  Application.Run;

end.
