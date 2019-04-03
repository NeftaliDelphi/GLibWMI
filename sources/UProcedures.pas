{
  UProcedures Unit
  Copyright (©) 2009,  by Germán Estévez (Neftalí)

  Varios procedimientos de caracter general.                               

=========================================================================
IMPORTANTE PROGRAMADORES: Por favor, si tienes comentarios, mejoras, ampliaciones,
  errores y/o cualquier otro tipo de sugerencia envíame un mail a:
  german_ral@hotmail.com

IMPORTANT PROGRAMMERS: please, if you have comments, improvements, enlargements,
errors and/or any another type of suggestion send a mail to:
german_ral@hotmail.com
=========================================================================

@author Germán Estévez (Neftalí)
@cat Package GLib
}
unit UProcedures;


//=========================================================================
//
// I N T E R F A C E
//
//=========================================================================
interface

{$I .\..\package\jedi.inc}

uses
  {$IFDEF DELPHIX_TOKYO_UP} System.UITypes, {$ENDIF}
  Classes, WbemScripting_TLB, CWMIBase, ActiveX;


function GetLastErrorAsString():string;

function ConnectWMI(wmiHost:string; var Services: ISWbemServices):Boolean;
procedure GetWMIProperties(AIndex:integer; {0-TODOS    1-Primero  2-segundo  3...}
                           Services:ISWbemServices; wmiSQL:string;
                           var aProperties:TStrings);
function _GetWMIObjectsCount(Services:ISWbemServices; wmiClass:string):integer;

//: Devuelve el valor de una propiedad, a partir de la clase y su nombre.
procedure _GetWMIValue(AIndex:integer;
                     Services:ISWbemServices;
                     wmiClass,wmiProperty:string;
                     var propValue:variant;
                     var propValueArr:TArrVariant;
                     var propType:TWMIGenericPropType;
                     var propIsNull:boolean);


procedure GetWMIPropertyValue(WMIComponent:TWMIBase;
                              wmiProperty:string;
                              var wmiValue:variant;
                              var IsNull:boolean);

//: Acceder a una instancia de la clase...
function GetClassInstance(AServices:ISWbemServices;
                          AInstanceProp:string; AInstanceValue:variant;
                          AClassName:string):ISWbemObject;
//: Ejecutar el proceso.
procedure ExecuteClassMethod(WMIComponent:TWMIBase;
                             // Las que nos sirven para buscar esa instancia
                             AInstanceProp:string; AInstanceValue:variant;
                             AMethodName:String;
                             ArrParamName:array of string;
                             var ArrParamValue:array of variant;
                             ArrParamType:array of TParamType;
                             ArrParamDataType:array of TOleEnum;
                             var AResult:Variant);

//: Extraer todas las propiedades (modo texto) de una instancia.
procedure ExtractAllProperties(AllProperties:TStrings; var PropValues:TStrings);


function ArrayToString(Arr:TArrVariant):string;
procedure ArrayVariantToArrayString(Arr:TArrVariant; var ArrStr:TArrString);
procedure StringToArrayString(StrValue:string; var Arr:TArrString);
procedure StringToArrayInteger(StrValue:string; var Arr:TArrInteger);

function IndexOfIntegerValue(Arr:TArrInteger; Value:integer):integer;

function VariantStrValue(v:variant; vIsNull:Boolean):string;
function VariantIntegerValue(v:variant; vIsNull:Boolean):int64;
function VariantFloatValue(v:variant; vIsNull:Boolean):Extended;
function VariantBooleanValue(v:variant; vIsNull:Boolean):Boolean;

//=========================================================================
//
// I M P L E M E N T A T I O N
//
//=========================================================================
implementation

uses
  StrUtils, Variants, SysUtils,
  {GLib} UConstantes, Dialogs;

function VariantIntegerValue(v:variant; vIsNull:Boolean):int64;
begin
  if (vIsNull) then begin
    Result := 0
  end
  else begin
    try
      Result := v;
    except
      Result := 666;
    end;
  end;
