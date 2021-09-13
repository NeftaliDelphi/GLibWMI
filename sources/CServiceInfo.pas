{
TServiceInfo Component Version 3.1 - Suite GLibWMI
Copyright (©) 2020,  by Germán Estévez (Neftalí)

La clase Win32_Service representa un servicio en un sistema Win32. Un aplicación de servicio cumple las 
reglas de la interfaz del Administrador de control de servicios (SCM, Service Control Manager) y un usuario 
la puede iniciar automáticamente al arrancar el sistema a través del programa Servicios del Panel de 
control o mediante una aplicación que utilice las funciones de servicio de la API de Win32. Los servicios 
se pueden ejecutar aunque ningún usuario haya iniciado sesión en el sistema.


Utilización/Usage:
(ES) Basta con "soltar" el componente y activarlo.
(EN) Place the component in the form and active it.

MSDN Info:
https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-service

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
unit CServiceInfo;

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
  TServiceProperties = class(TPersistent)
  private
    {%PrivateClassVars PropertiesClass%}
    FAcceptPause:boolean;
    FAcceptStop:boolean;
    FCaption:string;
    FCheckPoint:integer;
    FCreationClassName:string;
    FDelayedAutoStart:boolean;
    FDescription:string;
    FDesktopInteract:boolean;
    FDisplayName:string;
    FErrorControl:string;
    FExitCode:integer;
    FInstallDate:TDatetime;
    FName:string;
    FPathName:string;
    FProcessId:integer;
    FServiceSpecificExitCode:integer;
    FServiceType:string;
    FStarted:boolean;
    FStartMode:string;
    FStartName:string;
    FState:string;
    FStatus:string;
    FSystemCreationClassName:string;
    FSystemName:string;
    FTagId:integer;
    FWaitHint:integer;

  private
    {%PrivateGetMethods PropertiesClass%}

  public
    {%PublicGetMethods PropertiesClass%}
    // Obtener la propiedad <ErrorControl> como string
    function GetAllErrorControlAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <ErrorControl>
    function GetAllErrorControlCount:integer;
    // Obtener la propiedad <ServiceType> como string
    function GetAllServiceTypeAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <ServiceType>
    function GetAllServiceTypeCount:integer;
    // Obtener la propiedad <StartMode> como string
    function GetAllStartModeAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <StartMode>
    function GetAllStartModeCount:integer;
    // Obtener la propiedad <State> como string
    function GetAllStateAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <State>
    function GetAllStateCount:integer;

    {%PublicArrayMethods PropertiesClass%}

  published
    {%PublishedProperties PropertiesClass%}
    /// <summary>
    ///  La propiedad AcceptPause indica si se puede pausar el servicio.
    ///  Valores: TRUE o FALSE. El valor TRUE 
    ///  indica que se puede pausar el servicio.
    /// </summary>
    property AcceptPause:boolean read FAcceptPause write FAcceptPause stored False;
    /// <summary>
    ///  La propiedad AcceptStop indica si se puede detener el servicio.
    ///  Valores: TRUE o FALSE. El valor TRUE 
    ///  indica que se puede detener el servicio.
    /// </summary>
    property AcceptStop:boolean read FAcceptStop write FAcceptStop stored False;
    /// <summary>
    ///  La propiedad AcceptStop indica si se puede detener el servicio.
    ///  Valores: TRUE o FALSE. El valor TRUE 
    ///  indica que se puede detener el servicio.
    /// </summary>
    property Caption:string read FCaption write FCaption stored False;
    /// <summary>
    ///  La propiedad CheckPoint especifica un valor que el servicio incrementa periódicamente para informar de 
    ///  su progreso durante una operación de inicio, detención, pausa o continuación larga. Por ejemplo, el servicio 
    ///  debe incrementar este valor a medida que complete cada paso de su inicialización. El programa de interfaz 
    ///  de usuario que llamó a la operación en el servicio utiliza este valor para realizar el seguimiento del 
    ///  progreso del servicio durante una operación larga. Este valor no es válido y debe ser cero cuando el 
    ///  servicio no tiene una operación de inicio, detención, pausa o continuación pendiente.
    /// </summary>
    property CheckPoint:integer read FCheckPoint write FCheckPoint stored False;
    /// <summary>
    ///  CreationClassName indica el nombre de la clase o subclase que se usa en la creación de una instancia. 
    ///  Cuando se usa con las demás propiedades clave de esta clase, esta propiedad permite que se identifiquen 
    ///  de manera única todas las instancias de esta clase y sus subclases.
    /// </summary>
    property CreationClassName:string read FCreationClassName write FCreationClassName stored False;
    /// <summary>
    ///  La propiedad DelayedAutoStart especifica si el servicio se inicia una vez iniciados otros servicios de 
    ///  inicio automático más un  retraso breve. 
    /// </summary>
    property DelayedAutoStart:boolean read FDelayedAutoStart write FDelayedAutoStart stored False;
    /// <summary>
    ///  La propiedad DelayedAutoStart especifica si el servicio se inicia una vez iniciados otros servicios de 
    ///  inicio automático más un  retraso breve. 
    /// </summary>
    property Description:string read FDescription write FDescription stored False;
    /// <summary>
    ///  La propiedad DesktopInteract indica si el servicio puede comunicarse con ventanas o crearlas en el escritorio.
    ///  Valores: 
    ///  TRUE o FALSE. El valor TRUE indica que el servicio puede comunicarse con ventanas o crearlas en el e
    ///  scritorio.
    /// </summary>
    property DesktopInteract:boolean read FDesktopInteract write FDesktopInteract stored False;
    /// <summary>
    ///  La propiedad DisplayName indica el nombre para mostrar del servicio. Esta cadena tiene una longitud máxima 
    ///  de 256 caracteres. El nombre conserva el modelo de mayúsculas y minúsculas en el Administrador de control 
    ///  de servicios. En las comparaciones de DisplayName no se tiene en cuenta la distinción entre mayúsculas 
    ///  y minúsculas. 
    ///  Restricciones: acepta el mismo valor que la propiedad Name.
    ///  Ejemplo: Endisco
    /// </summary>
    property DisplayName:string read FDisplayName write FDisplayName stored False;
    /// <summary>
    ///  Si este servicio no puede iniciarse durante el inicio, la propiedad ErrorControl especifica la gravedad 
    ///  de este error. El valor indica la acción emprendida por el programa de inicio si ocurre un error. El 
    ///  equipo registra todos los errores y no notifica al usuario los errores "Omitir". Los errores "Normal" 
    ///  se notifican al usuario. Los errores "Grave" hacen que el sistema se reinicie con la última configuración 
    ///  válida conocida. Finalmente, los errores "Crítico" provocan que se intente reiniciar el sistema con una 
    ///  configuración válida.
    /// </summary>
    property ErrorControl:string read FErrorControl write FErrorControl stored False;
    /// <summary>
    ///  La propiedad ExitCode especifica un código de error win32 que define los problemas encontrados al iniciar 
    ///  o detener el servicio. Esta propiedad tiene el valor ERROR_SERVICE_SPECIFIC_ERROR (1066) cuando el error 
    ///  es único del servicio representado por esta clase y la información acerca del error está disponible en 
    ///  el miembro ServiceSpecificExitCode. El servicio asigna el valor NO_ERROR al ejecutarse y, de nuevo, tras 
    ///  la terminación normal.
    /// </summary>
    property ExitCode:integer read FExitCode write FExitCode stored False;
    /// <summary>
    ///  La propiedad ExitCode especifica un código de error win32 que define los problemas encontrados al iniciar 
    ///  o detener el servicio. Esta propiedad tiene el valor ERROR_SERVICE_SPECIFIC_ERROR (1066) cuando el error 
    ///  es único del servicio representado por esta clase y la información acerca del error está disponible en 
    ///  el miembro ServiceSpecificExitCode. El servicio asigna el valor NO_ERROR al ejecutarse y, de nuevo, tras 
    ///  la terminación normal.
    /// </summary>
    property InstallDate:TDatetime read FInstallDate write FInstallDate stored False;
    /// <summary>
    ///  La propiedad Name identifica de forma única el servicio y ofrece una indicación de la funcionalidad que 
    ///  se administra. Esta funcionalidad se describe con mayor detalle en la propiedad Description del objeto. 
    /// </summary>
    property Name:string read FName write FName stored False;
    /// <summary>
    ///  La propiedad PathName contiene la ruta de acceso completa del archivo binario del servicio que lo implementa.
    ///  Ejemplo: 
    ///  \SystemRoot\System32\drivers\afd.sys
    /// </summary>
    property PathName:string read FPathName write FPathName stored False;
    /// <summary>
    ///  La propiedad ProcessId especifica el identificador de proceso del servicio.
    ///  Ejemplo: 324
    /// </summary>
    property ProcessId:integer read FProcessId write FProcessId stored False;
    /// <summary>
    ///  La propiedad ServiceSpecificExitCode especifica un código de error específico del servicio para los errores 
    ///  que ocurren mientras éste se está iniciando o deteniendo. Los códigos de salida están definidos por el 
    ///  servicio representado por esta clase. Este valor sólo se establece cuando el valor de ExitCodeproperty 
    ///  es ERROR_SERVICE_SPECIFIC_ERROR, 1066.
    /// </summary>
    property ServiceSpecificExitCode:integer read FServiceSpecificExitCode write FServiceSpecificExitCode stored False;
    /// <summary>
    ///  La propiedad ServiceType suministra el tipo de servicio proporcionado para los procesos que realizan 
    ///  la llamada.
    /// </summary>
    property ServiceType:string read FServiceType write FServiceType stored False;
    /// <summary>
    ///  Started es una booleano que indica si el servicio se inició (TRUE), o se terminó (FALSE).
    /// </summary>
    property Started:boolean read FStarted write FStarted stored False;
    /// <summary>
    ///  La propiedad StartMode pasa el modo de inicio del servicio de base Win32. "Arranque" especifica un controlador 
    ///  de dispositivo iniciado por el cargador del sistema operativo. Este valor sólo es válido para servicios 
    ///  de controladores. "Sistema" especifica un controlador de dispositivo iniciado por la función IoInitSystem. 
    ///  Este valor sólo es válido para servicios de controladores. "Automático" especifica un servicio que será 
    ///  iniciado automáticamente por el administrador de control de servicios durante el inicio del sistema. 
    ///  "Manual" especifica un servicio que será iniciado por el administrador de control de servicios cuando 
    ///  un proceso llame a la función StartService. "Deshabilitado" especifica un servicio que ya no se puede 
    ///  iniciar.
    /// </summary>
    property StartMode:string read FStartMode write FStartMode stored False;
    /// <summary>
    ///  La propiedad StartName indica el nombre de la cuenta en la que se ejecuta el servicio. Dependiendo del 
    ///  tipo de servicio, el nombre de la cuenta puede tener el formato "NombreDominio\NombreUsuario". El proceso 
    ///  del servicio se registrará con uno de estos dos formatos cuando se ejecute. Si la cuenta pertenece al 
    ///  dominio integrado, se puede especificar ".\NombreUsuario". Si se especifica NULL, el servicio se conectará 
    ///  con la cuenta SistemaLocal. Para los controladores de kernel o del sistema, StartName contiene el nombre 
    ///  del objeto controlador, es decir, \FileSystem\Rdr o \Driver\Xns, que el sistema de entrada y salida (I/O) 
    ///  usa para cargar el controlador de dispositivo. Además, si se especifica NULL, el controlador se ejecuta 
    ///  con un nombre de objeto predeterminado creado por el sistema de entrada y salida que se basa en el nombre 
    ///  del servicio.
    ///  Ejemplo: DWDOM\Admin.
    /// </summary>
    property StartName:string read FStartName write FStartName stored False;
    /// <summary>
    ///  La propiedad StartName indica el nombre de la cuenta en la que se ejecuta el servicio. Dependiendo del 
    ///  tipo de servicio, el nombre de la cuenta puede tener el formato "NombreDominio\NombreUsuario". El proceso 
    ///  del servicio se registrará con uno de estos dos formatos cuando se ejecute. Si la cuenta pertenece al 
    ///  dominio integrado, se puede especificar ".\NombreUsuario". Si se especifica NULL, el servicio se conectará 
    ///  con la cuenta SistemaLocal. Para los controladores de kernel o del sistema, StartName contiene el nombre 
    ///  del objeto controlador, es decir, \FileSystem\Rdr o \Driver\Xns, que el sistema de entrada y salida (I/O) 
    ///  usa para cargar el controlador de dispositivo. Además, si se especifica NULL, el controlador se ejecuta 
    ///  con un nombre de objeto predeterminado creado por el sistema de entrada y salida que se basa en el nombre 
    ///  del servicio.
    ///  Ejemplo: DWDOM\Admin.
    /// </summary>
    property State:string read FState write FState stored False;
    /// <summary>
    ///  La propiedad StartName indica el nombre de la cuenta en la que se ejecuta el servicio. Dependiendo del 
    ///  tipo de servicio, el nombre de la cuenta puede tener el formato "NombreDominio\NombreUsuario". El proceso 
    ///  del servicio se registrará con uno de estos dos formatos cuando se ejecute. Si la cuenta pertenece al 
    ///  dominio integrado, se puede especificar ".\NombreUsuario". Si se especifica NULL, el servicio se conectará 
    ///  con la cuenta SistemaLocal. Para los controladores de kernel o del sistema, StartName contiene el nombre 
    ///  del objeto controlador, es decir, \FileSystem\Rdr o \Driver\Xns, que el sistema de entrada y salida (I/O) 
    ///  usa para cargar el controlador de dispositivo. Además, si se especifica NULL, el controlador se ejecuta 
    ///  con un nombre de objeto predeterminado creado por el sistema de entrada y salida que se basa en el nombre 
    ///  del servicio.
    ///  Ejemplo: DWDOM\Admin.
    /// </summary>
    property Status:string read FStatus write FStatus stored False;
    /// <summary>
    ///  La propiedad StartName indica el nombre de la cuenta en la que se ejecuta el servicio. Dependiendo del 
    ///  tipo de servicio, el nombre de la cuenta puede tener el formato "NombreDominio\NombreUsuario". El proceso 
    ///  del servicio se registrará con uno de estos dos formatos cuando se ejecute. Si la cuenta pertenece al 
    ///  dominio integrado, se puede especificar ".\NombreUsuario". Si se especifica NULL, el servicio se conectará 
    ///  con la cuenta SistemaLocal. Para los controladores de kernel o del sistema, StartName contiene el nombre 
    ///  del objeto controlador, es decir, \FileSystem\Rdr o \Driver\Xns, que el sistema de entrada y salida (I/O) 
    ///  usa para cargar el controlador de dispositivo. Además, si se especifica NULL, el controlador se ejecuta 
    ///  con un nombre de objeto predeterminado creado por el sistema de entrada y salida que se basa en el nombre 
    ///  del servicio.
    ///  Ejemplo: DWDOM\Admin.
    /// </summary>
    property SystemCreationClassName:string read FSystemCreationClassName write FSystemCreationClassName stored False;
    /// <summary>
    ///  La propiedad StartName indica el nombre de la cuenta en la que se ejecuta el servicio. Dependiendo del 
    ///  tipo de servicio, el nombre de la cuenta puede tener el formato "NombreDominio\NombreUsuario". El proceso 
    ///  del servicio se registrará con uno de estos dos formatos cuando se ejecute. Si la cuenta pertenece al 
    ///  dominio integrado, se puede especificar ".\NombreUsuario". Si se especifica NULL, el servicio se conectará 
    ///  con la cuenta SistemaLocal. Para los controladores de kernel o del sistema, StartName contiene el nombre 
    ///  del objeto controlador, es decir, \FileSystem\Rdr o \Driver\Xns, que el sistema de entrada y salida (I/O) 
    ///  usa para cargar el controlador de dispositivo. Además, si se especifica NULL, el controlador se ejecuta 
    ///  con un nombre de objeto predeterminado creado por el sistema de entrada y salida que se basa en el nombre 
    ///  del servicio.
    ///  Ejemplo: DWDOM\Admin.
    /// </summary>
    property SystemName:string read FSystemName write FSystemName stored False;
    /// <summary>
    ///  La propiedad TagId especifica un valor de etiqueta único para este servicio en el grupo. El valor 0 indica 
    ///  que no se ha asignado una etiqueta al servicio. Se puede usar una etiqueta para ordenar el inicio del 
    ///  servicio dentro de un grupo de órdenes de carga mediante la especificación de un vector de orden de carga 
    ///  que se encuentra en la clave HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\GroupOrderList del Registro. 
    ///  Las etiquetas sólo se evalúan para que el controlador de kernel y el controlador del sistema de archivos 
    ///  inicien servicios de tipo cuyos modos de inicio son "Arranque" o "Sistema".
    /// </summary>
    property TagId:integer read FTagId write FTagId stored False;
    /// <summary>
    ///  La propiedad WaitHint especifica el tiempo estimado requerido (en milisegundos) para una operación de 
    ///  inicio, detención, pausa o continuación pendiente. Una vez transcurrido el período de tiempo especificado, 
    ///  el servicio realiza su siguiente llamada a la función SetServiceStatus con el valor CheckPoint incrementado 
    ///  o un cambio en Estado actual. Si transcurre el período de tiempo especificado por WaitHint y CheckPoint 
    ///  no se incrementa, o el Estado actual no ha cambiado, el administrador de control de servicios o el programa 
    ///  de control del servicio supone que se ha producido un error.
    /// </summary>
    property WaitHint:integer read FWaitHint write FWaitHint stored False;
  end;

  {%InterfaceClass WMIClass%}
  /// <summary>
  ///  La clase Win32_Service representa un servicio en un sistema Win32. Un aplicación de servicio cumple las 
  ///  reglas de la interfaz del Administrador de control de servicios (SCM, Service Control Manager) y un usuario 
  ///  la puede iniciar automáticamente al arrancar el sistema a través del programa Servicios del Panel de 
  ///  control o mediante una aplicación que utilice las funciones de servicio de la API de Win32. Los servicios 
  ///  se pueden ejecutar aunque ningún usuario haya iniciado sesión en el sistema.
  /// </summary>
  TServiceInfo = class(TWMIBase)
  private
    FServiceProperties: TServiceProperties;
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
    ///  El método StartService intenta reemplazar el servicio en su estado de inicio. Devuelve uno o más de los 
    ///  siguientes valores enteros: 
    ///  0 - Se aceptó la solicitud.
    ///  1 - La solicitud no es compatible.
    ///  2 - El usuario 
    ///  no tenía el acceso necesario.
    ///  3 - No se puede detener el servicio porque otros servicios que se están 
    ///  ejecutando dependen de él.
    ///  4 - El código de control solicitado no es válido o el servicio no lo puede 
    ///  aceptar.
    ///  5 - No se puede enviar al servicio el código de control solicitado porque el estado del servicio 
    ///  (Win32_BaseService:State) es igual a 0, 1, ó 2.
    ///  6 - No se ha iniciado el servicio.
    ///  7 - El servicio no 
    ///  contestó a la solicitud de inicio en un tiempo adecuado.
    ///  8 - Error desconocido al iniciar el servicio.
    ///  9 
    ///  - No se encontró la ruta del directorio al servicio ejecutable.
    ///  10 - El servicio ya se está ejecutando.
    ///  11 
    ///  - La base de datos para agregar un servicio nuevo está bloqueada.
    ///  12 - Se ha quitado del sistema una 
    ///  dependencia con la que contaba este servicio.
    ///  13 - El servicio no pudo encontrar el servicio necesario 
    ///  desde un servicio dependiente.
    ///  14 - Se deshabilitó el servicio desde el sistema.
    ///  15 - El servicio no 
    ///  tiene la autenticación correcta para ejecutarse en el sistema.
    ///  16 - Se está quitando este servicio del 
    ///  sistema.
    ///  17 - No hay subproceso de ejecución para el servicio.
    ///  18 - Hay dependencias circulares al iniciar 
    ///  el servicio.
    ///  19 - Hay un servicio ejecutándose con el mismo nombre.
    ///  20 - Hay caracteres no válidos en 
    ///  el nombre del servicio.
    ///  21 - Se pasaron parámetros no válidos al servicio.
    ///  22 - La cuenta bajo la que 
    ///  se debería de ejecutar este servicio no es válida o no tiene los permisos necesarios para ejecutar el 
    ///  servicio.
    ///  23 - El servicio existe en la base de datos de los servicios disponibles desde el sistema.
    ///  24 
    ///  - El servicio está actualmente detenido en el sistema.
    ///  Otros - Para obtener información sobre otros valores 
    ///  enteros distintos de los que se muestran en la lista anterior, consulte la documentación de códigos de 
    ///  error de win32.
    /// </summary>
    function StartService(AInstanceProp:string; AInstanceValue:Variant):integer;
    /// <summary>
    ///  El método StopService pone al servicio en estado de detención. Devuelve un valor entero si el servicio 
    ///  se detiene correctamente, 1 si la solicitud no es compatible y otro número para indicar un error. Devuelve 
    ///  uno de los siguientes valores enteros:
    ///  0 - Se aceptó la solicitud.
    ///  1 - La solicitud no es compatible.
    ///  2 
    ///  - El usuario no tenía el acceso necesario.
    ///  3 - No se puede detener el servicio porque otros servicios 
    ///  que se están ejecutando dependen de él.
    ///  4 - El código de control solicitado no es válido o el servicio 
    ///  no lo puede aceptar.
    ///  5 - No se puede enviar al servicio el código de control solicitado porque el estado 
    ///  del servicio (Win32_BaseService:State) es igual a 0, 1, ó 2.
    ///  6 - No se ha iniciado el servicio.
    ///  7 - El 
    ///  servicio no contestó a la solicitud de inicio en un tiempo adecuado.
    ///  8 - Error desconocido al iniciar 
    ///  el servicio.
    ///  9 - No se encontró la ruta del directorio al servicio ejecutable.
    ///  10 - El servicio ya se 
    ///  está ejecutando.
    ///  11 - La base de datos para agregar un servicio nuevo está bloqueada.
    ///  12 - Se ha quitado 
    ///  del sistema una dependencia con la que contaba este servicio.
    ///  13 - El servicio no pudo encontrar el servicio 
    ///  necesario desde un servicio dependiente.
    ///  14 - Se deshabilitó el servicio desde el sistema.
    ///  15 - El servicio 
    ///  no tiene la autenticación correcta para ejecutarse en el sistema.
    ///  16 - Se está quitando este servicio 
    ///  del sistema.
    ///  17 - No hay subproceso de ejecución para el servicio.
    ///  18 - Hay dependencias circulares al 
    ///  iniciar el servicio.
    ///  19 - Hay un servicio ejecutándose con el mismo nombre.
    ///  20 - Hay caracteres no válidos 
    ///  en el nombre del servicio.
    ///  21 - Se pasaron parámetros no válidos al servicio.
    ///  22 - La cuenta bajo la 
    ///  que se debería de ejecutar este servicio no es válida o no tiene los permisos necesarios para ejecutar 
    ///  el servicio.
    ///  23 - El servicio existe en la base de datos de los servicios disponibles desde el sistema.
    ///  24 
    ///  - El servicio está actualmente detenido en el sistema.
    ///  Otros - Para obtener información sobre otros valores 
    ///  enteros distintos de los que se muestran en la lista anterior, consulte la documentación de códigos de 
    ///  error de win32.
    /// </summary>
    function StopService(AInstanceProp:string; AInstanceValue:Variant):integer;
    /// <summary>
    ///  El método PauseService intenta poner el servicio en estado de pausa. Devuelve un valor entero de 0 si 
    ///  se acepta la solicitud de PauseService, 1 si la solicitud no es compatible y otro número para indicar 
    ///  un error. Devuelve uno de los siguientes valores enteros:
    ///  0 - Se aceptó la solicitud.
    ///  1 - La solicitud 
    ///  no es compatible.
    ///  2 - El usuario no tenía el acceso necesario.
    ///  3 - No se puede detener el servicio porque 
    ///  otros servicios que se están ejecutando dependen de él.
    ///  4 - El código de control solicitado no es válido 
    ///  o el servicio no lo puede aceptar.
    ///  5 - No se puede enviar al servicio el código de control solicitado 
    ///  porque el estado del servicio (Win32_BaseService:State) es igual a 0, 1, ó 2.
    ///  6 - No se ha iniciado el 
    ///  servicio.
    ///  7 - El servicio no contestó a la solicitud de inicio en un tiempo adecuado.
    ///  8 - Error desconocido 
    ///  al iniciar el servicio.
    ///  9 - No se encontró la ruta del directorio al servicio ejecutable.
    ///  10 - El servicio 
    ///  ya se está ejecutando.
    ///  11 - La base de datos para agregar un servicio nuevo está bloqueada.
    ///  12 - Se ha 
    ///  quitado del sistema una dependencia con la que contaba este servicio.
    ///  13 - El servicio no pudo encontrar 
    ///  el servicio necesario desde un servicio dependiente.
    ///  14 - Se deshabilitó el servicio desde el sistema.
    ///  15 
    ///  - El servicio no tiene la autenticación correcta para ejecutarse en el sistema.
    ///  16 - Se está quitando 
    ///  este servicio del sistema.
    ///  17 - No hay subproceso de ejecución para el servicio.
    ///  18 - Hay dependencias 
    ///  circulares al iniciar el servicio.
    ///  19 - Hay un servicio ejecutándose con el mismo nombre.
    ///  20 - Hay caracteres 
    ///  no válidos en el nombre del servicio.
    ///  21 - Se pasaron parámetros no válidos al servicio.
    ///  22 - La cuenta 
    ///  bajo la que se debería de ejecutar este servicio no es válida o no tiene los permisos necesarios para 
    ///  ejecutar el servicio.
    ///  23 - El servicio existe en la base de datos de los servicios disponibles desde 
    ///  el sistema.
    ///  24 - El servicio está actualmente detenido en el sistema.
    ///  Otros - Para obtener información 
    ///  sobre otros valores enteros distintos de los que se muestran en la lista anterior, consulte la documentación 
    ///  de códigos de error de win32.
    /// </summary>
    function PauseService(AInstanceProp:string; AInstanceValue:Variant):integer;
    /// <summary>
    ///  El método ResumeService intenta poner el servicio en el estado de reanudación. Devuelve uno de los siguientes 
    ///  valores enteros:
    ///  0 - Se aceptó la solicitud.
    ///  1 - La solicitud no es compatible.
    ///  2 - El usuario no tenía 
    ///  el acceso necesario.
    ///  3 - No se puede detener el servicio porque otros servicios que se están ejecutando 
    ///  dependen de él.
    ///  4 - El código de control solicitado no es válido o el servicio no lo puede aceptar.
    ///  5 
    ///  - No se puede enviar al servicio el código de control solicitado porque el estado del servicio (Win32_BaseService:State) 
    ///  es igual a 0, 1, ó 2.
    ///  6 - No se ha iniciado el servicio.
    ///  7 - El servicio no contestó a la solicitud de 
    ///  inicio en un tiempo adecuado.
    ///  8 - Error desconocido al iniciar el servicio.
    ///  9 - No se encontró la ruta 
    ///  del directorio al servicio ejecutable.
    ///  10 - El servicio ya se está ejecutando.
    ///  11 - La base de datos 
    ///  para agregar un servicio nuevo está bloqueada.
    ///  12 - Se ha quitado del sistema una dependencia con la 
    ///  que contaba este servicio.
    ///  13 - El servicio no pudo encontrar el servicio necesario desde un servicio 
    ///  dependiente.
    ///  14 - Se deshabilitó el servicio desde el sistema.
    ///  15 - El servicio no tiene la autenticación 
    ///  correcta para ejecutarse en el sistema.
    ///  16 - Se está quitando este servicio del sistema.
    ///  17 - No hay 
    ///  subproceso de ejecución para el servicio.
    ///  18 - Hay dependencias circulares al iniciar el servicio.
    ///  19 
    ///  - Hay un servicio ejecutándose con el mismo nombre.
    ///  20 - Hay caracteres no válidos en el nombre del servicio.
    ///  21 
    ///  - Se pasaron parámetros no válidos al servicio.
    ///  22 - La cuenta bajo la que se debería de ejecutar este 
    ///  servicio no es válida o no tiene los permisos necesarios para ejecutar el servicio.
    ///  23 - El servicio 
    ///  existe en la base de datos de los servicios disponibles desde el sistema.
    ///  24 - El servicio está actualmente 
    ///  detenido en el sistema.
    ///  Otros - Para obtener información sobre otros valores enteros distintos de los 
    ///  que se muestran en la lista anterior, consulte la documentación de códigos de error de win32.
    /// </summary>
    function ResumeService(AInstanceProp:string; AInstanceValue:Variant):integer;
    /// <summary>
    ///  El método InterrogateService solicita que el servicio actualice su estado al administrador de servicios. 
    ///  Devuelve uno de los siguientes valores enteros:
    ///  0 - Se aceptó la solicitud.
    ///  1 - La solicitud no es compatible.
    ///  2 
    ///  - El usuario no tenía el acceso necesario.
    ///  3 - No se puede detener el servicio porque otros servicios 
    ///  que se están ejecutando dependen de él.
    ///  4 - El código de control solicitado no es válido o el servicio 
    ///  no lo puede aceptar.
    ///  5 - No se puede enviar al servicio el código de control solicitado porque el estado 
    ///  del servicio (Win32_BaseService:State) es igual a 0, 1, ó 2.
    ///  6 - No se ha iniciado el servicio.
    ///  7 - El 
    ///  servicio no contestó a la solicitud de inicio en un tiempo adecuado.
    ///  8 - Error desconocido al iniciar 
    ///  el servicio.
    ///  9 - No se encontró la ruta del directorio al servicio ejecutable.
    ///  10 - El servicio ya se 
    ///  está ejecutando.
    ///  11 - La base de datos para agregar un servicio nuevo está bloqueada.
    ///  12 - Se ha quitado 
    ///  del sistema una dependencia con la que contaba este servicio.
    ///  13 - El servicio no pudo encontrar el servicio 
    ///  necesario desde un servicio dependiente.
    ///  14 - Se deshabilitó el servicio desde el sistema.
    ///  15 - El servicio 
    ///  no tiene la autenticación correcta para ejecutarse en el sistema.
    ///  16 - Se está quitando este servicio 
    ///  del sistema.
    ///  17 - No hay subproceso de ejecución para el servicio.
    ///  18 - Hay dependencias circulares al 
    ///  iniciar el servicio.
    ///  19 - Hay un servicio ejecutándose con el mismo nombre.
    ///  20 - Hay caracteres no válidos 
    ///  en el nombre del servicio.
    ///  21 - Se pasaron parámetros no válidos al servicio.
    ///  22 - La cuenta bajo la 
    ///  que se debería de ejecutar este servicio no es válida o no tiene los permisos necesarios para ejecutar 
    ///  el servicio.
    ///  23 - El servicio existe en la base de datos de los servicios disponibles desde el sistema.
    ///  24 
    ///  - El servicio está actualmente detenido en el sistema.
    ///  Otros - Para obtener información sobre otros valores 
    ///  enteros distintos de los que se muestran en la lista anterior, consulte la documentación de códigos de 
    ///  error de win32.
    /// </summary>
    function InterrogateService(AInstanceProp:string; AInstanceValue:Variant):integer;
    /// <summary>
    ///  El método ChangeStartMode modifica el modo de inicio (StartMode) de un servicio. Devuelve uno de los 
    ///  siguientes valores enteros:
    ///  0 - Se aceptó la solicitud.
    ///  1 - La solicitud no es compatible.
    ///  2 - El usuario 
    ///  no tenía el acceso necesario.
    ///  3 - No se puede detener el servicio porque otros servicios que se están 
    ///  ejecutando dependen de él.
    ///  4 - El código de control solicitado no es válido o el servicio no lo puede 
    ///  aceptar.
    ///  5 - No se puede enviar al servicio el código de control solicitado porque el estado del servicio 
    ///  (Win32_BaseService:State) es igual a 0, 1, ó 2.
    ///  6 - No se ha iniciado el servicio.
    ///  7 - El servicio no 
    ///  contestó a la solicitud de inicio en un tiempo adecuado.
    ///  8 - Error desconocido al iniciar el servicio.
    ///  9 
    ///  - No se encontró la ruta del directorio al servicio ejecutable.
    ///  10 - El servicio ya se está ejecutando.
    ///  11 
    ///  - La base de datos para agregar un servicio nuevo está bloqueada.
    ///  12 - Se ha quitado del sistema una 
    ///  dependencia con la que contaba este servicio.
    ///  13 - El servicio no pudo encontrar el servicio necesario 
    ///  desde un servicio dependiente.
    ///  14 - Se deshabilitó el servicio desde el sistema.
    ///  15 - El servicio no 
    ///  tiene la autenticación correcta para ejecutarse en el sistema.
    ///  16 - Se está quitando este servicio del 
    ///  sistema.
    ///  17 - No hay subproceso de ejecución para el servicio.
    ///  18 - Hay dependencias circulares al iniciar 
    ///  el servicio.
    ///  19 - Hay un servicio ejecutándose con el mismo nombre.
    ///  20 - Hay caracteres no válidos en 
    ///  el nombre del servicio.
    ///  21 - Se pasaron parámetros no válidos al servicio.
    ///  22 - La cuenta bajo la que 
    ///  se debería de ejecutar este servicio no es válida o no tiene los permisos necesarios para ejecutar el 
    ///  servicio.
    ///  23 - El servicio existe en la base de datos de los servicios disponibles desde el sistema.
    ///  24 
    ///  - El servicio está actualmente detenido en el sistema.
    ///  Otros - Para obtener información sobre otros valores 
    ///  enteros distintos de los que se muestran en la lista anterior, consulte la documentación de códigos de 
    ///  error de win32.
    /// <param name="ChangeStartMode"> string -  </param>
    /// </summary>
    function ChangeStartMode(AInstanceProp:string; AInstanceValue:Variant;
      aStartMode:string):integer;
  published
    {%InterfacePublishedPart WMIClass%}
    // propiedades de la Service
    property ServiceProperties:TServiceProperties read   FServiceProperties write FServiceProperties;
  end;


// Constantes para la propiedad ErrorControl
const 
  ENUM_STRING_ERRORCONTROL_00 = 'Omitir';
  ENUM_STRING_ERRORCONTROL_01 = 'Normal';
  ENUM_STRING_ERRORCONTROL_02 = 'Grave';
  ENUM_STRING_ERRORCONTROL_03 = 'Crítico';
  ENUM_STRING_ERRORCONTROL_04 = 'Desconocido';

// Constantes para la propiedad ServiceType
const 
  ENUM_STRING_SERVICETYPE_00 = 'Controlador kernel';
  ENUM_STRING_SERVICETYPE_01 = 'Controlador del sistema de archivos';
  ENUM_STRING_SERVICETYPE_02 = 'Adaptador';
  ENUM_STRING_SERVICETYPE_03 = 'Controlador de reconocimiento';
  ENUM_STRING_SERVICETYPE_04 = 'Proceso propio';
  ENUM_STRING_SERVICETYPE_05 = 'Proceso de recurso compartido';
  ENUM_STRING_SERVICETYPE_06 = 'Proceso interactivo';

// Constantes para la propiedad StartMode
const 
  ENUM_STRING_STARTMODE_00 = 'Arranque';
  ENUM_STRING_STARTMODE_01 = 'Sistema';
  ENUM_STRING_STARTMODE_02 = 'Automático';
  ENUM_STRING_STARTMODE_03 = 'Manual';
  ENUM_STRING_STARTMODE_04 = 'Deshabilitado';

// Constantes para la propiedad State
const 
  ENUM_STRING_STATE_00 = 'Detenido';
  ENUM_STRING_STATE_01 = 'Inicio pendiente';
  ENUM_STRING_STATE_02 = 'Detención pendiente';
  ENUM_STRING_STATE_03 = 'Activo';
  ENUM_STRING_STATE_04 = 'Continuación pendiente';
  ENUM_STRING_STATE_05 = 'Pausar el pendiente';
  ENUM_STRING_STATE_06 = 'Pausado';
  ENUM_STRING_STATE_07 = 'Desconocido';

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
procedure TServiceInfo.ClearProps;
begin
  Self.ServiceProperties.FAcceptPause := False;
  Self.ServiceProperties.FAcceptStop := False;
  Self.ServiceProperties.FCaption := EmptyStr;
  Self.ServiceProperties.FCheckPoint := 0;
  Self.ServiceProperties.FCreationClassName := EmptyStr;
  Self.ServiceProperties.FDelayedAutoStart := False;
  Self.ServiceProperties.FDescription := EmptyStr;
  Self.ServiceProperties.FDesktopInteract := False;
  Self.ServiceProperties.FDisplayName := EmptyStr;
  Self.ServiceProperties.FErrorControl := EmptyStr;
  Self.ServiceProperties.FExitCode := 0;
  Self.ServiceProperties.FInstallDate := 0;
  Self.ServiceProperties.FName := EmptyStr;
  Self.ServiceProperties.FPathName := EmptyStr;
  Self.ServiceProperties.FProcessId := 0;
  Self.ServiceProperties.FServiceSpecificExitCode := 0;
  Self.ServiceProperties.FServiceType := EmptyStr;
  Self.ServiceProperties.FStarted := False;
  Self.ServiceProperties.FStartMode := EmptyStr;
  Self.ServiceProperties.FStartName := EmptyStr;
  Self.ServiceProperties.FState := EmptyStr;
  Self.ServiceProperties.FStatus := EmptyStr;
  Self.ServiceProperties.FSystemCreationClassName := EmptyStr;
  Self.ServiceProperties.FSystemName := EmptyStr;
  Self.ServiceProperties.FTagId := 0;
  Self.ServiceProperties.FWaitHint := 0;
end;

//: Constructor del componente
constructor TServiceInfo.Create(AOwner: TComponent);
begin
  inherited;
  Self.FServiceProperties := TServiceProperties.Create();
  Self.MSDNHelp := 'https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-service';
end;

//: destructor del componente
destructor TServiceInfo.Destroy();
begin
  // liberar
  FreeAndNil(Self.FServiceProperties);
  inherited;
end;

//: Obtener la clase
function TServiceInfo.GetWMIClass(): string;
begin
  Result := 'Win32_Service'
end;

//: Obtener Root
function TServiceInfo.GetWMIRoot(): string;
begin
  Result := '';
end;

//: Procedmiento de activación
procedure TServiceInfo.SetActive(const Value: Boolean);
begin
  // método heredado
  inherited;
end;


//: Rellenar las propiedades del componente.
procedure TServiceInfo.FillProperties(AIndex: integer);
var
  v:     variant;
  vNull: boolean;
  vp:    TServiceProperties;
begin
  // Llamar al heredado (importante)
  inherited;
  // Rellenar propiedades...
  vp := ServiceProperties;

  GetWMIPropertyValue(Self, 'AcceptPause', v, vNull);
  vp.FAcceptPause := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'AcceptStop', v, vNull);
  vp.FAcceptStop := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'Caption', v, vNull);
  vp.FCaption := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'CheckPoint', v, vNull);
  vp.FCheckPoint := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'CreationClassName', v, vNull);
  vp.FCreationClassName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'DelayedAutoStart', v, vNull);
  vp.FDelayedAutoStart := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'Description', v, vNull);
  vp.FDescription := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'DesktopInteract', v, vNull);
  vp.FDesktopInteract := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'DisplayName', v, vNull);
  vp.FDisplayName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'ErrorControl', v, vNull);
  vp.FErrorControl := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'ExitCode', v, vNull);
  vp.FExitCode := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'InstallDate', v, vNull);
  vp.FInstallDate := VariantDateTimeValue(v, vNull);

  GetWMIPropertyValue(Self, 'Name', v, vNull);
  vp.FName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'PathName', v, vNull);
  vp.FPathName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'ProcessId', v, vNull);
  vp.FProcessId := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'ServiceSpecificExitCode', v, vNull);
  vp.FServiceSpecificExitCode := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'ServiceType', v, vNull);
  vp.FServiceType := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Started', v, vNull);
  vp.FStarted := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'StartMode', v, vNull);
  vp.FStartMode := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'StartName', v, vNull);
  vp.FStartName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'State', v, vNull);
  vp.FState := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Status', v, vNull);
  vp.FStatus := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'SystemCreationClassName', v, vNull);
  vp.FSystemCreationClassName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'SystemName', v, vNull);
  vp.FSystemName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'TagId', v, vNull);
  vp.FTagId := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'WaitHint', v, vNull);
  vp.FWaitHint := VariantIntegerValue(v, vNull);
