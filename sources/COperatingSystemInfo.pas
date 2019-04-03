{
TOperatingSystemInfo  Component Version 1.1 - Suite GLib 
Copyright (©) 2009,  by Germán Estévez (Neftalí) 
 
  Representa el Sistema operativo basado en Windows instalado en la máquina.
 
Utilización/Usage: 
  Basta con "soltar" el componente y activarlo. 
 
  Place the component in the form and active it. 
 
  MSDN Info: 
  http://msdn.microsoft.com/en-us/library/aa394239(VS.85).aspx 
 
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
unit COperatingSystemInfo; 
 
{ 
========================================================================= 
 
  TOperatingSystemInfo.pas 
 
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
  TOperatingSystemProperties = class(TPersistent)
  private
    FBootDevice:string;
    FBuildNumber:string;
    FBuildType:string;
    FCaption:string;
    FCodeSet:string;
    FCountryCode:string;
    FCreationClassName:string;
    FCSCreationClassName:string;
    FCSDVersion:string;
    FCSName:string;
    FCurrentTimeZone:Integer;
    FDataExecutionPrevention_32BitApplication:boolean;
    FDataExecutionPrevention_Available:boolean;
    FDataExecutionPrevention_Drivers:boolean;
    FDataExecutionPrevention_SupportPolicy:byte;
    FDebug:boolean;
    FDescription:string;
    FDistributed:boolean;
    FEncryptionLevel:Longword;
    FForegroundApplicationBoost:byte;
    FFreePhysicalMemory:Int64;
    FFreeSpaceInPagingFiles:Int64;
    FFreeVirtualMemory:Int64;
    FInstallDate:TDateTime;
    FLargeSystemCache:Longword;
    FLastBootUpTime:TDateTime;
    FLocalDateTime:TDateTime;
    FLocale:string;
    FManufacturer:string;
    FMaxNumberOfProcesses:Longword;
    FMaxProcessMemorySize:Int64;
    FMUILanguages:TArrString;
    FMUILanguagesCount:integer;
    FMUILanguagesAsString:string;
    FName:string;
    FNumberOfLicensedUsers:Longword;
    FNumberOfProcesses:Longword;
    FNumberOfUsers:Longword;
    FOperatingSystemSKU:Longword;
    FOperatingSystemSKUAsString:string;
    FOrganization:string;
    FOSArchitecture:string;
    FOSLanguage:Longword;
    FOSLanguageAsString:string;
    FOSProductSuite:Longword;
    FOSType:Integer;
    FOSTypeAsString:string;
    FOtherTypeDescription:string;
    FPAEEnabled:Boolean;
    FPlusProductID:string;
    FPlusVersionNumber:string;
    FPrimary:boolean;
    FProductType:Longword;
    FProductTypeAsString:string;
    FRegisteredUser:string;
    FSerialNumber:string;
    FServicePackMajorVersion:Integer;
    FServicePackMinorVersion:Integer;
    FSizeStoredInPagingFiles:Int64;
    FStatus:string;
    FSuiteMask:Longword;
    FSuiteMaskAsString:string;
    FSystemDevice:string;
    FSystemDirectory:string;
    FSystemDrive:string;
    FTotalSwapSpaceSize:Int64;
    FTotalVirtualMemorySize:Int64;
    FTotalVisibleMemorySize:Int64;
    FVersion:string;
    FWindowsDirectory:string;
  private
    function GetMUILanguages(index: integer): string;
  public
    property MUILanguages[index:integer]:string read GetMUILanguages;
    property MUILanguagesCount:integer read FMUILanguagesCount stored False;

    // Obtener la propiedad <OperatingSystemSKU> como string
    function GetOperatingSystemSKUAsString():string;
    // Obtener la propiedad <OSLanguage> como string
    function GetOSLanguageAsString():string;
    // Obtener la propiedad <OSProductSuite> como string
    function GetOSProductSuiteAsString():string;
    // Obtener la propiedad <OSType> como string
    function GetOSTypeAsString():string;
    // Obtener la propiedad <ProductType> como string
    function GetProductTypeAsString():string;
    // Obtener la propiedad <SuiteMask> como string
    function GetSuiteMaskAsString():string;

  published
    property BootDevice:string read FBootDevice write FBootDevice stored False;
    property BuildNumber:string read FBuildNumber write FBuildNumber stored False;
    property BuildType:string read FBuildType write FBuildType stored False;
    property Caption:string read FCaption write FCaption stored False;
    property CodeSet:string read FCodeSet write FCodeSet stored False;
    property CountryCode:string read FCountryCode write FCountryCode stored False;
    property CreationClassName:string read FCreationClassName write FCreationClassName stored False;
    property CSCreationClassName:string read FCSCreationClassName write FCSCreationClassName stored False;
    property CSDVersion:string read FCSDVersion write FCSDVersion stored False;
    property CSName:string read FCSName write FCSName stored False;
    property CurrentTimeZone:Integer read FCurrentTimeZone write FCurrentTimeZone stored False;
    property DataExecutionPrevention_32BitApplication:boolean read FDataExecutionPrevention_32BitApplication write FDataExecutionPrevention_32BitApplication stored False;
    property DataExecutionPrevention_Available:boolean read FDataExecutionPrevention_Available write FDataExecutionPrevention_Available stored False;
    property DataExecutionPrevention_Drivers:boolean read FDataExecutionPrevention_Drivers write FDataExecutionPrevention_Drivers stored False;
    property DataExecutionPrevention_SupportPolicy:byte read FDataExecutionPrevention_SupportPolicy write FDataExecutionPrevention_SupportPolicy stored False;
    property Debug:boolean read FDebug write FDebug stored False;
    property Description:string read FDescription write FDescription stored False;
    property Distributed:boolean read FDistributed write FDistributed stored False;
    property EncryptionLevel:Longword read FEncryptionLevel write FEncryptionLevel stored False;
    property ForegroundApplicationBoost:byte read FForegroundApplicationBoost write FForegroundApplicationBoost stored False;
    property FreePhysicalMemory:Int64 read FFreePhysicalMemory write FFreePhysicalMemory stored False;
    property FreeSpaceInPagingFiles:Int64 read FFreeSpaceInPagingFiles write FFreeSpaceInPagingFiles stored False;
    property FreeVirtualMemory:Int64 read FFreeVirtualMemory write FFreeVirtualMemory stored False;
    property InstallDate:TDateTime read FInstallDate write FInstallDate stored False;
    property LargeSystemCache:Longword read FLargeSystemCache write FLargeSystemCache stored False;
    property LastBootUpTime:TDateTime read FLastBootUpTime write FLastBootUpTime stored False;
    property LocalDateTime:TDateTime read FLocalDateTime write FLocalDateTime stored False;
    property Locale:string read FLocale write FLocale stored False;
    property Manufacturer:string read FManufacturer write FManufacturer stored False;
    property MaxNumberOfProcesses:Longword read FMaxNumberOfProcesses write FMaxNumberOfProcesses stored False;
    property MaxProcessMemorySize:Int64 read FMaxProcessMemorySize write FMaxProcessMemorySize stored False;
    property MUILanguagesAsString:string read FMUILanguagesAsString write FMUILanguagesAsString stored False;
    property Name:string read FName write FName stored False;
    property NumberOfLicensedUsers:Longword read FNumberOfLicensedUsers write FNumberOfLicensedUsers stored False;
    property NumberOfProcesses:Longword read FNumberOfProcesses write FNumberOfProcesses stored False;
    property NumberOfUsers:Longword read FNumberOfUsers write FNumberOfUsers stored False;
    property OperatingSystemSKU:Longword read FOperatingSystemSKU write FOperatingSystemSKU stored False;
    property OperatingSystemSKUAsString:string read GetOperatingSystemSKUAsString  write FOperatingSystemSKUAsString stored False;
    property Organization:string read FOrganization write FOrganization stored False;
    property OSArchitecture:string read FOSArchitecture write FOSArchitecture stored False;
    property OSLanguage:Longword read FOSLanguage write FOSLanguage stored False;
    property OSLanguageAsString:string read GetOSLanguageAsString  write FOSLanguageAsString stored False;
    property OSProductSuite:Longword read FOSProductSuite write FOSProductSuite stored False;
    property OSType:Integer read FOSType write FOSType stored False;
    property OSTypeAsString:string read GetOSTypeAsString  write FOSTypeAsString stored False;
    property OtherTypeDescription:string read FOtherTypeDescription write FOtherTypeDescription stored False;
    property PAEEnabled:Boolean read FPAEEnabled write FPAEEnabled stored False;
    property PlusProductID:string read FPlusProductID write FPlusProductID stored False;
    property PlusVersionNumber:string read FPlusVersionNumber write FPlusVersionNumber stored False;
    property Primary:boolean read FPrimary write FPrimary stored False;
    property ProductType:Longword read FProductType write FProductType stored False;
    property ProductTypeAsString:string read GetProductTypeAsString  write FProductTypeAsString stored False;
    property RegisteredUser:string read FRegisteredUser write FRegisteredUser stored False;
    property SerialNumber:string read FSerialNumber write FSerialNumber stored False;
    property ServicePackMajorVersion:Integer read FServicePackMajorVersion write FServicePackMajorVersion stored False;
    property ServicePackMinorVersion:Integer read FServicePackMinorVersion write FServicePackMinorVersion stored False;
    property SizeStoredInPagingFiles:Int64 read FSizeStoredInPagingFiles write FSizeStoredInPagingFiles stored False;
    property Status:string read FStatus write FStatus stored False;
    property SuiteMask:Longword read FSuiteMask write FSuiteMask stored False;
    property SuiteMaskAsString:string read GetSuiteMaskAsString  write FSuiteMaskAsString stored False;
    property SystemDevice:string read FSystemDevice write FSystemDevice stored False;
    property SystemDirectory:string read FSystemDirectory write FSystemDirectory stored False;
    property SystemDrive:string read FSystemDrive write FSystemDrive stored False;
    property TotalSwapSpaceSize:Int64 read FTotalSwapSpaceSize write FTotalSwapSpaceSize stored False;
    property TotalVirtualMemorySize:Int64 read FTotalVirtualMemorySize write FTotalVirtualMemorySize stored False;
    property TotalVisibleMemorySize:Int64 read FTotalVisibleMemorySize write FTotalVisibleMemorySize stored False;
    property Version:string read FVersion write FVersion stored False;
    property WindowsDirectory:string read FWindowsDirectory write FWindowsDirectory stored False;
  end;
  
  //: Implementación para el acceso vía WMI a la clase Win32_OperatingSystem
  TOperatingSystemInfo = class(TWMIBase)
  private
    FOperatingSystemProperties: TOperatingSystemProperties;
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

    //: Método para Reiniciar el sistema.
    function Reboot(AInstanceProp:string; AInstanceValue:Variant):integer;
  published
    // propiedades de la OperatingSystem
    property OperatingSystemProperties:TOperatingSystemProperties read FOperatingSystemProperties write FOperatingSystemProperties;
  end;

// Constantes para la propiedad OperatingSystemSKU
const
  ENUM_STRING_OPERATINGSYSTEMSKU_0 = 'Undefined';
  ENUM_STRING_OPERATINGSYSTEMSKU_1 = 'Ultimate Edition';
  ENUM_STRING_OPERATINGSYSTEMSKU_2 = 'Home Basic Edition';
  ENUM_STRING_OPERATINGSYSTEMSKU_3 = 'Home Premium Edition';
  ENUM_STRING_OPERATINGSYSTEMSKU_4 = 'Enterprise Edition';
  ENUM_STRING_OPERATINGSYSTEMSKU_5 = 'Home Basic N Edition';
  ENUM_STRING_OPERATINGSYSTEMSKU_6 = 'Business Edition';
  ENUM_STRING_OPERATINGSYSTEMSKU_7 = 'Standard Server Edition';
  ENUM_STRING_OPERATINGSYSTEMSKU_8 = 'Datacenter Server Edition';
  ENUM_STRING_OPERATINGSYSTEMSKU_9 = 'Small Business Server Edition';
  ENUM_STRING_OPERATINGSYSTEMSKU_10 = 'Enterprise Server Edition';
  ENUM_STRING_OPERATINGSYSTEMSKU_11 = 'Starter Edition';
  ENUM_STRING_OPERATINGSYSTEMSKU_12 = 'Datacenter Server Core Edition';
  ENUM_STRING_OPERATINGSYSTEMSKU_13 = 'Standard Server Core Edition';
  ENUM_STRING_OPERATINGSYSTEMSKU_14 = 'Enterprise Server Core Edition';
  ENUM_STRING_OPERATINGSYSTEMSKU_15 = 'Enterprise Server Edition for Itanium-Based Systems';
  ENUM_STRING_OPERATINGSYSTEMSKU_16 = 'Business N Edition';
  ENUM_STRING_OPERATINGSYSTEMSKU_17 = 'Web Server Edition';
  ENUM_STRING_OPERATINGSYSTEMSKU_18 = 'Cluster Server Edition';
  ENUM_STRING_OPERATINGSYSTEMSKU_19 = 'Home Server Edition';
  ENUM_STRING_OPERATINGSYSTEMSKU_20 = 'Storage Express Server Edition';
  ENUM_STRING_OPERATINGSYSTEMSKU_21 = 'Storage Standard Server Edition';
  ENUM_STRING_OPERATINGSYSTEMSKU_22 = 'Storage Workgroup Server Edition';
  ENUM_STRING_OPERATINGSYSTEMSKU_23 = 'Storage Enterprise Server Edition';
  ENUM_STRING_OPERATINGSYSTEMSKU_24 = 'Server For Small Business Edition';
  ENUM_STRING_OPERATINGSYSTEMSKU_25 = 'Small Business Server Premium Edition';
// Constantes para la propiedad OSLanguage
const
  ENUM_STRING_OSLANGUAGE_1 = 'Arabic';
  ENUM_STRING_OSLANGUAGE_4 = 'Chinese (Simplified)– China';
  ENUM_STRING_OSLANGUAGE_9 = 'English';
  ENUM_STRING_OSLANGUAGE_1025 = 'Arabic – Saudi Arabia';
  ENUM_STRING_OSLANGUAGE_1026 = 'Bulgarian';
  ENUM_STRING_OSLANGUAGE_1027 = 'Catalan';
  ENUM_STRING_OSLANGUAGE_1028 = 'Chinese (Traditional) – Taiwan';
  ENUM_STRING_OSLANGUAGE_1029 = 'Czech';
  ENUM_STRING_OSLANGUAGE_1030 = 'Danish';
  ENUM_STRING_OSLANGUAGE_1031 = 'German – Germany';
  ENUM_STRING_OSLANGUAGE_1032 = 'Greek';
  ENUM_STRING_OSLANGUAGE_1033 = 'English – United States';
  ENUM_STRING_OSLANGUAGE_1034 = 'Spanish – Traditional Sort';
  ENUM_STRING_OSLANGUAGE_1035 = 'Finnish';
  ENUM_STRING_OSLANGUAGE_1036 = 'French – France';
  ENUM_STRING_OSLANGUAGE_1037 = 'Hebrew';
  ENUM_STRING_OSLANGUAGE_1038 = 'Hungarian';
  ENUM_STRING_OSLANGUAGE_1039 = 'Icelandic';
  ENUM_STRING_OSLANGUAGE_1040 = 'Italian – Italy';
  ENUM_STRING_OSLANGUAGE_1041 = 'Japanese';
  ENUM_STRING_OSLANGUAGE_1042 = 'Korean';
  ENUM_STRING_OSLANGUAGE_1043 = 'Dutch – Netherlands';
  ENUM_STRING_OSLANGUAGE_1044 = 'Norwegian – Bokmal';
  ENUM_STRING_OSLANGUAGE_1045 = 'Polish';
  ENUM_STRING_OSLANGUAGE_1046 = 'Portuguese – Brazil';
  ENUM_STRING_OSLANGUAGE_1047 = 'Rhaeto-Romanic';
  ENUM_STRING_OSLANGUAGE_1048 = 'Romanian';
  ENUM_STRING_OSLANGUAGE_1049 = 'Russian';
  ENUM_STRING_OSLANGUAGE_1050 = 'Croatian';
  ENUM_STRING_OSLANGUAGE_1051 = 'Slovak';
  ENUM_STRING_OSLANGUAGE_1052 = 'Albanian';
  ENUM_STRING_OSLANGUAGE_1053 = 'Swedish';
  ENUM_STRING_OSLANGUAGE_1054 = 'Thai';
  ENUM_STRING_OSLANGUAGE_1055 = 'Turkish';
  ENUM_STRING_OSLANGUAGE_1056 = 'Urdu';
  ENUM_STRING_OSLANGUAGE_1057 = 'Indonesian';
  ENUM_STRING_OSLANGUAGE_1058 = 'Ukrainian';
  ENUM_STRING_OSLANGUAGE_1059 = 'Belarusian';
  ENUM_STRING_OSLANGUAGE_1060 = 'Slovenian';
  ENUM_STRING_OSLANGUAGE_1061 = 'Estonian';
  ENUM_STRING_OSLANGUAGE_1062 = 'Latvian';
  ENUM_STRING_OSLANGUAGE_1063 = 'Lithuanian';
  ENUM_STRING_OSLANGUAGE_1065 = 'Persian';
  ENUM_STRING_OSLANGUAGE_1066 = 'Vietnamese';
  ENUM_STRING_OSLANGUAGE_1069 = 'Basque';
  ENUM_STRING_OSLANGUAGE_1070 = 'Serbian';
  ENUM_STRING_OSLANGUAGE_1071 = 'Macedonian (F.Y.R.O. Macedonia)';
  ENUM_STRING_OSLANGUAGE_1072 = 'Sutu';
  ENUM_STRING_OSLANGUAGE_1073 = 'Tsonga';
  ENUM_STRING_OSLANGUAGE_1074 = 'Tswana';
  ENUM_STRING_OSLANGUAGE_1076 = 'Xhosa';
  ENUM_STRING_OSLANGUAGE_1077 = 'Zulu';
  ENUM_STRING_OSLANGUAGE_1078 = 'Afrikaans';
  ENUM_STRING_OSLANGUAGE_1080 = 'Faeroese';
  ENUM_STRING_OSLANGUAGE_1081 = 'Hindi';
  ENUM_STRING_OSLANGUAGE_1082 = 'Maltese';
  ENUM_STRING_OSLANGUAGE_1084 = 'Scottish Gaelic';
  ENUM_STRING_OSLANGUAGE_1085 = 'Yiddish';
  ENUM_STRING_OSLANGUAGE_1086 = 'Malay – Malaysia';
  ENUM_STRING_OSLANGUAGE_2049 = 'Arabic – Iraq';
  ENUM_STRING_OSLANGUAGE_2052 = 'Chinese (Simplified) – PRC';
  ENUM_STRING_OSLANGUAGE_2055 = 'German – Switzerland';
  ENUM_STRING_OSLANGUAGE_2057 = 'English – United Kingdom';
  ENUM_STRING_OSLANGUAGE_2058 = 'Spanish – Mexico';
  ENUM_STRING_OSLANGUAGE_2060 = 'French – Belgium';
  ENUM_STRING_OSLANGUAGE_2064 = 'Italian – Switzerland';
  ENUM_STRING_OSLANGUAGE_2067 = 'Dutch – Belgium';
  ENUM_STRING_OSLANGUAGE_2068 = 'Norwegian – Nynorsk';
  ENUM_STRING_OSLANGUAGE_2070 = 'Portuguese – Portugal';
  ENUM_STRING_OSLANGUAGE_2072 = 'Romanian – Moldova';
  ENUM_STRING_OSLANGUAGE_2073 = 'Russian – Moldova';
  ENUM_STRING_OSLANGUAGE_2074 = 'Serbian – Latin';
  ENUM_STRING_OSLANGUAGE_2077 = 'Swedish – Finland';
  ENUM_STRING_OSLANGUAGE_3073 = 'Arabic – Egypt';
  ENUM_STRING_OSLANGUAGE_3076 = 'Chinese (Traditional) – Hong Kong SAR';
  ENUM_STRING_OSLANGUAGE_3079 = 'German – Austria';
  ENUM_STRING_OSLANGUAGE_3081 = 'English – Australia';
  ENUM_STRING_OSLANGUAGE_3082 = 'Spanish – International Sort';
  ENUM_STRING_OSLANGUAGE_3084 = 'French – Canada';
  ENUM_STRING_OSLANGUAGE_3098 = 'Serbian – Cyrillic';
  ENUM_STRING_OSLANGUAGE_4097 = 'Arabic – Libya';
  ENUM_STRING_OSLANGUAGE_4100 = 'Chinese (Simplified) – Singapore';
  ENUM_STRING_OSLANGUAGE_4103 = 'German – Luxembourg';
  ENUM_STRING_OSLANGUAGE_4105 = 'English – Canada';
  ENUM_STRING_OSLANGUAGE_4106 = 'Spanish – Guatemala';
  ENUM_STRING_OSLANGUAGE_4108 = 'French – Switzerland';
  ENUM_STRING_OSLANGUAGE_5121 = 'Arabic – Algeria';
  ENUM_STRING_OSLANGUAGE_5127 = 'German – Liechtenstein';
  ENUM_STRING_OSLANGUAGE_5129 = 'English – New Zealand';
  ENUM_STRING_OSLANGUAGE_5130 = 'Spanish – Costa Rica';
  ENUM_STRING_OSLANGUAGE_5132 = 'French – Luxembourg';
  ENUM_STRING_OSLANGUAGE_6145 = 'Arabic – Morocco';
  ENUM_STRING_OSLANGUAGE_6153 = 'English – Ireland';
  ENUM_STRING_OSLANGUAGE_6154 = 'Spanish – Panama';
  ENUM_STRING_OSLANGUAGE_7169 = 'Arabic – Tunisia';
  ENUM_STRING_OSLANGUAGE_7177 = 'English – South Africa';
  ENUM_STRING_OSLANGUAGE_7178 = 'Spanish – Dominican Republic';
  ENUM_STRING_OSLANGUAGE_8193 = 'Arabic – Oman';
  ENUM_STRING_OSLANGUAGE_8201 = 'English – Jamaica';
  ENUM_STRING_OSLANGUAGE_8202 = 'Spanish – Venezuela';
  ENUM_STRING_OSLANGUAGE_9217 = 'Arabic – Yemen';
  ENUM_STRING_OSLANGUAGE_9226 = 'Spanish – Colombia';
  ENUM_STRING_OSLANGUAGE_10241 = 'Arabic – Syria';
  ENUM_STRING_OSLANGUAGE_10249 = 'English – Belize';
  ENUM_STRING_OSLANGUAGE_10250 = 'Spanish – Peru';
  ENUM_STRING_OSLANGUAGE_11265 = 'Arabic – Jordan';
  ENUM_STRING_OSLANGUAGE_11273 = 'English – Trinidad';
  ENUM_STRING_OSLANGUAGE_11274 = 'Spanish – Argentina';
  ENUM_STRING_OSLANGUAGE_12289 = 'Arabic – Lebanon';
  ENUM_STRING_OSLANGUAGE_12298 = 'Spanish – Ecuador';
  ENUM_STRING_OSLANGUAGE_13313 = 'Arabic – Kuwait';
  ENUM_STRING_OSLANGUAGE_13322 = 'Spanish – Chile';
  ENUM_STRING_OSLANGUAGE_14337 = 'Arabic – U.A.E.';
  ENUM_STRING_OSLANGUAGE_14346 = 'Spanish – Uruguay';
  ENUM_STRING_OSLANGUAGE_15361 = 'Arabic – Bahrain';
  ENUM_STRING_OSLANGUAGE_15370 = 'Spanish – Paraguay';
  ENUM_STRING_OSLANGUAGE_16385 = 'Arabic – Qatar';
  ENUM_STRING_OSLANGUAGE_16394 = 'Spanish – Bolivia';
  ENUM_STRING_OSLANGUAGE_17418 = 'Spanish – El Salvador';
  ENUM_STRING_OSLANGUAGE_18442 = 'Spanish – Honduras';
  ENUM_STRING_OSLANGUAGE_19466 = 'Spanish – Nicaragua';
  ENUM_STRING_OSLANGUAGE_20490 = 'Spanish – Puerto Rico';


// Constantes para la propiedad OSProductSuite
const
  ENUM_STRING_OSPRODUCTSUITE_1 = 'Microsoft Small Business Server was once installed, but may have been upgraded to another version of Windows.. Windows Server 2003, Windows XP, and Windows 2000:  Small Business';
  ENUM_STRING_OSPRODUCTSUITE_2 = 'Windows Server 2008 Enterprise, Windows Server 2003, Enterprise Edition, Windows 2000 Advanced Server, or Windows NT Server 4.0 Enterprise Edition is installed.. Windows Server 2003, Windows XP, and Windows 2000:  Enterprise';
  ENUM_STRING_OSPRODUCTSUITE_4 = 'Windows BackOffice components are installed.. Windows Server 2003, Windows XP, and Windows 2000:  BackOffice';
  ENUM_STRING_OSPRODUCTSUITE_8 = 'Communication Server is installed.. Windows Server 2003, Windows XP, and Windows 2000:  Communication Server';
  ENUM_STRING_OSPRODUCTSUITE_16 = 'Terminal Services is installed.. Windows Server 2003, Windows XP, and Windows 2000:  Terminal Services';
  ENUM_STRING_OSPRODUCTSUITE_32 = 'Microsoft Small Business Server is installed with the restrictive client license.. Windows Server 2003, Windows XP, and Windows 2000:  Small Business (Restricted)';
  ENUM_STRING_OSPRODUCTSUITE_64 = 'Windows XP Embedded is installed.. Windows Server 2003 and Windows XP:  Embedded NT';
  ENUM_STRING_OSPRODUCTSUITE_128 = 'Windows Server 2008 Datacenter, Windows Server 2003, Datacenter Edition, or Windows 2000 Datacenter Server is installed.. Windows Server 2003, Windows XP, and Windows 2000:  Data Center';
  ENUM_STRING_OSPRODUCTSUITE_256 = 'Terminal Services is installed, but only one interactive session is supported.. Windows Server 2003, Windows XP, and Windows 2000:  This value is not available.';
  ENUM_STRING_OSPRODUCTSUITE_512 = 'Windows XP Home Edition is installed.. Windows Server 2003, Windows XP, and Windows 2000:  This value is not available.';
  ENUM_STRING_OSPRODUCTSUITE_1024 = 'Windows Server 2003, Web Edition is installed.. Windows Server 2003, Windows XP, and Windows 2000:  This value is not available.';
  ENUM_STRING_OSPRODUCTSUITE_8192 = 'Windows Storage Server 2003 R2 is installed.. Windows Server 2003, Windows XP, and Windows 2000:  This value is not available.';
  ENUM_STRING_OSPRODUCTSUITE_16384 = 'Windows Server 2003, Compute Cluster Edition is installed.. Windows Server 2003, Windows XP, and Windows 2000:  This value is not available.';


// Constantes para la propiedad OSType
const
  ENUM_STRING_OSTYPE_0 = 'Unknown';
  ENUM_STRING_OSTYPE_1 = 'Other';
  ENUM_STRING_OSTYPE_2 = 'MACROS';
  ENUM_STRING_OSTYPE_3 = 'ATTUNIX';
  ENUM_STRING_OSTYPE_4 = 'DGUX';
  ENUM_STRING_OSTYPE_5 = 'DECNT';
  ENUM_STRING_OSTYPE_6 = 'Digital UNIX';
  ENUM_STRING_OSTYPE_7 = 'OpenVMS';
  ENUM_STRING_OSTYPE_8 = 'HPUX';
  ENUM_STRING_OSTYPE_9 = 'AIX';
  ENUM_STRING_OSTYPE_10 = 'MVS';
  ENUM_STRING_OSTYPE_11 = 'OS400';
  ENUM_STRING_OSTYPE_12 = 'OS/2';
  ENUM_STRING_OSTYPE_13 = 'JavaVM';
  ENUM_STRING_OSTYPE_14 = 'MSDOS';
  ENUM_STRING_OSTYPE_15 = 'WIN3x';
  ENUM_STRING_OSTYPE_16 = 'WIN95';
  ENUM_STRING_OSTYPE_17 = 'WIN98';
  ENUM_STRING_OSTYPE_18 = 'WINNT';
  ENUM_STRING_OSTYPE_19 = 'WINCE';
  ENUM_STRING_OSTYPE_20 = 'NCR3000';
  ENUM_STRING_OSTYPE_21 = 'NetWare';
  ENUM_STRING_OSTYPE_22 = 'OSF';
  ENUM_STRING_OSTYPE_23 = 'DC/OS';
  ENUM_STRING_OSTYPE_24 = 'Reliant UNIX';
  ENUM_STRING_OSTYPE_25 = 'SCO UnixWare';
  ENUM_STRING_OSTYPE_26 = 'SCO OpenServer';
  ENUM_STRING_OSTYPE_27 = 'Sequent';
  ENUM_STRING_OSTYPE_28 = 'IRIX';
  ENUM_STRING_OSTYPE_29 = 'Solaris';
  ENUM_STRING_OSTYPE_30 = 'SunOS';
  ENUM_STRING_OSTYPE_31 = 'U6000';
  ENUM_STRING_OSTYPE_32 = 'ASERIES';
  ENUM_STRING_OSTYPE_33 = 'TandemNSK';
  ENUM_STRING_OSTYPE_34 = 'TandemNT';
  ENUM_STRING_OSTYPE_35 = 'BS2000';
  ENUM_STRING_OSTYPE_36 = 'LINUX';
  ENUM_STRING_OSTYPE_37 = 'Lynx';
  ENUM_STRING_OSTYPE_38 = 'XENIX';
  ENUM_STRING_OSTYPE_39 = 'VM/ESA';
  ENUM_STRING_OSTYPE_40 = 'Interactive UNIX';
  ENUM_STRING_OSTYPE_41 = 'BSDUNIX';
  ENUM_STRING_OSTYPE_42 = 'FreeBSD';
  ENUM_STRING_OSTYPE_43 = 'NetBSD';
  ENUM_STRING_OSTYPE_44 = 'GNU Hurd';
  ENUM_STRING_OSTYPE_45 = 'OS9';
  ENUM_STRING_OSTYPE_46 = 'MACH Kernel';
  ENUM_STRING_OSTYPE_47 = 'Inferno';
  ENUM_STRING_OSTYPE_48 = 'QNX';
  ENUM_STRING_OSTYPE_49 = 'EPOC';
  ENUM_STRING_OSTYPE_50 = 'IxWorks';
  ENUM_STRING_OSTYPE_51 = 'VxWorks';
  ENUM_STRING_OSTYPE_52 = 'MiNT';
  ENUM_STRING_OSTYPE_53 = 'BeOS';
  ENUM_STRING_OSTYPE_54 = 'HP MPE';
  ENUM_STRING_OSTYPE_55 = 'NextStep';
  ENUM_STRING_OSTYPE_56 = 'PalmPilot';
  ENUM_STRING_OSTYPE_57 = 'Rhapsody';

// Constantes para la propiedad ProductType
const
  ENUM_STRING_PRODUCTTYPE_1 = 'Work Station';
  ENUM_STRING_PRODUCTTYPE_2 = 'Domain Controller';
  ENUM_STRING_PRODUCTTYPE_3 = 'Server';

// Constantes para la propiedad SuiteMask
const
  ENUM_STRING_SUITEMASK_1 = 'Small Business';
  ENUM_STRING_SUITEMASK_2 = 'Enterprise';
  ENUM_STRING_SUITEMASK_4 = 'BackOffice';
  ENUM_STRING_SUITEMASK_8 = 'Communications';
  ENUM_STRING_SUITEMASK_16 = 'Terminal';
  ENUM_STRING_SUITEMASK_32 = 'Small Business Restricted';
  ENUM_STRING_SUITEMASK_64 = 'Embedded NT';
  ENUM_STRING_SUITEMASK_128 = 'Data Center';
  ENUM_STRING_SUITEMASK_256 = 'Single User';
  ENUM_STRING_SUITEMASK_512 = 'Personal';
  ENUM_STRING_SUITEMASK_1024 = 'Blade';
    
//========================================================================= 
// 
// I M P L E M E N T A T I O N 
// 
//========================================================================= 
implementation 
  
uses 
  {Generales} Forms, Types, Windows, SysUtils, 
  {GLib} UProcedures, UConstantes, Dialogs; 
 
  
{ TOperatingSystem } 
{-------------------------------------------------------------------------------} 
// Limpiar las propiedades
procedure TOperatingSystemInfo.ClearProps;
begin

  Self.OperatingSystemProperties.FBootDevice := STR_EMPTY;
  Self.OperatingSystemProperties.FBuildNumber := STR_EMPTY;
  Self.OperatingSystemProperties.FBuildType := STR_EMPTY;
  Self.OperatingSystemProperties.FCaption := STR_EMPTY;
  Self.OperatingSystemProperties.FCodeSet := STR_EMPTY;
  Self.OperatingSystemProperties.FCountryCode := STR_EMPTY;
  Self.OperatingSystemProperties.FCreationClassName := STR_EMPTY;
  Self.OperatingSystemProperties.FCSCreationClassName := STR_EMPTY;
  Self.OperatingSystemProperties.FCSDVersion := STR_EMPTY;
  Self.OperatingSystemProperties.FCSName := STR_EMPTY;
  Self.OperatingSystemProperties.FCurrentTimeZone := 0;
  Self.OperatingSystemProperties.FDataExecutionPrevention_32BitApplication := False;
  Self.OperatingSystemProperties.FDataExecutionPrevention_Available := False;
  Self.OperatingSystemProperties.FDataExecutionPrevention_Drivers := False;
  Self.OperatingSystemProperties.FDataExecutionPrevention_SupportPolicy := 0;
  Self.OperatingSystemProperties.FDebug := False;
  Self.OperatingSystemProperties.FDescription := STR_EMPTY;
  Self.OperatingSystemProperties.FDistributed := False;
  Self.OperatingSystemProperties.FEncryptionLevel := 0;
  Self.OperatingSystemProperties.FForegroundApplicationBoost := 0;
  Self.OperatingSystemProperties.FFreePhysicalMemory := 0;
  Self.OperatingSystemProperties.FFreeSpaceInPagingFiles := 0;
  Self.OperatingSystemProperties.FFreeVirtualMemory := 0;
  Self.OperatingSystemProperties.FInstallDate := 0;
  Self.OperatingSystemProperties.FLargeSystemCache := 0;
  Self.OperatingSystemProperties.FLastBootUpTime := 0;
  Self.OperatingSystemProperties.FLocalDateTime := 0;
  Self.OperatingSystemProperties.FLocale := STR_EMPTY;
  Self.OperatingSystemProperties.FManufacturer := STR_EMPTY;
  Self.OperatingSystemProperties.FMaxNumberOfProcesses := 0;
  Self.OperatingSystemProperties.FMaxProcessMemorySize := 0;
  Self.OperatingSystemProperties.FMUILanguagesCount := 0;
  Self.OperatingSystemProperties.FMUILanguagesAsString := STR_EMPTY;
  SetLength(Self.OperatingSystemProperties.FMUILanguages,0);
  Self.OperatingSystemProperties.FName := STR_EMPTY;
  Self.OperatingSystemProperties.FNumberOfLicensedUsers := 0;
  Self.OperatingSystemProperties.FNumberOfProcesses := 0;
  Self.OperatingSystemProperties.FNumberOfUsers := 0;
  Self.OperatingSystemProperties.FOperatingSystemSKU := 0;
  Self.OperatingSystemProperties.FOrganization := STR_EMPTY;
  Self.OperatingSystemProperties.FOSArchitecture := STR_EMPTY;
  Self.OperatingSystemProperties.FOSLanguage := 0;
  Self.OperatingSystemProperties.FOSProductSuite := 0;
  Self.OperatingSystemProperties.FOSType := 0;
  Self.OperatingSystemProperties.FOtherTypeDescription := STR_EMPTY;
  Self.OperatingSystemProperties.FPAEEnabled := False;
  Self.OperatingSystemProperties.FPlusProductID := STR_EMPTY;
  Self.OperatingSystemProperties.FPlusVersionNumber := STR_EMPTY;
  Self.OperatingSystemProperties.FPrimary := False;
  Self.OperatingSystemProperties.FProductType := 0;
  Self.OperatingSystemProperties.FRegisteredUser := STR_EMPTY;
  Self.OperatingSystemProperties.FSerialNumber := STR_EMPTY;
  Self.OperatingSystemProperties.FServicePackMajorVersion := 0;
  Self.OperatingSystemProperties.FServicePackMinorVersion := 0;
  Self.OperatingSystemProperties.FSizeStoredInPagingFiles := 0;
  Self.OperatingSystemProperties.FStatus := STR_EMPTY;
  Self.OperatingSystemProperties.FSuiteMask := 0;
  Self.OperatingSystemProperties.FSystemDevice := STR_EMPTY;
  Self.OperatingSystemProperties.FSystemDirectory := STR_EMPTY;
  Self.OperatingSystemProperties.FSystemDrive := STR_EMPTY;
  Self.OperatingSystemProperties.FTotalSwapSpaceSize := 0;
  Self.OperatingSystemProperties.FTotalVirtualMemorySize := 0;
  Self.OperatingSystemProperties.FTotalVisibleMemorySize := 0;
  Self.OperatingSystemProperties.FVersion := STR_EMPTY;
  Self.OperatingSystemProperties.FWindowsDirectory := STR_EMPTY;

end;
//: Constructor del componente 
constructor TOperatingSystemInfo.Create(AOwner: TComponent); 
begin 
  inherited; 
 
  Self.FOperatingSystemProperties := TOperatingSystemProperties.Create(); 
  Self.MSDNHelp := 'http://msdn.microsoft.com/en-us/library/aa394239(VS.85).aspx';
end; 
 
// destructor del componente 
destructor TOperatingSystemInfo.Destroy(); 
begin 
 
  // liberar 
  FreeAndNil(Self.FOperatingSystemProperties); 
 
  inherited; 
end; 
 
// Obtener la clase 
function TOperatingSystemInfo.GetWMIClass(): string; 
begin 
  Result := 'Win32_OperatingSystem'
end; 
 
// Obtener Root 
function TOperatingSystemInfo.GetWMIRoot(): string; 
begin 
  Result := STR_CIM2_ROOT; 
end; 
 
// Active 
procedure TOperatingSystemInfo.SetActive(const Value: Boolean); 
begin 
  // método heredado 
  inherited; 
end; 
  

// Acceso a los elementos de la propiedad <MUILanguages>
function TOperatingSystemProperties.GetMUILanguages(index: integer):string;
begin
  if (index >= Self.FMUILanguagesCount) then begin
    Index := Self.FMUILanguagesCount - 1;
  end;
  Result := Self.FMUILanguages[index];
end;
 
//: Rellenar las propiedades del componente.
procedure TOperatingSystemInfo.FillProperties(AIndex: integer);
var
  v:variant;
  vNull:boolean;
  vp:TOperatingSystemProperties;
begin

  // Llamar al heredado (importante)
  inherited;

  // Rellenar propiedades...
  vp := Self.OperatingSystemProperties;

  GetWMIPropertyValue(Self, 'BootDevice', v, vNull);
  vp.FBootDevice := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'BuildNumber', v, vNull);
  vp.FBuildNumber := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'BuildType', v, vNull);
  vp.FBuildType := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Caption', v, vNull);
  vp.FCaption := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'CodeSet', v, vNull);
  vp.FCodeSet := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'CountryCode', v, vNull);
  vp.FCountryCode := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'CreationClassName', v, vNull);
  vp.FCreationClassName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'CSCreationClassName', v, vNull);
  vp.FCSCreationClassName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'CSDVersion', v, vNull);
  vp.FCSDVersion := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'CSName', v, vNull);
  vp.FCSName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'CurrentTimeZone', v, vNull);
  vp.FCurrentTimeZone := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'DataExecutionPrevention_32BitApplication', v, vNull);
  vp.FDataExecutionPrevention_32BitApplication := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'DataExecutionPrevention_Available', v, vNull);
  vp.FDataExecutionPrevention_Available := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'DataExecutionPrevention_Drivers', v, vNull);
  vp.FDataExecutionPrevention_Drivers := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'DataExecutionPrevention_SupportPolicy', v, vNull);
   vp.FDataExecutionPrevention_SupportPolicy := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Debug', v, vNull);
  vp.FDebug := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'Description', v, vNull);
  vp.FDescription := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Distributed', v, vNull);
  vp.FDistributed := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'EncryptionLevel', v, vNull);
  vp.FEncryptionLevel := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'ForegroundApplicationBoost', v, vNull);
  vp.FForegroundApplicationBoost := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'FreePhysicalMemory', v, vNull);
  vp.FFreePhysicalMemory := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'FreeSpaceInPagingFiles', v, vNull);
  vp.FFreeSpaceInPagingFiles := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'FreeVirtualMemory', v, vNull);
  vp.FFreeVirtualMemory := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'InstallDate', v, vNull);
  if not vNull then begin
    vp.FInstallDate := EncodeDate(StrToInt(Copy(v, 1, 4)),StrToInt(Copy(v, 5, 2)),StrToInt(Copy(v, 7, 2)));
  end;

  GetWMIPropertyValue(Self, 'LargeSystemCache', v, vNull);
  vp.FLargeSystemCache := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'LastBootUpTime', v, vNull);
  if not vNull then begin
    vp.FLastBootUpTime := EncodeDate(StrToInt(Copy(v, 1, 4)),StrToInt(Copy(v, 5, 2)),StrToInt(Copy(v, 7, 2)));
  end;

  GetWMIPropertyValue(Self, 'LocalDateTime', v, vNull);
  if not vNull then begin
    vp.FLocalDateTime := EncodeDate(StrToInt(Copy(v, 1, 4)),StrToInt(Copy(v, 5, 2)),StrToInt(Copy(v, 7, 2)));
  end;

  GetWMIPropertyValue(Self, 'Locale', v, vNull);
  vp.FLocale := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Manufacturer', v, vNull);
  vp.FManufacturer := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'MaxNumberOfProcesses', v, vNull);
  vp.FMaxNumberOfProcesses := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'MaxProcessMemorySize', v, vNull);
  vp.FMaxProcessMemorySize := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'MUILanguages', v, vNull);
  vp.FMUILanguagesAsString := VariantStrValue(v, vNull);
