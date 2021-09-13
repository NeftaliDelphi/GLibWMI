{
TProcessInfo Component Version 3.1 - Suite GLibWMI
Copyright (©) 2020,  by Germán Estévez (Neftalí)

La clase Win32_Process representa una secuencia de eventos en un sistema Win32. Cualquier secuencia compuesta 
por la interacción de uno o más procesadores o intérpretes, código ejecutable y un conjunto de datos 
de entrada, es un descendiente (o miembro) de esta clase.
Ejemplo: una aplicación cliente que se ejecuta 
en un sistema Win32.


Utilización/Usage:
(ES) Basta con "soltar" el componente y activarlo.
(EN) Place the component in the form and active it.

MSDN Info:
https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-process

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
unit CProcessInfo;

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
  TProcessProperties = class(TPersistent)
  private
    {%PrivateClassVars PropertiesClass%}
    FCaption:string;
    FCommandLine:string;
    FCreationClassName:string;
    FCreationDate:TDatetime;
    FCSCreationClassName:string;
    FCSName:string;
    FDescription:string;
    FExecutablePath:string;
    FExecutionState:integer;
    FHandle:string;
    FHandleCount:integer;
    FInstallDate:TDatetime;
    FKernelModeTime:int64;
    FMaximumWorkingSetSize:integer;
    FMinimumWorkingSetSize:integer;
    FName:string;
    FOSCreationClassName:string;
    FOSName:string;
    FOtherOperationCount:int64;
    FOtherTransferCount:int64;
    FPageFaults:integer;
    FPageFileUsage:integer;
    FParentProcessId:integer;
    FPeakPageFileUsage:integer;
    FPeakVirtualSize:int64;
    FPeakWorkingSetSize:integer;
    FPriority:integer;
    FPrivatePageCount:int64;
    FProcessId:integer;
    FQuotaNonPagedPoolUsage:integer;
    FQuotaPagedPoolUsage:integer;
    FQuotaPeakNonPagedPoolUsage:integer;
    FQuotaPeakPagedPoolUsage:integer;
    FReadOperationCount:int64;
    FReadTransferCount:int64;
    FSessionId:integer;
    FStatus:string;
    FTerminationDate:TDatetime;
    FThreadCount:integer;
    FUserModeTime:int64;
    FVirtualSize:int64;
    FWindowsVersion:string;
    FWorkingSetSize:int64;
    FWriteOperationCount:int64;
    FWriteTransferCount:int64;

  private
    {%PrivateGetMethods PropertiesClass%}

  public
    {%PublicGetMethods PropertiesClass%}
    // Obtener la propiedad <ExecutionState> como string
    function GetAllExecutionStateAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <ExecutionState>
    function GetAllExecutionStateCount:integer;

    {%PublicArrayMethods PropertiesClass%}

  published
    {%PublishedProperties PropertiesClass%}
    /// <summary>
    /// </summary>
    property Caption:string read FCaption write FCaption stored False;
    /// <summary>
    ///  La propiedad CommandLine especifica la línea de comandos utilizada para iniciar un proceso particular, 
    ///  si es aplicable.
    /// </summary>
    property CommandLine:string read FCommandLine write FCommandLine stored False;
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
    property CreationDate:TDatetime read FCreationDate write FCreationDate stored False;
    /// <summary>
    ///  CSCreationClassName contiene el nombre de la clase de creación del sistema de ámbito.
    /// </summary>
    property CSCreationClassName:string read FCSCreationClassName write FCSCreationClassName stored False;
    /// <summary>
    ///  CSCreationClassName contiene el nombre de la clase de creación del sistema de ámbito.
    /// </summary>
    property CSName:string read FCSName write FCSName stored False;
    /// <summary>
    ///  CSCreationClassName contiene el nombre de la clase de creación del sistema de ámbito.
    /// </summary>
    property Description:string read FDescription write FDescription stored False;
    /// <summary>
    ///  La propiedad ExecutablePath indica la ruta de acceso al archivo ejecutable del proceso.
    ///  Ejemplo: C:\
    ///  WINDOWS\EXPLORER.EXE
    /// </summary>
    property ExecutablePath:string read FExecutablePath write FExecutablePath stored False;
    /// <summary>
    ///  Indica la condición de operación actual del proceso. Los valores que se incluyen son listo (2), en ejecución 
    ///  (3), y bloqueado (4), entre otros.
    /// </summary>
    property ExecutionState:integer read FExecutionState write FExecutionState stored False;
    /// <summary>
    ///  Una cadena usada para identificar un proceso. Un id. de proceso es una clase de identificador de pro
    ///  ceso.
    /// </summary>
    property Handle:string read FHandle write FHandle stored False;
    /// <summary>
    ///  La propiedad HandleCount especifica el número total de identificadores que este proceso mantiene abiertos. 
    ///  Este número es la suma de los identificadores que mantienen abiertos los subprocesos de este proceso. 
    ///  Los identificadores se utilizan para examinar o modificar recursos del sistema. Cada identificador tiene 
    ///  una entrada en una tabla que se mantiene de forma interna. Estas entradas contienen las direcciones de 
    ///  los recursos y los medios para identificar el tipo de recurso.
    /// </summary>
    property HandleCount:integer read FHandleCount write FHandleCount stored False;
    /// <summary>
    ///  La propiedad HandleCount especifica el número total de identificadores que este proceso mantiene abiertos. 
    ///  Este número es la suma de los identificadores que mantienen abiertos los subprocesos de este proceso. 
    ///  Los identificadores se utilizan para examinar o modificar recursos del sistema. Cada identificador tiene 
    ///  una entrada en una tabla que se mantiene de forma interna. Estas entradas contienen las direcciones de 
    ///  los recursos y los medios para identificar el tipo de recurso.
    /// </summary>
    property InstallDate:TDatetime read FInstallDate write FInstallDate stored False;
    /// <summary>
    ///  Tiempo en el modo kernel expresado en 100 nanosegundos. Si esta información no está disponible, debe 
    ///  usarse el valor 0.
    /// </summary>
    property KernelModeTime:int64 read FKernelModeTime write FKernelModeTime stored False;
    /// <summary>
    ///  La propiedad MaximumWorkingSetSize indica el tamaño máximo del espacio de trabajo del proceso. El espacio 
    ///  de trabajo de un proceso es el conjunto de páginas de memoria que puede ver el proceso en la memoria 
    ///  RAM física. Estas páginas son residentes y están disponibles para que una aplicación las utilice sin 
    ///  desencadenar un error de página.
    ///  Ejemplo: 1413120.
    /// </summary>
    property MaximumWorkingSetSize:integer read FMaximumWorkingSetSize write FMaximumWorkingSetSize stored False;
    /// <summary>
    ///  La propiedad MinimumWorkingSetSize indica el tamaño mínimo del espacio de trabajo del proceso. El espacio 
    ///  de trabajo de un proceso es el conjunto de páginas de memoria que puede ver el proceso en la memoria 
    ///  RAM física. Estas páginas son residentes y están disponibles para que una aplicación las utilice sin 
    ///  desencadenar un error de página.
    ///  Ejemplo: 20480.
    /// </summary>
    property MinimumWorkingSetSize:integer read FMinimumWorkingSetSize write FMinimumWorkingSetSize stored False;
    /// <summary>
    ///  La propiedad MinimumWorkingSetSize indica el tamaño mínimo del espacio de trabajo del proceso. El espacio 
    ///  de trabajo de un proceso es el conjunto de páginas de memoria que puede ver el proceso en la memoria 
    ///  RAM física. Estas páginas son residentes y están disponibles para que una aplicación las utilice sin 
    ///  desencadenar un error de página.
    ///  Ejemplo: 20480.
    /// </summary>
    property Name:string read FName write FName stored False;
    /// <summary>
    ///  La propiedad MinimumWorkingSetSize indica el tamaño mínimo del espacio de trabajo del proceso. El espacio 
    ///  de trabajo de un proceso es el conjunto de páginas de memoria que puede ver el proceso en la memoria 
    ///  RAM física. Estas páginas son residentes y están disponibles para que una aplicación las utilice sin 
    ///  desencadenar un error de página.
    ///  Ejemplo: 20480.
    /// </summary>
    property OSCreationClassName:string read FOSCreationClassName write FOSCreationClassName stored False;
    /// <summary>
    ///  La propiedad MinimumWorkingSetSize indica el tamaño mínimo del espacio de trabajo del proceso. El espacio 
    ///  de trabajo de un proceso es el conjunto de páginas de memoria que puede ver el proceso en la memoria 
    ///  RAM física. Estas páginas son residentes y están disponibles para que una aplicación las utilice sin 
    ///  desencadenar un error de página.
    ///  Ejemplo: 20480.
    /// </summary>
    property OSName:string read FOSName write FOSName stored False;
    /// <summary>
    ///  La propiedad OtherOperationCount especifica el número de operaciones de E/S realizadas que no son operaciones 
    ///  de lectura y escritura.
    /// </summary>
    property OtherOperationCount:int64 read FOtherOperationCount write FOtherOperationCount stored False;
    /// <summary>
    ///  La propiedad OtherTransferCount especifica la cantidad de datos transferidos durante operaciones que 
    ///  no son de lectura y escritura.
    /// </summary>
    property OtherTransferCount:int64 read FOtherTransferCount write FOtherTransferCount stored False;
    /// <summary>
    ///  La propiedad PageFaults indica el número de errores de página que ha generado el proceso.
    ///  Ejemplo: 1
    ///  0
    /// </summary>
    property PageFaults:integer read FPageFaults write FPageFaults stored False;
    /// <summary>
    ///  La propiedad PageFileUsage indica el tamaño del archivo de paginación que utiliza actualmente el proceso.
    ///  Ejemplo: 
    ///  102435
    /// </summary>
    property PageFileUsage:integer read FPageFileUsage write FPageFileUsage stored False;
    /// <summary>
    ///  La propiedad ParentProcessId especifica el identificador único del proceso que creó este proceso. Los 
    ///  números de identificador de proceso se vuelven a utilizar, de forma que sólo identifican a un proceso 
    ///  durante su vigencia. Es posible que el proceso que identifica ParentProcessId haya terminado, por lo 
    ///  que es posible que ParentProcessId no haga referencia a un proceso que se ejecuta. También es posible 
    ///  que ParentProcessId se refiera incorrectamente a un proceso que vuelve a utilizar este identificador 
    ///  de proceso. Se puede utilizar la propiedad CreationDate para determinar si el proceso principal especificado 
    ///  se creó después de crear este proceso.
    /// </summary>
    property ParentProcessId:integer read FParentProcessId write FParentProcessId stored False;
    /// <summary>
    ///  La propiedad PeakPageFileUsage indica el tamaño máximo del archivo de paginación utilizado durante la 
    ///  vida del proceso.
    ///  Ejemplo: 102367
    /// </summary>
    property PeakPageFileUsage:integer read FPeakPageFileUsage write FPeakPageFileUsage stored False;
    /// <summary>
    ///  La propiedad PeakVirtualSize especifica el espacio máximo virtual que el proceso utilizó en un momento 
    ///  dado. El uso del espacio de direcciones virtuales no implica necesariamente el correspondiente uso de 
    ///  páginas de disco o de la memoria principal. Sin embargo, el espacio virtual es finito y si se utiliza 
    ///  demasiado, el proceso puede limitar su capacidad para cargar bibliotecas.
    /// </summary>
    property PeakVirtualSize:int64 read FPeakVirtualSize write FPeakVirtualSize stored False;
    /// <summary>
    ///  La propiedad PeakWorkingSetSize indica el tamaño máximo del espacio de trabajo del proceso.
    ///  Ejemplo: 
    ///  1413120
    /// </summary>
    property PeakWorkingSetSize:integer read FPeakWorkingSetSize write FPeakWorkingSetSize stored False;
    /// <summary>
    ///  La propiedad Priority indica la prioridad de programación del proceso en el sistema operativo. Cuanto 
    ///  más alto es el valor, más alta es la prioridad que recibe el proceso. Los valores de prioridad están 
    ///  en el intervalo comprendido entre 0 (la menor prioridad) y 31 (la mayor prioridad).
    ///  Ejemplo: 7.
    /// </summary>
    property Priority:integer read FPriority write FPriority stored False;
    /// <summary>
    ///  La propiedad PrivatePageCount especifica el número actual de páginas asignadas que son accesibles sólo 
    ///  para este proceso 
    /// </summary>
    property PrivatePageCount:int64 read FPrivatePageCount write FPrivatePageCount stored False;
    /// <summary>
    ///  La propiedad ProcessId contiene el identificador global de proceso que se puede utilizar para identificar 
    ///  a un proceso. El valor es válido desde la creación del proceso hasta que éste termina.
    /// </summary>
    property ProcessId:integer read FProcessId write FProcessId stored False;
    /// <summary>
    ///  La propiedad QuotaNonPagedPoolUsage indica la cuota de utilización en el proceso del bloque de memoria 
    ///  no paginada.
    ///  Ejemplo: 15
    /// </summary>
    property QuotaNonPagedPoolUsage:integer read FQuotaNonPagedPoolUsage write FQuotaNonPagedPoolUsage stored False;
    /// <summary>
    ///  La propiedad QuotaPagedPoolUsage indica la cuota de utilización en el proceso del bloque de memoria paginada.
    ///  Ejemplo: 
    ///  22
    /// </summary>
    property QuotaPagedPoolUsage:integer read FQuotaPagedPoolUsage write FQuotaPagedPoolUsage stored False;
    /// <summary>
    ///  La propiedad QuotaPeakNonPagedPoolUsage indica la cuota máxima de utilización en el proceso del bloque 
    ///  de memoria no paginada.
    ///  Ejemplo: 31
    /// </summary>
    property QuotaPeakNonPagedPoolUsage:integer read FQuotaPeakNonPagedPoolUsage write FQuotaPeakNonPagedPoolUsage stored False;
    /// <summary>
    ///  La propiedad QuotaPeakPagedPoolUsage indica la cuota máxima de utilización en el proceso del bloque de 
    ///  memoria paginada.
    ///   Ejemplo: 31
    /// </summary>
    property QuotaPeakPagedPoolUsage:integer read FQuotaPeakPagedPoolUsage write FQuotaPeakPagedPoolUsage stored False;
    /// <summary>
    ///  La propiedad ReadOperationCount especifica el número de operaciones de lectura realizadas.
    /// </summary>
    property ReadOperationCount:int64 read FReadOperationCount write FReadOperationCount stored False;
    /// <summary>
    ///  La propiedad ReadOperationCount especifica el número de operaciones de lectura realizadas.
    /// </summary>
    property ReadTransferCount:int64 read FReadTransferCount write FReadTransferCount stored False;
    /// <summary>
    ///  La propiedad SessionId especifica el identificador único que genera el sistema operativo cuando se crea 
    ///  la sesión. Una sesión abarca el período de tiempo desde que se inicia la sesión en un sistema determinado 
    ///  hasta que se cierra.
    /// </summary>
    property SessionId:integer read FSessionId write FSessionId stored False;
    /// <summary>
    ///  La propiedad SessionId especifica el identificador único que genera el sistema operativo cuando se crea 
    ///  la sesión. Una sesión abarca el período de tiempo desde que se inicia la sesión en un sistema determinado 
    ///  hasta que se cierra.
    /// </summary>
    property Status:string read FStatus write FStatus stored False;
    /// <summary>
    ///  La propiedad SessionId especifica el identificador único que genera el sistema operativo cuando se crea 
    ///  la sesión. Una sesión abarca el período de tiempo desde que se inicia la sesión en un sistema determinado 
    ///  hasta que se cierra.
    /// </summary>
    property TerminationDate:TDatetime read FTerminationDate write FTerminationDate stored False;
    /// <summary>
    ///  La propiedad ThreadCount especifica el número de subprocesos activos en este proceso. Una instrucción 
    ///  es la unidad básica de ejecución en un procesador y un subproceso es el objeto que ejecuta las instrucciones. 
    ///  Cada proceso que se ejecuta tiene al menos un subproceso. Esta propiedad sólo está dirigida a los equipos 
    ///  que ejecutan Windows NT.
    /// </summary>
    property ThreadCount:integer read FThreadCount write FThreadCount stored False;
    /// <summary>
    ///  Tiempo en el modo usuario expresado en 100 nanosegundos. Si esta información no está disponible, debe 
    ///  usarse el valor 0.
    /// </summary>
    property UserModeTime:int64 read FUserModeTime write FUserModeTime stored False;
    /// <summary>
    ///  La propiedad VirtualSize especifica tamaño actual en bytes del espacio de direcciones virtuales que utiliza 
    ///  el proceso. El uso de espacio de direcciones virtuales no implica necesariamente el correspondiente uso 
    ///  de páginas de disco o de la memoria principal. El espacio virtual es finito y si se utiliza demasiado 
    ///  el proceso puede limitar su capacidad para cargar bibliotecas.
    /// </summary>
    property VirtualSize:int64 read FVirtualSize write FVirtualSize stored False;
    /// <summary>
    ///  La propiedad WindowsVersion indica la versión de Windows en que se ejecuta el proceso.
    ///  Ejemplo: 4.0
    /// </summary>
    property WindowsVersion:string read FWindowsVersion write FWindowsVersion stored False;
    /// <summary>
    ///  La cantidad de memoria en bytes que un proceso necesita para ejecutarse eficazmente para un sistema operativo 
    ///  que usa administración de memoria basada en página. Si una cantidad de memoria es insuficiente (< tamaño 
    ///  de espacio de trabajo), ocurrirá hiperpaginación. Si no se conoce esta información, se debe escribir 
    ///  nulo o 0. Si se proporciona este dato, se podría monitorear para entender los requerimientos de memoria 
    ///  cambiante de un proceso al continuar con la ejecución.
    /// </summary>
    property WorkingSetSize:int64 read FWorkingSetSize write FWorkingSetSize stored False;
    /// <summary>
    ///  La propiedad WriteOperationCount especifica el número de operaciones de escritura realizadas.
    /// </summary>
    property WriteOperationCount:int64 read FWriteOperationCount write FWriteOperationCount stored False;
    /// <summary>
    ///  La propiedad WriteOperationCount especifica el número de operaciones de escritura realizadas.
    /// </summary>
    property WriteTransferCount:int64 read FWriteTransferCount write FWriteTransferCount stored False;
  end;

  {%InterfaceClass WMIClass%}
  /// <summary>
  ///  La clase Win32_Process representa una secuencia de eventos en un sistema Win32. Cualquier secuencia compuesta 
  ///  por la interacción de uno o más procesadores o intérpretes, código ejecutable y un conjunto de datos 
  ///  de entrada, es un descendiente (o miembro) de esta clase.
  ///  Ejemplo: una aplicación cliente que se ejecuta 
  ///  en un sistema Win32.
  /// </summary>
  TProcessInfo = class(TWMIBase)
  private
    FProcessProperties: TProcessProperties;
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
    ///  El método Crear crea un nuevo proceso. 
    ///  El método devuelve un valor entero que se puede interpretar de 
    ///  la siguiente manera: 
    ///  0 - Finalización correcta.
    ///  2 - El usuario no tiene acceso a la información solicitada.
    ///  3 
    ///  - El usuario no tiene privilegios suficientes.
    ///  8 - Error desconocido.
    ///  9 - La ruta especificada no existe.
    ///  21 
    ///  - El parámetro especificado no es válido.
    ///  El usuario no tiene privilegios adecuados. 
    ///  Otros - para otros 
    ///  valores enteros que no sean los arriba listados, 
    ///  consultar la documentación de código de error de W
    ///  in32.
    /// <param name="Create_"> string -  </param>
    /// <param name="Create_"> string -  </param>
    /// <param name="Create_"> string -  </param>
    /// </summary>
    function Create_(AInstanceProp:string; AInstanceValue:Variant;
      aCommandLine:string;
      aCurrentDirectory:string;
      aProcessStartupInformation:string;
      aProcessId:integer):integer;
    /// <summary>
    ///  El método Terminar termina un proceso y todos los subprocesos. El método devuelve un valor entero que 
    ///  se puede interpretar de la siguiente manera: 
    ///  0 - Finalización correcta.
    ///  2 - El usuario no tiene acceso 
    ///  a la información solicitada.
    ///  3 - El usuario no tiene privilegios suficientes.
    ///  8 - Error desconocido.
    ///  9 
    ///  - La ruta especificada no existe.
    ///  21 - El parámetro especificado no es válido.
    ///  Otros - para otros valores 
    ///  enteros que no sean los arriba listados, consultar la documentación de código de error de Win32.
    ///  Nota: 
    ///   el privilegio SE_DEBUG_PRIVILEGE es necesario para invocar este método
    /// <param name="Terminate"> integer -  </param>
    /// </summary>
    function Terminate(AInstanceProp:string; AInstanceValue:Variant;
      aReason:integer):integer;
    /// <summary>
    ///  El método GetOwner recupera el nombre de usuario y el nombre de dominio 
    ///  en el proceso que se está ejecutando. 
    ///  El método devuelve un valor entero que se puede interpretar de la siguiente manera: 
    ///  0 - Finalización 
    ///  correcta.
    ///  2 - El usuario no tiene acceso a la información solicitada.
    ///  3 - El usuario no tiene privilegios 
    ///  suficientes.
    ///  8 - Error desconocido.
    ///  9 - La ruta especificada no existe.
    ///  21 - El parámetro especificado 
    ///  no es válido.
    ///  Otros - para otros valores enteros que no sean los arriba listados, 
    ///  consultar la documentación 
    ///  de código de error de Win32.
    /// </summary>
    function GetOwner(AInstanceProp:string; AInstanceValue:Variant;
      aDomain:string;
      aUser:string):integer; reintroduce;
    /// <summary>
    ///  El método GetOwnerSid recupera el identificador de seguridad (SID) para el 
    ///  propietario del proceso.
    ///  El 
    ///  método devuelve un valor entero que se puede interpretar de la siguiente 
    ///  manera: 
    ///  0 - Finalización correcta.
    ///  2 
    ///  - El usuario no tiene acceso a la información solicitada.
    ///  3 - El usuario no tiene privilegios suficientes.
    ///  8 
    ///  - Error desconocido.
    ///  9 - La ruta especificada no existe.
    ///  21 - El parámetro especificado no es válido.
    ///  Otros 
    ///  - para otros valores enteros que no sean los arriba listados, 
    ///  consultar la documentación de código de 
    ///  error de Win32.
    /// </summary>
    function GetOwnerSid(AInstanceProp:string; AInstanceValue:Variant;
      aSid:string):integer;
    /// <summary>
    ///  El método SetPriority intenta cambiar la prioridad de ejecución del proceso. Para establecer la prioridad 
    ///  en Tiempo real, el llamador debe tener SeIncreaseBasePriorityPrivilege. Sin este privilegio, la prioridad 
    ///  más alta se puede establecer a su prioridad Alta.
    ///  El método devuelve un valor entero que se puede interpretar 
    ///  de la siguiente 
    ///  manera: 
    ///  0 - Finalización correcta.
    ///  2 - El usuario no tiene acceso a la información 
    ///  solicitada.
    ///  3 - El usuario no tiene privilegios suficientes.
    ///  8 - Error desconocido.
    ///  9 - La ruta especificada 
    ///  no existe.
    ///  21 - El parámetro especificado no es válido.
    ///  Otros - para otros valores enteros que no sean 
    ///  los arriba listados, 
    ///  consultar la documentación de código de error de Win32.
    /// <param name="SetPriority"> integer -  </param>
    /// </summary>
    function SetPriority(AInstanceProp:string; AInstanceValue:Variant;
      aPriority:integer):integer;
  published
    {%InterfacePublishedPart WMIClass%}
    // propiedades de la Process
    property ProcessProperties:TProcessProperties read   FProcessProperties write FProcessProperties;
  end;


// Constantes para la propiedad ExecutionState
const 
  ENUM_STRING_EXECUTIONSTATE_00 = 'Desconocido';
  ENUM_STRING_EXECUTIONSTATE_01 = 'Otros';
  ENUM_STRING_EXECUTIONSTATE_02 = 'Listo';
  ENUM_STRING_EXECUTIONSTATE_03 = 'Activo';
  ENUM_STRING_EXECUTIONSTATE_04 = 'Bloqueado';
  ENUM_STRING_EXECUTIONSTATE_05 = 'Bloqueado suspendido';
  ENUM_STRING_EXECUTIONSTATE_06 = 'Suspendido preparado';
  ENUM_STRING_EXECUTIONSTATE_07 = 'Terminado';
  ENUM_STRING_EXECUTIONSTATE_08 = 'Detenido';
  ENUM_STRING_EXECUTIONSTATE_09 = 'Crecimiento';

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
procedure TProcessInfo.ClearProps;
begin
  Self.ProcessProperties.FCaption := EmptyStr;
  Self.ProcessProperties.FCommandLine := EmptyStr;
  Self.ProcessProperties.FCreationClassName := EmptyStr;
  Self.ProcessProperties.FCreationDate := 0;
  Self.ProcessProperties.FCSCreationClassName := EmptyStr;
  Self.ProcessProperties.FCSName := EmptyStr;
  Self.ProcessProperties.FDescription := EmptyStr;
  Self.ProcessProperties.FExecutablePath := EmptyStr;
  Self.ProcessProperties.FExecutionState := 0;
  Self.ProcessProperties.FHandle := EmptyStr;
  Self.ProcessProperties.FHandleCount := 0;
  Self.ProcessProperties.FInstallDate := 0;
  Self.ProcessProperties.FKernelModeTime := 0;
  Self.ProcessProperties.FMaximumWorkingSetSize := 0;
  Self.ProcessProperties.FMinimumWorkingSetSize := 0;
  Self.ProcessProperties.FName := EmptyStr;
  Self.ProcessProperties.FOSCreationClassName := EmptyStr;
  Self.ProcessProperties.FOSName := EmptyStr;
  Self.ProcessProperties.FOtherOperationCount := 0;
  Self.ProcessProperties.FOtherTransferCount := 0;
  Self.ProcessProperties.FPageFaults := 0;
  Self.ProcessProperties.FPageFileUsage := 0;
  Self.ProcessProperties.FParentProcessId := 0;
  Self.ProcessProperties.FPeakPageFileUsage := 0;
  Self.ProcessProperties.FPeakVirtualSize := 0;
  Self.ProcessProperties.FPeakWorkingSetSize := 0;
  Self.ProcessProperties.FPriority := 0;
  Self.ProcessProperties.FPrivatePageCount := 0;
  Self.ProcessProperties.FProcessId := 0;
  Self.ProcessProperties.FQuotaNonPagedPoolUsage := 0;
  Self.ProcessProperties.FQuotaPagedPoolUsage := 0;
  Self.ProcessProperties.FQuotaPeakNonPagedPoolUsage := 0;
  Self.ProcessProperties.FQuotaPeakPagedPoolUsage := 0;
  Self.ProcessProperties.FReadOperationCount := 0;
  Self.ProcessProperties.FReadTransferCount := 0;
  Self.ProcessProperties.FSessionId := 0;
  Self.ProcessProperties.FStatus := EmptyStr;
  Self.ProcessProperties.FTerminationDate := 0;
  Self.ProcessProperties.FThreadCount := 0;
  Self.ProcessProperties.FUserModeTime := 0;
  Self.ProcessProperties.FVirtualSize := 0;
  Self.ProcessProperties.FWindowsVersion := EmptyStr;
  Self.ProcessProperties.FWorkingSetSize := 0;
  Self.ProcessProperties.FWriteOperationCount := 0;
  Self.ProcessProperties.FWriteTransferCount := 0;
end;

//: Constructor del componente
constructor TProcessInfo.Create(AOwner: TComponent);
begin
  inherited;
  Self.FProcessProperties := TProcessProperties.Create();
  Self.MSDNHelp := 'https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-process';
end;

//: destructor del componente
destructor TProcessInfo.Destroy();
begin
  // liberar
  FreeAndNil(Self.FProcessProperties);
  inherited;
end;

//: Obtener la clase
function TProcessInfo.GetWMIClass(): string;
begin
  Result := 'Win32_Process'
end;

//: Obtener Root
function TProcessInfo.GetWMIRoot(): string;
begin
  Result := '';
end;

//: Procedmiento de activación
procedure TProcessInfo.SetActive(const Value: Boolean);
begin
  // método heredado
  inherited;
end;


//: Rellenar las propiedades del componente.
procedure TProcessInfo.FillProperties(AIndex: integer);
var
  v:     variant;
  vNull: boolean;
  vp:    TProcessProperties;
begin
  // Llamar al heredado (importante)
  inherited;
  // Rellenar propiedades...
  vp := ProcessProperties;

  GetWMIPropertyValue(Self, 'Caption', v, vNull);
  vp.FCaption := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'CommandLine', v, vNull);
  vp.FCommandLine := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'CreationClassName', v, vNull);
  vp.FCreationClassName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'CreationDate', v, vNull);
  vp.FCreationDate := VariantDateTimeValue(v, vNull);

  GetWMIPropertyValue(Self, 'CSCreationClassName', v, vNull);
  vp.FCSCreationClassName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'CSName', v, vNull);
  vp.FCSName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Description', v, vNull);
  vp.FDescription := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'ExecutablePath', v, vNull);
  vp.FExecutablePath := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'ExecutionState', v, vNull);
  vp.FExecutionState := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Handle', v, vNull);
  vp.FHandle := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'HandleCount', v, vNull);
  vp.FHandleCount := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'InstallDate', v, vNull);
  vp.FInstallDate := VariantDateTimeValue(v, vNull);

  GetWMIPropertyValue(Self, 'KernelModeTime', v, vNull);
  vp.FKernelModeTime := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'MaximumWorkingSetSize', v, vNull);
  vp.FMaximumWorkingSetSize := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'MinimumWorkingSetSize', v, vNull);
  vp.FMinimumWorkingSetSize := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Name', v, vNull);
  vp.FName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'OSCreationClassName', v, vNull);
  vp.FOSCreationClassName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'OSName', v, vNull);
  vp.FOSName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'OtherOperationCount', v, vNull);
  vp.FOtherOperationCount := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'OtherTransferCount', v, vNull);
  vp.FOtherTransferCount := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'PageFaults', v, vNull);
  vp.FPageFaults := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'PageFileUsage', v, vNull);
  vp.FPageFileUsage := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'ParentProcessId', v, vNull);
  vp.FParentProcessId := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'PeakPageFileUsage', v, vNull);
  vp.FPeakPageFileUsage := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'PeakVirtualSize', v, vNull);
  vp.FPeakVirtualSize := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'PeakWorkingSetSize', v, vNull);
  vp.FPeakWorkingSetSize := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Priority', v, vNull);
  vp.FPriority := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'PrivatePageCount', v, vNull);
  vp.FPrivatePageCount := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'ProcessId', v, vNull);
  vp.FProcessId := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'QuotaNonPagedPoolUsage', v, vNull);
  vp.FQuotaNonPagedPoolUsage := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'QuotaPagedPoolUsage', v, vNull);
  vp.FQuotaPagedPoolUsage := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'QuotaPeakNonPagedPoolUsage', v, vNull);
  vp.FQuotaPeakNonPagedPoolUsage := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'QuotaPeakPagedPoolUsage', v, vNull);
  vp.FQuotaPeakPagedPoolUsage := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'ReadOperationCount', v, vNull);
  vp.FReadOperationCount := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'ReadTransferCount', v, vNull);
  vp.FReadTransferCount := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'SessionId', v, vNull);
  vp.FSessionId := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Status', v, vNull);
  vp.FStatus := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'TerminationDate', v, vNull);
  vp.FTerminationDate := VariantDateTimeValue(v, vNull);

  GetWMIPropertyValue(Self, 'ThreadCount', v, vNull);
  vp.FThreadCount := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'UserModeTime', v, vNull);
  vp.FUserModeTime := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'VirtualSize', v, vNull);
  vp.FVirtualSize := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'WindowsVersion', v, vNull);
  vp.FWindowsVersion := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'WorkingSetSize', v, vNull);
  vp.FWorkingSetSize := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'WriteOperationCount', v, vNull);
  vp.FWriteOperationCount := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'WriteTransferCount', v, vNull);
  vp.FWriteTransferCount := VariantIntegerValue(v, vNull);
