{
TPhysicalMemoryInfo  Component Version 1.1 - Suite GLib 
Copyright (©) 2009,  by Germán Estévez (Neftalí) 
 
  Representa la memoria física instalada y disponible para el sistema operativo.
 
Utilización/Usage: 
  Basta con "soltar" el componente y activarlo.
 
  Place the component in the form and active it. 
 
  MSDN Info: 
  http://msdn.microsoft.com/en-us/library/aa394347(VS.85).aspx 
 
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
unit CPhysicalMemoryInfo;
 
{ 
========================================================================= 
 
  TPhysicalMemoryInfo.pas 
 
  Componente 
 
======================================================================== 
  Historia de las Versiones 
------------------------------------------------------------------------ 
 
  08/01/2010    * Creación. 
 
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
  TPhysicalMemoryProperties = class(TPersistent)
  private
    FBankLabel:string;
    FCapacity:Int64;
    FCaption:string;
    FCreationClassName:string;
    FDataWidth:Integer;
    FDescription:string;
    FDeviceLocator:string;
    FFormFactor:Integer;
    FFormFactorAsString:string;
    FHotSwappable:boolean;
    FInstallDate:TDateTime;
    FInterleaveDataDepth:Integer;
    FInterleavePosition:Longword;
    FInterleavePositionAsString:string;
    FManufacturer:string;
    FMemoryType:Integer;
    FMemoryTypeAsString:string;
    FModel:string;
    FName:string;
    FOtherIdentifyingInfo:string;
    FPartNumber:string;
    FPositionInRow:Longword;
    FPoweredOn:boolean;
    FRemovable:boolean;
    FReplaceable:boolean;
    FSerialNumber:string;
    FSKU:string;
    FSpeed:Longword;
    FStatus:string;
    FTag:string;
    FTotalWidth:Integer;
    FTypeDetail:Integer;
    FTypeDetailAsString:string;
    FVersion:string;
  private
  public
    // Obtener la propiedad <TypeDetail> como string
    function GetTypeDetailAsString():string;  
    // Obtener la propiedad <FormFactor> como string
    function GetFormFactorAsString():string;
    // Obtener la propiedad <InterleavePosition> como string
    function GetInterleavePositionAsString():string;
    // Obtener la propiedad <MemoryType> como string
    function GetMemoryTypeAsString():string;
  published
    property BankLabel:string read FBankLabel write FBankLabel stored False;
    property Capacity:Int64 read FCapacity write FCapacity stored False;
    property Caption:string read FCaption write FCaption stored False;
    property CreationClassName:string read FCreationClassName write FCreationClassName stored False;
    property DataWidth:Integer read FDataWidth write FDataWidth stored False;
    property Description:string read FDescription write FDescription stored False;
    property DeviceLocator:string read FDeviceLocator write FDeviceLocator stored False;
    property FormFactor:Integer read FFormFactor write FFormFactor stored False;
    property FormFactorAsString:string read GetFormFactorAsString  write FFormFactorAsString stored False;
    property HotSwappable:boolean read FHotSwappable write FHotSwappable stored False;
    property InstallDate:TDateTime read FInstallDate write FInstallDate stored False;
    property InterleaveDataDepth:Integer read FInterleaveDataDepth write FInterleaveDataDepth stored False;
    property InterleavePosition:Longword read FInterleavePosition write FInterleavePosition stored False;
    property InterleavePositionAsString:string read GetInterleavePositionAsString  write FInterleavePositionAsString stored False;
    property Manufacturer:string read FManufacturer write FManufacturer stored False;
    property MemoryType:Integer read FMemoryType write FMemoryType stored False;
    property MemoryTypeAsString:string read GetMemoryTypeAsString  write FMemoryTypeAsString stored False;
    property Model:string read FModel write FModel stored False;
    property Name:string read FName write FName stored False;
    property OtherIdentifyingInfo:string read FOtherIdentifyingInfo write FOtherIdentifyingInfo stored False;
    property PartNumber:string read FPartNumber write FPartNumber stored False;
    property PositionInRow:Longword read FPositionInRow write FPositionInRow stored False;
    property PoweredOn:boolean read FPoweredOn write FPoweredOn stored False;
    property Removable:boolean read FRemovable write FRemovable stored False;
    property Replaceable:boolean read FReplaceable write FReplaceable stored False;
    property SerialNumber:string read FSerialNumber write FSerialNumber stored False;
    property SKU:string read FSKU write FSKU stored False;
    property Speed:Longword read FSpeed write FSpeed stored False;
    property Status:string read FStatus write FStatus stored False;
    property Tag:string read FTag write FTag stored False;
    property TotalWidth:Integer read FTotalWidth write FTotalWidth stored False;
    property TypeDetail:Integer read FTypeDetail write FTypeDetail stored False;
    property TypeDetailAsString:string read GetTypeDetailAsString  write FTypeDetailAsString stored False;
    property Version:string read FVersion write FVersion stored False;
  end;
  
  //: Implementación para el acceso vía WMI a la clase Win32_PhysicalMemory
  TPhysicalMemoryInfo = class(TWMIBase)
  private
    FPhysicalMemoryProperties: TPhysicalMemoryProperties;
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
    // propiedades de la PhysicalMemory
    property PhysicalMemoryProperties:TPhysicalMemoryProperties read FPhysicalMemoryProperties write FPhysicalMemoryProperties;
  end;

// Constantes para la propiedad TypeDetail
const
  ENUM_STRING_TYPEDETAIL_1 = 'Reserved';
  ENUM_STRING_TYPEDETAIL_2 = 'Other';
  ENUM_STRING_TYPEDETAIL_4 = 'Unknown';
  ENUM_STRING_TYPEDETAIL_8 = 'Fast-paged';
  ENUM_STRING_TYPEDETAIL_16 = 'Static column';
  ENUM_STRING_TYPEDETAIL_32 = 'Pseudo-static';
  ENUM_STRING_TYPEDETAIL_64 = 'RAMBUS';
  ENUM_STRING_TYPEDETAIL_128 = 'Synchronous';
  ENUM_STRING_TYPEDETAIL_256 = 'CMOS';
  ENUM_STRING_TYPEDETAIL_512 = 'EDO';
  ENUM_STRING_TYPEDETAIL_1024 = 'Window DRAM';
  ENUM_STRING_TYPEDETAIL_2048 = 'Cache DRAM';
  ENUM_STRING_TYPEDETAIL_4096 = 'Nonvolatile';



// Constantes para la propiedad FormFactor
const
  ENUM_STRING_FORMFACTOR_0 = 'Unknown';
  ENUM_STRING_FORMFACTOR_1 = 'Other';
  ENUM_STRING_FORMFACTOR_2 = 'SIP';
  ENUM_STRING_FORMFACTOR_3 = 'DIP';
  ENUM_STRING_FORMFACTOR_4 = 'ZIP';
  ENUM_STRING_FORMFACTOR_5 = 'SOJ';
  ENUM_STRING_FORMFACTOR_6 = 'Proprietary';
  ENUM_STRING_FORMFACTOR_7 = 'SIMM';
  ENUM_STRING_FORMFACTOR_8 = 'DIMM';
  ENUM_STRING_FORMFACTOR_9 = 'TSOP';
  ENUM_STRING_FORMFACTOR_10 = 'PGA';
  ENUM_STRING_FORMFACTOR_11 = 'RIMM';
  ENUM_STRING_FORMFACTOR_12 = 'SODIMM';
  ENUM_STRING_FORMFACTOR_13 = 'SRIMM';
  ENUM_STRING_FORMFACTOR_14 = 'SMD';
  ENUM_STRING_FORMFACTOR_15 = 'SSMP';
  ENUM_STRING_FORMFACTOR_16 = 'QFP';
  ENUM_STRING_FORMFACTOR_17 = 'TQFP';
  ENUM_STRING_FORMFACTOR_18 = 'SOIC';
  ENUM_STRING_FORMFACTOR_19 = 'LCC';
  ENUM_STRING_FORMFACTOR_20 = 'PLCC';
  ENUM_STRING_FORMFACTOR_21 = 'BGA';
  ENUM_STRING_FORMFACTOR_22 = 'FPBGA';
  ENUM_STRING_FORMFACTOR_23 = 'LGA';

// Constantes para la propiedad InterleavePosition
const
  ENUM_STRING_INTERLEAVEPOSITION_0 = 'Noninterleaved';
  ENUM_STRING_INTERLEAVEPOSITION_1 = 'First position';
  ENUM_STRING_INTERLEAVEPOSITION_2 = 'Second position';


// Constantes para la propiedad MemoryType
const
  ENUM_STRING_MEMORYTYPE_0 = 'Unknown';
  ENUM_STRING_MEMORYTYPE_1 = 'Other';
  ENUM_STRING_MEMORYTYPE_2 = 'DRAM';
  ENUM_STRING_MEMORYTYPE_3 = 'Synchronous DRAM';
  ENUM_STRING_MEMORYTYPE_4 = 'Cache DRAM';
  ENUM_STRING_MEMORYTYPE_5 = 'EDO';
  ENUM_STRING_MEMORYTYPE_6 = 'EDRAM';
  ENUM_STRING_MEMORYTYPE_7 = 'VRAM';
  ENUM_STRING_MEMORYTYPE_8 = 'SRAM';
  ENUM_STRING_MEMORYTYPE_9 = 'RAM';
  ENUM_STRING_MEMORYTYPE_10 = 'ROM';
  ENUM_STRING_MEMORYTYPE_11 = 'Flash';
  ENUM_STRING_MEMORYTYPE_12 = 'EEPROM';
  ENUM_STRING_MEMORYTYPE_13 = 'FEPROM';
  ENUM_STRING_MEMORYTYPE_14 = 'EPROM';
  ENUM_STRING_MEMORYTYPE_15 = 'CDRAM';
  ENUM_STRING_MEMORYTYPE_16 = '3DRAM';
  ENUM_STRING_MEMORYTYPE_17 = 'SDRAM';
  ENUM_STRING_MEMORYTYPE_18 = 'SGRAM';
  ENUM_STRING_MEMORYTYPE_19 = 'RDRAM';
  ENUM_STRING_MEMORYTYPE_20 = 'DDR';
  ENUM_STRING_MEMORYTYPE_21 = 'DDR-2';

//=========================================================================
// 
// I M P L E M E N T A T I O N 
// 
//========================================================================= 
implementation 
  
uses
  {Generales} Forms, Types, Windows, SysUtils, 
  {GLib} UProcedures, UConstantes, Dialogs; 
 
  
{ TPhysicalMemory } 
{-------------------------------------------------------------------------------} 
// Limpiar las propiedades
procedure TPhysicalMemoryInfo.ClearProps;
begin

  Self.PhysicalMemoryProperties.FBankLabel := STR_EMPTY;
  Self.PhysicalMemoryProperties.FCapacity := 0;
  Self.PhysicalMemoryProperties.FCaption := STR_EMPTY;
  Self.PhysicalMemoryProperties.FCreationClassName := STR_EMPTY;
  Self.PhysicalMemoryProperties.FDataWidth := 0;
  Self.PhysicalMemoryProperties.FDescription := STR_EMPTY;
  Self.PhysicalMemoryProperties.FDeviceLocator := STR_EMPTY;
  Self.PhysicalMemoryProperties.FFormFactor := 0;
  Self.PhysicalMemoryProperties.FHotSwappable := False;
  Self.PhysicalMemoryProperties.FInstallDate := 0;
  Self.PhysicalMemoryProperties.FInterleaveDataDepth := 0;
  Self.PhysicalMemoryProperties.FInterleavePosition := 0;
  Self.PhysicalMemoryProperties.FManufacturer := STR_EMPTY;
  Self.PhysicalMemoryProperties.FMemoryType := 0;
  Self.PhysicalMemoryProperties.FModel := STR_EMPTY;
  Self.PhysicalMemoryProperties.FName := STR_EMPTY;
  Self.PhysicalMemoryProperties.FOtherIdentifyingInfo := STR_EMPTY;
  Self.PhysicalMemoryProperties.FPartNumber := STR_EMPTY;
  Self.PhysicalMemoryProperties.FPositionInRow := 0;
  Self.PhysicalMemoryProperties.FPoweredOn := False;
  Self.PhysicalMemoryProperties.FRemovable := False;
  Self.PhysicalMemoryProperties.FReplaceable := False;
  Self.PhysicalMemoryProperties.FSerialNumber := STR_EMPTY;
  Self.PhysicalMemoryProperties.FSKU := STR_EMPTY;
  Self.PhysicalMemoryProperties.FSpeed := 0;
  Self.PhysicalMemoryProperties.FStatus := STR_EMPTY;
  Self.PhysicalMemoryProperties.FTag := STR_EMPTY;
  Self.PhysicalMemoryProperties.FTotalWidth := 0;
  Self.PhysicalMemoryProperties.FTypeDetail := 0;
  Self.PhysicalMemoryProperties.FVersion := STR_EMPTY;

end;
//: Constructor del componente 
constructor TPhysicalMemoryInfo.Create(AOwner: TComponent); 
begin 
  inherited; 
 
  Self.FPhysicalMemoryProperties := TPhysicalMemoryProperties.Create(); 
  Self.MSDNHelp := 'http://msdn.microsoft.com/en-us/library/aa394347(VS.85).aspx';
end; 
 
// destructor del componente 
destructor TPhysicalMemoryInfo.Destroy(); 
begin 
 
  // liberar 
  FreeAndNil(Self.FPhysicalMemoryProperties); 
 
  inherited; 
end; 
 
// Obtener la clase 
function TPhysicalMemoryInfo.GetWMIClass(): string; 
begin 
  Result := WIN32_PHYSICALMEMORY_CLASS;
end; 
 
// Obtener Root 
function TPhysicalMemoryInfo.GetWMIRoot(): string; 
begin 
  Result := STR_CIM2_ROOT; 
end; 
 
// Active 
procedure TPhysicalMemoryInfo.SetActive(const Value: Boolean); 
begin 
  // método heredado 
  inherited; 
end; 
  

//: Rellenar las propiedades del componente.
procedure TPhysicalMemoryInfo.FillProperties(AIndex: integer);
var
  v:variant;
  vNull:boolean;
  vp:TPhysicalMemoryProperties;
begin

  // Llamar al heredado (importante)
  inherited;

  // Rellenar propiedades...
  vp := Self.PhysicalMemoryProperties;

  GetWMIPropertyValue(Self, 'BankLabel', v, vNull);
  vp.FBankLabel := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Capacity', v, vNull);
  vp.FCapacity := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Caption', v, vNull);
  vp.FCaption := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'CreationClassName', v, vNull);
  vp.FCreationClassName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'DataWidth', v, vNull);
  vp.FDataWidth := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Description', v, vNull);
  vp.FDescription := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'DeviceLocator', v, vNull);
  vp.FDeviceLocator := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'FormFactor', v, vNull);
  vp.FFormFactor := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'HotSwappable', v, vNull);
  vp.FHotSwappable := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'InstallDate', v, vNull);
  if not vNull then begin
    vp.FInstallDate := EncodeDate(StrToInt(Copy(v, 1, 4)),StrToInt(Copy(v, 5, 2)),StrToInt(Copy(v, 7, 2)));
  end;

  GetWMIPropertyValue(Self, 'InterleaveDataDepth', v, vNull);
  vp.FInterleaveDataDepth := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'InterleavePosition', v, vNull);
  vp.FInterleavePosition := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Manufacturer', v, vNull);
  vp.FManufacturer := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'MemoryType', v, vNull);
  vp.FMemoryType := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Model', v, vNull);
  vp.FModel := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Name', v, vNull);
  vp.FName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'OtherIdentifyingInfo', v, vNull);
  vp.FOtherIdentifyingInfo := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'PartNumber', v, vNull);
  vp.FPartNumber := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'PositionInRow', v, vNull);
  vp.FPositionInRow := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'PoweredOn', v, vNull);
  vp.FPoweredOn := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'Removable', v, vNull);
  vp.FRemovable := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'Replaceable', v, vNull);
  vp.FReplaceable := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'SerialNumber', v, vNull);
  vp.FSerialNumber := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'SKU', v, vNull);
  vp.FSKU := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Speed', v, vNull);
  vp.FSpeed := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Status', v, vNull);
  vp.FStatus := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Tag', v, vNull);
  vp.FTag := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'TotalWidth', v, vNull);
  vp.FTotalWidth := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'TypeDetail', v, vNull);
  vp.FTypeDetail := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Version', v, vNull);
  vp.FVersion := VariantStrValue(v, vNull);

