{
TProcessInfo  Component Version 1.1 - Suite GLib 
Copyright (©) 2009,  by Germán Estévez (Neftalí) 
 
  Representa los procesos ejecutandose en un sistema Windows.
 
Utilización/Usage: 
  Basta con "soltar" el componente y activarlo.
 
  Place the component in the form and active it.
 
  MSDN Info: 
  http://msdn.microsoft.com/en-us/library/aa394372(VS.85).aspx

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
unit CProcessInfo;
 
{
========================================================================= 
 
  TProcessInfo.pas
 
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

{$I .\..\package\jedi.inc}

uses
  {$IFDEF DELPHIX_TOKYO_UP} System.UITypes, {$ENDIF}
  Classes, Controls, CWMIBase;
 
type 
  //: Clase para definir las propiedades del componente.
  TProcessProperties = class(TPersistent)
  private
    FCaption:string;
    FCommandLine:string;
    FCreationClassName:string;
    FCreationDate:TDateTime;
    FCSCreationClassName:string;
    FCSName:string;
    FDescription:string;
    FExecutablePath:string;
    FExecutionState:Integer;
    FHandle:string;
    FHandleCount:Longword;
    FInstallDate:TDateTime;
    FKernelModeTime:Int64;
    FMaximumWorkingSetSize:Longword;
    FMinimumWorkingSetSize:Longword;
    FName:string;
    FOSCreationClassName:string;
    FOSName:string;
    FOtherOperationCount:Int64;
    FOtherTransferCount:Int64;
    FPageFaults:Longword;
    FPageFileUsage:Longword;
    FParentProcessId:Longword;
    FPeakPageFileUsage:Longword;
    FPeakVirtualSize:Int64;
    FPeakWorkingSetSize:Longword;
    FPriority:Longword;
    FPrivatePageCount:Int64;
    FProcessId:Longword;
    FQuotaNonPagedPoolUsage:Longword;
    FQuotaPagedPoolUsage:Longword;
    FQuotaPeakNonPagedPoolUsage:Longword;
    FQuotaPeakPagedPoolUsage:Longword;
    FReadOperationCount:Int64;
    FReadTransferCount:Int64;
    FSessionId:Longword;
    FStatus:string;
    FTerminationDate:TDateTime;
    FThreadCount:Longword;
    FUserModeTime:Int64;
    FVirtualSize:Int64;
    FWindowsVersion:string;
    FWorkingSetSize:Int64;
    FWriteOperationCount:Int64;
    FWriteTransferCount:Int64;
  private
  public
  published
    property Caption:string read FCaption write FCaption stored False;
    property CommandLine:string read FCommandLine write FCommandLine stored False;
    property CreationClassName:string read FCreationClassName write FCreationClassName stored False;
    property CreationDate:TDateTime read FCreationDate write FCreationDate stored False;
    property CSCreationClassName:string read FCSCreationClassName write FCSCreationClassName stored False;
    property CSName:string read FCSName write FCSName stored False;
    property Description:string read FDescription write FDescription stored False;
    property ExecutablePath:string read FExecutablePath write FExecutablePath stored False;
    property ExecutionState:Integer read FExecutionState write FExecutionState stored False;
    property Handle:string read FHandle write FHandle stored False;
    property HandleCount:Longword read FHandleCount write FHandleCount stored False;
    property InstallDate:TDateTime read FInstallDate write FInstallDate stored False;
    property KernelModeTime:Int64 read FKernelModeTime write FKernelModeTime stored False;
    property MaximumWorkingSetSize:Longword read FMaximumWorkingSetSize write FMaximumWorkingSetSize stored False;
    property MinimumWorkingSetSize:Longword read FMinimumWorkingSetSize write FMinimumWorkingSetSize stored False;
    property Name:string read FName write FName stored False;
    property OSCreationClassName:string read FOSCreationClassName write FOSCreationClassName stored False;
    property OSName:string read FOSName write FOSName stored False;
    property OtherOperationCount:Int64 read FOtherOperationCount write FOtherOperationCount stored False;
    property OtherTransferCount:Int64 read FOtherTransferCount write FOtherTransferCount stored False;
    property PageFaults:Longword read FPageFaults write FPageFaults stored False;
    property PageFileUsage:Longword read FPageFileUsage write FPageFileUsage stored False;
    property ParentProcessId:Longword read FParentProcessId write FParentProcessId stored False;
    property PeakPageFileUsage:Longword read FPeakPageFileUsage write FPeakPageFileUsage stored False;
    property PeakVirtualSize:Int64 read FPeakVirtualSize write FPeakVirtualSize stored False;
    property PeakWorkingSetSize:Longword read FPeakWorkingSetSize write FPeakWorkingSetSize stored False;
    property Priority:Longword read FPriority write FPriority stored False;
    property PrivatePageCount:Int64 read FPrivatePageCount write FPrivatePageCount stored False;
    property ProcessId:Longword read FProcessId write FProcessId stored False;
    property QuotaNonPagedPoolUsage:Longword read FQuotaNonPagedPoolUsage write FQuotaNonPagedPoolUsage stored False;
    property QuotaPagedPoolUsage:Longword read FQuotaPagedPoolUsage write FQuotaPagedPoolUsage stored False;
    property QuotaPeakNonPagedPoolUsage:Longword read FQuotaPeakNonPagedPoolUsage write FQuotaPeakNonPagedPoolUsage stored False;
    property QuotaPeakPagedPoolUsage:Longword read FQuotaPeakPagedPoolUsage write FQuotaPeakPagedPoolUsage stored False;
    property ReadOperationCount:Int64 read FReadOperationCount write FReadOperationCount stored False;
    property ReadTransferCount:Int64 read FReadTransferCount write FReadTransferCount stored False;
    property SessionId:Longword read FSessionId write FSessionId stored False;
    property Status:string read FStatus write FStatus stored False;
    property TerminationDate:TDateTime read FTerminationDate write FTerminationDate stored False;
    property ThreadCount:Longword read FThreadCount write FThreadCount stored False;
    property UserModeTime:Int64 read FUserModeTime write FUserModeTime stored False;
    property VirtualSize:Int64 read FVirtualSize write FVirtualSize stored False;
    property WindowsVersion:string read FWindowsVersion write FWindowsVersion stored False;
    property WorkingSetSize:Int64 read FWorkingSetSize write FWorkingSetSize stored False;
    property WriteOperationCount:Int64 read FWriteOperationCount write FWriteOperationCount stored False;
    property WriteTransferCount:Int64 read FWriteTransferCount write FWriteTransferCount stored False;
  end;
  
  //: Implementación para el acceso vía WMI a la clase Win32_Process
  TProcessInfo = class(TWMIBase)
  private
    FProcessProperties: TProcessProperties;
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

    //: Método para Terminar un proceso y todos sus threads.
    function Terminate(AInstanceProp:string;
                       AInstanceValue:Variant;
                       Reason:integer):integer;
    //: Método para asignar nueva prioridad a un proceso.
    function SetPriority(AInstanceProp:string;
                         AInstanceValue:Variant;
                         Priority:integer):integer;
    //: Método para obtener el dominio y usuario propietarios del proceso.
    function GetOwner(AInstanceProp:string;
                      AInstanceValue:Variant;
                      var User:string;
                      var Domain:string):integer; reintroduce;
    function GetOwnerSID(AInstanceProp:string;
                         AInstanceValue:Variant;
                         var SID:string):integer;
    //: Crear un nuevo proceso
    function CreateProcess(CommandLine:string;
                           CurrentDirectory:string;
                           ProcessStartupInformation:integer;
                           var ProcessId:Integer):integer;

  published
    // propiedades de la Process
    property ProcessProperties:TProcessProperties read FProcessProperties write FProcessProperties;
  end;
    
//========================================================================= 
// 
// I M P L E M E N T A T I O N 
// 
//========================================================================= 
implementation 
  
uses
  {Generales} Forms, Types, Windows, SysUtils,
  {GLib} UProcedures, UConstantes, Dialogs,

  {test} WbemScripting_TLB, ActiveX, Variants;

  
{ TProcess } 
{-------------------------------------------------------------------------------}
// Limpiar las propiedades
procedure TProcessInfo.ClearProps;
begin

  Self.ProcessProperties.FCaption := STR_EMPTY;
  Self.ProcessProperties.FCommandLine := STR_EMPTY;
  Self.ProcessProperties.FCreationClassName := STR_EMPTY;
  Self.ProcessProperties.FCreationDate := 0;
  Self.ProcessProperties.FCSCreationClassName := STR_EMPTY;
  Self.ProcessProperties.FCSName := STR_EMPTY;
  Self.ProcessProperties.FDescription := STR_EMPTY;
  Self.ProcessProperties.FExecutablePath := STR_EMPTY;
  Self.ProcessProperties.FExecutionState := 0;
  Self.ProcessProperties.FHandle := STR_EMPTY;
  Self.ProcessProperties.FHandleCount := 0;
  Self.ProcessProperties.FInstallDate := 0;
  Self.ProcessProperties.FKernelModeTime := 0;
  Self.ProcessProperties.FMaximumWorkingSetSize := 0;
  Self.ProcessProperties.FMinimumWorkingSetSize := 0;
  Self.ProcessProperties.FName := STR_EMPTY;
  Self.ProcessProperties.FOSCreationClassName := STR_EMPTY;
  Self.ProcessProperties.FOSName := STR_EMPTY;
  Self.ProcessProperties.FOtherOperationCount := 0;
  Self.ProcessProperties.FOtherTransferCount := 0;
  Self.ProcessProperties.FPageFaults := 0;
  Self.ProcessProperties.FPageFileUsage := 0;
  Self.ProcessProperties.FParentProcessId := 0;
  Self.ProcessProperties.FPeakPageFileUsage := 0;
  Self.ProcessProperties.FPeakVirtualSize := 0;
  Self.ProcessProperties.FPeakWorkingSetSize := 0;
  Self.ProcessProperties.FPriority := 0;
  Self.ProcessProperties.FPrivatePageCount := 0;
  Self.ProcessProperties.FProcessId := 0;
  Self.ProcessProperties.FQuotaNonPagedPoolUsage := 0;
  Self.ProcessProperties.FQuotaPagedPoolUsage := 0;
  Self.ProcessProperties.FQuotaPeakNonPagedPoolUsage := 0;
  Self.ProcessProperties.FQuotaPeakPagedPoolUsage := 0;
  Self.ProcessProperties.FReadOperationCount := 0;
  Self.ProcessProperties.FReadTransferCount := 0;
  Self.ProcessProperties.FSessionId := 0;
  Self.ProcessProperties.FStatus := STR_EMPTY;
  Self.ProcessProperties.FTerminationDate := 0;
  Self.ProcessProperties.FThreadCount := 0;
  Self.ProcessProperties.FUserModeTime := 0;
  Self.ProcessProperties.FVirtualSize := 0;
  Self.ProcessProperties.FWindowsVersion := STR_EMPTY;
  Self.ProcessProperties.FWorkingSetSize := 0;
  Self.ProcessProperties.FWriteOperationCount := 0;
  Self.ProcessProperties.FWriteTransferCount := 0;

end;
//: Constructor del componente 
constructor TProcessInfo.Create(AOwner: TComponent); 
begin 
  inherited; 
 
  Self.FProcessProperties := TProcessProperties.Create(); 
  Self.MSDNHelp := 'http://msdn.microsoft.com/en-us/library/aa394372(VS.85).aspx';
end; 
 
// destructor del componente 
destructor TProcessInfo.Destroy(); 
begin 

  // liberar 
  FreeAndNil(Self.FProcessProperties); 
 
  inherited; 
end; 
 
// Obtener la clase 
function TProcessInfo.GetWMIClass(): string; 
begin 
  Result := WIN32_PROCESS_CLASS;
end; 
 
// Obtener Root 
function TProcessInfo.GetWMIRoot(): string; 
begin 
  Result := STR_CIM2_ROOT;
end; 
 
// Active 
procedure TProcessInfo.SetActive(const Value: Boolean); 
begin 
  // método heredado 
  inherited; 
end; 
//: Rellenar las propiedades del componente.
procedure TProcessInfo.FillProperties(AIndex: integer);
var
  v:variant;
  vNull:boolean;
  vp:TProcessProperties;
begin

  // Llamar al heredado (importante)
  inherited;

  // Rellenar propiedades...
  vp := Self.ProcessProperties;

  GetWMIPropertyValue(Self, 'Caption', v, vNull);
  vp.FCaption := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'CommandLine', v, vNull);
  vp.FCommandLine := VariantStrValue(v, vNull);

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

  GetWMIPropertyValue(Self, 'ExecutablePath', v, vNull);
  vp.FExecutablePath := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'ExecutionState', v, vNull);
  vp.FExecutionState := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Handle', v, vNull);
  vp.FHandle := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'HandleCount', v, vNull);
  vp.FHandleCount := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'InstallDate', v, vNull);
  if not vNull then begin
    vp.FInstallDate := EncodeDate(StrToInt(Copy(v, 1, 4)),StrToInt(Copy(v, 5, 2)),StrToInt(Copy(v, 7, 2)));
  end;

  GetWMIPropertyValue(Self, 'KernelModeTime', v, vNull);
  vp.FKernelModeTime := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'MaximumWorkingSetSize', v, vNull);
  vp.FMaximumWorkingSetSize := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'MinimumWorkingSetSize', v, vNull);
  vp.FMinimumWorkingSetSize := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Name', v, vNull);
  vp.FName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'OSCreationClassName', v, vNull);
  vp.FOSCreationClassName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'OSName', v, vNull);
  vp.FOSName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'OtherOperationCount', v, vNull);
  vp.FOtherOperationCount := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'OtherTransferCount', v, vNull);
  vp.FOtherTransferCount := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'PageFaults', v, vNull);
  vp.FPageFaults := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'PageFileUsage', v, vNull);
  vp.FPageFileUsage := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'ParentProcessId', v, vNull);
  vp.FParentProcessId := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'PeakPageFileUsage', v, vNull);
  vp.FPeakPageFileUsage := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'PeakVirtualSize', v, vNull);
  vp.FPeakVirtualSize := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'PeakWorkingSetSize', v, vNull);
  vp.FPeakWorkingSetSize := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Priority', v, vNull);
  vp.FPriority := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'PrivatePageCount', v, vNull);
  vp.FPrivatePageCount := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'ProcessId', v, vNull);
  vp.FProcessId := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'QuotaNonPagedPoolUsage', v, vNull);
  vp.FQuotaNonPagedPoolUsage := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'QuotaPagedPoolUsage', v, vNull);
  vp.FQuotaPagedPoolUsage := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'QuotaPeakNonPagedPoolUsage', v, vNull);
  vp.FQuotaPeakNonPagedPoolUsage := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'QuotaPeakPagedPoolUsage', v, vNull);
  vp.FQuotaPeakPagedPoolUsage := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'ReadOperationCount', v, vNull);
  vp.FReadOperationCount := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'ReadTransferCount', v, vNull);
  vp.FReadTransferCount := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'SessionId', v, vNull);
  vp.FSessionId := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Status', v, vNull);
  vp.FStatus := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'TerminationDate', v, vNull);
  if not vNull then begin
    vp.FTerminationDate := EncodeDate(StrToInt(Copy(v, 1, 4)),StrToInt(Copy(v, 5, 2)),StrToInt(Copy(v, 7, 2)));
  end;

  GetWMIPropertyValue(Self, 'ThreadCount', v, vNull);
  vp.FThreadCount := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'UserModeTime', v, vNull);
  vp.FUserModeTime := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'VirtualSize', v, vNull);
  vp.FVirtualSize := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'WindowsVersion', v, vNull);
  vp.FWindowsVersion := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'WorkingSetSize', v, vNull);
  vp.FWorkingSetSize := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'WriteOperationCount', v, vNull);
  vp.FWriteOperationCount := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'WriteTransferCount', v, vNull);
  vp.FWriteTransferCount := VariantIntegerValue(v, vNull);