//  vp.FMUILanguages := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Name', v, vNull);
  vp.FName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'NumberOfLicensedUsers', v, vNull);
  vp.FNumberOfLicensedUsers := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'NumberOfProcesses', v, vNull);
  vp.FNumberOfProcesses := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'NumberOfUsers', v, vNull);
  vp.FNumberOfUsers := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'OperatingSystemSKU', v, vNull);
  vp.FOperatingSystemSKU := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Organization', v, vNull);
  vp.FOrganization := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'OSArchitecture', v, vNull);
  vp.FOSArchitecture := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'OSLanguage', v, vNull);
  vp.FOSLanguage := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'OSProductSuite', v, vNull);
  vp.FOSProductSuite := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'OSType', v, vNull);
  vp.FOSType := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'OtherTypeDescription', v, vNull);
  vp.FOtherTypeDescription := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'PAEEnabled', v, vNull);
  vp.FPAEEnabled := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'PlusProductID', v, vNull);
  vp.FPlusProductID := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'PlusVersionNumber', v, vNull);
  vp.FPlusVersionNumber := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Primary', v, vNull);
  vp.FPrimary := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'ProductType', v, vNull);
  vp.FProductType := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'RegisteredUser', v, vNull);
  vp.FRegisteredUser := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'SerialNumber', v, vNull);
  vp.FSerialNumber := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'ServicePackMajorVersion', v, vNull);
  vp.FServicePackMajorVersion := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'ServicePackMinorVersion', v, vNull);
  vp.FServicePackMinorVersion := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'SizeStoredInPagingFiles', v, vNull);
  vp.FSizeStoredInPagingFiles := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Status', v, vNull);
  vp.FStatus := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'SuiteMask', v, vNull);
  vp.FSuiteMask := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'SystemDevice', v, vNull);
  vp.FSystemDevice := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'SystemDirectory', v, vNull);
  vp.FSystemDirectory := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'SystemDrive', v, vNull);
  vp.FSystemDrive := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'TotalSwapSpaceSize', v, vNull);
  vp.FTotalSwapSpaceSize := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'TotalVirtualMemorySize', v, vNull);
  vp.FTotalVirtualMemorySize := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'TotalVisibleMemorySize', v, vNull);
  vp.FTotalVisibleMemorySize := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Version', v, vNull);
  vp.FVersion := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'WindowsDirectory', v, vNull);
  vp.FWindowsDirectory := VariantStrValue(v, vNull);

