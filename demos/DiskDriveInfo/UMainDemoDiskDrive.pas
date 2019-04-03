unit UMainDemoDiskDrive;

interface

{$I .\..\..\package\jedi.inc}

uses
  {$IFDEF DELPHIX_TOKYO_UP} System.UITypes, {$ENDIF}
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, ComCtrls, ToolWin, StdCtrls, ExtCtrls, ImgList,
  Buttons, CWMIBase, CDiskDriveInfo, CheckLst, Contnrs, FrameInfo,
  System.ImageList, System.Actions;

// Mensages
const
  CM_AFTERSHOW = WM_USER + 7841;
  STR_EMPTY = '';

type
  TFormMainDiskDrive = class(TForm)
    ActionList1: TActionList;
    ActionCerrar: TAction;
    ImageList1: TImageList;
    ActionInfo: TAction;
    PanelFondo: TPanel;
    Panel1: TPanel;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton4: TToolButton;
    ToolButton3: TToolButton;
    pnlContent: TPanel;
    pnlTitle: TPanel;
    imgComponent: TImage;
    lblTitle: TLabel;
    SpeedButton1: TSpeedButton;
    ToolButton5: TToolButton;
    ActionPrint: TAction;
    PrintDialog1: TPrintDialog;
    Label15: TLabel;
    rePrint: TRichEdit;
    PageControl1: TPageControl;
    tsDisk0: TTabSheet;
    DiskDriveInfo1: TDiskDriveInfo;
    ImageList2: TImageList;
    procedure ActionCerrarExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ActionInfoExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActionPrintExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FFrameList:TObjectList;

    // Procedimientos para capturar mensajes
    procedure CMAfterShow(var Msg: TMessage); message CM_AFTERSHOW;
    function _CreateFrame(Index:integer; CreateTab:Boolean=True):TFrInfo;
    procedure _FillProps(AFrame:TFrInfo);

  public
    { Public declarations }
  end;


var
  FormMainDiskDrive: TFormMainDiskDrive;

//=========================================================================
//
// I M P L E M E N T A T I O N
//
//=========================================================================
implementation

{$R *.dfm}

uses
  FormAbout;


//: Conversiones entre diferentes unidades.
procedure SetSizeInBytes(Size: Double; var InKB:Double;
                         var InMB:Double; var InGB:Double);
var
  Str:String;
begin

  // No válido?
  if (Size = 0) then begin
    InKB := 0;
    InMB := 0;
    InGB := 0;
    Exit;
  end;

  // KB
  InKB := (Size / 1024);
  Str := FloatToStrF(InKB, ffFixed, 18 ,2);
  InKB := StrToFloat(Str);
  // MB
  InMB := Round(Size / 1048576);
  Str := FloatToStrF(InMB, ffFixed, 18 ,2);
  InMB := StrToFloat(Str);
  // GB
  InGB := (Size / 1073741824);
  Str := FloatToStrF(InGB, ffFixed, 18 ,2);
  InGB := StrToFloat(Str);
end;


function IndexOfIntegerValue(Arr:TArrInteger; Value:integer):integer;
var
  i:Integer;
begin
  Result := -1;
  for i := 0 to (Length(Arr) - 1) do begin
    if (Arr[i] = Value) then begin
      Result := i;
      Break;
    end;
  end;
end;

procedure TFormMainDiskDrive.ActionCerrarExecute(Sender: TObject);
begin
  Self.Close;
end;

