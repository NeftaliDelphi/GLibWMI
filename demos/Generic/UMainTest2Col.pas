unit UMainTest2Col;

//=========================================================================
//
// I N T E R F A C E
//
//=========================================================================
interface

{$I .\..\..\package\jedi.inc}

uses
  {$IFDEF DELPHIX_TOKYO_UP} System.UITypes, {$ENDIF}
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CWMIBase, CCDRomDriveInfo, OI, ExtCtrls, ComCtrls, FrComponent,
  CBiosInfo, CDiskDriveInfo, ImgList, CPrinterInfo,
  CKeyboardInfo, CProcessorInfo, StdCtrls, Buttons, CSoundDeviceInfo,
  CBatteryInfo, COperatingSystemInfo, CPointingDeviceInfo,
  CPhysicalMemoryInfo,
  Math, CProcessInfo, CServiceInfo, CComputerSystemInfo,
  CDesktopMonitorInfo, CStartupCommandInfo, ActnList, ToolWin, CShareInfo,
  CUserAccountInfo, CNetworkAdapterInfo, CUSBControllerInfo, CPrintJobInfo,
  CDiskPartitionInfo, CEnvironmentInfo, CFanInfo, CPnPEntityInfo,
  CVideoControllerInfo, CProductInfo, CDisplayConfigurationInfo;

