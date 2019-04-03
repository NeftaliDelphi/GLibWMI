{
TServiceInfo  Component Version 1.1 - Suite GLib 
Copyright (©) 2009,  by Germán Estévez (Neftalí) 
 
  Representa los servicios en un sistema ejecutando Windows.
 
Utilización/Usage: 
  Basta con "soltar" el componente y activarlo.
 
  Place the component in the form and active it. 
 
  MSDN Info: 
  http://msdn.microsoft.com/en-us/library/aa394418(VS.85).aspx 
 
========================================================================= 
IMPORTANTE PROGRAMADORES: Por favor, si tienes comentarios, mejoras, ampliaciones, 
  errores y/o cualquier otro tipo de sugerencia envíame un mail a: 
  german_ral@hotmail.com 
 
IMPORTANT PROGRAMMERS: please, if you have comments, improvements, enlargements, 
errors and/or any another type of suggestion send a mail to: 
german_ral@hotmail.com 
========================================================================= 
 
@author Germán Estévez (Neftalí) 
@web  http://neftali.clubDelphi.com   -  http://neftali-mirror.site11.com/
@cat Package GLib 
} 
unit CServiceInfo;
 
{ 
========================================================================= 
 
  TServiceInfo.pas 
 
  Componente 
 
======================================================================== 
  Historia de las Versiones 
------------------------------------------------------------------------ 
 
  08/01/2010    * Creación. 
 
========================================================================= 
 
  Errores detectados no corregidos 
 
========================================================================= 
} 
 
//========================================================================= 
// 
// I N T E R F A C E 
// 
//========================================================================= 
interface 
 
uses
  Classes, Controls, CWMIBase; 
 
type 
  //: Clase para definir las propiedades del componente.
  TServiceProperties = class(TPersistent)
  private
    FAcceptPause:boolean;
    FAcceptStop:boolean;
    FCaption:string;
    FCheckPoint:Longword;
    FCreationClassName:string;
    FDescription:string;
    FDesktopInteract:boolean;
    FDisplayName:string;
    FErrorControl:string;
    FExitCode:Longword;
    FInstallDate:TDateTime;
    FName:string;
    FPathName:string;
    FProcessId:Longword;
    FServiceSpecificExitCode:Longword;
    FServiceType:string;
    FStarted:boolean;
    FStartMode:string;
    FStartName:string;
    FState:string;
    FStatus:string;
    FSystemCreationClassName:string;
    FSystemName:string;
    FTagId:Longword;
    FWaitHint:Longword;
  private
  public
  published
    property AcceptPause:boolean read FAcceptPause write FAcceptPause stored False;
    property AcceptStop:boolean read FAcceptStop write FAcceptStop stored False;
    property Caption:string read FCaption write FCaption stored False;
    property CheckPoint:Longword read FCheckPoint write FCheckPoint stored False;
    property CreationClassName:string read FCreationClassName write FCreationClassName stored False;
    property Description:string read FDescription write FDescription stored False;
    property DesktopInteract:boolean read FDesktopInteract write FDesktopInteract stored False;
    property DisplayName:string read FDisplayName write FDisplayName stored False;
    property ErrorControl:string read FErrorControl write FErrorControl stored False;
    property ExitCode:Longword read FExitCode write FExitCode stored False;
    property InstallDate:TDateTime read FInstallDate write FInstallDate stored False;
    property Name:string read FName write FName stored False;
    property PathName:string read FPathName write FPathName stored False;
    property ProcessId:Longword read FProcessId write FProcessId stored False;
    property ServiceSpecificExitCode:Longword read FServiceSpecificExitCode write FServiceSpecificExitCode stored False;
    property ServiceType:string read FServiceType write FServiceType stored False;
    property Started:boolean read FStarted write FStarted stored False;
    property StartMode:string read FStartMode write FStartMode stored False;
    property StartName:string read FStartName write FStartName stored False;
    property State:string read FState write FState stored False;
    property Status:string read FStatus write FStatus stored False;
    property SystemCreationClassName:string read FSystemCreationClassName write FSystemCreationClassName stored False;
    property SystemName:string read FSystemName write FSystemName stored False;
    property TagId:Longword read FTagId write FTagId stored False;
    property WaitHint:Longword read FWaitHint write FWaitHint stored False;
  end;
  
  //: Implementación para el acceso vía WMI a la clase Win32_Service
  TServiceInfo = class(TWMIBase)
  private
    FServiceProperties: TServiceProperties;
  protected
    //: Rellenar las propiedades.
    procedure FillProperties(AIndex:integer); override;
    // propiedad Active
    procedure SetActive(const Value: Boolean); override;
    //: Clase para el componente.
    function GetWMIClass():string; override;
    //: Obtener el root.
    function GetWMIRoot():string; override;
    //: Limpiar las propiedades
    procedure ClearProps(); override;

  public
    // redefinido el constructor
    constructor Create(AOwner: TComponent); override;
    //: destructor
    destructor Destroy; override;

    // Obtener <ErrorControl> como string
    function GetErrorControlAsString(FErrorControl:integer):string;    
    //: Método para Terminar un proceso y todos sus threads.
    function InterrogateService(AInstanceProp:string;
                                AInstanceValue:Variant):integer;
    //: Método para poner en marcha un servicio.
    function StartService(AInstanceProp:string;
                          AInstanceValue:Variant):integer;
    //: Método para parar un servicio.
    function StopService(AInstanceProp:string;
                         AInstanceValue:Variant):integer;
    //: Método para parusar un servicio.
    function PauseService(AInstanceProp:string;
                         AInstanceValue:Variant):integer;
    //: Método para reanudar un servicio.
    function ResumeService(AInstanceProp:string;
                           AInstanceValue:Variant):integer;
    //: Método para cambiar la forma de iniciar un servicio.
    function ChangeStartModeService(AInstanceProp:string;
                                    AInstanceValue:Variant;
                                    StartMode:string):integer;

  published
    // propiedades de la Service
    property ServiceProperties:TServiceProperties read FServiceProperties write FServiceProperties;
  end;

