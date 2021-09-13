{
TBatteryInfo Component Version 3.1 - Suite GLibWMI
Copyright (©) 2020,  by Germán Estévez (Neftalí)

La clase Win32_Battery  representa una batería conectada al sistema del equipo. Esta clase se aplica 
a las baterías en los sistemas portátiles y otras baterías internas/externas.


Utilización/Usage:
(ES) Basta con "soltar" el componente y activarlo.
(EN) Place the component in the form and active it.

MSDN Info:
https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-battery

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
unit CBatteryInfo;

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
  TBatteryProperties = class(TPersistent)
  private
    {%PrivateClassVars PropertiesClass%}
    FAvailability:integer;
    FBatteryRechargeTime:integer;
    FBatteryStatus:integer;
    FCaption:string;
    FChemistry:integer;
    FConfigManagerErrorCode:integer;
    FConfigManagerUserConfig:boolean;
    FCreationClassName:string;
    FDescription:string;
    FDesignCapacity:integer;
    FDesignVoltage:int64;
    FDeviceID:string;
    FErrorCleared:boolean;
    FErrorDescription:string;
    FEstimatedChargeRemaining:integer;
    FEstimatedRunTime:integer;
    FExpectedBatteryLife:integer;
    FExpectedLife:integer;
    FFullChargeCapacity:integer;
    FInstallDate:TDatetime;
    FLastErrorCode:integer;
    FMaxRechargeTime:integer;
    FName:string;
    FPNPDeviceID:string;
    FPowerManagementCapabilities:TArrInteger;
    FPowerManagementCapabilitiesCount:integer;
    FPowerManagementCapabilitiesAsString:string;    FPowerManagementSupported:boolean;
    FSmartBatteryVersion:string;
    FStatus:string;
    FStatusInfo:integer;
    FSystemCreationClassName:string;
    FSystemName:string;
    FTimeOnBattery:integer;
    FTimeToFullCharge:integer;

  private
    {%PrivateGetMethods PropertiesClass%}
    function GetPowerManagementCapabilities(index: integer):integer;

  public
    {%PublicGetMethods PropertiesClass%}
    // Obtener la propiedad <Availability> como string
    function GetAllAvailabilityAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <Availability>
    function GetAllAvailabilityCount:integer;
    // Obtener la propiedad <BatteryStatus> como string
    function GetAllBatteryStatusAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <BatteryStatus>
    function GetAllBatteryStatusCount:integer;
    // Obtener la propiedad <Chemistry> como string
    function GetAllChemistryAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <Chemistry>
    function GetAllChemistryCount:integer;
    // Obtener la propiedad <ConfigManagerErrorCode> como string
    function GetAllConfigManagerErrorCodeAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <ConfigManagerErrorCode>
    function GetAllConfigManagerErrorCodeCount:integer;
    // Obtener la propiedad <PowerManagementCapabilities> como string
    function GetAllPowerManagementCapabilitiesAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <PowerManagementCapabilities>
    function GetAllPowerManagementCapabilitiesCount:integer;
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
    ///  La propiedad BatteryRechargeTime indica el tiempo necesario para cargar la batería por completo. 
    ///  La 
    ///  propiedad BatteryRechargeTime quedó obsoleta. No hay un valor de reemplazo y esta propiedad se considera 
    ///  ahora obsoleta.
    /// </summary>
    property BatteryRechargeTime:integer read FBatteryRechargeTime write FBatteryRechargeTime stored False;
    /// <summary>
    ///  Descripción del estado de cargo de batería. Valores como "Totalmente cargada" (valor=3) o "Cargada parcialmente" 
    ///  (11) pueden ser especificados. El valor, 10, no es válido en  el esquema CIM porque en DMI representa 
    ///  que no se ha instalado batería. En este caso, este objeto no debe ser instalado.
    /// </summary>
    property BatteryStatus:integer read FBatteryStatus write FBatteryStatus stored False;
    /// <summary>
    ///  Descripción del estado de cargo de batería. Valores como "Totalmente cargada" (valor=3) o "Cargada parcialmente" 
    ///  (11) pueden ser especificados. El valor, 10, no es válido en  el esquema CIM porque en DMI representa 
    ///  que no se ha instalado batería. En este caso, este objeto no debe ser instalado.
    /// </summary>
    property Caption:string read FCaption write FCaption stored False;
    /// <summary>
    ///  Descripción del estado de cargo de batería. Valores como "Totalmente cargada" (valor=3) o "Cargada parcialmente" 
    ///  (11) pueden ser especificados. El valor, 10, no es válido en  el esquema CIM porque en DMI representa 
    ///  que no se ha instalado batería. En este caso, este objeto no debe ser instalado.
    /// </summary>
    property Chemistry:integer read FChemistry write FChemistry stored False;
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
    ///  La capacidad de diseño de la batería en milivatios-hora. Si esta propiedad no es admitida, escriba 0
    ///  .
    /// </summary>
    property DesignCapacity:integer read FDesignCapacity write FDesignCapacity stored False;
    /// <summary>
    ///  El voltaje de diseño de la batería en milivoltios. Si este atributo no es admitido, escriba 0.
    /// </summary>
    property DesignVoltage:int64 read FDesignVoltage write FDesignVoltage stored False;
    /// <summary>
    ///  La propiedad DeviceID contiene un cadena que identifica la batería.
    ///  Ejemplo: Batería interna
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
    property EstimatedChargeRemaining:integer read FEstimatedChargeRemaining write FEstimatedChargeRemaining stored False;
    /// <summary>
    ///  EstimatedRunTime es un estimado en minutos del tiempo de disminución de la carga de la batería bajo las 
    ///  condiciones actuales de carga si la utilidad de energía está apagada, perdida o permanece apagada, o 
    ///  un equipo portátil está desconectado de una fuente de energía.
    /// </summary>
    property EstimatedRunTime:integer read FEstimatedRunTime write FEstimatedRunTime stored False;
    /// <summary>
    ///  ExpectedBatteryLife indica la cantidad de tiempo que tarda en agotarse completamente la batería después 
    ///  de que se ha cargado totalmente. 
    ///  Esta propiedad no es recomendada. No hay un valor de reemplazo y esta 
    ///  propiedad se considera obsoleta ahora.
    /// </summary>
    property ExpectedBatteryLife:integer read FExpectedBatteryLife write FExpectedBatteryLife stored False;
    /// <summary>
    ///  Indica la vigencia esperada de la batería en minutos, asumiendo que la batería está totalmente cargada. 
    ///  Esta propiedad representa el total de la vida esperada de la batería, no su vida restante actual, que 
    ///  está indicada por la propiedad EstimatedRunTime. 
    /// </summary>
    property ExpectedLife:integer read FExpectedLife write FExpectedLife stored False;
    /// <summary>
    ///  La capacidad de carga completa de la batería en milivatios-hora. La comparación de este valor con la 
    ///  propiedad DesignCapacity determina cuándo la batería requiere ser sustituida.  El fin de vida de una 
    ///  batería normalmente es cuando la propiedad FullChargeCapacity cae por debajo del 80% de la propiedad 
    ///  de DesignCapacity. Si esta propiedad no es compatible, escriba 0.
    /// </summary>
    property FullChargeCapacity:integer read FFullChargeCapacity write FFullChargeCapacity stored False;
    /// <summary>
    ///  La capacidad de carga completa de la batería en milivatios-hora. La comparación de este valor con la 
    ///  propiedad DesignCapacity determina cuándo la batería requiere ser sustituida.  El fin de vida de una 
    ///  batería normalmente es cuando la propiedad FullChargeCapacity cae por debajo del 80% de la propiedad 
    ///  de DesignCapacity. Si esta propiedad no es compatible, escriba 0.
    /// </summary>
    property InstallDate:TDatetime read FInstallDate write FInstallDate stored False;
    /// <summary>
    ///  LastErrorCode captura el último código de error informado por el dispositivo lógico.
    /// </summary>
    property LastErrorCode:integer read FLastErrorCode write FLastErrorCode stored False;
    /// <summary>
    ///  MaxRechargeTime indica el tiempo máximo en minutos para cargar completamente la batería. Esta propiedad 
    ///  representa el tiempo para volver a cargar una batería completamente agotada, no el tiempo de carga restante 
    ///  actual, que está indicado por la propiedad TimeToFullCharge. 
    /// </summary>
    property MaxRechargeTime:integer read FMaxRechargeTime write FMaxRechargeTime stored False;
    /// <summary>
    ///  MaxRechargeTime indica el tiempo máximo en minutos para cargar completamente la batería. Esta propiedad 
    ///  representa el tiempo para volver a cargar una batería completamente agotada, no el tiempo de carga restante 
    ///  actual, que está indicado por la propiedad TimeToFullCharge. 
    /// </summary>
    property Name:string read FName write FName stored False;
    /// <summary>
    ///  MaxRechargeTime indica el tiempo máximo en minutos para cargar completamente la batería. Esta propiedad 
    ///  representa el tiempo para volver a cargar una batería completamente agotada, no el tiempo de carga restante 
    ///  actual, que está indicado por la propiedad TimeToFullCharge. 
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
    ///  El número de versión de la especificación de datos de batería inteligente admitido por esta batería. 
    ///  Si la batería no admite esta función, se debe dejar el valor en blanco.
    /// </summary>
    property SmartBatteryVersion:string read FSmartBatteryVersion write FSmartBatteryVersion stored False;
    /// <summary>
    ///  El número de versión de la especificación de datos de batería inteligente admitido por esta batería. 
    ///  Si la batería no admite esta función, se debe dejar el valor en blanco.
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
    ///  TimeOnBattery indica el tiempo transcurrido en segundos desde que el SAI del equipo se cambió por última 
    ///  vez a baterías, o el tiempo desde que el sistema o SAI se reinició,  cualquiera que sea menor. Cero debe 
    ///  devolverse como si la batería está "en línea".
    /// </summary>
    property TimeOnBattery:integer read FTimeOnBattery write FTimeOnBattery stored False;
    /// <summary>
    ///  El tiempo restante para cargar la batería completamente en minutos de tasa de carga y uso.
    /// </summary>
    property TimeToFullCharge:integer read FTimeToFullCharge write FTimeToFullCharge stored False;
  end;

  {%InterfaceClass WMIClass%}
  /// <summary>
  ///  La clase Win32_Battery  representa una batería conectada al sistema del equipo. Esta clase se aplica 
  ///  a las baterías en los sistemas portátiles y otras baterías internas/externas.
  /// </summary>
  TBatteryInfo = class(TWMIBase)
  private
    FBatteryProperties: TBatteryProperties;
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
    // propiedades de la Battery
    property BatteryProperties:TBatteryProperties read   FBatteryProperties write FBatteryProperties;
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

// Constantes para la propiedad BatteryStatus
const 
  ENUM_STRING_BATTERYSTATUS_00 = 'Otros';
  ENUM_STRING_BATTERYSTATUS_01 = 'Desconocido';
  ENUM_STRING_BATTERYSTATUS_02 = 'Totalmente cargada';
  ENUM_STRING_BATTERYSTATUS_03 = 'Baja';
  ENUM_STRING_BATTERYSTATUS_04 = 'Crítico';
  ENUM_STRING_BATTERYSTATUS_05 = 'Cargando';
  ENUM_STRING_BATTERYSTATUS_06 = 'Cargando y alto';
  ENUM_STRING_BATTERYSTATUS_07 = 'Cargando y bajo';
  ENUM_STRING_BATTERYSTATUS_08 = 'Cargando y crítico';
  ENUM_STRING_BATTERYSTATUS_09 = 'No definido';
  ENUM_STRING_BATTERYSTATUS_10 = 'Cargada parcialmente';

// Constantes para la propiedad Chemistry
const 
  ENUM_STRING_CHEMISTRY_00 = 'Otros';
  ENUM_STRING_CHEMISTRY_01 = 'Desconocido';
  ENUM_STRING_CHEMISTRY_02 = 'Batería de plomo';
  ENUM_STRING_CHEMISTRY_03 = 'Batería de níquel-cadmio';
  ENUM_STRING_CHEMISTRY_04 = 'Batería de níquel-hidruro';
  ENUM_STRING_CHEMISTRY_05 = 'Ion-litio';
  ENUM_STRING_CHEMISTRY_06 = 'Batería de zinc-aire';
  ENUM_STRING_CHEMISTRY_07 = 'batería de litio-polímero';

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
procedure TBatteryInfo.ClearProps;
begin
  Self.BatteryProperties.FAvailability := 0;
  Self.BatteryProperties.FBatteryRechargeTime := 0;
  Self.BatteryProperties.FBatteryStatus := 0;
  Self.BatteryProperties.FCaption := EmptyStr;
  Self.BatteryProperties.FChemistry := 0;
  Self.BatteryProperties.FConfigManagerErrorCode := 0;
  Self.BatteryProperties.FConfigManagerUserConfig := False;
  Self.BatteryProperties.FCreationClassName := EmptyStr;
  Self.BatteryProperties.FDescription := EmptyStr;
  Self.BatteryProperties.FDesignCapacity := 0;
  Self.BatteryProperties.FDesignVoltage := 0;
  Self.BatteryProperties.FDeviceID := EmptyStr;
  Self.BatteryProperties.FErrorCleared := False;
  Self.BatteryProperties.FErrorDescription := EmptyStr;
  Self.BatteryProperties.FEstimatedChargeRemaining := 0;
  Self.BatteryProperties.FEstimatedRunTime := 0;
  Self.BatteryProperties.FExpectedBatteryLife := 0;
  Self.BatteryProperties.FExpectedLife := 0;
  Self.BatteryProperties.FFullChargeCapacity := 0;
  Self.BatteryProperties.FInstallDate := 0;
  Self.BatteryProperties.FLastErrorCode := 0;
  Self.BatteryProperties.FMaxRechargeTime := 0;
  Self.BatteryProperties.FName := EmptyStr;
  Self.BatteryProperties.FPNPDeviceID := EmptyStr;
  Self.BatteryProperties.FPowerManagementCapabilitiesCount := 0;
  Self.BatteryProperties.FPowerManagementCapabilitiesAsString := EmptyStr;
  SetLength(BatteryProperties.FPowerManagementCapabilities, 0);
  Self.BatteryProperties.FPowerManagementSupported := False;
  Self.BatteryProperties.FSmartBatteryVersion := EmptyStr;
  Self.BatteryProperties.FStatus := EmptyStr;
  Self.BatteryProperties.FStatusInfo := 0;
  Self.BatteryProperties.FSystemCreationClassName := EmptyStr;
  Self.BatteryProperties.FSystemName := EmptyStr;
  Self.BatteryProperties.FTimeOnBattery := 0;
  Self.BatteryProperties.FTimeToFullCharge := 0;
end;

//: Constructor del componente
constructor TBatteryInfo.Create(AOwner: TComponent);
begin
  inherited;
  Self.FBatteryProperties := TBatteryProperties.Create();
  Self.MSDNHelp := 'https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-battery';
end;

//: destructor del componente
destructor TBatteryInfo.Destroy();
begin
  // liberar
  FreeAndNil(Self.FBatteryProperties);
  inherited;
end;

//: Obtener la clase
function TBatteryInfo.GetWMIClass(): string;
begin
  Result := 'Win32_Battery'
end;

//: Obtener Root
function TBatteryInfo.GetWMIRoot(): string;
begin
  Result := '';
end;

//: Procedmiento de activación
procedure TBatteryInfo.SetActive(const Value: Boolean);
begin
  // método heredado
  inherited;
end;

// Acceso a los elementos de la propiedad <PowerManagementCapabilities>
function TBatteryProperties.GetPowerManagementCapabilities(index: integer):integer;
begin
  if (index >= Self.FPowerManagementCapabilitiesCount) then begin
    Index := Self.FPowerManagementCapabilitiesCount - 1;
  end;
  Result := Self.FPowerManagementCapabilities[index];
end;


//: Rellenar las propiedades del componente.
procedure TBatteryInfo.FillProperties(AIndex: integer);
var
  v:     variant;
  vNull: boolean;
  vp:    TBatteryProperties;
begin
  // Llamar al heredado (importante)
  inherited;
  // Rellenar propiedades...
  vp := BatteryProperties;

  GetWMIPropertyValue(Self, 'Availability', v, vNull);
  vp.FAvailability := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'BatteryRechargeTime', v, vNull);
  vp.FBatteryRechargeTime := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'BatteryStatus', v, vNull);
  vp.FBatteryStatus := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Caption', v, vNull);
  vp.FCaption := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Chemistry', v, vNull);
  vp.FChemistry := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'ConfigManagerErrorCode', v, vNull);
  vp.FConfigManagerErrorCode := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'ConfigManagerUserConfig', v, vNull);
  vp.FConfigManagerUserConfig := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'CreationClassName', v, vNull);
  vp.FCreationClassName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Description', v, vNull);
  vp.FDescription := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'DesignCapacity', v, vNull);
  vp.FDesignCapacity := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'DesignVoltage', v, vNull);
  vp.FDesignVoltage := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'DeviceID', v, vNull);
  vp.FDeviceID := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'ErrorCleared', v, vNull);
  vp.FErrorCleared := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'ErrorDescription', v, vNull);
  vp.FErrorDescription := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'EstimatedChargeRemaining', v, vNull);
  vp.FEstimatedChargeRemaining := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'EstimatedRunTime', v, vNull);
  vp.FEstimatedRunTime := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'ExpectedBatteryLife', v, vNull);
  vp.FExpectedBatteryLife := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'ExpectedLife', v, vNull);
  vp.FExpectedLife := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'FullChargeCapacity', v, vNull);
  vp.FFullChargeCapacity := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'InstallDate', v, vNull);
  vp.FInstallDate := VariantDateTimeValue(v, vNull);

  GetWMIPropertyValue(Self, 'LastErrorCode', v, vNull);
  vp.FLastErrorCode := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'MaxRechargeTime', v, vNull);
  vp.FMaxRechargeTime := VariantIntegerValue(v, vNull);

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

  GetWMIPropertyValue(Self, 'SmartBatteryVersion', v, vNull);
  vp.FSmartBatteryVersion := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Status', v, vNull);
  vp.FStatus := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'StatusInfo', v, vNull);
  vp.FStatusInfo := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'SystemCreationClassName', v, vNull);
  vp.FSystemCreationClassName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'SystemName', v, vNull);
  vp.FSystemName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'TimeOnBattery', v, vNull);
  vp.FTimeOnBattery := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'TimeToFullCharge', v, vNull);
  vp.FTimeToFullCharge := VariantIntegerValue(v, vNull);
