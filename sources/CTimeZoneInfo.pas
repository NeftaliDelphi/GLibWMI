{
TTimeZoneInfo  Component Version 2.0b - Suite GLibWMI 
Copyright (©) 2009-2013,  by Germán Estévez (Neftalí)
 
  La clase WMI Win32_TimeZone representa la información de zona horaria para un ordenador con Windows, que incluye los cambios necesarios para realizar la transición entre cambios horarios.
 
Utilización/Usage: 
  Basta con "soltar" el componente y activarlo. 
 
  Place the component in the form and active it. 
 
  MSDN Info: 
  http://msdn.microsoft.com/en-us/library/aa394498(v=vs.85).aspx 
 
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
unit CTimeZoneInfo; 
 
{ 
========================================================================= 
 
  TTimeZoneInfo.pas 
 
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
  TTimeZoneProperties = class(TPersistent)
  private
    FBias:{sint32}int64;
    FCaption:string;
    FDaylightBias:{sint32}int64;
    FDaylightDay:Longword;
    FDaylightDayOfWeek:byte;
    FDaylightDayOfWeekAsString:string;
    FDaylightHour:Longword;
    FDaylightMillisecond:Longword;
    FDaylightMinute:Longword;
    FDaylightMonth:Longword;
    FDaylightMonthAsString:string;
    FDaylightName:string;
    FDaylightSecond:Longword;
    FDaylightYear:Longword;
    FDescription:string;
    FSettingID:string;
    FStandardBias:Longword;
    FStandardDay:Longword;
    FStandardDayOfWeek:byte;
    FStandardDayOfWeekAsString:string;
    FStandardHour:Longword;
    FStandardMillisecond:Longword;
    FStandardMinute:Longword;
    FStandardMonth:Longword;
    FStandardMonthAsString:string;
    FStandardName:string;
    FStandardSecond:Longword;
    FStandardYear:Longword;
  private
  public

    // Obtener la propiedad <DaylightMonth> como string
    function GetDaylightMonthAsString():string;

    // Obtener la propiedad <DaylightDayOfWeek> como string
    function GetDaylightDayOfWeekAsString():string;

    // Obtener la propiedad <StandardDayOfWeek> como string
    function GetStandardDayOfWeekAsString():string;

    // Obtener la propiedad <StandardMonth> como string
    function GetStandardMonthAsString():string;

// {GET_ENUM}

  published
    property Bias:{sint32}int64 read FBias write FBias stored False;
    property Caption:string read FCaption write FCaption stored False;
    property DaylightBias:{sint32}int64 read FDaylightBias write FDaylightBias stored False;
    property DaylightDay:Longword read FDaylightDay write FDaylightDay stored False;
    property DaylightDayOfWeek:byte read FDaylightDayOfWeek write FDaylightDayOfWeek stored False;
    property DaylightDayOfWeekAsString:string read GetDaylightDayOfWeekAsString  write FDaylightDayOfWeekAsString stored False;
    property DaylightHour:Longword read FDaylightHour write FDaylightHour stored False;
    property DaylightMillisecond:Longword read FDaylightMillisecond write FDaylightMillisecond stored False;
    property DaylightMinute:Longword read FDaylightMinute write FDaylightMinute stored False;
    property DaylightMonth:Longword read FDaylightMonth write FDaylightMonth stored False;
    property DaylightMonthAsString:string read GetDaylightMonthAsString  write FDaylightMonthAsString stored False;
    property DaylightName:string read FDaylightName write FDaylightName stored False;
    property DaylightSecond:Longword read FDaylightSecond write FDaylightSecond stored False;
    property DaylightYear:Longword read FDaylightYear write FDaylightYear stored False;
    property Description:string read FDescription write FDescription stored False;
    property SettingID:string read FSettingID write FSettingID stored False;
    property StandardBias:Longword read FStandardBias write FStandardBias stored False;
    property StandardDay:Longword read FStandardDay write FStandardDay stored False;
    property StandardDayOfWeek:byte read FStandardDayOfWeek write FStandardDayOfWeek stored False;
    property StandardDayOfWeekAsString:string read GetStandardDayOfWeekAsString  write FStandardDayOfWeekAsString stored False;
    property StandardHour:Longword read FStandardHour write FStandardHour stored False;
    property StandardMillisecond:Longword read FStandardMillisecond write FStandardMillisecond stored False;
    property StandardMinute:Longword read FStandardMinute write FStandardMinute stored False;
    property StandardMonth:Longword read FStandardMonth write FStandardMonth stored False;
    property StandardMonthAsString:string read GetStandardMonthAsString  write FStandardMonthAsString stored False;
    property StandardName:string read FStandardName write FStandardName stored False;
    property StandardSecond:Longword read FStandardSecond write FStandardSecond stored False;
    property StandardYear:Longword read FStandardYear write FStandardYear stored False;
  end;
  
  //: Implementación para el acceso vía WMI a la clase Win32_TimeZone
  TTimeZoneInfo = class(TWMIBase)
  private
    fConnected:boolean;
    FTimeZoneProperties: TTimeZoneProperties;
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
    // propiedades de la TimeZone
    property TimeZoneProperties:TTimeZoneProperties read FTimeZoneProperties write FTimeZoneProperties;
  end;

// Constantes para la propiedad DaylightMonth
const
  ENUM_STRING_DAYLIGHTMONTH_1 = 'January';
  ENUM_STRING_DAYLIGHTMONTH_2 = 'February';
  ENUM_STRING_DAYLIGHTMONTH_3 = 'March';
  ENUM_STRING_DAYLIGHTMONTH_4 = 'April';
  ENUM_STRING_DAYLIGHTMONTH_5 = 'May';
  ENUM_STRING_DAYLIGHTMONTH_6 = 'June';
  ENUM_STRING_DAYLIGHTMONTH_7 = 'July';
  ENUM_STRING_DAYLIGHTMONTH_8 = 'August';
  ENUM_STRING_DAYLIGHTMONTH_9 = 'September';
  ENUM_STRING_DAYLIGHTMONTH_10 = 'October';
  ENUM_STRING_DAYLIGHTMONTH_11 = 'November';
  ENUM_STRING_DAYLIGHTMONTH_12 = 'December';


// Constantes para la propiedad DaylightDayOfWeek
const
  ENUM_STRING_DAYLIGHTDAYOFWEEK_0 = 'Sunday';
  ENUM_STRING_DAYLIGHTDAYOFWEEK_1 = 'Monday';
  ENUM_STRING_DAYLIGHTDAYOFWEEK_2 = 'Tuesday';
  ENUM_STRING_DAYLIGHTDAYOFWEEK_3 = 'Wednesday';
  ENUM_STRING_DAYLIGHTDAYOFWEEK_4 = 'Thursday';
  ENUM_STRING_DAYLIGHTDAYOFWEEK_5 = 'Friday';
  ENUM_STRING_DAYLIGHTDAYOFWEEK_6 = 'Saturday';


// Constantes para la propiedad StandardDayOfWeek
const
  ENUM_STRING_STANDARDDAYOFWEEK_0 = 'Sunday';
  ENUM_STRING_STANDARDDAYOFWEEK_1 = 'Monday';
  ENUM_STRING_STANDARDDAYOFWEEK_2 = 'Tuesday';
  ENUM_STRING_STANDARDDAYOFWEEK_3 = 'Wednesday';
  ENUM_STRING_STANDARDDAYOFWEEK_4 = 'Thursday';
  ENUM_STRING_STANDARDDAYOFWEEK_5 = 'Friday';
  ENUM_STRING_STANDARDDAYOFWEEK_6 = 'Saturday';


// Constantes para la propiedad StandardMonth
const
  ENUM_STRING_STANDARDMONTH_1 = 'January';
  ENUM_STRING_STANDARDMONTH_2 = 'February';
  ENUM_STRING_STANDARDMONTH_3 = 'March';
  ENUM_STRING_STANDARDMONTH_4 = 'April';
  ENUM_STRING_STANDARDMONTH_5 = 'May';
  ENUM_STRING_STANDARDMONTH_6 = 'June';
  ENUM_STRING_STANDARDMONTH_7 = 'July';
  ENUM_STRING_STANDARDMONTH_8 = 'August';
  ENUM_STRING_STANDARDMONTH_9 = 'September';
  ENUM_STRING_STANDARDMONTH_10 = 'October';
  ENUM_STRING_STANDARDMONTH_11 = 'November';
  ENUM_STRING_STANDARDMONTH_12 = 'December';


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
 
  
{ TTimeZone } 
{-------------------------------------------------------------------------------} 
// Limpiar las propiedades
procedure TTimeZoneInfo.ClearProps;
begin

  Self.TimeZoneProperties.FBias := 0;
  Self.TimeZoneProperties.FCaption := STR_EMPTY;
  Self.TimeZoneProperties.FDaylightBias := 0;
  Self.TimeZoneProperties.FDaylightDay := 0;
  Self.TimeZoneProperties.FDaylightDayOfWeek := 0;
  Self.TimeZoneProperties.FDaylightHour := 0;
  Self.TimeZoneProperties.FDaylightMillisecond := 0;
  Self.TimeZoneProperties.FDaylightMinute := 0;
  Self.TimeZoneProperties.FDaylightMonth := 0;
  Self.TimeZoneProperties.FDaylightName := STR_EMPTY;
  Self.TimeZoneProperties.FDaylightSecond := 0;
  Self.TimeZoneProperties.FDaylightYear := 0;
  Self.TimeZoneProperties.FDescription := STR_EMPTY;
  Self.TimeZoneProperties.FSettingID := STR_EMPTY;
  Self.TimeZoneProperties.FStandardBias := 0;
  Self.TimeZoneProperties.FStandardDay := 0;
  Self.TimeZoneProperties.FStandardDayOfWeek := 0;
  Self.TimeZoneProperties.FStandardHour := 0;
  Self.TimeZoneProperties.FStandardMillisecond := 0;
  Self.TimeZoneProperties.FStandardMinute := 0;
  Self.TimeZoneProperties.FStandardMonth := 0;
  Self.TimeZoneProperties.FStandardName := STR_EMPTY;
  Self.TimeZoneProperties.FStandardSecond := 0;
  Self.TimeZoneProperties.FStandardYear := 0;

end;
//: Constructor del componente 
constructor TTimeZoneInfo.Create(AOwner: TComponent); 
begin 
  inherited; 
 
  Self.FTimeZoneProperties := TTimeZoneProperties.Create(); 
  Self.MSDNHelp := 'http://msdn.microsoft.com/en-us/library/aa394498(v=vs.85).aspx';
end; 
 
// destructor del componente 
destructor TTimeZoneInfo.Destroy(); 
begin 
 
  // liberar 
  FreeAndNil(Self.FTimeZoneProperties); 
 
  inherited; 
end; 
 
// Obtener la clase 
function TTimeZoneInfo.GetWMIClass(): string; 
begin 
  Result := 'Win32_TimeZone'
end; 
 
// Obtener Root 
function TTimeZoneInfo.GetWMIRoot(): string; 
begin 
  Result := STR_CIM2_ROOT; 
end; 
 
// Active 
procedure TTimeZoneInfo.SetActive(const Value: Boolean);
begin 
  // método heredado 
  inherited; 
end; 


//: Rellenar las propiedades del componente.
procedure TTimeZoneInfo.FillProperties(AIndex: integer);
var
  s:string;
  i:Integer;
  d:TDateTime;
  v:variant;
  vType:TWMIGenericPropType;
  vArr:TArrVariant;
  vNull:boolean;
  vp:TTimeZoneProperties;
begin

  // Llamar al heredado (importante)
  inherited;

  // Rellenar propiedades...
  vp := Self.TimeZoneProperties;

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
function TTimeZoneProperties.GetDaylightMonthAsString():string;
begin
  case FDaylightMonth of
    1 : Result := ENUM_STRING_DAYLIGHTMONTH_1;
    2 : Result := ENUM_STRING_DAYLIGHTMONTH_2;
    3 : Result := ENUM_STRING_DAYLIGHTMONTH_3;
    4 : Result := ENUM_STRING_DAYLIGHTMONTH_4;
    5 : Result := ENUM_STRING_DAYLIGHTMONTH_5;
    6 : Result := ENUM_STRING_DAYLIGHTMONTH_6;
    7 : Result := ENUM_STRING_DAYLIGHTMONTH_7;
    8 : Result := ENUM_STRING_DAYLIGHTMONTH_8;
    9 : Result := ENUM_STRING_DAYLIGHTMONTH_9;
    10 : Result := ENUM_STRING_DAYLIGHTMONTH_10;
    11 : Result := ENUM_STRING_DAYLIGHTMONTH_11;
    12 : Result := ENUM_STRING_DAYLIGHTMONTH_12;
  else
    Result := STR_EMPTY;
  end;
end;


// Obtener la propiedad como string
function TTimeZoneProperties.GetDaylightDayOfWeekAsString():string;
begin
  case FDaylightDayOfWeek of
    0: Result := ENUM_STRING_DAYLIGHTDAYOFWEEK_0;
    1: Result := ENUM_STRING_DAYLIGHTDAYOFWEEK_1;
    2: Result := ENUM_STRING_DAYLIGHTDAYOFWEEK_2;
    3: Result := ENUM_STRING_DAYLIGHTDAYOFWEEK_3;
    4: Result := ENUM_STRING_DAYLIGHTDAYOFWEEK_4;
    5: Result := ENUM_STRING_DAYLIGHTDAYOFWEEK_5;
    6: Result := ENUM_STRING_DAYLIGHTDAYOFWEEK_6;
  else
    Result := STR_EMPTY;
  end;
end;


// Obtener la propiedad como string
function TTimeZoneProperties.GetStandardDayOfWeekAsString():string;
begin
  case FStandardDayOfWeek of
    0: Result := ENUM_STRING_STANDARDDAYOFWEEK_0;
    1: Result := ENUM_STRING_STANDARDDAYOFWEEK_1;
    2: Result := ENUM_STRING_STANDARDDAYOFWEEK_2;
    3: Result := ENUM_STRING_STANDARDDAYOFWEEK_3;
    4: Result := ENUM_STRING_STANDARDDAYOFWEEK_4;
    5: Result := ENUM_STRING_STANDARDDAYOFWEEK_5;
    6: Result := ENUM_STRING_STANDARDDAYOFWEEK_6;
  else
    Result := STR_EMPTY;
  end;
end;


//: Recuperar la propiedad  <StandardMonthAsString>
function TTimeZoneProperties.GetStandardMonthAsString(): string;
begin
  case FStandardMonth of
    1: Result := ENUM_STRING_STANDARDMONTH_1;
    2: Result := ENUM_STRING_STANDARDMONTH_2;
    3: Result := ENUM_STRING_STANDARDMONTH_3;
    4: Result := ENUM_STRING_STANDARDMONTH_4;
    5: Result := ENUM_STRING_STANDARDMONTH_5;
    6: Result := ENUM_STRING_STANDARDMONTH_6;
    7: Result := ENUM_STRING_STANDARDMONTH_7;
    8: Result := ENUM_STRING_STANDARDMONTH_8;
    9: Result := ENUM_STRING_STANDARDMONTH_9;
    10: Result := ENUM_STRING_STANDARDMONTH_10;
    11: Result := ENUM_STRING_STANDARDMONTH_11;
    12: Result := ENUM_STRING_STANDARDMONTH_12;
  else
    Result := STR_EMPTY;
  end;
end;

// {IMPL_ENUM}

end.