type
  TFormMain = class(TForm)
    CDRomDriveInfo1: TCDRomDriveInfo;
    Panel1: TPanel;
    Panel2: TPanel;
    StatusBar1: TStatusBar;
    List: TListView;
    BiosInfo1: TBiosInfo;
    DiskDriveInfo1: TDiskDriveInfo;
    imagelist1: TImageList;
    Panel5: TPanel;
    ProcessorInfo1: TProcessorInfo;
    KeyboardInfo1: TKeyboardInfo;
    PrinterInfo1: TPrinterInfo;
    Image1: TImage;
    lblTitle: TLabel;
    Label15: TLabel;
    Label1: TLabel;
    pnlInstancia: TPanel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SoundDeviceInfo1: TSoundDeviceInfo;
    BatteryInfo1: TBatteryInfo;
    OperatingSystemInfo1: TOperatingSystemInfo;
    PointingDeviceInfo1: TPointingDeviceInfo;
    PhysicalMemoryInfo1: TPhysicalMemoryInfo;
    lblComponentCaption: TLabel;
    Timer1: TTimer;
    ProcessInfo1: TProcessInfo;
    ServiceInfo1: TServiceInfo;
    DesktopMonitorInfo1: TDesktopMonitorInfo;
    ComputerSystemInfo1: TComputerSystemInfo;
    StartupCommandInfo1: TStartupCommandInfo;
    pnlBotones: TPanel;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ActionList1: TActionList;
    ActionCerrar: TAction;
    ActionExpandComponents: TAction;
    ActionCollapseComps: TAction;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ActionPrevious: TAction;
    ActionNext: TAction;
    ToolButton8: TToolButton;
    ActionImprimir: TAction;
    rePrint: TRichEdit;
    PrintDialog2: TPrintDialog;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ActionExportExcel: TAction;
    Panel3: TPanel;
    Panel4: TPanel;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Bevel1: TBevel;
    ScrollBox1: TScrollBox;
    FrameProcess: TFrameComponent;
    FrameService: TFrameComponent;
    FrameDeskopMonitor: TFrameComponent;
    FrameComputerSystem: TFrameComponent;
    FrameStartupCommand: TFrameComponent;
    FrameNetWorkAdapter: TFrameComponent;
    FrameUserAccount: TFrameComponent;
    FrameShare: TFrameComponent;
    NetworkAdapterInfo1: TNetworkAdapterInfo;
    UserAccountInfo1: TUserAccountInfo;
    ShareInfo1: TShareInfo;
    PrintJobInfo1: TPrintJobInfo;
    USBControllerInfo1: TUSBControllerInfo;
    FramePrintJob: TFrameComponent;
    FrameUSbController: TFrameComponent;
    DiskPartitionInfo1: TDiskPartitionInfo;
    FrameDiskPartition: TFrameComponent;
    EnvironmentInfo1: TEnvironmentInfo;
    FrameEnvironment: TFrameComponent;
    ScrollBox2: TScrollBox;
    FrameOperatingSystem: TFrameComponent;
    FrameBattery: TFrameComponent;
    FrameSoundDevice: TFrameComponent;
    FramePrinter: TFrameComponent;
    FrameKeyboard: TFrameComponent;
    FrameCDROM: TFrameComponent;
    FrameProcessor: TFrameComponent;
    FrameDiskDrive: TFrameComponent;
    FrameBios: TFrameComponent;
    FramePointerDevice: TFrameComponent;
    FramePhysicalMemory: TFrameComponent;
    Splitter2: TSplitter;
    pnlInfo: TPanel;
    Image2: TImage;
    FrameFan: TFrameComponent;
    FanInfo1: TFanInfo;
    FramePnpEntity: TFrameComponent;
    FrameProduct: TFrameComponent;
    FrameDisplayConfiguration: TFrameComponent;
    FrameVideoController: TFrameComponent;
    PnPEntityInfo1: TPnPEntityInfo;
    ProductInfo1: TProductInfo;
    VideoControllerInfo1: TVideoControllerInfo;
    DisplayConfigurationInfo1: TDisplayConfigurationInfo;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ListAdvancedCustomDrawItem(Sender: TCustomListView;
      Item: TListItem; State: TCustomDrawState; Stage: TCustomDrawStage;
      var DefaultDraw: Boolean);
    procedure ListAdvancedCustomDrawSubItem(Sender: TCustomListView;
      Item: TListItem; SubItem: Integer; State: TCustomDrawState;
      Stage: TCustomDrawStage; var DefaultDraw: Boolean);
    procedure ListDblClick(Sender: TObject);
    procedure ListKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ListMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ListResize(Sender: TObject);
    procedure Label15Click(Sender: TObject);
    procedure StatusBar1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ActionExpandComponentsExecute(Sender: TObject);
    procedure ActionCollapseCompsExecute(Sender: TObject);
    procedure ActionPreviousExecute(Sender: TObject);
    procedure ActionNextExecute(Sender: TObject);
    procedure ActionImprimirExecute(Sender: TObject);
    procedure ActionCerrarExecute(Sender: TObject);
  private
    // Object Inspector MITEC
    OI: TMObjectInspector;
    InstanceIndex:integer;
    ClassComponent:TWMIBase;
    ActiveFrame:TFrameComponent;

    procedure UpdateInstances(Component:TWMIBase);
    function EnumClassProps(AProp: TObject; AIndent: integer): Integer;
    procedure RefreshOI(AObject: TObject);
    function ExpandClassProps(AProp: TObject; AIndex,AIndent: integer): Integer;

    procedure OnSelectFrame(Sender: TObject);
  public
    { Public declarations }
  end;

const
  GutterSize = 15;
  LineColor = $00c8d0d4;

// mensajes
const
  MSG_INSTANCIAS = 'Total de %d instancias; %d/%d';


var
  FormMain: TFormMain;

//=========================================================================
//
// I M P L E M E N T A T I O N
//
//=========================================================================
implementation

{$R *.dfm}

uses
  ShellAPI, StrUtils,
  FormAbout,
  Typinfo;


procedure ListView_DrawLine(Sender: TCustomListView; Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean; AIndent: Integer; LineColor: TColor);
var
  Rect: TRect;
begin
  with (Sender as TListView) do begin
    Canvas.Pen.Color:=LineColor;
    Rect:=Item.DisplayRect(drBounds);
    Rect.Left:=Rect.Left+(AIndent+1)*GutterSize;
    if (Item.Index>0) and (Items[Item.Index-1].ImageIndex=2) then
      Rect.Left:=Rect.Left-GutterSize;
    Canvas.MoveTo(Rect.Left,Rect.Top);
    Canvas.LineTo(Rect.Right,Rect.Top);
    Rect.Left:=Rect.Left-GutterSize;
    Canvas.MoveTo(Rect.Left,Rect.Bottom);
    Canvas.LineTo(Rect.Right,Rect.Bottom);
  end;
