{
TRegistryInfo Component Version 3.1 - Suite GLibWMI
Copyright (©) 2020,  by Germán Estévez (Neftalí)



Utilización/Usage:
(ES) Basta con "soltar" el componente y activarlo.
(EN) Place the component in the form and active it.

MSDN Info:
https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-registry

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
unit CRegistryInfo;

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
  TRegistryProperties = class(TPersistent)
  private
    {%PrivateClassVars PropertiesClass%}
    FCaption:string;
    FCurrentSize:integer;
    FDescription:string;
    FInstallDate:TDatetime;
    FMaximumSize:integer;
    FName:string;
    FProposedSize:integer;
    FStatus:string;

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
    ///  La propiedad CurrentSize indica el tamaño físico actual del Registro de Win32.
    ///  Ejemplo: 10.
    /// </summary>
    property CurrentSize:integer read FCurrentSize write FCurrentSize stored False;
    /// <summary>
    ///  La propiedad CurrentSize indica el tamaño físico actual del Registro de Win32.
    ///  Ejemplo: 10.
    /// </summary>
    property Description:string read FDescription write FDescription stored False;
    /// <summary>
    ///  La propiedad CurrentSize indica el tamaño físico actual del Registro de Win32.
    ///  Ejemplo: 10.
    /// </summary>
    property InstallDate:TDatetime read FInstallDate write FInstallDate stored False;
    /// <summary>
    ///  La propiedad MaximumSize indica el tamaño máximo del Registro de Win32. Si el sistema utiliza correctamente 
    ///  el miembro ProposedSize, MaximumSize debe contener el mismo valor.
    /// </summary>
    property MaximumSize:integer read FMaximumSize write FMaximumSize stored False;
    /// <summary>
    ///  La propiedad Name indica el nombre del Registro de Win32. El tamaño máximo es 256 caracteres.
    ///  Ejemplo: 
    ///  Microsoft Windows NT Workstation|C:\WINNT40|\Device\Harddisk0\partition1
    /// </summary>
    property Name:string read FName write FName stored False;
    /// <summary>
    ///  La propiedad ProposedSize indica el tamaño propuesto del Registro de Win32. Es el único valor de la configuración 
    ///  del Registro que se puede cambiar y el valor que propone se intenta la próxima vez que se arranca el 
    ///  sistema.
    /// </summary>
    property ProposedSize:integer read FProposedSize write FProposedSize stored False;
    /// <summary>
    ///  La propiedad ProposedSize indica el tamaño propuesto del Registro de Win32. Es el único valor de la configuración 
    ///  del Registro que se puede cambiar y el valor que propone se intenta la próxima vez que se arranca el 
    ///  sistema.
    /// </summary>
    property Status:string read FStatus write FStatus stored False;
  end;

  {%InterfaceClass WMIClass%}
  /// <summary>
  /// </summary>
  TRegistryInfo = class(TWMIBase)
  private
    FRegistryProperties: TRegistryProperties;
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
    // propiedades de la Registry
    property RegistryProperties:TRegistryProperties read   FRegistryProperties write FRegistryProperties;
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
procedure TRegistryInfo.ClearProps;
begin
  Self.RegistryProperties.FCaption := EmptyStr;
  Self.RegistryProperties.FCurrentSize := 0;
  Self.RegistryProperties.FDescription := EmptyStr;
  Self.RegistryProperties.FInstallDate := 0;
  Self.RegistryProperties.FMaximumSize := 0;
  Self.RegistryProperties.FName := EmptyStr;
  Self.RegistryProperties.FProposedSize := 0;
  Self.RegistryProperties.FStatus := EmptyStr;
end;

//: Constructor del componente
constructor TRegistryInfo.Create(AOwner: TComponent);
begin
  inherited;
  Self.FRegistryProperties := TRegistryProperties.Create();
  Self.MSDNHelp := 'https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-registry';
end;

//: destructor del componente
destructor TRegistryInfo.Destroy();
begin
  // liberar
  FreeAndNil(Self.FRegistryProperties);
  inherited;
end;

//: Obtener la clase
function TRegistryInfo.GetWMIClass(): string;
begin
  Result := 'Win32_Registry'
end;

//: Obtener Root
function TRegistryInfo.GetWMIRoot(): string;
begin
  Result := '';
end;

//: Procedmiento de activación
procedure TRegistryInfo.SetActive(const Value: Boolean);
begin
  // método heredado
  inherited;
end;


//: Rellenar las propiedades del componente.
procedure TRegistryInfo.FillProperties(AIndex: integer);
var
  v:     variant;
  vNull: boolean;
  vp:    TRegistryProperties;
begin
  // Llamar al heredado (importante)
  inherited;
  // Rellenar propiedades...
  vp := RegistryProperties;

  GetWMIPropertyValue(Self, 'Caption', v, vNull);
  vp.FCaption := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'CurrentSize', v, vNull);
  vp.FCurrentSize := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Description', v, vNull);
  vp.FDescription := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'InstallDate', v, vNull);
  vp.FInstallDate := VariantDateTimeValue(v, vNull);

  GetWMIPropertyValue(Self, 'MaximumSize', v, vNull);
  vp.FMaximumSize := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Name', v, vNull);
  vp.FName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'ProposedSize', v, vNull);
  vp.FProposedSize := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Status', v, vNull);
  vp.FStatus := VariantStrValue(v, vNull);
end;




end.
