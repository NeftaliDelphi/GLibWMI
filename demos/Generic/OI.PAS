{*******************************************************}
{                                                       }
{         MiTeC Runtime Object Inspector Component      }
{                                                       }
{                                                       }
{         version 2.0 for Delphi 5,6,7,2005,2006        }
{                                                       }
{          Copyright © 1999-2007 Michal Mutl            }
{                                                       }
{*******************************************************}

unit OI;

interface

{$I .\..\package\jedi.inc}

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, TypInfo;

type
  TPropInfoList = class(TObject)
  private
    FList: PPropList;
    FCount: Integer;
    FSize: Integer;
    function Get(Index: Integer): PPropInfo;
  public
    constructor Create(AObject: TObject; Filter: TTypeKinds);
    destructor Destroy; override;
    function Contains(P: PPropInfo): Boolean;
    function Find(const AName: string): PPropInfo;
    procedure Delete(Index: Integer);
    procedure Intersect(List: TPropInfoList);
    property Count: Integer read FCount;
    property Items[Index: Integer]: PPropInfo read Get; default;
  end;

  TExceptionEvent = procedure(sender :tobject; e :exception) of object;

  TMObjectInspector = class(TComponent)
  private
    FOnException :texceptionevent;
    FObject: TObject;
    FCompName :string;
    FAbout,FCompType :string;
    FFilter: TTypeKinds;
    FPropList : TPropInfoList;
    FProperties, FTypes, FValues, FDecl, s, sl :TStringList;
    FOwner :tcomponent;
    FKinds: TStringList;
    //FRecurse: boolean;
    function EvalIntegerProperty(PropInfo: PPropInfo): string;
    function EvalInt64Property(PropInfo: PPropInfo): string;
    function EvalCharProperty(PropInfo: PPropInfo): string;
    function EvalEnumProperty(PropInfo: PPropInfo): string;
    function EvalFloatProperty(PropInfo: PPropInfo): string;
    function EvalStringProperty(PropInfo: PPropInfo): string;
    function EvalLStringProperty(PropInfo: PPropInfo): string;
    function EvalWCharProperty(PropInfo: PPropInfo): string;
    function EvalVariantProperty(PropInfo: PPropInfo): string;
    function EvalSetProperty(PropInfo: PPropInfo): string;
    function EvalMethodProperty(PropInfo: PPropInfo): string;
    procedure EvalStringsProperty(PropInfo: PPropInfo; var s: tstringlist);
    procedure EvalClassProperty(PropInfo: PPropInfo; var s: tstringlist);
    procedure EvalAnyProperty(PropInfo: PPropInfo; var s: tstringlist);

    function GetMethodDeclaration(PropInfo: PPropInfo) :string;

    procedure ModifyIntegerProperty(const S: string; PropInfo: PPropInfo);
    procedure ModifyCharProperty(const S: string; PropInfo: PPropInfo);
    procedure ModifyEnumProperty(const S: string; PropInfo: PPropInfo);
    procedure ModifyFloatProperty(const S: string; PropInfo: PPropInfo);
    procedure ModifyStringProperty(const S: string; PropInfo: PPropInfo);
    procedure ModifyLStringProperty(const S: string; PropInfo: PPropInfo);
    procedure ModifyWCharProperty(const S: string; PropInfo: PPropInfo);
    procedure ModifyVariantProperty(const S: string; PropInfo: PPropInfo);
    procedure ModifySetProperty(const S: string; PropInfo: PPropInfo);
    procedure ModifyStringsProperty(const S: tstringlist; PropInfo: PPropInfo);
    procedure ModifyClassProperty(const S: tstringlist; PropInfo: PPropInfo);
    procedure ModifyAnyProperty(const S: tstringlist; PropInfo: PPropInfo); overload;
    // procedure ModifyAnyProperty(const S: string; PropInfo: PPropInfo); overload;
    procedure ModifyMethodProperty(AMethod: TMethod; PropInfo: PPropInfo);

    function FindComponentEx(Componentname :string) :tcomponent;
    function GetComp: TComponent;
    procedure SetComp(const Value: TComponent);
    //procedure SetRecurse(const Value: boolean);
    procedure SetObject(value :tobject);
    procedure SetFilter(value :ttypekinds);
    procedure SetNone(value :string);
    procedure SetOnExc(value :texceptionevent);
  public
    constructor Create(AOwner:TComponent); override;
    destructor Destroy; override;
    procedure GetPropertyValue(Propertyname :string; var sl :tstringlist);
    function GetPropertyType(Propertyname :string) :string;
    function SetPropertyValue(Propertyname :string; sl :tstringlist) :Boolean; overload;
    function SetPropertyValue(Propertyname :string; value :string) :Boolean; overload;
    function SetEventValue(Eventname :string; M: TMethod) :Boolean;
    function GetProperty(Propertyname :string) :PPropInfo;
    function GetMethodDecl(Propertyname :string) :string;
    property Obj: TObject read FObject write SetObject;
  published
    property About :string read fabout write setnone;
    property Filter: TTypeKinds read FFilter write SetFilter;
    property Component: TComponent read GetComp write SetComp;
    property Properties :TStringList read FProperties;
    property Types :TStringList read FTypes;
    property Values :TStringList read FValues;
    property Kinds :TStringList read FKinds;
    property Declarations :TStringList read FDecl;
    property ObjectType :string read FCompType;
    property ObjectName :string read FCompName;
    property OnException :TExceptionEvent read FOnException write SetOnExc;
  end;

