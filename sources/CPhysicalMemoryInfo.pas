{
TPhysicalMemoryInfo Component Version 3.0 - Suite GLibWMI
Copyright (�) 2020,  by Germ�n Est�vez (Neftal�)

La clase Win32_PhysicalMemory representa un dispositivo de memoria f�sica que se encuentra en un sistema 
como disponible para el sistema operativo.


Utilizaci�n/Usage:
(ES) Basta con "soltar" el componente y activarlo.
(EN) Place the component in the form and active it.

MSDN Info:
https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-physicalmemory

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
unit CPhysicalMemoryInfo;

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
  TPhysicalMemoryProperties = class(TPersistent)
  private
    {%PrivateClassVars PropertiesClass%}
    FAttributes:integer;
    FBankLabel:string;
    FCapacity:int64;
    FCaption:string;
    FConfiguredClockSpeed:integer;
    FConfiguredVoltage:integer;
    FCreationClassName:string;
    FDataWidth:integer;
    FDescription:string;
    FDeviceLocator:string;
    FFormFactor:integer;
    FHotSwappable:boolean;
    FInstallDate:TDatetime;
    FInterleaveDataDepth:integer;
    FInterleavePosition:integer;
    FManufacturer:string;
    FMaxVoltage:integer;
    FMemoryType:integer;
    FMinVoltage:integer;
    FModel:string;
    FName:string;
    FOtherIdentifyingInfo:string;
    FPartNumber:string;
    FPositionInRow:integer;
    FPoweredOn:boolean;
    FRemovable:boolean;
    FReplaceable:boolean;
    FSerialNumber:string;
    FSKU:string;
    FSMBIOSMemoryType:integer;
    FSpeed:integer;
    FStatus:string;
    FTag:string;
    FTotalWidth:integer;
    FTypeDetail:integer;
    FVersion:string;

  private
    {%PrivateGetMethods PropertiesClass%}

  public
    {%PublicGetMethods PropertiesClass%}
    // Obtener la propiedad <FormFactor> como string
    function GetAllFormFactorAsString(index:integer):string;
    // Obtener el n�mero de elementos disponibles de la propiedad <FormFactor>
    function GetAllFormFactorCount:integer;
    // Obtener la propiedad <MemoryType> como string
    function GetAllMemoryTypeAsString(index:integer):string;
    // Obtener el n�mero de elementos disponibles de la propiedad <MemoryType>
    function GetAllMemoryTypeCount:integer;

    {%PublicArrayMethods PropertiesClass%}

  published
    {%PublishedProperties PropertiesClass%}
    /// <summary>
    /// </summary>
    property Attributes:integer read FAttributes write FAttributes stored False;
    /// <summary>
    ///  Una cadena que identifica el banco etiquetado f�sicamente donde se encuentra la memoria; por ejemplo, 
    ///  'Banco 0' o 'Banco A'.
    /// </summary>
    property BankLabel:string read FBankLabel write FBankLabel stored False;
    /// <summary>
    ///  Una cadena que identifica el banco etiquetado f�sicamente donde se encuentra la memoria; por ejemplo, 
    ///  'Banco 0' o 'Banco A'.
    /// </summary>
    property Capacity:int64 read FCapacity write FCapacity stored False;
    /// <summary>
    ///  Una cadena que identifica el banco etiquetado f�sicamente donde se encuentra la memoria; por ejemplo, 
    ///  'Banco 0' o 'Banco A'.
    /// </summary>
    property Caption:string read FCaption write FCaption stored False;
    /// <summary>
    ///  Identifica la velocidad del reloj configurada en el dispositivo de memoria, en megahercios (MHz). Si 
    ///  el valor es 0, se desconoce la velocidad.
    /// </summary>
    property ConfiguredClockSpeed:integer read FConfiguredClockSpeed write FConfiguredClockSpeed stored False;
    /// <summary>
    ///  Voltaje configurado m�nimo de este dispositivo, en milivoltios. Si el valor es 0, se desconoce el vo
    ///  ltaje.
    /// </summary>
    property ConfiguredVoltage:integer read FConfiguredVoltage write FConfiguredVoltage stored False;
    /// <summary>
    ///  CreationClassName indica el nombre de la clase o subclase que se usa en la creaci�n de una instancia. 
    ///  Cuando se usa con las dem�s propiedades clave de esta clase, esta propiedad permite que se identifiquen 
    ///  de manera �nica todas las instancias de esta clase y sus subclases.
    /// </summary>
    property CreationClassName:string read FCreationClassName write FCreationClassName stored False;
    /// <summary>
    ///  El ancho de datos de la memoria f�sica, en bits. Un ancho de datos de cero y un ancho total de ocho indicar�an 
    ///  que la memoria se usa �nicamente para proporcionar bits de correcci�n de errores.
    /// </summary>
    property DataWidth:integer read FDataWidth write FDataWidth stored False;
    /// <summary>
    ///  El ancho de datos de la memoria f�sica, en bits. Un ancho de datos de cero y un ancho total de ocho indicar�an 
    ///  que la memoria se usa �nicamente para proporcionar bits de correcci�n de errores.
    /// </summary>
    property Description:string read FDescription write FDescription stored False;
    /// <summary>
    ///  La propiedad DeviceLocator indica la etiqueta del socket o la placa de circuitos que contiene esta memoria.
    ///  Ejemplo: 
    ///  SIMM 3
    /// </summary>
    property DeviceLocator:string read FDeviceLocator write FDeviceLocator stored False;
    /// <summary>
    ///  El factor de forma de implementaci�n para el chip. Por ejemplo, se pueden especificar valores como SIMM 
    ///  (7), TSOP (9) o PGA (10).
    /// </summary>
    property FormFactor:integer read FFormFactor write FFormFactor stored False;
    /// <summary>
    ///  Un componente f�sico es intercambiable en caliente si es posible reemplazar el elemento con otro f�sicamente 
    ///  diferente pero equivalente al tiempo que se aplica energ�a al paquete contenedor (es decir, mientras 
    ///  est� conectado). Por ejemplo, un componente ventilador puede estar dise�ado para ser intercambiable en 
    ///  caliente. Todos los componentes de este tipo son extra�bles y reemplazables de forma inherente.
    /// </summary>
    property HotSwappable:boolean read FHotSwappable write FHotSwappable stored False;
    /// <summary>
    ///  Un componente f�sico es intercambiable en caliente si es posible reemplazar el elemento con otro f�sicamente 
    ///  diferente pero equivalente al tiempo que se aplica energ�a al paquete contenedor (es decir, mientras 
    ///  est� conectado). Por ejemplo, un componente ventilador puede estar dise�ado para ser intercambiable en 
    ///  caliente. Todos los componentes de este tipo son extra�bles y reemplazables de forma inherente.
    /// </summary>
    property InstallDate:TDatetime read FInstallDate write FInstallDate stored False;
    /// <summary>
    ///  La propiedad InterleaveDataDepth indica el n�mero m�ximo de filas de datos consecutivas a las que se 
    ///  tiene acceso en una �nica transferencia intercalada desde el dispositivo de memoria. Si el valor es 0, 
    ///  no se intercala la memoria.
    /// </summary>
    property InterleaveDataDepth:integer read FInterleaveDataDepth write FInterleaveDataDepth stored False;
    /// <summary>
    ///  La posici�n de esta memoria f�sica en una intercalaci�n. 0 indica que no est� intercalado, 1 indica la 
    ///  primera posici�n, 2 la segunda y as� sucesivamente. Por ejemplo, en una intercalaci�n 2:1, el valor '1' 
    ///  indicar�a que la memoria est� en la posici�n 'par'.
    /// </summary>
    property InterleavePosition:integer read FInterleavePosition write FInterleavePosition stored False;
    /// <summary>
    ///  El nombre de la organizaci�n responsable de producir el elemento f�sico. Esta puede ser la entidad donde 
    ///  se compr� el elemento, pero no es necesariamente verdadero. La informaci�n anterior est� contenida en 
    ///  la propiedad Vendor de CIM_Product.
    /// </summary>
    property Manufacturer:string read FManufacturer write FManufacturer stored False;
    /// <summary>
    ///  Voltaje de funcionamiento m�ximo de este dispositivo, en milivoltios. Si el valor es 0, se desconoce 
    ///  el voltaje
    /// </summary>
    property MaxVoltage:integer read FMaxVoltage write FMaxVoltage stored False;
    /// <summary>
    ///  Voltaje de funcionamiento m�ximo de este dispositivo, en milivoltios. Si el valor es 0, se desconoce 
    ///  el voltaje
    /// </summary>
    property MemoryType:integer read FMemoryType write FMemoryType stored False;
    /// <summary>
    ///  Voltaje de funcionamiento m�nimo de este dispositivo, en milivoltios. Si el valor es 0, se desconoce 
    ///  el voltaje
    /// </summary>
    property MinVoltage:integer read FMinVoltage write FMinVoltage stored False;
    /// <summary>
    ///  Voltaje de funcionamiento m�nimo de este dispositivo, en milivoltios. Si el valor es 0, se desconoce 
    ///  el voltaje
    /// </summary>
    property Model:string read FModel write FModel stored False;
    /// <summary>
    ///  Voltaje de funcionamiento m�nimo de este dispositivo, en milivoltios. Si el valor es 0, se desconoce 
    ///  el voltaje
    /// </summary>
    property Name:string read FName write FName stored False;
    /// <summary>
    ///  OtherIdentifyingInfo captura datos adicionales, adem�s de la informaci�n de la etiqueta de inventario, 
    ///  que puede usarse para identificar un elemento f�sico. Como ejemplo, los datos del c�digo de barras asociado 
    ///  con un elemento que tambi�n tiene una etiqueta de activo. Tenga en cuenta que si s�lo hay disponibles 
    ///  datos de c�digo de barras y �nicamente se puede usar como una clave del elemento, esta propiedad debe 
    ///  ser NULL y los datos del c�digo de barras deben usarse como la clave de la clase en la propiedad Tag
    ///  .
    /// </summary>
    property OtherIdentifyingInfo:string read FOtherIdentifyingInfo write FOtherIdentifyingInfo stored False;
    /// <summary>
    ///  El n�mero de pieza asignado por el responsable de la organizaci�n de producir o fabricar el elemento 
    ///  f�sico.
    /// </summary>
    property PartNumber:string read FPartNumber write FPartNumber stored False;
    /// <summary>
    ///  Especifica la posici�n de la memoria f�sica en una 'fila'. Por ejemplo, si se necesitan dos dispositivos 
    ///  de memoria de 8 bits para formar una fila de 16 bits, el valor '2' significa que esta memoria es el segundo 
    ///  dispositivo. 0 es un valor no v�lido para esta propiedad.
    /// </summary>
    property PositionInRow:integer read FPositionInRow write FPositionInRow stored False;
    /// <summary>
    ///  Valor de tipo booleano que indica que el elemento f�sico est� conectado (TRUE) o desconectado (FALSE) 
    ///  actualmente.
    /// </summary>
    property PoweredOn:boolean read FPoweredOn write FPoweredOn stored False;
    /// <summary>
    ///  Un componente f�sico es extra�ble si est� dise�ado para extraerse e insertarse en el contenedor f�sico 
    ///  donde normalmente se encuentra sin perjudicar la funci�n del paquete en general. Un paquete puede seguir 
    ///  siendo extra�ble si se debe "apagar" para poder llevar a cabo la extracci�n. Si puede estar "encendido" 
    ///  al extraer el componente, el elemento es extra�ble e intercambiable en caliente. Por ejemplo, un chip 
    ///  procesador actualizable es extra�ble.
    /// </summary>
    property Removable:boolean read FRemovable write FRemovable stored False;
    /// <summary>
    ///  Un componente f�sico es reemplazable si es posible reemplazar (FRU o actualizaci�n) el elemento con uno 
    ///  f�sicamente diferente. Por ejemplo, algunos equipos permiten actualizar el chip principal del procesador 
    ///  con otro con un reloj m�s r�pido. En este caso, se dice que el procesador es reemplazable. Todos los 
    ///  componentes extra�bles son reemplazables de forma inherente.
    /// </summary>
    property Replaceable:boolean read FReplaceable write FReplaceable stored False;
    /// <summary>
    ///  Un n�mero asignado por el fabricante que se usa para identificar el elemento f�sico.
    /// </summary>
    property SerialNumber:string read FSerialNumber write FSerialNumber stored False;
    /// <summary>
    ///  Un n�mero asignado por el fabricante que se usa para identificar el elemento f�sico.
    /// </summary>
    property SKU:string read FSKU write FSKU stored False;
    /// <summary>
    ///  Tipo de memoria usado en este dispositivo. Es una propiedad adicional que se agrega para registrar el 
    ///  tipo de memoria binaria de SMBIOS. El valor registrado por la propiedad MemoryType es un valor de CIM 
    ///  asignado al valor de SMBIOS.
    /// </summary>
    property SMBIOSMemoryType:integer read FSMBIOSMemoryType write FSMBIOSMemoryType stored False;
    /// <summary>
    ///  Tipo de memoria usado en este dispositivo. Es una propiedad adicional que se agrega para registrar el 
    ///  tipo de memoria binaria de SMBIOS. El valor registrado por la propiedad MemoryType es un valor de CIM 
    ///  asignado al valor de SMBIOS.
    /// </summary>
    property Speed:integer read FSpeed write FSpeed stored False;
    /// <summary>
    ///  Tipo de memoria usado en este dispositivo. Es una propiedad adicional que se agrega para registrar el 
    ///  tipo de memoria binaria de SMBIOS. El valor registrado por la propiedad MemoryType es un valor de CIM 
    ///  asignado al valor de SMBIOS.
    /// </summary>
    property Status:string read FStatus write FStatus stored False;
    /// <summary>
    ///  La propiedad Tag contiene una cadena que identifica de forma �nica el dispositivo de memoria f�sica representado 
    ///  por una instancia de la clase Win32_PhysicalMemory.
    ///  Ejemplo: Memoria f�sica 1
    /// </summary>
    property Tag:string read FTag write FTag stored False;
    /// <summary>
    ///  El ancho total, en bits, de la memoria f�sica, incluidos los bits de comprobaci�n o de correcci�n de 
    ///  errores. Si no hay bits de correcci�n de errores, el valor de esta propiedad debe coincidir con el especificado 
    ///  en la propiedad DataWidth.
    /// </summary>
    property TotalWidth:integer read FTotalWidth write FTotalWidth stored False;
    /// <summary>
    ///  La propiedad TypeDetail indica el tipo de memoria f�sica representada por la clase Win32_PhysicalMem
    ///  ory.
    /// </summary>
    property TypeDetail:integer read FTypeDetail write FTypeDetail stored False;
    /// <summary>
    ///  La propiedad TypeDetail indica el tipo de memoria f�sica representada por la clase Win32_PhysicalMem
    ///  ory.
    /// </summary>
    property Version:string read FVersion write FVersion stored False;
  end;

  {%InterfaceClass WMIClass%}
  /// <summary>
  ///  La clase Win32_PhysicalMemory representa un dispositivo de memoria f�sica que se encuentra en un sistema 
  ///  como disponible para el sistema operativo.
  /// </summary>
  TPhysicalMemoryInfo = class(TWMIBase)
  private
    FPhysicalMemoryProperties: TPhysicalMemoryProperties;
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
    // propiedades de la PhysicalMemory
    property PhysicalMemoryProperties:TPhysicalMemoryProperties read   FPhysicalMemoryProperties write FPhysicalMemoryProperties;
  end;


// Constantes para la propiedad FormFactor
const 
  ENUM_STRING_FORMFACTOR_00 = 'Desconocido';
  ENUM_STRING_FORMFACTOR_01 = 'Otros';
  ENUM_STRING_FORMFACTOR_02 = 'SIP';
  ENUM_STRING_FORMFACTOR_03 = 'DIP';
  ENUM_STRING_FORMFACTOR_04 = 'ZIP';
  ENUM_STRING_FORMFACTOR_05 = 'SOJ';
  ENUM_STRING_FORMFACTOR_06 = 'Propietario';
  ENUM_STRING_FORMFACTOR_07 = 'SIMM';
  ENUM_STRING_FORMFACTOR_08 = 'DIMM';
  ENUM_STRING_FORMFACTOR_09 = 'TSOP';
  ENUM_STRING_FORMFACTOR_10 = 'PGA';
  ENUM_STRING_FORMFACTOR_11 = 'RIMM';
  ENUM_STRING_FORMFACTOR_12 = 'SODIMM';
  ENUM_STRING_FORMFACTOR_13 = 'SRIMM';
  ENUM_STRING_FORMFACTOR_14 = 'SMD';
  ENUM_STRING_FORMFACTOR_15 = 'SSMP';
  ENUM_STRING_FORMFACTOR_16 = 'QFP';
  ENUM_STRING_FORMFACTOR_17 = 'TQFP';
  ENUM_STRING_FORMFACTOR_18 = 'SOIC';
  ENUM_STRING_FORMFACTOR_19 = 'LCC';
  ENUM_STRING_FORMFACTOR_20 = 'PLCC';
  ENUM_STRING_FORMFACTOR_21 = 'BGA';
  ENUM_STRING_FORMFACTOR_22 = 'FPBGA';
  ENUM_STRING_FORMFACTOR_23 = 'LGA';
  ENUM_STRING_FORMFACTOR_24 = 'FB-DIMM';

// Constantes para la propiedad MemoryType
const 
  ENUM_STRING_MEMORYTYPE_00 = 'Desconocido';
  ENUM_STRING_MEMORYTYPE_01 = 'Otros';
  ENUM_STRING_MEMORYTYPE_02 = 'DRAM';
  ENUM_STRING_MEMORYTYPE_03 = 'DRAM sincr�nica';
  ENUM_STRING_MEMORYTYPE_04 = 'DRAM de cach�';
  ENUM_STRING_MEMORYTYPE_05 = 'EDO';
  ENUM_STRING_MEMORYTYPE_06 = 'EDRAM';
  ENUM_STRING_MEMORYTYPE_07 = 'VRAM';
  ENUM_STRING_MEMORYTYPE_08 = 'SRAM';
  ENUM_STRING_MEMORYTYPE_09 = 'RAM';
  ENUM_STRING_MEMORYTYPE_10 = 'ROM';
  ENUM_STRING_MEMORYTYPE_11 = 'Destello';
  ENUM_STRING_MEMORYTYPE_12 = 'EEPROM';
  ENUM_STRING_MEMORYTYPE_13 = 'FEPROM';
  ENUM_STRING_MEMORYTYPE_14 = 'EPROM';
  ENUM_STRING_MEMORYTYPE_15 = 'CDRAM';
  ENUM_STRING_MEMORYTYPE_16 = '3DRAM';
  ENUM_STRING_MEMORYTYPE_17 = 'SDRAM';
  ENUM_STRING_MEMORYTYPE_18 = 'SGRAM';
  ENUM_STRING_MEMORYTYPE_19 = 'RDRAM';
  ENUM_STRING_MEMORYTYPE_20 = 'DDR';
  ENUM_STRING_MEMORYTYPE_21 = 'DDR2';
  ENUM_STRING_MEMORYTYPE_22 = 'FB-DIMM DDR2';

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
procedure TPhysicalMemoryInfo.ClearProps;
begin
  Self.PhysicalMemoryProperties.FAttributes := 0;
  Self.PhysicalMemoryProperties.FBankLabel := EmptyStr;
  Self.PhysicalMemoryProperties.FCapacity := 0;
  Self.PhysicalMemoryProperties.FCaption := EmptyStr;
  Self.PhysicalMemoryProperties.FConfiguredClockSpeed := 0;
  Self.PhysicalMemoryProperties.FConfiguredVoltage := 0;
  Self.PhysicalMemoryProperties.FCreationClassName := EmptyStr;
  Self.PhysicalMemoryProperties.FDataWidth := 0;
  Self.PhysicalMemoryProperties.FDescription := EmptyStr;
  Self.PhysicalMemoryProperties.FDeviceLocator := EmptyStr;
  Self.PhysicalMemoryProperties.FFormFactor := 0;
  Self.PhysicalMemoryProperties.FHotSwappable := False;
  Self.PhysicalMemoryProperties.FInstallDate := 0;
  Self.PhysicalMemoryProperties.FInterleaveDataDepth := 0;
  Self.PhysicalMemoryProperties.FInterleavePosition := 0;
  Self.PhysicalMemoryProperties.FManufacturer := EmptyStr;
  Self.PhysicalMemoryProperties.FMaxVoltage := 0;
  Self.PhysicalMemoryProperties.FMemoryType := 0;
  Self.PhysicalMemoryProperties.FMinVoltage := 0;
  Self.PhysicalMemoryProperties.FModel := EmptyStr;
  Self.PhysicalMemoryProperties.FName := EmptyStr;
  Self.PhysicalMemoryProperties.FOtherIdentifyingInfo := EmptyStr;
  Self.PhysicalMemoryProperties.FPartNumber := EmptyStr;
  Self.PhysicalMemoryProperties.FPositionInRow := 0;
  Self.PhysicalMemoryProperties.FPoweredOn := False;
  Self.PhysicalMemoryProperties.FRemovable := False;
  Self.PhysicalMemoryProperties.FReplaceable := False;
  Self.PhysicalMemoryProperties.FSerialNumber := EmptyStr;
  Self.PhysicalMemoryProperties.FSKU := EmptyStr;
  Self.PhysicalMemoryProperties.FSMBIOSMemoryType := 0;
  Self.PhysicalMemoryProperties.FSpeed := 0;
  Self.PhysicalMemoryProperties.FStatus := EmptyStr;
  Self.PhysicalMemoryProperties.FTag := EmptyStr;
  Self.PhysicalMemoryProperties.FTotalWidth := 0;
  Self.PhysicalMemoryProperties.FTypeDetail := 0;
  Self.PhysicalMemoryProperties.FVersion := EmptyStr;
end;

//: Constructor del componente
constructor TPhysicalMemoryInfo.Create(AOwner: TComponent);
begin
  inherited;
  Self.FPhysicalMemoryProperties := TPhysicalMemoryProperties.Create();
  Self.MSDNHelp := 'https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-physicalmemory';
end;

//: destructor del componente
destructor TPhysicalMemoryInfo.Destroy();
begin
  // liberar
  FreeAndNil(Self.FPhysicalMemoryProperties);
  inherited;
end;

//: Obtener la clase
function TPhysicalMemoryInfo.GetWMIClass(): string;
begin
  Result := 'Win32_PhysicalMemory'
end;

//: Obtener Root
function TPhysicalMemoryInfo.GetWMIRoot(): string;
begin
  Result := '';
end;

//: Procedmiento de activaci�n
procedure TPhysicalMemoryInfo.SetActive(const Value: Boolean);
begin
  // m�todo heredado
  inherited;
end;


//: Rellenar las propiedades del componente.
procedure TPhysicalMemoryInfo.FillProperties(AIndex: integer);
var
  v:     variant;
  vNull: boolean;
  vp:    TPhysicalMemoryProperties;
begin
  // Llamar al heredado (importante)
  inherited;
  // Rellenar propiedades...
  vp := PhysicalMemoryProperties;

  GetWMIPropertyValue(Self, 'Attributes', v, vNull);
  vp.FAttributes := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'BankLabel', v, vNull);
  vp.FBankLabel := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Capacity', v, vNull);
  vp.FCapacity := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Caption', v, vNull);
  vp.FCaption := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'ConfiguredClockSpeed', v, vNull);
  vp.FConfiguredClockSpeed := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'ConfiguredVoltage', v, vNull);
  vp.FConfiguredVoltage := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'CreationClassName', v, vNull);
  vp.FCreationClassName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'DataWidth', v, vNull);
  vp.FDataWidth := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Description', v, vNull);
  vp.FDescription := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'DeviceLocator', v, vNull);
  vp.FDeviceLocator := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'FormFactor', v, vNull);
  vp.FFormFactor := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'HotSwappable', v, vNull);
  vp.FHotSwappable := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'InstallDate', v, vNull);
  vp.FInstallDate := VariantDateTimeValue(v, vNull);

  GetWMIPropertyValue(Self, 'InterleaveDataDepth', v, vNull);
  vp.FInterleaveDataDepth := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'InterleavePosition', v, vNull);
  vp.FInterleavePosition := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Manufacturer', v, vNull);
  vp.FManufacturer := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'MaxVoltage', v, vNull);
  vp.FMaxVoltage := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'MemoryType', v, vNull);
  vp.FMemoryType := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'MinVoltage', v, vNull);
  vp.FMinVoltage := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Model', v, vNull);
  vp.FModel := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Name', v, vNull);
  vp.FName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'OtherIdentifyingInfo', v, vNull);
  vp.FOtherIdentifyingInfo := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'PartNumber', v, vNull);
  vp.FPartNumber := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'PositionInRow', v, vNull);
  vp.FPositionInRow := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'PoweredOn', v, vNull);
  vp.FPoweredOn := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'Removable', v, vNull);
  vp.FRemovable := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'Replaceable', v, vNull);
  vp.FReplaceable := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'SerialNumber', v, vNull);
  vp.FSerialNumber := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'SKU', v, vNull);
  vp.FSKU := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'SMBIOSMemoryType', v, vNull);
  vp.FSMBIOSMemoryType := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Speed', v, vNull);
  vp.FSpeed := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Status', v, vNull);
  vp.FStatus := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Tag', v, vNull);
  vp.FTag := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'TotalWidth', v, vNull);
  vp.FTotalWidth := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'TypeDetail', v, vNull);
  vp.FTypeDetail := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Version', v, vNull);
  vp.FVersion := VariantStrValue(v, vNull);
