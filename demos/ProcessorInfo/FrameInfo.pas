unit FrameInfo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls;

type
  TFrInfo = class(TFrame)
    Label1: TLabel;
    edtName: TEdit;
    Label2: TLabel;
    edtManufacturer: TEdit;
    Label3: TLabel;
    edtDescription: TEdit;
    Label4: TLabel;
    edtTitle: TEdit;
    Label5: TLabel;
    edtArqAsString: TEdit;
    edtDeviceID: TEdit;
    Label6: TLabel;
    GroupBox1: TGroupBox;
    Label10: TLabel;
    edtCacheSize: TEdit;
    Label14: TLabel;
    edtCacheSpeed: TEdit;
    mmPNPDeviveID: TMemo;
    Label7: TLabel;
    edtCreationCN: TEdit;
    Label8: TLabel;
    edtSystemCN: TEdit;
    Label9: TLabel;
    edtSystemName: TEdit;
    Label11: TLabel;
    edtVersion: TEdit;
    edtRevision: TEdit;
    edtArq: TEdit;
    GroupBox2: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    edtCacheSizeL3: TEdit;
    edtCacheSpeedL3: TEdit;
    Label15: TLabel;
    edtProcessorID: TEdit;
    Label16: TLabel;
    edtSocket: TEdit;
    Label17: TLabel;
    edtFamily: TEdit;
    edtFamilyStr: TEdit;
    Label18: TLabel;
    edtClockSpeed: TEdit;
    Label19: TLabel;
    edtExtClock: TEdit;
    Label20: TLabel;
    edtMaxClockSpeed: TEdit;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    edtStepping: TEdit;
    Bevel1: TBevel;
    edtCores: TEdit;
    edtLogProc: TEdit;
    edtRole: TEdit;
    edtStatus: TEdit;
    edtStatusStr: TEdit;
    Label28: TLabel;
    edtStatusInfo: TEdit;
    edtPOwerManagCap: TEdit;
    cbPowerManagSup: TCheckBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