procedure Register;

const
  aboutinfo = 'MiTeC Object Inspector 2.0 - Copyright © 1997-2007 Michal Mutl';

  CursorCount = 22;
  CursorNames :array[0..CursorCount-1] of string = ('crDefault',
                                                 'crNone',
                                                 'crArrow',
                                                 'crCross',
                                                 'crIBeam',
                                                 'crSize',
                                                 'crSizeNESW',
                                                 'crSizeNS',
                                                 'crSizeNWSE',
                                                 'crSizeWE',
                                                 'crUpArrow',
                                                 'crHourGlass',
                                                 'crDrag',
                                                 'crNoDrop',
                                                 'crHSplit',
                                                 'crVSplit',
                                                 'crMultiDrag',
                                                 'crSQLWait',
                                                 'crNo',
                                                 'crAppStart',
                                                 'crHelp',
                                                 'crHandPoint');

implementation

type
  TCardinalSet = set of 0..SizeOf(Cardinal)*8-1;
  TCharSet = set of char;

function CopyStr(buffer :array of char) :string;
var
  i,l :integer;
begin
  l:=sizeof(buffer);
  result:='';
  for i:=0 to l-1 do
    if ord(buffer[i])=0 then
      result:=result+#255
    else
      result:=result+buffer[i];
end;

function GetEnumName(TypeInfo :PTypeInfo; Value :Integer) :string;
begin
  Result:=TypInfo.GetEnumName(TypeInfo,Value);
end;

function GetPropType(PropInfo :PPropInfo) :PTypeInfo;
begin
  Result:=PropInfo^.PropType^;
end;

function WordCount(const S :string; WordDelims :TCharSet): Integer;
var
  SLen, I: Cardinal;
begin
  Result := 0;
  I := 1;
  SLen := Length(S);
  while I <= SLen do begin
    {$IFDEF DELPHIX_TOKYO_UP}
    while (I <= SLen) and CharInSet(S[I], WordDelims) do Inc(I);
    {$ELSE}
    while (I <= SLen) and (S[I] in WordDelims) do Inc(I);
    {$ENDIF}
    if I <= SLen then Inc(Result);

    {$IFDEF DELPHIX_TOKYO_UP}
    while (I <= SLen) and not CharInSet(S[I], WordDelims) do Inc(I);
    {$ELSE}
    while (I <= SLen) and not(S[I] in WordDelims) do Inc(I);
    {$ENDIF}

  end;
end;

function WordPosition(const N: Integer; const S: string; WordDelims: TCharSet): Integer;
var
  Count, I: integer;
