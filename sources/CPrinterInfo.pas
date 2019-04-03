{ 
TPrinterInfo  Component Version 1.1 - Suite GLib 
Copyright (©) 2009,  by Germán Estévez (Neftalí) 
 
  Representa los dispositivos de impresión conectados a la máquina.
 
Utilización/Usage: 
  Basta con "soltar" el componente y activarlo. 
 
  Place the component in the form and active it. 
 
  MSDN Info: 
  http://msdn.microsoft.com/en-us/library/aa394363(VS.85).aspx 
 
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
unit CPrinterInfo; 
 
{ 
========================================================================= 
 
  TPrinterInfo.pas 
 
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
  TPrinterProperties = class(TPersistent)
  private
    FAttributes:Longword;
    FAvailability:Integer;
    FAvailabilityAsString:string;
    FAvailableJobSheets:TArrString;
    FAvailableJobSheetsCount:integer;
    FAvailableJobSheetsAsString:string;
    FAveragePagesPerMinute:Longword;
    FCapabilities:TArrInteger;
    FCapabilitiesCount:integer;
    FCapabilitiesAsString:string;
    FCapabilityDescriptions:TArrString;
    FCapabilityDescriptionsCount:integer;
    FCapabilityDescriptionsAsString:string;
    FCaption:string;
    FCharSetsSupported:TArrString;
    FCharSetsSupportedCount:integer;
    FCharSetsSupportedAsString:string;
    FComment:string;
    FConfigManagerErrorCode:Longword;
    FConfigManagerErrorCodeAsString:string;
    FConfigManagerUserConfig:boolean;
    FCreationClassName:string;
    FCurrentCapabilities:TArrInteger;
    FCurrentCapabilitiesCount:integer;
    FCurrentCapabilitiesAsString:string;
    FCurrentCharSet:string;
    FCurrentLanguage:Integer;
    FCurrentLanguageAsString:string;
    FCurrentMimeType:string;
    FCurrentNaturalLanguage:string;
    FCurrentPaperType:string;
    FDefault:boolean;
    FDefaultCapabilities:TArrInteger;
    FDefaultCapabilitiesCount:integer;
    FDefaultCapabilitiesAsString:string;
    FDefaultCopies:Longword;
    FDefaultLanguage:Integer;
    FDefaultLanguageAsString:string;
    FDefaultMimeType:string;
    FDefaultNumberUp:Longword;
    FDefaultPaperType:string;
    FDefaultPriority:Longword;
    FDescription:string;
    FDetectedErrorState:Integer;
    FDetectedErrorStateAsString:string;
    FDeviceID:string;
    FDirect:boolean;
    FDoCompleteFirst:boolean;
    FDriverName:string;
    FEnableBIDI:boolean;
    FEnableDevQueryPrint:boolean;
    FErrorCleared:boolean;
    FErrorDescription:string;
    FErrorInformation:TArrString;
    FErrorInformationCount:integer;
    FErrorInformationAsString:string;
    FExtendedDetectedErrorState:Integer;
    FExtendedDetectedErrorStateAsString:string;
    FExtendedPrinterStatus:Integer;
    FExtendedPrinterStatusAsString:string;
    FHidden:boolean;
    FHorizontalResolution:Longword;
    FInstallDate:TDateTime;
    FJobCountSinceLastReset:Longword;
    FKeepPrintedJobs:boolean;
    FLanguagesSupported:TArrInteger;
    FLanguagesSupportedCount:integer;
    FLanguagesSupportedAsString:string;
    FLastErrorCode:Longword;
    FLocal:boolean;
    FLocation:string;
    FMarkingTechnology:Integer;
    FMarkingTechnologyAsString:string;
    FMaxCopies:Longword;
    FMaxNumberUp:Longword;
    FMaxSizeSupported:Longword;
    FMimeTypesSupported:TArrString;
    FMimeTypesSupportedCount:integer;
    FMimeTypesSupportedAsString:string;
    FName:string;
    FNaturalLanguagesSupported:TArrString;
    FNaturalLanguagesSupportedCount:integer;
    FNaturalLanguagesSupportedAsString:string;
    FNetwork:boolean;
    FPaperSizesSupported:TArrInteger;
    FPaperSizesSupportedCount:integer;
    FPaperSizesSupportedAsString:string;
    FPaperTypesAvailable:TArrString;
    FPaperTypesAvailableCount:integer;
    FPaperTypesAvailableAsString:string;
    FParameters:string;
    FPNPDeviceID:string;
    FPortName:string;
    FPowerManagementCapabilities:TArrInteger;
    FPowerManagementCapabilitiesCount:integer;
    FPowerManagementCapabilitiesAsString:string;
    FPowerManagementSupported:boolean;
    FPrinterPaperNames:TArrString;
    FPrinterPaperNamesCount:integer;
    FPrinterPaperNamesAsString:string;
    FPrinterState:Longword;
    FPrinterStateAsString:string;
    FPrinterStatus:Integer;
    FPrinterStatusAsString:string;
    FPrintJobDataType:string;
    FPrintProcessor:string;
    FPriority:Longword;
    FPublished:boolean;
    FQueued:boolean;
    FRawOnly:boolean;
    FSeparatorFile:string;
    FServerName:string;
    FShared:boolean;
    FShareName:string;
    FSpoolEnabled:boolean;
    FStartTime:TDateTime;
    FStatus:string;
    FStatusInfo:Integer;
    FStatusInfoAsString:string;
    FSystemCreationClassName:string;
    FSystemName:string;
    FTimeOfLastReset:TDateTime;
    FUntilTime:TDateTime;
    FVerticalResolution:Longword;
    FWorkOffline:boolean;
  private
    function GetAvailableJobSheets(index: integer): string;
    function GetCapabilities(index: integer): Integer;
    function GetCapabilityDescriptions(index: integer): string;
    function GetCharSetsSupported(index: integer): string;
    function GetCurrentCapabilities(index: integer): Integer;
    function GetDefaultCapabilities(index: integer): Integer;
    function GetErrorInformation(index: integer): string;
    function GetLanguagesSupported(index: integer): Integer;
    function GetMimeTypesSupported(index: integer): string;
    function GetNaturalLanguagesSupported(index: integer): string;
    function GetPaperSizesSupported(index: integer): Integer;
    function GetPaperTypesAvailable(index: integer): string;
    function GetPowerManagementCapabilities(index: integer): Integer;
    function GetPrinterPaperNames(index: integer): string;

    // Obtener la propiedad <Availability> como string
    function GetAvailabilityAsString():string;
    // Obtener la propiedad <ConfigManagerErrorCode> como string
    function GetConfigManagerErrorCodeAsString():string;
    // Obtener la propiedad <CurrentLanguage> como string
    function GetCurrentLanguageAsString():string;
    // Obtener la propiedad <DefaultLanguage> como string
    function GetDefaultLanguageAsString():string;
    // Obtener la propiedad <DetectedErrorState> como string
    function GetDetectedErrorStateAsString():string;
    // Obtener la propiedad <ExtendedDetectedErrorState> como string
    function GetExtendedDetectedErrorStateAsString():string;
    // Obtener la propiedad <ExtendedPrinterStatus> como string
    function GetExtendedPrinterStatusAsString():string;
    // Obtener la propiedad <MarkingTechnology> como string
    function GetMarkingTechnologyAsString():string;
    // Obtener la propiedad <PrinterState> como string
    function GetPrinterStateAsString():string;
    // Obtener la propiedad <PrinterStatus> como string
    function GetPrinterStatusAsString():string;
    // Obtener la propiedad <StatusInfo> como string
    function GetStatusInfoAsString():string;


  public
    property AvailableJobSheets[index:integer]:string read GetAvailableJobSheets;
    property AvailableJobSheetsCount:integer read FAvailableJobSheetsCount stored False;
    property Capabilities[index:integer]:Integer read GetCapabilities;
    property CapabilitiesCount:integer read FCapabilitiesCount stored False;
    property CapabilityDescriptions[index:integer]:string read GetCapabilityDescriptions;
    property CapabilityDescriptionsCount:integer read FCapabilityDescriptionsCount stored False;
    property CharSetsSupported[index:integer]:string read GetCharSetsSupported;
    property CharSetsSupportedCount:integer read FCharSetsSupportedCount stored False;
    property CurrentCapabilities[index:integer]:Integer read GetCurrentCapabilities;
    property CurrentCapabilitiesCount:integer read FCurrentCapabilitiesCount stored False;
    property DefaultCapabilities[index:integer]:Integer read GetDefaultCapabilities;
    property DefaultCapabilitiesCount:integer read FDefaultCapabilitiesCount stored False;
    property ErrorInformation[index:integer]:string read GetErrorInformation;
    property ErrorInformationCount:integer read FErrorInformationCount stored False;
    property LanguagesSupported[index:integer]:Integer read GetLanguagesSupported;
    property LanguagesSupportedCount:integer read FLanguagesSupportedCount stored False;
    property MimeTypesSupported[index:integer]:string read GetMimeTypesSupported;
    property MimeTypesSupportedCount:integer read FMimeTypesSupportedCount stored False;
    property NaturalLanguagesSupported[index:integer]:string read GetNaturalLanguagesSupported;
    property NaturalLanguagesSupportedCount:integer read FNaturalLanguagesSupportedCount stored False;
    property PaperSizesSupported[index:integer]:Integer read GetPaperSizesSupported;
    property PaperSizesSupportedCount:integer read FPaperSizesSupportedCount stored False;
    property PaperTypesAvailable[index:integer]:string read GetPaperTypesAvailable;
    property PaperTypesAvailableCount:integer read FPaperTypesAvailableCount stored False;
    property PowerManagementCapabilities[index:integer]:Integer read GetPowerManagementCapabilities;
    property PowerManagementCapabilitiesCount:integer read FPowerManagementCapabilitiesCount stored False;
    property PrinterPaperNames[index:integer]:string read GetPrinterPaperNames;
    property PrinterPaperNamesCount:integer read FPrinterPaperNamesCount stored False;
  published
    property Attributes:Longword read FAttributes write FAttributes stored False;
    property Availability:Integer read FAvailability write FAvailability stored False;
    property AvailabilityAsString:string read GetAvailabilityAsString  write FAvailabilityAsString stored False;
    property AvailableJobSheetsAsString:string read FAvailableJobSheetsAsString write FAvailableJobSheetsAsString stored False;
    property AveragePagesPerMinute:Longword read FAveragePagesPerMinute write FAveragePagesPerMinute stored False;
    property CapabilitiesAsString:string read FCapabilitiesAsString write FCapabilitiesAsString stored False;
    property CapabilityDescriptionsAsString:string read FCapabilityDescriptionsAsString write FCapabilityDescriptionsAsString stored False;
    property Caption:string read FCaption write FCaption stored False;
    property CharSetsSupportedAsString:string read FCharSetsSupportedAsString write FCharSetsSupportedAsString stored False;
    property Comment:string read FComment write FComment stored False;
    property ConfigManagerErrorCode:Longword read FConfigManagerErrorCode write FConfigManagerErrorCode stored False;
    property ConfigManagerErrorCodeAsString:string read GetConfigManagerErrorCodeAsString  write FConfigManagerErrorCodeAsString stored False;
    property ConfigManagerUserConfig:boolean read FConfigManagerUserConfig write FConfigManagerUserConfig stored False;
    property CreationClassName:string read FCreationClassName write FCreationClassName stored False;
    property CurrentCapabilitiesAsString:string read FCurrentCapabilitiesAsString write FCurrentCapabilitiesAsString stored False;
    property CurrentCharSet:string read FCurrentCharSet write FCurrentCharSet stored False;
    property CurrentLanguage:Integer read FCurrentLanguage write FCurrentLanguage stored False;
    property CurrentLanguageAsString:string read GetCurrentLanguageAsString  write FCurrentLanguageAsString stored False;
    property CurrentMimeType:string read FCurrentMimeType write FCurrentMimeType stored False;
    property CurrentNaturalLanguage:string read FCurrentNaturalLanguage write FCurrentNaturalLanguage stored False;
    property CurrentPaperType:string read FCurrentPaperType write FCurrentPaperType stored False;
    property Default:boolean read FDefault write FDefault stored False;
    property DefaultCapabilitiesAsString:string read FDefaultCapabilitiesAsString write FDefaultCapabilitiesAsString stored False;
    property DefaultCopies:Longword read FDefaultCopies write FDefaultCopies stored False;
    property DefaultLanguage:Integer read FDefaultLanguage write FDefaultLanguage stored False;
    property DefaultLanguageAsString:string read GetDefaultLanguageAsString  write FDefaultLanguageAsString stored False;
    property DefaultMimeType:string read FDefaultMimeType write FDefaultMimeType stored False;
    property DefaultNumberUp:Longword read FDefaultNumberUp write FDefaultNumberUp stored False;
    property DefaultPaperType:string read FDefaultPaperType write FDefaultPaperType stored False;
    property DefaultPriority:Longword read FDefaultPriority write FDefaultPriority stored False;
    property Description:string read FDescription write FDescription stored False;
    property DetectedErrorState:Integer read FDetectedErrorState write FDetectedErrorState stored False;
    property DetectedErrorStateAsString:string read GetDetectedErrorStateAsString  write FDetectedErrorStateAsString stored False;
    property DeviceID:string read FDeviceID write FDeviceID stored False;
    property Direct:boolean read FDirect write FDirect stored False;
    property DoCompleteFirst:boolean read FDoCompleteFirst write FDoCompleteFirst stored False;
    property DriverName:string read FDriverName write FDriverName stored False;
    property EnableBIDI:boolean read FEnableBIDI write FEnableBIDI stored False;
    property EnableDevQueryPrint:boolean read FEnableDevQueryPrint write FEnableDevQueryPrint stored False;
    property ErrorCleared:boolean read FErrorCleared write FErrorCleared stored False;
    property ErrorDescription:string read FErrorDescription write FErrorDescription stored False;
    property ErrorInformationAsString:string read FErrorInformationAsString write FErrorInformationAsString stored False;
    property ExtendedDetectedErrorState:Integer read FExtendedDetectedErrorState write FExtendedDetectedErrorState stored False;
    property ExtendedDetectedErrorStateAsString:string read GetExtendedDetectedErrorStateAsString  write FExtendedDetectedErrorStateAsString stored False;
    property ExtendedPrinterStatus:Integer read FExtendedPrinterStatus write FExtendedPrinterStatus stored False;
    property ExtendedPrinterStatusAsString:string read GetExtendedPrinterStatusAsString  write FExtendedPrinterStatusAsString stored False;
    property Hidden:boolean read FHidden write FHidden stored False;
    property HorizontalResolution:Longword read FHorizontalResolution write FHorizontalResolution stored False;
    property InstallDate:TDateTime read FInstallDate write FInstallDate stored False;
    property JobCountSinceLastReset:Longword read FJobCountSinceLastReset write FJobCountSinceLastReset stored False;
    property KeepPrintedJobs:boolean read FKeepPrintedJobs write FKeepPrintedJobs stored False;
    property LanguagesSupportedAsString:string read FLanguagesSupportedAsString write FLanguagesSupportedAsString stored False;
    property LastErrorCode:Longword read FLastErrorCode write FLastErrorCode stored False;
    property Local:boolean read FLocal write FLocal stored False;
    property Location:string read FLocation write FLocation stored False;
    property MarkingTechnology:Integer read FMarkingTechnology write FMarkingTechnology stored False;
    property MarkingTechnologyAsString:string read GetMarkingTechnologyAsString  write FMarkingTechnologyAsString stored False;
    property MaxCopies:Longword read FMaxCopies write FMaxCopies stored False;
    property MaxNumberUp:Longword read FMaxNumberUp write FMaxNumberUp stored False;
    property MaxSizeSupported:Longword read FMaxSizeSupported write FMaxSizeSupported stored False;
    property MimeTypesSupportedAsString:string read FMimeTypesSupportedAsString write FMimeTypesSupportedAsString stored False;
    property Name:string read FName write FName stored False;
    property NaturalLanguagesSupportedAsString:string read FNaturalLanguagesSupportedAsString write FNaturalLanguagesSupportedAsString stored False;
    property Network:boolean read FNetwork write FNetwork stored False;
    property PaperSizesSupportedAsString:string read FPaperSizesSupportedAsString write FPaperSizesSupportedAsString stored False;
    property PaperTypesAvailableAsString:string read FPaperTypesAvailableAsString write FPaperTypesAvailableAsString stored False;
    property Parameters:string read FParameters write FParameters stored False;
    property PNPDeviceID:string read FPNPDeviceID write FPNPDeviceID stored False;
    property PortName:string read FPortName write FPortName stored False;
    property PowerManagementCapabilitiesAsString:string read FPowerManagementCapabilitiesAsString write FPowerManagementCapabilitiesAsString stored False;
    property PowerManagementSupported:boolean read FPowerManagementSupported write FPowerManagementSupported stored False;
    property PrinterPaperNamesAsString:string read FPrinterPaperNamesAsString write FPrinterPaperNamesAsString stored False;
    property PrinterState:Longword read FPrinterState write FPrinterState stored False;
    property PrinterStateAsString:string read GetPrinterStateAsString  write FPrinterStateAsString stored False;
    property PrinterStatus:Integer read FPrinterStatus write FPrinterStatus stored False;
    property PrinterStatusAsString:string read GetPrinterStatusAsString  write FPrinterStatusAsString stored False;
    property PrintJobDataType:string read FPrintJobDataType write FPrintJobDataType stored False;
    property PrintProcessor:string read FPrintProcessor write FPrintProcessor stored False;
    property Priority:Longword read FPriority write FPriority stored False;
    property Published:boolean read FPublished write FPublished stored False;
    property Queued:boolean read FQueued write FQueued stored False;
    property RawOnly:boolean read FRawOnly write FRawOnly stored False;
    property SeparatorFile:string read FSeparatorFile write FSeparatorFile stored False;
    property ServerName:string read FServerName write FServerName stored False;
    property Shared:boolean read FShared write FShared stored False;
    property ShareName:string read FShareName write FShareName stored False;
    property SpoolEnabled:boolean read FSpoolEnabled write FSpoolEnabled stored False;
    property StartTime:TDateTime read FStartTime write FStartTime stored False;
    property Status:string read FStatus write FStatus stored False;
    property StatusInfo:Integer read FStatusInfo write FStatusInfo stored False;
    property StatusInfoAsString:string read GetStatusInfoAsString  write FStatusInfoAsString stored False;
    property SystemCreationClassName:string read FSystemCreationClassName write FSystemCreationClassName stored False;
    property SystemName:string read FSystemName write FSystemName stored False;
    property TimeOfLastReset:TDateTime read FTimeOfLastReset write FTimeOfLastReset stored False;
    property UntilTime:TDateTime read FUntilTime write FUntilTime stored False;
    property VerticalResolution:Longword read FVerticalResolution write FVerticalResolution stored False;
    property WorkOffline:boolean read FWorkOffline write FWorkOffline stored False;
  end;
  
  //: Implementación para el acceso vía WMI a la clase Win32_Printer
  TPrinterInfo = class(TWMIBase)
  private
    FPrinterProperties: TPrinterProperties;
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
    // propiedades de la Printer
    property PrinterProperties:TPrinterProperties read FPrinterProperties write FPrinterProperties;
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
  ENUM_STRING_AVAILABILITY_14 = 'Power Save - Low Power Mode. The device is in a power save state but is still functioning, and may exhibit degraded performance.';
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
  ENUM_STRING_CONFIGMANAGERERRORCODE_27 = 'Device does not have a valid log configuration.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_28 = 'Device drivers are not installed.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_29 = 'Device is disabled. The device firmware did not provide the required resources.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_30 = 'Device is using an IRQ resource that another device is using.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_31 = 'Device is not working properly. Windows cannot load the required device drivers.';

// Constantes para la propiedad CurrentLanguage
const
  ENUM_STRING_CURRENTLANGUAGE_1 = 'Other';
  ENUM_STRING_CURRENTLANGUAGE_2 = 'Unknown';
  ENUM_STRING_CURRENTLANGUAGE_3 = 'PCL';
  ENUM_STRING_CURRENTLANGUAGE_4 = 'HPGL';
  ENUM_STRING_CURRENTLANGUAGE_5 = 'PJL';
  ENUM_STRING_CURRENTLANGUAGE_6 = 'PS';
  ENUM_STRING_CURRENTLANGUAGE_7 = 'PSPrinter';
  ENUM_STRING_CURRENTLANGUAGE_8 = 'IPDS';
  ENUM_STRING_CURRENTLANGUAGE_9 = 'PPDS';
  ENUM_STRING_CURRENTLANGUAGE_10 = 'EscapeP';
  ENUM_STRING_CURRENTLANGUAGE_11 = 'Epson';
  ENUM_STRING_CURRENTLANGUAGE_12 = 'DDIF';
  ENUM_STRING_CURRENTLANGUAGE_13 = 'Interpress';
  ENUM_STRING_CURRENTLANGUAGE_14 = 'ISO6429';
  ENUM_STRING_CURRENTLANGUAGE_15 = 'LineData';
  ENUM_STRING_CURRENTLANGUAGE_16 = 'DODCA';
  ENUM_STRING_CURRENTLANGUAGE_17 = 'REGIS';
  ENUM_STRING_CURRENTLANGUAGE_18 = 'SCS';
  ENUM_STRING_CURRENTLANGUAGE_19 = 'SPDL';
  ENUM_STRING_CURRENTLANGUAGE_20 = 'TEK4014';
  ENUM_STRING_CURRENTLANGUAGE_21 = 'PDS';
  ENUM_STRING_CURRENTLANGUAGE_22 = 'IGP';
  ENUM_STRING_CURRENTLANGUAGE_23 = 'CodeV';
  ENUM_STRING_CURRENTLANGUAGE_24 = 'DSCDSE';
  ENUM_STRING_CURRENTLANGUAGE_25 = 'WPS';
  ENUM_STRING_CURRENTLANGUAGE_26 = 'LN03';
  ENUM_STRING_CURRENTLANGUAGE_27 = 'CCITT. 28. QUIC';
  ENUM_STRING_CURRENTLANGUAGE_29 = 'CPAP';
  ENUM_STRING_CURRENTLANGUAGE_30 = 'DecPPL';
  ENUM_STRING_CURRENTLANGUAGE_31 = 'SimpleText';
  ENUM_STRING_CURRENTLANGUAGE_32 = 'NPAP';
  ENUM_STRING_CURRENTLANGUAGE_33 = 'DOC';
  ENUM_STRING_CURRENTLANGUAGE_34 = 'imPress';
  ENUM_STRING_CURRENTLANGUAGE_35 = 'Pinwriter';
  ENUM_STRING_CURRENTLANGUAGE_36 = 'NPDL';
  ENUM_STRING_CURRENTLANGUAGE_37 = 'NEC201PL';
  ENUM_STRING_CURRENTLANGUAGE_38 = 'Automatic';
  ENUM_STRING_CURRENTLANGUAGE_39 = 'Pages';
  ENUM_STRING_CURRENTLANGUAGE_40 = 'LIPS';
  ENUM_STRING_CURRENTLANGUAGE_41 = 'TIFF';
  ENUM_STRING_CURRENTLANGUAGE_42 = 'Diagnostic';
  ENUM_STRING_CURRENTLANGUAGE_43 = 'CaPSL';
  ENUM_STRING_CURRENTLANGUAGE_44 = 'EXCL';
  ENUM_STRING_CURRENTLANGUAGE_45 = 'LCDS';
  ENUM_STRING_CURRENTLANGUAGE_46 = 'XES';
  ENUM_STRING_CURRENTLANGUAGE_47 = 'MIME';
  ENUM_STRING_CURRENTLANGUAGE_48 = 'XPS';
  ENUM_STRING_CURRENTLANGUAGE_49 = 'HPGL2';
  ENUM_STRING_CURRENTLANGUAGE_50 = 'PCLXL';

// Constantes para la propiedad DefaultLanguage
const
  ENUM_STRING_DEFAULTLANGUAGE_1 = 'Other';
  ENUM_STRING_DEFAULTLANGUAGE_2 = 'Unknown';
  ENUM_STRING_DEFAULTLANGUAGE_3 = 'PCL';
  ENUM_STRING_DEFAULTLANGUAGE_4 = 'HPGL';
  ENUM_STRING_DEFAULTLANGUAGE_5 = 'PJL';
  ENUM_STRING_DEFAULTLANGUAGE_6 = 'PS';
  ENUM_STRING_DEFAULTLANGUAGE_7 = 'PSPrinter';
  ENUM_STRING_DEFAULTLANGUAGE_8 = 'IPDS';
  ENUM_STRING_DEFAULTLANGUAGE_9 = 'PPDS';
  ENUM_STRING_DEFAULTLANGUAGE_10 = 'EscapeP';
  ENUM_STRING_DEFAULTLANGUAGE_11 = 'Epson';
  ENUM_STRING_DEFAULTLANGUAGE_12 = 'DDIF';
  ENUM_STRING_DEFAULTLANGUAGE_13 = 'Interpress';
  ENUM_STRING_DEFAULTLANGUAGE_14 = 'ISO6429';
  ENUM_STRING_DEFAULTLANGUAGE_15 = 'LineData';
  ENUM_STRING_DEFAULTLANGUAGE_16 = 'DODCA';
  ENUM_STRING_DEFAULTLANGUAGE_17 = 'REGIS';
  ENUM_STRING_DEFAULTLANGUAGE_18 = 'SCS';
  ENUM_STRING_DEFAULTLANGUAGE_19 = 'SPDL';
  ENUM_STRING_DEFAULTLANGUAGE_20 = 'TEK4014';
  ENUM_STRING_DEFAULTLANGUAGE_21 = 'PDS';
  ENUM_STRING_DEFAULTLANGUAGE_22 = 'IGP';
  ENUM_STRING_DEFAULTLANGUAGE_23 = 'CodeV';
  ENUM_STRING_DEFAULTLANGUAGE_24 = 'DSCDSE';
  ENUM_STRING_DEFAULTLANGUAGE_25 = 'WPS';
  ENUM_STRING_DEFAULTLANGUAGE_26 = 'LN03';
  ENUM_STRING_DEFAULTLANGUAGE_27 = 'CCITT';
  ENUM_STRING_DEFAULTLANGUAGE_28 = 'QUIC';
  ENUM_STRING_DEFAULTLANGUAGE_29 = 'CPAP';
  ENUM_STRING_DEFAULTLANGUAGE_30 = 'DecPPL';
  ENUM_STRING_DEFAULTLANGUAGE_31 = 'SimpleText';
  ENUM_STRING_DEFAULTLANGUAGE_32 = 'NPAP';
  ENUM_STRING_DEFAULTLANGUAGE_33 = 'DOC';
  ENUM_STRING_DEFAULTLANGUAGE_34 = 'imPress';
  ENUM_STRING_DEFAULTLANGUAGE_35 = 'Pinwriter';
  ENUM_STRING_DEFAULTLANGUAGE_36 = 'NPDL';
  ENUM_STRING_DEFAULTLANGUAGE_37 = 'NEC201PL';
  ENUM_STRING_DEFAULTLANGUAGE_38 = 'Automatic';
  ENUM_STRING_DEFAULTLANGUAGE_39 = 'Pages';
  ENUM_STRING_DEFAULTLANGUAGE_40 = 'LIPS';
  ENUM_STRING_DEFAULTLANGUAGE_41 = 'TIFF';
  ENUM_STRING_DEFAULTLANGUAGE_42 = 'Diagnostic';
  ENUM_STRING_DEFAULTLANGUAGE_43 = 'CaPSL';
  ENUM_STRING_DEFAULTLANGUAGE_44 = 'EXCL';
  ENUM_STRING_DEFAULTLANGUAGE_45 = 'LCDS';
  ENUM_STRING_DEFAULTLANGUAGE_46 = 'XES';
  ENUM_STRING_DEFAULTLANGUAGE_47 = 'MIME';
  ENUM_STRING_DEFAULTLANGUAGE_48 = 'XPS';
  ENUM_STRING_DEFAULTLANGUAGE_49 = 'HPGL2';
  ENUM_STRING_DEFAULTLANGUAGE_50 = 'PCLXL';  

// Constantes para la propiedad DetectedErrorState
const
  ENUM_STRING_DETECTEDERRORSTATE_0 = 'Unknown';
  ENUM_STRING_DETECTEDERRORSTATE_1 = 'Other';
  ENUM_STRING_DETECTEDERRORSTATE_2 = 'No Error';
  ENUM_STRING_DETECTEDERRORSTATE_3 = 'Low Paper';
  ENUM_STRING_DETECTEDERRORSTATE_4 = 'No Paper';
  ENUM_STRING_DETECTEDERRORSTATE_5 = 'Low Toner';
  ENUM_STRING_DETECTEDERRORSTATE_6 = 'No Toner';
  ENUM_STRING_DETECTEDERRORSTATE_7 = 'Door Open';
  ENUM_STRING_DETECTEDERRORSTATE_8 = 'Jammed';
  ENUM_STRING_DETECTEDERRORSTATE_9 = 'Offline';
  ENUM_STRING_DETECTEDERRORSTATE_10 = 'Service Requested';
  ENUM_STRING_DETECTEDERRORSTATE_11 = 'Output Bin Full';

// Constantes para la propiedad ExtendedPrinterStatus
const
  ENUM_STRING_EXTENDEDPRINTERSTATUS_1 = 'Other';
  ENUM_STRING_EXTENDEDPRINTERSTATUS_2 = 'Unknown';
  ENUM_STRING_EXTENDEDPRINTERSTATUS_3 = 'Idle';
  ENUM_STRING_EXTENDEDPRINTERSTATUS_4 = 'Printing';
  ENUM_STRING_EXTENDEDPRINTERSTATUS_5 = 'Warming Up';
  ENUM_STRING_EXTENDEDPRINTERSTATUS_6 = 'Stopped Printing. 7. Offline';
  ENUM_STRING_EXTENDEDPRINTERSTATUS_8 = 'Paused';
  ENUM_STRING_EXTENDEDPRINTERSTATUS_9 = 'Error';
  ENUM_STRING_EXTENDEDPRINTERSTATUS_10 = 'Busy';
  ENUM_STRING_EXTENDEDPRINTERSTATUS_11 = 'Not Available';
  ENUM_STRING_EXTENDEDPRINTERSTATUS_12 = 'Waiting';
  ENUM_STRING_EXTENDEDPRINTERSTATUS_13 = 'Processing';
  ENUM_STRING_EXTENDEDPRINTERSTATUS_14 = 'Initialization. 15. Power Save';
  ENUM_STRING_EXTENDEDPRINTERSTATUS_16 = 'Pending Deletion';
  ENUM_STRING_EXTENDEDPRINTERSTATUS_17 = 'I/O Active';
  ENUM_STRING_EXTENDEDPRINTERSTATUS_18 = 'Manual Feed';


// Constantes para la propiedad ExtendedDetectedErrorState
const
  ENUM_STRING_EXTENDEDDETECTEDERRORSTATE_0 = 'Unknown';
  ENUM_STRING_EXTENDEDDETECTEDERRORSTATE_1 = 'Other';
  ENUM_STRING_EXTENDEDDETECTEDERRORSTATE_2 = 'No Error';
  ENUM_STRING_EXTENDEDDETECTEDERRORSTATE_3 = 'Low Paper';
  ENUM_STRING_EXTENDEDDETECTEDERRORSTATE_4 = 'No Paper';
  ENUM_STRING_EXTENDEDDETECTEDERRORSTATE_5 = 'Low Toner';
  ENUM_STRING_EXTENDEDDETECTEDERRORSTATE_6 = 'No Toner';
  ENUM_STRING_EXTENDEDDETECTEDERRORSTATE_7 = 'Door Open';
  ENUM_STRING_EXTENDEDDETECTEDERRORSTATE_8 = 'Jammed';
  ENUM_STRING_EXTENDEDDETECTEDERRORSTATE_9 = 'Service Requested';
  ENUM_STRING_EXTENDEDDETECTEDERRORSTATE_10 = 'Output Bin Full';
  ENUM_STRING_EXTENDEDDETECTEDERRORSTATE_11 = 'Paper Problem';
  ENUM_STRING_EXTENDEDDETECTEDERRORSTATE_12 = 'Cannot Print Page';
  ENUM_STRING_EXTENDEDDETECTEDERRORSTATE_13 = 'User Intervention Required';
  ENUM_STRING_EXTENDEDDETECTEDERRORSTATE_14 = 'Out of Memory';
  ENUM_STRING_EXTENDEDDETECTEDERRORSTATE_15 = 'Server Unknown';

// Constantes para la propiedad MarkingTechnology
const
  ENUM_STRING_MARKINGTECHNOLOGY_1 = 'Other';
  ENUM_STRING_MARKINGTECHNOLOGY_2 = 'Unknown';
  ENUM_STRING_MARKINGTECHNOLOGY_3 = 'Electrophotographic LED';
  ENUM_STRING_MARKINGTECHNOLOGY_4 = 'Electrophotographic Laser';
  ENUM_STRING_MARKINGTECHNOLOGY_5 = 'Electrophotographic Other';
  ENUM_STRING_MARKINGTECHNOLOGY_6 = 'Impact Moving Head Dot Matrix 9pin';
  ENUM_STRING_MARKINGTECHNOLOGY_7 = 'Impact Moving Head Dot Matrix 24pin';
  ENUM_STRING_MARKINGTECHNOLOGY_8 = 'Impact Moving Head Dot Matrix Other';
  ENUM_STRING_MARKINGTECHNOLOGY_9 = 'Impact Moving Head Fully Formed';
  ENUM_STRING_MARKINGTECHNOLOGY_10 = 'Impact Band';
  ENUM_STRING_MARKINGTECHNOLOGY_11 = 'Impact Other';
  ENUM_STRING_MARKINGTECHNOLOGY_12 = 'Inkjet Aqueous';
  ENUM_STRING_MARKINGTECHNOLOGY_13 = 'Inkjet Solid';
  ENUM_STRING_MARKINGTECHNOLOGY_14 = 'Inkjet Other';
  ENUM_STRING_MARKINGTECHNOLOGY_15 = 'Pen';
  ENUM_STRING_MARKINGTECHNOLOGY_16 = 'Thermal Transfer';
  ENUM_STRING_MARKINGTECHNOLOGY_17 = 'Thermal Sensitive';
  ENUM_STRING_MARKINGTECHNOLOGY_18 = 'Thermal Diffusion';
  ENUM_STRING_MARKINGTECHNOLOGY_19 = 'Thermal Other';
  ENUM_STRING_MARKINGTECHNOLOGY_20 = 'Electroerosion';
  ENUM_STRING_MARKINGTECHNOLOGY_21 = 'Electrostatic';
  ENUM_STRING_MARKINGTECHNOLOGY_22 = 'Photographic Microfiche';
  ENUM_STRING_MARKINGTECHNOLOGY_23 = 'Photographic Imagesetter';
  ENUM_STRING_MARKINGTECHNOLOGY_24 = 'Photographic Other';
  ENUM_STRING_MARKINGTECHNOLOGY_25 = 'Ion Deposition';
  ENUM_STRING_MARKINGTECHNOLOGY_26 = 'eBeam';
  ENUM_STRING_MARKINGTECHNOLOGY_27 = 'Typesetter';  

// Constantes para la propiedad PrinterState
const
  ENUM_STRING_PRINTERSTATE_1 = 'Paused';
  ENUM_STRING_PRINTERSTATE_2 = 'Error';
  ENUM_STRING_PRINTERSTATE_3 = 'Pending Deletion';
  ENUM_STRING_PRINTERSTATE_4 = 'Paper Jam';
  ENUM_STRING_PRINTERSTATE_5 = 'Paper Out';
  ENUM_STRING_PRINTERSTATE_6 = 'Manual Feed';
  ENUM_STRING_PRINTERSTATE_7 = 'Paper Problem';
  ENUM_STRING_PRINTERSTATE_8 = 'Offline';
  ENUM_STRING_PRINTERSTATE_9 = 'I/O Active';
  ENUM_STRING_PRINTERSTATE_10 = 'Busy';
  ENUM_STRING_PRINTERSTATE_11 = 'Printing';
  ENUM_STRING_PRINTERSTATE_12 = 'Output Bin Full';
  ENUM_STRING_PRINTERSTATE_13 = 'Not Available';
  ENUM_STRING_PRINTERSTATE_14 = 'Waiting';
  ENUM_STRING_PRINTERSTATE_15 = 'Processing';
  ENUM_STRING_PRINTERSTATE_16 = 'Initialization';
  ENUM_STRING_PRINTERSTATE_17 = 'Warming Up';
  ENUM_STRING_PRINTERSTATE_18 = 'Toner Low';
  ENUM_STRING_PRINTERSTATE_19 = 'No Toner';
  ENUM_STRING_PRINTERSTATE_20 = 'Page Punt';
  ENUM_STRING_PRINTERSTATE_21 = 'User Intervention Required';
  ENUM_STRING_PRINTERSTATE_22 = 'Out of Memory';
  ENUM_STRING_PRINTERSTATE_23 = 'Door Open';
  ENUM_STRING_PRINTERSTATE_24 = 'Server_Unknown';
  ENUM_STRING_PRINTERSTATE_25 = 'Power Save';

// Constantes para la propiedad PrinterStatus
const
  ENUM_STRING_PRINTERSTATUS_1 = 'Other';
  ENUM_STRING_PRINTERSTATUS_2 = 'Unknown';
  ENUM_STRING_PRINTERSTATUS_3 = 'Idle';
  ENUM_STRING_PRINTERSTATUS_4 = 'Printing';
  ENUM_STRING_PRINTERSTATUS_5 = 'Warming Up';
  ENUM_STRING_PRINTERSTATUS_6 = 'Stopped printing';
  ENUM_STRING_PRINTERSTATUS_7 = 'Offline';

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
 
  
{ TPrinter } 
{-------------------------------------------------------------------------------} 
// Limpiar las propiedades
procedure TPrinterInfo.ClearProps;
begin

  Self.PrinterProperties.FAttributes := 0;
  Self.PrinterProperties.FAvailability := 0;
  Self.PrinterProperties.FAvailableJobSheetsCount := 0;
  Self.PrinterProperties.FAvailableJobSheetsAsString := STR_EMPTY;
  SetLength(Self.PrinterProperties.FAvailableJobSheets,0);
  Self.PrinterProperties.FAveragePagesPerMinute := 0;
  Self.PrinterProperties.FCapabilitiesCount := 0;
  Self.PrinterProperties.FCapabilitiesAsString := STR_EMPTY;
  SetLength(Self.PrinterProperties.FCapabilities,0);
  Self.PrinterProperties.FCapabilityDescriptionsCount := 0;
  Self.PrinterProperties.FCapabilityDescriptionsAsString := STR_EMPTY;
  SetLength(Self.PrinterProperties.FCapabilityDescriptions,0);
  Self.PrinterProperties.FCaption := STR_EMPTY;
  Self.PrinterProperties.FCharSetsSupportedCount := 0;
  Self.PrinterProperties.FCharSetsSupportedAsString := STR_EMPTY;
  SetLength(Self.PrinterProperties.FCharSetsSupported,0);
  Self.PrinterProperties.FComment := STR_EMPTY;
  Self.PrinterProperties.FConfigManagerErrorCode := 0;
  Self.PrinterProperties.FConfigManagerUserConfig := False;
  Self.PrinterProperties.FCreationClassName := STR_EMPTY;
  Self.PrinterProperties.FCurrentCapabilitiesCount := 0;
  Self.PrinterProperties.FCurrentCapabilitiesAsString := STR_EMPTY;
  SetLength(Self.PrinterProperties.FCurrentCapabilities,0);
  Self.PrinterProperties.FCurrentCharSet := STR_EMPTY;
  Self.PrinterProperties.FCurrentLanguage := 0;
  Self.PrinterProperties.FCurrentMimeType := STR_EMPTY;
  Self.PrinterProperties.FCurrentNaturalLanguage := STR_EMPTY;
  Self.PrinterProperties.FCurrentPaperType := STR_EMPTY;
  Self.PrinterProperties.FDefault := False;
  Self.PrinterProperties.FDefaultCapabilitiesCount := 0;
  Self.PrinterProperties.FDefaultCapabilitiesAsString := STR_EMPTY;
  SetLength(Self.PrinterProperties.FDefaultCapabilities,0);
  Self.PrinterProperties.FDefaultCopies := 0;
  Self.PrinterProperties.FDefaultLanguage := 0;
  Self.PrinterProperties.FDefaultMimeType := STR_EMPTY;
  Self.PrinterProperties.FDefaultNumberUp := 0;
  Self.PrinterProperties.FDefaultPaperType := STR_EMPTY;
  Self.PrinterProperties.FDefaultPriority := 0;
  Self.PrinterProperties.FDescription := STR_EMPTY;
  Self.PrinterProperties.FDetectedErrorState := 0;
  Self.PrinterProperties.FDeviceID := STR_EMPTY;
  Self.PrinterProperties.FDirect := False;
  Self.PrinterProperties.FDoCompleteFirst := False;
  Self.PrinterProperties.FDriverName := STR_EMPTY;
  Self.PrinterProperties.FEnableBIDI := False;
  Self.PrinterProperties.FEnableDevQueryPrint := False;
  Self.PrinterProperties.FErrorCleared := False;
  Self.PrinterProperties.FErrorDescription := STR_EMPTY;
  Self.PrinterProperties.FErrorInformationCount := 0;
  Self.PrinterProperties.FErrorInformationAsString := STR_EMPTY;
  SetLength(Self.PrinterProperties.FErrorInformation,0);
  Self.PrinterProperties.FExtendedDetectedErrorState := 0;
  Self.PrinterProperties.FExtendedPrinterStatus := 0;
  Self.PrinterProperties.FHidden := False;
  Self.PrinterProperties.FHorizontalResolution := 0;
  Self.PrinterProperties.FInstallDate := 0;
  Self.PrinterProperties.FJobCountSinceLastReset := 0;
  Self.PrinterProperties.FKeepPrintedJobs := False;
  Self.PrinterProperties.FLanguagesSupportedCount := 0;
  Self.PrinterProperties.FLanguagesSupportedAsString := STR_EMPTY;
  SetLength(Self.PrinterProperties.FLanguagesSupported,0);
  Self.PrinterProperties.FLastErrorCode := 0;
  Self.PrinterProperties.FLocal := False;
  Self.PrinterProperties.FLocation := STR_EMPTY;
  Self.PrinterProperties.FMarkingTechnology := 0;
  Self.PrinterProperties.FMaxCopies := 0;
  Self.PrinterProperties.FMaxNumberUp := 0;
  Self.PrinterProperties.FMaxSizeSupported := 0;
  Self.PrinterProperties.FMimeTypesSupportedCount := 0;
  Self.PrinterProperties.FMimeTypesSupportedAsString := STR_EMPTY;
  SetLength(Self.PrinterProperties.FMimeTypesSupported,0);
  Self.PrinterProperties.FName := STR_EMPTY;
  Self.PrinterProperties.FNaturalLanguagesSupportedCount := 0;
  Self.PrinterProperties.FNaturalLanguagesSupportedAsString := STR_EMPTY;
  SetLength(Self.PrinterProperties.FNaturalLanguagesSupported,0);
  Self.PrinterProperties.FNetwork := False;
  Self.PrinterProperties.FPaperSizesSupportedCount := 0;
  Self.PrinterProperties.FPaperSizesSupportedAsString := STR_EMPTY;
  SetLength(Self.PrinterProperties.FPaperSizesSupported,0);
  Self.PrinterProperties.FPaperTypesAvailableCount := 0;
  Self.PrinterProperties.FPaperTypesAvailableAsString := STR_EMPTY;
  SetLength(Self.PrinterProperties.FPaperTypesAvailable,0);
  Self.PrinterProperties.FParameters := STR_EMPTY;
  Self.PrinterProperties.FPNPDeviceID := STR_EMPTY;
  Self.PrinterProperties.FPortName := STR_EMPTY;
  Self.PrinterProperties.FPowerManagementCapabilitiesCount := 0;
  Self.PrinterProperties.FPowerManagementCapabilitiesAsString := STR_EMPTY;
  SetLength(Self.PrinterProperties.FPowerManagementCapabilities,0);
  Self.PrinterProperties.FPowerManagementSupported := False;
  Self.PrinterProperties.FPrinterPaperNamesCount := 0;
  Self.PrinterProperties.FPrinterPaperNamesAsString := STR_EMPTY;
  SetLength(Self.PrinterProperties.FPrinterPaperNames,0);
  Self.PrinterProperties.FPrinterState := 0;
  Self.PrinterProperties.FPrinterStatus := 0;
  Self.PrinterProperties.FPrintJobDataType := STR_EMPTY;
  Self.PrinterProperties.FPrintProcessor := STR_EMPTY;
  Self.PrinterProperties.FPriority := 0;
  Self.PrinterProperties.FPublished := False;
  Self.PrinterProperties.FQueued := False;
  Self.PrinterProperties.FRawOnly := False;
  Self.PrinterProperties.FSeparatorFile := STR_EMPTY;
  Self.PrinterProperties.FServerName := STR_EMPTY;
  Self.PrinterProperties.FShared := False;
  Self.PrinterProperties.FShareName := STR_EMPTY;
  Self.PrinterProperties.FSpoolEnabled := False;
  Self.PrinterProperties.FStartTime := 0;
  Self.PrinterProperties.FStatus := STR_EMPTY;
  Self.PrinterProperties.FStatusInfo := 0;
  Self.PrinterProperties.FSystemCreationClassName := STR_EMPTY;
  Self.PrinterProperties.FSystemName := STR_EMPTY;
  Self.PrinterProperties.FTimeOfLastReset := 0;
  Self.PrinterProperties.FUntilTime := 0;
  Self.PrinterProperties.FVerticalResolution := 0;
  Self.PrinterProperties.FWorkOffline := False;

end;
//: Constructor del componente 
constructor TPrinterInfo.Create(AOwner: TComponent); 
begin 
  inherited; 
 
  Self.FPrinterProperties := TPrinterProperties.Create(); 
  Self.MSDNHelp := 'http://msdn.microsoft.com/en-us/library/aa394363(VS.85).aspx';
end; 
 
// destructor del componente 
destructor TPrinterInfo.Destroy(); 
begin 
 
  // liberar 
  FreeAndNil(Self.FPrinterProperties); 
 
  inherited; 
end; 
 
// Obtener la clase 
function TPrinterInfo.GetWMIClass(): string; 
begin 
  Result := 'Win32_Printer'
end; 
 
// Obtener Root 
function TPrinterInfo.GetWMIRoot(): string; 
begin 
  Result := STR_CIM2_ROOT; 
end; 
 
// Active 
procedure TPrinterInfo.SetActive(const Value: Boolean); 
begin 
  // método heredado 
  inherited; 
end; 
  

// Acceso a los elementos de la propiedad <AvailableJobSheets>
function TPrinterProperties.GetAvailableJobSheets(index: integer):string;
begin
  if (index >= Self.FAvailableJobSheetsCount) then begin
    Index := Self.FAvailableJobSheetsCount - 1;
  end;
  Result := Self.FAvailableJobSheets[index];
end;
 
// Acceso a los elementos de la propiedad <Capabilities>
function TPrinterProperties.GetCapabilities(index: integer):Integer;
begin
  if (index >= Self.FCapabilitiesCount) then begin
    Index := Self.FCapabilitiesCount - 1;
  end;
  Result := Self.FCapabilities[index];
end;
 
// Acceso a los elementos de la propiedad <CapabilityDescriptions>
function TPrinterProperties.GetCapabilityDescriptions(index: integer):string;
begin
  if (index >= Self.FCapabilityDescriptionsCount) then begin
    Index := Self.FCapabilityDescriptionsCount - 1;
  end;
  Result := Self.FCapabilityDescriptions[index];
end;
 
// Acceso a los elementos de la propiedad <CharSetsSupported>
function TPrinterProperties.GetCharSetsSupported(index: integer):string;
begin
  if (index >= Self.FCharSetsSupportedCount) then begin
    Index := Self.FCharSetsSupportedCount - 1;
  end;
  Result := Self.FCharSetsSupported[index];
end;
 
// Acceso a los elementos de la propiedad <CurrentCapabilities>
function TPrinterProperties.GetCurrentCapabilities(index: integer):Integer;
begin
  if (index >= Self.FCurrentCapabilitiesCount) then begin
    Index := Self.FCurrentCapabilitiesCount - 1;
  end;
  Result := Self.FCurrentCapabilities[index];
end;
 
// Acceso a los elementos de la propiedad <DefaultCapabilities>
function TPrinterProperties.GetDefaultCapabilities(index: integer):Integer;
begin
  if (index >= Self.FDefaultCapabilitiesCount) then begin
    Index := Self.FDefaultCapabilitiesCount - 1;
  end;
  Result := Self.FDefaultCapabilities[index];
end;
 
// Acceso a los elementos de la propiedad <ErrorInformation>
function TPrinterProperties.GetErrorInformation(index: integer):string;
begin
  if (index >= Self.FErrorInformationCount) then begin
    Index := Self.FErrorInformationCount - 1;
  end;
  Result := Self.FErrorInformation[index];
end;
 
// Acceso a los elementos de la propiedad <LanguagesSupported>
function TPrinterProperties.GetLanguagesSupported(index: integer):Integer;
begin
  if (index >= Self.FLanguagesSupportedCount) then begin
    Index := Self.FLanguagesSupportedCount - 1;
  end;
  Result := Self.FLanguagesSupported[index];
end;
 
// Acceso a los elementos de la propiedad <MimeTypesSupported>
function TPrinterProperties.GetMimeTypesSupported(index: integer):string;
begin
  if (index >= Self.FMimeTypesSupportedCount) then begin
    Index := Self.FMimeTypesSupportedCount - 1;
  end;
  Result := Self.FMimeTypesSupported[index];
end;
 
// Acceso a los elementos de la propiedad <NaturalLanguagesSupported>
function TPrinterProperties.GetNaturalLanguagesSupported(index: integer):string;
begin
  if (index >= Self.FNaturalLanguagesSupportedCount) then begin
    Index := Self.FNaturalLanguagesSupportedCount - 1;
  end;
  Result := Self.FNaturalLanguagesSupported[index];
end;
 
// Acceso a los elementos de la propiedad <PaperSizesSupported>
function TPrinterProperties.GetPaperSizesSupported(index: integer):Integer;
begin
  if (index >= Self.FPaperSizesSupportedCount) then begin
    Index := Self.FPaperSizesSupportedCount - 1;
  end;
  Result := Self.FPaperSizesSupported[index];
end;
 
// Acceso a los elementos de la propiedad <PaperTypesAvailable>
function TPrinterProperties.GetPaperTypesAvailable(index: integer):string;
begin
  if (index >= Self.FPaperTypesAvailableCount) then begin
    Index := Self.FPaperTypesAvailableCount - 1;
  end;
  Result := Self.FPaperTypesAvailable[index];
end;
 
// Acceso a los elementos de la propiedad <PowerManagementCapabilities>
function TPrinterProperties.GetPowerManagementCapabilities(index: integer):Integer;
begin
  if (index >= Self.FPowerManagementCapabilitiesCount) then begin
    Index := Self.FPowerManagementCapabilitiesCount - 1;
  end;
  Result := Self.FPowerManagementCapabilities[index];
end;
 
// Acceso a los elementos de la propiedad <PrinterPaperNames>
function TPrinterProperties.GetPrinterPaperNames(index: integer):string;
begin
  if (index >= Self.FPrinterPaperNamesCount) then begin
    Index := Self.FPrinterPaperNamesCount - 1;
  end;
  Result := Self.FPrinterPaperNames[index];
end;
 
//: Rellenar las propiedades del componente.
procedure TPrinterInfo.FillProperties(AIndex: integer);
var
  v:variant;
  vNull:boolean;
  vp:TPrinterProperties;
begin

  // Llamar al heredado (importante)
  inherited;

  // Rellenar propiedades...
  vp := Self.PrinterProperties;

  GetWMIPropertyValue(Self, 'Attributes', v, vNull);
  vp.FAttributes := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Availability', v, vNull);
  vp.FAvailability := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'AvailableJobSheets', v, vNull);
  vp.FAvailableJobSheetsAsString := VariantStrValue(v, vNull);
//  vp.FAvailableJobSheets := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'AveragePagesPerMinute', v, vNull);
  vp.FAveragePagesPerMinute := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Capabilities', v, vNull);
  vp.FCapabilitiesAsString := VariantStrValue(v, vNull);
//  vp.FCapabilities := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'CapabilityDescriptions', v, vNull);
  vp.FCapabilityDescriptionsAsString := VariantStrValue(v, vNull);
//  vp.FCapabilityDescriptions := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Caption', v, vNull);
  vp.FCaption := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'CharSetsSupported', v, vNull);
  vp.FCharSetsSupportedAsString := VariantStrValue(v, vNull);