end;

procedure ListView_DrawDivider(Sender: TCustomListView; Item: TListItem; SubItem: Integer; State: TCustomDrawState; var DefaultDraw: Boolean; LineColor: TColor);
var
  Rect: TRect;
  x,i: Integer;
begin
  with (Sender as TListView) do begin
    Canvas.Pen.Color:=LineColor;
    Rect:=Item.DisplayRect(drBounds);
    x:=0;
    for i:=0 to SubItem-1 do
      x:=x+Column[i].Width;
    Rect.Left:=Rect.Left+x;
    Canvas.MoveTo(Rect.Left,Rect.Top);
    Canvas.LineTo(Rect.Left,Rect.Bottom);
    Rect.Left:=Rect.Left+Column[SubItem].Width;
    Canvas.MoveTo(Rect.Left,Rect.Top);
    Canvas.LineTo(Rect.Left,Rect.Bottom);
  end;
end;

procedure ListView_DrawGutter(Sender: TCustomListView; Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean; AIndent: Integer; BkColor: TColor; LineColor: TColor);
var
  Rect: TRect;
  c: TColor;
begin
  with (Sender as TListView) do begin
    Rect:=Item.DisplayRect(drBounds);
    Rect.Right:=Rect.Left+(AIndent+1)*GutterSize;
    c:=Canvas.Brush.Color;
    Canvas.Brush.Color:=BkColor;
    Canvas.FillRect(Rect);
    Canvas.Pen.Color:=LineColor;
    Canvas.MoveTo(Rect.Right,Rect.Top);
    Canvas.LineTo(Rect.Right,Rect.Bottom);
    Canvas.Brush.Color:=c;
  end;
end;

procedure ListView_DrawImage(Sender: TCustomListView;
                             Item: TListItem;
                             State: TCustomDrawState;
                             var DefaultDraw: Boolean;
                             ImageList: TCustomImageList;
                             ImageIndex: Integer;
                             AIndent: Integer;
                             BgColor: TColor;
                             LineColor: TColor);
var
  Rect: TRect;
  Bitmap: TBitmap;
begin
  ListView_DrawGutter(Sender,Item,State,DefaultDraw,AIndent,BgColor,LineColor);
  with (Sender as TListView) do begin
    Bitmap:=TBitmap.Create;
    try
      ImageList.GetBitmap(ImageIndex,Bitmap);
      Rect:=Item.DisplayRect(drBounds);
      Rect.Left:=Rect.Left+AIndent*GutterSize-1;
      Rect.Right:=Rect.Left+Bitmap.Width;
      Rect.Bottom:=Rect.Top+Bitmap.Height;
      Canvas.CopyMode:=cmSrcCopy;
      Canvas.StretchDraw(Rect,Bitmap);
    finally
      Bitmap.Free;
    end;
  end;
end;

function TFormMain.ExpandClassProps(AProp: TObject; AIndex,AIndent: integer): Integer;
var
  i: Integer;
begin
  Result:=0;
  with TMObjectInspector.Create(nil) do
    try
      Obj:=AProp;
      for i:=0 to Properties.Count-1 do
        if (SameText(Kinds[i],'8') ) or
           (not SameText(Kinds[i],'8') ) then
          with List.Items.Insert(AIndex) do begin
            Inc(Result);
            Caption:=StringOfChar(' ',AIndent*5)+Properties[i];
            if SameText(Types[i],'TColor') then
              SubItems.Add(ColorToString(StrToInt(Values[i])))
            else if SameText(Types[i],'TCursor') then
              SubItems.Add(CursorNames[Abs(StrToInt(Values[i]))])
            else
              SubItems.Add(Values[i]);
            SubItems.Add(Types[i]);
            SubItems.Add(IntToStr(AIndent));
            ImageIndex:=-1;
            if SameText(Kinds[i],'7') and (TObject(GetOrdProp(Obj,Properties[i]))<>oi.Obj) then begin
              if EnumClassProps(TObject(GetOrdProp(Obj,Properties[i])),AIndent+1)>0 then begin
                Data:=TObject(GetOrdProp(Obj,Properties[i]));
                ImageIndex:=3;
              end;
            end;
            Inc(AIndex);
          end;
    finally
      Free;
    end;
