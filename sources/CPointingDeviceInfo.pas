{
TPointingDeviceInfo  Component Version 1.1 - Suite GLib 
Copyright (©) 2009,  by Germán Estévez (Neftalí) 
 
  Representa un dispositivo de entrada de tipo puntero instalado en la máquina.
 
Utilización/Usage: 
  Basta con "soltar" el componente y activarlo.
 
  Place the component in the form and active it. 
 
  MSDN Info: 
  http://msdn.microsoft.com/en-us/library/aa394356(VS.85).aspx 
 
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
unit CPointingDeviceInfo;
 
{ 
========================================================================= 
 
  TPointingDeviceInfo.pas 
 
  Componente 
 
======================================================================== 
  Historia de las Versiones 
------------------------------------------------------------------------ 
 
  07/01/2010    * Creación. 
 
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
  TPointingDeviceProperties = class(TPersistent)
  private
    FAvailability:Integer;
    FAvailabilityAsString:string;
    FCaption:string;
    FConfigManagerErrorCode:Longword;
    FConfigManagerErrorCodeAsString:string;
    FConfigManagerUserConfig:boolean;
    FCreationClassName:string;
    FDescription:string;
    FDeviceID:string;
    FDeviceInterface:Integer;
    FDeviceInterfaceAsString:string;
    FDoubleSpeedThreshold:Longword;
    FErrorCleared:boolean;
    FErrorDescription:string;
    FHandedness:Integer;
    FHandednessAsString:string;
    FHardwareType:string;
    FInfFileName:string;
    FInfSection:string;
    FInstallDate:TDateTime;
    FIsLocked:boolean;
    FLastErrorCode:Longword;
    FManufacturer:string;
    FName:string;
    FNumberOfButtons:byte;
    FPNPDeviceID:string;
    FPointingType:Integer;
    FPointingTypeAsString:string;
    FPowerManagementCapabilities:TArrInteger;
    FPowerManagementCapabilitiesCount:integer;
    FPowerManagementCapabilitiesAsString:string;
    FPowerManagementSupported:boolean;
    FQuadSpeedThreshold:Longword;
    FResolution:Longword;
    FSampleRate:Longword;
    FStatus:string;
    FStatusInfo:Integer;
    FStatusInfoAsString:string;
    FSynch:Longword;
    FSystemCreationClassName:string;
    FSystemName:string;
  private
    function GetPowerManagementCapabilities(index: integer): Integer;
  public
    property PowerManagementCapabilities[index:integer]:Integer read GetPowerManagementCapabilities;
    property PowerManagementCapabilitiesCount:integer read FPowerManagementCapabilitiesCount stored False;
    // Obtener la propiedad <Availability> como string
    function GetAvailabilityAsString():string;
    // Obtener la propiedad <ConfigManagerErrorCode> como string
    function GetConfigManagerErrorCodeAsString():string;
    // Obtener la propiedad <DeviceInterface> como string
    function GetDeviceInterfaceAsString():string;
    // Obtener la propiedad <Handedness> como string
    function GetHandednessAsString():string;
    // Obtener la propiedad <PointingType> como string
    function GetPointingTypeAsString():string;
    // Obtener la propiedad <StatusInfo> como string
    function GetStatusInfoAsString():string;


  published
    property Availability:Integer read FAvailability write FAvailability stored False;
    property AvailabilityAsString:string read GetAvailabilityAsString  write FAvailabilityAsString stored False;
    property Caption:string read FCaption write FCaption stored False;
    property ConfigManagerErrorCode:Longword read FConfigManagerErrorCode write FConfigManagerErrorCode stored False;
    property ConfigManagerErrorCodeAsString:string read GetConfigManagerErrorCodeAsString  write FConfigManagerErrorCodeAsString stored False;
    property ConfigManagerUserConfig:boolean read FConfigManagerUserConfig write FConfigManagerUserConfig stored False;
    property CreationClassName:string read FCreationClassName write FCreationClassName stored False;
    property Description:string read FDescription write FDescription stored False;
    property DeviceID:string read FDeviceID write FDeviceID stored False;
    property DeviceInterface:Integer read FDeviceInterface write FDeviceInterface stored False;
    property DeviceInterfaceAsString:string read GetDeviceInterfaceAsString  write FDeviceInterfaceAsString stored False;
    property DoubleSpeedThreshold:Longword read FDoubleSpeedThreshold write FDoubleSpeedThreshold stored False;
    property ErrorCleared:boolean read FErrorCleared write FErrorCleared stored False;
    property ErrorDescription:string read FErrorDescription write FErrorDescription stored False;
    property Handedness:Integer read FHandedness write FHandedness stored False;
    property HandednessAsString:string read GetHandednessAsString  write FHandednessAsString stored False;
    property HardwareType:string read FHardwareType write FHardwareType stored False;
    property InfFileName:string read FInfFileName write FInfFileName stored False;
    property InfSection:string read FInfSection write FInfSection stored False;
    property InstallDate:TDateTime read FInstallDate write FInstallDate stored False;
    property IsLocked:boolean read FIsLocked write FIsLocked stored False;
    property LastErrorCode:Longword read FLastErrorCode write FLastErrorCode stored False;
    property Manufacturer:string read FManufacturer write FManufacturer stored False;
    property Name:string read FName write FName stored False;
    property NumberOfButtons:byte read FNumberOfButtons write FNumberOfButtons stored False;
    property PNPDeviceID:string read FPNPDeviceID write FPNPDeviceID stored False;
    property PointingType:Integer read FPointingType write FPointingType stored False;
    property PointingTypeAsString:string read GetPointingTypeAsString  write FPointingTypeAsString stored False;
    property PowerManagementCapabilitiesAsString:string read FPowerManagementCapabilitiesAsString write FPowerManagementCapabilitiesAsString stored False;
    property PowerManagementSupported:boolean read FPowerManagementSupported write FPowerManagementSupported stored False;
    property QuadSpeedThreshold:Longword read FQuadSpeedThreshold write FQuadSpeedThreshold stored False;
    property Resolution:Longword read FResolution write FResolution stored False;
    property SampleRate:Longword read FSampleRate write FSampleRate stored False;
    property Status:string read FStatus write FStatus stored False;
    property StatusInfo:Integer read FStatusInfo write FStatusInfo stored False;
    property StatusInfoAsString:string read GetStatusInfoAsString  write FStatusInfoAsString stored False;
    property Synch:Longword read FSynch write FSynch stored False;
    property SystemCreationClassName:string read FSystemCreationClassName write FSystemCreationClassName stored False;
    property SystemName:string read FSystemName write FSystemName stored False;
  end;
  
  //: Implementación para el acceso vía WMI a la clase Win32_PointingDevice
  TPointingDeviceInfo = class(TWMIBase)
  private
    FPointingDeviceProperties: TPointingDeviceProperties;
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
  published
    // propiedades de la PointingDevice
    property PointingDeviceProperties:TPointingDeviceProperties read FPointingDeviceProperties write FPointingDeviceProperties;
  end;

// Constantes para la propiedad Availability
const
  ENUM_STRING_AVAILABILITY_1 = 'Other';
  ENUM_STRING_AVAILABILITY_2 = 'Unknown';
  ENUM_STRING_AVAILABILITY_3 = 'Running or Full Power';
  ENUM_STRING_AVAILABILITY_4 = 'Warning';
  ENUM_STRING_AVAILABILITY_5 = 'In Test';
  ENUM_STRING_AVAILABILITY_6 = 'Not Applicable';
  ENUM_STRING_AVAILABILITY_7 = 'Power Off';
  ENUM_STRING_AVAILABILITY_8 = 'Off Line';
  ENUM_STRING_AVAILABILITY_9 = 'Off Duty';
  ENUM_STRING_AVAILABILITY_10 = 'Degraded';
  ENUM_STRING_AVAILABILITY_11 = 'Not Installed';
  ENUM_STRING_AVAILABILITY_12 = 'Install Error';
  ENUM_STRING_AVAILABILITY_13 = 'Power Save - Unknown. The device is known to be in a power save mode, but its exact status is unknown.';
  ENUM_STRING_AVAILABILITY_14 = 'Power Save - Low Power Mode. The device is in a power save state but still functioning, and may exhibit degraded performance.';
  ENUM_STRING_AVAILABILITY_15 = 'Power Save - Standby. The device is not functioning, but could be brought to full power quickly.';
  ENUM_STRING_AVAILABILITY_16 = 'Power Cycle';
  ENUM_STRING_AVAILABILITY_17 = 'Power Save - Warning. The device is in a warning state, though also in a power save mode.';



// Constantes para la propiedad ConfigManagerErrorCode
const
  ENUM_STRING_CONFIGMANAGERERRORCODE_0 = 'Device is working properly.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_1 = 'Device is not configured correctly.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_2 = 'Windows cannot load the driver for this device.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_3 = 'Driver for this device might be corrupted, or the system may be low on memory or other resources.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_4 = 'Device is not working properly. One of its drivers or the registry might be corrupted.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_5 = 'Driver for the device requires a resource that Windows cannot manage.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_6 = 'Boot configuration for the device conflicts with other devices.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_7 = 'Cannot filter.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_8 = 'Driver loader for the device is missing.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_9 = 'Device is not working properly. The controlling firmware is incorrectly reporting the resources for the device.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_10 = 'Device cannot start.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_11 = 'Device failed.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_12 = 'Device cannot find enough free resources to use.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_13 = 'Windows cannot verify the device''s resources.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_14 = 'Device cannot work properly until the computer is restarted.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_15 = 'Device is not working properly due to a possible re-enumeration problem.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_16 = 'Windows cannot identify all of the resources that the device uses.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_17 = 'Device is requesting an unknown resource type.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_18 = 'Device drivers must be reinstalled.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_19 = 'Failure using the VxD loader.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_20 = 'Registry might be corrupted.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_21 = 'System failure. If changing the device driver is ineffective, see the hardware documentation. Windows is removing the device.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_22 = 'Device is disabled.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_23 = 'System failure. If changing the device driver is ineffective, see the hardware documentation.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_24 = 'Device is not present, not working properly, or does not have all of its drivers installed.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_25 = 'Windows is still setting up the device.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_26 = 'Windows is still setting up the device.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_27 = 'Device does not have valid log configuration.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_28 = 'Device drivers are not installed.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_29 = 'Device is disabled. The device firmware did not provide the required resources.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_30 = 'Device is using an IRQ resource that another device is using.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_31 = 'Device is not working properly. Windows cannot load the required device drivers.';


// Constantes para la propiedad DeviceInterface
const
  ENUM_STRING_DEVICEINTERFACE_1 = 'Other';
  ENUM_STRING_DEVICEINTERFACE_2 = 'Unknown';
  ENUM_STRING_DEVICEINTERFACE_3 = 'Serial';
  ENUM_STRING_DEVICEINTERFACE_4 = 'PS/2';
  ENUM_STRING_DEVICEINTERFACE_5 = 'Infrared';
  ENUM_STRING_DEVICEINTERFACE_6 = 'HP-HIL';
  ENUM_STRING_DEVICEINTERFACE_7 = 'Bus Mouse';
  ENUM_STRING_DEVICEINTERFACE_8 = 'ADB (Apple Desktop Bus)';
  ENUM_STRING_DEVICEINTERFACE_160 = 'Bus Mouse DB-9';
  ENUM_STRING_DEVICEINTERFACE_161 = 'Bus Mouse Micro-DIN';
  ENUM_STRING_DEVICEINTERFACE_162 = 'USB';


// Constantes para la propiedad Handedness
const
  ENUM_STRING_HANDEDNESS_0 = 'Unknown';
  ENUM_STRING_HANDEDNESS_1 = 'Not Applicable';
  ENUM_STRING_HANDEDNESS_2 = 'Right-Handed Operation';
  ENUM_STRING_HANDEDNESS_3 = 'Left-Handed Operation';

// Constantes para la propiedad PointingType
const
  ENUM_STRING_POINTINGTYPE_1 = 'Other';
  ENUM_STRING_POINTINGTYPE_2 = 'Unknown';
  ENUM_STRING_POINTINGTYPE_3 = 'Mouse';
  ENUM_STRING_POINTINGTYPE_4 = 'Track Ball';
  ENUM_STRING_POINTINGTYPE_5 = 'Track Point';
  ENUM_STRING_POINTINGTYPE_6 = 'Glide Point';
  ENUM_STRING_POINTINGTYPE_7 = 'Touch Pad';
  ENUM_STRING_POINTINGTYPE_8 = 'Touch Screen';
  ENUM_STRING_POINTINGTYPE_9 = 'Mouse - Optical Sensor';

// Constantes para la propiedad StatusInfo
const
  ENUM_STRING_STATUSINFO_1 = 'Other';
  ENUM_STRING_STATUSINFO_2 = 'Unknown';
  ENUM_STRING_STATUSINFO_3 = 'Enabled';
  ENUM_STRING_STATUSINFO_4 = 'Disabled';
  ENUM_STRING_STATUSINFO_5 = 'Not Applicable';

//========================================================================= 
// 
// I M P L E M E N T A T I O N 
// 
//========================================================================= 
implementation 
  
uses 
  {Generales} Forms, Types, Windows, SysUtils, 
  {GLib} UProcedures, UConstantes, Dialogs; 
 
  
{ TPointingDevice } 
{-------------------------------------------------------------------------------} 
// Limpiar las propiedades
procedure TPointingDeviceInfo.ClearProps;
begin

  Self.PointingDeviceProperties.FAvailability := 0;
  Self.PointingDeviceProperties.FCaption := STR_EMPTY;
  Self.PointingDeviceProperties.FConfigManagerErrorCode := 0;
  Self.PointingDeviceProperties.FConfigManagerUserConfig := False;
  Self.PointingDeviceProperties.FCreationClassName := STR_EMPTY;
  Self.PointingDeviceProperties.FDescription := STR_EMPTY;
  Self.PointingDeviceProperties.FDeviceID := STR_EMPTY;
  Self.PointingDeviceProperties.FDeviceInterface := 0;
  Self.PointingDeviceProperties.FDoubleSpeedThreshold := 0;
  Self.PointingDeviceProperties.FErrorCleared := False;
  Self.PointingDeviceProperties.FErrorDescription := STR_EMPTY;
  Self.PointingDeviceProperties.FHandedness := 0;
  Self.PointingDeviceProperties.FHardwareType := STR_EMPTY;
  Self.PointingDeviceProperties.FInfFileName := STR_EMPTY;
  Self.PointingDeviceProperties.FInfSection := STR_EMPTY;
  Self.PointingDeviceProperties.FInstallDate := 0;
  Self.PointingDeviceProperties.FIsLocked := False;
  Self.PointingDeviceProperties.FLastErrorCode := 0;
  Self.PointingDeviceProperties.FManufacturer := STR_EMPTY;
  Self.PointingDeviceProperties.FName := STR_EMPTY;
  Self.PointingDeviceProperties.FNumberOfButtons := 0;
  Self.PointingDeviceProperties.FPNPDeviceID := STR_EMPTY;
  Self.PointingDeviceProperties.FPointingType := 0;
  Self.PointingDeviceProperties.FPowerManagementCapabilitiesCount := 0;
  Self.PointingDeviceProperties.FPowerManagementCapabilitiesAsString := STR_EMPTY;
  SetLength(Self.PointingDeviceProperties.FPowerManagementCapabilities,0);
  Self.PointingDeviceProperties.FPowerManagementSupported := False;
  Self.PointingDeviceProperties.FQuadSpeedThreshold := 0;
  Self.PointingDeviceProperties.FResolution := 0;
  Self.PointingDeviceProperties.FSampleRate := 0;
  Self.PointingDeviceProperties.FStatus := STR_EMPTY;
  Self.PointingDeviceProperties.FStatusInfo := 0;
  Self.PointingDeviceProperties.FSynch := 0;
  Self.PointingDeviceProperties.FSystemCreationClassName := STR_EMPTY;
  Self.PointingDeviceProperties.FSystemName := STR_EMPTY;

end;
//: Constructor del componente 
constructor TPointingDeviceInfo.Create(AOwner: TComponent); 
begin 
  inherited; 
 
  Self.FPointingDeviceProperties := TPointingDeviceProperties.Create(); 
  Self.MSDNHelp := 'http://msdn.microsoft.com/en-us/library/aa394356(VS.85).aspx';
end; 
 
// destructor del componente 
destructor TPointingDeviceInfo.Destroy(); 
begin 
 
  // liberar 
  FreeAndNil(Self.FPointingDeviceProperties); 
 
  inherited; 
end; 
 
// Obtener la clase 
function TPointingDeviceInfo.GetWMIClass(): string; 
begin 
  Result := 'Win32_PointingDevice'
end; 
 
// Obtener Root 
function TPointingDeviceInfo.GetWMIRoot(): string; 
begin 
  Result := STR_CIM2_ROOT; 
end; 
 
// Active 
procedure TPointingDeviceInfo.SetActive(const Value: Boolean); 
begin 
  // método heredado 
  inherited; 
end; 
  
// Acceso a los elementos de la propiedad <PowerManagementCapabilities>
function TPointingDeviceProperties.GetPowerManagementCapabilities(index: integer):Integer;
begin
  if (index >= Self.FPowerManagementCapabilitiesCount) then begin
    Index := Self.FPowerManagementCapabilitiesCount - 1;
  end;
  Result := Self.FPowerManagementCapabilities[index];
end;
 
//: Rellenar las propiedades del componente.
procedure TPointingDeviceInfo.FillProperties(AIndex: integer);
var
  v:variant;
  vNull:boolean;
  vp:TPointingDeviceProperties;
begin

  // Llamar al heredado (importante)
  inherited;

  // Rellenar propiedades...
  vp := Self.PointingDeviceProperties;

  GetWMIPropertyValue(Self, 'Availability', v, vNull);
  vp.FAvailability := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Caption', v, vNull);
  vp.FCaption := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'ConfigManagerErrorCode', v, vNull);
  vp.FConfigManagerErrorCode := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'ConfigManagerUserConfig', v, vNull);
  vp.FConfigManagerUserConfig := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'CreationClassName', v, vNull);
  vp.FCreationClassName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Description', v, vNull);
  vp.FDescription := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'DeviceID', v, vNull);
  vp.FDeviceID := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'DeviceInterface', v, vNull);
  vp.FDeviceInterface := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'DoubleSpeedThreshold', v, vNull);
  vp.FDoubleSpeedThreshold := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'ErrorCleared', v, vNull);
  vp.FErrorCleared := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'ErrorDescription', v, vNull);
  vp.FErrorDescription := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Handedness', v, vNull);
  vp.FHandedness := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'HardwareType', v, vNull);
  vp.FHardwareType := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'InfFileName', v, vNull);
  vp.FInfFileName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'InfSection', v, vNull);
  vp.FInfSection := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'InstallDate', v, vNull);
  if not vNull then begin
    vp.FInstallDate := EncodeDate(StrToInt(Copy(v, 1, 4)),StrToInt(Copy(v, 5, 2)),StrToInt(Copy(v, 7, 2)));
  end;

  GetWMIPropertyValue(Self, 'IsLocked', v, vNull);
  vp.FIsLocked := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'LastErrorCode', v, vNull);
  vp.FLastErrorCode := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Manufacturer', v, vNull);
  vp.FManufacturer := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Name', v, vNull);
  vp.FName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'NumberOfButtons', v, vNull);
  vp.FNumberOfButtons := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'PNPDeviceID', v, vNull);
  vp.FPNPDeviceID := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'PointingType', v, vNull);
  vp.FPointingType := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'PowerManagementCapabilities', v, vNull);
  vp.FPowerManagementCapabilitiesAsString := VariantStrValue(v, vNull);
