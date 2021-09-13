{
TComputerSystemInfo Component Version 3.1 - Suite GLibWMI
Copyright (©) 2020,  by Germán Estévez (Neftalí)

La clase Win32_ComputerSystem representa el sistema operativo de un equipo en un entorno Win32.


Utilización/Usage:
(ES) Basta con "soltar" el componente y activarlo.
(EN) Place the component in the form and active it.

MSDN Info:
https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-computersystem

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
unit CComputerSystemInfo;

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
  TComputerSystemProperties = class(TPersistent)
  private
    {%PrivateClassVars PropertiesClass%}
    FAdminPasswordStatus:integer;
    FAutomaticManagedPagefile:boolean;
    FAutomaticResetBootOption:boolean;
    FAutomaticResetCapability:boolean;
    FBootOptionOnLimit:integer;
    FBootOptionOnWatchDog:integer;
    FBootROMSupported:boolean;
    FBootStatus:TArrInteger;
    FBootStatusCount:integer;
    FBootStatusAsString:string;    FBootupState:string;
    FCaption:string;
    FChassisBootupState:integer;
    FChassisSKUNumber:string;
    FCreationClassName:string;
    FCurrentTimeZone:integer;
    FDaylightInEffect:boolean;
    FDescription:string;
    FDNSHostName:string;
    FDomain:string;
    FDomainRole:integer;
    FEnableDaylightSavingsTime:boolean;
    FFrontPanelResetStatus:integer;
    FHypervisorPresent:boolean;
    FInfraredSupported:boolean;
    FInitialLoadInfo:TArrString;
    FInitialLoadInfoCount:integer;
    FInitialLoadInfoAsString:string;    FInstallDate:TDatetime;
    FKeyboardPasswordStatus:integer;
    FLastLoadInfo:string;
    FManufacturer:string;
    FModel:string;
    FName:string;
    FNameFormat:string;
    FNetworkServerModeEnabled:boolean;
    FNumberOfLogicalProcessors:integer;
    FNumberOfProcessors:integer;
    FOEMLogoBitmap:TArrInteger;
    FOEMLogoBitmapCount:integer;
    FOEMLogoBitmapAsString:string;    FOEMStringArray:TArrString;
    FOEMStringArrayCount:integer;
    FOEMStringArrayAsString:string;    FPartOfDomain:boolean;
    FPauseAfterReset:int64;
    FPCSystemType:integer;
    FPCSystemTypeEx:integer;
    FPowerManagementCapabilities:TArrInteger;
    FPowerManagementCapabilitiesCount:integer;
    FPowerManagementCapabilitiesAsString:string;    FPowerManagementSupported:boolean;
    FPowerOnPasswordStatus:integer;
    FPowerState:integer;
    FPowerSupplyState:integer;
    FPrimaryOwnerContact:string;
    FPrimaryOwnerName:string;
    FResetCapability:integer;
    FResetCount:integer;
    FResetLimit:integer;
    FRoles:TArrString;
    FRolesCount:integer;
    FRolesAsString:string;    FStatus:string;
    FSupportContactDescription:TArrString;
    FSupportContactDescriptionCount:integer;
    FSupportContactDescriptionAsString:string;    FSystemFamily:string;
    FSystemSKUNumber:string;
    FSystemStartupDelay:integer;
    FSystemStartupOptions:TArrString;
    FSystemStartupOptionsCount:integer;
    FSystemStartupOptionsAsString:string;    FSystemStartupSetting:integer;
    FSystemType:string;
    FThermalState:integer;
    FTotalPhysicalMemory:int64;
    FUserName:string;
    FWakeUpType:integer;
    FWorkgroup:string;

  private
    {%PrivateGetMethods PropertiesClass%}
    function GetBootStatus(index: integer):integer;
    function GetInitialLoadInfo(index: integer):string;
    function GetOEMLogoBitmap(index: integer):integer;
    function GetOEMStringArray(index: integer):string;
    function GetPowerManagementCapabilities(index: integer):integer;
    function GetRoles(index: integer):string;
    function GetSupportContactDescription(index: integer):string;
    function GetSystemStartupOptions(index: integer):string;

  public
    {%PublicGetMethods PropertiesClass%}
    // Obtener la propiedad <AdminPasswordStatus> como string
    function GetAllAdminPasswordStatusAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <AdminPasswordStatus>
    function GetAllAdminPasswordStatusCount:integer;
    // Obtener la propiedad <BootOptionOnLimit> como string
    function GetAllBootOptionOnLimitAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <BootOptionOnLimit>
    function GetAllBootOptionOnLimitCount:integer;
    // Obtener la propiedad <BootOptionOnWatchDog> como string
    function GetAllBootOptionOnWatchDogAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <BootOptionOnWatchDog>
    function GetAllBootOptionOnWatchDogCount:integer;
    // Obtener la propiedad <BootupState> como string
    function GetAllBootupStateAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <BootupState>
    function GetAllBootupStateCount:integer;
    // Obtener la propiedad <ChassisBootupState> como string
    function GetAllChassisBootupStateAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <ChassisBootupState>
    function GetAllChassisBootupStateCount:integer;
    // Obtener la propiedad <DomainRole> como string
    function GetAllDomainRoleAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <DomainRole>
    function GetAllDomainRoleCount:integer;
    // Obtener la propiedad <FrontPanelResetStatus> como string
    function GetAllFrontPanelResetStatusAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <FrontPanelResetStatus>
    function GetAllFrontPanelResetStatusCount:integer;
    // Obtener la propiedad <KeyboardPasswordStatus> como string
    function GetAllKeyboardPasswordStatusAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <KeyboardPasswordStatus>
    function GetAllKeyboardPasswordStatusCount:integer;
    // Obtener la propiedad <NameFormat> como string
    function GetAllNameFormatAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <NameFormat>
    function GetAllNameFormatCount:integer;
    // Obtener la propiedad <PCSystemType> como string
    function GetAllPCSystemTypeAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <PCSystemType>
    function GetAllPCSystemTypeCount:integer;
    // Obtener la propiedad <PCSystemTypeEx> como string
    function GetAllPCSystemTypeExAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <PCSystemTypeEx>
    function GetAllPCSystemTypeExCount:integer;
    // Obtener la propiedad <PowerManagementCapabilities> como string
    function GetAllPowerManagementCapabilitiesAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <PowerManagementCapabilities>
    function GetAllPowerManagementCapabilitiesCount:integer;
    // Obtener la propiedad <PowerOnPasswordStatus> como string
    function GetAllPowerOnPasswordStatusAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <PowerOnPasswordStatus>
    function GetAllPowerOnPasswordStatusCount:integer;
    // Obtener la propiedad <PowerState> como string
    function GetAllPowerStateAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <PowerState>
    function GetAllPowerStateCount:integer;
    // Obtener la propiedad <PowerSupplyState> como string
    function GetAllPowerSupplyStateAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <PowerSupplyState>
    function GetAllPowerSupplyStateCount:integer;
    // Obtener la propiedad <ResetCapability> como string
    function GetAllResetCapabilityAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <ResetCapability>
    function GetAllResetCapabilityCount:integer;
    // Obtener la propiedad <SystemType> como string
    function GetAllSystemTypeAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <SystemType>
    function GetAllSystemTypeCount:integer;
    // Obtener la propiedad <ThermalState> como string
    function GetAllThermalStateAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <ThermalState>
    function GetAllThermalStateCount:integer;
    // Obtener la propiedad <WakeUpType> como string
    function GetAllWakeUpTypeAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <WakeUpType>
    function GetAllWakeUpTypeCount:integer;

    {%PublicArrayMethods PropertiesClass%}
    property BootStatus[index:integer]:integer read GetBootStatus;
    property BootStatusCount:integer read FBootStatusCount stored False;
    property InitialLoadInfo[index:integer]:string read GetInitialLoadInfo;
    property InitialLoadInfoCount:integer read FInitialLoadInfoCount stored False;
    property OEMLogoBitmap[index:integer]:integer read GetOEMLogoBitmap;
    property OEMLogoBitmapCount:integer read FOEMLogoBitmapCount stored False;
    property OEMStringArray[index:integer]:string read GetOEMStringArray;
    property OEMStringArrayCount:integer read FOEMStringArrayCount stored False;
    property PowerManagementCapabilities[index:integer]:integer read GetPowerManagementCapabilities;
    property PowerManagementCapabilitiesCount:integer read FPowerManagementCapabilitiesCount stored False;
    property Roles[index:integer]:string read GetRoles;
    property RolesCount:integer read FRolesCount stored False;
    property SupportContactDescription[index:integer]:string read GetSupportContactDescription;
    property SupportContactDescriptionCount:integer read FSupportContactDescriptionCount stored False;
    property SystemStartupOptions[index:integer]:string read GetSystemStartupOptions;
    property SystemStartupOptionsCount:integer read FSystemStartupOptionsCount stored False;

  published
    {%PublishedProperties PropertiesClass%}
    /// <summary>
    ///  La propiedad AdminPasswordStatus identifica la configuración de seguridad hardware en todo el sistema 
    ///  para el estado de contraseña de administrador.
    /// </summary>
    property AdminPasswordStatus:integer read FAdminPasswordStatus write FAdminPasswordStatus stored False;
    /// <summary>
    ///  La propiedad AutomaticManagedPagefile determina si está habilitado el archivo de paginación administrado 
    ///  del sistema. Esta capacidad no está disponible en Windows Server 2003, XP y versiones anteriores.
    ///  Valores: 
    ///  TRUE o FALSE. Si es TRUE, el archivo de paginación administrado está habilitado.
    /// </summary>
    property AutomaticManagedPagefile:boolean read FAutomaticManagedPagefile write FAutomaticManagedPagefile stored False;
    /// <summary>
    ///  La propiedad AutomaticResetBootOption determina si el arranque automático está habilitado; es decir, 
    ///  si el equipo tratará de reiniciar después de un error del sistema.
    ///   Valores: TRUE o FALSE. Si es valor 
    ///  es TRUE, la opción de arranque automático está habilitada.
    /// </summary>
    property AutomaticResetBootOption:boolean read FAutomaticResetBootOption write FAutomaticResetBootOption stored False;
    /// <summary>
    ///  La propiedad AutomaticResetCapability determina si la característica de reinicio automático está disponible 
    ///  en este equipo. Esta capacidad está disponible en Windows NT pero no en Windows 95.
    ///  Valores: TRUE o FALSE. 
    ///  Si es TRUE, el arranque automático está habilitado.
    /// </summary>
    property AutomaticResetCapability:boolean read FAutomaticResetCapability write FAutomaticResetCapability stored False;
    /// <summary>
    ///  Boot Option on Limit (Opción de arranque en límite). Identifica la acción del sistema que se emprenderá 
    ///  cuando se alcance el límite de restablecimientos.
    /// </summary>
    property BootOptionOnLimit:integer read FBootOptionOnLimit write FBootOptionOnLimit stored False;
    /// <summary>
    ///  La propiedad BootOptionOnWatchDog indica el tipo de acción de reinicio que se emprenderá al transcurrir 
    ///  el tiempo del temporizador de vigilancia.
    /// </summary>
    property BootOptionOnWatchDog:integer read FBootOptionOnWatchDog write FBootOptionOnWatchDog stored False;
    /// <summary>
    ///  La propiedad BootROMSupported determina si se admite una memoria ROM de arranque.
    ///  Los valores son TRUE 
    ///  o FALSE. Si la memoria de arranque ROM compatible es TRUE, se admite dicha memoria.
    /// </summary>
    property BootROMSupported:boolean read FBootROMSupported write FBootROMSupported stored False;
    /// <summary>
    ///  La propiedad BootROMSupported determina si se admite una memoria ROM de arranque.
    ///  Los valores son TRUE 
    ///  o FALSE. Si la memoria de arranque ROM compatible es TRUE, se admite dicha memoria.
    /// </summary>
    property BootStatusAsString:string read FBootStatusAsString write FBootStatusAsString stored False;
    /// <summary>
    ///  La propiedad BootupState especifica cómo se inició el sistema. El arranque a prueba de errores (SafeBoot) 
    ///  pasa por alto los archivos de inicio del usuario. 
    ///  Restricciones: se debe proporcionar un valor.
    /// </summary>
    property BootupState:string read FBootupState write FBootupState stored False;
    /// <summary>
    ///  La propiedad BootupState especifica cómo se inició el sistema. El arranque a prueba de errores (SafeBoot) 
    ///  pasa por alto los archivos de inicio del usuario. 
    ///  Restricciones: se debe proporcionar un valor.
    /// </summary>
    property Caption:string read FCaption write FCaption stored False;
    /// <summary>
    ///  La propiedad BootupState especifica cómo se inició el sistema. El arranque a prueba de errores (SafeBoot) 
    ///  pasa por alto los archivos de inicio del usuario. 
    ///  Restricciones: se debe proporcionar un valor.
    /// </summary>
    property ChassisBootupState:integer read FChassisBootupState write FChassisBootupState stored False;
    /// <summary>
    ///  Número de cadena terminada en null que describe el número de SKU del chasis o cabina
    /// </summary>
    property ChassisSKUNumber:string read FChassisSKUNumber write FChassisSKUNumber stored False;
    /// <summary>
    ///  La propiedad CreationClassName indica el nombre de la clase o de la subclase usada en la creación de 
    ///  una instancia. Al usarse con las demás propiedades clave de esta clase, esta propiedad permite que todas 
    ///  las instancias de esta clase y sus subclases estén especialmente identificadas.
    /// </summary>
    property CreationClassName:string read FCreationClassName write FCreationClassName stored False;
    /// <summary>
    ///  La propiedad CurrentTimeZone indica la cantidad de tiempo que el equipo unitario no está sincronizado 
    ///  con respecto a la hora universal coordinada.
    /// </summary>
    property CurrentTimeZone:integer read FCurrentTimeZone write FCurrentTimeZone stored False;
    /// <summary>
    ///  La propiedad DaylightInEffect especifica si  el horario de verano está en efecto. 
    ///  Valores: TRUE o FALSE. 
    ///  Si es TRUE, se está observando el horario de verano actualmente. En la mayoría de los casos la hora actual 
    ///  es una hora menos que la hora estándar.
    /// </summary>
    property DaylightInEffect:boolean read FDaylightInEffect write FDaylightInEffect stored False;
    /// <summary>
    ///  La propiedad DaylightInEffect especifica si  el horario de verano está en efecto. 
    ///  Valores: TRUE o FALSE. 
    ///  Si es TRUE, se está observando el horario de verano actualmente. En la mayoría de los casos la hora actual 
    ///  es una hora menos que la hora estándar.
    /// </summary>
    property Description:string read FDescription write FDescription stored False;
    /// <summary>
    ///  La propiedad DaylightInEffect especifica si  el horario de verano está en efecto. 
    ///  Valores: TRUE o FALSE. 
    ///  Si es TRUE, se está observando el horario de verano actualmente. En la mayoría de los casos la hora actual 
    ///  es una hora menos que la hora estándar.
    /// </summary>
    property DNSHostName:string read FDNSHostName write FDNSHostName stored False;
    /// <summary>
    ///  La propiedad DaylightInEffect especifica si  el horario de verano está en efecto. 
    ///  Valores: TRUE o FALSE. 
    ///  Si es TRUE, se está observando el horario de verano actualmente. En la mayoría de los casos la hora actual 
    ///  es una hora menos que la hora estándar.
    /// </summary>
    property Domain:string read FDomain write FDomain stored False;
    /// <summary>
    ///  La propiedad DomainRole indica el rol que desempeña este equipo dentro de su grupo de trabajo en el dominio 
    ///  asignado. El grupo de trabajo del dominio es una colección de equipos de la misma red. Por ejemplo, la 
    ///  propiedad DomainRole puede mostrar que este equipo es una "Estación de trabajo miembro" (valor [1]).
    /// </summary>
    property DomainRole:integer read FDomainRole write FDomainRole stored False;
    /// <summary>
    ///  La propiedad EnableDaylightSavings indica si el ajuste para el horario de verano es reconocido por este 
    ///  equipo. Si el valor es FALSE, la hora no se adelanta ni se atrasa durante el año. Si el valor es NULL, 
    ///  el estado del ajuste no es reconocido por el sistema.
    /// </summary>
    property EnableDaylightSavingsTime:boolean read FEnableDaylightSavingsTime write FEnableDaylightSavingsTime stored False;
    /// <summary>
    ///  La propiedad FrontPanelResetStatus identifica la configuración de seguridad hardware para el botón de 
    ///  restablecimiento del equipo.
    /// </summary>
    property FrontPanelResetStatus:integer read FFrontPanelResetStatus write FFrontPanelResetStatus stored False;
    /// <summary>
    ///  La propiedad HypervisorPresent determina si el sistema se está ejecutando en un hipervisor que sigue 
    ///  la convención estándar de la industria para notificar si hay un hipervisor presente.
    ///  Valores: TRUE o 
    ///  FALSE. Si es TRUE, hay un hipervisor presente.
    /// </summary>
    property HypervisorPresent:boolean read FHypervisorPresent write FHypervisorPresent stored False;
    /// <summary>
    ///  La propiedad InfraredSupported determina si existe un puerto de infrarrojos (IR) en el equipo.
    ///  Los valores 
    ///  son TRUE o FALSE. Si el valor de la propiedad es TRUE, entonces existe un puerto IR.
    /// </summary>
    property InfraredSupported:boolean read FInfraredSupported write FInfraredSupported stored False;
    /// <summary>
    ///  Este objeto contiene los datos necesarios para localizar el dispositivo de carga inicial (su clave) o 
    ///  el servicio de arranque para solicitar que se inicie el sistema operativo. Además, es posible especificar 
    ///  los parámetros de carga (es decir, un nombre de ruta de acceso y los parámetros).
    /// </summary>
    property InitialLoadInfoAsString:string read FInitialLoadInfoAsString write FInitialLoadInfoAsString stored False;
    /// <summary>
    ///  Este objeto contiene los datos necesarios para localizar el dispositivo de carga inicial (su clave) o 
    ///  el servicio de arranque para solicitar que se inicie el sistema operativo. Además, es posible especificar 
    ///  los parámetros de carga (es decir, un nombre de ruta de acceso y los parámetros).
    /// </summary>
    property InstallDate:TDatetime read FInstallDate write FInstallDate stored False;
    /// <summary>
    ///  La propiedad KeyboardPasswordStatus identifica la configuración de seguridad hardware en todo el sistema 
    ///  para el estado de contraseña de teclado.
    /// </summary>
    property KeyboardPasswordStatus:integer read FKeyboardPasswordStatus write FKeyboardPasswordStatus stored False;
    /// <summary>
    ///  Este objeto contiene los datos que identifican el dispositivo de carga inicial (su clave) o el servicio 
    ///  de arranque que solicitó la última carga del sistema operativo. Además, es posible especificar los parámetros 
    ///  de carga (es decir, el nombre de la ruta de acceso y los parámetros).
    /// </summary>
    property LastLoadInfo:string read FLastLoadInfo write FLastLoadInfo stored False;
    /// <summary>
    ///  La propiedad Manufacturer indica el nombre del fabricante del equipo.
    ///  Ejemplo: Acme
    /// </summary>
    property Manufacturer:string read FManufacturer write FManufacturer stored False;
    /// <summary>
    ///  La propiedad Model indica el nombre de producto del equipo dado por el fabricante.
    /// </summary>
    property Model:string read FModel write FModel stored False;
    /// <summary>
    ///  La propiedad Name define la etiqueta por la que se conoce el objeto. Cuando se incluye en una subclase, 
    ///  la propiedad Name puede ser invalidada como si se tratara de una propiedad Key.
    /// </summary>
    property Name:string read FName write FName stored False;
    /// <summary>
    ///  El objeto CIM_ComputerSystem y sus derivados son objetos de alto nivel de CIM. Éstos proporcionan el 
    ///  ámbito para numerosos componentes. Se requiere tener claves CIM_System únicas. Se define una heurística 
    ///  para crear el nombre CIM_ComputerSystem para intentar generar siempre el mismo nombre, independiente 
    ///  del protocolo de detección. Esto evita problemas de inventario y administración donde se detecta muchas 
    ///  veces el mismo activo o entidad, pero no se pueden resolver en un único objeto. El uso de la heurística 
    ///  es opcional, pero se recomienda. 
    ///   La propiedad NameFormat identifica cómo se genera el nombre del equipo, 
    ///  usando una heurística. La heurística se describe, en detalle, en la especificación del modelo común CIM 
    ///  V2. Éste supone que las reglas documentadas se recorren en orden para determinar y asignar un nombre. 
    ///  La lista de valores NameFormat define el orden de precedencia para asignar el nombre del equipo. Varias 
    ///  reglas se aplican al mismo valor. 
    ///   Note que la propiedad CIM_ComputerSystem Name calculada usando la 
    ///  heurística es el valor clave del sistema. Se pueden asignar y usar otros nombres para la propiedad CIM_ComputerSystem, 
    ///  que mejor se ajuste a la empresa, usando alias.
    /// </summary>
    property NameFormat:string read FNameFormat write FNameFormat stored False;
    /// <summary>
    ///  La propiedad NetworkServerModeEnabled determina si está habilitado o no el modo de servidor de red.
    ///  Valores: 
    ///  TRUE o FALSE. Si es TRUE, se habilita el modo.
    /// </summary>
    property NetworkServerModeEnabled:boolean read FNetworkServerModeEnabled write FNetworkServerModeEnabled stored False;
    /// <summary>
    ///  La propiedad NumberOfLogicalProcessors indica el número de procesadores lógicos que están disponibles 
    ///  en el sistema.
    /// </summary>
    property NumberOfLogicalProcessors:integer read FNumberOfLogicalProcessors write FNumberOfLogicalProcessors stored False;
    /// <summary>
    ///  La propiedad NumberOfProcessors indica el número de procesadores físicos disponibles actualmente en el 
    ///  sistema. Se trata del número de procesadores cuyo estado es "habilitado", frente al número de procesadores 
    ///  del equipo. Se puede determinar mediante la enumeración del número de instancias de procesador asociadas 
    ///  con el objeto equipo, con la asociación Win32_ComputerSystemProcessor.
    /// </summary>
    property NumberOfProcessors:integer read FNumberOfProcessors write FNumberOfProcessors stored False;
    /// <summary>
    ///  La matriz OEMLogoBitmap contiene los datos de un mapa de bits creado por el fabricante de equipos originales 
    ///  (OEM).
    /// </summary>
    property OEMLogoBitmapAsString:string read FOEMLogoBitmapAsString write FOEMLogoBitmapAsString stored False;
    /// <summary>
    ///  Esta estructura contiene cadenas con formato libre definidas por el fabricante de equipos originales 
    ///  (OEM). Algunos ejemplos son: números de pieza para documentos de referencia del sistema, información 
    ///  de contacto para el fabricante, etc.
    /// </summary>
    property OEMStringArrayAsString:string read FOEMStringArrayAsString write FOEMStringArrayAsString stored False;
    /// <summary>
    ///  La propiedad PartOfDomain indica si el equipo es parte de un dominio o de un grupo de trabajo. Si es 
    ///  TRUE, el equipo es parte de un equipo. Si es FALSE, el equipo es parte de un grupo de trabajo. Si es 
    ///  NULL, el equipo no es parte de un grupo de red o es desconocido.
    /// </summary>
    property PartOfDomain:boolean read FPartOfDomain write FPartOfDomain stored False;
    /// <summary>
    ///  La propiedad PauseAfterReset identifica el retardo de tiempo para reiniciar. Se usa tras un ciclo de 
    ///  energía del sistema, el restablecimiento local o remoto del sistema y el restablecimiento automático 
    ///  del sistema. El valor -1 indica que el valor de la pausa se desconoce.
    /// </summary>
    property PauseAfterReset:int64 read FPauseAfterReset write FPauseAfterReset stored False;
    /// <summary>
    ///  La propiedad PCSystemType indica el tipo de PC con que trabaja el usuario, como portátil, de escritorio, 
    ///  Tablet PC, etc. 
    /// </summary>
    property PCSystemType:integer read FPCSystemType write FPCSystemType stored False;
    /// <summary>
    ///  La propiedad PCSystemType indica el tipo de PC con que trabaja el usuario, como portátil, de escritorio, 
    ///  Tablet PC, etc. 
    /// </summary>
    property PCSystemTypeEx:integer read FPCSystemTypeEx write FPCSystemTypeEx stored False;
    /// <summary>
    ///  Indica los requisitos relacionados con energía de un equipo y su sistema operativo asociado. Los valores, 
    ///  0="Desconocido", 1="No compatible", y 2="Deshabilitado" se explican por sí solos. El valor, 3="Habilitado" 
    ///  indica que las características de administración de energía están actualmente habilitadas , pero se desconoce 
    ///  el conjunto de características exacto o la información no está disponible. "Modos de ahorro de energía 
    ///  establecidos automáticamente" (4) describe que un sistema puede cambiar su estado de energía basado en 
    ///  uso u otros criterios. "Estado de energía configurable" (5) indica que se admite el método SetPowerState. 
    ///  "Ciclo de energía permitido" (6) indica que el método SetPowerState se puede invocar con el parámetro 
    ///  PowerState establecido a 5 ("Ciclo de energía"). "Se admite el encendido por tiempo" (7) indica que el 
    ///  método SetPowerState se puede invocar con el parámetro PowerState establecido a 5 ("Ciclo de energía") 
    ///  y el parámetro de tiempo establecido a una fecha y hora específica, o intervalo, para encendido.
    /// </summary>
    property PowerManagementCapabilitiesAsString:string read FPowerManagementCapabilitiesAsString write FPowerManagementCapabilitiesAsString stored False;
    /// <summary>
    ///  Valor booleano que indica que ComputerSystem, con su OperatingSystem en ejecución, permite la administración 
    ///  de energía. El valor booleano no indica si actualmente están habilitadas las funciones de administración 
    ///  de energía. Consulte la matriz PowerManagementCapabilities para obtener esta información. Si el resultado 
    ///  de este valor booleano es "False", el valor entero 1 para la cadena, "No compatible", debe ser la única 
    ///  entrada en la matriz PowerManagementCapabilities.
    /// </summary>
    property PowerManagementSupported:boolean read FPowerManagementSupported write FPowerManagementSupported stored False;
    /// <summary>
    ///  La propiedad PowerOnPasswordStatus identifica la configuración de seguridad hardware en todo el sistema 
    ///  para el estado de contraseña de encendido.
    /// </summary>
    property PowerOnPasswordStatus:integer read FPowerOnPasswordStatus write FPowerOnPasswordStatus stored False;
    /// <summary>
    ///  Indica el estado de energía actual del equipo y su sistema operativo asociado. En relación con los estados 
    ///  de ahorro de energía, éstos se definen como sigue: Valor 4 (desconocido) indica que se sabe que el sistema 
    ///  está en un modo de ahorro de energía, pero se desconoce su estado exacto en este modo; 2 (modo de baja 
    ///  energía) indica que el sistema está en un estado de ahorro de energía pero sigue funcionando y puede 
    ///  exhibir una baja de rendimiento; 3 (espera) describe que el sistema no está en funcionamiento pero que 
    ///  se podría poner en operación "rápidamente"; y valor 7 (aviso) indica que el equipo está en un estado 
    ///  de aviso, aunque está también en modo de ahorro de energía.
    /// </summary>
    property PowerState:integer read FPowerState write FPowerState stored False;
    /// <summary>
    ///  La propiedad PowerSupplyState identifica el estado del sistema o los sistemas de alimentación del contenedor 
    ///  cuando se arrancó por última vez.
    /// </summary>
    property PowerSupplyState:integer read FPowerSupplyState write FPowerSupplyState stored False;
    /// <summary>
    ///  Cadena que ofrece información sobre cómo se puede hacer contacto con el propietario del sistema principal 
    ///  (p.e., número de teléfono, dirección de correo electrónico, ...).
    /// </summary>
    property PrimaryOwnerContact:string read FPrimaryOwnerContact write FPrimaryOwnerContact stored False;
    /// <summary>
    ///  Cadena que ofrece información sobre cómo se puede hacer contacto con el propietario del sistema principal 
    ///  (p.e., número de teléfono, dirección de correo electrónico, ...).
    /// </summary>
    property PrimaryOwnerName:string read FPrimaryOwnerName write FPrimaryOwnerName stored False;
    /// <summary>
    ///  Si está habilitado (valor = 4), el equipo unitario se puede reiniciar por hardware (p.e. los botones 
    ///  de encendido y reinicio). Si está deshabilitado (valor = 3), no se permite reiniciar el hardware. Además 
    ///  de habilitado y deshabilitado, se definen también otros valores para la propiedad: "No implementado" 
    ///  (5), "Otros" (1) y "Desconocido" (2).
    /// </summary>
    property ResetCapability:integer read FResetCapability write FResetCapability stored False;
    /// <summary>
    ///  La propiedad ResetCount indica el número de restablecimientos automáticos efectuados desde que se produjo 
    ///  el último restablecimiento intencionado. El valor -1 indica que se desconoce el número.
    /// </summary>
    property ResetCount:integer read FResetCount write FResetCount stored False;
    /// <summary>
    ///  La propiedad ResetLimit indica el número de veces consecutivas que se intentará restablecer el sistema. 
    ///  El valor -1 indica que el límite se desconoce.
    /// </summary>
    property ResetLimit:integer read FResetLimit write FResetLimit stored False;
    /// <summary>
    ///  Una matriz de cadenas que especifica los roles que desempeña este sistema en el entorno IT. Las subclases 
    ///  del sistema pueden invalidar esta propiedad para definir valores de Roles explícitos. Alternativamente, 
    ///  un grupo de trabajo puede describir los heurísticos, convenciones y pasos a seguir para especificar los 
    ///  valores de la propiedad Roles. Por ejemplo, para una instancia de un sistema de red, la propiedad Roles 
    ///  puede contener la cadena "Switch" o "Bridge".
    /// </summary>
    property RolesAsString:string read FRolesAsString write FRolesAsString stored False;
    /// <summary>
    ///  Una matriz de cadenas que especifica los roles que desempeña este sistema en el entorno IT. Las subclases 
    ///  del sistema pueden invalidar esta propiedad para definir valores de Roles explícitos. Alternativamente, 
    ///  un grupo de trabajo puede describir los heurísticos, convenciones y pasos a seguir para especificar los 
    ///  valores de la propiedad Roles. Por ejemplo, para una instancia de un sistema de red, la propiedad Roles 
    ///  puede contener la cadena "Switch" o "Bridge".
    /// </summary>
    property Status:string read FStatus write FStatus stored False;
    /// <summary>
    ///  La propiedad SupportContactDescription es una matriz que indica la información de contacto para el soporte 
    ///  técnico del equipo Win32.
    /// </summary>
    property SupportContactDescriptionAsString:string read FSupportContactDescriptionAsString write FSupportContactDescriptionAsString stored False;
    /// <summary>
    ///  Esta cadena de texto identifica la familia a la que pertenece un determinado equipo. Una familia hace 
    ///  referencia a un conjunto de equipos que son similares pero no idénticos desde el punto de vista del hardware 
    ///  y el software
    /// </summary>
    property SystemFamily:string read FSystemFamily write FSystemFamily stored False;
    /// <summary>
    ///  Esta cadena de texto identifica una determinada configuración del equipo en venta. A veces recibe también 
    ///  el nombre de identificador del producto o número de pedido de compra
    /// </summary>
    property SystemSKUNumber:string read FSystemSKUNumber write FSystemSKUNumber stored False;
    /// <summary>
    ///  La propiedad SystemStartupDelay indica el tiempo de retardo para iniciar el sistema operativo.
    ///  Nota: 
    ///  se requiere el privilegio SE_SYSTEM_ENVIRONMENT en equipos IA64bit. Este privilegio no es requerido en 
    ///  sistemas de 32 bits.
    /// </summary>
    property SystemStartupDelay:integer read FSystemStartupDelay write FSystemStartupDelay stored False;
    /// <summary>
    ///  La matriz de la propiedad SystemStartupOptions indica las opciones para iniciar el sistema. Tenga en 
    ///  cuenta que esta propiedad no es de escritura en equipos de 64 bits.
    ///  Restricciones: debe tener un valor
    ///  Nota: 
    ///  se requiere el privilegio SE_SYSTEM_ENVIRONMENT en equipos IA64bit. Este privilegio no se requiere en 
    ///  otros sistemas.
    /// </summary>
    property SystemStartupOptionsAsString:string read FSystemStartupOptionsAsString write FSystemStartupOptionsAsString stored False;
    /// <summary>
    ///  La propiedad SystemStartupSetting indica el índice del perfil de inicio predeterminado. Este valor se 
    ///  'calcula' de forma que normalmente devuelve cero (0) ya que, al efectuar la escritura, la cadena del 
    ///  perfil se mueve físicamente al principio de la lista. De esta forma Windows NT determina cuál es el valor 
    ///  predeterminado.
    ///  Nota: se requiere el privilegio SE_SYSTEM_ENVIRONMENT en equipos IA64bit. Este privilegio 
    ///  no es requerido en sistemas de 32 bits.
    /// </summary>
    property SystemStartupSetting:integer read FSystemStartupSetting write FSystemStartupSetting stored False;
    /// <summary>
    ///  La propiedad SystemType indica el tipo de sistema que se ejecuta en el equipo Win32.
    ///  Restricciones: se 
    ///  debe proporcionar un valor
    /// </summary>
    property SystemType:string read FSystemType write FSystemType stored False;
    /// <summary>
    ///  La propiedad ThermalState identifica el estado térmico del contenedor cuando se arrancó por última v
    ///  ez.
    /// </summary>
    property ThermalState:integer read FThermalState write FThermalState stored False;
    /// <summary>
    ///  La propiedad TotalPhysicalMemory indica el tamaño total de la memoria física.
    ///  Ejemplo: 67108864
    /// </summary>
    property TotalPhysicalMemory:int64 read FTotalPhysicalMemory write FTotalPhysicalMemory stored False;
    /// <summary>
    ///  La propiedad UserName indica el nombre del usuario que está conectado actualmente.
    ///  Restricciones: se 
    ///  debe proporcionar un valor. 
    ///  Ejemplo: juanperez
    /// </summary>
    property UserName:string read FUserName write FUserName stored False;
    /// <summary>
    ///  La propiedad UserName indica el nombre del usuario que está conectado actualmente.
    ///  Restricciones: se 
    ///  debe proporcionar un valor. 
    ///  Ejemplo: juanperez
    /// </summary>
    property WakeUpType:integer read FWakeUpType write FWakeUpType stored False;
    /// <summary>
    ///  La propiedad Workgroup contiene el nombre del grupo de trabajo. Este valor en válido sólo si la propiedad 
    ///  PartOfDomain tiene el valor FALSE.
    /// </summary>
    property Workgroup:string read FWorkgroup write FWorkgroup stored False;
  end;

  {%InterfaceClass WMIClass%}
  /// <summary>
  ///  La clase Win32_ComputerSystem representa el sistema operativo de un equipo en un entorno Win32.
  /// </summary>
  TComputerSystemInfo = class(TWMIBase)
  private
    FComputerSystemProperties: TComputerSystemProperties;
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
    ///  El método Rename se usa para cambiar el nombre de un equipo tanto en un grupo de trabajo como en un dominio. 
    ///  Cuando se trabaja de forma remota, el método Rename no funciona para Windows XP Home Edition o Professional 
    ///  Edition (sólo grupo de trabajo). Para cualquier equipo en un dominio (excepto el controlador de dominio 
    ///  ya que puede autenticarse por sí mismo)es necesaria la delegación al igual que un segundo salto es necesario 
    ///  desde el equipo al que se accede remotamente a través del controlador de dominio para la autenticación. 
    ///  No hay restricciones para casos locales.
    ///  Si se especifican los parámetros de la contraseña y del nombre 
    ///  de usuario, la conexión a winmgmt tiene que utilizar un nivel alto de autenticación (p.ej. no menos que 
    ///  RPC_C_AUTHN_LEVEL_PKT_PRIVACY) cuando se conectan a winmgmt (p.ej. en una llamada para obtener la interfaz 
    ///  IWbemServices) o SetProxyBlanket en su IWbemServices ptr. Si son locales a winmgmt esto no representa 
    ///  un problema porque su nivel de autenticación es tan bueno como RPC_C_AUTHN_LEVEL_PKT_PRIVACY y además 
    ///  su solicitud de cliente no se dirigirá por la red para llegar al winmgmt. 
    ///  Si NombreUsuario y Contraseña 
    ///  se dejan como nulos, al proveedor no le importará. 
    ///  Si el proveedor determina que el nivel de autenticación 
    ///  es demasiado bajo y se ha especificado una contraseña y un nombre de usuario se devolverá WBEM_E_ENCRYPTED_CONNECTION_REQUIRED. 
    ///  El método puede devolver los siguientes valores:  
    ///  0 - Correcto. Se necesita reiniciar. 
    ///  Otros - Para 
    ///  obtener información sobre otros valores enteros distintos de los que se muestran en la lista anterior, 
    ///  consulte la documentación de códigos de error de Win32.
    /// <param name="Rename"> string -  </param>
    /// <param name="Rename"> string -  </param>
    /// <param name="Rename"> string -  </param>
    /// </summary>
    function Rename(AInstanceProp:string; AInstanceValue:Variant;
      aName:string;
      aPassword:string;
      aUserName:string):integer;
  published
    {%InterfacePublishedPart WMIClass%}
    // propiedades de la ComputerSystem
    property ComputerSystemProperties:TComputerSystemProperties read   FComputerSystemProperties write FComputerSystemProperties;
  end;


// Constantes para la propiedad AdminPasswordStatus
const 
  ENUM_STRING_ADMINPASSWORDSTATUS_00 = 'Deshabilitado';
  ENUM_STRING_ADMINPASSWORDSTATUS_01 = 'Habilitado';
  ENUM_STRING_ADMINPASSWORDSTATUS_02 = 'No implementado';
  ENUM_STRING_ADMINPASSWORDSTATUS_03 = 'Desconocido';

// Constantes para la propiedad BootOptionOnLimit
const 
  ENUM_STRING_BOOTOPTIONONLIMIT_00 = 'Reservado';
  ENUM_STRING_BOOTOPTIONONLIMIT_01 = 'Sistema operativo';
  ENUM_STRING_BOOTOPTIONONLIMIT_02 = 'Utilidades del sistema';
  ENUM_STRING_BOOTOPTIONONLIMIT_03 = 'No reiniciar';

// Constantes para la propiedad BootOptionOnWatchDog
const 
  ENUM_STRING_BOOTOPTIONONWATCHDOG_00 = 'Reservado';
  ENUM_STRING_BOOTOPTIONONWATCHDOG_01 = 'Sistema operativo';
  ENUM_STRING_BOOTOPTIONONWATCHDOG_02 = 'Utilidades del sistema';
  ENUM_STRING_BOOTOPTIONONWATCHDOG_03 = 'No reiniciar';

// Constantes para la propiedad BootupState
const 
  ENUM_STRING_BOOTUPSTATE_00 = 'Arranque normal';
  ENUM_STRING_BOOTUPSTATE_01 = 'Arranque a prueba de errores';
  ENUM_STRING_BOOTUPSTATE_02 = 'Arranque a prueba de errores con acceso a red';

// Constantes para la propiedad ChassisBootupState
const 
  ENUM_STRING_CHASSISBOOTUPSTATE_00 = 'Otros';
  ENUM_STRING_CHASSISBOOTUPSTATE_01 = 'Desconocido';
  ENUM_STRING_CHASSISBOOTUPSTATE_02 = 'Seguro';
  ENUM_STRING_CHASSISBOOTUPSTATE_03 = 'Advertencia';
  ENUM_STRING_CHASSISBOOTUPSTATE_04 = 'Crítico';
  ENUM_STRING_CHASSISBOOTUPSTATE_05 = 'No recuperable';

// Constantes para la propiedad DomainRole
const 
  ENUM_STRING_DOMAINROLE_00 = 'Estación de trabajo independiente';
  ENUM_STRING_DOMAINROLE_01 = 'Estación de trabajo miembro';
  ENUM_STRING_DOMAINROLE_02 = 'Servidor independiente';
  ENUM_STRING_DOMAINROLE_03 = 'Servidor miembro';
  ENUM_STRING_DOMAINROLE_04 = 'Controlador de dominio de reserva';
  ENUM_STRING_DOMAINROLE_05 = 'Controlador de dominio principal';

// Constantes para la propiedad FrontPanelResetStatus
const 
  ENUM_STRING_FRONTPANELRESETSTATUS_00 = 'Deshabilitado';
  ENUM_STRING_FRONTPANELRESETSTATUS_01 = 'Habilitado';
  ENUM_STRING_FRONTPANELRESETSTATUS_02 = 'No implementado';
  ENUM_STRING_FRONTPANELRESETSTATUS_03 = 'Desconocido';

// Constantes para la propiedad KeyboardPasswordStatus
const 
  ENUM_STRING_KEYBOARDPASSWORDSTATUS_00 = 'Deshabilitado';
  ENUM_STRING_KEYBOARDPASSWORDSTATUS_01 = 'Habilitado';
  ENUM_STRING_KEYBOARDPASSWORDSTATUS_02 = 'No implementado';
  ENUM_STRING_KEYBOARDPASSWORDSTATUS_03 = 'Desconocido';

// Constantes para la propiedad NameFormat
const 
  ENUM_STRING_NAMEFORMAT_00 = 'IP';
  ENUM_STRING_NAMEFORMAT_01 = 'Marcar';
  ENUM_STRING_NAMEFORMAT_02 = 'HID';
  ENUM_STRING_NAMEFORMAT_03 = 'NWA';
  ENUM_STRING_NAMEFORMAT_04 = 'HWA';
  ENUM_STRING_NAMEFORMAT_05 = 'X25';
  ENUM_STRING_NAMEFORMAT_06 = 'ISDN';
  ENUM_STRING_NAMEFORMAT_07 = 'IPX';
  ENUM_STRING_NAMEFORMAT_08 = 'DCC';
  ENUM_STRING_NAMEFORMAT_09 = 'ICD';
  ENUM_STRING_NAMEFORMAT_10 = 'E.164';
  ENUM_STRING_NAMEFORMAT_11 = 'SNA';
  ENUM_STRING_NAMEFORMAT_12 = 'OID/OSI';
  ENUM_STRING_NAMEFORMAT_13 = 'Otros';

// Constantes para la propiedad PCSystemType
const 
  ENUM_STRING_PCSYSTEMTYPE_00 = 'Sin especificar';
  ENUM_STRING_PCSYSTEMTYPE_01 = 'Escritorio';
  ENUM_STRING_PCSYSTEMTYPE_02 = 'Mobile';
  ENUM_STRING_PCSYSTEMTYPE_03 = 'Mobile';
  ENUM_STRING_PCSYSTEMTYPE_04 = 'Enterprise Server';
  ENUM_STRING_PCSYSTEMTYPE_05 = 'SOHO Server';
  ENUM_STRING_PCSYSTEMTYPE_06 = 'Appliance PC';
  ENUM_STRING_PCSYSTEMTYPE_07 = 'Performance Server';
  ENUM_STRING_PCSYSTEMTYPE_08 = 'Máximo';

// Constantes para la propiedad PCSystemTypeEx
const 
  ENUM_STRING_PCSYSTEMTYPEEX_00 = 'Sin especificar';
  ENUM_STRING_PCSYSTEMTYPEEX_01 = 'Escritorio';
  ENUM_STRING_PCSYSTEMTYPEEX_02 = 'Mobile';
  ENUM_STRING_PCSYSTEMTYPEEX_03 = 'Workstation';
  ENUM_STRING_PCSYSTEMTYPEEX_04 = 'Enterprise Server';
  ENUM_STRING_PCSYSTEMTYPEEX_05 = 'SOHO Server';
  ENUM_STRING_PCSYSTEMTYPEEX_06 = 'Appliance PC';
  ENUM_STRING_PCSYSTEMTYPEEX_07 = 'Performance Server';
  ENUM_STRING_PCSYSTEMTYPEEX_08 = 'Tableta táctil';
  ENUM_STRING_PCSYSTEMTYPEEX_09 = 'Máximo';

// Constantes para la propiedad PowerManagementCapabilities
const 
  ENUM_STRING_POWERMANAGEMENTCAPABILITIES_00 = 'Desconocido';
  ENUM_STRING_POWERMANAGEMENTCAPABILITIES_01 = 'No compatible';
  ENUM_STRING_POWERMANAGEMENTCAPABILITIES_02 = 'Deshabilitado';
  ENUM_STRING_POWERMANAGEMENTCAPABILITIES_03 = 'Habilitado';
  ENUM_STRING_POWERMANAGEMENTCAPABILITIES_04 = 'Modos de ahorro de energía establecidos automáticamente';
  ENUM_STRING_POWERMANAGEMENTCAPABILITIES_05 = 'Estado de energía configurable';
  ENUM_STRING_POWERMANAGEMENTCAPABILITIES_06 = 'Ciclo de energía permitido';
  ENUM_STRING_POWERMANAGEMENTCAPABILITIES_07 = 'Se admite el encendido por tiempo';

// Constantes para la propiedad PowerOnPasswordStatus
const 
  ENUM_STRING_POWERONPASSWORDSTATUS_00 = 'Deshabilitado';
  ENUM_STRING_POWERONPASSWORDSTATUS_01 = 'Habilitado';
  ENUM_STRING_POWERONPASSWORDSTATUS_02 = 'No implementado';
  ENUM_STRING_POWERONPASSWORDSTATUS_03 = 'Desconocido';

// Constantes para la propiedad PowerState
const 
  ENUM_STRING_POWERSTATE_00 = 'Desconocido';
  ENUM_STRING_POWERSTATE_01 = 'Energía completa';
  ENUM_STRING_POWERSTATE_02 = 'Ahorro de energía: modo de bajo consumo';
  ENUM_STRING_POWERSTATE_03 = 'Ahorro de energía: espera';
  ENUM_STRING_POWERSTATE_04 = 'Ahorro de energía: desconocido';
  ENUM_STRING_POWERSTATE_05 = 'Ciclo de energía';
  ENUM_STRING_POWERSTATE_06 = 'Apagado';
  ENUM_STRING_POWERSTATE_07 = 'Ahorro de energía: advertencia';
  ENUM_STRING_POWERSTATE_08 = 'Ahorro de energía: hibernar';
  ENUM_STRING_POWERSTATE_09 = 'Ahorro de energía: apagado parcial';

// Constantes para la propiedad PowerSupplyState
const 
  ENUM_STRING_POWERSUPPLYSTATE_00 = 'Otros';
  ENUM_STRING_POWERSUPPLYSTATE_01 = 'Desconocido';
  ENUM_STRING_POWERSUPPLYSTATE_02 = 'Seguro';
  ENUM_STRING_POWERSUPPLYSTATE_03 = 'Advertencia';
  ENUM_STRING_POWERSUPPLYSTATE_04 = 'Crítico';
  ENUM_STRING_POWERSUPPLYSTATE_05 = 'No recuperable';

// Constantes para la propiedad ResetCapability
const 
  ENUM_STRING_RESETCAPABILITY_00 = 'Otros';
  ENUM_STRING_RESETCAPABILITY_01 = 'Desconocido';
  ENUM_STRING_RESETCAPABILITY_02 = 'Deshabilitado';
  ENUM_STRING_RESETCAPABILITY_03 = 'Habilitado';
  ENUM_STRING_RESETCAPABILITY_04 = 'No implementado';

// Constantes para la propiedad SystemType
const 
  ENUM_STRING_SYSTEMTYPE_00 = 'Equipo basado en X86';
  ENUM_STRING_SYSTEMTYPE_01 = 'Equipo basado en MIPS';
  ENUM_STRING_SYSTEMTYPE_02 = 'Equipo basado en Alpha';
  ENUM_STRING_SYSTEMTYPE_03 = 'Power PC';
  ENUM_STRING_SYSTEMTYPE_04 = 'PC SH-x';
  ENUM_STRING_SYSTEMTYPE_05 = 'PC StrongARM';
  ENUM_STRING_SYSTEMTYPE_06 = 'PC Intel de 64 bits';
  ENUM_STRING_SYSTEMTYPE_07 = 'PC basado en x64';
  ENUM_STRING_SYSTEMTYPE_08 = 'Desconocido';
  ENUM_STRING_SYSTEMTYPE_09 = 'PC X86-Nec98';

// Constantes para la propiedad ThermalState
const 
  ENUM_STRING_THERMALSTATE_00 = 'Otros';
  ENUM_STRING_THERMALSTATE_01 = 'Desconocido';
  ENUM_STRING_THERMALSTATE_02 = 'Seguro';
  ENUM_STRING_THERMALSTATE_03 = 'Advertencia';
  ENUM_STRING_THERMALSTATE_04 = 'Crítico';
  ENUM_STRING_THERMALSTATE_05 = 'No recuperable';

// Constantes para la propiedad WakeUpType
const 
  ENUM_STRING_WAKEUPTYPE_00 = 'Reservado';
  ENUM_STRING_WAKEUPTYPE_01 = 'Otros';
  ENUM_STRING_WAKEUPTYPE_02 = 'Desconocido';
  ENUM_STRING_WAKEUPTYPE_03 = 'Temporizador de administración de energía avanzada (APM)';
  ENUM_STRING_WAKEUPTYPE_04 = 'Llamada de módem';
  ENUM_STRING_WAKEUPTYPE_05 = 'LAN remota';
  ENUM_STRING_WAKEUPTYPE_06 = 'Interruptor de alimentación';
  ENUM_STRING_WAKEUPTYPE_07 = 'PCI PME#';
  ENUM_STRING_WAKEUPTYPE_08 = 'Corriente alterna restaurada';

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
procedure TComputerSystemInfo.ClearProps;
begin
  Self.ComputerSystemProperties.FAdminPasswordStatus := 0;
  Self.ComputerSystemProperties.FAutomaticManagedPagefile := False;
  Self.ComputerSystemProperties.FAutomaticResetBootOption := False;
  Self.ComputerSystemProperties.FAutomaticResetCapability := False;
  Self.ComputerSystemProperties.FBootOptionOnLimit := 0;
  Self.ComputerSystemProperties.FBootOptionOnWatchDog := 0;
  Self.ComputerSystemProperties.FBootROMSupported := False;
  Self.ComputerSystemProperties.FBootStatusCount := 0;
  Self.ComputerSystemProperties.FBootStatusAsString := EmptyStr;
  SetLength(ComputerSystemProperties.FBootStatus, 0);
  Self.ComputerSystemProperties.FBootupState := EmptyStr;
  Self.ComputerSystemProperties.FCaption := EmptyStr;
  Self.ComputerSystemProperties.FChassisBootupState := 0;
  Self.ComputerSystemProperties.FChassisSKUNumber := EmptyStr;
  Self.ComputerSystemProperties.FCreationClassName := EmptyStr;
  Self.ComputerSystemProperties.FCurrentTimeZone := 0;
  Self.ComputerSystemProperties.FDaylightInEffect := False;
  Self.ComputerSystemProperties.FDescription := EmptyStr;
  Self.ComputerSystemProperties.FDNSHostName := EmptyStr;
  Self.ComputerSystemProperties.FDomain := EmptyStr;
  Self.ComputerSystemProperties.FDomainRole := 0;
  Self.ComputerSystemProperties.FEnableDaylightSavingsTime := False;
  Self.ComputerSystemProperties.FFrontPanelResetStatus := 0;
  Self.ComputerSystemProperties.FHypervisorPresent := False;
  Self.ComputerSystemProperties.FInfraredSupported := False;
  Self.ComputerSystemProperties.FInitialLoadInfoCount := 0;
  Self.ComputerSystemProperties.FInitialLoadInfoAsString := EmptyStr;
  SetLength(ComputerSystemProperties.FInitialLoadInfo, 0);
  Self.ComputerSystemProperties.FInstallDate := 0;
  Self.ComputerSystemProperties.FKeyboardPasswordStatus := 0;
  Self.ComputerSystemProperties.FLastLoadInfo := EmptyStr;
  Self.ComputerSystemProperties.FManufacturer := EmptyStr;
  Self.ComputerSystemProperties.FModel := EmptyStr;
  Self.ComputerSystemProperties.FName := EmptyStr;
  Self.ComputerSystemProperties.FNameFormat := EmptyStr;
  Self.ComputerSystemProperties.FNetworkServerModeEnabled := False;
  Self.ComputerSystemProperties.FNumberOfLogicalProcessors := 0;
  Self.ComputerSystemProperties.FNumberOfProcessors := 0;
  Self.ComputerSystemProperties.FOEMLogoBitmapCount := 0;
  Self.ComputerSystemProperties.FOEMLogoBitmapAsString := EmptyStr;
  SetLength(ComputerSystemProperties.FOEMLogoBitmap, 0);
  Self.ComputerSystemProperties.FOEMStringArrayCount := 0;
  Self.ComputerSystemProperties.FOEMStringArrayAsString := EmptyStr;
  SetLength(ComputerSystemProperties.FOEMStringArray, 0);
  Self.ComputerSystemProperties.FPartOfDomain := False;
  Self.ComputerSystemProperties.FPauseAfterReset := 0;
  Self.ComputerSystemProperties.FPCSystemType := 0;
  Self.ComputerSystemProperties.FPCSystemTypeEx := 0;
  Self.ComputerSystemProperties.FPowerManagementCapabilitiesCount := 0;
  Self.ComputerSystemProperties.FPowerManagementCapabilitiesAsString := EmptyStr;
  SetLength(ComputerSystemProperties.FPowerManagementCapabilities, 0);
  Self.ComputerSystemProperties.FPowerManagementSupported := False;
  Self.ComputerSystemProperties.FPowerOnPasswordStatus := 0;
  Self.ComputerSystemProperties.FPowerState := 0;
  Self.ComputerSystemProperties.FPowerSupplyState := 0;
  Self.ComputerSystemProperties.FPrimaryOwnerContact := EmptyStr;
  Self.ComputerSystemProperties.FPrimaryOwnerName := EmptyStr;
  Self.ComputerSystemProperties.FResetCapability := 0;
  Self.ComputerSystemProperties.FResetCount := 0;
  Self.ComputerSystemProperties.FResetLimit := 0;
  Self.ComputerSystemProperties.FRolesCount := 0;
  Self.ComputerSystemProperties.FRolesAsString := EmptyStr;
  SetLength(ComputerSystemProperties.FRoles, 0);
  Self.ComputerSystemProperties.FStatus := EmptyStr;
  Self.ComputerSystemProperties.FSupportContactDescriptionCount := 0;
  Self.ComputerSystemProperties.FSupportContactDescriptionAsString := EmptyStr;
  SetLength(ComputerSystemProperties.FSupportContactDescription, 0);
  Self.ComputerSystemProperties.FSystemFamily := EmptyStr;
  Self.ComputerSystemProperties.FSystemSKUNumber := EmptyStr;
  Self.ComputerSystemProperties.FSystemStartupDelay := 0;
  Self.ComputerSystemProperties.FSystemStartupOptionsCount := 0;
  Self.ComputerSystemProperties.FSystemStartupOptionsAsString := EmptyStr;
  SetLength(ComputerSystemProperties.FSystemStartupOptions, 0);
  Self.ComputerSystemProperties.FSystemStartupSetting := 0;
  Self.ComputerSystemProperties.FSystemType := EmptyStr;
  Self.ComputerSystemProperties.FThermalState := 0;
  Self.ComputerSystemProperties.FTotalPhysicalMemory := 0;
  Self.ComputerSystemProperties.FUserName := EmptyStr;
  Self.ComputerSystemProperties.FWakeUpType := 0;
  Self.ComputerSystemProperties.FWorkgroup := EmptyStr;
end;

//: Constructor del componente
constructor TComputerSystemInfo.Create(AOwner: TComponent);
begin
  inherited;
  Self.FComputerSystemProperties := TComputerSystemProperties.Create();
  Self.MSDNHelp := 'https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-computersystem';
end;

//: destructor del componente
destructor TComputerSystemInfo.Destroy();
begin
  // liberar
  FreeAndNil(Self.FComputerSystemProperties);
  inherited;
end;

//: Obtener la clase
function TComputerSystemInfo.GetWMIClass(): string;
begin
  Result := 'Win32_ComputerSystem'
end;

//: Obtener Root
function TComputerSystemInfo.GetWMIRoot(): string;
begin
  Result := '';
end;

//: Procedmiento de activación
procedure TComputerSystemInfo.SetActive(const Value: Boolean);
begin
  // método heredado
  inherited;
end;

// Acceso a los elementos de la propiedad <BootStatus>
function TComputerSystemProperties.GetBootStatus(index: integer):integer;
begin
  if (index >= Self.FBootStatusCount) then begin
    Index := Self.FBootStatusCount - 1;
  end;
  Result := Self.FBootStatus[index];
end;

// Acceso a los elementos de la propiedad <InitialLoadInfo>
function TComputerSystemProperties.GetInitialLoadInfo(index: integer):string;
begin
  if (index >= Self.FInitialLoadInfoCount) then begin
    Index := Self.FInitialLoadInfoCount - 1;
  end;
  Result := Self.FInitialLoadInfo[index];
end;

// Acceso a los elementos de la propiedad <OEMLogoBitmap>
function TComputerSystemProperties.GetOEMLogoBitmap(index: integer):integer;
begin
  if (index >= Self.FOEMLogoBitmapCount) then begin
    Index := Self.FOEMLogoBitmapCount - 1;
  end;
  Result := Self.FOEMLogoBitmap[index];
end;

// Acceso a los elementos de la propiedad <OEMStringArray>
function TComputerSystemProperties.GetOEMStringArray(index: integer):string;
begin
  if (index >= Self.FOEMStringArrayCount) then begin
    Index := Self.FOEMStringArrayCount - 1;
  end;
  Result := Self.FOEMStringArray[index];
end;

// Acceso a los elementos de la propiedad <PowerManagementCapabilities>
function TComputerSystemProperties.GetPowerManagementCapabilities(index: integer):integer;
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
  v:     variant;
  vNull: boolean;
  vp:    TComputerSystemProperties;
begin
  // Llamar al heredado (importante)
  inherited;
  // Rellenar propiedades...
  vp := ComputerSystemProperties;

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

  GetWMIPropertyValue(Self, 'BootStatus', v, vNull);
  vp.FBootStatusAsString := VariantStrValue(v, vNull);
  StringToArrayInteger(vp.FBootStatusAsString, vp.FBootStatus);
  vp.FBootStatusCount := Length(vp.FBootStatus);

  GetWMIPropertyValue(Self, 'BootupState', v, vNull);
  vp.FBootupState := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Caption', v, vNull);
  vp.FCaption := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'ChassisBootupState', v, vNull);
  vp.FChassisBootupState := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'ChassisSKUNumber', v, vNull);
  vp.FChassisSKUNumber := VariantStrValue(v, vNull);

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

  GetWMIPropertyValue(Self, 'HypervisorPresent', v, vNull);
  vp.FHypervisorPresent := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'InfraredSupported', v, vNull);
  vp.FInfraredSupported := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'InitialLoadInfo', v, vNull);
  vp.FInitialLoadInfoAsString := VariantStrValue(v, vNull);
  StringToArrayString(vp.FInitialLoadInfoAsString, vp.FInitialLoadInfo);
  vp.FInitialLoadInfoCount := Length(vp.FInitialLoadInfo);

  GetWMIPropertyValue(Self, 'InstallDate', v, vNull);
  vp.FInstallDate := VariantDateTimeValue(v, vNull);

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
  StringToArrayInteger(vp.FOEMLogoBitmapAsString, vp.FOEMLogoBitmap);
  vp.FOEMLogoBitmapCount := Length(vp.FOEMLogoBitmap);

  GetWMIPropertyValue(Self, 'OEMStringArray', v, vNull);
  vp.FOEMStringArrayAsString := VariantStrValue(v, vNull);
  StringToArrayString(vp.FOEMStringArrayAsString, vp.FOEMStringArray);
  vp.FOEMStringArrayCount := Length(vp.FOEMStringArray);

  GetWMIPropertyValue(Self, 'PartOfDomain', v, vNull);
  vp.FPartOfDomain := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'PauseAfterReset', v, vNull);
  vp.FPauseAfterReset := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'PCSystemType', v, vNull);
  vp.FPCSystemType := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'PCSystemTypeEx', v, vNull);
  vp.FPCSystemTypeEx := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'PowerManagementCapabilities', v, vNull);
  vp.FPowerManagementCapabilitiesAsString := VariantStrValue(v, vNull);
  StringToArrayInteger(vp.FPowerManagementCapabilitiesAsString, vp.FPowerManagementCapabilities);
  vp.FPowerManagementCapabilitiesCount := Length(vp.FPowerManagementCapabilities);

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
  StringToArrayString(vp.FRolesAsString, vp.FRoles);
  vp.FRolesCount := Length(vp.FRoles);

  GetWMIPropertyValue(Self, 'Status', v, vNull);
  vp.FStatus := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'SupportContactDescription', v, vNull);
  vp.FSupportContactDescriptionAsString := VariantStrValue(v, vNull);
  StringToArrayString(vp.FSupportContactDescriptionAsString, vp.FSupportContactDescription);
  vp.FSupportContactDescriptionCount := Length(vp.FSupportContactDescription);

  GetWMIPropertyValue(Self, 'SystemFamily', v, vNull);
  vp.FSystemFamily := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'SystemSKUNumber', v, vNull);
  vp.FSystemSKUNumber := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'SystemStartupDelay', v, vNull);
  vp.FSystemStartupDelay := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'SystemStartupOptions', v, vNull);
  vp.FSystemStartupOptionsAsString := VariantStrValue(v, vNull);
  StringToArrayString(vp.FSystemStartupOptionsAsString, vp.FSystemStartupOptions);
  vp.FSystemStartupOptionsCount := Length(vp.FSystemStartupOptions);

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


