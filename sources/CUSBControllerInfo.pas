{ 
TUSBControllerInfo  Component Version 1.3b - Suite GLib 
Copyright (©) 2009,  by Germán Estévez (Neftalí) 
 
  Representa la clase para manejar las capacidades del Universal Serial Bus (USB).
 
Utilización/Usage: 
  Basta con "soltar" el componente y activarlo. 
 
  Place the component in the form and active it. 
 
  MSDN Info: 
  http://msdn.microsoft.com/en-us/library/aa394504(VS.85).aspx 
 
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
unit CUSBControllerInfo; 
 
{ 
========================================================================= 
 
  TUSBControllerInfo.pas 
 
  Componente 
 
======================================================================== 
  Historia de las Versiones 
------------------------------------------------------------------------ 
 
  28/01/2010    * Creación. 
 
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
  TUSBControllerProperties = class(TPersistent)
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
    FErrorCleared:boolean;
    FErrorDescription:string;
    FInstallDate:TDateTime;
    FLastErrorCode:Longword;
    FManufacturer:string;
    FMaxNumberControlled:Longword;
    FName:string;
    FPNPDeviceID:string;
    FPowerManagementCapabilities:TArrInteger;
    FPowerManagementCapabilitiesCount:integer;
    FPowerManagementCapabilitiesAsString:string;
    FPowerManagementSupported:boolean;
    FProtocolSupported:Integer;
    FProtocolSupportedAsString:string;
    FStatus:string;
    FStatusInfo:Integer;
    FStatusInfoAsString:string;
    FSystemCreationClassName:string;
    FSystemName:string;
    FTimeOfLastReset:TDateTime;
  private
    function GetPowerManagementCapabilities(index: integer): Integer;
  public
    property PowerManagementCapabilities[index:integer]:Integer read GetPowerManagementCapabilities;
    property PowerManagementCapabilitiesCount:integer read FPowerManagementCapabilitiesCount stored False;

    // Obtener la propiedad <Availability> como string
    function GetAvailabilityAsString():string;

    // Obtener la propiedad <ConfigManagerErrorCode> como string
    function GetConfigManagerErrorCodeAsString():string;

    // Obtener la propiedad <ProtocolSupported> como string
    function GetProtocolSupportedAsString():string;

    // Obtener la propiedad <StatusInfo> como string
    function GetStatusInfoAsString():string;

// {GET_ENUM}

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
    property ErrorCleared:boolean read FErrorCleared write FErrorCleared stored False;
    property ErrorDescription:string read FErrorDescription write FErrorDescription stored False;
    property InstallDate:TDateTime read FInstallDate write FInstallDate stored False;
    property LastErrorCode:Longword read FLastErrorCode write FLastErrorCode stored False;
    property Manufacturer:string read FManufacturer write FManufacturer stored False;
    property MaxNumberControlled:Longword read FMaxNumberControlled write FMaxNumberControlled stored False;
    property Name:string read FName write FName stored False;
    property PNPDeviceID:string read FPNPDeviceID write FPNPDeviceID stored False;
    property PowerManagementCapabilitiesAsString:string read FPowerManagementCapabilitiesAsString write FPowerManagementCapabilitiesAsString stored False;
    property PowerManagementSupported:boolean read FPowerManagementSupported write FPowerManagementSupported stored False;
    property ProtocolSupported:Integer read FProtocolSupported write FProtocolSupported stored False;
    property ProtocolSupportedAsString:string read GetProtocolSupportedAsString  write FProtocolSupportedAsString stored False;
    property Status:string read FStatus write FStatus stored False;
    property StatusInfo:Integer read FStatusInfo write FStatusInfo stored False;
    property StatusInfoAsString:string read GetStatusInfoAsString  write FStatusInfoAsString stored False;
    property SystemCreationClassName:string read FSystemCreationClassName write FSystemCreationClassName stored False;
    property SystemName:string read FSystemName write FSystemName stored False;
    property TimeOfLastReset:TDateTime read FTimeOfLastReset write FTimeOfLastReset stored False;
  end;
  
  //: Implementación para el acceso vía WMI a la clase Win32_USBController
  TUSBControllerInfo = class(TWMIBase)
  private
    FUSBControllerProperties: TUSBControllerProperties;
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
    // propiedades de la USBController
    property USBControllerProperties:TUSBControllerProperties read FUSBControllerProperties write FUSBControllerProperties;
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
  ENUM_STRING_AVAILABILITY_8 = 'Offline';
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


// Constantes para la propiedad ProtocolSupported
const
  ENUM_STRING_PROTOCOLSUPPORTED_1 = 'Other';
  ENUM_STRING_PROTOCOLSUPPORTED_2 = 'Unknown';
  ENUM_STRING_PROTOCOLSUPPORTED_3 = 'EISA';
  ENUM_STRING_PROTOCOLSUPPORTED_4 = 'ISA';
  ENUM_STRING_PROTOCOLSUPPORTED_5 = 'PCI';
  ENUM_STRING_PROTOCOLSUPPORTED_6 = 'ATA or ATAPI';
  ENUM_STRING_PROTOCOLSUPPORTED_7 = 'Flexible Diskette';
  ENUM_STRING_PROTOCOLSUPPORTED_8 = '1496';
  ENUM_STRING_PROTOCOLSUPPORTED_9 = 'SCSI Parallel Interface';
  ENUM_STRING_PROTOCOLSUPPORTED_10 = 'SCSI Fibre Channel Protocol';
  ENUM_STRING_PROTOCOLSUPPORTED_11 = 'SCSI Serial Bus Protocol';
  ENUM_STRING_PROTOCOLSUPPORTED_12 = 'SCSI Serial Bus Protocol-2 (1394)';
  ENUM_STRING_PROTOCOLSUPPORTED_13 = 'SCSI Serial Storage Architecture';
  ENUM_STRING_PROTOCOLSUPPORTED_14 = 'VESA';
  ENUM_STRING_PROTOCOLSUPPORTED_15 = 'PCMCIA';
  ENUM_STRING_PROTOCOLSUPPORTED_16 = 'Universal Serial Bus';
  ENUM_STRING_PROTOCOLSUPPORTED_17 = 'Parallel Protocol';
  ENUM_STRING_PROTOCOLSUPPORTED_18 = 'ESCON';
  ENUM_STRING_PROTOCOLSUPPORTED_19 = 'Diagnostic';
  ENUM_STRING_PROTOCOLSUPPORTED_20 = 'I2C';
  ENUM_STRING_PROTOCOLSUPPORTED_21 = 'Power';
  ENUM_STRING_PROTOCOLSUPPORTED_22 = 'HIPPI';
  ENUM_STRING_PROTOCOLSUPPORTED_23 = 'MultiBus';
  ENUM_STRING_PROTOCOLSUPPORTED_24 = 'VME';
  ENUM_STRING_PROTOCOLSUPPORTED_25 = 'IPI';
  ENUM_STRING_PROTOCOLSUPPORTED_26 = 'IEEE-488';
  ENUM_STRING_PROTOCOLSUPPORTED_27 = 'RS232';
  ENUM_STRING_PROTOCOLSUPPORTED_28 = 'IEEE 802.3 10BASE5';
  ENUM_STRING_PROTOCOLSUPPORTED_29 = 'IEEE 802.3 10BASE2';
  ENUM_STRING_PROTOCOLSUPPORTED_30 = 'IEEE 802.3 1BASE5';
  ENUM_STRING_PROTOCOLSUPPORTED_31 = 'IEEE 802.3 10BROAD36';
  ENUM_STRING_PROTOCOLSUPPORTED_32 = 'IEEE 802.3 100BASEVG';
  ENUM_STRING_PROTOCOLSUPPORTED_33 = 'IEEE 802.5 Token-Ring';
  ENUM_STRING_PROTOCOLSUPPORTED_34 = 'ANSI X3T9.5 FDDI';
  ENUM_STRING_PROTOCOLSUPPORTED_35 = 'MCA';
  ENUM_STRING_PROTOCOLSUPPORTED_36 = 'ESDI';
  ENUM_STRING_PROTOCOLSUPPORTED_37 = 'IDE';
  ENUM_STRING_PROTOCOLSUPPORTED_38 = 'CMD';
  ENUM_STRING_PROTOCOLSUPPORTED_39 = 'ST506';
  ENUM_STRING_PROTOCOLSUPPORTED_40 = 'DSSI';
  ENUM_STRING_PROTOCOLSUPPORTED_41 = 'QIC2';
  ENUM_STRING_PROTOCOLSUPPORTED_42 = 'Enhanced ATA/IDE';
  ENUM_STRING_PROTOCOLSUPPORTED_43 = 'AGP';
  ENUM_STRING_PROTOCOLSUPPORTED_44 = 'TWIRP (two-way infrared)';
  ENUM_STRING_PROTOCOLSUPPORTED_45 = 'FIR (fast infrared)';
  ENUM_STRING_PROTOCOLSUPPORTED_46 = 'SIR (serial infrared)';
  ENUM_STRING_PROTOCOLSUPPORTED_47 = 'IrBus';


// Constantes para la propiedad StatusInfo
const
  ENUM_STRING_STATUSINFO_1 = 'Other';
  ENUM_STRING_STATUSINFO_2 = 'Unknown';
  ENUM_STRING_STATUSINFO_3 = 'Enabled';
  ENUM_STRING_STATUSINFO_4 = 'Disabled';
  ENUM_STRING_STATUSINFO_5 = 'Not Applicable';


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
 
  
{ TUSBController } 
{-------------------------------------------------------------------------------} 
// Limpiar las propiedades
procedure TUSBControllerInfo.ClearProps;
begin

  Self.USBControllerProperties.FAvailability := 0;
  Self.USBControllerProperties.FCaption := STR_EMPTY;
  Self.USBControllerProperties.FConfigManagerErrorCode := 0;
  Self.USBControllerProperties.FConfigManagerUserConfig := False;
  Self.USBControllerProperties.FCreationClassName := STR_EMPTY;
  Self.USBControllerProperties.FDescription := STR_EMPTY;
  Self.USBControllerProperties.FDeviceID := STR_EMPTY;
  Self.USBControllerProperties.FErrorCleared := False;
  Self.USBControllerProperties.FErrorDescription := STR_EMPTY;
  Self.USBControllerProperties.FInstallDate := 0;
  Self.USBControllerProperties.FLastErrorCode := 0;
  Self.USBControllerProperties.FManufacturer := STR_EMPTY;
  Self.USBControllerProperties.FMaxNumberControlled := 0;
  Self.USBControllerProperties.FName := STR_EMPTY;
  Self.USBControllerProperties.FPNPDeviceID := STR_EMPTY;
  Self.USBControllerProperties.FPowerManagementCapabilitiesCount := 0;
  Self.USBControllerProperties.FPowerManagementCapabilitiesAsString := STR_EMPTY;
  SetLength(Self.USBControllerProperties.FPowerManagementCapabilities,0);
  Self.USBControllerProperties.FPowerManagementSupported := False;
  Self.USBControllerProperties.FProtocolSupported := 0;
  Self.USBControllerProperties.FStatus := STR_EMPTY;
  Self.USBControllerProperties.FStatusInfo := 0;
  Self.USBControllerProperties.FSystemCreationClassName := STR_EMPTY;
  Self.USBControllerProperties.FSystemName := STR_EMPTY;
  Self.USBControllerProperties.FTimeOfLastReset := 0;

end;
//: Constructor del componente 
constructor TUSBControllerInfo.Create(AOwner: TComponent); 
begin 
  inherited; 
 
  Self.FUSBControllerProperties := TUSBControllerProperties.Create(); 
  Self.MSDNHelp := 'http://msdn.microsoft.com/en-us/library/aa394504(VS.85).aspx';
end; 
 
// destructor del componente 
destructor TUSBControllerInfo.Destroy(); 
begin 
 
  // liberar 
  FreeAndNil(Self.FUSBControllerProperties); 
 
  inherited; 
end; 
 
// Obtener la clase 
function TUSBControllerInfo.GetWMIClass(): string; 
begin 
  Result := WIN32_USBCONTROLLER_CLASS;
end; 
 
// Obtener Root 
function TUSBControllerInfo.GetWMIRoot(): string; 
begin 
  Result := STR_CIM2_ROOT; 
end; 
 
// Active 
procedure TUSBControllerInfo.SetActive(const Value: Boolean); 
begin 
  // método heredado 
  inherited; 
end; 
  

// Acceso a los elementos de la propiedad <PowerManagementCapabilities>
function TUSBControllerProperties.GetPowerManagementCapabilities(index: integer):Integer;
begin
  if (index >= Self.FPowerManagementCapabilitiesCount) then begin
    Index := Self.FPowerManagementCapabilitiesCount - 1;
  end;
  Result := Self.FPowerManagementCapabilities[index];
end;
 
//: Rellenar las propiedades del componente.
procedure TUSBControllerInfo.FillProperties(AIndex: integer);
var
  v:variant;
  vNull:boolean;
  vp:TUSBControllerProperties;
begin

  // Llamar al heredado (importante)
  inherited;

  // Rellenar propiedades...
  vp := Self.USBControllerProperties;

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

  GetWMIPropertyValue(Self, 'InstallDate', v, vNull);
  if not vNull then begin
    vp.FInstallDate := EncodeDate(StrToInt(Copy(v, 1, 4)),StrToInt(Copy(v, 5, 2)),StrToInt(Copy(v, 7, 2)));
  end;

  GetWMIPropertyValue(Self, 'LastErrorCode', v, vNull);
  vp.FLastErrorCode := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Manufacturer', v, vNull);
  vp.FManufacturer := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'MaxNumberControlled', v, vNull);
  vp.FMaxNumberControlled := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Name', v, vNull);
  vp.FName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'PNPDeviceID', v, vNull);
  vp.FPNPDeviceID := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'PowerManagementCapabilities', v, vNull);
  vp.FPowerManagementCapabilitiesAsString := VariantStrValue(v, vNull);