//  vp.FPowerManagementCapabilities := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'PowerManagementSupported', v, vNull);
  vp.FPowerManagementSupported := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'QuadSpeedThreshold', v, vNull);
  vp.FQuadSpeedThreshold := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Resolution', v, vNull);
  vp.FResolution := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'SampleRate', v, vNull);
  vp.FSampleRate := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Status', v, vNull);
  vp.FStatus := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'StatusInfo', v, vNull);
  vp.FStatusInfo := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Synch', v, vNull);
  vp.FSynch := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'SystemCreationClassName', v, vNull);
  vp.FSystemCreationClassName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'SystemName', v, vNull);
  vp.FSystemName := VariantStrValue(v, vNull);

end;


// Obtener la propiedad como string
function TPointingDeviceProperties.GetAvailabilityAsString():string;
begin
  case FAvailability of
    1: Result := ENUM_STRING_AVAILABILITY_1;
    2: Result := ENUM_STRING_AVAILABILITY_2;
    3: Result := ENUM_STRING_AVAILABILITY_3;
    4: Result := ENUM_STRING_AVAILABILITY_4;
    5: Result := ENUM_STRING_AVAILABILITY_5;
    6: Result := ENUM_STRING_AVAILABILITY_6;
    7: Result := ENUM_STRING_AVAILABILITY_7;
    8: Result := ENUM_STRING_AVAILABILITY_8;
    9: Result := ENUM_STRING_AVAILABILITY_9;
    10: Result := ENUM_STRING_AVAILABILITY_10;
    11: Result := ENUM_STRING_AVAILABILITY_11;
    12: Result := ENUM_STRING_AVAILABILITY_12;
    13: Result := ENUM_STRING_AVAILABILITY_13;
    14: Result := ENUM_STRING_AVAILABILITY_14;
    15: Result := ENUM_STRING_AVAILABILITY_15;
    16: Result := ENUM_STRING_AVAILABILITY_16;
    17: Result := ENUM_STRING_AVAILABILITY_17;
  else
    Result := STR_EMPTY;
  end;
