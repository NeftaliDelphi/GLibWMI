{
TNetworkAdapterInfo  Component Version 1.9b - Suite GLib 
Copyright (©) 2009,  by Germán Estévez (Neftalí) 
 
  Representa conexiones de red activas en un entorno windows.
 
Utilización/Usage: 
  Basta con "soltar" el componente y activarlo. 
 
  Place the component in the form and active it. 
 
  MSDN Info: 
  http://msdn.microsoft.com/en-us/library/aa394216(VS.85).aspx 
 
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
unit CNetworkAdapterInfo; 
 
{ 
========================================================================= 
 
  TNetworkAdapterInfo.pas 
 
  Componente 
 
======================================================================== 
  Historia de las Versiones 
------------------------------------------------------------------------ 
 
  19/01/2010    * Creación.
  30/07/2010    * Añadidas nuevas propiedades.
 
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
  TNetworkAdapterProperties = class(TPersistent)
  private
    FAdapterType:string;
    FAdapterTypeID:Integer;
    FAdapterTypeIDAsString:string;
    FAutoSense:boolean;
    FAvailability:Integer;
    FAvailabilityAsString:string;
    FCaption:string;
    FConfigManagerErrorCode:Longword;
    FConfigManagerErrorCodeAsString:string;
    FConfigManagerUserConfig:boolean;
    FCreationClassName:string;
    FDescription:string;
    FDeviceID:string;
    FErrorCleared:boolean;
    FErrorDescription:string;
    FGUID:string;
    FIndex:Longword;
    FInstallDate:TDateTime;
    FInstalled:boolean;
    FInterfaceIndex:Longword;
    FLastErrorCode:Longword;
    FMACAddress:string;
    FManufacturer:string;
    FMaxNumberControlled:Longword;
    FMaxSpeed:Int64;
    FName:string;
    FNetConnectionID:string;
    FNetConnectionStatus:Integer;
    FNetConnectionStatusAsString:string;
    FNetEnabled:boolean;
    FNetworkAddresses:TArrString;
    FNetworkAddressesCount:integer;
    FNetworkAddressesAsString:string;
    FPermanentAddress:string;
    FPhysicalAdapter:boolean;
    FPNPDeviceID:string;
    FPowerManagementCapabilities:TArrInteger;
    FPowerManagementCapabilitiesCount:integer;
    FPowerManagementCapabilitiesAsString:string;
    FPowerManagementSupported:boolean;
    FProductName:string;
    FServiceName:string;
    FSpeed:Int64;
    FStatus:string;
    FStatusInfo:Integer;
    FStatusInfoAsString:string;
    FSystemCreationClassName:string;
    FSystemName:string;
    FTimeOfLastReset:TDateTime;
  private
    function GetNetworkAddresses(index: integer): string;
    function GetPowerManagementCapabilities(index: integer): Integer;
  public
    property NetworkAddresses[index:integer]:string read GetNetworkAddresses;
    property NetworkAddressesCount:integer read FNetworkAddressesCount stored False;
    property PowerManagementCapabilities[index:integer]:Integer read GetPowerManagementCapabilities;
    property PowerManagementCapabilitiesCount:integer read FPowerManagementCapabilitiesCount stored False;

    // Obtener la propiedad <StatusInfo> como string
    function GetStatusInfoAsString():string;

    // Obtener la propiedad <NetConnectionStatus> como string
    function GetNetConnectionStatusAsString():string;

    // Obtener la propiedad <ConfigManagerErrorCode> como string
    function GetConfigManagerErrorCodeAsString():string;

    // Obtener la propiedad <Availability> como string
    function GetAvailabilityAsString():string;

    // Obtener la propiedad <AdapterTypeID> como string
    function GetAdapterTypeIDAsString():string;

// {GET_ENUM}

  published
    property AdapterType:string read FAdapterType write FAdapterType stored False;
    property AdapterTypeID:Integer read FAdapterTypeID write FAdapterTypeID stored False;
    property AdapterTypeIDAsString:string read GetAdapterTypeIDAsString  write FAdapterTypeIDAsString stored False;
    property AutoSense:boolean read FAutoSense write FAutoSense stored False;
    property Availability:Integer read FAvailability write FAvailability stored False;
    property AvailabilityAsString:string read GetAvailabilityAsString  write FAvailabilityAsString stored False;
    property Caption:string read FCaption write FCaption stored False;
    property ConfigManagerErrorCode:Longword read FConfigManagerErrorCode write FConfigManagerErrorCode stored False;
    property ConfigManagerErrorCodeAsString:string read GetConfigManagerErrorCodeAsString  write FConfigManagerErrorCodeAsString stored False;
    property ConfigManagerUserConfig:boolean read FConfigManagerUserConfig write FConfigManagerUserConfig stored False;
    property CreationClassName:string read FCreationClassName write FCreationClassName stored False;
    property Description:string read FDescription write FDescription stored False;
    property DeviceID:string read FDeviceID write FDeviceID stored False;
    property ErrorCleared:boolean read FErrorCleared write FErrorCleared stored False;
    property ErrorDescription:string read FErrorDescription write FErrorDescription stored False;
    property GUID:string read FGUID write FGUID stored False;
    property Index:Longword read FIndex write FIndex stored False;
    property InstallDate:TDateTime read FInstallDate write FInstallDate stored False;
    property Installed:boolean read FInstalled write FInstalled stored False;
    property InterfaceIndex:Longword read FInterfaceIndex write FInterfaceIndex stored False;
    property LastErrorCode:Longword read FLastErrorCode write FLastErrorCode stored False;
    property MACAddress:string read FMACAddress write FMACAddress stored False;
    property Manufacturer:string read FManufacturer write FManufacturer stored False;
    property MaxNumberControlled:Longword read FMaxNumberControlled write FMaxNumberControlled stored False;
    property MaxSpeed:Int64 read FMaxSpeed write FMaxSpeed stored False;
    property Name:string read FName write FName stored False;
    property NetConnectionID:string read FNetConnectionID write FNetConnectionID stored False;
    property NetConnectionStatus:Integer read FNetConnectionStatus write FNetConnectionStatus stored False;
    property NetConnectionStatusAsString:string read GetNetConnectionStatusAsString  write FNetConnectionStatusAsString stored False;
    property NetEnabled:boolean read FNetEnabled write FNetEnabled stored False;
    property NetworkAddressesAsString:string read FNetworkAddressesAsString write FNetworkAddressesAsString stored False;
    property PermanentAddress:string read FPermanentAddress write FPermanentAddress stored False;
    property PhysicalAdapter:boolean read FPhysicalAdapter write FPhysicalAdapter stored False;
    property PNPDeviceID:string read FPNPDeviceID write FPNPDeviceID stored False;
    property PowerManagementCapabilitiesAsString:string read FPowerManagementCapabilitiesAsString write FPowerManagementCapabilitiesAsString stored False;
    property PowerManagementSupported:boolean read FPowerManagementSupported write FPowerManagementSupported stored False;
    property ProductName:string read FProductName write FProductName stored False;
    property ServiceName:string read FServiceName write FServiceName stored False;
    property Speed:Int64 read FSpeed write FSpeed stored False;
    property Status:string read FStatus write FStatus stored False;
    property StatusInfo:Integer read FStatusInfo write FStatusInfo stored False;
    property StatusInfoAsString:string read GetStatusInfoAsString  write FStatusInfoAsString stored False;
    property SystemCreationClassName:string read FSystemCreationClassName write FSystemCreationClassName stored False;
    property SystemName:string read FSystemName write FSystemName stored False;
    property TimeOfLastReset:TDateTime read FTimeOfLastReset write FTimeOfLastReset stored False;
  end;
  
  //: Implementación para el acceso vía WMI a la clase Win32_NetworkAdapter
  TNetworkAdapterInfo = class(TWMIBase)
  private
    FNetworkAdapterProperties: TNetworkAdapterProperties;
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
    // propiedades de la NetworkAdapter
    property NetworkAdapterProperties:TNetworkAdapterProperties read FNetworkAdapterProperties write FNetworkAdapterProperties;
  end;

// Constantes para la propiedad PowerManagementCapabilities
const
  ENUM_STRING_POWERMANAGEMENTCAPABILITIES_0 = 'Unknown';
  ENUM_STRING_POWERMANAGEMENTCAPABILITIES_1 = 'Not Supported';
  ENUM_STRING_POWERMANAGEMENTCAPABILITIES_2 = 'Disabled';
  ENUM_STRING_POWERMANAGEMENTCAPABILITIES_3 = 'Enabled. The power management features are currently enabled but the exact feature set is unknown or the information is unavailable.';
  ENUM_STRING_POWERMANAGEMENTCAPABILITIES_4 = 'Power Saving Modes Entered Automatically. The device can change its power state based on usage or other criteria.';
  ENUM_STRING_POWERMANAGEMENTCAPABILITIES_5 = 'Power State Settable. The SetPowerState method is supported. This method is found on the parent CIM_LogicalDevice class and can be implemented. For more information, see Designing Managed Object Format (MOF) Classes.';
  ENUM_STRING_POWERMANAGEMENTCAPABILITIES_6 = 'Power Cycling Supported. The SetPowerState method can be invoked with the PowerState parameter set to 5 (Power Cycle).';
  ENUM_STRING_POWERMANAGEMENTCAPABILITIES_7 = 'Timed Power-On Supported. The SetPowerState method can be invoked with the PowerState parameter set to 5 (Power Cycle) and Time set to a specific date and time, or interval, for power-on.';


// Constantes para la propiedad StatusInfo
const
  ENUM_STRING_STATUSINFO_1 = 'Other';
  ENUM_STRING_STATUSINFO_2 = 'Unknown';
  ENUM_STRING_STATUSINFO_3 = 'Enabled';
  ENUM_STRING_STATUSINFO_4 = 'Disabled';
  ENUM_STRING_STATUSINFO_5 = 'Not Applicable';


// Constantes para la propiedad NetConnectionStatus
const
  ENUM_STRING_NETCONNECTIONSTATUS_0 = 'Disconnected';
  ENUM_STRING_NETCONNECTIONSTATUS_1 = 'Connecting';
  ENUM_STRING_NETCONNECTIONSTATUS_2 = 'Connected';
  ENUM_STRING_NETCONNECTIONSTATUS_3 = 'Disconnecting';
  ENUM_STRING_NETCONNECTIONSTATUS_4 = 'Hardware not present';
  ENUM_STRING_NETCONNECTIONSTATUS_5 = 'Hardware disabled';
  ENUM_STRING_NETCONNECTIONSTATUS_6 = 'Hardware malfunction';
  ENUM_STRING_NETCONNECTIONSTATUS_7 = 'Media disconnected';
  ENUM_STRING_NETCONNECTIONSTATUS_8 = 'Authenticating';
  ENUM_STRING_NETCONNECTIONSTATUS_9 = 'Authentication succeeded';
  ENUM_STRING_NETCONNECTIONSTATUS_10 = 'Authentication failed';
  ENUM_STRING_NETCONNECTIONSTATUS_11 = 'Invalid address';
  ENUM_STRING_NETCONNECTIONSTATUS_12 = 'Credentials required';


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
  ENUM_STRING_AVAILABILITY_13 = 'Power Save - Unknown. The device is known to be in a power save state, but its exact status is unknown.';
  ENUM_STRING_AVAILABILITY_14 = 'Power Save - Low Power Mode. The device is in a power save state, but still functioning, and may exhibit degraded performance.';
  ENUM_STRING_AVAILABILITY_15 = 'Power Save - Standby. The device is not functioning, but could be brought to full power quickly.';
  ENUM_STRING_AVAILABILITY_16 = 'Power Cycle';
  ENUM_STRING_AVAILABILITY_17 = 'Power Save - Warning. The device is in a warning state, though also in a power save state.';


// Constantes para la propiedad AdapterTypeID
const
  ENUM_STRING_ADAPTERTYPEID_0 = 'Ethernet 802.3';
  ENUM_STRING_ADAPTERTYPEID_1 = 'Token Ring 802.5';
  ENUM_STRING_ADAPTERTYPEID_2 = 'Fiber Distributed Data Interface (FDDI)';
  ENUM_STRING_ADAPTERTYPEID_3 = 'Wide Area Network (WAN)';
  ENUM_STRING_ADAPTERTYPEID_4 = 'LocalTalk';
  ENUM_STRING_ADAPTERTYPEID_5 = 'Ethernet using DIX header format';
  ENUM_STRING_ADAPTERTYPEID_6 = 'ARCNET';
  ENUM_STRING_ADAPTERTYPEID_7 = 'ARCNET (878.2)';
  ENUM_STRING_ADAPTERTYPEID_8 = 'ATM';
  ENUM_STRING_ADAPTERTYPEID_9 = 'Wireless';
  ENUM_STRING_ADAPTERTYPEID_10 = 'Infrared Wireless';
  ENUM_STRING_ADAPTERTYPEID_11 = 'Bpc';
  ENUM_STRING_ADAPTERTYPEID_12 = 'CoWan';
  ENUM_STRING_ADAPTERTYPEID_13 = '1394';


// {CONST_ENUM}

    
//========================================================================= 
// 
// I M P L E M E N T A T I O N 
// 
//========================================================================= 
implementation 
  
uses 
  {Generales} Forms, Types, Windows, SysUtils, 
  {GLib} UProcedures, UConstantes, Dialogs; 
 
  
{ TNetworkAdapter } 
{-------------------------------------------------------------------------------} 
// Limpiar las propiedades
procedure TNetworkAdapterInfo.ClearProps;
begin

  Self.NetworkAdapterProperties.FAdapterType := STR_EMPTY;
  Self.NetworkAdapterProperties.FAdapterTypeID := 0;
  Self.NetworkAdapterProperties.FAutoSense := False;
  Self.NetworkAdapterProperties.FAvailability := 0;
  Self.NetworkAdapterProperties.FCaption := STR_EMPTY;
  Self.NetworkAdapterProperties.FConfigManagerErrorCode := 0;
  Self.NetworkAdapterProperties.FConfigManagerUserConfig := False;
  Self.NetworkAdapterProperties.FCreationClassName := STR_EMPTY;
  Self.NetworkAdapterProperties.FDescription := STR_EMPTY;
  Self.NetworkAdapterProperties.FDeviceID := STR_EMPTY;
  Self.NetworkAdapterProperties.FErrorCleared := False;
  Self.NetworkAdapterProperties.FErrorDescription := STR_EMPTY;
  Self.NetworkAdapterProperties.FGUID := STR_EMPTY;
  Self.NetworkAdapterProperties.FIndex := 0;
  Self.NetworkAdapterProperties.FInstallDate := 0;
  Self.NetworkAdapterProperties.FInstalled := False;
  Self.NetworkAdapterProperties.FInterfaceIndex := 0;
  Self.NetworkAdapterProperties.FLastErrorCode := 0;
  Self.NetworkAdapterProperties.FMACAddress := STR_EMPTY;
  Self.NetworkAdapterProperties.FManufacturer := STR_EMPTY;
  Self.NetworkAdapterProperties.FMaxNumberControlled := 0;
  Self.NetworkAdapterProperties.FMaxSpeed := 0;
  Self.NetworkAdapterProperties.FName := STR_EMPTY;
  Self.NetworkAdapterProperties.FNetConnectionID := STR_EMPTY;
  Self.NetworkAdapterProperties.FNetConnectionStatus := 0;
  Self.NetworkAdapterProperties.FNetEnabled := False;
  Self.NetworkAdapterProperties.FNetworkAddressesCount := 0;
  Self.NetworkAdapterProperties.FNetworkAddressesAsString := STR_EMPTY;
  SetLength(Self.NetworkAdapterProperties.FNetworkAddresses,0);
  Self.NetworkAdapterProperties.FPermanentAddress := STR_EMPTY;
  Self.NetworkAdapterProperties.FPhysicalAdapter := False;
  Self.NetworkAdapterProperties.FPNPDeviceID := STR_EMPTY;
  Self.NetworkAdapterProperties.FPowerManagementCapabilitiesCount := 0;
  Self.NetworkAdapterProperties.FPowerManagementCapabilitiesAsString := STR_EMPTY;
  SetLength(Self.NetworkAdapterProperties.FPowerManagementCapabilities,0);
  Self.NetworkAdapterProperties.FPowerManagementSupported := False;
  Self.NetworkAdapterProperties.FProductName := STR_EMPTY;
  Self.NetworkAdapterProperties.FServiceName := STR_EMPTY;
  Self.NetworkAdapterProperties.FSpeed := 0;
  Self.NetworkAdapterProperties.FStatus := STR_EMPTY;
  Self.NetworkAdapterProperties.FStatusInfo := 0;
  Self.NetworkAdapterProperties.FSystemCreationClassName := STR_EMPTY;
  Self.NetworkAdapterProperties.FSystemName := STR_EMPTY;
  Self.NetworkAdapterProperties.FTimeOfLastReset := 0;

end;
//: Constructor del componente 
constructor TNetworkAdapterInfo.Create(AOwner: TComponent); 
begin 
  inherited; 
 
  Self.FNetworkAdapterProperties := TNetworkAdapterProperties.Create(); 
  Self.MSDNHelp := 'http://msdn.microsoft.com/en-us/library/aa394216(VS.85).aspx';
end; 
 
// destructor del componente 
destructor TNetworkAdapterInfo.Destroy(); 
begin 
 
  // liberar 
  FreeAndNil(Self.FNetworkAdapterProperties); 
 
  inherited; 
end; 
 
// Obtener la clase 
function TNetworkAdapterInfo.GetWMIClass(): string; 
begin 
  Result := 'Win32_NetworkAdapter'
end; 
 
// Obtener Root 
function TNetworkAdapterInfo.GetWMIRoot(): string; 
begin 
  Result := STR_CIM2_ROOT; 
end; 
 
// Active 
procedure TNetworkAdapterInfo.SetActive(const Value: Boolean); 
begin 
  // método heredado 
  inherited; 
end; 
  
////: Recuperar la propiedad  <StatusInfoAsString>
//function TNetworkAdapterInfo.GetStatusInfoAsString():string;
//begin
//  Result := 'Not implemented yet';
//end;

// Acceso a los elementos de la propiedad <NetworkAddresses>
function TNetworkAdapterProperties.GetNetworkAddresses(index: integer):string;
begin
  if (index >= Self.FNetworkAddressesCount) then begin
    Index := Self.FNetworkAddressesCount - 1;
  end;
  Result := Self.FNetworkAddresses[index];
end;
 
// Acceso a los elementos de la propiedad <PowerManagementCapabilities>
function TNetworkAdapterProperties.GetPowerManagementCapabilities(index: integer):Integer;
begin
  if (index >= Self.FPowerManagementCapabilitiesCount) then begin
    Index := Self.FPowerManagementCapabilitiesCount - 1;
  end;
  Result := Self.FPowerManagementCapabilities[index];
end;
 
//: Rellenar las propiedades del componente.
procedure TNetworkAdapterInfo.FillProperties(AIndex: integer);
var
  v:variant;
  vNull:boolean;
  vp:TNetworkAdapterProperties;
begin

  // Llamar al heredado (importante)
  inherited;

  // Rellenar propiedades...
  vp := Self.NetworkAdapterProperties;

  GetWMIPropertyValue(Self, 'AdapterType', v, vNull);
  vp.FAdapterType := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'AdapterTypeID', v, vNull);
  vp.FAdapterTypeID := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'AutoSense', v, vNull);
  vp.FAutoSense := VariantBooleanValue(v, vNull);

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

  GetWMIPropertyValue(Self, 'ErrorCleared', v, vNull);
  vp.FErrorCleared := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'ErrorDescription', v, vNull);
  vp.FErrorDescription := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'GUID', v, vNull);
  vp.FGUID := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Index', v, vNull);
  vp.FIndex := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'InstallDate', v, vNull);
  if not vNull then begin
    vp.FInstallDate := EncodeDate(StrToInt(Copy(v, 1, 4)),StrToInt(Copy(v, 5, 2)),StrToInt(Copy(v, 7, 2)));
  end;

  GetWMIPropertyValue(Self, 'Installed', v, vNull);
  vp.FInstalled := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'InterfaceIndex', v, vNull);
  vp.FInterfaceIndex := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'LastErrorCode', v, vNull);
  vp.FLastErrorCode := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'MACAddress', v, vNull);
  vp.FMACAddress := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Manufacturer', v, vNull);
  vp.FManufacturer := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'MaxNumberControlled', v, vNull);
  vp.FMaxNumberControlled := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'MaxSpeed', v, vNull);
  vp.FMaxSpeed := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Name', v, vNull);
  vp.FName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'NetConnectionID', v, vNull);
  vp.FNetConnectionID := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'NetConnectionStatus', v, vNull);
  vp.FNetConnectionStatus := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'NetEnabled', v, vNull);
  vp.FNetEnabled := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'NetworkAddresses', v, vNull);
  vp.FNetworkAddressesAsString := VariantStrValue(v, vNull);