end;


// Obtener la propiedad como string
function TProcessProperties.GetAllExecutionStateAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_EXECUTIONSTATE_00;
    01: Result := ENUM_STRING_EXECUTIONSTATE_01;
    02: Result := ENUM_STRING_EXECUTIONSTATE_02;
    03: Result := ENUM_STRING_EXECUTIONSTATE_03;
    04: Result := ENUM_STRING_EXECUTIONSTATE_04;
    05: Result := ENUM_STRING_EXECUTIONSTATE_05;
    06: Result := ENUM_STRING_EXECUTIONSTATE_06;
    07: Result := ENUM_STRING_EXECUTIONSTATE_07;
    08: Result := ENUM_STRING_EXECUTIONSTATE_08;
    09: Result := ENUM_STRING_EXECUTIONSTATE_09;
  else
    Result := STR_EMPTY;
  end;
end;


// Obtener núm. de elementos de la propiedad como string
function TProcessProperties.GetAllExecutionStateCount:integer;
begin
  Result := 10
end;

// Obtiene el resultado de ejecutar un método como string 
function TProcessInfo.GetErrorControlAsString(FErrorControl:integer): string; 
begin
   case FErrorControl of
     0: Result := 'Finalización correcta';
     1: Result := 'Acceso denegado';
     2: Result := 'Privilegio insuficiente';
     3: Result := 'Error desconocido';
     4: Result := 'No se ha encontrado la ruta de acceso';
     5: Result := 'Parámetro no válido';
     6: Result := 'Otros';
    else
      Result := EmptyStr
    end;
