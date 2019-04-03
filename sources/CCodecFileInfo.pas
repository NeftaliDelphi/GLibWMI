{ 
TCodecFileInfo  Component Version 2.0b - Suite GLibWMI 
Copyright (©) 2009-2013,  by Germán Estévez (Neftalí)  
 
  La clase WMI Win32_CodecFile representa el códec de audio o video instalado en el sistema informático.
 
Utilización/Usage: 
  Basta con "soltar" el componente y activarlo. 
 
  Place the component in the form and active it. 
 
  MSDN Info: 
  http://msdn.microsoft.com/en-us/library/aa394091(v=vs.85).aspx 
 
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
unit CCodecFileInfo; 
 
{ 
========================================================================= 
 
  TCodecFileInfo.pas 
 
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
  TCodecFileProperties = class(TPersistent)
  private
    FAccessMask:Longword;
    FArchive:boolean;
    FCaption:string;
    FCompressed:boolean;
    FCompressionMethod:string;
    FCreationClassName:string;
    FCreationDate:TDateTime;
    FCSCreationClassName:string;
    FCSName:string;
    FDescription:string;
    FDrive:string;
    FEightDotThreeFileName:string;
    FEncrypted:boolean;
    FEncryptionMethod:string;
    FExtension:string;
    FFileName:string;
    FFileSize:Int64;
    FFileType:string;
    FFSCreationClassName:string;
    FFSName:string;
    FGroup:string;
    FHidden:boolean;
    FInstallDate:TDateTime;
    FInUseCount:Int64;
    FLastAccessed:TDateTime;
    FLastModified:TDateTime;
    FManufacturer:string;
    FName:string;
    FPath:string;
    FReadable:boolean;
    FStatus:string;
    FSystem:boolean;
    FVersion:string;
    FWriteable:boolean;
  private
  public

// {GET_ENUM}

  published
    property AccessMask:Longword read FAccessMask write FAccessMask stored False;
    property Archive:boolean read FArchive write FArchive stored False;
    property Caption:string read FCaption write FCaption stored False;
    property Compressed:boolean read FCompressed write FCompressed stored False;
    property CompressionMethod:string read FCompressionMethod write FCompressionMethod stored False;
    property CreationClassName:string read FCreationClassName write FCreationClassName stored False;
    property CreationDate:TDateTime read FCreationDate write FCreationDate stored False;
    property CSCreationClassName:string read FCSCreationClassName write FCSCreationClassName stored False;
    property CSName:string read FCSName write FCSName stored False;
    property Description:string read FDescription write FDescription stored False;
    property Drive:string read FDrive write FDrive stored False;
    property EightDotThreeFileName:string read FEightDotThreeFileName write FEightDotThreeFileName stored False;
    property Encrypted:boolean read FEncrypted write FEncrypted stored False;
    property EncryptionMethod:string read FEncryptionMethod write FEncryptionMethod stored False;
    property Extension:string read FExtension write FExtension stored False;
    property FileName:string read FFileName write FFileName stored False;
    property FileSize:Int64 read FFileSize write FFileSize stored False;
    property FileType:string read FFileType write FFileType stored False;
    property FSCreationClassName:string read FFSCreationClassName write FFSCreationClassName stored False;
    property FSName:string read FFSName write FFSName stored False;
    property Group:string read FGroup write FGroup stored False;
    property Hidden:boolean read FHidden write FHidden stored False;
    property InstallDate:TDateTime read FInstallDate write FInstallDate stored False;
    property InUseCount:Int64 read FInUseCount write FInUseCount stored False;
    property LastAccessed:TDateTime read FLastAccessed write FLastAccessed stored False;
    property LastModified:TDateTime read FLastModified write FLastModified stored False;
    property Manufacturer:string read FManufacturer write FManufacturer stored False;
    property Name:string read FName write FName stored False;
    property Path:string read FPath write FPath stored False;
    property Readable:boolean read FReadable write FReadable stored False;
    property Status:string read FStatus write FStatus stored False;
    property System:boolean read FSystem write FSystem stored False;
    property Version:string read FVersion write FVersion stored False;
    property Writeable:boolean read FWriteable write FWriteable stored False;
  end;
  
  //: Implementación para el acceso vía WMI a la clase Win32_CodecFile
  TCodecFileInfo = class(TWMIBase)
  private
    fConnected:boolean;
    FCodecFileProperties: TCodecFileProperties;
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
    // propiedades de la CodecFile
    property CodecFileProperties:TCodecFileProperties read FCodecFileProperties write FCodecFileProperties;
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
  
{ TCodecFile } 
{-------------------------------------------------------------------------------} 
// Limpiar las propiedades
procedure TCodecFileInfo.ClearProps;
begin

  Self.CodecFileProperties.FAccessMask := 0;
  Self.CodecFileProperties.FArchive := False;
  Self.CodecFileProperties.FCaption := STR_EMPTY;
  Self.CodecFileProperties.FCompressed := False;
  Self.CodecFileProperties.FCompressionMethod := STR_EMPTY;
  Self.CodecFileProperties.FCreationClassName := STR_EMPTY;
  Self.CodecFileProperties.FCreationDate := 0;
  Self.CodecFileProperties.FCSCreationClassName := STR_EMPTY;
  Self.CodecFileProperties.FCSName := STR_EMPTY;
  Self.CodecFileProperties.FDescription := STR_EMPTY;
  Self.CodecFileProperties.FDrive := STR_EMPTY;
  Self.CodecFileProperties.FEightDotThreeFileName := STR_EMPTY;
  Self.CodecFileProperties.FEncrypted := False;
  Self.CodecFileProperties.FEncryptionMethod := STR_EMPTY;
  Self.CodecFileProperties.FExtension := STR_EMPTY;
  Self.CodecFileProperties.FFileName := STR_EMPTY;
  Self.CodecFileProperties.FFileSize := 0;
  Self.CodecFileProperties.FFileType := STR_EMPTY;
  Self.CodecFileProperties.FFSCreationClassName := STR_EMPTY;
  Self.CodecFileProperties.FFSName := STR_EMPTY;
  Self.CodecFileProperties.FGroup := STR_EMPTY;
  Self.CodecFileProperties.FHidden := False;
  Self.CodecFileProperties.FInstallDate := 0;
  Self.CodecFileProperties.FInUseCount := 0;
  Self.CodecFileProperties.FLastAccessed := 0;
  Self.CodecFileProperties.FLastModified := 0;
  Self.CodecFileProperties.FManufacturer := STR_EMPTY;
  Self.CodecFileProperties.FName := STR_EMPTY;
  Self.CodecFileProperties.FPath := STR_EMPTY;
  Self.CodecFileProperties.FReadable := False;
  Self.CodecFileProperties.FStatus := STR_EMPTY;
  Self.CodecFileProperties.FSystem := False;
  Self.CodecFileProperties.FVersion := STR_EMPTY;
  Self.CodecFileProperties.FWriteable := False;

end;
//: Constructor del componente 
constructor TCodecFileInfo.Create(AOwner: TComponent); 
begin 
  inherited; 
 
  Self.FCodecFileProperties := TCodecFileProperties.Create(); 
  Self.MSDNHelp := 'http://msdn.microsoft.com/en-us/library/aa394091(v=vs.85).aspx';
end; 
 
// destructor del componente 
destructor TCodecFileInfo.Destroy(); 
begin 
 
  // liberar 
  FreeAndNil(Self.FCodecFileProperties); 
 
  inherited; 
end; 
 
// Obtener la clase 
function TCodecFileInfo.GetWMIClass(): string; 
begin 
  Result := 'Win32_CodecFile'
end; 
 
// Obtener Root 
function TCodecFileInfo.GetWMIRoot(): string; 
begin 
  Result := STR_CIM2_ROOT; 
end; 
 
// Active 
procedure TCodecFileInfo.SetActive(const Value: Boolean); 
begin 
  // método heredado 
  inherited; 
end; 

//: Rellenar las propiedades del componente.
procedure TCodecFileInfo.FillProperties(AIndex: integer);
var
  s:string;
  i:Integer;
  d:TDateTime;
  v:variant;
  vType:TWMIGenericPropType;
  vArr:TArrVariant;
  vNull:boolean;
  vp:TCodecFileProperties;
begin

  // Llamar al heredado (importante)
  inherited;

  // Rellenar propiedades...
  vp := Self.CodecFileProperties;

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
  if not vNull then begin
    vp.FCreationDate := EncodeDate(StrToInt(Copy(v, 1, 4)),StrToInt(Copy(v, 5, 2)),StrToInt(Copy(v, 7, 2)));
  end;

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
  if not vNull then begin
    vp.FInstallDate := EncodeDate(StrToInt(Copy(v, 1, 4)),StrToInt(Copy(v, 5, 2)),StrToInt(Copy(v, 7, 2)));
  end;

  GetWMIPropertyValue(Self, 'InUseCount', v, vNull);
  vp.FInUseCount := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'LastAccessed', v, vNull);
  if not vNull then begin
    vp.FLastAccessed := EncodeDate(StrToInt(Copy(v, 1, 4)),StrToInt(Copy(v, 5, 2)),StrToInt(Copy(v, 7, 2)));
  end;

  GetWMIPropertyValue(Self, 'LastModified', v, vNull);
  if not vNull then begin
    vp.FLastModified := EncodeDate(StrToInt(Copy(v, 1, 4)),StrToInt(Copy(v, 5, 2)),StrToInt(Copy(v, 7, 2)));
  end;

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

// {IMPL_ENUM}

end.