end;

// Obtener la propiedad como string
function TPhysicalMemoryProperties.GetTypeDetailAsString():string;
begin
  case FTypeDetail of
    1: Result := ENUM_STRING_TYPEDETAIL_1;
    2: Result := ENUM_STRING_TYPEDETAIL_2;
    4: Result := ENUM_STRING_TYPEDETAIL_4;
    8: Result := ENUM_STRING_TYPEDETAIL_8;
    16: Result := ENUM_STRING_TYPEDETAIL_16;
    32: Result := ENUM_STRING_TYPEDETAIL_32;
    64: Result := ENUM_STRING_TYPEDETAIL_64;
    128: Result := ENUM_STRING_TYPEDETAIL_128;
    256: Result := ENUM_STRING_TYPEDETAIL_256;
    512: Result := ENUM_STRING_TYPEDETAIL_512;
    1024: Result := ENUM_STRING_TYPEDETAIL_1024;
    2048: Result := ENUM_STRING_TYPEDETAIL_2048;
    4096: Result := ENUM_STRING_TYPEDETAIL_4096;
  else
    Result := STR_EMPTY;
  end;
end;


// Obtener la propiedad como string
function TPhysicalMemoryProperties.GetFormFactorAsString():string;
begin
  case FFormFactor of
    0: Result := ENUM_STRING_FORMFACTOR_0;
    1: Result := ENUM_STRING_FORMFACTOR_1;
    2: Result := ENUM_STRING_FORMFACTOR_2;
    3: Result := ENUM_STRING_FORMFACTOR_3;
    4: Result := ENUM_STRING_FORMFACTOR_4;
    5: Result := ENUM_STRING_FORMFACTOR_5;
    6: Result := ENUM_STRING_FORMFACTOR_6;
    7: Result := ENUM_STRING_FORMFACTOR_7;
    8: Result := ENUM_STRING_FORMFACTOR_8;
    9: Result := ENUM_STRING_FORMFACTOR_9;
    10: Result := ENUM_STRING_FORMFACTOR_10;
    11: Result := ENUM_STRING_FORMFACTOR_11;
    12: Result := ENUM_STRING_FORMFACTOR_12;
    13: Result := ENUM_STRING_FORMFACTOR_13;
    14: Result := ENUM_STRING_FORMFACTOR_14;
    15: Result := ENUM_STRING_FORMFACTOR_15;
    16: Result := ENUM_STRING_FORMFACTOR_16;
    17: Result := ENUM_STRING_FORMFACTOR_17;
    18: Result := ENUM_STRING_FORMFACTOR_18;
    19: Result := ENUM_STRING_FORMFACTOR_19;
    20: Result := ENUM_STRING_FORMFACTOR_20;
    21: Result := ENUM_STRING_FORMFACTOR_21;
    22: Result := ENUM_STRING_FORMFACTOR_22;
    23: Result := ENUM_STRING_FORMFACTOR_23;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TPhysicalMemoryProperties.GetInterleavePositionAsString():string;
