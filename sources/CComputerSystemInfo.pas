{
TComputerSystemInfo  Component Version 1.1 - Suite GLib
Copyright (©) 2009,  by Germán Estévez (Neftalí) 
 
  Representa la máquina ejecutando un sistema Windows.
 
Utilización/Usage: 
  Basta con "soltar" el componente y activarlo. 
 
  Place the component in the form and active it. 
 
  MSDN Info: 
  http://msdn.microsoft.com/en-us/library/aa394102(VS.85).aspx 
 
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
unit CComputerSystemInfo; 
 
{ 
========================================================================= 
 
  TComputerSystemInfo.pas 
 
  Componente 
 
======================================================================== 
  Historia de las Versiones 
------------------------------------------------------------------------ 
 
  11/01/2010    * Creación. 
 
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
  TComputerSystemProperties = class(TPersistent)
  private
    FAdminPasswordStatus:Integer;
    FAdminPasswordStatusAsString:string;
    FAutomaticManagedPagefile:boolean;
    FAutomaticResetBootOption:boolean;
    FAutomaticResetCapability:boolean;
    FBootOptionOnLimit:Integer;
    FBootOptionOnLimitAsString:string;
    FBootOptionOnWatchDog:Integer;
    FBootOptionOnWatchDogAsString:string;
    FBootROMSupported:boolean;
    FBootupState:string;
    FCaption:string;
    FChassisBootupState:Integer;
    FChassisBootupStateAsString:string;
    FCreationClassName:string;
    FCurrentTimeZone:Integer;
    FDaylightInEffect:boolean;
    FDescription:string;
    FDNSHostName:string;
    FDomain:string;
    FDomainRole:Integer;
    FDomainRoleAsString:string;
    FEnableDaylightSavingsTime:boolean;
    FFrontPanelResetStatus:Integer;
    FFrontPanelResetStatusAsString:string;
    FInfraredSupported:boolean;
    FInitialLoadInfo:string;
    FInstallDate:TDateTime;
    FKeyboardPasswordStatus:Integer;
    FKeyboardPasswordStatusAsString:string;
    FLastLoadInfo:string;
    FManufacturer:string;
    FModel:string;
    FName:string;
    FNameFormat:string;
    FNetworkServerModeEnabled:boolean;
    FNumberOfLogicalProcessors:Longword;
    FNumberOfProcessors:Longword;
    //hint FOEMLogoBitmap:byte;
    FOEMLogoBitmapCount:integer;
    FOEMLogoBitmapAsString:string;
    FOEMStringArray:TArrString;
    FOEMStringArrayCount:integer;
    FOEMStringArrayAsString:string;
    FPartOfDomain:boolean;
    FPauseAfterReset:Int64;
    FPCSystemType:Integer;
    FPCSystemTypeAsString:string;
    FPowerManagementCapabilities:TArrInteger;
    FPowerManagementCapabilitiesCount:integer;
//    FPowerManagementCapabilitiesAsString:string;
    FPowerManagementSupported:boolean;
    FPowerOnPasswordStatus:Integer;
    FPowerOnPasswordStatusAsString:string;
    FPowerState:Integer;
    FPowerStateAsString:string;
    FPowerSupplyState:Integer;
    FPowerSupplyStateAsString:string;
    FPrimaryOwnerContact:string;
    FPrimaryOwnerName:string;
    FResetCapability:Integer;
    FResetCapabilityAsString:string;
    FResetCount:Integer;
    FResetLimit:Integer;
    FRoles:TArrString;
    FRolesCount:integer;
    FRolesAsString:string;
    FStatus:string;
    FSupportContactDescription:TArrString;
    FSupportContactDescriptionCount:integer;
    FSupportContactDescriptionAsString:string;
    FSystemStartupDelay:Integer;
    FSystemStartupOptions:TArrString;
    FSystemStartupOptionsCount:integer;
    FSystemStartupOptionsAsString:string;
    FSystemStartupSetting:byte;
    FSystemType:string;
    FThermalState:Integer;
    FThermalStateAsString:string;
    FTotalPhysicalMemory:Int64;
    FUserName:string;
    FWakeUpType:Integer;
    FWakeUpTypeAsString:string;
    FWorkgroup:string;
  private
//    function GetOEMLogoBitmap(index: integer): byte;
    function GetOEMStringArray(index: integer): string;
    function GetPowerManagementCapabilities(index: integer): Integer;
    function GetRoles(index: integer): string;
    function GetSupportContactDescription(index: integer): string;
    function GetSystemStartupOptions(index: integer): string;
  public
//    property OEMLogoBitmap[index:integer]:byte read GetOEMLogoBitmap;
    property OEMLogoBitmapCount:integer read FOEMLogoBitmapCount stored False;
    property OEMStringArray[index:integer]:string read GetOEMStringArray;
    property OEMStringArrayCount:integer read FOEMStringArrayCount stored False;
    property PowerManagementCapabilities[index:integer]:Integer read GetPowerManagementCapabilities;
    property PowerManagementCapabilitiesCount:integer read FPowerManagementCapabilitiesCount stored False;
    property Roles[index:integer]:string read GetRoles;
    property RolesCount:integer read FRolesCount stored False;
    property SupportContactDescription[index:integer]:string read GetSupportContactDescription;
    property SupportContactDescriptionCount:integer read FSupportContactDescriptionCount stored False;
    property SystemStartupOptions[index:integer]:string read GetSystemStartupOptions;
    property SystemStartupOptionsCount:integer read FSystemStartupOptionsCount stored False;

    // Obtener la propiedad <AdminPasswordStatus> como string
    function GetAdminPasswordStatusAsString():string;

    // Obtener la propiedad <BootOptionOnLimit> como string
    function GetBootOptionOnLimitAsString():string;

    // Obtener la propiedad <BootOptionOnWatchDog> como string
    function GetBootOptionOnWatchDogAsString():string;

    // Obtener la propiedad <ChassisBootupState> como string
    function GetChassisBootupStateAsString():string;

    // Obtener la propiedad <DomainRole> como string
    function GetDomainRoleAsString():string;

    // Obtener la propiedad <FrontPanelResetStatus> como string
    function GetFrontPanelResetStatusAsString():string;

    // Obtener la propiedad <KeyboardPasswordStatus> como string
    function GetKeyboardPasswordStatusAsString():string;

    // Obtener la propiedad <PCSystemType> como string
    function GetPCSystemTypeAsString():string;

//    // Obtener la propiedad <PowerManagementCapabilities> como string
//    function GetPowerManagementCapabilitiesAsString():string;

    // Obtener la propiedad <PowerOnPasswordStatus> como string
    function GetPowerOnPasswordStatusAsString():string;

    // Obtener la propiedad <PowerState> como string
    function GetPowerStateAsString():string;

    // Obtener la propiedad <PowerSupplyState> como string
    function GetPowerSupplyStateAsString():string;

    // Obtener la propiedad <ResetCapability> como string
    function GetResetCapabilityAsString():string;

    // Obtener la propiedad <ThermalState> como string
    function GetThermalStateAsString():string;

    // Obtener la propiedad <WakeUpType> como string
    function GetWakeUpTypeAsString():string;

// {GET_ENUM}

  published
    property AdminPasswordStatus:Integer read FAdminPasswordStatus write FAdminPasswordStatus stored False;
    property AdminPasswordStatusAsString:string read GetAdminPasswordStatusAsString  write FAdminPasswordStatusAsString stored False;
    property AutomaticManagedPagefile:boolean read FAutomaticManagedPagefile write FAutomaticManagedPagefile stored False;
    property AutomaticResetBootOption:boolean read FAutomaticResetBootOption write FAutomaticResetBootOption stored False;
    property AutomaticResetCapability:boolean read FAutomaticResetCapability write FAutomaticResetCapability stored False;
    property BootOptionOnLimit:Integer read FBootOptionOnLimit write FBootOptionOnLimit stored False;
    property BootOptionOnLimitAsString:string read GetBootOptionOnLimitAsString  write FBootOptionOnLimitAsString stored False;
    property BootOptionOnWatchDog:Integer read FBootOptionOnWatchDog write FBootOptionOnWatchDog stored False;
    property BootOptionOnWatchDogAsString:string read GetBootOptionOnWatchDogAsString  write FBootOptionOnWatchDogAsString stored False;
    property BootROMSupported:boolean read FBootROMSupported write FBootROMSupported stored False;
    property BootupState:string read FBootupState write FBootupState stored False;
    property Caption:string read FCaption write FCaption stored False;
    property ChassisBootupState:Integer read FChassisBootupState write FChassisBootupState stored False;
    property ChassisBootupStateAsString:string read GetChassisBootupStateAsString  write FChassisBootupStateAsString stored False;
    property CreationClassName:string read FCreationClassName write FCreationClassName stored False;
    property CurrentTimeZone:Integer read FCurrentTimeZone write FCurrentTimeZone stored False;
    property DaylightInEffect:boolean read FDaylightInEffect write FDaylightInEffect stored False;
    property Description:string read FDescription write FDescription stored False;
    property DNSHostName:string read FDNSHostName write FDNSHostName stored False;
    property Domain:string read FDomain write FDomain stored False;
    property DomainRole:Integer read FDomainRole write FDomainRole stored False;
    property DomainRoleAsString:string read GetDomainRoleAsString  write FDomainRoleAsString stored False;
    property EnableDaylightSavingsTime:boolean read FEnableDaylightSavingsTime write FEnableDaylightSavingsTime stored False;
    property FrontPanelResetStatus:Integer read FFrontPanelResetStatus write FFrontPanelResetStatus stored False;
    property FrontPanelResetStatusAsString:string read GetFrontPanelResetStatusAsString  write FFrontPanelResetStatusAsString stored False;
    property InfraredSupported:boolean read FInfraredSupported write FInfraredSupported stored False;
    property InitialLoadInfo:string read FInitialLoadInfo write FInitialLoadInfo stored False;
    property InstallDate:TDateTime read FInstallDate write FInstallDate stored False;
    property KeyboardPasswordStatus:Integer read FKeyboardPasswordStatus write FKeyboardPasswordStatus stored False;
    property KeyboardPasswordStatusAsString:string read GetKeyboardPasswordStatusAsString  write FKeyboardPasswordStatusAsString stored False;
    property LastLoadInfo:string read FLastLoadInfo write FLastLoadInfo stored False;
    property Manufacturer:string read FManufacturer write FManufacturer stored False;
    property Model:string read FModel write FModel stored False;
    property Name:string read FName write FName stored False;
    property NameFormat:string read FNameFormat write FNameFormat stored False;
    property NetworkServerModeEnabled:boolean read FNetworkServerModeEnabled write FNetworkServerModeEnabled stored False;
    property NumberOfLogicalProcessors:Longword read FNumberOfLogicalProcessors write FNumberOfLogicalProcessors stored False;
    property NumberOfProcessors:Longword read FNumberOfProcessors write FNumberOfProcessors stored False;
    property OEMLogoBitmapAsString:string read FOEMLogoBitmapAsString write FOEMLogoBitmapAsString stored False;
    property OEMStringArrayAsString:string read FOEMStringArrayAsString write FOEMStringArrayAsString stored False;
    property PartOfDomain:boolean read FPartOfDomain write FPartOfDomain stored False;
    property PauseAfterReset:Int64 read FPauseAfterReset write FPauseAfterReset stored False;
    property PCSystemType:Integer read FPCSystemType write FPCSystemType stored False;
    property PCSystemTypeAsString:string read GetPCSystemTypeAsString  write FPCSystemTypeAsString stored False;
//    property PowerManagementCapabilitiesAsString:string read FPowerManagementCapabilitiesAsString write FPowerManagementCapabilitiesAsString stored False;
    property PowerManagementSupported:boolean read FPowerManagementSupported write FPowerManagementSupported stored False;
    property PowerOnPasswordStatus:Integer read FPowerOnPasswordStatus write FPowerOnPasswordStatus stored False;
    property PowerOnPasswordStatusAsString:string read GetPowerOnPasswordStatusAsString  write FPowerOnPasswordStatusAsString stored False;
    property PowerState:Integer read FPowerState write FPowerState stored False;
    property PowerStateAsString:string read GetPowerStateAsString  write FPowerStateAsString stored False;
    property PowerSupplyState:Integer read FPowerSupplyState write FPowerSupplyState stored False;
    property PowerSupplyStateAsString:string read GetPowerSupplyStateAsString  write FPowerSupplyStateAsString stored False;
    property PrimaryOwnerContact:string read FPrimaryOwnerContact write FPrimaryOwnerContact stored False;
    property PrimaryOwnerName:string read FPrimaryOwnerName write FPrimaryOwnerName stored False;
    property ResetCapability:Integer read FResetCapability write FResetCapability stored False;
    property ResetCapabilityAsString:string read GetResetCapabilityAsString  write FResetCapabilityAsString stored False;
    property ResetCount:Integer read FResetCount write FResetCount stored False;
    property ResetLimit:Integer read FResetLimit write FResetLimit stored False;
    property RolesAsString:string read FRolesAsString write FRolesAsString stored False;
    property Status:string read FStatus write FStatus stored False;
    property SupportContactDescriptionAsString:string read FSupportContactDescriptionAsString write FSupportContactDescriptionAsString stored False;
    property SystemStartupDelay:Integer read FSystemStartupDelay write FSystemStartupDelay stored False;
    property SystemStartupOptionsAsString:string read FSystemStartupOptionsAsString write FSystemStartupOptionsAsString stored False;
    property SystemStartupSetting:byte read FSystemStartupSetting write FSystemStartupSetting stored False;
    property SystemType:string read FSystemType write FSystemType stored False;
    property ThermalState:Integer read FThermalState write FThermalState stored False;
    property ThermalStateAsString:string read GetThermalStateAsString  write FThermalStateAsString stored False;
    property TotalPhysicalMemory:Int64 read FTotalPhysicalMemory write FTotalPhysicalMemory stored False;
    property UserName:string read FUserName write FUserName stored False;
    property WakeUpType:Integer read FWakeUpType write FWakeUpType stored False;
    property WakeUpTypeAsString:string read GetWakeUpTypeAsString  write FWakeUpTypeAsString stored False;
    property Workgroup:string read FWorkgroup write FWorkgroup stored False;
  end;
  
  //: Implementación para el acceso vía WMI a la clase Win32_ComputerSystem
  TComputerSystemInfo = class(TWMIBase)
  private
    FComputerSystemProperties: TComputerSystemProperties;
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

    //: Método para renombrar en ordenador local.
    function Rename(AInstanceProp:string;
                    AInstanceValue:Variant;
                    Name, PassWord, Username:String):integer;
  published
    // propiedades de la ComputerSystem
    property ComputerSystemProperties:TComputerSystemProperties read FComputerSystemProperties write FComputerSystemProperties;
  end;

// Constantes para la propiedad AdminPasswordStatus
const
  ENUM_STRING_ADMINPASSWORDSTATUS_1 = 'Disabled';
  ENUM_STRING_ADMINPASSWORDSTATUS_2 = 'Enabled';
  ENUM_STRING_ADMINPASSWORDSTATUS_3 = 'Not Implemented';
  ENUM_STRING_ADMINPASSWORDSTATUS_4 = 'Unknown';


// Constantes para la propiedad BootOptionOnLimit
const
  ENUM_STRING_BOOTOPTIONONLIMIT_1 = 'Reserved';
  ENUM_STRING_BOOTOPTIONONLIMIT_2 = 'Operating System';
  ENUM_STRING_BOOTOPTIONONLIMIT_3 = 'System Utilities';
  ENUM_STRING_BOOTOPTIONONLIMIT_4 = 'Do Not Reboot';


// Constantes para la propiedad BootOptionOnWatchDog
const
  ENUM_STRING_BOOTOPTIONONWATCHDOG_1 = 'Reserved';
  ENUM_STRING_BOOTOPTIONONWATCHDOG_2 = 'Operating System';
  ENUM_STRING_BOOTOPTIONONWATCHDOG_3 = 'System Utilities';
  ENUM_STRING_BOOTOPTIONONWATCHDOG_4 = 'Do Not Reboot';


// Constantes para la propiedad ChassisBootupState
const
  ENUM_STRING_CHASSISBOOTUPSTATE_1 = 'Other';
  ENUM_STRING_CHASSISBOOTUPSTATE_2 = 'Unknown';
  ENUM_STRING_CHASSISBOOTUPSTATE_3 = 'Safes';
  ENUM_STRING_CHASSISBOOTUPSTATE_4 = 'Warning';
  ENUM_STRING_CHASSISBOOTUPSTATE_5 = 'Critical';
  ENUM_STRING_CHASSISBOOTUPSTATE_6 = 'Nonrecoverable';


// Constantes para la propiedad DomainRole
const
  ENUM_STRING_DOMAINROLE_0 = 'Standalone Workstation';
  ENUM_STRING_DOMAINROLE_1 = 'Member Workstation';
  ENUM_STRING_DOMAINROLE_2 = 'Standalone Server';
  ENUM_STRING_DOMAINROLE_3 = 'Member Server';
  ENUM_STRING_DOMAINROLE_4 = 'Backup Domain Controller';
  ENUM_STRING_DOMAINROLE_5 = 'Primary Domain Controller';


// Constantes para la propiedad FrontPanelResetStatus
const
  ENUM_STRING_FRONTPANELRESETSTATUS_0 = 'Disabled';
  ENUM_STRING_FRONTPANELRESETSTATUS_1 = 'Enabled';
  ENUM_STRING_FRONTPANELRESETSTATUS_2 = 'Not Implemented';
  ENUM_STRING_FRONTPANELRESETSTATUS_3 = 'Unknown';


// Constantes para la propiedad KeyboardPasswordStatus
const
  ENUM_STRING_KEYBOARDPASSWORDSTATUS_0 = 'Disabled';
  ENUM_STRING_KEYBOARDPASSWORDSTATUS_1 = 'Enabled';
  ENUM_STRING_KEYBOARDPASSWORDSTATUS_2 = 'Not Implemented';
  ENUM_STRING_KEYBOARDPASSWORDSTATUS_3 = 'Unknown';


// Constantes para la propiedad PCSystemType
const
  ENUM_STRING_PCSYSTEMTYPE_0 = 'Unspecified';
  ENUM_STRING_PCSYSTEMTYPE_1 = 'Desktop';
  ENUM_STRING_PCSYSTEMTYPE_2 = 'Mobile';
  ENUM_STRING_PCSYSTEMTYPE_3 = 'Workstation';
  ENUM_STRING_PCSYSTEMTYPE_4 = 'Enterprise Server';
  ENUM_STRING_PCSYSTEMTYPE_5 = 'Small Office and Home Office (SOHO) Server';
  ENUM_STRING_PCSYSTEMTYPE_6 = 'Appliance PC';
  ENUM_STRING_PCSYSTEMTYPE_7 = 'Performance Server';
  ENUM_STRING_PCSYSTEMTYPE_8 = 'Maximum';


// Constantes para la propiedad PowerManagementCapabilities
const
  ENUM_STRING_POWERMANAGEMENTCAPABILITIES_0 = 'Unknown';
  ENUM_STRING_POWERMANAGEMENTCAPABILITIES_1 = 'Not Supported';
  ENUM_STRING_POWERMANAGEMENTCAPABILITIES_2 = 'Disabled';
  ENUM_STRING_POWERMANAGEMENTCAPABILITIES_3 = 'Enabled. The power management features are currently enabled, but the exact feature set is unknown or the information is unavailable.';
  ENUM_STRING_POWERMANAGEMENTCAPABILITIES_4 = 'Power Saving Modes Entered Automatically. The device can change its power state based on usage or other criteria.';
  ENUM_STRING_POWERMANAGEMENTCAPABILITIES_5 = 'Power State Settable. The SetPowerState method is supported. This method is found on the parent CIM_LogicalDevice class and can be implemented. For more information, see Designing Managed Object Format (MOF) Classes.';
  ENUM_STRING_POWERMANAGEMENTCAPABILITIES_6 = 'Power Cycling Supported. The SetPowerState method can be invoked with the PowerState parameter set to 5 (Power Cycle).';
  ENUM_STRING_POWERMANAGEMENTCAPABILITIES_7 = 'Timed Power-On Supported. The SetPowerState method can be invoked with the PowerState parameter set to 5 (Power Cycle) and Time set to a specific date and time, or interval, for power-on.';


// Constantes para la propiedad PowerOnPasswordStatus
const
  ENUM_STRING_POWERONPASSWORDSTATUS_0 = 'Disabled';
  ENUM_STRING_POWERONPASSWORDSTATUS_1 = 'Enabled';
  ENUM_STRING_POWERONPASSWORDSTATUS_2 = 'Not Implemented';
  ENUM_STRING_POWERONPASSWORDSTATUS_3 = 'Unknown';


// Constantes para la propiedad PowerState
const
  ENUM_STRING_POWERSTATE_0 = 'Unknown';
  ENUM_STRING_POWERSTATE_1 = 'Full Power';
  ENUM_STRING_POWERSTATE_2 = 'Power Save - Low Power Mode';
  ENUM_STRING_POWERSTATE_3 = 'Power Save - Standby';
  ENUM_STRING_POWERSTATE_4 = 'Power Save - Unknown';
  ENUM_STRING_POWERSTATE_5 = 'Power Cycle';
  ENUM_STRING_POWERSTATE_6 = 'Power Off';
  ENUM_STRING_POWERSTATE_7 = 'Power Save - Warning';


// Constantes para la propiedad PowerSupplyState
const
  ENUM_STRING_POWERSUPPLYSTATE_1 = 'Other';
  ENUM_STRING_POWERSUPPLYSTATE_2 = 'Unknown';
  ENUM_STRING_POWERSUPPLYSTATE_3 = 'Safe';
  ENUM_STRING_POWERSUPPLYSTATE_4 = 'Warning';
  ENUM_STRING_POWERSUPPLYSTATE_5 = 'Critical';
  ENUM_STRING_POWERSUPPLYSTATE_6 = 'Nonrecoverable';


// Constantes para la propiedad ResetCapability
const
  ENUM_STRING_RESETCAPABILITY_1 = 'Other';
  ENUM_STRING_RESETCAPABILITY_2 = 'Unknown';
  ENUM_STRING_RESETCAPABILITY_3 = 'Disabled';
  ENUM_STRING_RESETCAPABILITY_4 = 'Enabled';
  ENUM_STRING_RESETCAPABILITY_5 = 'Nonrecoverable';


// Constantes para la propiedad ThermalState
const
  ENUM_STRING_THERMALSTATE_1 = 'Other';
  ENUM_STRING_THERMALSTATE_2 = 'Unknown';
  ENUM_STRING_THERMALSTATE_3 = 'Safe';
  ENUM_STRING_THERMALSTATE_4 = 'Warning';
  ENUM_STRING_THERMALSTATE_5 = 'Critical';
  ENUM_STRING_THERMALSTATE_6 = 'Nonrecoverable';


// Constantes para la propiedad WakeUpType
const
  ENUM_STRING_WAKEUPTYPE_0 = 'Reserved';
  ENUM_STRING_WAKEUPTYPE_1 = 'Other';
  ENUM_STRING_WAKEUPTYPE_2 = 'Unknown';
  ENUM_STRING_WAKEUPTYPE_3 = 'APM Timer';
  ENUM_STRING_WAKEUPTYPE_4 = 'Modem Ring';
  ENUM_STRING_WAKEUPTYPE_5 = 'LAN Remote';
  ENUM_STRING_WAKEUPTYPE_6 = 'Power Switch';
  ENUM_STRING_WAKEUPTYPE_7 = 'PCI PME#';
  ENUM_STRING_WAKEUPTYPE_8 = 'AC Power Restored';


// {CONST_ENUM}

    
//========================================================================= 
// 
// I M P L E M E N T A T I O N 
// 
//========================================================================= 
implementation 
  
uses 
  {Generales} Forms, Types, Windows, SysUtils, WbemScripting_TLB,
  {GLib} UProcedures, UConstantes, Dialogs; 
 
  
{ TComputerSystem } 
{-------------------------------------------------------------------------------} 
// Limpiar las propiedades
procedure TComputerSystemInfo.ClearProps;
begin

  Self.ComputerSystemProperties.FAdminPasswordStatus := 0;
  Self.ComputerSystemProperties.FAutomaticManagedPagefile := False;
  Self.ComputerSystemProperties.FAutomaticResetBootOption := False;
  Self.ComputerSystemProperties.FAutomaticResetCapability := False;
  Self.ComputerSystemProperties.FBootOptionOnLimit := 0;
  Self.ComputerSystemProperties.FBootOptionOnWatchDog := 0;
  Self.ComputerSystemProperties.FBootROMSupported := False;
  Self.ComputerSystemProperties.FBootupState := STR_EMPTY;
  Self.ComputerSystemProperties.FCaption := STR_EMPTY;
  Self.ComputerSystemProperties.FChassisBootupState := 0;
  Self.ComputerSystemProperties.FCreationClassName := STR_EMPTY;
  Self.ComputerSystemProperties.FCurrentTimeZone := 0;
  Self.ComputerSystemProperties.FDaylightInEffect := False;
  Self.ComputerSystemProperties.FDescription := STR_EMPTY;
  Self.ComputerSystemProperties.FDNSHostName := STR_EMPTY;
  Self.ComputerSystemProperties.FDomain := STR_EMPTY;
  Self.ComputerSystemProperties.FDomainRole := 0;
  Self.ComputerSystemProperties.FEnableDaylightSavingsTime := False;
  Self.ComputerSystemProperties.FFrontPanelResetStatus := 0;
  Self.ComputerSystemProperties.FInfraredSupported := False;
  Self.ComputerSystemProperties.FInitialLoadInfo := STR_EMPTY;
  Self.ComputerSystemProperties.FInstallDate := 0;
  Self.ComputerSystemProperties.FKeyboardPasswordStatus := 0;
  Self.ComputerSystemProperties.FLastLoadInfo := STR_EMPTY;
  Self.ComputerSystemProperties.FManufacturer := STR_EMPTY;
  Self.ComputerSystemProperties.FModel := STR_EMPTY;
  Self.ComputerSystemProperties.FName := STR_EMPTY;
  Self.ComputerSystemProperties.FNameFormat := STR_EMPTY;
  Self.ComputerSystemProperties.FNetworkServerModeEnabled := False;
  Self.ComputerSystemProperties.FNumberOfLogicalProcessors := 0;
  Self.ComputerSystemProperties.FNumberOfProcessors := 0;
  Self.ComputerSystemProperties.FOEMLogoBitmapCount := 0;
  Self.ComputerSystemProperties.FOEMLogoBitmapAsString := STR_EMPTY;
//  SetLength(Self.ComputerSystemProperties.FOEMLogoBitmap,0);
  Self.ComputerSystemProperties.FOEMStringArrayCount := 0;
  Self.ComputerSystemProperties.FOEMStringArrayAsString := STR_EMPTY;
  SetLength(Self.ComputerSystemProperties.FOEMStringArray,0);
  Self.ComputerSystemProperties.FPartOfDomain := False;
  Self.ComputerSystemProperties.FPauseAfterReset := 0;
  Self.ComputerSystemProperties.FPCSystemType := 0;
  Self.ComputerSystemProperties.FPowerManagementCapabilitiesCount := 0;
//  Self.ComputerSystemProperties.FPowerManagementCapabilitiesAsString := STR_EMPTY;
  SetLength(Self.ComputerSystemProperties.FPowerManagementCapabilities,0);
  Self.ComputerSystemProperties.FPowerManagementSupported := False;
  Self.ComputerSystemProperties.FPowerOnPasswordStatus := 0;
  Self.ComputerSystemProperties.FPowerState := 0;
  Self.ComputerSystemProperties.FPowerSupplyState := 0;
  Self.ComputerSystemProperties.FPrimaryOwnerContact := STR_EMPTY;
  Self.ComputerSystemProperties.FPrimaryOwnerName := STR_EMPTY;
  Self.ComputerSystemProperties.FResetCapability := 0;
  Self.ComputerSystemProperties.FResetCount := 0;
  Self.ComputerSystemProperties.FResetLimit := 0;
  Self.ComputerSystemProperties.FRolesCount := 0;
  Self.ComputerSystemProperties.FRolesAsString := STR_EMPTY;
  SetLength(Self.ComputerSystemProperties.FRoles,0);
  Self.ComputerSystemProperties.FStatus := STR_EMPTY;
  Self.ComputerSystemProperties.FSupportContactDescriptionCount := 0;
  Self.ComputerSystemProperties.FSupportContactDescriptionAsString := STR_EMPTY;
  SetLength(Self.ComputerSystemProperties.FSupportContactDescription,0);
  Self.ComputerSystemProperties.FSystemStartupDelay := 0;
  Self.ComputerSystemProperties.FSystemStartupOptionsCount := 0;
  Self.ComputerSystemProperties.FSystemStartupOptionsAsString := STR_EMPTY;
  SetLength(Self.ComputerSystemProperties.FSystemStartupOptions,0);
  Self.ComputerSystemProperties.FSystemStartupSetting := 0;
  Self.ComputerSystemProperties.FSystemType := STR_EMPTY;
  Self.ComputerSystemProperties.FThermalState := 0;
  Self.ComputerSystemProperties.FTotalPhysicalMemory := 0;
  Self.ComputerSystemProperties.FUserName := STR_EMPTY;
  Self.ComputerSystemProperties.FWakeUpType := 0;
  Self.ComputerSystemProperties.FWorkgroup := STR_EMPTY;

end;
//: Constructor del componente 
constructor TComputerSystemInfo.Create(AOwner: TComponent); 
begin 
  inherited; 
 
  Self.FComputerSystemProperties := TComputerSystemProperties.Create(); 
  Self.MSDNHelp := 'http://msdn.microsoft.com/en-us/library/aa394102(VS.85).aspx';
end; 
 
// destructor del componente 
destructor TComputerSystemInfo.Destroy(); 
begin 
 
  // liberar 
  FreeAndNil(Self.FComputerSystemProperties); 
 
  inherited; 
end; 
 
// Obtener la clase 
function TComputerSystemInfo.GetWMIClass(): string; 
begin 
  Result := 'Win32_ComputerSystem'
end; 
 
// Obtener Root 
function TComputerSystemInfo.GetWMIRoot(): string; 
begin 
  Result := STR_CIM2_ROOT; 
end; 
 
// Active 
procedure TComputerSystemInfo.SetActive(const Value: Boolean); 
begin 
  // método heredado 
  inherited; 
end; 
  

//// Acceso a los elementos de la propiedad <OEMLogoBitmap>
//function TComputerSystemProperties.GetOEMLogoBitmap(index: integer):byte;
//begin
//  if (index >= Self.FOEMLogoBitmapCount) then begin
//    Index := Self.FOEMLogoBitmapCount - 1;
//  end;
//  Result := Self.FOEMLogoBitmap[index];
//end;

// Acceso a los elementos de la propiedad <OEMStringArray>
function TComputerSystemProperties.GetOEMStringArray(index: integer):string;
begin
  if (index >= Self.FOEMStringArrayCount) then begin
    Index := Self.FOEMStringArrayCount - 1;
  end;
  Result := Self.FOEMStringArray[index];
end;
 
// Acceso a los elementos de la propiedad <PowerManagementCapabilities>
function TComputerSystemProperties.GetPowerManagementCapabilities(index: integer):Integer;
begin
  if (index >= Self.FPowerManagementCapabilitiesCount) then begin
    Index := Self.FPowerManagementCapabilitiesCount - 1;
  end;
  Result := Self.FPowerManagementCapabilities[index];
end;
 
// Acceso a los elementos de la propiedad <Roles>
function TComputerSystemProperties.GetRoles(index: integer):string;
begin
  if (index >= Self.FRolesCount) then begin
    Index := Self.FRolesCount - 1;
  end;
  Result := Self.FRoles[index];
end;
 
// Acceso a los elementos de la propiedad <SupportContactDescription>
function TComputerSystemProperties.GetSupportContactDescription(index: integer):string;
begin
  if (index >= Self.FSupportContactDescriptionCount) then begin
    Index := Self.FSupportContactDescriptionCount - 1;
  end;
  Result := Self.FSupportContactDescription[index];
end;
 
// Acceso a los elementos de la propiedad <SystemStartupOptions>
function TComputerSystemProperties.GetSystemStartupOptions(index: integer):string;
begin
  if (index >= Self.FSystemStartupOptionsCount) then begin
    Index := Self.FSystemStartupOptionsCount - 1;
  end;
  Result := Self.FSystemStartupOptions[index];
end;
 
//: Rellenar las propiedades del componente.
procedure TComputerSystemInfo.FillProperties(AIndex: integer);
var
  v:variant;
  vNull:boolean;
  vp:TComputerSystemProperties;
begin

  // Llamar al heredado (importante)
  inherited;

  // Rellenar propiedades...
  vp := Self.ComputerSystemProperties;

  GetWMIPropertyValue(Self, 'AdminPasswordStatus', v, vNull);
  vp.FAdminPasswordStatus := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'AutomaticManagedPagefile', v, vNull);
  vp.FAutomaticManagedPagefile := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'AutomaticResetBootOption', v, vNull);
  vp.FAutomaticResetBootOption := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'AutomaticResetCapability', v, vNull);
  vp.FAutomaticResetCapability := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'BootOptionOnLimit', v, vNull);
  vp.FBootOptionOnLimit := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'BootOptionOnWatchDog', v, vNull);
  vp.FBootOptionOnWatchDog := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'BootROMSupported', v, vNull);
  vp.FBootROMSupported := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'BootupState', v, vNull);
  vp.FBootupState := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Caption', v, vNull);
  vp.FCaption := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'ChassisBootupState', v, vNull);
  vp.FChassisBootupState := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'CreationClassName', v, vNull);
  vp.FCreationClassName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'CurrentTimeZone', v, vNull);
  vp.FCurrentTimeZone := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'DaylightInEffect', v, vNull);
  vp.FDaylightInEffect := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'Description', v, vNull);
  vp.FDescription := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'DNSHostName', v, vNull);
  vp.FDNSHostName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Domain', v, vNull);
  vp.FDomain := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'DomainRole', v, vNull);
  vp.FDomainRole := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'EnableDaylightSavingsTime', v, vNull);
  vp.FEnableDaylightSavingsTime := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'FrontPanelResetStatus', v, vNull);
  vp.FFrontPanelResetStatus := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'InfraredSupported', v, vNull);
  vp.FInfraredSupported := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'InitialLoadInfo', v, vNull);
  vp.FInitialLoadInfo := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'InstallDate', v, vNull);
  if not vNull then begin
    vp.FInstallDate := EncodeDate(StrToInt(Copy(v, 1, 4)),StrToInt(Copy(v, 5, 2)),StrToInt(Copy(v, 7, 2)));
  end;

  GetWMIPropertyValue(Self, 'KeyboardPasswordStatus', v, vNull);
  vp.FKeyboardPasswordStatus := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'LastLoadInfo', v, vNull);
  vp.FLastLoadInfo := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Manufacturer', v, vNull);
  vp.FManufacturer := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Model', v, vNull);
  vp.FModel := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Name', v, vNull);
  vp.FName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'NameFormat', v, vNull);
  vp.FNameFormat := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'NetworkServerModeEnabled', v, vNull);
  vp.FNetworkServerModeEnabled := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'NumberOfLogicalProcessors', v, vNull);
  vp.FNumberOfLogicalProcessors := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'NumberOfProcessors', v, vNull);
  vp.FNumberOfProcessors := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'OEMLogoBitmap', v, vNull);
  vp.FOEMLogoBitmapAsString := VariantStrValue(v, vNull);