//  vp.FCharSetsSupported := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Comment', v, vNull);
  vp.FComment := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'ConfigManagerErrorCode', v, vNull);
  vp.FConfigManagerErrorCode := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'ConfigManagerUserConfig', v, vNull);
  vp.FConfigManagerUserConfig := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'CreationClassName', v, vNull);
  vp.FCreationClassName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'CurrentCapabilities', v, vNull);
  vp.FCurrentCapabilitiesAsString := VariantStrValue(v, vNull);
//  vp.FCurrentCapabilities := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'CurrentCharSet', v, vNull);
  vp.FCurrentCharSet := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'CurrentLanguage', v, vNull);
  vp.FCurrentLanguage := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'CurrentMimeType', v, vNull);
  vp.FCurrentMimeType := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'CurrentNaturalLanguage', v, vNull);
  vp.FCurrentNaturalLanguage := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'CurrentPaperType', v, vNull);
  vp.FCurrentPaperType := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Default', v, vNull);
  vp.FDefault := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'DefaultCapabilities', v, vNull);
  vp.FDefaultCapabilitiesAsString := VariantStrValue(v, vNull);
//  vp.FDefaultCapabilities := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'DefaultCopies', v, vNull);
  vp.FDefaultCopies := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'DefaultLanguage', v, vNull);
  vp.FDefaultLanguage := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'DefaultMimeType', v, vNull);
  vp.FDefaultMimeType := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'DefaultNumberUp', v, vNull);
  vp.FDefaultNumberUp := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'DefaultPaperType', v, vNull);
  vp.FDefaultPaperType := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'DefaultPriority', v, vNull);
  vp.FDefaultPriority := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Description', v, vNull);
  vp.FDescription := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'DetectedErrorState', v, vNull);
  vp.FDetectedErrorState := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'DeviceID', v, vNull);
  vp.FDeviceID := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Direct', v, vNull);
  vp.FDirect := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'DoCompleteFirst', v, vNull);
  vp.FDoCompleteFirst := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'DriverName', v, vNull);
  vp.FDriverName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'EnableBIDI', v, vNull);
  vp.FEnableBIDI := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'EnableDevQueryPrint', v, vNull);
  vp.FEnableDevQueryPrint := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'ErrorCleared', v, vNull);
  vp.FErrorCleared := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'ErrorDescription', v, vNull);
  vp.FErrorDescription := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'ErrorInformation', v, vNull);
  vp.FErrorInformationAsString := VariantStrValue(v, vNull);