end;

function VariantFloatValue(v:variant; vIsNull:Boolean):Extended;
begin
  if (vIsNull) then begin
    Result := 0
  end
  else begin
    try
      Result := v;
    except
      Result := 666;
    end;
  end;
end;

function VariantBooleanValue(v:variant; vIsNull:Boolean):Boolean;
begin
  if (vIsNull) then begin
    Result := False
  end
  else begin
    Result := v;
  end;
end;


function VariantStrValue(v:variant; vIsNull:Boolean):string;
begin
  if (vIsNull) then begin
    Result := STR_EMPTY
  end
  else begin
    Result := v;
  end;
end;

function GetLastErrorAsString():string;
begin
  // ultimo error almacenado
  Result := SysErrorMessage(GetLastError());
end;


function ConnectWMI(wmiHost:string; var Services: ISWbemServices):Boolean;
var
  Locator:  ISWbemLocator;
begin

  try
    // Create the Location object
    Locator := CoSWbemLocator.Create();
    // Connect to the WMI service, with the root\cimv2 namespace
    Services := Locator.ConnectServer(wmiHost,
        STR_CIM2_ROOT, {user}STR_EMPTY, {password}STR_EMPTY,
        STR_EMPTY,STR_EMPTY, 0, nil);

    Result := True;
  except
    Result := False;
  end;
end;

{ version 1.9.
 Cambiado la SQL por la Clase.}
procedure GetWMIProperties(AIndex:integer; {0-TODOS    1-Primero  2-segundo  3...}
                           Services:ISWbemServices; wmiSQL:string;
                           var aProperties:TStrings);
var
  SObject:  ISWbemObject;
  ObjSet:   ISWbemObjectSet;
  Enum:     IEnumVariant;
  TempObj:  OleVariant;
  Value:    Cardinal;
  i:        integer;
begin

  // proteccion a problemas
  try

    // realizar la consulta
    ObjSet := Services.ExecQuery(wmiSQL, 'WQL',
      wbemFlagReturnImmediately and wbemFlagForwardOnly , nil);
    // Lista de objetos
    Enum := (ObjSet._NewEnum) as IEnumVariant;

    if (AIndex <> 0) then begin
      i := 1;
      // Recorrer la lista
      while (i <> AIndex) do begin
        Enum.Next(1, TempObj, Value);
        inc(i);
      end;
    end;

    // Recorrer la lista
    while Enum.Next(1, TempObj, Value) = S_OK do begin

      // Access al objeto
      try
        SObject := IUnknown(TempObj) as ISWBemObject;
      except
        SObject := nil;
      end;

      // Encontrado?
      if (SObject <> nil) then begin
        // Acceder a la propiedad
        SObject.Properties_;
        aProperties.Add(SObject.GetObjectText_(0));
      end;

      if (AIndex <> 0) then begin
        Exit;
      end;

      SObject._Release;
    end;

  finally
    // Nada (pendiente)
  end;
end;

function _GetWMIObjectsCount(Services:ISWbemServices; wmiClass:string):integer;
var
  ObjSet:   ISWbemObjectSet;
begin                                          
  Result := -1;

  // proteccion generalk
  try
    // Lista de objetos
    ObjSet := Services.ExecQuery('SELECT * FROM '+wmiClass, 'WQL',
        wbemFlagReturnImmediately and wbemFlagForwardOnly , nil);

    Result := ObjSet.Count;

//    Enum := (ObjSet._NewEnum) as IEnumVariant;

  except
    // Trap any exceptions (Not having WMI installed will cause one!)
    //---
  end;
end;


function _GetPropValueAsString(AProperty:ISWbemProperty;AIsNull:Boolean):string;
begin
  // ini
  //hint AIsnull := False;
  Result := STR_EMPTY;
end;

