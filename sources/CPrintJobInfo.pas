{ 
TPrintJobInfo  Component Version 1.3b - Suite GLib 
Copyright (©) 2009,  by Germán Estévez (Neftalí) 
 
  Representa un job de impresión generado por una aplicación Windows.
 
Utilización/Usage: 
  Basta con "soltar" el componente y activarlo. 
 
  Place the component in the form and active it. 
 
  MSDN Info: 
  http://msdn.microsoft.com/en-us/library/aa394370(VS.85).aspx 
 
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
unit CPrintJobInfo; 
 
{ 
========================================================================= 
 
  TPrintJobInfo.pas 
 
  Componente 
 
======================================================================== 
  Historia de las Versiones 
------------------------------------------------------------------------ 
 
  28/01/2010    * Creación. 
 
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
  TPrintJobProperties = class(TPersistent)
  private
    FCaption:string;
    FColor:string;
    FDataType:string;
    FDescription:string;
    FDocument:string;
    FDriverName:string;
    FElapsedTime:TDateTime;
    FHostPrintQueue:string;
    FInstallDate:TDateTime;
    FJobId:Longword;
    FJobStatus:string;
    FName:string;
    FNotify:string;
    FOwner:string;
    FPagesPrinted:Longword;
    FPaperLength:Longword;
    FPaperSize:string;
    FPaperWidth:Longword;
    FParameters:string;
    FPrintProcessor:string;
    FPriority:Longword;
    FSize:Longword;
    FStartTime:TDateTime;
    FStatus:string;
    FStatusMask:Longword;
    FStatusMaskAsString:string;
    FTimeSubmitted:TDateTime;
    FTotalPages:Longword;
    FUntilTime:TDateTime;
  private
  public

    // Obtener la propiedad <StatusMask> como string
    function GetStatusMaskAsString():string;

// {GET_ENUM}

  published
    property Caption:string read FCaption write FCaption stored False;
    property Color:string read FColor write FColor stored False;
    property DataType:string read FDataType write FDataType stored False;
    property Description:string read FDescription write FDescription stored False;
    property Document:string read FDocument write FDocument stored False;
    property DriverName:string read FDriverName write FDriverName stored False;
    property ElapsedTime:TDateTime read FElapsedTime write FElapsedTime stored False;
    property HostPrintQueue:string read FHostPrintQueue write FHostPrintQueue stored False;
    property InstallDate:TDateTime read FInstallDate write FInstallDate stored False;
    property JobId:Longword read FJobId write FJobId stored False;
    property JobStatus:string read FJobStatus write FJobStatus stored False;
    property Name:string read FName write FName stored False;
    property Notify:string read FNotify write FNotify stored False;
    property Owner:string read FOwner write FOwner stored False;
    property PagesPrinted:Longword read FPagesPrinted write FPagesPrinted stored False;
    property PaperLength:Longword read FPaperLength write FPaperLength stored False;
    property PaperSize:string read FPaperSize write FPaperSize stored False;
    property PaperWidth:Longword read FPaperWidth write FPaperWidth stored False;
    property Parameters:string read FParameters write FParameters stored False;
    property PrintProcessor:string read FPrintProcessor write FPrintProcessor stored False;
    property Priority:Longword read FPriority write FPriority stored False;
    property Size:Longword read FSize write FSize stored False;
    property StartTime:TDateTime read FStartTime write FStartTime stored False;
    property Status:string read FStatus write FStatus stored False;
    property StatusMask:Longword read FStatusMask write FStatusMask stored False;
    property StatusMaskAsString:string read GetStatusMaskAsString  write FStatusMaskAsString stored False;
    property TimeSubmitted:TDateTime read FTimeSubmitted write FTimeSubmitted stored False;
    property TotalPages:Longword read FTotalPages write FTotalPages stored False;
    property UntilTime:TDateTime read FUntilTime write FUntilTime stored False;
  end;
  
  //: Implementación para el acceso vía WMI a la clase Win32_PrintJob
  TPrintJobInfo = class(TWMIBase)
  private
    FPrintJobProperties: TPrintJobProperties;
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
    // propiedades de la PrintJob
    property PrintJobProperties:TPrintJobProperties read FPrintJobProperties write FPrintJobProperties;
  end;

// Constantes para la propiedad StatusMask
const
  ENUM_STRING_STATUSMASK_1 = 'Paused';
  ENUM_STRING_STATUSMASK_2 = 'Error';
  ENUM_STRING_STATUSMASK_4 = 'Deleting';
  ENUM_STRING_STATUSMASK_8 = 'Spooling';
  ENUM_STRING_STATUSMASK_16 = 'Printing';
  ENUM_STRING_STATUSMASK_32 = 'Offline';
  ENUM_STRING_STATUSMASK_64 = 'Paperout';
  ENUM_STRING_STATUSMASK_128 = 'Printed';
  ENUM_STRING_STATUSMASK_256 = 'Deleted';
  ENUM_STRING_STATUSMASK_512 = 'Blocked_DevQ';
  ENUM_STRING_STATUSMASK_1024 = 'User_Intervention_Req';
  ENUM_STRING_STATUSMASK_2048 = 'Restart';


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
 
  
{ TPrintJob } 
{-------------------------------------------------------------------------------} 
// Limpiar las propiedades
procedure TPrintJobInfo.ClearProps;
begin

  Self.PrintJobProperties.FCaption := STR_EMPTY;
  Self.PrintJobProperties.FColor := STR_EMPTY;
  Self.PrintJobProperties.FDataType := STR_EMPTY;
  Self.PrintJobProperties.FDescription := STR_EMPTY;
  Self.PrintJobProperties.FDocument := STR_EMPTY;
  Self.PrintJobProperties.FDriverName := STR_EMPTY;
  Self.PrintJobProperties.FElapsedTime := 0;
  Self.PrintJobProperties.FHostPrintQueue := STR_EMPTY;
  Self.PrintJobProperties.FInstallDate := 0;
  Self.PrintJobProperties.FJobId := 0;
  Self.PrintJobProperties.FJobStatus := STR_EMPTY;
  Self.PrintJobProperties.FName := STR_EMPTY;
  Self.PrintJobProperties.FNotify := STR_EMPTY;
  Self.PrintJobProperties.FOwner := STR_EMPTY;
  Self.PrintJobProperties.FPagesPrinted := 0;
  Self.PrintJobProperties.FPaperLength := 0;
  Self.PrintJobProperties.FPaperSize := STR_EMPTY;
  Self.PrintJobProperties.FPaperWidth := 0;
  Self.PrintJobProperties.FParameters := STR_EMPTY;
  Self.PrintJobProperties.FPrintProcessor := STR_EMPTY;
  Self.PrintJobProperties.FPriority := 0;
  Self.PrintJobProperties.FSize := 0;
  Self.PrintJobProperties.FStartTime := 0;
  Self.PrintJobProperties.FStatus := STR_EMPTY;
  Self.PrintJobProperties.FStatusMask := 0;
  Self.PrintJobProperties.FTimeSubmitted := 0;
  Self.PrintJobProperties.FTotalPages := 0;
  Self.PrintJobProperties.FUntilTime := 0;

end;
//: Constructor del componente 
constructor TPrintJobInfo.Create(AOwner: TComponent); 
begin 
  inherited; 
 
  Self.FPrintJobProperties := TPrintJobProperties.Create(); 
  Self.MSDNHelp := 'http://msdn.microsoft.com/en-us/library/aa394370(VS.85).aspx';
end; 
 
// destructor del componente 
destructor TPrintJobInfo.Destroy(); 
begin 
 
  // liberar 
  FreeAndNil(Self.FPrintJobProperties); 
 
  inherited; 
end; 
 
// Obtener la clase 
function TPrintJobInfo.GetWMIClass(): string; 
begin 
  Result := WIN32_PRINTJOB_CLASS;
end; 
 
// Obtener Root 
function TPrintJobInfo.GetWMIRoot(): string; 
begin 
  Result := STR_CIM2_ROOT; 
end; 
 
// Active 
procedure TPrintJobInfo.SetActive(const Value: Boolean); 
begin 
  // método heredado 
  inherited; 
end; 
  

//: Rellenar las propiedades del componente.
procedure TPrintJobInfo.FillProperties(AIndex: integer);
var
  v:variant;
  vNull:boolean;
  vp:TPrintJobProperties;
begin

  // Llamar al heredado (importante)
  inherited;

  // Rellenar propiedades...
  vp := Self.PrintJobProperties;

  GetWMIPropertyValue(Self, 'Caption', v, vNull);
  vp.FCaption := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Color', v, vNull);
  vp.FColor := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'DataType', v, vNull);
  vp.FDataType := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Description', v, vNull);
  vp.FDescription := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Document', v, vNull);
  vp.FDocument := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'DriverName', v, vNull);
  vp.FDriverName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'ElapsedTime', v, vNull);
  if not vNull then begin
    vp.FElapsedTime := EncodeDate(StrToInt(Copy(v, 1, 4)),StrToInt(Copy(v, 5, 2)),StrToInt(Copy(v, 7, 2)));
  end;

  GetWMIPropertyValue(Self, 'HostPrintQueue', v, vNull);
  vp.FHostPrintQueue := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'InstallDate', v, vNull);
  if not vNull then begin
    vp.FInstallDate := EncodeDate(StrToInt(Copy(v, 1, 4)),StrToInt(Copy(v, 5, 2)),StrToInt(Copy(v, 7, 2)));
  end;

  GetWMIPropertyValue(Self, 'JobId', v, vNull);
  vp.FJobId := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'JobStatus', v, vNull);
  vp.FJobStatus := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Name', v, vNull);
  vp.FName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Notify', v, vNull);
  vp.FNotify := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Owner', v, vNull);
  vp.FOwner := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'PagesPrinted', v, vNull);
  vp.FPagesPrinted := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'PaperLength', v, vNull);
  vp.FPaperLength := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'PaperSize', v, vNull);
  vp.FPaperSize := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'PaperWidth', v, vNull);
  vp.FPaperWidth := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Parameters', v, vNull);
  vp.FParameters := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'PrintProcessor', v, vNull);
  vp.FPrintProcessor := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Priority', v, vNull);
  vp.FPriority := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Size', v, vNull);
  vp.FSize := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'StartTime', v, vNull);
  if not vNull then begin
    vp.FStartTime := EncodeDate(StrToInt(Copy(v, 1, 4)),StrToInt(Copy(v, 5, 2)),StrToInt(Copy(v, 7, 2)));
  end;

  GetWMIPropertyValue(Self, 'Status', v, vNull);
  vp.FStatus := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'StatusMask', v, vNull);
  vp.FStatusMask := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'TimeSubmitted', v, vNull);
  if not vNull then begin
    vp.FTimeSubmitted := EncodeDate(StrToInt(Copy(v, 1, 4)),StrToInt(Copy(v, 5, 2)),StrToInt(Copy(v, 7, 2)));
  end;

  GetWMIPropertyValue(Self, 'TotalPages', v, vNull);
  vp.FTotalPages := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'UntilTime', v, vNull);
  if not vNull then begin
    vp.FUntilTime := EncodeDate(StrToInt(Copy(v, 1, 4)),StrToInt(Copy(v, 5, 2)),StrToInt(Copy(v, 7, 2)));
  end;

end;


// Obtener la propiedad como string
function TPrintJobProperties.GetStatusMaskAsString():string;
begin
  case FStatusMask of
    1: Result := ENUM_STRING_STATUSMASK_1;
    2: Result := ENUM_STRING_STATUSMASK_2;
    4: Result := ENUM_STRING_STATUSMASK_4;
    8: Result := ENUM_STRING_STATUSMASK_8;
    16: Result := ENUM_STRING_STATUSMASK_16;
    32: Result := ENUM_STRING_STATUSMASK_32;
    64: Result := ENUM_STRING_STATUSMASK_64;
    128: Result := ENUM_STRING_STATUSMASK_128;
    256: Result := ENUM_STRING_STATUSMASK_256;
    512: Result := ENUM_STRING_STATUSMASK_512;
    1024: Result := ENUM_STRING_STATUSMASK_1024;
    2048: Result := ENUM_STRING_STATUSMASK_2048;
  else
    Result := STR_EMPTY;
  end;
end;

// {IMPL_ENUM}

end.
