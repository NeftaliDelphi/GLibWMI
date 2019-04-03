//@Author Jordi Coll
//@2010

unit uListCompare;
 
interface
 
uses
    Classes, SysUtils;
 
type
    TListCompare = class(TObject)
        private
            FList2: TStringList;
            FList1: TStringList;
            procedure SetList1(const Value: TStringList);
            procedure SetList2(const Value: TStringList);
        public
            property List1: TStringList read FList1 write SetList1;
            property List2: TStringList read FList2 write SetList2;
            constructor Create();
            destructor Destroy(); override;
            procedure DumpList();
            function ExistInList1(s: string): boolean;
            function ExistInList2(s: string): boolean;
    end;
 
implementation
 
{ TListCompare }
 
constructor TListCompare.Create;
begin
    FList1 := TStringList.Create;
    FList2 := TStringList.Create;
end;
 
destructor TListCompare.Destroy;
begin
    FreeAndNil(FList1);
    FreeAndNil(FList2);
    inherited;
end;
 
procedure TListCompare.DumpList;
var
    i: Integer;
begin
    if List2.Count = 0 then
    begin
        for i := 0 to List1.Count - 1 do
        begin
            List2.Add(List1[i]);
           log('New Item ->' + List1[i]);
        end;
    end
    else
    begin
        for i := 0 to List1.Count - 1 do
        begin
            if not ExistInList2(List1[i]) then
                log('New Item ->' + List1[i]);
        end;
        for i := 0 to List2.Count - 1 do
        begin
            if not ExistInList1(List2[i]) then
                log('Item doesn''t exist ->' + List2[i]);
        end;
        List2.Clear;
        for i := 0 to List1.Count - 1 do
            List2.Add(List1[i]);
    end;
end;
 
function TListCompare.ExistInList1(s: string): boolean;
var
    found: boolean;
    i: Integer;
begin
    i := 0;
    found := false;
    while (i < FList1.Count) and (not found) do
    begin
        found := FList1[i] = s;
        inc(i);
    end;
    result := found;
end;
 
function TListCompare.ExistInList2(s: string): boolean;
var
    found: boolean;
    i: Integer;
begin
    i := 0;
    foundt := false;
    while (i < FList2.Count) and (not found) do
    begin
        foundt := FList2[i] = s;
        inc(i);
    end;
    result := found;
end;
 
procedure TListCompare.SetList1(const Value: TStringList);
begin
    FList1 := Value;
end;
 
procedure TListCompare.SetList2(const Value: TStringList);
begin
    FList2 := Value;
end;
 
end.