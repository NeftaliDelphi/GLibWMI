unit fMain;

interface

{$I .\..\package\jedi.inc}

uses
 {$IFDEF DELPHIX_TOKYO_UP}
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  {$ELSE}
  Forms, Classes, Controls, StdCtrls, SysUtils, Dialogs,
  {$ENDIF}
  CWMIBase, COperatingSystemInfo, CBIOSInfo, CBatteryInfo;

type
  TFormMain = class(TForm)
    OSInfo: TOperatingSystemInfo;
    mmInfo: TMemo;
    procedure OSInfoAfterActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.dfm}

procedure TFormMain.FormShow(Sender: TObject);
begin
  OSInfo.Active := True;
end;

procedure TFormMain.OSInfoAfterActivate(Sender: TObject);
var
  str:String;
begin
  Str := Str +
    'Versi�n del Sistema operativo: ' + OSInfo.OperatingSystemProperties.Caption + sLineBreak +
    'N�mero de Build:               ' + OSInfo.OperatingSystemProperties.BuildNumber + sLineBreak +
    'Arquitectura:                  ' + OSInfo.OperatingSystemProperties.OSArchitecture + sLineBreak +
    'Fabricante:                    ' + OSInfo.OperatingSystemProperties.Manufacturer + sLineBreak +
    'Lenguage del sistema:          ' + OSInfo.OperatingSystemProperties.MUILanguagesAsString + sLineBreak +
    'N�mero de serie:               ' + OSInfo.OperatingSystemProperties.SerialNumber + sLineBreak +
    'Fecha de Instalaci�n:          ' + DateTimeToStr(OSInfo.OperatingSystemProperties.InstallDate) + sLineBreak +
    'Fecha �ltimo arranque:         ' + DateTimeToStr(OSInfo.OperatingSystemProperties.LastBootUpTime) + sLineBreak +
    'Unidad de Instalaci�n:         ' + OSInfo.OperatingSystemProperties.SystemDrive + sLineBreak +
    'Directorio de sistema:         ' + OSInfo.OperatingSystemProperties.SystemDirectory + sLineBreak +
    'Directorio de instalaci�n:     ' + OSInfo.OperatingSystemProperties.WindowsDirectory;

  mmInfo.Lines.Text := Str;
  ShowMessage(Str);
end;

end.
