{
TVideoControllerInfo Component Version 3.1 - Suite GLibWMI
Copyright (©) 2020,  by Germán Estévez (Neftalí)

La clase Win32_VideoController representa las posibilidades y la capacidad de administración de la controladora 
de vídeo en un equipo Win32. 
Ejemplos: fabricante del adaptador de vídeo, versión del conjunto de chips, 
resolución de la pantalla y número de colores.


Utilización/Usage:
(ES) Basta con "soltar" el componente y activarlo.
(EN) Place the component in the form and active it.

MSDN Info:
https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-videocontroller

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
unit CVideoControllerInfo;

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
  TVideoControllerProperties = class(TPersistent)
  private
    {%PrivateClassVars PropertiesClass%}
    FAcceleratorCapabilities:TArrInteger;
    FAcceleratorCapabilitiesCount:integer;
    FAcceleratorCapabilitiesAsString:string;    FAdapterCompatibility:string;
    FAdapterDACType:string;
    FAdapterRAM:integer;
    FAvailability:integer;
    FCapabilityDescriptions:TArrString;
    FCapabilityDescriptionsCount:integer;
    FCapabilityDescriptionsAsString:string;    FCaption:string;
    FColorTableEntries:integer;
    FConfigManagerErrorCode:integer;
    FConfigManagerUserConfig:boolean;
    FCreationClassName:string;
    FCurrentBitsPerPixel:integer;
    FCurrentHorizontalResolution:integer;
    FCurrentNumberOfColors:int64;
    FCurrentNumberOfColumns:integer;
    FCurrentNumberOfRows:integer;
    FCurrentRefreshRate:integer;
    FCurrentScanMode:integer;
    FCurrentVerticalResolution:integer;
    FDescription:string;
    FDeviceID:string;
    FDeviceSpecificPens:integer;
    FDitherType:integer;
    FDriverDate:TDatetime;
    FDriverVersion:string;
    FErrorCleared:boolean;
    FErrorDescription:string;
    FICMIntent:integer;
    FICMMethod:integer;
    FInfFilename:string;
    FInfSection:string;
    FInstallDate:TDatetime;
    FInstalledDisplayDrivers:string;
    FLastErrorCode:integer;
    FMaxMemorySupported:integer;
    FMaxNumberControlled:integer;
    FMaxRefreshRate:integer;
    FMinRefreshRate:integer;
    FMonochrome:boolean;
    FName:string;
    FNumberOfColorPlanes:integer;
    FNumberOfVideoPages:integer;
    FPNPDeviceID:string;
    FPowerManagementCapabilities:TArrInteger;
    FPowerManagementCapabilitiesCount:integer;
    FPowerManagementCapabilitiesAsString:string;    FPowerManagementSupported:boolean;
    FProtocolSupported:integer;
    FReservedSystemPaletteEntries:integer;
    FSpecificationVersion:integer;
    FStatus:string;
    FStatusInfo:integer;
    FSystemCreationClassName:string;
    FSystemName:string;
    FSystemPaletteEntries:integer;
    FTimeOfLastReset:TDatetime;
    FVideoArchitecture:integer;
    FVideoMemoryType:integer;
    FVideoMode:integer;
    FVideoModeDescription:string;
    FVideoProcessor:string;

  private
    {%PrivateGetMethods PropertiesClass%}
    function GetAcceleratorCapabilities(index: integer):integer;
    function GetCapabilityDescriptions(index: integer):string;
    function GetPowerManagementCapabilities(index: integer):integer;

  public
    {%PublicGetMethods PropertiesClass%}
    // Obtener la propiedad <AcceleratorCapabilities> como string
    function GetAllAcceleratorCapabilitiesAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <AcceleratorCapabilities>
    function GetAllAcceleratorCapabilitiesCount:integer;
    // Obtener la propiedad <Availability> como string
    function GetAllAvailabilityAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <Availability>
    function GetAllAvailabilityCount:integer;
    // Obtener la propiedad <ConfigManagerErrorCode> como string
    function GetAllConfigManagerErrorCodeAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <ConfigManagerErrorCode>
    function GetAllConfigManagerErrorCodeCount:integer;
    // Obtener la propiedad <CurrentScanMode> como string
    function GetAllCurrentScanModeAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <CurrentScanMode>
    function GetAllCurrentScanModeCount:integer;
    // Obtener la propiedad <DitherType> como string
    function GetAllDitherTypeAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <DitherType>
    function GetAllDitherTypeCount:integer;
    // Obtener la propiedad <ICMIntent> como string
    function GetAllICMIntentAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <ICMIntent>
    function GetAllICMIntentCount:integer;
    // Obtener la propiedad <ICMMethod> como string
    function GetAllICMMethodAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <ICMMethod>
    function GetAllICMMethodCount:integer;
    // Obtener la propiedad <PowerManagementCapabilities> como string
    function GetAllPowerManagementCapabilitiesAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <PowerManagementCapabilities>
    function GetAllPowerManagementCapabilitiesCount:integer;
    // Obtener la propiedad <ProtocolSupported> como string
    function GetAllProtocolSupportedAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <ProtocolSupported>
    function GetAllProtocolSupportedCount:integer;
    // Obtener la propiedad <StatusInfo> como string
    function GetAllStatusInfoAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <StatusInfo>
    function GetAllStatusInfoCount:integer;
    // Obtener la propiedad <VideoArchitecture> como string
    function GetAllVideoArchitectureAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <VideoArchitecture>
    function GetAllVideoArchitectureCount:integer;
    // Obtener la propiedad <VideoMemoryType> como string
    function GetAllVideoMemoryTypeAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <VideoMemoryType>
    function GetAllVideoMemoryTypeCount:integer;

    {%PublicArrayMethods PropertiesClass%}
    property AcceleratorCapabilities[index:integer]:integer read GetAcceleratorCapabilities;
    property AcceleratorCapabilitiesCount:integer read FAcceleratorCapabilitiesCount stored False;
    property CapabilityDescriptions[index:integer]:string read GetCapabilityDescriptions;
    property CapabilityDescriptionsCount:integer read FCapabilityDescriptionsCount stored False;
    property PowerManagementCapabilities[index:integer]:integer read GetPowerManagementCapabilities;
    property PowerManagementCapabilitiesCount:integer read FPowerManagementCapabilitiesCount stored False;

  published
    {%PublishedProperties PropertiesClass%}
    /// <summary>
    ///  Una matriz de enteros indicando los gráficos y las capacidades de la controladora de vídeo.
    /// </summary>
    property AcceleratorCapabilitiesAsString:string read FAcceleratorCapabilitiesAsString write FAcceleratorCapabilitiesAsString stored False;
    /// <summary>
    ///  La propiedad AdapterCompatibility contiene el conjunto general de chips usado en este controlador para 
    ///  comparar la compatibilidad con el sistema.
    /// </summary>
    property AdapterCompatibility:string read FAdapterCompatibility write FAdapterCompatibility stored False;
    /// <summary>
    ///  La propiedad AdapterDACType contiene una cadena con el nombre o el identificador del chip convertidor 
    ///  de digital a analógico (DAC).
    ///  Juego de caracteres: alfanumérico
    /// </summary>
    property AdapterDACType:string read FAdapterDACType write FAdapterDACType stored False;
    /// <summary>
    ///  La propiedad AdapterRAM indica el tamaño de memoria del adaptador de vídeo. 
    ///  Ejemplo: 64000
    /// </summary>
    property AdapterRAM:integer read FAdapterRAM write FAdapterRAM stored False;
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
    ///  Una matriz de cadenas de forma libre que proporciona explicaciones más detalladas sobre cualquiera de 
    ///  las características del acelerador de vídeo indicadas en la matriz de capacidades. Nota, cada entrada 
    ///  de esta matriz está relacionada a la entrada en la matriz de capacidades ubicada en el mismo índice.
    /// </summary>
    property CapabilityDescriptionsAsString:string read FCapabilityDescriptionsAsString write FCapabilityDescriptionsAsString stored False;
    /// <summary>
    ///  Una matriz de cadenas de forma libre que proporciona explicaciones más detalladas sobre cualquiera de 
    ///  las características del acelerador de vídeo indicadas en la matriz de capacidades. Nota, cada entrada 
    ///  de esta matriz está relacionada a la entrada en la matriz de capacidades ubicada en el mismo índice.
    /// </summary>
    property Caption:string read FCaption write FCaption stored False;
    /// <summary>
    ///  La propiedad ColorTableEntries indica el tamaño de la tabla de colores del sistema, sólo si el dispositivo 
    ///  tiene una profundidad de color no mayor a 8 bits por píxel; de lo contrario, tiene un valor nulo. <P>Ejemplo: 
    ///  256
    /// </summary>
    property ColorTableEntries:integer read FColorTableEntries write FColorTableEntries stored False;
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
    property CurrentBitsPerPixel:integer read FCurrentBitsPerPixel write FCurrentBitsPerPixel stored False;
    /// <summary>
    ///  CreationClassName indica el nombre de la clase o subclase que se usa en la creación de una instancia. 
    ///  Cuando se usa con las demás propiedades clave de esta clase, esta propiedad permite que se identifiquen 
    ///  de manera única todas las instancias de esta clase y sus subclases.
    /// </summary>
    property CurrentHorizontalResolution:integer read FCurrentHorizontalResolution write FCurrentHorizontalResolution stored False;
    /// <summary>
    ///  CreationClassName indica el nombre de la clase o subclase que se usa en la creación de una instancia. 
    ///  Cuando se usa con las demás propiedades clave de esta clase, esta propiedad permite que se identifiquen 
    ///  de manera única todas las instancias de esta clase y sus subclases.
    /// </summary>
    property CurrentNumberOfColors:int64 read FCurrentNumberOfColors write FCurrentNumberOfColors stored False;
    /// <summary>
    ///  Sin está en el modo carácter, número de columnas para esta controladora de vídeo. En caso contrario, 
    ///  escriba 0.
    /// </summary>
    property CurrentNumberOfColumns:integer read FCurrentNumberOfColumns write FCurrentNumberOfColumns stored False;
    /// <summary>
    ///  Si está en el modo de carácter, escriba el número de filas para esta controladora de vídeo. En caso contrario, 
    ///  escriba 0.
    /// </summary>
    property CurrentNumberOfRows:integer read FCurrentNumberOfRows write FCurrentNumberOfRows stored False;
    /// <summary>
    ///  La propiedad CurrentRefreshRate especifica la frecuencia con que la controladora de vídeo actualiza la 
    ///  imagen del monitor. El valor 0 indica que se usa la frecuencia predeterminada mientras que 0xFFFFFFFF 
    ///  indica que se usa la frecuencia óptima.
    /// </summary>
    property CurrentRefreshRate:integer read FCurrentRefreshRate write FCurrentRefreshRate stored False;
    /// <summary>
    ///  Modo de digitalización actual. "Entrelazado" (valor=3) o "No entrelazado" (4) puede ser definido con 
    ///  esta propiedad.
    /// </summary>
    property CurrentScanMode:integer read FCurrentScanMode write FCurrentScanMode stored False;
    /// <summary>
    ///  Modo de digitalización actual. "Entrelazado" (valor=3) o "No entrelazado" (4) puede ser definido con 
    ///  esta propiedad.
    /// </summary>
    property CurrentVerticalResolution:integer read FCurrentVerticalResolution write FCurrentVerticalResolution stored False;
    /// <summary>
    ///  Modo de digitalización actual. "Entrelazado" (valor=3) o "No entrelazado" (4) puede ser definido con 
    ///  esta propiedad.
    /// </summary>
    property Description:string read FDescription write FDescription stored False;
    /// <summary>
    ///  La propiedad DeviceID contiene un identificador (único para el sistema) para esta controladora de ví
    ///  deo.
    /// </summary>
    property DeviceID:string read FDeviceID write FDeviceID stored False;
    /// <summary>
    ///  La propiedad DeviceSpecificPens indica el número actual de plumas específicas del dispositivo. 0xffff 
    ///  significa que el dispositivo no admite plumas. 
    ///  Ejemplo: 3
    /// </summary>
    property DeviceSpecificPens:integer read FDeviceSpecificPens write FDeviceSpecificPens stored False;
    /// <summary>
    ///  La propiedad DitherType indica el tipo de interpolado de la controladora de vídeo. La propiedad puede 
    ///  tener uno de los siguientes valores predefinidos, o  un valor de controlador definido mayor o igual que 
    ///  256: Significado del valor :-1	-	No interpolar. 2	-	Interpolar con un pincel grueso. 3	-	Interpolar con 
    ///  pincel fino. 4	-	Interpolar líneas; un método de interpolación especial 		que produce bordes bien definidos 
    ///  		entre las escalas de negro, blanco y gris. 		No es adecuado para imágenes que incluyen		graduaciones 
    ///  continuas de intensidad y 		matiz como las imágenes digitalizadas. 5	-	El dispositivo hace escalas del 
    ///  gris.
    /// </summary>
    property DitherType:integer read FDitherType write FDitherType stored False;
    /// <summary>
    ///  La propiedad DriverDate indica la fecha y la hora de la última modificación del controlador de vídeo 
    ///  instalado actualmente.
    /// </summary>
    property DriverDate:TDatetime read FDriverDate write FDriverDate stored False;
    /// <summary>
    ///  La propiedad DriverDate indica la fecha y la hora de la última modificación del controlador de vídeo 
    ///  instalado actualmente.
    /// </summary>
    property DriverVersion:string read FDriverVersion write FDriverVersion stored False;
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
    ///  La propiedad ICMIntent ( Image Color Matching Intent ) indica el valor especifico de uno de estos tres 
    ///  métodos posibles de compatibilidad de colores, (o intentos) esto se debe usar de manera predeterminada. 
    ///  Esta propiedad es primeramente para aplicaciones que no sean ICM. Las aplicaciones ICM establecen intentos 
    ///  usando las funciones ICM. Esta propiedad puede ser uno de los siguientes valores predefinidos, o un valor 
    ///  de controlador definido mayor o igual 256. Significado del valor :-1	-	La coincidencia de colores debe 
    ///  optimizar la saturación de colores. Este valor 		es la elección más apropiada para gráficos de negocios 
    ///  cuando no se desea la 		difuminación. 2	-	La coincidencia de colores debe optimizar el contraste de colores. 
    ///  Este valor 		es la elección más apropiada para imágenes digitalizadas o fotografiadas 		cuando se desea 
    ///  la difuminación. 3	-	La coincidencia de colores debe optimizar la coincidencia de colores solicitados. 
    ///  		Este valor es más apropiado para usarlo en logotipos de negocios u otras 		imágenes cuando se requiere 
    ///  una coincidencia de colores exacta. 
    /// </summary>
    property ICMIntent:integer read FICMIntent write FICMIntent stored False;
    /// <summary>
    ///  La propiedad ICMMethod ( Image Color Matching Method ) especifica cómo se trata ICM. Para una aplicación 
    ///  que no sea ICM, esta propiedad muestra cómo se habilita ICM. Para las aplicaciones ICM, el sistema examina 
    ///  este miembro para determinar cómo tratar la compatibilidad con ICM. Esta propiedad puede ser uno de los 
    ///  siguientes valores predefinidos, o un valor de controlador definido mayor o igual a 256.Significado del 
    ///  valor :-1	-	Especifica que ICM está deshabilitado. 2	-	Especifica que Windows trata a ICM. 3	-	Especifica 
    ///  que el controlador de dispositivo trata a ICM. 4	-	Especifica que el dispositivo de destino trata a ICM. 
    /// </summary>
    property ICMMethod:integer read FICMMethod write FICMMethod stored False;
    /// <summary>
    ///  La propiedad InfFilename indica la ruta de acceso del archivo .inf del adaptador de vídeo. 
    ///  Ejemplo: 
    ///  C:\WINNT\SYSTEM32\DRIVERS
    /// </summary>
    property InfFilename:string read FInfFilename write FInfFilename stored False;
    /// <summary>
    ///  La propiedad InfSection indica la sección del archivo .inf donde reside la información de vídeo Win3
    ///  2.
    /// </summary>
    property InfSection:string read FInfSection write FInfSection stored False;
    /// <summary>
    ///  La propiedad InfSection indica la sección del archivo .inf donde reside la información de vídeo Win3
    ///  2.
    /// </summary>
    property InstallDate:TDatetime read FInstallDate write FInstallDate stored False;
    /// <summary>
    ///  La propiedad InstalledDisplayDrivers indica el nombre del controlador de dispositivo de pantalla ins
    ///  talado.
    /// </summary>
    property InstalledDisplayDrivers:string read FInstalledDisplayDrivers write FInstalledDisplayDrivers stored False;
    /// <summary>
    ///  LastErrorCode captura el último código de error informado por el dispositivo lógico.
    /// </summary>
    property LastErrorCode:integer read FLastErrorCode write FLastErrorCode stored False;
    /// <summary>
    ///  LastErrorCode captura el último código de error informado por el dispositivo lógico.
    /// </summary>
    property MaxMemorySupported:integer read FMaxMemorySupported write FMaxMemorySupported stored False;
    /// <summary>
    ///  Número máximo de entidades directamente direccionables compatibles con esta controladora. Se debe usar 
    ///  un valor de 0 si el número es desconocido o ilimitado.
    /// </summary>
    property MaxNumberControlled:integer read FMaxNumberControlled write FMaxNumberControlled stored False;
    /// <summary>
    ///  Número máximo de entidades directamente direccionables compatibles con esta controladora. Se debe usar 
    ///  un valor de 0 si el número es desconocido o ilimitado.
    /// </summary>
    property MaxRefreshRate:integer read FMaxRefreshRate write FMaxRefreshRate stored False;
    /// <summary>
    ///  Número máximo de entidades directamente direccionables compatibles con esta controladora. Se debe usar 
    ///  un valor de 0 si el número es desconocido o ilimitado.
    /// </summary>
    property MinRefreshRate:integer read FMinRefreshRate write FMinRefreshRate stored False;
    /// <summary>
    ///  La propiedad Monochrome indica si se usa la escala de grises o colores para presentar las imágenes.
    /// </summary>
    property Monochrome:boolean read FMonochrome write FMonochrome stored False;
    /// <summary>
    ///  La propiedad Monochrome indica si se usa la escala de grises o colores para presentar las imágenes.
    /// </summary>
    property Name:string read FName write FName stored False;
    /// <summary>
    ///  Número actual de planos de colores. Si este valor no es aplicable para la configuración de vídeo actual, 
    ///  escriba 0.
    /// </summary>
    property NumberOfColorPlanes:integer read FNumberOfColorPlanes write FNumberOfColorPlanes stored False;
    /// <summary>
    ///  Número de páginas de vídeo compatibles según las resoluciones actuales y la memoria disponible.
    /// </summary>
    property NumberOfVideoPages:integer read FNumberOfVideoPages write FNumberOfVideoPages stored False;
    /// <summary>
    ///  Número de páginas de vídeo compatibles según las resoluciones actuales y la memoria disponible.
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
    ///  El protocolo usado por el controlador para tener acceso a dispositivos "controlados".
    /// </summary>
    property ProtocolSupported:integer read FProtocolSupported write FProtocolSupported stored False;
    /// <summary>
    ///  La propiedad ReservedSystemPaletteEntries indica el número actual de entradas reservadas en una tabla 
    ///  de colores del sistema. El sistema operativo puede reservar entradas para proporcionar colores estándar 
    ///  a las barras de tareas y otros elementos de visualización del escritorio. Si el sistema no utiliza una 
    ///  paleta, el valor de ReservedSystemPaletteEntries es nulo.<P>Ejemplo:24.
    /// </summary>
    property ReservedSystemPaletteEntries:integer read FReservedSystemPaletteEntries write FReservedSystemPaletteEntries stored False;
    /// <summary>
    ///  La propiedad SpecificationVersion indica el número de versión de la especificación de datos de inicialización 
    ///  en la que se basa la estructura.
    /// </summary>
    property SpecificationVersion:integer read FSpecificationVersion write FSpecificationVersion stored False;
    /// <summary>
    ///  La propiedad SpecificationVersion indica el número de versión de la especificación de datos de inicialización 
    ///  en la que se basa la estructura.
    /// </summary>
    property Status:string read FStatus write FStatus stored False;
    /// <summary>
    ///  StatusInfo es una cadena que indica si el dispositivo lógico está en un estado habilitado (valor = 3), 
    ///  deshabilitado (valor = 4) o algún otro estado (1) o un estado desconocido (2). Si esta propiedad no se 
    ///  aplica al dispositivo lógico, el valor, 5 ("No aplicable"), debe ser usado.
    /// </summary>
    property StatusInfo:integer read FStatusInfo write FStatusInfo stored False;
    /// <summary>
    ///  StatusInfo es una cadena que indica si el dispositivo lógico está en un estado habilitado (valor = 3), 
    ///  deshabilitado (valor = 4) o algún otro estado (1) o un estado desconocido (2). Si esta propiedad no se 
    ///  aplica al dispositivo lógico, el valor, 5 ("No aplicable"), debe ser usado.
    /// </summary>
    property SystemCreationClassName:string read FSystemCreationClassName write FSystemCreationClassName stored False;
    /// <summary>
    ///  StatusInfo es una cadena que indica si el dispositivo lógico está en un estado habilitado (valor = 3), 
    ///  deshabilitado (valor = 4) o algún otro estado (1) o un estado desconocido (2). Si esta propiedad no se 
    ///  aplica al dispositivo lógico, el valor, 5 ("No aplicable"), debe ser usado.
    /// </summary>
    property SystemName:string read FSystemName write FSystemName stored False;
    /// <summary>
    ///  La propiedad SystemPaletteEntries indica el número actual de entradas en una tabla de colores del sistema. 
    ///  Si el sistema no utiliza una paleta, el valor de SystemPaletteEntries es nulo.<P>Ejemplo:256
    /// </summary>
    property SystemPaletteEntries:integer read FSystemPaletteEntries write FSystemPaletteEntries stored False;
    /// <summary>
    ///  La propiedad TimeOfLastReset indica la fecha y la hora en la que este controlador se restableció por 
    ///  última vez. Esto puede significar que se apagó o reinicializó el controlador.
    /// </summary>
    property TimeOfLastReset:TDatetime read FTimeOfLastReset write FTimeOfLastReset stored False;
    /// <summary>
    ///  La arquitectura de vídeo. Por ejemplo, VGA (valor=5) o PC-98 (160) debe ser especificado.
    /// </summary>
    property VideoArchitecture:integer read FVideoArchitecture write FVideoArchitecture stored False;
    /// <summary>
    ///  La arquitectura de vídeo. Por ejemplo, VGA (valor=5) o PC-98 (160) debe ser especificado.
    /// </summary>
    property VideoMemoryType:integer read FVideoMemoryType write FVideoMemoryType stored False;
    /// <summary>
    ///  La arquitectura de vídeo. Por ejemplo, VGA (valor=5) o PC-98 (160) debe ser especificado.
    /// </summary>
    property VideoMode:integer read FVideoMode write FVideoMode stored False;
    /// <summary>
    ///  La propiedad VideoModeDescription indica la configuración actual de resolución, color y modo de exploración 
    ///  de la controladora de vídeo. 
    ///  Ejemplo: 1024 x 768 x 256 colores.
    /// </summary>
    property VideoModeDescription:string read FVideoModeDescription write FVideoModeDescription stored False;
    /// <summary>
    ///  La propiedad VideoModeDescription indica la configuración actual de resolución, color y modo de exploración 
    ///  de la controladora de vídeo. 
    ///  Ejemplo: 1024 x 768 x 256 colores.
    /// </summary>
    property VideoProcessor:string read FVideoProcessor write FVideoProcessor stored False;
  end;

  {%InterfaceClass WMIClass%}
  /// <summary>
  ///  La clase Win32_VideoController representa las posibilidades y la capacidad de administración de la controladora 
  ///  de vídeo en un equipo Win32. 
  ///  Ejemplos: fabricante del adaptador de vídeo, versión del conjunto de chips, 
  ///  resolución de la pantalla y número de colores.
  /// </summary>
  TVideoControllerInfo = class(TWMIBase)
  private
    FVideoControllerProperties: TVideoControllerProperties;
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
    // propiedades de la VideoController
    property VideoControllerProperties:TVideoControllerProperties read   FVideoControllerProperties write FVideoControllerProperties;
  end;


// Constantes para la propiedad AcceleratorCapabilities
const 
  ENUM_STRING_ACCELERATORCAPABILITIES_00 = 'Desconocido';
  ENUM_STRING_ACCELERATORCAPABILITIES_01 = 'Otros';
  ENUM_STRING_ACCELERATORCAPABILITIES_02 = 'Acelerador gráfico';
  ENUM_STRING_ACCELERATORCAPABILITIES_03 = 'Acelerador 3D';

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

// Constantes para la propiedad CurrentScanMode
const 
  ENUM_STRING_CURRENTSCANMODE_00 = 'Otros';
  ENUM_STRING_CURRENTSCANMODE_01 = 'Desconocido';
  ENUM_STRING_CURRENTSCANMODE_02 = 'Entrelazado';
  ENUM_STRING_CURRENTSCANMODE_03 = 'No entrelazado';

// Constantes para la propiedad DitherType
const 
  ENUM_STRING_DITHERTYPE_00 = 'Sin interpolado';
  ENUM_STRING_DITHERTYPE_01 = 'Interpolar con un pincel grueso';
  ENUM_STRING_DITHERTYPE_02 = 'Interpolar con un pincel fino';
  ENUM_STRING_DITHERTYPE_03 = 'Interpolación de colores en líneas';
  ENUM_STRING_DITHERTYPE_04 = 'El dispositivo usa escala de grises';

// Constantes para la propiedad ICMIntent
const 
  ENUM_STRING_ICMINTENT_00 = 'Saturación';
  ENUM_STRING_ICMINTENT_01 = 'Contraste';
  ENUM_STRING_ICMINTENT_02 = 'Color exacto';

// Constantes para la propiedad ICMMethod
const 
  ENUM_STRING_ICMMETHOD_00 = 'Deshabilitado';
  ENUM_STRING_ICMMETHOD_01 = 'Ventanas';
  ENUM_STRING_ICMMETHOD_02 = 'Controlador de dispositivo';
  ENUM_STRING_ICMMETHOD_03 = 'Dispositivo de destino';

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

// Constantes para la propiedad ProtocolSupported
const 
  ENUM_STRING_PROTOCOLSUPPORTED_00 = 'Otros';
  ENUM_STRING_PROTOCOLSUPPORTED_01 = 'Desconocido';
  ENUM_STRING_PROTOCOLSUPPORTED_02 = 'EISA';
  ENUM_STRING_PROTOCOLSUPPORTED_03 = 'ISA';
  ENUM_STRING_PROTOCOLSUPPORTED_04 = 'PCI';
  ENUM_STRING_PROTOCOLSUPPORTED_05 = 'ATA/ATAPI';
  ENUM_STRING_PROTOCOLSUPPORTED_06 = 'Disco flexible';
  ENUM_STRING_PROTOCOLSUPPORTED_07 = '1496';
  ENUM_STRING_PROTOCOLSUPPORTED_08 = 'Interfaz paralela SCSI';
  ENUM_STRING_PROTOCOLSUPPORTED_09 = 'Protocolo Fibre Channel SCSI';
  ENUM_STRING_PROTOCOLSUPPORTED_10 = 'Protocolo de bus serie SCSI';
  ENUM_STRING_PROTOCOLSUPPORTED_11 = 'Protocolo-2 de bus serie SCSI (1394)';
  ENUM_STRING_PROTOCOLSUPPORTED_12 = 'Arquitectura de almacenamiento serie SCSI';
  ENUM_STRING_PROTOCOLSUPPORTED_13 = 'VESA';
  ENUM_STRING_PROTOCOLSUPPORTED_14 = 'PCMCIA';
  ENUM_STRING_PROTOCOLSUPPORTED_15 = 'Bus serie universal (USB)';
  ENUM_STRING_PROTOCOLSUPPORTED_16 = 'Protocolo paralelo';
  ENUM_STRING_PROTOCOLSUPPORTED_17 = 'ESCON';
  ENUM_STRING_PROTOCOLSUPPORTED_18 = 'Diagnóstico';
  ENUM_STRING_PROTOCOLSUPPORTED_19 = 'I2C';
  ENUM_STRING_PROTOCOLSUPPORTED_20 = 'Energía';
  ENUM_STRING_PROTOCOLSUPPORTED_21 = 'HIPPI';
  ENUM_STRING_PROTOCOLSUPPORTED_22 = 'MultiBus';
  ENUM_STRING_PROTOCOLSUPPORTED_23 = 'VME';
  ENUM_STRING_PROTOCOLSUPPORTED_24 = 'IPI';
  ENUM_STRING_PROTOCOLSUPPORTED_25 = 'IEEE-488';
  ENUM_STRING_PROTOCOLSUPPORTED_26 = 'RS232';
  ENUM_STRING_PROTOCOLSUPPORTED_27 = 'IEEE 802.3 10BASE5';
  ENUM_STRING_PROTOCOLSUPPORTED_28 = 'IEEE 802.3 10BASE2';
  ENUM_STRING_PROTOCOLSUPPORTED_29 = 'IEEE 802.3 1BASE5';
  ENUM_STRING_PROTOCOLSUPPORTED_30 = 'IEEE 802.3 10BROAD36';
  ENUM_STRING_PROTOCOLSUPPORTED_31 = 'IEEE 802.3 100BASEVG';
  ENUM_STRING_PROTOCOLSUPPORTED_32 = 'IEEE 802.5 Token-Ring';
  ENUM_STRING_PROTOCOLSUPPORTED_33 = 'ANSI X3T9.5 FDDI';
  ENUM_STRING_PROTOCOLSUPPORTED_34 = 'MCA';
  ENUM_STRING_PROTOCOLSUPPORTED_35 = 'ESDI';
  ENUM_STRING_PROTOCOLSUPPORTED_36 = 'IDE';
  ENUM_STRING_PROTOCOLSUPPORTED_37 = 'CMD';
  ENUM_STRING_PROTOCOLSUPPORTED_38 = 'ST506';
  ENUM_STRING_PROTOCOLSUPPORTED_39 = 'DSSI';
  ENUM_STRING_PROTOCOLSUPPORTED_40 = 'QIC2';
  ENUM_STRING_PROTOCOLSUPPORTED_41 = 'ATA/IDE mejorado';
  ENUM_STRING_PROTOCOLSUPPORTED_42 = 'AGP';
  ENUM_STRING_PROTOCOLSUPPORTED_43 = 'TWIRP (infrarrojo de dos vías)';
  ENUM_STRING_PROTOCOLSUPPORTED_44 = 'FIR (último infrarrojo)';
  ENUM_STRING_PROTOCOLSUPPORTED_45 = 'SIR (infrarrojo serie)';
  ENUM_STRING_PROTOCOLSUPPORTED_46 = 'IrBus';

// Constantes para la propiedad StatusInfo
const 
  ENUM_STRING_STATUSINFO_00 = 'Otros';
  ENUM_STRING_STATUSINFO_01 = 'Desconocido';
  ENUM_STRING_STATUSINFO_02 = 'Habilitado';
  ENUM_STRING_STATUSINFO_03 = 'Deshabilitado';
  ENUM_STRING_STATUSINFO_04 = 'No aplicable';

// Constantes para la propiedad VideoArchitecture
const 
  ENUM_STRING_VIDEOARCHITECTURE_00 = 'Otros';
  ENUM_STRING_VIDEOARCHITECTURE_01 = 'Desconocido';
  ENUM_STRING_VIDEOARCHITECTURE_02 = 'CGA';
  ENUM_STRING_VIDEOARCHITECTURE_03 = 'EGA';
  ENUM_STRING_VIDEOARCHITECTURE_04 = 'VGA';
  ENUM_STRING_VIDEOARCHITECTURE_05 = 'SVGA';
  ENUM_STRING_VIDEOARCHITECTURE_06 = 'MDA';
  ENUM_STRING_VIDEOARCHITECTURE_07 = 'HGC';
  ENUM_STRING_VIDEOARCHITECTURE_08 = 'MCGA';
  ENUM_STRING_VIDEOARCHITECTURE_09 = '8514A';
  ENUM_STRING_VIDEOARCHITECTURE_10 = 'XGA';
  ENUM_STRING_VIDEOARCHITECTURE_11 = 'Búfer de trama lineal';
  ENUM_STRING_VIDEOARCHITECTURE_12 = 'PC-98';

// Constantes para la propiedad VideoMemoryType
const 
  ENUM_STRING_VIDEOMEMORYTYPE_00 = 'Otros';
  ENUM_STRING_VIDEOMEMORYTYPE_01 = 'Desconocido';
  ENUM_STRING_VIDEOMEMORYTYPE_02 = 'VRAM';
  ENUM_STRING_VIDEOMEMORYTYPE_03 = 'DRAM';
  ENUM_STRING_VIDEOMEMORYTYPE_04 = 'SRAM';
  ENUM_STRING_VIDEOMEMORYTYPE_05 = 'WRAM';
  ENUM_STRING_VIDEOMEMORYTYPE_06 = 'RAM EDO';
  ENUM_STRING_VIDEOMEMORYTYPE_07 = 'DRAM sincrónica de ráfaga';
  ENUM_STRING_VIDEOMEMORYTYPE_08 = 'SRAM de ráfaga por conductos';
  ENUM_STRING_VIDEOMEMORYTYPE_09 = 'CDRAM';
  ENUM_STRING_VIDEOMEMORYTYPE_10 = '3DRAM';
  ENUM_STRING_VIDEOMEMORYTYPE_11 = 'SDRAM';
  ENUM_STRING_VIDEOMEMORYTYPE_12 = 'SGRAM';

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
procedure TVideoControllerInfo.ClearProps;
begin
  Self.VideoControllerProperties.FAcceleratorCapabilitiesCount := 0;
  Self.VideoControllerProperties.FAcceleratorCapabilitiesAsString := EmptyStr;
  SetLength(VideoControllerProperties.FAcceleratorCapabilities, 0);
  Self.VideoControllerProperties.FAdapterCompatibility := EmptyStr;
  Self.VideoControllerProperties.FAdapterDACType := EmptyStr;
  Self.VideoControllerProperties.FAdapterRAM := 0;
  Self.VideoControllerProperties.FAvailability := 0;
  Self.VideoControllerProperties.FCapabilityDescriptionsCount := 0;
  Self.VideoControllerProperties.FCapabilityDescriptionsAsString := EmptyStr;
  SetLength(VideoControllerProperties.FCapabilityDescriptions, 0);
  Self.VideoControllerProperties.FCaption := EmptyStr;
  Self.VideoControllerProperties.FColorTableEntries := 0;
  Self.VideoControllerProperties.FConfigManagerErrorCode := 0;
  Self.VideoControllerProperties.FConfigManagerUserConfig := False;
  Self.VideoControllerProperties.FCreationClassName := EmptyStr;
  Self.VideoControllerProperties.FCurrentBitsPerPixel := 0;
  Self.VideoControllerProperties.FCurrentHorizontalResolution := 0;
  Self.VideoControllerProperties.FCurrentNumberOfColors := 0;
  Self.VideoControllerProperties.FCurrentNumberOfColumns := 0;
  Self.VideoControllerProperties.FCurrentNumberOfRows := 0;
  Self.VideoControllerProperties.FCurrentRefreshRate := 0;
  Self.VideoControllerProperties.FCurrentScanMode := 0;
  Self.VideoControllerProperties.FCurrentVerticalResolution := 0;
  Self.VideoControllerProperties.FDescription := EmptyStr;
  Self.VideoControllerProperties.FDeviceID := EmptyStr;
  Self.VideoControllerProperties.FDeviceSpecificPens := 0;
  Self.VideoControllerProperties.FDitherType := 0;
  Self.VideoControllerProperties.FDriverDate := 0;
  Self.VideoControllerProperties.FDriverVersion := EmptyStr;
  Self.VideoControllerProperties.FErrorCleared := False;
  Self.VideoControllerProperties.FErrorDescription := EmptyStr;
  Self.VideoControllerProperties.FICMIntent := 0;
  Self.VideoControllerProperties.FICMMethod := 0;
  Self.VideoControllerProperties.FInfFilename := EmptyStr;
  Self.VideoControllerProperties.FInfSection := EmptyStr;
  Self.VideoControllerProperties.FInstallDate := 0;
  Self.VideoControllerProperties.FInstalledDisplayDrivers := EmptyStr;
  Self.VideoControllerProperties.FLastErrorCode := 0;
  Self.VideoControllerProperties.FMaxMemorySupported := 0;
  Self.VideoControllerProperties.FMaxNumberControlled := 0;
  Self.VideoControllerProperties.FMaxRefreshRate := 0;
  Self.VideoControllerProperties.FMinRefreshRate := 0;
  Self.VideoControllerProperties.FMonochrome := False;
  Self.VideoControllerProperties.FName := EmptyStr;
  Self.VideoControllerProperties.FNumberOfColorPlanes := 0;
  Self.VideoControllerProperties.FNumberOfVideoPages := 0;
  Self.VideoControllerProperties.FPNPDeviceID := EmptyStr;
  Self.VideoControllerProperties.FPowerManagementCapabilitiesCount := 0;
  Self.VideoControllerProperties.FPowerManagementCapabilitiesAsString := EmptyStr;
  SetLength(VideoControllerProperties.FPowerManagementCapabilities, 0);
  Self.VideoControllerProperties.FPowerManagementSupported := False;
  Self.VideoControllerProperties.FProtocolSupported := 0;
  Self.VideoControllerProperties.FReservedSystemPaletteEntries := 0;
  Self.VideoControllerProperties.FSpecificationVersion := 0;
  Self.VideoControllerProperties.FStatus := EmptyStr;
  Self.VideoControllerProperties.FStatusInfo := 0;
  Self.VideoControllerProperties.FSystemCreationClassName := EmptyStr;
  Self.VideoControllerProperties.FSystemName := EmptyStr;
  Self.VideoControllerProperties.FSystemPaletteEntries := 0;
  Self.VideoControllerProperties.FTimeOfLastReset := 0;
  Self.VideoControllerProperties.FVideoArchitecture := 0;
  Self.VideoControllerProperties.FVideoMemoryType := 0;
  Self.VideoControllerProperties.FVideoMode := 0;
  Self.VideoControllerProperties.FVideoModeDescription := EmptyStr;
  Self.VideoControllerProperties.FVideoProcessor := EmptyStr;
end;

//: Constructor del componente
constructor TVideoControllerInfo.Create(AOwner: TComponent);
begin
  inherited;
  Self.FVideoControllerProperties := TVideoControllerProperties.Create();
  Self.MSDNHelp := 'https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-videocontroller';
end;

//: destructor del componente
destructor TVideoControllerInfo.Destroy();
begin
  // liberar
  FreeAndNil(Self.FVideoControllerProperties);
  inherited;
end;

//: Obtener la clase
function TVideoControllerInfo.GetWMIClass(): string;
begin
  Result := 'Win32_VideoController'
end;

//: Obtener Root
function TVideoControllerInfo.GetWMIRoot(): string;
begin
  Result := '';
end;

//: Procedmiento de activación
procedure TVideoControllerInfo.SetActive(const Value: Boolean);
begin
  // método heredado
  inherited;
end;

// Acceso a los elementos de la propiedad <AcceleratorCapabilities>
function TVideoControllerProperties.GetAcceleratorCapabilities(index: integer):integer;
begin
  if (index >= Self.FAcceleratorCapabilitiesCount) then begin
    Index := Self.FAcceleratorCapabilitiesCount - 1;
  end;
  Result := Self.FAcceleratorCapabilities[index];
end;

// Acceso a los elementos de la propiedad <CapabilityDescriptions>
function TVideoControllerProperties.GetCapabilityDescriptions(index: integer):string;
begin
  if (index >= Self.FCapabilityDescriptionsCount) then begin
    Index := Self.FCapabilityDescriptionsCount - 1;
  end;
  Result := Self.FCapabilityDescriptions[index];
end;

// Acceso a los elementos de la propiedad <PowerManagementCapabilities>
function TVideoControllerProperties.GetPowerManagementCapabilities(index: integer):integer;
begin
  if (index >= Self.FPowerManagementCapabilitiesCount) then begin
    Index := Self.FPowerManagementCapabilitiesCount - 1;
  end;
  Result := Self.FPowerManagementCapabilities[index];
end;


//: Rellenar las propiedades del componente.
procedure TVideoControllerInfo.FillProperties(AIndex: integer);
var
  v:     variant;
  vNull: boolean;
  vp:    TVideoControllerProperties;
begin
  // Llamar al heredado (importante)
  inherited;
  // Rellenar propiedades...
  vp := VideoControllerProperties;

  GetWMIPropertyValue(Self, 'AcceleratorCapabilities', v, vNull);
  vp.FAcceleratorCapabilitiesAsString := VariantStrValue(v, vNull);
  StringToArrayInteger(vp.FAcceleratorCapabilitiesAsString, vp.FAcceleratorCapabilities);
  vp.FAcceleratorCapabilitiesCount := Length(vp.FAcceleratorCapabilities);

  GetWMIPropertyValue(Self, 'AdapterCompatibility', v, vNull);
  vp.FAdapterCompatibility := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'AdapterDACType', v, vNull);
  vp.FAdapterDACType := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'AdapterRAM', v, vNull);
  vp.FAdapterRAM := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Availability', v, vNull);
  vp.FAvailability := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'CapabilityDescriptions', v, vNull);
  vp.FCapabilityDescriptionsAsString := VariantStrValue(v, vNull);
  StringToArrayString(vp.FCapabilityDescriptionsAsString, vp.FCapabilityDescriptions);
  vp.FCapabilityDescriptionsCount := Length(vp.FCapabilityDescriptions);

  GetWMIPropertyValue(Self, 'Caption', v, vNull);
  vp.FCaption := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'ColorTableEntries', v, vNull);
  vp.FColorTableEntries := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'ConfigManagerErrorCode', v, vNull);
  vp.FConfigManagerErrorCode := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'ConfigManagerUserConfig', v, vNull);
  vp.FConfigManagerUserConfig := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'CreationClassName', v, vNull);
  vp.FCreationClassName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'CurrentBitsPerPixel', v, vNull);
  vp.FCurrentBitsPerPixel := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'CurrentHorizontalResolution', v, vNull);
  vp.FCurrentHorizontalResolution := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'CurrentNumberOfColors', v, vNull);
  vp.FCurrentNumberOfColors := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'CurrentNumberOfColumns', v, vNull);
  vp.FCurrentNumberOfColumns := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'CurrentNumberOfRows', v, vNull);
  vp.FCurrentNumberOfRows := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'CurrentRefreshRate', v, vNull);
  vp.FCurrentRefreshRate := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'CurrentScanMode', v, vNull);
  vp.FCurrentScanMode := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'CurrentVerticalResolution', v, vNull);
  vp.FCurrentVerticalResolution := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Description', v, vNull);
  vp.FDescription := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'DeviceID', v, vNull);
  vp.FDeviceID := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'DeviceSpecificPens', v, vNull);
  vp.FDeviceSpecificPens := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'DitherType', v, vNull);
  vp.FDitherType := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'DriverDate', v, vNull);
  vp.FDriverDate := VariantDateTimeValue(v, vNull);

  GetWMIPropertyValue(Self, 'DriverVersion', v, vNull);
  vp.FDriverVersion := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'ErrorCleared', v, vNull);
  vp.FErrorCleared := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'ErrorDescription', v, vNull);
  vp.FErrorDescription := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'ICMIntent', v, vNull);
  vp.FICMIntent := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'ICMMethod', v, vNull);
  vp.FICMMethod := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'InfFilename', v, vNull);
  vp.FInfFilename := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'InfSection', v, vNull);
  vp.FInfSection := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'InstallDate', v, vNull);
  vp.FInstallDate := VariantDateTimeValue(v, vNull);

  GetWMIPropertyValue(Self, 'InstalledDisplayDrivers', v, vNull);
  vp.FInstalledDisplayDrivers := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'LastErrorCode', v, vNull);
  vp.FLastErrorCode := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'MaxMemorySupported', v, vNull);
  vp.FMaxMemorySupported := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'MaxNumberControlled', v, vNull);
  vp.FMaxNumberControlled := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'MaxRefreshRate', v, vNull);
  vp.FMaxRefreshRate := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'MinRefreshRate', v, vNull);
  vp.FMinRefreshRate := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Monochrome', v, vNull);
  vp.FMonochrome := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'Name', v, vNull);
  vp.FName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'NumberOfColorPlanes', v, vNull);
  vp.FNumberOfColorPlanes := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'NumberOfVideoPages', v, vNull);
  vp.FNumberOfVideoPages := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'PNPDeviceID', v, vNull);
  vp.FPNPDeviceID := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'PowerManagementCapabilities', v, vNull);
  vp.FPowerManagementCapabilitiesAsString := VariantStrValue(v, vNull);
  StringToArrayInteger(vp.FPowerManagementCapabilitiesAsString, vp.FPowerManagementCapabilities);
  vp.FPowerManagementCapabilitiesCount := Length(vp.FPowerManagementCapabilities);

  GetWMIPropertyValue(Self, 'PowerManagementSupported', v, vNull);
  vp.FPowerManagementSupported := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'ProtocolSupported', v, vNull);
  vp.FProtocolSupported := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'ReservedSystemPaletteEntries', v, vNull);
  vp.FReservedSystemPaletteEntries := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'SpecificationVersion', v, vNull);
  vp.FSpecificationVersion := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Status', v, vNull);
  vp.FStatus := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'StatusInfo', v, vNull);
  vp.FStatusInfo := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'SystemCreationClassName', v, vNull);
  vp.FSystemCreationClassName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'SystemName', v, vNull);
  vp.FSystemName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'SystemPaletteEntries', v, vNull);
  vp.FSystemPaletteEntries := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'TimeOfLastReset', v, vNull);
  vp.FTimeOfLastReset := VariantDateTimeValue(v, vNull);

  GetWMIPropertyValue(Self, 'VideoArchitecture', v, vNull);
  vp.FVideoArchitecture := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'VideoMemoryType', v, vNull);
  vp.FVideoMemoryType := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'VideoMode', v, vNull);
  vp.FVideoMode := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'VideoModeDescription', v, vNull);
  vp.FVideoModeDescription := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'VideoProcessor', v, vNull);
  vp.FVideoProcessor := VariantStrValue(v, vNull);
