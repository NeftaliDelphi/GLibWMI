{
TCodecFileInfo Component Version 3.1 - Suite GLibWMI
Copyright (©) 2020,  by Germán Estévez (Neftalí)

La clase Win32_CodecFile representa el códec de audio o vídeo instalado en el equipo. Los códecs convierten 
un tipo de formato de medio en otro, normalmente un formato comprimido a uno descomprimido. El nombre 
"códec" deriva de una combinación de "compress" (comprimir) y "decompress" (descomprimir). Por ejemplo, 
un códec puede convertir un formato comprimido como MS-ADPCM a un formato sin comprimir como PCM, que 
la mayor parte del hardware de audio puede reproducir directamente.


Utilización/Usage:
(ES) Basta con "soltar" el componente y activarlo.
(EN) Place the component in the form and active it.

MSDN Info:
https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-codecfile

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
unit CCodecFileInfo;

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
  TCodecFileProperties = class(TPersistent)
  private
    {%PrivateClassVars PropertiesClass%}
    FAccessMask:integer;
    FArchive:boolean;
    FCaption:string;
    FCompressed:boolean;
    FCompressionMethod:string;
    FCreationClassName:string;
    FCreationDate:TDatetime;
    FCSCreationClassName:string;
    FCSName:string;
    FDescription:string;
    FDrive:string;
    FEightDotThreeFileName:string;
    FEncrypted:boolean;
    FEncryptionMethod:string;
    FExtension:string;
    FFileName:string;
    FFileSize:int64;
    FFileType:string;
    FFSCreationClassName:string;
    FFSName:string;
    FGroup:string;
    FHidden:boolean;
    FInstallDate:TDatetime;
    FInUseCount:int64;
    FLastAccessed:TDatetime;
    FLastModified:TDatetime;
    FManufacturer:string;
    FName:string;
    FPath:string;
    FReadable:boolean;
    FStatus:string;
    FSystem:boolean;
    FVersion:string;
    FWriteable:boolean;

  private
    {%PrivateGetMethods PropertiesClass%}

  public
    {%PublicGetMethods PropertiesClass%}
    // Obtener la propiedad <Group> como string
    function GetAllGroupAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <Group>
    function GetAllGroupCount:integer;

    {%PublicArrayMethods PropertiesClass%}

  published
    {%PublishedProperties PropertiesClass%}
    /// <summary>
    /// </summary>
    property AccessMask:integer read FAccessMask write FAccessMask stored False;
    /// <summary>
    /// </summary>
    property Archive:boolean read FArchive write FArchive stored False;
    /// <summary>
    /// </summary>
    property Caption:string read FCaption write FCaption stored False;
    /// <summary>
    /// </summary>
    property Compressed:boolean read FCompressed write FCompressed stored False;
    /// <summary>
    /// </summary>
    property CompressionMethod:string read FCompressionMethod write FCompressionMethod stored False;
    /// <summary>
    /// </summary>
    property CreationClassName:string read FCreationClassName write FCreationClassName stored False;
    /// <summary>
    /// </summary>
    property CreationDate:TDatetime read FCreationDate write FCreationDate stored False;
    /// <summary>
    /// </summary>
    property CSCreationClassName:string read FCSCreationClassName write FCSCreationClassName stored False;
    /// <summary>
    /// </summary>
    property CSName:string read FCSName write FCSName stored False;
    /// <summary>
    ///  La propiedad Description indica el nombre completo del controlador de códec. Se supone que esta cadena 
    ///  se presentará en espacios grandes, ya que su propósito es descriptivo.
    ///  Ejemplo: Convertidor PCM de M
    ///  icrosoft.
    /// </summary>
    property Description:string read FDescription write FDescription stored False;
    /// <summary>
    ///  La propiedad Description indica el nombre completo del controlador de códec. Se supone que esta cadena 
    ///  se presentará en espacios grandes, ya que su propósito es descriptivo.
    ///  Ejemplo: Convertidor PCM de M
    ///  icrosoft.
    /// </summary>
    property Drive:string read FDrive write FDrive stored False;
    /// <summary>
    ///  La propiedad Description indica el nombre completo del controlador de códec. Se supone que esta cadena 
    ///  se presentará en espacios grandes, ya que su propósito es descriptivo.
    ///  Ejemplo: Convertidor PCM de M
    ///  icrosoft.
    /// </summary>
    property EightDotThreeFileName:string read FEightDotThreeFileName write FEightDotThreeFileName stored False;
    /// <summary>
    ///  La propiedad Description indica el nombre completo del controlador de códec. Se supone que esta cadena 
    ///  se presentará en espacios grandes, ya que su propósito es descriptivo.
    ///  Ejemplo: Convertidor PCM de M
    ///  icrosoft.
    /// </summary>
    property Encrypted:boolean read FEncrypted write FEncrypted stored False;
    /// <summary>
    ///  La propiedad Description indica el nombre completo del controlador de códec. Se supone que esta cadena 
    ///  se presentará en espacios grandes, ya que su propósito es descriptivo.
    ///  Ejemplo: Convertidor PCM de M
    ///  icrosoft.
    /// </summary>
    property EncryptionMethod:string read FEncryptionMethod write FEncryptionMethod stored False;
    /// <summary>
    ///  La propiedad Description indica el nombre completo del controlador de códec. Se supone que esta cadena 
    ///  se presentará en espacios grandes, ya que su propósito es descriptivo.
    ///  Ejemplo: Convertidor PCM de M
    ///  icrosoft.
    /// </summary>
    property Extension:string read FExtension write FExtension stored False;
    /// <summary>
    ///  La propiedad Description indica el nombre completo del controlador de códec. Se supone que esta cadena 
    ///  se presentará en espacios grandes, ya que su propósito es descriptivo.
    ///  Ejemplo: Convertidor PCM de M
    ///  icrosoft.
    /// </summary>
    property FileName:string read FFileName write FFileName stored False;
    /// <summary>
    ///  La propiedad Description indica el nombre completo del controlador de códec. Se supone que esta cadena 
    ///  se presentará en espacios grandes, ya que su propósito es descriptivo.
    ///  Ejemplo: Convertidor PCM de M
    ///  icrosoft.
    /// </summary>
    property FileSize:int64 read FFileSize write FFileSize stored False;
    /// <summary>
    ///  La propiedad Description indica el nombre completo del controlador de códec. Se supone que esta cadena 
    ///  se presentará en espacios grandes, ya que su propósito es descriptivo.
    ///  Ejemplo: Convertidor PCM de M
    ///  icrosoft.
    /// </summary>
    property FileType:string read FFileType write FFileType stored False;
    /// <summary>
    ///  La propiedad Description indica el nombre completo del controlador de códec. Se supone que esta cadena 
    ///  se presentará en espacios grandes, ya que su propósito es descriptivo.
    ///  Ejemplo: Convertidor PCM de M
    ///  icrosoft.
    /// </summary>
    property FSCreationClassName:string read FFSCreationClassName write FFSCreationClassName stored False;
    /// <summary>
    ///  La propiedad Description indica el nombre completo del controlador de códec. Se supone que esta cadena 
    ///  se presentará en espacios grandes, ya que su propósito es descriptivo.
    ///  Ejemplo: Convertidor PCM de M
    ///  icrosoft.
    /// </summary>
    property FSName:string read FFSName write FFSName stored False;
    /// <summary>
    ///  La propiedad Description indica el nombre completo del controlador de códec. Se supone que esta cadena 
    ///  se presentará en espacios grandes, ya que su propósito es descriptivo.
    ///  Ejemplo: Convertidor PCM de M
    ///  icrosoft.
    /// </summary>
    property Group:string read FGroup write FGroup stored False;
    /// <summary>
    ///  La propiedad Description indica el nombre completo del controlador de códec. Se supone que esta cadena 
    ///  se presentará en espacios grandes, ya que su propósito es descriptivo.
    ///  Ejemplo: Convertidor PCM de M
    ///  icrosoft.
    /// </summary>
    property Hidden:boolean read FHidden write FHidden stored False;
    /// <summary>
    ///  La propiedad Description indica el nombre completo del controlador de códec. Se supone que esta cadena 
    ///  se presentará en espacios grandes, ya que su propósito es descriptivo.
    ///  Ejemplo: Convertidor PCM de M
    ///  icrosoft.
    /// </summary>
    property InstallDate:TDatetime read FInstallDate write FInstallDate stored False;
    /// <summary>
    ///  La propiedad Description indica el nombre completo del controlador de códec. Se supone que esta cadena 
    ///  se presentará en espacios grandes, ya que su propósito es descriptivo.
    ///  Ejemplo: Convertidor PCM de M
    ///  icrosoft.
    /// </summary>
    property InUseCount:int64 read FInUseCount write FInUseCount stored False;
    /// <summary>
    ///  La propiedad Description indica el nombre completo del controlador de códec. Se supone que esta cadena 
    ///  se presentará en espacios grandes, ya que su propósito es descriptivo.
    ///  Ejemplo: Convertidor PCM de M
    ///  icrosoft.
    /// </summary>
    property LastAccessed:TDatetime read FLastAccessed write FLastAccessed stored False;
    /// <summary>
    ///  La propiedad Description indica el nombre completo del controlador de códec. Se supone que esta cadena 
    ///  se presentará en espacios grandes, ya que su propósito es descriptivo.
    ///  Ejemplo: Convertidor PCM de M
    ///  icrosoft.
    /// </summary>
    property LastModified:TDatetime read FLastModified write FLastModified stored False;
    /// <summary>
    ///  La propiedad Description indica el nombre completo del controlador de códec. Se supone que esta cadena 
    ///  se presentará en espacios grandes, ya que su propósito es descriptivo.
    ///  Ejemplo: Convertidor PCM de M
    ///  icrosoft.
    /// </summary>
    property Manufacturer:string read FManufacturer write FManufacturer stored False;
    /// <summary>
    ///  La propiedad Description indica el nombre completo del controlador de códec. Se supone que esta cadena 
    ///  se presentará en espacios grandes, ya que su propósito es descriptivo.
    ///  Ejemplo: Convertidor PCM de M
    ///  icrosoft.
    /// </summary>
    property Name:string read FName write FName stored False;
    /// <summary>
    ///  La propiedad Description indica el nombre completo del controlador de códec. Se supone que esta cadena 
    ///  se presentará en espacios grandes, ya que su propósito es descriptivo.
    ///  Ejemplo: Convertidor PCM de M
    ///  icrosoft.
    /// </summary>
    property Path:string read FPath write FPath stored False;
    /// <summary>
    ///  La propiedad Description indica el nombre completo del controlador de códec. Se supone que esta cadena 
    ///  se presentará en espacios grandes, ya que su propósito es descriptivo.
    ///  Ejemplo: Convertidor PCM de M
    ///  icrosoft.
    /// </summary>
    property Readable:boolean read FReadable write FReadable stored False;
    /// <summary>
    ///  La propiedad Description indica el nombre completo del controlador de códec. Se supone que esta cadena 
    ///  se presentará en espacios grandes, ya que su propósito es descriptivo.
    ///  Ejemplo: Convertidor PCM de M
    ///  icrosoft.
    /// </summary>
    property Status:string read FStatus write FStatus stored False;
    /// <summary>
    ///  La propiedad Description indica el nombre completo del controlador de códec. Se supone que esta cadena 
    ///  se presentará en espacios grandes, ya que su propósito es descriptivo.
    ///  Ejemplo: Convertidor PCM de M
    ///  icrosoft.
    /// </summary>
    property System:boolean read FSystem write FSystem stored False;
    /// <summary>
    ///  La propiedad Description indica el nombre completo del controlador de códec. Se supone que esta cadena 
    ///  se presentará en espacios grandes, ya que su propósito es descriptivo.
    ///  Ejemplo: Convertidor PCM de M
    ///  icrosoft.
    /// </summary>
    property Version:string read FVersion write FVersion stored False;
    /// <summary>
    ///  La propiedad Description indica el nombre completo del controlador de códec. Se supone que esta cadena 
    ///  se presentará en espacios grandes, ya que su propósito es descriptivo.
    ///  Ejemplo: Convertidor PCM de M
    ///  icrosoft.
    /// </summary>
    property Writeable:boolean read FWriteable write FWriteable stored False;
  end;

  {%InterfaceClass WMIClass%}
  /// <summary>
  ///  La clase Win32_CodecFile representa el códec de audio o vídeo instalado en el equipo. Los códecs convierten 
  ///  un tipo de formato de medio en otro, normalmente un formato comprimido a uno descomprimido. El nombre 
  ///  "códec" deriva de una combinación de "compress" (comprimir) y "decompress" (descomprimir). Por ejemplo, 
  ///  un códec puede convertir un formato comprimido como MS-ADPCM a un formato sin comprimir como PCM, que 
  ///  la mayor parte del hardware de audio puede reproducir directamente.
  /// </summary>
  TCodecFileInfo = class(TWMIBase)
  private
    FCodecFileProperties: TCodecFileProperties;
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
    // propiedades de la CodecFile
    property CodecFileProperties:TCodecFileProperties read   FCodecFileProperties write FCodecFileProperties;
  end;


// Constantes para la propiedad Group
const 
  ENUM_STRING_GROUP_00 = 'Audio';
  ENUM_STRING_GROUP_01 = 'Vídeo';

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
procedure TCodecFileInfo.ClearProps;
begin
  Self.CodecFileProperties.FAccessMask := 0;
  Self.CodecFileProperties.FArchive := False;
  Self.CodecFileProperties.FCaption := EmptyStr;
  Self.CodecFileProperties.FCompressed := False;
  Self.CodecFileProperties.FCompressionMethod := EmptyStr;
  Self.CodecFileProperties.FCreationClassName := EmptyStr;
  Self.CodecFileProperties.FCreationDate := 0;
  Self.CodecFileProperties.FCSCreationClassName := EmptyStr;
  Self.CodecFileProperties.FCSName := EmptyStr;
  Self.CodecFileProperties.FDescription := EmptyStr;
  Self.CodecFileProperties.FDrive := EmptyStr;
  Self.CodecFileProperties.FEightDotThreeFileName := EmptyStr;
  Self.CodecFileProperties.FEncrypted := False;
  Self.CodecFileProperties.FEncryptionMethod := EmptyStr;
  Self.CodecFileProperties.FExtension := EmptyStr;
  Self.CodecFileProperties.FFileName := EmptyStr;
  Self.CodecFileProperties.FFileSize := 0;
  Self.CodecFileProperties.FFileType := EmptyStr;
  Self.CodecFileProperties.FFSCreationClassName := EmptyStr;
  Self.CodecFileProperties.FFSName := EmptyStr;
  Self.CodecFileProperties.FGroup := EmptyStr;
  Self.CodecFileProperties.FHidden := False;
  Self.CodecFileProperties.FInstallDate := 0;
  Self.CodecFileProperties.FInUseCount := 0;
  Self.CodecFileProperties.FLastAccessed := 0;
  Self.CodecFileProperties.FLastModified := 0;
  Self.CodecFileProperties.FManufacturer := EmptyStr;
  Self.CodecFileProperties.FName := EmptyStr;
  Self.CodecFileProperties.FPath := EmptyStr;
  Self.CodecFileProperties.FReadable := False;
  Self.CodecFileProperties.FStatus := EmptyStr;
  Self.CodecFileProperties.FSystem := False;
  Self.CodecFileProperties.FVersion := EmptyStr;
  Self.CodecFileProperties.FWriteable := False;
end;

//: Constructor del componente
constructor TCodecFileInfo.Create(AOwner: TComponent);
begin
  inherited;
  Self.FCodecFileProperties := TCodecFileProperties.Create();
  Self.MSDNHelp := 'https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-codecfile';
end;

//: destructor del componente
destructor TCodecFileInfo.Destroy();
begin
  // liberar
  FreeAndNil(Self.FCodecFileProperties);
  inherited;
end;

//: Obtener la clase
function TCodecFileInfo.GetWMIClass(): string;
begin
  Result := 'Win32_CodecFile'
end;

//: Obtener Root
function TCodecFileInfo.GetWMIRoot(): string;
begin
  Result := '';
end;

//: Procedmiento de activación
procedure TCodecFileInfo.SetActive(const Value: Boolean);
begin
  // método heredado
  inherited;
end;


//: Rellenar las propiedades del componente.
procedure TCodecFileInfo.FillProperties(AIndex: integer);
var
  v:     variant;
  vNull: boolean;
  vp:    TCodecFileProperties;
begin
  // Llamar al heredado (importante)
  inherited;
  // Rellenar propiedades...
  vp := CodecFileProperties;

  GetWMIPropertyValue(Self, 'AccessMask', v, vNull);
  vp.FAccessMask := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Archive', v, vNull);
  vp.FArchive := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'Caption', v, vNull);
  vp.FCaption := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Compressed', v, vNull);
  vp.FCompressed := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'CompressionMethod', v, vNull);
  vp.FCompressionMethod := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'CreationClassName', v, vNull);
  vp.FCreationClassName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'CreationDate', v, vNull);
  vp.FCreationDate := VariantDateTimeValue(v, vNull);

  GetWMIPropertyValue(Self, 'CSCreationClassName', v, vNull);
  vp.FCSCreationClassName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'CSName', v, vNull);
  vp.FCSName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Description', v, vNull);
  vp.FDescription := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Drive', v, vNull);
  vp.FDrive := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'EightDotThreeFileName', v, vNull);
  vp.FEightDotThreeFileName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Encrypted', v, vNull);
  vp.FEncrypted := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'EncryptionMethod', v, vNull);
  vp.FEncryptionMethod := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Extension', v, vNull);
  vp.FExtension := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'FileName', v, vNull);
  vp.FFileName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'FileSize', v, vNull);
  vp.FFileSize := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'FileType', v, vNull);
  vp.FFileType := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'FSCreationClassName', v, vNull);
  vp.FFSCreationClassName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'FSName', v, vNull);
  vp.FFSName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Group', v, vNull);
  vp.FGroup := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Hidden', v, vNull);
  vp.FHidden := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'InstallDate', v, vNull);
  vp.FInstallDate := VariantDateTimeValue(v, vNull);

  GetWMIPropertyValue(Self, 'InUseCount', v, vNull);
  vp.FInUseCount := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'LastAccessed', v, vNull);
  vp.FLastAccessed := VariantDateTimeValue(v, vNull);

  GetWMIPropertyValue(Self, 'LastModified', v, vNull);
  vp.FLastModified := VariantDateTimeValue(v, vNull);

  GetWMIPropertyValue(Self, 'Manufacturer', v, vNull);
  vp.FManufacturer := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Name', v, vNull);
  vp.FName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Path', v, vNull);
  vp.FPath := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Readable', v, vNull);
  vp.FReadable := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'Status', v, vNull);
  vp.FStatus := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'System', v, vNull);
  vp.FSystem := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'Version', v, vNull);
  vp.FVersion := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Writeable', v, vNull);
  vp.FWriteable := VariantBooleanValue(v, vNull);
end;


// Obtener la propiedad como string
function TCodecFileProperties.GetAllGroupAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_GROUP_00;
    01: Result := ENUM_STRING_GROUP_01;
  else
    Result := STR_EMPTY;
  end;
end;


// Obtener núm. de elementos de la propiedad como string
function TCodecFileProperties.GetAllGroupCount:integer;
begin
  Result := 2
end;


end.