// Obtener la propiedad como string
function TComputerSystemProperties.GetAllAdminPasswordStatusAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_ADMINPASSWORDSTATUS_00;
    01: Result := ENUM_STRING_ADMINPASSWORDSTATUS_01;
    02: Result := ENUM_STRING_ADMINPASSWORDSTATUS_02;
    03: Result := ENUM_STRING_ADMINPASSWORDSTATUS_03;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TComputerSystemProperties.GetAllBootOptionOnLimitAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_BOOTOPTIONONLIMIT_00;
    01: Result := ENUM_STRING_BOOTOPTIONONLIMIT_01;
    02: Result := ENUM_STRING_BOOTOPTIONONLIMIT_02;
    03: Result := ENUM_STRING_BOOTOPTIONONLIMIT_03;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TComputerSystemProperties.GetAllBootOptionOnWatchDogAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_BOOTOPTIONONWATCHDOG_00;
    01: Result := ENUM_STRING_BOOTOPTIONONWATCHDOG_01;
    02: Result := ENUM_STRING_BOOTOPTIONONWATCHDOG_02;
    03: Result := ENUM_STRING_BOOTOPTIONONWATCHDOG_03;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TComputerSystemProperties.GetAllBootupStateAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_BOOTUPSTATE_00;
    01: Result := ENUM_STRING_BOOTUPSTATE_01;
    02: Result := ENUM_STRING_BOOTUPSTATE_02;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TComputerSystemProperties.GetAllChassisBootupStateAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_CHASSISBOOTUPSTATE_00;
    01: Result := ENUM_STRING_CHASSISBOOTUPSTATE_01;
    02: Result := ENUM_STRING_CHASSISBOOTUPSTATE_02;
    03: Result := ENUM_STRING_CHASSISBOOTUPSTATE_03;
    04: Result := ENUM_STRING_CHASSISBOOTUPSTATE_04;
    05: Result := ENUM_STRING_CHASSISBOOTUPSTATE_05;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TComputerSystemProperties.GetAllDomainRoleAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_DOMAINROLE_00;
    01: Result := ENUM_STRING_DOMAINROLE_01;
    02: Result := ENUM_STRING_DOMAINROLE_02;
    03: Result := ENUM_STRING_DOMAINROLE_03;
    04: Result := ENUM_STRING_DOMAINROLE_04;
    05: Result := ENUM_STRING_DOMAINROLE_05;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TComputerSystemProperties.GetAllFrontPanelResetStatusAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_FRONTPANELRESETSTATUS_00;
    01: Result := ENUM_STRING_FRONTPANELRESETSTATUS_01;
    02: Result := ENUM_STRING_FRONTPANELRESETSTATUS_02;
    03: Result := ENUM_STRING_FRONTPANELRESETSTATUS_03;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TComputerSystemProperties.GetAllKeyboardPasswordStatusAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_KEYBOARDPASSWORDSTATUS_00;
    01: Result := ENUM_STRING_KEYBOARDPASSWORDSTATUS_01;
    02: Result := ENUM_STRING_KEYBOARDPASSWORDSTATUS_02;
    03: Result := ENUM_STRING_KEYBOARDPASSWORDSTATUS_03;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TComputerSystemProperties.GetAllNameFormatAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_NAMEFORMAT_00;
    01: Result := ENUM_STRING_NAMEFORMAT_01;
    02: Result := ENUM_STRING_NAMEFORMAT_02;
    03: Result := ENUM_STRING_NAMEFORMAT_03;
    04: Result := ENUM_STRING_NAMEFORMAT_04;
    05: Result := ENUM_STRING_NAMEFORMAT_05;
    06: Result := ENUM_STRING_NAMEFORMAT_06;
    07: Result := ENUM_STRING_NAMEFORMAT_07;
    08: Result := ENUM_STRING_NAMEFORMAT_08;
    09: Result := ENUM_STRING_NAMEFORMAT_09;
    10: Result := ENUM_STRING_NAMEFORMAT_10;
    11: Result := ENUM_STRING_NAMEFORMAT_11;
    12: Result := ENUM_STRING_NAMEFORMAT_12;
    13: Result := ENUM_STRING_NAMEFORMAT_13;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TComputerSystemProperties.GetAllPCSystemTypeAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_PCSYSTEMTYPE_00;
    01: Result := ENUM_STRING_PCSYSTEMTYPE_01;
    02: Result := ENUM_STRING_PCSYSTEMTYPE_02;
    03: Result := ENUM_STRING_PCSYSTEMTYPE_03;
    04: Result := ENUM_STRING_PCSYSTEMTYPE_04;
    05: Result := ENUM_STRING_PCSYSTEMTYPE_05;
    06: Result := ENUM_STRING_PCSYSTEMTYPE_06;
    07: Result := ENUM_STRING_PCSYSTEMTYPE_07;
    08: Result := ENUM_STRING_PCSYSTEMTYPE_08;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TComputerSystemProperties.GetAllPCSystemTypeExAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_PCSYSTEMTYPEEX_00;
    01: Result := ENUM_STRING_PCSYSTEMTYPEEX_01;
    02: Result := ENUM_STRING_PCSYSTEMTYPEEX_02;
    03: Result := ENUM_STRING_PCSYSTEMTYPEEX_03;
    04: Result := ENUM_STRING_PCSYSTEMTYPEEX_04;
    05: Result := ENUM_STRING_PCSYSTEMTYPEEX_05;
    06: Result := ENUM_STRING_PCSYSTEMTYPEEX_06;
    07: Result := ENUM_STRING_PCSYSTEMTYPEEX_07;
    08: Result := ENUM_STRING_PCSYSTEMTYPEEX_08;
    09: Result := ENUM_STRING_PCSYSTEMTYPEEX_09;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TComputerSystemProperties.GetAllPowerManagementCapabilitiesAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_POWERMANAGEMENTCAPABILITIES_00;
    01: Result := ENUM_STRING_POWERMANAGEMENTCAPABILITIES_01;
    02: Result := ENUM_STRING_POWERMANAGEMENTCAPABILITIES_02;
    03: Result := ENUM_STRING_POWERMANAGEMENTCAPABILITIES_03;
    04: Result := ENUM_STRING_POWERMANAGEMENTCAPABILITIES_04;
    05: Result := ENUM_STRING_POWERMANAGEMENTCAPABILITIES_05;
    06: Result := ENUM_STRING_POWERMANAGEMENTCAPABILITIES_06;
    07: Result := ENUM_STRING_POWERMANAGEMENTCAPABILITIES_07;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TComputerSystemProperties.GetAllPowerOnPasswordStatusAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_POWERONPASSWORDSTATUS_00;
    01: Result := ENUM_STRING_POWERONPASSWORDSTATUS_01;
    02: Result := ENUM_STRING_POWERONPASSWORDSTATUS_02;
    03: Result := ENUM_STRING_POWERONPASSWORDSTATUS_03;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TComputerSystemProperties.GetAllPowerStateAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_POWERSTATE_00;
    01: Result := ENUM_STRING_POWERSTATE_01;
    02: Result := ENUM_STRING_POWERSTATE_02;
    03: Result := ENUM_STRING_POWERSTATE_03;
    04: Result := ENUM_STRING_POWERSTATE_04;
    05: Result := ENUM_STRING_POWERSTATE_05;
    06: Result := ENUM_STRING_POWERSTATE_06;
    07: Result := ENUM_STRING_POWERSTATE_07;
    08: Result := ENUM_STRING_POWERSTATE_08;
    09: Result := ENUM_STRING_POWERSTATE_09;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TComputerSystemProperties.GetAllPowerSupplyStateAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_POWERSUPPLYSTATE_00;
    01: Result := ENUM_STRING_POWERSUPPLYSTATE_01;
    02: Result := ENUM_STRING_POWERSUPPLYSTATE_02;
    03: Result := ENUM_STRING_POWERSUPPLYSTATE_03;
    04: Result := ENUM_STRING_POWERSUPPLYSTATE_04;
    05: Result := ENUM_STRING_POWERSUPPLYSTATE_05;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TComputerSystemProperties.GetAllResetCapabilityAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_RESETCAPABILITY_00;
    01: Result := ENUM_STRING_RESETCAPABILITY_01;
    02: Result := ENUM_STRING_RESETCAPABILITY_02;
    03: Result := ENUM_STRING_RESETCAPABILITY_03;
    04: Result := ENUM_STRING_RESETCAPABILITY_04;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TComputerSystemProperties.GetAllSystemTypeAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_SYSTEMTYPE_00;
    01: Result := ENUM_STRING_SYSTEMTYPE_01;
    02: Result := ENUM_STRING_SYSTEMTYPE_02;
    03: Result := ENUM_STRING_SYSTEMTYPE_03;
    04: Result := ENUM_STRING_SYSTEMTYPE_04;
    05: Result := ENUM_STRING_SYSTEMTYPE_05;
    06: Result := ENUM_STRING_SYSTEMTYPE_06;
    07: Result := ENUM_STRING_SYSTEMTYPE_07;
    08: Result := ENUM_STRING_SYSTEMTYPE_08;
    09: Result := ENUM_STRING_SYSTEMTYPE_09;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TComputerSystemProperties.GetAllThermalStateAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_THERMALSTATE_00;
    01: Result := ENUM_STRING_THERMALSTATE_01;
    02: Result := ENUM_STRING_THERMALSTATE_02;
    03: Result := ENUM_STRING_THERMALSTATE_03;
    04: Result := ENUM_STRING_THERMALSTATE_04;
    05: Result := ENUM_STRING_THERMALSTATE_05;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TComputerSystemProperties.GetAllWakeUpTypeAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_WAKEUPTYPE_00;
    01: Result := ENUM_STRING_WAKEUPTYPE_01;
    02: Result := ENUM_STRING_WAKEUPTYPE_02;
    03: Result := ENUM_STRING_WAKEUPTYPE_03;
    04: Result := ENUM_STRING_WAKEUPTYPE_04;
    05: Result := ENUM_STRING_WAKEUPTYPE_05;
    06: Result := ENUM_STRING_WAKEUPTYPE_06;
    07: Result := ENUM_STRING_WAKEUPTYPE_07;
    08: Result := ENUM_STRING_WAKEUPTYPE_08;
  else
    Result := STR_EMPTY;
  end;
