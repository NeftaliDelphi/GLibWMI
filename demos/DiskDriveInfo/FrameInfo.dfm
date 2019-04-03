object FrInfo: TFrInfo
  Left = 0
  Top = 0
  Width = 383
  Height = 504
  TabOrder = 0
  DesignSize = (
    383
    504)
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 40
    Height = 13
    Caption = 'Nombre:'
  end
  object Label2: TLabel
    Left = 16
    Top = 103
    Width = 53
    Height = 13
    Caption = 'Fabricante:'
  end
  object Label3: TLabel
    Left = 16
    Top = 37
    Width = 59
    Height = 13
    Caption = 'Descripci'#243'n:'
  end
  object Label4: TLabel
    Left = 16
    Top = 58
    Width = 31
    Height = 13
    Caption = 'T'#237'tulo:'
  end
  object Label5: TLabel
    Left = 16
    Top = 79
    Width = 38
    Height = 13
    Caption = 'Modelo:'
  end
  object Label6: TLabel
    Left = 16
    Top = 130
    Width = 39
    Height = 13
    Caption = 'PNP ID:'
  end
  object Label7: TLabel
    Left = 16
    Top = 163
    Width = 96
    Height = 13
    Caption = 'Creation Classname:'
  end
  object Label8: TLabel
    Left = 16
    Top = 184
    Width = 91
    Height = 13
    Caption = 'System Classname:'
  end
  object Label9: TLabel
    Left = 16
    Top = 205
    Width = 73
    Height = 13
    Caption = 'Creation Name:'
  end
  object Label17: TLabel
    Left = 16
    Top = 233
    Width = 42
    Height = 13
    Caption = 'Tama'#241'o:'
  end
  object lblSize: TLabel
    Left = 216
    Top = 232
    Width = 154
    Height = 13
    Anchors = [akLeft, akTop, akRight]
    AutoSize = False
    Caption = '...'
  end
  object Label18: TLabel
    Left = 16
    Top = 362
    Width = 75
    Height = 13
    Caption = 'Disk Signature: '
  end
  object Label19: TLabel
    Left = 16
    Top = 406
    Width = 68
    Height = 13
    Caption = 'Interface type:'
  end
  object Label20: TLabel
    Left = 16
    Top = 427
    Width = 52
    Height = 13
    Caption = 'Particiones'
  end
  object Label25: TLabel
    Left = 16
    Top = 459
    Width = 44
    Height = 13
    Caption = 'Estado:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label26: TLabel
    Left = 16
    Top = 382
    Width = 56
    Height = 13
    Caption = 'Disk Serial: '
  end
  object edtName: TEdit
    Left = 88
    Top = 13
    Width = 129
    Height = 19
    TabStop = False
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 0
  end
  object edtManufacturer: TEdit
    Left = 88
    Top = 100
    Width = 282
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
  object edtModelo: TEdit
    Left = 88
    Top = 76
    Width = 282
    Height = 19
    TabStop = False
    Anchors = [akLeft, akTop, akRight]
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 4
  end
  object edtDeviceID: TEdit
    Left = 224
    Top = 13
    Width = 146
    Height = 19
    TabStop = False
    Anchors = [akLeft, akTop, akRight]
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 5
  end
  object edtPNPDeviveID: TEdit
    Left = 88
    Top = 127
    Width = 282
    Height = 19
    TabStop = False
    Anchors = [akLeft, akTop, akRight]
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 6
  end
  object edtCreationCN: TEdit
    Left = 120
    Top = 160
    Width = 250
    Height = 19
    TabStop = False
    Anchors = [akLeft, akTop, akRight]
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 7
  end
  object edtSystemCN: TEdit
    Left = 120
    Top = 181
    Width = 250
    Height = 19
    TabStop = False
    Anchors = [akLeft, akTop, akRight]
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 8
  end
  object edtSystemName: TEdit
    Left = 120
    Top = 202
    Width = 250
    Height = 19
    TabStop = False
    Anchors = [akLeft, akTop, akRight]
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 9
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 247
    Width = 355
    Height = 105
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 10
    object Label10: TLabel
      Left = 20
      Top = 18
      Width = 45
      Height = 13
      Caption = 'Cylindres:'
    end
    object Label11: TLabel
      Left = 20
      Top = 38
      Width = 34
      Height = 13
      Caption = 'Heads:'
    end
    object Label12: TLabel
      Left = 20
      Top = 58
      Width = 39
      Height = 13
      Caption = 'Sectors:'
    end
    object Label13: TLabel
      Left = 20
      Top = 78
      Width = 36
      Height = 13
      Caption = 'Tracks:'
    end
    object Label14: TLabel
      Left = 180
      Top = 18
      Width = 63
      Height = 13
      Caption = 'Tracks/Cylin:'
    end
    object Label15: TLabel
      Left = 180
      Top = 38
      Width = 56
      Height = 13
      Caption = 'Bytes/Sect:'
    end
    object Label16: TLabel
      Left = 180
      Top = 58
      Width = 72
      Height = 13
      Caption = 'Sectors/Track:'
    end
    object edtCyl: TEdit
      Left = 78
      Top = 15
      Width = 73
      Height = 19
      TabStop = False
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
    end
    object edtHeads: TEdit
      Left = 78
      Top = 35
      Width = 73
      Height = 19
      TabStop = False
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 1
    end
    object edtSecs: TEdit
      Left = 78
      Top = 55
      Width = 73
      Height = 19
      TabStop = False
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 2
    end
    object edtTracks: TEdit
      Left = 78
      Top = 75
      Width = 73
      Height = 19
      TabStop = False
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 3
    end
    object edtTracksCyl: TEdit
      Left = 262
      Top = 15
      Width = 73
      Height = 19
      TabStop = False
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 4
    end
    object edtBytesSector: TEdit
      Left = 262
      Top = 35
      Width = 73
      Height = 19
      TabStop = False
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 5
    end
    object edtSectTrack: TEdit
      Left = 262
      Top = 55
      Width = 73
      Height = 19
      TabStop = False
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 6
    end
  end
  object edtTamanyo: TEdit
    Left = 64
    Top = 230
    Width = 138
    Height = 19
    TabStop = False
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 11
  end
  object edtSignature: TEdit
    Left = 104
    Top = 359
    Width = 266
    Height = 19
    TabStop = False
    Anchors = [akLeft, akTop, akRight]
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 12
  end
  object edtInterface: TEdit
    Left = 88
    Top = 403
    Width = 65
    Height = 19
    TabStop = False
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 13
  end
  object edtParticiones: TEdit
    Left = 88
    Top = 424
    Width = 65
    Height = 19
    TabStop = False
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 14
  end
  object GroupBox2: TGroupBox
    Left = 168
    Top = 397
    Width = 201
    Height = 105
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 15
    DesignSize = (
      201
      105)
    object Label21: TLabel
      Left = 20
      Top = 18
      Width = 48
      Height = 13
      Caption = 'SCSI Bus:'
    end
    object Label22: TLabel
      Left = 20
      Top = 38
      Width = 86
      Height = 13
      Caption = 'SCSI Logical Unit:'
    end
    object Label23: TLabel
      Left = 20
      Top = 58
      Width = 49
      Height = 13
      Caption = 'SCSI Port:'
    end
    object Label24: TLabel
      Left = 20
      Top = 78
      Width = 75
      Height = 13
      Caption = 'SCSI Target ID:'
    end
    object edtSCSIBus: TEdit
      Left = 112
      Top = 15
      Width = 73
      Height = 19
      TabStop = False
      Anchors = [akLeft, akTop, akRight]
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
    end
    object edtSCSILogUnit: TEdit
      Left = 112
      Top = 35
      Width = 73
      Height = 19
      TabStop = False
      Anchors = [akLeft, akTop, akRight]
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 1
    end
    object edtSCSIPort: TEdit
      Left = 112
      Top = 55
      Width = 73
      Height = 19
      TabStop = False
      Anchors = [akLeft, akTop, akRight]
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 2
    end
    object edtSCSITarget: TEdit
      Left = 112
      Top = 75
      Width = 73
      Height = 19
      TabStop = False
      Anchors = [akLeft, akTop, akRight]
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 3
    end
  end
  object edtState: TEdit
    Left = 88
    Top = 456
    Width = 65
    Height = 19
    TabStop = False
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 16
  end
  object mmPNPDeviveID: TMemo
    Left = 88
    Top = 121
    Width = 282
    Height = 35
    TabStop = False
    Anchors = [akLeft, akTop, akRight]
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 17
  end
  object edtSerial: TEdit
    Left = 104
    Top = 379
    Width = 266
    Height = 19
    TabStop = False
    Anchors = [akLeft, akTop, akRight]
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 18
  end
end