begin
  Count := 0;
  I := 1;
  Result := 0;
  while (I <= Length(S)) and (Count <> N) do begin
    {$IFDEF DELPHIX_TOKYO_UP}
    while (I <= Length(S)) and CharInSet(S[I], WordDelims) do Inc(I);
    {$ELSE}
    while (I <= Length(S)) and (S[I] in WordDelims) do Inc(I);
    {$ENDIF}


    if I <= Length(S) then Inc(Count);
    if Count <> N then

    {$IFDEF DELPHIX_TOKYO_UP}
      while (I <= Length(S)) and not CharInSet(S[I], WordDelims) do Inc(I)
    {$ELSE}
      while (I <= Length(S)) and not (S[I] in WordDelims) do Inc(I)
    {$ENDIF}

    else Result := I;
  end;
end;

function ExtractWord(N: Integer; const S: string; WordDelims: TCharSet): string;
var
  I: Word;
  Len: Integer;
begin
  Len := 0;
  I := WordPosition(N, S, WordDelims);
  if I <> 0 then
    {$IFDEF DELPHIX_TOKYO_UP}
    while (I <= Length(S)) and not CharInSet(S[I], WordDelims) do begin
    {$ELSE}
    while (I <= Length(S)) and not(S[I] in WordDelims) do begin
    {$ENDIF}

      Inc(Len);
      SetLength(Result, Len);
      Result[Len] := S[I];
      Inc(I);
    end;
  SetLength(Result, Len);
end;

{ TPropInfoList }

constructor TPropInfoList.Create;
begin
  FCount:=GetPropList(AObject.ClassInfo,Filter,nil);
  FSize:=FCount*SizeOf(Pointer);
  GetMem(FList,FSize);
  GetPropList(AObject.ClassInfo,Filter,FList);
end;

destructor TPropInfoList.Destroy;
begin
  if FList <> nil then FreeMem(FList, FSize);
end;

function TPropInfoList.Contains;
var
  I: Integer;
begin
  for I := 0 to FCount - 1 do
    with FList^[I]^ do
      if (PropType = P^.PropType) and (CompareText(string(Name), string(P^.Name)) = 0) then
      begin
        Result := True;
        Exit;
      end;
  Result := False;
end;

function TPropInfoList.Find;
var
  I: Integer;
begin
  for I := 0 to FCount - 1 do
    with FList^[I]^ do
      if (CompareText(string(Name), string(AName)) = 0) then
      begin
        Result := FList^[I];
        Exit;
      end;
  Result := nil;
end;

procedure TPropInfoList.Delete;
begin
  Dec(FCount);
  if Index < FCount then Move(FList^[Index + 1], FList^[Index],
    (FCount - Index) * SizeOf(Pointer));
end;

function TPropInfoList.Get(Index: Integer): PPropInfo;
begin
  Result := FList^[Index];
end;

procedure TPropInfoList.Intersect;
var
  I: Integer;
begin
  for I := FCount - 1 downto 0 do
    if not List.Contains(FList^[I]) then Delete(I);
end;

{ TMObjectInspector }

constructor TMObjectInspector.Create;
begin
  inherited Create(aowner);
  ffilter:=tkany;
  fobject:=nil;
  fcompname:='';
  fcomptype:='';
  fproperties:=tstringlist.create;
  ftypes:=tstringlist.create;
  fvalues:=tstringlist.create;
  fkinds:=tstringlist.create;
  fdecl:=tstringlist.create;
  s:=tstringlist.create;
  sl:=tstringlist.Create;
  fabout:=aboutinfo;
  fonexception:=nil;
end;

destructor TMObjectInspector.Destroy;
begin
  fproperties.Free;
  ftypes.Free;
  fvalues.Free;
  fkinds.Free;
  fdecl.Free;
  s.Free;
  sl.Free;
  inherited destroy;
end;

