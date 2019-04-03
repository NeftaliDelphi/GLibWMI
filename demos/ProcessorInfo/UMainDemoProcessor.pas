unit UMainDemoProcessor;

interface

{$I .\..\..\package\jedi.inc}

uses
  {$IFDEF DELPHIX_TOKYO_UP} System.UITypes, {$ENDIF}
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, ComCtrls, ToolWin, StdCtrls, ExtCtrls, ImgList,
  Buttons, CWMIBase, CProcessorInfo, CheckLst, Contnrs, FrameInfo,
  System.Actions, System.ImageList;

// Mensages
const
  CM_AFTERSHOW = WM_USER + 7841;
  STR_EMPTY = '';

type
  TFormMainProcessor = class(TForm)
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
    tsProcessor0: TTabSheet;
    ImageList2: TImageList;
    ProcessorInfo1: TProcessorInfo;
    procedure ActionCerrarExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ActionInfoExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActionPrintExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FFrameList: TObjectList;

    // Procedimientos para capturar mensajes
    procedure CMAfterShow(var Msg: TMessage); message CM_AFTERSHOW;
    function _CreateFrame(Index: Integer; CreateTab: Boolean = True): TFrInfo;
    procedure _FillProps(AFrame: TFrInfo);

  public
    { Public declarations }
  end;

var
  FormMainProcessor: TFormMainProcessor;

  // =========================================================================
  //
  // I M P L E M E N T A T I O N
  //
  // =========================================================================
implementation

{$R *.dfm}

uses
  FormAbout;

// : Conversiones entre diferentes unidades.
procedure SetSizeInBytes(Size: Double; var InKB: Double; var InMB: Double;
  var InGB: Double);
var
  Str: String;
begin

  // No válido?
  if (Size = 0) then
  begin
    InKB := 0;
    InMB := 0;
    InGB := 0;
    Exit;
  end;

  // KB
  InKB := (Size / 1024);
  Str := FloatToStrF(InKB, ffFixed, 18, 2);
  InKB := StrToFloat(Str);
  // MB
  InMB := Round(Size / 1048576);
  Str := FloatToStrF(InMB, ffFixed, 18, 2);
  InMB := StrToFloat(Str);
  // GB
  InGB := (Size / 1073741824);
  Str := FloatToStrF(InGB, ffFixed, 18, 2);
  InGB := StrToFloat(Str);
end;

function IndexOfIntegerValue(Arr: TArrInteger; Value: Integer): Integer;
var
  i: Integer;
begin
  Result := -1;
  for i := 0 to (Length(Arr) - 1) do
  begin
    if (Arr[i] = Value) then
    begin
      Result := i;
      Break;
    end;
  end;
end;

procedure TFormMainProcessor.ActionCerrarExecute(Sender: TObject);
begin
  Self.Close;
end;

procedure TFormMainProcessor.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := False;
  if (MessageDlg('¿Realmente desea cerrar la demostración?', mtConfirmation,
    [mbYes, mbNo], 0) = mrYes) then
  begin
    CanClose := True;
  end;
end;

procedure TFormMainProcessor.pnlTitleMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFormMainProcessor.ActionInfoExecute(Sender: TObject);
var
  fAbout: TFAbout;
begin

  fAbout := TFAbout.Create(Application);
  fAbout.ShowModal;

end;

procedure TFormMainProcessor.CMAfterShow(var Msg: TMessage);
var
  i: Integer;
  fr: TFrInfo;
begin

  // Activar...
  ProcessorInfo1.Active := True;

  // Rellenar las propiedades...
  // Ha encontrado al menos 1?
  if (ProcessorInfo1.ObjectsCount = 0) then
  begin
    Exit;
  end;

  // rellenar el inicial
  fr := TFrInfo(FFrameList.Items[0]);
  _FillProps(fr);

  // Crear nuevas pestañas y rellenar el resto de frames
  for i := 1 to (ProcessorInfo1.ObjectsCount - 1) do
  begin
    // Crear la nueva página
    fr := _CreateFrame(i, True);
    // Activarla
    PageControl1.ActivePageIndex := i;
    // Activar ese objeto
    ProcessorInfo1.ObjectIndex := i + 1;
    // rellenr el frame
    _FillProps(fr);
  end;

  // Activar el inicial
  PageControl1.ActivePage := tsProcessor0;

