{
TOperatingSystemInfo Component Version 3.1 - Suite GLibWMI
Copyright (©) 2020,  by Germán Estévez (Neftalí)

La clase Win32_OperatingSystem representa un sistema operativo instalado en un sistema Win32. Los sistemas 
operativos que se pueden instalar en un sistema Win32 son descendientes (o miembros) de esta clase.
Ejemplo: 
Microsoft Windows 95.


Utilización/Usage:
(ES) Basta con "soltar" el componente y activarlo.
(EN) Place the component in the form and active it.

MSDN Info:
https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-operatingsystem

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
unit COperatingSystemInfo;

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
  TOperatingSystemProperties = class(TPersistent)
  private
    {%PrivateClassVars PropertiesClass%}
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
    FCurrentTimeZone:integer;
    FDataExecutionPrevention_32BitApplications:boolean;
    FDataExecutionPrevention_Available:boolean;
    FDataExecutionPrevention_Drivers:boolean;
    FDataExecutionPrevention_SupportPolicy:integer;
    FDebug:boolean;
    FDescription:string;
    FDistributed:boolean;
    FEncryptionLevel:integer;
    FForegroundApplicationBoost:integer;
    FFreePhysicalMemory:int64;
    FFreeSpaceInPagingFiles:int64;
    FFreeVirtualMemory:int64;
    FInstallDate:TDatetime;
    FLargeSystemCache:integer;
    FLastBootUpTime:TDatetime;
    FLocalDateTime:TDatetime;
    FLocale:string;
    FManufacturer:string;
    FMaxNumberOfProcesses:integer;
    FMaxProcessMemorySize:int64;
    FMUILanguages:TArrString;
    FMUILanguagesCount:integer;
    FMUILanguagesAsString:string;    FName:string;
    FNumberOfLicensedUsers:integer;
    FNumberOfProcesses:integer;
    FNumberOfUsers:integer;
    FOperatingSystemSKU:integer;
    FOrganization:string;
    FOSArchitecture:string;
    FOSLanguage:integer;
    FOSProductSuite:integer;
    FOSType:integer;
    FOtherTypeDescription:string;
    FPAEEnabled:boolean;
    FPlusProductID:string;
    FPlusVersionNumber:string;
    FPortableOperatingSystem:boolean;
    FPrimary:boolean;
    FProductType:integer;
    FRegisteredUser:string;
    FSerialNumber:string;
    FServicePackMajorVersion:integer;
    FServicePackMinorVersion:integer;
    FSizeStoredInPagingFiles:int64;
    FStatus:string;
    FSuiteMask:integer;
    FSystemDevice:string;
    FSystemDirectory:string;
    FSystemDrive:string;
    FTotalSwapSpaceSize:int64;
    FTotalVirtualMemorySize:int64;
    FTotalVisibleMemorySize:int64;
    FVersion:string;
    FWindowsDirectory:string;

  private
    {%PrivateGetMethods PropertiesClass%}
    function GetMUILanguages(index: integer):string;

  public
    {%PublicGetMethods PropertiesClass%}
    // Obtener la propiedad <DataExecutionPrevention_SupportPolicy> como string
    function GetAllDataExecutionPrevention_SupportPolicyAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <DataExecutionPrevention_SupportPolicy>
    function GetAllDataExecutionPrevention_SupportPolicyCount:integer;
    // Obtener la propiedad <EncryptionLevel> como string
    function GetAllEncryptionLevelAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <EncryptionLevel>
    function GetAllEncryptionLevelCount:integer;
    // Obtener la propiedad <ForegroundApplicationBoost> como string
    function GetAllForegroundApplicationBoostAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <ForegroundApplicationBoost>
    function GetAllForegroundApplicationBoostCount:integer;
    // Obtener la propiedad <LargeSystemCache> como string
    function GetAllLargeSystemCacheAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <LargeSystemCache>
    function GetAllLargeSystemCacheCount:integer;
    // Obtener la propiedad <OperatingSystemSKU> como string
    function GetAllOperatingSystemSKUAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <OperatingSystemSKU>
    function GetAllOperatingSystemSKUCount:integer;
    // Obtener la propiedad <OSType> como string
    function GetAllOSTypeAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <OSType>
    function GetAllOSTypeCount:integer;
    // Obtener la propiedad <ProductType> como string
    function GetAllProductTypeAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <ProductType>
    function GetAllProductTypeCount:integer;

    {%PublicArrayMethods PropertiesClass%}
    property MUILanguages[index:integer]:string read GetMUILanguages;
    property MUILanguagesCount:integer read FMUILanguagesCount stored False;

  published
    {%PublishedProperties PropertiesClass%}
    /// <summary>
    ///  La propiedad BootDevice indica el nombre de la unidad de disco desde la que arranca el sistema operativo 
    ///  Win32. 
    ///  Ejemplo: \\Device\Harddisk0.
    /// </summary>
    property BootDevice:string read FBootDevice write FBootDevice stored False;
    /// <summary>
    ///  La propiedad BuildNumber indica el número de versión del sistema operativo. Se puede utilizar para proporcionar 
    ///  información más precisa acerca de la versión que la que proporcionan los números de versión del producto
    ///  Ejemplo: 
    ///  1381
    /// </summary>
    property BuildNumber:string read FBuildNumber write FBuildNumber stored False;
    /// <summary>
    ///  La propiedad BuildType indica el tipo de versión utilizado en el sistema operativo. Ejemplos son las 
    ///  versiones comerciales y las versiones de comprobación.
    /// </summary>
    property BuildType:string read FBuildType write FBuildType stored False;
    /// <summary>
    ///  La propiedad BuildType indica el tipo de versión utilizado en el sistema operativo. Ejemplos son las 
    ///  versiones comerciales y las versiones de comprobación.
    /// </summary>
    property Caption:string read FCaption write FCaption stored False;
    /// <summary>
    ///  La propiedad CodeSet indica el valor de página de códigos que utiliza el sistema operativo. Una página 
    ///  de códigos contiene la tabla de caracteres que utiliza el sistema operativo para convertir cadenas de 
    ///  distintos idiomas. El American National Standards Institute (ANSI) enumera los valores que representan 
    ///  páginas de códigos definidas. Si el sistema operativo no utiliza una página de códigos ANSI, el valor 
    ///  se configurará como 0. La cadena CodeSet puede utilizar hasta seis caracteres para definir el valor de 
    ///  la página de códigos.
    ///  Ejemplo: 1255.
    /// </summary>
    property CodeSet:string read FCodeSet write FCodeSet stored False;
    /// <summary>
    ///  La propiedad CountryCode indica el código de país o región que utiliza el sistema operativo. Los valores 
    ///  se basan en prefijos telefónicos internacionales (también conocidos como códigos de país o región de 
    ///  IBM). La cadena CountryCode puede utilizar hasta seis caracteres para definir el valor del código de 
    ///  país o región.
    ///  Ejemplo: 1 para EE.UU.)
    /// </summary>
    property CountryCode:string read FCountryCode write FCountryCode stored False;
    /// <summary>
    ///  CreationClassName indica el nombre de la clase o subclase que se usa en la creación de una instancia. 
    ///  Cuando se usa con las demás propiedades clave de esta clase, esta propiedad permite que se identifiquen 
    ///  de manera única todas las instancias de esta clase y sus subclases.
    /// </summary>
    property CreationClassName:string read FCreationClassName write FCreationClassName stored False;
    /// <summary>
    ///  CSCreationClassName contiene el nombre de la clase de creación del sistema de ámbito.
    /// </summary>
    property CSCreationClassName:string read FCSCreationClassName write FCSCreationClassName stored False;
    /// <summary>
    ///  La propiedad CSDVersion contiene una cadena terminada en nulo, que indica la versión más reciente del 
    ///  Service Pack instalado en el equipo. Si no hay un Service Pack instalado, el valor de la cadena es NULL. 
    ///  En sistemas que ejecutan Windows 95, esta propiedad contiene una cadena terminada en nulo que proporciona 
    ///  información arbitraria adicional acerca del sistema operativo.
    ///  Ejemplo: Service Pack 3.
    /// </summary>
    property CSDVersion:string read FCSDVersion write FCSDVersion stored False;
    /// <summary>
    ///  La propiedad CSDVersion contiene una cadena terminada en nulo, que indica la versión más reciente del 
    ///  Service Pack instalado en el equipo. Si no hay un Service Pack instalado, el valor de la cadena es NULL. 
    ///  En sistemas que ejecutan Windows 95, esta propiedad contiene una cadena terminada en nulo que proporciona 
    ///  información arbitraria adicional acerca del sistema operativo.
    ///  Ejemplo: Service Pack 3.
    /// </summary>
    property CSName:string read FCSName write FCSName stored False;
    /// <summary>
    ///  CurrentTimeZone indica el número de minutos en que el sistema operativo está separado de la hora media 
    ///  de Greenwich. El número puede ser positivo, negativo o cero.
    /// </summary>
    property CurrentTimeZone:integer read FCurrentTimeZone write FCurrentTimeZone stored False;
    /// <summary>
    ///  Si es verdadero, indica que las aplicaciones de 32 bits se están ejecutando con la Prevención de ejecución 
    ///  de datos (DEP) aplicada. (es falso si DataExecutionPrevention_Available = false)
    /// </summary>
    property DataExecutionPrevention_32BitApplications:boolean read FDataExecutionPrevention_32BitApplications write FDataExecutionPrevention_32BitApplications stored False;
    /// <summary>
    ///  Si es verdadero, indica que el hardware es compatible con la tecnología de Prevención de ejecución de 
    ///  datos (DEP) de Windows. La DEP garantiza que todas las ubicaciones de memoria estén marcadas con el atributo 
    ///  de no ejecutable, a menos que la ubicación de memoria contenga explícitamente código ejecutable. Esto 
    ///  puede ayudar a reducir ciertas vulnerabilidades de  seguridad ocasionadas por desbordamientos de búfer. 
    ///  Si la DEP está disponible, las aplicaciones de 64 bits se protegen automáticamente. Use las propiedades 
    ///  DataExecutionPrevention_ para determinar para determinar si la DEP se habilitó para aplicaciones y controladores 
    ///  de 32 bits. 
    /// </summary>
    property DataExecutionPrevention_Available:boolean read FDataExecutionPrevention_Available write FDataExecutionPrevention_Available stored False;
    /// <summary>
    ///  Si es verdadero, indica que los controladores se están ejecutando con la Prevención de ejecución de datos 
    ///  (DEP) aplicada. (es falso si DataExecutionPrevention_Available = false)
    /// </summary>
    property DataExecutionPrevention_Drivers:boolean read FDataExecutionPrevention_Drivers write FDataExecutionPrevention_Drivers stored False;
    /// <summary>
    ///  DataExecutionPrevention_SupportPolicy indica cuál de las cuatro configuraciones de Prevención de ejecución 
    ///  de datos (DEP) se aplica. Cada configuración varía de acuerdo con la forma en que DEP se aplica a aplicaciones 
    ///  de 32 bits.  Tenga en cuenta que DEP siempre se aplica al kernel de Windows. Always On (no disponible 
    ///  en la interfaz de usuario) indica que DEP está habilitada para todas las aplicaciones de 32 bits en el 
    ///  equipo, sin excepciones. OptOut indica que DEP está activada de manera predeterminada para todas las 
    ///  aplicaciones de 32 bits, y que un usuario o administrador debe quitar explícitamente la compatibilidad 
    ///  con una aplicación de 32 bits agregándola a una lista de excepciones. OptIn indica que DEP está activada 
    ///  para un número limitado de binarios, el kernel y todos los servicios de Windows, pero desactivada de 
    ///  manera predeterminada para todas las aplicaciones de 32 bits; un usuario o administrador debe elegir 
    ///  explícitamente la configuración AlwaysOn (no disponible en la interfaz de usuario) u OptOut antes de 
    ///  que DEP pueda aplicarse a aplicaciones de 32 bits.  AlwaysOff (no disponible en la interfaz de usuario) 
    ///  indica que DEP está desactivada para todas las aplicaciones de 32 bits en el equipo. 
    /// </summary>
    property DataExecutionPrevention_SupportPolicy:integer read FDataExecutionPrevention_SupportPolicy write FDataExecutionPrevention_SupportPolicy stored False;
    /// <summary>
    ///  La propiedad Debug indica si el sistema operativo es una versión comprobada (depurada). Las versiones 
    ///  comprobadas proporcionan comprobación de errores, comprobación de argumentos y código de depuración del 
    ///  sistema. El código adicional en un archivo binario comprobado genera un mensaje de error del depurador 
    ///  de kernel y entra en el depurador. Así se ayuda a determinar inmediatamente la causa y ubicación del 
    ///  error. El rendimiento se resiente en una versión comprobada debido al código adicional que se ejecuta.
    ///  Valores: 
    ///  TRUE o FALSE. El valor TRUE indica que se ha instalado la versión de depuración de User.exe.
    /// </summary>
    property Debug:boolean read FDebug write FDebug stored False;
    /// <summary>
    ///  La propiedad Description proporciona una descripción del sistema operativo Windows. Algunas interfaces 
    ///  de usuario (las que permiten modificar esta descripción) limitan su longitud a 48 caracteres.
    /// </summary>
    property Description:string read FDescription write FDescription stored False;
    /// <summary>
    ///  Booleano que indica si el sistema operativo se distribuye a lo largo de varios nodos de equipo. Si es 
    ///  así, estos nodos deben ser agrupados en un clúster.
    /// </summary>
    property Distributed:boolean read FDistributed write FDistributed stored False;
    /// <summary>
    ///  La propiedad EncryptionLevel especifica si el nivel de cifrado para transacciones seguras es de 40 bits, 
    ///  128 bits o cifrado de n bits.
    /// </summary>
    property EncryptionLevel:integer read FEncryptionLevel write FEncryptionLevel stored False;
    /// <summary>
    ///  La propiedad ForegroundApplicationBoost indica el aumento de prioridad proporcionado a la aplicación 
    ///  en primer plano. En sistemas que ejecutan Windows NT 4.0 y Windows 2000, la mejora de aplicaciones se 
    ///  implementa al proporcionar a una aplicación más intervalos de tiempo de ejecución (longitudes de cuanto). 
    ///  El valor 0 de ForegroundApplicationBoost indica que el sistema aumenta la longitud de cuanto en 6, si 
    ///  el valor es 1 aumenta en 12 y si el valor es 2 aumenta en 18. En Windows NT 3.51 y anteriores, la mejora 
    ///  se implementa al aumentar la prioridad de programación. En estos sistemas, la prioridad de programación 
    ///  se aumenta en el valor de esta propiedad. El valor predeterminado es 2.
    /// </summary>
    property ForegroundApplicationBoost:integer read FForegroundApplicationBoost write FForegroundApplicationBoost stored False;
    /// <summary>
    ///  La propiedad ForegroundApplicationBoost indica el aumento de prioridad proporcionado a la aplicación 
    ///  en primer plano. En sistemas que ejecutan Windows NT 4.0 y Windows 2000, la mejora de aplicaciones se 
    ///  implementa al proporcionar a una aplicación más intervalos de tiempo de ejecución (longitudes de cuanto). 
    ///  El valor 0 de ForegroundApplicationBoost indica que el sistema aumenta la longitud de cuanto en 6, si 
    ///  el valor es 1 aumenta en 12 y si el valor es 2 aumenta en 18. En Windows NT 3.51 y anteriores, la mejora 
    ///  se implementa al aumentar la prioridad de programación. En estos sistemas, la prioridad de programación 
    ///  se aumenta en el valor de esta propiedad. El valor predeterminado es 2.
    /// </summary>
    property FreePhysicalMemory:int64 read FFreePhysicalMemory write FFreePhysicalMemory stored False;
    /// <summary>
    ///  El número total de Kbytes que se pueden asignar en los archivos de paginación sin causar que ninguna 
    ///  otra página se intercambie. 0 indica que no hay archivos de paginación.
    /// </summary>
    property FreeSpaceInPagingFiles:int64 read FFreeSpaceInPagingFiles write FFreeSpaceInPagingFiles stored False;
    /// <summary>
    ///  Número de kilobytes de memoria virtual actualmente no utilizado y disponible. Por ejemplo, se puede calcular 
    ///  agregando la cantidad de RAM libre a la cantidad de espacio de paginación libre (por ej., agregando propiedades, 
    ///  FreePhysicalMemory y FreeSpaceInPagingFiles).
    /// </summary>
    property FreeVirtualMemory:int64 read FFreeVirtualMemory write FFreeVirtualMemory stored False;
    /// <summary>
    ///  Número de kilobytes de memoria virtual actualmente no utilizado y disponible. Por ejemplo, se puede calcular 
    ///  agregando la cantidad de RAM libre a la cantidad de espacio de paginación libre (por ej., agregando propiedades, 
    ///  FreePhysicalMemory y FreeSpaceInPagingFiles).
    /// </summary>
    property InstallDate:TDatetime read FInstallDate write FInstallDate stored False;
    /// <summary>
    ///  La propiedad LargeSystemCache indica si se optimiza la memoria para aplicaciones (value=0) o para el 
    ///  rendimiento del sistema (value=1).
    /// </summary>
    property LargeSystemCache:integer read FLargeSystemCache write FLargeSystemCache stored False;
    /// <summary>
    ///  La propiedad LargeSystemCache indica si se optimiza la memoria para aplicaciones (value=0) o para el 
    ///  rendimiento del sistema (value=1).
    /// </summary>
    property LastBootUpTime:TDatetime read FLastBootUpTime write FLastBootUpTime stored False;
    /// <summary>
    ///  La propiedad LargeSystemCache indica si se optimiza la memoria para aplicaciones (value=0) o para el 
    ///  rendimiento del sistema (value=1).
    /// </summary>
    property LocalDateTime:TDatetime read FLocalDateTime write FLocalDateTime stored False;
    /// <summary>
    ///  La propiedad Locale indica el identificador de idioma que utiliza el sistema operativo. Un identificador 
    ///  de idioma es la abreviación numérica internacional estándar para un país o región geográfica. Cada idioma 
    ///  tiene un identificador de idioma único (LANGID) que es un valor de 16 bits compuesto por un identificador 
    ///  de idioma principal y un identificador de idioma secundario.
    /// </summary>
    property Locale:string read FLocale write FLocale stored False;
    /// <summary>
    ///  La propiedad Manufacturer indica el nombre del fabricante del sistema operativo. En sistemas Win32 este 
    ///  valor será Microsoft Corporation.
    /// </summary>
    property Manufacturer:string read FManufacturer write FManufacturer stored False;
    /// <summary>
    ///  Número máximo de contextos de procesos que el sistema operativo puede admitir. Si no hay una máximo fijo, 
    ///  el valor debe ser 0. En sistemas que tienen un máximo fijo, este objeto puede ayudar a diagnosticar errores 
    ///  ocurridos al alcanzar el máximo. Si se desconoce, escriba -1.
    /// </summary>
    property MaxNumberOfProcesses:integer read FMaxNumberOfProcesses write FMaxNumberOfProcesses stored False;
    /// <summary>
    ///  Número máximo de kilobytes de memoria que puede ser asignada a un proceso. Para sistemas operativos sin 
    ///  memoria virtual, este valor es habitualmente igual a la cantidad total de memoria física menos la memoria 
    ///  utilizada por el BIOS y OS. Para algunos sistemas operativos, este valor puede ser infinito - en este 
    ///  caso, se debe escribir 0. En otros casos, este valor puede ser una constante - por ejemplo, 2G o 4G.
    /// </summary>
    property MaxProcessMemorySize:int64 read FMaxProcessMemorySize write FMaxProcessMemorySize stored False;
    /// <summary>
    ///  La propiedad MUILanguages indica los idiomas MUI que están instalados en el sistema. 
    ///   Ejemplo: es-e
    ///  s.
    /// </summary>
    property MUILanguagesAsString:string read FMUILanguagesAsString write FMUILanguagesAsString stored False;
    /// <summary>
    ///  La propiedad MUILanguages indica los idiomas MUI que están instalados en el sistema. 
    ///   Ejemplo: es-e
    ///  s.
    /// </summary>
    property Name:string read FName write FName stored False;
    /// <summary>
    ///  Número de licencias de usuario para el sistema operativo. Si es ilimitado, escriba 0. Si se desconoce, 
    ///  escriba -1.
    /// </summary>
    property NumberOfLicensedUsers:integer read FNumberOfLicensedUsers write FNumberOfLicensedUsers stored False;
    /// <summary>
    ///  Número de licencias de usuario para el sistema operativo. Si es ilimitado, escriba 0. Si se desconoce, 
    ///  escriba -1.
    /// </summary>
    property NumberOfProcesses:integer read FNumberOfProcesses write FNumberOfProcesses stored False;
    /// <summary>
    ///  Número de sesiones por usuario para el que el sistema operativo almacena información
    /// </summary>
    property NumberOfUsers:integer read FNumberOfUsers write FNumberOfUsers stored False;
    /// <summary>
    ///  Número de sesiones por usuario para el que el sistema operativo almacena información
    /// </summary>
    property OperatingSystemSKU:integer read FOperatingSystemSKU write FOperatingSystemSKU stored False;
    /// <summary>
    ///  La propiedad Organization indica el nombre de la organización del usuario registrado (del sistema operativo).
    ///  Ejemplo: 
    ///  Microsoft Corporation.
    /// </summary>
    property Organization:string read FOrganization write FOrganization stored False;
    /// <summary>
    ///  La propiedad OSArchitecture indica la arquitectura del sistema operativo. Ejemplo: 32 bits, Intel de 
    ///  64 bits, AMD de 64 bits 
    /// </summary>
    property OSArchitecture:string read FOSArchitecture write FOSArchitecture stored False;
    /// <summary>
    ///  La propiedad OSLanguage indica la versión del idioma del sistema operativo que está instalada.
    ///  Ejemplo: 
    ///  0x0807 (alemán, suizo)
    /// </summary>
    property OSLanguage:integer read FOSLanguage write FOSLanguage stored False;
    /// <summary>
    ///  La propiedad OSProductSuite identifica los elementos adicionales instalados y con licencia del sistema 
    ///  operativo.
    /// </summary>
    property OSProductSuite:integer read FOSProductSuite write FOSProductSuite stored False;
    /// <summary>
    ///  La propiedad OSProductSuite identifica los elementos adicionales instalados y con licencia del sistema 
    ///  operativo.
    /// </summary>
    property OSType:integer read FOSType write FOSType stored False;
    /// <summary>
    ///  Una cadena que describe el fabricante y tipo de sistema operativo - utilizado cuando la propiedad OSType 
    ///  del sistema operativo, se establece como 1 ("Otros"). El formato de la cadena insertada en OtherTypeDescription 
    ///  debe ser similar en formato a las cadenas Values definidas para OSType.  OtherTypeDescription debe establecerse 
    ///  como nulo cuandoOSType es cualquier valor diferente de 1.
    /// </summary>
    property OtherTypeDescription:string read FOtherTypeDescription write FOtherTypeDescription stored False;
    /// <summary>
    ///  Una cadena que describe el fabricante y tipo de sistema operativo - utilizado cuando la propiedad OSType 
    ///  del sistema operativo, se establece como 1 ("Otros"). El formato de la cadena insertada en OtherTypeDescription 
    ///  debe ser similar en formato a las cadenas Values definidas para OSType.  OtherTypeDescription debe establecerse 
    ///  como nulo cuandoOSType es cualquier valor diferente de 1.
    /// </summary>
    property PAEEnabled:boolean read FPAEEnabled write FPAEEnabled stored False;
    /// <summary>
    ///  La propiedad PlusProductID contiene el número de identificación de producto del software de mejora del 
    ///  sistema operativo Windows Plus! (si está instalado).
    /// </summary>
    property PlusProductID:string read FPlusProductID write FPlusProductID stored False;
    /// <summary>
    ///  La propiedad PlusVersionNumber contiene el número de versión del software de mejora del sistema operativo 
    ///  Windows Plus! (si está instalado).
    /// </summary>
    property PlusVersionNumber:string read FPlusVersionNumber write FPlusVersionNumber stored False;
    /// <summary>
    ///  La propiedad PortableOperatingSystem indica si el sistema operativo arranca desde un dispositivo de almacenamiento 
    ///  conectado localmente compatible.
    ///  Valores: TRUE o FALSE, Un valor TRUE indica que el sistema operativo 
    ///  arrancó desde un dispositivo de almacenamiento conectado localmente compatible.
    /// </summary>
    property PortableOperatingSystem:boolean read FPortableOperatingSystem write FPortableOperatingSystem stored False;
    /// <summary>
    ///  La propiedad Primary determina si éste es el sistema operativo principal.
    ///  Valores: TRUE o FALSE. El valor 
    ///  TRUE indica que se trata del sistema operativo principal.
    /// </summary>
    property Primary:boolean read FPrimary write FPrimary stored False;
    /// <summary>
    ///  La propiedad ProductType ofrece información adicional acerca del sistema. Este miembro puede tener uno 
    ///  de los valores siguientes: 
    ///  1 - Estación de trabajo 
    ///  2 - Controlador de dominio
    ///  3 - Servidor
    /// </summary>
    property ProductType:integer read FProductType write FProductType stored False;
    /// <summary>
    ///  La propiedad RegisteredUser indica el nombre del usuario registrado del sistema operativo.
    ///  Ejemplo: Juan 
    ///  Santos
    /// </summary>
    property RegisteredUser:string read FRegisteredUser write FRegisteredUser stored False;
    /// <summary>
    ///  La propiedad SerialNumber indica el número de identificación de serie del producto del equipo.
    ///  Ejemp
    ///  lo:10497-OEM-0031416-71674.
    /// </summary>
    property SerialNumber:string read FSerialNumber write FSerialNumber stored False;
    /// <summary>
    ///  La propiedad ServicePackMajorVersion indica el número de versión principal del Service Pack instalado 
    ///  en el equipo. Si no hay un Service Pack instalado, el valor es cero. ServicePackMajorVersion es válido 
    ///  para equipos que ejecutan Windows 2000 y posteriores (en caso contrario, su valor es NULL).
    /// </summary>
    property ServicePackMajorVersion:integer read FServicePackMajorVersion write FServicePackMajorVersion stored False;
    /// <summary>
    ///  La propiedad ServicePackMinorVersion indica el número de versión secundaria del Service Pack instalado 
    ///  en el equipo. Si no hay un Service Pack instalado, el valor es cero. ServicePackMinorVersion es válido 
    ///  para equipos que ejecutan Windows 2000 y posteriores (en caso contrario, su valor es NULL).
    /// </summary>
    property ServicePackMinorVersion:integer read FServicePackMinorVersion write FServicePackMinorVersion stored False;
    /// <summary>
    ///  El número total de kilobytes que se pueden almacenar en los archivos de paginación del sistema operativo. 
    ///  Note que este número no representa el tamaño físico actual del archivo de paginación en disco. 0 indica 
    ///  que no hay archivos de paginación.
    /// </summary>
    property SizeStoredInPagingFiles:int64 read FSizeStoredInPagingFiles write FSizeStoredInPagingFiles stored False;
    /// <summary>
    ///  El número total de kilobytes que se pueden almacenar en los archivos de paginación del sistema operativo. 
    ///  Note que este número no representa el tamaño físico actual del archivo de paginación en disco. 0 indica 
    ///  que no hay archivos de paginación.
    /// </summary>
    property Status:string read FStatus write FStatus stored False;
    /// <summary>
    ///  La propiedad SuiteMask indica un conjunto de marcadores de bit que identifican los conjuntos de productos 
    ///  disponibles en el sistema. Pueden ser la combinación de los siguientes valores:  
    ///  0 - Windows Server 
    ///  2003, Small Business Edition 
    ///  1 - Windows Server 2003, Enterprise Edition 
    ///  2 - Windows Server 2003, Backoffice 
    ///  Edition 
    ///  3 - Windows Server 2003, Communications Edition 
    ///  4 - Microsoft Terminal Services 
    ///  5 - Windows 
    ///  Server 2003, Small Business Edition Restricted 
    ///  6 - Windows XP Embedded 
    ///  7 - Windows Server 2003, Datacenter 
    ///  Edition 
    ///  8 - Un sólo usuario 
    ///  9 - Windows XP Home Edition 
    ///  10 - Windows Server 2003, Web Edition
    /// </summary>
    property SuiteMask:integer read FSuiteMask write FSuiteMask stored False;
    /// <summary>
    ///  La propiedad SystemDevice indica la partición física del disco en que está instalado el sistema oper
    ///  ativo.
    /// </summary>
    property SystemDevice:string read FSystemDevice write FSystemDevice stored False;
    /// <summary>
    ///  La propiedad SystemDirectory indica el directorio de sistema del sistema operativo.
    ///  Ejemplo: C:\WIND
    ///  OWS\SYSTEM32
    /// </summary>
    property SystemDirectory:string read FSystemDirectory write FSystemDirectory stored False;
    /// <summary>
    ///  La propiedad SystemDrive contiene la letra de unidad de disco en la que reside el sistema operativo.
    ///  Ejemplo: 
    ///  C:
    /// </summary>
    property SystemDrive:string read FSystemDrive write FSystemDrive stored False;
    /// <summary>
    ///  Espacio total de intercambio, en kilobytes. Este valor puede ser nulo (no especificado) si el espacio 
    ///  de intercambio no se distingue de los archivos de paginación. Sin embargo, algunos sistemas operativos 
    ///  distinguen tales conceptos. Por ejemplo, se pueden "intercambiar" procesos enteros en UNIX cuando la 
    ///  lista de páginas disponibles cae y permanece por debajo de una cantidad específica.
    /// </summary>
    property TotalSwapSpaceSize:int64 read FTotalSwapSpaceSize write FTotalSwapSpaceSize stored False;
    /// <summary>
    ///  Número de kilobytes de memoria virtual. Por ejemplo, se puede calcular agregando la cantidad de RAM total 
    ///  a la cantidad de espacio de paginación (por ej., agregando la cantidad de memoria en o la agregada por 
    ///  el equipo), a la propiedad SizeStoredInPagingFiles.
    /// </summary>
    property TotalVirtualMemorySize:int64 read FTotalVirtualMemorySize write FTotalVirtualMemorySize stored False;
    /// <summary>
    ///  Número total de memoria física (en Kbytes) disponibles para OperatingSystem. Este valor no indica necesariamente 
    ///   la cantidad de memoria física real, sino la que se ha informado que está disponible para OperatingS
    ///  ystem.
    /// </summary>
    property TotalVisibleMemorySize:int64 read FTotalVisibleMemorySize write FTotalVisibleMemorySize stored False;
    /// <summary>
    ///  La propiedad Version indica el número de versión del sistema operativo.
    ///  Ejemplo: 4.0
    /// </summary>
    property Version:string read FVersion write FVersion stored False;
    /// <summary>
    ///  La propiedad WindowsDirectory indica el directorio de Windows del sistema operativo.
    ///  Ejemplo: C:\WIN
    ///  DOWS
    /// </summary>
    property WindowsDirectory:string read FWindowsDirectory write FWindowsDirectory stored False;
  end;

  {%InterfaceClass WMIClass%}
  /// <summary>
  ///  La clase Win32_OperatingSystem representa un sistema operativo instalado en un sistema Win32. Los sistemas 
  ///  operativos que se pueden instalar en un sistema Win32 son descendientes (o miembros) de esta clase.
  ///  Ejemplo: 
  ///  Microsoft Windows 95.
  /// </summary>
  TOperatingSystemInfo = class(TWMIBase)
  private
    FOperatingSystemProperties: TOperatingSystemProperties;
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

    {%InterfaceClassErrorcontrol WMIClass%}
    // Obtener <ErrorControl=Resultado> como string (0=Correcto)
    function GetErrorControlAsString(FErrorControl:integer):string; 

    {%InterfacePublicMethods WMIClass%}
    /// <summary>
    ///  El método Reboot apaga el sistema del equipo y lo vuelve a reiniciar. En equipos con Windows NT o Windows 
    ///  2000, el proceso que llame a este método deberá tener el privilegio SE_SHUTDOWN_NAME.
    ///  El método devuelve 
    ///  un valor entero que se puede interpretar como sigue: 
    ///  0 - Se completó correctamente.
    ///  Otros - Para obtener 
    ///  información sobre otros valores enteros distintos de los que se muestran en la lista anterior, consulte 
    ///  la documentación de códigos de error de win32.
    /// </summary>
    function Reboot(AInstanceProp:string; AInstanceValue:Variant):integer;
    /// <summary>
    ///  El método Shutdown descarga programas y DLLs al punto donde es seguro apagar el equipo. Todos los búferes 
    ///  de archivo se vacían al disco y, todos los procesos se detienen. En los equipos que ejecutan Windows 
    ///  NT/2000, el proceso de llamada debe tener  el privilegio SE_SHUTDOWN_NAME.
    ///  El método devuelve un valor 
    ///  entero que se puede interpretar como sigue: 
    ///  0 - Finalización correcta.
    ///  Otros - para valores enteros 
    ///  otros que no sean aquellos listados anteriormente, consulte la documentación del código de error de 
    ///  Win32.
    /// </summary>
    function Shutdown(AInstanceProp:string; AInstanceValue:Variant):integer;
    /// <summary>
    ///  El método Win32Shutdown proporciona el conjunto completo de opciones de apagado compatibles con los sistemas 
    ///  operativos Win32.
    ///  El método devuelve un valor entero que se puede interpretar como sigue: 
    ///  0 - Se completó 
    ///  correctamente.
    ///  Otros - Para obtener información sobre otros valores enteros distintos de los que se muestran 
    ///  en la lista anterior, consulte la documentación de códigos de error de win32.
    /// <param name="Win32Shutdown"> integer -  </param>
    /// <param name="Win32Shutdown"> integer -  </param>
    /// </summary>
    function Win32Shutdown(AInstanceProp:string; AInstanceValue:Variant;
      aFlags:integer;
      aReserved:integer):integer;
    /// <summary>
    ///  El método Win32ShutdownTracker proporciona el conjunto completo de opciones de apagado compatibles con 
    ///  los sistemas operativos Win32.
    ///   A diferencia del método Win32Shutdown, pueden especificarse comentarios, 
    ///  la razón del apagado y el tiempo de espera. El método devuelve un valor entero que se puede interpretar 
    ///  como sigue: 
    ///  0 - Finalizó correctamente.
    ///  Otros - Para obtener información sobre otros valores enteros 
    ///  distintos de los que se muestran en la lista anterior, consulte la documentación de códigos de error 
    ///  de Win32.
    /// <param name="Win32ShutdownTracker"> string -  </param>
    /// <param name="Win32ShutdownTracker"> integer -  </param>
    /// <param name="Win32ShutdownTracker"> integer -  </param>
    /// <param name="Win32ShutdownTracker"> integer -  </param>
    /// </summary>
    function Win32ShutdownTracker(AInstanceProp:string; AInstanceValue:Variant;
      aComment:string;
      aFlags:integer;
      aReasonCode:integer;
      aTimeout:integer):integer;
    /// <summary>
    ///  El método SetDateTime establece el tiempo actual del sistema en el equipo. En equipos con Windows NT 
    ///  o Windows 2000, el proceso que llame a este método deberá tener el privilegio SE_SYSTEMTIME_NAME.
    ///  El 
    ///  método devuelve un valor entero que se puede interpretar como sigue: 
    ///  0 - Se completó correctamente.
    ///  Otros 
    ///  - Para obtener información sobre otros valores enteros distintos de los que se muestran en la lista anterior, 
    ///  consulte la documentación de códigos de error de win32.
    /// <param name="SetDateTime"> TDatetime -  </param>
    /// </summary>
    function SetDateTime(AInstanceProp:string; AInstanceValue:Variant;
      aLocalDateTime:TDatetime):integer;
  published
    {%InterfacePublishedPart WMIClass%}
    // propiedades de la OperatingSystem
    property OperatingSystemProperties:TOperatingSystemProperties read   FOperatingSystemProperties write FOperatingSystemProperties;
  end;


// Constantes para la propiedad DataExecutionPrevention_SupportPolicy
const 
  ENUM_STRING_DATAEXECUTIONPREVENTION_SUPPORTPOLICY_00 = 'Siempre desactivado';
  ENUM_STRING_DATAEXECUTIONPREVENTION_SUPPORTPOLICY_01 = 'Always On';
  ENUM_STRING_DATAEXECUTIONPREVENTION_SUPPORTPOLICY_02 = 'Opt In';
  ENUM_STRING_DATAEXECUTIONPREVENTION_SUPPORTPOLICY_03 = 'Opt Out';

// Constantes para la propiedad EncryptionLevel
const 
  ENUM_STRING_ENCRYPTIONLEVEL_00 = '40-bits';
  ENUM_STRING_ENCRYPTIONLEVEL_01 = '128-bits';
  ENUM_STRING_ENCRYPTIONLEVEL_02 = 'n-bits';

// Constantes para la propiedad ForegroundApplicationBoost
const 
  ENUM_STRING_FOREGROUNDAPPLICATIONBOOST_00 = 'Ninguna';
  ENUM_STRING_FOREGROUNDAPPLICATIONBOOST_01 = 'Mínimo';
  ENUM_STRING_FOREGROUNDAPPLICATIONBOOST_02 = 'Máximo';

// Constantes para la propiedad LargeSystemCache
const 
  ENUM_STRING_LARGESYSTEMCACHE_00 = 'Optimizar para aplicaciones';
  ENUM_STRING_LARGESYSTEMCACHE_01 = 'Optimizar para rendimiento del sistema';

// Constantes para la propiedad OperatingSystemSKU
const 
  ENUM_STRING_OPERATINGSYSTEMSKU_00 = 'Sin definir';
  ENUM_STRING_OPERATINGSYSTEMSKU_01 = 'Ultimate Edition';
  ENUM_STRING_OPERATINGSYSTEMSKU_02 = 'Home Basic Edition';
  ENUM_STRING_OPERATINGSYSTEMSKU_03 = 'Home Premium Edition';
  ENUM_STRING_OPERATINGSYSTEMSKU_04 = 'Enterprise Edition';
  ENUM_STRING_OPERATINGSYSTEMSKU_05 = 'Home Basic N Edition';
  ENUM_STRING_OPERATINGSYSTEMSKU_06 = 'Business Edition';
  ENUM_STRING_OPERATINGSYSTEMSKU_07 = 'Standard Server Edition';
  ENUM_STRING_OPERATINGSYSTEMSKU_08 = 'Datacenter Server Edition';
  ENUM_STRING_OPERATINGSYSTEMSKU_09 = 'Small Business Server Edition';
  ENUM_STRING_OPERATINGSYSTEMSKU_10 = 'Enterprise Server Edition';
  ENUM_STRING_OPERATINGSYSTEMSKU_11 = 'Starter Edition';
  ENUM_STRING_OPERATINGSYSTEMSKU_12 = 'Datacenter Server Core Edition';
  ENUM_STRING_OPERATINGSYSTEMSKU_13 = 'Standard Server Core Edition';
  ENUM_STRING_OPERATINGSYSTEMSKU_14 = 'Enterprise Server Core Edition';
  ENUM_STRING_OPERATINGSYSTEMSKU_15 = 'Enterprise Server IA64 Edition';
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

// Constantes para la propiedad OSType
const 
  ENUM_STRING_OSTYPE_00 = 'Desconocido';
  ENUM_STRING_OSTYPE_01 = 'Otros';
  ENUM_STRING_OSTYPE_02 = 'MACOS';
  ENUM_STRING_OSTYPE_03 = 'ATTUNIX';
  ENUM_STRING_OSTYPE_04 = 'DGUX';
  ENUM_STRING_OSTYPE_05 = 'DECNT';
  ENUM_STRING_OSTYPE_06 = 'Digital Unix';
  ENUM_STRING_OSTYPE_07 = 'OpenVMS';
  ENUM_STRING_OSTYPE_08 = 'HPUX';
  ENUM_STRING_OSTYPE_09 = 'AIX';
  ENUM_STRING_OSTYPE_10 = 'MVS';
  ENUM_STRING_OSTYPE_11 = 'OS400';
  ENUM_STRING_OSTYPE_12 = 'OS/2';
  ENUM_STRING_OSTYPE_13 = 'JAVAVM';
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
  ENUM_STRING_OSTYPE_27 = 'Sucesivo';
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
  ENUM_STRING_OSTYPE_44 = 'Hurd GNU';
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
  ENUM_STRING_OSTYPE_58 = 'Windows 2000';
  ENUM_STRING_OSTYPE_59 = 'Dedicado';
  ENUM_STRING_OSTYPE_60 = 'OS/390';
  ENUM_STRING_OSTYPE_61 = 'VSE';
  ENUM_STRING_OSTYPE_62 = 'TPF';

// Constantes para la propiedad ProductType
const 
  ENUM_STRING_PRODUCTTYPE_00 = 'Estación de trabajo';
  ENUM_STRING_PRODUCTTYPE_01 = 'Controlador de dominio';
  ENUM_STRING_PRODUCTTYPE_02 = 'Servidor';

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
procedure TOperatingSystemInfo.ClearProps;
begin
  Self.OperatingSystemProperties.FBootDevice := EmptyStr;
  Self.OperatingSystemProperties.FBuildNumber := EmptyStr;
  Self.OperatingSystemProperties.FBuildType := EmptyStr;
  Self.OperatingSystemProperties.FCaption := EmptyStr;
  Self.OperatingSystemProperties.FCodeSet := EmptyStr;
  Self.OperatingSystemProperties.FCountryCode := EmptyStr;
  Self.OperatingSystemProperties.FCreationClassName := EmptyStr;
  Self.OperatingSystemProperties.FCSCreationClassName := EmptyStr;
  Self.OperatingSystemProperties.FCSDVersion := EmptyStr;
  Self.OperatingSystemProperties.FCSName := EmptyStr;
  Self.OperatingSystemProperties.FCurrentTimeZone := 0;
  Self.OperatingSystemProperties.FDataExecutionPrevention_32BitApplications := False;
  Self.OperatingSystemProperties.FDataExecutionPrevention_Available := False;
  Self.OperatingSystemProperties.FDataExecutionPrevention_Drivers := False;
  Self.OperatingSystemProperties.FDataExecutionPrevention_SupportPolicy := 0;
  Self.OperatingSystemProperties.FDebug := False;
  Self.OperatingSystemProperties.FDescription := EmptyStr;
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
  Self.OperatingSystemProperties.FLocale := EmptyStr;
  Self.OperatingSystemProperties.FManufacturer := EmptyStr;
  Self.OperatingSystemProperties.FMaxNumberOfProcesses := 0;
  Self.OperatingSystemProperties.FMaxProcessMemorySize := 0;
  Self.OperatingSystemProperties.FMUILanguagesCount := 0;
  Self.OperatingSystemProperties.FMUILanguagesAsString := EmptyStr;
  SetLength(OperatingSystemProperties.FMUILanguages, 0);
  Self.OperatingSystemProperties.FName := EmptyStr;
  Self.OperatingSystemProperties.FNumberOfLicensedUsers := 0;
  Self.OperatingSystemProperties.FNumberOfProcesses := 0;
  Self.OperatingSystemProperties.FNumberOfUsers := 0;
  Self.OperatingSystemProperties.FOperatingSystemSKU := 0;
  Self.OperatingSystemProperties.FOrganization := EmptyStr;
  Self.OperatingSystemProperties.FOSArchitecture := EmptyStr;
  Self.OperatingSystemProperties.FOSLanguage := 0;
  Self.OperatingSystemProperties.FOSProductSuite := 0;
  Self.OperatingSystemProperties.FOSType := 0;
  Self.OperatingSystemProperties.FOtherTypeDescription := EmptyStr;
  Self.OperatingSystemProperties.FPAEEnabled := False;
  Self.OperatingSystemProperties.FPlusProductID := EmptyStr;
  Self.OperatingSystemProperties.FPlusVersionNumber := EmptyStr;
  Self.OperatingSystemProperties.FPortableOperatingSystem := False;
  Self.OperatingSystemProperties.FPrimary := False;
  Self.OperatingSystemProperties.FProductType := 0;
  Self.OperatingSystemProperties.FRegisteredUser := EmptyStr;
  Self.OperatingSystemProperties.FSerialNumber := EmptyStr;
  Self.OperatingSystemProperties.FServicePackMajorVersion := 0;
  Self.OperatingSystemProperties.FServicePackMinorVersion := 0;
  Self.OperatingSystemProperties.FSizeStoredInPagingFiles := 0;
  Self.OperatingSystemProperties.FStatus := EmptyStr;
  Self.OperatingSystemProperties.FSuiteMask := 0;
  Self.OperatingSystemProperties.FSystemDevice := EmptyStr;
  Self.OperatingSystemProperties.FSystemDirectory := EmptyStr;
  Self.OperatingSystemProperties.FSystemDrive := EmptyStr;
  Self.OperatingSystemProperties.FTotalSwapSpaceSize := 0;
  Self.OperatingSystemProperties.FTotalVirtualMemorySize := 0;
  Self.OperatingSystemProperties.FTotalVisibleMemorySize := 0;
  Self.OperatingSystemProperties.FVersion := EmptyStr;
  Self.OperatingSystemProperties.FWindowsDirectory := EmptyStr;
end;

//: Constructor del componente
constructor TOperatingSystemInfo.Create(AOwner: TComponent);
begin
  inherited;
  Self.FOperatingSystemProperties := TOperatingSystemProperties.Create();
  Self.MSDNHelp := 'https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-operatingsystem';
end;

//: destructor del componente
destructor TOperatingSystemInfo.Destroy();
begin
  // liberar
  FreeAndNil(Self.FOperatingSystemProperties);
  inherited;
end;

//: Obtener la clase
function TOperatingSystemInfo.GetWMIClass(): string;
begin
  Result := 'Win32_OperatingSystem'
end;

//: Obtener Root
function TOperatingSystemInfo.GetWMIRoot(): string;
begin
  Result := '';
end;

//: Procedmiento de activación
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
  v:     variant;
  vNull: boolean;
  vp:    TOperatingSystemProperties;
begin
  // Llamar al heredado (importante)
  inherited;
  // Rellenar propiedades...
  vp := OperatingSystemProperties;

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

  GetWMIPropertyValue(Self, 'DataExecutionPrevention_32BitApplications', v, vNull);
  vp.FDataExecutionPrevention_32BitApplications := VariantBooleanValue(v, vNull);

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
  vp.FInstallDate := VariantDateTimeValue(v, vNull);

  GetWMIPropertyValue(Self, 'LargeSystemCache', v, vNull);
  vp.FLargeSystemCache := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'LastBootUpTime', v, vNull);
  vp.FLastBootUpTime := VariantDateTimeValue(v, vNull);

  GetWMIPropertyValue(Self, 'LocalDateTime', v, vNull);
  vp.FLocalDateTime := VariantDateTimeValue(v, vNull);

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
  StringToArrayString(vp.FMUILanguagesAsString, vp.FMUILanguages);
  vp.FMUILanguagesCount := Length(vp.FMUILanguages);

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

  GetWMIPropertyValue(Self, 'PortableOperatingSystem', v, vNull);
  vp.FPortableOperatingSystem := VariantBooleanValue(v, vNull);

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


