{
TUSBControllerInfo Component Version 3.1 - Suite GLibWMI
Copyright (©) 2020,  by Germán Estévez (Neftalí)

La clase Win32_USBController administra las capacidades de una controladora de bus serie universal (
USB).


Utilización/Usage:
(ES) Basta con "soltar" el componente y activarlo.
(EN) Place the component in the form and active it.

MSDN Info:
https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-usbcontroller

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
unit CUSBControllerInfo;

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
  TUSBControllerProperties = class(TPersistent)
  private
    {%PrivateClassVars PropertiesClass%}
    FAvailability:integer;
    FCaption:string;
    FConfigManagerErrorCode:integer;
    FConfigManagerUserConfig:boolean;
    FCreationClassName:string;
    FDescription:string;
    FDeviceID:string;
    FErrorCleared:boolean;
    FErrorDescription:string;
    FInstallDate:TDatetime;
    FLastErrorCode:integer;
    FManufacturer:string;
    FMaxNumberControlled:integer;
    FName:string;
    FPNPDeviceID:string;
    FPowerManagementCapabilities:TArrInteger;
    FPowerManagementCapabilitiesCount:integer;
    FPowerManagementCapabilitiesAsString:string;    FPowerManagementSupported:boolean;
    FProtocolSupported:integer;
    FStatus:string;
    FStatusInfo:integer;
    FSystemCreationClassName:string;
    FSystemName:string;
    FTimeOfLastReset:TDatetime;

  private
    {%PrivateGetMethods PropertiesClass%}
    function GetPowerManagementCapabilities(index: integer):integer;

  public
    {%PublicGetMethods PropertiesClass%}
    // Obtener la propiedad <Availability> como string
    function GetAllAvailabilityAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <Availability>
    function GetAllAvailabilityCount:integer;
    // Obtener la propiedad <ConfigManagerErrorCode> como string
    function GetAllConfigManagerErrorCodeAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <ConfigManagerErrorCode>
    function GetAllConfigManagerErrorCodeCount:integer;
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

    {%PublicArrayMethods PropertiesClass%}
    property PowerManagementCapabilities[index:integer]:integer read GetPowerManagementCapabilities;
    property PowerManagementCapabilitiesCount:integer read FPowerManagementCapabilitiesCount stored False;

  published
    {%PublishedProperties PropertiesClass%}
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
    property Description:string read FDescription write FDescription stored False;
    /// <summary>
    ///  La propiedad DeviceID contiene una cadena que identifica de forma única la controladora de bus serie 
    ///  universal (USB) con respecto a otros dispositivos del sistema.
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
    ///  ErrorDescription es una cadena de forma libre que ofrece más información acerca del error registrado 
    ///  en la propiedad LastErrorCode e información acerca de cualquier acción correctiva que se pueda tomar
    ///  .
    /// </summary>
    property InstallDate:TDatetime read FInstallDate write FInstallDate stored False;
    /// <summary>
    ///  LastErrorCode captura el último código de error informado por el dispositivo lógico.
    /// </summary>
    property LastErrorCode:integer read FLastErrorCode write FLastErrorCode stored False;
    /// <summary>
    ///  La propiedad de fabricante indica el nombre de fabricante de controladora  USB.
    ///  Ejemplo: Acme
    /// </summary>
    property Manufacturer:string read FManufacturer write FManufacturer stored False;
    /// <summary>
    ///  Número máximo de entidades directamente direccionables compatibles con esta controladora. Se debe usar 
    ///  un valor de 0 si el número es desconocido o ilimitado.
    /// </summary>
    property MaxNumberControlled:integer read FMaxNumberControlled write FMaxNumberControlled stored False;
    /// <summary>
    ///  Número máximo de entidades directamente direccionables compatibles con esta controladora. Se debe usar 
    ///  un valor de 0 si el número es desconocido o ilimitado.
    /// </summary>
    property Name:string read FName write FName stored False;
    /// <summary>
    ///  Número máximo de entidades directamente direccionables compatibles con esta controladora. Se debe usar 
    ///  un valor de 0 si el número es desconocido o ilimitado.
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
    ///  El protocolo usado por el controlador para tener acceso a dispositivos "controlados".
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
    ///  La propiedad TimeOfLastReset indica la fecha y la hora en la que este controlador se restableció por 
    ///  última vez. Esto puede significar que se apagó o reinicializó el controlador.
    /// </summary>
    property TimeOfLastReset:TDatetime read FTimeOfLastReset write FTimeOfLastReset stored False;
  end;

  {%InterfaceClass WMIClass%}
  /// <summary>
  ///  La clase Win32_USBController administra las capacidades de una controladora de bus serie universal (
  ///  USB).
  /// </summary>
  TUSBControllerInfo = class(TWMIBase)
  private
    FUSBControllerProperties: TUSBControllerProperties;
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
    // propiedades de la USBController
    property USBControllerProperties:TUSBControllerProperties read   FUSBControllerProperties write FUSBControllerProperties;
  end;


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
procedure TUSBControllerInfo.ClearProps;
begin
  Self.USBControllerProperties.FAvailability := 0;
  Self.USBControllerProperties.FCaption := EmptyStr;
  Self.USBControllerProperties.FConfigManagerErrorCode := 0;
  Self.USBControllerProperties.FConfigManagerUserConfig := False;
  Self.USBControllerProperties.FCreationClassName := EmptyStr;
  Self.USBControllerProperties.FDescription := EmptyStr;
  Self.USBControllerProperties.FDeviceID := EmptyStr;
  Self.USBControllerProperties.FErrorCleared := False;
  Self.USBControllerProperties.FErrorDescription := EmptyStr;
  Self.USBControllerProperties.FInstallDate := 0;
  Self.USBControllerProperties.FLastErrorCode := 0;
  Self.USBControllerProperties.FManufacturer := EmptyStr;
  Self.USBControllerProperties.FMaxNumberControlled := 0;
  Self.USBControllerProperties.FName := EmptyStr;
  Self.USBControllerProperties.FPNPDeviceID := EmptyStr;
  Self.USBControllerProperties.FPowerManagementCapabilitiesCount := 0;
  Self.USBControllerProperties.FPowerManagementCapabilitiesAsString := EmptyStr;
  SetLength(USBControllerProperties.FPowerManagementCapabilities, 0);
  Self.USBControllerProperties.FPowerManagementSupported := False;
  Self.USBControllerProperties.FProtocolSupported := 0;
  Self.USBControllerProperties.FStatus := EmptyStr;
  Self.USBControllerProperties.FStatusInfo := 0;
  Self.USBControllerProperties.FSystemCreationClassName := EmptyStr;
  Self.USBControllerProperties.FSystemName := EmptyStr;
  Self.USBControllerProperties.FTimeOfLastReset := 0;
end;

//: Constructor del componente
constructor TUSBControllerInfo.Create(AOwner: TComponent);
begin
  inherited;
  Self.FUSBControllerProperties := TUSBControllerProperties.Create();
  Self.MSDNHelp := 'https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-usbcontroller';
end;

//: destructor del componente
destructor TUSBControllerInfo.Destroy();
begin
  // liberar
  FreeAndNil(Self.FUSBControllerProperties);
  inherited;
end;

//: Obtener la clase
function TUSBControllerInfo.GetWMIClass(): string;
begin
  Result := 'Win32_USBController'
end;

//: Obtener Root
function TUSBControllerInfo.GetWMIRoot(): string;
begin
  Result := '';
end;

//: Procedmiento de activación
procedure TUSBControllerInfo.SetActive(const Value: Boolean);
begin
  // método heredado
  inherited;
end;

// Acceso a los elementos de la propiedad <PowerManagementCapabilities>
function TUSBControllerProperties.GetPowerManagementCapabilities(index: integer):integer;
begin
  if (index >= Self.FPowerManagementCapabilitiesCount) then begin
    Index := Self.FPowerManagementCapabilitiesCount - 1;
  end;
  Result := Self.FPowerManagementCapabilities[index];
end;


//: Rellenar las propiedades del componente.
procedure TUSBControllerInfo.FillProperties(AIndex: integer);
var
  v:     variant;
  vNull: boolean;
  vp:    TUSBControllerProperties;
begin
  // Llamar al heredado (importante)
  inherited;
  // Rellenar propiedades...
  vp := USBControllerProperties;

  GetWMIPropertyValue(Self, 'Availability', v, vNull);
  vp.FAvailability := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Caption', v, vNull);
  vp.FCaption := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'ConfigManagerErrorCode', v, vNull);
  vp.FConfigManagerErrorCode := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'ConfigManagerUserConfig', v, vNull);
  vp.FConfigManagerUserConfig := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'CreationClassName', v, vNull);
  vp.FCreationClassName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Description', v, vNull);
  vp.FDescription := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'DeviceID', v, vNull);
  vp.FDeviceID := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'ErrorCleared', v, vNull);
  vp.FErrorCleared := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'ErrorDescription', v, vNull);
  vp.FErrorDescription := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'InstallDate', v, vNull);
  vp.FInstallDate := VariantDateTimeValue(v, vNull);

  GetWMIPropertyValue(Self, 'LastErrorCode', v, vNull);
  vp.FLastErrorCode := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Manufacturer', v, vNull);
  vp.FManufacturer := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'MaxNumberControlled', v, vNull);
  vp.FMaxNumberControlled := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Name', v, vNull);
  vp.FName := VariantStrValue(v, vNull);

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

  GetWMIPropertyValue(Self, 'Status', v, vNull);
  vp.FStatus := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'StatusInfo', v, vNull);
  vp.FStatusInfo := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'SystemCreationClassName', v, vNull);
  vp.FSystemCreationClassName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'SystemName', v, vNull);
  vp.FSystemName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'TimeOfLastReset', v, vNull);
  vp.FTimeOfLastReset := VariantDateTimeValue(v, vNull);