end;


// Obtener la propiedad como string
function TServiceProperties.GetAllErrorControlAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_ERRORCONTROL_00;
    01: Result := ENUM_STRING_ERRORCONTROL_01;
    02: Result := ENUM_STRING_ERRORCONTROL_02;
    03: Result := ENUM_STRING_ERRORCONTROL_03;
    04: Result := ENUM_STRING_ERRORCONTROL_04;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TServiceProperties.GetAllServiceTypeAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_SERVICETYPE_00;
    01: Result := ENUM_STRING_SERVICETYPE_01;
    02: Result := ENUM_STRING_SERVICETYPE_02;
    03: Result := ENUM_STRING_SERVICETYPE_03;
    04: Result := ENUM_STRING_SERVICETYPE_04;
    05: Result := ENUM_STRING_SERVICETYPE_05;
    06: Result := ENUM_STRING_SERVICETYPE_06;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TServiceProperties.GetAllStartModeAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_STARTMODE_00;
    01: Result := ENUM_STRING_STARTMODE_01;
    02: Result := ENUM_STRING_STARTMODE_02;
    03: Result := ENUM_STRING_STARTMODE_03;
    04: Result := ENUM_STRING_STARTMODE_04;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TServiceProperties.GetAllStateAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_STATE_00;
    01: Result := ENUM_STRING_STATE_01;
    02: Result := ENUM_STRING_STATE_02;
    03: Result := ENUM_STRING_STATE_03;
    04: Result := ENUM_STRING_STATE_04;
    05: Result := ENUM_STRING_STATE_05;
    06: Result := ENUM_STRING_STATE_06;
    07: Result := ENUM_STRING_STATE_07;
  else
    Result := STR_EMPTY;
  end;
