{
TNetworkAdapterInfo Component Version 3.1 - Suite GLibWMI
Copyright (�) 2020,  by Germ�n Est�vez (Neftal�)

La clase Win32_NetworkAdapter representa un adaptador de red en un sistema Win32.


Utilizaci�n/Usage:
(ES) Basta con "soltar" el componente y activarlo.
(EN) Place the component in the form and active it.

MSDN Info:
https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-networkadapter

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
unit CNetworkAdapterInfo;

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
  TNetworkAdapterProperties = class(TPersistent)
  private
    {%PrivateClassVars PropertiesClass%}
    FAdapterType:string;
    FAdapterTypeId:integer;
    FAutoSense:boolean;
    FAvailability:integer;
    FCaption:string;
    FConfigManagerErrorCode:integer;
    FConfigManagerUserConfig:boolean;
    FCreationClassName:string;
    FDescription:string;
    FDeviceID:string;
    FErrorCleared:boolean;
    FErrorDescription:string;
    FGUID:string;
    FIndex:integer;
    FInstallDate:TDatetime;
    FInstalled:boolean;
    FInterfaceIndex:integer;
    FLastErrorCode:integer;
    FMACAddress:string;
    FManufacturer:string;
    FMaxNumberControlled:integer;
    FMaxSpeed:int64;
    FName:string;
    FNetConnectionID:string;
    FNetConnectionStatus:integer;
    FNetEnabled:boolean;
    FNetworkAddresses:TArrString;
    FNetworkAddressesCount:integer;
    FNetworkAddressesAsString:string;    FPermanentAddress:string;
    FPhysicalAdapter:boolean;
    FPNPDeviceID:string;
    FPowerManagementCapabilities:TArrInteger;
    FPowerManagementCapabilitiesCount:integer;
    FPowerManagementCapabilitiesAsString:string;    FPowerManagementSupported:boolean;
    FProductName:string;
    FServiceName:string;
    FSpeed:int64;
    FStatus:string;
    FStatusInfo:integer;
    FSystemCreationClassName:string;
    FSystemName:string;
    FTimeOfLastReset:TDatetime;

  private
    {%PrivateGetMethods PropertiesClass%}
    function GetNetworkAddresses(index: integer):string;
    function GetPowerManagementCapabilities(index: integer):integer;

  public
    {%PublicGetMethods PropertiesClass%}
    // Obtener la propiedad <AdapterType> como string
    function GetAllAdapterTypeAsString(index:integer):string;
    // Obtener el n�mero de elementos disponibles de la propiedad <AdapterType>
    function GetAllAdapterTypeCount:integer;
    // Obtener la propiedad <AdapterTypeId> como string
    function GetAllAdapterTypeIdAsString(index:integer):string;
    // Obtener el n�mero de elementos disponibles de la propiedad <AdapterTypeId>
    function GetAllAdapterTypeIdCount:integer;
    // Obtener la propiedad <Availability> como string
    function GetAllAvailabilityAsString(index:integer):string;
    // Obtener el n�mero de elementos disponibles de la propiedad <Availability>
    function GetAllAvailabilityCount:integer;
    // Obtener la propiedad <ConfigManagerErrorCode> como string
    function GetAllConfigManagerErrorCodeAsString(index:integer):string;
    // Obtener el n�mero de elementos disponibles de la propiedad <ConfigManagerErrorCode>
    function GetAllConfigManagerErrorCodeCount:integer;
    // Obtener la propiedad <NetConnectionStatus> como string
    function GetAllNetConnectionStatusAsString(index:integer):string;
    // Obtener el n�mero de elementos disponibles de la propiedad <NetConnectionStatus>
    function GetAllNetConnectionStatusCount:integer;
    // Obtener la propiedad <PowerManagementCapabilities> como string
    function GetAllPowerManagementCapabilitiesAsString(index:integer):string;
    // Obtener el n�mero de elementos disponibles de la propiedad <PowerManagementCapabilities>
    function GetAllPowerManagementCapabilitiesCount:integer;
    // Obtener la propiedad <StatusInfo> como string
    function GetAllStatusInfoAsString(index:integer):string;
    // Obtener el n�mero de elementos disponibles de la propiedad <StatusInfo>
    function GetAllStatusInfoCount:integer;

    {%PublicArrayMethods PropertiesClass%}
    property NetworkAddresses[index:integer]:string read GetNetworkAddresses;
    property NetworkAddressesCount:integer read FNetworkAddressesCount stored False;
    property PowerManagementCapabilities[index:integer]:integer read GetPowerManagementCapabilities;
    property PowerManagementCapabilitiesCount:integer read FPowerManagementCapabilitiesCount stored False;

  published
    {%PublishedProperties PropertiesClass%}
    /// <summary>
    ///  La propiedad AdapterType refleja el medio de red que que usa. Es posible que esta propiedad no sea aplicable 
    ///  para todos los tipos de adaptadores de red en esta clase. S�lo Windows NT.
    /// </summary>
    property AdapterType:string read FAdapterType write FAdapterType stored False;
    /// <summary>
    ///  La propiedad AdapterTypeId refleja el medio de red en uso. Esta propiedad da la misma informaci�n que 
    ///  la propiedad AdapterType, excepto que la informaci�n se devuelve en la forma de un valor entero que corresponde 
    ///  a lo siguiente: 
    ///  0 - Ethernet 802.3
    ///  1 - Token Ring 802.5
    ///  2 - Fiber Distributed Data Interface (FDDI)
    ///  3 
    ///  - Wide Area Network (WAN)
    ///  4 - LocalTalk
    ///  5 - Ethernet usando el formato de encabezado DIX
    ///  6 - ARCNET
    ///  7 
    ///  - ARCNET (878.2)
    ///  8 - ATM
    ///  9 - Wireless
    ///  10 - Infrared Wireless
    ///  11 - Bpc
    ///  12 - CoWan
    ///  13 - 1394
    ///  Esta propiedad 
    ///  puede ser no aplicable a todos los tipos de adaptadores de red listados dentro de esta clase. S�lo Windows 
    ///  NT.
    /// </summary>
    property AdapterTypeId:integer read FAdapterTypeId write FAdapterTypeId stored False;
    /// <summary>
    ///  Un valor booleano que indica si el adaptador de red puede determinar autom�ticamente la velocidad u otras 
    ///  caracter�sticas de comunicaciones del medio de red adjuntado.
    /// </summary>
    property AutoSense:boolean read FAutoSense write FAutoSense stored False;
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
    ///  La propiedad DeviceID contiene una cadena que identifica de forma �nica el adaptador de red con respecto 
    ///  a otros dispositivos del sistema.
    /// </summary>
    property DeviceID:string read FDeviceID write FDeviceID stored False;
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
    ///  ErrorDescription es una cadena de forma libre que ofrece m�s informaci�n acerca del error registrado 
    ///  en la propiedad LastErrorCode e informaci�n acerca de cualquier acci�n correctiva que se pueda tomar
    ///  .
    /// </summary>
    property GUID:string read FGUID write FGUID stored False;
    /// <summary>
    ///  La propiedad Index indica el n�mero de �ndice del adaptador de red, que se almacena en el Registro del 
    ///  sistema. 
    ///  Ejemplo: 0.
    /// </summary>
    property Index:integer read FIndex write FIndex stored False;
    /// <summary>
    ///  La propiedad Index indica el n�mero de �ndice del adaptador de red, que se almacena en el Registro del 
    ///  sistema. 
    ///  Ejemplo: 0.
    /// </summary>
    property InstallDate:TDatetime read FInstallDate write FInstallDate stored False;
    /// <summary>
    ///  La propiedad Installed determina si el adaptador de red est� instalado en el sistema.
    ///  Valores: TRUE o 
    ///  FALSE. Un valor TRUE indica si el adaptador de red est� instalado.  
    ///  La propiedad Installed qued� obsoleta. 
    ///  No hay valor de reemplazo y esta propiedad se considera ahora obsoleta.
    /// </summary>
    property Installed:boolean read FInstalled write FInstalled stored False;
    /// <summary>
    ///  La propiedad InterfaceIndex contiene el valor del �ndice que identifica de forma �nica a la interfaz 
    ///  local.
    /// </summary>
    property InterfaceIndex:integer read FInterfaceIndex write FInterfaceIndex stored False;
    /// <summary>
    ///  LastErrorCode captura el �ltimo c�digo de error informado por el dispositivo l�gico.
    /// </summary>
    property LastErrorCode:integer read FLastErrorCode write FLastErrorCode stored False;
    /// <summary>
    ///  La propiedad MACAddress indica la direcci�n de Media Access Control (MAC) para este adaptador de red. 
    ///  Una direcci�n MAC es un n�mero �nico de 48 bits asignado al adaptador de red por el fabricante. Identifica 
    ///  de forma �nica este adaptador de red y se usa en la asignaci�n de comunicaciones de red TCP/IP.
    /// </summary>
    property MACAddress:string read FMACAddress write FMACAddress stored False;
    /// <summary>
    ///  La propiedad Manufacturer indica el nombre del fabricante del adaptador de red.
    ///  Ejemplo: 3COM.
    /// </summary>
    property Manufacturer:string read FManufacturer write FManufacturer stored False;
    /// <summary>
    ///  La propiedad MaxNumberControlled indica el n�mero m�ximo de los puertos directamente direccionables admitidos 
    ///  por este adaptador de red. Se debe usar el valor cero si se desconoce el n�mero.
    /// </summary>
    property MaxNumberControlled:integer read FMaxNumberControlled write FMaxNumberControlled stored False;
    /// <summary>
    ///  La propiedad MaxNumberControlled indica el n�mero m�ximo de los puertos directamente direccionables admitidos 
    ///  por este adaptador de red. Se debe usar el valor cero si se desconoce el n�mero.
    /// </summary>
    property MaxSpeed:int64 read FMaxSpeed write FMaxSpeed stored False;
    /// <summary>
    ///  La propiedad MaxNumberControlled indica el n�mero m�ximo de los puertos directamente direccionables admitidos 
    ///  por este adaptador de red. Se debe usar el valor cero si se desconoce el n�mero.
    /// </summary>
    property Name:string read FName write FName stored False;
    /// <summary>
    ///  La propiedad NetConnectionID especifica el nombre de conexi�n de red tal como aparece en la carpeta "Conexiones 
    ///  de red".
    /// </summary>
    property NetConnectionID:string read FNetConnectionID write FNetConnectionID stored False;
    /// <summary>
    ///  NetConnectionStatus es una cadena que indica el estado de la conexi�n del adaptador de red a la red. 
    ///  El valor de la propiedad se interpreta de la siguiente manera:
    ///  0 - Desconectado
    ///  1 - Conectar
    ///  2 - Conectado
    ///  3 
    ///  - Desconectar
    ///  4 - Hardware no presente
    ///  5 - Hardware deshabilitado
    ///  6 - Hardware con mal funcionamiento
    ///  7 
    ///  - Medios desconectados
    ///  8 - Autenticaci�n
    ///  9 - Autenticaci�n correcta
    ///  10 - Error en la autenticaci�n
    ///  11 
    ///  - Direcci�n no v�lida
    ///  12 - Credenciales necesarias
    ///  .. - Otros - Para valores enteros distintos de los 
    ///  listados m�s arriba, consulte la documentaci�n de errores de Win32.
    /// </summary>
    property NetConnectionStatus:integer read FNetConnectionStatus write FNetConnectionStatus stored False;
    /// <summary>
    ///  NetConnectionStatus es una cadena que indica el estado de la conexi�n del adaptador de red a la red. 
    ///  El valor de la propiedad se interpreta de la siguiente manera:
    ///  0 - Desconectado
    ///  1 - Conectar
    ///  2 - Conectado
    ///  3 
    ///  - Desconectar
    ///  4 - Hardware no presente
    ///  5 - Hardware deshabilitado
    ///  6 - Hardware con mal funcionamiento
    ///  7 
    ///  - Medios desconectados
    ///  8 - Autenticaci�n
    ///  9 - Autenticaci�n correcta
    ///  10 - Error en la autenticaci�n
    ///  11 
    ///  - Direcci�n no v�lida
    ///  12 - Credenciales necesarias
    ///  .. - Otros - Para valores enteros distintos de los 
    ///  listados m�s arriba, consulte la documentaci�n de errores de Win32.
    /// </summary>
    property NetEnabled:boolean read FNetEnabled write FNetEnabled stored False;
    /// <summary>
    ///  NetConnectionStatus es una cadena que indica el estado de la conexi�n del adaptador de red a la red. 
    ///  El valor de la propiedad se interpreta de la siguiente manera:
    ///  0 - Desconectado
    ///  1 - Conectar
    ///  2 - Conectado
    ///  3 
    ///  - Desconectar
    ///  4 - Hardware no presente
    ///  5 - Hardware deshabilitado
    ///  6 - Hardware con mal funcionamiento
    ///  7 
    ///  - Medios desconectados
    ///  8 - Autenticaci�n
    ///  9 - Autenticaci�n correcta
    ///  10 - Error en la autenticaci�n
    ///  11 
    ///  - Direcci�n no v�lida
    ///  12 - Credenciales necesarias
    ///  .. - Otros - Para valores enteros distintos de los 
    ///  listados m�s arriba, consulte la documentaci�n de errores de Win32.
    /// </summary>
    property NetworkAddressesAsString:string read FNetworkAddressesAsString write FNetworkAddressesAsString stored False;
    /// <summary>
    ///  PermanentAddress define la direcci�n de red dentro del c�digo en un adaptador. Esta direcci�n "dentro 
    ///  del c�digo" puede ser cambiada  v�a actualizaci�n firmware o configuraci�n de software. Si es as�, este 
    ///  campo debe ser actualizado cuando se haga el cambio. PermanentAddress debe dejarse en blanco si no existe 
    ///  direcci�n "dentro del c�digo" en el adaptador de red.
    /// </summary>
    property PermanentAddress:string read FPermanentAddress write FPermanentAddress stored False;
    /// <summary>
    ///  La propiedad PhysicalAdapter especifica si se trata de un adaptador f�sico o l�gico.
    /// </summary>
    property PhysicalAdapter:boolean read FPhysicalAdapter write FPhysicalAdapter stored False;
    /// <summary>
    ///  La propiedad PhysicalAdapter especifica si se trata de un adaptador f�sico o l�gico.
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
    ///  La propiedad ProductName indica el nombre del producto del adaptador de red.
    ///  Ejemplo: Fast EtherLink 
    ///  XL
    /// </summary>
    property ProductName:string read FProductName write FProductName stored False;
    /// <summary>
    ///  La propiedad ServiceName indica el nombre de servicio del adaptador de red. Este nombre suele ser m�s 
    ///  corto que el nombre completo del producto. 
    ///  Ejemplo: Elnkii.
    /// </summary>
    property ServiceName:string read FServiceName write FServiceName stored False;
    /// <summary>
    ///  Un estimado del ancho de banda actual en bits por segundo. Para extremos que var�an en ancho de banda 
    ///  o para aquellos donde no se puede estimar correctamente, esta propiedad debe contener el ancho de banda 
    ///  nominal.
    /// </summary>
    property Speed:int64 read FSpeed write FSpeed stored False;
    /// <summary>
    ///  Un estimado del ancho de banda actual en bits por segundo. Para extremos que var�an en ancho de banda 
    ///  o para aquellos donde no se puede estimar correctamente, esta propiedad debe contener el ancho de banda 
    ///  nominal.
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
    ///  La propiedad TimeOfLastReset indica cu�ndo se restableci� por �ltima vez el adaptador de red.
    /// </summary>
    property TimeOfLastReset:TDatetime read FTimeOfLastReset write FTimeOfLastReset stored False;
  end;

  {%InterfaceClass WMIClass%}
  /// <summary>
  ///  La clase Win32_NetworkAdapter representa un adaptador de red en un sistema Win32.
  /// </summary>
  TNetworkAdapterInfo = class(TWMIBase)
  private
    FNetworkAdapterProperties: TNetworkAdapterProperties;
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
    // propiedades de la NetworkAdapter
    property NetworkAdapterProperties:TNetworkAdapterProperties read   FNetworkAdapterProperties write FNetworkAdapterProperties;
  end;


// Constantes para la propiedad AdapterType
const 
  ENUM_STRING_ADAPTERTYPE_00 = 'Ethernet 802.3';
  ENUM_STRING_ADAPTERTYPE_01 = 'Token Ring 802.5';
  ENUM_STRING_ADAPTERTYPE_02 = 'Interfaz de datos de distribuci�n por fibra (FDDI)';
  ENUM_STRING_ADAPTERTYPE_03 = 'Red de �rea extensa (WAN)';
  ENUM_STRING_ADAPTERTYPE_04 = 'LocalTalk';
  ENUM_STRING_ADAPTERTYPE_05 = 'Ethernet usando el formato DIX de encabezado';
  ENUM_STRING_ADAPTERTYPE_06 = 'ARCNET';
  ENUM_STRING_ADAPTERTYPE_07 = 'ARCNET (878.2)';
  ENUM_STRING_ADAPTERTYPE_08 = 'ATM';
  ENUM_STRING_ADAPTERTYPE_09 = 'Inal�mbrico';
  ENUM_STRING_ADAPTERTYPE_10 = 'Inal�mbrico de infrarrojos';
  ENUM_STRING_ADAPTERTYPE_11 = 'Bpc';
  ENUM_STRING_ADAPTERTYPE_12 = 'CoWan';
  ENUM_STRING_ADAPTERTYPE_13 = '1394';

// Constantes para la propiedad AdapterTypeId
const 
  ENUM_STRING_ADAPTERTYPEID_00 = 'Ethernet 802.3';
  ENUM_STRING_ADAPTERTYPEID_01 = 'Token Ring 802.5';
  ENUM_STRING_ADAPTERTYPEID_02 = 'Interfaz de datos de distribuci�n por fibra (FDDI)';
  ENUM_STRING_ADAPTERTYPEID_03 = 'Red de �rea extensa (WAN)';
  ENUM_STRING_ADAPTERTYPEID_04 = 'LocalTalk';
  ENUM_STRING_ADAPTERTYPEID_05 = 'Ethernet usando el formato DIX de encabezado';
  ENUM_STRING_ADAPTERTYPEID_06 = 'ARCNET';
  ENUM_STRING_ADAPTERTYPEID_07 = 'ARCNET (878.2)';
  ENUM_STRING_ADAPTERTYPEID_08 = 'ATM';
  ENUM_STRING_ADAPTERTYPEID_09 = 'Inal�mbrico';
  ENUM_STRING_ADAPTERTYPEID_10 = 'Inal�mbrico de infrarrojos';
  ENUM_STRING_ADAPTERTYPEID_11 = 'Bpc';
  ENUM_STRING_ADAPTERTYPEID_12 = 'CoWan';
  ENUM_STRING_ADAPTERTYPEID_13 = '1394';

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

// Constantes para la propiedad NetConnectionStatus
const 
  ENUM_STRING_NETCONNECTIONSTATUS_00 = 'Desconectado';
  ENUM_STRING_NETCONNECTIONSTATUS_01 = 'Conectando';
  ENUM_STRING_NETCONNECTIONSTATUS_02 = 'Conectado';
  ENUM_STRING_NETCONNECTIONSTATUS_03 = 'Desconectando';
  ENUM_STRING_NETCONNECTIONSTATUS_04 = 'Hardware ausente';
  ENUM_STRING_NETCONNECTIONSTATUS_05 = 'Hardware deshabilitado';
  ENUM_STRING_NETCONNECTIONSTATUS_06 = 'Error de funcionamiento del hardware';
  ENUM_STRING_NETCONNECTIONSTATUS_07 = 'Medios desconectados';
  ENUM_STRING_NETCONNECTIONSTATUS_08 = 'Autenticando';
  ENUM_STRING_NETCONNECTIONSTATUS_09 = 'Autenticaci�n correcta';
  ENUM_STRING_NETCONNECTIONSTATUS_10 = 'Error de autenticaci�n';
  ENUM_STRING_NETCONNECTIONSTATUS_11 = 'Direcci�n no v�lida';
  ENUM_STRING_NETCONNECTIONSTATUS_12 = 'Credenciales necesarias';
  ENUM_STRING_NETCONNECTIONSTATUS_13 = 'Otros';

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
procedure TNetworkAdapterInfo.ClearProps;
begin
  Self.NetworkAdapterProperties.FAdapterType := EmptyStr;
  Self.NetworkAdapterProperties.FAdapterTypeId := 0;
  Self.NetworkAdapterProperties.FAutoSense := False;
  Self.NetworkAdapterProperties.FAvailability := 0;
  Self.NetworkAdapterProperties.FCaption := EmptyStr;
  Self.NetworkAdapterProperties.FConfigManagerErrorCode := 0;
  Self.NetworkAdapterProperties.FConfigManagerUserConfig := False;
  Self.NetworkAdapterProperties.FCreationClassName := EmptyStr;
  Self.NetworkAdapterProperties.FDescription := EmptyStr;
  Self.NetworkAdapterProperties.FDeviceID := EmptyStr;
  Self.NetworkAdapterProperties.FErrorCleared := False;
  Self.NetworkAdapterProperties.FErrorDescription := EmptyStr;
  Self.NetworkAdapterProperties.FGUID := EmptyStr;
  Self.NetworkAdapterProperties.FIndex := 0;
  Self.NetworkAdapterProperties.FInstallDate := 0;
  Self.NetworkAdapterProperties.FInstalled := False;
  Self.NetworkAdapterProperties.FInterfaceIndex := 0;
  Self.NetworkAdapterProperties.FLastErrorCode := 0;
  Self.NetworkAdapterProperties.FMACAddress := EmptyStr;
  Self.NetworkAdapterProperties.FManufacturer := EmptyStr;
  Self.NetworkAdapterProperties.FMaxNumberControlled := 0;
  Self.NetworkAdapterProperties.FMaxSpeed := 0;
  Self.NetworkAdapterProperties.FName := EmptyStr;
  Self.NetworkAdapterProperties.FNetConnectionID := EmptyStr;
  Self.NetworkAdapterProperties.FNetConnectionStatus := 0;
  Self.NetworkAdapterProperties.FNetEnabled := False;
  Self.NetworkAdapterProperties.FNetworkAddressesCount := 0;
  Self.NetworkAdapterProperties.FNetworkAddressesAsString := EmptyStr;
  SetLength(NetworkAdapterProperties.FNetworkAddresses, 0);
  Self.NetworkAdapterProperties.FPermanentAddress := EmptyStr;
  Self.NetworkAdapterProperties.FPhysicalAdapter := False;
  Self.NetworkAdapterProperties.FPNPDeviceID := EmptyStr;
  Self.NetworkAdapterProperties.FPowerManagementCapabilitiesCount := 0;
  Self.NetworkAdapterProperties.FPowerManagementCapabilitiesAsString := EmptyStr;
  SetLength(NetworkAdapterProperties.FPowerManagementCapabilities, 0);
  Self.NetworkAdapterProperties.FPowerManagementSupported := False;
  Self.NetworkAdapterProperties.FProductName := EmptyStr;
  Self.NetworkAdapterProperties.FServiceName := EmptyStr;
  Self.NetworkAdapterProperties.FSpeed := 0;
  Self.NetworkAdapterProperties.FStatus := EmptyStr;
  Self.NetworkAdapterProperties.FStatusInfo := 0;
  Self.NetworkAdapterProperties.FSystemCreationClassName := EmptyStr;
  Self.NetworkAdapterProperties.FSystemName := EmptyStr;
  Self.NetworkAdapterProperties.FTimeOfLastReset := 0;
end;

//: Constructor del componente
constructor TNetworkAdapterInfo.Create(AOwner: TComponent);
begin
  inherited;
  Self.FNetworkAdapterProperties := TNetworkAdapterProperties.Create();
  Self.MSDNHelp := 'https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-networkadapter';
end;

//: destructor del componente
destructor TNetworkAdapterInfo.Destroy();
begin
  // liberar
  FreeAndNil(Self.FNetworkAdapterProperties);
  inherited;
end;

//: Obtener la clase
function TNetworkAdapterInfo.GetWMIClass(): string;
begin
  Result := 'Win32_NetworkAdapter'
end;

//: Obtener Root
function TNetworkAdapterInfo.GetWMIRoot(): string;
begin
  Result := '';
end;

//: Procedmiento de activaci�n
procedure TNetworkAdapterInfo.SetActive(const Value: Boolean);
begin
  // m�todo heredado
  inherited;
end;

// Acceso a los elementos de la propiedad <NetworkAddresses>
function TNetworkAdapterProperties.GetNetworkAddresses(index: integer):string;
begin
  if (index >= Self.FNetworkAddressesCount) then begin
    Index := Self.FNetworkAddressesCount - 1;
  end;
  Result := Self.FNetworkAddresses[index];
end;

// Acceso a los elementos de la propiedad <PowerManagementCapabilities>
function TNetworkAdapterProperties.GetPowerManagementCapabilities(index: integer):integer;
begin
  if (index >= Self.FPowerManagementCapabilitiesCount) then begin
    Index := Self.FPowerManagementCapabilitiesCount - 1;
  end;
  Result := Self.FPowerManagementCapabilities[index];
end;


//: Rellenar las propiedades del componente.
procedure TNetworkAdapterInfo.FillProperties(AIndex: integer);
var
  v:     variant;
  vNull: boolean;
  vp:    TNetworkAdapterProperties;
begin
  // Llamar al heredado (importante)
  inherited;
  // Rellenar propiedades...
  vp := NetworkAdapterProperties;

  GetWMIPropertyValue(Self, 'AdapterType', v, vNull);
  vp.FAdapterType := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'AdapterTypeId', v, vNull);
  vp.FAdapterTypeId := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'AutoSense', v, vNull);
  vp.FAutoSense := VariantBooleanValue(v, vNull);

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

  GetWMIPropertyValue(Self, 'GUID', v, vNull);
  vp.FGUID := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Index', v, vNull);
  vp.FIndex := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'InstallDate', v, vNull);
  vp.FInstallDate := VariantDateTimeValue(v, vNull);

  GetWMIPropertyValue(Self, 'Installed', v, vNull);
  vp.FInstalled := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'InterfaceIndex', v, vNull);
  vp.FInterfaceIndex := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'LastErrorCode', v, vNull);
  vp.FLastErrorCode := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'MACAddress', v, vNull);
  vp.FMACAddress := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Manufacturer', v, vNull);
  vp.FManufacturer := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'MaxNumberControlled', v, vNull);
  vp.FMaxNumberControlled := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'MaxSpeed', v, vNull);
  vp.FMaxSpeed := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Name', v, vNull);
  vp.FName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'NetConnectionID', v, vNull);
  vp.FNetConnectionID := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'NetConnectionStatus', v, vNull);
  vp.FNetConnectionStatus := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'NetEnabled', v, vNull);
  vp.FNetEnabled := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'NetworkAddresses', v, vNull);
  vp.FNetworkAddressesAsString := VariantStrValue(v, vNull);
  StringToArrayString(vp.FNetworkAddressesAsString, vp.FNetworkAddresses);
  vp.FNetworkAddressesCount := Length(vp.FNetworkAddresses);

  GetWMIPropertyValue(Self, 'PermanentAddress', v, vNull);
  vp.FPermanentAddress := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'PhysicalAdapter', v, vNull);
  vp.FPhysicalAdapter := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'PNPDeviceID', v, vNull);
  vp.FPNPDeviceID := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'PowerManagementCapabilities', v, vNull);
  vp.FPowerManagementCapabilitiesAsString := VariantStrValue(v, vNull);
  StringToArrayInteger(vp.FPowerManagementCapabilitiesAsString, vp.FPowerManagementCapabilities);
  vp.FPowerManagementCapabilitiesCount := Length(vp.FPowerManagementCapabilities);

  GetWMIPropertyValue(Self, 'PowerManagementSupported', v, vNull);
  vp.FPowerManagementSupported := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'ProductName', v, vNull);
  vp.FProductName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'ServiceName', v, vNull);
  vp.FServiceName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Speed', v, vNull);
  vp.FSpeed := VariantIntegerValue(v, vNull);

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
function TNetworkAdapterProperties.GetAllAdapterTypeAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_ADAPTERTYPE_00;
    01: Result := ENUM_STRING_ADAPTERTYPE_01;
    02: Result := ENUM_STRING_ADAPTERTYPE_02;
    03: Result := ENUM_STRING_ADAPTERTYPE_03;
    04: Result := ENUM_STRING_ADAPTERTYPE_04;
    05: Result := ENUM_STRING_ADAPTERTYPE_05;
    06: Result := ENUM_STRING_ADAPTERTYPE_06;
    07: Result := ENUM_STRING_ADAPTERTYPE_07;
    08: Result := ENUM_STRING_ADAPTERTYPE_08;
    09: Result := ENUM_STRING_ADAPTERTYPE_09;
    10: Result := ENUM_STRING_ADAPTERTYPE_10;
    11: Result := ENUM_STRING_ADAPTERTYPE_11;
    12: Result := ENUM_STRING_ADAPTERTYPE_12;
    13: Result := ENUM_STRING_ADAPTERTYPE_13;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TNetworkAdapterProperties.GetAllAdapterTypeIdAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_ADAPTERTYPEID_00;
    01: Result := ENUM_STRING_ADAPTERTYPEID_01;
    02: Result := ENUM_STRING_ADAPTERTYPEID_02;
    03: Result := ENUM_STRING_ADAPTERTYPEID_03;
    04: Result := ENUM_STRING_ADAPTERTYPEID_04;
    05: Result := ENUM_STRING_ADAPTERTYPEID_05;
    06: Result := ENUM_STRING_ADAPTERTYPEID_06;
    07: Result := ENUM_STRING_ADAPTERTYPEID_07;
    08: Result := ENUM_STRING_ADAPTERTYPEID_08;
    09: Result := ENUM_STRING_ADAPTERTYPEID_09;
    10: Result := ENUM_STRING_ADAPTERTYPEID_10;
    11: Result := ENUM_STRING_ADAPTERTYPEID_11;
    12: Result := ENUM_STRING_ADAPTERTYPEID_12;
    13: Result := ENUM_STRING_ADAPTERTYPEID_13;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TNetworkAdapterProperties.GetAllAvailabilityAsString(index:integer):string;
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
function TNetworkAdapterProperties.GetAllConfigManagerErrorCodeAsString(index:integer):string;
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
function TNetworkAdapterProperties.GetAllNetConnectionStatusAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_NETCONNECTIONSTATUS_00;
    01: Result := ENUM_STRING_NETCONNECTIONSTATUS_01;
    02: Result := ENUM_STRING_NETCONNECTIONSTATUS_02;
    03: Result := ENUM_STRING_NETCONNECTIONSTATUS_03;
    04: Result := ENUM_STRING_NETCONNECTIONSTATUS_04;
    05: Result := ENUM_STRING_NETCONNECTIONSTATUS_05;
    06: Result := ENUM_STRING_NETCONNECTIONSTATUS_06;
    07: Result := ENUM_STRING_NETCONNECTIONSTATUS_07;
    08: Result := ENUM_STRING_NETCONNECTIONSTATUS_08;
    09: Result := ENUM_STRING_NETCONNECTIONSTATUS_09;
    10: Result := ENUM_STRING_NETCONNECTIONSTATUS_10;
    11: Result := ENUM_STRING_NETCONNECTIONSTATUS_11;
    12: Result := ENUM_STRING_NETCONNECTIONSTATUS_12;
    13: Result := ENUM_STRING_NETCONNECTIONSTATUS_13;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TNetworkAdapterProperties.GetAllPowerManagementCapabilitiesAsString(index:integer):string;
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
function TNetworkAdapterProperties.GetAllStatusInfoAsString(index:integer):string;
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
function TNetworkAdapterProperties.GetAllAdapterTypeCount:integer;
begin
  Result := 14
end;

// Obtener n�m. de elementos de la propiedad como string
function TNetworkAdapterProperties.GetAllAdapterTypeIdCount:integer;
begin
  Result := 14
end;

// Obtener n�m. de elementos de la propiedad como string
function TNetworkAdapterProperties.GetAllAvailabilityCount:integer;
begin
  Result := 21
end;

// Obtener n�m. de elementos de la propiedad como string
function TNetworkAdapterProperties.GetAllConfigManagerErrorCodeCount:integer;
begin
  Result := 32
end;

// Obtener n�m. de elementos de la propiedad como string
function TNetworkAdapterProperties.GetAllNetConnectionStatusCount:integer;
begin
  Result := 14
end;

// Obtener n�m. de elementos de la propiedad como string
function TNetworkAdapterProperties.GetAllPowerManagementCapabilitiesCount:integer;
begin
  Result := 8
end;

// Obtener n�m. de elementos de la propiedad como string
function TNetworkAdapterProperties.GetAllStatusInfoCount:integer;
begin
  Result := 5
end;


end.
