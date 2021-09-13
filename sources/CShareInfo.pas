{
TShareInfo Component Version 3.1 - Suite GLibWMI
Copyright (©) 2020,  by Germán Estévez (Neftalí)

La clase Win32_Share representa un recurso compartido en un sistema Win32. Puede tratarse de una unidad 
de disco, impresora, comunicación entre procesos u otro dispositivo que se pueda compartir.
Ejemplo: 
C:\PUBLIC.


Utilización/Usage:
(ES) Basta con "soltar" el componente y activarlo.
(EN) Place the component in the form and active it.

MSDN Info:
https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-share

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
unit CShareInfo;

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
  TShareProperties = class(TPersistent)
  private
    {%PrivateClassVars PropertiesClass%}
    FAccessMask:integer;
    FAllowMaximum:boolean;
    FCaption:string;
    FDescription:string;
    FInstallDate:TDatetime;
    FMaximumAllowed:integer;
    FName:string;
    FPath:string;
    FStatus:string;
    FType_:integer;

  private
    {%PrivateGetMethods PropertiesClass%}

  public
    {%PublicGetMethods PropertiesClass%}
    // Obtener la propiedad <Type_> como string
    function GetAllType_AsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <Type_>
    function GetAllType_Count:integer;

    {%PublicArrayMethods PropertiesClass%}

  published
    {%PublishedProperties PropertiesClass%}
    /// <summary>
    ///  Esta propiedad quedó obsoleta en favor del método GetAccessMask de esta clase debido al costo de llamar 
    ///  a GetEffectiveRightsFromAcl. El valor se establecerá como NULL
    /// </summary>
    property AccessMask:integer read FAccessMask write FAccessMask stored False;
    /// <summary>
    ///  La propiedad AllowMaximum indica si se ha limitado el número de usuarios simultáneos para este recurso.
    ///  Valores: 
    ///  TRUE o FALSE. El valor TRUE indica que no se ha limitado el número de usuarios simultáneos para este 
    ///  recurso y se omite el valor de la propiedad MaximumAllowed
    /// </summary>
    property AllowMaximum:boolean read FAllowMaximum write FAllowMaximum stored False;
    /// <summary>
    ///  La propiedad AllowMaximum indica si se ha limitado el número de usuarios simultáneos para este recurso.
    ///  Valores: 
    ///  TRUE o FALSE. El valor TRUE indica que no se ha limitado el número de usuarios simultáneos para este 
    ///  recurso y se omite el valor de la propiedad MaximumAllowed
    /// </summary>
    property Caption:string read FCaption write FCaption stored False;
    /// <summary>
    ///  La propiedad AllowMaximum indica si se ha limitado el número de usuarios simultáneos para este recurso.
    ///  Valores: 
    ///  TRUE o FALSE. El valor TRUE indica que no se ha limitado el número de usuarios simultáneos para este 
    ///  recurso y se omite el valor de la propiedad MaximumAllowed
    /// </summary>
    property Description:string read FDescription write FDescription stored False;
    /// <summary>
    ///  La propiedad AllowMaximum indica si se ha limitado el número de usuarios simultáneos para este recurso.
    ///  Valores: 
    ///  TRUE o FALSE. El valor TRUE indica que no se ha limitado el número de usuarios simultáneos para este 
    ///  recurso y se omite el valor de la propiedad MaximumAllowed
    /// </summary>
    property InstallDate:TDatetime read FInstallDate write FInstallDate stored False;
    /// <summary>
    ///  La propiedad MaximumAllowed indica el máximo número de usuarios a los que se permite utilizar este recurso 
    ///  simultáneamente. El valor sólo es válido si el miembro AllowMaximum está configurado como FALSE 
    ///  Ejemplo: 
    ///  10.
    /// </summary>
    property MaximumAllowed:integer read FMaximumAllowed write FMaximumAllowed stored False;
    /// <summary>
    ///  La propiedad Name indica el alias asignado a una ruta de acceso configurada como recurso compartido en 
    ///  un sistema Win32.
    ///  Ejemplo: public.
    /// </summary>
    property Name:string read FName write FName stored False;
    /// <summary>
    ///  La propiedad Path indica la ruta de acceso local del recurso compartido de Win32.
    ///  Ejemplo: C:\Archivos 
    ///  de programa
    /// </summary>
    property Path:string read FPath write FPath stored False;
    /// <summary>
    ///  La propiedad Path indica la ruta de acceso local del recurso compartido de Win32.
    ///  Ejemplo: C:\Archivos 
    ///  de programa
    /// </summary>
    property Status:string read FStatus write FStatus stored False;
    /// <summary>
    ///  La propiedad Type especifica el tipo de recurso que se comparte. Entre los tipos se incluyen las unidades 
    ///  de disco, colas de impresión, comunicaciones entre procesos (IPC) y dispositivos generales.
    /// </summary>
    property Type_:integer read FType_ write FType_ stored False;
  end;

  {%InterfaceClass WMIClass%}
  /// <summary>
  ///  La clase Win32_Share representa un recurso compartido en un sistema Win32. Puede tratarse de una unidad 
  ///  de disco, impresora, comunicación entre procesos u otro dispositivo que se pueda compartir.
  ///  Ejemplo: 
  ///  C:\PUBLIC.
  /// </summary>
  TShareInfo = class(TWMIBase)
  private
    FShareProperties: TShareProperties;
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
    // propiedades de la Share
    property ShareProperties:TShareProperties read   FShareProperties write FShareProperties;
  end;


// Constantes para la propiedad Type_
const 
  ENUM_STRING_TYPE__00 = 'Unidad de disco';
  ENUM_STRING_TYPE__01 = 'Cola de impresión';
  ENUM_STRING_TYPE__02 = 'Dispositivo';
  ENUM_STRING_TYPE__03 = 'IPC';
  ENUM_STRING_TYPE__04 = 'Administración de unidades de disco';
  ENUM_STRING_TYPE__05 = 'Administración de cola de impresión';
  ENUM_STRING_TYPE__06 = 'Administración de dispositivos';
  ENUM_STRING_TYPE__07 = 'Administración de IPC';

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
procedure TShareInfo.ClearProps;
begin
  Self.ShareProperties.FAccessMask := 0;
  Self.ShareProperties.FAllowMaximum := False;
  Self.ShareProperties.FCaption := EmptyStr;
  Self.ShareProperties.FDescription := EmptyStr;
  Self.ShareProperties.FInstallDate := 0;
  Self.ShareProperties.FMaximumAllowed := 0;
  Self.ShareProperties.FName := EmptyStr;
  Self.ShareProperties.FPath := EmptyStr;
  Self.ShareProperties.FStatus := EmptyStr;
  Self.ShareProperties.FType_ := 0;
end;

//: Constructor del componente
constructor TShareInfo.Create(AOwner: TComponent);
begin
  inherited;
  Self.FShareProperties := TShareProperties.Create();
  Self.MSDNHelp := 'https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-share';
end;

//: destructor del componente
destructor TShareInfo.Destroy();
begin
  // liberar
  FreeAndNil(Self.FShareProperties);
  inherited;
end;

//: Obtener la clase
function TShareInfo.GetWMIClass(): string;
begin
  Result := 'Win32_Share'
end;

//: Obtener Root
function TShareInfo.GetWMIRoot(): string;
begin
  Result := '';
end;

//: Procedmiento de activación
procedure TShareInfo.SetActive(const Value: Boolean);
begin
  // método heredado
  inherited;
end;


//: Rellenar las propiedades del componente.
procedure TShareInfo.FillProperties(AIndex: integer);
var
  v:     variant;
  vNull: boolean;
  vp:    TShareProperties;
begin
  // Llamar al heredado (importante)
  inherited;
  // Rellenar propiedades...
  vp := ShareProperties;

  GetWMIPropertyValue(Self, 'AccessMask', v, vNull);
  vp.FAccessMask := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'AllowMaximum', v, vNull);
  vp.FAllowMaximum := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'Caption', v, vNull);
  vp.FCaption := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Description', v, vNull);
  vp.FDescription := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'InstallDate', v, vNull);
  vp.FInstallDate := VariantDateTimeValue(v, vNull);

  GetWMIPropertyValue(Self, 'MaximumAllowed', v, vNull);
  vp.FMaximumAllowed := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Name', v, vNull);
  vp.FName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Path', v, vNull);
  vp.FPath := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Status', v, vNull);
  vp.FStatus := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Type_', v, vNull);
  vp.FType_ := VariantIntegerValue(v, vNull);
end;


// Obtener la propiedad como string
function TShareProperties.GetAllType_AsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_TYPE__00;
    01: Result := ENUM_STRING_TYPE__01;
    02: Result := ENUM_STRING_TYPE__02;
    03: Result := ENUM_STRING_TYPE__03;
    04: Result := ENUM_STRING_TYPE__04;
    05: Result := ENUM_STRING_TYPE__05;
    06: Result := ENUM_STRING_TYPE__06;
    07: Result := ENUM_STRING_TYPE__07;
  else
    Result := STR_EMPTY;
  end;
end;


// Obtener núm. de elementos de la propiedad como string
function TShareProperties.GetAllType_Count:integer;
begin
  Result := 8
end;


end.