// Obtener la propiedad como string
function TOperatingSystemProperties.GetAllDataExecutionPrevention_SupportPolicyAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_DATAEXECUTIONPREVENTION_SUPPORTPOLICY_00;
    01: Result := ENUM_STRING_DATAEXECUTIONPREVENTION_SUPPORTPOLICY_01;
    02: Result := ENUM_STRING_DATAEXECUTIONPREVENTION_SUPPORTPOLICY_02;
    03: Result := ENUM_STRING_DATAEXECUTIONPREVENTION_SUPPORTPOLICY_03;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TOperatingSystemProperties.GetAllEncryptionLevelAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_ENCRYPTIONLEVEL_00;
    01: Result := ENUM_STRING_ENCRYPTIONLEVEL_01;
    02: Result := ENUM_STRING_ENCRYPTIONLEVEL_02;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TOperatingSystemProperties.GetAllForegroundApplicationBoostAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_FOREGROUNDAPPLICATIONBOOST_00;
    01: Result := ENUM_STRING_FOREGROUNDAPPLICATIONBOOST_01;
    02: Result := ENUM_STRING_FOREGROUNDAPPLICATIONBOOST_02;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TOperatingSystemProperties.GetAllLargeSystemCacheAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_LARGESYSTEMCACHE_00;
    01: Result := ENUM_STRING_LARGESYSTEMCACHE_01;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TOperatingSystemProperties.GetAllOperatingSystemSKUAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_OPERATINGSYSTEMSKU_00;
    01: Result := ENUM_STRING_OPERATINGSYSTEMSKU_01;
    02: Result := ENUM_STRING_OPERATINGSYSTEMSKU_02;
    03: Result := ENUM_STRING_OPERATINGSYSTEMSKU_03;
    04: Result := ENUM_STRING_OPERATINGSYSTEMSKU_04;
    05: Result := ENUM_STRING_OPERATINGSYSTEMSKU_05;
    06: Result := ENUM_STRING_OPERATINGSYSTEMSKU_06;
    07: Result := ENUM_STRING_OPERATINGSYSTEMSKU_07;
    08: Result := ENUM_STRING_OPERATINGSYSTEMSKU_08;
    09: Result := ENUM_STRING_OPERATINGSYSTEMSKU_09;
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
function TOperatingSystemProperties.GetAllOSTypeAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_OSTYPE_00;
    01: Result := ENUM_STRING_OSTYPE_01;
    02: Result := ENUM_STRING_OSTYPE_02;
    03: Result := ENUM_STRING_OSTYPE_03;
    04: Result := ENUM_STRING_OSTYPE_04;
    05: Result := ENUM_STRING_OSTYPE_05;
    06: Result := ENUM_STRING_OSTYPE_06;
    07: Result := ENUM_STRING_OSTYPE_07;
    08: Result := ENUM_STRING_OSTYPE_08;
    09: Result := ENUM_STRING_OSTYPE_09;
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
    58: Result := ENUM_STRING_OSTYPE_58;
    59: Result := ENUM_STRING_OSTYPE_59;
    60: Result := ENUM_STRING_OSTYPE_60;
    61: Result := ENUM_STRING_OSTYPE_61;
    62: Result := ENUM_STRING_OSTYPE_62;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TOperatingSystemProperties.GetAllProductTypeAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_PRODUCTTYPE_00;
    01: Result := ENUM_STRING_PRODUCTTYPE_01;
    02: Result := ENUM_STRING_PRODUCTTYPE_02;
  else
    Result := STR_EMPTY;
  end;