end;



// Obtener la propiedad como string
function TPointingDeviceProperties.GetConfigManagerErrorCodeAsString():string;
begin
  case FConfigManagerErrorCode of
    0: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_0;
    1: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_1;
    2: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_2;
    3: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_3;
    4: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_4;
    5: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_5;
    6: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_6;
    7: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_7;
    8: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_8;
    9: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_9;
    10: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_10;
    11: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_11;
    12: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_12;
    13: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_13;
    14: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_14;
    15: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_15;
    16: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_16;
    17: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_17;
    18: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_18;
    19: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_19;
    20: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_20;
    21: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_21;
    22: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_22;
    23: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_23;
    24: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_24;
    25: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_25;
    26: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_26;
    27: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_27;
    28: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_28;
    29: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_29;
    30: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_30;
    31: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_31;
  else
    Result := STR_EMPTY;
  end;
end;


// Obtener la propiedad como string
function TPointingDeviceProperties.GetDeviceInterfaceAsString():string;
begin
  case FDeviceInterface of
    1: Result := ENUM_STRING_DEVICEINTERFACE_1;
    2: Result := ENUM_STRING_DEVICEINTERFACE_2;
    3: Result := ENUM_STRING_DEVICEINTERFACE_3;
    4: Result := ENUM_STRING_DEVICEINTERFACE_4;
    5: Result := ENUM_STRING_DEVICEINTERFACE_5;
    6: Result := ENUM_STRING_DEVICEINTERFACE_6;
    7: Result := ENUM_STRING_DEVICEINTERFACE_7;
    8: Result := ENUM_STRING_DEVICEINTERFACE_8;
    160: Result := ENUM_STRING_DEVICEINTERFACE_160;
    161: Result := ENUM_STRING_DEVICEINTERFACE_161;
    162: Result := ENUM_STRING_DEVICEINTERFACE_162;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TPointingDeviceProperties.GetHandednessAsString():string;
