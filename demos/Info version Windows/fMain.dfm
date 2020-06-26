object FormMain: TFormMain
  Left = 595
  Top = 267
  Width = 432
  Height = 414
  Caption = 'Informaci'#243'n del sistema'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object mmInfo: TMemo
    Left = 0
    Top = 0
    Width = 424
    Height = 383
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 0
  end
  object OSInfo: TOperatingSystemInfo
    Host = '.'
    Active = False
    OnAfterActivate = OSInfoAfterActivate
    Left = 112
    Top = 56
  end
end