end;


// Obtener núm. de elementos de la propiedad como string
function TServiceProperties.GetAllErrorControlCount:integer;
begin
  Result := 5
end;

// Obtener núm. de elementos de la propiedad como string
function TServiceProperties.GetAllServiceTypeCount:integer;
begin
  Result := 7
end;

// Obtener núm. de elementos de la propiedad como string
function TServiceProperties.GetAllStartModeCount:integer;
begin
  Result := 5
end;

// Obtener núm. de elementos de la propiedad como string
function TServiceProperties.GetAllStateCount:integer;
begin
  Result := 8
end;

// Obtiene el resultado de ejecutar un método como string 
function TServiceInfo.GetErrorControlAsString(FErrorControl:integer): string; 
begin
   case FErrorControl of
     0: Result := 'Correcto';
     1: Result := 'No compatible';
     2: Result := 'Acceso denegado';
     3: Result := 'Servicios dependientes en ejecución';
     4: Result := 'Control de servicio no válido';
     5: Result := 'El servicio no puede aceptar el control';
     6: Result := 'Servicio no activo';
     7: Result := 'Tiempo de espera de solicitud de servicio';
     8: Result := 'Error desconocido';
     9: Result := 'No se ha encontrado la ruta de acceso';
    10: Result := 'Servicio ya en ejecución';
    11: Result := 'Base de datos de servicio bloqueada';
    12: Result := 'Dependencia de servicio eliminada';
    13: Result := 'Error de dependencia de servicio';
    14: Result := 'Servicio deshabilitado';
    15: Result := 'Inicio de sesión de servicio con error';
    16: Result := 'Servicio marcado para eliminación';
    17: Result := 'Servicio sin subproceso';
    18: Result := 'Estado Dependencia circular';
    19: Result := 'Estado Nombre replicado';
    20: Result := 'Estado Nombre no válido';
    21: Result := 'Estado Parámetro no válido';
    22: Result := 'Estado Cuenta de servicio no válida';
    23: Result := 'Estado El servicio existe';
    24: Result := 'Servicio ya pausado';
    25: Result := 'Otros';
    else
      Result := EmptyStr
    end;
