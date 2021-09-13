{
TEnvironmentInfo Component Version 3.1 - Suite GLibWMI
Copyright (©) 2020,  by Germán Estévez (Neftalí)

La clase Win32_Environment representa una configuración de entorno o de sistema en un sistema Win32.


Utilización/Usage:
(ES) Basta con "soltar" el componente y activarlo.
(EN) Place the component in the form and active it.

MSDN Info:
https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-environment

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
unit CEnvironmentInfo;

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
  TEnvironmentProperties = class(TPersistent)
  private
    {%PrivateClassVars PropertiesClass%}
    FCaption:string;
    FDescription:string;
    FInstallDate:TDatetime;
    FName:string;
    FStatus:string;
    FSystemVariable:boolean;
    FUserName:string;
    FVariableValue:string;

  private
    {%PrivateGetMethods PropertiesClass%}

  public
    {%PublicGetMethods PropertiesClass%}

    {%PublicArrayMethods PropertiesClass%}

  published
    {%PublishedProperties PropertiesClass%}
    /// <summary>
    /// </summary>
    property Caption:string read FCaption write FCaption stored False;
    /// <summary>
    /// </summary>
    property Description:string read FDescription write FDescription stored False;
    /// <summary>
    /// </summary>
    property InstallDate:TDatetime read FInstallDate write FInstallDate stored False;
    /// <summary>
    ///  La propiedad Name contiene una cadena de caracteres que especifica el nombre de una variable de entorno 
    ///  de Win32. Al especificar nombres de variables que no existen, las aplicaciones pueden crear nuevas variables 
    ///  de entorno. 
    ///  Ejemplo: ruta.
    /// </summary>
    property Name:string read FName write FName stored False;
    /// <summary>
    ///  La propiedad Name contiene una cadena de caracteres que especifica el nombre de una variable de entorno 
    ///  de Win32. Al especificar nombres de variables que no existen, las aplicaciones pueden crear nuevas variables 
    ///  de entorno. 
    ///  Ejemplo: ruta.
    /// </summary>
    property Status:string read FStatus write FStatus stored False;
    /// <summary>
    ///  La propiedad SystemVariable indica si la variable es del sistema. El sistema operativo establece las 
    ///  variables del sistema, que son independientes de la configuración de entorno del usuario.
    ///  Valores: TRUE 
    ///  o FALSE. El valor TRUE indica que la variable es del sistema.
    /// </summary>
    property SystemVariable:boolean read FSystemVariable write FSystemVariable stored False;
    /// <summary>
    ///  La propiedad UserName indica el propietario de la configuración de entorno. Está configurada como "<SYSTEM>" 
    ///  en las configuraciones específicas del sistema Win32 (y no de un usuario concreto) y "<DEFAULT>" para 
    ///  la configuración predeterminada de un usuario.
    ///  Ejemplo: Jsantos.
    /// </summary>
    property UserName:string read FUserName write FUserName stored False;
    /// <summary>
    ///  La propiedad VariableValue contiene la variable de marcador de posición de una variable del entorno Win32. 
    ///  Determinada información, como el directorio del sistema de archivos, puede cambiar de un equipo a otro. 
    ///  El sistema operativo sustituye los marcadores de posición.
    ///  Ejemplo: %SystemRoot%.
    /// </summary>
    property VariableValue:string read FVariableValue write FVariableValue stored False;
  end;

  {%InterfaceClass WMIClass%}
  /// <summary>
  ///  La clase Win32_Environment representa una configuración de entorno o de sistema en un sistema Win32.
  /// </summary>
  TEnvironmentInfo = class(TWMIBase)
  private
    FEnvironmentProperties: TEnvironmentProperties;
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
    // propiedades de la Environment
    property EnvironmentProperties:TEnvironmentProperties read   FEnvironmentProperties write FEnvironmentProperties;
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
procedure TEnvironmentInfo.ClearProps;
begin
  Self.EnvironmentProperties.FCaption := EmptyStr;
  Self.EnvironmentProperties.FDescription := EmptyStr;
  Self.EnvironmentProperties.FInstallDate := 0;
  Self.EnvironmentProperties.FName := EmptyStr;
  Self.EnvironmentProperties.FStatus := EmptyStr;
  Self.EnvironmentProperties.FSystemVariable := False;
  Self.EnvironmentProperties.FUserName := EmptyStr;
  Self.EnvironmentProperties.FVariableValue := EmptyStr;
end;

//: Constructor del componente
constructor TEnvironmentInfo.Create(AOwner: TComponent);
begin
  inherited;
  Self.FEnvironmentProperties := TEnvironmentProperties.Create();
  Self.MSDNHelp := 'https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-environment';
end;

//: destructor del componente
destructor TEnvironmentInfo.Destroy();
begin
  // liberar
  FreeAndNil(Self.FEnvironmentProperties);
  inherited;
end;

//: Obtener la clase
function TEnvironmentInfo.GetWMIClass(): string;
begin
  Result := 'Win32_Environment'
end;

//: Obtener Root
function TEnvironmentInfo.GetWMIRoot(): string;
begin
  Result := '';
end;

//: Procedmiento de activación
procedure TEnvironmentInfo.SetActive(const Value: Boolean);
begin
  // método heredado
  inherited;
end;


//: Rellenar las propiedades del componente.
procedure TEnvironmentInfo.FillProperties(AIndex: integer);
var
  v:     variant;
  vNull: boolean;
  vp:    TEnvironmentProperties;
begin
  // Llamar al heredado (importante)
  inherited;
  // Rellenar propiedades...
  vp := EnvironmentProperties;

  GetWMIPropertyValue(Self, 'Caption', v, vNull);
  vp.FCaption := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Description', v, vNull);
  vp.FDescription := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'InstallDate', v, vNull);
  vp.FInstallDate := VariantDateTimeValue(v, vNull);

  GetWMIPropertyValue(Self, 'Name', v, vNull);
  vp.FName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Status', v, vNull);
  vp.FStatus := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'SystemVariable', v, vNull);
  vp.FSystemVariable := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'UserName', v, vNull);
  vp.FUserName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'VariableValue', v, vNull);
  vp.FVariableValue := VariantStrValue(v, vNull);
end;




end.