//=============================================================================
procedure GetWMIPropertyValue(WMIComponent:TWMIBase;
                              wmiProperty:string;
                              var wmiValue:variant;
                              var IsNull:boolean);
var
  StrInfo:string;
  StrValue:string;

  //············································································
  function _ExtractValue(Data:string):string;
  var
    str:string;
    index, i:integer;
    TS:TStrings;
  begin
    Result := '';
    TS := TStringList.Create();
    try
      TS.Text := StrInfo;

      // Recorrido por las propiedades
      for i := 0 to (TS.Count - 1) do begin
        // Cadena
        Str := Trim(TS[i]);
        index := AnsiPos(Data + CHAR_SPACE + CHAR_EQUAL + CHAR_SPACE, Str);
        if (index <> 0) then begin

          Str := Copy(Str, index + Length(Data + CHAR_SPACE + CHAR_EQUAL + CHAR_SPACE), Length(Str));
          Str := Trim(Str);

          // primera comilla
          if Str[1]= '"' then begin
            Str := Copy(Str, 2, Length(Str));
          end;

          Str := AnsiReplaceText(Str, CHAR_DCOMILLAS + CHAR_COMMAPOINT, STR_EMPTY);

          // Tamaño > 0?
          if (Length(Str) > 1) then begin
            // Ultimo ;
            if Str[Length(Str)]= ';' then begin
              Str := Copy(Str, 1, Length(Str) - 1);
            end;
          end;

          Result := Str;
          Break;
        end;
      end;
    finally
      FreeAndNil(TS);
    end;
  end;
  //············································································
begin


  // Indice incorrecto?
  if (WMIComponent.ObjectIndex <= 0) then begin
    Exit;
  end;

  // Ha encontrado algo?
  if (WMIComponent.AllProperties.Count > 0) then begin

    // Información de objeto seleccionado
    StrInfo := WMIComponent.AllProperties[WMIComponent.ObjectIndex - 1];

    // Valor de la ppropiedad
    StrValue := _ExtractValue(wmiProperty);
    if (StrValue <> STR_EMPTY) then begin
      wmiValue := StrValue;
      IsNull := False;
    end
    else begin
      wmiValue := StrValue;
      IsNull := True;
    end;
  end
  else begin
    wmiValue := STR_EMPTY;
    IsNull := True;
  end;
end;


//=============================================================================
procedure _GetWMIValue(AIndex:integer;
                     Services:ISWbemServices;
                     wmiClass,wmiProperty:string;
                     var propValue:variant;
                     var propValueArr:TArrVariant;
                     var propType:TWMIGenericPropType;
                     var propIsNull:boolean);
var
  SObject:  ISWbemObject;
  ObjSet:   ISWbemObjectSet;
  SProp:    ISWbemProperty;
  Enum:     IEnumVariant;
  Value:    Cardinal;
  TempObj:  OleVariant;
  i, j:        integer;
begin

  // default
  propValue := STR_EMPTY;
  propIsNull := True;

  // proteccion
  try
    ObjSet := Services.ExecQuery('SELECT * FROM '+wmiClass, 'WQL',
      wbemFlagReturnImmediately and wbemFlagForwardOnly , nil);
    Enum := (ObjSet._NewEnum) as IEnumVariant;

    // Saltar hasta llegar al seleccionado
    if (AIndex <> 0) then begin
      i := 1;
      // Recorrer la lista
      while (i <> AIndex) do begin
        Enum.Next(1, TempObj, Value);
        inc(i);
      end;
    end;

    while (Enum.Next(1, TempObj, Value) = S_OK) do begin
      // Access al objeto
      try
        SObject := IUnknown(TempObj) as ISWBemObject;
      except
        SObject := nil;
      end;
      // Always need to free interface in TempObj
      TempObj := Unassigned;

      // Encontrado?
      if (SObject <> nil) then begin
        // Acceder a la propiedad
        SProp := SObject.Properties_.Item(wmiProperty, 0);
        // Nulo?
        propIsNull := VarIsNull(SProp.Get_Value);






        // Segun el tipo de la propiedad...
        case SProp.CIMType of
          wbemCimtypeSint8, wbemCimtypeUint8, wbemCimtypeSint16,
          wbemCimtypeUint16, wbemCimtypeSint32, wbemCimtypeUint32: begin

            //
            if VarIsArray(SProp.Get_Value) then begin
              // Tamaño del array
              j := VarArrayHighBound(SProp.Get_Value, 1);
              SetLength(propValueArr, j+1);
              // recorrido
              for i := 0 to (j) do begin
                propValueArr[i] := SProp.Get_Value[i];
              end;
              propType := gptIntegerArray;
            end
            else begin
              propValue := SProp.Get_Value;
              propType := gptInteger;
            end;
          end;

          wbemCimtypeReal32, wbemCimtypeReal64: begin
            propValue := SProp.Get_Value;
            propType := gptReal;
          end;

          wbemCimtypeBoolean: begin
            propValue := SProp.Get_Value;
            propType := gptBoolean;

