{
TProcessorInfo  Component Version 1.1 - Suite GLib 
Copyright (©) 2009,  by Germán Estévez (Neftalí) 
 
  Clase que almacena las propiedades del Procesador.
 
Utilización/Usage: 
  Basta con "soltar" el componente y activarlo.
 
  Place the component in the form and active it. 
 
  MSDN Info: 
  http://msdn.microsoft.com/en-us/library/aa394373(VS.85).aspx 
 
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
unit CProcessorInfo;
 
{ 
========================================================================= 
 
  TProcessorInfo.pas 
 
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
  TProcessorProperties = class(TPersistent)
  private
    FAddressWidth:Integer;
    FArchitecture:Integer;
    FAvailability:Integer;
    FCaption:string;
    FConfigManagerErrorCode:Longword;
    FConfigManagerUserConfig:boolean;
    FCpuStatus:Integer;
    FCreationClassName:string;
    FCurrentClockSpeed:Longword;
    FCurrentVoltage:Integer;
    FDataWidth:Integer;
    FDescription:string;
    FDeviceID:string;
    FErrorCleared:boolean;
    FErrorDescription:string;
    FExtClock:Longword;
    FFamily:Integer;
    FFamilyAsString:string;
    FInstallDate:TDateTime;
    FL2CacheSize:Longword;
    FL2CacheSpeed:Longword;
    FL3CacheSize:Longword;
    FL3CacheSpeed:Longword;
    FLastErrorCode:Longword;
    FLevel:Integer;
    FLoadPercentage:Integer;
    FManufacturer:string;
    FMaxClockSpeed:Longword;
    FName:string;
    FNumberOfCores:Longword;
    FNumberOfLogicalProcessors:Longword;
    FOtherFamilyDescription:string;
    FPNPDeviceID:string;
    FPowerManagementCapabilities:TArrInteger;
    FPowerManagementCapabilitiesCount:integer;
    FPowerManagementCapabilitiesAsString:string;
    FPowerManagementSupported:boolean;
    FProcessorId:string;
    FProcessorType:Integer;
    FProcessorTypeAsString:string;
    FRevision:Integer;
    FRole:string;
    FSocketDesignation:string;
    FStatus:string;
    FStatusInfo:Integer;
    FStepping:string;
    FSystemCreationClassName:string;
    FSystemName:string;
    FUniqueId:string;
    FUpgradeMethod:Integer;
    FVersion:string;
    FVoltageCaps:Longword;
    //enum
    FArchitectureAsString:string;
    FAvailabilityAsString:string;
    FCpuStatusAsString:string;

  private
    function GetPowerManagementCapabilities(index: integer): Integer;
  public
    property PowerManagementCapabilities[index:integer]:Integer read GetPowerManagementCapabilities;
    property PowerManagementCapabilitiesCount:integer read FPowerManagementCapabilitiesCount stored False;
    // Obtener la propiedad <Architecture> como string
    function GetArchitectureAsString():string;
    // Obtener la propiedad <Availability> como string
    function GetAvailabilityAsString():string;
    // Obtener la propiedad <CpuStatus> como string
    function GetCpuStatusAsString():string;
    // Obtener la propiedad <Family> como string
    function GetFamilyAsString():string;
    // Obtener la propiedad <ProcessorType> como string
    function GetProcessorTypeAsString():string;


  published
    property AddressWidth:Integer read FAddressWidth write FAddressWidth stored False;
    property Architecture:Integer read FArchitecture write FArchitecture stored False;
    property ArchitectureAsString:string read GetArchitectureAsString write FArchitectureAsString;
    property Availability:Integer read FAvailability write FAvailability stored False;
    property AvailabilityAsString:string read GetAvailabilityAsString write FAvailabilityAsString;
    property Caption:string read FCaption write FCaption stored False;
    property ConfigManagerErrorCode:Longword read FConfigManagerErrorCode write FConfigManagerErrorCode stored False;
    property ConfigManagerUserConfig:boolean read FConfigManagerUserConfig write FConfigManagerUserConfig stored False;
    property CpuStatus:Integer read FCpuStatus write FCpuStatus stored False;
    property CpuStatusAsString:string read GetCpuStatusAsString write FCpuStatusAsString;
    property CreationClassName:string read FCreationClassName write FCreationClassName stored False;
    property CurrentClockSpeed:Longword read FCurrentClockSpeed write FCurrentClockSpeed stored False;
    property CurrentVoltage:Integer read FCurrentVoltage write FCurrentVoltage stored False;
    property DataWidth:Integer read FDataWidth write FDataWidth stored False;
    property Description:string read FDescription write FDescription stored False;
    property DeviceID:string read FDeviceID write FDeviceID stored False;
    property ErrorCleared:boolean read FErrorCleared write FErrorCleared stored False;
    property ErrorDescription:string read FErrorDescription write FErrorDescription stored False;
    property ExtClock:Longword read FExtClock write FExtClock stored False;
    property Family:Integer read FFamily write FFamily stored False;
    property FamilyAsString:string read GetFamilyAsString write FFamilyAsString stored False;
    property InstallDate:TDateTime read FInstallDate write FInstallDate stored False;
    property L2CacheSize:Longword read FL2CacheSize write FL2CacheSize stored False;
    property L2CacheSpeed:Longword read FL2CacheSpeed write FL2CacheSpeed stored False;
    property L3CacheSize:Longword read FL3CacheSize write FL3CacheSize stored False;
    property L3CacheSpeed:Longword read FL3CacheSpeed write FL3CacheSpeed stored False;
    property LastErrorCode:Longword read FLastErrorCode write FLastErrorCode stored False;
    property Level:Integer read FLevel write FLevel stored False;
    property LoadPercentage:Integer read FLoadPercentage write FLoadPercentage stored False;
    property Manufacturer:string read FManufacturer write FManufacturer stored False;
    property MaxClockSpeed:Longword read FMaxClockSpeed write FMaxClockSpeed stored False;
    property Name:string read FName write FName stored False;
    property NumberOfCores:Longword read FNumberOfCores write FNumberOfCores stored False;
    property NumberOfLogicalProcessors:Longword read FNumberOfLogicalProcessors write FNumberOfLogicalProcessors stored False;
    property OtherFamilyDescription:string read FOtherFamilyDescription write FOtherFamilyDescription stored False;
    property PNPDeviceID:string read FPNPDeviceID write FPNPDeviceID stored False;
    property PowerManagementCapabilitiesAsString:string read FPowerManagementCapabilitiesAsString write FPowerManagementCapabilitiesAsString stored False;
//    property PowerManagementCapabilitiesAsString:string read GetPowerManagementCapabilitiesAsString write FPowerManagementCapabilitiesAsString;
    property PowerManagementSupported:boolean read FPowerManagementSupported write FPowerManagementSupported stored False;
    property ProcessorId:string read FProcessorId write FProcessorId stored False;
    property ProcessorType:Integer read FProcessorType write FProcessorType stored False;
    property ProcessorTypeAsString:string read GetProcessorTypeAsString write FProcessorTypeAsString;
    property Revision:Integer read FRevision write FRevision stored False;
    property Role:string read FRole write FRole stored False;
    property SocketDesignation:string read FSocketDesignation write FSocketDesignation stored False;
    property Status:string read FStatus write FStatus stored False;
    property StatusInfo:Integer read FStatusInfo write FStatusInfo stored False;
    property Stepping:string read FStepping write FStepping stored False;
    property SystemCreationClassName:string read FSystemCreationClassName write FSystemCreationClassName stored False;
    property SystemName:string read FSystemName write FSystemName stored False;
    property UniqueId:string read FUniqueId write FUniqueId stored False;
    property UpgradeMethod:Integer read FUpgradeMethod write FUpgradeMethod stored False;
    property Version:string read FVersion write FVersion stored False;
    property VoltageCaps:Longword read FVoltageCaps write FVoltageCaps stored False;
  end;
  
  //: Implementación para el acceso vía WMI a la clase Win32_Processor
  TProcessorInfo = class(TWMIBase)
  private
    FProcessorProperties: TProcessorProperties;
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
    // propiedades de la Processor
    property ProcessorProperties:TProcessorProperties read FProcessorProperties write FProcessorProperties;
  end;

// Constantes para la propiedad Architecture
const
  ENUM_STRING_ARCHITECTURE_0 = 'x86';
  ENUM_STRING_ARCHITECTURE_1 = 'MIPS';
  ENUM_STRING_ARCHITECTURE_2 = 'Alpha';
  ENUM_STRING_ARCHITECTURE_3 = 'PowerPC';
  ENUM_STRING_ARCHITECTURE_6 = 'Intel Itanium Processor Family (IPF)';
  ENUM_STRING_ARCHITECTURE_9 = 'x64';

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
  ENUM_STRING_AVAILABILITY_14 = 'Power Save - Low Power Mode. The device is in a power save state, but is still functioning, and may exhibit decreased performance.';
  ENUM_STRING_AVAILABILITY_15 = 'Power Save - Standby. The device is not functioning, but can be brought to full power quickly.';
  ENUM_STRING_AVAILABILITY_16 = 'Power Cycle';
  ENUM_STRING_AVAILABILITY_17 = 'Power Save - Warning. The device is in a warning state, though also in a power save state.';

// Constantes para la propiedad CpuStatus
const
  ENUM_STRING_CPUSTATUS_0 = 'Unknown';
  ENUM_STRING_CPUSTATUS_1 = 'CPU Enabled';
  ENUM_STRING_CPUSTATUS_2 = 'CPU Disabled by User via BIOS Setup';
  ENUM_STRING_CPUSTATUS_3 = 'CPU Disabled by BIOS (POST Error)';
  ENUM_STRING_CPUSTATUS_4 = 'CPU Is Idle';
  ENUM_STRING_CPUSTATUS_5 = 'Reserved';
  ENUM_STRING_CPUSTATUS_6 = 'Reserved';
  ENUM_STRING_CPUSTATUS_7 = 'Other';

// Constantes para la propiedad Family
const
  ENUM_STRING_FAMILY_1 = 'Other';
  ENUM_STRING_FAMILY_2 = 'Unknown';
  ENUM_STRING_FAMILY_3 = '8086';
  ENUM_STRING_FAMILY_4 = '80286';
  ENUM_STRING_FAMILY_5 = 'Intel386™ Processor';
  ENUM_STRING_FAMILY_6 = 'Intel486™ Processor';
  ENUM_STRING_FAMILY_7 = '8087';
  ENUM_STRING_FAMILY_8 = '80287';
  ENUM_STRING_FAMILY_9 = '80387';
  ENUM_STRING_FAMILY_10 = '80487';
  ENUM_STRING_FAMILY_11 = 'Pentium Brand';
  ENUM_STRING_FAMILY_12 = 'Pentium Pro';
  ENUM_STRING_FAMILY_13 = 'Pentium II';
  ENUM_STRING_FAMILY_14 = 'Pentium Processor with MMX™ Technology';
  ENUM_STRING_FAMILY_15 = 'Celeron™';
  ENUM_STRING_FAMILY_16 = 'Pentium II Xeon™';
  ENUM_STRING_FAMILY_17 = 'Pentium III';
  ENUM_STRING_FAMILY_18 = 'M1 Family';
  ENUM_STRING_FAMILY_19 = 'M2 Family';
  ENUM_STRING_FAMILY_24 = 'AMD Duron™ Processor Family';
  ENUM_STRING_FAMILY_25 = 'K5 Family';
  ENUM_STRING_FAMILY_26 = 'K6 Family';
  ENUM_STRING_FAMILY_27 = 'K6-2';
  ENUM_STRING_FAMILY_28 = 'K6-3';
  ENUM_STRING_FAMILY_29 = 'AMD Athlon™ Processor Family';
  ENUM_STRING_FAMILY_30 = 'AMD2900 Family';
  ENUM_STRING_FAMILY_31 = 'K6-2+';
  ENUM_STRING_FAMILY_32 = 'Power PC Family';
  ENUM_STRING_FAMILY_33 = 'Power PC 601';
  ENUM_STRING_FAMILY_34 = 'Power PC 603';
  ENUM_STRING_FAMILY_35 = 'Power PC 603+';
  ENUM_STRING_FAMILY_36 = 'Power PC 604';
  ENUM_STRING_FAMILY_37 = 'Power PC 620';
  ENUM_STRING_FAMILY_38 = 'Power PC X704';
  ENUM_STRING_FAMILY_39 = 'Power PC 750';
  ENUM_STRING_FAMILY_48 = 'Alpha Family';
  ENUM_STRING_FAMILY_49 = 'Alpha 21064';
  ENUM_STRING_FAMILY_50 = 'Alpha 21066';
  ENUM_STRING_FAMILY_51 = 'Alpha 21164';
  ENUM_STRING_FAMILY_52 = 'Alpha 21164PC';
  ENUM_STRING_FAMILY_53 = 'Alpha 21164a';
  ENUM_STRING_FAMILY_54 = 'Alpha 21264';
  ENUM_STRING_FAMILY_55 = 'Alpha 21364';
  ENUM_STRING_FAMILY_64 = 'MIPS Family';
  ENUM_STRING_FAMILY_65 = 'MIPS R4000';
  ENUM_STRING_FAMILY_66 = 'MIPS R4200';
  ENUM_STRING_FAMILY_67 = 'MIPS R4400';
  ENUM_STRING_FAMILY_68 = 'MIPS R4600';
  ENUM_STRING_FAMILY_69 = 'MIPS R10000';
  ENUM_STRING_FAMILY_80 = 'SPARC Family';
  ENUM_STRING_FAMILY_81 = 'SuperSPARC';
  ENUM_STRING_FAMILY_82 = 'microSPARC II';
  ENUM_STRING_FAMILY_83 = 'microSPARC IIep';
  ENUM_STRING_FAMILY_84 = 'UltraSPARC';
  ENUM_STRING_FAMILY_85 = 'UltraSPARC II';
  ENUM_STRING_FAMILY_86 = 'UltraSPARC IIi';
  ENUM_STRING_FAMILY_87 = 'UltraSPARC III';
  ENUM_STRING_FAMILY_88 = 'UltraSPARC IIIi';
  ENUM_STRING_FAMILY_96 = '68040';
  ENUM_STRING_FAMILY_97 = '68xxx Family';
  ENUM_STRING_FAMILY_98 = '68000';
  ENUM_STRING_FAMILY_99 = '68010';
  ENUM_STRING_FAMILY_100 = '68020';
  ENUM_STRING_FAMILY_101 = '68030';
  ENUM_STRING_FAMILY_112 = 'Hobbit Family';
  ENUM_STRING_FAMILY_120 = 'Crusoe™ TM5000 Family';
  ENUM_STRING_FAMILY_121 = 'Crusoe™ TM3000 Family. 122. Efficeon™ TM8000 Family';
  ENUM_STRING_FAMILY_128 = 'Weitek';
  ENUM_STRING_FAMILY_130 = 'Itanium™ Processor';
  ENUM_STRING_FAMILY_131 = 'AMD Athlon™ 64 Processor Famiily';
  ENUM_STRING_FAMILY_132 = 'AMD Opteron™ Processor Family';
  ENUM_STRING_FAMILY_144 = 'PA-RISC Family';
  ENUM_STRING_FAMILY_145 = 'PA-RISC 8500';
  ENUM_STRING_FAMILY_146 = 'PA-RISC 8000';
  ENUM_STRING_FAMILY_147 = 'PA-RISC 7300LC';
  ENUM_STRING_FAMILY_148 = 'PA-RISC 7200';
  ENUM_STRING_FAMILY_149 = 'PA-RISC 7100LC';
  ENUM_STRING_FAMILY_150 = 'PA-RISC 7100';
  ENUM_STRING_FAMILY_160 = 'V30 Family';
  ENUM_STRING_FAMILY_176 = 'Pentium III Xeon™ Processor';
  ENUM_STRING_FAMILY_177 = 'Pentium III Processor with Intel SpeedStep™ Technology';
  ENUM_STRING_FAMILY_178 = 'Pentium 4';
  ENUM_STRING_FAMILY_179 = 'Intel Xeon™';
  ENUM_STRING_FAMILY_180 = 'AS400 Family';
  ENUM_STRING_FAMILY_181 = 'Intel Xeon™ Processor MP';
  ENUM_STRING_FAMILY_182 = 'AMD Athlon™ XP Family';
  ENUM_STRING_FAMILY_183 = 'AMD Athlon™ MP Family';
  ENUM_STRING_FAMILY_184 = 'Intel Itanium 2';
  ENUM_STRING_FAMILY_185 = 'Intel Pentium M Processor';
  ENUM_STRING_FAMILY_190 = 'K7';
  ENUM_STRING_FAMILY_200 = 'IBM390 Family';
  ENUM_STRING_FAMILY_201 = 'G4';
  ENUM_STRING_FAMILY_202 = 'G5';
  ENUM_STRING_FAMILY_203 = 'G6';
  ENUM_STRING_FAMILY_204 = 'z/Architecture Base';
  ENUM_STRING_FAMILY_250 = 'i860';
  ENUM_STRING_FAMILY_251 = 'i960';
  ENUM_STRING_FAMILY_260 = 'SH-3';
  ENUM_STRING_FAMILY_261 = 'SH-4';
  ENUM_STRING_FAMILY_280 = 'ARM';
  ENUM_STRING_FAMILY_281 = 'StrongARM';
  ENUM_STRING_FAMILY_300 = '6x86';
  ENUM_STRING_FAMILY_301 = 'MediaGX';
  ENUM_STRING_FAMILY_302 = 'MII';
  ENUM_STRING_FAMILY_320 = 'WinChip';
  ENUM_STRING_FAMILY_350 = 'DSP';
  ENUM_STRING_FAMILY_500 = 'Video Processor';

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

// Constantes para la propiedad ProcessorType
const
  ENUM_STRING_PROCESSORTYPE_1 = 'Other';
  ENUM_STRING_PROCESSORTYPE_2 = 'Unknown';
  ENUM_STRING_PROCESSORTYPE_3 = 'Central Processor';
  ENUM_STRING_PROCESSORTYPE_4 = 'Math Processor';
  ENUM_STRING_PROCESSORTYPE_5 = 'DSP Processor';
  ENUM_STRING_PROCESSORTYPE_6 = 'Video Processor';
    
//========================================================================= 
// 
// I M P L E M E N T A T I O N 
// 
//========================================================================= 
implementation 
  
uses 
  {Generales} Forms, Types, Windows, SysUtils, 
  {GLib} UProcedures, UConstantes, Dialogs; 
 
  
{ TProcessor } 
{-------------------------------------------------------------------------------} 
// Limpiar las propiedades
procedure TProcessorInfo.ClearProps;
begin

  Self.ProcessorProperties.FAddressWidth := 0;
  Self.ProcessorProperties.FArchitecture := 0;
  Self.ProcessorProperties.FAvailability := 0;
  Self.ProcessorProperties.FCaption := STR_EMPTY;
  Self.ProcessorProperties.FConfigManagerErrorCode := 0;
  Self.ProcessorProperties.FConfigManagerUserConfig := False;
  Self.ProcessorProperties.FCpuStatus := 0;
  Self.ProcessorProperties.FCreationClassName := STR_EMPTY;
  Self.ProcessorProperties.FCurrentClockSpeed := 0;
  Self.ProcessorProperties.FCurrentVoltage := 0;
  Self.ProcessorProperties.FDataWidth := 0;
  Self.ProcessorProperties.FDescription := STR_EMPTY;
  Self.ProcessorProperties.FDeviceID := STR_EMPTY;
  Self.ProcessorProperties.FErrorCleared := False;
  Self.ProcessorProperties.FErrorDescription := STR_EMPTY;
  Self.ProcessorProperties.FExtClock := 0;
  Self.ProcessorProperties.FFamily := 0;
  Self.ProcessorProperties.FInstallDate := 0;
  Self.ProcessorProperties.FL2CacheSize := 0;
  Self.ProcessorProperties.FL2CacheSpeed := 0;
  Self.ProcessorProperties.FL3CacheSize := 0;
  Self.ProcessorProperties.FL3CacheSpeed := 0;
  Self.ProcessorProperties.FLastErrorCode := 0;
  Self.ProcessorProperties.FLevel := 0;
  Self.ProcessorProperties.FLoadPercentage := 0;
  Self.ProcessorProperties.FManufacturer := STR_EMPTY;
  Self.ProcessorProperties.FMaxClockSpeed := 0;
  Self.ProcessorProperties.FName := STR_EMPTY;
  Self.ProcessorProperties.FNumberOfCores := 0;
  Self.ProcessorProperties.FNumberOfLogicalProcessors := 0;
  Self.ProcessorProperties.FOtherFamilyDescription := STR_EMPTY;
  Self.ProcessorProperties.FPNPDeviceID := STR_EMPTY;
  Self.ProcessorProperties.FPowerManagementCapabilitiesCount := 0;
  Self.ProcessorProperties.FPowerManagementCapabilitiesAsString := STR_EMPTY;
  SetLength(Self.ProcessorProperties.FPowerManagementCapabilities,0);
  Self.ProcessorProperties.FPowerManagementSupported := False;
  Self.ProcessorProperties.FProcessorId := STR_EMPTY;
  Self.ProcessorProperties.FProcessorType := 0;
  Self.ProcessorProperties.FRevision := 0;
  Self.ProcessorProperties.FRole := STR_EMPTY;
  Self.ProcessorProperties.FSocketDesignation := STR_EMPTY;
  Self.ProcessorProperties.FStatus := STR_EMPTY;
  Self.ProcessorProperties.FStatusInfo := 0;
  Self.ProcessorProperties.FStepping := STR_EMPTY;
  Self.ProcessorProperties.FSystemCreationClassName := STR_EMPTY;
  Self.ProcessorProperties.FSystemName := STR_EMPTY;
  Self.ProcessorProperties.FUniqueId := STR_EMPTY;
  Self.ProcessorProperties.FUpgradeMethod := 0;
  Self.ProcessorProperties.FVersion := STR_EMPTY;
  Self.ProcessorProperties.FVoltageCaps := 0;

end;
//: Constructor del componente 
constructor TProcessorInfo.Create(AOwner: TComponent); 
begin 
  inherited; 
 
  Self.FProcessorProperties := TProcessorProperties.Create(); 
  Self.MSDNHelp := 'http://msdn.microsoft.com/en-us/library/aa394373(VS.85).aspx';
end; 
 
// destructor del componente 
destructor TProcessorInfo.Destroy(); 
begin 
 
  // liberar 
  FreeAndNil(Self.FProcessorProperties); 
 
  inherited; 
end; 
 
// Obtener la clase 
function TProcessorInfo.GetWMIClass(): string; 
begin 
  Result := WIN32_PROCESSOR_CLASS;
end; 
 
// Obtener Root 
function TProcessorInfo.GetWMIRoot(): string; 
begin 
  Result := STR_CIM2_ROOT; 
end; 
 
// Active 
procedure TProcessorInfo.SetActive(const Value: Boolean); 
begin 
  // método heredado 
  inherited; 
end; 
  

// Acceso a los elementos de la propiedad <PowerManagementCapabilities>
function TProcessorProperties.GetPowerManagementCapabilities(index: integer):Integer;
begin
  if (index >= Self.FPowerManagementCapabilitiesCount) then begin
    Index := Self.FPowerManagementCapabilitiesCount - 1;
  end;
  Result := Self.FPowerManagementCapabilities[index];
end;
 
//: Rellenar las propiedades del componente.
procedure TProcessorInfo.FillProperties(AIndex: integer);
var
  v:variant;
  vNull:boolean;
  vp:TProcessorProperties;
begin

  // Llamar al heredado (importante)
  inherited;

  // Rellenar propiedades...
  vp := Self.ProcessorProperties;

  GetWMIPropertyValue(Self, 'AddressWidth', v, vNull);
  vp.FAddressWidth := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Architecture', v, vNull);
  vp.FArchitecture := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Availability', v, vNull);
  vp.FAvailability := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Caption', v, vNull);
  vp.FCaption := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'ConfigManagerErrorCode', v, vNull);
  vp.FConfigManagerErrorCode := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'ConfigManagerUserConfig', v, vNull);
  vp.FConfigManagerUserConfig := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'CpuStatus', v, vNull);
  vp.FCpuStatus := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'CreationClassName', v, vNull);
  vp.FCreationClassName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'CurrentClockSpeed', v, vNull);
  vp.FCurrentClockSpeed := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'CurrentVoltage', v, vNull);
  vp.FCurrentVoltage := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'DataWidth', v, vNull);
  vp.FDataWidth := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Description', v, vNull);
  vp.FDescription := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'DeviceID', v, vNull);
  vp.FDeviceID := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'ErrorCleared', v, vNull);
  vp.FErrorCleared := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'ErrorDescription', v, vNull);
  vp.FErrorDescription := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'ExtClock', v, vNull);
  vp.FExtClock := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Family', v, vNull);
  vp.FFamily := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'InstallDate', v, vNull);
  if not vNull then begin
    vp.FInstallDate := EncodeDate(StrToInt(Copy(v, 1, 4)),StrToInt(Copy(v, 5, 2)),StrToInt(Copy(v, 7, 2)));
  end;

  GetWMIPropertyValue(Self, 'L2CacheSize', v, vNull);
  vp.FL2CacheSize := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'L2CacheSpeed', v, vNull);
  vp.FL2CacheSpeed := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'L3CacheSize', v, vNull);
  vp.FL3CacheSize := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'L3CacheSpeed', v, vNull);
  vp.FL3CacheSpeed := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'LastErrorCode', v, vNull);
  vp.FLastErrorCode := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Level', v, vNull);
  vp.FLevel := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'LoadPercentage', v, vNull);
  vp.FLoadPercentage := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Manufacturer', v, vNull);
  vp.FManufacturer := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'MaxClockSpeed', v, vNull);
  vp.FMaxClockSpeed := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Name', v, vNull);
  vp.FName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'NumberOfCores', v, vNull);
  vp.FNumberOfCores := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'NumberOfLogicalProcessors', v, vNull);
  vp.FNumberOfLogicalProcessors := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'OtherFamilyDescription', v, vNull);
  vp.FOtherFamilyDescription := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'PNPDeviceID', v, vNull);
  vp.FPNPDeviceID := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'PowerManagementCapabilities', v, vNull);
  vp.FPowerManagementCapabilitiesAsString := VariantStrValue(v, vNull);
