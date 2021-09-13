{
TDisplayConfigurationInfo Component Version 3.1 - Suite GLibWMI
Copyright (©) 2020,  by Germán Estévez (Neftalí)

La clase Win32_DisplayConfiguration representa la información de configuración del dispositivo de pantalla 
en un sistema Win32. Esta clase quedó obsoleta en favor de las propiedades de las clases Win32_VideoController, 
Win32_DesktopMonitor y CIM_VideoControllerResolution


Utilización/Usage:
(ES) Basta con "soltar" el componente y activarlo.
(EN) Place the component in the form and active it.

MSDN Info:
https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-displayconfiguration

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
unit CDisplayConfigurationInfo;

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
  TDisplayConfigurationProperties = class(TPersistent)
  private
    {%PrivateClassVars PropertiesClass%}
    FBitsPerPel:integer;
    FCaption:string;
    FDescription:string;
    FDeviceName:string;
    FDisplayFlags:integer;
    FDisplayFrequency:integer;
    FDitherType:integer;
    FDriverVersion:string;
    FICMIntent:integer;
    FICMMethod:integer;
    FLogPixels:integer;
    FPelsHeight:integer;
    FPelsWidth:integer;
    FSettingID:string;
    FSpecificationVersion:integer;

  private
    {%PrivateGetMethods PropertiesClass%}

  public
    {%PublicGetMethods PropertiesClass%}
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

    {%PublicArrayMethods PropertiesClass%}

  published
    {%PublishedProperties PropertiesClass%}
    /// <summary>
    ///  La propiedad BitsPerPel indica el número de bits utilizados para representar el color en esta configuración 
    ///  (los bits por píxel).
    ///  Ejemplo: 8.  
    ///  Esta propiedad quedó obsoleta en favor de la propiedad correspondiente 
    ///  contenida en Win32_VideoController, Win32_DesktopMonitor y//o CIM_VideoControllerResolution
    /// </summary>
    property BitsPerPel:integer read FBitsPerPel write FBitsPerPel stored False;
    /// <summary>
    ///  La propiedad BitsPerPel indica el número de bits utilizados para representar el color en esta configuración 
    ///  (los bits por píxel).
    ///  Ejemplo: 8.  
    ///  Esta propiedad quedó obsoleta en favor de la propiedad correspondiente 
    ///  contenida en Win32_VideoController, Win32_DesktopMonitor y//o CIM_VideoControllerResolution
    /// </summary>
    property Caption:string read FCaption write FCaption stored False;
    /// <summary>
    ///  La propiedad BitsPerPel indica el número de bits utilizados para representar el color en esta configuración 
    ///  (los bits por píxel).
    ///  Ejemplo: 8.  
    ///  Esta propiedad quedó obsoleta en favor de la propiedad correspondiente 
    ///  contenida en Win32_VideoController, Win32_DesktopMonitor y//o CIM_VideoControllerResolution
    /// </summary>
    property Description:string read FDescription write FDescription stored False;
    /// <summary>
    ///  La propiedad DeviceName indica el nombre del dispositivo de pantalla. 
    ///  Esta propiedad quedó obsoleta 
    ///  en favor de la propiedad correspondiente contenida en Win32_VideoController, Win32_DesktopMonitor y//o 
    ///  CIM_VideoControllerResolution
    /// </summary>
    property DeviceName:string read FDeviceName write FDeviceName stored False;
    /// <summary>
    ///  La propiedad DisplayFlags indica si el dispositivo de pantalla es en color (en vez de monocromático), 
    ///  y no de exploración continua (en lugar de ser de exploración continua). Si se enmascara su valor con 
    ///  las máscaras DM_GRAYSCALE y DM_INTERLACED respectivamente, DisplayFlags indica si el dispositivo de pantalla 
    ///  es en color (en vez de monocromático), y no de exploración continua (en lugar de ser de exploración continua). 
    ///  La propiedad DisplayFlags contiene dos bits de información sobre la pantalla. 
    ///  Esta propiedad quedó obsoleta 
    ///  en favor de la propiedad correspondiente contenida en Win32_VideoController, Win32_DesktopMonitor y//o 
    ///  CIM_VideoControllerResolution
    /// </summary>
    property DisplayFlags:integer read FDisplayFlags write FDisplayFlags stored False;
    /// <summary>
    ///  La propiedad DisplayFrequency indica la frecuencia de actualización vertical de la pantalla. La frecuencia 
    ///  de actualización de un monitor es el número de veces que la pantalla se redibuja por segundo (frecuencia). 
    ///  Esta propiedad quedó obsoleta en favor de la propiedad correspondiente contenida en Win32_VideoController, 
    ///  Win32_DesktopMonitor y//o CIM_VideoControllerResolution
    /// </summary>
    property DisplayFrequency:integer read FDisplayFrequency write FDisplayFrequency stored False;
    /// <summary>
    ///  La propiedad DitherType indica el tipo de interpolación de la pantalla. Esta propiedad puede asumir valores 
    ///  predefinidos desde 1 hasta 5, o valores definidos por el controlador desde 6 hasta 256. La interpolación 
    ///  de colores en líneas es un método especial de interpolación que produce bordes bien definidos entre escalas 
    ///  de blancos, negros y grises. No es apropiado para imágenes que incluyen graduaciones continuas en intensidad 
    ///  y tono (como fotografías digitalizadas). 
    ///  Esta propiedad quedó obsoleta en favor de la propiedad correspondiente 
    ///  contenida en Win32_VideoController, Win32_DesktopMonitor y//o CIM_VideoControllerResolution
    /// </summary>
    property DitherType:integer read FDitherType write FDitherType stored False;
    /// <summary>
    ///  La propiedad DriverVersion indica la versión del controlador de la pantalla.  
    ///  Esta propiedad quedó obsoleta 
    ///  en favor de la propiedad correspondiente contenida en Win32_VideoController, Win32_DesktopMonitor y//o 
    ///  CIM_VideoControllerResolution
    /// </summary>
    property DriverVersion:string read FDriverVersion write FDriverVersion stored False;
    /// <summary>
    ///  La propiedad ICMIntent (Image Color Matching Intent) indica el valor de uno de los tres métodos de coincidencia 
    ///  de color posibles (intentos) que se deberían usar de forma predeterminada. Esta propiedad se usa primeramente 
    ///  para aplicaciones que no sean ICM. Las aplicaciones ICM establecen intentos usando las funciones ICM. 
    ///  Esta propiedad puede asumir valores predefinidos de 1 a 3, o valores de controlador definidos de 4 a 
    ///  256.  
    ///  Esta propiedad quedó obsoleta en favor de unas propiedades correspondientes contenidas en Win32_VideoController, 
    ///  Win32_DesktopMonitor y//o CIM_VideoControllerResolution
    /// </summary>
    property ICMIntent:integer read FICMIntent write FICMIntent stored False;
    /// <summary>
    ///  La propiedad ICMMethod (Image Color Matching Method) indica como se trata ICM. Para una aplicación ICM, 
    ///  esta propiedad indica si ICM está habilitada o deshabilitada. Para aplicaciones ICM, el sistema examina 
    ///  este miembro para determinar qué parte del equipo trata la compatibilidad con ICM.  
    ///  Esta propiedad quedó 
    ///  obsoleta en favor de unas propiedades correspondientes contenidas en Win32_VideoController, Win32_DesktopMonitor 
    ///  y//o CIM_VideoControllerResolution
    /// </summary>
    property ICMMethod:integer read FICMMethod write FICMMethod stored False;
    /// <summary>
    ///  La propiedad LogPixels contiene el número de píxeles por pulgada lógica. Esta propiedad sólo es válida 
    ///  con dispositivos que funcionan con píxeles (esto excluye a dispositivos como las impresoras). 
    ///  Esta propiedad 
    ///  quedó obsoleta en favor de la propiedad correspondiente contenida en Win32_VideoController, Win32_DesktopMonitor 
    ///  y//o CIM_VideoControllerResolution
    /// </summary>
    property LogPixels:integer read FLogPixels write FLogPixels stored False;
    /// <summary>
    ///  La propiedad PelsHeight indica el alto de la superficie visible de la pantalla. 
    ///  Esta propiedad quedó 
    ///  obsoleta en favor de la propiedad correspondiente contenida en Win32_VideoController, Win32_DesktopMonitor 
    ///  y//o CIM_VideoControllerResolution
    /// </summary>
    property PelsHeight:integer read FPelsHeight write FPelsHeight stored False;
    /// <summary>
    ///  La propiedad PelsWidth indica el ancho de la superficie visible de la pantalla. 
    ///  Esta propiedad quedó 
    ///  obsoleta en favor de la propiedad correspondiente contenida en Win32_VideoController, Win32_DesktopMonitor 
    ///  y//o CIM_VideoControllerResolution
    /// </summary>
    property PelsWidth:integer read FPelsWidth write FPelsWidth stored False;
    /// <summary>
    ///  La propiedad PelsWidth indica el ancho de la superficie visible de la pantalla. 
    ///  Esta propiedad quedó 
    ///  obsoleta en favor de la propiedad correspondiente contenida en Win32_VideoController, Win32_DesktopMonitor 
    ///  y//o CIM_VideoControllerResolution
    /// </summary>
    property SettingID:string read FSettingID write FSettingID stored False;
    /// <summary>
    ///  La propiedad SpecificationVersion indica el número de versión de los datos de inicialización para el 
    ///  dispositivo de pantalla de win32. 
    ///  Esta propiedad quedó obsoleta en favor de la propiedad correspondiente 
    ///  contenida en Win32_VideoController, Win32_DesktopMonitor y//o CIM_VideoControllerResolution
    /// </summary>
    property SpecificationVersion:integer read FSpecificationVersion write FSpecificationVersion stored False;
  end;

  {%InterfaceClass WMIClass%}
  /// <summary>
  ///  La clase Win32_DisplayConfiguration representa la información de configuración del dispositivo de pantalla 
  ///  en un sistema Win32. Esta clase quedó obsoleta en favor de las propiedades de las clases Win32_VideoController, 
  ///  Win32_DesktopMonitor y CIM_VideoControllerResolution
  /// </summary>
  TDisplayConfigurationInfo = class(TWMIBase)
  private
    FDisplayConfigurationProperties: TDisplayConfigurationProperties;
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
    // propiedades de la DisplayConfiguration
    property DisplayConfigurationProperties:TDisplayConfigurationProperties read   FDisplayConfigurationProperties write FDisplayConfigurationProperties;
  end;


// Constantes para la propiedad DitherType
const 
  ENUM_STRING_DITHERTYPE_00 = 'Sin interpolado';
  ENUM_STRING_DITHERTYPE_01 = 'Pincel grueso';
  ENUM_STRING_DITHERTYPE_02 = 'Pincel fino';
  ENUM_STRING_DITHERTYPE_03 = 'Líneas';
  ENUM_STRING_DITHERTYPE_04 = 'Escala de grises';

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
  ENUM_STRING_ICMMETHOD_03 = 'Dispositivo';

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
procedure TDisplayConfigurationInfo.ClearProps;
begin
  Self.DisplayConfigurationProperties.FBitsPerPel := 0;
  Self.DisplayConfigurationProperties.FCaption := EmptyStr;
  Self.DisplayConfigurationProperties.FDescription := EmptyStr;
  Self.DisplayConfigurationProperties.FDeviceName := EmptyStr;
  Self.DisplayConfigurationProperties.FDisplayFlags := 0;
  Self.DisplayConfigurationProperties.FDisplayFrequency := 0;
  Self.DisplayConfigurationProperties.FDitherType := 0;
  Self.DisplayConfigurationProperties.FDriverVersion := EmptyStr;
  Self.DisplayConfigurationProperties.FICMIntent := 0;
  Self.DisplayConfigurationProperties.FICMMethod := 0;
  Self.DisplayConfigurationProperties.FLogPixels := 0;
  Self.DisplayConfigurationProperties.FPelsHeight := 0;
  Self.DisplayConfigurationProperties.FPelsWidth := 0;
  Self.DisplayConfigurationProperties.FSettingID := EmptyStr;
  Self.DisplayConfigurationProperties.FSpecificationVersion := 0;
end;

//: Constructor del componente
constructor TDisplayConfigurationInfo.Create(AOwner: TComponent);
begin
  inherited;
  Self.FDisplayConfigurationProperties := TDisplayConfigurationProperties.Create();
  Self.MSDNHelp := 'https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-displayconfiguration';
end;

//: destructor del componente
destructor TDisplayConfigurationInfo.Destroy();
begin
  // liberar
  FreeAndNil(Self.FDisplayConfigurationProperties);
  inherited;
end;

//: Obtener la clase
function TDisplayConfigurationInfo.GetWMIClass(): string;
begin
  Result := 'Win32_DisplayConfiguration'
end;

//: Obtener Root
function TDisplayConfigurationInfo.GetWMIRoot(): string;
begin
  Result := '';
end;

//: Procedmiento de activación
procedure TDisplayConfigurationInfo.SetActive(const Value: Boolean);
begin
  // método heredado
  inherited;
end;


//: Rellenar las propiedades del componente.
procedure TDisplayConfigurationInfo.FillProperties(AIndex: integer);
var
  v:     variant;
  vNull: boolean;
  vp:    TDisplayConfigurationProperties;
begin
  // Llamar al heredado (importante)
  inherited;
  // Rellenar propiedades...
  vp := DisplayConfigurationProperties;

  GetWMIPropertyValue(Self, 'BitsPerPel', v, vNull);
  vp.FBitsPerPel := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Caption', v, vNull);
  vp.FCaption := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Description', v, vNull);
  vp.FDescription := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'DeviceName', v, vNull);
  vp.FDeviceName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'DisplayFlags', v, vNull);
  vp.FDisplayFlags := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'DisplayFrequency', v, vNull);
  vp.FDisplayFrequency := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'DitherType', v, vNull);
  vp.FDitherType := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'DriverVersion', v, vNull);
  vp.FDriverVersion := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'ICMIntent', v, vNull);
  vp.FICMIntent := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'ICMMethod', v, vNull);
  vp.FICMMethod := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'LogPixels', v, vNull);
  vp.FLogPixels := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'PelsHeight', v, vNull);
  vp.FPelsHeight := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'PelsWidth', v, vNull);
  vp.FPelsWidth := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'SettingID', v, vNull);
  vp.FSettingID := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'SpecificationVersion', v, vNull);
  vp.FSpecificationVersion := VariantIntegerValue(v, vNull);
end;


// Obtener la propiedad como string
function TDisplayConfigurationProperties.GetAllDitherTypeAsString(index:integer):string;
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
function TDisplayConfigurationProperties.GetAllICMIntentAsString(index:integer):string;
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
function TDisplayConfigurationProperties.GetAllICMMethodAsString(index:integer):string;
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


// Obtener núm. de elementos de la propiedad como string
function TDisplayConfigurationProperties.GetAllDitherTypeCount:integer;
begin
  Result := 5
end;

// Obtener núm. de elementos de la propiedad como string
function TDisplayConfigurationProperties.GetAllICMIntentCount:integer;
begin
  Result := 3
end;

// Obtener núm. de elementos de la propiedad como string
function TDisplayConfigurationProperties.GetAllICMMethodCount:integer;
begin
  Result := 4
end;


end.