//-  vp.FNetworkAddresses := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'PermanentAddress', v, vNull);
  vp.FPermanentAddress := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'PhysicalAdapter', v, vNull);
  vp.FPhysicalAdapter := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'PNPDeviceID', v, vNull);
  vp.FPNPDeviceID := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'PowerManagementCapabilities', v, vNull);
  vp.FPowerManagementCapabilitiesAsString := VariantStrValue(v, vNull);
//-  vp.FPowerManagementCapabilities := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'PowerManagementSupported', v, vNull);
  vp.FPowerManagementSupported := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'ProductName', v, vNull);
  vp.FProductName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'ServiceName', v, vNull);
  vp.FServiceName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Speed', v, vNull);
  vp.FSpeed := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Status', v, vNull);
  vp.FStatus := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'StatusInfo', v, vNull);
  vp.FStatusInfo := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'SystemCreationClassName', v, vNull);
  vp.FSystemCreationClassName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'SystemName', v, vNull);
  vp.FSystemName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'TimeOfLastReset', v, vNull);
  if not vNull then begin
    vp.FTimeOfLastReset := EncodeDate(StrToInt(Copy(v, 1, 4)),StrToInt(Copy(v, 5, 2)),StrToInt(Copy(v, 7, 2)));
  end;