end;

//: Método para Reiniciar el sistema.
function TOperatingSystemInfo.Reboot(AInstanceProp: string;  AInstanceValue: Variant): integer;
var
  arr:TArrVariant;
  v:variant;
begin

  SetLength(arr, 0);
  // Ejecutar el proceso
  ExecuteClassMethod(Self,
                     AInstanceProp, AInstanceValue,
                     'Reboot',
                     [],
                     arr,
                     [],
                     [], v);
  Result := v;
end;


// Obtener la propiedad como string
function TOperatingSystemProperties.GetOperatingSystemSKUAsString():string;
begin
  case FOperatingSystemSKU of
    0: Result := ENUM_STRING_OPERATINGSYSTEMSKU_0;
    1: Result := ENUM_STRING_OPERATINGSYSTEMSKU_1;
    2: Result := ENUM_STRING_OPERATINGSYSTEMSKU_2;
    3: Result := ENUM_STRING_OPERATINGSYSTEMSKU_3;
    4: Result := ENUM_STRING_OPERATINGSYSTEMSKU_4;
    5: Result := ENUM_STRING_OPERATINGSYSTEMSKU_5;
    6: Result := ENUM_STRING_OPERATINGSYSTEMSKU_6;
    7: Result := ENUM_STRING_OPERATINGSYSTEMSKU_7;
    8: Result := ENUM_STRING_OPERATINGSYSTEMSKU_8;
    9: Result := ENUM_STRING_OPERATINGSYSTEMSKU_9;
    10: Result := ENUM_STRING_OPERATINGSYSTEMSKU_10;
    11: Result := ENUM_STRING_OPERATINGSYSTEMSKU_11;
    12: Result := ENUM_STRING_OPERATINGSYSTEMSKU_12;
    13: Result := ENUM_STRING_OPERATINGSYSTEMSKU_13;
    14: Result := ENUM_STRING_OPERATINGSYSTEMSKU_14;
    15: Result := ENUM_STRING_OPERATINGSYSTEMSKU_15;
    16: Result := ENUM_STRING_OPERATINGSYSTEMSKU_16;
    17: Result := ENUM_STRING_OPERATINGSYSTEMSKU_17;
    18: Result := ENUM_STRING_OPERATINGSYSTEMSKU_18;
    19: Result := ENUM_STRING_OPERATINGSYSTEMSKU_19;
    20: Result := ENUM_STRING_OPERATINGSYSTEMSKU_20;
    21: Result := ENUM_STRING_OPERATINGSYSTEMSKU_21;
    22: Result := ENUM_STRING_OPERATINGSYSTEMSKU_22;
    23: Result := ENUM_STRING_OPERATINGSYSTEMSKU_23;
    24: Result := ENUM_STRING_OPERATINGSYSTEMSKU_24;
    25: Result := ENUM_STRING_OPERATINGSYSTEMSKU_25;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TOperatingSystemProperties.GetOSLanguageAsString():string;
