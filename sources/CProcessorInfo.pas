{
TProcessorInfo Component Version 3.1 - Suite GLibWMI
Copyright (©) 2020,  by Germán Estévez (Neftalí)

La clase Win32_Processor representa un dispositivo capaz de interpretar una secuencia de instrucciones 
de código máquina en un equipo Win32. En un equipo multiprocesador, habrá una instancia de esta clase 
para cada procesador.


Utilización/Usage:
(ES) Basta con "soltar" el componente y activarlo.
(EN) Place the component in the form and active it.

MSDN Info:
https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-processor

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
unit CProcessorInfo;

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
  TProcessorProperties = class(TPersistent)
  private
    {%PrivateClassVars PropertiesClass%}
    FAddressWidth:integer;
    FArchitecture:integer;
    FAssetTag:string;
    FAvailability:integer;
    FCaption:string;
    FCharacteristics:integer;
    FConfigManagerErrorCode:integer;
    FConfigManagerUserConfig:boolean;
    FCpuStatus:integer;
    FCreationClassName:string;
    FCurrentClockSpeed:integer;
    FCurrentVoltage:integer;
    FDataWidth:integer;
    FDescription:string;
    FDeviceID:string;
    FErrorCleared:boolean;
    FErrorDescription:string;
    FExtClock:integer;
    FFamily:integer;
    FInstallDate:TDatetime;
    FL2CacheSize:integer;
    FL2CacheSpeed:integer;
    FL3CacheSize:integer;
    FL3CacheSpeed:integer;
    FLastErrorCode:integer;
    FLevel:integer;
    FLoadPercentage:integer;
    FManufacturer:string;
    FMaxClockSpeed:integer;
    FName:string;
    FNumberOfCores:integer;
    FNumberOfEnabledCore:integer;
    FNumberOfLogicalProcessors:integer;
    FOtherFamilyDescription:string;
    FPartNumber:string;
    FPNPDeviceID:string;
    FPowerManagementCapabilities:TArrInteger;
    FPowerManagementCapabilitiesCount:integer;
    FPowerManagementCapabilitiesAsString:string;    FPowerManagementSupported:boolean;
    FProcessorId:string;
    FProcessorType:integer;
    FRevision:integer;
    FRole:string;
    FSecondLevelAddressTranslationExtensions:boolean;
    FSerialNumber:string;
    FSocketDesignation:string;
    FStatus:string;
    FStatusInfo:integer;
    FStepping:string;
    FSystemCreationClassName:string;
    FSystemName:string;
    FThreadCount:integer;
    FUniqueId:string;
    FUpgradeMethod:integer;
    FVersion:string;
    FVirtualizationFirmwareEnabled:boolean;
    FVMMonitorModeExtensions:boolean;
    FVoltageCaps:integer;

  private
    {%PrivateGetMethods PropertiesClass%}
    function GetPowerManagementCapabilities(index: integer):integer;

  public
    {%PublicGetMethods PropertiesClass%}
    // Obtener la propiedad <Architecture> como string
    function GetAllArchitectureAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <Architecture>
    function GetAllArchitectureCount:integer;
    // Obtener la propiedad <Availability> como string
    function GetAllAvailabilityAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <Availability>
    function GetAllAvailabilityCount:integer;
    // Obtener la propiedad <ConfigManagerErrorCode> como string
    function GetAllConfigManagerErrorCodeAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <ConfigManagerErrorCode>
    function GetAllConfigManagerErrorCodeCount:integer;
    // Obtener la propiedad <CpuStatus> como string
    function GetAllCpuStatusAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <CpuStatus>
    function GetAllCpuStatusCount:integer;
    // Obtener la propiedad <Family> como string
    function GetAllFamilyAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <Family>
    function GetAllFamilyCount:integer;
    // Obtener la propiedad <PowerManagementCapabilities> como string
    function GetAllPowerManagementCapabilitiesAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <PowerManagementCapabilities>
    function GetAllPowerManagementCapabilitiesCount:integer;
    // Obtener la propiedad <ProcessorType> como string
    function GetAllProcessorTypeAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <ProcessorType>
    function GetAllProcessorTypeCount:integer;
    // Obtener la propiedad <StatusInfo> como string
    function GetAllStatusInfoAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <StatusInfo>
    function GetAllStatusInfoCount:integer;
    // Obtener la propiedad <UpgradeMethod> como string
    function GetAllUpgradeMethodAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <UpgradeMethod>
    function GetAllUpgradeMethodCount:integer;

    {%PublicArrayMethods PropertiesClass%}
    property PowerManagementCapabilities[index:integer]:integer read GetPowerManagementCapabilities;
    property PowerManagementCapabilitiesCount:integer read FPowerManagementCapabilitiesCount stored False;

  published
    {%PublishedProperties PropertiesClass%}
    /// <summary>
    /// </summary>
    property AddressWidth:integer read FAddressWidth write FAddressWidth stored False;
    /// <summary>
    ///  La propiedad Architecture especifica la arquitectura del procesador usada por esta plataforma. Devuelve 
    ///  uno de los siguientes valores enteros:
    ///  0 - x86 
    ///  1 - MIPS 
    ///  2 - Alpha 
    ///  3 - PowerPC 
    ///  6 - ia64 
    ///  9 - x64 
    /// </summary>
    property Architecture:integer read FArchitecture write FArchitecture stored False;
    /// <summary>
    ///  La propiedad Architecture especifica la arquitectura del procesador usada por esta plataforma. Devuelve 
    ///  uno de los siguientes valores enteros:
    ///  0 - x86 
    ///  1 - MIPS 
    ///  2 - Alpha 
    ///  3 - PowerPC 
    ///  6 - ia64 
    ///  9 - x64 
    /// </summary>
    property AssetTag:string read FAssetTag write FAssetTag stored False;
    /// <summary>
    ///  La disponibilidad y estado del dispositivo. Por ejemplo, la propiedad disponibilidad, indica que el dispositivo 
    ///  está en funcionamiento y tiene energía total (valor=3), o se encuentra en un estado de aviso (4), prueba 
    ///  (5), degradado (10) o ahorro de energía (valores 13-15 y 17). En relación con los estados de ahorro de 
    ///  energía, éstos se definen como sigue: Valor 13 ("Ahorro de energía: desconocido") indica que se sabe 
    ///  que el dispositivo está en un modo de ahorro de energía, pero se desconoce su estado exacto en este modo; 
    ///  14 ("Ahorro de energía: modo de bajo consumo") indica que el dispositivo está en un estado de  ahorro 
    ///  de energía, pero sigue funcionando y puede exhibir una baja de rendimiento;  15 ("Ahorro de energía: 
    ///  espera") describe que el sistema no está en funcionamiento, pero que se podría poner en operación "rápidamente"; 
    ///  y valor 17 ("Ahorro de energía: advertencia") indica que el equipo está en un estado de aviso, aunque 
    ///  está también en modo de ahorro de energía.
    /// </summary>
    property Availability:integer read FAvailability write FAvailability stored False;
    /// <summary>
    ///  La disponibilidad y estado del dispositivo. Por ejemplo, la propiedad disponibilidad, indica que el dispositivo 
    ///  está en funcionamiento y tiene energía total (valor=3), o se encuentra en un estado de aviso (4), prueba 
    ///  (5), degradado (10) o ahorro de energía (valores 13-15 y 17). En relación con los estados de ahorro de 
    ///  energía, éstos se definen como sigue: Valor 13 ("Ahorro de energía: desconocido") indica que se sabe 
    ///  que el dispositivo está en un modo de ahorro de energía, pero se desconoce su estado exacto en este modo; 
    ///  14 ("Ahorro de energía: modo de bajo consumo") indica que el dispositivo está en un estado de  ahorro 
    ///  de energía, pero sigue funcionando y puede exhibir una baja de rendimiento;  15 ("Ahorro de energía: 
    ///  espera") describe que el sistema no está en funcionamiento, pero que se podría poner en operación "rápidamente"; 
    ///  y valor 17 ("Ahorro de energía: advertencia") indica que el equipo está en un estado de aviso, aunque 
    ///  está también en modo de ahorro de energía.
    /// </summary>
    property Caption:string read FCaption write FCaption stored False;
    /// <summary>
    ///  La disponibilidad y estado del dispositivo. Por ejemplo, la propiedad disponibilidad, indica que el dispositivo 
    ///  está en funcionamiento y tiene energía total (valor=3), o se encuentra en un estado de aviso (4), prueba 
    ///  (5), degradado (10) o ahorro de energía (valores 13-15 y 17). En relación con los estados de ahorro de 
    ///  energía, éstos se definen como sigue: Valor 13 ("Ahorro de energía: desconocido") indica que se sabe 
    ///  que el dispositivo está en un modo de ahorro de energía, pero se desconoce su estado exacto en este modo; 
    ///  14 ("Ahorro de energía: modo de bajo consumo") indica que el dispositivo está en un estado de  ahorro 
    ///  de energía, pero sigue funcionando y puede exhibir una baja de rendimiento;  15 ("Ahorro de energía: 
    ///  espera") describe que el sistema no está en funcionamiento, pero que se podría poner en operación "rápidamente"; 
    ///  y valor 17 ("Ahorro de energía: advertencia") indica que el equipo está en un estado de aviso, aunque 
    ///  está también en modo de ahorro de energía.
    /// </summary>
    property Characteristics:integer read FCharacteristics write FCharacteristics stored False;
    /// <summary>
    ///  Indica el código de error del Administrador de configuración de Win32. Los valores siguientes pueden 
    ///  ser devueltos: 
    ///  0 Este dispositivo funciona correctamente. 
    ///  1 Este dispositivo no está configurado correctamente. 
    ///  2 Windows no puede cargar el controlador para este dispositivo. 
    ///  3 El controlador de este dispositivo 
    ///  puede estar dañado o le falta memoria o recursos a su sistema. 
    ///  4 Este dispositivo no funciona correctamente. 
    ///  Uno de sus controladores o el Registro pueden estar dañados. 
    ///  5 El controlador de este dispositivo necesita 
    ///  un recurso que Windows no puede administrar. 
    ///  6 La configuración de arranque de este dispositivo entra 
    ///  en conflicto con otros dispositivos. 
    ///  7 No se puede filtrar. 
    ///  8 Falta el cargador de controlador del 
    ///  dispositivo. 
    ///  9 Este dispositivo no funciona correctamente porque el firmware de control está informando 
    ///  incorrectamente acerca de los recursos del dispositivo. 
    ///  10 El dispositivo no puede se iniciar. 
    ///  11 Error 
    ///  en el dispositivo. 
    ///  12 Este dispositivo no encuentra suficientes recursos libres para usar. 
    ///  13 Windows 
    ///  no puede comprobar los recursos de este dispositivo. 
    ///  14 Este dispositivo no funcionará correctamente 
    ///  hasta que reinicie su equipo. 
    ///  15 Este dispositivo no funciona correctamente porque hay un posible problema 
    ///  de enumeración. 
    ///  16 Windows no puede identificar todos los recursos que utiliza este dispositivo. 
    ///  17 
    ///  Este dispositivo está solicitando un tipo de recurso desconocido. 
    ///  18 Vuelva a instalar los controladores 
    ///  de este dispositivo 
    ///  19 Su Registro debe estar dañado. 
    ///  20 Error usar el cargador VxD. 
    ///  21 Error del 
    ///  sistema: intente cambiar el controlador de este dispositivo. Si esto no funciona, consulte la documentación 
    ///  de hardware. Windows está quitando este dispositivo. 
    ///  22 Este dispositivo está deshabilitado. 
    ///  23 Error 
    ///  del ntación de hardware. 
    ///  24 Este dispositivo no está presente, no funciona correctamente o no tiene 
    ///  todos los controladores instalados. 
    ///  25 Windows aún está instalando este dispositivo. 
    ///  26 Windows aún 
    ///  está instalando este dispositivo. 
    ///  27 Este dispositivo no tiene una configuración de Registro válida. 
    ///  28 Los controladores de este dispositivo no están instalados. 
    ///  29 Este dispositivo está deshabilitado 
    ///  porque el firmware no proporcionó los recursos requeridos. 
    ///  30 Este dispositivo está utilizando una recurso 
    ///  de solicitud de interrupción (IRQ) que ya está usando otro dispositivo. 
    ///  31 Este dispositivo no funciona 
    ///  correctamente porque Windows no puede cargar los controladores requeridos.
    /// </summary>
    property ConfigManagerErrorCode:integer read FConfigManagerErrorCode write FConfigManagerErrorCode stored False;
    /// <summary>
    ///  Indica el código de error del Administrador de configuración de Win32. Los valores siguientes pueden 
    ///  ser devueltos: 
    ///  0 Este dispositivo funciona correctamente. 
    ///  1 Este dispositivo no está configurado correctamente. 
    ///  2 Windows no puede cargar el controlador para este dispositivo. 
    ///  3 El controlador de este dispositivo 
    ///  puede estar dañado o le falta memoria o recursos a su sistema. 
    ///  4 Este dispositivo no funciona correctamente. 
    ///  Uno de sus controladores o el Registro pueden estar dañados. 
    ///  5 El controlador de este dispositivo necesita 
    ///  un recurso que Windows no puede administrar. 
    ///  6 La configuración de arranque de este dispositivo entra 
    ///  en conflicto con otros dispositivos. 
    ///  7 No se puede filtrar. 
    ///  8 Falta el cargador de controlador del 
    ///  dispositivo. 
    ///  9 Este dispositivo no funciona correctamente porque el firmware de control está informando 
    ///  incorrectamente acerca de los recursos del dispositivo. 
    ///  10 El dispositivo no puede se iniciar. 
    ///  11 Error 
    ///  en el dispositivo. 
    ///  12 Este dispositivo no encuentra suficientes recursos libres para usar. 
    ///  13 Windows 
    ///  no puede comprobar los recursos de este dispositivo. 
    ///  14 Este dispositivo no funcionará correctamente 
    ///  hasta que reinicie su equipo. 
    ///  15 Este dispositivo no funciona correctamente porque hay un posible problema 
    ///  de enumeración. 
    ///  16 Windows no puede identificar todos los recursos que utiliza este dispositivo. 
    ///  17 
    ///  Este dispositivo está solicitando un tipo de recurso desconocido. 
    ///  18 Vuelva a instalar los controladores 
    ///  de este dispositivo 
    ///  19 Su Registro debe estar dañado. 
    ///  20 Error usar el cargador VxD. 
    ///  21 Error del 
    ///  sistema: intente cambiar el controlador de este dispositivo. Si esto no funciona, consulte la documentación 
    ///  de hardware. Windows está quitando este dispositivo. 
    ///  22 Este dispositivo está deshabilitado. 
    ///  23 Error 
    ///  del ntación de hardware. 
    ///  24 Este dispositivo no está presente, no funciona correctamente o no tiene 
    ///  todos los controladores instalados. 
    ///  25 Windows aún está instalando este dispositivo. 
    ///  26 Windows aún 
    ///  está instalando este dispositivo. 
    ///  27 Este dispositivo no tiene una configuración de Registro válida. 
    ///  28 Los controladores de este dispositivo no están instalados. 
    ///  29 Este dispositivo está deshabilitado 
    ///  porque el firmware no proporcionó los recursos requeridos. 
    ///  30 Este dispositivo está utilizando una recurso 
    ///  de solicitud de interrupción (IRQ) que ya está usando otro dispositivo. 
    ///  31 Este dispositivo no funciona 
    ///  correctamente porque Windows no puede cargar los controladores requeridos.
    /// </summary>
    property ConfigManagerUserConfig:boolean read FConfigManagerUserConfig write FConfigManagerUserConfig stored False;
    /// <summary>
    ///  La propiedad CpuStatus especifica el estado actual del procesador. Los cambios de estado surgen al usar 
    ///  el procesador, no dependen de su condición física.
    /// </summary>
    property CpuStatus:integer read FCpuStatus write FCpuStatus stored False;
    /// <summary>
    ///  CreationClassName indica el nombre de la clase o subclase que se usa en la creación de una instancia. 
    ///  Cuando se usa con las demás propiedades clave de esta clase, esta propiedad permite que se identifiquen 
    ///  de manera única todas las instancias de esta clase y sus subclases.
    /// </summary>
    property CreationClassName:string read FCreationClassName write FCreationClassName stored False;
    /// <summary>
    ///  CreationClassName indica el nombre de la clase o subclase que se usa en la creación de una instancia. 
    ///  Cuando se usa con las demás propiedades clave de esta clase, esta propiedad permite que se identifiquen 
    ///  de manera única todas las instancias de esta clase y sus subclases.
    /// </summary>
    property CurrentClockSpeed:integer read FCurrentClockSpeed write FCurrentClockSpeed stored False;
    /// <summary>
    ///  La propiedad CurrentVoltage especifica el voltaje del procesador. Los bits 0 a 6 del campo contienen 
    ///  el voltaje actual del procesador multiplicado por diez. Este valor sólo se establece cuando el SMBIOS 
    ///  designa un valor de voltaje. Para obtener valores específicos, consulte VoltageCaps.
    ///  Ejemplo: el valor 
    ///  del campo para un voltaje de procesador de 1,8 voltios sería 92h = 80h + (1,8 x 10) = 80h + 18 = 80h 
    ///  + 12h.
    /// </summary>
    property CurrentVoltage:integer read FCurrentVoltage write FCurrentVoltage stored False;
    /// <summary>
    ///  La propiedad CurrentVoltage especifica el voltaje del procesador. Los bits 0 a 6 del campo contienen 
    ///  el voltaje actual del procesador multiplicado por diez. Este valor sólo se establece cuando el SMBIOS 
    ///  designa un valor de voltaje. Para obtener valores específicos, consulte VoltageCaps.
    ///  Ejemplo: el valor 
    ///  del campo para un voltaje de procesador de 1,8 voltios sería 92h = 80h + (1,8 x 10) = 80h + 18 = 80h 
    ///  + 12h.
    /// </summary>
    property DataWidth:integer read FDataWidth write FDataWidth stored False;
    /// <summary>
    ///  La propiedad CurrentVoltage especifica el voltaje del procesador. Los bits 0 a 6 del campo contienen 
    ///  el voltaje actual del procesador multiplicado por diez. Este valor sólo se establece cuando el SMBIOS 
    ///  designa un valor de voltaje. Para obtener valores específicos, consulte VoltageCaps.
    ///  Ejemplo: el valor 
    ///  del campo para un voltaje de procesador de 1,8 voltios sería 92h = 80h + (1,8 x 10) = 80h + 18 = 80h 
    ///  + 12h.
    /// </summary>
    property Description:string read FDescription write FDescription stored False;
    /// <summary>
    ///  La propiedad DeviceID contiene una cadena que identifica de forma única el procesador con respecto a 
    ///  otros dispositivos del sistema.
    /// </summary>
    property DeviceID:string read FDeviceID write FDeviceID stored False;
    /// <summary>
    ///  ErrorCleared es una propiedad booleana que indica que el error comunicado en la propiedad LastErrorCode 
    ///  se ha resuelto ahora.
    /// </summary>
    property ErrorCleared:boolean read FErrorCleared write FErrorCleared stored False;
    /// <summary>
    ///  ErrorDescription es una cadena de forma libre que ofrece más información acerca del error registrado 
    ///  en la propiedad LastErrorCode e información acerca de cualquier acción correctiva que se pueda tomar
    ///  .
    /// </summary>
    property ErrorDescription:string read FErrorDescription write FErrorDescription stored False;
    /// <summary>
    ///  La propiedad ExtClock especifica la frecuencia del reloj externo. Si la frecuencia no se conoce, esta 
    ///  propiedad se establece como null.
    /// </summary>
    property ExtClock:integer read FExtClock write FExtClock stored False;
    /// <summary>
    ///  El tipo de familia del procesador. Por ejemplo, los valores incluyen "Procesador Pentium(R) con tecnología 
    ///  MMX(TM)" (14) y "68040" (96).
    /// </summary>
    property Family:integer read FFamily write FFamily stored False;
    /// <summary>
    ///  El tipo de familia del procesador. Por ejemplo, los valores incluyen "Procesador Pentium(R) con tecnología 
    ///  MMX(TM)" (14) y "68040" (96).
    /// </summary>
    property InstallDate:TDatetime read FInstallDate write FInstallDate stored False;
    /// <summary>
    ///  La propiedad L2CacheSize especifica el tamaño de la caché de nivel 2 del procesador. Una caché de nivel 
    ///  2 es un área de memoria externa que presenta un tiempo de acceso más rápido que la memoria RAM princ
    ///  ipal.
    /// </summary>
    property L2CacheSize:integer read FL2CacheSize write FL2CacheSize stored False;
    /// <summary>
    ///  La propiedad L2CacheSpeed especifica la velocidad de reloj de la caché de nivel 2 del procesador. Una 
    ///  caché de nivel 2 es un área de memoria externa que presenta un tiempo de acceso más rápido que la memoria 
    ///  RAM principal.
    /// </summary>
    property L2CacheSpeed:integer read FL2CacheSpeed write FL2CacheSpeed stored False;
    /// <summary>
    ///  La propiedad L3CacheSize especifica el tamaño de la caché de nivel 3 del procesador. Una caché de nivel 
    ///  3 es un área de memoria externa que presenta un tiempo de acceso más rápido que la memoria RAM princ
    ///  ipal.
    /// </summary>
    property L3CacheSize:integer read FL3CacheSize write FL3CacheSize stored False;
    /// <summary>
    ///  La propiedad L3CacheSpeed especifica la velocidad de reloj de la caché de nivel 3 del procesador. Una 
    ///  caché de nivel 3 es un área de memoria externa que presenta un tiempo de acceso más rápido que la memoria 
    ///  RAM principal.
    /// </summary>
    property L3CacheSpeed:integer read FL3CacheSpeed write FL3CacheSpeed stored False;
    /// <summary>
    ///  LastErrorCode captura el último código de error informado por el dispositivo lógico.
    /// </summary>
    property LastErrorCode:integer read FLastErrorCode write FLastErrorCode stored False;
    /// <summary>
    ///  La propiedad Level define con más detalle el tipo de procesador. El valor depende de la arquitectura 
    ///  del procesador.
    /// </summary>
    property Level:integer read FLevel write FLevel stored False;
    /// <summary>
    ///  La propiedad LoadPercentage especifica la capacidad de carga de cada procesador como promedio en el último 
    ///  segundo. El término 'carga del procesador' se refiere a la carga total que cada procesador detenta en 
    ///  cada momento.
    /// </summary>
    property LoadPercentage:integer read FLoadPercentage write FLoadPercentage stored False;
    /// <summary>
    ///  La propiedad Manufacturer indica el fabricante del procesador.
    ///  Ejemplo: GenuineSilicon
    /// </summary>
    property Manufacturer:string read FManufacturer write FManufacturer stored False;
    /// <summary>
    ///  La propiedad Manufacturer indica el fabricante del procesador.
    ///  Ejemplo: GenuineSilicon
    /// </summary>
    property MaxClockSpeed:integer read FMaxClockSpeed write FMaxClockSpeed stored False;
    /// <summary>
    ///  La propiedad Manufacturer indica el fabricante del procesador.
    ///  Ejemplo: GenuineSilicon
    /// </summary>
    property Name:string read FName write FName stored False;
    /// <summary>
    ///  La propiedad NumberOfCores contiene el número total de núcleos de un procesador. Por ejemplo, un equipo 
    ///  con un procesador dual tiene NumberOfCores = 2.
    /// </summary>
    property NumberOfCores:integer read FNumberOfCores write FNumberOfCores stored False;
    /// <summary>
    ///  La propiedad NumberOfCores contiene el número total de núcleos de un procesador. Por ejemplo, un equipo 
    ///  con un procesador dual tiene NumberOfCores = 2.
    /// </summary>
    property NumberOfEnabledCore:integer read FNumberOfEnabledCore write FNumberOfEnabledCore stored False;
    /// <summary>
    ///  La propiedad NumberOfLogicalProcessors especifica el número total de procesadores lógicos.
    /// </summary>
    property NumberOfLogicalProcessors:integer read FNumberOfLogicalProcessors write FNumberOfLogicalProcessors stored False;
    /// <summary>
    ///  Una cadena que describe el tipo de familia del procesador. Utilizado cuando la propiedad familia esté 
    ///  establecida como 1 ("Otros"). Esta cadena debe ser establecida como NULL cuando la propiedad de la familia 
    ///  es cualquier valor diferente de 1.
    /// </summary>
    property OtherFamilyDescription:string read FOtherFamilyDescription write FOtherFamilyDescription stored False;
    /// <summary>
    ///  Número de cadena del número de pieza de este procesador. Este valor lo define el fabricante y normalmente 
    ///  no se puede cambiar.
    /// </summary>
    property PartNumber:string read FPartNumber write FPartNumber stored False;
    /// <summary>
    ///  Número de cadena del número de pieza de este procesador. Este valor lo define el fabricante y normalmente 
    ///  no se puede cambiar.
    /// </summary>
    property PNPDeviceID:string read FPNPDeviceID write FPNPDeviceID stored False;
    /// <summary>
    ///  Indica los recursos específicos relacionados con energía de dispositivo lógico. Los valores de la matriz, 
    ///  0="Desconocido", 1="No compatible" y 2="Deshabilitado" se explican por sí solos. El valor 3="Habilitado" 
    ///  indica que las características de administración de energía están habilitadas actualmente pero se desconoce 
    ///  el conjunto de características exacto o la información no está disponible. " Modos de ahorro de energía 
    ///  establecidos automáticamente " (4) describe que un dispositivo puede cambiar su estado de energía con 
    ///  base en el uso u otros criterios. " Estado de energía configurable " (5) indica que se admite el método 
    ///  SetPowerState. " Ciclo de energía permitido " (6) indica que se puede invocar el método SetPowerState 
    ///  con la variable de entrada PowerState establecida a 5 ("Ciclo de energía "). " Se admite el encendido 
    ///  por tiempo " (7) indica que el método SetPowerState puede ser invocado con la variable de entrada PowerState 
    ///  establecida  a 5 ("Ciclo de energía ") y el parámetro Time establecido a un fecha y hora específica, 
    ///  o intervalo, para encendido.
    /// </summary>
    property PowerManagementCapabilitiesAsString:string read FPowerManagementCapabilitiesAsString write FPowerManagementCapabilitiesAsString stored False;
    /// <summary>
    ///  Booleano que indica que el Dispositivo se puede administrar con energía - por ej., ponerlo en un estado 
    ///  de ahorro de energía. Este booleano no indica que las características de administración de energía están 
    ///  actualmente habilitadas, o si están deshabilitadas, las características que son compatibles. Consulte 
    ///  la matriz PowerManagementCapabilities para obtener esta información. Si este booleano es falso, el valor 
    ///  entero 1, para la cadena, "No compatible", debe ser la única entrada en la matriz PowerManagementCap
    ///  abilities.
    /// </summary>
    property PowerManagementSupported:boolean read FPowerManagementSupported write FPowerManagementSupported stored False;
    /// <summary>
    ///  La propiedad ProcessorId contiene información específica del procesador que describe sus características. 
    ///  Para las CPU de clase x86, el formato del campo depende de si el procesador admite la instrucción CPUID. 
    ///  Si es así, la propiedad ProcessorId contiene dos valores con formato DWORD. El primero (entre las direcciones 
    ///  08h y 0Bh) es el valor del registro EAX devuelto por una instrucción CPUID con el EAX de entrada establecido 
    ///  como 1. El segundo (entre las direcciones 0Ch y 0Fh) es el valor del registro EDX devuelto por esa instrucción. 
    ///  Sólo son significativos los dos primeros bytes de la propiedad ProcessorID (los demás se establecen como 
    ///  cero) y almacenan, en formato WORD, el contenido del registro DX al restablecer la CPU.
    /// </summary>
    property ProcessorId:string read FProcessorId write FProcessorId stored False;
    /// <summary>
    ///  La propiedad ProcessorId contiene información específica del procesador que describe sus características. 
    ///  Para las CPU de clase x86, el formato del campo depende de si el procesador admite la instrucción CPUID. 
    ///  Si es así, la propiedad ProcessorId contiene dos valores con formato DWORD. El primero (entre las direcciones 
    ///  08h y 0Bh) es el valor del registro EAX devuelto por una instrucción CPUID con el EAX de entrada establecido 
    ///  como 1. El segundo (entre las direcciones 0Ch y 0Fh) es el valor del registro EDX devuelto por esa instrucción. 
    ///  Sólo son significativos los dos primeros bytes de la propiedad ProcessorID (los demás se establecen como 
    ///  cero) y almacenan, en formato WORD, el contenido del registro DX al restablecer la CPU.
    /// </summary>
    property ProcessorType:integer read FProcessorType write FProcessorType stored False;
    /// <summary>
    ///  La propiedad Revision especifica el nivel de revisión dependiente de la arquitectura del sistema. El 
    ///  significado de este valor depende de la arquitectura del procesador. Contiene los mismos valores que 
    ///  el miembro "Versión", pero en formato numérico.
    /// </summary>
    property Revision:integer read FRevision write FRevision stored False;
    /// <summary>
    ///  Una cadena de forma libre que describe el rol del procesador  - por ejemplo,  "Procesador central"' o 
    ///  "Procesador matemático"
    /// </summary>
    property Role:string read FRole write FRole stored False;
    /// <summary>
    ///  La propiedad SecondLevelAddressTranslationExtensions determina si el procesador admite el uso de extensiones 
    ///  de traducción de direcciones para virtualización.
    /// </summary>
    property SecondLevelAddressTranslationExtensions:boolean read FSecondLevelAddressTranslationExtensions write FSecondLevelAddressTranslationExtensions stored False;
    /// <summary>
    ///  Número de cadena del número de serie de este procesador. Este valor lo define el fabricante y normalmente 
    ///  no se puede cambiar.
    /// </summary>
    property SerialNumber:string read FSerialNumber write FSerialNumber stored False;
    /// <summary>
    ///  La propiedad SocketDesignation contiene el tipo de zócalo de chip usado en el circuito.
    ///  Ejemplo: J20
    ///  2
    /// </summary>
    property SocketDesignation:string read FSocketDesignation write FSocketDesignation stored False;
    /// <summary>
    ///  La propiedad SocketDesignation contiene el tipo de zócalo de chip usado en el circuito.
    ///  Ejemplo: J20
    ///  2
    /// </summary>
    property Status:string read FStatus write FStatus stored False;
    /// <summary>
    ///  StatusInfo es una cadena que indica si el dispositivo lógico está en un estado habilitado (valor = 3), 
    ///  deshabilitado (valor = 4) o algún otro estado (1) o un estado desconocido (2). Si esta propiedad no se 
    ///  aplica al dispositivo lógico, el valor, 5 ("No aplicable"), debe ser usado.
    /// </summary>
    property StatusInfo:integer read FStatusInfo write FStatusInfo stored False;
    /// <summary>
    ///  El submodelo es una cadena con formato libre que indica el nivel de revisión del procesador dentro de 
    ///  la familia de procesadores.
    /// </summary>
    property Stepping:string read FStepping write FStepping stored False;
    /// <summary>
    ///  El submodelo es una cadena con formato libre que indica el nivel de revisión del procesador dentro de 
    ///  la familia de procesadores.
    /// </summary>
    property SystemCreationClassName:string read FSystemCreationClassName write FSystemCreationClassName stored False;
    /// <summary>
    ///  El submodelo es una cadena con formato libre que indica el nivel de revisión del procesador dentro de 
    ///  la familia de procesadores.
    /// </summary>
    property SystemName:string read FSystemName write FSystemName stored False;
    /// <summary>
    ///  El submodelo es una cadena con formato libre que indica el nivel de revisión del procesador dentro de 
    ///  la familia de procesadores.
    /// </summary>
    property ThreadCount:integer read FThreadCount write FThreadCount stored False;
    /// <summary>
    ///  Un identificador global único para el procesador. Este identificador sólo puede ser único dentro de una 
    ///  familia de procesadores.
    /// </summary>
    property UniqueId:string read FUniqueId write FUniqueId stored False;
    /// <summary>
    ///  Información del socket de la CPU incluyendo datos acerca de como se puede actualizar este procesador 
    ///  (si las actualizaciones son compaltibles). Esta propiedad es una enumeración de enteros.
    /// </summary>
    property UpgradeMethod:integer read FUpgradeMethod write FUpgradeMethod stored False;
    /// <summary>
    ///  La propiedad Version especifica un número de revisión de procesador dependiente de la arquitectura. Nota: 
    ///  este miembro no se usa en Windows 95.
    ///  Ejemplo: Modelo 2, submodelo 12.
    /// </summary>
    property Version:string read FVersion write FVersion stored False;
    /// <summary>
    ///  La propiedad VirtualizationFirmwareEnabled determina si el firmware tiene habilitadas extensiones de 
    ///  virtualización.
    /// </summary>
    property VirtualizationFirmwareEnabled:boolean read FVirtualizationFirmwareEnabled write FVirtualizationFirmwareEnabled stored False;
    /// <summary>
    ///  La propiedad VMMonitorModeExtensions determina si el procesador admite extensiones de Monitor de equipo 
    ///  virtual Intel o AMD.
    /// </summary>
    property VMMonitorModeExtensions:boolean read FVMMonitorModeExtensions write FVMMonitorModeExtensions stored False;
    /// <summary>
    ///  La propiedad VoltageCaps especifica las capacidades de voltaje del procesador. Los bits 0 a 3 del campo 
    ///  representan voltajes específicos que acepta el zócalo del procesador. El resto de los bits se deben establecer 
    ///  como cero. Es posible configurar el zócalo mediante la definición de varios bits. Para obtener un intervalo 
    ///  de voltajes, consulte CurrentVoltage. Si la propiedad es NULL, las capacidades de voltaje se descono
    ///  cen.
    /// </summary>
    property VoltageCaps:integer read FVoltageCaps write FVoltageCaps stored False;
  end;

  {%InterfaceClass WMIClass%}
  /// <summary>
  ///  La clase Win32_Processor representa un dispositivo capaz de interpretar una secuencia de instrucciones 
  ///  de código máquina en un equipo Win32. En un equipo multiprocesador, habrá una instancia de esta clase 
  ///  para cada procesador.
  /// </summary>
  TProcessorInfo = class(TWMIBase)
  private
    FProcessorProperties: TProcessorProperties;
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
    // propiedades de la Processor
    property ProcessorProperties:TProcessorProperties read   FProcessorProperties write FProcessorProperties;
  end;


// Constantes para la propiedad Architecture
const 
  ENUM_STRING_ARCHITECTURE_00 = 'x86';
  ENUM_STRING_ARCHITECTURE_01 = 'MIPS';
  ENUM_STRING_ARCHITECTURE_02 = 'Opacidad (Alpha)';
  ENUM_STRING_ARCHITECTURE_03 = 'PowerPC';
  ENUM_STRING_ARCHITECTURE_04 = 'ia64';
  ENUM_STRING_ARCHITECTURE_05 = 'x64';

// Constantes para la propiedad Availability
const 
  ENUM_STRING_AVAILABILITY_00 = 'Otros';
  ENUM_STRING_AVAILABILITY_01 = 'Desconocido';
  ENUM_STRING_AVAILABILITY_02 = 'Funcionar/Energía completa';
  ENUM_STRING_AVAILABILITY_03 = 'Advertencia';
  ENUM_STRING_AVAILABILITY_04 = 'En prueba';
  ENUM_STRING_AVAILABILITY_05 = 'No aplicable';
  ENUM_STRING_AVAILABILITY_06 = 'Apagado';
  ENUM_STRING_AVAILABILITY_07 = 'Sin conexión a la red';
  ENUM_STRING_AVAILABILITY_08 = 'Inactivo';
  ENUM_STRING_AVAILABILITY_09 = 'Degradado';
  ENUM_STRING_AVAILABILITY_10 = 'No instalado';
  ENUM_STRING_AVAILABILITY_11 = 'Error de instalación';
  ENUM_STRING_AVAILABILITY_12 = 'Ahorro de energía: desconocido';
  ENUM_STRING_AVAILABILITY_13 = 'Ahorro de energía: modo de bajo consumo';
  ENUM_STRING_AVAILABILITY_14 = 'Ahorro de energía: espera';
  ENUM_STRING_AVAILABILITY_15 = 'Ciclo de energía';
  ENUM_STRING_AVAILABILITY_16 = 'Ahorro de energía: advertencia';
  ENUM_STRING_AVAILABILITY_17 = 'Pausado';
  ENUM_STRING_AVAILABILITY_18 = 'no está listo';
  ENUM_STRING_AVAILABILITY_19 = 'No configurado';
  ENUM_STRING_AVAILABILITY_20 = 'Inactivo';

// Constantes para la propiedad ConfigManagerErrorCode
const 
  ENUM_STRING_CONFIGMANAGERERRORCODE_00 = 'Este dispositivo funciona correctamente.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_01 = 'El dispositivo no está configurado correctamente.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_02 = 'Windows no puede cargar el controlador para este dispositivo.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_03 = 'El controlador de este dispositivo podría estar dañado o es posible que su sistema tenga poca memoria u otros recursos.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_04 = 'Este dispositivo no funciona correctamente. Podría estar dañado uno de sus controladores o el Registro.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_05 = 'El controlador de este dispositivo necesita un recurso que Windows no puede administrar.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_06 = 'La configuración de arranque de este dispositivo está en conflicto con otros dispositivos.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_07 = 'No se puede filtrar.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_08 = 'Falta el controlador del dispositivo.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_09 = 'Este dispositivo no funciona correctamente porque el firmware de control informa incorrectamente de los recursos del dispositivo.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_10 = 'No puede iniciar este dispositivo.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_11 = 'Error de este dispositivo.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_12 = 'Este dispositivo no encuentra suficientes recursos libres que pueda usar.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_13 = 'Windows no puede comprobar los recursos de este dispositivo.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_14 = 'El dispositivo no puede funcionar correctamente hasta que reinicie su equipo.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_15 = 'Este dispositivo no funciona correctamente porque quizá existe un problema de reenumeración.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_16 = 'Windows no puede identificar todos los recursos que usa este dispositivo.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_17 = 'Este dispositivo está solicitando un tipo de recurso desconocido.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_18 = 'Reinstalar los controladores de este dispositivo.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_19 = 'Error al usar el cargador VxD.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_20 = 'Su Registro podría estar dañado.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_21 = 'Error del sistema: pruebe a cambiar el controlador de este dispositivo. Si eso no funciona, consulte la documentación del hardware. Windows quitará este dispositivo.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_22 = 'Este dispositivo está deshabilitado.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_23 = 'Error del sistema: pruebe a cambiar el controlador de este dispositivo. Si eso no funciona, consulte la documentación del hardware.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_24 = 'Este dispositivo no está presente, no funciona correctamente o no tiene todos sus controladores instalados.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_25 = 'Windows sigue configurando este dispositivo.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_26 = 'Windows sigue configurando este dispositivo.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_27 = 'Este dispositivo no tiene una configuración de registro válida.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_28 = 'Los controladores de este dispositivo no están instalados.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_29 = 'Este dispositivo está deshabilitado porque su firmware no le proporcionó los recursos requeridos.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_30 = 'Este dispositivo usa un recurso de solicitud de interrupción (IRQ) que usa otro dispositivo.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_31 = 'Este dispositivo no funciona correctamente porque Windows no puede cargar los controladores requeridos para este dispositivo.';

// Constantes para la propiedad CpuStatus
const 
  ENUM_STRING_CPUSTATUS_00 = 'Desconocido';
  ENUM_STRING_CPUSTATUS_01 = 'CPU habilitada';
  ENUM_STRING_CPUSTATUS_02 = 'CPU deshabilitada por el usuario a través de la configuración del BIOS';
  ENUM_STRING_CPUSTATUS_03 = 'CPU deshabilitada por el BIOS (error POST)';
  ENUM_STRING_CPUSTATUS_04 = 'CPU inactiva';
  ENUM_STRING_CPUSTATUS_05 = 'Reservado';
  ENUM_STRING_CPUSTATUS_06 = 'Reservado';
  ENUM_STRING_CPUSTATUS_07 = 'Otros';

// Constantes para la propiedad Family
const 
  ENUM_STRING_FAMILY_00 = 'Otros';
  ENUM_STRING_FAMILY_01 = 'Desconocido';
  ENUM_STRING_FAMILY_02 = '8086';
  ENUM_STRING_FAMILY_03 = '80286';
  ENUM_STRING_FAMILY_04 = '80386';
  ENUM_STRING_FAMILY_05 = '80486';
  ENUM_STRING_FAMILY_06 = '8087';
  ENUM_STRING_FAMILY_07 = '80287';
  ENUM_STRING_FAMILY_08 = '80387';
  ENUM_STRING_FAMILY_09 = '80487';
  ENUM_STRING_FAMILY_10 = 'Marca Pentium(R)';
  ENUM_STRING_FAMILY_11 = 'Pentium(R) Pro';
  ENUM_STRING_FAMILY_12 = 'Pentium(R) II';
  ENUM_STRING_FAMILY_13 = 'Procesador Pentium(R) con tecnología MMX(TM)';
  ENUM_STRING_FAMILY_14 = 'Celeron(TM)';
  ENUM_STRING_FAMILY_15 = 'Pentium(R) II Xeon(TM)';
  ENUM_STRING_FAMILY_16 = 'Pentium(R) III';
  ENUM_STRING_FAMILY_17 = 'Familia M1';
  ENUM_STRING_FAMILY_18 = 'Familia M2';
  ENUM_STRING_FAMILY_19 = 'Familia K5';
  ENUM_STRING_FAMILY_20 = 'Familia K6';
  ENUM_STRING_FAMILY_21 = 'K6-2';
  ENUM_STRING_FAMILY_22 = 'K6-3';
  ENUM_STRING_FAMILY_23 = 'Familia de procesadores AMD Athlon(TM)';
  ENUM_STRING_FAMILY_24 = 'Procesador AMD(R) Duron(TM)';
  ENUM_STRING_FAMILY_25 = 'Familia AMD29000';
  ENUM_STRING_FAMILY_26 = 'K6-2+';
  ENUM_STRING_FAMILY_27 = 'Familia Power PC';
  ENUM_STRING_FAMILY_28 = 'Power PC 601';
  ENUM_STRING_FAMILY_29 = 'Power PC 603';
  ENUM_STRING_FAMILY_30 = 'Power PC 603+';
  ENUM_STRING_FAMILY_31 = 'Power PC 604';
  ENUM_STRING_FAMILY_32 = 'Power PC 620';
  ENUM_STRING_FAMILY_33 = 'Power PC X704';
  ENUM_STRING_FAMILY_34 = 'Power PC 750';
  ENUM_STRING_FAMILY_35 = 'Familia Alpha';
  ENUM_STRING_FAMILY_36 = 'Alpha 21064';
  ENUM_STRING_FAMILY_37 = 'Alpha 21066';
  ENUM_STRING_FAMILY_38 = 'Alpha 21164';
  ENUM_STRING_FAMILY_39 = 'Alpha 21164PC';
  ENUM_STRING_FAMILY_40 = 'Alpha 21164a';
  ENUM_STRING_FAMILY_41 = 'Alpha 21264';
  ENUM_STRING_FAMILY_42 = 'Alpha 21364';
  ENUM_STRING_FAMILY_43 = 'Familia MIPS';
  ENUM_STRING_FAMILY_44 = 'MIPS R4000';
  ENUM_STRING_FAMILY_45 = 'MIPS R4200';
  ENUM_STRING_FAMILY_46 = 'MIPS R4400';
  ENUM_STRING_FAMILY_47 = 'MIPS R4600';
  ENUM_STRING_FAMILY_48 = 'MIPS R10000';
  ENUM_STRING_FAMILY_49 = 'Familia SPARC';
  ENUM_STRING_FAMILY_50 = 'SuperSPARC';
  ENUM_STRING_FAMILY_51 = 'microSPARC II';
  ENUM_STRING_FAMILY_52 = 'microSPARC IIep';
  ENUM_STRING_FAMILY_53 = 'UltraSPARC';
  ENUM_STRING_FAMILY_54 = 'UltraSPARC II';
  ENUM_STRING_FAMILY_55 = 'UltraSPARC IIi';
  ENUM_STRING_FAMILY_56 = 'UltraSPARC III';
  ENUM_STRING_FAMILY_57 = 'UltraSPARC IIIi';
  ENUM_STRING_FAMILY_58 = '68040';
  ENUM_STRING_FAMILY_59 = 'Familia 68xxx';
  ENUM_STRING_FAMILY_60 = '68000';
  ENUM_STRING_FAMILY_61 = '68010';
  ENUM_STRING_FAMILY_62 = '68020';
  ENUM_STRING_FAMILY_63 = '68030';
  ENUM_STRING_FAMILY_64 = 'Familia Hobbit';
  ENUM_STRING_FAMILY_65 = 'Familia Crusoe(TM) TM5000';
  ENUM_STRING_FAMILY_66 = 'Familia Crusoe(TM) TM3000';
  ENUM_STRING_FAMILY_67 = 'Familia Efficeon(TM) TM8000';
  ENUM_STRING_FAMILY_68 = 'Weitek';
  ENUM_STRING_FAMILY_69 = 'Procesador Itanium(TM)';
  ENUM_STRING_FAMILY_70 = 'Familia de procesadores AMD Athlon(TM) 64';
  ENUM_STRING_FAMILY_71 = 'Familia AMD Opteron(TM)';
  ENUM_STRING_FAMILY_72 = 'Familia PA-RISC';
  ENUM_STRING_FAMILY_73 = 'PA-RISC 8500';
  ENUM_STRING_FAMILY_74 = 'PA-RISC 8000';
  ENUM_STRING_FAMILY_75 = 'PA-RISC 7300LC';
  ENUM_STRING_FAMILY_76 = 'PA-RISC 7200';
  ENUM_STRING_FAMILY_77 = 'PA-RISC 7100LC';
  ENUM_STRING_FAMILY_78 = 'PA-RISC 7100';
  ENUM_STRING_FAMILY_79 = 'Familia V30';
  ENUM_STRING_FAMILY_80 = 'Pentium(R) III Xeon(TM)';
  ENUM_STRING_FAMILY_81 = 'Procesador Pentium(R) III con tecnología Intel(R) SpeedStep(TM)';
  ENUM_STRING_FAMILY_82 = 'Pentium(R) 4';
  ENUM_STRING_FAMILY_83 = 'Intel(R) Xeon(TM)';
  ENUM_STRING_FAMILY_84 = 'Familia AS400';
  ENUM_STRING_FAMILY_85 = 'Procesador MP Intel(R) Xeon(TM)';
  ENUM_STRING_FAMILY_86 = 'Familia AMD AthlonXP(TM)';
  ENUM_STRING_FAMILY_87 = 'Familia AMD AthlonMP(TM)';
  ENUM_STRING_FAMILY_88 = 'Intel(R) Itanium(R) 2';
  ENUM_STRING_FAMILY_89 = 'Procesador Intel Pentium M';
  ENUM_STRING_FAMILY_90 = 'K7';
  ENUM_STRING_FAMILY_91 = 'Familia IBM390';
  ENUM_STRING_FAMILY_92 = 'G4';
  ENUM_STRING_FAMILY_93 = 'G5';
  ENUM_STRING_FAMILY_94 = 'G6';
  ENUM_STRING_FAMILY_95 = 'Base z/Architecture';
  ENUM_STRING_FAMILY_96 = 'i860';
  ENUM_STRING_FAMILY_97 = 'i960';
  ENUM_STRING_FAMILY_98 = 'SH-3';
  ENUM_STRING_FAMILY_99 = 'SH-4';
  ENUM_STRING_FAMILY_100 = 'ARM';
  ENUM_STRING_FAMILY_101 = 'StrongARM';
  ENUM_STRING_FAMILY_102 = '6x86';
  ENUM_STRING_FAMILY_103 = 'MediaGX';
  ENUM_STRING_FAMILY_104 = 'MII';
  ENUM_STRING_FAMILY_105 = 'WinChip';
  ENUM_STRING_FAMILY_106 = 'DSP';
  ENUM_STRING_FAMILY_107 = 'Procesador de vídeo';

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

// Constantes para la propiedad ProcessorType
const 
  ENUM_STRING_PROCESSORTYPE_00 = 'Otros';
  ENUM_STRING_PROCESSORTYPE_01 = 'Desconocido';
  ENUM_STRING_PROCESSORTYPE_02 = 'Procesador central';
  ENUM_STRING_PROCESSORTYPE_03 = 'Procesador matemático';
  ENUM_STRING_PROCESSORTYPE_04 = 'Procesador DSP';
  ENUM_STRING_PROCESSORTYPE_05 = 'Procesador de vídeo';

// Constantes para la propiedad StatusInfo
const 
  ENUM_STRING_STATUSINFO_00 = 'Otros';
  ENUM_STRING_STATUSINFO_01 = 'Desconocido';
  ENUM_STRING_STATUSINFO_02 = 'Habilitado';
  ENUM_STRING_STATUSINFO_03 = 'Deshabilitado';
  ENUM_STRING_STATUSINFO_04 = 'No aplicable';

// Constantes para la propiedad UpgradeMethod
const 
  ENUM_STRING_UPGRADEMETHOD_00 = 'Otros';
  ENUM_STRING_UPGRADEMETHOD_01 = 'Desconocido';
  ENUM_STRING_UPGRADEMETHOD_02 = 'Placa base secundaria';
  ENUM_STRING_UPGRADEMETHOD_03 = 'Socket ZIF';
  ENUM_STRING_UPGRADEMETHOD_04 = 'Replacement/Piggy Back';
  ENUM_STRING_UPGRADEMETHOD_05 = 'Ninguna';
  ENUM_STRING_UPGRADEMETHOD_06 = 'Socket LIF';
  ENUM_STRING_UPGRADEMETHOD_07 = 'Ranura 1';
  ENUM_STRING_UPGRADEMETHOD_08 = 'Ranura 2';
  ENUM_STRING_UPGRADEMETHOD_09 = 'Socket de 370 patillas';
  ENUM_STRING_UPGRADEMETHOD_10 = 'Ranura A';
  ENUM_STRING_UPGRADEMETHOD_11 = 'Ranura M';
  ENUM_STRING_UPGRADEMETHOD_12 = 'Socket 423';
  ENUM_STRING_UPGRADEMETHOD_13 = 'Socket A (Socket 462)';
  ENUM_STRING_UPGRADEMETHOD_14 = 'Socket 478';
  ENUM_STRING_UPGRADEMETHOD_15 = 'Socket 754';
  ENUM_STRING_UPGRADEMETHOD_16 = 'Socket 940';
  ENUM_STRING_UPGRADEMETHOD_17 = 'Socket 939';

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
procedure TProcessorInfo.ClearProps;
begin
  Self.ProcessorProperties.FAddressWidth := 0;
  Self.ProcessorProperties.FArchitecture := 0;
  Self.ProcessorProperties.FAssetTag := EmptyStr;
  Self.ProcessorProperties.FAvailability := 0;
  Self.ProcessorProperties.FCaption := EmptyStr;
  Self.ProcessorProperties.FCharacteristics := 0;
  Self.ProcessorProperties.FConfigManagerErrorCode := 0;
  Self.ProcessorProperties.FConfigManagerUserConfig := False;
  Self.ProcessorProperties.FCpuStatus := 0;
  Self.ProcessorProperties.FCreationClassName := EmptyStr;
  Self.ProcessorProperties.FCurrentClockSpeed := 0;
  Self.ProcessorProperties.FCurrentVoltage := 0;
  Self.ProcessorProperties.FDataWidth := 0;
  Self.ProcessorProperties.FDescription := EmptyStr;
  Self.ProcessorProperties.FDeviceID := EmptyStr;
  Self.ProcessorProperties.FErrorCleared := False;
  Self.ProcessorProperties.FErrorDescription := EmptyStr;
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
  Self.ProcessorProperties.FManufacturer := EmptyStr;
  Self.ProcessorProperties.FMaxClockSpeed := 0;
  Self.ProcessorProperties.FName := EmptyStr;
  Self.ProcessorProperties.FNumberOfCores := 0;
  Self.ProcessorProperties.FNumberOfEnabledCore := 0;
  Self.ProcessorProperties.FNumberOfLogicalProcessors := 0;
  Self.ProcessorProperties.FOtherFamilyDescription := EmptyStr;
  Self.ProcessorProperties.FPartNumber := EmptyStr;
  Self.ProcessorProperties.FPNPDeviceID := EmptyStr;
  Self.ProcessorProperties.FPowerManagementCapabilitiesCount := 0;
  Self.ProcessorProperties.FPowerManagementCapabilitiesAsString := EmptyStr;
  SetLength(ProcessorProperties.FPowerManagementCapabilities, 0);
  Self.ProcessorProperties.FPowerManagementSupported := False;
  Self.ProcessorProperties.FProcessorId := EmptyStr;
  Self.ProcessorProperties.FProcessorType := 0;
  Self.ProcessorProperties.FRevision := 0;
  Self.ProcessorProperties.FRole := EmptyStr;
  Self.ProcessorProperties.FSecondLevelAddressTranslationExtensions := False;
  Self.ProcessorProperties.FSerialNumber := EmptyStr;
  Self.ProcessorProperties.FSocketDesignation := EmptyStr;
  Self.ProcessorProperties.FStatus := EmptyStr;
  Self.ProcessorProperties.FStatusInfo := 0;
  Self.ProcessorProperties.FStepping := EmptyStr;
  Self.ProcessorProperties.FSystemCreationClassName := EmptyStr;
  Self.ProcessorProperties.FSystemName := EmptyStr;
  Self.ProcessorProperties.FThreadCount := 0;
  Self.ProcessorProperties.FUniqueId := EmptyStr;
  Self.ProcessorProperties.FUpgradeMethod := 0;
  Self.ProcessorProperties.FVersion := EmptyStr;
  Self.ProcessorProperties.FVirtualizationFirmwareEnabled := False;
  Self.ProcessorProperties.FVMMonitorModeExtensions := False;
  Self.ProcessorProperties.FVoltageCaps := 0;
end;

//: Constructor del componente
constructor TProcessorInfo.Create(AOwner: TComponent);
begin
  inherited;
  Self.FProcessorProperties := TProcessorProperties.Create();
  Self.MSDNHelp := 'https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-processor';
end;

//: destructor del componente
destructor TProcessorInfo.Destroy();
begin
  // liberar
  FreeAndNil(Self.FProcessorProperties);
  inherited;
end;

//: Obtener la clase
function TProcessorInfo.GetWMIClass(): string;
begin
  Result := 'Win32_Processor'
end;

//: Obtener Root
function TProcessorInfo.GetWMIRoot(): string;
begin
  Result := '';
end;

//: Procedmiento de activación
procedure TProcessorInfo.SetActive(const Value: Boolean);
begin
  // método heredado
  inherited;
end;

// Acceso a los elementos de la propiedad <PowerManagementCapabilities>
function TProcessorProperties.GetPowerManagementCapabilities(index: integer):integer;
begin
  if (index >= Self.FPowerManagementCapabilitiesCount) then begin
    Index := Self.FPowerManagementCapabilitiesCount - 1;
  end;
  Result := Self.FPowerManagementCapabilities[index];
end;


//: Rellenar las propiedades del componente.
procedure TProcessorInfo.FillProperties(AIndex: integer);
var
  v:     variant;
  vNull: boolean;
  vp:    TProcessorProperties;
begin
  // Llamar al heredado (importante)
  inherited;
  // Rellenar propiedades...
  vp := ProcessorProperties;

  GetWMIPropertyValue(Self, 'AddressWidth', v, vNull);
  vp.FAddressWidth := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Architecture', v, vNull);
  vp.FArchitecture := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'AssetTag', v, vNull);
  vp.FAssetTag := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Availability', v, vNull);
  vp.FAvailability := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Caption', v, vNull);
  vp.FCaption := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Characteristics', v, vNull);
  vp.FCharacteristics := VariantIntegerValue(v, vNull);

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
  vp.FInstallDate := VariantDateTimeValue(v, vNull);

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

  GetWMIPropertyValue(Self, 'NumberOfEnabledCore', v, vNull);
  vp.FNumberOfEnabledCore := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'NumberOfLogicalProcessors', v, vNull);
  vp.FNumberOfLogicalProcessors := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'OtherFamilyDescription', v, vNull);
  vp.FOtherFamilyDescription := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'PartNumber', v, vNull);
  vp.FPartNumber := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'PNPDeviceID', v, vNull);
  vp.FPNPDeviceID := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'PowerManagementCapabilities', v, vNull);
  vp.FPowerManagementCapabilitiesAsString := VariantStrValue(v, vNull);
  StringToArrayInteger(vp.FPowerManagementCapabilitiesAsString, vp.FPowerManagementCapabilities);
  vp.FPowerManagementCapabilitiesCount := Length(vp.FPowerManagementCapabilities);

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

  GetWMIPropertyValue(Self, 'SecondLevelAddressTranslationExtensions', v, vNull);
  vp.FSecondLevelAddressTranslationExtensions := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'SerialNumber', v, vNull);
  vp.FSerialNumber := VariantStrValue(v, vNull);

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

  GetWMIPropertyValue(Self, 'ThreadCount', v, vNull);
  vp.FThreadCount := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'UniqueId', v, vNull);
  vp.FUniqueId := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'UpgradeMethod', v, vNull);
  vp.FUpgradeMethod := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Version', v, vNull);
  vp.FVersion := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'VirtualizationFirmwareEnabled', v, vNull);
  vp.FVirtualizationFirmwareEnabled := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'VMMonitorModeExtensions', v, vNull);
  vp.FVMMonitorModeExtensions := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'VoltageCaps', v, vNull);
  vp.FVoltageCaps := VariantIntegerValue(v, vNull);