//  vp.FOEMLogoBitmap := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'OEMStringArray', v, vNull);
  vp.FOEMStringArrayAsString := VariantStrValue(v, vNull);
//  vp.FOEMStringArray := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'PartOfDomain', v, vNull);
  vp.FPartOfDomain := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'PauseAfterReset', v, vNull);
  vp.FPauseAfterReset := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'PCSystemType', v, vNull);
  vp.FPCSystemType := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'PowerManagementCapabilities', v, vNull);
//  vp.FPowerManagementCapabilitiesAsString := VariantStrValue(v, vNull);
//  vp.FPowerManagementCapabilities := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'PowerManagementSupported', v, vNull);
  vp.FPowerManagementSupported := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'PowerOnPasswordStatus', v, vNull);
  vp.FPowerOnPasswordStatus := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'PowerState', v, vNull);
  vp.FPowerState := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'PowerSupplyState', v, vNull);
  vp.FPowerSupplyState := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'PrimaryOwnerContact', v, vNull);
  vp.FPrimaryOwnerContact := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'PrimaryOwnerName', v, vNull);
  vp.FPrimaryOwnerName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'ResetCapability', v, vNull);
  vp.FResetCapability := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'ResetCount', v, vNull);
  vp.FResetCount := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'ResetLimit', v, vNull);
  vp.FResetLimit := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Roles', v, vNull);
  vp.FRolesAsString := VariantStrValue(v, vNull);
