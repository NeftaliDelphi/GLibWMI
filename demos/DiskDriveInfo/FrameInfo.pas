unit FrameInfo;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

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
    edtModelo: TEdit;
    edtDeviceID: TEdit;
    Label6: TLabel;
    edtPNPDeviveID: TEdit;
    Label7: TLabel;
    edtCreationCN: TEdit;
    Label8: TLabel;
    edtSystemCN: TEdit;
    Label9: TLabel;
    edtSystemName: TEdit;
    GroupBox1: TGroupBox;
    Label10: TLabel;
    edtCyl: TEdit;
    Label11: TLabel;
    edtHeads: TEdit;
    Label12: TLabel;
    edtSecs: TEdit;
    Label13: TLabel;
    edtTracks: TEdit;
    Label14: TLabel;
    edtTracksCyl: TEdit;
    Label15: TLabel;
    edtBytesSector: TEdit;
    Label16: TLabel;
    edtSectTrack: TEdit;
    Label17: TLabel;
    edtTamanyo: TEdit;
    lblSize: TLabel;
    edtSignature: TEdit;
    Label18: TLabel;
    Label19: TLabel;
    edtInterface: TEdit;
    Label20: TLabel;
    edtParticiones: TEdit;
    GroupBox2: TGroupBox;
    Label21: TLabel;
    edtSCSIBus: TEdit;
    Label22: TLabel;
    edtSCSILogUnit: TEdit;
    Label23: TLabel;
    edtSCSIPort: TEdit;
    Label24: TLabel;
    edtSCSITarget: TEdit;
    Label25: TLabel;
    edtState: TEdit;
    mmPNPDeviveID: TMemo;
    Label26: TLabel;
    edtSerial: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
