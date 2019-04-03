{
TCDRomDriveInfo  Component Version 1.1 - Suite GLib 
Copyright (©) 2009,  by Germán Estévez (Neftalí) 
 
  Representa las unidades de CD-ROM instaladas en el ordenador
 
Utilización/Usage: 
  Basta con "soltar" el componente y activarlo. 
 
  Place the component in the form and active it. 
 
  MSDN Info: 
  http://msdn.microsoft.com/en-us/library/aa394081(VS.85).aspx 
 
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
unit CCDRomDriveInfo; 
 
{ 
========================================================================= 
 
  TCDRomDriveInfo.pas 
 
  Componente 
 
======================================================================== 
  Historia de las Versiones 
------------------------------------------------------------------------ 
 
  28/12/2009    * Creación. 
 
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
  TCDRomDriveProperties = class(TPersistent)
  private
    FAvailability:Integer;
    FAvailabilityAsString:string;
    FCapabilities:TArrInteger;
    FCapabilitiesCount:integer;
    FCapabilitiesAsString:string;
    FCapabilityDescriptions:TArrString;
    FCapabilityDescriptionsCount:integer;
    FCapabilityDescriptionsAsString:string;
    FCaption:string;
    FCompressionMethod:string;
    FConfigManagerErrorCode:Longword;
    FConfigManagerErrorCodeAsString:string;
    FConfigManagerUserConfig:boolean;
    FCreationClassName:string;
    FDefaultBlockSize:Int64;
    FDescription:string;
    FDeviceID:string;
    FDrive:string;
    FDriveIntegrity:boolean;
    FErrorCleared:boolean;
    FErrorDescription:string;
    FErrorMethodology:string;
    FFileSystemFlags:Integer;
    FFileSystemFlagsEx:Longword;
    FFileSystemFlagsExAsString:string;
    FId:string;
    FInstallDate:TDateTime;
    FLastErrorCode:Longword;
    FManufacturer:string;
    FMaxBlockSize:Int64;
    FMaximumComponentLength:Longword;
    FMaxMediaSize:Int64;
    FMediaLoaded:boolean;
    FMediaType:string;
    FMfrAssignedRevisionLevel:string;
    FMinBlockSize:Int64;
    FName:string;
    FNeedsCleaning:boolean;
    FNumberOfMediaSupported:Longword;
    FPNPDeviceID:string;
    FPowerManagementCapabilities:TArrInteger;
    FPowerManagementCapabilitiesCount:integer;
    FPowerManagementCapabilitiesAsString:string;
    FPowerManagementSupported:boolean;
    FRevisionLevel:string;
    FSCSIBus:Longword;
    FSCSILogicalUnit:Integer;
    FSCSIPort:Integer;
    FSCSITargetId:Integer;
    FSerialNumber:Integer;
    FSize:Int64;
    FStatus:string;
    FStatusInfo:Integer;
    FStatusInfoAsString:string;
    FSystemCreationClassName:string;
    FSystemName:string;
    FTransferRate:Extended;
    FVolumeName:string;
    FVolumeSerialNumber:string;
  private
    function GetCapabilities(index: integer): Integer;
    function GetCapabilityDescriptions(index: integer): string;
    function GetPowerManagementCapabilities(index: integer): Integer;
  public
    property Capabilities[index:integer]:Integer read GetCapabilities;
    property CapabilitiesCount:integer read FCapabilitiesCount stored False;
    property CapabilityDescriptions[index:integer]:string read GetCapabilityDescriptions;
    property CapabilityDescriptionsCount:integer read FCapabilityDescriptionsCount stored False;
    property PowerManagementCapabilities[index:integer]:Integer read GetPowerManagementCapabilities;
    property PowerManagementCapabilitiesCount:integer read FPowerManagementCapabilitiesCount stored False;
    // Obtener la propiedad <Availability> como string
    function GetAvailabilityAsString():string;
    // Obtener la propiedad <StatusInfo> como string
    function GetStatusInfoAsString():string;
    // Obtener la propiedad <ConfigManagerErrorCode> como string
    function GetConfigManagerErrorCodeAsString():string;
    // Obtener la propiedad <FileSystemFlagsEx> como string
    function GetFileSystemFlagsExAsString():string;
  published
    property Availability:Integer read FAvailability write FAvailability stored False;
    property AvailabilityAsString:string read GetAvailabilityAsString write FAvailabilityAsString stored False;
    property CapabilitiesAsString:string read FCapabilitiesAsString write FCapabilitiesAsString stored False;
    property CapabilityDescriptionsAsString:string read FCapabilityDescriptionsAsString write FCapabilityDescriptionsAsString stored False;
    property Caption:string read FCaption write FCaption stored False;
    property CompressionMethod:string read FCompressionMethod write FCompressionMethod stored False;
    property ConfigManagerErrorCode:Longword read FConfigManagerErrorCode write FConfigManagerErrorCode stored False;
    property ConfigManagerErrorCodeAsString:string read GetConfigManagerErrorCodeAsString write FConfigManagerErrorCodeAsString stored False;
    property ConfigManagerUserConfig:boolean read FConfigManagerUserConfig write FConfigManagerUserConfig stored False;
    property CreationClassName:string read FCreationClassName write FCreationClassName stored False;
    property DefaultBlockSize:Int64 read FDefaultBlockSize write FDefaultBlockSize stored False;
    property Description:string read FDescription write FDescription stored False;
    property DeviceID:string read FDeviceID write FDeviceID stored False;
    property Drive:string read FDrive write FDrive stored False;
    property DriveIntegrity:boolean read FDriveIntegrity write FDriveIntegrity stored False;
    property ErrorCleared:boolean read FErrorCleared write FErrorCleared stored False;
    property ErrorDescription:string read FErrorDescription write FErrorDescription stored False;
    property ErrorMethodology:string read FErrorMethodology write FErrorMethodology stored False;
    property FileSystemFlags:Integer read FFileSystemFlags write FFileSystemFlags stored False;
    property FileSystemFlagsEx:Longword read FFileSystemFlagsEx write FFileSystemFlagsEx stored False;
    property FileSystemFlagsExAsString:string read GetFileSystemFlagsExAsString write FFileSystemFlagsExAsString stored False;
    property Id:string read FId write FId stored False;
    property InstallDate:TDateTime read FInstallDate write FInstallDate stored False;
    property LastErrorCode:Longword read FLastErrorCode write FLastErrorCode stored False;
    property Manufacturer:string read FManufacturer write FManufacturer stored False;
    property MaxBlockSize:Int64 read FMaxBlockSize write FMaxBlockSize stored False;
    property MaximumComponentLength:Longword read FMaximumComponentLength write FMaximumComponentLength stored False;
    property MaxMediaSize:Int64 read FMaxMediaSize write FMaxMediaSize stored False;
    property MediaLoaded:boolean read FMediaLoaded write FMediaLoaded stored False;
    property MediaType:string read FMediaType write FMediaType stored False;
    property MfrAssignedRevisionLevel:string read FMfrAssignedRevisionLevel write FMfrAssignedRevisionLevel stored False;
    property MinBlockSize:Int64 read FMinBlockSize write FMinBlockSize stored False;
    property Name:string read FName write FName stored False;
    property NeedsCleaning:boolean read FNeedsCleaning write FNeedsCleaning stored False;
    property NumberOfMediaSupported:Longword read FNumberOfMediaSupported write FNumberOfMediaSupported stored False;
    property PNPDeviceID:string read FPNPDeviceID write FPNPDeviceID stored False;
    property PowerManagementCapabilitiesAsString:string read FPowerManagementCapabilitiesAsString write FPowerManagementCapabilitiesAsString stored False;
    property PowerManagementSupported:boolean read FPowerManagementSupported write FPowerManagementSupported stored False;
    property RevisionLevel:string read FRevisionLevel write FRevisionLevel stored False;
    property SCSIBus:Longword read FSCSIBus write FSCSIBus stored False;
    property SCSILogicalUnit:Integer read FSCSILogicalUnit write FSCSILogicalUnit stored False;
    property SCSIPort:Integer read FSCSIPort write FSCSIPort stored False;
    property SCSITargetId:Integer read FSCSITargetId write FSCSITargetId stored False;
    property SerialNumber:Integer read FSerialNumber write FSerialNumber stored False;
    property Size:Int64 read FSize write FSize stored False;
    property Status:string read FStatus write FStatus stored False;
    property StatusInfo:Integer read FStatusInfo write FStatusInfo stored False;
    property StatusInfoAsString:string read GetStatusInfoAsString write FStatusInfoAsString stored False;
    property SystemCreationClassName:string read FSystemCreationClassName write FSystemCreationClassName stored False;
    property SystemName:string read FSystemName write FSystemName stored False;
    property TransferRate:Extended read FTransferRate write FTransferRate stored False;
    property VolumeName:string read FVolumeName write FVolumeName stored False;
    property VolumeSerialNumber:string read FVolumeSerialNumber write FVolumeSerialNumber stored False;
  end;
  
  //: Implementación para el acceso vía WMI a la clase Win32_CDRomDrive
  TCDRomDriveInfo = class(TWMIBase)
  private
    FCDRomDriveProperties: TCDRomDriveProperties;
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
    // propiedades de la CDRomDrive
    property CDRomDriveProperties:TCDRomDriveProperties read FCDRomDriveProperties write FCDRomDriveProperties;
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


// Constantes para la propiedad FileSystemFlagsEx
const
  ENUM_STRING_FILESYSTEMFLAGSEX_1 = 'The file system supports case-sensitive file names.';
  ENUM_STRING_FILESYSTEMFLAGSEX_2 = 'The file system preserves the case of file names when it places a name on a disk.';
  ENUM_STRING_FILESYSTEMFLAGSEX_4 = 'The file system supports Unicode in file names as they appear on the disk.';
  ENUM_STRING_FILESYSTEMFLAGSEX_8 = 'The file system preserves and enforces access control lists (ACLs). For example, the NTFS file system preserves and enforces ACLs and the FAT file system does not.';
  ENUM_STRING_FILESYSTEMFLAGSEX_16 = 'The file system supports file-based compression.';
  ENUM_STRING_FILESYSTEMFLAGSEX_32 = 'The file system supports disk quotas.';
  ENUM_STRING_FILESYSTEMFLAGSEX_64 = 'The file system supports spare files.';
  ENUM_STRING_FILESYSTEMFLAGSEX_128 = 'The file system supports reparse points.. SUPPORTS_REMOTE_STORAGE';
  ENUM_STRING_FILESYSTEMFLAGSEX_256 = 'The file system supports the remote storage of files.';
  ENUM_STRING_FILESYSTEMFLAGSEX_16384 = 'The file system supports file names that are longer than eight characters.';
  ENUM_STRING_FILESYSTEMFLAGSEX_32768 = 'The specified disk volume is a compressed volume, for example, a DougbleSpace volume.';
  ENUM_STRING_FILESYSTEMFLAGSEX_524289 = 'The specified volume is read-only.. Windows 2000, Windows NT 4.0, and Windows Me/98/95:  This value is not supported.';
  ENUM_STRING_FILESYSTEMFLAGSEX_65536 = 'The file system supports object identifiers.. SUPPORTS_ENCRYPTION';
  ENUM_STRING_FILESYSTEMFLAGSEX_131072 = 'The file system supports the Encrypted File System (EFS).. SUPPORTS_NAMED_STREAMS';
  ENUM_STRING_FILESYSTEMFLAGSEX_262144 = 'The file system supports named streams.';


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
 
  
{ TCDRomDrive } 
{-------------------------------------------------------------------------------} 
// Limpiar las propiedades
procedure TCDRomDriveInfo.ClearProps;
begin

  Self.CDRomDriveProperties.FAvailability := 0;
  Self.CDRomDriveProperties.FCapabilitiesCount := 0;
  Self.CDRomDriveProperties.FCapabilitiesAsString := STR_EMPTY;
  SetLength(Self.CDRomDriveProperties.FCapabilities,0);
  Self.CDRomDriveProperties.FCapabilityDescriptionsCount := 0;
  Self.CDRomDriveProperties.FCapabilityDescriptionsAsString := STR_EMPTY;
  SetLength(Self.CDRomDriveProperties.FCapabilityDescriptions,0);
  Self.CDRomDriveProperties.FCaption := STR_EMPTY;
  Self.CDRomDriveProperties.FCompressionMethod := STR_EMPTY;
  Self.CDRomDriveProperties.FConfigManagerErrorCode := 0;
  Self.CDRomDriveProperties.FConfigManagerUserConfig := False;
  Self.CDRomDriveProperties.FCreationClassName := STR_EMPTY;
  Self.CDRomDriveProperties.FDefaultBlockSize := 0;
  Self.CDRomDriveProperties.FDescription := STR_EMPTY;
  Self.CDRomDriveProperties.FDeviceID := STR_EMPTY;
  Self.CDRomDriveProperties.FDrive := STR_EMPTY;
  Self.CDRomDriveProperties.FDriveIntegrity := False;
  Self.CDRomDriveProperties.FErrorCleared := False;
  Self.CDRomDriveProperties.FErrorDescription := STR_EMPTY;
  Self.CDRomDriveProperties.FErrorMethodology := STR_EMPTY;
  Self.CDRomDriveProperties.FFileSystemFlags := 0;
  Self.CDRomDriveProperties.FFileSystemFlagsEx := 0;
  Self.CDRomDriveProperties.FId := STR_EMPTY;
  Self.CDRomDriveProperties.FInstallDate := 0;
  Self.CDRomDriveProperties.FLastErrorCode := 0;
  Self.CDRomDriveProperties.FManufacturer := STR_EMPTY;
  Self.CDRomDriveProperties.FMaxBlockSize := 0;
  Self.CDRomDriveProperties.FMaximumComponentLength := 0;
  Self.CDRomDriveProperties.FMaxMediaSize := 0;
  Self.CDRomDriveProperties.FMediaLoaded := False;
  Self.CDRomDriveProperties.FMediaType := STR_EMPTY;
  Self.CDRomDriveProperties.FMfrAssignedRevisionLevel := STR_EMPTY;
  Self.CDRomDriveProperties.FMinBlockSize := 0;
  Self.CDRomDriveProperties.FName := STR_EMPTY;
  Self.CDRomDriveProperties.FNeedsCleaning := False;
  Self.CDRomDriveProperties.FNumberOfMediaSupported := 0;
  Self.CDRomDriveProperties.FPNPDeviceID := STR_EMPTY;
  Self.CDRomDriveProperties.FPowerManagementCapabilitiesCount := 0;
  Self.CDRomDriveProperties.FPowerManagementCapabilitiesAsString := STR_EMPTY;
  SetLength(Self.CDRomDriveProperties.FPowerManagementCapabilities,0);
  Self.CDRomDriveProperties.FPowerManagementSupported := False;
  Self.CDRomDriveProperties.FRevisionLevel := STR_EMPTY;
  Self.CDRomDriveProperties.FSCSIBus := 0;
  Self.CDRomDriveProperties.FSCSILogicalUnit := 0;
  Self.CDRomDriveProperties.FSCSIPort := 0;
  Self.CDRomDriveProperties.FSCSITargetId := 0;
  Self.CDRomDriveProperties.FSerialNumber := 0;
  Self.CDRomDriveProperties.FSize := 0;
  Self.CDRomDriveProperties.FStatus := STR_EMPTY;
  Self.CDRomDriveProperties.FStatusInfo := 0;
  Self.CDRomDriveProperties.FSystemCreationClassName := STR_EMPTY;
  Self.CDRomDriveProperties.FSystemName := STR_EMPTY;
  Self.CDRomDriveProperties.FTransferRate := 0;
  Self.CDRomDriveProperties.FVolumeName := STR_EMPTY;
  Self.CDRomDriveProperties.FVolumeSerialNumber := STR_EMPTY;

end;
//: Constructor del componente 
constructor TCDRomDriveInfo.Create(AOwner: TComponent); 
begin 
  inherited; 
 
  Self.FCDRomDriveProperties := TCDRomDriveProperties.Create(); 
  Self.MSDNHelp := 'http://msdn.microsoft.com/en-us/library/aa394081(VS.85).aspx';
end; 
 
// destructor del componente 
destructor TCDRomDriveInfo.Destroy(); 
begin 
 
  // liberar 
  FreeAndNil(Self.FCDRomDriveProperties); 
 
  inherited; 
end; 
 
// Obtener la clase 
function TCDRomDriveInfo.GetWMIClass(): string; 
begin 
  Result := 'Win32_CDRomDrive'
end; 
 
// Obtener Root 
function TCDRomDriveInfo.GetWMIRoot(): string; 
begin 
  Result := STR_CIM2_ROOT; 
end; 
 
// Active 
procedure TCDRomDriveInfo.SetActive(const Value: Boolean); 
begin 
  // método heredado 
  inherited; 
end; 
  
// Acceso a los elementos de la propiedad <Capabilities>
function TCDRomDriveProperties.GetCapabilities(index: integer):Integer;
begin
  if (index >= Self.FCapabilitiesCount) then begin
    Index := Self.FCapabilitiesCount - 1;
  end;
  Result := Self.FCapabilities[index];
end;
 
// Acceso a los elementos de la propiedad <CapabilityDescriptions>
function TCDRomDriveProperties.GetCapabilityDescriptions(index: integer):string;
begin
  if (index >= Self.FCapabilityDescriptionsCount) then begin
    Index := Self.FCapabilityDescriptionsCount - 1;
  end;
  Result := Self.FCapabilityDescriptions[index];
end;
 
// Acceso a los elementos de la propiedad <PowerManagementCapabilities>
function TCDRomDriveProperties.GetPowerManagementCapabilities(index: integer):Integer;
begin
  if (index >= Self.FPowerManagementCapabilitiesCount) then begin
    Index := Self.FPowerManagementCapabilitiesCount - 1;
  end;
  Result := Self.FPowerManagementCapabilities[index];
end;
 
//: Rellenar las propiedades del componente.
procedure TCDRomDriveInfo.FillProperties(AIndex: integer);
var
  v:variant;
  vNull:boolean;
  vp:TCDRomDriveProperties;
begin

  // Llamar al heredado (importante)
  inherited;

  // Rellenar propiedades...
  vp := Self.CDRomDriveProperties;

  GetWMIPropertyValue(Self, 'Availability', v, vNull);
  vp.FAvailability := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Capabilities', v, vNull);
  vp.FCapabilitiesAsString := VariantStrValue(v, vNull);
//  vp.FCapabilities := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'CapabilityDescriptions', v, vNull);
  vp.FCapabilityDescriptionsAsString := VariantStrValue(v, vNull);
//  vp.FCapabilityDescriptions := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Caption', v, vNull);
  vp.FCaption := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'CompressionMethod', v, vNull);
  vp.FCompressionMethod := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'ConfigManagerErrorCode', v, vNull);
  vp.FConfigManagerErrorCode := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'ConfigManagerUserConfig', v, vNull);
  vp.FConfigManagerUserConfig := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'CreationClassName', v, vNull);
  vp.FCreationClassName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'DefaultBlockSize', v, vNull);
  vp.FDefaultBlockSize := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Description', v, vNull);
  vp.FDescription := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'DeviceID', v, vNull);
  vp.FDeviceID := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Drive', v, vNull);
  vp.FDrive := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'DriveIntegrity', v, vNull);
  vp.FDriveIntegrity := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'ErrorCleared', v, vNull);
  vp.FErrorCleared := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'ErrorDescription', v, vNull);
  vp.FErrorDescription := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'ErrorMethodology', v, vNull);
  vp.FErrorMethodology := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'FileSystemFlags', v, vNull);
  vp.FFileSystemFlags := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'FileSystemFlagsEx', v, vNull);
  vp.FFileSystemFlagsEx := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Id', v, vNull);
  vp.FId := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'InstallDate', v, vNull);
  if not vNull then begin
    vp.FInstallDate := EncodeDate(StrToInt(Copy(v, 1, 4)),StrToInt(Copy(v, 5, 2)),StrToInt(Copy(v, 7, 2)));
  end;

  GetWMIPropertyValue(Self, 'LastErrorCode', v, vNull);
  vp.FLastErrorCode := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Manufacturer', v, vNull);
  vp.FManufacturer := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'MaxBlockSize', v, vNull);
  vp.FMaxBlockSize := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'MaximumComponentLength', v, vNull);
  vp.FMaximumComponentLength := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'MaxMediaSize', v, vNull);
  vp.FMaxMediaSize := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'MediaLoaded', v, vNull);
  vp.FMediaLoaded := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'MediaType', v, vNull);
  vp.FMediaType := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'MfrAssignedRevisionLevel', v, vNull);
  vp.FMfrAssignedRevisionLevel := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'MinBlockSize', v, vNull);
  vp.FMinBlockSize := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Name', v, vNull);
  vp.FName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'NeedsCleaning', v, vNull);
  vp.FNeedsCleaning := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'NumberOfMediaSupported', v, vNull);
  vp.FNumberOfMediaSupported := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'PNPDeviceID', v, vNull);
  vp.FPNPDeviceID := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'PowerManagementCapabilities', v, vNull);
  vp.FPowerManagementCapabilitiesAsString := VariantStrValue(v, vNull);