//  vp.FErrorInformation := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'ExtendedDetectedErrorState', v, vNull);
  vp.FExtendedDetectedErrorState := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'ExtendedPrinterStatus', v, vNull);
  vp.FExtendedPrinterStatus := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Hidden', v, vNull);
  vp.FHidden := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'HorizontalResolution', v, vNull);
  vp.FHorizontalResolution := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'InstallDate', v, vNull);
  if not vNull then begin
    vp.FInstallDate := EncodeDate(StrToInt(Copy(v, 1, 4)),StrToInt(Copy(v, 5, 2)),StrToInt(Copy(v, 7, 2)));
  end;

  GetWMIPropertyValue(Self, 'JobCountSinceLastReset', v, vNull);
  vp.FJobCountSinceLastReset := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'KeepPrintedJobs', v, vNull);
  vp.FKeepPrintedJobs := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'LanguagesSupported', v, vNull);
  vp.FLanguagesSupportedAsString := VariantStrValue(v, vNull);
//  vp.FLanguagesSupported := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'LastErrorCode', v, vNull);
  vp.FLastErrorCode := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Local', v, vNull);
  vp.FLocal := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'Location', v, vNull);
  vp.FLocation := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'MarkingTechnology', v, vNull);
  vp.FMarkingTechnology := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'MaxCopies', v, vNull);
  vp.FMaxCopies := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'MaxNumberUp', v, vNull);
  vp.FMaxNumberUp := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'MaxSizeSupported', v, vNull);
  vp.FMaxSizeSupported := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'MimeTypesSupported', v, vNull);
  vp.FMimeTypesSupportedAsString := VariantStrValue(v, vNull);
