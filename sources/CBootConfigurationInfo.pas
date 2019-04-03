{ 
TBootConfigurationInfo  Component Version 2.0b - Suite GLibWMI 
Copyright (©) 2009-2013,  by Germán Estévez (Neftalí) 
 
  La clase WMI Win32_BootConfiguration representa la configuración de arranque de un ordenador con Windows.
 
Utilización/Usage: 
  Basta con "soltar" el componente y activarlo. 
 
  Place the component in the form and active it. 
 
  MSDN Info: 
  http://msdn.microsoft.com/en-us/library/aa394078(v=vs.85).aspx 
 
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
@cat Package GLib 
} 
unit CBootConfigurationInfo; 
 
{ 
========================================================================= 
 
  TBootConfigurationInfo.pas 
 
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
  TBootConfigurationProperties = class(TPersistent)
  private
    FBootDirectory:string;
    FCaption:string;
    FConfigurationPath:string;
    FDescription:string;
    FLastDrive:string;
    FName:string;
    FScratchDirectory:string;
    FSettingID:string;
    FTempDirectory:string;
  private
  public

// {GET_ENUM}

  published
    property BootDirectory:string read FBootDirectory write FBootDirectory stored False;
    property Caption:string read FCaption write FCaption stored False;
    property ConfigurationPath:string read FConfigurationPath write FConfigurationPath stored False;
    property Description:string read FDescription write FDescription stored False;
    property LastDrive:string read FLastDrive write FLastDrive stored False;
    property Name:string read FName write FName stored False;
    property ScratchDirectory:string read FScratchDirectory write FScratchDirectory stored False;
    property SettingID:string read FSettingID write FSettingID stored False;
    property TempDirectory:string read FTempDirectory write FTempDirectory stored False;
  end;
  
  //: Implementación para el acceso vía WMI a la clase Win32_BootConfiguration
  TBootConfigurationInfo = class(TWMIBase)
  private
    fConnected:boolean;
    FBootConfigurationProperties: TBootConfigurationProperties;
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
    // propiedades de la BootConfiguration
    property BootConfigurationProperties:TBootConfigurationProperties read FBootConfigurationProperties write FBootConfigurationProperties;
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

  
{ TBootConfiguration } 
{-------------------------------------------------------------------------------} 
// Limpiar las propiedades
procedure TBootConfigurationInfo.ClearProps;
begin

  Self.BootConfigurationProperties.FBootDirectory := STR_EMPTY;
  Self.BootConfigurationProperties.FCaption := STR_EMPTY;
  Self.BootConfigurationProperties.FConfigurationPath := STR_EMPTY;
  Self.BootConfigurationProperties.FDescription := STR_EMPTY;
  Self.BootConfigurationProperties.FLastDrive := STR_EMPTY;
  Self.BootConfigurationProperties.FName := STR_EMPTY;
  Self.BootConfigurationProperties.FScratchDirectory := STR_EMPTY;
  Self.BootConfigurationProperties.FSettingID := STR_EMPTY;
  Self.BootConfigurationProperties.FTempDirectory := STR_EMPTY;

end;
//: Constructor del componente 
constructor TBootConfigurationInfo.Create(AOwner: TComponent); 
begin 
  inherited; 
 
  Self.FBootConfigurationProperties := TBootConfigurationProperties.Create(); 
  Self.MSDNHelp := 'http://msdn.microsoft.com/en-us/library/aa394078(v=vs.85).aspx';
end; 
 
// destructor del componente 
destructor TBootConfigurationInfo.Destroy(); 
begin 
 
  // liberar 
  FreeAndNil(Self.FBootConfigurationProperties); 
 
  inherited; 
end; 
 
// Obtener la clase 
function TBootConfigurationInfo.GetWMIClass(): string; 
begin 
  Result := 'Win32_BootConfiguration'
end; 
 
// Obtener Root 
function TBootConfigurationInfo.GetWMIRoot(): string; 
begin 
  Result := STR_CIM2_ROOT; 
end; 
 
// Active 
procedure TBootConfigurationInfo.SetActive(const Value: Boolean); 
begin 
  // método heredado 
  inherited; 
end; 

//: Rellenar las propiedades del componente.
procedure TBootConfigurationInfo.FillProperties(AIndex: integer);
var
  s:string;
  i:Integer;
  d:TDateTime;
  v:variant;
  vType:TWMIGenericPropType;
  vArr:TArrVariant;
  vNull:boolean;
  vp:TBootConfigurationProperties;
begin

  // Llamar al heredado (importante)
  inherited;

  // Rellenar propiedades...
  vp := Self.BootConfigurationProperties;

  GetWMIPropertyValue(Self, 'BootDirectory', v, vNull);
  vp.FBootDirectory := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Caption', v, vNull);
  vp.FCaption := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'ConfigurationPath', v, vNull);
  vp.FConfigurationPath := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Description', v, vNull);
  vp.FDescription := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'LastDrive', v, vNull);
  vp.FLastDrive := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Name', v, vNull);
  vp.FName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'ScratchDirectory', v, vNull);
  vp.FScratchDirectory := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'SettingID', v, vNull);
  vp.FSettingID := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'TempDirectory', v, vNull);
  vp.FTempDirectory := VariantStrValue(v, vNull);

end;

// {IMPL_ENUM}

end.