end;

function TProcessInfo.Create_(AInstanceProp:string; AInstanceValue:Variant;
      aCommandLine:string;
      aCurrentDirectory:string;
      aProcessStartupInformation:string;
      aProcessId:integer):integer;
var
  arr:TArrVariant;
  v:variant;
begin
  SetLength(arr, 4);
  arr[0] := aCommandLine;
  arr[1] := aCurrentDirectory;
  arr[2] := aProcessStartupInformation;
  arr[3] := aProcessId;
  // Ejecutar el proceso
  ExecuteClassMethod(Self, AInstanceProp, AInstanceValue,
    'Create_',
    ['CommandLine', 'CurrentDirectory', 'ProcessStartupInformation', 'ProcessId'],
    arr,
    [ptIn, ptIn, ptIn, ptIn],
    [wbemCIMTypeString, wbemCIMTypeString, wbemCIMTypeString, wbemCIMTypeUint32],
    v);
  Result := v;
end;

function TProcessInfo.Terminate(AInstanceProp:string; AInstanceValue:Variant;
      aReason:integer):integer;
var
  arr:TArrVariant;
  v:variant;
begin
  SetLength(arr, 1);
  arr[0] := aReason;
  // Ejecutar el proceso
  ExecuteClassMethod(Self, AInstanceProp, AInstanceValue,
    'Terminate',
    ['Reason'],
    arr,
    [ptIn],
    [wbemCIMTypeUint32],
    v);
  Result := v;
