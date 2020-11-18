unit FMainList;

interface

{$I .\..\..\package\jedi.inc}

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ImgList, ComCtrls, StdCtrls,
  {$IFDEF DELPHIX_TOKYO_UP} System.ImageList, Vcl.CheckLst,
  {$ELSE}
  CheckLst, ImageList,
  {$ENDIF}
  CWMIBase, CPrinterInfo;

// Mensages
const
  CM_AFTERSHOW = WM_USER + 7000;

type
  TFormMain = class(TForm)
    lvPrinters: TListView;
    ilMain: TImageList;
    Panel1: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    PrinterInfo: TPrinterInfo;
    pcCaracteristicas: TPageControl;
    tsGeneral: TTabSheet;
    tsPuertosPapel: TTabSheet;
    edtNombre: TLabeledEdit;
    GroupBox1: TGroupBox;
    chkColor: TCheckBox;
    chkDuplex: TCheckBox;
    chkGrapa: TCheckBox;
    edtComent: TLabeledEdit;
    edtHoriz: TLabeledEdit;
    gbPuertos: TGroupBox;
    clbPuertos: TCheckListBox;
    gbPapeles: TGroupBox;
    clbPapeles: TCheckListBox;
    GroupBox2: TGroupBox;
    clbCapabilities: TCheckListBox;
    edtVert: TLabeledEdit;
    tsMetodos: TTabSheet;
    edtImpDefecto: TLabeledEdit;
    btnPredeterminada: TButton;
    sbMain: TStatusBar;
    btnPausar: TButton;
    Button2: TButton;
    btnPrueba: TButton;
    btnRenombrar: TButton;
    edtNewName: TEdit;
    edtEstado: TLabeledEdit;
    procedure PrinterInfoAfterActivate(Sender: TObject);
    procedure lvPrintersSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure FormShow(Sender: TObject);
    procedure btnPredeterminadaClick(Sender: TObject);
    procedure btnPruebaClick(Sender: TObject);
    procedure btnRenombrarClick(Sender: TObject);
    procedure btnPausarClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    FActualPrinter: string;
  private
    procedure CMAfterShow(var Msg: TMessage); message CM_AFTERSHOW;
    procedure FillData;

    property ActualPrinter:string read FActualPrinter write FActualPrinter;
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.dfm}

procedure TFormMain.CMAfterShow(var Msg: TMessage);
begin
  PrinterInfo.Active := True;
  pcCaracteristicas.ActivePage := tsGeneral;
end;

procedure TFormMain.FillData;
var
  TS:tStrings;
  i:integer;
begin
  // Seleccionada
  ActualPrinter := PrinterInfo.PrinterProperties.Caption;

  // Capacidades
  clbCapabilities.Clear;
  for i := 0 to (PrinterInfo.PrinterProperties.GetAllCapabilitiesCount - 1) do
    clbCapabilities.Items.Add(PrinterInfo.PrinterProperties.GetAllCapabilitiesAsString(i));
  for i := 0 to (PrinterInfo.PrinterProperties.CapabilitiesCount - 1) do
    clbCapabilities.Checked[PrinterInfo.PrinterProperties.Capabilities[i]] := True;


  // Lista de puertos
  TS := tStringList.Create;
  try
    TS.DelimitedText := PrinterInfo.PrinterProperties.PortName;
    clbPuertos.Items.Text := TS.Text;
  finally
    FreeAndNil(TS);
  end;

  // Papeles disponibles
  clbPapeles.Clear;
  for i := 0 to (PrinterInfo.PrinterProperties.PrinterPaperNamesCount - 1) do
    clbPapeles.Items.Add(PrinterInfo.PrinterProperties.PrinterPaperNames[i]);

  // Otros
  edtNombre.Text := PrinterInfo.PrinterProperties.Caption;
  edtComent.Text := PrinterInfo.PrinterProperties.Comment;
  chkColor.Checked := clbCapabilities.Checked[2];
  chkDuplex.Checked := clbCapabilities.Checked[3];
  chkGrapa.Checked := clbCapabilities.Checked[6];

  edtHoriz.Text := IntToStr(PrinterInfo.PrinterProperties.HorizontalResolution);
  edtVert.Text := IntToStr(PrinterInfo.PrinterProperties.VerticalResolution);

  // Impresora por defecto
  if PrinterInfo.PrinterProperties.Default then begin
    edtImpDefecto.Text := PrinterInfo.PrinterProperties.Caption;
  end;

  // boton de predeterminada
  btnPredeterminada.Caption := Format('&Activar como Predeterminada (%s)',[ActualPrinter]);
  btnRenombrar.Caption := Format('Renombrar la impresora (%s)',[ActualPrinter]);
  edtNewName.Text := ActualPrinter;
  edtEstado.Text := PrinterInfo.PrinterProperties.GetAllPrinterStatusAsString(PrinterInfo.PrinterProperties.PrinterStatus);