end;


// Obtener núm. de elementos de la propiedad como string
function TComputerSystemProperties.GetAllAdminPasswordStatusCount:integer;
begin
  Result := 4
end;

// Obtener núm. de elementos de la propiedad como string
function TComputerSystemProperties.GetAllBootOptionOnLimitCount:integer;
begin
  Result := 4
end;

// Obtener núm. de elementos de la propiedad como string
function TComputerSystemProperties.GetAllBootOptionOnWatchDogCount:integer;
begin
  Result := 4
end;

// Obtener núm. de elementos de la propiedad como string
function TComputerSystemProperties.GetAllBootupStateCount:integer;
begin
  Result := 3
end;

// Obtener núm. de elementos de la propiedad como string
function TComputerSystemProperties.GetAllChassisBootupStateCount:integer;
begin
  Result := 6
end;

// Obtener núm. de elementos de la propiedad como string
function TComputerSystemProperties.GetAllDomainRoleCount:integer;
begin
  Result := 6
end;

// Obtener núm. de elementos de la propiedad como string
function TComputerSystemProperties.GetAllFrontPanelResetStatusCount:integer;
begin
  Result := 4
end;

// Obtener núm. de elementos de la propiedad como string
function TComputerSystemProperties.GetAllKeyboardPasswordStatusCount:integer;
begin
  Result := 4