//  vp.FRoles := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Status', v, vNull);
  vp.FStatus := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'SupportContactDescription', v, vNull);
  vp.FSupportContactDescriptionAsString := VariantStrValue(v, vNull);
//  vp.FSupportContactDescription := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'SystemStartupDelay', v, vNull);
  vp.FSystemStartupDelay := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'SystemStartupOptions', v, vNull);
  vp.FSystemStartupOptionsAsString := VariantStrValue(v, vNull);
//  vp.FSystemStartupOptions := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'SystemStartupSetting', v, vNull);
  vp.FSystemStartupSetting := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'SystemType', v, vNull);
  vp.FSystemType := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'ThermalState', v, vNull);
  vp.FThermalState := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'TotalPhysicalMemory', v, vNull);
  vp.FTotalPhysicalMemory := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'UserName', v, vNull);
  vp.FUserName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'WakeUpType', v, vNull);
  vp.FWakeUpType := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Workgroup', v, vNull);
  vp.FWorkgroup := VariantStrValue(v, vNull);

end;

//: Método para renombrar en ordenador local.
function TComputerSystemInfo.Rename(AInstanceProp: string;
                                    AInstanceValue: Variant;
                                    Name, PassWord, Username: String): integer;
var
  arr:TArrVariant;
  v:variant;
