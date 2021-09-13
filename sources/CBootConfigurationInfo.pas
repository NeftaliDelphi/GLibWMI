{
TBootConfigurationInfo Component Version 3.1 - Suite GLibWMI
Copyright (©) 2020,  by Germán Estévez (Neftalí)

La clase Win32_BootConfiguration representa la configuración de arranque de un sistema Win32.


Utilización/Usage:
(ES) Basta con "soltar" el componente y activarlo.
(EN) Place the component in the form and active it.

MSDN Info:
https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-bootconfiguration

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
unit CBootConfigurationInfo;

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
  TBootConfigurationProperties = class(TPersistent)
  private
    {%PrivateClassVars PropertiesClass%}
    FBootDirectory:string;
    FCaption:string;
    FConfigurationPath:string;
    FDescription:string;
    FLastDrive:string;
    FName:string;
    FScratchDirectory:string;
    FSettingID:string;
    FTempDirectory:string;

  private
    {%PrivateGetMethods PropertiesClass%}

  public
    {%PublicGetMethods PropertiesClass%}

    {%PublicArrayMethods PropertiesClass%}

  published
    {%PublishedProperties PropertiesClass%}
    /// <summary>
    ///  La propiedad BootDirectory indica la ruta de acceso a los archivos de sistema requeridos para arrancar 
    ///  el sistema. 
    ///  Ejemplo: C:\Windows.
    /// </summary>
    property BootDirectory:string read FBootDirectory write FBootDirectory stored False;
    /// <summary>
    ///  La propiedad BootDirectory indica la ruta de acceso a los archivos de sistema requeridos para arrancar 
    ///  el sistema. 
    ///  Ejemplo: C:\Windows.
    /// </summary>
    property Caption:string read FCaption write FCaption stored False;
    /// <summary>
    ///  La propiedad ConfigurationPath indica la ruta de acceso a los archivos de configuración. Este valor puede 
    ///  ser similar al de BootDirectory.
    /// </summary>
    property ConfigurationPath:string read FConfigurationPath write FConfigurationPath stored False;
    /// <summary>
    ///  La propiedad ConfigurationPath indica la ruta de acceso a los archivos de configuración. Este valor puede 
    ///  ser similar al de BootDirectory.
    /// </summary>
    property Description:string read FDescription write FDescription stored False;
    /// <summary>
    ///  La propiedad LastDrive indica la última letra de unidad asignada a una unidad física.
    ///  Ejemplo: E:
    /// </summary>
    property LastDrive:string read FLastDrive write FLastDrive stored False;
    /// <summary>
    ///  La propiedad Name indica el nombre de la configuración de arranque. Se trata de un identificador de la 
    ///  configuración de arranque.
    /// </summary>
    property Name:string read FName write FName stored False;
    /// <summary>
    ///  La propiedad ScratchDirectory indica el directorio en que pueden residir los archivos temporales durante 
    ///  el arranque.
    /// </summary>
    property ScratchDirectory:string read FScratchDirectory write FScratchDirectory stored False;
    /// <summary>
    ///  La propiedad ScratchDirectory indica el directorio en que pueden residir los archivos temporales durante 
    ///  el arranque.
    /// </summary>
    property SettingID:string read FSettingID write FSettingID stored False;
    /// <summary>
    ///  La propiedad TempDirectory indica el directorio en que se guardan los archivos temporales.
    ///  Ejemplo: 
    ///  C:\TEMP
    /// </summary>
    property TempDirectory:string read FTempDirectory write FTempDirectory stored False;
  end;

  {%InterfaceClass WMIClass%}
  /// <summary>
  ///  La clase Win32_BootConfiguration representa la configuración de arranque de un sistema Win32.
  /// </summary>
  TBootConfigurationInfo = class(TWMIBase)
  private
    FBootConfigurationProperties: TBootConfigurationProperties;
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
    // propiedades de la BootConfiguration
    property BootConfigurationProperties:TBootConfigurationProperties read   FBootConfigurationProperties write FBootConfigurationProperties;
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
procedure TBootConfigurationInfo.ClearProps;
begin
  Self.BootConfigurationProperties.FBootDirectory := EmptyStr;
  Self.BootConfigurationProperties.FCaption := EmptyStr;
  Self.BootConfigurationProperties.FConfigurationPath := EmptyStr;
  Self.BootConfigurationProperties.FDescription := EmptyStr;
  Self.BootConfigurationProperties.FLastDrive := EmptyStr;
  Self.BootConfigurationProperties.FName := EmptyStr;
  Self.BootConfigurationProperties.FScratchDirectory := EmptyStr;
  Self.BootConfigurationProperties.FSettingID := EmptyStr;
  Self.BootConfigurationProperties.FTempDirectory := EmptyStr;
end;

//: Constructor del componente
constructor TBootConfigurationInfo.Create(AOwner: TComponent);
begin
  inherited;
  Self.FBootConfigurationProperties := TBootConfigurationProperties.Create();
  Self.MSDNHelp := 'https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-bootconfiguration';
end;

//: destructor del componente
destructor TBootConfigurationInfo.Destroy();
begin
  // liberar
  FreeAndNil(Self.FBootConfigurationProperties);
  inherited;
end;

//: Obtener la clase
function TBootConfigurationInfo.GetWMIClass(): string;
begin
  Result := 'Win32_BootConfiguration'
end;

//: Obtener Root
function TBootConfigurationInfo.GetWMIRoot(): string;
begin
  Result := '';
end;

//: Procedmiento de activación
procedure TBootConfigurationInfo.SetActive(const Value: Boolean);
begin
  // método heredado
  inherited;
end;


//: Rellenar las propiedades del componente.
procedure TBootConfigurationInfo.FillProperties(AIndex: integer);
var
  v:     variant;
  vNull: boolean;
  vp:    TBootConfigurationProperties;
begin
  // Llamar al heredado (importante)
  inherited;
  // Rellenar propiedades...
  vp := BootConfigurationProperties;

  GetWMIPropertyValue(Self, 'BootDirectory', v, vNull);
  vp.FBootDirectory := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Caption', v, vNull);
  vp.FCaption := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'ConfigurationPath', v, vNull);
  vp.FConfigurationPath := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Description', v, vNull);
  vp.FDescription := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'LastDrive', v, vNull);
  vp.FLastDrive := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Name', v, vNull);
  vp.FName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'ScratchDirectory', v, vNull);
  vp.FScratchDirectory := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'SettingID', v, vNull);
  vp.FSettingID := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'TempDirectory', v, vNull);
  vp.FTempDirectory := VariantStrValue(v, vNull);
end;




end.