//  vp.FPowerManagementCapabilities := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'PowerManagementSupported', v, vNull);
  vp.FPowerManagementSupported := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'ProcessorId', v, vNull);
  vp.FProcessorId := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'ProcessorType', v, vNull);
  vp.FProcessorType := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Revision', v, vNull);
  vp.FRevision := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Role', v, vNull);
  vp.FRole := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'SocketDesignation', v, vNull);
  vp.FSocketDesignation := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Status', v, vNull);
  vp.FStatus := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'StatusInfo', v, vNull);
  vp.FStatusInfo := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Stepping', v, vNull);
  vp.FStepping := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'SystemCreationClassName', v, vNull);
  vp.FSystemCreationClassName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'SystemName', v, vNull);
  vp.FSystemName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'UniqueId', v, vNull);
  vp.FUniqueId := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'UpgradeMethod', v, vNull);
  vp.FUpgradeMethod := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Version', v, vNull);
  vp.FVersion := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'VoltageCaps', v, vNull);
  vp.FVoltageCaps := VariantIntegerValue(v, vNull);

end;


// Obtener la propiedad como string
function TProcessorProperties.GetArchitectureAsString():string;
begin
  case FArchitecture of
    0: Result := ENUM_STRING_ARCHITECTURE_0;
    1: Result := ENUM_STRING_ARCHITECTURE_1;
    2: Result := ENUM_STRING_ARCHITECTURE_2;
    3: Result := ENUM_STRING_ARCHITECTURE_3;
    6: Result := ENUM_STRING_ARCHITECTURE_6;
    9: Result := ENUM_STRING_ARCHITECTURE_9;
  else
    Result := STR_EMPTY;
  end;