begin
  case FOSLanguage of
    1: Result := ENUM_STRING_OSLANGUAGE_1;
    4: Result := ENUM_STRING_OSLANGUAGE_4;
    9: Result := ENUM_STRING_OSLANGUAGE_9;
    1025: Result := ENUM_STRING_OSLANGUAGE_1025;
    1026: Result := ENUM_STRING_OSLANGUAGE_1026;
    1027: Result := ENUM_STRING_OSLANGUAGE_1027;
    1028: Result := ENUM_STRING_OSLANGUAGE_1028;
    1029: Result := ENUM_STRING_OSLANGUAGE_1029;
    1030: Result := ENUM_STRING_OSLANGUAGE_1030;
    1031: Result := ENUM_STRING_OSLANGUAGE_1031;
    1032: Result := ENUM_STRING_OSLANGUAGE_1032;
    1033: Result := ENUM_STRING_OSLANGUAGE_1033;
    1034: Result := ENUM_STRING_OSLANGUAGE_1034;
    1035: Result := ENUM_STRING_OSLANGUAGE_1035;
    1036: Result := ENUM_STRING_OSLANGUAGE_1036;
    1037: Result := ENUM_STRING_OSLANGUAGE_1037;
    1038: Result := ENUM_STRING_OSLANGUAGE_1038;
    1039: Result := ENUM_STRING_OSLANGUAGE_1039;
    1040: Result := ENUM_STRING_OSLANGUAGE_1040;
    1041: Result := ENUM_STRING_OSLANGUAGE_1041;
    1042: Result := ENUM_STRING_OSLANGUAGE_1042;
    1043: Result := ENUM_STRING_OSLANGUAGE_1043;
    1044: Result := ENUM_STRING_OSLANGUAGE_1044;
    1045: Result := ENUM_STRING_OSLANGUAGE_1045;
    1046: Result := ENUM_STRING_OSLANGUAGE_1046;
    1047: Result := ENUM_STRING_OSLANGUAGE_1047;
    1048: Result := ENUM_STRING_OSLANGUAGE_1048;
    1049: Result := ENUM_STRING_OSLANGUAGE_1049;
    1050: Result := ENUM_STRING_OSLANGUAGE_1050;
    1051: Result := ENUM_STRING_OSLANGUAGE_1051;
    1052: Result := ENUM_STRING_OSLANGUAGE_1052;
    1053: Result := ENUM_STRING_OSLANGUAGE_1053;
    1054: Result := ENUM_STRING_OSLANGUAGE_1054;
    1055: Result := ENUM_STRING_OSLANGUAGE_1055;
    1056: Result := ENUM_STRING_OSLANGUAGE_1056;
    1057: Result := ENUM_STRING_OSLANGUAGE_1057;
    1058: Result := ENUM_STRING_OSLANGUAGE_1058;
    1059: Result := ENUM_STRING_OSLANGUAGE_1059;
    1060: Result := ENUM_STRING_OSLANGUAGE_1060;
    1061: Result := ENUM_STRING_OSLANGUAGE_1061;
    1062: Result := ENUM_STRING_OSLANGUAGE_1062;
    1063: Result := ENUM_STRING_OSLANGUAGE_1063;
    1065: Result := ENUM_STRING_OSLANGUAGE_1065;
    1066: Result := ENUM_STRING_OSLANGUAGE_1066;
    1069: Result := ENUM_STRING_OSLANGUAGE_1069;
    1070: Result := ENUM_STRING_OSLANGUAGE_1070;
    1071: Result := ENUM_STRING_OSLANGUAGE_1071;
    1072: Result := ENUM_STRING_OSLANGUAGE_1072;
    1073: Result := ENUM_STRING_OSLANGUAGE_1073;
    1074: Result := ENUM_STRING_OSLANGUAGE_1074;
    1076: Result := ENUM_STRING_OSLANGUAGE_1076;
    1077: Result := ENUM_STRING_OSLANGUAGE_1077;
    1078: Result := ENUM_STRING_OSLANGUAGE_1078;
    1080: Result := ENUM_STRING_OSLANGUAGE_1080;
    1081: Result := ENUM_STRING_OSLANGUAGE_1081;
    1082: Result := ENUM_STRING_OSLANGUAGE_1082;
    1084: Result := ENUM_STRING_OSLANGUAGE_1084;
    1085: Result := ENUM_STRING_OSLANGUAGE_1085;
    1086: Result := ENUM_STRING_OSLANGUAGE_1086;
    2049: Result := ENUM_STRING_OSLANGUAGE_2049;
    2052: Result := ENUM_STRING_OSLANGUAGE_2052;
    2055: Result := ENUM_STRING_OSLANGUAGE_2055;
    2057: Result := ENUM_STRING_OSLANGUAGE_2057;
    2058: Result := ENUM_STRING_OSLANGUAGE_2058;
    2060: Result := ENUM_STRING_OSLANGUAGE_2060;
    2064: Result := ENUM_STRING_OSLANGUAGE_2064;
    2067: Result := ENUM_STRING_OSLANGUAGE_2067;
    2068: Result := ENUM_STRING_OSLANGUAGE_2068;
    2070: Result := ENUM_STRING_OSLANGUAGE_2070;
    2072: Result := ENUM_STRING_OSLANGUAGE_2072;
    2073: Result := ENUM_STRING_OSLANGUAGE_2073;
    2074: Result := ENUM_STRING_OSLANGUAGE_2074;
    2077: Result := ENUM_STRING_OSLANGUAGE_2077;
    3073: Result := ENUM_STRING_OSLANGUAGE_3073;
    3076: Result := ENUM_STRING_OSLANGUAGE_3076;
    3079: Result := ENUM_STRING_OSLANGUAGE_3079;
    3081: Result := ENUM_STRING_OSLANGUAGE_3081;
    3082: Result := ENUM_STRING_OSLANGUAGE_3082;
    3084: Result := ENUM_STRING_OSLANGUAGE_3084;
    3098: Result := ENUM_STRING_OSLANGUAGE_3098;
    4097: Result := ENUM_STRING_OSLANGUAGE_4097;
    4100: Result := ENUM_STRING_OSLANGUAGE_4100;
    4103: Result := ENUM_STRING_OSLANGUAGE_4103;
    4105: Result := ENUM_STRING_OSLANGUAGE_4105;
    4106: Result := ENUM_STRING_OSLANGUAGE_4106;
    4108: Result := ENUM_STRING_OSLANGUAGE_4108;
    5121: Result := ENUM_STRING_OSLANGUAGE_5121;
    5127: Result := ENUM_STRING_OSLANGUAGE_5127;
    5129: Result := ENUM_STRING_OSLANGUAGE_5129;
    5130: Result := ENUM_STRING_OSLANGUAGE_5130;
    5132: Result := ENUM_STRING_OSLANGUAGE_5132;
    6145: Result := ENUM_STRING_OSLANGUAGE_6145;
    6153: Result := ENUM_STRING_OSLANGUAGE_6153;
    6154: Result := ENUM_STRING_OSLANGUAGE_6154;
    7169: Result := ENUM_STRING_OSLANGUAGE_7169;
    7177: Result := ENUM_STRING_OSLANGUAGE_7177;
    7178: Result := ENUM_STRING_OSLANGUAGE_7178;
    8193: Result := ENUM_STRING_OSLANGUAGE_8193;
    8201: Result := ENUM_STRING_OSLANGUAGE_8201;
    8202: Result := ENUM_STRING_OSLANGUAGE_8202;
    9217: Result := ENUM_STRING_OSLANGUAGE_9217;
    9226: Result := ENUM_STRING_OSLANGUAGE_9226;
    10241: Result := ENUM_STRING_OSLANGUAGE_10241;
    10249: Result := ENUM_STRING_OSLANGUAGE_10249;
    10250: Result := ENUM_STRING_OSLANGUAGE_10250;
    11265: Result := ENUM_STRING_OSLANGUAGE_11265;
    11273: Result := ENUM_STRING_OSLANGUAGE_11273;
    11274: Result := ENUM_STRING_OSLANGUAGE_11274;
    12289: Result := ENUM_STRING_OSLANGUAGE_12289;
    12298: Result := ENUM_STRING_OSLANGUAGE_12298;
    13313: Result := ENUM_STRING_OSLANGUAGE_13313;
    13322: Result := ENUM_STRING_OSLANGUAGE_13322;
    14337: Result := ENUM_STRING_OSLANGUAGE_14337;
    14346: Result := ENUM_STRING_OSLANGUAGE_14346;
    15361: Result := ENUM_STRING_OSLANGUAGE_15361;
    15370: Result := ENUM_STRING_OSLANGUAGE_15370;
    16385: Result := ENUM_STRING_OSLANGUAGE_16385;
    16394: Result := ENUM_STRING_OSLANGUAGE_16394;
    17418: Result := ENUM_STRING_OSLANGUAGE_17418;
    18442: Result := ENUM_STRING_OSLANGUAGE_18442;
    19466: Result := ENUM_STRING_OSLANGUAGE_19466;
    20490: Result := ENUM_STRING_OSLANGUAGE_20490;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TOperatingSystemProperties.GetOSProductSuiteAsString():string;