begin
  case FHandedness of
    0: Result := ENUM_STRING_HANDEDNESS_0;
    1: Result := ENUM_STRING_HANDEDNESS_1;
    2: Result := ENUM_STRING_HANDEDNESS_2;
    3: Result := ENUM_STRING_HANDEDNESS_3;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TPointingDeviceProperties.GetPointingTypeAsString():string;
begin
  case FPointingType of
    1: Result := ENUM_STRING_POINTINGTYPE_1;
    2: Result := ENUM_STRING_POINTINGTYPE_2;
    3: Result := ENUM_STRING_POINTINGTYPE_3;
    4: Result := ENUM_STRING_POINTINGTYPE_4;
    5: Result := ENUM_STRING_POINTINGTYPE_5;
    6: Result := ENUM_STRING_POINTINGTYPE_6;
    7: Result := ENUM_STRING_POINTINGTYPE_7;
    8: Result := ENUM_STRING_POINTINGTYPE_8;
    9: Result := ENUM_STRING_POINTINGTYPE_9;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TPointingDeviceProperties.GetStatusInfoAsString():string;
begin
  case FStatusInfo of
    1: Result := ENUM_STRING_STATUSINFO_1;
    2: Result := ENUM_STRING_STATUSINFO_2;
    3: Result := ENUM_STRING_STATUSINFO_3;
    4: Result := ENUM_STRING_STATUSINFO_4;
    5: Result := ENUM_STRING_STATUSINFO_5;
  else
    Result := STR_EMPTY;
  end;
end;

end.