end;


function TFormMain.EnumClassProps(AProp: TObject; AIndent: integer): Integer;
var
  i: Integer;
begin
  Result:=0;
  with TMObjectInspector.Create(nil) do
    try
      Obj:=AProp;
      for i:=0 to Properties.Count-1 do
        if (SameText(Kinds[i],'8') ) or
           (not SameText(Kinds[i],'8') ) then begin
          Inc(Result);
        end;
    finally
      Free;
    end;
end;


procedure TFormMain.RefreshOI(AObject: TObject);
var
  i: Integer;
begin
  if Assigned(AObject) then
    oi.Obj:=AObject;

  List.Items.BeginUpdate;
  try
    List.Items.Clear;

    for i:=0 to oi.Properties.Count-1 do
      if (SameText(oi.Kinds[i],'8')) or
         (not SameText(oi.Kinds[i],'8')) then
        with List.Items.Add do begin
          Caption:=oi.Properties[i];
          if SameText(oi.Types[i],'TColor') then
            SubItems.Add(ColorToString(StrToInt(oi.Values[i])))
          else if SameText(oi.Types[i],'TCursor') then
            SubItems.Add(CursorNames[Abs(StrToInt(oi.Values[i]))])
          else
            SubItems.Add(oi.Values[i]);
          SubItems.Add(oi.Types[i]);  
          SubItems.Add(IntToStr(0));
          ImageIndex:=-1;
          if SameText(oi.Kinds[i],'7') then begin
            if EnumClassProps(TObject(GetOrdProp(oi.Obj,oi.Properties[i])),1)>0 then begin
              ImageIndex:=3;
              Data:=TObject(GetOrdProp(oi.Obj,oi.Properties[i]));
            end;
          end;
        end;
  finally
    List.Items.EndUpdate;
  end;
end;


procedure TFormMain.FormCreate(Sender: TObject);
begin
  OI := TMObjectInspector.Create(Self);
  List.Columns[0].Width := 100;
end;

procedure TFormMain.FormShow(Sender: TObject);
var
  i:Integer;
