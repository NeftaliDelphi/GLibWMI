object frm_ProgressForm: Tfrm_ProgressForm
  Left = 500
  Top = 283
  BorderIcons = []
  BorderStyle = bsToolWindow
  Caption = 'frm_ProgressForm'
  ClientHeight = 61
  ClientWidth = 186
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object ProgressLabel: TLabel
    Left = 8
    Top = 8
    Width = 67
    Height = 13
    Caption = 'ProgressLabel'
  end
  object ProgressBar: TProgressBar
    Left = 8
    Top = 32
    Width = 169
    Height = 16
    Min = 0
    Max = 100
    TabOrder = 0
  end
end