begin

  SetLength(arr, 3);
  arr[0] := Name; arr[1] := PassWord; arr[2] := Username;

  // Ejecutar el proceso
  ExecuteClassMethod(Self,
                     AInstanceProp, AInstanceValue,
                     'Rename',
                     ['Name', 'Password', 'UserName'],
                     arr,
                     [ptIn, ptIn, ptIn],
                     [wbemCimtypeString, wbemCimtypeString, wbemCimtypeString], v);
  Result := v;



end;


// Obtener la propiedad como string
function TComputerSystemProperties.GetAdminPasswordStatusAsString():string;
begin
  case FAdminPasswordStatus of
    1: Result := ENUM_STRING_ADMINPASSWORDSTATUS_1;
    2: Result := ENUM_STRING_ADMINPASSWORDSTATUS_2;
    3: Result := ENUM_STRING_ADMINPASSWORDSTATUS_3;
    4: Result := ENUM_STRING_ADMINPASSWORDSTATUS_4;
  else
    Result := STR_EMPTY;
  end;
end;


// Obtener la propiedad como string
function TComputerSystemProperties.GetBootOptionOnLimitAsString():string;
begin
  case FBootOptionOnLimit of
    1: Result := ENUM_STRING_BOOTOPTIONONLIMIT_1;
    2: Result := ENUM_STRING_BOOTOPTIONONLIMIT_2;
    3: Result := ENUM_STRING_BOOTOPTIONONLIMIT_3;
    4: Result := ENUM_STRING_BOOTOPTIONONLIMIT_4;
  else
    Result := STR_EMPTY;
  end;