//  vp.FMimeTypesSupported := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Name', v, vNull);
  vp.FName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'NaturalLanguagesSupported', v, vNull);
  vp.FNaturalLanguagesSupportedAsString := VariantStrValue(v, vNull);
//  vp.FNaturalLanguagesSupported := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Network', v, vNull);
  vp.FNetwork := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'PaperSizesSupported', v, vNull);
  vp.FPaperSizesSupportedAsString := VariantStrValue(v, vNull);
//  vp.FPaperSizesSupported := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'PaperTypesAvailable', v, vNull);
  vp.FPaperTypesAvailableAsString := VariantStrValue(v, vNull);
//  vp.FPaperTypesAvailable := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Parameters', v, vNull);
  vp.FParameters := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'PNPDeviceID', v, vNull);
  vp.FPNPDeviceID := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'PortName', v, vNull);
  vp.FPortName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'PowerManagementCapabilities', v, vNull);
  vp.FPowerManagementCapabilitiesAsString := VariantStrValue(v, vNull);
//  vp.FPowerManagementCapabilities := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'PowerManagementSupported', v, vNull);
  vp.FPowerManagementSupported := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'PrinterPaperNames', v, vNull);
  vp.FPrinterPaperNamesAsString := VariantStrValue(v, vNull);
