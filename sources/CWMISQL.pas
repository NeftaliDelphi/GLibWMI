{
TWMISQL  Component Version 1.9b - Suite GLib
Copyright (�) 2009,  by Germ�n Est�vez (Neftal�) 
 
  Componente para acceder de forma gen�rica a las propiedades de WMI.
  Component for access to WMI properties (all components).

Utilizaci�n/Usage:
  Basta con "soltar" el componente y activarlo.
  Rellenar la clase WMI y la condicion WHERE (o la sentencia SQL)

  Place the component in the form and active it.
  Fill the class and WHERE properties (or the SQL)


========================================================================= 
IMPORTANTE PROGRAMADORES: Por favor, si tienes comentarios, mejoras, ampliaciones, 
  errores y/o cualquier otro tipo de sugerencia env�ame un mail a: 
  german_ral@hotmail.com 
 
IMPORTANT PROGRAMMERS: please, if you have comments, improvements, enlargements, 
errors and/or any another type of suggestion send a mail to: 
german_ral@hotmail.com 
========================================================================= 
 
@author Germ�n Est�vez (Neftal�) 
@web  http://neftali.clubDelphi.com   -  http://neftali-mirror.site11.com/
@cat Package GLib 
} 
unit CWMISQL;
 
{ 
========================================================================= 
 
  CWMISQL.pas
 
  Componente 
 
======================================================================== 
  Historia de las Versiones 
------------------------------------------------------------------------ 
 
  14/04/2010    * Creaci�n.
 
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

  //: Implementaci�n para el acceso v�a WMI a la clase Win32_Environment
  TWMISQL = class(TWMIBase)
  private
    FSQL: string;
    FProperties: TStrings;

    procedure SetProperties(const Value: TStrings);

  protected
    function GetWMIClass: string; override;

    //: Rellenar las propiedades.
    procedure FillProperties(AIndex:integer); override;
    // propiedad Active
    procedure SetActive(const Value: Boolean); override;
    //: SQL Para acceder a la informaci�n de WMI
    function GetWMISQL():string; override;
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
    //: Propiedades devueltas por la consulta para el objeto actual.
    property Properties:TStrings{TStringList} read FProperties write SetProperties;
    //: Propiedad con la SQL del componente.
    property SQL:string read FSQL write FSQL;

  end;


    
//=========================================================================
//
// I M P L E M E N T A T I O N
//
//=========================================================================
implementation

uses
  {Generales} Forms, Types, Windows, SysUtils,
  {GLib} UProcedures, UConstantes, Dialogs;


{ TWMISQL }
{-------------------------------------------------------------------------------}

//: SQL Para acceder a la informaci�n de WMI.
function TWMISQL.GetWMISQL():string;
begin
  Result := FSQL;
end;


// Limpiar las propiedades.
procedure TWMISQL.ClearProps();
begin

  // Limpiar las propiedades
  Self.FProperties.Clear;

end;
//: Constructor del componente 
constructor TWMISQL.Create(AOwner: TComponent);
begin
  inherited;

  // Crear la lista de propiedades
  Self.FProperties := TStringList.Create();

  // Accesoa la documentaci�n
  Self.MSDNHelp := 'http://msdn.microsoft.com/en-us/library/aa394554(VS.85).aspx';
end;

// destructor del componente
destructor TWMISQL.Destroy();
begin

  // liberar
  Self.FProperties.Free; 
 
  inherited; 
end; 
 
// Obtener la clase 
function TWMISQL.GetWMIClass(): string;
begin
  Result := Self.FSQL;
end;
 
// Obtener Root 
function TWMISQL.GetWMIRoot(): string;
begin 
  Result := STR_CIM2_ROOT; 
end; 
 
// Active 
procedure TWMISQL.SetActive(const Value: Boolean);
begin 
  // m�todo heredado 
  inherited; 
end; 
//: Rellenar las propiedades del componente.
procedure TWMISQL.FillProperties(AIndex: integer);
var
  TS:TStrings;
begin

  // Llamar al heredado (importante)
  inherited;

  TS := TStringList.Create();
  try
    TS.Text := Self.AllProperties[AIndex - 1];

    // Rellenar propiedades...
    ExtractAllProperties(TS, Self.FProperties);
  finally
    TS.Free;
  end;
end;



procedure TWMISQL.SetProperties(const Value: TStrings);
begin
  // Nada
end;

end.