end;


// Obtener la propiedad como string
function TUSBControllerProperties.GetAllAvailabilityAsString(index:integer):string;
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
function TUSBControllerProperties.GetAllConfigManagerErrorCodeAsString(index:integer):string;
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
function TUSBControllerProperties.GetAllPowerManagementCapabilitiesAsString(index:integer):string;
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
function TUSBControllerProperties.GetAllProtocolSupportedAsString(index:integer):string;
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
function TUSBControllerProperties.GetAllStatusInfoAsString(index:integer):string;
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


// Obtener núm. de elementos de la propiedad como string
function TUSBControllerProperties.GetAllAvailabilityCount:integer;
begin
  Result := 21
end;

// Obtener núm. de elementos de la propiedad como string
function TUSBControllerProperties.GetAllConfigManagerErrorCodeCount:integer;
begin
  Result := 32
end;

// Obtener núm. de elementos de la propiedad como string
function TUSBControllerProperties.GetAllPowerManagementCapabilitiesCount:integer;
begin
  Result := 8
end;

// Obtener núm. de elementos de la propiedad como string
function TUSBControllerProperties.GetAllProtocolSupportedCount:integer;
begin
  Result := 47
end;

// Obtener núm. de elementos de la propiedad como string
function TUSBControllerProperties.GetAllStatusInfoCount:integer;
begin
  Result := 5
end;


end.