procedure TMObjectInspector.EvalAnyProperty;
begin
  if assigned(s) then begin
    s.clear;
    if PropInfo <> nil then begin
      try
        case PropInfo^.PropType^.Kind of
          tkInteger: s.add(EvalIntegerProperty(PropInfo));
          tkInt64: s.add(EvalInt64Property(PropInfo));
          tkChar: s.add(EvalCharProperty(PropInfo));
          tkEnumeration: s.add(EvalEnumProperty(PropInfo));
          tkFloat: s.add(EvalFloatProperty(PropInfo));
          tkLString: s.add(EvalLStringProperty(PropInfo));
          tkWChar: s.add(EvalWCharProperty(PropInfo));
          tkVariant: s.add(EvalVariantProperty(PropInfo));
          tkString, tkUstring, tkWString: s.add(EvalStringProperty(PropInfo));

          //+G  Added type
          {$IFNDEF VER140}
//          tkUString: s.add(EvalStringProperty(PropInfo));
          {$ENDIF}

          tkSet: s.add(EvalSetProperty(PropInfo));
          tkMethod: s.add(EvalMethodProperty(PropInfo));
          tkclass: EvalclassProperty(PropInfo,s);
          else Exit;
        end;
      except
      end;
    end;
  end;
end;

function TMObjectInspector.EvalIntegerProperty;
begin
  Result := IntToStr(GetOrdProp(FObject, PropInfo));
end;

function TMObjectInspector.EvalInt64Property;
begin
  Result := IntToStr(GetInt64Prop(FObject, PropInfo));
end;


function TMObjectInspector.EvalCharProperty;
begin
  Result := Char(GetOrdProp(FObject, PropInfo));
end;

function TMObjectInspector.EvalEnumProperty;
begin
  Result := GetEnumName(GetPropType(PropInfo), GetOrdProp(FObject, PropInfo));
end;

function TMObjectInspector.EvalFloatProperty;
const
  Precisions: array[TFloatType] of Integer = (7, 15, 18, 18, 19);
begin
  Result := FloatToStrF(GetFloatProp(FObject, PropInfo), ffGeneral,
    Precisions[GetTypeData(GetPropType(PropInfo))^.FloatType], 0);
end;

function TMObjectInspector.EvalStringProperty;
begin
  Result := GetStrProp(FObject, PropInfo);
end;

function TMObjectInspector.EvalLStringProperty;
begin
  Result := GetStrProp(FObject, PropInfo);
end;

function TMObjectInspector.EvalWCharProperty;
begin
  Result := Char(GetOrdProp(FObject, PropInfo));
end;

function TMObjectInspector.EvalVariantProperty;
begin
  Result := GetVariantProp(FObject, PropInfo);
end;

function TMObjectInspector.EvalMethodProperty;
var
  m :tmethod;
begin
  m:=GetMethodProp(FObject, PropInfo);
  if assigned(m.data) and assigned(m.code) then
    result:='Assigned'
  else
    result:='';  
end;

function TMObjectInspector.EvalSetProperty;
var
  TypeInfo: PTypeInfo;
  W: Cardinal;
  I: Integer;
begin
  Result := '[';
  W := GetOrdProp(FObject, PropInfo);
  TypeInfo := GetTypeData(GetPropType(PropInfo))^.CompType^;
  for I := 0 to 15 do
    if I in TCardinalSet(W) then
    begin
      if Length(Result) <> 1 then Result := Result + ',';
      Result := Result + GetEnumName(TypeInfo, I);
    end;
  Result := Result + ']';
end;

procedure TMObjectInspector.EvalStringsProperty;
var
  List: TObject;
begin
  if assigned(s) then begin
    s.clear;
    List := TObject(GetOrdProp(Self.FObject, PropInfo));
    if (List is TStrings) and (TStrings(List).Count > 0) then
      s.addstrings(TStrings(List));
  end;
end;

procedure TMObjectInspector.EvalClassProperty;
var
  Obj: TObject;
begin
  if assigned(s) then begin
    s.clear;
    Obj := TObject(GetOrdProp(Self.FObject, PropInfo));
    if assigned(Obj) and (Obj is TStrings) then
      evalstringsproperty(propinfo,s)
    else begin
      if obj is tcomponent then begin
        s.add(tcomponent(obj).name);
        if tcomponent(obj).owner.name<>fowner.name then
          s[0]:=tcomponent(obj).owner.name+'.'+s[0];
      end else
        if obj is tpersistent then
          s.add('('+tpersistent(obj).getnamepath+')');
      if obj is tcollection then begin
        s.clear;
        s.add('('+obj.classname+')');
      end;
    end;
  end;