begin

  // Asignar componentes
  FrameBIOS.SetComponentProp(BiosInfo1, BiosInfo1.BiosProperties);
  FrameDiskDrive.SetComponentProp(DiskDriveInfo1, DiskDriveInfo1.DiskDriveProperties);
  FrameProcessor.SetComponentProp(ProcessorInfo1, ProcessorInfo1.ProcessorProperties);
  FrameKeyboard.SetComponentProp(KeyboardInfo1, KeyboardInfo1.KeyboardProperties);
  FrameCDROM.SetComponentProp(CDRomDriveInfo1, CDRomDriveInfo1.CDRomDriveProperties);
  FramePrinter.SetComponentProp(PrinterInfo1, PrinterInfo1.PrinterProperties);
  FrameSoundDevice.SetComponentProp(SoundDeviceInfo1, SoundDeviceInfo1.SoundDeviceProperties);
  FrameBattery.SetComponentProp(BatteryInfo1, BatteryInfo1.BatteryProperties);
  FrameOperatingSystem.SetComponentProp(OperatingSystemInfo1, OperatingSystemInfo1.OperatingSystemProperties);
  FramePointerDevice.SetComponentProp(PointingDeviceInfo1, PointingDeviceInfo1.PointingDeviceProperties);
  FramePhysicalMemory.SetComponentProp(PhysicalMemoryInfo1, PhysicalMemoryInfo1.PhysicalMemoryProperties);
  FrameProcess.SetComponentProp(ProcessInfo1, ProcessInfo1.ProcessProperties);
  FrameService.SetComponentProp(ServiceInfo1, ServiceInfo1.ServiceProperties);
  FrameDeskopMonitor.SetComponentProp(DesktopMonitorInfo1, DesktopMonitorInfo1.DesktopMonitorProperties);
  FrameComputerSystem.SetComponentProp(ComputerSystemInfo1, ComputerSystemInfo1.ComputerSystemProperties);
  FrameStartupCommand.SetComponentProp(StartupCommandInfo1, StartupCommandInfo1.StartupCommandProperties);

  FrameNetWorkAdapter.SetComponentProp(NetworkAdapterInfo1, NetworkAdapterInfo1.NetworkAdapterProperties);
  FrameUserAccount.SetComponentProp(UserAccountInfo1, UserAccountInfo1.UserAccountProperties);
  FrameShare.SetComponentProp(ShareInfo1, ShareInfo1.ShareProperties);

  FramePrintJob.SetComponentProp(PrintJobInfo1, PrintJobInfo1.PrintJobProperties);
  FrameUSbController.SetComponentProp(USBControllerInfo1, USBControllerInfo1.USBControllerProperties);

  FrameDiskPartition.SetComponentProp(DiskPartitionInfo1, DiskPartitionInfo1.DiskPartitionProperties);
  FrameEnvironment.SetComponentProp(EnvironmentInfo1, EnvironmentInfo1.EnvironmentProperties);

  FrameFan.SetComponentProp(FanInfo1, FanInfo1.FanProperties);
  FramePnpEntity.SetComponentProp(PnPEntityInfo1, PnPEntityInfo1.PnPEntityProperties);
  FrameProduct.SetComponentProp(ProductInfo1, ProductInfo1.ProductProperties);
  FrameVideoController.SetComponentProp(VideoControllerInfo1, VideoControllerInfo1.VideoControllerProperties);
  FrameDisplayConfiguration.SetComponentProp(DisplayConfigurationInfo1, DisplayConfigurationInfo1.DisplayConfigurationProperties);



  // Asignar el evento OnSelect
  for i := 0 to (self.ComponentCount - 1) do begin
    if (Self.Components[i] is TFrameComponent) then begin
      TFrameComponent(Self.Components[i]).OnSelect := OnSelectFrame;
    end;
  end;

  // Panel de instancias
  pnlInstancia.Visible := False;
  // Scroll Al inicio
  ScrollBox1.ScrollInView(FrameBIOS);  // Visualizar el primero
  // Colapsar
  ActionCollapseComps.Execute;
  // Ancho de la columna
  List.Columns.Items[0].Width := 150;
end;

procedure TFormMain.OnSelectFrame(Sender: TObject);
var
  i:Integer;
begin

  // Visualizar el panel
//  pnlInfo.Visible := True;
  Application.ProcessMessages;
//  pnlInfo.Refresh;

  // proteccion
  try

    // Limpiar el resto
    for i := 0 to (self.ComponentCount - 1) do begin
      if (Self.Components[i] is TFrameComponent) then begin
        if (Self.Components[i] <> Sender) then begin
          TFrameComponent(Self.Components[i]).DisableColor;
        end;
      end;
    end;

    // Frame
    ActiveFrame := TFrameComponent(Sender);
    // Acceder al componente
    if (ActiveFrame.FrComponent is TWMIBase) then begin
      // No está Activo?
      if not (TWMIBase(ActiveFrame.FrComponent).Active) then begin
        // Activarlo
        ClassComponent := TWMIBase(ActiveFrame.FrComponent);
        ClassComponent.Active := True;
        InstanceIndex := ClassComponent.ObjectIndex;
      end
      else begin
        // Activarlo
        ClassComponent := TWMIBase(ActiveFrame.FrComponent);
        InstanceIndex := ClassComponent.ObjectIndex;
      end;

      // instancias de la clase
      UpdateInstances(ClassComponent);
      // Actualizar propiedades
      RefreshOI(ActiveFrame.CompProps);
    end;

  finally
    // Visualizar el panel
