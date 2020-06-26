unit CWMIBase;


//=========================================================================
//
// I N T E R F A C E
//
//=========================================================================
interface

{$I .\..\package\jedi.inc}

uses
  Windows, Messages, SysUtils, Classes, WbemScripting_TLB, FormAbout;

type
  //: Type for variant arrays
  TArrVariant = array of variant;
  TArrString = array of string;
  TArrInteger = array of Integer;

  // Type for parameters
  TParamType = (ptIn, ptOut);

  // Type for properties type
  TWMIGenericPropType = (gptString, gptStringArray, gptInteger, gptInteger64,
                         gptIntegerArray, gptReal, gptBoolean, gptDateTime,
                         gptChar, gptReference, gptObject);

  //: Base class for the component
  TWMIBase = class(TComponent)
  private
    aServices:ISWbemServices;
    FActive: Boolean;
    FAllProperties: TStrings;
    FObjectsCount: integer;
    FConnected: Boolean;
    FHost: string;
    FObjectIndex: integer;
    FAboutGLibWMI: TFAbout;
    FMSDNHelp: String;
    FComponentCaption: string;
    FOnAfterDeactivate: TNotifyEvent;
    FOnAfterActivate: TNotifyEvent;
    FOnBeforeDeactivate: TNotifyEvent;
    FOnBeforeActivate: TNotifyEvent;


    function GetAllProperties: TStrings;
    procedure SetObjectIndex(const Value: integer);
    function GetComponentCaption: string;

  protected

    // procedure for activate the component
    procedure SetActive(const Value: Boolean); virtual;
    //: Clase para el componente  // Class for the component
    function GetWMIClass():string; virtual; abstract;
    //: SQL Para acceder a la información de WMI
    function GetWMISQL():string; virtual;
    //: Obtener el root.  //  Obtain the root
    function GetWMIRoot():string; virtual; abstract;
    //: Conectar al proveedor.
    procedure ConnectWMI();
    //: Lipiar las propiedades
    procedure ClearProps(); virtual;
    //: Rellenar las propiedades.
    procedure FillProperties(AIndex:integer); virtual;
  public
    // redefinidos
    constructor Create(AOwner: TComponent); override;
    //: destructor
    destructor Destroy; override;
    //: Conectado correctamente
    property Connected:Boolean read FConnected;
    //:
    property WMIServices:ISWbemServices read aServices;
    //: Propiedad con la clase del componente
    property WMIClass:string read GetWMIClass;
  published
    //: Caption del componente
    property ComponentCaption:string read GetComponentCaption write FComponentCaption stored False;
    //: Información acerca del paquete de componentes
    property VersionGLib:TFAbout read FAboutGLibWMI stored false;
    //: Acceso a la página de documentación de MSDN
    property MSDNHelp:String read FMSDNHelp write FMSDNHelp stored false;
    //: Host al que nos queremos conectar
    property Host:string read FHost write FHost;
    //: Activar el componente.
    property Active:Boolean read FActive write SetActive;
    //: odas las propiedades como texto
    property AllProperties:TStrings read GetAllProperties write FAllProperties;
    //: Objetos encontrados para esa clase.
    property ObjectsCount:integer read FObjectsCount write FObjectsCount stored False;
    //: Objeto que estamos visualizando en las propiedades.
    property ObjectIndex:integer read FObjectIndex write SetObjectIndex stored False;

    // EVENTS
    //: Events After/Before Activate
    property OnBeforeActivate:TNotifyEvent read FOnBeforeActivate write FOnBeforeActivate;
    property OnAfterActivate:TNotifyEvent read FOnAfterActivate write FOnAfterActivate;
    //: Events After/Before Deactivate
    property OnBeforeDeactivate:TNotifyEvent read FOnBeforeDeactivate write FOnBeforeDeactivate;
    property OnAfterDeactivate:TNotifyEvent read FOnAfterDeactivate write FOnAfterDeactivate;

  end;

//=========================================================================
//
// I M P L E M E N T A T I O N
//
//=========================================================================
implementation

{ TWMIBase }

uses
  UProcedures, UConstantes,
  {$IFDEF DELPHIX_TOKYO_UP} VCL.Dialogs,
  {$ELSE} Dialogs, {$ENDIF}
  Variants;


destructor TWMIBase.Destroy();
begin

  // Asignado?
  if Assigned(Self.FAllProperties) then begin
    // Liberar la lista   // Freeying the list of properties
    FreeAndNil(Self.FAllProperties);
  end;

  // heredado
  inherited;
end;

constructor TWMIBase.Create(AOwner: TComponent);
begin
  inherited;

  // Ini
  Self.FObjectsCount := 0;
  Self.FObjectIndex := 0;
  Self.FConnected := False;
  Self.FActive := False;
  Self.FAllProperties := TStringList.Create();
  // ini Conexion
  Self.FHost := '.';

end;

procedure TWMIBase.SetActive(const Value: Boolean);
var
  TS:TStrings;
