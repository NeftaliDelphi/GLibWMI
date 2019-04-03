{
TBatteryInfo  Component Version 1.1 - Suite GLib 
Copyright (©) 2009,  by Germán Estévez (Neftalí) 
 
  Acceso a los atributos de la batería conectada al equipo.
 
Utilización/Usage: 
  Basta con "soltar" el componente y activarlo.
 
  Place the component in the form and active it. 
 
  MSDN Info: 
  http://msdn.microsoft.com/en-us/library//aa394074(VS.85).aspx 
 
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
unit CBatteryInfo;
 
{ 
========================================================================= 
 
  TBatteryInfo.pas 
 
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
  TBatteryProperties = class(TPersistent)
  private
    FAvailability:Integer;
    FAvailabilityAsString:string;
    FBatteryRechargeTime:Longword;
    FBatteryStatus:Integer;
    FBatteryStatusAsString:string;
    FCaption:string;
    FChemistry:Integer;
    FChemistryAsString:string;
    FConfigManagerErrorCode:Longword;
    FConfigManagerErrorCodeAsString:string;
    FConfigManagerUserConfig:boolean;
    FCreationClassName:string;
    FDescription:string;
    FDesignCapacity:Longword;
    FDesignVoltage:Int64;
    FDeviceID:string;
    FErrorCleared:boolean;
    FErrorDescription:string;
    FEstimatedChargeRemaining:Integer;
    FEstimatedRunTime:Longword;
    FExpectedBatteryLife:Longword;
    FExpectedLife:Longword;
    FFullChargeCapacity:Longword;
    FInstallDate:TDateTime;
    FLastErrorCode:Longword;
    FMaxRechargeTime:Longword;
    FName:string;
    FPNPDeviceID:string;
    FPowerManagementCapabilities:TArrInteger;
    FPowerManagementCapabilitiesCount:integer;
    FPowerManagementCapabilitiesAsString:string;
    FPowerManagementSupported:boolean;
    FSmartBatteryVersion:string;
    FStatus:string;
    FStatusInfo:Integer;
    FStatusInfoAsString:string;
    FSystemCreationClassName:string;
    FSystemName:string;
    FTimeOnBattery:Longword;
    FTimeToFullCharge:Longword;
  private
    function GetPowerManagementCapabilities(index: integer): Integer;
  public
    property PowerManagementCapabilities[index:integer]:Integer read GetPowerManagementCapabilities;
    property PowerManagementCapabilitiesCount:integer read FPowerManagementCapabilitiesCount stored False;
    // Obtener la propiedad <Availability> como string
    function GetAvailabilityAsString():string;
    // Obtener la propiedad <BatteryStatus> como string
    function GetBatteryStatusAsString():string;
    // Obtener la propiedad <Chemistry> como string
    function GetChemistryAsString():string;
    // Obtener la propiedad <ConfigManagerErrorCode> como string
    function GetConfigManagerErrorCodeAsString():string;
    // Obtener la propiedad <StatusInfo> como string
    function GetStatusInfoAsString():string;

  published
    property Availability:Integer read FAvailability write FAvailability stored False;
    property AvailabilityAsString:string read GetAvailabilityAsString  write FAvailabilityAsString stored False;
    property BatteryRechargeTime:Longword read FBatteryRechargeTime write FBatteryRechargeTime stored False;
    property BatteryStatus:Integer read FBatteryStatus write FBatteryStatus stored False;
    property BatteryStatusAsString:string read GetBatteryStatusAsString  write FBatteryStatusAsString stored False;
    property Caption:string read FCaption write FCaption stored False;
    property Chemistry:Integer read FChemistry write FChemistry stored False;
    property ChemistryAsString:string read GetChemistryAsString  write FChemistryAsString stored False;
    property ConfigManagerErrorCode:Longword read FConfigManagerErrorCode write FConfigManagerErrorCode stored False;
    property ConfigManagerErrorCodeAsString:string read GetConfigManagerErrorCodeAsString  write FConfigManagerErrorCodeAsString stored False;
    property ConfigManagerUserConfig:boolean read FConfigManagerUserConfig write FConfigManagerUserConfig stored False;
    property CreationClassName:string read FCreationClassName write FCreationClassName stored False;
    property Description:string read FDescription write FDescription stored False;
    property DesignCapacity:Longword read FDesignCapacity write FDesignCapacity stored False;
    property DesignVoltage:Int64 read FDesignVoltage write FDesignVoltage stored False;
    property DeviceID:string read FDeviceID write FDeviceID stored False;
    property ErrorCleared:boolean read FErrorCleared write FErrorCleared stored False;
    property ErrorDescription:string read FErrorDescription write FErrorDescription stored False;
    property EstimatedChargeRemaining:Integer read FEstimatedChargeRemaining write FEstimatedChargeRemaining stored False;
    property EstimatedRunTime:Longword read FEstimatedRunTime write FEstimatedRunTime stored False;
    property ExpectedBatteryLife:Longword read FExpectedBatteryLife write FExpectedBatteryLife stored False;
    property ExpectedLife:Longword read FExpectedLife write FExpectedLife stored False;
    property FullChargeCapacity:Longword read FFullChargeCapacity write FFullChargeCapacity stored False;
    property InstallDate:TDateTime read FInstallDate write FInstallDate stored False;
    property LastErrorCode:Longword read FLastErrorCode write FLastErrorCode stored False;
    property MaxRechargeTime:Longword read FMaxRechargeTime write FMaxRechargeTime stored False;
    property Name:string read FName write FName stored False;
    property PNPDeviceID:string read FPNPDeviceID write FPNPDeviceID stored False;
    property PowerManagementCapabilitiesAsString:string read FPowerManagementCapabilitiesAsString write FPowerManagementCapabilitiesAsString stored False;
    property PowerManagementSupported:boolean read FPowerManagementSupported write FPowerManagementSupported stored False;
    property SmartBatteryVersion:string read FSmartBatteryVersion write FSmartBatteryVersion stored False;
    property Status:string read FStatus write FStatus stored False;
    property StatusInfo:Integer read FStatusInfo write FStatusInfo stored False;
    property StatusInfoAsString:string read GetStatusInfoAsString  write FStatusInfoAsString stored False;
    property SystemCreationClassName:string read FSystemCreationClassName write FSystemCreationClassName stored False;
    property SystemName:string read FSystemName write FSystemName stored False;
    property TimeOnBattery:Longword read FTimeOnBattery write FTimeOnBattery stored False;
    property TimeToFullCharge:Longword read FTimeToFullCharge write FTimeToFullCharge stored False;
  end;
  
  //: Implementación para el acceso vía WMI a la clase Win32_Battery
  TBatteryInfo = class(TWMIBase)
  private
    FBatteryProperties: TBatteryProperties;
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
    // propiedades de la Battery
    property BatteryProperties:TBatteryProperties read FBatteryProperties write FBatteryProperties;
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

// Constantes para la propiedad BatteryStatus
const
  ENUM_STRING_BATTERYSTATUS_1 = 'The battery is discharging.';
  ENUM_STRING_BATTERYSTATUS_2 = 'The system has access to AC so no battery is being discharged. However, the battery is not necessarily charging.';
  ENUM_STRING_BATTERYSTATUS_3 = 'Fully Charged';
  ENUM_STRING_BATTERYSTATUS_4 = 'Low';
  ENUM_STRING_BATTERYSTATUS_5 = 'Critical';
  ENUM_STRING_BATTERYSTATUS_6 = 'Charging';
  ENUM_STRING_BATTERYSTATUS_7 = 'Charging and High';
  ENUM_STRING_BATTERYSTATUS_8 = 'Charging and Low';
  ENUM_STRING_BATTERYSTATUS_9 = 'Charging and Critical';
  ENUM_STRING_BATTERYSTATUS_10 = 'Undefined';
  ENUM_STRING_BATTERYSTATUS_11 = 'Partially Charged';

// Constantes para la propiedad Chemistry
const
  ENUM_STRING_CHEMISTRY_1 = 'Other';
  ENUM_STRING_CHEMISTRY_2 = 'Unknown';
  ENUM_STRING_CHEMISTRY_3 = 'Lead Acid';
  ENUM_STRING_CHEMISTRY_4 = 'Nickel Cadmium';
  ENUM_STRING_CHEMISTRY_5 = 'Nickel Metal Hydride';
  ENUM_STRING_CHEMISTRY_6 = 'Lithium-ion';
  ENUM_STRING_CHEMISTRY_7 = 'Zinc air';
  ENUM_STRING_CHEMISTRY_8 = 'Lithium Polymer';

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
 
  
{ TBattery } 
{-------------------------------------------------------------------------------} 
// Limpiar las propiedades
procedure TBatteryInfo.ClearProps;
begin

  Self.BatteryProperties.FAvailability := 0;
  Self.BatteryProperties.FBatteryRechargeTime := 0;
  Self.BatteryProperties.FBatteryStatus := 0;
  Self.BatteryProperties.FCaption := STR_EMPTY;
  Self.BatteryProperties.FChemistry := 0;
  Self.BatteryProperties.FConfigManagerErrorCode := 0;
  Self.BatteryProperties.FConfigManagerUserConfig := False;
  Self.BatteryProperties.FCreationClassName := STR_EMPTY;
  Self.BatteryProperties.FDescription := STR_EMPTY;
  Self.BatteryProperties.FDesignCapacity := 0;
  Self.BatteryProperties.FDesignVoltage := 0;
  Self.BatteryProperties.FDeviceID := STR_EMPTY;
  Self.BatteryProperties.FErrorCleared := False;
  Self.BatteryProperties.FErrorDescription := STR_EMPTY;
  Self.BatteryProperties.FEstimatedChargeRemaining := 0;
  Self.BatteryProperties.FEstimatedRunTime := 0;
  Self.BatteryProperties.FExpectedBatteryLife := 0;
  Self.BatteryProperties.FExpectedLife := 0;
  Self.BatteryProperties.FFullChargeCapacity := 0;
  Self.BatteryProperties.FInstallDate := 0;
  Self.BatteryProperties.FLastErrorCode := 0;
  Self.BatteryProperties.FMaxRechargeTime := 0;
  Self.BatteryProperties.FName := STR_EMPTY;
  Self.BatteryProperties.FPNPDeviceID := STR_EMPTY;
  Self.BatteryProperties.FPowerManagementCapabilitiesCount := 0;
  Self.BatteryProperties.FPowerManagementCapabilitiesAsString := STR_EMPTY;
  SetLength(Self.BatteryProperties.FPowerManagementCapabilities,0);
  Self.BatteryProperties.FPowerManagementSupported := False;
  Self.BatteryProperties.FSmartBatteryVersion := STR_EMPTY;
  Self.BatteryProperties.FStatus := STR_EMPTY;
  Self.BatteryProperties.FStatusInfo := 0;
  Self.BatteryProperties.FSystemCreationClassName := STR_EMPTY;
  Self.BatteryProperties.FSystemName := STR_EMPTY;
  Self.BatteryProperties.FTimeOnBattery := 0;
  Self.BatteryProperties.FTimeToFullCharge := 0;

end;
//: Constructor del componente 
constructor TBatteryInfo.Create(AOwner: TComponent);
begin 
  inherited; 
 
  Self.FBatteryProperties := TBatteryProperties.Create(); 
  Self.MSDNHelp := 'http://msdn.microsoft.com/en-us/library//aa394074(VS.85).aspx';
end; 
 
// destructor del componente 
destructor TBatteryInfo.Destroy(); 
begin 
 
  // liberar 
  FreeAndNil(Self.FBatteryProperties); 
 
  inherited; 
end; 
 
// Obtener la clase 
function TBatteryInfo.GetWMIClass(): string; 
begin 
  Result := WIN32_BATTERY_CLASS;
end; 
 
// Obtener Root 
function TBatteryInfo.GetWMIRoot(): string; 
begin 
  Result := STR_CIM2_ROOT; 
end; 
 
// Active 
procedure TBatteryInfo.SetActive(const Value: Boolean); 
begin 
  // método heredado 
  inherited; 
end; 
  

// Acceso a los elementos de la propiedad <PowerManagementCapabilities>
function TBatteryProperties.GetPowerManagementCapabilities(index: integer):Integer;
begin
  if (index >= Self.FPowerManagementCapabilitiesCount) then begin
    Index := Self.FPowerManagementCapabilitiesCount - 1;
  end;
  Result := Self.FPowerManagementCapabilities[index];
end;
 
//: Rellenar las propiedades del componente.
procedure TBatteryInfo.FillProperties(AIndex: integer);
var
  v:variant;
  vNull:boolean;
  vp:TBatteryProperties;
begin

  // Llamar al heredado (importante)
  inherited;

  // Rellenar propiedades...
  vp := Self.BatteryProperties;

  GetWMIPropertyValue(Self, 'Availability', v, vNull);
  vp.FAvailability := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'BatteryRechargeTime', v, vNull);
  vp.FBatteryRechargeTime := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'BatteryStatus', v, vNull);
  vp.FBatteryStatus := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Caption', v, vNull);
  vp.FCaption := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Chemistry', v, vNull);
  vp.FChemistry := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'ConfigManagerErrorCode', v, vNull);
  vp.FConfigManagerErrorCode := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'ConfigManagerUserConfig', v, vNull);
  vp.FConfigManagerUserConfig := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'CreationClassName', v, vNull);
  vp.FCreationClassName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Description', v, vNull);
  vp.FDescription := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'DesignCapacity', v, vNull);
  vp.FDesignCapacity := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'DesignVoltage', v, vNull);
  vp.FDesignVoltage := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'DeviceID', v, vNull);
  vp.FDeviceID := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'ErrorCleared', v, vNull);
  vp.FErrorCleared := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'ErrorDescription', v, vNull);
  vp.FErrorDescription := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'EstimatedChargeRemaining', v, vNull);
  vp.FEstimatedChargeRemaining := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'EstimatedRunTime', v, vNull);
  vp.FEstimatedRunTime := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'ExpectedBatteryLife', v, vNull);
  vp.FExpectedBatteryLife := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'ExpectedLife', v, vNull);
  vp.FExpectedLife := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'FullChargeCapacity', v, vNull);
  vp.FFullChargeCapacity := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'InstallDate', v, vNull);
  if not vNull then begin
    vp.FInstallDate := EncodeDate(StrToInt(Copy(v, 1, 4)),StrToInt(Copy(v, 5, 2)),StrToInt(Copy(v, 7, 2)));
  end;

  GetWMIPropertyValue(Self, 'LastErrorCode', v, vNull);
  vp.FLastErrorCode := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'MaxRechargeTime', v, vNull);
  vp.FMaxRechargeTime := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Name', v, vNull);
  vp.FName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'PNPDeviceID', v, vNull);
  vp.FPNPDeviceID := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'PowerManagementCapabilities', v, vNull);
  vp.FPowerManagementCapabilitiesAsString := VariantStrValue(v, vNull);
