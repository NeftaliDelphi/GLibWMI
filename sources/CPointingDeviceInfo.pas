{
TPointingDeviceInfo Component Version 3.1 - Suite GLibWMI
Copyright (�) 2020,  by Germ�n Est�vez (Neftal�)

La clase Win32_PointingDevice representa un dispositivo de entrada usado para se�alar y seleccionar zonas 
de la pantalla en un equipo Win32. Cualquier dispositivo usado para controlar un puntero o se�alar en 
la pantalla de un equipo Win32 es miembro de esta clase.
Ejemplo: un mouse, teclado t�ctil o tablillas 
de escritura o plumas.


Utilizaci�n/Usage:
(ES) Basta con "soltar" el componente y activarlo.
(EN) Place the component in the form and active it.

MSDN Info:
https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-pointingdevice

=========================================================================
IMPORTANTE PROGRAMADORES: Por favor, si tienes comentarios, mejoras, ampliaciones,
errores y/o cualquier otro tipo de sugerencia env�ame un mail a:
german_ral@hotmail.com

IMPORTANT PROGRAMMERS: please, if you have comments, improvements, enlargements,
errors and/or any another type of suggestion send a mail to:
german_ral@hotmail.com
=========================================================================

@author Germ�n Est�vez (Neftal�)
@web    http://neftali.clubDelphi.com
@cat    Package GLibWMI
}
unit CPointingDeviceInfo;

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
  TPointingDeviceProperties = class(TPersistent)
  private
    {%PrivateClassVars PropertiesClass%}
    FAvailability:integer;
    FCaption:string;
    FConfigManagerErrorCode:integer;
    FConfigManagerUserConfig:boolean;
    FCreationClassName:string;
    FDescription:string;
    FDeviceID:string;
    FDeviceInterface:integer;
    FDoubleSpeedThreshold:integer;
    FErrorCleared:boolean;
    FErrorDescription:string;
    FHandedness:integer;
    FHardwareType:string;
    FInfFileName:string;
    FInfSection:string;
    FInstallDate:TDatetime;
    FIsLocked:boolean;
    FLastErrorCode:integer;
    FManufacturer:string;
    FName:string;
    FNumberOfButtons:integer;
    FPNPDeviceID:string;
    FPointingType:integer;
    FPowerManagementCapabilities:TArrInteger;
    FPowerManagementCapabilitiesCount:integer;
    FPowerManagementCapabilitiesAsString:string;    FPowerManagementSupported:boolean;
    FQuadSpeedThreshold:integer;
    FResolution:integer;
    FSampleRate:integer;
    FStatus:string;
    FStatusInfo:integer;
    FSynch:integer;
    FSystemCreationClassName:string;
    FSystemName:string;

  private
    {%PrivateGetMethods PropertiesClass%}
    function GetPowerManagementCapabilities(index: integer):integer;

  public
    {%PublicGetMethods PropertiesClass%}
    // Obtener la propiedad <Availability> como string
    function GetAllAvailabilityAsString(index:integer):string;
    // Obtener el n�mero de elementos disponibles de la propiedad <Availability>
    function GetAllAvailabilityCount:integer;
    // Obtener la propiedad <ConfigManagerErrorCode> como string
    function GetAllConfigManagerErrorCodeAsString(index:integer):string;
    // Obtener el n�mero de elementos disponibles de la propiedad <ConfigManagerErrorCode>
    function GetAllConfigManagerErrorCodeCount:integer;
    // Obtener la propiedad <DeviceInterface> como string
    function GetAllDeviceInterfaceAsString(index:integer):string;
    // Obtener el n�mero de elementos disponibles de la propiedad <DeviceInterface>
    function GetAllDeviceInterfaceCount:integer;
    // Obtener la propiedad <Handedness> como string
    function GetAllHandednessAsString(index:integer):string;
    // Obtener el n�mero de elementos disponibles de la propiedad <Handedness>
    function GetAllHandednessCount:integer;
    // Obtener la propiedad <PointingType> como string
    function GetAllPointingTypeAsString(index:integer):string;
    // Obtener el n�mero de elementos disponibles de la propiedad <PointingType>
    function GetAllPointingTypeCount:integer;
    // Obtener la propiedad <PowerManagementCapabilities> como string
    function GetAllPowerManagementCapabilitiesAsString(index:integer):string;
    // Obtener el n�mero de elementos disponibles de la propiedad <PowerManagementCapabilities>
    function GetAllPowerManagementCapabilitiesCount:integer;
    // Obtener la propiedad <StatusInfo> como string
    function GetAllStatusInfoAsString(index:integer):string;
    // Obtener el n�mero de elementos disponibles de la propiedad <StatusInfo>
    function GetAllStatusInfoCount:integer;

    {%PublicArrayMethods PropertiesClass%}
    property PowerManagementCapabilities[index:integer]:integer read GetPowerManagementCapabilities;
    property PowerManagementCapabilitiesCount:integer read FPowerManagementCapabilitiesCount stored False;

  published
    {%PublishedProperties PropertiesClass%}
    /// <summary>
    ///  La disponibilidad y estado del dispositivo. Por ejemplo, la propiedad disponibilidad, indica que el dispositivo 
    ///  est� en funcionamiento y tiene energ�a total (valor=3), o se encuentra en un estado de aviso (4), prueba 
    ///  (5), degradado (10) o ahorro de energ�a (valores 13-15 y 17). En relaci�n con los estados de ahorro de 
    ///  energ�a, �stos se definen como sigue: Valor 13 ("Ahorro de energ�a: desconocido") indica que se sabe 
    ///  que el dispositivo est� en un modo de ahorro de energ�a, pero se desconoce su estado exacto en este modo; 
    ///  14 ("Ahorro de energ�a: modo de bajo consumo") indica que el dispositivo est� en un estado de  ahorro 
    ///  de energ�a, pero sigue funcionando y puede exhibir una baja de rendimiento;  15 ("Ahorro de energ�a: 
    ///  espera") describe que el sistema no est� en funcionamiento, pero que se podr�a poner en operaci�n "r�pidamente"; 
    ///  y valor 17 ("Ahorro de energ�a: advertencia") indica que el equipo est� en un estado de aviso, aunque 
    ///  est� tambi�n en modo de ahorro de energ�a.
    /// </summary>
    property Availability:integer read FAvailability write FAvailability stored False;
    /// <summary>
    ///  La disponibilidad y estado del dispositivo. Por ejemplo, la propiedad disponibilidad, indica que el dispositivo 
    ///  est� en funcionamiento y tiene energ�a total (valor=3), o se encuentra en un estado de aviso (4), prueba 
    ///  (5), degradado (10) o ahorro de energ�a (valores 13-15 y 17). En relaci�n con los estados de ahorro de 
    ///  energ�a, �stos se definen como sigue: Valor 13 ("Ahorro de energ�a: desconocido") indica que se sabe 
    ///  que el dispositivo est� en un modo de ahorro de energ�a, pero se desconoce su estado exacto en este modo; 
    ///  14 ("Ahorro de energ�a: modo de bajo consumo") indica que el dispositivo est� en un estado de  ahorro 
    ///  de energ�a, pero sigue funcionando y puede exhibir una baja de rendimiento;  15 ("Ahorro de energ�a: 
    ///  espera") describe que el sistema no est� en funcionamiento, pero que se podr�a poner en operaci�n "r�pidamente"; 
    ///  y valor 17 ("Ahorro de energ�a: advertencia") indica que el equipo est� en un estado de aviso, aunque 
    ///  est� tambi�n en modo de ahorro de energ�a.
    /// </summary>
    property Caption:string read FCaption write FCaption stored False;
    /// <summary>
    ///  Indica el c�digo de error del Administrador de configuraci�n de Win32. Los valores siguientes pueden 
    ///  ser devueltos: 
    ///  0 Este dispositivo funciona correctamente. 
    ///  1 Este dispositivo no est� configurado correctamente. 
    ///  2 Windows no puede cargar el controlador para este dispositivo. 
    ///  3 El controlador de este dispositivo 
    ///  puede estar da�ado o le falta memoria o recursos a su sistema. 
    ///  4 Este dispositivo no funciona correctamente. 
    ///  Uno de sus controladores o el Registro pueden estar da�ados. 
    ///  5 El controlador de este dispositivo necesita 
    ///  un recurso que Windows no puede administrar. 
    ///  6 La configuraci�n de arranque de este dispositivo entra 
    ///  en conflicto con otros dispositivos. 
    ///  7 No se puede filtrar. 
    ///  8 Falta el cargador de controlador del 
    ///  dispositivo. 
    ///  9 Este dispositivo no funciona correctamente porque el firmware de control est� informando 
    ///  incorrectamente acerca de los recursos del dispositivo. 
    ///  10 El dispositivo no puede se iniciar. 
    ///  11 Error 
    ///  en el dispositivo. 
    ///  12 Este dispositivo no encuentra suficientes recursos libres para usar. 
    ///  13 Windows 
    ///  no puede comprobar los recursos de este dispositivo. 
    ///  14 Este dispositivo no funcionar� correctamente 
    ///  hasta que reinicie su equipo. 
    ///  15 Este dispositivo no funciona correctamente porque hay un posible problema 
    ///  de enumeraci�n. 
    ///  16 Windows no puede identificar todos los recursos que utiliza este dispositivo. 
    ///  17 
    ///  Este dispositivo est� solicitando un tipo de recurso desconocido. 
    ///  18 Vuelva a instalar los controladores 
    ///  de este dispositivo 
    ///  19 Su Registro debe estar da�ado. 
    ///  20 Error usar el cargador VxD. 
    ///  21 Error del 
    ///  sistema: intente cambiar el controlador de este dispositivo. Si esto no funciona, consulte la documentaci�n 
    ///  de hardware. Windows est� quitando este dispositivo. 
    ///  22 Este dispositivo est� deshabilitado. 
    ///  23 Error 
    ///  del ntaci�n de hardware. 
    ///  24 Este dispositivo no est� presente, no funciona correctamente o no tiene 
    ///  todos los controladores instalados. 
    ///  25 Windows a�n est� instalando este dispositivo. 
    ///  26 Windows a�n 
    ///  est� instalando este dispositivo. 
    ///  27 Este dispositivo no tiene una configuraci�n de Registro v�lida. 
    ///  28 Los controladores de este dispositivo no est�n instalados. 
    ///  29 Este dispositivo est� deshabilitado 
    ///  porque el firmware no proporcion� los recursos requeridos. 
    ///  30 Este dispositivo est� utilizando una recurso 
    ///  de solicitud de interrupci�n (IRQ) que ya est� usando otro dispositivo. 
    ///  31 Este dispositivo no funciona 
    ///  correctamente porque Windows no puede cargar los controladores requeridos.
    /// </summary>
    property ConfigManagerErrorCode:integer read FConfigManagerErrorCode write FConfigManagerErrorCode stored False;
    /// <summary>
    ///  Indica el c�digo de error del Administrador de configuraci�n de Win32. Los valores siguientes pueden 
    ///  ser devueltos: 
    ///  0 Este dispositivo funciona correctamente. 
    ///  1 Este dispositivo no est� configurado correctamente. 
    ///  2 Windows no puede cargar el controlador para este dispositivo. 
    ///  3 El controlador de este dispositivo 
    ///  puede estar da�ado o le falta memoria o recursos a su sistema. 
    ///  4 Este dispositivo no funciona correctamente. 
    ///  Uno de sus controladores o el Registro pueden estar da�ados. 
    ///  5 El controlador de este dispositivo necesita 
    ///  un recurso que Windows no puede administrar. 
    ///  6 La configuraci�n de arranque de este dispositivo entra 
    ///  en conflicto con otros dispositivos. 
    ///  7 No se puede filtrar. 
    ///  8 Falta el cargador de controlador del 
    ///  dispositivo. 
    ///  9 Este dispositivo no funciona correctamente porque el firmware de control est� informando 
    ///  incorrectamente acerca de los recursos del dispositivo. 
    ///  10 El dispositivo no puede se iniciar. 
    ///  11 Error 
    ///  en el dispositivo. 
    ///  12 Este dispositivo no encuentra suficientes recursos libres para usar. 
    ///  13 Windows 
    ///  no puede comprobar los recursos de este dispositivo. 
    ///  14 Este dispositivo no funcionar� correctamente 
    ///  hasta que reinicie su equipo. 
    ///  15 Este dispositivo no funciona correctamente porque hay un posible problema 
    ///  de enumeraci�n. 
    ///  16 Windows no puede identificar todos los recursos que utiliza este dispositivo. 
    ///  17 
    ///  Este dispositivo est� solicitando un tipo de recurso desconocido. 
    ///  18 Vuelva a instalar los controladores 
    ///  de este dispositivo 
    ///  19 Su Registro debe estar da�ado. 
    ///  20 Error usar el cargador VxD. 
    ///  21 Error del 
    ///  sistema: intente cambiar el controlador de este dispositivo. Si esto no funciona, consulte la documentaci�n 
    ///  de hardware. Windows est� quitando este dispositivo. 
    ///  22 Este dispositivo est� deshabilitado. 
    ///  23 Error 
    ///  del ntaci�n de hardware. 
    ///  24 Este dispositivo no est� presente, no funciona correctamente o no tiene 
    ///  todos los controladores instalados. 
    ///  25 Windows a�n est� instalando este dispositivo. 
    ///  26 Windows a�n 
    ///  est� instalando este dispositivo. 
    ///  27 Este dispositivo no tiene una configuraci�n de Registro v�lida. 
    ///  28 Los controladores de este dispositivo no est�n instalados. 
    ///  29 Este dispositivo est� deshabilitado 
    ///  porque el firmware no proporcion� los recursos requeridos. 
    ///  30 Este dispositivo est� utilizando una recurso 
    ///  de solicitud de interrupci�n (IRQ) que ya est� usando otro dispositivo. 
    ///  31 Este dispositivo no funciona 
    ///  correctamente porque Windows no puede cargar los controladores requeridos.
    /// </summary>
    property ConfigManagerUserConfig:boolean read FConfigManagerUserConfig write FConfigManagerUserConfig stored False;
    /// <summary>
    ///  CreationClassName indica el nombre de la clase o subclase que se usa en la creaci�n de una instancia. 
    ///  Cuando se usa con las dem�s propiedades clave de esta clase, esta propiedad permite que se identifiquen 
    ///  de manera �nica todas las instancias de esta clase y sus subclases.
    /// </summary>
    property CreationClassName:string read FCreationClassName write FCreationClassName stored False;
    /// <summary>
    ///  CreationClassName indica el nombre de la clase o subclase que se usa en la creaci�n de una instancia. 
    ///  Cuando se usa con las dem�s propiedades clave de esta clase, esta propiedad permite que se identifiquen 
    ///  de manera �nica todas las instancias de esta clase y sus subclases.
    /// </summary>
    property Description:string read FDescription write FDescription stored False;
    /// <summary>
    ///  La propiedad DeviceID contiene una cadena que identifica de forma �nica el dispositivo se�alador con 
    ///  respecto a otros dispositivos del sistema.
    /// </summary>
    property DeviceID:string read FDeviceID write FDeviceID stored False;
    /// <summary>
    ///  La propiedad DeviceInterface indica el tipo de interfaz usada para el dispositivo se�alador.
    /// </summary>
    property DeviceInterface:integer read FDeviceInterface write FDeviceInterface stored False;
    /// <summary>
    ///  La propiedad DoubleSpeedThreshold contiene uno de dos valores de aceleraci�n. La sensibilidad del dispositivo 
    ///  se�alador se duplica (se cambia del primero al segundo valor) cuando �ste se mueve una distancia superior 
    ///  a este valor umbral.
    /// </summary>
    property DoubleSpeedThreshold:integer read FDoubleSpeedThreshold write FDoubleSpeedThreshold stored False;
    /// <summary>
    ///  ErrorCleared es una propiedad booleana que indica que el error comunicado en la propiedad LastErrorCode 
    ///  se ha resuelto ahora.
    /// </summary>
    property ErrorCleared:boolean read FErrorCleared write FErrorCleared stored False;
    /// <summary>
    ///  ErrorDescription es una cadena de forma libre que ofrece m�s informaci�n acerca del error registrado 
    ///  en la propiedad LastErrorCode e informaci�n acerca de cualquier acci�n correctiva que se pueda tomar
    ///  .
    /// </summary>
    property ErrorDescription:string read FErrorDescription write FErrorDescription stored False;
    /// <summary>
    ///  Entero que indica si el dispositivo se�alador para operaci�n con mano derecha (value=2) o izquierda (valor=3). 
    ///  Tambi�n se puede definir los valores, "Desconocido" (0) y "No aplicable" (1).
    /// </summary>
    property Handedness:integer read FHandedness write FHandedness stored False;
    /// <summary>
    ///  La propiedad HardwareType indica el tipo de hardware usado para el dispositivo se�alador Win32. 
    ///  Ejemplo: 
    ///  MOUSE PS2 DE MICROSOFT
    /// </summary>
    property HardwareType:string read FHardwareType write FHardwareType stored False;
    /// <summary>
    ///  La propiedad InfFileName indica el nombre del archivo .inf para el dispositivo se�alador Win32 .
    ///  Ejemplo: 
    ///  ab.inf
    /// </summary>
    property InfFileName:string read FInfFileName write FInfFileName stored False;
    /// <summary>
    ///  La propiedad InfSection indica la secci�n del archivo .inf que contiene informaci�n de configuraci�n 
    ///  del dispositivo se�alador Win32.
    /// </summary>
    property InfSection:string read FInfSection write FInfSection stored False;
    /// <summary>
    ///  La propiedad InfSection indica la secci�n del archivo .inf que contiene informaci�n de configuraci�n 
    ///  del dispositivo se�alador Win32.
    /// </summary>
    property InstallDate:TDatetime read FInstallDate write FInstallDate stored False;
    /// <summary>
    ///  Una indicaci�n sobre si el dispositivo est� bloqueado, evitando la entrada y salida de datos por el 
    ///  usuario.
    /// </summary>
    property IsLocked:boolean read FIsLocked write FIsLocked stored False;
    /// <summary>
    ///  LastErrorCode captura el �ltimo c�digo de error informado por el dispositivo l�gico.
    /// </summary>
    property LastErrorCode:integer read FLastErrorCode write FLastErrorCode stored False;
    /// <summary>
    ///  La propiedad Manufacturer indica el fabricante del procesador.
    ///  Ejemplo: GenuineSilicon
    /// </summary>
    property Manufacturer:string read FManufacturer write FManufacturer stored False;
    /// <summary>
    ///  La propiedad Manufacturer indica el fabricante del procesador.
    ///  Ejemplo: GenuineSilicon
    /// </summary>
    property Name:string read FName write FName stored False;
    /// <summary>
    ///  La propiedad NumberOfButtons indica el n�mero de botones en el dispositivo se�alador. 
    ///  Ejemplo: 2
    /// </summary>
    property NumberOfButtons:integer read FNumberOfButtons write FNumberOfButtons stored False;
    /// <summary>
    ///  La propiedad NumberOfButtons indica el n�mero de botones en el dispositivo se�alador. 
    ///  Ejemplo: 2
    /// </summary>
    property PNPDeviceID:string read FPNPDeviceID write FPNPDeviceID stored False;
    /// <summary>
    ///  La propiedad NumberOfButtons indica el n�mero de botones en el dispositivo se�alador. 
    ///  Ejemplo: 2
    /// </summary>
    property PointingType:integer read FPointingType write FPointingType stored False;
    /// <summary>
    ///  Indica los recursos espec�ficos relacionados con energ�a de dispositivo l�gico. Los valores de la matriz, 
    ///  0="Desconocido", 1="No compatible" y 2="Deshabilitado" se explican por s� solos. El valor 3="Habilitado" 
    ///  indica que las caracter�sticas de administraci�n de energ�a est�n habilitadas actualmente pero se desconoce 
    ///  el conjunto de caracter�sticas exacto o la informaci�n no est� disponible. " Modos de ahorro de energ�a 
    ///  establecidos autom�ticamente " (4) describe que un dispositivo puede cambiar su estado de energ�a con 
    ///  base en el uso u otros criterios. " Estado de energ�a configurable " (5) indica que se admite el m�todo 
    ///  SetPowerState. " Ciclo de energ�a permitido " (6) indica que se puede invocar el m�todo SetPowerState 
    ///  con la variable de entrada PowerState establecida a 5 ("Ciclo de energ�a "). " Se admite el encendido 
    ///  por tiempo " (7) indica que el m�todo SetPowerState puede ser invocado con la variable de entrada PowerState 
    ///  establecida  a 5 ("Ciclo de energ�a ") y el par�metro Time establecido a un fecha y hora espec�fica, 
    ///  o intervalo, para encendido.
    /// </summary>
    property PowerManagementCapabilitiesAsString:string read FPowerManagementCapabilitiesAsString write FPowerManagementCapabilitiesAsString stored False;
    /// <summary>
    ///  Booleano que indica que el Dispositivo se puede administrar con energ�a - por ej., ponerlo en un estado 
    ///  de ahorro de energ�a. Este booleano no indica que las caracter�sticas de administraci�n de energ�a est�n 
    ///  actualmente habilitadas, o si est�n deshabilitadas, las caracter�sticas que son compatibles. Consulte 
    ///  la matriz PowerManagementCapabilities para obtener esta informaci�n. Si este booleano es falso, el valor 
    ///  entero 1, para la cadena, "No compatible", debe ser la �nica entrada en la matriz PowerManagementCap
    ///  abilities.
    /// </summary>
    property PowerManagementSupported:boolean read FPowerManagementSupported write FPowerManagementSupported stored False;
    /// <summary>
    ///  La propiedad QuadSpeedThreshold contiene uno de dos valores de un umbral de aceleraci�n. El sistema duplica 
    ///  la velocidad del movimiento del puntero cuando el dispositivo se�alador se mueve una distancia mayor 
    ///  de este valor. Como este aumento de velocidad ocurre tras alcanzarse el umbral DoubleSpeedThreshold, 
    ///  el puntero se mueve realmente a cuatro veces su velocidad original
    /// </summary>
    property QuadSpeedThreshold:integer read FQuadSpeedThreshold write FQuadSpeedThreshold stored False;
    /// <summary>
    ///  La propiedad de resoluci�n indica la resoluci�n de ajuste de espaciado entre caracteres.
    ///  Ejemplo: 0
    /// </summary>
    property Resolution:integer read FResolution write FResolution stored False;
    /// <summary>
    ///  La propiedad SampleRate indica la frecuencia con la que se sondea la informaci�n de entrada en el dispositivo 
    ///  se�alador.
    /// </summary>
    property SampleRate:integer read FSampleRate write FSampleRate stored False;
    /// <summary>
    ///  La propiedad SampleRate indica la frecuencia con la que se sondea la informaci�n de entrada en el dispositivo 
    ///  se�alador.
    /// </summary>
    property Status:string read FStatus write FStatus stored False;
    /// <summary>
    ///  StatusInfo es una cadena que indica si el dispositivo l�gico est� en un estado habilitado (valor = 3), 
    ///  deshabilitado (valor = 4) o alg�n otro estado (1) o un estado desconocido (2). Si esta propiedad no se 
    ///  aplica al dispositivo l�gico, el valor, 5 ("No aplicable"), debe ser usado.
    /// </summary>
    property StatusInfo:integer read FStatusInfo write FStatusInfo stored False;
    /// <summary>
    ///  La propiedad Synch especifica el tiempo tras el que se supone que la siguiente interrupci�n indica el 
    ///  inicio de un nuevo paquete de dispositivo (los paquetes parciales se descartan). En el caso de que se 
    ///  pierda una interrupci�n, esto permite al controlador del dispositivo se�alador sincronizar su representaci�n 
    ///  interna del estado del paquete con el estado del hardware.
    /// </summary>
    property Synch:integer read FSynch write FSynch stored False;
    /// <summary>
    ///  La propiedad Synch especifica el tiempo tras el que se supone que la siguiente interrupci�n indica el 
    ///  inicio de un nuevo paquete de dispositivo (los paquetes parciales se descartan). En el caso de que se 
    ///  pierda una interrupci�n, esto permite al controlador del dispositivo se�alador sincronizar su representaci�n 
    ///  interna del estado del paquete con el estado del hardware.
    /// </summary>
    property SystemCreationClassName:string read FSystemCreationClassName write FSystemCreationClassName stored False;
    /// <summary>
    ///  La propiedad Synch especifica el tiempo tras el que se supone que la siguiente interrupci�n indica el 
    ///  inicio de un nuevo paquete de dispositivo (los paquetes parciales se descartan). En el caso de que se 
    ///  pierda una interrupci�n, esto permite al controlador del dispositivo se�alador sincronizar su representaci�n 
    ///  interna del estado del paquete con el estado del hardware.
    /// </summary>
    property SystemName:string read FSystemName write FSystemName stored False;
  end;

  {%InterfaceClass WMIClass%}
  /// <summary>
  ///  La clase Win32_PointingDevice representa un dispositivo de entrada usado para se�alar y seleccionar zonas 
  ///  de la pantalla en un equipo Win32. Cualquier dispositivo usado para controlar un puntero o se�alar en 
  ///  la pantalla de un equipo Win32 es miembro de esta clase.
  ///  Ejemplo: un mouse, teclado t�ctil o tablillas 
  ///  de escritura o plumas.
  /// </summary>
  TPointingDeviceInfo = class(TWMIBase)
  private
    FPointingDeviceProperties: TPointingDeviceProperties;
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
    // propiedades de la PointingDevice
    property PointingDeviceProperties:TPointingDeviceProperties read   FPointingDeviceProperties write FPointingDeviceProperties;
  end;