end;


// Obtener núm. de elementos de la propiedad como string
function TOperatingSystemProperties.GetAllDataExecutionPrevention_SupportPolicyCount:integer;
begin
  Result := 4
end;

// Obtener núm. de elementos de la propiedad como string
function TOperatingSystemProperties.GetAllEncryptionLevelCount:integer;
begin
  Result := 3
end;

// Obtener núm. de elementos de la propiedad como string
function TOperatingSystemProperties.GetAllForegroundApplicationBoostCount:integer;
begin
  Result := 3
end;

// Obtener núm. de elementos de la propiedad como string
function TOperatingSystemProperties.GetAllLargeSystemCacheCount:integer;
begin
  Result := 2
end;

// Obtener núm. de elementos de la propiedad como string
function TOperatingSystemProperties.GetAllOperatingSystemSKUCount:integer;
begin
  Result := 26
end;

// Obtener núm. de elementos de la propiedad como string
function TOperatingSystemProperties.GetAllOSTypeCount:integer;
begin
  Result := 63
end;

// Obtener núm. de elementos de la propiedad como string
function TOperatingSystemProperties.GetAllProductTypeCount:integer;
begin
  Result := 3
end;

// Obtiene el resultado de ejecutar un método como string 
function TOperatingSystemInfo.GetErrorControlAsString(FErrorControl:integer): string; 
begin
   case FErrorControl of
     0: Result := 'Correcto';
     1: Result := 'Otros';
    else
      Result := EmptyStr
    end;
