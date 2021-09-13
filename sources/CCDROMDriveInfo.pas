{
TCDROMDriveInfo Component Version 3.1 - Suite GLibWMI
Copyright (�) 2020,  by Germ�n Est�vez (Neftal�)

La clase Win32_CDROMDrive representa una unidad de CD-ROM en Win32_ComputerSystem. 
Nota: el nombre 
de la unidad no se corresponde con la letra de unidad l�gica asignada al dispositivo.


Utilizaci�n/Usage:
(ES) Basta con "soltar" el componente y activarlo.
(EN) Place the component in the form and active it.

MSDN Info:
https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-cdromdrive

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
unit CCDROMDriveInfo;

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
  TCDROMDriveProperties = class(TPersistent)
  private
    {%PrivateClassVars PropertiesClass%}
    FAvailability:integer;
    FCapabilities:TArrInteger;
    FCapabilitiesCount:integer;
    FCapabilitiesAsString:string;    FCapabilityDescriptions:TArrString;
    FCapabilityDescriptionsCount:integer;
    FCapabilityDescriptionsAsString:string;    FCaption:string;
    FCompressionMethod:string;
    FConfigManagerErrorCode:integer;
    FConfigManagerUserConfig:boolean;
    FCreationClassName:string;
    FDefaultBlockSize:int64;
    FDescription:string;
    FDeviceID:string;
    FDrive:string;
    FDriveIntegrity:boolean;
    FErrorCleared:boolean;
    FErrorDescription:string;
    FErrorMethodology:string;
    FFileSystemFlags:integer;
    FFileSystemFlagsEx:integer;
    FId:string;
    FInstallDate:TDatetime;
    FLastErrorCode:integer;
    FManufacturer:string;
    FMaxBlockSize:int64;
    FMaximumComponentLength:integer;
    FMaxMediaSize:int64;
    FMediaLoaded:boolean;
    FMediaType:string;
    FMfrAssignedRevisionLevel:string;
    FMinBlockSize:int64;
    FName:string;
    FNeedsCleaning:boolean;
    FNumberOfMediaSupported:integer;
    FPNPDeviceID:string;
    FPowerManagementCapabilities:TArrInteger;
    FPowerManagementCapabilitiesCount:integer;
    FPowerManagementCapabilitiesAsString:string;    FPowerManagementSupported:boolean;
    FRevisionLevel:string;
    FSCSIBus:integer;
    FSCSILogicalUnit:integer;
    FSCSIPort:integer;
    FSCSITargetId:integer;
    FSerialNumber:string;
    FSize:int64;
    FStatus:string;
    FStatusInfo:integer;
    FSystemCreationClassName:string;
    FSystemName:string;
    FTransferRate:double;
    FVolumeName:string;
    FVolumeSerialNumber:string;

  private
    {%PrivateGetMethods PropertiesClass%}
    function GetCapabilities(index: integer):integer;
    function GetCapabilityDescriptions(index: integer):string;
    function GetPowerManagementCapabilities(index: integer):integer;

  public
    {%PublicGetMethods PropertiesClass%}
    // Obtener la propiedad <Availability> como string
    function GetAllAvailabilityAsString(index:integer):string;
    // Obtener el n�mero de elementos disponibles de la propiedad <Availability>
    function GetAllAvailabilityCount:integer;
    // Obtener la propiedad <Capabilities> como string
    function GetAllCapabilitiesAsString(index:integer):string;
    // Obtener el n�mero de elementos disponibles de la propiedad <Capabilities>
    function GetAllCapabilitiesCount:integer;
    // Obtener la propiedad <ConfigManagerErrorCode> como string
    function GetAllConfigManagerErrorCodeAsString(index:integer):string;
    // Obtener el n�mero de elementos disponibles de la propiedad <ConfigManagerErrorCode>
    function GetAllConfigManagerErrorCodeCount:integer;
    // Obtener la propiedad <MediaType> como string
    function GetAllMediaTypeAsString(index:integer):string;
    // Obtener el n�mero de elementos disponibles de la propiedad <MediaType>
    function GetAllMediaTypeCount:integer;
    // Obtener la propiedad <PowerManagementCapabilities> como string
    function GetAllPowerManagementCapabilitiesAsString(index:integer):string;
    // Obtener el n�mero de elementos disponibles de la propiedad <PowerManagementCapabilities>
    function GetAllPowerManagementCapabilitiesCount:integer;
    // Obtener la propiedad <StatusInfo> como string
    function GetAllStatusInfoAsString(index:integer):string;
    // Obtener el n�mero de elementos disponibles de la propiedad <StatusInfo>
    function GetAllStatusInfoCount:integer;

    {%PublicArrayMethods PropertiesClass%}
    property Capabilities[index:integer]:integer read GetCapabilities;
    property CapabilitiesCount:integer read FCapabilitiesCount stored False;
    property CapabilityDescriptions[index:integer]:string read GetCapabilityDescriptions;
    property CapabilityDescriptionsCount:integer read FCapabilityDescriptionsCount stored False;
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
    ///  Capacidades del dispositivo de acceso a medios. Por ejemplo, el dispositivo puede ser compatible con 
    ///  "Acceso aleatorio", medios extra�bles y "Limpieza autom�tica". En este caso, los valores 3, 7 y 9 se 
    ///  escribir�n en la matriz. 
    ///  Varios de los valores enumerados requeridos necesitan alguna explicaci�n: 1) 
    ///  Valor 11, Acepta medios de doble cara, distingue entre un dispositivo al que se puede obtener acceso 
    ///  por los dos lados del medio de doble lado y, un dispositivo que lee s�lo un lado y requiere que se de 
    ///  la vuelta al medio; y, 2) Valor 12, No se requiere expulsi�n previa al desmontaje, indica que el medio 
    ///  no tiene que ser expulsado expl�citamente del dispositivo antes de que un PickerElement obtenga acceso 
    ///  a �l.
    /// </summary>
    property CapabilitiesAsString:string read FCapabilitiesAsString write FCapabilitiesAsString stored False;
    /// <summary>
    ///  Una matriz de cadenas de forma libre proporcionando  explicaciones m�s detalladas para cualquiera de 
    ///  las  caracter�sticas de dispositivo de acceso indicadas en la matriz de capacidades. Nota, cada entrada 
    ///  a esta matriz est� relacionada con la entrada en la matriz de capacidades ubicada en el mismo �ndice
    ///  .
    /// </summary>
    property CapabilityDescriptionsAsString:string read FCapabilityDescriptionsAsString write FCapabilityDescriptionsAsString stored False;
    /// <summary>
    ///  Una matriz de cadenas de forma libre proporcionando  explicaciones m�s detalladas para cualquiera de 
    ///  las  caracter�sticas de dispositivo de acceso indicadas en la matriz de capacidades. Nota, cada entrada 
    ///  a esta matriz est� relacionada con la entrada en la matriz de capacidades ubicada en el mismo �ndice
    ///  .
    /// </summary>
    property Caption:string read FCaption write FCaption stored False;
    /// <summary>
    ///  Una cadena de formato libre indicando el algoritmo o herramienta que el dispositivo usa para admitir 
    ///  la compresi�n. Si no se puede o no se desea describir  la combinaci�n (puede que no se conozca), se recomienda 
    ///  usar las siguientes palabras: "Desconocido" para representar que no se conoce si el dispositivo es compatible 
    ///  con las capacidades de compresi�n o no,  "Comprimido" para representar que el dispositivo es compatible 
    ///  con las capacidades de compresi�n pero que su combinaci�n de compresi�n no sea conocida o no revelada, 
    ///  y "No comprimido" para representar que el dispositivo no es compatible con las capacidades de compre
    ///  si�n.
    /// </summary>
    property CompressionMethod:string read FCompressionMethod write FCompressionMethod stored False;
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
    property DefaultBlockSize:int64 read FDefaultBlockSize write FDefaultBlockSize stored False;
    /// <summary>
    ///  CreationClassName indica el nombre de la clase o subclase que se usa en la creaci�n de una instancia. 
    ///  Cuando se usa con las dem�s propiedades clave de esta clase, esta propiedad permite que se identifiquen 
    ///  de manera �nica todas las instancias de esta clase y sus subclases.
    /// </summary>
    property Description:string read FDescription write FDescription stored False;
    /// <summary>
    ///  La propiedad DeviceID contiene una cadena que identifica �nicamente a esta unidad CD-ROM.
    /// </summary>
    property DeviceID:string read FDeviceID write FDeviceID stored False;
    /// <summary>
    ///  La propiedad DeviceID contiene una cadena que identifica �nicamente a esta unidad CD-ROM.
    /// </summary>
    property Drive:string read FDrive write FDrive stored False;
    /// <summary>
    ///  La propiedad DriveIntegrity indica si se pueden leer archivos de forma precisa en el dispositivo para 
    ///  CD. Esto se determina al leer un bloque de datos dos veces y comparar los datos obtenidos.
    /// </summary>
    property DriveIntegrity:boolean read FDriveIntegrity write FDriveIntegrity stored False;
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
    ///  ErrorMethodology es una cadena de forma libre que describe el tipo de detecci�n y correcci�n de errores 
    ///  admitido por este dispositivo.
    /// </summary>
    property ErrorMethodology:string read FErrorMethodology write FErrorMethodology stored False;
    /// <summary>
    ///  ErrorMethodology es una cadena de forma libre que describe el tipo de detecci�n y correcci�n de errores 
    ///  admitido por este dispositivo.
    /// </summary>
    property FileSystemFlags:integer read FFileSystemFlags write FFileSystemFlags stored False;
    /// <summary>
    ///  La propiedad FileSystemFlagsEx se�ala las marcas del sistema de archivos asociadas a la unidad de CD-ROM 
    ///  Win32. Este par�metro puede ser cualquier combinaci�n de marcas. FS_FILE_COMPRESSION y FS_VOL_IS_COMPRESSED 
    ///  se excluyen mutuamente.
    ///  Ejemplo: 0.
    /// </summary>
    property FileSystemFlagsEx:integer read FFileSystemFlagsEx write FFileSystemFlagsEx stored False;
    /// <summary>
    ///  La propiedad de id. indica la letra de unidad que identifica �nicamente a esta unidad de CD-ROM.
    ///  Ejemplo: 
    ///  d:\ 
    /// </summary>
    property Id:string read FId write FId stored False;
    /// <summary>
    ///  La propiedad de id. indica la letra de unidad que identifica �nicamente a esta unidad de CD-ROM.
    ///  Ejemplo: 
    ///  d:\ 
    /// </summary>
    property InstallDate:TDatetime read FInstallDate write FInstallDate stored False;
    /// <summary>
    ///  LastErrorCode captura el �ltimo c�digo de error informado por el dispositivo l�gico.
    /// </summary>
    property LastErrorCode:integer read FLastErrorCode write FLastErrorCode stored False;
    /// <summary>
    ///  La propiedad Manufacturer indica el fabricante de la unidad de CD-ROM Win32.
    ///  Ejemplo: PLEXTOR
    /// </summary>
    property Manufacturer:string read FManufacturer write FManufacturer stored False;
    /// <summary>
    ///  Tama�o m�ximo de bloque, en bytes, de los medios a que tiene acceso este dispositivo.
    /// </summary>
    property MaxBlockSize:int64 read FMaxBlockSize write FMaxBlockSize stored False;
    /// <summary>
    ///  La propiedad MaximumComponentLength indica la longitud m�xima de un componente nombre de archivo admitido 
    ///  por la unidad de CD-ROM Win32. Un componente nombre de archivo est� formado por la parte del nombre de 
    ///  archivo que se encuentra entre barras diagonales inversas. El valor se puede usar para indicar que el 
    ///  sistema de archivos especificado admite nombres largos. Por ejemplo, en el caso de un sistema de archivos 
    ///  FAT que admite nombres largos, la funci�n almacena el valor 255, en lugar del indicador 8.3 anterior. 
    ///  Los nombres largos tambi�n se pueden admitir en sistemas que usan el sistema de archivos NTFS.
    ///  Ejemplo: 
    ///  255.
    /// </summary>
    property MaximumComponentLength:integer read FMaximumComponentLength write FMaximumComponentLength stored False;
    /// <summary>
    ///  Tama�o m�ximo, en Kbytes, de medios compatibles con este dispositivo. Kbytes se interpreta como el n�mero 
    ///  de bytes multiplicado por 1000 (NO el n�mero de bytes multiplicado por 1024).
    /// </summary>
    property MaxMediaSize:int64 read FMaxMediaSize write FMaxMediaSize stored False;
    /// <summary>
    ///  La propiedad MediaLoaded indica si hay un CD-ROM en la unidad.
    ///  Valores: TRUE o FALSE. Si es TRUE, hay 
    ///  un CD en la unidad.
    /// </summary>
    property MediaLoaded:boolean read FMediaLoaded write FMediaLoaded stored False;
    /// <summary>
    ///  La propiedad MediaType indica el tipo de medio que usa o al que tiene acceso este dispositivo. En esta 
    ///  clase, el valor ser� siempre "CD-ROM".
    /// </summary>
    property MediaType:string read FMediaType write FMediaType stored False;
    /// <summary>
    ///  La propiedad MfrAssignedRevisionLe indica el nivel de revisi�n de firmware asignada por el fabricante 
    ///  de la unidad de CDROM.
    /// </summary>
    property MfrAssignedRevisionLevel:string read FMfrAssignedRevisionLevel write FMfrAssignedRevisionLevel stored False;
    /// <summary>
    ///  Tama�o m�nimo de bloque, en bytes, de los medios a que tiene acceso este dispositivo.
    /// </summary>
    property MinBlockSize:int64 read FMinBlockSize write FMinBlockSize stored False;
    /// <summary>
    ///  Tama�o m�nimo de bloque, en bytes, de los medios a que tiene acceso este dispositivo.
    /// </summary>
    property Name:string read FName write FName stored False;
    /// <summary>
    ///  Tipo booleano indicando que el dispositivo de acceso de medios necesita limpiarse.  La propiedad de matriz 
    ///  de capacidad indica si es posible la limpieza autom�tica o manual. 
    /// </summary>
    property NeedsCleaning:boolean read FNeedsCleaning write FNeedsCleaning stored False;
    /// <summary>
    ///  Cuando el dispositivo de acceso de medios acepta m�ltiples medios individuales, esta propiedad define 
    ///  el n�mero m�ximo que puede ser aceptado o insertado.
    /// </summary>
    property NumberOfMediaSupported:integer read FNumberOfMediaSupported write FNumberOfMediaSupported stored False;
    /// <summary>
    ///  Cuando el dispositivo de acceso de medios acepta m�ltiples medios individuales, esta propiedad define 
    ///  el n�mero m�ximo que puede ser aceptado o insertado.
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
    ///  La propiedad RevisionLevel indica el nivel de revisi�n de firmware de la unidad de CD-ROM Win32.
    /// </summary>
    property RevisionLevel:string read FRevisionLevel write FRevisionLevel stored False;
    /// <summary>
    ///  La propiedad SCSIBus indica el n�mero de bus SCSI de la unidad de disco.
    ///  Ejemplo: 0
    /// </summary>
    property SCSIBus:integer read FSCSIBus write FSCSIBus stored False;
    /// <summary>
    ///  La propiedad SCSILogicalUnit indica el n�mero de unidad l�gica (LUN) SCSI de la unidad de disco. Este 
    ///  n�mero se usa para designar a qu� controladora SCSI se va a tener acceso en un sistema con m�s de un 
    ///  controlador en uso. El id. del dispositivo SCSI es similar, pero constituye la designaci�n en el caso 
    ///  de un controlador con m�ltiples dispositivos.
    ///  Ejemplo: 0
    /// </summary>
    property SCSILogicalUnit:integer read FSCSILogicalUnit write FSCSILogicalUnit stored False;
    /// <summary>
    ///  La propiedad SCSIPort indica el n�mero de puerto SCSI de la unidad de disco.
    ///  Ejemplo: 1
    /// </summary>
    property SCSIPort:integer read FSCSIPort write FSCSIPort stored False;
    /// <summary>
    ///  La propiedad SCSITargetId indica el n�mero de identificador SCSI de la unidad de CD-ROM Win32.
    ///  Ejemplo: 
    ///  0.
    /// </summary>
    property SCSITargetId:integer read FSCSITargetId write FSCSITargetId stored False;
    /// <summary>
    ///  La propiedad Serial number es un n�mero de fabricante asignado para identificar los medios f�sicos.  
    ///  Ejemplo: WD-WM3493798728 para un n�mero de disco de serie.
    /// </summary>
    property SerialNumber:string read FSerialNumber write FSerialNumber stored False;
    /// <summary>
    ///  La propiedad Serial number es un n�mero de fabricante asignado para identificar los medios f�sicos.  
    ///  Ejemplo: WD-WM3493798728 para un n�mero de disco de serie.
    /// </summary>
    property Size:int64 read FSize write FSize stored False;
    /// <summary>
    ///  La propiedad Serial number es un n�mero de fabricante asignado para identificar los medios f�sicos.  
    ///  Ejemplo: WD-WM3493798728 para un n�mero de disco de serie.
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
    ///  La propiedad TransferRate indica la velocidad de transferencia de la unidad de CD-ROM. El valor -1 indica 
    ///  que no se pudo determinar la velocidad. Esto podr�a pasar, por ejemplo, si no hubiera un CD en la un
    ///  idad.
    /// </summary>
    property TransferRate:double read FTransferRate write FTransferRate stored False;
    /// <summary>
    ///  La propiedad VolumeName indica el nombre del volumen de la unidad de CD-ROM Win32.
    /// </summary>
    property VolumeName:string read FVolumeName write FVolumeName stored False;
    /// <summary>
    ///  La propiedad VolumeSerialNumber indica el n�mero de serie del volumen del medio en la unidad de CD-ROM.
    ///  Ejemplo: 
    ///  A8C3-D032
    /// </summary>
    property VolumeSerialNumber:string read FVolumeSerialNumber write FVolumeSerialNumber stored False;
  end;

  {%InterfaceClass WMIClass%}
  /// <summary>
  ///  La clase Win32_CDROMDrive representa una unidad de CD-ROM en Win32_ComputerSystem. 
  ///  Nota: el nombre 
  ///  de la unidad no se corresponde con la letra de unidad l�gica asignada al dispositivo.
  /// </summary>
  TCDROMDriveInfo = class(TWMIBase)
  private
    FCDROMDriveProperties: TCDROMDriveProperties;
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
    // propiedades de la CDROMDrive
    property CDROMDriveProperties:TCDROMDriveProperties read   FCDROMDriveProperties write FCDROMDriveProperties;
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

// Constantes para la propiedad Capabilities
const 
  ENUM_STRING_CAPABILITIES_00 = 'Desconocido';
  ENUM_STRING_CAPABILITIES_01 = 'Otros';
  ENUM_STRING_CAPABILITIES_02 = 'Acceso secuencial';
  ENUM_STRING_CAPABILITIES_03 = 'Acceso aleatorio';
  ENUM_STRING_CAPABILITIES_04 = 'Permite escritura';
  ENUM_STRING_CAPABILITIES_05 = 'Cifrado';
  ENUM_STRING_CAPABILITIES_06 = 'Compresi�n';
  ENUM_STRING_CAPABILITIES_07 = 'Acepta medios extra�bles';
  ENUM_STRING_CAPABILITIES_08 = 'Limpieza manual';
  ENUM_STRING_CAPABILITIES_09 = 'Limpieza autom�tica';
  ENUM_STRING_CAPABILITIES_10 = 'Notificaci�n de SMART';
  ENUM_STRING_CAPABILITIES_11 = 'Acepta medios de doble cara';
  ENUM_STRING_CAPABILITIES_12 = 'No se requiere expulsi�n previa al desmontaje';

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

// Constantes para la propiedad MediaType
const 
  ENUM_STRING_MEDIATYPE_00 = 'Acceso aleatorio';
  ENUM_STRING_MEDIATYPE_01 = 'Permite escritura';
  ENUM_STRING_MEDIATYPE_02 = 'Medios extra�bles';
  ENUM_STRING_MEDIATYPE_03 = 'CD-ROM';

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
procedure TCDROMDriveInfo.ClearProps;
begin
  Self.CDROMDriveProperties.FAvailability := 0;
  Self.CDROMDriveProperties.FCapabilitiesCount := 0;
  Self.CDROMDriveProperties.FCapabilitiesAsString := EmptyStr;
  SetLength(CDROMDriveProperties.FCapabilities, 0);
  Self.CDROMDriveProperties.FCapabilityDescriptionsCount := 0;
  Self.CDROMDriveProperties.FCapabilityDescriptionsAsString := EmptyStr;
  SetLength(CDROMDriveProperties.FCapabilityDescriptions, 0);
  Self.CDROMDriveProperties.FCaption := EmptyStr;
  Self.CDROMDriveProperties.FCompressionMethod := EmptyStr;
  Self.CDROMDriveProperties.FConfigManagerErrorCode := 0;
  Self.CDROMDriveProperties.FConfigManagerUserConfig := False;
  Self.CDROMDriveProperties.FCreationClassName := EmptyStr;
  Self.CDROMDriveProperties.FDefaultBlockSize := 0;
  Self.CDROMDriveProperties.FDescription := EmptyStr;
  Self.CDROMDriveProperties.FDeviceID := EmptyStr;
  Self.CDROMDriveProperties.FDrive := EmptyStr;
  Self.CDROMDriveProperties.FDriveIntegrity := False;
  Self.CDROMDriveProperties.FErrorCleared := False;
  Self.CDROMDriveProperties.FErrorDescription := EmptyStr;
  Self.CDROMDriveProperties.FErrorMethodology := EmptyStr;
  Self.CDROMDriveProperties.FFileSystemFlags := 0;
  Self.CDROMDriveProperties.FFileSystemFlagsEx := 0;
  Self.CDROMDriveProperties.FId := EmptyStr;
  Self.CDROMDriveProperties.FInstallDate := 0;
  Self.CDROMDriveProperties.FLastErrorCode := 0;
  Self.CDROMDriveProperties.FManufacturer := EmptyStr;
  Self.CDROMDriveProperties.FMaxBlockSize := 0;
  Self.CDROMDriveProperties.FMaximumComponentLength := 0;
  Self.CDROMDriveProperties.FMaxMediaSize := 0;
  Self.CDROMDriveProperties.FMediaLoaded := False;
  Self.CDROMDriveProperties.FMediaType := EmptyStr;
  Self.CDROMDriveProperties.FMfrAssignedRevisionLevel := EmptyStr;
  Self.CDROMDriveProperties.FMinBlockSize := 0;
  Self.CDROMDriveProperties.FName := EmptyStr;
  Self.CDROMDriveProperties.FNeedsCleaning := False;
  Self.CDROMDriveProperties.FNumberOfMediaSupported := 0;
  Self.CDROMDriveProperties.FPNPDeviceID := EmptyStr;
  Self.CDROMDriveProperties.FPowerManagementCapabilitiesCount := 0;
  Self.CDROMDriveProperties.FPowerManagementCapabilitiesAsString := EmptyStr;
  SetLength(CDROMDriveProperties.FPowerManagementCapabilities, 0);
  Self.CDROMDriveProperties.FPowerManagementSupported := False;
  Self.CDROMDriveProperties.FRevisionLevel := EmptyStr;
  Self.CDROMDriveProperties.FSCSIBus := 0;
  Self.CDROMDriveProperties.FSCSILogicalUnit := 0;
  Self.CDROMDriveProperties.FSCSIPort := 0;
  Self.CDROMDriveProperties.FSCSITargetId := 0;
  Self.CDROMDriveProperties.FSerialNumber := EmptyStr;
  Self.CDROMDriveProperties.FSize := 0;
  Self.CDROMDriveProperties.FStatus := EmptyStr;
  Self.CDROMDriveProperties.FStatusInfo := 0;
  Self.CDROMDriveProperties.FSystemCreationClassName := EmptyStr;
  Self.CDROMDriveProperties.FSystemName := EmptyStr;
  Self.CDROMDriveProperties.FTransferRate := 0;
  Self.CDROMDriveProperties.FVolumeName := EmptyStr;
  Self.CDROMDriveProperties.FVolumeSerialNumber := EmptyStr;
end;

//: Constructor del componente
constructor TCDROMDriveInfo.Create(AOwner: TComponent);
begin
  inherited;
  Self.FCDROMDriveProperties := TCDROMDriveProperties.Create();
  Self.MSDNHelp := 'https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-cdromdrive';
end;

//: destructor del componente
destructor TCDROMDriveInfo.Destroy();
begin
  // liberar
  FreeAndNil(Self.FCDROMDriveProperties);
  inherited;
end;

//: Obtener la clase
function TCDROMDriveInfo.GetWMIClass(): string;
begin
  Result := 'Win32_CDROMDrive'
end;

//: Obtener Root
function TCDROMDriveInfo.GetWMIRoot(): string;
begin
  Result := '';
end;

//: Procedmiento de activaci�n
procedure TCDROMDriveInfo.SetActive(const Value: Boolean);
begin
  // m�todo heredado
  inherited;
end;

// Acceso a los elementos de la propiedad <Capabilities>
function TCDROMDriveProperties.GetCapabilities(index: integer):integer;
begin
  if (index >= Self.FCapabilitiesCount) then begin
    Index := Self.FCapabilitiesCount - 1;
  end;
  Result := Self.FCapabilities[index];
end;

// Acceso a los elementos de la propiedad <CapabilityDescriptions>
function TCDROMDriveProperties.GetCapabilityDescriptions(index: integer):string;
begin
  if (index >= Self.FCapabilityDescriptionsCount) then begin
    Index := Self.FCapabilityDescriptionsCount - 1;
  end;
  Result := Self.FCapabilityDescriptions[index];
end;

// Acceso a los elementos de la propiedad <PowerManagementCapabilities>
function TCDROMDriveProperties.GetPowerManagementCapabilities(index: integer):integer;
begin
  if (index >= Self.FPowerManagementCapabilitiesCount) then begin
    Index := Self.FPowerManagementCapabilitiesCount - 1;
  end;
  Result := Self.FPowerManagementCapabilities[index];
end;


//: Rellenar las propiedades del componente.
procedure TCDROMDriveInfo.FillProperties(AIndex: integer);
var
  v:     variant;
  vNull: boolean;
  vp:    TCDROMDriveProperties;
begin
  // Llamar al heredado (importante)
  inherited;
  // Rellenar propiedades...
  vp := CDROMDriveProperties;

  GetWMIPropertyValue(Self, 'Availability', v, vNull);
  vp.FAvailability := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Capabilities', v, vNull);
  vp.FCapabilitiesAsString := VariantStrValue(v, vNull);
  StringToArrayInteger(vp.FCapabilitiesAsString, vp.FCapabilities);
  vp.FCapabilitiesCount := Length(vp.FCapabilities);

  GetWMIPropertyValue(Self, 'CapabilityDescriptions', v, vNull);
  vp.FCapabilityDescriptionsAsString := VariantStrValue(v, vNull);
  StringToArrayString(vp.FCapabilityDescriptionsAsString, vp.FCapabilityDescriptions);
  vp.FCapabilityDescriptionsCount := Length(vp.FCapabilityDescriptions);

  GetWMIPropertyValue(Self, 'Caption', v, vNull);
  vp.FCaption := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'CompressionMethod', v, vNull);
  vp.FCompressionMethod := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'ConfigManagerErrorCode', v, vNull);
  vp.FConfigManagerErrorCode := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'ConfigManagerUserConfig', v, vNull);
  vp.FConfigManagerUserConfig := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'CreationClassName', v, vNull);
  vp.FCreationClassName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'DefaultBlockSize', v, vNull);
  vp.FDefaultBlockSize := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Description', v, vNull);
  vp.FDescription := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'DeviceID', v, vNull);
  vp.FDeviceID := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Drive', v, vNull);
  vp.FDrive := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'DriveIntegrity', v, vNull);
  vp.FDriveIntegrity := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'ErrorCleared', v, vNull);
  vp.FErrorCleared := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'ErrorDescription', v, vNull);
  vp.FErrorDescription := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'ErrorMethodology', v, vNull);
  vp.FErrorMethodology := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'FileSystemFlags', v, vNull);
  vp.FFileSystemFlags := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'FileSystemFlagsEx', v, vNull);
  vp.FFileSystemFlagsEx := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Id', v, vNull);
  vp.FId := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'InstallDate', v, vNull);
  vp.FInstallDate := VariantDateTimeValue(v, vNull);

  GetWMIPropertyValue(Self, 'LastErrorCode', v, vNull);
  vp.FLastErrorCode := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Manufacturer', v, vNull);
  vp.FManufacturer := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'MaxBlockSize', v, vNull);
  vp.FMaxBlockSize := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'MaximumComponentLength', v, vNull);
  vp.FMaximumComponentLength := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'MaxMediaSize', v, vNull);
  vp.FMaxMediaSize := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'MediaLoaded', v, vNull);
  vp.FMediaLoaded := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'MediaType', v, vNull);
  vp.FMediaType := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'MfrAssignedRevisionLevel', v, vNull);
  vp.FMfrAssignedRevisionLevel := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'MinBlockSize', v, vNull);
  vp.FMinBlockSize := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Name', v, vNull);
  vp.FName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'NeedsCleaning', v, vNull);
  vp.FNeedsCleaning := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'NumberOfMediaSupported', v, vNull);
  vp.FNumberOfMediaSupported := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'PNPDeviceID', v, vNull);
  vp.FPNPDeviceID := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'PowerManagementCapabilities', v, vNull);
  vp.FPowerManagementCapabilitiesAsString := VariantStrValue(v, vNull);
  StringToArrayInteger(vp.FPowerManagementCapabilitiesAsString, vp.FPowerManagementCapabilities);
  vp.FPowerManagementCapabilitiesCount := Length(vp.FPowerManagementCapabilities);

  GetWMIPropertyValue(Self, 'PowerManagementSupported', v, vNull);
  vp.FPowerManagementSupported := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'RevisionLevel', v, vNull);
  vp.FRevisionLevel := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'SCSIBus', v, vNull);
  vp.FSCSIBus := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'SCSILogicalUnit', v, vNull);
  vp.FSCSILogicalUnit := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'SCSIPort', v, vNull);
  vp.FSCSIPort := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'SCSITargetId', v, vNull);
  vp.FSCSITargetId := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'SerialNumber', v, vNull);
  vp.FSerialNumber := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Size', v, vNull);
  vp.FSize := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Status', v, vNull);
  vp.FStatus := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'StatusInfo', v, vNull);
  vp.FStatusInfo := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'SystemCreationClassName', v, vNull);
  vp.FSystemCreationClassName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'SystemName', v, vNull);
  vp.FSystemName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'TransferRate', v, vNull);
  vp.FTransferRate := VariantDoubleValue(v, vNull);

  GetWMIPropertyValue(Self, 'VolumeName', v, vNull);
  vp.FVolumeName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'VolumeSerialNumber', v, vNull);
  vp.FVolumeSerialNumber := VariantStrValue(v, vNull);