//  vp.FPrinterPaperNames := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'PrinterState', v, vNull);
  vp.FPrinterState := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'PrinterStatus', v, vNull);
  vp.FPrinterStatus := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'PrintJobDataType', v, vNull);
  vp.FPrintJobDataType := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'PrintProcessor', v, vNull);
  vp.FPrintProcessor := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Priority', v, vNull);
  vp.FPriority := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Published', v, vNull);
  vp.FPublished := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'Queued', v, vNull);
  vp.FQueued := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'RawOnly', v, vNull);
  vp.FRawOnly := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'SeparatorFile', v, vNull);
  vp.FSeparatorFile := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'ServerName', v, vNull);
  vp.FServerName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Shared', v, vNull);
  vp.FShared := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'ShareName', v, vNull);
  vp.FShareName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'SpoolEnabled', v, vNull);
  vp.FSpoolEnabled := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'StartTime', v, vNull);
  if not vNull then begin
    vp.FStartTime := EncodeDate(StrToInt(Copy(v, 1, 4)),StrToInt(Copy(v, 5, 2)),StrToInt(Copy(v, 7, 2)));
  end;

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

  GetWMIPropertyValue(Self, 'UntilTime', v, vNull);
  if not vNull then begin
    vp.FUntilTime := EncodeDate(StrToInt(Copy(v, 1, 4)),StrToInt(Copy(v, 5, 2)),StrToInt(Copy(v, 7, 2)));
  end;

  GetWMIPropertyValue(Self, 'VerticalResolution', v, vNull);
  vp.FVerticalResolution := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'WorkOffline', v, vNull);
  vp.FWorkOffline := VariantBooleanValue(v, vNull);

