{ 
TUserAccountInfo  Component Version 1.9b - Suite GLib 
Copyright (©) 2009,  by Germán Estévez (Neftalí) 
 
  Contiene información acerca de las cuenta de usuario en el ordenador.
 
Utilización/Usage: 
  Basta con "soltar" el componente y activarlo. 
 
  Place the component in the form and active it. 
 
  MSDN Info: 
  http://msdn.microsoft.com/en-us/library/aa394507(VS.85).aspx 
 
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
unit CUserAccountInfo; 
 
{ 
========================================================================= 
 
  TUserAccountInfo.pas 
 
  Componente 
 
======================================================================== 
  Historia de las Versiones 
------------------------------------------------------------------------ 
 
  19/01/2010    * Creación. 
 
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
  TUserAccountProperties = class(TPersistent)
  private
    FAccountType:Longword;
    FAccountTypeAsString:string;
    FCaption:string;
    FDescription:string;
    FDisabled:boolean;
    FDomain:string;
    FFullName:string;
    FInstallDate:TDateTime;
    FLocalAccount:boolean;
    FLockout:boolean;
    FName:string;
    FPasswordChangeable:boolean;
    FPasswordExpires:boolean;
    FPasswordRequired:boolean;
    FSID:string;
    FSIDType:byte;
    FSIDTypeAsString:string;
    FStatus:string;
  private
  public

    // Obtener la propiedad <AccountType> como string
    function GetAccountTypeAsString():string;

    // Obtener la propiedad <SIDType> como string
    function GetSIDTypeAsString():string;

// {GET_ENUM}

  published
    property AccountType:Longword read FAccountType write FAccountType stored False;
    property AccountTypeAsString:string read GetAccountTypeAsString  write FAccountTypeAsString stored False;
    property Caption:string read FCaption write FCaption stored False;
    property Description:string read FDescription write FDescription stored False;
    property Disabled:boolean read FDisabled write FDisabled stored False;
    property Domain:string read FDomain write FDomain stored False;
    property FullName:string read FFullName write FFullName stored False;
    property InstallDate:TDateTime read FInstallDate write FInstallDate stored False;
    property LocalAccount:boolean read FLocalAccount write FLocalAccount stored False;
    property Lockout:boolean read FLockout write FLockout stored False;
    property Name:string read FName write FName stored False;
    property PasswordChangeable:boolean read FPasswordChangeable write FPasswordChangeable stored False;
    property PasswordExpires:boolean read FPasswordExpires write FPasswordExpires stored False;
    property PasswordRequired:boolean read FPasswordRequired write FPasswordRequired stored False;
    property SID:string read FSID write FSID stored False;
    property SIDType:byte read FSIDType write FSIDType stored False;
    property SIDTypeAsString:string read GetSIDTypeAsString  write FSIDTypeAsString stored False;
    property Status:string read FStatus write FStatus stored False;
  end;
  
  //: Implementación para el acceso vía WMI a la clase Win32_UserAccount
  TUserAccountInfo = class(TWMIBase)
  private
    FUserAccountProperties: TUserAccountProperties;
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
    // propiedades de la UserAccount
    property UserAccountProperties:TUserAccountProperties read FUserAccountProperties write FUserAccountProperties;
  end;

// Constantes para la propiedad AccountType
const
  ENUM_STRING_ACCOUNTTYPE_256 = 'UF_TEMP_DUPLICATE_ACCOUNT. Local user account for users who have a primary account in another domain. This account provides user access to this domain only—not to any domain that trusts this domain.';
  ENUM_STRING_ACCOUNTTYPE_512 = 'UF_NORMAL_ACCOUNT. Default account type that represents a typical user.';
  ENUM_STRING_ACCOUNTTYPE_2048 = 'UF_INTERDOMAIN_TRUST_ACCOUNT. Account for a system domain that trusts other domains.';
  ENUM_STRING_ACCOUNTTYPE_4096 = 'UF_WORKSTATION_TRUST_ACCOUNT. Computer account for a computer system running Windows 2000 or Windows NT that is a member of this domain.';
  ENUM_STRING_ACCOUNTTYPE_8192 = 'UF_SERVER_TRUST_ACCOUNT. Account for a system backup domain controller that is a member of this domain.';


// Constantes para la propiedad SIDType
const
  ENUM_STRING_SIDTYPE_1 = 'SidTypeUser';
  ENUM_STRING_SIDTYPE_2 = 'SidTypeGroup';
  ENUM_STRING_SIDTYPE_3 = 'SidTypeDomain';
  ENUM_STRING_SIDTYPE_4 = 'SidTypeAlias';
  ENUM_STRING_SIDTYPE_5 = 'SidTypeWellKnownGroup';
  ENUM_STRING_SIDTYPE_6 = 'SidTypeDeletedAccount';
  ENUM_STRING_SIDTYPE_7 = 'SidTypeInvalid';
  ENUM_STRING_SIDTYPE_8 = 'SidTypeUnknown';
  ENUM_STRING_SIDTYPE_9 = 'SidTypeComputer';


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
 
  
{ TUserAccount } 
{-------------------------------------------------------------------------------} 
// Limpiar las propiedades
procedure TUserAccountInfo.ClearProps;
begin

  Self.UserAccountProperties.FAccountType := 0;
  Self.UserAccountProperties.FCaption := STR_EMPTY;
  Self.UserAccountProperties.FDescription := STR_EMPTY;
  Self.UserAccountProperties.FDisabled := False;
  Self.UserAccountProperties.FDomain := STR_EMPTY;
  Self.UserAccountProperties.FFullName := STR_EMPTY;
  Self.UserAccountProperties.FInstallDate := 0;
  Self.UserAccountProperties.FLocalAccount := False;
  Self.UserAccountProperties.FLockout := False;
  Self.UserAccountProperties.FName := STR_EMPTY;
  Self.UserAccountProperties.FPasswordChangeable := False;
  Self.UserAccountProperties.FPasswordExpires := False;
  Self.UserAccountProperties.FPasswordRequired := False;
  Self.UserAccountProperties.FSID := STR_EMPTY;
  Self.UserAccountProperties.FSIDType := 0;
  Self.UserAccountProperties.FStatus := STR_EMPTY;

end;
//: Constructor del componente 
constructor TUserAccountInfo.Create(AOwner: TComponent); 
begin 
  inherited; 
 
  Self.FUserAccountProperties := TUserAccountProperties.Create(); 
  Self.MSDNHelp := 'http://msdn.microsoft.com/en-us/library/aa394507(VS.85).aspx';
end; 
 
// destructor del componente 
destructor TUserAccountInfo.Destroy(); 
begin 
 
  // liberar 
  FreeAndNil(Self.FUserAccountProperties); 
 
  inherited; 
end; 
 
// Obtener la clase 
function TUserAccountInfo.GetWMIClass(): string; 
begin 
  Result := 'Win32_UserAccount'
end; 
 
// Obtener Root 
function TUserAccountInfo.GetWMIRoot(): string; 
begin 
  Result := STR_CIM2_ROOT; 
end; 
 
// Active 
procedure TUserAccountInfo.SetActive(const Value: Boolean); 
begin 
  // método heredado 
  inherited; 
end; 

  
//: Rellenar las propiedades del componente.
procedure TUserAccountInfo.FillProperties(AIndex: integer);
var
  v:variant;
  vNull:boolean;
  vp:TUserAccountProperties;
begin

  // Llamar al heredado (importante)
  inherited;

  // Rellenar propiedades...
  vp := Self.UserAccountProperties;

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
  if not vNull then begin
    vp.FInstallDate := EncodeDate(StrToInt(Copy(v, 1, 4)),StrToInt(Copy(v, 5, 2)),StrToInt(Copy(v, 7, 2)));
  end;

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
function TUserAccountProperties.GetAccountTypeAsString():string;
begin
  case FAccountType of
    256: Result := ENUM_STRING_ACCOUNTTYPE_256;
    512: Result := ENUM_STRING_ACCOUNTTYPE_512;
    2048: Result := ENUM_STRING_ACCOUNTTYPE_2048;
    4096: Result := ENUM_STRING_ACCOUNTTYPE_4096;
    8192: Result := ENUM_STRING_ACCOUNTTYPE_8192;
  else
    Result := STR_EMPTY;
  end;
end;


// Obtener la propiedad como string
function TUserAccountProperties.GetSIDTypeAsString():string;
begin
  case FSIDType of
    1: Result := ENUM_STRING_SIDTYPE_1;
    2: Result := ENUM_STRING_SIDTYPE_2;
    3: Result := ENUM_STRING_SIDTYPE_3;
    4: Result := ENUM_STRING_SIDTYPE_4;
    5: Result := ENUM_STRING_SIDTYPE_5;
    6: Result := ENUM_STRING_SIDTYPE_6;
    7: Result := ENUM_STRING_SIDTYPE_7;
    8: Result := ENUM_STRING_SIDTYPE_8;
    9: Result := ENUM_STRING_SIDTYPE_9;
  else
    Result := STR_EMPTY;
  end;
end;

// {IMPL_ENUM}

end.
