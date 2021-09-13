{
TBIOSInfo Component Version 3.1 - Suite GLibWMI
Copyright (©) 2020,  by Germán Estévez (Neftalí)

La clase Win32_BIOS representa los atributos del servicio de entrada y salida básico del sistema (BIOS, 
Basic Input/Output Service) instalado en el equipo.


Utilización/Usage:
(ES) Basta con "soltar" el componente y activarlo.
(EN) Place the component in the form and active it.

MSDN Info:
https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-bios

=========================================================================
IMPORTANTE PROGRAMADORES: Por favor, si tienes comentarios, mejoras, ampliaciones,
errores y/o cualquier otro tipo de sugerencia envíame un mail a:
german_ral@hotmail.com

IMPORTANT PROGRAMMERS: please, if you have comments, improvements, enlargements,
errors and/or any another type of suggestion send a mail to:
german_ral@hotmail.com
=========================================================================

@author Germán Estévez (Neftalí)
@web    http://neftali.clubDelphi.com
@cat    Package GLibWMI
}
unit CBIOSInfo;

//=========================================================================
//
// I N T E R F A C E
//
//=========================================================================
interface

uses
  Classes, Controls, CWMIBase;

type

  {%ClassProperties PropertiesClass%}
  //: Clase para definir las propiedades del componente.
  TBIOSProperties = class(TPersistent)
  private
    {%PrivateClassVars PropertiesClass%}
    FBiosCharacteristics:TArrInteger;
    FBiosCharacteristicsCount:integer;
    FBiosCharacteristicsAsString:string;    FBIOSVersion:TArrString;
    FBIOSVersionCount:integer;
    FBIOSVersionAsString:string;    FBuildNumber:string;
    FCaption:string;
    FCodeSet:string;
    FCurrentLanguage:string;
    FDescription:string;
    FEmbeddedControllerMajorVersion:integer;
    FEmbeddedControllerMinorVersion:integer;
    FIdentificationCode:string;
    FInstallableLanguages:integer;
    FInstallDate:TDatetime;
    FLanguageEdition:string;
    FListOfLanguages:TArrString;
    FListOfLanguagesCount:integer;
    FListOfLanguagesAsString:string;    FManufacturer:string;
    FName:string;
    FOtherTargetOS:string;
    FPrimaryBIOS:boolean;
    FReleaseDate:TDatetime;
    FSerialNumber:string;
    FSMBIOSBIOSVersion:string;
    FSMBIOSMajorVersion:integer;
    FSMBIOSMinorVersion:integer;
    FSMBIOSPresent:boolean;
    FSoftwareElementID:string;
    FSoftwareElementState:integer;
    FStatus:string;
    FSystemBiosMajorVersion:integer;
    FSystemBiosMinorVersion:integer;
    FTargetOperatingSystem:integer;
    FVersion:string;

  private
    {%PrivateGetMethods PropertiesClass%}
    function GetBiosCharacteristics(index: integer):integer;
    function GetBIOSVersion(index: integer):string;
    function GetListOfLanguages(index: integer):string;

  public
    {%PublicGetMethods PropertiesClass%}
    // Obtener la propiedad <BiosCharacteristics> como string
    function GetAllBiosCharacteristicsAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <BiosCharacteristics>
    function GetAllBiosCharacteristicsCount:integer;
    // Obtener la propiedad <SoftwareElementState> como string
    function GetAllSoftwareElementStateAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <SoftwareElementState>
    function GetAllSoftwareElementStateCount:integer;
    // Obtener la propiedad <TargetOperatingSystem> como string
    function GetAllTargetOperatingSystemAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <TargetOperatingSystem>
    function GetAllTargetOperatingSystemCount:integer;

    {%PublicArrayMethods PropertiesClass%}
    property BiosCharacteristics[index:integer]:integer read GetBiosCharacteristics;
    property BiosCharacteristicsCount:integer read FBiosCharacteristicsCount stored False;
    property BIOSVersion[index:integer]:string read GetBIOSVersion;
    property BIOSVersionCount:integer read FBIOSVersionCount stored False;
    property ListOfLanguages[index:integer]:string read GetListOfLanguages;
    property ListOfLanguagesCount:integer read FListOfLanguagesCount stored False;

  published
    {%PublishedProperties PropertiesClass%}
    /// <summary>
    ///  La propiedad BiosCharacteristics identifica las características de BIOS compatibles con el sistema, como 
    ///  se define en la Especificación de referencia del BIOS de Administración del sistema
    /// </summary>
    property BiosCharacteristicsAsString:string read FBiosCharacteristicsAsString write FBiosCharacteristicsAsString stored False;
    /// <summary>
    ///  La propiedad de matriz BIOSVersion contiene la información completa de System BIOS. En muchos equipos, 
    ///  puede haber varias cadenas de versiones almacenadas en el Registro representando la información BIOS 
    ///  del sistema. La propiedad contiene el conjunto completo. 
    /// </summary>
    property BIOSVersionAsString:string read FBIOSVersionAsString write FBIOSVersionAsString stored False;
    /// <summary>
    ///  La propiedad de matriz BIOSVersion contiene la información completa de System BIOS. En muchos equipos, 
    ///  puede haber varias cadenas de versiones almacenadas en el Registro representando la información BIOS 
    ///  del sistema. La propiedad contiene el conjunto completo. 
    /// </summary>
    property BuildNumber:string read FBuildNumber write FBuildNumber stored False;
    /// <summary>
    ///  La propiedad de matriz BIOSVersion contiene la información completa de System BIOS. En muchos equipos, 
    ///  puede haber varias cadenas de versiones almacenadas en el Registro representando la información BIOS 
    ///  del sistema. La propiedad contiene el conjunto completo. 
    /// </summary>
    property Caption:string read FCaption write FCaption stored False;
    /// <summary>
    ///  La propiedad de matriz BIOSVersion contiene la información completa de System BIOS. En muchos equipos, 
    ///  puede haber varias cadenas de versiones almacenadas en el Registro representando la información BIOS 
    ///  del sistema. La propiedad contiene el conjunto completo. 
    /// </summary>
    property CodeSet:string read FCodeSet write FCodeSet stored False;
    /// <summary>
    ///  La propiedad de matriz BIOSVersion contiene la información completa de System BIOS. En muchos equipos, 
    ///  puede haber varias cadenas de versiones almacenadas en el Registro representando la información BIOS 
    ///  del sistema. La propiedad contiene el conjunto completo. 
    /// </summary>
    property CurrentLanguage:string read FCurrentLanguage write FCurrentLanguage stored False;
    /// <summary>
    ///  La propiedad de matriz BIOSVersion contiene la información completa de System BIOS. En muchos equipos, 
    ///  puede haber varias cadenas de versiones almacenadas en el Registro representando la información BIOS 
    ///  del sistema. La propiedad contiene el conjunto completo. 
    /// </summary>
    property Description:string read FDescription write FDescription stored False;
    /// <summary>
    ///  La propiedad de matriz BIOSVersion contiene la información completa de System BIOS. En muchos equipos, 
    ///  puede haber varias cadenas de versiones almacenadas en el Registro representando la información BIOS 
    ///  del sistema. La propiedad contiene el conjunto completo. 
    /// </summary>
    property EmbeddedControllerMajorVersion:integer read FEmbeddedControllerMajorVersion write FEmbeddedControllerMajorVersion stored False;
    /// <summary>
    ///  La propiedad de matriz BIOSVersion contiene la información completa de System BIOS. En muchos equipos, 
    ///  puede haber varias cadenas de versiones almacenadas en el Registro representando la información BIOS 
    ///  del sistema. La propiedad contiene el conjunto completo. 
    /// </summary>
    property EmbeddedControllerMinorVersion:integer read FEmbeddedControllerMinorVersion write FEmbeddedControllerMinorVersion stored False;
    /// <summary>
    ///   El valor de esta propiedad es el identificador del fabricante para este elemento de software. Esto será 
    ///  con frecuencia una referencia de almacén (SKU) o un número de parte.
    /// </summary>
    property IdentificationCode:string read FIdentificationCode write FIdentificationCode stored False;
    /// <summary>
    ///  La propiedad InstallableLanguages indica el número de idiomas disponibles para instalar en este sistema. 
    ///  El idioma puede determinar propiedades como la necesidad de Unicode y texto en dos direcciones.
    /// </summary>
    property InstallableLanguages:integer read FInstallableLanguages write FInstallableLanguages stored False;
    /// <summary>
    ///  La propiedad InstallableLanguages indica el número de idiomas disponibles para instalar en este sistema. 
    ///  El idioma puede determinar propiedades como la necesidad de Unicode y texto en dos direcciones.
    /// </summary>
    property InstallDate:TDatetime read FInstallDate write FInstallDate stored False;
    /// <summary>
    ///  El valor de esta propiedad identifica la edición del lenguaje de este elemento de software. Se debe utilizar 
    ///  los códigos de lenguaje definidos en ISO 639 . Donde el elemento de software representa la versión multilingüe 
    ///  o internacional de un producto, la cadena multilingüe debe utilizarse.
    /// </summary>
    property LanguageEdition:string read FLanguageEdition write FLanguageEdition stored False;
    /// <summary>
    ///  La propiedad ListOfLanguages contiene una lista de nombres de idiomas de BIOS que se pueden instalar
    ///  .
    /// </summary>
    property ListOfLanguagesAsString:string read FListOfLanguagesAsString write FListOfLanguagesAsString stored False;
    /// <summary>
    ///  La propiedad ListOfLanguages contiene una lista de nombres de idiomas de BIOS que se pueden instalar
    ///  .
    /// </summary>
    property Manufacturer:string read FManufacturer write FManufacturer stored False;
    /// <summary>
    ///  La propiedad ListOfLanguages contiene una lista de nombres de idiomas de BIOS que se pueden instalar
    ///  .
    /// </summary>
    property Name:string read FName write FName stored False;
    /// <summary>
    ///   La propiedad OtherTargetOS registra el fabricante y el tipo de sistema operativo para un elemento de 
    ///  software cuando la propiedad TargetOperatingSystem tiene un valor de 1 ("Otros").  Por lo tanto, cuando 
    ///  la propiedad TargetOperatingSystem tiene un valor de  "Otros", La propiedad OtherTargetOS  debe tener 
    ///  un valor no nulo. Para los otros valores de TargetOperatingSystem, la propiedad OtherTargetOS tiene nulo. 
    /// </summary>
    property OtherTargetOS:string read FOtherTargetOS write FOtherTargetOS stored False;
    /// <summary>
    ///   La propiedad OtherTargetOS registra el fabricante y el tipo de sistema operativo para un elemento de 
    ///  software cuando la propiedad TargetOperatingSystem tiene un valor de 1 ("Otros").  Por lo tanto, cuando 
    ///  la propiedad TargetOperatingSystem tiene un valor de  "Otros", La propiedad OtherTargetOS  debe tener 
    ///  un valor no nulo. Para los otros valores de TargetOperatingSystem, la propiedad OtherTargetOS tiene nulo. 
    /// </summary>
    property PrimaryBIOS:boolean read FPrimaryBIOS write FPrimaryBIOS stored False;
    /// <summary>
    ///  La propiedad ReleaseDate indica la fecha de lanzamiento del BIOS de Win32 en formato de hora universal 
    ///  coordinada (UTC) AAAAMMDDHHMMSS.MMMMMM(+-)OOO.
    /// </summary>
    property ReleaseDate:TDatetime read FReleaseDate write FReleaseDate stored False;
    /// <summary>
    ///  La propiedad ReleaseDate indica la fecha de lanzamiento del BIOS de Win32 en formato de hora universal 
    ///  coordinada (UTC) AAAAMMDDHHMMSS.MMMMMM(+-)OOO.
    /// </summary>
    property SerialNumber:string read FSerialNumber write FSerialNumber stored False;
    /// <summary>
    ///  La propiedad SMBIOSBIOSVersion contiene la versión del BIOS de que informa SMBIOS.
    /// </summary>
    property SMBIOSBIOSVersion:string read FSMBIOSBIOSVersion write FSMBIOSBIOSVersion stored False;
    /// <summary>
    ///  La propiedad SMBIOSMajorVersion contiene el número de versión principal de SMBIOS. Esta propiedad será 
    ///  NULL si no se encuentra SMBIOS.
    /// </summary>
    property SMBIOSMajorVersion:integer read FSMBIOSMajorVersion write FSMBIOSMajorVersion stored False;
    /// <summary>
    ///  La propiedad SMBIOSMinorVersion contiene el número de versión secundaria de SMBIOS. Esta propiedad será 
    ///  NULL si no se encuentra SMBIOS.
    /// </summary>
    property SMBIOSMinorVersion:integer read FSMBIOSMinorVersion write FSMBIOSMinorVersion stored False;
    /// <summary>
    ///  La propiedad SMBIOSPresent indica si SMBIOS está disponible en este equipo.
    ///  Valores: TRUE o FALSE. Si 
    ///  es TRUE, SMBIOS está en el equipo.
    /// </summary>
    property SMBIOSPresent:boolean read FSMBIOSPresent write FSMBIOSPresent stored False;
    /// <summary>
    ///   Este es un identificador para este elemento de software y está diseñado para utilizarse en conjunto 
    ///  con otras claves para crear una representación única de este CIM_SoftwareElement
    /// </summary>
    property SoftwareElementID:string read FSoftwareElementID write FSoftwareElementID stored False;
    /// <summary>
    ///   SoftwareElementState se define en este modelo para identificar varios estados de un ciclo de vida de 
    ///  elementos de software. - Un elemento de software en estado implementable describe los detalles necesarios 
    ///  para distribuirlo y los detalles (condiciones y acciones) requeridos para crear  un elemento de software 
    ///  en el estado instalable (por ej., el siguiente estado).  - Un elemento de software en el estado instalable 
    ///  describe los detalles necesarios para instalarlo y los detalles (condiciones y acciones requeridas para 
    ///  crear un elemento de software en el estado ejecutable (por ej., el siguiente estado).  - Un elemento 
    ///  de software en el estado ejecutable describe los detalles necesarios para iniciarlo y los detalles (condiciones 
    ///  y acciones requeridas para crear un elemento de software en el estado de ejecución (por ej., el siguiente 
    ///  estado).  - Un elemento de software en el estado de ejecución describe los detalles necesarios para monitorizar 
    ///  y operar en un elemento de inicio.
    /// </summary>
    property SoftwareElementState:integer read FSoftwareElementState write FSoftwareElementState stored False;
    /// <summary>
    ///   SoftwareElementState se define en este modelo para identificar varios estados de un ciclo de vida de 
    ///  elementos de software. - Un elemento de software en estado implementable describe los detalles necesarios 
    ///  para distribuirlo y los detalles (condiciones y acciones) requeridos para crear  un elemento de software 
    ///  en el estado instalable (por ej., el siguiente estado).  - Un elemento de software en el estado instalable 
    ///  describe los detalles necesarios para instalarlo y los detalles (condiciones y acciones requeridas para 
    ///  crear un elemento de software en el estado ejecutable (por ej., el siguiente estado).  - Un elemento 
    ///  de software en el estado ejecutable describe los detalles necesarios para iniciarlo y los detalles (condiciones 
    ///  y acciones requeridas para crear un elemento de software en el estado de ejecución (por ej., el siguiente 
    ///  estado).  - Un elemento de software en el estado de ejecución describe los detalles necesarios para monitorizar 
    ///  y operar en un elemento de inicio.
    /// </summary>
    property Status:string read FStatus write FStatus stored False;
    /// <summary>
    ///   SoftwareElementState se define en este modelo para identificar varios estados de un ciclo de vida de 
    ///  elementos de software. - Un elemento de software en estado implementable describe los detalles necesarios 
    ///  para distribuirlo y los detalles (condiciones y acciones) requeridos para crear  un elemento de software 
    ///  en el estado instalable (por ej., el siguiente estado).  - Un elemento de software en el estado instalable 
    ///  describe los detalles necesarios para instalarlo y los detalles (condiciones y acciones requeridas para 
    ///  crear un elemento de software en el estado ejecutable (por ej., el siguiente estado).  - Un elemento 
    ///  de software en el estado ejecutable describe los detalles necesarios para iniciarlo y los detalles (condiciones 
    ///  y acciones requeridas para crear un elemento de software en el estado de ejecución (por ej., el siguiente 
    ///  estado).  - Un elemento de software en el estado de ejecución describe los detalles necesarios para monitorizar 
    ///  y operar en un elemento de inicio.
    /// </summary>
    property SystemBiosMajorVersion:integer read FSystemBiosMajorVersion write FSystemBiosMajorVersion stored False;
    /// <summary>
    ///   SoftwareElementState se define en este modelo para identificar varios estados de un ciclo de vida de 
    ///  elementos de software. - Un elemento de software en estado implementable describe los detalles necesarios 
    ///  para distribuirlo y los detalles (condiciones y acciones) requeridos para crear  un elemento de software 
    ///  en el estado instalable (por ej., el siguiente estado).  - Un elemento de software en el estado instalable 
    ///  describe los detalles necesarios para instalarlo y los detalles (condiciones y acciones requeridas para 
    ///  crear un elemento de software en el estado ejecutable (por ej., el siguiente estado).  - Un elemento 
    ///  de software en el estado ejecutable describe los detalles necesarios para iniciarlo y los detalles (condiciones 
    ///  y acciones requeridas para crear un elemento de software en el estado de ejecución (por ej., el siguiente 
    ///  estado).  - Un elemento de software en el estado de ejecución describe los detalles necesarios para monitorizar 
    ///  y operar en un elemento de inicio.
    /// </summary>
    property SystemBiosMinorVersion:integer read FSystemBiosMinorVersion write FSystemBiosMinorVersion stored False;
    /// <summary>
    ///  La propiedad TargetOperatingSystem permite al proveedor especificar el entorno de sistema operativo. 
    ///  El valor de esta propiedad no garantiza un ejecutable binario. Se necesitan otras dos piezas de información. 
    ///  La Primera, la versión del sistema operativo necesita ser especificada utilizando la comprobación de 
    ///  la versión de sistema operativo. La segunda pieza de información es la arquitectura en que se ejecuta 
    ///  el sistema operativo. La combinación de estas construcciones le permite al proveedor identificar claramente 
    ///  el nivel de sistema operativo requerido para un elemento de software en particular.
    /// </summary>
    property TargetOperatingSystem:integer read FTargetOperatingSystem write FTargetOperatingSystem stored False;
    /// <summary>
    ///  La propiedad Version contiene la versión de la BIOS. Esta cadena es creada el fabricante de la BIOS. 
    /// </summary>
    property Version:string read FVersion write FVersion stored False;
  end;

  {%InterfaceClass WMIClass%}
  /// <summary>
  ///  La clase Win32_BIOS representa los atributos del servicio de entrada y salida básico del sistema (BIOS, 
  ///  Basic Input/Output Service) instalado en el equipo.
  /// </summary>
  TBIOSInfo = class(TWMIBase)
  private
    FBIOSProperties: TBIOSProperties;
  protected
    //: Rellenar las propiedades.
    procedure FillProperties(aIndex:integer); override;
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

    {%InterfacePublicMethods WMIClass%}
  published
    {%InterfacePublishedPart WMIClass%}
    // propiedades de la BIOS
    property BIOSProperties:TBIOSProperties read   FBIOSProperties write FBIOSProperties;
  end;