end;


// Obtener la propiedad como string
function TNetworkAdapterProperties.GetStatusInfoAsString():string;
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


// Obtener la propiedad como string
function TNetworkAdapterProperties.GetNetConnectionStatusAsString():string;
begin
  case FNetConnectionStatus of
    0: Result := ENUM_STRING_NETCONNECTIONSTATUS_0;
    1: Result := ENUM_STRING_NETCONNECTIONSTATUS_1;
    2: Result := ENUM_STRING_NETCONNECTIONSTATUS_2;
    3: Result := ENUM_STRING_NETCONNECTIONSTATUS_3;
    4: Result := ENUM_STRING_NETCONNECTIONSTATUS_4;
    5: Result := ENUM_STRING_NETCONNECTIONSTATUS_5;
    6: Result := ENUM_STRING_NETCONNECTIONSTATUS_6;
    7: Result := ENUM_STRING_NETCONNECTIONSTATUS_7;
    8: Result := ENUM_STRING_NETCONNECTIONSTATUS_8;
    9: Result := ENUM_STRING_NETCONNECTIONSTATUS_9;
    10: Result := ENUM_STRING_NETCONNECTIONSTATUS_10;
    11: Result := ENUM_STRING_NETCONNECTIONSTATUS_11;
    12: Result := ENUM_STRING_NETCONNECTIONSTATUS_12;
  else
    Result := STR_EMPTY;
  end;
