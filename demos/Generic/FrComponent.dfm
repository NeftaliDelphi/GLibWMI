object FrameComponent: TFrameComponent
  Left = 0
  Top = 0
  Width = 502
  Height = 59
  Color = clTeal
  ParentColor = False
  TabOrder = 0
  OnResize = FrameResize
  DesignSize = (
    502
    59)
  object Shape1: TShape
    Left = 9
    Top = 7
    Width = 483
    Height = 51
    Anchors = [akLeft, akTop, akRight, akBottom]
    Brush.Color = clGray
    Enabled = False
    Pen.Color = clSilver
    Pen.Style = psClear
    Shape = stRoundRect
  end
  object Shape2: TShape
    Left = 13
    Top = 3
    Width = 482
    Height = 51
    Anchors = [akLeft, akTop, akRight, akBottom]
    Shape = stRoundRect
    OnMouseDown = Shape2MouseDown
  end
  object imgComponent: TImage
    Left = 22
    Top = 13
    Width = 32
    Height = 32
    Stretch = True
    Transparent = True
    OnMouseDown = Shape2MouseDown
  end
  object lblName: TLabel
    Left = 72
    Top = 5
    Width = 144
    Height = 20
    Caption = 'Component Name'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    OnMouseDown = Shape2MouseDown
  end
  object Label1: TLabel
    Left = 72
    Top = 24
    Width = 405
    Height = 26
    Anchors = [akLeft, akTop, akRight]
    AutoSize = False
    Caption = 'Descripci'#243'n del componente'#13#10'Pulsar'
    Transparent = True
    WordWrap = True
    OnMouseDown = Shape2MouseDown
  end
end