end;


// Obtener la propiedad como string
function TComputerSystemProperties.GetBootOptionOnWatchDogAsString():string;
begin
  case FBootOptionOnWatchDog of
    1: Result := ENUM_STRING_BOOTOPTIONONWATCHDOG_1;
    2: Result := ENUM_STRING_BOOTOPTIONONWATCHDOG_2;
    3: Result := ENUM_STRING_BOOTOPTIONONWATCHDOG_3;
    4: Result := ENUM_STRING_BOOTOPTIONONWATCHDOG_4;
  else
    Result := STR_EMPTY;
  end;
end;


// Obtener la propiedad como string
function TComputerSystemProperties.GetChassisBootupStateAsString():string;
begin
  case FChassisBootupState of
    1: Result := ENUM_STRING_CHASSISBOOTUPSTATE_1;
    2: Result := ENUM_STRING_CHASSISBOOTUPSTATE_2;
    3: Result := ENUM_STRING_CHASSISBOOTUPSTATE_3;
    4: Result := ENUM_STRING_CHASSISBOOTUPSTATE_4;
    5: Result := ENUM_STRING_CHASSISBOOTUPSTATE_5;
    6: Result := ENUM_STRING_CHASSISBOOTUPSTATE_6;
  else
    Result := STR_EMPTY;
  end;