// Constantes para la propiedad Availability
const 
  ENUM_STRING_AVAILABILITY_00 = 'Otros';
  ENUM_STRING_AVAILABILITY_01 = 'Desconocido';
  ENUM_STRING_AVAILABILITY_02 = 'Funcionar/Energ�a completa';
  ENUM_STRING_AVAILABILITY_03 = 'Advertencia';
  ENUM_STRING_AVAILABILITY_04 = 'En prueba';
  ENUM_STRING_AVAILABILITY_05 = 'No aplicable';
  ENUM_STRING_AVAILABILITY_06 = 'Apagado';
  ENUM_STRING_AVAILABILITY_07 = 'Sin conexi�n a la red';
  ENUM_STRING_AVAILABILITY_08 = 'Inactivo';
  ENUM_STRING_AVAILABILITY_09 = 'Degradado';
  ENUM_STRING_AVAILABILITY_10 = 'No instalado';
  ENUM_STRING_AVAILABILITY_11 = 'Error de instalaci�n';
  ENUM_STRING_AVAILABILITY_12 = 'Ahorro de energ�a: desconocido';
  ENUM_STRING_AVAILABILITY_13 = 'Ahorro de energ�a: modo de bajo consumo';
  ENUM_STRING_AVAILABILITY_14 = 'Ahorro de energ�a: espera';
  ENUM_STRING_AVAILABILITY_15 = 'Ciclo de energ�a';
  ENUM_STRING_AVAILABILITY_16 = 'Ahorro de energ�a: advertencia';
  ENUM_STRING_AVAILABILITY_17 = 'Pausado';
  ENUM_STRING_AVAILABILITY_18 = 'no est� listo';
  ENUM_STRING_AVAILABILITY_19 = 'No configurado';
  ENUM_STRING_AVAILABILITY_20 = 'Inactivo';