//            if wmiProp.Get_Value then begin
//              result := 'True'
//            end
//            else begin
//              result := 'False';
//            end;
          end;

          wbemCimtypeString: begin
            //
            if VarIsArray(SProp.Get_Value) then begin
              // Tamaño del array
              j := VarArrayHighBound(SProp.Get_Value, 1);
              SetLength(propValueArr, j+1);
              // recorrido
              for i := 0 to (j) do begin
                propValueArr[i] := SProp.Get_Value[i];
              end;
              propType := gptStringArray;
            end
            else begin
              propValue := SProp.Get_Value;
              propType := gptString;
            end;
          end;

          wbemCimtypeSint64, wbemCimtypeUint64: begin
            propValue := SProp.Get_Value;
            propType := gptInteger64;
          end;

          wbemCimtypeDatetime: begin
            propValue := SProp.Get_Value;
            propType := gptDateTime;
          end;

          wbemCimtypeReference: begin
            propValue := SProp.Get_Value;
            propType := gptReference;
            // Services.Get(result, 0, nil).GetObjectText_(0));  another query
          end;

          wbemCimtypeChar16: begin
            propValue := '<16-bit character>';
            propType := gptChar;
          end;

          wbemCimtypeObject: begin
            propValue := '<CIM Object>';
            propType := gptChar;
          end;
        end ;



//        // Valor
//        Valor := SProp.Get_Value;
//        // Hay algo?
//        if not VarIsNull(Valor) then begin
//          // Es un String Válido
//          if VarIsStr(Valor) then begin
//            propValue := Valor;
//          end;
//        end;



      end;
    end;
  except
    // Trap any exceptions (Not having WMI installed will cause one!)
  end;
end;
//=============================================================================

function IndexOfIntegerValue(Arr:TArrInteger; Value:integer):integer;
var
  i:Integer;
begin
  Result := -1;
  for i := 0 to (Length(Arr) - 1) do begin
    if (Arr[i] = Value) then begin
      Result := i;
      Break;
    end;
  end;
end;


procedure StringToArrayString(StrValue:string; var Arr:TArrString);
var
  str:string;
  TS:TStringList;
  i:Integer;
begin

  Str := AnsiReplaceStr(StrValue, CHAR_ARRAY_OPEN, STR_EMPTY);
  Str := AnsiReplaceStr(Str, CHAR_ARRAY_CLOSE, STR_EMPTY);

  try
    TS := TStringList.Create();
    TS.Delimiter := CHAR_COMMA;
    TS.DelimitedText := Str;

    if (TS.Count > 0) then begin
      SetLength(Arr, TS.Count);
      for i := 0 to (TS.Count - 1) do begin
        Arr[i] := TS[i];
      end;
    end;
  finally
    FreeAndNil(TS);
  end;

end;

procedure StringToArrayInteger(StrValue:string; var Arr:TArrInteger);
var
  str:string;
  TS:TStringList;
  i:Integer;