end;

// Obtener la propiedad como string
function TPrinterProperties.GetAvailabilityAsString():string;
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
function TPrinterProperties.GetConfigManagerErrorCodeAsString():string;
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
function TPrinterProperties.GetCurrentLanguageAsString():string;
begin
  case FCurrentLanguage of
    1: Result := ENUM_STRING_CURRENTLANGUAGE_1;
    2: Result := ENUM_STRING_CURRENTLANGUAGE_2;
    3: Result := ENUM_STRING_CURRENTLANGUAGE_3;
    4: Result := ENUM_STRING_CURRENTLANGUAGE_4;
    5: Result := ENUM_STRING_CURRENTLANGUAGE_5;
    6: Result := ENUM_STRING_CURRENTLANGUAGE_6;
    7: Result := ENUM_STRING_CURRENTLANGUAGE_7;
    8: Result := ENUM_STRING_CURRENTLANGUAGE_8;
    9: Result := ENUM_STRING_CURRENTLANGUAGE_9;
    10: Result := ENUM_STRING_CURRENTLANGUAGE_10;
    11: Result := ENUM_STRING_CURRENTLANGUAGE_11;
    12: Result := ENUM_STRING_CURRENTLANGUAGE_12;
    13: Result := ENUM_STRING_CURRENTLANGUAGE_13;
    14: Result := ENUM_STRING_CURRENTLANGUAGE_14;
    15: Result := ENUM_STRING_CURRENTLANGUAGE_15;
    16: Result := ENUM_STRING_CURRENTLANGUAGE_16;
    17: Result := ENUM_STRING_CURRENTLANGUAGE_17;
    18: Result := ENUM_STRING_CURRENTLANGUAGE_18;
    19: Result := ENUM_STRING_CURRENTLANGUAGE_19;
    20: Result := ENUM_STRING_CURRENTLANGUAGE_20;
    21: Result := ENUM_STRING_CURRENTLANGUAGE_21;
    22: Result := ENUM_STRING_CURRENTLANGUAGE_22;
    23: Result := ENUM_STRING_CURRENTLANGUAGE_23;
    24: Result := ENUM_STRING_CURRENTLANGUAGE_24;
    25: Result := ENUM_STRING_CURRENTLANGUAGE_25;
    26: Result := ENUM_STRING_CURRENTLANGUAGE_26;
    27: Result := ENUM_STRING_CURRENTLANGUAGE_27;
    29: Result := ENUM_STRING_CURRENTLANGUAGE_29;
    30: Result := ENUM_STRING_CURRENTLANGUAGE_30;
    31: Result := ENUM_STRING_CURRENTLANGUAGE_31;
    32: Result := ENUM_STRING_CURRENTLANGUAGE_32;
    33: Result := ENUM_STRING_CURRENTLANGUAGE_33;
    34: Result := ENUM_STRING_CURRENTLANGUAGE_34;
    35: Result := ENUM_STRING_CURRENTLANGUAGE_35;
    36: Result := ENUM_STRING_CURRENTLANGUAGE_36;
    37: Result := ENUM_STRING_CURRENTLANGUAGE_37;
    38: Result := ENUM_STRING_CURRENTLANGUAGE_38;
    39: Result := ENUM_STRING_CURRENTLANGUAGE_39;
    40: Result := ENUM_STRING_CURRENTLANGUAGE_40;
    41: Result := ENUM_STRING_CURRENTLANGUAGE_41;
    42: Result := ENUM_STRING_CURRENTLANGUAGE_42;
    43: Result := ENUM_STRING_CURRENTLANGUAGE_43;
    44: Result := ENUM_STRING_CURRENTLANGUAGE_44;
    45: Result := ENUM_STRING_CURRENTLANGUAGE_45;
    46: Result := ENUM_STRING_CURRENTLANGUAGE_46;
    47: Result := ENUM_STRING_CURRENTLANGUAGE_47;
    48: Result := ENUM_STRING_CURRENTLANGUAGE_48;
    49: Result := ENUM_STRING_CURRENTLANGUAGE_49;
    50: Result := ENUM_STRING_CURRENTLANGUAGE_50;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TPrinterProperties.GetDefaultLanguageAsString():string;