// Constantes para la propiedad ConfigManagerErrorCode
const 
  ENUM_STRING_CONFIGMANAGERERRORCODE_00 = 'Este dispositivo funciona correctamente.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_01 = 'El dispositivo no est� configurado correctamente.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_02 = 'Windows no puede cargar el controlador para este dispositivo.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_03 = 'El controlador de este dispositivo podr�a estar da�ado o es posible que su sistema tenga poca memoria u otros recursos.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_04 = 'Este dispositivo no funciona correctamente. Podr�a estar da�ado uno de sus controladores o el Registro.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_05 = 'El controlador de este dispositivo necesita un recurso que Windows no puede administrar.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_06 = 'La configuraci�n de arranque de este dispositivo est� en conflicto con otros dispositivos.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_07 = 'No se puede filtrar.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_08 = 'Falta el controlador del dispositivo.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_09 = 'Este dispositivo no funciona correctamente porque el firmware de control informa incorrectamente de los recursos del dispositivo.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_10 = 'No puede iniciar este dispositivo.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_11 = 'Error de este dispositivo.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_12 = 'Este dispositivo no encuentra suficientes recursos libres que pueda usar.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_13 = 'Windows no puede comprobar los recursos de este dispositivo.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_14 = 'El dispositivo no puede funcionar correctamente hasta que reinicie su equipo.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_15 = 'Este dispositivo no funciona correctamente porque quiz� existe un problema de reenumeraci�n.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_16 = 'Windows no puede identificar todos los recursos que usa este dispositivo.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_17 = 'Este dispositivo est� solicitando un tipo de recurso desconocido.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_18 = 'Reinstalar los controladores de este dispositivo.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_19 = 'Error al usar el cargador VxD.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_20 = 'Su Registro podr�a estar da�ado.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_21 = 'Error del sistema: pruebe a cambiar el controlador de este dispositivo. Si eso no funciona, consulte la documentaci�n del hardware. Windows quitar� este dispositivo.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_22 = 'Este dispositivo est� deshabilitado.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_23 = 'Error del sistema: pruebe a cambiar el controlador de este dispositivo. Si eso no funciona, consulte la documentaci�n del hardware.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_24 = 'Este dispositivo no est� presente, no funciona correctamente o no tiene todos sus controladores instalados.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_25 = 'Windows sigue configurando este dispositivo.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_26 = 'Windows sigue configurando este dispositivo.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_27 = 'Este dispositivo no tiene una configuraci�n de registro v�lida.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_28 = 'Los controladores de este dispositivo no est�n instalados.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_29 = 'Este dispositivo est� deshabilitado porque su firmware no le proporcion� los recursos requeridos.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_30 = 'Este dispositivo usa un recurso de solicitud de interrupci�n (IRQ) que usa otro dispositivo.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_31 = 'Este dispositivo no funciona correctamente porque Windows no puede cargar los controladores requeridos para este dispositivo.';