begin
  case FOSProductSuite of
    1: Result := ENUM_STRING_OSPRODUCTSUITE_1;
    2: Result := ENUM_STRING_OSPRODUCTSUITE_2;
    4: Result := ENUM_STRING_OSPRODUCTSUITE_4;
    8: Result := ENUM_STRING_OSPRODUCTSUITE_8;
    16: Result := ENUM_STRING_OSPRODUCTSUITE_16;
    32: Result := ENUM_STRING_OSPRODUCTSUITE_32;
    64: Result := ENUM_STRING_OSPRODUCTSUITE_64;
    128: Result := ENUM_STRING_OSPRODUCTSUITE_128;
    256: Result := ENUM_STRING_OSPRODUCTSUITE_256;
    512: Result := ENUM_STRING_OSPRODUCTSUITE_512;
    1024: Result := ENUM_STRING_OSPRODUCTSUITE_1024;
    8192: Result := ENUM_STRING_OSPRODUCTSUITE_8192;
    16384: Result := ENUM_STRING_OSPRODUCTSUITE_16384;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TOperatingSystemProperties.GetOSTypeAsString():string;
begin
  case FOSType of
    0: Result := ENUM_STRING_OSTYPE_0;
    1: Result := ENUM_STRING_OSTYPE_1;
    2: Result := ENUM_STRING_OSTYPE_2;
    3: Result := ENUM_STRING_OSTYPE_3;
    4: Result := ENUM_STRING_OSTYPE_4;
    5: Result := ENUM_STRING_OSTYPE_5;
    6: Result := ENUM_STRING_OSTYPE_6;
    7: Result := ENUM_STRING_OSTYPE_7;
    8: Result := ENUM_STRING_OSTYPE_8;
    9: Result := ENUM_STRING_OSTYPE_9;
    10: Result := ENUM_STRING_OSTYPE_10;
    11: Result := ENUM_STRING_OSTYPE_11;
    12: Result := ENUM_STRING_OSTYPE_12;
    13: Result := ENUM_STRING_OSTYPE_13;
    14: Result := ENUM_STRING_OSTYPE_14;
    15: Result := ENUM_STRING_OSTYPE_15;
    16: Result := ENUM_STRING_OSTYPE_16;
    17: Result := ENUM_STRING_OSTYPE_17;
    18: Result := ENUM_STRING_OSTYPE_18;
    19: Result := ENUM_STRING_OSTYPE_19;
    20: Result := ENUM_STRING_OSTYPE_20;
    21: Result := ENUM_STRING_OSTYPE_21;
    22: Result := ENUM_STRING_OSTYPE_22;
    23: Result := ENUM_STRING_OSTYPE_23;
    24: Result := ENUM_STRING_OSTYPE_24;
    25: Result := ENUM_STRING_OSTYPE_25;
    26: Result := ENUM_STRING_OSTYPE_26;
    27: Result := ENUM_STRING_OSTYPE_27;
    28: Result := ENUM_STRING_OSTYPE_28;
    29: Result := ENUM_STRING_OSTYPE_29;
    30: Result := ENUM_STRING_OSTYPE_30;
    31: Result := ENUM_STRING_OSTYPE_31;
    32: Result := ENUM_STRING_OSTYPE_32;
    33: Result := ENUM_STRING_OSTYPE_33;
    34: Result := ENUM_STRING_OSTYPE_34;
    35: Result := ENUM_STRING_OSTYPE_35;
    36: Result := ENUM_STRING_OSTYPE_36;
    37: Result := ENUM_STRING_OSTYPE_37;
    38: Result := ENUM_STRING_OSTYPE_38;
    39: Result := ENUM_STRING_OSTYPE_39;
    40: Result := ENUM_STRING_OSTYPE_40;
    41: Result := ENUM_STRING_OSTYPE_41;
    42: Result := ENUM_STRING_OSTYPE_42;
    43: Result := ENUM_STRING_OSTYPE_43;
    44: Result := ENUM_STRING_OSTYPE_44;
    45: Result := ENUM_STRING_OSTYPE_45;
    46: Result := ENUM_STRING_OSTYPE_46;
    47: Result := ENUM_STRING_OSTYPE_47;
    48: Result := ENUM_STRING_OSTYPE_48;
    49: Result := ENUM_STRING_OSTYPE_49;
    50: Result := ENUM_STRING_OSTYPE_50;
    51: Result := ENUM_STRING_OSTYPE_51;
    52: Result := ENUM_STRING_OSTYPE_52;
    53: Result := ENUM_STRING_OSTYPE_53;
    54: Result := ENUM_STRING_OSTYPE_54;
    55: Result := ENUM_STRING_OSTYPE_55;
    56: Result := ENUM_STRING_OSTYPE_56;
    57: Result := ENUM_STRING_OSTYPE_57;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TOperatingSystemProperties.GetProductTypeAsString():string;
begin
  case FProductType of
    1: Result := ENUM_STRING_PRODUCTTYPE_1;
    2: Result := ENUM_STRING_PRODUCTTYPE_2;
    3: Result := ENUM_STRING_PRODUCTTYPE_3;
  else
    Result := STR_EMPTY;
  end;
end;


// Obtener la propiedad como string
function TOperatingSystemProperties.GetSuiteMaskAsString():string;
begin
  case FSuiteMask of
    1: Result := ENUM_STRING_SUITEMASK_1;
    2: Result := ENUM_STRING_SUITEMASK_2;
    4: Result := ENUM_STRING_SUITEMASK_4;
    8: Result := ENUM_STRING_SUITEMASK_8;
    16: Result := ENUM_STRING_SUITEMASK_16;
    32: Result := ENUM_STRING_SUITEMASK_32;
    64: Result := ENUM_STRING_SUITEMASK_64;
    128: Result := ENUM_STRING_SUITEMASK_128;
    256: Result := ENUM_STRING_SUITEMASK_256;
    512: Result := ENUM_STRING_SUITEMASK_512;
    1024: Result := ENUM_STRING_SUITEMASK_1024;
  else
    Result := STR_EMPTY;
  end;
end;


end.