end;


// Obtener la propiedad como string
function TComputerSystemProperties.GetDomainRoleAsString():string;
begin
  case FDomainRole of
    0: Result := ENUM_STRING_DOMAINROLE_0;
    1: Result := ENUM_STRING_DOMAINROLE_1;
    2: Result := ENUM_STRING_DOMAINROLE_2;
    3: Result := ENUM_STRING_DOMAINROLE_3;
    4: Result := ENUM_STRING_DOMAINROLE_4;
    5: Result := ENUM_STRING_DOMAINROLE_5;
  else
    Result := STR_EMPTY;
  end;
end;


// Obtener la propiedad como string
function TComputerSystemProperties.GetFrontPanelResetStatusAsString():string;
begin
  case FFrontPanelResetStatus of
    0: Result := ENUM_STRING_FRONTPANELRESETSTATUS_0;
    1: Result := ENUM_STRING_FRONTPANELRESETSTATUS_1;
    2: Result := ENUM_STRING_FRONTPANELRESETSTATUS_2;
    3: Result := ENUM_STRING_FRONTPANELRESETSTATUS_3;
  else
    Result := STR_EMPTY;
  end;
end;


// Obtener la propiedad como string
function TComputerSystemProperties.GetKeyboardPasswordStatusAsString():string;
begin
  case FKeyboardPasswordStatus of
    0: Result := ENUM_STRING_KEYBOARDPASSWORDSTATUS_0;
    1: Result := ENUM_STRING_KEYBOARDPASSWORDSTATUS_1;
    2: Result := ENUM_STRING_KEYBOARDPASSWORDSTATUS_2;
    3: Result := ENUM_STRING_KEYBOARDPASSWORDSTATUS_3;
  else
    Result := STR_EMPTY;
  end;
