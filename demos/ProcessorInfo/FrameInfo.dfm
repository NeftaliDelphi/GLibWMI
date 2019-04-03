object FrInfo: TFrInfo
  Left = 0
  Top = 0
  Width = 383
  Height = 547
  Color = clBtnFace
  ParentColor = False
  TabOrder = 0
  DesignSize = (
    383
    547)
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 41
    Height = 13
    Caption = 'Nombre:'
  end
  object Label2: TLabel
    Left = 16
    Top = 107
    Width = 55
    Height = 13
    Caption = 'Fabricante:'
  end
  object Label3: TLabel
    Left = 16
    Top = 37
    Width = 58
    Height = 13
    Caption = 'Descripci'#243'n:'
  end
  object Label4: TLabel
    Left = 16
    Top = 58
    Width = 30
    Height = 13
    Caption = 'T'#237'tulo:'
  end
  object Label5: TLabel
    Left = 16
    Top = 79
    Width = 64
    Height = 13
    Caption = 'Arquitectura:'
  end
  object Label6: TLabel
    Left = 16
    Top = 402
    Width = 37
    Height = 13
    Caption = 'PNP ID:'
  end
  object Label7: TLabel
    Left = 16
    Top = 331
    Width = 99
    Height = 13
    Caption = 'Creation Classname:'
  end
  object Label8: TLabel
    Left = 16
    Top = 352
    Width = 93
    Height = 13
    Caption = 'System Classname:'
  end
  object Label9: TLabel
    Left = 16
    Top = 373
    Width = 75
    Height = 13
    Caption = 'Creation Name:'
  end
  object Label11: TLabel
    Left = 16
    Top = 128
    Width = 39
    Height = 13
    Caption = 'Version:'
  end
  object Label15: TLabel
    Left = 16
    Top = 149
    Width = 68
    Height = 13
    Caption = 'Processor  ID:'
  end
  object Label16: TLabel
    Left = 200
    Top = 149
    Width = 70
    Height = 13
    Caption = 'Socket design:'
  end
  object Label17: TLabel
    Left = 16
    Top = 170
    Width = 62
    Height = 13
    Caption = 'Proc. Family:'
  end
  object Label18: TLabel
    Left = 16
    Top = 202
    Width = 65
    Height = 13
    Caption = 'Clock Speed: '
  end
  object Label19: TLabel
    Left = 192
    Top = 202
    Width = 81
    Height = 13
    Caption = 'Ext. Freq. Clock:'
  end
  object Label20: TLabel
    Left = 16
    Top = 223
    Width = 77
    Height = 13
    Caption = 'Max. Clock Spd:'
  end
  object Label21: TLabel
    Left = 16
    Top = 459
    Width = 25
    Height = 13
    Caption = 'Role:'
  end
  object Label22: TLabel
    Left = 16
    Top = 494
    Width = 35
    Height = 13
    Caption = 'Status:'
  end
  object Label23: TLabel
    Left = 208
    Top = 451
    Width = 85
    Height = 13
    Caption = 'Number of Cores:'
  end
  object Label24: TLabel
    Left = 208
    Top = 472
    Width = 113
    Height = 13
    Caption = 'Number of Logical Proc:'
  end
  object Label25: TLabel
    Left = 16
    Top = 522
    Width = 107
    Height = 13
    Caption = 'Power Manag. Capab:'
  end
  object Bevel1: TBevel
    Left = 17
    Top = 438
    Width = 346
    Height = 4
    Anchors = [akLeft, akTop, akRight]
  end
  object Label28: TLabel
    Left = 288
    Top = 494
    Width = 58
    Height = 13
    Caption = 'Status Info:'
  end
  object edtName: TEdit
    Left = 88
    Top = 13
    Width = 113
    Height = 19
    TabStop = False
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 0
  end
  object edtManufacturer: TEdit
    Left = 88
    Top = 104
    Width = 281
    Height = 19
    TabStop = False
    Anchors = [akLeft, akTop, akRight]
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 1
  end
  object edtDescription: TEdit
    Left = 88
    Top = 34
    Width = 282
    Height = 19
    TabStop = False
    Anchors = [akLeft, akTop, akRight]
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 2
  end
  object edtTitle: TEdit
    Left = 88
    Top = 55
    Width = 282
    Height = 19
    TabStop = False
    Anchors = [akLeft, akTop, akRight]
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 3
  end
  object edtArqAsString: TEdit
    Left = 128
    Top = 76
    Width = 242
    Height = 19
    TabStop = False
    Anchors = [akLeft, akTop, akRight]
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 4
  end
  object edtDeviceID: TEdit
    Left = 208
    Top = 13
    Width = 162
    Height = 19
    TabStop = False
    Anchors = [akLeft, akTop, akRight]
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 5
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 248
    Width = 169
    Height = 73
    Caption = ' L2 '
    TabOrder = 6
    object Label10: TLabel
      Left = 12
      Top = 18
      Width = 55
      Height = 13
      Caption = 'Cache size:'
    end
    object Label14: TLabel
      Left = 12
      Top = 42
      Width = 66
      Height = 13
      Caption = 'Cache speed:'
    end
    object edtCacheSize: TEdit
      Left = 86
      Top = 15
      Width = 73
      Height = 19
      TabStop = False
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
    end
    object edtCacheSpeed: TEdit
      Left = 86
      Top = 39
      Width = 73
      Height = 19
      TabStop = False
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 1
    end
  end
  object mmPNPDeviveID: TMemo
    Left = 88
    Top = 395
    Width = 282
    Height = 35
    TabStop = False
    Anchors = [akLeft, akTop, akRight]
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 7
  end
  object edtCreationCN: TEdit
    Left = 120
    Top = 328
    Width = 250
    Height = 19
    TabStop = False
    Anchors = [akLeft, akTop, akRight]
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 8
  end
  object edtSystemCN: TEdit
    Left = 120
    Top = 349
    Width = 250
    Height = 19
    TabStop = False
    Anchors = [akLeft, akTop, akRight]
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 9
  end
  object edtSystemName: TEdit
    Left = 120
    Top = 370
    Width = 250
    Height = 19
    TabStop = False
    Anchors = [akLeft, akTop, akRight]
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 10
  end
  object edtVersion: TEdit
    Left = 88
    Top = 125
    Width = 97
    Height = 19
    TabStop = False
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 11
  end
  object edtRevision: TEdit
    Left = 192
    Top = 125
    Width = 137
    Height = 19
    TabStop = False
    Anchors = [akLeft, akTop, akRight]
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 12
  end
  object edtArq: TEdit
    Left = 88
    Top = 76
    Width = 33
    Height = 19
    TabStop = False
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 13
  end
  object GroupBox2: TGroupBox
    Left = 200
    Top = 248
    Width = 169
    Height = 73
    Caption = ' L3 '
    TabOrder = 14
    object Label12: TLabel
      Left = 12
      Top = 18
      Width = 55
      Height = 13
      Caption = 'Cache size:'
    end
    object Label13: TLabel
      Left = 12
      Top = 42
      Width = 66
      Height = 13
      Caption = 'Cache speed:'
    end
    object edtCacheSizeL3: TEdit
      Left = 86
      Top = 15
      Width = 73
      Height = 19
      TabStop = False
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
    end
    object edtCacheSpeedL3: TEdit
      Left = 86
      Top = 39
      Width = 73
      Height = 19
      TabStop = False
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 1
    end
  end
  object edtProcessorID: TEdit
    Left = 88
    Top = 146
    Width = 97
    Height = 19
    TabStop = False
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 15
  end
  object edtSocket: TEdit
    Left = 277
    Top = 146
    Width = 92
    Height = 19
    TabStop = False
    Anchors = [akLeft, akTop, akRight]
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 16
  end
  object edtFamily: TEdit
    Left = 88
    Top = 167
    Width = 49
    Height = 19
    TabStop = False
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 17
  end
  object edtFamilyStr: TEdit
    Left = 144
    Top = 167
    Width = 225
    Height = 19
    TabStop = False
    Anchors = [akLeft, akTop, akRight]
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 18
  end
  object edtClockSpeed: TEdit
    Left = 104
    Top = 199
    Width = 65
    Height = 19
    TabStop = False
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 19
  end
  object edtExtClock: TEdit
    Left = 280
    Top = 199
    Width = 65
    Height = 19
    TabStop = False
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 20
  end
  object edtMaxClockSpeed: TEdit
    Left = 104
    Top = 220
    Width = 65
    Height = 19
    TabStop = False
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 21
  end
  object edtStepping: TEdit
    Left = 336
    Top = 125
    Width = 33
    Height = 19
    TabStop = False
    Anchors = [akLeft, akTop, akRight]
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 22
  end
  object edtCores: TEdit
    Left = 336
    Top = 448
    Width = 33
    Height = 19
    TabStop = False
    Anchors = [akLeft, akTop, akRight]
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 23
  end
  object edtLogProc: TEdit
    Left = 336
    Top = 469
    Width = 33
    Height = 19
    TabStop = False
    Anchors = [akLeft, akTop, akRight]
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 24
  end
  object edtRole: TEdit
    Left = 54
    Top = 456
    Width = 73
    Height = 19
    TabStop = False
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 25
  end
  object edtStatus: TEdit
    Left = 54
    Top = 491
    Width = 35
    Height = 19
    TabStop = False
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 26
  end
  object edtStatusStr: TEdit
    Left = 94
    Top = 491
    Width = 179
    Height = 19
    TabStop = False
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 27
  end
  object edtStatusInfo: TEdit
    Left = 347
    Top = 491
    Width = 22
    Height = 19
    TabStop = False
    Anchors = [akLeft, akTop, akRight]
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 28
  end
  object edtPOwerManagCap: TEdit
    Left = 129
    Top = 519
    Width = 59
    Height = 19
    TabStop = False
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 29
  end
  object cbPowerManagSup: TCheckBox
    Left = 216
    Top = 520
    Width = 153
    Height = 17
    TabStop = False
    Caption = 'Power Manag. Supported:'
    TabOrder = 30
  end
end