begin

  Str := AnsiReplaceStr(StrValue, CHAR_ARRAY_OPEN, STR_EMPTY);
  Str := AnsiReplaceStr(Str, CHAR_ARRAY_CLOSE, STR_EMPTY);

  try
    TS := TStringList.Create();
    TS.Delimiter := CHAR_COMMA;
    TS.DelimitedText := Str;

    if (TS.Count > 0) then begin
      SetLength(Arr, TS.Count);
      for i := 0 to (TS.Count - 1) do begin
        Arr[i] := StrToIntDef(TS[i], -55);
      end;
    end;
  finally
    FreeAndNil(TS);
  end;
end;

procedure ArrayVariantToArrayString(Arr:TArrVariant; var ArrStr:TArrString);
var
  i,j:Integer;
begin
  j := VarArrayHighBound(Arr, 1);
  SetLength(ArrStr, j+1);
  for i := 0 to j do begin
    ArrStr[i] := Arr[i];
  end;
end;


function ArrayToString(Arr:TArrVariant):string;
var
  i,j:Integer;
begin
  Result := STR_EMPTY;
  j := VarArrayHighBound(Arr, 1);
  for i := 0 to j do begin
    if i > 0 then begin
      Result := Result + '·' + Arr[i];
    end
    else begin
      Result := Result + Arr[i];
    end;
  end;
end;


//: Acceder a una instancia de la clase...
function GetClassInstance(AServices:ISWbemServices;
                          // Las que nos sirven para buscar esa instancia
                          AInstanceProp:string; AInstanceValue:variant;
                          AClassName:string):ISWbemObject;
const
  SQL_TEXT = 'SELECT * FROM %s WHERE %s="%s"';
  SQL_TEXT2 = 'SELECT * FROM %s';
var
  StrSQL:string;
  SObject:  ISWbemObject;
  ObjSet:   ISWbemObjectSet;
  Enum:     IEnumVariant;
  TempObj:  OleVariant;
  Value:    Cardinal;
begin

  // Ini
  Result := nil;
  SObject := nil;

  // proteccion
  try
    // Ninguna instancia predeterminada?
    if (AInstanceProp = STR_EMPTY) and (AInstanceValue = STR_EMPTY) then begin
      // SQL de consulta
      StrSQL := Format(SQL_TEXT2, [AClassName]);
    end
    else begin
      // SQL de consulta
      StrSQL := Format(SQL_TEXT, [AClassName, AInstanceProp, AInstanceValue]);
    end;

    ObjSet := AServices.ExecQuery(StrSQL, 'WQL',
              wbemFlagReturnImmediately and wbemFlagForwardOnly , nil);
    Enum := (ObjSet._NewEnum) as IEnumVariant;

    // Ninguna instancia predeterminada?
    if (AInstanceProp = STR_EMPTY) and (AInstanceValue = STR_EMPTY) then begin
      // primera
      if (Enum.Next(1, TempObj, Value) = S_OK) then begin
        SObject := IUnknown(TempObj) as ISWBemObject;
      end;
    end
    else begin
      // Recorrido
      while (Enum.Next(1, TempObj, Value) = S_OK) do begin
        // Access al objeto
        try
          SObject := IUnknown(TempObj) as ISWBemObject;
        except
          SObject := nil;
          Result := nil;
        end;
        // Always need to free interface in TempObj
        TempObj := Unassigned;
      end;
    end;

    // Encontrado?
    if (SObject <> nil) then begin
      Result := SObject;
    end;

  finally
    // Nada (pendiente)
  end;
end;

// Ejecutar el proceso.
procedure ExecuteClassMethod(WMIComponent:TWMIBase;
                             // Las que nos sirven para buscar esa instancia
                             AInstanceProp:string; AInstanceValue:variant;
                             AMethodName:String;
                             ArrParamName:array of string;
                             var ArrParamValue:array of variant;
                             ArrParamType:array of TParamType;
                             ArrParamDataType:array of TOleEnum;
                             var AResult:Variant);