//    pnlInfo.Visible := False;
    Application.ProcessMessages;
//    pnlInfo.Refresh;
  end;
end;

procedure TFormMain.ListAdvancedCustomDrawItem(Sender: TCustomListView;
  Item: TListItem; State: TCustomDrawState; Stage: TCustomDrawStage;
  var DefaultDraw: Boolean);
begin
  if Item.SubItems[0]='' then
    Sender.Canvas.Font.Color:=clGray;
  if SameText(Item.Caption,'Name') then
    Sender.Canvas.Font.Style:=[fsBold];
  if (Item.ImageIndex>-1) then
    ListView_DrawImage(Sender,Item,State,DefaultDraw,List.SmallImages,Item.ImageIndex-2,StrToInt(Item.Subitems[2]),ImageList1.BkColor,LineColor)
  else
    ListView_DrawGutter(Sender,Item,State,DefaultDraw,StrToInt(Item.Subitems[2]),ImageList1.BkColor,LineColor);
  ListView_DrawLine(Sender,Item,State,DefaultDraw,StrToInt(Item.Subitems[2]),LineColor);

end;

procedure TFormMain.ListAdvancedCustomDrawSubItem(Sender: TCustomListView;
  Item: TListItem; SubItem: Integer; State: TCustomDrawState;
  Stage: TCustomDrawStage; var DefaultDraw: Boolean);
begin
  if SubItem=1 then
    Sender.Canvas.Font.Color:=clNavy;
  if SameText(Item.Caption,'Name') then
    Sender.Canvas.Font.Style:=[fsBold];
  ListView_DrawDivider(Sender,Item,SubItem,State,DefaultDraw,LineColor);
end;

procedure TFormMain.ListDblClick(Sender: TObject);
var
  i,ind: Integer;
begin
  if not Assigned(List.Selected) or (List.Selected.ImageIndex=-1) then
    Exit;
  List.Items.BeginUpdate;
  try
    i:=List.Selected.Index+1;
    ind:=StrToInt(List.Items[List.Selected.Index].SubItems[2]);
    if List.Selected.ImageIndex=2 then begin
      while StrToInt(List.Items[i].SubItems[2])>ind do
        List.Items.Delete(i);
      List.Selected.ImageIndex:=3;
    end else begin
      ExpandClassProps(TObject(List.Selected.Data),i,ind+1);
      List.Selected.ImageIndex:=2;
    end;
  finally
    List.Items.EndUpdate;
  end;
end;

procedure TFormMain.ListKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if not Assigned(List.Selected) or (List.Selected.ImageIndex=-1) then
    Exit;
  if (Shift=[]) and (Key in [vk_add,vk_subtract]) then
    ListDblClick(nil);
end;

procedure TFormMain.ListMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  n: TListItem;
  R: TRect;
  p: TPoint;
  ind: integer;
begin
  n:=List.GetItemAt(x,y);
  if not Assigned(n) or (n.ImageIndex=-1) then
    Exit;
  ind:=StrToInt(n.SubItems[2]);
  p.X:=x;
  p.Y:=y;
  R:=n.DisplayRect(drIcon);
  InflateRect(R,ind*GutterSize,0);
  if PtInRect(R,p) then
    ListDblClick(nil);
end;

procedure TFormMain.ListResize(Sender: TObject);
begin

  List.Columns[1].Width := List.Width - List.Columns[0].Width - 26;

end;

procedure TFormMain.Label15Click(Sender: TObject);
var
  fAbout:TFAbout;
begin

  fAbout := TFAbout.Create(Application);
  fAbout.ShowModal;

end;

procedure TFormMain.StatusBar1Click(Sender: TObject);
begin
    ShellExecute(Handle,
         'open',
         PChar('http://neftali-mirror.site11.com'),
         nil,
         nil,
         SW_SHOW);
end;

procedure TFormMain.SpeedButton3Click(Sender: TObject);
begin
  // Colapsar
  ActionCollapseComps.Execute;
end;