// Constantes para la propiedad DeviceInterface
const 
  ENUM_STRING_DEVICEINTERFACE_00 = 'Otros';
  ENUM_STRING_DEVICEINTERFACE_01 = 'Desconocido';
  ENUM_STRING_DEVICEINTERFACE_02 = 'serie';
  ENUM_STRING_DEVICEINTERFACE_03 = 'PS/2';
  ENUM_STRING_DEVICEINTERFACE_04 = 'Infrarrojos';
  ENUM_STRING_DEVICEINTERFACE_05 = 'HP-HIL';
  ENUM_STRING_DEVICEINTERFACE_06 = 'Bus Mouse';
  ENUM_STRING_DEVICEINTERFACE_07 = 'ADB (Apple Desktop Bus, Bus de escritorio de Apple)';
  ENUM_STRING_DEVICEINTERFACE_08 = 'Mouse tipo bus DB-9';
  ENUM_STRING_DEVICEINTERFACE_09 = 'Mouse tipo bus micro-DIN';
  ENUM_STRING_DEVICEINTERFACE_10 = 'USB';

// Constantes para la propiedad Handedness
const 
  ENUM_STRING_HANDEDNESS_00 = 'Desconocido';
  ENUM_STRING_HANDEDNESS_01 = 'No aplicable';
  ENUM_STRING_HANDEDNESS_02 = 'Operaci�n con mano derecha';
  ENUM_STRING_HANDEDNESS_03 = 'Operaci�n con mano izquierda';

