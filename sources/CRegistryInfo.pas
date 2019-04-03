{
TRegistryInfo  Component Version 2.0b - Suite GLibWMI 
Copyright (©) 2009-2013,  by Germán Estévez (Neftalí) 
 
  La clase WMI Win32_Registry representa el registro del sistema en un ordenador con Windows.
 
Utilización/Usage: 
  Basta con "soltar" el componente y activarlo. 
 
  Place the component in the form and active it. 
 
  MSDN Info: 
  http://msdn.microsoft.com/en-us/library/aa394394(v=vs.85).aspx 
 
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
@cat Package GLibWMI 
} 
unit CRegistryInfo; 
 
{ 
========================================================================= 
 
  TRegistryInfo.pas
 
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
  TRegistryProperties = class(TPersistent)
  private
    FCaption:string;
    FCurrentSize:Longword;
    FDescription:string;
    FInstallDate:TDateTime;
    FMaximumSize:Longword;
    FName:string;
    FProposedSize:Longword;
    FStatus:string;
  private
  public

// {GET_ENUM}

  published
    property Caption:string read FCaption write FCaption stored False;
    property CurrentSize:Longword read FCurrentSize write FCurrentSize stored False;
    property Description:string read FDescription write FDescription stored False;
    property InstallDate:TDateTime read FInstallDate write FInstallDate stored False;
    property MaximumSize:Longword read FMaximumSize write FMaximumSize stored False;
    property Name:string read FName write FName stored False;
    property ProposedSize:Longword read FProposedSize write FProposedSize stored False;
    property Status:string read FStatus write FStatus stored False;
  end;
  
  //: Implementación para el acceso vía WMI a la clase Win32_Registry
  TRegistryInfo = class(TWMIBase)
  private
    fConnected:boolean;
    FRegistryProperties: TRegistryProperties;
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
    // propiedades de la Registry
    property RegistryProperties:TRegistryProperties read FRegistryProperties write FRegistryProperties;
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
 
  
{ TRegistry } 
{-------------------------------------------------------------------------------} 
// Limpiar las propiedades
procedure TRegistryInfo.ClearProps;
begin

  Self.RegistryProperties.FCaption := STR_EMPTY;
  Self.RegistryProperties.FCurrentSize := 0;
  Self.RegistryProperties.FDescription := STR_EMPTY;
  Self.RegistryProperties.FInstallDate := 0;
  Self.RegistryProperties.FMaximumSize := 0;
  Self.RegistryProperties.FName := STR_EMPTY;
  Self.RegistryProperties.FProposedSize := 0;
  Self.RegistryProperties.FStatus := STR_EMPTY;

end;
//: Constructor del componente 
constructor TRegistryInfo.Create(AOwner: TComponent); 
begin 
  inherited; 
 
  Self.FRegistryProperties := TRegistryProperties.Create(); 
  Self.MSDNHelp := 'http://msdn.microsoft.com/en-us/library/aa394394(v=vs.85).aspx';
end; 
 
// destructor del componente 
destructor TRegistryInfo.Destroy(); 
begin 
 
  // liberar 
  FreeAndNil(Self.FRegistryProperties); 
 
  inherited; 
end; 
 
// Obtener la clase 
function TRegistryInfo.GetWMIClass(): string; 
begin 
  Result := WIN32_REGISTRY_CLASS;
end; 
 
// Obtener Root 
function TRegistryInfo.GetWMIRoot(): string; 
begin 
  Result := STR_CIM2_ROOT; 
end; 
 
// Active 
procedure TRegistryInfo.SetActive(const Value: Boolean); 
begin 
  // método heredado 
  inherited; 
end; 

//: Rellenar las propiedades del componente.
procedure TRegistryInfo.FillProperties(AIndex: integer);
var
  s:string;
  i:Integer;
  d:TDateTime;
  v:variant;
  vType:TWMIGenericPropType;
  vArr:TArrVariant;
  vNull:boolean;
  vp:TRegistryProperties;
begin

  // Llamar al heredado (importante)
  inherited;

  // Rellenar propiedades...
  vp := Self.RegistryProperties;

  GetWMIPropertyValue(Self, 'Caption', v, vNull);
  vp.FCaption := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'CurrentSize', v, vNull);
  vp.FCurrentSize := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Description', v, vNull);
  vp.FDescription := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'InstallDate', v, vNull);
  if not vNull then begin
    vp.FInstallDate := EncodeDate(StrToInt(Copy(v, 1, 4)),StrToInt(Copy(v, 5, 2)),StrToInt(Copy(v, 7, 2)));
  end;

  GetWMIPropertyValue(Self, 'MaximumSize', v, vNull);
  vp.FMaximumSize := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Name', v, vNull);
  vp.FName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'ProposedSize', v, vNull);
  vp.FProposedSize := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Status', v, vNull);
  vp.FStatus := VariantStrValue(v, vNull);

end;

// {IMPL_ENUM}

end.
