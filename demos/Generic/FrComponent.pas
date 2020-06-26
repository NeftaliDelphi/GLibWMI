unit FrComponent;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls;

type
  TFrameComponent = class(TFrame)
    Shape1: TShape;
    Shape2: TShape;
    imgComponent: TImage;
    lblName: TLabel;
    Label1: TLabel;
    procedure Shape2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FrameResize(Sender: TObject);
  private
    FFrComponent: TComponent;
    FOnSelect: TNotifyEvent;
    FCompProps: TPersistent;
    { Private declarations }
  public
    procedure DisableColor();
    function GetComponent():TPersistent;

    procedure SetComponentProp(AComp:TComponent; AProps:TPersistent);

    procedure Collapse();
    procedure Expand();

    // Componente asociado al FRAME
    property FrComponent:TComponent read FFrComponent write FFrComponent;
    property CompProps:TPersistent read FCompProps write FCompProps;
  published
    property OnSelect:TNotifyEvent read FOnSelect write FOnSelect; 
  end;

implementation

{$R *.dfm}

procedure TFrameComponent.DisableColor;
begin
  Shape2.Brush.Color := clWhite;
end;

function TFrameComponent.GetComponent(): TPersistent;
begin
  // en los derivados;
  Result := Self.FFrComponent;
end;

procedure TFrameComponent.Shape2MouseDown(Sender: TObject;
    Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  TShape(Shape2).Brush.Color := clSkyBlue;

  // Asignado el evento?
  if Assigned(Self.FOnSelect) then begin
    Self.OnSelect(Self);
  end;
end;

procedure TFrameComponent.FrameResize(Sender: TObject);
begin

  // No está en diseño?  (diferenciar)
  if not (csDesigning in Self.ComponentState) then begin
    Self.Color := clBtnFace;

    // Hiint
    Self.Hint := Label1.Caption;
    lblName.Hint := Label1.Caption;
    Self.ShowHint := true;
  end;

end;

procedure TFrameComponent.SetComponentProp(AComp: TComponent;
                                           AProps: TPersistent);
begin
  Self.FrComponent := AComp;
  Self.CompProps := AProps;
end;

procedure TFrameComponent.Collapse;
begin

  Self.Height := 39;
  imgComponent.Top := 8;
  imgComponent.Width := 22;
  imgComponent.Height := 22;
  Shape1.Height := 32;
  Shape2.Height := 32;
  Label1.Visible := False;

end;

procedure TFrameComponent.Expand;
begin
  Self.Height := 59;
  imgComponent.Top := 13;
  imgComponent.Width := 32;
  imgComponent.Height := 32;
  Shape1.Height := 51;
  Shape2.Height := 51;
  Label1.Visible := True;

end;

end.

