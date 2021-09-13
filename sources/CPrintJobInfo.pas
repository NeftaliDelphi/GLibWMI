{
TPrintJobInfo Component Version 3.1 - Suite GLibWMI
Copyright (©) 2020,  by Germán Estévez (Neftalí)

CIM_Job es un elemento lógico que representa una unidad de trabajo para un sistema, tal como un trabajo 
de impresión. Un trabajo es distinto a un proceso, en el sentido en que un trabajo se puede programa
r.


Utilización/Usage:
(ES) Basta con "soltar" el componente y activarlo.
(EN) Place the component in the form and active it.

MSDN Info:
https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-printjob

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
unit CPrintJobInfo;

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
  TPrintJobProperties = class(TPersistent)
  private
    {%PrivateClassVars PropertiesClass%}
    FCaption:string;
    FColor:string;
    FDataType:string;
    FDescription:string;
    FDocument:string;
    FDriverName:string;
    FElapsedTime:TDatetime;
    FHostPrintQueue:string;
    FInstallDate:TDatetime;
    FJobId:integer;
    FJobStatus:string;
    FName:string;
    FNotify:string;
    FOwner:string;
    FPagesPrinted:integer;
    FPaperLength:integer;
    FPaperSize:string;
    FPaperWidth:integer;
    FParameters:string;
    FPrintProcessor:string;
    FPriority:integer;
    FSize:integer;
    FSizeHigh:integer;
    FStartTime:TDatetime;
    FStatus:string;
    FStatusMask:integer;
    FTimeSubmitted:TDatetime;
    FTotalPages:integer;
    FUntilTime:TDatetime;

  private
    {%PrivateGetMethods PropertiesClass%}

  public
    {%PublicGetMethods PropertiesClass%}

    {%PublicArrayMethods PropertiesClass%}

  published
    {%PublishedProperties PropertiesClass%}
    /// <summary>
    /// </summary>
    property Caption:string read FCaption write FCaption stored False;
    /// <summary>
    ///  The Color property indicates whether the document is to be printed in color or monochrome.  Some color 
    ///  printers have the capability to print using true black instead of a combination of Yellow, Cyan, and 
    ///  Magenta.  This usually creates darker and sharper text for documents.  This option is only useful for 
    ///  color printers that support true black printing.
    /// </summary>
    property Color:string read FColor write FColor stored False;
    /// <summary>
    ///  The DataType property indicates the format of the data for this print job. This instructs the printer 
    ///  driver to eithertranslate the data (generic text, PostScript, or PCL) before printing, or to print in 
    ///  a raw format (for graphics and pictures).
    ///  Example: TEXT
    /// </summary>
    property DataType:string read FDataType write FDataType stored False;
    /// <summary>
    ///  The DataType property indicates the format of the data for this print job. This instructs the printer 
    ///  driver to eithertranslate the data (generic text, PostScript, or PCL) before printing, or to print in 
    ///  a raw format (for graphics and pictures).
    ///  Example: TEXT
    /// </summary>
    property Description:string read FDescription write FDescription stored False;
    /// <summary>
    ///  The Document property specifies the name of the print job. The user sees this name when viewing documents 
    ///  waiting to be printed. 
    ///  Example: Microsoft Word - Review.doc
    /// </summary>
    property Document:string read FDocument write FDocument stored False;
    /// <summary>
    ///  The DriverName property indicates the name of the printer driver used for the print job.
    /// </summary>
    property DriverName:string read FDriverName write FDriverName stored False;
    /// <summary>
    ///  The DriverName property indicates the name of the printer driver used for the print job.
    /// </summary>
    property ElapsedTime:TDatetime read FElapsedTime write FElapsedTime stored False;
    /// <summary>
    ///  The HostPrintQueue property contains the name of the computer on which the print job was created.
    /// </summary>
    property HostPrintQueue:string read FHostPrintQueue write FHostPrintQueue stored False;
    /// <summary>
    ///  The HostPrintQueue property contains the name of the computer on which the print job was created.
    /// </summary>
    property InstallDate:TDatetime read FInstallDate write FInstallDate stored False;
    /// <summary>
    ///  The JobId property indicates the identifier number of the job. It is used by other methods as a handle 
    ///  to a single job spooling to the printer.
    /// </summary>
    property JobId:integer read FJobId write FJobId stored False;
    /// <summary>
    ///  The JobId property indicates the identifier number of the job. It is used by other methods as a handle 
    ///  to a single job spooling to the printer.
    /// </summary>
    property JobStatus:string read FJobStatus write FJobStatus stored False;
    /// <summary>
    ///  The Name property contains the name of the printer to which the print job is being spooled.
    /// </summary>
    property Name:string read FName write FName stored False;
    /// <summary>
    ///  User to be notified upon job completion or failure. This property is restricted to 16 characters under 
    ///  Windows 9x platforms.
    /// </summary>
    property Notify:string read FNotify write FNotify stored False;
    /// <summary>
    ///  User to be notified upon job completion or failure. This property is restricted to 16 characters under 
    ///  Windows 9x platforms.
    /// </summary>
    property Owner:string read FOwner write FOwner stored False;
    /// <summary>
    ///  The PagesPrinted property specifies the number of pages that have been printed. This value may be zero 
    ///  if the print job does not contain page delimiting information.
    /// </summary>
    property PagesPrinted:integer read FPagesPrinted write FPagesPrinted stored False;
    /// <summary>
    ///  The PagesPrinted property specifies the number of pages that have been printed. This value may be zero 
    ///  if the print job does not contain page delimiting information.
    /// </summary>
    property PaperLength:integer read FPaperLength write FPaperLength stored False;
    /// <summary>
    ///  The PagesPrinted property specifies the number of pages that have been printed. This value may be zero 
    ///  if the print job does not contain page delimiting information.
    /// </summary>
    property PaperSize:string read FPaperSize write FPaperSize stored False;
    /// <summary>
    ///  The PagesPrinted property specifies the number of pages that have been printed. This value may be zero 
    ///  if the print job does not contain page delimiting information.
    /// </summary>
    property PaperWidth:integer read FPaperWidth write FPaperWidth stored False;
    /// <summary>
    ///  The Parameters property indicates optional parameters to send to the print processor. See the PrintProcessor 
    ///  member for more information.
    /// </summary>
    property Parameters:string read FParameters write FParameters stored False;
    /// <summary>
    ///  The PrintProcessor property indicates the print processor service used to process the print job. A printer 
    ///  processor works in conjunction with the printer driver to provide additional translation of printer data 
    ///  for the printer, and can also be used to provide special options such as a title page for the job.
    /// </summary>
    property PrintProcessor:string read FPrintProcessor write FPrintProcessor stored False;
    /// <summary>
    ///  The PrintProcessor property indicates the print processor service used to process the print job. A printer 
    ///  processor works in conjunction with the printer driver to provide additional translation of printer data 
    ///  for the printer, and can also be used to provide special options such as a title page for the job.
    /// </summary>
    property Priority:integer read FPriority write FPriority stored False;
    /// <summary>
    ///  The PrintProcessor property indicates the print processor service used to process the print job. A printer 
    ///  processor works in conjunction with the printer driver to provide additional translation of printer data 
    ///  for the printer, and can also be used to provide special options such as a title page for the job.
    /// </summary>
    property Size:integer read FSize write FSize stored False;
    /// <summary>
    ///  The SizeHigh property indicates the size of the print job if the Size property exceeds 4,294,967,295 
    ///  bytes.
    /// </summary>
    property SizeHigh:integer read FSizeHigh write FSizeHigh stored False;
    /// <summary>
    ///  The SizeHigh property indicates the size of the print job if the Size property exceeds 4,294,967,295 
    ///  bytes.
    /// </summary>
    property StartTime:TDatetime read FStartTime write FStartTime stored False;
    /// <summary>
    ///  The SizeHigh property indicates the size of the print job if the Size property exceeds 4,294,967,295 
    ///  bytes.
    /// </summary>
    property Status:string read FStatus write FStatus stored False;
    /// <summary>
    ///  The StatusMask property specifies a bitmap of the possible statuses relating to this print job.
    /// </summary>
    property StatusMask:integer read FStatusMask write FStatusMask stored False;
    /// <summary>
    ///  The StatusMask property specifies a bitmap of the possible statuses relating to this print job.
    /// </summary>
    property TimeSubmitted:TDatetime read FTimeSubmitted write FTimeSubmitted stored False;
    /// <summary>
    ///  The TotalPages property specifies the number of pages required to complete the job. This value may be 
    ///  zero if the print job does not contain page-delimiting information.
    /// </summary>
    property TotalPages:integer read FTotalPages write FTotalPages stored False;
    /// <summary>
    ///  The TotalPages property specifies the number of pages required to complete the job. This value may be 
    ///  zero if the print job does not contain page-delimiting information.
    /// </summary>
    property UntilTime:TDatetime read FUntilTime write FUntilTime stored False;
  end;

  {%InterfaceClass WMIClass%}
  /// <summary>
  ///  CIM_Job es un elemento lógico que representa una unidad de trabajo para un sistema, tal como un trabajo 
  ///  de impresión. Un trabajo es distinto a un proceso, en el sentido en que un trabajo se puede programa
  ///  r.
  /// </summary>
  TPrintJobInfo = class(TWMIBase)
  private
    FPrintJobProperties: TPrintJobProperties;
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

    {%InterfaceClassErrorcontrol WMIClass%}
    // Obtener <ErrorControl=Resultado> como string (0=Correcto)
    function GetErrorControlAsString(FErrorControl:integer):string; 

    {%InterfacePublicMethods WMIClass%}
    /// <summary>
    ///  The Pause method pauses a job in a print queue. If the job was currently printing, no other job will 
    ///  be printed. If the job wasn't printing yet, another unpaused print job may begin printing. The method 
    ///  can return the following values:
    ///  0 - Success.
    ///  5 - Access denied.
    ///  Other - For integer values other than 
    ///  those listed above, refer to the documentation on the Win32 error codes.
    /// </summary>
    function Pause(AInstanceProp:string; AInstanceValue:Variant):integer;
    /// <summary>
    ///  The Resume method continues a paused print job. The method can return the following values:
    ///  0 - Success.
    ///  5 
    ///  - Access denied.
    ///  Other - For integer values other than those listed above, refer to the documentation 
    ///  on the Win32 error codes.
    /// </summary>
    function Resume(AInstanceProp:string; AInstanceValue:Variant):integer;
  published
    {%InterfacePublishedPart WMIClass%}
    // propiedades de la PrintJob
    property PrintJobProperties:TPrintJobProperties read   FPrintJobProperties write FPrintJobProperties;
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
procedure TPrintJobInfo.ClearProps;
begin
  Self.PrintJobProperties.FCaption := EmptyStr;
  Self.PrintJobProperties.FColor := EmptyStr;
  Self.PrintJobProperties.FDataType := EmptyStr;
  Self.PrintJobProperties.FDescription := EmptyStr;
  Self.PrintJobProperties.FDocument := EmptyStr;
  Self.PrintJobProperties.FDriverName := EmptyStr;
  Self.PrintJobProperties.FElapsedTime := 0;
  Self.PrintJobProperties.FHostPrintQueue := EmptyStr;
  Self.PrintJobProperties.FInstallDate := 0;
  Self.PrintJobProperties.FJobId := 0;
  Self.PrintJobProperties.FJobStatus := EmptyStr;
  Self.PrintJobProperties.FName := EmptyStr;
  Self.PrintJobProperties.FNotify := EmptyStr;
  Self.PrintJobProperties.FOwner := EmptyStr;
  Self.PrintJobProperties.FPagesPrinted := 0;
  Self.PrintJobProperties.FPaperLength := 0;
  Self.PrintJobProperties.FPaperSize := EmptyStr;
  Self.PrintJobProperties.FPaperWidth := 0;
  Self.PrintJobProperties.FParameters := EmptyStr;
  Self.PrintJobProperties.FPrintProcessor := EmptyStr;
  Self.PrintJobProperties.FPriority := 0;
  Self.PrintJobProperties.FSize := 0;
  Self.PrintJobProperties.FSizeHigh := 0;
  Self.PrintJobProperties.FStartTime := 0;
  Self.PrintJobProperties.FStatus := EmptyStr;
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
  Self.MSDNHelp := 'https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-printjob';
end;

//: destructor del componente
destructor TPrintJobInfo.Destroy();
begin
  // liberar
  FreeAndNil(Self.FPrintJobProperties);
  inherited;
end;

//: Obtener la clase
function TPrintJobInfo.GetWMIClass(): string;
begin
  Result := 'Win32_PrintJob'
end;

//: Obtener Root
function TPrintJobInfo.GetWMIRoot(): string;
begin
  Result := '';
end;

//: Procedmiento de activación
procedure TPrintJobInfo.SetActive(const Value: Boolean);
begin
  // método heredado
  inherited;
end;


//: Rellenar las propiedades del componente.
procedure TPrintJobInfo.FillProperties(AIndex: integer);
var
  v:     variant;
  vNull: boolean;
  vp:    TPrintJobProperties;
begin
  // Llamar al heredado (importante)
  inherited;
  // Rellenar propiedades...
  vp := PrintJobProperties;

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
  vp.FElapsedTime := VariantDateTimeValue(v, vNull);

  GetWMIPropertyValue(Self, 'HostPrintQueue', v, vNull);
  vp.FHostPrintQueue := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'InstallDate', v, vNull);
  vp.FInstallDate := VariantDateTimeValue(v, vNull);

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

  GetWMIPropertyValue(Self, 'SizeHigh', v, vNull);
  vp.FSizeHigh := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'StartTime', v, vNull);
  vp.FStartTime := VariantDateTimeValue(v, vNull);

  GetWMIPropertyValue(Self, 'Status', v, vNull);
  vp.FStatus := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'StatusMask', v, vNull);
  vp.FStatusMask := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'TimeSubmitted', v, vNull);
  vp.FTimeSubmitted := VariantDateTimeValue(v, vNull);

  GetWMIPropertyValue(Self, 'TotalPages', v, vNull);
  vp.FTotalPages := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'UntilTime', v, vNull);
  vp.FUntilTime := VariantDateTimeValue(v, vNull);
end;



// Obtiene el resultado de ejecutar un método como string 
function TPrintJobInfo.GetErrorControlAsString(FErrorControl:integer): string; 
begin
   case FErrorControl of
     0: Result := 'Success';
     1: Result := 'Access denied';
     2: Result := 'Other';
    else
      Result := EmptyStr
    end;
end;

function TPrintJobInfo.Pause(AInstanceProp:string; AInstanceValue:Variant):integer;
var
  arr:TArrVariant;
  v:variant;
begin
  SetLength(arr, 0);
  // Ejecutar el proceso
  ExecuteClassMethod(Self, AInstanceProp, AInstanceValue,
    'Pause',
    [],
    arr,
    [],
    [],
    v);
  Result := v;
end;

function TPrintJobInfo.Resume(AInstanceProp:string; AInstanceValue:Variant):integer;
var
  arr:TArrVariant;
  v:variant;
begin
  SetLength(arr, 0);
  // Ejecutar el proceso
  ExecuteClassMethod(Self, AInstanceProp, AInstanceValue,
    'Resume',
    [],
    arr,
    [],
    [],
    v);
  Result := v;
end;

end.