end;

function TMObjectInspector.GetMethodDeclaration;
var
  t :ptypedata;
  i :integer;
  s,l :String;
  f :char;

  function GetParPre(f :char) :string;
  begin
    case ord(f) of
      1: result:='var ';
      2,18,22: result:='const ';
      else
        result:='';
    end;
  end;

  function GetParPost(f :char) :string;
  begin
    case ord(f) of
      20: result:='array of ';
      else
        result:='';
    end;
  end;

begin
  result:='';
  if propinfo^.proptype^.kind=tkmethod then begin
    t:=gettypedata(propinfo^.proptype^);
    if t^.methodkind in [mkprocedure,mksafeprocedure] then
      result:='procedure '
    else
      result:='function ';
    result:=result+string(propinfo^.name);
    s:=string((t^.paramlist));
    f:=s[1];
    s:=copy(s,2,length(s));
    l:='';
    i:=1;
    while i<=t^.paramcount do begin
      if (i>1) then
        l:=l+'; ';
      l:=l+getparpre(f)+copy(s,2,ord(s[1]));
      delete(s,1,ord(s[1])+1);
      if s[1]<>#255 then begin
        l:=l+' :'+getparpost(f)+copy(s,2,ord(s[1]));
        delete(s,1,ord(s[1])+1);
        if (i<t^.paramcount) then begin
          f:=s[1];
          delete(s,1,1);
        end;
      end else begin
        f:=s[2];
        delete(s,1,2);
      end;
      inc(i);
    end;
    if l<>'' then
      l:=' ('+l+')';
    if t^.methodkind in [mkfunction,mksafefunction] then
      l:=l+' :'+copy(s,2,ord(s[1]));
    result:=result+l;
  end;
end;

procedure TMObjectInspector.ModifyIntegerProperty;
begin
  if s<>'' then
    SetOrdProp(FObject, PropInfo, StrToIntDef(S, 0));
end;

{
procedure TMObjectInspector.ModifyAnyProperty(const S: string;
  PropInfo: PPropInfo);
begin
  try
    if PropInfo <> nil then begin
      case PropInfo^.PropType^.Kind of
        tkInteger: ModifyIntegerProperty(S, PropInfo);
        tkChar: ModifyCharProperty(S, PropInfo);
        tkEnumeration: ModifyEnumProperty(S, PropInfo);
        tkFloat: ModifyFloatProperty(S, PropInfo);
        tkWChar: ModifyWCharProperty(S, PropInfo);
        tkLString: ModifyLStringProperty(S, PropInfo);
        tkVariant: ModifyVariantProperty(S, PropInfo);
        tkString: ModifyStringProperty(S, PropInfo);
        tkSet: ModifySetProperty(S, PropInfo);
        tkMethod:
      end;
    end;
  except
    on e:exception do begin
      if assigned(fonexception) then
        fonexception(self,e);
    end;
  end;
end;
}

procedure TMObjectInspector.ModifyCharProperty;
begin
  SetOrdProp(FObject, PropInfo, Integer(S[1]));
end;

procedure TMObjectInspector.ModifyEnumProperty;
var
  I: Integer;
  EnumType: PTypeInfo;
begin
  EnumType := GetPropType(PropInfo);
  with GetTypeData(EnumType)^ do
    if maxvalue<256 then begin
      for I:=MinValue to MaxValue do
        if CompareText(GetEnumName(EnumType, I), S) = 0 then begin
          SetOrdProp(FObject, PropInfo, I);
          Exit;
        end
    end else begin
      for I:=0 to 255 do
        if CompareText(GetEnumName(EnumType, I), S) = 0 then begin
          SetOrdProp(FObject, PropInfo, I);
          Exit;
        end;
    end;
end;

procedure TMObjectInspector.ModifyFloatProperty;
begin
  if s<>'' then
    SetFloatProp(FObject, PropInfo, StrToFloat(S));
