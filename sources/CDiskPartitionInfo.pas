{
TDiskPartitionInfo Component Version 3.0 - Suite GLibWMI
Copyright (�) 2020,  by Germ�n Est�vez (Neftal�)

La clase Win32_DiskPartition representa las posibilidades y la capacidad de administraci�n de un �rea 
con particiones en un disco f�sico de un sistema Win32.
Ejemplo: Disco n� 0, Partici�n n�1.


Utilizaci�n/Usage:
(ES) Basta con "soltar" el componente y activarlo.
(EN) Place the component in the form and active it.

MSDN Info:
https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-diskpartition

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
unit CDiskPartitionInfo;

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
  TDiskPartitionProperties = class(TPersistent)
  private
    {%PrivateClassVars PropertiesClass%}
    FAccess:integer;
    FAvailability:integer;
    FBlockSize:int64;
    FBootable:boolean;
    FBootPartition:boolean;
    FCaption:string;
    FConfigManagerErrorCode:integer;
    FConfigManagerUserConfig:boolean;
    FCreationClassName:string;
    FDescription:string;
    FDeviceID:string;
    FDiskIndex:integer;
    FErrorCleared:boolean;
    FErrorDescription:string;
    FErrorMethodology:string;
    FHiddenSectors:integer;
    FIndex:integer;
    FInstallDate:TDatetime;
    FLastErrorCode:integer;
    FName:string;
    FNumberOfBlocks:int64;
    FPNPDeviceID:string;
    FPowerManagementCapabilities:TArrInteger;
    FPowerManagementCapabilitiesCount:integer;
    FPowerManagementCapabilitiesAsString:string;    FPowerManagementSupported:boolean;
    FPrimaryPartition:boolean;
    FPurpose:string;
    FRewritePartition:boolean;
    FSize:int64;
    FStartingOffset:int64;
    FStatus:string;
    FStatusInfo:integer;
    FSystemCreationClassName:string;
    FSystemName:string;
    FType_:string;

  private
    {%PrivateGetMethods PropertiesClass%}
    function GetPowerManagementCapabilities(index: integer):integer;

  public
    {%PublicGetMethods PropertiesClass%}
    // Obtener la propiedad <Access> como string
    function GetAllAccessAsString(index:integer):string;
    // Obtener el n�mero de elementos disponibles de la propiedad <Access>
    function GetAllAccessCount:integer;
    // Obtener la propiedad <Availability> como string
    function GetAllAvailabilityAsString(index:integer):string;
    // Obtener el n�mero de elementos disponibles de la propiedad <Availability>
    function GetAllAvailabilityCount:integer;
    // Obtener la propiedad <ConfigManagerErrorCode> como string
    function GetAllConfigManagerErrorCodeAsString(index:integer):string;
    // Obtener el n�mero de elementos disponibles de la propiedad <ConfigManagerErrorCode>
    function GetAllConfigManagerErrorCodeCount:integer;
    // Obtener la propiedad <PowerManagementCapabilities> como string
    function GetAllPowerManagementCapabilitiesAsString(index:integer):string;
    // Obtener el n�mero de elementos disponibles de la propiedad <PowerManagementCapabilities>
    function GetAllPowerManagementCapabilitiesCount:integer;
    // Obtener la propiedad <StatusInfo> como string
    function GetAllStatusInfoAsString(index:integer):string;
    // Obtener el n�mero de elementos disponibles de la propiedad <StatusInfo>
    function GetAllStatusInfoCount:integer;
    // Obtener la propiedad <Type_> como string
    function GetAllType_AsString(index:integer):string;
    // Obtener el n�mero de elementos disponibles de la propiedad <Type_>
    function GetAllType_Count:integer;

    {%PublicArrayMethods PropertiesClass%}
    property PowerManagementCapabilities[index:integer]:integer read GetPowerManagementCapabilities;
    property PowerManagementCapabilitiesCount:integer read FPowerManagementCapabilitiesCount stored False;

  published
    {%PublishedProperties PropertiesClass%}
    /// <summary>
    ///  Access describe si el medio es legible (valor=1), grabable (valor=2), o ambos (valor=3). "Desconocido" 
    ///  (0) y "De s�lo una escritura" (4) tambi�n se pueden definir.
    /// </summary>
    property Access:integer read FAccess write FAccess stored False;
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
    ///  Tama�o en bytes de los bloques que forman este StorageExtent. Si el tama�o del bloque es variable, entonces 
    ///  se debe especificar el tama�o de bloque m�ximo en bytes. Si el tama�o de bloque es desconocido o un concepto 
    ///  de bIoque no es v�lido (por ejemplo, para Aggregate Extents, Memory o LogicalDisks), escriba un 1.
    /// </summary>
    property BlockSize:int64 read FBlockSize write FBlockSize stored False;
    /// <summary>
    ///  El valor booleano indica que DiskPartition est� etiquetada como de arranque. No significa que un OperatingSystem 
    ///  est� instalado en la participaci�n.
    /// </summary>
    property Bootable:boolean read FBootable write FBootable stored False;
    /// <summary>
    ///  La propiedad BootPartition determina si �sta es la partici�n activa. El sistema operativo usa la partici�n 
    ///  activa al arrancar desde un disco duro.
    ///  Valores: TRUE o FALSE. Si es TRUE, la partici�n es la activa
    ///  .
    /// </summary>
    property BootPartition:boolean read FBootPartition write FBootPartition stored False;
    /// <summary>
    ///  La propiedad BootPartition determina si �sta es la partici�n activa. El sistema operativo usa la partici�n 
    ///  activa al arrancar desde un disco duro.
    ///  Valores: TRUE o FALSE. Si es TRUE, la partici�n es la activa
    ///  .
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
    ///  La propiedad DeviceID contiene una cadena que identifica de forma �nica la unidad de disco y la partici�n 
    ///  del resto del sistema.
    /// </summary>
    property DeviceID:string read FDeviceID write FDeviceID stored False;
    /// <summary>
    ///  La propiedad DiskIndex indica el n�mero de �ndice del disco que contiene esta partici�n.
    ///  Ejemplo: 0.
    /// </summary>
    property DiskIndex:integer read FDiskIndex write FDiskIndex stored False;
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
    ///  ErrorMethodology es una cadena de forma libre que describe el tipo de detecci�n o correcci�n de errores 
    ///  admitido por esta extensi�n de almacenamiento.
    /// </summary>
    property ErrorMethodology:string read FErrorMethodology write FErrorMethodology stored False;
    /// <summary>
    ///  La propiedad HiddenSectors indica el n�mero de sectores ocultos de la partici�n.
    ///  Ejemplo: 63
    /// </summary>
    property HiddenSectors:integer read FHiddenSectors write FHiddenSectors stored False;
    /// <summary>
    ///  La propiedad HiddenSectors indica el n�mero de sectores ocultos de la partici�n.
    ///  Ejemplo: 63
    /// </summary>
    property Index:integer read FIndex write FIndex stored False;
    /// <summary>
    ///  La propiedad HiddenSectors indica el n�mero de sectores ocultos de la partici�n.
    ///  Ejemplo: 63
    /// </summary>
    property InstallDate:TDatetime read FInstallDate write FInstallDate stored False;
    /// <summary>
    ///  LastErrorCode captura el �ltimo c�digo de error informado por el dispositivo l�gico.
    /// </summary>
    property LastErrorCode:integer read FLastErrorCode write FLastErrorCode stored False;
    /// <summary>
    ///  LastErrorCode captura el �ltimo c�digo de error informado por el dispositivo l�gico.
    /// </summary>
    property Name:string read FName write FName stored False;
    /// <summary>
    ///  N�mero total de bloques consecutivos, cada  uno bloquea el tama�o del valor contenido en la propiedad 
    ///  BlockSize que forma esta extensi�n de almacenamiento. Tama�o total de la extensi�n  de almacenamiento 
    ///  puede ser calculado multiplicando el valor de la propiedad BlockSize por el valor de esta propiedad. 
    ///  Si el valor de BlockSize es 1, esta propiedad es el tama�o total de la extensi�n de almacenamiento.
    /// </summary>
    property NumberOfBlocks:int64 read FNumberOfBlocks write FNumberOfBlocks stored False;
    /// <summary>
    ///  N�mero total de bloques consecutivos, cada  uno bloquea el tama�o del valor contenido en la propiedad 
    ///  BlockSize que forma esta extensi�n de almacenamiento. Tama�o total de la extensi�n  de almacenamiento 
    ///  puede ser calculado multiplicando el valor de la propiedad BlockSize por el valor de esta propiedad. 
    ///  Si el valor de BlockSize es 1, esta propiedad es el tama�o total de la extensi�n de almacenamiento.
    /// </summary>
    property PNPDeviceID:string read FPNPDeviceID write FPNPDeviceID stored False;
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
    ///  Booleano indicando que DiskPartition est� etiquetada como la partici�n primaria para un ComputerSyst
    ///  em.
    /// </summary>
    property PrimaryPartition:boolean read FPrimaryPartition write FPrimaryPartition stored False;
    /// <summary>
    ///  Booleano indicando que DiskPartition est� etiquetada como la partici�n primaria para un ComputerSyst
    ///  em.
    /// </summary>
    property Purpose:string read FPurpose write FPurpose stored False;
    /// <summary>
    ///  La propiedad RewritePartition especifica si la informaci�n de la partici�n ha cambiado. Cuando cambia 
    ///  una partici�n (con IOCTL_DISK_SET_DRIVE_LAYOUT), el sistema usa este miembro de la propiedad para determinar 
    ///  qu� particiones han cambiado y es necesario volver a escribir su informaci�n.
    ///  Valores: TRUE o FALSE. 
    ///  Si es TRUE, es necesario volver a escribir la partici�n.
    /// </summary>
    property RewritePartition:boolean read FRewritePartition write FRewritePartition stored False;
    /// <summary>
    ///  La propiedad Size indica el tama�o total (en bytes) de la partici�n.
    ///  Ejemplo: 1059045376
    /// </summary>
    property Size:int64 read FSize write FSize stored False;
    /// <summary>
    ///  La propiedad StartingOffset indica la posici�n de inicio (en bytes) de la partici�n.
    ///  Ejemplo: 32256
    /// </summary>
    property StartingOffset:int64 read FStartingOffset write FStartingOffset stored False;
    /// <summary>
    ///  La propiedad StartingOffset indica la posici�n de inicio (en bytes) de la partici�n.
    ///  Ejemplo: 32256
    /// </summary>
    property Status:string read FStatus write FStatus stored False;
    /// <summary>
    ///  StatusInfo es una cadena que indica si el dispositivo l�gico est� en un estado habilitado (valor = 3), 
    ///  deshabilitado (valor = 4) o alg�n otro estado (1) o un estado desconocido (2). Si esta propiedad no se 
    ///  aplica al dispositivo l�gico, el valor, 5 ("No aplicable"), debe ser usado.
    /// </summary>
    property StatusInfo:integer read FStatusInfo write FStatusInfo stored False;
    /// <summary>
    ///  StatusInfo es una cadena que indica si el dispositivo l�gico est� en un estado habilitado (valor = 3), 
    ///  deshabilitado (valor = 4) o alg�n otro estado (1) o un estado desconocido (2). Si esta propiedad no se 
    ///  aplica al dispositivo l�gico, el valor, 5 ("No aplicable"), debe ser usado.
    /// </summary>
    property SystemCreationClassName:string read FSystemCreationClassName write FSystemCreationClassName stored False;
    /// <summary>
    ///  StatusInfo es una cadena que indica si el dispositivo l�gico est� en un estado habilitado (valor = 3), 
    ///  deshabilitado (valor = 4) o alg�n otro estado (1) o un estado desconocido (2). Si esta propiedad no se 
    ///  aplica al dispositivo l�gico, el valor, 5 ("No aplicable"), debe ser usado.
    /// </summary>
    property SystemName:string read FSystemName write FSystemName stored False;
    /// <summary>
    ///  StatusInfo es una cadena que indica si el dispositivo l�gico est� en un estado habilitado (valor = 3), 
    ///  deshabilitado (valor = 4) o alg�n otro estado (1) o un estado desconocido (2). Si esta propiedad no se 
    ///  aplica al dispositivo l�gico, el valor, 5 ("No aplicable"), debe ser usado.
    /// </summary>
    property Type_:string read FType_ write FType_ stored False;
  end;

  {%InterfaceClass WMIClass%}
  /// <summary>
  ///  La clase Win32_DiskPartition representa las posibilidades y la capacidad de administraci�n de un �rea 
  ///  con particiones en un disco f�sico de un sistema Win32.
  ///  Ejemplo: Disco n� 0, Partici�n n�1.
  /// </summary>
  TDiskPartitionInfo = class(TWMIBase)
  private
    FDiskPartitionProperties: TDiskPartitionProperties;
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
    // propiedades de la DiskPartition
    property DiskPartitionProperties:TDiskPartitionProperties read   FDiskPartitionProperties write FDiskPartitionProperties;
  end;


// Constantes para la propiedad Access
const 
  ENUM_STRING_ACCESS_00 = 'Desconocido';
  ENUM_STRING_ACCESS_01 = 'Lectura';
  ENUM_STRING_ACCESS_02 = 'Grabable';
  ENUM_STRING_ACCESS_03 = 'Lectura/escritura';
  ENUM_STRING_ACCESS_04 = 'De s�lo una escritura';

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

// Constantes para la propiedad Type_
const 
  ENUM_STRING_TYPE__00 = 'No utilizado';
  ENUM_STRING_TYPE__01 = 'FAT de 12 bits';
  ENUM_STRING_TYPE__02 = 'Xenix tipo 1';
  ENUM_STRING_TYPE__03 = 'Xenix tipo 2';
  ENUM_STRING_TYPE__04 = 'FAT de 16 bits';
  ENUM_STRING_TYPE__05 = 'Partici�n extendida';
  ENUM_STRING_TYPE__06 = 'MS-DOS V4 Huge';
  ENUM_STRING_TYPE__07 = 'Sistema de archivos instalables';
  ENUM_STRING_TYPE__08 = 'Plataforma de referencia PowerPC';
  ENUM_STRING_TYPE__09 = 'UNIX';
  ENUM_STRING_TYPE__10 = 'NTFS';
  ENUM_STRING_TYPE__11 = 'Win95 con Inter. 13 extendida';
  ENUM_STRING_TYPE__12 = 'Extendido con Inter. 13 extendida';
  ENUM_STRING_TYPE__13 = 'Administrador de discos l�gicos';
  ENUM_STRING_TYPE__14 = 'Desconocido';

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
procedure TDiskPartitionInfo.ClearProps;
begin
  Self.DiskPartitionProperties.FAccess := 0;
  Self.DiskPartitionProperties.FAvailability := 0;
  Self.DiskPartitionProperties.FBlockSize := 0;
  Self.DiskPartitionProperties.FBootable := False;
  Self.DiskPartitionProperties.FBootPartition := False;
  Self.DiskPartitionProperties.FCaption := EmptyStr;
  Self.DiskPartitionProperties.FConfigManagerErrorCode := 0;
  Self.DiskPartitionProperties.FConfigManagerUserConfig := False;
  Self.DiskPartitionProperties.FCreationClassName := EmptyStr;
  Self.DiskPartitionProperties.FDescription := EmptyStr;
  Self.DiskPartitionProperties.FDeviceID := EmptyStr;
  Self.DiskPartitionProperties.FDiskIndex := 0;
  Self.DiskPartitionProperties.FErrorCleared := False;
  Self.DiskPartitionProperties.FErrorDescription := EmptyStr;
  Self.DiskPartitionProperties.FErrorMethodology := EmptyStr;
  Self.DiskPartitionProperties.FHiddenSectors := 0;
  Self.DiskPartitionProperties.FIndex := 0;
  Self.DiskPartitionProperties.FInstallDate := 0;
  Self.DiskPartitionProperties.FLastErrorCode := 0;
  Self.DiskPartitionProperties.FName := EmptyStr;
  Self.DiskPartitionProperties.FNumberOfBlocks := 0;
  Self.DiskPartitionProperties.FPNPDeviceID := EmptyStr;
  Self.DiskPartitionProperties.FPowerManagementCapabilitiesCount := 0;
  Self.DiskPartitionProperties.FPowerManagementCapabilitiesAsString := EmptyStr;
  SetLength(DiskPartitionProperties.FPowerManagementCapabilities, 0);
  Self.DiskPartitionProperties.FPowerManagementSupported := False;
  Self.DiskPartitionProperties.FPrimaryPartition := False;
  Self.DiskPartitionProperties.FPurpose := EmptyStr;
  Self.DiskPartitionProperties.FRewritePartition := False;
  Self.DiskPartitionProperties.FSize := 0;
  Self.DiskPartitionProperties.FStartingOffset := 0;
  Self.DiskPartitionProperties.FStatus := EmptyStr;
  Self.DiskPartitionProperties.FStatusInfo := 0;
  Self.DiskPartitionProperties.FSystemCreationClassName := EmptyStr;
  Self.DiskPartitionProperties.FSystemName := EmptyStr;
  Self.DiskPartitionProperties.FType_ := EmptyStr;
end;

//: Constructor del componente
constructor TDiskPartitionInfo.Create(AOwner: TComponent);
begin
  inherited;
  Self.FDiskPartitionProperties := TDiskPartitionProperties.Create();
  Self.MSDNHelp := 'https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-diskpartition';
end;

//: destructor del componente
destructor TDiskPartitionInfo.Destroy();
begin
  // liberar
  FreeAndNil(Self.FDiskPartitionProperties);
  inherited;
end;

//: Obtener la clase
function TDiskPartitionInfo.GetWMIClass(): string;
begin
  Result := 'Win32_DiskPartition'
end;

//: Obtener Root
function TDiskPartitionInfo.GetWMIRoot(): string;
begin
  Result := '';
end;

//: Procedmiento de activaci�n
procedure TDiskPartitionInfo.SetActive(const Value: Boolean);
begin
  // m�todo heredado
  inherited;
end;

// Acceso a los elementos de la propiedad <PowerManagementCapabilities>
function TDiskPartitionProperties.GetPowerManagementCapabilities(index: integer):integer;
begin
  if (index >= Self.FPowerManagementCapabilitiesCount) then begin
    Index := Self.FPowerManagementCapabilitiesCount - 1;
  end;
  Result := Self.FPowerManagementCapabilities[index];
end;


//: Rellenar las propiedades del componente.
procedure TDiskPartitionInfo.FillProperties(AIndex: integer);
var
  v:     variant;
  vNull: boolean;
  vp:    TDiskPartitionProperties;
begin
  // Llamar al heredado (importante)
  inherited;
  // Rellenar propiedades...
  vp := DiskPartitionProperties;

  GetWMIPropertyValue(Self, 'Access', v, vNull);
  vp.FAccess := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Availability', v, vNull);
  vp.FAvailability := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'BlockSize', v, vNull);
  vp.FBlockSize := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Bootable', v, vNull);
  vp.FBootable := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'BootPartition', v, vNull);
  vp.FBootPartition := VariantBooleanValue(v, vNull);

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

  GetWMIPropertyValue(Self, 'DiskIndex', v, vNull);
  vp.FDiskIndex := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'ErrorCleared', v, vNull);
  vp.FErrorCleared := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'ErrorDescription', v, vNull);
  vp.FErrorDescription := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'ErrorMethodology', v, vNull);
  vp.FErrorMethodology := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'HiddenSectors', v, vNull);
  vp.FHiddenSectors := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Index', v, vNull);
  vp.FIndex := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'InstallDate', v, vNull);
  vp.FInstallDate := VariantDateTimeValue(v, vNull);

  GetWMIPropertyValue(Self, 'LastErrorCode', v, vNull);
  vp.FLastErrorCode := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Name', v, vNull);
  vp.FName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'NumberOfBlocks', v, vNull);
  vp.FNumberOfBlocks := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'PNPDeviceID', v, vNull);
  vp.FPNPDeviceID := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'PowerManagementCapabilities', v, vNull);
  vp.FPowerManagementCapabilitiesAsString := VariantStrValue(v, vNull);
  StringToArrayInteger(vp.FPowerManagementCapabilitiesAsString, vp.FPowerManagementCapabilities);
  vp.FPowerManagementCapabilitiesCount := Length(vp.FPowerManagementCapabilities);

  GetWMIPropertyValue(Self, 'PowerManagementSupported', v, vNull);
  vp.FPowerManagementSupported := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'PrimaryPartition', v, vNull);
  vp.FPrimaryPartition := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'Purpose', v, vNull);
  vp.FPurpose := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'RewritePartition', v, vNull);
  vp.FRewritePartition := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'Size', v, vNull);
  vp.FSize := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'StartingOffset', v, vNull);
  vp.FStartingOffset := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Status', v, vNull);
  vp.FStatus := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'StatusInfo', v, vNull);
  vp.FStatusInfo := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'SystemCreationClassName', v, vNull);
  vp.FSystemCreationClassName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'SystemName', v, vNull);
  vp.FSystemName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Type_', v, vNull);
  vp.FType_ := VariantStrValue(v, vNull);