begin

  // Evento antes de activar
  if (Value) then begin
    // Asignado el evento
    if Assigned(FOnBeforeActivate) then begin
      Self.FOnBeforeActivate(Self);
    end;
  end
  else begin
    // Asignado el evento de Antes de desactivar
    if Assigned(FOnBeforeDeactivate) then begin
      Self.FOnBeforeDeactivate(Self);
    end;
  end;

  // Guardar el valor
  Self.FActive := Value;

  // Desactivado? limpiar
  if not (Value) then begin
    Self.FObjectsCount := 0;
    Self.FObjectIndex := 0;
    Self.FAllProperties.Text := STR_EMPTY;
    ClearProps;
    Exit;
  end;

  // ini
  Self.FAllProperties.Clear;  

  // Conectar
  Self.ConnectWMI;

  if not (Self.Connected) then begin
    raise Exception.Create('No se ha conectado.');
    Exit;
  end;

  // Activando?
  if (Value) then begin
    // Conectado?
    if (Self.Connected) then begin
      // Obtener las propiedades
      GetWMIProperties(0, aServices, GetWMISQL(), Self.FAllProperties);

  // Debug      FAllProperties.SaveToFile('r:\all.txt');

      // Obtener el número de objetos
      Self.ObjectsCount := Self.FAllProperties.Count;

      // Hay algun objeto?
      if (Self.ObjectsCount <= 0) then begin
        Exit;
      end
      else begin
        // Cargar el primero
        Self.FObjectIndex := 1;
        Self.FillProperties(Self.FObjectIndex);
//-- MessageDlg('Fill', mtInformation, [mbOK], 0);
      end;

//--MessageDlg('objetos: ' + IntToStr(Self.ObjectsCount), mtInformation, [mbOK], 0);

    end;
  end;

  // Evento despues de activar  // Event on After activate/deactivate
  if (Value) then begin
    // Asignado el evento
    if Assigned(FOnAfterActivate) then begin
      Self.FOnAfterActivate(Self);
    end;
  end
  else begin
    // Asignado el evento de Antes de desactivar
    if Assigned(FOnAfterDeactivate) then begin
      Self.FOnAfterDeactivate(Self);
    end;
  end;



  Exit;
  

  // Obtener todas las propiedades
  if (Self.ObjectsCount > 0) then begin
    TS := TStringList.Create();
    // proteccion
    try
      // Obtener las propiedades
      GetWMIProperties(0, aServices, GetWMISQL(), TS);
      Self.FAllProperties.Text := TS.Text;
    finally
      FreeAndNil(TS);
    end;
  end;

                            
//--MessageDlg(Format('%d  Objetos encontrados', [FObjectsCount]), mtInformation, [mbOK], 0);

end;

function TWMIBase.GetAllProperties(): TStrings;
begin

//  if not Assigned(Self.FAllProperties) then begin
//    MessageDlg('Self.FAllProperties  NULL', mtInformation, [mbOK], 0);
//    Exit;
//  end;

  // Result
  Result := Self.FAllProperties;

end;

//: SQL Para acceder a la información de WMI.
function TWMIBase.GetWMISQL():string;
begin
  Result := 'SELECT * FROM '+ GetWMIClass();
end;


//: Conectar al proveedor.
procedure TWMIBase.ConnectWMI();
var
  Locator:  ISWbemLocator;
begin

  try
    // Create the Location object
    Locator := CoSWbemLocator.Create();
    // Connect to the WMI service, with the root\cimv2 namespace
    aServices := Locator.ConnectServer(
        Self.FHost,      // Host
        GetWMIRoot(),    // root
        {user}STR_EMPTY, {password}STR_EMPTY,
        STR_EMPTY, STR_EMPTY, 0, nil);

    Self.FConnected := True;
//-MessageDlg('Conectado', mtInformation, [mbOK], 0);
  except
    Self.FConnected := False;
//-MessageDlg('No Conectado', mtInformation, [mbOK], 0);

    //+G  EXCEPCION PRPIA
    raise Exception.Create(GetLastErrorAsString());
  end;
end;

procedure TWMIBase.SetObjectIndex(const Value: integer);
begin
  // diseño?
  if (csLoading in ComponentState) then begin
    Exit;
  end;

  // Si no ha cambiado, nada
  if (Self.FObjectIndex = Value) then begin
    Exit;
  end;

  // Modificar el índice
  Self.FObjectIndex := Value;

  // no Conectado?
  if not (Self.Connected) then begin
    Self.FObjectIndex := 0;
    raise Exception.Create('Componente no conectado...  (crear tipo específico)');
    Exit;
  end;

  // Activando?
  if not (Self.FActive) then begin
    Self.FObjectIndex := 0;
    raise Exception.Create('Componente no activado...  (crear tipo específico)');
    Exit;
  end;

  // índice incorecto?
  if (Value < 1) or (Value > Self.FObjectsCount) then begin
    Self.FObjectIndex := 0;
    raise Exception.Create('Índice fuera de límites...  (crear tipo específico)');
    Exit;
  end;


  // Hay algun objeto?
  if (Self.ObjectsCount <= 0) then begin
    Self.FObjectIndex := 0;
    Exit;
  end;


  //.
  //.
  //.
  // si todo correcto rellenamos las propiedades

  // Rellenar las propiedades del objeto especificado
  Self.FillProperties(Self.FObjectIndex);

end;

//: Rellenar las propiedades.
procedure TWMIBase.FillProperties(AIndex: integer);
begin

  // limipar las actuales
  ClearProps();
  // El resto se rellenan en las hijas
  //...

end;

procedure TWMIBase.ClearProps;
begin

  // Limpiar la propiedad
  Self.FAllProperties.Clear;

end;

// Caption del componente
function TWMIBase.GetComponentCaption: string;
var
  v:Variant;
  vNull:boolean;  
begin

  try
    GetWMIPropertyValue(Self, 'Caption', v, vNull);
    Self.FComponentCaption := VariantStrValue(v, vNull);
  except
    Self.FComponentCaption := STR_EMPTY;
  end;
  Result := FComponentCaption;

end;

end.
