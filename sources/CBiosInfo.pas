{
TBiosInfo  Component Version 1.9 - Suite GLib 
Copyright (©) 2009,  by Germán Estévez (Neftalí) 
 
  Acceso a los atributos de la BIOS (Basic Input/Output Services)
 
Utilización/Usage: 
  Basta con "soltar" el componente y activarlo.
 
  Place the component in the form and active it. 
 
  MSDN Info: 
  http://msdn.microsoft.com/en-us/library/aa394077(VS.85).aspx

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
unit CBiosInfo;
 
{ 
========================================================================= 
 
  TBiosInfo.pas 
 
  Componente 
 
======================================================================== 
  Historia de las Versiones 
------------------------------------------------------------------------ 
 
  22/12/2009    * Creación. 
 
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
  TBiosProperties = class(TPersistent)
  private
    FBiosCharacteristics:TArrInteger;
    FBiosCharacteristicsCount:integer;
    FBiosCharacteristicsAsString:string;
    FBIOSVersion:TArrString;
    FBIOSVersionCount:integer;
    FBIOSVersionAsString:string;
    FBuildNumber:string;
    FCaption:string;
    FCodeSet:string;
    FCurrentLanguage:string;
    FDescription:string;
    FIdentificationCode:string;
    FInstallableLanguages:Integer;
    FInstallDate:TDateTime;
    FLanguageEdition:string;
    FListOfLanguages:TArrString;
    FListOfLanguagesCount:integer;
    FListOfLanguagesAsString:string;
    FManufacturer:string;
    FName:string;
    FOtherTargetOS:string;
    FPrimaryBIOS:boolean;
    FReleaseDate:TDateTime;
    FSerialNumber:string;
    FSMBIOSBIOSVersion:string;
    FSMBIOSMajorVersion:Integer;
    FSMBIOSMinorVersion:Integer;
    FSMBIOSPresent:boolean;
    FSoftwareElementID:string;
    FSoftwareElementState:Integer;
    FSoftwareElementStateAsString:string;
    FStatus:string;
    FTargetOperatingSystem:Integer;
    FTargetOperatingSystemAsString:string;
    FVersion:string;
  private
    function GetBiosCharacteristics(index: integer): Integer;
    function GetBIOSVersion(index: integer): string;
    function GetListOfLanguages(index: integer): String;
  public

    // Obtener la propiedad <TargetOperatingSystem> como string
    function GetTargetOperatingSystemAsString():string;
    // Obtener la propiedad <SoftwareElementState> como string
    function GetSoftwareElementStateAsString():string;
    // Obtener la propiedad <BiosCharacteristics> como string
    function GetBiosCharacteristicsAsString(index:integer):string;  

    property BiosCharacteristics[index:integer]:Integer read GetBiosCharacteristics;
    property BiosCharacteristicsCount:integer read FBiosCharacteristicsCount stored False;
    property BIOSVersion[index:integer]:string read GetBIOSVersion;
    property BIOSVersionCount:integer read FBIOSVersionCount stored False;
    property ListOfLanguages[index:integer]:String read GetListOfLanguages;
    property ListOfLanguagesCount:integer read FListOfLanguagesCount stored False;
  published
    property BiosCharacteristicsAsString:string read FBiosCharacteristicsAsString write FBiosCharacteristicsAsString stored False;
    property BIOSVersionAsString:string read FBIOSVersionAsString write FBIOSVersionAsString stored False;
    property BuildNumber:string read FBuildNumber write FBuildNumber stored False;
    property Caption:string read FCaption write FCaption stored False;
    property CodeSet:string read FCodeSet write FCodeSet stored False;
    property CurrentLanguage:string read FCurrentLanguage write FCurrentLanguage stored False;
    property Description:string read FDescription write FDescription stored False;
    property IdentificationCode:string read FIdentificationCode write FIdentificationCode stored False;
    property InstallableLanguages:Integer read FInstallableLanguages write FInstallableLanguages stored False;
    property InstallDate:TDateTime read FInstallDate write FInstallDate stored False;
    property LanguageEdition:string read FLanguageEdition write FLanguageEdition stored False;
    property ListOfLanguagesAsString:string read FListOfLanguagesAsString write FListOfLanguagesAsString stored False;
    property Manufacturer:string read FManufacturer write FManufacturer stored False;
    property Name:string read FName write FName stored False;
    property OtherTargetOS:string read FOtherTargetOS write FOtherTargetOS stored False;
    property PrimaryBIOS:boolean read FPrimaryBIOS write FPrimaryBIOS stored False;
    property ReleaseDate:TDateTime read FReleaseDate write FReleaseDate stored False;
    property SerialNumber:string read FSerialNumber write FSerialNumber stored False;
    property SMBIOSBIOSVersion:string read FSMBIOSBIOSVersion write FSMBIOSBIOSVersion stored False;
    property SMBIOSMajorVersion:Integer read FSMBIOSMajorVersion write FSMBIOSMajorVersion stored False;
    property SMBIOSMinorVersion:Integer read FSMBIOSMinorVersion write FSMBIOSMinorVersion stored False;
    property SMBIOSPresent:boolean read FSMBIOSPresent write FSMBIOSPresent stored False;
    property SoftwareElementID:string read FSoftwareElementID write FSoftwareElementID stored False;
    property SoftwareElementState:Integer read FSoftwareElementState write FSoftwareElementState stored False;
    property Status:string read FStatus write FStatus stored False;
    property TargetOperatingSystem:Integer read FTargetOperatingSystem write FTargetOperatingSystem stored False;
    property Version:string read FVersion write FVersion stored False;
    property TargetOperatingSystemAsString:string read GetTargetOperatingSystemAsString write FTargetOperatingSystemAsString stored False;
    property SoftwareElementStateAsString:string read GetSoftwareElementStateAsString write FSoftwareElementStateAsString stored False;
  end;

  //: Implementación para el acceso vía WMI a la clase Win32_BIOS
  TBiosInfo = class(TWMIBase)
  private
    FBiosProperties: TBiosProperties;
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
    // propiedades de la Bios
    property BiosProperties:TBiosProperties read FBiosProperties write FBiosProperties;
  end;

// Constantes para la propiedad BiosCharacteristics
const
  ENUM_STRING_BIOSCHARACTERISTICS_0 = 'Reserved';
  ENUM_STRING_BIOSCHARACTERISTICS_1 = 'Reserved';
  ENUM_STRING_BIOSCHARACTERISTICS_2 = 'Unknown';
  ENUM_STRING_BIOSCHARACTERISTICS_3 = 'BIOS Characteristics Not Supported';
  ENUM_STRING_BIOSCHARACTERISTICS_4 = 'ISA is supported';
  ENUM_STRING_BIOSCHARACTERISTICS_5 = 'MCA is supported';
  ENUM_STRING_BIOSCHARACTERISTICS_6 = 'EISA is supported';
  ENUM_STRING_BIOSCHARACTERISTICS_7 = 'PCI is supported';
  ENUM_STRING_BIOSCHARACTERISTICS_8 = 'PC Card (PCMCIA) is supported';
  ENUM_STRING_BIOSCHARACTERISTICS_9 = 'Plug and Play is supported';
  ENUM_STRING_BIOSCHARACTERISTICS_10 = 'APM is supported';
  ENUM_STRING_BIOSCHARACTERISTICS_11 = 'BIOS is Upgradable (Flash)';
  ENUM_STRING_BIOSCHARACTERISTICS_12 = 'BIOS shadowing is allowed';
  ENUM_STRING_BIOSCHARACTERISTICS_13 = 'VL-VESA is supported';
  ENUM_STRING_BIOSCHARACTERISTICS_14 = 'ESCD support is available';
  ENUM_STRING_BIOSCHARACTERISTICS_15 = 'Boot from CD is supported';
  ENUM_STRING_BIOSCHARACTERISTICS_16 = 'Selectable Boot is supported';
  ENUM_STRING_BIOSCHARACTERISTICS_17 = 'BIOS ROM is socketed';
  ENUM_STRING_BIOSCHARACTERISTICS_18 = 'Boot From PC Card (PCMCIA) is supported';
  ENUM_STRING_BIOSCHARACTERISTICS_19 = 'EDD (Enhanced Disk Drive) Specification is supported';
  ENUM_STRING_BIOSCHARACTERISTICS_20 = 'Int 13h - Japanese Floppy for NEC 9800 1.2mb (3.5, 1k Bytes/Sector, 360 RPM) is supported';
  ENUM_STRING_BIOSCHARACTERISTICS_21 = 'Int 13h - Japanese Floppy for Toshiba 1.2mb (3.5, 360 RPM) is supported';
  ENUM_STRING_BIOSCHARACTERISTICS_22 = 'Int 13h - 5.25 / 360 KB Floppy Services are supported';
  ENUM_STRING_BIOSCHARACTERISTICS_23 = 'Int 13h - 5.25 /1.2MB Floppy Services are supported';
  ENUM_STRING_BIOSCHARACTERISTICS_24 = 'Int 13h - 3.5 / 720 KB Floppy Services are supported';
  ENUM_STRING_BIOSCHARACTERISTICS_25 = 'Int 13h - 3.5 / 2.88 MB Floppy Services are supported';
  ENUM_STRING_BIOSCHARACTERISTICS_26 = 'Int 5h, Print Screen Service is supported';
  ENUM_STRING_BIOSCHARACTERISTICS_27 = 'Int 9h, 8042 Keyboard services are supported';
  ENUM_STRING_BIOSCHARACTERISTICS_28 = 'Int 14h, Serial Services are supported';
  ENUM_STRING_BIOSCHARACTERISTICS_29 = 'Int 17h, printer services are supported';
  ENUM_STRING_BIOSCHARACTERISTICS_30 = 'Int 10h, CGA/Mono Video Services are supported';
  ENUM_STRING_BIOSCHARACTERISTICS_31 = 'NEC PC-98';
  ENUM_STRING_BIOSCHARACTERISTICS_32 = 'ACPI is supported';
  ENUM_STRING_BIOSCHARACTERISTICS_33 = 'USB Legacy is supported';
  ENUM_STRING_BIOSCHARACTERISTICS_34 = 'AGP is supported';
  ENUM_STRING_BIOSCHARACTERISTICS_35 = 'I2O boot is supported';
  ENUM_STRING_BIOSCHARACTERISTICS_36 = 'LS-120 boot is supported';
  ENUM_STRING_BIOSCHARACTERISTICS_37 = 'ATAPI ZIP Drive boot is supported';
  ENUM_STRING_BIOSCHARACTERISTICS_38 = '1394 boot is supported';
  ENUM_STRING_BIOSCHARACTERISTICS_39 = 'Smart Battery is supported';
  ENUM_STRING_BIOSCHARACTERISTICS_40 = 'Reserved for BIOS vendor';
  ENUM_STRING_BIOSCHARACTERISTICS_48 = 'Reserved for system vendor';

// Constantes para la propiedad SoftwareElementState
const
  ENUM_STRING_SOFTWAREELEMENTSTATE_0 = 'Deployable';
  ENUM_STRING_SOFTWAREELEMENTSTATE_1 = 'Installable';
  ENUM_STRING_SOFTWAREELEMENTSTATE_2 = 'Executable';
  ENUM_STRING_SOFTWAREELEMENTSTATE_3 = 'Running';

// Constantes para la propiedad TargetOperatingSystem
const
  ENUM_STRING_TARGETOPERATINGSYSTEM_0 = 'Unknown';
  ENUM_STRING_TARGETOPERATINGSYSTEM_1 = 'Other';
  ENUM_STRING_TARGETOPERATINGSYSTEM_2 = 'MACOS';
  ENUM_STRING_TARGETOPERATINGSYSTEM_3 = 'ATTUNIX';
  ENUM_STRING_TARGETOPERATINGSYSTEM_4 = 'DGUX';
  ENUM_STRING_TARGETOPERATINGSYSTEM_5 = 'DECNT';
  ENUM_STRING_TARGETOPERATINGSYSTEM_6 = 'Digital Unix';
  ENUM_STRING_TARGETOPERATINGSYSTEM_7 = 'OpenVMS';
  ENUM_STRING_TARGETOPERATINGSYSTEM_8 = 'HPUX';
  ENUM_STRING_TARGETOPERATINGSYSTEM_9 = 'AIX';
  ENUM_STRING_TARGETOPERATINGSYSTEM_10 = 'MVS';
  ENUM_STRING_TARGETOPERATINGSYSTEM_11 = 'OS400';
  ENUM_STRING_TARGETOPERATINGSYSTEM_12 = 'OS/2';
  ENUM_STRING_TARGETOPERATINGSYSTEM_13 = 'JavaVM';
  ENUM_STRING_TARGETOPERATINGSYSTEM_14 = 'MSDOS';
  ENUM_STRING_TARGETOPERATINGSYSTEM_15 = 'WIN3x';
  ENUM_STRING_TARGETOPERATINGSYSTEM_16 = 'WIN95';
  ENUM_STRING_TARGETOPERATINGSYSTEM_17 = 'WIN98';
  ENUM_STRING_TARGETOPERATINGSYSTEM_18 = 'WINNT';
  ENUM_STRING_TARGETOPERATINGSYSTEM_19 = 'WINCE';
  ENUM_STRING_TARGETOPERATINGSYSTEM_20 = 'NCR3000';
  ENUM_STRING_TARGETOPERATINGSYSTEM_21 = 'NetWare';
  ENUM_STRING_TARGETOPERATINGSYSTEM_22 = 'OSF';
  ENUM_STRING_TARGETOPERATINGSYSTEM_23 = 'DC/OS';
  ENUM_STRING_TARGETOPERATINGSYSTEM_24 = 'Reliant UNIX';
  ENUM_STRING_TARGETOPERATINGSYSTEM_25 = 'SCO UnixWare';
  ENUM_STRING_TARGETOPERATINGSYSTEM_26 = 'SCO OpenServer';
  ENUM_STRING_TARGETOPERATINGSYSTEM_27 = 'Sequent';
  ENUM_STRING_TARGETOPERATINGSYSTEM_28 = 'IRIX';
  ENUM_STRING_TARGETOPERATINGSYSTEM_29 = 'Solaris';
  ENUM_STRING_TARGETOPERATINGSYSTEM_30 = 'SunOS';
  ENUM_STRING_TARGETOPERATINGSYSTEM_31 = 'U6000';
  ENUM_STRING_TARGETOPERATINGSYSTEM_32 = 'ASERIES';
  ENUM_STRING_TARGETOPERATINGSYSTEM_33 = 'TandemNSK';
  ENUM_STRING_TARGETOPERATINGSYSTEM_34 = 'TandemNT';
  ENUM_STRING_TARGETOPERATINGSYSTEM_35 = 'BS2000';
  ENUM_STRING_TARGETOPERATINGSYSTEM_36 = 'LINUX';
  ENUM_STRING_TARGETOPERATINGSYSTEM_37 = 'Lynx';
  ENUM_STRING_TARGETOPERATINGSYSTEM_38 = 'XENIX';
  ENUM_STRING_TARGETOPERATINGSYSTEM_39 = 'VM/ESA';
  ENUM_STRING_TARGETOPERATINGSYSTEM_40 = 'Interactive UNIX';
  ENUM_STRING_TARGETOPERATINGSYSTEM_41 = 'BSDUNIX';
  ENUM_STRING_TARGETOPERATINGSYSTEM_42 = 'FreeBSD';
  ENUM_STRING_TARGETOPERATINGSYSTEM_43 = 'NetBSD';
  ENUM_STRING_TARGETOPERATINGSYSTEM_44 = 'GNU Hurd';
  ENUM_STRING_TARGETOPERATINGSYSTEM_45 = 'OS9';
  ENUM_STRING_TARGETOPERATINGSYSTEM_46 = 'MACH Kernel';
  ENUM_STRING_TARGETOPERATINGSYSTEM_47 = 'Inferno';
  ENUM_STRING_TARGETOPERATINGSYSTEM_48 = 'QNX';
  ENUM_STRING_TARGETOPERATINGSYSTEM_49 = 'EPOC';
  ENUM_STRING_TARGETOPERATINGSYSTEM_50 = 'IxWorks';
  ENUM_STRING_TARGETOPERATINGSYSTEM_51 = 'VxWorks';
  ENUM_STRING_TARGETOPERATINGSYSTEM_52 = 'MiNT';
  ENUM_STRING_TARGETOPERATINGSYSTEM_53 = 'BeOS';
  ENUM_STRING_TARGETOPERATINGSYSTEM_54 = 'HP MPE';
  ENUM_STRING_TARGETOPERATINGSYSTEM_55 = 'NextStep';
  ENUM_STRING_TARGETOPERATINGSYSTEM_56 = 'PalmPilot';
  ENUM_STRING_TARGETOPERATINGSYSTEM_57 = 'Rhapsody';
  ENUM_STRING_TARGETOPERATINGSYSTEM_58 = 'Windows 2000';
  ENUM_STRING_TARGETOPERATINGSYSTEM_59 = 'Dedicated';
  ENUM_STRING_TARGETOPERATINGSYSTEM_60 = 'VSE';
  ENUM_STRING_TARGETOPERATINGSYSTEM_61 = 'TPF';
    
//========================================================================= 
// 
// I M P L E M E N T A T I O N
// 
//========================================================================= 
implementation 
  
uses 
  {Generales} Forms, Types, Windows, SysUtils, 
  {GLib} UProcedures, UConstantes, Dialogs; 
 
  
{ TBios } 
{-------------------------------------------------------------------------------} 
// Limpiar las propiedades
procedure TBiosInfo.ClearProps;
begin

  Self.BIOSProperties.FBiosCharacteristicsCount := 0;
  Self.BIOSProperties.FBiosCharacteristicsAsString := STR_EMPTY;
  SetLength(Self.BIOSProperties.FBiosCharacteristics,0);
  Self.BIOSProperties.FBIOSVersionCount := 0;
  Self.BIOSProperties.FBIOSVersionAsString := STR_EMPTY;
  SetLength(Self.BIOSProperties.FBIOSVersion,0);
  Self.BiosProperties.FBuildNumber := STR_EMPTY;
  Self.BiosProperties.FCaption := STR_EMPTY;
  Self.BiosProperties.FCodeSet := STR_EMPTY;
  Self.BiosProperties.FCurrentLanguage := STR_EMPTY;
  Self.BiosProperties.FDescription := STR_EMPTY;
  Self.BiosProperties.FIdentificationCode := STR_EMPTY;
  Self.BiosProperties.FInstallableLanguages := 0;
  Self.BiosProperties.FInstallDate := 0;
  Self.BiosProperties.FLanguageEdition := STR_EMPTY;
  Self.BIOSProperties.FListOfLanguagesCount := 0;
  Self.BIOSProperties.FListOfLanguagesAsString := STR_EMPTY;
  SetLength(Self.BIOSProperties.FListOfLanguages,0);
  Self.BiosProperties.FManufacturer := STR_EMPTY;
  Self.BiosProperties.FName := STR_EMPTY;
  Self.BiosProperties.FOtherTargetOS := STR_EMPTY;
  Self.BiosProperties.FPrimaryBIOS := False;
  Self.BiosProperties.FReleaseDate := 0;
  Self.BiosProperties.FSerialNumber := STR_EMPTY;
  Self.BiosProperties.FSMBIOSBIOSVersion := STR_EMPTY;
  Self.BiosProperties.FSMBIOSMajorVersion := 0;
  Self.BiosProperties.FSMBIOSMinorVersion := 0;
  Self.BiosProperties.FSMBIOSPresent := False;
  Self.BiosProperties.FSoftwareElementID := STR_EMPTY;
  Self.BiosProperties.FSoftwareElementState := 0;
  Self.BiosProperties.FStatus := STR_EMPTY;
  Self.BiosProperties.FTargetOperatingSystem := 0;
  Self.BiosProperties.FVersion := STR_EMPTY;

end;
//: Constructor del componente 
constructor TBiosInfo.Create(AOwner: TComponent); 
begin 
  inherited;

  Self.FBiosProperties := TBiosProperties.Create();
  Self.MSDNHelp := 'http://msdn.microsoft.com/en-us/library/aa394077(VS.85).aspx';
end; 
 
// destructor del componente 
destructor TBiosInfo.Destroy(); 
begin 
 
  // liberar 
  FreeAndNil(Self.FBiosProperties); 
 
  inherited; 
end; 
 
// Obtener la clase 
function TBiosInfo.GetWMIClass(): string; 
begin 
  Result := 'Win32_Bios'
end; 
 
// Obtener Root 
function TBiosInfo.GetWMIRoot(): string; 
begin 
  Result := STR_CIM2_ROOT; 
end; 
 
// Active 
procedure TBiosInfo.SetActive(const Value: Boolean); 
begin 
  // método heredado
  inherited;
end; 
// Acceso a los elementos de la propiedad <BiosCharacteristics>
function TBIOSProperties.GetBiosCharacteristics(index: integer):Integer;
begin
  if (index >= Self.FBiosCharacteristicsCount) then begin
    Index := Self.FBiosCharacteristicsCount - 1;
  end;
  Result := Self.FBiosCharacteristics[index];
end;
 
// Acceso a los elementos de la propiedad <BIOSVersion>
function TBIOSProperties.GetBIOSVersion(index: integer):string;
begin
  if (index >= Self.FBIOSVersionCount) then begin
    Index := Self.FBIOSVersionCount - 1;
  end;
  Result := Self.FBIOSVersion[index];
end;

// Acceso a los elementos de la propiedad <ListOfLanguages>
function TBIOSProperties.GetListOfLanguages(index: integer):String;
begin
  if (index >= Self.FListOfLanguagesCount) then begin
    Index := Self.FListOfLanguagesCount - 1;
  end;
  Result := Self.FListOfLanguages[index];
end;

//: Rellenar las propiedades del componente.
procedure TBiosInfo.FillProperties(AIndex: integer);
var
  v:variant;
  vNull:boolean;
  vp:TBiosProperties;
begin

  // Llamar al heredado (importante)
  inherited;

  // Rellenar propiedades...
  vp := Self.BiosProperties;

  GetWMIPropertyValue(Self, 'BiosCharacteristics', v, vNull);
  vp.FBiosCharacteristicsAsString := VariantStrValue(v, vNull);
  StringToArrayInteger(vp.FBiosCharacteristicsAsString, vp.FBiosCharacteristics);
  vp.FBiosCharacteristicsCount := Length(vp.FBiosCharacteristics);

  GetWMIPropertyValue(Self, 'BIOSVersion', v, vNull);
  vp.FBIOSVersionAsString := VariantStrValue(v, vNull);
  StringToArrayString(vp.FBIOSVersionAsString, vp.FBIOSVersion);
  vp.FBIOSVersionCount := Length(vp.FBIOSVersion);

  GetWMIPropertyValue(Self, 'ListOfLanguages', v, vNull);
  vp.FListOfLanguagesAsString := VariantStrValue(v, vNull);
  StringToArrayString(vp.FListOfLanguagesAsString, vp.FListOfLanguages);
  vp.FListOfLanguagesCount := Length(vp.FListOfLanguages);

  GetWMIPropertyValue(Self, 'BuildNumber', v, vNull);
  vp.FBuildNumber := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Caption', v, vNull);
  vp.FCaption := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'CodeSet', v, vNull);
  vp.FCodeSet := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'CurrentLanguage', v, vNull);
  vp.FCurrentLanguage := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Description', v, vNull);
  vp.FDescription := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'IdentificationCode', v, vNull);
  vp.FIdentificationCode := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'InstallableLanguages', v, vNull);
  vp.FInstallableLanguages := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'InstallDate', v, vNull);
  if not vNull then begin
    vp.FInstallDate := EncodeDate(StrToInt(Copy(v, 1, 4)),StrToInt(Copy(v, 5, 2)),StrToInt(Copy(v, 7, 2)));
  end;

  GetWMIPropertyValue(Self, 'LanguageEdition', v, vNull);
  vp.FLanguageEdition := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Manufacturer', v, vNull);
  vp.FManufacturer := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Name', v, vNull);
  vp.FName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'OtherTargetOS', v, vNull);
  vp.FOtherTargetOS := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'PrimaryBIOS', v, vNull);
  vp.FPrimaryBIOS := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'ReleaseDate', v, vNull);
  if not vNull then begin
    vp.FReleaseDate := EncodeDate(StrToInt(Copy(v, 1, 4)),StrToInt(Copy(v, 5, 2)),StrToInt(Copy(v, 7, 2)));
  end;

  GetWMIPropertyValue(Self, 'SerialNumber', v, vNull);
  vp.FSerialNumber := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'SMBIOSBIOSVersion', v, vNull);
  vp.FSMBIOSBIOSVersion := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'SMBIOSMajorVersion', v, vNull);
  vp.FSMBIOSMajorVersion := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'SMBIOSMinorVersion', v, vNull);
  vp.FSMBIOSMinorVersion := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'SMBIOSPresent', v, vNull);
  vp.FSMBIOSPresent := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'SoftwareElementID', v, vNull);
  vp.FSoftwareElementID := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'SoftwareElementState', v, vNull);
  vp.FSoftwareElementState := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Status', v, vNull);
  vp.FStatus := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'TargetOperatingSystem', v, vNull);
  vp.FTargetOperatingSystem := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Version', v, vNull);
  vp.FVersion := VariantStrValue(v, vNull);