end;

//: Método para Terminar un proceso y todos sus threads.
function TProcessInfo.Terminate(AInstanceProp:string;
                                AInstanceValue:Variant;
                                Reason:Integer): integer;
var
  arr:TArrVariant;
  v:variant;
begin

  SetLength(arr, 2);
  arr[0] := Reason;   arr[1] := STR_EMPTY;

  // Ejecutar el proceso
  ExecuteClassMethod(Self,
                     AInstanceProp, AInstanceValue,
                     'Terminate',
                     ['Reason'],
                     arr,
                     [ptIn],
                     [wbemCimtypeUint32], v);
  Result := v;
end;


//: Método para asignar nueva prioridad a un proceso.
function TProcessInfo.SetPriority(AInstanceProp:string;
                                  AInstanceValue:Variant;
                                  Priority: integer): integer;
var
  arr:TArrVariant;
  v:variant;
begin

  SetLength(arr, 1);
  arr[0] := Priority;

  // Ejecutar el proceso
  ExecuteClassMethod(Self,
                     AInstanceProp, AInstanceValue,
                     'SetPriority',
                     ['Priority'],
                     arr,
                     [ptIn],
                     [wbemCimtypeSint32],
                     v);

  Result := v;
  MessageDlg('Resultado: ' + IntToStr(Result), mtInformation, [mbOK], 0);