end;


// Obtener la propiedad como string
function TProcessorProperties.GetAvailabilityAsString():string;
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
function TProcessorProperties.GetFamilyAsString():string;
begin
  case FFamily of
    1: Result := ENUM_STRING_FAMILY_1;
    2: Result := ENUM_STRING_FAMILY_2;
    3: Result := ENUM_STRING_FAMILY_3;
    4: Result := ENUM_STRING_FAMILY_4;
    5: Result := ENUM_STRING_FAMILY_5;
    6: Result := ENUM_STRING_FAMILY_6;
    7: Result := ENUM_STRING_FAMILY_7;
    8: Result := ENUM_STRING_FAMILY_8;
    9: Result := ENUM_STRING_FAMILY_9;
    10: Result := ENUM_STRING_FAMILY_10;
    11: Result := ENUM_STRING_FAMILY_11;
    12: Result := ENUM_STRING_FAMILY_12;
    13: Result := ENUM_STRING_FAMILY_13;
    14: Result := ENUM_STRING_FAMILY_14;
    15: Result := ENUM_STRING_FAMILY_15;
    16: Result := ENUM_STRING_FAMILY_16;
    17: Result := ENUM_STRING_FAMILY_17;
    18: Result := ENUM_STRING_FAMILY_18;
    19: Result := ENUM_STRING_FAMILY_19;
    24: Result := ENUM_STRING_FAMILY_24;
    25: Result := ENUM_STRING_FAMILY_25;
    26: Result := ENUM_STRING_FAMILY_26;
    27: Result := ENUM_STRING_FAMILY_27;
    28: Result := ENUM_STRING_FAMILY_28;
    29: Result := ENUM_STRING_FAMILY_29;
    30: Result := ENUM_STRING_FAMILY_30;
    31: Result := ENUM_STRING_FAMILY_31;
    32: Result := ENUM_STRING_FAMILY_32;
    33: Result := ENUM_STRING_FAMILY_33;
    34: Result := ENUM_STRING_FAMILY_34;
    35: Result := ENUM_STRING_FAMILY_35;
    36: Result := ENUM_STRING_FAMILY_36;
    37: Result := ENUM_STRING_FAMILY_37;
    38: Result := ENUM_STRING_FAMILY_38;
    39: Result := ENUM_STRING_FAMILY_39;
    48: Result := ENUM_STRING_FAMILY_48;
    49: Result := ENUM_STRING_FAMILY_49;
    50: Result := ENUM_STRING_FAMILY_50;
    51: Result := ENUM_STRING_FAMILY_51;
    52: Result := ENUM_STRING_FAMILY_52;
    53: Result := ENUM_STRING_FAMILY_53;
    54: Result := ENUM_STRING_FAMILY_54;
    55: Result := ENUM_STRING_FAMILY_55;
    64: Result := ENUM_STRING_FAMILY_64;
    65: Result := ENUM_STRING_FAMILY_65;
    66: Result := ENUM_STRING_FAMILY_66;
    67: Result := ENUM_STRING_FAMILY_67;
    68: Result := ENUM_STRING_FAMILY_68;
    69: Result := ENUM_STRING_FAMILY_69;
    80: Result := ENUM_STRING_FAMILY_80;
    81: Result := ENUM_STRING_FAMILY_81;
    82: Result := ENUM_STRING_FAMILY_82;
    83: Result := ENUM_STRING_FAMILY_83;
    84: Result := ENUM_STRING_FAMILY_84;
    85: Result := ENUM_STRING_FAMILY_85;
    86: Result := ENUM_STRING_FAMILY_86;
    87: Result := ENUM_STRING_FAMILY_87;
    88: Result := ENUM_STRING_FAMILY_88;
    96: Result := ENUM_STRING_FAMILY_96;
    97: Result := ENUM_STRING_FAMILY_97;
    98: Result := ENUM_STRING_FAMILY_98;
    99: Result := ENUM_STRING_FAMILY_99;
    100: Result := ENUM_STRING_FAMILY_100;
    101: Result := ENUM_STRING_FAMILY_101;
    112: Result := ENUM_STRING_FAMILY_112;
    120: Result := ENUM_STRING_FAMILY_120;
    121: Result := ENUM_STRING_FAMILY_121;
    128: Result := ENUM_STRING_FAMILY_128;
    130: Result := ENUM_STRING_FAMILY_130;
    131: Result := ENUM_STRING_FAMILY_131;
    132: Result := ENUM_STRING_FAMILY_132;
    144: Result := ENUM_STRING_FAMILY_144;
    145: Result := ENUM_STRING_FAMILY_145;
    146: Result := ENUM_STRING_FAMILY_146;
    147: Result := ENUM_STRING_FAMILY_147;
    148: Result := ENUM_STRING_FAMILY_148;
    149: Result := ENUM_STRING_FAMILY_149;
    150: Result := ENUM_STRING_FAMILY_150;
    160: Result := ENUM_STRING_FAMILY_160;
    176: Result := ENUM_STRING_FAMILY_176;
    177: Result := ENUM_STRING_FAMILY_177;
    178: Result := ENUM_STRING_FAMILY_178;
    179: Result := ENUM_STRING_FAMILY_179;
    180: Result := ENUM_STRING_FAMILY_180;
    181: Result := ENUM_STRING_FAMILY_181;
    182: Result := ENUM_STRING_FAMILY_182;
    183: Result := ENUM_STRING_FAMILY_183;
    184: Result := ENUM_STRING_FAMILY_184;
    185: Result := ENUM_STRING_FAMILY_185;
    190: Result := ENUM_STRING_FAMILY_190;
    200: Result := ENUM_STRING_FAMILY_200;
    201: Result := ENUM_STRING_FAMILY_201;
    202: Result := ENUM_STRING_FAMILY_202;
    203: Result := ENUM_STRING_FAMILY_203;
    204: Result := ENUM_STRING_FAMILY_204;
    250: Result := ENUM_STRING_FAMILY_250;
    251: Result := ENUM_STRING_FAMILY_251;
    260: Result := ENUM_STRING_FAMILY_260;
    261: Result := ENUM_STRING_FAMILY_261;
    280: Result := ENUM_STRING_FAMILY_280;
    281: Result := ENUM_STRING_FAMILY_281;
    300: Result := ENUM_STRING_FAMILY_300;
    301: Result := ENUM_STRING_FAMILY_301;
    302: Result := ENUM_STRING_FAMILY_302;
    320: Result := ENUM_STRING_FAMILY_320;
    350: Result := ENUM_STRING_FAMILY_350;
    500: Result := ENUM_STRING_FAMILY_500;
  else
    Result := STR_EMPTY;
  end;