end;

function TProcessInfo.GetOwner(AInstanceProp:string; AInstanceValue:Variant;
      aDomain:string;
      aUser:string):integer;
var
  arr:TArrVariant;
  v:variant;
begin
  SetLength(arr, 2);
  arr[0] := aDomain;
  arr[1] := aUser;
  // Ejecutar el proceso
  ExecuteClassMethod(Self, AInstanceProp, AInstanceValue,
    'GetOwner',
    ['Domain', 'User'],
    arr,
    [ptIn, ptIn],
    [wbemCIMTypeString, wbemCIMTypeString],
    v);
  Result := v;
end;

function TProcessInfo.GetOwnerSid(AInstanceProp:string; AInstanceValue:Variant;
      aSid:string):integer;
var
  arr:TArrVariant;
  v:variant;
begin
  SetLength(arr, 1);
  arr[0] := aSid;
  // Ejecutar el proceso
  ExecuteClassMethod(Self, AInstanceProp, AInstanceValue,
    'GetOwnerSid',
    ['Sid'],
    arr,
    [ptIn],
    [wbemCIMTypeString],
    v);
  Result := v;
end;

function TProcessInfo.SetPriority(AInstanceProp:string; AInstanceValue:Variant;
      aPriority:integer):integer;
var
  arr:TArrVariant;
  v:variant;
begin
  SetLength(arr, 1);
  arr[0] := aPriority;
  // Ejecutar el proceso
  ExecuteClassMethod(Self, AInstanceProp, AInstanceValue,
    'SetPriority',
    ['Priority'],
    arr,
    [ptIn],
    [wbemCIMTypeSint32],
    v);
  Result := v;
end;

end.
