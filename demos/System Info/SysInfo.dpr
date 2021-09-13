program SysInfo;

uses
  Forms,
  Dialogs,
  SysUtils,
  CWMIBase,
  CComputerSystemInfo;

{$R *.res}

var
  SInfo:TComputerSystemInfo;
  p:TComputerSystemProperties;
  Str:String;

begin
  Application.Initialize;
  Application.Run;

  SInfo := TComputerSystemInfo.Create(nil);
  sInfo.Active := True;
  p := sInfo.ComputerSystemProperties;

  Str := Str +
    'Nombre Equipo: ' + p.Caption + sLineBreak +
    'Descripción: ' + p.Description + sLineBreak +
    'Usuario: ' + p.UserName + sLineBreak +
    'Dominio: ' + p.Domain + sLineBreak +
    'Roles: ' + p.RolesAsString + sLineBreak +
    'Fabricante: ' + p.Manufacturer + sLineBreak +
    'Modelo: ' + p.Model + sLineBreak +
    'Familia: ' + p.SystemFamily + sLineBreak +
    'Tipo de sistema: ' + p.SystemType + sLineBreak;


    



  ShowMessage(Str);


end.