// Constantes para la propiedad PointingType
const 
  ENUM_STRING_POINTINGTYPE_00 = 'Otros';
  ENUM_STRING_POINTINGTYPE_01 = 'Desconocido';
  ENUM_STRING_POINTINGTYPE_02 = 'Mouse';
  ENUM_STRING_POINTINGTYPE_03 = 'Bola de seguimiento';
  ENUM_STRING_POINTINGTYPE_04 = 'Punto de seguimiento';
  ENUM_STRING_POINTINGTYPE_05 = 'Glide Point';
  ENUM_STRING_POINTINGTYPE_06 = 'Teclado t�ctil';
  ENUM_STRING_POINTINGTYPE_07 = 'Pantalla t�ctil';
  ENUM_STRING_POINTINGTYPE_08 = 'Mouse: sensor �ptico';

// Constantes para la propiedad PowerManagementCapabilities
const 
  ENUM_STRING_POWERMANAGEMENTCAPABILITIES_00 = 'Desconocido';
  ENUM_STRING_POWERMANAGEMENTCAPABILITIES_01 = 'No compatible';
  ENUM_STRING_POWERMANAGEMENTCAPABILITIES_02 = 'Deshabilitado';
  ENUM_STRING_POWERMANAGEMENTCAPABILITIES_03 = 'Habilitado';
  ENUM_STRING_POWERMANAGEMENTCAPABILITIES_04 = 'Modos de ahorro de energ�a establecidos autom�ticamente';
  ENUM_STRING_POWERMANAGEMENTCAPABILITIES_05 = 'Estado de energ�a configurable';
  ENUM_STRING_POWERMANAGEMENTCAPABILITIES_06 = 'Ciclo de energ�a permitido';
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
procedure TPointingDeviceInfo.ClearProps;
begin
  Self.PointingDeviceProperties.FAvailability := 0;
  Self.PointingDeviceProperties.FCaption := EmptyStr;
  Self.PointingDeviceProperties.FConfigManagerErrorCode := 0;
  Self.PointingDeviceProperties.FConfigManagerUserConfig := False;
  Self.PointingDeviceProperties.FCreationClassName := EmptyStr;
  Self.PointingDeviceProperties.FDescription := EmptyStr;
  Self.PointingDeviceProperties.FDeviceID := EmptyStr;
  Self.PointingDeviceProperties.FDeviceInterface := 0;
  Self.PointingDeviceProperties.FDoubleSpeedThreshold := 0;
  Self.PointingDeviceProperties.FErrorCleared := False;
  Self.PointingDeviceProperties.FErrorDescription := EmptyStr;
  Self.PointingDeviceProperties.FHandedness := 0;
  Self.PointingDeviceProperties.FHardwareType := EmptyStr;
  Self.PointingDeviceProperties.FInfFileName := EmptyStr;
  Self.PointingDeviceProperties.FInfSection := EmptyStr;
  Self.PointingDeviceProperties.FInstallDate := 0;
  Self.PointingDeviceProperties.FIsLocked := False;
  Self.PointingDeviceProperties.FLastErrorCode := 0;
  Self.PointingDeviceProperties.FManufacturer := EmptyStr;
  Self.PointingDeviceProperties.FName := EmptyStr;
  Self.PointingDeviceProperties.FNumberOfButtons := 0;
  Self.PointingDeviceProperties.FPNPDeviceID := EmptyStr;
  Self.PointingDeviceProperties.FPointingType := 0;
  Self.PointingDeviceProperties.FPowerManagementCapabilitiesCount := 0;
  Self.PointingDeviceProperties.FPowerManagementCapabilitiesAsString := EmptyStr;
  SetLength(PointingDeviceProperties.FPowerManagementCapabilities, 0);
  Self.PointingDeviceProperties.FPowerManagementSupported := False;
  Self.PointingDeviceProperties.FQuadSpeedThreshold := 0;
  Self.PointingDeviceProperties.FResolution := 0;
  Self.PointingDeviceProperties.FSampleRate := 0;
  Self.PointingDeviceProperties.FStatus := EmptyStr;
  Self.PointingDeviceProperties.FStatusInfo := 0;
  Self.PointingDeviceProperties.FSynch := 0;
  Self.PointingDeviceProperties.FSystemCreationClassName := EmptyStr;
  Self.PointingDeviceProperties.FSystemName := EmptyStr;