end;

// Obtener núm. de elementos de la propiedad como string
function TComputerSystemProperties.GetAllNameFormatCount:integer;
begin
  Result := 14
end;

// Obtener núm. de elementos de la propiedad como string
function TComputerSystemProperties.GetAllPCSystemTypeCount:integer;
begin
  Result := 9
end;

// Obtener núm. de elementos de la propiedad como string
function TComputerSystemProperties.GetAllPCSystemTypeExCount:integer;
begin
  Result := 10
end;

// Obtener núm. de elementos de la propiedad como string
function TComputerSystemProperties.GetAllPowerManagementCapabilitiesCount:integer;
begin
  Result := 8
end;

// Obtener núm. de elementos de la propiedad como string
function TComputerSystemProperties.GetAllPowerOnPasswordStatusCount:integer;
begin
  Result := 4
end;

// Obtener núm. de elementos de la propiedad como string
function TComputerSystemProperties.GetAllPowerStateCount:integer;
begin
  Result := 10
end;

// Obtener núm. de elementos de la propiedad como string
function TComputerSystemProperties.GetAllPowerSupplyStateCount:integer;
begin
  Result := 6
end;

// Obtener núm. de elementos de la propiedad como string
function TComputerSystemProperties.GetAllResetCapabilityCount:integer;
begin
  Result := 5