begin
  case FDefaultLanguage of
    1: Result := ENUM_STRING_DEFAULTLANGUAGE_1;
    2: Result := ENUM_STRING_DEFAULTLANGUAGE_2;
    3: Result := ENUM_STRING_DEFAULTLANGUAGE_3;
    4: Result := ENUM_STRING_DEFAULTLANGUAGE_4;
    5: Result := ENUM_STRING_DEFAULTLANGUAGE_5;
    6: Result := ENUM_STRING_DEFAULTLANGUAGE_6;
    7: Result := ENUM_STRING_DEFAULTLANGUAGE_7;
    8: Result := ENUM_STRING_DEFAULTLANGUAGE_8;
    9: Result := ENUM_STRING_DEFAULTLANGUAGE_9;
    10: Result := ENUM_STRING_DEFAULTLANGUAGE_10;
    11: Result := ENUM_STRING_DEFAULTLANGUAGE_11;
    12: Result := ENUM_STRING_DEFAULTLANGUAGE_12;
    13: Result := ENUM_STRING_DEFAULTLANGUAGE_13;
    14: Result := ENUM_STRING_DEFAULTLANGUAGE_14;
    15: Result := ENUM_STRING_DEFAULTLANGUAGE_15;
    16: Result := ENUM_STRING_DEFAULTLANGUAGE_16;
    17: Result := ENUM_STRING_DEFAULTLANGUAGE_17;
    18: Result := ENUM_STRING_DEFAULTLANGUAGE_18;
    19: Result := ENUM_STRING_DEFAULTLANGUAGE_19;
    20: Result := ENUM_STRING_DEFAULTLANGUAGE_20;
    21: Result := ENUM_STRING_DEFAULTLANGUAGE_21;
    22: Result := ENUM_STRING_DEFAULTLANGUAGE_22;
    23: Result := ENUM_STRING_DEFAULTLANGUAGE_23;
    24: Result := ENUM_STRING_DEFAULTLANGUAGE_24;
    25: Result := ENUM_STRING_DEFAULTLANGUAGE_25;
    26: Result := ENUM_STRING_DEFAULTLANGUAGE_26;
    27: Result := ENUM_STRING_DEFAULTLANGUAGE_27;
    28: Result := ENUM_STRING_DEFAULTLANGUAGE_28;
    29: Result := ENUM_STRING_DEFAULTLANGUAGE_29;
    30: Result := ENUM_STRING_DEFAULTLANGUAGE_30;
    31: Result := ENUM_STRING_DEFAULTLANGUAGE_31;
    32: Result := ENUM_STRING_DEFAULTLANGUAGE_32;
    33: Result := ENUM_STRING_DEFAULTLANGUAGE_33;
    34: Result := ENUM_STRING_DEFAULTLANGUAGE_34;
    35: Result := ENUM_STRING_DEFAULTLANGUAGE_35;
    36: Result := ENUM_STRING_DEFAULTLANGUAGE_36;
    37: Result := ENUM_STRING_DEFAULTLANGUAGE_37;
    38: Result := ENUM_STRING_DEFAULTLANGUAGE_38;
    39: Result := ENUM_STRING_DEFAULTLANGUAGE_39;
    40: Result := ENUM_STRING_DEFAULTLANGUAGE_40;
    41: Result := ENUM_STRING_DEFAULTLANGUAGE_41;
    42: Result := ENUM_STRING_DEFAULTLANGUAGE_42;
    43: Result := ENUM_STRING_DEFAULTLANGUAGE_43;
    44: Result := ENUM_STRING_DEFAULTLANGUAGE_44;
    45: Result := ENUM_STRING_DEFAULTLANGUAGE_45;
    46: Result := ENUM_STRING_DEFAULTLANGUAGE_46;
    47: Result := ENUM_STRING_DEFAULTLANGUAGE_47;
    48: Result := ENUM_STRING_DEFAULTLANGUAGE_48;
    49: Result := ENUM_STRING_DEFAULTLANGUAGE_49;
    50: Result := ENUM_STRING_DEFAULTLANGUAGE_50;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TPrinterProperties.GetDetectedErrorStateAsString():string;