end;

//: Constructor del componente
constructor TPointingDeviceInfo.Create(AOwner: TComponent);
begin
  inherited;
  Self.FPointingDeviceProperties := TPointingDeviceProperties.Create();
  Self.MSDNHelp := 'https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-pointingdevice';
end;

//: destructor del componente
destructor TPointingDeviceInfo.Destroy();
begin
  // liberar
  FreeAndNil(Self.FPointingDeviceProperties);
  inherited;
end;

//: Obtener la clase
function TPointingDeviceInfo.GetWMIClass(): string;
begin
  Result := 'Win32_PointingDevice'
end;

//: Obtener Root
function TPointingDeviceInfo.GetWMIRoot(): string;
begin
  Result := '';
end;

//: Procedmiento de activaci�n
procedure TPointingDeviceInfo.SetActive(const Value: Boolean);
begin
  // m�todo heredado
  inherited;
end;

// Acceso a los elementos de la propiedad <PowerManagementCapabilities>
function TPointingDeviceProperties.GetPowerManagementCapabilities(index: integer):integer;
begin
  if (index >= Self.FPowerManagementCapabilitiesCount) then begin
    Index := Self.FPowerManagementCapabilitiesCount - 1;
  end;
  Result := Self.FPowerManagementCapabilities[index];
