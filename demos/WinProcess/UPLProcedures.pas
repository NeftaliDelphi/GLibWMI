unit UPLProcedures;

//=========================================================================
//
// I N T E R F A C E
//
//=========================================================================
interface

uses
  Forms,
  UPLConstantes;



// ***********************  CONFIGURACIONES ************************************
// Recuperar la posicion de las ventanas
procedure RestorePosition(AForm:TForm; NameByClass:string=STR_EMPTY);
// Recupera un valor almacenado...
function RestoreOptionValue(AIniFilePath:string;
                            AName, ADefault:string):string; overload;
function RestoreOptionValue(AIniFilePath:string;
                            AName:string; ADefault:Integer): Integer; overload;
function RestoreOptionValue(AIniFilePath:string;
                            AName:string; ADefault:boolean): boolean; overload;
// Recuperar el tamaño de las ventanas
procedure RestoreSize(AForm:TForm; NameByClass:string=STR_EMPTY);
// Guarda la posicion de las ventanas en disco.
procedure SavePosition(AForm:TForm; NameByClass:string=STR_EMPTY);
// Guarda el tamaño de las ventanas en disco.
procedure SaveSize(AForm:TForm; NameByClass:string=STR_EMPTY);
procedure SaveOptionValues(AIniFilePath:string;
                           AName, AValue:array of String); overload;
// Devuelve el nombre del fichero de configuracion
function ConfigFilePath():string;



//=========================================================================
//
// I M P L E M E N T A T I O N
//
//=========================================================================
implementation

uses
  ComObj, Classes, Graphics,
  SysUtils, IniFiles;


// Recuperar la posicion de las ventanas
procedure RestorePosition(AForm:TForm; NameByClass:string=STR_EMPTY);
var
  iniFile:TiniFile;
  path, Str:string;
  i:Integer;
begin

  // Crear el fichero
  path := ConfigFilePath();
  iniFile := TiniFile.Create(path);
  // protecc
  try

    // Utilizar el ClassName?
    if (NameByClass <> STR_EMPTY) then begin
      Str := NameByClass;
    end
    else begin
      Str:= AForm.Name;
    end;

    // Guardar la posicion
    i := iniFile.ReadInteger(POSITION_SECTION, AForm.Name + '_Left', -1);
    { TODO 1 -oGermán -cError : El formulario de categorías va cogiendo: formCategoriasElem_2, formCategoriasElem_3,... }
    // es correcto?
    if (i <> -1 ) then begin
      AForm.Left := i;
    end;

    i := iniFile.ReadInteger(POSITION_SECTION, Str + '_Top', -1);
    // es correcto?
    if (i <> -1 ) then begin
      AForm.Top := i;
    end;
  finally
    FreeAndNil(iniFile);
  end;
end;

// Guarda la posicion de las ventanas en disco.
procedure SavePosition(AForm:TForm; NameByClass:string=STR_EMPTY);
var
  iniFile:TiniFile;
  path, str:string;
begin

  // Hay que utilizar el ClassName?
  if (NameByClass = STR_EMPTY) then begin
    Str := AForm.Name;
  end;

  // Utilizar el ClassName?
  if (NameByClass <> STR_EMPTY) then begin
    Str := NameByClass;
  end
  else begin
    Str:= AForm.Name;
  end;

  // Crear el fichero
  path := ConfigFilePath();
  iniFile := TiniFile.Create(path);
  // proteccion
  try
    // Guardar la posicion
    iniFile.WriteInteger(POSITION_SECTION, Str + '_Left', AForm.Left);
    iniFile.WriteInteger(POSITION_SECTION, Str + '_Top', AForm.Top);
  finally
    FreeAndNil(iniFile);
  end;
end;

// Recupera un valor numerico almacenado...
function RestoreOptionValue(AIniFilePath:string;
                            AName:string; ADefault:Integer): Integer; overload;
begin
  // Llamada con string
  Result := StrToIntDef(RestoreOptionValue(AIniFilePath, AName, IntToStr(ADefault)), ADefault);
end;

