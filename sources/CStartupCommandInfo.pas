{ 
TStartupCommandInfo  Component Version 1.9b - Suite GLib 
Copyright (©) 2009,  by Germán Estévez (Neftalí) 
 
  Representa los programas que se ejecutan cuando el usuario hace Logon en el sistema.
 
Utilización/Usage: 
  Basta con "soltar" el componente y activarlo. 
 
  Place the component in the form and active it. 
 
  MSDN Info: 
  http://msdn.microsoft.com/en-us/library/aa394464(VS.85).aspx 
 
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
unit CStartupCommandInfo; 
 
{ 
========================================================================= 
 
  TStartupCommandInfo.pas 
 
  Componente 
 
======================================================================== 
  Historia de las Versiones 
------------------------------------------------------------------------ 
 
  11/01/2010    * Creación. 
 
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
  TStartupCommandProperties = class(TPersistent)
  private
    FCaption:string;
    FCommand:string;
    FDescription:string;
    FLocation:string;
    FName:string;
    FSettingID:string;
    FUser:string;
    FUserSID:TArrString;
    FUserSIDCount:integer;
    FUserSIDAsString:string;
  private
    function GetUserSID(index: integer): string;
  public
    property UserSID[index:integer]:string read GetUserSID;
    property UserSIDCount:integer read FUserSIDCount stored False;

// {GET_ENUM}

  published
    property Caption:string read FCaption write FCaption stored False;
    property Command:string read FCommand write FCommand stored False;
    property Description:string read FDescription write FDescription stored False;
    property Location:string read FLocation write FLocation stored False;
    property Name:string read FName write FName stored False;
    property SettingID:string read FSettingID write FSettingID stored False;
    property User:string read FUser write FUser stored False;
    property UserSIDAsString:string read FUserSIDAsString write FUserSIDAsString stored False;
  end;
  
  //: Implementación para el acceso vía WMI a la clase Win32_StartupCommand
  TStartupCommandInfo = class(TWMIBase)
  private
    FStartupCommandProperties: TStartupCommandProperties;
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
    // propiedades de la StartupCommand
    property StartupCommandProperties:TStartupCommandProperties read FStartupCommandProperties write FStartupCommandProperties;
  end;

// {CONST_ENUM}

    
//========================================================================= 
// 
// I M P L E M E N T A T I O N 
// 
//========================================================================= 
implementation 
  
uses 
  {Generales} Forms, Types, Windows, SysUtils, 
  {GLib} UProcedures, UConstantes, Dialogs; 
 
  
{ TStartupCommand } 
{-------------------------------------------------------------------------------} 
// Limpiar las propiedades
procedure TStartupCommandInfo.ClearProps;
begin

  Self.StartupCommandProperties.FCaption := STR_EMPTY;
  Self.StartupCommandProperties.FCommand := STR_EMPTY;
  Self.StartupCommandProperties.FDescription := STR_EMPTY;
  Self.StartupCommandProperties.FLocation := STR_EMPTY;
  Self.StartupCommandProperties.FName := STR_EMPTY;
  Self.StartupCommandProperties.FSettingID := STR_EMPTY;
  Self.StartupCommandProperties.FUser := STR_EMPTY;
  Self.StartupCommandProperties.FUserSIDCount := 0;
  Self.StartupCommandProperties.FUserSIDAsString := STR_EMPTY;
  SetLength(Self.StartupCommandProperties.FUserSID,0);

end;
//: Constructor del componente 
constructor TStartupCommandInfo.Create(AOwner: TComponent); 
begin 
  inherited; 
 
  Self.FStartupCommandProperties := TStartupCommandProperties.Create(); 
  Self.MSDNHelp := 'http://msdn.microsoft.com/en-us/library/aa394464(VS.85).aspx';
end; 
 
// destructor del componente 
destructor TStartupCommandInfo.Destroy(); 
begin 
 
  // liberar 
  FreeAndNil(Self.FStartupCommandProperties); 
 
  inherited; 
end; 
 
// Obtener la clase 
function TStartupCommandInfo.GetWMIClass(): string; 
begin 
  Result := WIN32_STARTUPCOMMAND_CLASS;
end; 
 
// Obtener Root 
function TStartupCommandInfo.GetWMIRoot(): string; 
begin 
  Result := STR_CIM2_ROOT; 
end; 
 
// Active 
procedure TStartupCommandInfo.SetActive(const Value: Boolean); 
begin 
  // método heredado 
  inherited; 
end; 
// Acceso a los elementos de la propiedad <UserSID>
function TStartupCommandProperties.GetUserSID(index: integer):string;
begin
  if (index >= Self.FUserSIDCount) then begin
    Index := Self.FUserSIDCount - 1;
  end;
  Result := Self.FUserSID[index];
end;
 
//: Rellenar las propiedades del componente.
procedure TStartupCommandInfo.FillProperties(AIndex: integer);
var
  v:variant;
  vNull:boolean;
  vp:TStartupCommandProperties;
begin

  // Llamar al heredado (importante)
  inherited;

  // Rellenar propiedades...
  vp := Self.StartupCommandProperties;

  GetWMIPropertyValue(Self, 'Caption', v, vNull);
  vp.FCaption := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Command', v, vNull);
  vp.FCommand := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Description', v, vNull);
  vp.FDescription := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Location', v, vNull);
  vp.FLocation := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Name', v, vNull);
  vp.FName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'SettingID', v, vNull);
  vp.FSettingID := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'User', v, vNull);
  vp.FUser := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'UserSID', v, vNull);
  vp.FUserSIDAsString := VariantStrValue(v, vNull);
//  vp.FUserSID := VariantStrValue(v, vNull);

end;

// {IMPL_ENUM}

end.