end;


//: Rellenar las propiedades del componente.
procedure TPointingDeviceInfo.FillProperties(AIndex: integer);
var
  v:     variant;
  vNull: boolean;
  vp:    TPointingDeviceProperties;
begin
  // Llamar al heredado (importante)
  inherited;
  // Rellenar propiedades...
  vp := PointingDeviceProperties;

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

  GetWMIPropertyValue(Self, 'DeviceInterface', v, vNull);
  vp.FDeviceInterface := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'DoubleSpeedThreshold', v, vNull);
  vp.FDoubleSpeedThreshold := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'ErrorCleared', v, vNull);
  vp.FErrorCleared := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'ErrorDescription', v, vNull);
  vp.FErrorDescription := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Handedness', v, vNull);
  vp.FHandedness := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'HardwareType', v, vNull);
  vp.FHardwareType := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'InfFileName', v, vNull);
  vp.FInfFileName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'InfSection', v, vNull);
  vp.FInfSection := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'InstallDate', v, vNull);
  vp.FInstallDate := VariantDateTimeValue(v, vNull);

  GetWMIPropertyValue(Self, 'IsLocked', v, vNull);
  vp.FIsLocked := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'LastErrorCode', v, vNull);
  vp.FLastErrorCode := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Manufacturer', v, vNull);
  vp.FManufacturer := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Name', v, vNull);
  vp.FName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'NumberOfButtons', v, vNull);
  vp.FNumberOfButtons := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'PNPDeviceID', v, vNull);
  vp.FPNPDeviceID := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'PointingType', v, vNull);
  vp.FPointingType := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'PowerManagementCapabilities', v, vNull);
  vp.FPowerManagementCapabilitiesAsString := VariantStrValue(v, vNull);
  StringToArrayInteger(vp.FPowerManagementCapabilitiesAsString, vp.FPowerManagementCapabilities);
  vp.FPowerManagementCapabilitiesCount := Length(vp.FPowerManagementCapabilities);

  GetWMIPropertyValue(Self, 'PowerManagementSupported', v, vNull);
  vp.FPowerManagementSupported := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'QuadSpeedThreshold', v, vNull);
  vp.FQuadSpeedThreshold := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Resolution', v, vNull);
  vp.FResolution := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'SampleRate', v, vNull);
  vp.FSampleRate := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Status', v, vNull);
  vp.FStatus := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'StatusInfo', v, vNull);
  vp.FStatusInfo := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Synch', v, vNull);
  vp.FSynch := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'SystemCreationClassName', v, vNull);
  vp.FSystemCreationClassName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'SystemName', v, vNull);
  vp.FSystemName := VariantStrValue(v, vNull);
