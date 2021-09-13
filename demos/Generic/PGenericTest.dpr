program PGenericTest;

uses
  Forms,
  FrComponent in 'FrComponent.pas' {FrameComponent: TFrame},
  UMainTest2Col in 'UMainTest2Col.pas' {FormMain},
  FormAbout in '..\..\sources\FormAbout.pas' {FAbout},
  OI in 'OI.PAS';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Demo de la librería GLibWMI';
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