// Constantes para la propiedad BiosCharacteristics
const 
  ENUM_STRING_BIOSCHARACTERISTICS_00 = 'Reservado';
  ENUM_STRING_BIOSCHARACTERISTICS_01 = 'Reservado';
  ENUM_STRING_BIOSCHARACTERISTICS_02 = 'Desconocido';
  ENUM_STRING_BIOSCHARACTERISTICS_03 = 'Características del BIOS no compatibles';
  ENUM_STRING_BIOSCHARACTERISTICS_04 = 'Compatible con ISA';
  ENUM_STRING_BIOSCHARACTERISTICS_05 = 'Compatible con MCA';
  ENUM_STRING_BIOSCHARACTERISTICS_06 = 'Compatible con EISA';
  ENUM_STRING_BIOSCHARACTERISTICS_07 = 'Compatible con PCI';
  ENUM_STRING_BIOSCHARACTERISTICS_08 = 'Compatible con PC Card (PCMCIA)';
  ENUM_STRING_BIOSCHARACTERISTICS_09 = 'Compatible con Plug and Play';
  ENUM_STRING_BIOSCHARACTERISTICS_10 = 'Compatible con APM';
  ENUM_STRING_BIOSCHARACTERISTICS_11 = 'Se puede actualizar el BIOS (Flash)';
  ENUM_STRING_BIOSCHARACTERISTICS_12 = 'Caché rápida de BIOS';
  ENUM_STRING_BIOSCHARACTERISTICS_13 = 'Compatible con VL-VESA';
  ENUM_STRING_BIOSCHARACTERISTICS_14 = 'La compatibilidad con ESCD está disponible';
  ENUM_STRING_BIOSCHARACTERISTICS_15 = 'Compatible con arranque desde CD';
  ENUM_STRING_BIOSCHARACTERISTICS_16 = 'Compatible con selección de arranque';
  ENUM_STRING_BIOSCHARACTERISTICS_17 = 'Se ha instalado ROM BIOS';
  ENUM_STRING_BIOSCHARACTERISTICS_18 = 'Compatible con arranque desde PC Card (PCMCIA)';
  ENUM_STRING_BIOSCHARACTERISTICS_19 = 'Compatible con la especificación de unidad de disco mejorada EDD (EDD, Enhanced Disk Drive)';
  ENUM_STRING_BIOSCHARACTERISTICS_20 = 'Int 13h: compatible con el disquete japonés para NEC 9800 1,2 MB (3.5", 1 KB/sector, 360 RPM)';
  ENUM_STRING_BIOSCHARACTERISTICS_21 = 'Int 13h: compatible con el disquete japonés para Toshiba 1,2 MB (3.5", 360 RPM)';
  ENUM_STRING_BIOSCHARACTERISTICS_22 = 'Int 13h: 5.25" / Compatible con los servicios de disquete de 360 KB';
  ENUM_STRING_BIOSCHARACTERISTICS_23 = 'Int 13h: 5.25" / Compatible con los servicios de disquete de 1,2 MB';
  ENUM_STRING_BIOSCHARACTERISTICS_24 = 'Int 13h: 3.5" / Compatible con los servicios de disquete de 720 KB';
  ENUM_STRING_BIOSCHARACTERISTICS_25 = 'Int 13h - 3,5" / Compatible con los servicios de disquete de 2,88 MB';
  ENUM_STRING_BIOSCHARACTERISTICS_26 = 'Int 5h, compatible con el servicio de impresión de pantalla';
  ENUM_STRING_BIOSCHARACTERISTICS_27 = 'Int 9h, compatible con los servicios de teclado 8042';
  ENUM_STRING_BIOSCHARACTERISTICS_28 = 'Int 14h, compatible con los servicios serie';
  ENUM_STRING_BIOSCHARACTERISTICS_29 = 'Int 17h, compatible con los servicios de impresora';
  ENUM_STRING_BIOSCHARACTERISTICS_30 = 'Int 10h, compatible con los servicios de vídeo CGA/Mono';
  ENUM_STRING_BIOSCHARACTERISTICS_31 = 'NEC PC-98';
  ENUM_STRING_BIOSCHARACTERISTICS_32 = 'Compatible con ACPI';
  ENUM_STRING_BIOSCHARACTERISTICS_33 = 'Compatible con USB heredado';
  ENUM_STRING_BIOSCHARACTERISTICS_34 = 'Compatible con AGP';
  ENUM_STRING_BIOSCHARACTERISTICS_35 = 'Compatible con el arranque desde I2O';
  ENUM_STRING_BIOSCHARACTERISTICS_36 = 'Compatible con el arranque desde LS-120';
  ENUM_STRING_BIOSCHARACTERISTICS_37 = 'Compatible con el arranque desde la unidad ZIP ATAPI';
  ENUM_STRING_BIOSCHARACTERISTICS_38 = 'Compatible con el arranque desde 1394';
  ENUM_STRING_BIOSCHARACTERISTICS_39 = 'Compatible con Smart Battery';

