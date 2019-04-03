unit UTAboutProp;

interface

uses
  DesignIntf, DesignEditors;

type
  TAboutGlibWMIProp = class(TPropertyEditor)
  public
    procedure Edit(); override;
    function GetValue(): string; override;
    function GetAttributes(): TPropertyAttributes; override;
  end;

implementation

uses
  SysUtils, FormAbout, UConstantes;

procedure TAboutGlibWMIProp.Edit();
begin
  with TFAbout.Create(nil) do
  try
    ShowModal();
  finally
    Free();
  end;
end;

function TAboutGlibWMIProp.GetValue(): string;
begin
  result := Format(GLIBSI_LBL,[GLIBSI_VERSION]);
  result := GLIBSI_VERSION;
end;

function TAboutGlibWMIProp.GetAttributes(): TPropertyAttributes;
begin
  result := [paDialog,paReadOnly];
end;

end.