end;


// Obtener la propiedad como string
function TVideoControllerProperties.GetAllAcceleratorCapabilitiesAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_ACCELERATORCAPABILITIES_00;
    01: Result := ENUM_STRING_ACCELERATORCAPABILITIES_01;
    02: Result := ENUM_STRING_ACCELERATORCAPABILITIES_02;
    03: Result := ENUM_STRING_ACCELERATORCAPABILITIES_03;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TVideoControllerProperties.GetAllAvailabilityAsString(index:integer):string;
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
function TVideoControllerProperties.GetAllConfigManagerErrorCodeAsString(index:integer):string;
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
function TVideoControllerProperties.GetAllCurrentScanModeAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_CURRENTSCANMODE_00;
    01: Result := ENUM_STRING_CURRENTSCANMODE_01;
    02: Result := ENUM_STRING_CURRENTSCANMODE_02;
    03: Result := ENUM_STRING_CURRENTSCANMODE_03;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TVideoControllerProperties.GetAllDitherTypeAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_DITHERTYPE_00;
    01: Result := ENUM_STRING_DITHERTYPE_01;
    02: Result := ENUM_STRING_DITHERTYPE_02;
    03: Result := ENUM_STRING_DITHERTYPE_03;
    04: Result := ENUM_STRING_DITHERTYPE_04;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TVideoControllerProperties.GetAllICMIntentAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_ICMINTENT_00;
    01: Result := ENUM_STRING_ICMINTENT_01;
    02: Result := ENUM_STRING_ICMINTENT_02;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TVideoControllerProperties.GetAllICMMethodAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_ICMMETHOD_00;
    01: Result := ENUM_STRING_ICMMETHOD_01;
    02: Result := ENUM_STRING_ICMMETHOD_02;
    03: Result := ENUM_STRING_ICMMETHOD_03;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TVideoControllerProperties.GetAllPowerManagementCapabilitiesAsString(index:integer):string;
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
function TVideoControllerProperties.GetAllProtocolSupportedAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_PROTOCOLSUPPORTED_00;
    01: Result := ENUM_STRING_PROTOCOLSUPPORTED_01;
    02: Result := ENUM_STRING_PROTOCOLSUPPORTED_02;
    03: Result := ENUM_STRING_PROTOCOLSUPPORTED_03;
    04: Result := ENUM_STRING_PROTOCOLSUPPORTED_04;
    05: Result := ENUM_STRING_PROTOCOLSUPPORTED_05;
    06: Result := ENUM_STRING_PROTOCOLSUPPORTED_06;
    07: Result := ENUM_STRING_PROTOCOLSUPPORTED_07;
    08: Result := ENUM_STRING_PROTOCOLSUPPORTED_08;
    09: Result := ENUM_STRING_PROTOCOLSUPPORTED_09;
    10: Result := ENUM_STRING_PROTOCOLSUPPORTED_10;
    11: Result := ENUM_STRING_PROTOCOLSUPPORTED_11;
    12: Result := ENUM_STRING_PROTOCOLSUPPORTED_12;
    13: Result := ENUM_STRING_PROTOCOLSUPPORTED_13;
    14: Result := ENUM_STRING_PROTOCOLSUPPORTED_14;
    15: Result := ENUM_STRING_PROTOCOLSUPPORTED_15;
    16: Result := ENUM_STRING_PROTOCOLSUPPORTED_16;
    17: Result := ENUM_STRING_PROTOCOLSUPPORTED_17;
    18: Result := ENUM_STRING_PROTOCOLSUPPORTED_18;
    19: Result := ENUM_STRING_PROTOCOLSUPPORTED_19;
    20: Result := ENUM_STRING_PROTOCOLSUPPORTED_20;
    21: Result := ENUM_STRING_PROTOCOLSUPPORTED_21;
    22: Result := ENUM_STRING_PROTOCOLSUPPORTED_22;
    23: Result := ENUM_STRING_PROTOCOLSUPPORTED_23;
    24: Result := ENUM_STRING_PROTOCOLSUPPORTED_24;
    25: Result := ENUM_STRING_PROTOCOLSUPPORTED_25;
    26: Result := ENUM_STRING_PROTOCOLSUPPORTED_26;
    27: Result := ENUM_STRING_PROTOCOLSUPPORTED_27;
    28: Result := ENUM_STRING_PROTOCOLSUPPORTED_28;
    29: Result := ENUM_STRING_PROTOCOLSUPPORTED_29;
    30: Result := ENUM_STRING_PROTOCOLSUPPORTED_30;
    31: Result := ENUM_STRING_PROTOCOLSUPPORTED_31;
    32: Result := ENUM_STRING_PROTOCOLSUPPORTED_32;
    33: Result := ENUM_STRING_PROTOCOLSUPPORTED_33;
    34: Result := ENUM_STRING_PROTOCOLSUPPORTED_34;
    35: Result := ENUM_STRING_PROTOCOLSUPPORTED_35;
    36: Result := ENUM_STRING_PROTOCOLSUPPORTED_36;
    37: Result := ENUM_STRING_PROTOCOLSUPPORTED_37;
    38: Result := ENUM_STRING_PROTOCOLSUPPORTED_38;
    39: Result := ENUM_STRING_PROTOCOLSUPPORTED_39;
    40: Result := ENUM_STRING_PROTOCOLSUPPORTED_40;
    41: Result := ENUM_STRING_PROTOCOLSUPPORTED_41;
    42: Result := ENUM_STRING_PROTOCOLSUPPORTED_42;
    43: Result := ENUM_STRING_PROTOCOLSUPPORTED_43;
    44: Result := ENUM_STRING_PROTOCOLSUPPORTED_44;
    45: Result := ENUM_STRING_PROTOCOLSUPPORTED_45;
    46: Result := ENUM_STRING_PROTOCOLSUPPORTED_46;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TVideoControllerProperties.GetAllStatusInfoAsString(index:integer):string;
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
function TVideoControllerProperties.GetAllVideoArchitectureAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_VIDEOARCHITECTURE_00;
    01: Result := ENUM_STRING_VIDEOARCHITECTURE_01;
    02: Result := ENUM_STRING_VIDEOARCHITECTURE_02;
    03: Result := ENUM_STRING_VIDEOARCHITECTURE_03;
    04: Result := ENUM_STRING_VIDEOARCHITECTURE_04;
    05: Result := ENUM_STRING_VIDEOARCHITECTURE_05;
    06: Result := ENUM_STRING_VIDEOARCHITECTURE_06;
    07: Result := ENUM_STRING_VIDEOARCHITECTURE_07;
    08: Result := ENUM_STRING_VIDEOARCHITECTURE_08;
    09: Result := ENUM_STRING_VIDEOARCHITECTURE_09;
    10: Result := ENUM_STRING_VIDEOARCHITECTURE_10;
    11: Result := ENUM_STRING_VIDEOARCHITECTURE_11;
    12: Result := ENUM_STRING_VIDEOARCHITECTURE_12;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TVideoControllerProperties.GetAllVideoMemoryTypeAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_VIDEOMEMORYTYPE_00;
    01: Result := ENUM_STRING_VIDEOMEMORYTYPE_01;
    02: Result := ENUM_STRING_VIDEOMEMORYTYPE_02;
    03: Result := ENUM_STRING_VIDEOMEMORYTYPE_03;
    04: Result := ENUM_STRING_VIDEOMEMORYTYPE_04;
    05: Result := ENUM_STRING_VIDEOMEMORYTYPE_05;
    06: Result := ENUM_STRING_VIDEOMEMORYTYPE_06;
    07: Result := ENUM_STRING_VIDEOMEMORYTYPE_07;
    08: Result := ENUM_STRING_VIDEOMEMORYTYPE_08;
    09: Result := ENUM_STRING_VIDEOMEMORYTYPE_09;
    10: Result := ENUM_STRING_VIDEOMEMORYTYPE_10;
    11: Result := ENUM_STRING_VIDEOMEMORYTYPE_11;
    12: Result := ENUM_STRING_VIDEOMEMORYTYPE_12;
  else
    Result := STR_EMPTY;
  end;