end;

procedure TFormMainProcessor.FormShow(Sender: TObject);
begin
  // Nos posteamos el mensaje CM_AFTERSHOW, que nos llegará una vez
  PostMessage(Self.Handle, CM_AFTERSHOW, 0, 0);
end;

procedure TFormMainProcessor.ActionPrintExecute(Sender: TObject);
var
  b: Boolean;
begin

  // Diálogo
  b := PrintDialog1.Execute;

  // Aceptado?
  if (b) then
  begin
    rePrint.Clear;
    rePrint.Lines.Add(ProcessorInfo1.AllProperties
      [PageControl1.ActivePageIndex]);
    rePrint.Print('Información de ProcessorInfo (GLibWMI)');
  end;

end;

function TFormMainProcessor._CreateFrame(Index: Integer;
  CreateTab: Boolean = True): TFrInfo;
var
  ts: TTabSheet;
  fr: TFrInfo;
begin

  // Se debe crear el Tab?
  if (CreateTab) then
  begin
    ts := TTabSheet.Create(Self);
    ts.PageControl := PageControl1;
    ts.Name := 'tsProcessor' + IntToStr(Index);
    ts.Caption := 'Processor ' + IntToStr(Index);
    ts.Visible := True;
    ts.TabVisible := True;
  end
  else
  begin
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

procedure TFormMainProcessor.FormCreate(Sender: TObject);
begin
  // crear la lista
  FFrameList := TObjectList.Create();

  // Primer Frame
  _CreateFrame(0, False);

end;

procedure TFormMainProcessor._FillProps(AFrame: TFrInfo);
var
  dd: TProcessorInfo;
  ddProps: TProcessorProperties;
begin

  // Comodidad
  dd := ProcessorInfo1;
  ddProps := dd.ProcessorProperties;

  with AFrame do
  begin

    edtName.Text := ddProps.Name;
    edtDeviceID.Text := ddProps.DeviceID;
    edtDescription.Text := ddProps.Description;
    edtTitle.Text := ddProps.Caption;
    edtManufacturer.Text := ddProps.Manufacturer;
    // Arquitectura
    edtArq.Text := IntToStr(ddProps.Architecture);
    edtArqAsString.Text := ddProps.ArchitectureAsString;
    // Familia
    edtFamily.Text := IntToStr(ddProps.Family);
    edtFamilyStr.Text := ddProps.FamilyAsString;

    edtSocket.Text := ddProps.SocketDesignation;
    edtProcessorID.Text := ddProps.ProcessorId;
    // Verisones
    edtVersion.Text := ddProps.Version;
    edtRevision.Text := IntToStr(ddProps.Revision);
    edtStepping.Text := ddProps.Stepping;

    // Cache
    edtCacheSize.Text := IntToStr(ddProps.L2CacheSize);
    edtCacheSpeed.Text := IntToStr(ddProps.L2CacheSpeed);
    edtCacheSizeL3.Text := IntToStr(ddProps.L3CacheSize);
    edtCacheSpeedL3.Text := IntToStr(ddProps.L3CacheSpeed);

    //
    edtCreationCN.Text := ddProps.CreationClassName;
    edtSystemCN.Text := ddProps.SystemCreationClassName;
    edtSystemName.Text := ddProps.SystemName;

    // Otros
    edtClockSpeed.Text := IntToStr(ddProps.CurrentClockSpeed);
    edtExtClock.Text := IntToStr(ddProps.ExtClock);
    edtMaxClockSpeed.Text := IntToStr(ddProps.MaxClockSpeed);
    edtCores.Text := IntToStr(ddProps.NumberOfCores);
    edtLogProc.Text := IntToStr(ddProps.NumberOfLogicalProcessors);
    edtRole.Text := ddProps.Role;
    edtStatus.Text := ddProps.Status;
    edtStatusStr.Text := ddProps.CpuStatusAsString;
    edtStatusInfo.Text := IntToStr(ddProps.StatusInfo);
    edtPowerManagCap.Text := ddProps.PowerManagementCapabilitiesAsString;
    cbPowerManagSup.Checked := ddProps.PowerManagementSupported;

  end; // with

end;

end.