end;


// Obtener la propiedad como string
function TDiskPartitionProperties.GetAllAccessAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_ACCESS_00;
    01: Result := ENUM_STRING_ACCESS_01;
    02: Result := ENUM_STRING_ACCESS_02;
    03: Result := ENUM_STRING_ACCESS_03;
    04: Result := ENUM_STRING_ACCESS_04;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TDiskPartitionProperties.GetAllAvailabilityAsString(index:integer):string;
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
function TDiskPartitionProperties.GetAllConfigManagerErrorCodeAsString(index:integer):string;
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
function TDiskPartitionProperties.GetAllPowerManagementCapabilitiesAsString(index:integer):string;
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
function TDiskPartitionProperties.GetAllStatusInfoAsString(index:integer):string;
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
function TDiskPartitionProperties.GetAllType_AsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_TYPE__00;
    01: Result := ENUM_STRING_TYPE__01;
    02: Result := ENUM_STRING_TYPE__02;
    03: Result := ENUM_STRING_TYPE__03;
    04: Result := ENUM_STRING_TYPE__04;
    05: Result := ENUM_STRING_TYPE__05;
    06: Result := ENUM_STRING_TYPE__06;
    07: Result := ENUM_STRING_TYPE__07;
    08: Result := ENUM_STRING_TYPE__08;
    09: Result := ENUM_STRING_TYPE__09;
    10: Result := ENUM_STRING_TYPE__10;
    11: Result := ENUM_STRING_TYPE__11;
    12: Result := ENUM_STRING_TYPE__12;
    13: Result := ENUM_STRING_TYPE__13;
    14: Result := ENUM_STRING_TYPE__14;
  else
    Result := STR_EMPTY;
  end;
end;


// Obtener n�m. de elementos de la propiedad como string
function TDiskPartitionProperties.GetAllAccessCount:integer;
begin
  Result := 5
end;

// Obtener n�m. de elementos de la propiedad como string
function TDiskPartitionProperties.GetAllAvailabilityCount:integer;
begin
  Result := 21
end;

// Obtener n�m. de elementos de la propiedad como string
function TDiskPartitionProperties.GetAllConfigManagerErrorCodeCount:integer;
begin
  Result := 32
end;

// Obtener n�m. de elementos de la propiedad como string
function TDiskPartitionProperties.GetAllPowerManagementCapabilitiesCount:integer;
begin
  Result := 8
end;

// Obtener n�m. de elementos de la propiedad como string
function TDiskPartitionProperties.GetAllStatusInfoCount:integer;
begin
  Result := 5
end;

// Obtener n�m. de elementos de la propiedad como string
function TDiskPartitionProperties.GetAllType_Count:integer;
begin
  Result := 15
end;


end.