var
  i:Integer;
  AObject:  ISWbemObject;
  wmiMethod: SWbemMethod;
  wmiProperty: SWbemProperty;
  wmiProp: ISWbemProperty;
  wmiInst, wmiInParams, wmiOutParams: ISWbemObject;
  propValue: OleVariant;
  Str:String;
begin

  // Test activacion?
  if not (WMIComponent.Active) then begin
    // raise;

    MessageDlg('El componente no está activo!!!!!', mtWarning, [mbOK], 0);

    Exit;
  end;

  // Acceder a una instancia de la clase...
  AObject := GetClassInstance(WMIComponent.WMIServices,
                              AInstanceProp, AInstanceValue,
                              WMIComponent.WMIClass);

  // Encontrado?
  if (AObject <> nil) then begin
    // Preparar el método
    wmiMethod := AObject.Methods_.Item (AMethodName, 0);
    wmiInParams := wmiMethod.InParameters;
    wmiOutParams := wmiMethod.OutParameters;

    // ENTRADA
    if Assigned(wmiInParams) then begin
      wmiInParams.Properties_.Get_Count;
      wmiInst := wmiInParams.SpawnInstance_(0);
      wmiInParams.Properties_.Get_Count;

      // Recorrido
      for i := 0 to (Length(ArrParamName) -1) do begin

        // Es de entrada?
        if (ArrParamType[i] = ptIn) then begin
          // Asignar valor IN
          wmiProperty := wmiInst.Properties_.Add (ArrParamName[i],
             ArrParamDataType[i], False, 0) ;

          if (ArrParamDataType[i] = wbemCimtypeObject) then begin
            propValue := null;
          end
          else begin
            propValue := ArrParamValue[i];
          end;


          wmiProperty.Set_Value(propValue);
        end;
      end;
    end;

    // Ejecutar
    wmiOutParams := AObject.ExecMethod_ (AMethodName, wmiInst, 0, nil) ;
    Str := ArrParamName[Length(ArrParamName)-1];

    // retorno
    wmiProp := wmiOutParams.Properties_.Item ('ReturnValue', 0);
    VarClear (propValue); // 5.2
    AResult := wmiProp.Get_Value ;

    // SALIDA (recuperarlos)
    if Assigned(wmiOutParams) then begin
      wmiOutParams.Properties_.Get_Count;
      wmiInst := wmiOutParams.SpawnInstance_(0);    

      // Recorrido
      for i := 0 to (Length(ArrParamName) -1) do begin
        // Es de salida?
        if (ArrParamType[i] = ptOut) then begin
          // Asignar valor OUT
          wmiProp := wmiOutParams.Properties_.Item (ArrParamName[i], 0) ;
          VarClear (propValue); // 5.2
          propValue := wmiProp.Get_Value;
          ArrParamValue[i] := propValue;
        end;
      end;
    end;

  end;
end;




//: Extraer todas las propiedades (modo texto) de una instancia.
procedure ExtractAllProperties(AllProperties:TStrings; var PropValues:TStrings);
var
  i:Integer;
  str:string;
begin

  PropValues.Clear;

  for i := 0 to (AllProperties.Count - 1) do begin

    // Tiene el Igual?
    if (AnsiPos(CHAR_EQUAL, AllProperties[i]) <> 0) then begin
      Str := AllProperties[i];
      if (Str <> STR_EMPTY) then begin
        if (Str[1] = #9) then begin
          Str := Copy(Str, 2, Length(Str));
          Str := Trim(Str);
        end;
        if (Str[Length(Str)] = ';') then begin
          Str := Copy(Str, 1, Length(Str) - 1);
        end;

        Str := AnsiReplaceText(Str, ' = ', '=');
        Str := AnsiReplaceText(Str, '"', STR_EMPTY);

      end;

      PropValues.Add(Str);
          
    end;
  end;
end;

end.