end;


// Obtener la propiedad como string
function TBatteryProperties.GetAllAvailabilityAsString(index:integer):string;
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
function TBatteryProperties.GetAllBatteryStatusAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_BATTERYSTATUS_00;
    01: Result := ENUM_STRING_BATTERYSTATUS_01;
    02: Result := ENUM_STRING_BATTERYSTATUS_02;
    03: Result := ENUM_STRING_BATTERYSTATUS_03;
    04: Result := ENUM_STRING_BATTERYSTATUS_04;
    05: Result := ENUM_STRING_BATTERYSTATUS_05;
    06: Result := ENUM_STRING_BATTERYSTATUS_06;
    07: Result := ENUM_STRING_BATTERYSTATUS_07;
    08: Result := ENUM_STRING_BATTERYSTATUS_08;
    09: Result := ENUM_STRING_BATTERYSTATUS_09;
    10: Result := ENUM_STRING_BATTERYSTATUS_10;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TBatteryProperties.GetAllChemistryAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_CHEMISTRY_00;
    01: Result := ENUM_STRING_CHEMISTRY_01;
    02: Result := ENUM_STRING_CHEMISTRY_02;
    03: Result := ENUM_STRING_CHEMISTRY_03;
    04: Result := ENUM_STRING_CHEMISTRY_04;
    05: Result := ENUM_STRING_CHEMISTRY_05;
    06: Result := ENUM_STRING_CHEMISTRY_06;
    07: Result := ENUM_STRING_CHEMISTRY_07;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TBatteryProperties.GetAllConfigManagerErrorCodeAsString(index:integer):string;
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
function TBatteryProperties.GetAllPowerManagementCapabilitiesAsString(index:integer):string;
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
function TBatteryProperties.GetAllStatusInfoAsString(index:integer):string;
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
function TBatteryProperties.GetAllAvailabilityCount:integer;
begin
  Result := 21
end;

// Obtener núm. de elementos de la propiedad como string
function TBatteryProperties.GetAllBatteryStatusCount:integer;
begin
  Result := 11
end;

// Obtener núm. de elementos de la propiedad como string
function TBatteryProperties.GetAllChemistryCount:integer;
begin
  Result := 8
end;

// Obtener núm. de elementos de la propiedad como string
function TBatteryProperties.GetAllConfigManagerErrorCodeCount:integer;
begin
  Result := 32
end;

// Obtener núm. de elementos de la propiedad como string
function TBatteryProperties.GetAllPowerManagementCapabilitiesCount:integer;
begin
  Result := 8
end;

// Obtener núm. de elementos de la propiedad como string
function TBatteryProperties.GetAllStatusInfoCount:integer;
begin
  Result := 5
end;


end.