end;


// Obtener la propiedad como string
function TNetworkAdapterProperties.GetConfigManagerErrorCodeAsString():string;
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
function TNetworkAdapterProperties.GetAvailabilityAsString():string;
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
function TNetworkAdapterProperties.GetAdapterTypeIDAsString():string;
begin
  case FAdapterTypeID of
    0: Result := ENUM_STRING_ADAPTERTYPEID_0;
    1: Result := ENUM_STRING_ADAPTERTYPEID_1;
    2: Result := ENUM_STRING_ADAPTERTYPEID_2;
    3: Result := ENUM_STRING_ADAPTERTYPEID_3;
    4: Result := ENUM_STRING_ADAPTERTYPEID_4;
    5: Result := ENUM_STRING_ADAPTERTYPEID_5;
    6: Result := ENUM_STRING_ADAPTERTYPEID_6;
    7: Result := ENUM_STRING_ADAPTERTYPEID_7;
    8: Result := ENUM_STRING_ADAPTERTYPEID_8;
    9: Result := ENUM_STRING_ADAPTERTYPEID_9;
    10: Result := ENUM_STRING_ADAPTERTYPEID_10;
    11: Result := ENUM_STRING_ADAPTERTYPEID_11;
    12: Result := ENUM_STRING_ADAPTERTYPEID_12;
    13: Result := ENUM_STRING_ADAPTERTYPEID_13;
  else
    Result := STR_EMPTY;
  end;
end;

// {IMPL_ENUM}

end.