end;

//: Crear un nuevo proceso
function TProcessInfo.CreateProcess(CommandLine,
                                    CurrentDirectory: string;
                                    ProcessStartupInformation: integer;
                                    var ProcessId: Integer): integer;
var
  v:variant;
  arr:TArrVariant;
begin

  SetLength(arr, 4);
  arr[0] := CommandLine;
  arr[1] := CurrentDirectory;
  arr[2] := null;

  // Ejecutar el proceso
  ExecuteClassMethod(Self,
                     STR_EMPTY, STR_EMPTY,
                     'Create',
                     ['CommandLine', 'CurrentDirectory',
                      'ProcessStartupInformation','ProcessId'],
                     arr,
                     [ptIn, ptIn, ptIn, ptOut],
                     [wbemCimtypeString, wbemCimtypeString,
                      wbemCimtypeObject, wbemCimtypeUint32],
                      v);

  ProcessId := arr[3];
  Result := v;

end;

//: Método para obtener el dominio y usuario propietarios del proceso.
function TProcessInfo.GetOwner(AInstanceProp:string;
                               AInstanceValue:Variant;
                               var User, Domain: string): integer;
var
  arr:TArrVariant;
  v:variant;
begin

  SetLength(arr, 2);

  // Ejecutar el proceso
  ExecuteClassMethod(Self,
                     AInstanceProp, AInstanceValue,
                     'GetOwner',
                     ['User', 'Domain'],
                     arr,
                     [ptOut, ptOut],
                     [wbemCimtypeString, wbemCimtypeString], v);
  if not VarIsNull(arr[0]) then begin
    User := arr[0];
  end;
  if not VarIsNull(arr[1]) then begin
    Domain := arr[1];
  end;
  Result := v;

end;


function TProcessInfo.GetOwnerSID(AInstanceProp:string;
                                  AInstanceValue:Variant;
                                  var SID:string):integer;
var
  arr:TArrVariant;
  v:variant;  
begin

  SetLength(arr, 1);

  // Ejecutar el proceso
  ExecuteClassMethod(Self,
                     AInstanceProp, AInstanceValue,
                     'GetOwnerSID',
                     ['SID'],
                     arr,
                     [ptOut],
                     [wbemCimtypeString], v);
  SID :=  arr[0];
  Result := v;

end;

end.