end;


// Obtener la propiedad como string
function TCDROMDriveProperties.GetAllAvailabilityAsString(index:integer):string;
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
function TCDROMDriveProperties.GetAllCapabilitiesAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_CAPABILITIES_00;
    01: Result := ENUM_STRING_CAPABILITIES_01;
    02: Result := ENUM_STRING_CAPABILITIES_02;
    03: Result := ENUM_STRING_CAPABILITIES_03;
    04: Result := ENUM_STRING_CAPABILITIES_04;
    05: Result := ENUM_STRING_CAPABILITIES_05;
    06: Result := ENUM_STRING_CAPABILITIES_06;
    07: Result := ENUM_STRING_CAPABILITIES_07;
    08: Result := ENUM_STRING_CAPABILITIES_08;
    09: Result := ENUM_STRING_CAPABILITIES_09;
    10: Result := ENUM_STRING_CAPABILITIES_10;
    11: Result := ENUM_STRING_CAPABILITIES_11;
    12: Result := ENUM_STRING_CAPABILITIES_12;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TCDROMDriveProperties.GetAllConfigManagerErrorCodeAsString(index:integer):string;
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
function TCDROMDriveProperties.GetAllMediaTypeAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_MEDIATYPE_00;
    01: Result := ENUM_STRING_MEDIATYPE_01;
    02: Result := ENUM_STRING_MEDIATYPE_02;
    03: Result := ENUM_STRING_MEDIATYPE_03;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TCDROMDriveProperties.GetAllPowerManagementCapabilitiesAsString(index:integer):string;
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
function TCDROMDriveProperties.GetAllStatusInfoAsString(index:integer):string;
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
function TCDROMDriveProperties.GetAllAvailabilityCount:integer;
begin
  Result := 21
end;

// Obtener n�m. de elementos de la propiedad como string
function TCDROMDriveProperties.GetAllCapabilitiesCount:integer;
begin
  Result := 13
end;

// Obtener n�m. de elementos de la propiedad como string
function TCDROMDriveProperties.GetAllConfigManagerErrorCodeCount:integer;
begin
  Result := 32
end;

// Obtener n�m. de elementos de la propiedad como string
function TCDROMDriveProperties.GetAllMediaTypeCount:integer;
begin
  Result := 4
end;

// Obtener n�m. de elementos de la propiedad como string
function TCDROMDriveProperties.GetAllPowerManagementCapabilitiesCount:integer;
begin
  Result := 8
end;

// Obtener n�m. de elementos de la propiedad como string
function TCDROMDriveProperties.GetAllStatusInfoCount:integer;
begin
  Result := 5
end;


end.
