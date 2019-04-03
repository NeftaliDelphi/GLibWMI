{ 
TDiskPartitionInfo  Component Version 1.3b - Suite GLib
Copyright (©) 2009,  by Germán Estévez (Neftalí) 
 
  Representa las características de las particiones creadas sobre un disco físico en un sistema Windows.
 
Utilización/Usage: 
  Basta con "soltar" el componente y activarlo. 
 
  Place the component in the form and active it. 
 
  MSDN Info: 
  http://msdn.microsoft.com/en-us/library/aa394135(VS.85).aspx 
 
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
unit CDiskPartitionInfo; 
 
{ 
========================================================================= 
 
  TDiskPartitionInfo.pas 
 
  Componente 
 
======================================================================== 
  Historia de las Versiones 
------------------------------------------------------------------------ 
 
  01/02/2010    * Creación. 
 
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
  TDiskPartitionProperties = class(TPersistent)
  private
    FAccess:Integer;
    FAccessAsString:string;
    FAvailability:Integer;
    FAvailabilityAsString:string;
    FBlockSize:Int64;
    FBootable:boolean;
    FBootPartition:boolean;
    FCaption:string;
    FConfigManagerErrorCode:Longword;
    FConfigManagerErrorCodeAsString:string;
    FConfigManagerUserConfig:boolean;
    FCreationClassName:string;
    FDescription:string;
    FDeviceID:string;
    FDiskIndex:Longword;
    FErrorCleared:boolean;
    FErrorDescription:string;
    FErrorMethodology:string;
    FHiddenSectors:Longword;
    FIndex:Longword;
    FInstallDate:TDateTime;
    FLastErrorCode:Longword;
    FName:string;
    FNumberOfBlocks:Int64;
    FPNPDeviceID:string;
    FPowerManagementCapabilities:TArrInteger;
    FPowerManagementCapabilitiesCount:integer;
    FPowerManagementCapabilitiesAsString:string;
    FPowerManagementSupported:boolean;
    FPrimaryPartition:boolean;
    FPurpose:string;
    FRewritePartition:boolean;
    FSize:Int64;
    FStartingOffset:Int64;
    FStatus:string;
    FStatusInfo:Integer;
    FStatusInfoAsString:string;
    FSystemCreationClassName:string;
    FSystemName:string;
    FTypePartition:string;
  private
    function GetPowerManagementCapabilities(index: integer): Integer;
  public
    property PowerManagementCapabilities[index:integer]:Integer read GetPowerManagementCapabilities;
    property PowerManagementCapabilitiesCount:integer read FPowerManagementCapabilitiesCount stored False;

    // Obtener la propiedad <StatusInfo> como string
    function GetStatusInfoAsString():string;

    // Obtener la propiedad <ConfigManagerErrorCode> como string
    function GetConfigManagerErrorCodeAsString():string;

    // Obtener la propiedad <Availability> como string
    function GetAvailabilityAsString():string;

    // Obtener la propiedad <Access> como string
    function GetAccessAsString():string;

// {GET_ENUM}

  published
    property Access:Integer read FAccess write FAccess stored False;
    property AccessAsString:string read GetAccessAsString  write FAccessAsString stored False;
    property Availability:Integer read FAvailability write FAvailability stored False;
    property AvailabilityAsString:string read GetAvailabilityAsString  write FAvailabilityAsString stored False;
    property BlockSize:Int64 read FBlockSize write FBlockSize stored False;
    property Bootable:boolean read FBootable write FBootable stored False;
    property BootPartition:boolean read FBootPartition write FBootPartition stored False;
    property Caption:string read FCaption write FCaption stored False;
    property ConfigManagerErrorCode:Longword read FConfigManagerErrorCode write FConfigManagerErrorCode stored False;
    property ConfigManagerErrorCodeAsString:string read GetConfigManagerErrorCodeAsString  write FConfigManagerErrorCodeAsString stored False;
    property ConfigManagerUserConfig:boolean read FConfigManagerUserConfig write FConfigManagerUserConfig stored False;
    property CreationClassName:string read FCreationClassName write FCreationClassName stored False;
    property Description:string read FDescription write FDescription stored False;
    property DeviceID:string read FDeviceID write FDeviceID stored False;
    property DiskIndex:Longword read FDiskIndex write FDiskIndex stored False;
    property ErrorCleared:boolean read FErrorCleared write FErrorCleared stored False;
    property ErrorDescription:string read FErrorDescription write FErrorDescription stored False;
    property ErrorMethodology:string read FErrorMethodology write FErrorMethodology stored False;
    property HiddenSectors:Longword read FHiddenSectors write FHiddenSectors stored False;
    property Index:Longword read FIndex write FIndex stored False;
    property InstallDate:TDateTime read FInstallDate write FInstallDate stored False;
    property LastErrorCode:Longword read FLastErrorCode write FLastErrorCode stored False;
    property Name:string read FName write FName stored False;
    property NumberOfBlocks:Int64 read FNumberOfBlocks write FNumberOfBlocks stored False;
    property PNPDeviceID:string read FPNPDeviceID write FPNPDeviceID stored False;
    property PowerManagementCapabilitiesAsString:string read FPowerManagementCapabilitiesAsString write FPowerManagementCapabilitiesAsString stored False;
    property PowerManagementSupported:boolean read FPowerManagementSupported write FPowerManagementSupported stored False;
    property PrimaryPartition:boolean read FPrimaryPartition write FPrimaryPartition stored False;
    property Purpose:string read FPurpose write FPurpose stored False;
    property RewritePartition:boolean read FRewritePartition write FRewritePartition stored False;
    property Size:Int64 read FSize write FSize stored False;
    property StartingOffset:Int64 read FStartingOffset write FStartingOffset stored False;
    property Status:string read FStatus write FStatus stored False;
    property StatusInfo:Integer read FStatusInfo write FStatusInfo stored False;
    property StatusInfoAsString:string read GetStatusInfoAsString  write FStatusInfoAsString stored False;
    property SystemCreationClassName:string read FSystemCreationClassName write FSystemCreationClassName stored False;
    property SystemName:string read FSystemName write FSystemName stored False;
    property TypePartition:string read FTypePartition write FTypePartition stored False;
  end;
  
  //: Implementación para el acceso vía WMI a la clase Win32_DiskPartition
  TDiskPartitionInfo = class(TWMIBase)
  private
    FDiskPartitionProperties: TDiskPartitionProperties;
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
    // propiedades de la DiskPartition
    property DiskPartitionProperties:TDiskPartitionProperties read FDiskPartitionProperties write FDiskPartitionProperties;
  end;

// Constantes para la propiedad StatusInfo
const
  ENUM_STRING_STATUSINFO_1 = 'Other';
  ENUM_STRING_STATUSINFO_2 = 'Unknown';
  ENUM_STRING_STATUSINFO_3 = 'Enabled';
  ENUM_STRING_STATUSINFO_4 = 'Disabled';
  ENUM_STRING_STATUSINFO_5 = 'Not Applicable';


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


// Constantes para la propiedad Access
const
  ENUM_STRING_ACCESS_0 = 'Unknown';
  ENUM_STRING_ACCESS_1 = 'Readable';
  ENUM_STRING_ACCESS_2 = 'Writable';
  ENUM_STRING_ACCESS_3 = 'Read/write Supported';
  ENUM_STRING_ACCESS_4 = 'Write Once';


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
 
  
{ TDiskPartition } 
{-------------------------------------------------------------------------------} 
// Limpiar las propiedades
procedure TDiskPartitionInfo.ClearProps;
begin

  Self.DiskPartitionProperties.FAccess := 0;
  Self.DiskPartitionProperties.FAvailability := 0;
  Self.DiskPartitionProperties.FBlockSize := 0;
  Self.DiskPartitionProperties.FBootable := False;
  Self.DiskPartitionProperties.FBootPartition := False;
  Self.DiskPartitionProperties.FCaption := STR_EMPTY;
  Self.DiskPartitionProperties.FConfigManagerErrorCode := 0;
  Self.DiskPartitionProperties.FConfigManagerUserConfig := False;
  Self.DiskPartitionProperties.FCreationClassName := STR_EMPTY;
  Self.DiskPartitionProperties.FDescription := STR_EMPTY;
  Self.DiskPartitionProperties.FDeviceID := STR_EMPTY;
  Self.DiskPartitionProperties.FDiskIndex := 0;
  Self.DiskPartitionProperties.FErrorCleared := False;
  Self.DiskPartitionProperties.FErrorDescription := STR_EMPTY;
  Self.DiskPartitionProperties.FErrorMethodology := STR_EMPTY;
  Self.DiskPartitionProperties.FHiddenSectors := 0;
  Self.DiskPartitionProperties.FIndex := 0;
  Self.DiskPartitionProperties.FInstallDate := 0;
  Self.DiskPartitionProperties.FLastErrorCode := 0;
  Self.DiskPartitionProperties.FName := STR_EMPTY;
  Self.DiskPartitionProperties.FNumberOfBlocks := 0;
  Self.DiskPartitionProperties.FPNPDeviceID := STR_EMPTY;
  Self.DiskPartitionProperties.FPowerManagementCapabilitiesCount := 0;
  Self.DiskPartitionProperties.FPowerManagementCapabilitiesAsString := STR_EMPTY;
  SetLength(Self.DiskPartitionProperties.FPowerManagementCapabilities,0);
  Self.DiskPartitionProperties.FPowerManagementSupported := False;
  Self.DiskPartitionProperties.FPrimaryPartition := False;
  Self.DiskPartitionProperties.FPurpose := STR_EMPTY;
  Self.DiskPartitionProperties.FRewritePartition := False;
  Self.DiskPartitionProperties.FSize := 0;
  Self.DiskPartitionProperties.FStartingOffset := 0;
  Self.DiskPartitionProperties.FStatus := STR_EMPTY;
  Self.DiskPartitionProperties.FStatusInfo := 0;
  Self.DiskPartitionProperties.FSystemCreationClassName := STR_EMPTY;
  Self.DiskPartitionProperties.FSystemName := STR_EMPTY;
  Self.DiskPartitionProperties.FTypePartition := STR_EMPTY;

end;
//: Constructor del componente 
constructor TDiskPartitionInfo.Create(AOwner: TComponent); 
begin 
  inherited; 
 
  Self.FDiskPartitionProperties := TDiskPartitionProperties.Create(); 
  Self.MSDNHelp := 'http://msdn.microsoft.com/en-us/library/aa394135(VS.85).aspx';
end; 
 
// destructor del componente 
destructor TDiskPartitionInfo.Destroy(); 
begin 
 
  // liberar 
  FreeAndNil(Self.FDiskPartitionProperties); 
 
  inherited; 
end; 
 
// Obtener la clase 
function TDiskPartitionInfo.GetWMIClass(): string; 
begin 
  Result := 'Win32_DiskPartition'
end; 
 
// Obtener Root 
function TDiskPartitionInfo.GetWMIRoot(): string; 
begin 
  Result := STR_CIM2_ROOT; 
end; 
 
// Active 
procedure TDiskPartitionInfo.SetActive(const Value: Boolean); 
begin 
  // método heredado 
  inherited; 
end; 
  
// Acceso a los elementos de la propiedad <PowerManagementCapabilities>
function TDiskPartitionProperties.GetPowerManagementCapabilities(index: integer):Integer;
begin
  if (index >= Self.FPowerManagementCapabilitiesCount) then begin
    Index := Self.FPowerManagementCapabilitiesCount - 1;
  end;
  Result := Self.FPowerManagementCapabilities[index];
end;
 
//: Rellenar las propiedades del componente.
procedure TDiskPartitionInfo.FillProperties(AIndex: integer);
var
  v:variant;
  vNull:boolean;
  vp:TDiskPartitionProperties;
begin

  // Llamar al heredado (importante)
  inherited;

  // Rellenar propiedades...
  vp := Self.DiskPartitionProperties;

  GetWMIPropertyValue(Self, 'Access', v, vNull);
  vp.FAccess := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Availability', v, vNull);
  vp.FAvailability := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'BlockSize', v, vNull);
  vp.FBlockSize := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Bootable', v, vNull);
  vp.FBootable := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'BootPartition', v, vNull);
  vp.FBootPartition := VariantBooleanValue(v, vNull);

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

  GetWMIPropertyValue(Self, 'DiskIndex', v, vNull);
  vp.FDiskIndex := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'ErrorCleared', v, vNull);
  vp.FErrorCleared := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'ErrorDescription', v, vNull);
  vp.FErrorDescription := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'ErrorMethodology', v, vNull);
  vp.FErrorMethodology := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'HiddenSectors', v, vNull);
  vp.FHiddenSectors := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Index', v, vNull);
  vp.FIndex := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'InstallDate', v, vNull);
  if not vNull then begin
    vp.FInstallDate := EncodeDate(StrToInt(Copy(v, 1, 4)),StrToInt(Copy(v, 5, 2)),StrToInt(Copy(v, 7, 2)));
  end;

  GetWMIPropertyValue(Self, 'LastErrorCode', v, vNull);
  vp.FLastErrorCode := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Name', v, vNull);
  vp.FName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'NumberOfBlocks', v, vNull);
  vp.FNumberOfBlocks := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'PNPDeviceID', v, vNull);
  vp.FPNPDeviceID := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'PowerManagementCapabilities', v, vNull);
  vp.FPowerManagementCapabilitiesAsString := VariantStrValue(v, vNull);