// Constantes para la propiedad ErrorControl
const
  ENUM_STRING_ERRORCONTROL_0 = 'Success';
  ENUM_STRING_ERRORCONTROL_1 = 'Not Supported';
  ENUM_STRING_ERRORCONTROL_2 = 'Access Denied';
  ENUM_STRING_ERRORCONTROL_3 = 'Dependent Services Running';
  ENUM_STRING_ERRORCONTROL_4 = 'Invalid Service Control';
  ENUM_STRING_ERRORCONTROL_5 = 'Service Cannot Accept Control';
  ENUM_STRING_ERRORCONTROL_6 = 'Service Not Active';
  ENUM_STRING_ERRORCONTROL_7 = 'Service Request Timeout';
  ENUM_STRING_ERRORCONTROL_8 = 'Unknown Failure';
  ENUM_STRING_ERRORCONTROL_9 = 'Path Not Found';
  ENUM_STRING_ERRORCONTROL_10 = 'Service Already Running';
  ENUM_STRING_ERRORCONTROL_11 = 'Service Database Locked';
  ENUM_STRING_ERRORCONTROL_12 = 'Service Dependency Deleted';
  ENUM_STRING_ERRORCONTROL_13 = 'Service Dependency Failure';
  ENUM_STRING_ERRORCONTROL_14 = 'Service Disabled';
  ENUM_STRING_ERRORCONTROL_15 = 'Service Logon Failure';
  ENUM_STRING_ERRORCONTROL_16 = 'Service Marked For Deletion';
  ENUM_STRING_ERRORCONTROL_17 = 'Service No Thread';
  ENUM_STRING_ERRORCONTROL_18 = 'Status Circular Dependency';
  ENUM_STRING_ERRORCONTROL_19 = 'Status Duplicate Name';
  ENUM_STRING_ERRORCONTROL_20 = 'Status Invalid Name';
  ENUM_STRING_ERRORCONTROL_21 = 'Status Invalid Parameter';
  ENUM_STRING_ERRORCONTROL_22 = 'Status Invalid Service Account';
  ENUM_STRING_ERRORCONTROL_23 = 'Status Service Exists';
  ENUM_STRING_ERRORCONTROL_24 = 'Service Already Paused';

//=========================================================================
// 
// I M P L E M E N T A T I O N 
// 
//========================================================================= 
implementation 
  
