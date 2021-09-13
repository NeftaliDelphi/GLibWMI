{
TDesktopInfo Component Version 3.1 - Suite GLibWMI
Copyright (©) 2020,  by Germán Estévez (Neftalí)

La clase Win32_Desktop representa las características comunes del escritorio de un usuario. El usuario 
puede modificar las propiedades de esta clase para personalizar el escritorio.


Utilización/Usage:
(ES) Basta con "soltar" el componente y activarlo.
(EN) Place the component in the form and active it.

MSDN Info:
https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-desktop

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
unit CDesktopInfo;

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
  TDesktopProperties = class(TPersistent)
  private
    {%PrivateClassVars PropertiesClass%}
    FBorderWidth:integer;
    FCaption:string;
    FCoolSwitch:boolean;
    FCursorBlinkRate:integer;
    FDescription:string;
    FDragFullWindows:boolean;
    FGridGranularity:integer;
    FIconSpacing:integer;
    FIconTitleFaceName:string;
    FIconTitleSize:integer;
    FIconTitleWrap:boolean;
    FName:string;
    FPattern:string;
    FScreenSaverActive:boolean;
    FScreenSaverExecutable:string;
    FScreenSaverSecure:boolean;
    FScreenSaverTimeout:integer;
    FSettingID:string;
    FWallpaper:string;
    FWallpaperStretched:boolean;
    FWallpaperTiled:boolean;

  private
    {%PrivateGetMethods PropertiesClass%}

  public
    {%PublicGetMethods PropertiesClass%}

    {%PublicArrayMethods PropertiesClass%}

  published
    {%PublishedProperties PropertiesClass%}
    /// <summary>
    ///  La propiedad BorderWidth configura el ancho de los bordes alrededor de todas las ventanas con bordes 
    ///  ajustables.
    ///  Ejemplo: 3.
    /// </summary>
    property BorderWidth:integer read FBorderWidth write FBorderWidth stored False;
    /// <summary>
    ///  La propiedad BorderWidth configura el ancho de los bordes alrededor de todas las ventanas con bordes 
    ///  ajustables.
    ///  Ejemplo: 3.
    /// </summary>
    property Caption:string read FCaption write FCaption stored False;
    /// <summary>
    ///  La propiedad CoolSwitch indica si el conmutador rápido de tareas está activado. Cambiar rápidamente de 
    ///  tarea permite al usuario cambiar entre ventanas mediante la combinación de teclas ALT+TAB.
    /// </summary>
    property CoolSwitch:boolean read FCoolSwitch write FCoolSwitch stored False;
    /// <summary>
    ///  La propiedad CursorBlinkRate indica el espacio de tiempo transcurrido entre parpadeos sucesivos del cursor.
    ///  Ejemplo: 
    ///  530.
    /// </summary>
    property CursorBlinkRate:integer read FCursorBlinkRate write FCursorBlinkRate stored False;
    /// <summary>
    ///  La propiedad CursorBlinkRate indica el espacio de tiempo transcurrido entre parpadeos sucesivos del cursor.
    ///  Ejemplo: 
    ///  530.
    /// </summary>
    property Description:string read FDescription write FDescription stored False;
    /// <summary>
    ///  La propiedad DragFullWindows indica si se mostrará el contenido de una ventana cuando el usuario mueva 
    ///  la ventana.
    ///  Valores: TRUE o FALSE. El valor TRUE indica que se muestra el contenido de la ventana mientras 
    ///  el usuario la mueve.
    /// </summary>
    property DragFullWindows:boolean read FDragFullWindows write FDragFullWindows stored False;
    /// <summary>
    ///  La propiedad GridGranularity indica el espaciado de la cuadrícula a la que están enlazadas las ventanas 
    ///  en el escritorio. Así se facilita la organización de las ventanas. Normalmente, el espaciado es lo suficientemente 
    ///  fino como para que el usuario no repare en él.
    ///  Ejemplo: 1.
    /// </summary>
    property GridGranularity:integer read FGridGranularity write FGridGranularity stored False;
    /// <summary>
    ///  La propiedad GridGranularity indica el espaciado de la cuadrícula a la que están enlazadas las ventanas 
    ///  en el escritorio. Así se facilita la organización de las ventanas. Normalmente, el espaciado es lo suficientemente 
    ///  fino como para que el usuario no repare en él.
    ///  Ejemplo: 1.
    /// </summary>
    property IconSpacing:integer read FIconSpacing write FIconSpacing stored False;
    /// <summary>
    ///  La propiedad IconTitleFaceName indica el nombre del tipo de fuente utilizada en los nombres de los iconos.
    ///  Ejemplo: 
    ///  MS San Serif.
    /// </summary>
    property IconTitleFaceName:string read FIconTitleFaceName write FIconTitleFaceName stored False;
    /// <summary>
    ///  La propiedad IconTitleFaceName indica el nombre del tipo de fuente utilizada en los nombres de los iconos.
    ///  Ejemplo: 
    ///  MS San Serif.
    /// </summary>
    property IconTitleSize:integer read FIconTitleSize write FIconTitleSize stored False;
    /// <summary>
    ///  La propiedad IconTitleWrap indica si el texto del título del icono se ajusta a la línea siguiente.
    ///  Valores: 
    ///  TRUE o FALSE. El valor TRUE indica que el título se ajusta a la línea siguiente.
    /// </summary>
    property IconTitleWrap:boolean read FIconTitleWrap write FIconTitleWrap stored False;
    /// <summary>
    ///  La propiedad IconTitleWrap indica si el texto del título del icono se ajusta a la línea siguiente.
    ///  Valores: 
    ///  TRUE o FALSE. El valor TRUE indica que el título se ajusta a la línea siguiente.
    /// </summary>
    property Name:string read FName write FName stored False;
    /// <summary>
    ///  La propiedad Pattern indica el nombre del patrón utilizado como fondo del escritorio
    /// </summary>
    property Pattern:string read FPattern write FPattern stored False;
    /// <summary>
    ///  La propiedad ScreenSaverActive indica si el protector de pantalla está activo.
    ///  Valores: TRUE o FALSE. 
    ///  El valor TRUE indica que el protector de pantalla está activo.
    /// </summary>
    property ScreenSaverActive:boolean read FScreenSaverActive write FScreenSaverActive stored False;
    /// <summary>
    ///  La propiedad ScreenSaverExecutable indica el nombre del archivo ejecutable del protector de pantalla 
    ///  actual.
    ///  Ejemplo: LOGON.SCR.
    /// </summary>
    property ScreenSaverExecutable:string read FScreenSaverExecutable write FScreenSaverExecutable stored False;
    /// <summary>
    ///  La propiedad ScreenSaverSecure determina si la contraseña del protector de pantalla está habilitada.
    ///  Valores: 
    ///  TRUE o FALSE. Si es TRUE, la contraseña del protector de pantalla está habilitada.
    /// </summary>
    property ScreenSaverSecure:boolean read FScreenSaverSecure write FScreenSaverSecure stored False;
    /// <summary>
    ///  La propiedad ScreenSaverTimeout indica el espacio de tiempo que debe transcurrir para que se inicie el 
    ///  protector de pantalla.
    /// </summary>
    property ScreenSaverTimeout:integer read FScreenSaverTimeout write FScreenSaverTimeout stored False;
    /// <summary>
    ///  La propiedad ScreenSaverTimeout indica el espacio de tiempo que debe transcurrir para que se inicie el 
    ///  protector de pantalla.
    /// </summary>
    property SettingID:string read FSettingID write FSettingID stored False;
    /// <summary>
    ///  La propiedad Wallpaper indica el nombre de archivo del diseño de papel tapiz del fondo del escritorio.
    ///  Ejemplo: 
    ///  WINNT.BMP
    /// </summary>
    property Wallpaper:string read FWallpaper write FWallpaper stored False;
    /// <summary>
    ///  La propiedad WallpaperStretched indica si el papel tapiz se estira hasta ocupar toda la pantalla. Se 
    ///  debe instalar Microsoft Plus! para que esta opción esté disponible.
    ///  Valores: TRUE y FALSE. El valor TRUE 
    ///  indica que el papel tapiz está estirado hasta ocupar toda la pantalla. Si es FALSE, el papel tapiz mantiene 
    ///  sus dimensiones originales en el fondo del escritorio.
    /// </summary>
    property WallpaperStretched:boolean read FWallpaperStretched write FWallpaperStretched stored False;
    /// <summary>
    ///  La propiedad WallpaperTiled indica si el papel tapiz está en mosaico o centrado.
    ///  Valores: TRUE o FALSE. 
    ///  El valor TRUE indica que el papel tapiz está en mosaico.
    /// </summary>
    property WallpaperTiled:boolean read FWallpaperTiled write FWallpaperTiled stored False;
  end;

  {%InterfaceClass WMIClass%}
  /// <summary>
  ///  La clase Win32_Desktop representa las características comunes del escritorio de un usuario. El usuario 
  ///  puede modificar las propiedades de esta clase para personalizar el escritorio.
  /// </summary>
  TDesktopInfo = class(TWMIBase)
  private
    FDesktopProperties: TDesktopProperties;
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
    // propiedades de la Desktop
    property DesktopProperties:TDesktopProperties read   FDesktopProperties write FDesktopProperties;
  end;


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
procedure TDesktopInfo.ClearProps;
begin
  Self.DesktopProperties.FBorderWidth := 0;
  Self.DesktopProperties.FCaption := EmptyStr;
  Self.DesktopProperties.FCoolSwitch := False;
  Self.DesktopProperties.FCursorBlinkRate := 0;
  Self.DesktopProperties.FDescription := EmptyStr;
  Self.DesktopProperties.FDragFullWindows := False;
  Self.DesktopProperties.FGridGranularity := 0;
  Self.DesktopProperties.FIconSpacing := 0;
  Self.DesktopProperties.FIconTitleFaceName := EmptyStr;
  Self.DesktopProperties.FIconTitleSize := 0;
  Self.DesktopProperties.FIconTitleWrap := False;
  Self.DesktopProperties.FName := EmptyStr;
  Self.DesktopProperties.FPattern := EmptyStr;
  Self.DesktopProperties.FScreenSaverActive := False;
  Self.DesktopProperties.FScreenSaverExecutable := EmptyStr;
  Self.DesktopProperties.FScreenSaverSecure := False;
  Self.DesktopProperties.FScreenSaverTimeout := 0;
  Self.DesktopProperties.FSettingID := EmptyStr;
  Self.DesktopProperties.FWallpaper := EmptyStr;
  Self.DesktopProperties.FWallpaperStretched := False;
  Self.DesktopProperties.FWallpaperTiled := False;
end;

//: Constructor del componente
constructor TDesktopInfo.Create(AOwner: TComponent);
begin
  inherited;
  Self.FDesktopProperties := TDesktopProperties.Create();
  Self.MSDNHelp := 'https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-desktop';
end;

//: destructor del componente
destructor TDesktopInfo.Destroy();
begin
  // liberar
  FreeAndNil(Self.FDesktopProperties);
  inherited;
end;

//: Obtener la clase
function TDesktopInfo.GetWMIClass(): string;
begin
  Result := 'Win32_Desktop'
end;

//: Obtener Root
function TDesktopInfo.GetWMIRoot(): string;
begin
  Result := '';
end;

//: Procedmiento de activación
procedure TDesktopInfo.SetActive(const Value: Boolean);
begin
  // método heredado
  inherited;
end;


//: Rellenar las propiedades del componente.
procedure TDesktopInfo.FillProperties(AIndex: integer);
var
  v:     variant;
  vNull: boolean;
  vp:    TDesktopProperties;
begin
  // Llamar al heredado (importante)
  inherited;
  // Rellenar propiedades...
  vp := DesktopProperties;

  GetWMIPropertyValue(Self, 'BorderWidth', v, vNull);
  vp.FBorderWidth := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Caption', v, vNull);
  vp.FCaption := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'CoolSwitch', v, vNull);
  vp.FCoolSwitch := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'CursorBlinkRate', v, vNull);
  vp.FCursorBlinkRate := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Description', v, vNull);
  vp.FDescription := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'DragFullWindows', v, vNull);
  vp.FDragFullWindows := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'GridGranularity', v, vNull);
  vp.FGridGranularity := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'IconSpacing', v, vNull);
  vp.FIconSpacing := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'IconTitleFaceName', v, vNull);
  vp.FIconTitleFaceName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'IconTitleSize', v, vNull);
  vp.FIconTitleSize := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'IconTitleWrap', v, vNull);
  vp.FIconTitleWrap := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'Name', v, vNull);
  vp.FName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Pattern', v, vNull);
  vp.FPattern := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'ScreenSaverActive', v, vNull);
  vp.FScreenSaverActive := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'ScreenSaverExecutable', v, vNull);
  vp.FScreenSaverExecutable := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'ScreenSaverSecure', v, vNull);
  vp.FScreenSaverSecure := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'ScreenSaverTimeout', v, vNull);
  vp.FScreenSaverTimeout := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'SettingID', v, vNull);
  vp.FSettingID := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Wallpaper', v, vNull);
  vp.FWallpaper := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'WallpaperStretched', v, vNull);
  vp.FWallpaperStretched := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'WallpaperTiled', v, vNull);
  vp.FWallpaperTiled := VariantBooleanValue(v, vNull);
end;




end.