end;


// Obtener la propiedad como string
function TProcessorProperties.GetProcessorTypeAsString():string;
begin
  case FProcessorType of
    1: Result := ENUM_STRING_PROCESSORTYPE_1;
    2: Result := ENUM_STRING_PROCESSORTYPE_2;
    3: Result := ENUM_STRING_PROCESSORTYPE_3;
    4: Result := ENUM_STRING_PROCESSORTYPE_4;
    5: Result := ENUM_STRING_PROCESSORTYPE_5;
    6: Result := ENUM_STRING_PROCESSORTYPE_6;
  else
    Result := STR_EMPTY;
  end;
end;


// Obtener la propiedad como string
function TProcessorProperties.GetCPUStatusAsString():string;
begin
  case FCpuStatus of
    0: Result := ENUM_STRING_CPUSTATUS_0;
    1: Result := ENUM_STRING_CPUSTATUS_1;
    2: Result := ENUM_STRING_CPUSTATUS_2;
    3: Result := ENUM_STRING_CPUSTATUS_3;
    4: Result := ENUM_STRING_CPUSTATUS_4;
    5: Result := ENUM_STRING_CPUSTATUS_5;
    6: Result := ENUM_STRING_CPUSTATUS_6;
    7: Result := ENUM_STRING_CPUSTATUS_7;
  else
    Result := STR_EMPTY;
  end;
end;

end.