uses
  {Generales} Forms, Types, Windows, SysUtils, WbemScripting_TLB,
  {GLib} UProcedures, UConstantes, Dialogs;
 
  
{ TService } 
{-------------------------------------------------------------------------------} 
// Limpiar las propiedades
procedure TServiceInfo.ClearProps;
begin

  Self.ServiceProperties.FAcceptPause := False;
  Self.ServiceProperties.FAcceptStop := False;
  Self.ServiceProperties.FCaption := STR_EMPTY;
  Self.ServiceProperties.FCheckPoint := 0;
  Self.ServiceProperties.FCreationClassName := STR_EMPTY;
  Self.ServiceProperties.FDescription := STR_EMPTY;
  Self.ServiceProperties.FDesktopInteract := False;
  Self.ServiceProperties.FDisplayName := STR_EMPTY;
  Self.ServiceProperties.FErrorControl := STR_EMPTY;
  Self.ServiceProperties.FExitCode := 0;
  Self.ServiceProperties.FInstallDate := 0;
  Self.ServiceProperties.FName := STR_EMPTY;
  Self.ServiceProperties.FPathName := STR_EMPTY;
  Self.ServiceProperties.FProcessId := 0;
  Self.ServiceProperties.FServiceSpecificExitCode := 0;
  Self.ServiceProperties.FServiceType := STR_EMPTY;
  Self.ServiceProperties.FStarted := False;
  Self.ServiceProperties.FStartMode := STR_EMPTY;
  Self.ServiceProperties.FStartName := STR_EMPTY;
  Self.ServiceProperties.FState := STR_EMPTY;
  Self.ServiceProperties.FStatus := STR_EMPTY;
  Self.ServiceProperties.FSystemCreationClassName := STR_EMPTY;
  Self.ServiceProperties.FSystemName := STR_EMPTY;
  Self.ServiceProperties.FTagId := 0;
  Self.ServiceProperties.FWaitHint := 0;

end;
//: Constructor del componente 
constructor TServiceInfo.Create(AOwner: TComponent); 
begin 
  inherited; 
 
  Self.FServiceProperties := TServiceProperties.Create(); 
  Self.MSDNHelp := 'http://msdn.microsoft.com/en-us/library/aa394418(VS.85).aspx';
end; 
 
// destructor del componente 
destructor TServiceInfo.Destroy(); 
begin 
 
  // liberar 
  FreeAndNil(Self.FServiceProperties); 
 
  inherited; 
end; 
 
// Obtener la clase 
function TServiceInfo.GetWMIClass(): string; 
begin 
  Result := WIN32_SERVICE_CLASS;
end; 
 
// Obtener Root 
function TServiceInfo.GetWMIRoot(): string; 
begin 
  Result := STR_CIM2_ROOT; 
end; 
 
// Active 
procedure TServiceInfo.SetActive(const Value: Boolean); 
begin 
  // método heredado 
  inherited; 
end; 
//: Rellenar las propiedades del componente.
procedure TServiceInfo.FillProperties(AIndex: integer);
var
  v:variant;
  vNull:boolean;
  vp:TServiceProperties;
begin

  // Llamar al heredado (importante)
  inherited;

  // Rellenar propiedades...
  vp := Self.ServiceProperties;

  GetWMIPropertyValue(Self, 'AcceptPause', v, vNull);
  vp.FAcceptPause := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'AcceptStop', v, vNull);
  vp.FAcceptStop := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'Caption', v, vNull);
  vp.FCaption := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'CheckPoint', v, vNull);
  vp.FCheckPoint := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'CreationClassName', v, vNull);
  vp.FCreationClassName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Description', v, vNull);
  vp.FDescription := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'DesktopInteract', v, vNull);
  vp.FDesktopInteract := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'DisplayName', v, vNull);
  vp.FDisplayName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'ErrorControl', v, vNull);
  vp.FErrorControl := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'ExitCode', v, vNull);
  vp.FExitCode := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'InstallDate', v, vNull);
  if not vNull then begin
    vp.FInstallDate := EncodeDate(StrToInt(Copy(v, 1, 4)),StrToInt(Copy(v, 5, 2)),StrToInt(Copy(v, 7, 2)));
  end;

  GetWMIPropertyValue(Self, 'Name', v, vNull);
  vp.FName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'PathName', v, vNull);
  vp.FPathName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'ProcessId', v, vNull);
  vp.FProcessId := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'ServiceSpecificExitCode', v, vNull);
  vp.FServiceSpecificExitCode := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'ServiceType', v, vNull);
  vp.FServiceType := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Started', v, vNull);
  vp.FStarted := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'StartMode', v, vNull);
  vp.FStartMode := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'StartName', v, vNull);
  vp.FStartName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'State', v, vNull);
  vp.FState := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Status', v, vNull);
  vp.FStatus := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'SystemCreationClassName', v, vNull);
  vp.FSystemCreationClassName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'SystemName', v, vNull);
  vp.FSystemName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'TagId', v, vNull);
  vp.FTagId := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'WaitHint', v, vNull);
  vp.FWaitHint := VariantIntegerValue(v, vNull);

end;

function TServiceInfo.InterrogateService(AInstanceProp: string;
                                         AInstanceValue: Variant): integer;
var
  arr:TArrVariant;
  v:variant;
