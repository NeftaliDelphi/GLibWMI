{ 
TDisplayInfo  Component Version 1.1 - Suite GLib 
Copyright (©) 2009,  by Germán Estévez (Neftalí) 
 
  Representa la información de configuración para el 
 
Utilización/Usage: 
  Basta con "soltar" el componente y activarlo. 
 
  Place the component in the form and active it. 
 
  MSDN Info: 
  dispositivo de visualización. 
 
========================================================================= 
IMPORTANTE PROGRAMADORES: Por favor, si tienes comentarios, mejoras, ampliaciones, 
  errores y/o cualquier otro tipo de sugerencia envíame un mail a: 
  german_ral@hotmail.com 
 
IMPORTANT PROGRAMMERS: please, if you have comments, improvements, enlargements, 
errors and/or any another type of suggestion send a mail to: 
german_ral@hotmail.com 
========================================================================= 
 
@author Germán Estévez (Neftalí) 
@web  http://neftali.clubDelphi.com   -  http://neftali-mirror.site11.com/
@cat Package GLib 
} 
unit CDisplayInfo; 
 
{ 
========================================================================= 
 
  TDisplayInfo.pas 
 
  Componente 
 
======================================================================== 
  Historia de las Versiones 
------------------------------------------------------------------------ 
 
  22/12/2009    * Creación. 
 
========================================================================= 
 
  Errores detectados no corregidos 
 
========================================================================= 
} 
 
//========================================================================= 
// 
// I N T E R F A C E 
// 
//========================================================================= 
interface 
 
uses 
  Classes, Controls, CWMIBase; 
 
type 
  //: Clase para definir las propiedades del componente.
  TDisplayProperties = class(TPersistent)
  private
    FBitsPerPel:Longword;
    FCaption:string;
    FDescription:string;
    FDeviceName:string;
    FDisplayFlags:Longword;
    FDisplayFrequency:Longword;
    FDitherType:Longword;
    FDitherTypeAsString:string;
    FDriverVersion:string;
    FICMIntent:Longword;
    FICMMethod:Longword;
    FLogPixels:Longword;
    FPelsHeight:Longword;
    FPelsWidth:Longword;
    FSettingID:string;
    FSpecificationVersion:Longword;
  private
    // Obtener la propiedad <DitherType> como string
    function GetDitherTypeAsString():string;
  public
  published
    property BitsPerPel:Longword read FBitsPerPel write FBitsPerPel stored False;
    property Caption:string read FCaption write FCaption stored False;
    property Description:string read FDescription write FDescription stored False;
    property DeviceName:string read FDeviceName write FDeviceName stored False;
    property DisplayFlags:Longword read FDisplayFlags write FDisplayFlags stored False;
    property DisplayFrequency:Longword read FDisplayFrequency write FDisplayFrequency stored False;
    property DitherType:Longword read FDitherType write FDitherType stored False;
    property DitherTypeAsString:string read GetDitherTypeAsString write FDitherTypeAsString;
    property DriverVersion:string read FDriverVersion write FDriverVersion stored False;
    property ICMIntent:Longword read FICMIntent write FICMIntent stored False;
    property ICMMethod:Longword read FICMMethod write FICMMethod stored False;
    property LogPixels:Longword read FLogPixels write FLogPixels stored False;
    property PelsHeight:Longword read FPelsHeight write FPelsHeight stored False;
    property PelsWidth:Longword read FPelsWidth write FPelsWidth stored False;
    property SettingID:string read FSettingID write FSettingID stored False;
    property SpecificationVersion:Longword read FSpecificationVersion write FSpecificationVersion stored False;
  end;
  
  //: Implementación para el acceso vía WMI a la clase Win32_Display
  TDisplayInfo = class(TWMIBase)
  private
    FDisplayProperties: TDisplayProperties;
  protected
    //: Rellenar las propiedades.
    procedure FillProperties(AIndex:integer); override;
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
  published
    // propiedades de la Display
    property DisplayProperties:TDisplayProperties read FDisplayProperties write FDisplayProperties;
  end;

// Constantes para la propiedad DitherType
const
  ENUM_STRING_DITHERTYPE_1 = 'No Dithering';
  ENUM_STRING_DITHERTYPE_2 = 'Coarse Brush';
  ENUM_STRING_DITHERTYPE_3 = 'Fine Brush';
  ENUM_STRING_DITHERTYPE_4 = 'Line Art';
  ENUM_STRING_DITHERTYPE_5 = 'Grayscale';
    
//========================================================================= 
// 
// I M P L E M E N T A T I O N 
// 
//========================================================================= 
implementation 
  
uses 
  {Generales} Forms, Types, Windows, SysUtils, 
  {GLib} UProcedures, UConstantes, Dialogs; 
 
  
{ TDisplay } 
{-------------------------------------------------------------------------------} 
// Limpiar las propiedades
procedure TDisplayInfo.ClearProps;
begin

  Self.DisplayProperties.FBitsPerPel := 0;
  Self.DisplayProperties.FCaption := STR_EMPTY;
  Self.DisplayProperties.FDescription := STR_EMPTY;
  Self.DisplayProperties.FDeviceName := STR_EMPTY;
  Self.DisplayProperties.FDisplayFlags := 0;
  Self.DisplayProperties.FDisplayFrequency := 0;
  Self.DisplayProperties.FDitherType := 0;
  Self.DisplayProperties.FDriverVersion := STR_EMPTY;
  Self.DisplayProperties.FICMIntent := 0;
  Self.DisplayProperties.FICMMethod := 0;
  Self.DisplayProperties.FLogPixels := 0;
  Self.DisplayProperties.FPelsHeight := 0;
  Self.DisplayProperties.FPelsWidth := 0;
  Self.DisplayProperties.FSettingID := STR_EMPTY;
  Self.DisplayProperties.FSpecificationVersion := 0;

end;
//: Constructor del componente 
constructor TDisplayInfo.Create(AOwner: TComponent); 
begin 
  inherited; 
 
  Self.FDisplayProperties := TDisplayProperties.Create(); 
//  Self.MSDNHelp := 'dispositivo de visualización.';
end; 
 
// destructor del componente 
destructor TDisplayInfo.Destroy(); 
begin 
 
  // liberar 
  FreeAndNil(Self.FDisplayProperties); 
 
  inherited; 
end; 
 
// Obtener la clase 
function TDisplayInfo.GetWMIClass(): string; 
begin 
  Result := WIN32_DISPLAYCONFIGURATION_CLASS;
end; 
 
// Obtener Root 
function TDisplayInfo.GetWMIRoot(): string; 
begin 
  Result := STR_CIM2_ROOT; 
end; 
 
// Active 
procedure TDisplayInfo.SetActive(const Value: Boolean); 
begin 
  // método heredado 
  inherited; 
end; 
//: Rellenar las propiedades del componente.
procedure TDisplayInfo.FillProperties(AIndex: integer);
var
  v:variant;
  vNull:boolean;
  vp:TDisplayProperties;
begin

  // Llamar al heredado (importante)
  inherited;

  // Rellenar propiedades...
  vp := Self.DisplayProperties;

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
function TDisplayProperties.GetDitherTypeAsString():string;
begin
  case FDitherType of
    0: Result := ENUM_STRING_DITHERTYPE_1;
    1: Result := ENUM_STRING_DITHERTYPE_2;
    2: Result := ENUM_STRING_DITHERTYPE_3;
    3: Result := ENUM_STRING_DITHERTYPE_4;
    4: Result := ENUM_STRING_DITHERTYPE_5;
  else
    Result := STR_EMPTY;
  end;
end;

end.