//  vp.FPowerManagementCapabilities := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'PowerManagementSupported', v, vNull);
  vp.FPowerManagementSupported := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'ProtocolSupported', v, vNull);
  vp.FProtocolSupported := VariantIntegerValue(v, vNull);

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
function TUSBControllerProperties.GetAvailabilityAsString():string;
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
function TUSBControllerProperties.GetConfigManagerErrorCodeAsString():string;
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
function TUSBControllerProperties.GetProtocolSupportedAsString():string;
begin
  case FProtocolSupported of
    1: Result := ENUM_STRING_PROTOCOLSUPPORTED_1;
    2: Result := ENUM_STRING_PROTOCOLSUPPORTED_2;
    3: Result := ENUM_STRING_PROTOCOLSUPPORTED_3;
    4: Result := ENUM_STRING_PROTOCOLSUPPORTED_4;
    5: Result := ENUM_STRING_PROTOCOLSUPPORTED_5;
    6: Result := ENUM_STRING_PROTOCOLSUPPORTED_6;
    7: Result := ENUM_STRING_PROTOCOLSUPPORTED_7;
    8: Result := ENUM_STRING_PROTOCOLSUPPORTED_8;
    9: Result := ENUM_STRING_PROTOCOLSUPPORTED_9;
    10: Result := ENUM_STRING_PROTOCOLSUPPORTED_10;
    11: Result := ENUM_STRING_PROTOCOLSUPPORTED_11;
    12: Result := ENUM_STRING_PROTOCOLSUPPORTED_12;
    13: Result := ENUM_STRING_PROTOCOLSUPPORTED_13;
    14: Result := ENUM_STRING_PROTOCOLSUPPORTED_14;
    15: Result := ENUM_STRING_PROTOCOLSUPPORTED_15;
    16: Result := ENUM_STRING_PROTOCOLSUPPORTED_16;
    17: Result := ENUM_STRING_PROTOCOLSUPPORTED_17;
    18: Result := ENUM_STRING_PROTOCOLSUPPORTED_18;
    19: Result := ENUM_STRING_PROTOCOLSUPPORTED_19;
    20: Result := ENUM_STRING_PROTOCOLSUPPORTED_20;
    21: Result := ENUM_STRING_PROTOCOLSUPPORTED_21;
    22: Result := ENUM_STRING_PROTOCOLSUPPORTED_22;
    23: Result := ENUM_STRING_PROTOCOLSUPPORTED_23;
    24: Result := ENUM_STRING_PROTOCOLSUPPORTED_24;
    25: Result := ENUM_STRING_PROTOCOLSUPPORTED_25;
    26: Result := ENUM_STRING_PROTOCOLSUPPORTED_26;
    27: Result := ENUM_STRING_PROTOCOLSUPPORTED_27;
    28: Result := ENUM_STRING_PROTOCOLSUPPORTED_28;
    29: Result := ENUM_STRING_PROTOCOLSUPPORTED_29;
    30: Result := ENUM_STRING_PROTOCOLSUPPORTED_30;
    31: Result := ENUM_STRING_PROTOCOLSUPPORTED_31;
    32: Result := ENUM_STRING_PROTOCOLSUPPORTED_32;
    33: Result := ENUM_STRING_PROTOCOLSUPPORTED_33;
    34: Result := ENUM_STRING_PROTOCOLSUPPORTED_34;
    35: Result := ENUM_STRING_PROTOCOLSUPPORTED_35;
    36: Result := ENUM_STRING_PROTOCOLSUPPORTED_36;
    37: Result := ENUM_STRING_PROTOCOLSUPPORTED_37;
    38: Result := ENUM_STRING_PROTOCOLSUPPORTED_38;
    39: Result := ENUM_STRING_PROTOCOLSUPPORTED_39;
    40: Result := ENUM_STRING_PROTOCOLSUPPORTED_40;
    41: Result := ENUM_STRING_PROTOCOLSUPPORTED_41;
    42: Result := ENUM_STRING_PROTOCOLSUPPORTED_42;
    43: Result := ENUM_STRING_PROTOCOLSUPPORTED_43;
    44: Result := ENUM_STRING_PROTOCOLSUPPORTED_44;
    45: Result := ENUM_STRING_PROTOCOLSUPPORTED_45;
    46: Result := ENUM_STRING_PROTOCOLSUPPORTED_46;
    47: Result := ENUM_STRING_PROTOCOLSUPPORTED_47;
  else
    Result := STR_EMPTY;
  end;
end;


// Obtener la propiedad como string
function TUSBControllerProperties.GetStatusInfoAsString():string;
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

// {IMPL_ENUM}

end.