end;


// Obtener la propiedad como string
function TBiosProperties.GetTargetOperatingSystemAsString():string;
begin
  case FTargetOperatingSystem of
    0: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_0;
    1: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_1;
    2: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_2;
    3: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_3;
    4: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_4;
    5: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_5;
    6: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_6;
    7: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_7;
    8: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_8;
    9: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_9;
    10: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_10;
    11: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_11;
    12: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_12;
    13: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_13;
    14: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_14;
    15: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_15;
    16: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_16;
    17: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_17;
    18: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_18;
    19: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_19;
    20: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_20;
    21: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_21;
    22: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_22;
    23: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_23;
    24: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_24;
    25: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_25;
    26: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_26;
    27: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_27;
    28: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_28;
    29: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_29;
    30: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_30;
    31: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_31;
    32: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_32;
    33: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_33;
    34: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_34;
    35: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_35;
    36: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_36;
    37: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_37;
    38: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_38;
    39: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_39;
    40: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_40;
    41: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_41;
    42: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_42;
    43: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_43;
    44: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_44;
    45: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_45;
    46: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_46;
    47: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_47;
    48: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_48;
    49: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_49;
    50: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_50;
    51: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_51;
    52: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_52;
    53: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_53;
    54: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_54;
    55: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_55;
    56: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_56;
    57: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_57;
    58: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_58;
    59: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_59;
    60: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_60;
    61: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_61;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TBIOSProperties.GetSoftwareElementStateAsString():string;