end;

function TOperatingSystemInfo.Reboot(AInstanceProp:string; AInstanceValue:Variant):integer;
var
  arr:TArrVariant;
  v:variant;
begin
  SetLength(arr, 0);
  // Ejecutar el proceso
  ExecuteClassMethod(Self, AInstanceProp, AInstanceValue,
    'Reboot',
    [],
    arr,
    [],
    [],
    v);
  Result := v;
end;

function TOperatingSystemInfo.Shutdown(AInstanceProp:string; AInstanceValue:Variant):integer;
var
  arr:TArrVariant;
  v:variant;
begin
  SetLength(arr, 0);
  // Ejecutar el proceso
  ExecuteClassMethod(Self, AInstanceProp, AInstanceValue,
    'Shutdown',
    [],
    arr,
    [],
    [],
    v);
  Result := v;
end;

function TOperatingSystemInfo.Win32Shutdown(AInstanceProp:string; AInstanceValue:Variant;
      aFlags:integer;
      aReserved:integer):integer;
var
  arr:TArrVariant;
  v:variant;
begin
  SetLength(arr, 2);
  arr[0] := aFlags;
  arr[1] := aReserved;
  // Ejecutar el proceso
  ExecuteClassMethod(Self, AInstanceProp, AInstanceValue,
    'Win32Shutdown',
    ['Flags', 'Reserved'],
    arr,
    [ptIn, ptIn],
    [wbemCIMTypeSint32, wbemCIMTypeSint32],
    v);
  Result := v;