//  vp.FPowerManagementCapabilities := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'PowerManagementSupported', v, vNull);
  vp.FPowerManagementSupported := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'PrimaryPartition', v, vNull);
  vp.FPrimaryPartition := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'Purpose', v, vNull);
  vp.FPurpose := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'RewritePartition', v, vNull);
  vp.FRewritePartition := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'Size', v, vNull);
  vp.FSize := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'StartingOffset', v, vNull);
  vp.FStartingOffset := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Status', v, vNull);
  vp.FStatus := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'StatusInfo', v, vNull);
  vp.FStatusInfo := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'SystemCreationClassName', v, vNull);
  vp.FSystemCreationClassName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'SystemName', v, vNull);
  vp.FSystemName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Type', v, vNull);
  vp.FTypePartition := VariantStrValue(v, vNull);

end;


// Obtener la propiedad como string
function TDiskPartitionProperties.GetStatusInfoAsString():string;
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
function TDiskPartitionProperties.GetConfigManagerErrorCodeAsString():string;
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
function TDiskPartitionProperties.GetAvailabilityAsString():string;
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
function TDiskPartitionProperties.GetAccessAsString():string;
begin
  case FAccess of
    0: Result := ENUM_STRING_ACCESS_0;
    1: Result := ENUM_STRING_ACCESS_1;
    2: Result := ENUM_STRING_ACCESS_2;
    3: Result := ENUM_STRING_ACCESS_3;
    4: Result := ENUM_STRING_ACCESS_4;
  else
    Result := STR_EMPTY;
  end;
end;

// {IMPL_ENUM}

end.