//  vp.FPowerManagementCapabilities := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'PowerManagementSupported', v, vNull);
  vp.FPowerManagementSupported := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'RevisionLevel', v, vNull);
  vp.FRevisionLevel := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'SCSIBus', v, vNull);
  vp.FSCSIBus := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'SCSILogicalUnit', v, vNull);
  vp.FSCSILogicalUnit := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'SCSIPort', v, vNull);
  vp.FSCSIPort := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'SCSITargetId', v, vNull);
  vp.FSCSITargetId := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'SerialNumber', v, vNull);
  vp.FSerialNumber := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Size', v, vNull);
  vp.FSize := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Status', v, vNull);
  vp.FStatus := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'StatusInfo', v, vNull);
  vp.FStatusInfo := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'SystemCreationClassName', v, vNull);
  vp.FSystemCreationClassName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'SystemName', v, vNull);
  vp.FSystemName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'TransferRate', v, vNull);
  vp.FTransferRate := VariantFloatValue(v, vNull);

  GetWMIPropertyValue(Self, 'VolumeName', v, vNull);
  vp.FVolumeName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'VolumeSerialNumber', v, vNull);
  vp.FVolumeSerialNumber := VariantStrValue(v, vNull);

end;

// Obtener la propiedad como string
function TCDRomDriveProperties.GetAvailabilityAsString():string;
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
function TCDRomDriveProperties.GetStatusInfoAsString():string;
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
function TCDRomDriveProperties.GetConfigManagerErrorCodeAsString():string;
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
function TCDRomDriveProperties.GetFileSystemFlagsExAsString():string;
begin
  case FFileSystemFlagsEx of
    1: Result := ENUM_STRING_FILESYSTEMFLAGSEX_1;
    2: Result := ENUM_STRING_FILESYSTEMFLAGSEX_2;
    4: Result := ENUM_STRING_FILESYSTEMFLAGSEX_4;
    8: Result := ENUM_STRING_FILESYSTEMFLAGSEX_8;
    16: Result := ENUM_STRING_FILESYSTEMFLAGSEX_16;
    32: Result := ENUM_STRING_FILESYSTEMFLAGSEX_32;
    64: Result := ENUM_STRING_FILESYSTEMFLAGSEX_64;
    128: Result := ENUM_STRING_FILESYSTEMFLAGSEX_128;
    256: Result := ENUM_STRING_FILESYSTEMFLAGSEX_256;
    16384: Result := ENUM_STRING_FILESYSTEMFLAGSEX_16384;
    32768: Result := ENUM_STRING_FILESYSTEMFLAGSEX_32768;
    524289: Result := ENUM_STRING_FILESYSTEMFLAGSEX_524289;
    65536: Result := ENUM_STRING_FILESYSTEMFLAGSEX_65536;
    131072: Result := ENUM_STRING_FILESYSTEMFLAGSEX_131072;
    262144: Result := ENUM_STRING_FILESYSTEMFLAGSEX_262144;
  else
    Result := STR_EMPTY;
  end;
end;

end.