end;

function TOperatingSystemInfo.Win32ShutdownTracker(AInstanceProp:string; AInstanceValue:Variant;
      aComment:string;
      aFlags:integer;
      aReasonCode:integer;
      aTimeout:integer):integer;
var
  arr:TArrVariant;
  v:variant;
begin
  SetLength(arr, 4);
  arr[0] := aComment;
  arr[1] := aFlags;
  arr[2] := aReasonCode;
  arr[3] := aTimeout;
  // Ejecutar el proceso
  ExecuteClassMethod(Self, AInstanceProp, AInstanceValue,
    'Win32ShutdownTracker',
    ['Comment', 'Flags', 'ReasonCode', 'Timeout'],
    arr,
    [ptIn, ptIn, ptIn, ptIn],
    [wbemCIMTypeString, wbemCIMTypeSint32, wbemCIMTypeUint32, wbemCIMTypeUint32],
    v);
  Result := v;
end;

function TOperatingSystemInfo.SetDateTime(AInstanceProp:string; AInstanceValue:Variant;
      aLocalDateTime:TDatetime):integer;
var
  arr:TArrVariant;
  v:variant;
begin
  SetLength(arr, 1);
  arr[0] := aLocalDateTime;
  // Ejecutar el proceso
  ExecuteClassMethod(Self, AInstanceProp, AInstanceValue,
    'SetDateTime',
    ['LocalDateTime'],
    arr,
    [ptIn],
    [wbemCIMTypeDatetime],
    v);
  Result := v;
end;

end.