begin
  case FSoftwareElementState of
    0: Result := ENUM_STRING_SOFTWAREELEMENTSTATE_0;
    1: Result := ENUM_STRING_SOFTWAREELEMENTSTATE_1;
    2: Result := ENUM_STRING_SOFTWAREELEMENTSTATE_2;
    3: Result := ENUM_STRING_SOFTWAREELEMENTSTATE_3;
  else
    Result := STR_EMPTY;
  end;
end;



// Obtener la propiedad como string
function TBIOSProperties.GetBiosCharacteristicsAsString(index:integer):string;
begin
  case index of
    0: Result := ENUM_STRING_BIOSCHARACTERISTICS_0;
    1: Result := ENUM_STRING_BIOSCHARACTERISTICS_1;
    2: Result := ENUM_STRING_BIOSCHARACTERISTICS_2;
    3: Result := ENUM_STRING_BIOSCHARACTERISTICS_3;
    4: Result := ENUM_STRING_BIOSCHARACTERISTICS_4;
    5: Result := ENUM_STRING_BIOSCHARACTERISTICS_5;
    6: Result := ENUM_STRING_BIOSCHARACTERISTICS_6;
    7: Result := ENUM_STRING_BIOSCHARACTERISTICS_7;
    8: Result := ENUM_STRING_BIOSCHARACTERISTICS_8;
    9: Result := ENUM_STRING_BIOSCHARACTERISTICS_9;
    10: Result := ENUM_STRING_BIOSCHARACTERISTICS_10;
    11: Result := ENUM_STRING_BIOSCHARACTERISTICS_11;
    12: Result := ENUM_STRING_BIOSCHARACTERISTICS_12;
    13: Result := ENUM_STRING_BIOSCHARACTERISTICS_13;
    14: Result := ENUM_STRING_BIOSCHARACTERISTICS_14;
    15: Result := ENUM_STRING_BIOSCHARACTERISTICS_15;
    16: Result := ENUM_STRING_BIOSCHARACTERISTICS_16;
    17: Result := ENUM_STRING_BIOSCHARACTERISTICS_17;
    18: Result := ENUM_STRING_BIOSCHARACTERISTICS_18;
    19: Result := ENUM_STRING_BIOSCHARACTERISTICS_19;
    20: Result := ENUM_STRING_BIOSCHARACTERISTICS_20;
    21: Result := ENUM_STRING_BIOSCHARACTERISTICS_21;
    22: Result := ENUM_STRING_BIOSCHARACTERISTICS_22;
    23: Result := ENUM_STRING_BIOSCHARACTERISTICS_23;
    24: Result := ENUM_STRING_BIOSCHARACTERISTICS_24;
    25: Result := ENUM_STRING_BIOSCHARACTERISTICS_25;
    26: Result := ENUM_STRING_BIOSCHARACTERISTICS_26;
    27: Result := ENUM_STRING_BIOSCHARACTERISTICS_27;
    28: Result := ENUM_STRING_BIOSCHARACTERISTICS_28;
    29: Result := ENUM_STRING_BIOSCHARACTERISTICS_29;
    30: Result := ENUM_STRING_BIOSCHARACTERISTICS_30;
    31: Result := ENUM_STRING_BIOSCHARACTERISTICS_31;
    32: Result := ENUM_STRING_BIOSCHARACTERISTICS_32;
    33: Result := ENUM_STRING_BIOSCHARACTERISTICS_33;
    34: Result := ENUM_STRING_BIOSCHARACTERISTICS_34;
    35: Result := ENUM_STRING_BIOSCHARACTERISTICS_35;
    36: Result := ENUM_STRING_BIOSCHARACTERISTICS_36;
    37: Result := ENUM_STRING_BIOSCHARACTERISTICS_37;
    38: Result := ENUM_STRING_BIOSCHARACTERISTICS_38;
    39: Result := ENUM_STRING_BIOSCHARACTERISTICS_39;
    40..47: Result := ENUM_STRING_BIOSCHARACTERISTICS_40;
    48..63: Result := ENUM_STRING_BIOSCHARACTERISTICS_48;
  else
    Result := STR_EMPTY;
  end;
end;


end.