// Constantes para la propiedad SoftwareElementState
const 
  ENUM_STRING_SOFTWAREELEMENTSTATE_00 = 'Implementable';
  ENUM_STRING_SOFTWAREELEMENTSTATE_01 = 'Instalable';
  ENUM_STRING_SOFTWAREELEMENTSTATE_02 = 'Ejecución';
  ENUM_STRING_SOFTWAREELEMENTSTATE_03 = 'Activo';

// Constantes para la propiedad TargetOperatingSystem
const 
  ENUM_STRING_TARGETOPERATINGSYSTEM_00 = 'Desconocido';
  ENUM_STRING_TARGETOPERATINGSYSTEM_01 = 'Otros';
  ENUM_STRING_TARGETOPERATINGSYSTEM_02 = 'MACOS';
  ENUM_STRING_TARGETOPERATINGSYSTEM_03 = 'ATTUNIX';
  ENUM_STRING_TARGETOPERATINGSYSTEM_04 = 'DGUX';
  ENUM_STRING_TARGETOPERATINGSYSTEM_05 = 'DECNT';
  ENUM_STRING_TARGETOPERATINGSYSTEM_06 = 'Digital Unix';
  ENUM_STRING_TARGETOPERATINGSYSTEM_07 = 'OpenVMS';
  ENUM_STRING_TARGETOPERATINGSYSTEM_08 = 'HPUX';
  ENUM_STRING_TARGETOPERATINGSYSTEM_09 = 'AIX';
  ENUM_STRING_TARGETOPERATINGSYSTEM_10 = 'MVS';
  ENUM_STRING_TARGETOPERATINGSYSTEM_11 = 'OS400';
  ENUM_STRING_TARGETOPERATINGSYSTEM_12 = 'OS/2';
  ENUM_STRING_TARGETOPERATINGSYSTEM_13 = 'JAVAVM';
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
  ENUM_STRING_TARGETOPERATINGSYSTEM_27 = 'Sucesivo';
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
  ENUM_STRING_TARGETOPERATINGSYSTEM_44 = 'Hurd GNU';
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
  ENUM_STRING_TARGETOPERATINGSYSTEM_59 = 'Dedicado';
  ENUM_STRING_TARGETOPERATINGSYSTEM_60 = 'VSE';
  ENUM_STRING_TARGETOPERATINGSYSTEM_61 = 'TPF';