begin
  case FDetectedErrorState of
    0: Result := ENUM_STRING_DETECTEDERRORSTATE_0;
    1: Result := ENUM_STRING_DETECTEDERRORSTATE_1;
    2: Result := ENUM_STRING_DETECTEDERRORSTATE_2;
    3: Result := ENUM_STRING_DETECTEDERRORSTATE_3;
    4: Result := ENUM_STRING_DETECTEDERRORSTATE_4;
    5: Result := ENUM_STRING_DETECTEDERRORSTATE_5;
    6: Result := ENUM_STRING_DETECTEDERRORSTATE_6;
    7: Result := ENUM_STRING_DETECTEDERRORSTATE_7;
    8: Result := ENUM_STRING_DETECTEDERRORSTATE_8;
    9: Result := ENUM_STRING_DETECTEDERRORSTATE_9;
    10: Result := ENUM_STRING_DETECTEDERRORSTATE_10;
    11: Result := ENUM_STRING_DETECTEDERRORSTATE_11;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TPrinterProperties.GetExtendedDetectedErrorStateAsString():string;
begin
  case FExtendedDetectedErrorState of
    0: Result := ENUM_STRING_EXTENDEDDETECTEDERRORSTATE_0;
    1: Result := ENUM_STRING_EXTENDEDDETECTEDERRORSTATE_1;
    2: Result := ENUM_STRING_EXTENDEDDETECTEDERRORSTATE_2;
    3: Result := ENUM_STRING_EXTENDEDDETECTEDERRORSTATE_3;
    4: Result := ENUM_STRING_EXTENDEDDETECTEDERRORSTATE_4;
    5: Result := ENUM_STRING_EXTENDEDDETECTEDERRORSTATE_5;
    6: Result := ENUM_STRING_EXTENDEDDETECTEDERRORSTATE_6;
    7: Result := ENUM_STRING_EXTENDEDDETECTEDERRORSTATE_7;
    8: Result := ENUM_STRING_EXTENDEDDETECTEDERRORSTATE_8;
    9: Result := ENUM_STRING_EXTENDEDDETECTEDERRORSTATE_9;
    10: Result := ENUM_STRING_EXTENDEDDETECTEDERRORSTATE_10;
    11: Result := ENUM_STRING_EXTENDEDDETECTEDERRORSTATE_11;
    12: Result := ENUM_STRING_EXTENDEDDETECTEDERRORSTATE_12;
    13: Result := ENUM_STRING_EXTENDEDDETECTEDERRORSTATE_13;
    14: Result := ENUM_STRING_EXTENDEDDETECTEDERRORSTATE_14;
    15: Result := ENUM_STRING_EXTENDEDDETECTEDERRORSTATE_15;
  else
    Result := STR_EMPTY;
  end;
end;


// Obtener la propiedad como string
function TPrinterProperties.GetExtendedPrinterStatusAsString():string;
begin
  case FExtendedPrinterStatus of
    1: Result := ENUM_STRING_EXTENDEDPRINTERSTATUS_1;
    2: Result := ENUM_STRING_EXTENDEDPRINTERSTATUS_2;
    3: Result := ENUM_STRING_EXTENDEDPRINTERSTATUS_3;
    4: Result := ENUM_STRING_EXTENDEDPRINTERSTATUS_4;
    5: Result := ENUM_STRING_EXTENDEDPRINTERSTATUS_5;
    6: Result := ENUM_STRING_EXTENDEDPRINTERSTATUS_6;
    8: Result := ENUM_STRING_EXTENDEDPRINTERSTATUS_8;
    9: Result := ENUM_STRING_EXTENDEDPRINTERSTATUS_9;
    10: Result := ENUM_STRING_EXTENDEDPRINTERSTATUS_10;
    11: Result := ENUM_STRING_EXTENDEDPRINTERSTATUS_11;
    12: Result := ENUM_STRING_EXTENDEDPRINTERSTATUS_12;
    13: Result := ENUM_STRING_EXTENDEDPRINTERSTATUS_13;
    14: Result := ENUM_STRING_EXTENDEDPRINTERSTATUS_14;
    16: Result := ENUM_STRING_EXTENDEDPRINTERSTATUS_16;
    17: Result := ENUM_STRING_EXTENDEDPRINTERSTATUS_17;
    18: Result := ENUM_STRING_EXTENDEDPRINTERSTATUS_18;
  else
    Result := STR_EMPTY;
  end;
end;


// Obtener la propiedad como string
function TPrinterProperties.GetMarkingTechnologyAsString():string;
begin
  case FMarkingTechnology of
    1: Result := ENUM_STRING_MARKINGTECHNOLOGY_1;
    2: Result := ENUM_STRING_MARKINGTECHNOLOGY_2;
    3: Result := ENUM_STRING_MARKINGTECHNOLOGY_3;
    4: Result := ENUM_STRING_MARKINGTECHNOLOGY_4;
    5: Result := ENUM_STRING_MARKINGTECHNOLOGY_5;
    6: Result := ENUM_STRING_MARKINGTECHNOLOGY_6;
    7: Result := ENUM_STRING_MARKINGTECHNOLOGY_7;
    8: Result := ENUM_STRING_MARKINGTECHNOLOGY_8;
    9: Result := ENUM_STRING_MARKINGTECHNOLOGY_9;
    10: Result := ENUM_STRING_MARKINGTECHNOLOGY_10;
    11: Result := ENUM_STRING_MARKINGTECHNOLOGY_11;
    12: Result := ENUM_STRING_MARKINGTECHNOLOGY_12;
    13: Result := ENUM_STRING_MARKINGTECHNOLOGY_13;
    14: Result := ENUM_STRING_MARKINGTECHNOLOGY_14;
    15: Result := ENUM_STRING_MARKINGTECHNOLOGY_15;
    16: Result := ENUM_STRING_MARKINGTECHNOLOGY_16;
    17: Result := ENUM_STRING_MARKINGTECHNOLOGY_17;
    18: Result := ENUM_STRING_MARKINGTECHNOLOGY_18;
    19: Result := ENUM_STRING_MARKINGTECHNOLOGY_19;
    20: Result := ENUM_STRING_MARKINGTECHNOLOGY_20;
    21: Result := ENUM_STRING_MARKINGTECHNOLOGY_21;
    22: Result := ENUM_STRING_MARKINGTECHNOLOGY_22;
    23: Result := ENUM_STRING_MARKINGTECHNOLOGY_23;
    24: Result := ENUM_STRING_MARKINGTECHNOLOGY_24;
    25: Result := ENUM_STRING_MARKINGTECHNOLOGY_25;
    26: Result := ENUM_STRING_MARKINGTECHNOLOGY_26;
    27: Result := ENUM_STRING_MARKINGTECHNOLOGY_27;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TPrinterProperties.GetPrinterStateAsString():string;
begin
  case FPrinterState of
    1: Result := ENUM_STRING_PRINTERSTATE_1;
    2: Result := ENUM_STRING_PRINTERSTATE_2;
    3: Result := ENUM_STRING_PRINTERSTATE_3;
    4: Result := ENUM_STRING_PRINTERSTATE_4;
    5: Result := ENUM_STRING_PRINTERSTATE_5;
    6: Result := ENUM_STRING_PRINTERSTATE_6;
    7: Result := ENUM_STRING_PRINTERSTATE_7;
    8: Result := ENUM_STRING_PRINTERSTATE_8;
    9: Result := ENUM_STRING_PRINTERSTATE_9;
    10: Result := ENUM_STRING_PRINTERSTATE_10;
    11: Result := ENUM_STRING_PRINTERSTATE_11;
    12: Result := ENUM_STRING_PRINTERSTATE_12;
    13: Result := ENUM_STRING_PRINTERSTATE_13;
    14: Result := ENUM_STRING_PRINTERSTATE_14;
    15: Result := ENUM_STRING_PRINTERSTATE_15;
    16: Result := ENUM_STRING_PRINTERSTATE_16;
    17: Result := ENUM_STRING_PRINTERSTATE_17;
    18: Result := ENUM_STRING_PRINTERSTATE_18;
    19: Result := ENUM_STRING_PRINTERSTATE_19;
    20: Result := ENUM_STRING_PRINTERSTATE_20;
    21: Result := ENUM_STRING_PRINTERSTATE_21;
    22: Result := ENUM_STRING_PRINTERSTATE_22;
    23: Result := ENUM_STRING_PRINTERSTATE_23;
    24: Result := ENUM_STRING_PRINTERSTATE_24;
    25: Result := ENUM_STRING_PRINTERSTATE_25;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TPrinterProperties.GetPrinterStatusAsString():string;
begin
  case FPrinterStatus of
    1: Result := ENUM_STRING_PRINTERSTATUS_1;
    2: Result := ENUM_STRING_PRINTERSTATUS_2;
    3: Result := ENUM_STRING_PRINTERSTATUS_3;
    4: Result := ENUM_STRING_PRINTERSTATUS_4;
    5: Result := ENUM_STRING_PRINTERSTATUS_5;
    6: Result := ENUM_STRING_PRINTERSTATUS_6;
    7: Result := ENUM_STRING_PRINTERSTATUS_7;
  else
    Result := STR_EMPTY;
  end;
end;


// Obtener la propiedad como string
function TPrinterProperties.GetStatusInfoAsString():string;
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
