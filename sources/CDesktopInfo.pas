{ 
TDesktopInfo  Component Version 2.0b - Suite GLibWMI 
Copyright (©) 2009-2013,  by Germán Estévez (Neftalí)  
 
  La clase WMI Win32_Desktop representa las características comunes del escritorio del usuario. Las propiedades de esta clase son modificables por el usuario para personalizar el escritorio.
 
Utilización/Usage: 
  Basta con "soltar" el componente y activarlo. 
 
  Place the component in the form and active it. 
 
  MSDN Info: 
  http://msdn.microsoft.com/en-us/library/aa394121(VS.85).aspx 
 
========================================================================= 
IMPORTANTE PROGRAMADORES: Por favor, si tienes comentarios, mejoras, ampliaciones, 
  errores y/o cualquier otro tipo de sugerencia envíame un mail a: 
  german_ral@hotmail.com 
 
IMPORTANT PROGRAMMERS: please, if you have comments, improvements, enlargements, 
errors and/or any another type of suggestion send a mail to: 
german_ral@hotmail.com 
========================================================================= 
 
@author Germán Estévez (Neftalí) 
@web  http://neftali.clubDelphi.com
@cat Package GLibWMI 
} 
unit CDesktopInfo; 
 
{ 
========================================================================= 
 
  TDesktopInfo.pas 
 
  Componente 
 
======================================================================== 
  Historia de las Versiones 
------------------------------------------------------------------------ 
 
  30/04/2013    * Creación. 
 
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
  {$IF CompilerVersion >= 23.0}
  VCL.Controls, System.Classes,
  {$ELSE}
  Classes, Controls,
  {$IFEND}
  CWMIBase;
 
type 
  //: Clase para definir las propiedades del componente.
  TDesktopProperties = class(TPersistent)
  private
    FBorderWidth:Longword;
    FCaption:string;
    FCoolSwitch:boolean;
    FCursorBlinkRate:Longword;
    FDescription:string;
    FDragFullWindows:boolean;
    FGridGranularity:Longword;
    FIconSpacing:Longword;
    FIconTitleFaceName:string;
    FIconTitleSize:Longword;
    FIconTitleWrap:boolean;
    FName:string;
    FPattern:string;
    FScreenSaverActive:boolean;
    FScreenSaverExecutable:string;
    FScreenSaverSecure:boolean;
    FScreenSaverTimeout:Longword;
    FSettingID:string;
    FWallpaper:string;
    FWallpaperStretched:boolean;
    FWallpaperTiled:boolean;
  private
  public

// {GET_ENUM}

  published
    property BorderWidth:Longword read FBorderWidth write FBorderWidth stored False;
    property Caption:string read FCaption write FCaption stored False;
    property CoolSwitch:boolean read FCoolSwitch write FCoolSwitch stored False;
    property CursorBlinkRate:Longword read FCursorBlinkRate write FCursorBlinkRate stored False;
    property Description:string read FDescription write FDescription stored False;
    property DragFullWindows:boolean read FDragFullWindows write FDragFullWindows stored False;
    property GridGranularity:Longword read FGridGranularity write FGridGranularity stored False;
    property IconSpacing:Longword read FIconSpacing write FIconSpacing stored False;
    property IconTitleFaceName:string read FIconTitleFaceName write FIconTitleFaceName stored False;
    property IconTitleSize:Longword read FIconTitleSize write FIconTitleSize stored False;
    property IconTitleWrap:boolean read FIconTitleWrap write FIconTitleWrap stored False;
    property Name:string read FName write FName stored False;
    property Pattern:string read FPattern write FPattern stored False;
    property ScreenSaverActive:boolean read FScreenSaverActive write FScreenSaverActive stored False;
    property ScreenSaverExecutable:string read FScreenSaverExecutable write FScreenSaverExecutable stored False;
    property ScreenSaverSecure:boolean read FScreenSaverSecure write FScreenSaverSecure stored False;
    property ScreenSaverTimeout:Longword read FScreenSaverTimeout write FScreenSaverTimeout stored False;
    property SettingID:string read FSettingID write FSettingID stored False;
    property Wallpaper:string read FWallpaper write FWallpaper stored False;
    property WallpaperStretched:boolean read FWallpaperStretched write FWallpaperStretched stored False;
    property WallpaperTiled:boolean read FWallpaperTiled write FWallpaperTiled stored False;
  end;
  
  //: Implementación para el acceso vía WMI a la clase Win32_Desktop
  TDesktopInfo = class(TWMIBase)
  private
    fConnected:boolean;
    FDesktopProperties: TDesktopProperties;
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
    // propiedades de la Desktop
    property DesktopProperties:TDesktopProperties read FDesktopProperties write FDesktopProperties;
  end;

// {CONST_ENUM}

    
//========================================================================= 
// 
// I M P L E M E N T A T I O N 
// 
//========================================================================= 
implementation 
  
uses
  {$IF CompilerVersion >= 23.0}
  VCL.Forms, WinAPI.Windows, System.Types, VCL.Dialogs, System.SysUtils,
  {$ELSE}
  Forms, Types, Windows, SysUtils, Dialogs,
  {$IFEND}
  UProcedures, UConstantes;
 
  
{ TDesktop } 
{-------------------------------------------------------------------------------} 
// Limpiar las propiedades
procedure TDesktopInfo.ClearProps;
begin

  Self.DesktopProperties.FBorderWidth := 0;
  Self.DesktopProperties.FCaption := STR_EMPTY;
  Self.DesktopProperties.FCoolSwitch := False;
  Self.DesktopProperties.FCursorBlinkRate := 0;
  Self.DesktopProperties.FDescription := STR_EMPTY;
  Self.DesktopProperties.FDragFullWindows := False;
  Self.DesktopProperties.FGridGranularity := 0;
  Self.DesktopProperties.FIconSpacing := 0;
  Self.DesktopProperties.FIconTitleFaceName := STR_EMPTY;
  Self.DesktopProperties.FIconTitleSize := 0;
  Self.DesktopProperties.FIconTitleWrap := False;
  Self.DesktopProperties.FName := STR_EMPTY;
  Self.DesktopProperties.FPattern := STR_EMPTY;
  Self.DesktopProperties.FScreenSaverActive := False;
  Self.DesktopProperties.FScreenSaverExecutable := STR_EMPTY;
  Self.DesktopProperties.FScreenSaverSecure := False;
  Self.DesktopProperties.FScreenSaverTimeout := 0;
  Self.DesktopProperties.FSettingID := STR_EMPTY;
  Self.DesktopProperties.FWallpaper := STR_EMPTY;
  Self.DesktopProperties.FWallpaperStretched := False;
  Self.DesktopProperties.FWallpaperTiled := False;

end;
//: Constructor del componente 
constructor TDesktopInfo.Create(AOwner: TComponent); 
begin 
  inherited; 
 
  Self.FDesktopProperties := TDesktopProperties.Create(); 
  Self.MSDNHelp := 'http://msdn.microsoft.com/en-us/library/aa394121(VS.85).aspx';
end; 
 
// destructor del componente 
destructor TDesktopInfo.Destroy(); 
begin 
 
  // liberar 
  FreeAndNil(Self.FDesktopProperties); 
 
  inherited; 
end; 
 
// Obtener la clase 
function TDesktopInfo.GetWMIClass(): string; 
begin 
  Result := 'Win32_Desktop'
end; 
 
// Obtener Root 
function TDesktopInfo.GetWMIRoot(): string; 
begin 
  Result := STR_CIM2_ROOT; 
end; 
 
// Active 
procedure TDesktopInfo.SetActive(const Value: Boolean); 
begin 
  // método heredado 
  inherited; 
end; 

//: Rellenar las propiedades del componente.
procedure TDesktopInfo.FillProperties(AIndex: integer);
var
  s:string;
  i:Integer;
  d:TDateTime;
  v:variant;
  vType:TWMIGenericPropType;
  vArr:TArrVariant;
  vNull:boolean;
  vp:TDesktopProperties;
begin

  // Llamar al heredado (importante)
  inherited;

  // Rellenar propiedades...
  vp := Self.DesktopProperties;

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

// {IMPL_ENUM}

end.