//=========================================================================
//
// I M P L E M E N T A T I O N
//
//=========================================================================
implementation

uses
  {Generales} Forms, Dialogs, Windows, SysUtils, WbemScripting_TLB,
  {GLibWMI} UProcedures, UConstantes, Types;

// Limpiar las propiedades
procedure TBIOSInfo.ClearProps;
begin
  Self.BIOSProperties.FBiosCharacteristicsCount := 0;
  Self.BIOSProperties.FBiosCharacteristicsAsString := EmptyStr;
  SetLength(BIOSProperties.FBiosCharacteristics, 0);
  Self.BIOSProperties.FBIOSVersionCount := 0;
  Self.BIOSProperties.FBIOSVersionAsString := EmptyStr;
  SetLength(BIOSProperties.FBIOSVersion, 0);
  Self.BIOSProperties.FBuildNumber := EmptyStr;
  Self.BIOSProperties.FCaption := EmptyStr;
  Self.BIOSProperties.FCodeSet := EmptyStr;
  Self.BIOSProperties.FCurrentLanguage := EmptyStr;
  Self.BIOSProperties.FDescription := EmptyStr;
  Self.BIOSProperties.FEmbeddedControllerMajorVersion := 0;
  Self.BIOSProperties.FEmbeddedControllerMinorVersion := 0;
  Self.BIOSProperties.FIdentificationCode := EmptyStr;
  Self.BIOSProperties.FInstallableLanguages := 0;
  Self.BIOSProperties.FInstallDate := 0;
  Self.BIOSProperties.FLanguageEdition := EmptyStr;
  Self.BIOSProperties.FListOfLanguagesCount := 0;
  Self.BIOSProperties.FListOfLanguagesAsString := EmptyStr;
  SetLength(BIOSProperties.FListOfLanguages, 0);
  Self.BIOSProperties.FManufacturer := EmptyStr;
  Self.BIOSProperties.FName := EmptyStr;
  Self.BIOSProperties.FOtherTargetOS := EmptyStr;
  Self.BIOSProperties.FPrimaryBIOS := False;
  Self.BIOSProperties.FReleaseDate := 0;
  Self.BIOSProperties.FSerialNumber := EmptyStr;
  Self.BIOSProperties.FSMBIOSBIOSVersion := EmptyStr;
  Self.BIOSProperties.FSMBIOSMajorVersion := 0;
  Self.BIOSProperties.FSMBIOSMinorVersion := 0;
  Self.BIOSProperties.FSMBIOSPresent := False;
  Self.BIOSProperties.FSoftwareElementID := EmptyStr;
  Self.BIOSProperties.FSoftwareElementState := 0;
  Self.BIOSProperties.FStatus := EmptyStr;
  Self.BIOSProperties.FSystemBiosMajorVersion := 0;
  Self.BIOSProperties.FSystemBiosMinorVersion := 0;
  Self.BIOSProperties.FTargetOperatingSystem := 0;
  Self.BIOSProperties.FVersion := EmptyStr;