end;

function TServiceInfo.StartService(AInstanceProp:string; AInstanceValue:Variant):integer;
var
  arr:TArrVariant;
  v:variant;
begin
  SetLength(arr, 0);
  // Ejecutar el proceso
  ExecuteClassMethod(Self, AInstanceProp, AInstanceValue,
    'StartService',
    [],
    arr,
    [],
    [],
    v);
  Result := v;
end;

function TServiceInfo.StopService(AInstanceProp:string; AInstanceValue:Variant):integer;
var
  arr:TArrVariant;
  v:variant;
begin
  SetLength(arr, 0);
  // Ejecutar el proceso
  ExecuteClassMethod(Self, AInstanceProp, AInstanceValue,
    'StopService',
    [],
    arr,
    [],
    [],
    v);
  Result := v;
end;

function TServiceInfo.PauseService(AInstanceProp:string; AInstanceValue:Variant):integer;
var
  arr:TArrVariant;
  v:variant;
begin
  SetLength(arr, 0);
  // Ejecutar el proceso
  ExecuteClassMethod(Self, AInstanceProp, AInstanceValue,
    'PauseService',
    [],
    arr,
    [],
    [],
    v);
  Result := v;
end;

function TServiceInfo.ResumeService(AInstanceProp:string; AInstanceValue:Variant):integer;
var
  arr:TArrVariant;
  v:variant;
begin
  SetLength(arr, 0);
  // Ejecutar el proceso
  ExecuteClassMethod(Self, AInstanceProp, AInstanceValue,
    'ResumeService',
    [],
    arr,
    [],
    [],
    v);
  Result := v;
end;

function TServiceInfo.InterrogateService(AInstanceProp:string; AInstanceValue:Variant):integer;
var
  arr:TArrVariant;
  v:variant;
begin
  SetLength(arr, 0);
  // Ejecutar el proceso
  ExecuteClassMethod(Self, AInstanceProp, AInstanceValue,
    'InterrogateService',
    [],
    arr,
    [],
    [],
    v);
  Result := v;
end;

function TServiceInfo.ChangeStartMode(AInstanceProp:string; AInstanceValue:Variant;
      aStartMode:string):integer;
var
  arr:TArrVariant;
  v:variant;
begin
  SetLength(arr, 1);
  arr[0] := aStartMode;
  // Ejecutar el proceso
  ExecuteClassMethod(Self, AInstanceProp, AInstanceValue,
    'ChangeStartMode',
    ['StartMode'],
    arr,
    [ptIn],
    [wbemCIMTypeString],
    v);
  Result := v;
end;

end.