begin

  SetLength(arr, 0);

  // Ejecutar el proceso
  ExecuteClassMethod(Self,
                     AInstanceProp, AInstanceValue,
                     'InterrogateService',
                     [],
                     arr,
                     [],
                     [], v);
  Result := v;

end;

//: Método para poner en marcha un servicio.
function TServiceInfo.StartService(AInstanceProp: string; AInstanceValue: Variant): integer;
var
  arr:TArrVariant;
  v:variant;
begin
  SetLength(arr, 0);
  // Ejecutar el proceso
  ExecuteClassMethod(Self,
                     AInstanceProp, AInstanceValue,
                     'StartService',
                     [],
                     arr,
                     [],
                     [], v);
  Result := v;
end;

//: Método para parar un servicio.
function TServiceInfo.StopService(AInstanceProp:string;
                                  AInstanceValue:Variant):integer;
var
  arr:TArrVariant;
  v:variant;
begin
  SetLength(arr, 0);
  // Ejecutar el proceso
  ExecuteClassMethod(Self,
                     AInstanceProp, AInstanceValue,
                     'StopService',
                     [],
                     arr,
                     [],
                     [], v);
  Result := v;
end;

//: Método para Pausar un servicio.
function TServiceInfo.PauseService(AInstanceProp:string;
                                  AInstanceValue:Variant):integer;
var
  arr:TArrVariant;
  v:variant;
begin
  SetLength(arr, 0);
  // Ejecutar el proceso
  ExecuteClassMethod(Self,
                     AInstanceProp, AInstanceValue,
                     'PauseService',
                     [],
                     arr,
                     [],
                     [], v);
  Result := v;
end;

//: Método para reanudar un servicio.
function TServiceInfo.ResumeService(AInstanceProp:string;
                                    AInstanceValue:Variant):integer;
var
  arr:TArrVariant;
  v:variant;
begin
  SetLength(arr, 0);
  // Ejecutar el proceso
  ExecuteClassMethod(Self,
                     AInstanceProp, AInstanceValue,
                     'ResumeService',
                     [],
                     arr,
                     [],
                     [], v);
  Result := v;
end;

//: Método para cambiar la forma de iniciar un servicio.
function TServiceInfo.ChangeStartModeService(AInstanceProp: string;
                                             AInstanceValue: Variant;
                                             StartMode: string): integer;
var
  arr:TArrVariant;
  v:variant;
begin
  SetLength(arr, 1);
  arr[0] := StartMode;
  // Ejecutar el proceso
  ExecuteClassMethod(Self,
                     AInstanceProp, AInstanceValue,
                     'ChangeStartMode',
                     ['StartMode'],
                     arr,
                     [ptIn],
                     [wbemCimtypeString], v);
  Result := v;

end;



function TServiceInfo.GetErrorControlAsString(FErrorControl:integer): string;
begin
  case FErrorControl of
    0: Result := ENUM_STRING_ERRORCONTROL_0;
    1: Result := ENUM_STRING_ERRORCONTROL_1;
    2: Result := ENUM_STRING_ERRORCONTROL_2;
    3: Result := ENUM_STRING_ERRORCONTROL_3;
    4: Result := ENUM_STRING_ERRORCONTROL_4;
    5: Result := ENUM_STRING_ERRORCONTROL_5;
    6: Result := ENUM_STRING_ERRORCONTROL_6;
    7: Result := ENUM_STRING_ERRORCONTROL_7;
    8: Result := ENUM_STRING_ERRORCONTROL_8;
    9: Result := ENUM_STRING_ERRORCONTROL_9;
    10: Result := ENUM_STRING_ERRORCONTROL_10;
    11: Result := ENUM_STRING_ERRORCONTROL_11;
    12: Result := ENUM_STRING_ERRORCONTROL_12;
    13: Result := ENUM_STRING_ERRORCONTROL_13;
    14: Result := ENUM_STRING_ERRORCONTROL_14;
    15: Result := ENUM_STRING_ERRORCONTROL_15;
    16: Result := ENUM_STRING_ERRORCONTROL_16;
    17: Result := ENUM_STRING_ERRORCONTROL_17;
    18: Result := ENUM_STRING_ERRORCONTROL_18;
    19: Result := ENUM_STRING_ERRORCONTROL_19;
    20: Result := ENUM_STRING_ERRORCONTROL_20;
    21: Result := ENUM_STRING_ERRORCONTROL_21;
    22: Result := ENUM_STRING_ERRORCONTROL_22;
    23: Result := ENUM_STRING_ERRORCONTROL_23;
    24: Result := ENUM_STRING_ERRORCONTROL_24;
  else
    Result := STR_EMPTY;
  end;
end;


end.

