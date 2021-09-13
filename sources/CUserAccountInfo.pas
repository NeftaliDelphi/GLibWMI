{
TUserAccountInfo Component Version 3.1 - Suite GLibWMI
Copyright (©) 2020,  by Germán Estévez (Neftalí)

La clase Win32_UserAccount contiene información acerca de una cuenta de usuario de un sistema Win32.


Utilización/Usage:
(ES) Basta con "soltar" el componente y activarlo.
(EN) Place the component in the form and active it.

MSDN Info:
https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-useraccount

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
unit CUserAccountInfo;

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
  TUserAccountProperties = class(TPersistent)
  private
    {%PrivateClassVars PropertiesClass%}
    FAccountType:integer;
    FCaption:string;
    FDescription:string;
    FDisabled:boolean;
    FDomain:string;
    FFullName:string;
    FInstallDate:TDatetime;
    FLocalAccount:boolean;
    FLockout:boolean;
    FName:string;
    FPasswordChangeable:boolean;
    FPasswordExpires:boolean;
    FPasswordRequired:boolean;
    FSID:string;
    FSIDType:integer;
    FStatus:string;

  private
    {%PrivateGetMethods PropertiesClass%}

  public
    {%PublicGetMethods PropertiesClass%}
    // Obtener la propiedad <SIDType> como string
    function GetAllSIDTypeAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <SIDType>
    function GetAllSIDTypeCount:integer;

    {%PublicArrayMethods PropertiesClass%}

  published
    {%PublishedProperties PropertiesClass%}
    /// <summary>
    ///  La propiedad AccountType contiene marcadores que describen las características de la cuenta de usuario 
    ///  de Win32:
    ///  UF_TEMP_DUPLICATE_ACCOUNT: cuenta de usuario local para usuarios cuya cuenta principal está 
    ///  en otro dominio. Esta cuenta proporciona acceso de usuario a este dominio, pero no a cualquier dominio 
    ///  que confíe en este dominio.
    ///  UF_NORMAL_ACCOUNT: tipo predeterminado de cuenta que representa a un usuario 
    ///  típico. 
    ///  UF_INTERDOMAIN_TRUST_ACCOUNT: es la cuenta de un dominio del sistema que confía en otros dominios.
    ///  UF_WORKSTATION_TRUST_ACCOUNT: 
    ///  es la cuenta de equipo de un equipo Windows NT o Windows 2000 que es miembro de este dominio.
    ///  UF_SERVER_TRUST_ACCOUNT: 
    ///  es la cuenta de un controlador de dominio de reserva del sistema que es miembro de este dominio.
    /// </summary>
    property AccountType:integer read FAccountType write FAccountType stored False;
    /// <summary>
    ///  La propiedad AccountType contiene marcadores que describen las características de la cuenta de usuario 
    ///  de Win32:
    ///  UF_TEMP_DUPLICATE_ACCOUNT: cuenta de usuario local para usuarios cuya cuenta principal está 
    ///  en otro dominio. Esta cuenta proporciona acceso de usuario a este dominio, pero no a cualquier dominio 
    ///  que confíe en este dominio.
    ///  UF_NORMAL_ACCOUNT: tipo predeterminado de cuenta que representa a un usuario 
    ///  típico. 
    ///  UF_INTERDOMAIN_TRUST_ACCOUNT: es la cuenta de un dominio del sistema que confía en otros dominios.
    ///  UF_WORKSTATION_TRUST_ACCOUNT: 
    ///  es la cuenta de equipo de un equipo Windows NT o Windows 2000 que es miembro de este dominio.
    ///  UF_SERVER_TRUST_ACCOUNT: 
    ///  es la cuenta de un controlador de dominio de reserva del sistema que es miembro de este dominio.
    /// </summary>
    property Caption:string read FCaption write FCaption stored False;
    /// <summary>
    ///  La propiedad AccountType contiene marcadores que describen las características de la cuenta de usuario 
    ///  de Win32:
    ///  UF_TEMP_DUPLICATE_ACCOUNT: cuenta de usuario local para usuarios cuya cuenta principal está 
    ///  en otro dominio. Esta cuenta proporciona acceso de usuario a este dominio, pero no a cualquier dominio 
    ///  que confíe en este dominio.
    ///  UF_NORMAL_ACCOUNT: tipo predeterminado de cuenta que representa a un usuario 
    ///  típico. 
    ///  UF_INTERDOMAIN_TRUST_ACCOUNT: es la cuenta de un dominio del sistema que confía en otros dominios.
    ///  UF_WORKSTATION_TRUST_ACCOUNT: 
    ///  es la cuenta de equipo de un equipo Windows NT o Windows 2000 que es miembro de este dominio.
    ///  UF_SERVER_TRUST_ACCOUNT: 
    ///  es la cuenta de un controlador de dominio de reserva del sistema que es miembro de este dominio.
    /// </summary>
    property Description:string read FDescription write FDescription stored False;
    /// <summary>
    ///  La propiedad Deshabilitado determina si la cuenta de usuario de Win32 está deshabilitada.
    ///  Valores: TRUE 
    ///  o FALSE. Si el valor es TRUE, la cuenta de usuario está deshabilitada.
    /// </summary>
    property Disabled:boolean read FDisabled write FDisabled stored False;
    /// <summary>
    ///  La propiedad Domain indica el nombre del dominio de Windows al que pertenece la cuenta de usuario.
    ///  Ejemplo: 
    ///  NA-VENTAS
    /// </summary>
    property Domain:string read FDomain write FDomain stored False;
    /// <summary>
    ///  La propiedad FullName indica el nombre completo del usuario local.
    ///  Ejemplo: Juan Santos
    /// </summary>
    property FullName:string read FFullName write FFullName stored False;
    /// <summary>
    ///  La propiedad FullName indica el nombre completo del usuario local.
    ///  Ejemplo: Juan Santos
    /// </summary>
    property InstallDate:TDatetime read FInstallDate write FInstallDate stored False;
    /// <summary>
    ///  La propiedad LocalAccount indica si la cuenta está definida en el equipo local. Para recuperar sólo las 
    ///  cuentas definidas en el equipo local se hace una solicitud que incluye la condición "LocalAccount=TR
    ///  UE".
    /// </summary>
    property LocalAccount:boolean read FLocalAccount write FLocalAccount stored False;
    /// <summary>
    ///  La propiedad Lockout determina si la cuenta de usuario está bloqueada en el sistema Win32.
    ///  Valores: TRUE 
    ///  o FALSE. Si el valor es TRUE, la cuenta de usuario está bloqueada.
    /// </summary>
    property Lockout:boolean read FLockout write FLockout stored False;
    /// <summary>
    ///  La propiedad Name indica el nombre de la cuenta de usuario de Win32 en el dominio especificado por el 
    ///  miembro Dominio de esta clase.
    ///  Ejemplo: jsantos
    /// </summary>
    property Name:string read FName write FName stored False;
    /// <summary>
    ///  La propiedad PasswordChangeable determina si se puede cambiar la contraseña de la cuenta de usuario de 
    ///  Win32.
    ///  Valores: TRUE o FALSE. Si el valor es TRUE, se puede cambiar la contraseña.
    /// </summary>
    property PasswordChangeable:boolean read FPasswordChangeable write FPasswordChangeable stored False;
    /// <summary>
    ///  La propiedad PasswordExpires determina si la contraseña de la cuenta de usuario de Win32 expirará.
    ///  Valores: 
    ///  TRUE o FALSE. Si el valor es TRUE, la contraseña expirará.
    /// </summary>
    property PasswordExpires:boolean read FPasswordExpires write FPasswordExpires stored False;
    /// <summary>
    ///  La propiedad PasswordRequired determina si se requiere una contraseña en la cuenta de usuario Win32.
    ///  Valores: 
    ///  TRUE o FALSE. Si el valor es TRUE, se requiere una contraseña.
    /// </summary>
    property PasswordRequired:boolean read FPasswordRequired write FPasswordRequired stored False;
    /// <summary>
    ///  La propiedad SID contiene el identificador de seguridad (SID) de esta cuenta. El SID es un valor de cadena 
    ///  de longitud variable que se usa para identificar una confianza. Cada cuenta tiene un SID único emitido 
    ///  por una autoridad (como, por ejemplo, un dominio de Windows) y se guarda en una base de datos de seguridad. 
    ///  Cuando un usuario inicia una sesión, el sistema obtiene el SID del usuario en la base de datos y lo coloca 
    ///  en el testigo de acceso del usuario. El sistema utiliza el SID en el testigo de la cuenta del usuario 
    ///  para identificar al usuario, a partir de ese momento, cada vez que interactúe con la seguridad de Windows. 
    ///  Cuando se ha utilizado un SID como identificador único de un usuario o grupo, no se puede volver a utilizar 
    ///  para identificar otro usuario o grupo.
    /// </summary>
    property SID:string read FSID write FSID stored False;
    /// <summary>
    ///  La propiedad SIDType contiene valores enumerados que especifican el tipo de identificador de seguridad 
    ///  (SID). SIDTypes incluye:
    ///  SidTypeUser : indica el SID de un usuario.
    ///  SidTypeGroup: indica el SID de un 
    ///  grupo.
    ///  SidTypeDomain: indica el SID de un dominio.
    ///  SidTypeAlias: indica el SID de un alias.
    ///  SidTypeWellKnownGroup: 
    ///  indica el SID de un grupo conocido.
    ///  SidTypeDeletedAccount: indica el SID de una cuenta eliminada.
    ///  SidTypeInvalid: 
    ///  indica un SID que no es válido.
    ///  SidTypeUnknown: indica un tipo de SID desconocido.
    ///  SidTypeComputer: indica 
    ///  el SID de un equipo.
    /// </summary>
    property SIDType:integer read FSIDType write FSIDType stored False;
    /// <summary>
    ///  La propiedad SIDType contiene valores enumerados que especifican el tipo de identificador de seguridad 
    ///  (SID). SIDTypes incluye:
    ///  SidTypeUser : indica el SID de un usuario.
    ///  SidTypeGroup: indica el SID de un 
    ///  grupo.
    ///  SidTypeDomain: indica el SID de un dominio.
    ///  SidTypeAlias: indica el SID de un alias.
    ///  SidTypeWellKnownGroup: 
    ///  indica el SID de un grupo conocido.
    ///  SidTypeDeletedAccount: indica el SID de una cuenta eliminada.
    ///  SidTypeInvalid: 
    ///  indica un SID que no es válido.
    ///  SidTypeUnknown: indica un tipo de SID desconocido.
    ///  SidTypeComputer: indica 
    ///  el SID de un equipo.
    /// </summary>
    property Status:string read FStatus write FStatus stored False;
  end;

  {%InterfaceClass WMIClass%}
  /// <summary>
  ///  La clase Win32_UserAccount contiene información acerca de una cuenta de usuario de un sistema Win32.
  /// </summary>
  TUserAccountInfo = class(TWMIBase)
  private
    FUserAccountProperties: TUserAccountProperties;
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
    // propiedades de la UserAccount
    property UserAccountProperties:TUserAccountProperties read   FUserAccountProperties write FUserAccountProperties;
  end;


// Constantes para la propiedad SIDType
const 
  ENUM_STRING_SIDTYPE_00 = 'SidTypeUser';
  ENUM_STRING_SIDTYPE_01 = 'SidTypeGroup';
  ENUM_STRING_SIDTYPE_02 = 'SidTypeDomain';
  ENUM_STRING_SIDTYPE_03 = 'SidTypeAlias';
  ENUM_STRING_SIDTYPE_04 = 'SidTypeWellKnownGroup';
  ENUM_STRING_SIDTYPE_05 = 'SidTypeDeletedAccount';
  ENUM_STRING_SIDTYPE_06 = 'SidTypeInvalid';
  ENUM_STRING_SIDTYPE_07 = 'SidTypeUnknown';
  ENUM_STRING_SIDTYPE_08 = 'SidTypeComputer';

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
procedure TUserAccountInfo.ClearProps;
begin
  Self.UserAccountProperties.FAccountType := 0;
  Self.UserAccountProperties.FCaption := EmptyStr;
  Self.UserAccountProperties.FDescription := EmptyStr;
  Self.UserAccountProperties.FDisabled := False;
  Self.UserAccountProperties.FDomain := EmptyStr;
  Self.UserAccountProperties.FFullName := EmptyStr;
  Self.UserAccountProperties.FInstallDate := 0;
  Self.UserAccountProperties.FLocalAccount := False;
  Self.UserAccountProperties.FLockout := False;
  Self.UserAccountProperties.FName := EmptyStr;
  Self.UserAccountProperties.FPasswordChangeable := False;
  Self.UserAccountProperties.FPasswordExpires := False;
  Self.UserAccountProperties.FPasswordRequired := False;
  Self.UserAccountProperties.FSID := EmptyStr;
  Self.UserAccountProperties.FSIDType := 0;
  Self.UserAccountProperties.FStatus := EmptyStr;
end;

//: Constructor del componente
constructor TUserAccountInfo.Create(AOwner: TComponent);
begin
  inherited;
  Self.FUserAccountProperties := TUserAccountProperties.Create();
  Self.MSDNHelp := 'https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-useraccount';
end;

//: destructor del componente
destructor TUserAccountInfo.Destroy();
begin
  // liberar
  FreeAndNil(Self.FUserAccountProperties);
  inherited;
end;

//: Obtener la clase
function TUserAccountInfo.GetWMIClass(): string;
begin
  Result := 'Win32_UserAccount'
end;

//: Obtener Root
function TUserAccountInfo.GetWMIRoot(): string;
begin
  Result := '';
end;

//: Procedmiento de activación
procedure TUserAccountInfo.SetActive(const Value: Boolean);
begin
  // método heredado
  inherited;
end;


//: Rellenar las propiedades del componente.
procedure TUserAccountInfo.FillProperties(AIndex: integer);
var
  v:     variant;
  vNull: boolean;
  vp:    TUserAccountProperties;
begin
  // Llamar al heredado (importante)
  inherited;
  // Rellenar propiedades...
  vp := UserAccountProperties;

  GetWMIPropertyValue(Self, 'AccountType', v, vNull);
  vp.FAccountType := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Caption', v, vNull);
  vp.FCaption := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Description', v, vNull);
  vp.FDescription := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Disabled', v, vNull);
  vp.FDisabled := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'Domain', v, vNull);
  vp.FDomain := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'FullName', v, vNull);
  vp.FFullName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'InstallDate', v, vNull);
  vp.FInstallDate := VariantDateTimeValue(v, vNull);

  GetWMIPropertyValue(Self, 'LocalAccount', v, vNull);
  vp.FLocalAccount := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'Lockout', v, vNull);
  vp.FLockout := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'Name', v, vNull);
  vp.FName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'PasswordChangeable', v, vNull);
  vp.FPasswordChangeable := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'PasswordExpires', v, vNull);
  vp.FPasswordExpires := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'PasswordRequired', v, vNull);
  vp.FPasswordRequired := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'SID', v, vNull);
  vp.FSID := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'SIDType', v, vNull);
  vp.FSIDType := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Status', v, vNull);
  vp.FStatus := VariantStrValue(v, vNull);
end;


// Obtener la propiedad como string
function TUserAccountProperties.GetAllSIDTypeAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_SIDTYPE_00;
    01: Result := ENUM_STRING_SIDTYPE_01;
    02: Result := ENUM_STRING_SIDTYPE_02;
    03: Result := ENUM_STRING_SIDTYPE_03;
    04: Result := ENUM_STRING_SIDTYPE_04;
    05: Result := ENUM_STRING_SIDTYPE_05;
    06: Result := ENUM_STRING_SIDTYPE_06;
    07: Result := ENUM_STRING_SIDTYPE_07;
    08: Result := ENUM_STRING_SIDTYPE_08;
  else
    Result := STR_EMPTY;
  end;
end;


// Obtener núm. de elementos de la propiedad como string
function TUserAccountProperties.GetAllSIDTypeCount:integer;
begin
  Result := 9
end;


end.