//  vp.FPowerManagementCapabilities := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'PowerManagementSupported', v, vNull);
  vp.FPowerManagementSupported := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'SmartBatteryVersion', v, vNull);
  vp.FSmartBatteryVersion := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Status', v, vNull);
  vp.FStatus := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'StatusInfo', v, vNull);
  vp.FStatusInfo := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'SystemCreationClassName', v, vNull);
  vp.FSystemCreationClassName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'SystemName', v, vNull);
  vp.FSystemName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'TimeOnBattery', v, vNull);
  vp.FTimeOnBattery := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'TimeToFullCharge', v, vNull);
  vp.FTimeToFullCharge := VariantIntegerValue(v, vNull);

end;

// Obtener la propiedad como string
function TBatteryProperties.GetAvailabilityAsString():string;
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
function TBatteryProperties.GetBatteryStatusAsString():string;
begin
  case FBatteryStatus of
    1: Result := ENUM_STRING_BATTERYSTATUS_1;
    2: Result := ENUM_STRING_BATTERYSTATUS_2;
    3: Result := ENUM_STRING_BATTERYSTATUS_3;
    4: Result := ENUM_STRING_BATTERYSTATUS_4;
    5: Result := ENUM_STRING_BATTERYSTATUS_5;
    6: Result := ENUM_STRING_BATTERYSTATUS_6;
    7: Result := ENUM_STRING_BATTERYSTATUS_7;
    8: Result := ENUM_STRING_BATTERYSTATUS_8;
    9: Result := ENUM_STRING_BATTERYSTATUS_9;
    10: Result := ENUM_STRING_BATTERYSTATUS_10;
    11: Result := ENUM_STRING_BATTERYSTATUS_11;
  else
    Result := STR_EMPTY;
  end;
end;


// Obtener la propiedad como string
function TBatteryProperties.GetChemistryAsString():string;
begin
  case FChemistry of
    1: Result := ENUM_STRING_CHEMISTRY_1;
    2: Result := ENUM_STRING_CHEMISTRY_2;
    3: Result := ENUM_STRING_CHEMISTRY_3;
    4: Result := ENUM_STRING_CHEMISTRY_4;
    5: Result := ENUM_STRING_CHEMISTRY_5;
    6: Result := ENUM_STRING_CHEMISTRY_6;
    7: Result := ENUM_STRING_CHEMISTRY_7;
    8: Result := ENUM_STRING_CHEMISTRY_8;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TBatteryProperties.GetConfigManagerErrorCodeAsString():string;
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
function TBatteryProperties.GetStatusInfoAsString():string;
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