end;


// Obtener núm. de elementos de la propiedad como string
function TVideoControllerProperties.GetAllAcceleratorCapabilitiesCount:integer;
begin
  Result := 4
end;

// Obtener núm. de elementos de la propiedad como string
function TVideoControllerProperties.GetAllAvailabilityCount:integer;
begin
  Result := 21
end;

// Obtener núm. de elementos de la propiedad como string
function TVideoControllerProperties.GetAllConfigManagerErrorCodeCount:integer;
begin
  Result := 32
end;

// Obtener núm. de elementos de la propiedad como string
function TVideoControllerProperties.GetAllCurrentScanModeCount:integer;
begin
  Result := 4
end;

// Obtener núm. de elementos de la propiedad como string
function TVideoControllerProperties.GetAllDitherTypeCount:integer;
begin
  Result := 5
end;

// Obtener núm. de elementos de la propiedad como string
function TVideoControllerProperties.GetAllICMIntentCount:integer;
begin
  Result := 3
end;

// Obtener núm. de elementos de la propiedad como string
function TVideoControllerProperties.GetAllICMMethodCount:integer;
begin
  Result := 4
end;

// Obtener núm. de elementos de la propiedad como string
function TVideoControllerProperties.GetAllPowerManagementCapabilitiesCount:integer;
begin
  Result := 8
end;

// Obtener núm. de elementos de la propiedad como string
function TVideoControllerProperties.GetAllProtocolSupportedCount:integer;
begin
  Result := 47
end;

// Obtener núm. de elementos de la propiedad como string
function TVideoControllerProperties.GetAllStatusInfoCount:integer;
begin
  Result := 5
end;

// Obtener núm. de elementos de la propiedad como string
function TVideoControllerProperties.GetAllVideoArchitectureCount:integer;
begin
  Result := 13
end;

// Obtener núm. de elementos de la propiedad como string
function TVideoControllerProperties.GetAllVideoMemoryTypeCount:integer;
begin
  Result := 13
end;


end.