procedure TFormMainDiskDrive.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := False;
  if (MessageDlg('¿Realmente desea cerrar la demostración?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then begin
    CanClose := True;
  end;
end;

procedure TFormMainDiskDrive.pnlTitleMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFormMainDiskDrive.ActionInfoExecute(Sender: TObject);
var
  fAbout:TFAbout;
begin

  fAbout := TFAbout.Create(Application);
  fAbout.ShowModal;

end;

procedure TFormMainDiskDrive.CMAfterShow(var Msg: TMessage);
var
  i:Integer;
  fr:TFrInfo;
begin

  // Activar...
  DiskDriveInfo1.Active := True;

  // Rellenar las propiedades...
  // Ha encontrado al menos 1?
  if (DiskDriveInfo1.ObjectsCount = 0) then begin
    Exit;
  end;

  // rellenar el inicial
  fr := TFrInfo(FFrameList.Items[0]);
  _FillProps(fr);

  // Crear nuevas pestañas y rellenar el resto de frames
  for i := 1 to (DiskDriveInfo1.ObjectsCount - 1) do begin
    // Crear la nueva página
    fr := _CreateFrame(i, True);
    // Activarla
    PageControl1.ActivePageIndex := i;
    // Activar ese objeto
    DiskDriveInfo1.ObjectIndex := i+1;
    // rellenr el frame
    _FillProps(fr);
  end;

  // Activar el inicial
  PageControl1.ActivePage := tsDisk0;

end;

procedure TFormMainDiskDrive.FormShow(Sender: TObject);
begin
  // Nos posteamos el mensaje CM_AFTERSHOW, que nos llegará una vez
  PostMessage(Self.Handle, CM_AFTERSHOW, 0, 0);
end;

procedure TFormMainDiskDrive.ActionPrintExecute(Sender: TObject);
var
  b:Boolean;
begin

  // Diálogo
  b := PrintDialog1.Execute;

  // Aceptado?
  if (b) then begin
    rePrint.Clear;
    rePrint.Lines.Add(DiskDriveInfo1.AllProperties[PageControl1.ActivePageIndex]);
    rePrint.Print('Información de DiskDriveInfo (GLibWMI)');
  end;

end;

function TFormMainDiskDrive._CreateFrame(Index:integer; CreateTab:Boolean=True):TFrInfo;
var
  ts:TTabSheet;
  fr:TFrInfo;
begin

  // Se debe crear el Tab?
  if (CreateTab) then begin
    ts := TTabSheet.Create(Self);
    ts.PageControl := PageControl1;
    ts.Name := 'tsDisk' + IntToStr(Index);
    ts.Caption := 'Disk ' + IntToStr(Index);
    ts.Visible := True;
    ts.TabVisible := True;
  end
  else begin
    ts := PageControl1.Pages[Index];
    ts.ImageIndex := 0;
  end;

  // Crear el Frame
  fr := TFrInfo.Create(Self);
  fr.Name := 'frInfo' + IntToStr(Index);
  fr.Parent := ts;
  fr.Align := alClient;

  // devolver el Frame
  Result := fr;

  // añadir el Frame a la lista
  FFrameList.Add(fr);

end;

procedure TFormMainDiskDrive.FormCreate(Sender: TObject);
begin
  // crear la lista
  FFrameList := TObjectList.Create();

  // Primer Frame
  _CreateFrame(0, False);

end;

procedure TFormMainDiskDrive._FillProps(AFrame: TFrInfo);
var
  dd:TDiskDriveInfo;
  ddProps:TDiskDriveProperties;
  InKB, InMB, InGB:Double;
  str:string;
begin

  // Comodidad
  dd := DiskDriveInfo1;
  ddProps := dd.DiskDriveProperties;

  with AFrame do begin

    edtName.Text := ddProps.Name;
    edtDeviceID.text := ddProps.DeviceID;
    edtDescription.Text := ddProps.Description;
    edtTitle.Text := ddProps.Caption;
    edtModelo.text := ddProps.Model;
    edtSignature.Text := IntToStr(ddProps.Signature);
    // Serial
    {Windows Server 2003, Windows XP, Windows 2000, and Windows NT 4.0:  This property is not available.}
    edtSerial.Text := ddProps.SerialNumber;

    edtManufacturer.Text := ddProps.Manufacturer;

    edtPNPDeviveID.Text := ddProps.PNPDeviceID;
    mmPNPDeviveID.Lines.Text := ddProps.PNPDeviceID;

    edtCreationCN.Text := ddProps.CreationClassName;
    edtSystemCN.Text := ddProps.SystemCreationClassName;
    edtSystemName.Text := ddProps.SystemName;

    // Tamaños
    edtCyl.Text := IntToStr(ddProps.TotalCylinders);
    edtHeads.Text := IntToStr(ddProps.TotalHeads);
    edtSecs.Text := IntToStr(ddProps.TotalSectors);
    edtTracks.Text := IntToStr(ddProps.TotalTracks);
    edtTracksCyl.Text := IntToStr(ddProps.TracksPerCylinder);
    edtBytesSector.Text := IntToStr(ddProps.BytesPerSector);
    edtSectTrack.Text := IntToStr(ddProps.SectorsPerTrack);
    edtTamanyo.Text := IntToStr(ddProps.Size);
    // Conversiones entre diferentes unidades.
    SetSizeInBytes(ddProps.Size, InKB, InMB, InGB);
    Str := Format('%f Kb - %f Mb - %f Gb',[InKB, InMB, InGB]);
    lblSize.Caption := Str;

    edtInterface.Text := ddProps.InterfaceType;
    edtParticiones.Text := IntToStr(ddProps.Partitions);

    // SCSI    
    edtSCSIBus.Text := IntToStr(ddProps.SCSIBus);
    edtSCSILogUnit.Text := IntToStr(ddProps.SCSILogicalUnit);
    edtSCSIPort.Text := IntToStr(ddProps.SCSIPort);
    edtSCSITarget.Text := IntToStr(ddProps.SCSITargetId);

    // Informacion
    edtState.Text := ddProps.Status;

  end; // with

end;

end.