end;


// Obtener la propiedad como string
function TProcessorProperties.GetAllArchitectureAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_ARCHITECTURE_00;
    01: Result := ENUM_STRING_ARCHITECTURE_01;
    02: Result := ENUM_STRING_ARCHITECTURE_02;
    03: Result := ENUM_STRING_ARCHITECTURE_03;
    04: Result := ENUM_STRING_ARCHITECTURE_04;
    05: Result := ENUM_STRING_ARCHITECTURE_05;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TProcessorProperties.GetAllAvailabilityAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_AVAILABILITY_00;
    01: Result := ENUM_STRING_AVAILABILITY_01;
    02: Result := ENUM_STRING_AVAILABILITY_02;
    03: Result := ENUM_STRING_AVAILABILITY_03;
    04: Result := ENUM_STRING_AVAILABILITY_04;
    05: Result := ENUM_STRING_AVAILABILITY_05;
    06: Result := ENUM_STRING_AVAILABILITY_06;
    07: Result := ENUM_STRING_AVAILABILITY_07;
    08: Result := ENUM_STRING_AVAILABILITY_08;
    09: Result := ENUM_STRING_AVAILABILITY_09;
    10: Result := ENUM_STRING_AVAILABILITY_10;
    11: Result := ENUM_STRING_AVAILABILITY_11;
    12: Result := ENUM_STRING_AVAILABILITY_12;
    13: Result := ENUM_STRING_AVAILABILITY_13;
    14: Result := ENUM_STRING_AVAILABILITY_14;
    15: Result := ENUM_STRING_AVAILABILITY_15;
    16: Result := ENUM_STRING_AVAILABILITY_16;
    17: Result := ENUM_STRING_AVAILABILITY_17;
    18: Result := ENUM_STRING_AVAILABILITY_18;
    19: Result := ENUM_STRING_AVAILABILITY_19;
    20: Result := ENUM_STRING_AVAILABILITY_20;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TProcessorProperties.GetAllConfigManagerErrorCodeAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_00;
    01: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_01;
    02: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_02;
    03: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_03;
    04: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_04;
    05: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_05;
    06: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_06;
    07: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_07;
    08: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_08;
    09: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_09;
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
function TProcessorProperties.GetAllCpuStatusAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_CPUSTATUS_00;
    01: Result := ENUM_STRING_CPUSTATUS_01;
    02: Result := ENUM_STRING_CPUSTATUS_02;
    03: Result := ENUM_STRING_CPUSTATUS_03;
    04: Result := ENUM_STRING_CPUSTATUS_04;
    05: Result := ENUM_STRING_CPUSTATUS_05;
    06: Result := ENUM_STRING_CPUSTATUS_06;
    07: Result := ENUM_STRING_CPUSTATUS_07;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TProcessorProperties.GetAllFamilyAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_FAMILY_00;
    01: Result := ENUM_STRING_FAMILY_01;
    02: Result := ENUM_STRING_FAMILY_02;
    03: Result := ENUM_STRING_FAMILY_03;
    04: Result := ENUM_STRING_FAMILY_04;
    05: Result := ENUM_STRING_FAMILY_05;
    06: Result := ENUM_STRING_FAMILY_06;
    07: Result := ENUM_STRING_FAMILY_07;
    08: Result := ENUM_STRING_FAMILY_08;
    09: Result := ENUM_STRING_FAMILY_09;
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
    20: Result := ENUM_STRING_FAMILY_20;
    21: Result := ENUM_STRING_FAMILY_21;
    22: Result := ENUM_STRING_FAMILY_22;
    23: Result := ENUM_STRING_FAMILY_23;
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
    40: Result := ENUM_STRING_FAMILY_40;
    41: Result := ENUM_STRING_FAMILY_41;
    42: Result := ENUM_STRING_FAMILY_42;
    43: Result := ENUM_STRING_FAMILY_43;
    44: Result := ENUM_STRING_FAMILY_44;
    45: Result := ENUM_STRING_FAMILY_45;
    46: Result := ENUM_STRING_FAMILY_46;
    47: Result := ENUM_STRING_FAMILY_47;
    48: Result := ENUM_STRING_FAMILY_48;
    49: Result := ENUM_STRING_FAMILY_49;
    50: Result := ENUM_STRING_FAMILY_50;
    51: Result := ENUM_STRING_FAMILY_51;
    52: Result := ENUM_STRING_FAMILY_52;
    53: Result := ENUM_STRING_FAMILY_53;
    54: Result := ENUM_STRING_FAMILY_54;
    55: Result := ENUM_STRING_FAMILY_55;
    56: Result := ENUM_STRING_FAMILY_56;
    57: Result := ENUM_STRING_FAMILY_57;
    58: Result := ENUM_STRING_FAMILY_58;
    59: Result := ENUM_STRING_FAMILY_59;
    60: Result := ENUM_STRING_FAMILY_60;
    61: Result := ENUM_STRING_FAMILY_61;
    62: Result := ENUM_STRING_FAMILY_62;
    63: Result := ENUM_STRING_FAMILY_63;
    64: Result := ENUM_STRING_FAMILY_64;
    65: Result := ENUM_STRING_FAMILY_65;
    66: Result := ENUM_STRING_FAMILY_66;
    67: Result := ENUM_STRING_FAMILY_67;
    68: Result := ENUM_STRING_FAMILY_68;
    69: Result := ENUM_STRING_FAMILY_69;
    70: Result := ENUM_STRING_FAMILY_70;
    71: Result := ENUM_STRING_FAMILY_71;
    72: Result := ENUM_STRING_FAMILY_72;
    73: Result := ENUM_STRING_FAMILY_73;
    74: Result := ENUM_STRING_FAMILY_74;
    75: Result := ENUM_STRING_FAMILY_75;
    76: Result := ENUM_STRING_FAMILY_76;
    77: Result := ENUM_STRING_FAMILY_77;
    78: Result := ENUM_STRING_FAMILY_78;
    79: Result := ENUM_STRING_FAMILY_79;
    80: Result := ENUM_STRING_FAMILY_80;
    81: Result := ENUM_STRING_FAMILY_81;
    82: Result := ENUM_STRING_FAMILY_82;
    83: Result := ENUM_STRING_FAMILY_83;
    84: Result := ENUM_STRING_FAMILY_84;
    85: Result := ENUM_STRING_FAMILY_85;
    86: Result := ENUM_STRING_FAMILY_86;
    87: Result := ENUM_STRING_FAMILY_87;
    88: Result := ENUM_STRING_FAMILY_88;
    89: Result := ENUM_STRING_FAMILY_89;
    90: Result := ENUM_STRING_FAMILY_90;
    91: Result := ENUM_STRING_FAMILY_91;
    92: Result := ENUM_STRING_FAMILY_92;
    93: Result := ENUM_STRING_FAMILY_93;
    94: Result := ENUM_STRING_FAMILY_94;
    95: Result := ENUM_STRING_FAMILY_95;
    96: Result := ENUM_STRING_FAMILY_96;
    97: Result := ENUM_STRING_FAMILY_97;
    98: Result := ENUM_STRING_FAMILY_98;
    99: Result := ENUM_STRING_FAMILY_99;
    100: Result := ENUM_STRING_FAMILY_100;
    101: Result := ENUM_STRING_FAMILY_101;
    102: Result := ENUM_STRING_FAMILY_102;
    103: Result := ENUM_STRING_FAMILY_103;
    104: Result := ENUM_STRING_FAMILY_104;
    105: Result := ENUM_STRING_FAMILY_105;
    106: Result := ENUM_STRING_FAMILY_106;
    107: Result := ENUM_STRING_FAMILY_107;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TProcessorProperties.GetAllPowerManagementCapabilitiesAsString(index:integer):string;
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
function TProcessorProperties.GetAllProcessorTypeAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_PROCESSORTYPE_00;
    01: Result := ENUM_STRING_PROCESSORTYPE_01;
    02: Result := ENUM_STRING_PROCESSORTYPE_02;
    03: Result := ENUM_STRING_PROCESSORTYPE_03;
    04: Result := ENUM_STRING_PROCESSORTYPE_04;
    05: Result := ENUM_STRING_PROCESSORTYPE_05;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TProcessorProperties.GetAllStatusInfoAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_STATUSINFO_00;
    01: Result := ENUM_STRING_STATUSINFO_01;
    02: Result := ENUM_STRING_STATUSINFO_02;
    03: Result := ENUM_STRING_STATUSINFO_03;
    04: Result := ENUM_STRING_STATUSINFO_04;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TProcessorProperties.GetAllUpgradeMethodAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_UPGRADEMETHOD_00;
    01: Result := ENUM_STRING_UPGRADEMETHOD_01;
    02: Result := ENUM_STRING_UPGRADEMETHOD_02;
    03: Result := ENUM_STRING_UPGRADEMETHOD_03;
    04: Result := ENUM_STRING_UPGRADEMETHOD_04;
    05: Result := ENUM_STRING_UPGRADEMETHOD_05;
    06: Result := ENUM_STRING_UPGRADEMETHOD_06;
    07: Result := ENUM_STRING_UPGRADEMETHOD_07;
    08: Result := ENUM_STRING_UPGRADEMETHOD_08;
    09: Result := ENUM_STRING_UPGRADEMETHOD_09;
    10: Result := ENUM_STRING_UPGRADEMETHOD_10;
    11: Result := ENUM_STRING_UPGRADEMETHOD_11;
    12: Result := ENUM_STRING_UPGRADEMETHOD_12;
    13: Result := ENUM_STRING_UPGRADEMETHOD_13;
    14: Result := ENUM_STRING_UPGRADEMETHOD_14;
    15: Result := ENUM_STRING_UPGRADEMETHOD_15;
    16: Result := ENUM_STRING_UPGRADEMETHOD_16;
    17: Result := ENUM_STRING_UPGRADEMETHOD_17;
  else
    Result := STR_EMPTY;
  end;