end;

//: Constructor del componente
constructor TBIOSInfo.Create(AOwner: TComponent);
begin
  inherited;
  Self.FBIOSProperties := TBIOSProperties.Create();
  Self.MSDNHelp := 'https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-bios';
end;

//: destructor del componente
destructor TBIOSInfo.Destroy();
begin
  // liberar
  FreeAndNil(Self.FBIOSProperties);
  inherited;
end;

//: Obtener la clase
function TBIOSInfo.GetWMIClass(): string;
begin
  Result := 'Win32_BIOS'
end;

//: Obtener Root
function TBIOSInfo.GetWMIRoot(): string;
begin
  Result := '';
end;

//: Procedmiento de activación
procedure TBIOSInfo.SetActive(const Value: Boolean);
begin
  // método heredado
  inherited;
end;

// Acceso a los elementos de la propiedad <BiosCharacteristics>
function TBIOSProperties.GetBiosCharacteristics(index: integer):integer;
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
function TBIOSProperties.GetListOfLanguages(index: integer):string;
begin
  if (index >= Self.FListOfLanguagesCount) then begin
    Index := Self.FListOfLanguagesCount - 1;
  end;
  Result := Self.FListOfLanguages[index];
end;


//: Rellenar las propiedades del componente.
procedure TBIOSInfo.FillProperties(AIndex: integer);
var
  v:     variant;
  vNull: boolean;
  vp:    TBIOSProperties;