end;


// Obtener la propiedad como string
function TComputerSystemProperties.GetPCSystemTypeAsString():string;
begin
  case FPCSystemType of
    0: Result := ENUM_STRING_PCSYSTEMTYPE_0;
    1: Result := ENUM_STRING_PCSYSTEMTYPE_1;
    2: Result := ENUM_STRING_PCSYSTEMTYPE_2;
    3: Result := ENUM_STRING_PCSYSTEMTYPE_3;
    4: Result := ENUM_STRING_PCSYSTEMTYPE_4;
    5: Result := ENUM_STRING_PCSYSTEMTYPE_5;
    6: Result := ENUM_STRING_PCSYSTEMTYPE_6;
    7: Result := ENUM_STRING_PCSYSTEMTYPE_7;
    8: Result := ENUM_STRING_PCSYSTEMTYPE_8;
  else
    Result := STR_EMPTY;
  end;
end;


//// Obtener la propiedad como string
//function TComputerSystemProperties.GetPowerManagementCapabilitiesAsString():string;
//begin
//  case FPowerManagementCapabilities of
//    0: Result := ENUM_STRING_POWERMANAGEMENTCAPABILITIES_0;
//    1: Result := ENUM_STRING_POWERMANAGEMENTCAPABILITIES_1;
//    2: Result := ENUM_STRING_POWERMANAGEMENTCAPABILITIES_2;
//    3: Result := ENUM_STRING_POWERMANAGEMENTCAPABILITIES_3;
//    4: Result := ENUM_STRING_POWERMANAGEMENTCAPABILITIES_4;
//    5: Result := ENUM_STRING_POWERMANAGEMENTCAPABILITIES_5;
//    6: Result := ENUM_STRING_POWERMANAGEMENTCAPABILITIES_6;
//    7: Result := ENUM_STRING_POWERMANAGEMENTCAPABILITIES_7;
//  else
//    Result := STR_EMPTY;
//  end;
//end;
//

