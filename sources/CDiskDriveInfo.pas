{ 
TDiskDriveInfo  Component Version 1.1 - Suite GLib 
Copyright (©) 2009,  by Germán Estévez (Neftalí) 
 
  http://msdn.microsoft.com/en-us/library/aa394132(VS.85).aspx
 
Utilización/Usage: 
  Basta con "soltar" el componente y activarlo. 
 
  Place the component in the form and active it. 
 
  MSDN Info: 
  Representa las unidades de disco instaladas en el equipo. 
 
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
unit CDiskDriveInfo; 
 
{ 
========================================================================= 
 
  TDiskDriveInfo.pas 
 
  Componente 
 
======================================================================== 
  Historia de las Versiones 
------------------------------------------------------------------------ 
 
  23/12/2009    * Creación. 
 
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
  TDiskDriveProperties = class(TPersistent)
  private
    FAvailability:Integer;
    FAvailabilityAsString:string;
    FBytesPerSector:Longword;
    FCapabilities:TArrInteger;
    FCapabilitiesCount:integer;
    FCapabilitiesAsString:string;
    FCapabilityDescriptions:TArrString;
    FCapabilityDescriptionsCount:integer;
    FCapabilityDescriptionsAsString:string;
    FCaption:string;
    FCompressionMethod:string;
    FConfigManagerErrorCode:Longword;
    FConfigManagerUserConfig:boolean;
    FCreationClassName:string;
    FDefaultBlockSize:Int64;
    FDescription:string;
    FDeviceID:string;
    FErrorCleared:boolean;
    FErrorDescription:string;
    FErrorMethodology:string;
    FFirmwareRevision:string;
    FIndex:Longword;
    FInstallDate:TDateTime;
    FInterfaceType:string;
    FLastErrorCode:Longword;
    FManufacturer:string;
    FMaxBlockSize:Int64;
    FMaxMediaSize:Int64;
    FMediaLoaded:boolean;
    FMediaType:string;
    FMinBlockSize:Int64;
    FModel:string;
    FName:string;
    FNeedsCleaning:boolean;
    FNumberOfMediaSupported:Longword;
    FPartitions:Longword;
    FPNPDeviceID:string;
    FPowerManagementCapabilities:TArrInteger;
    FPowerManagementCapabilitiesCount:integer;
    FPowerManagementCapabilitiesAsString:string;
    FPowerManagementSupported:boolean;
    FSCSIBus:Longword;
    FSCSILogicalUnit:Integer;
    FSCSIPort:Integer;
    FSCSITargetId:Integer;
    FSectorsPerTrack:Longword;
    FSerialNumber:string;
    FSignature:Longword;
    FSize:Int64;
    FStatus:string;
    FStatusInfo:Integer;
    FSystemCreationClassName:string;
    FSystemName:string;
    FTotalCylinders:Int64;
    FTotalHeads:Longword;
    FTotalSectors:Int64;
    FTotalTracks:Int64;
    FTracksPerCylinder:Longword;
  private
    function GetCapabilities(index: integer): Integer;
    function GetCapabilityDescriptions(index: integer): string;
    function GetPowerManagementCapabilities(index: integer): Integer;
    // Obtener la propiedad <Availability> como string
    function GetAvailabilityAsString():string;
    // Obtener la propiedad <Capabilities> como string
    //hint function GetCapabilitiesAsString():string;
  public
    property Capabilities[index:integer]:Integer read GetCapabilities;
    property CapabilitiesCount:integer read FCapabilitiesCount stored False;
    property CapabilityDescriptions[index:integer]:string read GetCapabilityDescriptions;
    property CapabilityDescriptionsCount:integer read FCapabilityDescriptionsCount stored False;
    property PowerManagementCapabilities[index:integer]:Integer read GetPowerManagementCapabilities;
    property PowerManagementCapabilitiesCount:integer read FPowerManagementCapabilitiesCount stored False;
  published
    property Availability:Integer read FAvailability write FAvailability stored False;
    property AvailabilityAsString:string read GetAvailabilityAsString write FAvailabilityAsString stored False;
    property BytesPerSector:Longword read FBytesPerSector write FBytesPerSector stored False;
    property CapabilitiesAsString:string read FCapabilitiesAsString write FCapabilitiesAsString stored False;
//    property CapabilitiesAsString:string read GetCapabilitiesAsString;
    property CapabilityDescriptionsAsString:string read FCapabilityDescriptionsAsString write FCapabilityDescriptionsAsString stored False;
    property Caption:string read FCaption write FCaption stored False;
    property CompressionMethod:string read FCompressionMethod write FCompressionMethod stored False;
    property ConfigManagerErrorCode:Longword read FConfigManagerErrorCode write FConfigManagerErrorCode stored False;
    property ConfigManagerUserConfig:boolean read FConfigManagerUserConfig write FConfigManagerUserConfig stored False;
    property CreationClassName:string read FCreationClassName write FCreationClassName stored False;
    property DefaultBlockSize:Int64 read FDefaultBlockSize write FDefaultBlockSize stored False;
    property Description:string read FDescription write FDescription stored False;
    property DeviceID:string read FDeviceID write FDeviceID stored False;
    property ErrorCleared:boolean read FErrorCleared write FErrorCleared stored False;
    property ErrorDescription:string read FErrorDescription write FErrorDescription stored False;
    property ErrorMethodology:string read FErrorMethodology write FErrorMethodology stored False;
    property FirmwareRevision:string read FFirmwareRevision write FFirmwareRevision stored False;
    property Index:Longword read FIndex write FIndex stored False;
    property InstallDate:TDateTime read FInstallDate write FInstallDate stored False;
    property InterfaceType:string read FInterfaceType write FInterfaceType stored False;
    property LastErrorCode:Longword read FLastErrorCode write FLastErrorCode stored False;
    property Manufacturer:string read FManufacturer write FManufacturer stored False;
    property MaxBlockSize:Int64 read FMaxBlockSize write FMaxBlockSize stored False;
    property MaxMediaSize:Int64 read FMaxMediaSize write FMaxMediaSize stored False;
    property MediaLoaded:boolean read FMediaLoaded write FMediaLoaded stored False;
    property MediaType:string read FMediaType write FMediaType stored False;
    property MinBlockSize:Int64 read FMinBlockSize write FMinBlockSize stored False;
    property Model:string read FModel write FModel stored False;
    property Name:string read FName write FName stored False;
    property NeedsCleaning:boolean read FNeedsCleaning write FNeedsCleaning stored False;
    property NumberOfMediaSupported:Longword read FNumberOfMediaSupported write FNumberOfMediaSupported stored False;
    property Partitions:Longword read FPartitions write FPartitions stored False;
    property PNPDeviceID:string read FPNPDeviceID write FPNPDeviceID stored False;
    property PowerManagementCapabilitiesAsString:string read FPowerManagementCapabilitiesAsString write FPowerManagementCapabilitiesAsString stored False;
    property PowerManagementSupported:boolean read FPowerManagementSupported write FPowerManagementSupported stored False;
    property SCSIBus:Longword read FSCSIBus write FSCSIBus stored False;
    property SCSILogicalUnit:Integer read FSCSILogicalUnit write FSCSILogicalUnit stored False;
    property SCSIPort:Integer read FSCSIPort write FSCSIPort stored False;
    property SCSITargetId:Integer read FSCSITargetId write FSCSITargetId stored False;
    property SectorsPerTrack:Longword read FSectorsPerTrack write FSectorsPerTrack stored False;
    property SerialNumber:string read FSerialNumber write FSerialNumber stored False;
    property Signature:Longword read FSignature write FSignature stored False;
    property Size:Int64 read FSize write FSize stored False;
    property Status:string read FStatus write FStatus stored False;
    property StatusInfo:Integer read FStatusInfo write FStatusInfo stored False;
    property SystemCreationClassName:string read FSystemCreationClassName write FSystemCreationClassName stored False;
    property SystemName:string read FSystemName write FSystemName stored False;
    property TotalCylinders:Int64 read FTotalCylinders write FTotalCylinders stored False;
    property TotalHeads:Longword read FTotalHeads write FTotalHeads stored False;
    property TotalSectors:Int64 read FTotalSectors write FTotalSectors stored False;
    property TotalTracks:Int64 read FTotalTracks write FTotalTracks stored False;
    property TracksPerCylinder:Longword read FTracksPerCylinder write FTracksPerCylinder stored False;
  end;
  
  //: Implementación para el acceso vía WMI a la clase Win32_DiskDrive
  TDiskDriveInfo = class(TWMIBase)
  private
    FDiskDriveProperties: TDiskDriveProperties;
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
    // propiedades de la DiskDrive
    property DiskDriveProperties:TDiskDriveProperties read FDiskDriveProperties write FDiskDriveProperties;
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

// Constantes para la propiedad Capabilities
const
  ENUM_STRING_CAPABILITIES_0 = 'Unknown';
  ENUM_STRING_CAPABILITIES_1 = 'Other';
  ENUM_STRING_CAPABILITIES_2 = 'Sequential Access';
  ENUM_STRING_CAPABILITIES_3 = 'Random Access';
  ENUM_STRING_CAPABILITIES_4 = 'Supports Writing';
  ENUM_STRING_CAPABILITIES_5 = 'Encryption';
  ENUM_STRING_CAPABILITIES_6 = 'Compression';
  ENUM_STRING_CAPABILITIES_7 = 'Supports Removable Media';
  ENUM_STRING_CAPABILITIES_8 = 'Manual Cleaning';
  ENUM_STRING_CAPABILITIES_9 = 'Automatic Cleaning';
  ENUM_STRING_CAPABILITIES_10 = 'SMART Notification';
  ENUM_STRING_CAPABILITIES_11 = 'Supports Dual-Sided Media';
  ENUM_STRING_CAPABILITIES_12 = 'Ejection Prior to Drive Dismount Not Required';


//========================================================================= 
// 
// I M P L E M E N T A T I O N 
// 
//========================================================================= 
implementation 
  
uses 
  {Generales} Forms, Types, Windows, SysUtils, 
  {GLib} UProcedures, UConstantes, Dialogs; 


{
// Obtener la propiedad como string
function TDiskDriveProperties.GetCapabilitiesAsString():string;
begin
  case FCapabilities of
    0: Result := ENUM_STRING_CAPABILITIES_0;
    1: Result := ENUM_STRING_CAPABILITIES_1;
    2: Result := ENUM_STRING_CAPABILITIES_2;
    3: Result := ENUM_STRING_CAPABILITIES_3;
    4: Result := ENUM_STRING_CAPABILITIES_4;
    5: Result := ENUM_STRING_CAPABILITIES_5;
    6: Result := ENUM_STRING_CAPABILITIES_6;
    7: Result := ENUM_STRING_CAPABILITIES_7;
    8: Result := ENUM_STRING_CAPABILITIES_8;
    9: Result := ENUM_STRING_CAPABILITIES_9;
    10: Result := ENUM_STRING_CAPABILITIES_10;
    11: Result := ENUM_STRING_CAPABILITIES_11;
    12: Result := ENUM_STRING_CAPABILITIES_12;
  else
    Result := STR_EMPTY;
  end;
end;
}
// Obtener la propiedad como string
function TDiskDriveProperties.GetAvailabilityAsString():string;
begin
  case FAvailability of
    0: Result := ENUM_STRING_AVAILABILITY_1;
    1: Result := ENUM_STRING_AVAILABILITY_2;
    2: Result := ENUM_STRING_AVAILABILITY_3;
    3: Result := ENUM_STRING_AVAILABILITY_4;
    4: Result := ENUM_STRING_AVAILABILITY_5;
    5: Result := ENUM_STRING_AVAILABILITY_6;
    6: Result := ENUM_STRING_AVAILABILITY_7;
    7: Result := ENUM_STRING_AVAILABILITY_8;
    8: Result := ENUM_STRING_AVAILABILITY_9;
    9: Result := ENUM_STRING_AVAILABILITY_10;
    10: Result := ENUM_STRING_AVAILABILITY_11;
    11: Result := ENUM_STRING_AVAILABILITY_12;
    12: Result := ENUM_STRING_AVAILABILITY_13;
    13: Result := ENUM_STRING_AVAILABILITY_14;
    14: Result := ENUM_STRING_AVAILABILITY_15;
    15: Result := ENUM_STRING_AVAILABILITY_16;
    16: Result := ENUM_STRING_AVAILABILITY_17;
  else
    Result := STR_EMPTY;
  end;
end;

{ TDiskDrive } 
{-------------------------------------------------------------------------------} 
// Limpiar las propiedades
procedure TDiskDriveInfo.ClearProps;
begin

  Self.DiskDriveProperties.FAvailability := 0;
  Self.DiskDriveProperties.FBytesPerSector := 0;
  Self.DiskDriveProperties.FCapabilitiesCount := 0;
  Self.DiskDriveProperties.FCapabilitiesAsString := STR_EMPTY;
  SetLength(Self.DiskDriveProperties.FCapabilities,0);
  Self.DiskDriveProperties.FCapabilityDescriptionsCount := 0;
  Self.DiskDriveProperties.FCapabilityDescriptionsAsString := STR_EMPTY;
  SetLength(Self.DiskDriveProperties.FCapabilityDescriptions,0);
  Self.DiskDriveProperties.FCaption := STR_EMPTY;
  Self.DiskDriveProperties.FCompressionMethod := STR_EMPTY;
  Self.DiskDriveProperties.FConfigManagerErrorCode := 0;
  Self.DiskDriveProperties.FConfigManagerUserConfig := False;
  Self.DiskDriveProperties.FCreationClassName := STR_EMPTY;
  Self.DiskDriveProperties.FDefaultBlockSize := 0;
  Self.DiskDriveProperties.FDescription := STR_EMPTY;
  Self.DiskDriveProperties.FDeviceID := STR_EMPTY;
  Self.DiskDriveProperties.FErrorCleared := False;
  Self.DiskDriveProperties.FErrorDescription := STR_EMPTY;
  Self.DiskDriveProperties.FErrorMethodology := STR_EMPTY;
  Self.DiskDriveProperties.FFirmwareRevision := STR_EMPTY;
  Self.DiskDriveProperties.FIndex := 0;
  Self.DiskDriveProperties.FInstallDate := 0;
  Self.DiskDriveProperties.FInterfaceType := STR_EMPTY;
  Self.DiskDriveProperties.FLastErrorCode := 0;
  Self.DiskDriveProperties.FManufacturer := STR_EMPTY;
  Self.DiskDriveProperties.FMaxBlockSize := 0;
  Self.DiskDriveProperties.FMaxMediaSize := 0;
  Self.DiskDriveProperties.FMediaLoaded := False;
  Self.DiskDriveProperties.FMediaType := STR_EMPTY;
  Self.DiskDriveProperties.FMinBlockSize := 0;
  Self.DiskDriveProperties.FModel := STR_EMPTY;
  Self.DiskDriveProperties.FName := STR_EMPTY;
  Self.DiskDriveProperties.FNeedsCleaning := False;
  Self.DiskDriveProperties.FNumberOfMediaSupported := 0;
  Self.DiskDriveProperties.FPartitions := 0;
  Self.DiskDriveProperties.FPNPDeviceID := STR_EMPTY;
  Self.DiskDriveProperties.FPowerManagementCapabilitiesCount := 0;
  Self.DiskDriveProperties.FPowerManagementCapabilitiesAsString := STR_EMPTY;
  SetLength(Self.DiskDriveProperties.FPowerManagementCapabilities,0);
  Self.DiskDriveProperties.FPowerManagementSupported := False;
  Self.DiskDriveProperties.FSCSIBus := 0;
  Self.DiskDriveProperties.FSCSILogicalUnit := 0;
  Self.DiskDriveProperties.FSCSIPort := 0;
  Self.DiskDriveProperties.FSCSITargetId := 0;
  Self.DiskDriveProperties.FSectorsPerTrack := 0;
  Self.DiskDriveProperties.FSerialNumber := STR_EMPTY;
  Self.DiskDriveProperties.FSignature := 0;
  Self.DiskDriveProperties.FSize := 0;
  Self.DiskDriveProperties.FStatus := STR_EMPTY;
  Self.DiskDriveProperties.FStatusInfo := 0;
  Self.DiskDriveProperties.FSystemCreationClassName := STR_EMPTY;
  Self.DiskDriveProperties.FSystemName := STR_EMPTY;
  Self.DiskDriveProperties.FTotalCylinders := 0;
  Self.DiskDriveProperties.FTotalHeads := 0;
  Self.DiskDriveProperties.FTotalSectors := 0;
  Self.DiskDriveProperties.FTotalTracks := 0;
  Self.DiskDriveProperties.FTracksPerCylinder := 0;

end;
//: Constructor del componente 
constructor TDiskDriveInfo.Create(AOwner: TComponent); 
begin 
  inherited; 
 
  Self.FDiskDriveProperties := TDiskDriveProperties.Create();
  Self.MSDNHelp := 'http://msdn.microsoft.com/en-us/library/aa394132(VS.85).aspx';
end; 
 
// destructor del componente 
destructor TDiskDriveInfo.Destroy(); 
begin 
 
  // liberar 
  FreeAndNil(Self.FDiskDriveProperties); 
 
  inherited; 
end; 
 
// Obtener la clase 
function TDiskDriveInfo.GetWMIClass(): string; 
begin 
  Result := WIN32_DISKDRIVE_CLASS;
end; 
 
// Obtener Root 
function TDiskDriveInfo.GetWMIRoot(): string; 
begin 
  Result := STR_CIM2_ROOT; 
end; 
 
// Active 
procedure TDiskDriveInfo.SetActive(const Value: Boolean); 
begin 
  // método heredado 
  inherited; 
end; 
  
//: Recuperar la propiedad  <CapabilitiesAsString>
{hints
function TDiskDriveProperties.GetCapabilitiesAsString():string;
begin
  Result := 'Not implemented yet';
end;
}
  
// Acceso a los elementos de la propiedad <Capabilities>
function TDiskDriveProperties.GetCapabilities(index: integer):Integer;
begin
  if (index >= Self.FCapabilitiesCount) then begin
    Index := Self.FCapabilitiesCount - 1;
  end;
  Result := Self.FCapabilities[index];
end;
 
// Acceso a los elementos de la propiedad <CapabilityDescriptions>
function TDiskDriveProperties.GetCapabilityDescriptions(index: integer):string;
begin
  if (index >= Self.FCapabilityDescriptionsCount) then begin
    Index := Self.FCapabilityDescriptionsCount - 1;
  end;
  Result := Self.FCapabilityDescriptions[index];
end;
 
// Acceso a los elementos de la propiedad <PowerManagementCapabilities>
function TDiskDriveProperties.GetPowerManagementCapabilities(index: integer):Integer;
begin
  if (index >= Self.FPowerManagementCapabilitiesCount) then begin
    Index := Self.FPowerManagementCapabilitiesCount - 1;
  end;
  Result := Self.FPowerManagementCapabilities[index];
end;
 
//: Rellenar las propiedades del componente.
procedure TDiskDriveInfo.FillProperties(AIndex: integer);
var
  v:variant;
  vNull:boolean;
  vp:TDiskDriveProperties;
begin

  // Llamar al heredado (importante)
  inherited;

  // Rellenar propiedades...
  vp := Self.DiskDriveProperties;

  GetWMIPropertyValue(Self, 'Availability', v, vNull);
  vp.FAvailability := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'BytesPerSector', v, vNull);
  vp.FBytesPerSector := VariantIntegerValue(v, vNull);

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

  GetWMIPropertyValue(Self, 'ErrorCleared', v, vNull);
  vp.FErrorCleared := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'ErrorDescription', v, vNull);
  vp.FErrorDescription := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'ErrorMethodology', v, vNull);
  vp.FErrorMethodology := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'FirmwareRevision', v, vNull);
  vp.FFirmwareRevision := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Index', v, vNull);
  vp.FIndex := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'InstallDate', v, vNull);
  if not vNull then begin
    vp.FInstallDate := EncodeDate(StrToInt(Copy(v, 1, 4)),StrToInt(Copy(v, 5, 2)),StrToInt(Copy(v, 7, 2)));
  end;

  GetWMIPropertyValue(Self, 'InterfaceType', v, vNull);
  vp.FInterfaceType := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'LastErrorCode', v, vNull);
  vp.FLastErrorCode := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Manufacturer', v, vNull);
  vp.FManufacturer := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'MaxBlockSize', v, vNull);
  vp.FMaxBlockSize := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'MaxMediaSize', v, vNull);
  vp.FMaxMediaSize := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'MediaLoaded', v, vNull);
  vp.FMediaLoaded := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'MediaType', v, vNull);
  vp.FMediaType := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'MinBlockSize', v, vNull);
  vp.FMinBlockSize := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Model', v, vNull);
  vp.FModel := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Name', v, vNull);
  vp.FName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'NeedsCleaning', v, vNull);
  vp.FNeedsCleaning := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'NumberOfMediaSupported', v, vNull);
  vp.FNumberOfMediaSupported := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Partitions', v, vNull);
  vp.FPartitions := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'PNPDeviceID', v, vNull);
  vp.FPNPDeviceID := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'PowerManagementCapabilities', v, vNull);
  vp.FPowerManagementCapabilitiesAsString := VariantStrValue(v, vNull);
//  vp.FPowerManagementCapabilities := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'PowerManagementSupported', v, vNull);
  vp.FPowerManagementSupported := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'SCSIBus', v, vNull);
  vp.FSCSIBus := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'SCSILogicalUnit', v, vNull);
  vp.FSCSILogicalUnit := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'SCSIPort', v, vNull);
  vp.FSCSIPort := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'SCSITargetId', v, vNull);
  vp.FSCSITargetId := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'SectorsPerTrack', v, vNull);
  vp.FSectorsPerTrack := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'SerialNumber', v, vNull);
  vp.FSerialNumber := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Signature', v, vNull);
  vp.FSignature := VariantIntegerValue(v, vNull);

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

  GetWMIPropertyValue(Self, 'TotalCylinders', v, vNull);
  vp.FTotalCylinders := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'TotalHeads', v, vNull);
  vp.FTotalHeads := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'TotalSectors', v, vNull);
  vp.FTotalSectors := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'TotalTracks', v, vNull);
  vp.FTotalTracks := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'TracksPerCylinder', v, vNull);
  vp.FTracksPerCylinder := VariantIntegerValue(v, vNull);

end;

end.
