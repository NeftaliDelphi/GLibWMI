{ 
TEnvironmentInfo  Component Version 1.3b - Suite GLib 
Copyright (©) 2009,  by Germán Estévez (Neftalí) 
 
  Representa un entorno o entorno de sistema en un ordenador con Windows.
 
Utilización/Usage: 
  Basta con "soltar" el componente y activarlo. 
 
  Place the component in the form and active it. 
 
  MSDN Info: 
  http://msdn.microsoft.com/en-us/library/aa394143(VS.85).aspx 
 
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
unit CEnvironmentInfo; 
 
{ 
========================================================================= 
 
  TEnvironmentInfo.pas 
 
  Componente 
 
======================================================================== 
  Historia de las Versiones 
------------------------------------------------------------------------ 
 
  01/02/2010    * Creación. 
 
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
  TEnvironmentProperties = class(TPersistent)
  private
    FCaption:string;
    FDescription:string;
    FInstallDate:TDateTime;
    FName:string;
    FStatus:string;
    FSystemVariable:boolean;
    FUserName:string;
    FVariableValue:string;
  private
  public

// {GET_ENUM}

  published
    property Caption:string read FCaption write FCaption stored False;
    property Description:string read FDescription write FDescription stored False;
    property InstallDate:TDateTime read FInstallDate write FInstallDate stored False;
    property Name:string read FName write FName stored False;
    property Status:string read FStatus write FStatus stored False;
    property SystemVariable:boolean read FSystemVariable write FSystemVariable stored False;
    property UserName:string read FUserName write FUserName stored False;
    property VariableValue:string read FVariableValue write FVariableValue stored False;
  end;
  
  //: Implementación para el acceso vía WMI a la clase Win32_Environment
  TEnvironmentInfo = class(TWMIBase)
  private
    FEnvironmentProperties: TEnvironmentProperties;
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
    // propiedades de la Environment
    property EnvironmentProperties:TEnvironmentProperties read FEnvironmentProperties write FEnvironmentProperties;
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
 
  
{ TEnvironment } 
{-------------------------------------------------------------------------------} 
// Limpiar las propiedades
procedure TEnvironmentInfo.ClearProps;
begin

  Self.EnvironmentProperties.FCaption := STR_EMPTY;
  Self.EnvironmentProperties.FDescription := STR_EMPTY;
  Self.EnvironmentProperties.FInstallDate := 0;
  Self.EnvironmentProperties.FName := STR_EMPTY;
  Self.EnvironmentProperties.FStatus := STR_EMPTY;
  Self.EnvironmentProperties.FSystemVariable := False;
  Self.EnvironmentProperties.FUserName := STR_EMPTY;
  Self.EnvironmentProperties.FVariableValue := STR_EMPTY;

end;
//: Constructor del componente 
constructor TEnvironmentInfo.Create(AOwner: TComponent); 
begin 
  inherited; 
 
  Self.FEnvironmentProperties := TEnvironmentProperties.Create(); 
  Self.MSDNHelp := 'http://msdn.microsoft.com/en-us/library/aa394143(VS.85).aspx';
end; 
 
// destructor del componente 
destructor TEnvironmentInfo.Destroy(); 
begin 
 
  // liberar 
  FreeAndNil(Self.FEnvironmentProperties); 
 
  inherited; 
end; 
 
// Obtener la clase 
function TEnvironmentInfo.GetWMIClass(): string; 
begin 
  Result := 'Win32_Environment'
end; 
 
// Obtener Root 
function TEnvironmentInfo.GetWMIRoot(): string; 
begin 
  Result := STR_CIM2_ROOT; 
end; 
 
// Active 
procedure TEnvironmentInfo.SetActive(const Value: Boolean); 
begin 
  // método heredado 
  inherited; 
end; 
//: Rellenar las propiedades del componente.
procedure TEnvironmentInfo.FillProperties(AIndex: integer);
var
  v:variant;
  vNull:boolean;
  vp:TEnvironmentProperties;
begin

  // Llamar al heredado (importante)
  inherited;

  // Rellenar propiedades...
  vp := Self.EnvironmentProperties;

  GetWMIPropertyValue(Self, 'Caption', v, vNull);
  vp.FCaption := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Description', v, vNull);
  vp.FDescription := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'InstallDate', v, vNull);
  if not vNull then begin
    vp.FInstallDate := EncodeDate(StrToInt(Copy(v, 1, 4)),StrToInt(Copy(v, 5, 2)),StrToInt(Copy(v, 7, 2)));
  end;

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

// {IMPL_ENUM}

end.
