{
TStartupCommandInfo Component Version 3.1 - Suite GLibWMI
Copyright (©) 2020,  by Germán Estévez (Neftalí)

La clase Win32_StartupCommand representa un comando que se ejecuta automáticamente cuando un usuario 
inicia sesión en el equipo.


Utilización/Usage:
(ES) Basta con "soltar" el componente y activarlo.
(EN) Place the component in the form and active it.

MSDN Info:
https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-startupcommand

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
unit CStartupCommandInfo;

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
  TStartupCommandProperties = class(TPersistent)
  private
    {%PrivateClassVars PropertiesClass%}
    FCaption:string;
    FCommand:string;
    FDescription:string;
    FLocation:string;
    FName:string;
    FSettingID:string;
    FUser:string;
    FUserSID:string;

  private
    {%PrivateGetMethods PropertiesClass%}

  public
    {%PublicGetMethods PropertiesClass%}
    // Obtener la propiedad <Location> como string
    function GetAllLocationAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <Location>
    function GetAllLocationCount:integer;

    {%PublicArrayMethods PropertiesClass%}

  published
    {%PublishedProperties PropertiesClass%}
    /// <summary>
    /// </summary>
    property Caption:string read FCaption write FCaption stored False;
    /// <summary>
    ///  La propiedad Command indica la cadena que representa la línea de comandos que ejecuta el comando de inicio.
    ///  Ejemplo: 
    ///  c:\winnt\notepad.exe miArchivo.txt.
    /// </summary>
    property Command:string read FCommand write FCommand stored False;
    /// <summary>
    ///  La propiedad Command indica la cadena que representa la línea de comandos que ejecuta el comando de inicio.
    ///  Ejemplo: 
    ///  c:\winnt\notepad.exe miArchivo.txt.
    /// </summary>
    property Description:string read FDescription write FDescription stored False;
    /// <summary>
    ///  La propiedad Location indica la ruta de acceso en que reside el comando de inicio en el sistema de archivos 
    ///  del disco.
    /// </summary>
    property Location:string read FLocation write FLocation stored False;
    /// <summary>
    ///  La propiedad Name indica el nombre de archivo del comando de inicio.
    ///  Ejemplo: FindFast
    /// </summary>
    property Name:string read FName write FName stored False;
    /// <summary>
    ///  La propiedad Name indica el nombre de archivo del comando de inicio.
    ///  Ejemplo: FindFast
    /// </summary>
    property SettingID:string read FSettingID write FSettingID stored False;
    /// <summary>
    ///  La propiedad User indica el nombre de usuario para el que se ejecutará el comando de inicio.
    ///  Ejemplo: 
    ///  MiDominio\MiNombre.
    /// </summary>
    property User:string read FUser write FUser stored False;
    /// <summary>
    ///  La propiedad UserSID indica el SID del usuario para el que se ejecutará el comando de inicio. Dicha propiedad 
    ///  de usuario puede estar vacía, pero UserSID conserva un valor si el nombre de usuario no se puede resolver 
    ///  (como en el caso de un usuario eliminado). La propiedad es de utilidad para distinguir entre comandos 
    ///  asociados con dos diferentes usuarios sin nombres resueltos. Puede ser NULL si el comando se asocia con 
    ///  elementos que no identifican a un usuario, como Todos los usuarios.
    ///  Ejemplo:S-1-5-21-1579938362-1064
    ///  596589-3161144252-1006
    /// </summary>
    property UserSID:string read FUserSID write FUserSID stored False;
  end;

  {%InterfaceClass WMIClass%}
  /// <summary>
  ///  La clase Win32_StartupCommand representa un comando que se ejecuta automáticamente cuando un usuario 
  ///  inicia sesión en el equipo.
  /// </summary>
  TStartupCommandInfo = class(TWMIBase)
  private
    FStartupCommandProperties: TStartupCommandProperties;
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
    // propiedades de la StartupCommand
    property StartupCommandProperties:TStartupCommandProperties read   FStartupCommandProperties write FStartupCommandProperties;
  end;


// Constantes para la propiedad Location
const 
  ENUM_STRING_LOCATION_00 = 'Inicio';
  ENUM_STRING_LOCATION_01 = 'Inicio común';
  ENUM_STRING_LOCATION_02 = 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run';
  ENUM_STRING_LOCATION_03 = 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\RunServices';

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
procedure TStartupCommandInfo.ClearProps;
begin
  Self.StartupCommandProperties.FCaption := EmptyStr;
  Self.StartupCommandProperties.FCommand := EmptyStr;
  Self.StartupCommandProperties.FDescription := EmptyStr;
  Self.StartupCommandProperties.FLocation := EmptyStr;
  Self.StartupCommandProperties.FName := EmptyStr;
  Self.StartupCommandProperties.FSettingID := EmptyStr;
  Self.StartupCommandProperties.FUser := EmptyStr;
  Self.StartupCommandProperties.FUserSID := EmptyStr;
end;

//: Constructor del componente
constructor TStartupCommandInfo.Create(AOwner: TComponent);
begin
  inherited;
  Self.FStartupCommandProperties := TStartupCommandProperties.Create();
  Self.MSDNHelp := 'https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-startupcommand';
end;

//: destructor del componente
destructor TStartupCommandInfo.Destroy();
begin
  // liberar
  FreeAndNil(Self.FStartupCommandProperties);
  inherited;
end;

//: Obtener la clase
function TStartupCommandInfo.GetWMIClass(): string;
begin
  Result := 'Win32_StartupCommand'
end;

//: Obtener Root
function TStartupCommandInfo.GetWMIRoot(): string;
begin
  Result := '';
end;

//: Procedmiento de activación
procedure TStartupCommandInfo.SetActive(const Value: Boolean);
begin
  // método heredado
  inherited;
end;


//: Rellenar las propiedades del componente.
procedure TStartupCommandInfo.FillProperties(AIndex: integer);
var
  v:     variant;
  vNull: boolean;
  vp:    TStartupCommandProperties;
begin
  // Llamar al heredado (importante)
  inherited;
  // Rellenar propiedades...
  vp := StartupCommandProperties;

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
  vp.FUserSID := VariantStrValue(v, vNull);
end;


// Obtener la propiedad como string
function TStartupCommandProperties.GetAllLocationAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_LOCATION_00;
    01: Result := ENUM_STRING_LOCATION_01;
    02: Result := ENUM_STRING_LOCATION_02;
    03: Result := ENUM_STRING_LOCATION_03;
  else
    Result := STR_EMPTY;
  end;
end;


// Obtener núm. de elementos de la propiedad como string
function TStartupCommandProperties.GetAllLocationCount:integer;
begin
  Result := 4
end;


end.