end;


// Obtener núm. de elementos de la propiedad como string
function TProcessorProperties.GetAllArchitectureCount:integer;
begin
  Result := 6
end;

// Obtener núm. de elementos de la propiedad como string
function TProcessorProperties.GetAllAvailabilityCount:integer;
begin
  Result := 21
end;

// Obtener núm. de elementos de la propiedad como string
function TProcessorProperties.GetAllConfigManagerErrorCodeCount:integer;
begin
  Result := 32
end;

// Obtener núm. de elementos de la propiedad como string
function TProcessorProperties.GetAllCpuStatusCount:integer;
begin
  Result := 8
end;

// Obtener núm. de elementos de la propiedad como string
function TProcessorProperties.GetAllFamilyCount:integer;
begin
  Result := 108
end;

// Obtener núm. de elementos de la propiedad como string
function TProcessorProperties.GetAllPowerManagementCapabilitiesCount:integer;
begin
  Result := 8
end;

// Obtener núm. de elementos de la propiedad como string
function TProcessorProperties.GetAllProcessorTypeCount:integer;
begin
  Result := 6
end;

// Obtener núm. de elementos de la propiedad como string
function TProcessorProperties.GetAllStatusInfoCount:integer;
begin
  Result := 5
end;

// Obtener núm. de elementos de la propiedad como string
function TProcessorProperties.GetAllUpgradeMethodCount:integer;
begin
  Result := 18
end;


end.
