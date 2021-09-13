{
TTimeZoneInfo Component Version 3.1 - Suite GLibWMI
Copyright (©) 2020,  by Germán Estévez (Neftalí)

La clase Win32_TimeZone representa la información de zona horaria para un sistema Win32. Esta información 
incluye los cambios necesarios para la transición a y desde el horario de verano.


Utilización/Usage:
(ES) Basta con "soltar" el componente y activarlo.
(EN) Place the component in the form and active it.

MSDN Info:
https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-timezone

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
unit CTimeZoneInfo;

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
  TTimeZoneProperties = class(TPersistent)
  private
    {%PrivateClassVars PropertiesClass%}
    FBias:integer;
    FCaption:string;
    FDaylightBias:integer;
    FDaylightDay:integer;
    FDaylightDayOfWeek:integer;
    FDaylightHour:integer;
    FDaylightMillisecond:integer;
    FDaylightMinute:integer;
    FDaylightMonth:integer;
    FDaylightName:string;
    FDaylightSecond:integer;
    FDaylightYear:integer;
    FDescription:string;
    FSettingID:string;
    FStandardBias:integer;
    FStandardDay:integer;
    FStandardDayOfWeek:integer;
    FStandardHour:integer;
    FStandardMillisecond:integer;
    FStandardMinute:integer;
    FStandardMonth:integer;
    FStandardName:string;
    FStandardSecond:integer;
    FStandardYear:integer;

  private
    {%PrivateGetMethods PropertiesClass%}

  public
    {%PublicGetMethods PropertiesClass%}
    // Obtener la propiedad <DaylightDayOfWeek> como string
    function GetAllDaylightDayOfWeekAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <DaylightDayOfWeek>
    function GetAllDaylightDayOfWeekCount:integer;
    // Obtener la propiedad <DaylightMonth> como string
    function GetAllDaylightMonthAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <DaylightMonth>
    function GetAllDaylightMonthCount:integer;
    // Obtener la propiedad <StandardDayOfWeek> como string
    function GetAllStandardDayOfWeekAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <StandardDayOfWeek>
    function GetAllStandardDayOfWeekCount:integer;
    // Obtener la propiedad <StandardMonth> como string
    function GetAllStandardMonthAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <StandardMonth>
    function GetAllStandardMonthCount:integer;

    {%PublicArrayMethods PropertiesClass%}

  published
    {%PublishedProperties PropertiesClass%}
    /// <summary>
    ///  La propiedad Bias especifica la diferencia actual para la conversión de hora local. Se trata de la diferencia 
    ///  entre la hora universal coordinada (UTC) y la hora local. Todas las conversiones entre la UTC y la hora 
    ///  local se basan en la siguiente fórmula: UTC = hora local + diferencia. Este miembro es necesario.
    /// </summary>
    property Bias:integer read FBias write FBias stored False;
    /// <summary>
    ///  La propiedad Bias especifica la diferencia actual para la conversión de hora local. Se trata de la diferencia 
    ///  entre la hora universal coordinada (UTC) y la hora local. Todas las conversiones entre la UTC y la hora 
    ///  local se basan en la siguiente fórmula: UTC = hora local + diferencia. Este miembro es necesario.
    /// </summary>
    property Caption:string read FCaption write FCaption stored False;
    /// <summary>
    ///  La propiedad DaylightBias especifica el valor de diferencia que se va a utilizar durante las conversiones 
    ///  de hora local que se producen durante el horario de verano. Este miembro se omite si no se proporciona 
    ///  un valor para el miembro DaylightDay. El valor de este miembro se agrega al miembro Bias para establecer 
    ///  la diferencia durante el horario de verano. En la mayoría de las zonas horarias, el valor de este miembro 
    ///  es -60.
    /// </summary>
    property DaylightBias:integer read FDaylightBias write FDaylightBias stored False;
    /// <summary>
    ///  La propiedad DaylightDay especifica el valor DaylightDayOfWeek de DaylightMonth cuando tiene lugar la 
    ///  transición del horario estándar al horario de verano en este sistema operativo. 
    ///  Ejemplo: 15 
    ///  Si DaylightDayOfWeek 
    ///  del día de transición es un domingo, el valor 1 indica el primer domingo de DaylightMonth, el valor 2 
    ///  indica el segundo domingo, y así sucesivamente, y el valor 5 indica el último domingo de DaylightMonth. 
    /// </summary>
    property DaylightDay:integer read FDaylightDay write FDaylightDay stored False;
    /// <summary>
    ///  La propiedad DaylightDayOfWeek especifica el día de la semana en que tiene lugar la transición desde 
    ///  el horario estándar al horario de verano en este sistema operativo.
    ///  Ejemplo: 1
    /// </summary>
    property DaylightDayOfWeek:integer read FDaylightDayOfWeek write FDaylightDayOfWeek stored False;
    /// <summary>
    ///  La propiedad DaylightHour especifica la hora del día en que tiene lugar la transición desde el horario 
    ///  estándar al horario de verano en este sistema operativo.
    ///  Ejemplo: 2
    /// </summary>
    property DaylightHour:integer read FDaylightHour write FDaylightHour stored False;
    /// <summary>
    ///  La propiedad DaylightMillisecond especifica el milisegundo de la propiedad DaylightSecond en que tiene 
    ///  lugar la transición desde el horario estándar al horario de verano en este sistema operativo.
    /// </summary>
    property DaylightMillisecond:integer read FDaylightMillisecond write FDaylightMillisecond stored False;
    /// <summary>
    ///  La propiedad DaylightMinute especifica el minuto de la propiedad DaylightHour en que tiene lugar la transición 
    ///  desde el horario estándar al horario de verano en este sistema operativo.
    ///  Ejemplo: 59
    /// </summary>
    property DaylightMinute:integer read FDaylightMinute write FDaylightMinute stored False;
    /// <summary>
    ///  La propiedad DaylightMonth especifica el mes en que tiene lugar la transición desde el horario estándar 
    ///  al horario de verano en este sistema operativo.
    ///  Ejemplo: 1 = enero
    /// </summary>
    property DaylightMonth:integer read FDaylightMonth write FDaylightMonth stored False;
    /// <summary>
    ///  La propiedad DaylightName indica el nombre de la zona horaria representada cuando el horario de verano 
    ///  está activado.
    ///  Ejemplo: EDT = Eastern Daylight timel. 
    /// </summary>
    property DaylightName:string read FDaylightName write FDaylightName stored False;
    /// <summary>
    ///  La propiedad DaylightSecond especifica el segundo de la propiedad DaylightMinute en que tiene lugar la 
    ///  transición desde el horario estándar al horario de verano en este sistema operativo.
    ///  Ejemplo: 59
    /// </summary>
    property DaylightSecond:integer read FDaylightSecond write FDaylightSecond stored False;
    /// <summary>
    ///  La propiedad DaylightYear indica el año en que está vigente el horario de verano. Este miembro no es 
    ///  necesario.
    ///  Ejemplo: 1997
    /// </summary>
    property DaylightYear:integer read FDaylightYear write FDaylightYear stored False;
    /// <summary>
    ///  La propiedad DaylightYear indica el año en que está vigente el horario de verano. Este miembro no es 
    ///  necesario.
    ///  Ejemplo: 1997
    /// </summary>
    property Description:string read FDescription write FDescription stored False;
    /// <summary>
    ///  La propiedad DaylightYear indica el año en que está vigente el horario de verano. Este miembro no es 
    ///  necesario.
    ///  Ejemplo: 1997
    /// </summary>
    property SettingID:string read FSettingID write FSettingID stored False;
    /// <summary>
    ///  La propiedad StandardBias especifica el valor de diferencia que se va a utilizar cuando no esté vigente 
    ///  el horario de verano. Este miembro se omite si no se proporciona un valor para el miembro StandardDay. 
    ///  El valor de este miembro se agrega al miembro Bias para establecer la diferencia durante el horario estándar.
    ///  Ejemplo: 
    ///  0
    /// </summary>
    property StandardBias:integer read FStandardBias write FStandardBias stored False;
    /// <summary>
    ///  La propiedad StandardDay especifica el valor StandardDayOfWeek de StandardMonth cuando tiene lugar la 
    ///  transición del horario de verano al horario estándar en este sistema operativo
    ///  Ejemplo: 31 
    ///  Si StandardDayOfWeek 
    ///  del día de transición es un domingo, el valor 1 indica el primer domingo de StandardMonth, el valor 2 
    ///  indica el segundo domingo, y así sucesivamente, y el valor 5 indica el último domingo de StandardMon
    ///  th.
    /// </summary>
    property StandardDay:integer read FStandardDay write FStandardDay stored False;
    /// <summary>
    ///  La propiedad StandardDayOfWeek especifica el día de la semana en que tiene lugar la transición desde 
    ///  el horario de verano al horario estándar en este sistema operativo.
    ///  Ejemplo: 1
    /// </summary>
    property StandardDayOfWeek:integer read FStandardDayOfWeek write FStandardDayOfWeek stored False;
    /// <summary>
    ///  La propiedad StandardHour especifica la hora del día en que tiene lugar la transición desde el horario 
    ///  de verano al horario estándar en este sistema operativo.
    ///  Ejemplo: 11
    /// </summary>
    property StandardHour:integer read FStandardHour write FStandardHour stored False;
    /// <summary>
    ///  La propiedad StandardMillisecond especifica el milisegundo de la propiedad StandardSecond en que tiene 
    ///  lugar la transición desde el horario de verano al horario estándar en este sistema operativo.
    /// </summary>
    property StandardMillisecond:integer read FStandardMillisecond write FStandardMillisecond stored False;
    /// <summary>
    ///  La propiedad StandardMinute especifica el minuto de la propiedad StandardDay en que tiene lugar la transición 
    ///  desde el horario de verano al horario estándar en este sistema operativo.
    ///  Ejemplo: 59
    /// </summary>
    property StandardMinute:integer read FStandardMinute write FStandardMinute stored False;
    /// <summary>
    ///  La propiedad StandardMonth especifica el mes en que tiene lugar la transición desde el horario de verano 
    ///  al horario estándar en este sistema operativo.
    ///  Ejemplo: 12
    /// </summary>
    property StandardMonth:integer read FStandardMonth write FStandardMonth stored False;
    /// <summary>
    ///  La propiedad StandardName indica el nombre de la zona horaria representada cuando el horario estándar 
    ///  está activado.
    ///  Ejemplo: EST = Eastern Standard Time. 
    /// </summary>
    property StandardName:string read FStandardName write FStandardName stored False;
    /// <summary>
    ///  La propiedad StandardSecond especifica el segundo de la propiedad StandardMinute en que tiene lugar la 
    ///  transición desde el horario de verano al horario estándar en este sistema operativo.
    ///  Ejemplo: 59
    /// </summary>
    property StandardSecond:integer read FStandardSecond write FStandardSecond stored False;
    /// <summary>
    ///  La propiedad StandardYear indica el año en que está vigente el horario estándar. Este miembro no es necesario.
    ///  Ejemplo: 
    ///  1997
    /// </summary>
    property StandardYear:integer read FStandardYear write FStandardYear stored False;
  end;

  {%InterfaceClass WMIClass%}
  /// <summary>
  ///  La clase Win32_TimeZone representa la información de zona horaria para un sistema Win32. Esta información 
  ///  incluye los cambios necesarios para la transición a y desde el horario de verano.
  /// </summary>
  TTimeZoneInfo = class(TWMIBase)
  private
    FTimeZoneProperties: TTimeZoneProperties;
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
    // propiedades de la TimeZone
    property TimeZoneProperties:TTimeZoneProperties read   FTimeZoneProperties write FTimeZoneProperties;
  end;


// Constantes para la propiedad DaylightDayOfWeek
const 
  ENUM_STRING_DAYLIGHTDAYOFWEEK_00 = 'Domingo';
  ENUM_STRING_DAYLIGHTDAYOFWEEK_01 = 'Lunes';
  ENUM_STRING_DAYLIGHTDAYOFWEEK_02 = 'Martes';
  ENUM_STRING_DAYLIGHTDAYOFWEEK_03 = 'Miércoles';
  ENUM_STRING_DAYLIGHTDAYOFWEEK_04 = 'Jueves';
  ENUM_STRING_DAYLIGHTDAYOFWEEK_05 = 'Viernes';
  ENUM_STRING_DAYLIGHTDAYOFWEEK_06 = 'Sábado';

// Constantes para la propiedad DaylightMonth
const 
  ENUM_STRING_DAYLIGHTMONTH_00 = 'Enero';
  ENUM_STRING_DAYLIGHTMONTH_01 = 'Febrero';
  ENUM_STRING_DAYLIGHTMONTH_02 = 'Marzo';
  ENUM_STRING_DAYLIGHTMONTH_03 = 'Abril';
  ENUM_STRING_DAYLIGHTMONTH_04 = 'Mayo';
  ENUM_STRING_DAYLIGHTMONTH_05 = 'Junio';
  ENUM_STRING_DAYLIGHTMONTH_06 = 'Julio';
  ENUM_STRING_DAYLIGHTMONTH_07 = 'Agosto';
  ENUM_STRING_DAYLIGHTMONTH_08 = 'Septiembre';
  ENUM_STRING_DAYLIGHTMONTH_09 = 'Octubre';
  ENUM_STRING_DAYLIGHTMONTH_10 = 'Noviembre';
  ENUM_STRING_DAYLIGHTMONTH_11 = 'Diciembre';

// Constantes para la propiedad StandardDayOfWeek
const 
  ENUM_STRING_STANDARDDAYOFWEEK_00 = 'Domingo';
  ENUM_STRING_STANDARDDAYOFWEEK_01 = 'Lunes';
  ENUM_STRING_STANDARDDAYOFWEEK_02 = 'Martes';
  ENUM_STRING_STANDARDDAYOFWEEK_03 = 'Miércoles';
  ENUM_STRING_STANDARDDAYOFWEEK_04 = 'Jueves';
  ENUM_STRING_STANDARDDAYOFWEEK_05 = 'Viernes';
  ENUM_STRING_STANDARDDAYOFWEEK_06 = 'Sábado';

// Constantes para la propiedad StandardMonth
const 
  ENUM_STRING_STANDARDMONTH_00 = 'Enero';
  ENUM_STRING_STANDARDMONTH_01 = 'Febrero';
  ENUM_STRING_STANDARDMONTH_02 = 'Marzo';
  ENUM_STRING_STANDARDMONTH_03 = 'Abril';
  ENUM_STRING_STANDARDMONTH_04 = 'Mayo';
  ENUM_STRING_STANDARDMONTH_05 = 'Junio';
  ENUM_STRING_STANDARDMONTH_06 = 'Julio';
  ENUM_STRING_STANDARDMONTH_07 = 'Agosto';
  ENUM_STRING_STANDARDMONTH_08 = 'Septiembre';
  ENUM_STRING_STANDARDMONTH_09 = 'Octubre';
  ENUM_STRING_STANDARDMONTH_10 = 'Noviembre';
  ENUM_STRING_STANDARDMONTH_11 = 'Diciembre';

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
procedure TTimeZoneInfo.ClearProps;
begin
  Self.TimeZoneProperties.FBias := 0;
  Self.TimeZoneProperties.FCaption := EmptyStr;
  Self.TimeZoneProperties.FDaylightBias := 0;
  Self.TimeZoneProperties.FDaylightDay := 0;
  Self.TimeZoneProperties.FDaylightDayOfWeek := 0;
  Self.TimeZoneProperties.FDaylightHour := 0;
  Self.TimeZoneProperties.FDaylightMillisecond := 0;
  Self.TimeZoneProperties.FDaylightMinute := 0;
  Self.TimeZoneProperties.FDaylightMonth := 0;
  Self.TimeZoneProperties.FDaylightName := EmptyStr;
  Self.TimeZoneProperties.FDaylightSecond := 0;
  Self.TimeZoneProperties.FDaylightYear := 0;
  Self.TimeZoneProperties.FDescription := EmptyStr;
  Self.TimeZoneProperties.FSettingID := EmptyStr;
  Self.TimeZoneProperties.FStandardBias := 0;
  Self.TimeZoneProperties.FStandardDay := 0;
  Self.TimeZoneProperties.FStandardDayOfWeek := 0;
  Self.TimeZoneProperties.FStandardHour := 0;
  Self.TimeZoneProperties.FStandardMillisecond := 0;
  Self.TimeZoneProperties.FStandardMinute := 0;
  Self.TimeZoneProperties.FStandardMonth := 0;
  Self.TimeZoneProperties.FStandardName := EmptyStr;
  Self.TimeZoneProperties.FStandardSecond := 0;
  Self.TimeZoneProperties.FStandardYear := 0;
end;

//: Constructor del componente
constructor TTimeZoneInfo.Create(AOwner: TComponent);
begin
  inherited;
  Self.FTimeZoneProperties := TTimeZoneProperties.Create();
  Self.MSDNHelp := 'https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-timezone';
end;

//: destructor del componente
destructor TTimeZoneInfo.Destroy();
begin
  // liberar
  FreeAndNil(Self.FTimeZoneProperties);
  inherited;
end;

//: Obtener la clase
function TTimeZoneInfo.GetWMIClass(): string;
begin
  Result := 'Win32_TimeZone'
end;

//: Obtener Root
function TTimeZoneInfo.GetWMIRoot(): string;
begin
  Result := '';
end;

//: Procedmiento de activación
procedure TTimeZoneInfo.SetActive(const Value: Boolean);
begin
  // método heredado
  inherited;
end;


//: Rellenar las propiedades del componente.
procedure TTimeZoneInfo.FillProperties(AIndex: integer);
var
  v:     variant;
  vNull: boolean;
  vp:    TTimeZoneProperties;
begin
  // Llamar al heredado (importante)
  inherited;
  // Rellenar propiedades...
  vp := TimeZoneProperties;

  GetWMIPropertyValue(Self, 'Bias', v, vNull);
  vp.FBias := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Caption', v, vNull);
  vp.FCaption := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'DaylightBias', v, vNull);
  vp.FDaylightBias := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'DaylightDay', v, vNull);
  vp.FDaylightDay := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'DaylightDayOfWeek', v, vNull);
  vp.FDaylightDayOfWeek := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'DaylightHour', v, vNull);
  vp.FDaylightHour := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'DaylightMillisecond', v, vNull);
  vp.FDaylightMillisecond := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'DaylightMinute', v, vNull);
  vp.FDaylightMinute := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'DaylightMonth', v, vNull);
  vp.FDaylightMonth := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'DaylightName', v, vNull);
  vp.FDaylightName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'DaylightSecond', v, vNull);
  vp.FDaylightSecond := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'DaylightYear', v, vNull);
  vp.FDaylightYear := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Description', v, vNull);
  vp.FDescription := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'SettingID', v, vNull);
  vp.FSettingID := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'StandardBias', v, vNull);
  vp.FStandardBias := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'StandardDay', v, vNull);
  vp.FStandardDay := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'StandardDayOfWeek', v, vNull);
  vp.FStandardDayOfWeek := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'StandardHour', v, vNull);
  vp.FStandardHour := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'StandardMillisecond', v, vNull);
  vp.FStandardMillisecond := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'StandardMinute', v, vNull);
  vp.FStandardMinute := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'StandardMonth', v, vNull);
  vp.FStandardMonth := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'StandardName', v, vNull);
  vp.FStandardName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'StandardSecond', v, vNull);
  vp.FStandardSecond := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'StandardYear', v, vNull);
  vp.FStandardYear := VariantIntegerValue(v, vNull);