end;

procedure TMObjectInspector.ModifyLStringProperty;
begin
  SetStrProp(FObject, PropInfo, S);
end;

procedure TMObjectInspector.ModifyWCharProperty;
begin
  SetOrdProp(FObject, PropInfo, Longint(S[1]));
end;

procedure TMObjectInspector.ModifyVariantProperty;
begin
  SetVariantProp(FObject, PropInfo, S);
end;

procedure TMObjectInspector.ModifyStringProperty;
begin
  SetStrProp(FObject, PropInfo, S);
end;

procedure TMObjectInspector.ModifySetProperty;
const
  Delims = [' ', ',', '[', ']'];
var
  TypeInfo: PTypeInfo;
  W: Cardinal;
  I, N: Integer;
  Count: Integer;
  EnumName: string;
begin
  W := 0;
  TypeInfo := GetTypeData(GetPropType(PropInfo))^.CompType^;
  Count := WordCount(S, Delims);
  for N := 1 to Count do begin
    EnumName := ExtractWord(N, S, Delims);
    try
      I := GetEnumValue(TypeInfo, EnumName);
      if I >= 0 then Include(TCardinalSet(W), I);
    except

    end;
  end;
  SetOrdProp(FObject, PropInfo, W);
end;

procedure TMObjectInspector.ModifyStringsProperty;
var
  List: TObject;
begin
  List := TObject(GetOrdProp(Self.FObject, PropInfo));
  if (List is TStrings) then begin
    if s.count > 0 then begin
        TStrings(List).Assign(s);
    end;
  end;
end;

procedure TMObjectInspector.ModifyClassProperty;
var
  Obj, New: TObject;
  t :ptypedata;
begin
  Obj:=TObject(GetOrdProp(Self.FObject, PropInfo));
  if assigned(Obj) and (Obj is TStrings) then
    ModifyStringsProperty(S,PropInfo)
  else begin
    if s[0]='' then
      new:=nil
    else
      new:=findcomponentex(s[0]);
    t:=gettypedata(propinfo^.PropType^);
    if assigned(new) and (new is t^.classtype) then
      setordprop(self.fobject,propinfo,longint(new))
    else
      setordprop(self.fobject,propinfo,longint(nil));
  end;
end;

procedure TMObjectInspector.ModifyAnyProperty(const S: tstringlist; PropInfo: PPropInfo);
begin
  try
    if PropInfo <> nil then begin
      case PropInfo^.PropType^.Kind of
        tkInteger: ModifyIntegerProperty(S[0], PropInfo);
        tkChar: ModifyCharProperty(S[0], PropInfo);
        tkEnumeration: ModifyEnumProperty(S[0], PropInfo);
        tkFloat: ModifyFloatProperty(S[0], PropInfo);
        tkWChar: ModifyWCharProperty(S[0], PropInfo);
        tkLString: ModifyLStringProperty(S[0], PropInfo);
        tkVariant: ModifyVariantProperty(S[0], PropInfo);
        tkString: ModifyStringProperty(S[0], PropInfo);
        tkSet: ModifySetProperty(S[0], PropInfo);
        tkClass: ModifyClassProperty(S, PropInfo);
        tkMethod:
      end;
    end;
  except
    on e:exception do begin
      if assigned(fonexception) then
        fonexception(self,e);
    end;
  end;
end;

function TMObjectInspector.FindComponentEx;
var
  p :integer;
  ownercomp :tcomponent;
begin
  p:=pos('.',componentname);
  if p>0 then begin
    componentname:=copy(componentname,p+1,length(componentname));
    ownercomp:=application.findcomponent(copy(componentname,1,p-1));
  end else begin
    ownercomp:=fowner;
  end;
  result:=ownercomp.findcomponent(componentname);
end;

procedure TMObjectInspector.SetObject;
var
  i :integer;
