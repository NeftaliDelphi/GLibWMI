{
TShareInfo  Component Version 1.9b - Suite GLib 
Copyright (©) 2009,  by Germán Estévez (Neftalí) 
 
  Representa los recursos compartidos en un ordenador con un sistema windows.
 
Utilización/Usage: 
  Basta con "soltar" el componente y activarlo. 
 
  Place the component in the form and active it. 
 
  MSDN Info: 
  http://msdn.microsoft.com/en-us/library/aa394435(VS.85).aspx 
 
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
unit CShareInfo; 
 
{ 
========================================================================= 
 
  TShareInfo.pas 
 
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
  TShareProperties = class(TPersistent)
  private
    FAccessMask:Longword;
    FAllowMaximum:boolean;
    FCaption:string;
    FDescription:string;
    FInstallDate:TDateTime;
    FMaximumAllowed:Longword;
    FName:string;
    FPath:string;
    FShareType:Longword;
    FShareTypeAsString:string;
    FStatus:string;
  private
  public

    // Obtener la propiedad <Type> como string
    function GetShareTypeAsString():string;

// {GET_ENUM}

  published
    property AccessMask:Longword read FAccessMask write FAccessMask stored False;
    property AllowMaximum:boolean read FAllowMaximum write FAllowMaximum stored False;
    property Caption:string read FCaption write FCaption stored False;
    property Description:string read FDescription write FDescription stored False;
    property InstallDate:TDateTime read FInstallDate write FInstallDate stored False;
    property MaximumAllowed:Longword read FMaximumAllowed write FMaximumAllowed stored False;
    property Name:string read FName write FName stored False;
    property Path:string read FPath write FPath stored False;
    property ShareType:Longword read FShareType write FShareType stored False;
    property ShareTypeAsString:string read GetShareTypeAsString  write FShareTypeAsString stored False;
    property Status:string read FStatus write FStatus stored False;
  end;
  
  //: Implementación para el acceso vía WMI a la clase Win32_Share
  TShareInfo = class(TWMIBase)
  private
    FShareProperties: TShareProperties;
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
    // propiedades de la Share
    property ShareProperties:TShareProperties read FShareProperties write FShareProperties;
  end;

// Constantes para la propiedad Type
const
  ENUM_STRING_TYPE_0 = 'Disk Drive';
  ENUM_STRING_TYPE_1 = 'Print Queue';
  ENUM_STRING_TYPE_2 = 'Device';
  ENUM_STRING_TYPE_3 = 'IPC';
  ENUM_STRING_TYPE_2147483648 = 'Disk Drive Admin';
  ENUM_STRING_TYPE_2147483649 = 'Print Queue Admin';
  ENUM_STRING_TYPE_2147483650 = 'Device Admin';
  ENUM_STRING_TYPE_2147483651 = 'IPC Admin';


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
 
  
{ TShare } 
{-------------------------------------------------------------------------------} 
// Limpiar las propiedades
procedure TShareInfo.ClearProps;
begin

  Self.ShareProperties.FAccessMask := 0;
  Self.ShareProperties.FAllowMaximum := False;
  Self.ShareProperties.FCaption := STR_EMPTY;
  Self.ShareProperties.FDescription := STR_EMPTY;
  Self.ShareProperties.FInstallDate := 0;
  Self.ShareProperties.FMaximumAllowed := 0;
  Self.ShareProperties.FName := STR_EMPTY;
  Self.ShareProperties.FPath := STR_EMPTY;
  Self.ShareProperties.FShareType := 0;
  Self.ShareProperties.FStatus := STR_EMPTY;

end;
//: Constructor del componente 
constructor TShareInfo.Create(AOwner: TComponent); 
begin 
  inherited; 
 
  Self.FShareProperties := TShareProperties.Create(); 
  Self.MSDNHelp := 'http://msdn.microsoft.com/en-us/library/aa394435(VS.85).aspx';
end; 
 
// destructor del componente 
destructor TShareInfo.Destroy(); 
begin 
 
  // liberar 
  FreeAndNil(Self.FShareProperties); 
 
  inherited; 
end; 
 
// Obtener la clase 
function TShareInfo.GetWMIClass(): string;
begin 
  Result := 'Win32_Share'
end;
 
// Obtener Root 
function TShareInfo.GetWMIRoot(): string; 
begin 
  Result := STR_CIM2_ROOT; 
end; 
 
// Active 
procedure TShareInfo.SetActive(const Value: Boolean); 
begin 
  // método heredado 
  inherited; 
end; 
  

//: Rellenar las propiedades del componente.
procedure TShareInfo.FillProperties(AIndex: integer);
var
  v:variant;
  vNull:boolean;
  vp:TShareProperties;
begin

  // Llamar al heredado (importante)
  inherited;

  // Rellenar propiedades...
  vp := Self.ShareProperties;

  GetWMIPropertyValue(Self, 'AccessMask', v, vNull);
  vp.FAccessMask := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'AllowMaximum', v, vNull);
  vp.FAllowMaximum := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'Caption', v, vNull);
  vp.FCaption := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Description', v, vNull);
  vp.FDescription := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'InstallDate', v, vNull);
  if not vNull then begin
    vp.FInstallDate := EncodeDate(StrToInt(Copy(v, 1, 4)),StrToInt(Copy(v, 5, 2)),StrToInt(Copy(v, 7, 2)));
  end;

  GetWMIPropertyValue(Self, 'MaximumAllowed', v, vNull);
  vp.FMaximumAllowed := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Name', v, vNull);
  vp.FName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Path', v, vNull);
  vp.FPath := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'ShareType', v, vNull);
  vp.FShareType := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Status', v, vNull);
  vp.FStatus := VariantStrValue(v, vNull);

end;


// Obtener la propiedad como string
function TShareProperties.GetShareTypeAsString():string;
begin
  case FShareType of
    0: Result := ENUM_STRING_TYPE_0;
    1: Result := ENUM_STRING_TYPE_1;
    2: Result := ENUM_STRING_TYPE_2;
    3: Result := ENUM_STRING_TYPE_3;
    2147483648: Result := ENUM_STRING_TYPE_2147483648;
    2147483649: Result := ENUM_STRING_TYPE_2147483649;
    2147483650: Result := ENUM_STRING_TYPE_2147483650;
    2147483651: Result := ENUM_STRING_TYPE_2147483651;
  else
    Result := STR_EMPTY;
  end;
end;


end.