end;


// Obtener la propiedad como string
function TTimeZoneProperties.GetAllDaylightDayOfWeekAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_DAYLIGHTDAYOFWEEK_00;
    01: Result := ENUM_STRING_DAYLIGHTDAYOFWEEK_01;
    02: Result := ENUM_STRING_DAYLIGHTDAYOFWEEK_02;
    03: Result := ENUM_STRING_DAYLIGHTDAYOFWEEK_03;
    04: Result := ENUM_STRING_DAYLIGHTDAYOFWEEK_04;
    05: Result := ENUM_STRING_DAYLIGHTDAYOFWEEK_05;
    06: Result := ENUM_STRING_DAYLIGHTDAYOFWEEK_06;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TTimeZoneProperties.GetAllDaylightMonthAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_DAYLIGHTMONTH_00;
    01: Result := ENUM_STRING_DAYLIGHTMONTH_01;
    02: Result := ENUM_STRING_DAYLIGHTMONTH_02;
    03: Result := ENUM_STRING_DAYLIGHTMONTH_03;
    04: Result := ENUM_STRING_DAYLIGHTMONTH_04;
    05: Result := ENUM_STRING_DAYLIGHTMONTH_05;
    06: Result := ENUM_STRING_DAYLIGHTMONTH_06;
    07: Result := ENUM_STRING_DAYLIGHTMONTH_07;
    08: Result := ENUM_STRING_DAYLIGHTMONTH_08;
    09: Result := ENUM_STRING_DAYLIGHTMONTH_09;
    10: Result := ENUM_STRING_DAYLIGHTMONTH_10;
    11: Result := ENUM_STRING_DAYLIGHTMONTH_11;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TTimeZoneProperties.GetAllStandardDayOfWeekAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_STANDARDDAYOFWEEK_00;
    01: Result := ENUM_STRING_STANDARDDAYOFWEEK_01;
    02: Result := ENUM_STRING_STANDARDDAYOFWEEK_02;
    03: Result := ENUM_STRING_STANDARDDAYOFWEEK_03;
    04: Result := ENUM_STRING_STANDARDDAYOFWEEK_04;
    05: Result := ENUM_STRING_STANDARDDAYOFWEEK_05;
    06: Result := ENUM_STRING_STANDARDDAYOFWEEK_06;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TTimeZoneProperties.GetAllStandardMonthAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_STANDARDMONTH_00;
    01: Result := ENUM_STRING_STANDARDMONTH_01;
    02: Result := ENUM_STRING_STANDARDMONTH_02;
    03: Result := ENUM_STRING_STANDARDMONTH_03;
    04: Result := ENUM_STRING_STANDARDMONTH_04;
    05: Result := ENUM_STRING_STANDARDMONTH_05;
    06: Result := ENUM_STRING_STANDARDMONTH_06;
    07: Result := ENUM_STRING_STANDARDMONTH_07;
    08: Result := ENUM_STRING_STANDARDMONTH_08;
    09: Result := ENUM_STRING_STANDARDMONTH_09;
    10: Result := ENUM_STRING_STANDARDMONTH_10;
    11: Result := ENUM_STRING_STANDARDMONTH_11;
  else
    Result := STR_EMPTY;
  end;
end;


// Obtener núm. de elementos de la propiedad como string
function TTimeZoneProperties.GetAllDaylightDayOfWeekCount:integer;
begin
  Result := 7
end;

// Obtener núm. de elementos de la propiedad como string
function TTimeZoneProperties.GetAllDaylightMonthCount:integer;
begin
  Result := 12
end;

// Obtener núm. de elementos de la propiedad como string
function TTimeZoneProperties.GetAllStandardDayOfWeekCount:integer;
begin
  Result := 7
end;

// Obtener núm. de elementos de la propiedad como string
function TTimeZoneProperties.GetAllStandardMonthCount:integer;
begin
  Result := 12
end;


end.