begin
  fobject:=value;
  if fobject is tcomponent then begin
    if tcomponent(fobject).owner is tapplication then
      fowner:=tcomponent(fobject)
    else
      fowner:=tcomponent(fobject).owner;
  end else
    fowner:=self.owner;
  if assigned(fobject) then begin
    if fobject is tcomponent then
      fcompname:=tcomponent(fobject).name
    else
      fcompname:='';
    fcomptype:=fobject.classname;
    if assigned(fproplist) then
      fproplist.free;
    fProplist:=TPropInfoList.Create(fObject,ffilter);
    fproperties.clear;
    ftypes.clear;
    fvalues.clear;
    fkinds.clear;
    fdecl.clear;
    i:=0;
    repeat
      if fPropList.count>0 then
        evalanyproperty(fPropList.items[I],s)
      else
        break;
      if s.count>0 then begin
        if s.count>1 then
          fvalues.add('(TStrings)')
        else
          fvalues.add(s[0]);
        fproperties.add(string(fPropList.items[I]^.name));
        ftypes.add(String(fPropList.items[I]^.proptype^.name));
        fkinds.Add(IntToStr(Integer(fPropList.items[I]^.proptype^.Kind)));
        if fPropList.items[I]^.proptype^.kind=tkmethod then
          fdecl.add(getmethoddeclaration(fPropList.items[I]));
      end;
      inc(i);
    until not assigned(fPropList.items[I]) or (i>fPropList.Count - 1);
  end;
end;

procedure TMObjectInspector.SetFilter;
begin
  ffilter:=value;
end;

function TMObjectInspector.SetPropertyValue(Propertyname :string; sl :tstringlist) :Boolean;
var
  p :ppropinfo;
begin
  result:=false;
  if assigned(sl) then begin
    p:=fproplist.find(propertyname);
    if assigned(p) and (sl.count>0) then begin
      modifyanyproperty(sl,p);
      result:=true;
    end;
  end;
end;

procedure TMObjectInspector.SetNone;
begin
end;

procedure TMObjectInspector.SetOnExc;
begin
  fonexception:=value;
end;

function TMObjectInspector.SetPropertyValue(Propertyname: string;
  value: string): Boolean;
var
  p :ppropinfo;
begin
  result:=false;
  p:=fproplist.find(propertyname);
  if assigned(p) then begin
    modifystringproperty(value,p);
    result:=true;
  end;
end;

{
procedure TMObjectInspector.SetRecurse(const Value: boolean);
begin
  FRecurse:=Value;
  Obj:=FObject;
end;
}

procedure TMObjectInspector.GetPropertyValue;
var
  p :ppropinfo;
begin
  p:=fproplist.find(propertyname);
  if assigned(p) then
    evalanyproperty(p,sl);
end;

function TMObjectInspector.GetPropertyType;
var
  p :ppropinfo;
begin
  p:=fproplist.find(propertyname);
  if assigned(p) then
    result:=string(p^.proptype^.name)
  else
    result:='';
end;

function TMObjectInspector.GetComp: TComponent;
begin
  if FObject is TComponent then
    Result:=TComponent(FObject)
  else
    Result:=nil;
end;

function TMObjectInspector.GetMethodDecl;
begin
  result:=getmethoddeclaration(getproperty(propertyname));
end;

function TMObjectInspector.GetProperty;
begin
  result:=fproplist.find(propertyname);
end;


procedure Register;
begin
  RegisterComponents('MiTeC', [TMObjectInspector]);
end;

procedure TMObjectInspector.ModifyMethodProperty;
//var
  // Obj, New: TObject;
  // t :ptypedata;
begin
  // Obj:=TObject(GetOrdProp(Self.FObject, PropInfo));
  gettypedata(propinfo^.PropType^);
  SetMethodProp(self.fobject,propinfo,AMethod);
end;

procedure TMObjectInspector.SetComp(const Value: TComponent);
begin
  Obj:=Value;
end;

function TMObjectInspector.SetEventValue;
var
  p :ppropinfo;
begin
  result:=false;
  p:=fproplist.find(eventname);
  if assigned(p) then begin
    modifymethodproperty(m,p);
    result:=true;
  end;
end;

initialization
  RegisterClass(TMObjectInspector);
finalization
  UnRegisterClass(TMObjectInspector);
end.