begin
  // Llamar al heredado (importante)
  inherited;
  // Rellenar propiedades...
  vp := BIOSProperties;

  GetWMIPropertyValue(Self, 'BiosCharacteristics', v, vNull);
  vp.FBiosCharacteristicsAsString := VariantStrValue(v, vNull);
  StringToArrayInteger(vp.FBiosCharacteristicsAsString, vp.FBiosCharacteristics);
  vp.FBiosCharacteristicsCount := Length(vp.FBiosCharacteristics);

  GetWMIPropertyValue(Self, 'BIOSVersion', v, vNull);
  vp.FBIOSVersionAsString := VariantStrValue(v, vNull);
  StringToArrayString(vp.FBIOSVersionAsString, vp.FBIOSVersion);
  vp.FBIOSVersionCount := Length(vp.FBIOSVersion);

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

  GetWMIPropertyValue(Self, 'EmbeddedControllerMajorVersion', v, vNull);
  vp.FEmbeddedControllerMajorVersion := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'EmbeddedControllerMinorVersion', v, vNull);
  vp.FEmbeddedControllerMinorVersion := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'IdentificationCode', v, vNull);
  vp.FIdentificationCode := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'InstallableLanguages', v, vNull);
  vp.FInstallableLanguages := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'InstallDate', v, vNull);
  vp.FInstallDate := VariantDateTimeValue(v, vNull);

  GetWMIPropertyValue(Self, 'LanguageEdition', v, vNull);
  vp.FLanguageEdition := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'ListOfLanguages', v, vNull);
  vp.FListOfLanguagesAsString := VariantStrValue(v, vNull);
  StringToArrayString(vp.FListOfLanguagesAsString, vp.FListOfLanguages);
  vp.FListOfLanguagesCount := Length(vp.FListOfLanguages);

  GetWMIPropertyValue(Self, 'Manufacturer', v, vNull);
  vp.FManufacturer := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Name', v, vNull);
  vp.FName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'OtherTargetOS', v, vNull);
  vp.FOtherTargetOS := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'PrimaryBIOS', v, vNull);
  vp.FPrimaryBIOS := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'ReleaseDate', v, vNull);
  vp.FReleaseDate := VariantDateTimeValue(v, vNull);

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

  GetWMIPropertyValue(Self, 'SystemBiosMajorVersion', v, vNull);
  vp.FSystemBiosMajorVersion := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'SystemBiosMinorVersion', v, vNull);
  vp.FSystemBiosMinorVersion := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'TargetOperatingSystem', v, vNull);
  vp.FTargetOperatingSystem := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Version', v, vNull);
  vp.FVersion := VariantStrValue(v, vNull);