end;


// Obtener la propiedad como string
function TPointingDeviceProperties.GetAllAvailabilityAsString(index:integer):string;
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
function TPointingDeviceProperties.GetAllConfigManagerErrorCodeAsString(index:integer):string;
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
function TPointingDeviceProperties.GetAllDeviceInterfaceAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_DEVICEINTERFACE_00;
    01: Result := ENUM_STRING_DEVICEINTERFACE_01;
    02: Result := ENUM_STRING_DEVICEINTERFACE_02;
    03: Result := ENUM_STRING_DEVICEINTERFACE_03;
    04: Result := ENUM_STRING_DEVICEINTERFACE_04;
    05: Result := ENUM_STRING_DEVICEINTERFACE_05;
    06: Result := ENUM_STRING_DEVICEINTERFACE_06;
    07: Result := ENUM_STRING_DEVICEINTERFACE_07;
    08: Result := ENUM_STRING_DEVICEINTERFACE_08;
    09: Result := ENUM_STRING_DEVICEINTERFACE_09;
    10: Result := ENUM_STRING_DEVICEINTERFACE_10;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TPointingDeviceProperties.GetAllHandednessAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_HANDEDNESS_00;
    01: Result := ENUM_STRING_HANDEDNESS_01;
    02: Result := ENUM_STRING_HANDEDNESS_02;
    03: Result := ENUM_STRING_HANDEDNESS_03;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TPointingDeviceProperties.GetAllPointingTypeAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_POINTINGTYPE_00;
    01: Result := ENUM_STRING_POINTINGTYPE_01;
    02: Result := ENUM_STRING_POINTINGTYPE_02;
    03: Result := ENUM_STRING_POINTINGTYPE_03;
    04: Result := ENUM_STRING_POINTINGTYPE_04;
    05: Result := ENUM_STRING_POINTINGTYPE_05;
    06: Result := ENUM_STRING_POINTINGTYPE_06;
    07: Result := ENUM_STRING_POINTINGTYPE_07;
    08: Result := ENUM_STRING_POINTINGTYPE_08;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TPointingDeviceProperties.GetAllPowerManagementCapabilitiesAsString(index:integer):string;
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
function TPointingDeviceProperties.GetAllStatusInfoAsString(index:integer):string;
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


// Obtener n�m. de elementos de la propiedad como string
function TPointingDeviceProperties.GetAllAvailabilityCount:integer;
begin
  Result := 21
end;

// Obtener n�m. de elementos de la propiedad como string
function TPointingDeviceProperties.GetAllConfigManagerErrorCodeCount:integer;
begin
  Result := 32
end;

// Obtener n�m. de elementos de la propiedad como string
function TPointingDeviceProperties.GetAllDeviceInterfaceCount:integer;
begin
  Result := 11
end;

// Obtener n�m. de elementos de la propiedad como string
function TPointingDeviceProperties.GetAllHandednessCount:integer;
begin
  Result := 4
end;

// Obtener n�m. de elementos de la propiedad como string
function TPointingDeviceProperties.GetAllPointingTypeCount:integer;
begin
  Result := 9
end;

// Obtener n�m. de elementos de la propiedad como string
function TPointingDeviceProperties.GetAllPowerManagementCapabilitiesCount:integer;
begin
  Result := 8
end;

// Obtener n�m. de elementos de la propiedad como string
function TPointingDeviceProperties.GetAllStatusInfoCount:integer;
begin
  Result := 5
end;


end.