end;


// Obtener la propiedad como string
function TPhysicalMemoryProperties.GetAllFormFactorAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_FORMFACTOR_00;
    01: Result := ENUM_STRING_FORMFACTOR_01;
    02: Result := ENUM_STRING_FORMFACTOR_02;
    03: Result := ENUM_STRING_FORMFACTOR_03;
    04: Result := ENUM_STRING_FORMFACTOR_04;
    05: Result := ENUM_STRING_FORMFACTOR_05;
    06: Result := ENUM_STRING_FORMFACTOR_06;
    07: Result := ENUM_STRING_FORMFACTOR_07;
    08: Result := ENUM_STRING_FORMFACTOR_08;
    09: Result := ENUM_STRING_FORMFACTOR_09;
    10: Result := ENUM_STRING_FORMFACTOR_10;
    11: Result := ENUM_STRING_FORMFACTOR_11;
    12: Result := ENUM_STRING_FORMFACTOR_12;
    13: Result := ENUM_STRING_FORMFACTOR_13;
    14: Result := ENUM_STRING_FORMFACTOR_14;
    15: Result := ENUM_STRING_FORMFACTOR_15;
    16: Result := ENUM_STRING_FORMFACTOR_16;
    17: Result := ENUM_STRING_FORMFACTOR_17;
    18: Result := ENUM_STRING_FORMFACTOR_18;
    19: Result := ENUM_STRING_FORMFACTOR_19;
    20: Result := ENUM_STRING_FORMFACTOR_20;
    21: Result := ENUM_STRING_FORMFACTOR_21;
    22: Result := ENUM_STRING_FORMFACTOR_22;
    23: Result := ENUM_STRING_FORMFACTOR_23;
    24: Result := ENUM_STRING_FORMFACTOR_24;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TPhysicalMemoryProperties.GetAllMemoryTypeAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_MEMORYTYPE_00;
    01: Result := ENUM_STRING_MEMORYTYPE_01;
    02: Result := ENUM_STRING_MEMORYTYPE_02;
    03: Result := ENUM_STRING_MEMORYTYPE_03;
    04: Result := ENUM_STRING_MEMORYTYPE_04;
    05: Result := ENUM_STRING_MEMORYTYPE_05;
    06: Result := ENUM_STRING_MEMORYTYPE_06;
    07: Result := ENUM_STRING_MEMORYTYPE_07;
    08: Result := ENUM_STRING_MEMORYTYPE_08;
    09: Result := ENUM_STRING_MEMORYTYPE_09;
    10: Result := ENUM_STRING_MEMORYTYPE_10;
    11: Result := ENUM_STRING_MEMORYTYPE_11;
    12: Result := ENUM_STRING_MEMORYTYPE_12;
    13: Result := ENUM_STRING_MEMORYTYPE_13;
    14: Result := ENUM_STRING_MEMORYTYPE_14;
    15: Result := ENUM_STRING_MEMORYTYPE_15;
    16: Result := ENUM_STRING_MEMORYTYPE_16;
    17: Result := ENUM_STRING_MEMORYTYPE_17;
    18: Result := ENUM_STRING_MEMORYTYPE_18;
    19: Result := ENUM_STRING_MEMORYTYPE_19;
    20: Result := ENUM_STRING_MEMORYTYPE_20;
    21: Result := ENUM_STRING_MEMORYTYPE_21;
    22: Result := ENUM_STRING_MEMORYTYPE_22;
  else
    Result := STR_EMPTY;
  end;
end;


// Obtener n�m. de elementos de la propiedad como string
function TPhysicalMemoryProperties.GetAllFormFactorCount:integer;
begin
  Result := 25
end;

// Obtener n�m. de elementos de la propiedad como string
function TPhysicalMemoryProperties.GetAllMemoryTypeCount:integer;
begin
  Result := 23
end;


end.