begin
  case FInterleavePosition of
    0: Result := ENUM_STRING_INTERLEAVEPOSITION_0;
    1: Result := ENUM_STRING_INTERLEAVEPOSITION_1;
    2: Result := ENUM_STRING_INTERLEAVEPOSITION_2;
  else
    Result := STR_EMPTY;
  end;
end;



// Obtener la propiedad como string
function TPhysicalMemoryProperties.GetMemoryTypeAsString():string;
begin
  case FMemoryType of
    0: Result := ENUM_STRING_MEMORYTYPE_0;
    1: Result := ENUM_STRING_MEMORYTYPE_1;
    2: Result := ENUM_STRING_MEMORYTYPE_2;
    3: Result := ENUM_STRING_MEMORYTYPE_3;
    4: Result := ENUM_STRING_MEMORYTYPE_4;
    5: Result := ENUM_STRING_MEMORYTYPE_5;
    6: Result := ENUM_STRING_MEMORYTYPE_6;
    7: Result := ENUM_STRING_MEMORYTYPE_7;
    8: Result := ENUM_STRING_MEMORYTYPE_8;
    9: Result := ENUM_STRING_MEMORYTYPE_9;
    10: Result := ENUM_STRING_MEMORYTYPE_10;
    11: Result := ENUM_STRING_MEMORYTYPE_11;
    12: Result := ENUM_STRING_MEMORYTYPE_12;
    13: Result := ENUM_STRING_MEMORYTYPE_13;
    14: Result := ENUM_STRING_MEMORYTYPE_14;
    15: Result := ENUM_STRING_MEMORYTYPE_15;
    16: Result := ENUM_STRING_MEMORYTYPE_16;
    17: Result := ENUM_STRING_MEMORYTYPE_17;
    18: Result := ENUM_STRING_MEMORYTYPE_18;
    19: Result := ENUM_STRING_MEMORYTYPE_19;
    20: Result := ENUM_STRING_MEMORYTYPE_20;
    21: Result := ENUM_STRING_MEMORYTYPE_21;
  else
    Result := STR_EMPTY;
  end;
end;
end.