procedure TFormMain.SpeedButton4Click(Sender: TObject);
begin
  // expandir
  ActionExpandComponents.Execute;

end;

procedure TFormMain.FormResize(Sender: TObject);
begin
  // centrar el panel de info
  pnlInfo.Left := (Self.Width - PnlInfo.Width) div 2;
  pnlInfo.Top := (Self.Height - PnlInfo.Height) div 2;
end;

procedure TFormMain.UpdateInstances(Component:TWMIBase);
var
  j,k:Integer;
begin
  // instancias
  j := Component.ObjectsCount;
  k := Component.ObjectIndex;
  // Hay más de uno
  pnlInstancia.Visible := (j > 1);

  // Acciones
  ActionNext.Enabled := (j > 1);
  ActionPrevious.Enabled := (j > 1);

  Timer1.Enabled := (j > 1);
  Label2.Caption := Format(MSG_INSTANCIAS, [j,k,j]);
  lblComponentCaption.Caption := Component.ComponentCaption;
end;


procedure TFormMain.Timer1Timer(Sender: TObject);
begin
  if (pnlInstancia.Color = clInfoBk) then begin
    pnlInstancia.Color := $00F5ECFF;
  end
  else begin
    pnlInstancia.Color := clInfoBk;
  end;
end;

procedure TFormMain.ActionExpandComponentsExecute(Sender: TObject);
var
  i:Integer;
begin
  // Limpiar el resto
  for i := 0 to (self.ComponentCount - 1) do begin
    if (Self.Components[i] is TFrameComponent) then begin
      TFrameComponent(Self.Components[i]).Expand;
    end;
  end

end;

procedure TFormMain.ActionCollapseCompsExecute(Sender: TObject);
var
  i:Integer;
begin
  // Limpiar el resto
  for i := 0 to (self.ComponentCount - 1) do begin
    if (Self.Components[i] is TFrameComponent) then begin
      TFrameComponent(Self.Components[i]).Collapse;
    end;
  end

end;

procedure TFormMain.ActionPreviousExecute(Sender: TObject);
begin
  // instancia previa
  InstanceIndex := Max(InstanceIndex - 1, 1);
  ClassComponent.ObjectIndex := InstanceIndex;
  // Actualizar propiedades
  RefreshOI(ActiveFrame.CompProps);
  // instancias de la clase
  UpdateInstances(ClassComponent);
end;

procedure TFormMain.ActionNextExecute(Sender: TObject);
begin
  // siguiente
  InstanceIndex := Min(InstanceIndex + 1, ClassComponent.ObjectsCount);
  ClassComponent.ObjectIndex := InstanceIndex;
  // Actualizar propiedades
  RefreshOI(ActiveFrame.CompProps);
  // instancias de la clase
  UpdateInstances(ClassComponent);
end;

procedure TFormMain.ActionImprimirExecute(Sender: TObject);
var
  i:Integer;
  str:string;
begin
  // limpiar
  rePrint.Clear;

  // Añadir títulos
  rePrint.Lines.Add('Generated by SystemInfo GLibWMI 1.9b.');
  rePrint.Lines.Add(' ');
  rePrint.Lines.Add(' ');
  rePrint.Lines.Add(ClassComponent.ComponentCaption);
  rePrint.Lines.Add('---------------------------------');

  // Instancia
  if (pnlInstancia.Visible) then begin
    rePrint.Lines.Add(Label2.Caption);
    rePrint.Lines.Add(' ');
  end;

  // Añadir contenido
  for i := 0 to (list.Items.Count - 1) do begin
    Str := List.Items[i].Caption + ':' + DupeString(' ', 50);
    Str := Copy(Str, 1, 50);

    Str := Str + List.items[i].subitems[0];

    rePrint.Lines.Add(Str);
  end;

  PrintDialog2.Execute;
  rePrint.Print('Características de ' + ClassComponent.ComponentCaption);

end;

procedure TFormMain.ActionCerrarExecute(Sender: TObject);
begin
  Self.Close;
end;

end.