function RestoreOptionValue(AIniFilePath:string;
                            AName:string; ADefault:boolean): boolean; overload;
var
  str:string;
begin
  // Llamada con string
  Str := RestoreOptionValue(AIniFilePath, AName, STR_EMPTY);
  // convertir
  Result := StrToBoolDef(Str, ADefault);
end;


function FindStr (SubStr:string; Str:string; out Pos:Integer; PosIni:Integer=1):Boolean;
var
  j:Integer;
  SubStrLen: Integer;
  StrLen: Integer;
begin

  // Valores por defecto
  Result := False;
  Pos := 0;

  // La posición inicial de búsqueda no es correcta ?
  if (PosIni < 1) then begin
    // Corregir parámetro
    PosIni := 1;
  end;

  // La cadena no está vacia ?
  if (Str = STR_EMPTY) then begin
    // No hay nada que buscar
    Exit;
  end;

  // Calculamos longitud de las cadenas
  StrLen := Length(Str);
  SubStrLen := Length(SubStr);

  // mientras no lleguemos al final de la cadena de búsqueda
  while (PosIni <= StrLen) do begin
    j := 0;
    // buscamos carácteres iguales...
    while (j < SubStrLen) and (PosIni <= StrLen) and (Str[PosIni] = SubStr[j+1]) do begin
      Inc (PosIni);
      Inc (j);
    end;
    // si ha encontrado tantos carácteres iguales como la subcadena, vuelve...
    if (j = SubStrLen) then begin
      // Devolver que se ha encontrado
      Result := True;
      // devuelve posición dónde ha encontrado la subcadena
      Pos := PosIni - j;
      // Salir
      Exit;
    end;
    // buscamos al siguiente carácter
    Inc (PosIni);
  end;
end;


// Recupera un valor almacenado...
function RestoreOptionValue(AIniFilePath:string;
                            AName, ADefault:string):String; overload;
begin
  with TiniFile.Create(AIniFilePath) do
  try
    Result := ReadString(OPTION_SECTION, AName, Adefault);
  finally
    Free;
  end;
end;

// Guarda un array de valores en el fichero de configuracion
procedure SaveOptionValues(AIniFilePath:string;
                           AName, AValue:array of String); overload;
var
  i: Integer;
begin
  with TIniFile.Create(AIniFilePath) do
  try
    for i := 0 to (Length(AName) - 1) do begin
      WriteString(OPTION_SECTION, AName[i], AValue[i]);
  end;
  finally
    Free;
  end;
end;

// Devuelve el nombre del fichero de configuracion
function ConfigFilePath():string;
begin
  Result := ChangeFileExt(Application.ExeName, CONFIG_EXT);
end;

// Recuperar la posicion de las ventanas
procedure RestoreSize(AForm:TForm; NameByClass:string=STR_EMPTY);
var
  i: Integer;
  Str, path: String;
begin
  // Utilizar el ClassName?
  if (NameByClass <> STR_EMPTY) then begin
    Str := NameByClass;
  end
  else begin
    Str:= AForm.Name;
  end;

  path := ConfigFilePath();
  
  // Leemos la posicion
  i := RestoreOptionValue(Path, Str + '_Width',-1);
  // es correcto?
  if (i <> -1 ) then begin
    AForm.Width := i;
  end;
  // Leemos la posicion
  i := RestoreOptionValue(Path, Str + '_Height',-1);
  // es correcto?
  if (i <> -1 ) then begin
    AForm.Height := i;
  end;
end;

// Guarda la posicion de las ventanas en disco.
procedure SaveSize(AForm:TForm; NameByClass:string=STR_EMPTY);
var
  path, Str: String;
begin
  // Utilizar el ClassName?
  if (NameByClass <> STR_EMPTY) then begin
    Str := NameByClass;
  end
  else begin
    Str:= AForm.Name;
  end;
  path := ConfigFilePath();
  // Escribimos el tamaño
  SaveOptionValues(path,
                   [Str + '_Width',Str + '_Height'], [IntToStr(AForm.Width),
                   IntToStr(AForm.Height)]);
end;


end.