// Obtener la propiedad como string
function TComputerSystemProperties.GetPowerOnPasswordStatusAsString():string;
begin
  case FPowerOnPasswordStatus of
    0: Result := ENUM_STRING_POWERONPASSWORDSTATUS_0;
    1: Result := ENUM_STRING_POWERONPASSWORDSTATUS_1;
    2: Result := ENUM_STRING_POWERONPASSWORDSTATUS_2;
    3: Result := ENUM_STRING_POWERONPASSWORDSTATUS_3;
  else
    Result := STR_EMPTY;
  end;
end;


// Obtener la propiedad como string
function TComputerSystemProperties.GetPowerStateAsString():string;
begin
  case FPowerState of
    0: Result := ENUM_STRING_POWERSTATE_0;
    1: Result := ENUM_STRING_POWERSTATE_1;
    2: Result := ENUM_STRING_POWERSTATE_2;
    3: Result := ENUM_STRING_POWERSTATE_3;
    4: Result := ENUM_STRING_POWERSTATE_4;
    5: Result := ENUM_STRING_POWERSTATE_5;
    6: Result := ENUM_STRING_POWERSTATE_6;
    7: Result := ENUM_STRING_POWERSTATE_7;
  else
    Result := STR_EMPTY;
  end;
end;


// Obtener la propiedad como string
function TComputerSystemProperties.GetPowerSupplyStateAsString():string;
begin
  case FPowerSupplyState of
    1: Result := ENUM_STRING_POWERSUPPLYSTATE_1;
    2: Result := ENUM_STRING_POWERSUPPLYSTATE_2;
    3: Result := ENUM_STRING_POWERSUPPLYSTATE_3;
    4: Result := ENUM_STRING_POWERSUPPLYSTATE_4;
    5: Result := ENUM_STRING_POWERSUPPLYSTATE_5;
    6: Result := ENUM_STRING_POWERSUPPLYSTATE_6;
  else
    Result := STR_EMPTY;
  end;
end;


// Obtener la propiedad como string
function TComputerSystemProperties.GetResetCapabilityAsString():string;
begin
  case FResetCapability of
    1: Result := ENUM_STRING_RESETCAPABILITY_1;
    2: Result := ENUM_STRING_RESETCAPABILITY_2;
    3: Result := ENUM_STRING_RESETCAPABILITY_3;
    4: Result := ENUM_STRING_RESETCAPABILITY_4;
    5: Result := ENUM_STRING_RESETCAPABILITY_5;
  else
    Result := STR_EMPTY;
  end;
end;


// Obtener la propiedad como string
function TComputerSystemProperties.GetThermalStateAsString():string;
begin
  case FThermalState of
    1: Result := ENUM_STRING_THERMALSTATE_1;
    2: Result := ENUM_STRING_THERMALSTATE_2;
    3: Result := ENUM_STRING_THERMALSTATE_3;
    4: Result := ENUM_STRING_THERMALSTATE_4;
    5: Result := ENUM_STRING_THERMALSTATE_5;
    6: Result := ENUM_STRING_THERMALSTATE_6;
  else
    Result := STR_EMPTY;
  end;
end;


// Obtener la propiedad como string
function TComputerSystemProperties.GetWakeUpTypeAsString():string;
begin
  case FWakeUpType of
    0: Result := ENUM_STRING_WAKEUPTYPE_0;
    1: Result := ENUM_STRING_WAKEUPTYPE_1;
    2: Result := ENUM_STRING_WAKEUPTYPE_2;
    3: Result := ENUM_STRING_WAKEUPTYPE_3;
    4: Result := ENUM_STRING_WAKEUPTYPE_4;
    5: Result := ENUM_STRING_WAKEUPTYPE_5;
    6: Result := ENUM_STRING_WAKEUPTYPE_6;
    7: Result := ENUM_STRING_WAKEUPTYPE_7;
    8: Result := ENUM_STRING_WAKEUPTYPE_8;
  else
    Result := STR_EMPTY;
  end;
end;

// {IMPL_ENUM}

end.