end;

procedure TFormMain.FormShow(Sender: TObject);
begin
  PostMessage(Self.Handle, CM_AFTERSHOW, 0, 0);
end;

procedure TFormMain.lvPrintersSelectItem(Sender: TObject; Item: TListItem; Selected: Boolean);
var
  index:integer;
begin
  if (csDestroying in ComponentState) then
    Exit;
      
  index := Integer(Item.Data);
  PrinterInfo.ObjectIndex := index;
  FillData;
end;

procedure TFormMain.PrinterInfoAfterActivate(Sender: TObject);
var
  i:integer;
  item:TListItem;
begin
  lvPrinters.Clear;
  for i := 1 to (PrinterInfo.ObjectsCount) do begin
    PrinterInfo.ObjectIndex := i;
    item := lvPrinters.Items.Add;
    item.Caption := PrinterInfo.PrinterProperties.Caption;

    item.ImageIndex := 0;
    // impresora por defecto
    if (PrinterInfo.PrinterProperties.Default) then
      item.ImageIndex := 1;

    item.Data := Pointer(i);
  end;

  // Seleccionar el primer elemento
  lvPrinters.Items[0].Selected := True;
  // Datos de la seleccoinada
  FillData;

end;

procedure TFormMain.btnPredeterminadaClick(Sender: TObject);
var
  res, i:integer;
begin
  // Activar por defecto
  res := PrinterInfo.SetDefaultPrinter('Caption', ActualPrinter);
  sbMain.SimpleText := 'Resultado: ' + PrinterInfo.GetErrorControlAsString(res);
  // correcto?
  if (res = 0) then begin
    i := lvPrinters.ItemIndex;
    // Recargar info
    PrinterInfo.Active := False;
    PrinterInfo.Active := True;
    // Dejar seleccionado el que había
    lvPrinters.ItemIndex := i;
  end;
end;

procedure TFormMain.btnPruebaClick(Sender: TObject);
var
  res:integer;
begin
  // Activar por defecto
  res := PrinterInfo.PrintTestPage('Caption', ActualPrinter);
  sbMain.SimpleText := 'Resultado: ' + PrinterInfo.GetErrorControlAsString(res);
end;

procedure TFormMain.btnRenombrarClick(Sender: TObject);
var
  res, i:integer;
begin
  // Activar por defecto
  res := PrinterInfo.RenamePrinter('Caption', ActualPrinter, edtNewName.Text);
  sbMain.SimpleText := 'Resultado: ' + PrinterInfo.GetErrorControlAsString(res);
  // correcto?
  if (res = 0) then begin
    i := lvPrinters.ItemIndex;
    // Recargar info
    PrinterInfo.Active := False;
    PrinterInfo.Active := True;
    // Dejar seleccionado el que había
    lvPrinters.ItemIndex := i;
  end;
end;

procedure TFormMain.btnPausarClick(Sender: TObject);
var
  res, i:integer;
begin
  // Pausar la seleccionada
  res := PrinterInfo.Pause('Caption', ActualPrinter);
  sbMain.SimpleText := 'Resultado: ' + PrinterInfo.GetErrorControlAsString(res);
  // correcto?
  if (res = 0) then begin
    i := lvPrinters.ItemIndex;
    // Recargar info
    PrinterInfo.Active := False;
    PrinterInfo.Active := True;
    // Dejar seleccionado el que había
    lvPrinters.ItemIndex := i;
  end;
end;

procedure TFormMain.Button2Click(Sender: TObject);
var
  res, i:integer;
begin
  // reanudar la seleccionada
  res := PrinterInfo.Resume('Caption', ActualPrinter);
  sbMain.SimpleText := 'Resultado: ' + PrinterInfo.GetErrorControlAsString(res);
  // correcto?
  if (res = 0) then begin
    i := lvPrinters.ItemIndex;
    // Recargar info
    PrinterInfo.Active := False;
    PrinterInfo.Active := True;
    // Dejar seleccionado el que había
    lvPrinters.ItemIndex := i;
  end;
end;

end.