end;


// Obtener la propiedad como string
function TBIOSProperties.GetAllBiosCharacteristicsAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_BIOSCHARACTERISTICS_00;
    01: Result := ENUM_STRING_BIOSCHARACTERISTICS_01;
    02: Result := ENUM_STRING_BIOSCHARACTERISTICS_02;
    03: Result := ENUM_STRING_BIOSCHARACTERISTICS_03;
    04: Result := ENUM_STRING_BIOSCHARACTERISTICS_04;
    05: Result := ENUM_STRING_BIOSCHARACTERISTICS_05;
    06: Result := ENUM_STRING_BIOSCHARACTERISTICS_06;
    07: Result := ENUM_STRING_BIOSCHARACTERISTICS_07;
    08: Result := ENUM_STRING_BIOSCHARACTERISTICS_08;
    09: Result := ENUM_STRING_BIOSCHARACTERISTICS_09;
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
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TBIOSProperties.GetAllSoftwareElementStateAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_SOFTWAREELEMENTSTATE_00;
    01: Result := ENUM_STRING_SOFTWAREELEMENTSTATE_01;
    02: Result := ENUM_STRING_SOFTWAREELEMENTSTATE_02;
    03: Result := ENUM_STRING_SOFTWAREELEMENTSTATE_03;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TBIOSProperties.GetAllTargetOperatingSystemAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_00;
    01: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_01;
    02: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_02;
    03: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_03;
    04: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_04;
    05: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_05;
    06: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_06;
    07: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_07;
    08: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_08;
    09: Result := ENUM_STRING_TARGETOPERATINGSYSTEM_09;
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


// Obtener núm. de elementos de la propiedad como string
function TBIOSProperties.GetAllBiosCharacteristicsCount:integer;
begin
  Result := 40
end;

// Obtener núm. de elementos de la propiedad como string
function TBIOSProperties.GetAllSoftwareElementStateCount:integer;
begin
  Result := 4
end;

// Obtener núm. de elementos de la propiedad como string
function TBIOSProperties.GetAllTargetOperatingSystemCount:integer;
begin
  Result := 62
end;


end.