end;

// Obtener núm. de elementos de la propiedad como string
function TComputerSystemProperties.GetAllSystemTypeCount:integer;
begin
  Result := 10
end;

// Obtener núm. de elementos de la propiedad como string
function TComputerSystemProperties.GetAllThermalStateCount:integer;
begin
  Result := 6
end;

// Obtener núm. de elementos de la propiedad como string
function TComputerSystemProperties.GetAllWakeUpTypeCount:integer;
begin
  Result := 9
end;

// Obtiene el resultado de ejecutar un método como string 
function TComputerSystemInfo.GetErrorControlAsString(FErrorControl:integer): string; 
begin
   case FErrorControl of
     0: Result := 'Correcto';
     1: Result := 'Otros';
    else
      Result := EmptyStr
    end;
end;

function TComputerSystemInfo.Rename(AInstanceProp:string; AInstanceValue:Variant;
      aName:string;
      aPassword:string;
      aUserName:string):integer;
var
  arr:TArrVariant;
  v:variant;
begin
  SetLength(arr, 3);
  arr[0] := aName;
  arr[1] := aPassword;
  arr[2] := aUserName;
  // Ejecutar el proceso
  ExecuteClassMethod(Self, AInstanceProp, AInstanceValue,
    'Rename',
    ['Name', 'Password', 'UserName'],
    arr,
    [ptIn, ptIn, ptIn],
    [wbemCIMTypeString, wbemCIMTypeString, wbemCIMTypeString],
    v);
  Result := v;
end;

end.
