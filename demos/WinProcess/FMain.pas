unit FMain;

//=========================================================================
//
// I N T E R F A C E
//
//=========================================================================
interface

{$I .\jedi.inc}

uses
  {$IFDEF DELPHIX_TOKYO_UP}
  System.UITypes, System.Types,
  Vcl.ImgList,
  {$ELSE}
  ImgList,
  {$ENDIF}
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, Menus, CWMIBase, CProcessInfo, Grids,
  UConst,ExtCtrls, ComCtrls,
  ShellAPI, OI, StdCtrls,
  ComObj, System.ImageList, System.Actions;

Type
  //: Tipo de Dat de la columna por la que queremos ordenar.
  TGridData = (gdString, gdInteger, gdFloat);
  //: Tipos de ordenación.
  TSortOrder = (soASC, soDESC);
  //: Columnas
  TSortType = (stNone, stIco, stTitulo, stID, stThreads, stDesc, stPrioridad, stPath, stCL);


  // formulario
  TFormMain = class(TForm)
    MainMenu1: TMainMenu;
    ActionList1: TActionList;
    StatusBar1: TStatusBar;
    pnlCentral: TPanel;
    sgProcess: TStringGrid;
    pnlInfo: TPanel;
    Image2: TImage;
    pnlRight: TPanel;
    ActionCerrar: TAction;
    ImageList1: TImageList;
    TimerRefresh: TTimer;
    Fichero1: TMenuItem;
    Acercade1: TMenuItem;
    Columns1: TMenuItem;
    List: TListView;
    Splitter1: TSplitter;
    ActionVisColIcono: TAction;
    ActionVisColTitulo: TAction;
    ActionVisColIdent: TAction;
    ActionVisColThreads: TAction;
    ActionVisColDescripcion: TAction;
    ActionVisColPrioridad: TAction;
    ActionVisColPath: TAction;
    ActionVisColCommandLine: TAction;
    Icono1: TMenuItem;
    Identificador1: TMenuItem;
    tulo1: TMenuItem;
    hreads1: TMenuItem;
    Descripcion1: TMenuItem;
    Prioridad1: TMenuItem;
    Pathdeejecutable1: TMenuItem;
    CommandLine1: TMenuItem;
    ActionVerDetalles: TAction;
    Verdetalles1: TMenuItem;
    N1: TMenuItem;
    Button1: TButton;
    Button2: TButton;
    ActionRefrescar: TAction;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    ActionAcercaDe: TAction;
    Acercade2: TMenuItem;
    ActionExportHTML: TAction;
    ActionExportRTF: TAction;
    ActionExportSYLK: TAction;
    ActionExportTAB: TAction;
    ActionExportTXT: TAction;
    ActionExportDOC: TAction;
    Ayudasobreelprograma1: TMenuItem;
    ActionReempazarTaskManager: TAction;
    ActionRestaurarTaskManager: TAction;
    edtLastTaskMan: TEdit;
    N2: TMenuItem;
    ReemplazarTaskManager1: TMenuItem;
    RestaurarTaskManager1: TMenuItem;
    ActionCerrar1: TMenuItem;
    ActionEjecutar: TAction;
    Herramientas1: TMenuItem;
    Ejecutar1: TMenuItem;
    ActionTerminar: TAction;
    erminarproceso1: TMenuItem;
    ProcessInfo1: TProcessInfo;
    procedure FormShow(Sender: TObject);
    procedure TimerRefreshTimer(Sender: TObject);
    procedure pnlRightClick(Sender: TObject);
    procedure sgProcessDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure ActionCerrarExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure sgProcessMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
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
    procedure sgProcessClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ActionVisColIconoExecute(Sender: TObject);
    procedure ActionVisColTituloExecute(Sender: TObject);
    procedure ActionVisColIdentExecute(Sender: TObject);
    procedure ActionVisColThreadsExecute(Sender: TObject);
    procedure ActionVisColDescripcionExecute(Sender: TObject);
    procedure ActionVerDetallesExecute(Sender: TObject);
    procedure ActionVisColPrioridadExecute(Sender: TObject);
    procedure ActionVisColPathExecute(Sender: TObject);
    procedure ActionVisColCommandLineExecute(Sender: TObject);
    procedure sgProcessDblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure ActionAcercaDeExecute(Sender: TObject);
    procedure StatusBar1Click(Sender: TObject);
    procedure ActionReempazarTaskManagerExecute(Sender: TObject);
    procedure ActionRestaurarTaskManagerExecute(Sender: TObject);
    procedure ActionEjecutarExecute(Sender: TObject);
    procedure ActionTerminarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    // Componentes externos...
    OI: TMObjectInspector;
//    XPMenu:TXPMenu;
//    mxProcessExport:TmxStringGridExport;

    FColumnFilename:string;
    _LastOrdenacion: TSortType;
    _LastOrdenOrdenacion: TSortOrder;
    FOrdenOrdenacion: TSortOrder;
    FOrdenacion: TSortType;

    // Exportar los resultados
//	  procedure _ExportProcesses(ATipo:TmxExportType);
    // otras
    procedure OcultarColumna(col:TSortType; Visualizar:boolean);

    // Lista de propiedades
    function EnumClassProps(AProp: TObject; AIndent: integer): Integer;
    procedure RefreshOI(AObject: TObject);
    function ExpandClassProps(AProp: TObject; AIndex,AIndent: integer): Integer;


    // Modifica la ordenacion del Grid.
    procedure _SortGrid();
    function _GetFileNameColumns():string;
    procedure RefreshData(Inicial:Boolean=False);
    procedure IniColumns();
    // Grabar ancho columnas
    procedure SaveColumnWidth();
    // Restaurar columnas
    procedure RestoreColumnWidth();
    // Fechas para pintar en el Grid
    procedure _PaintArrowUp(sGrid:TStringGrid; var Rect: TRect);
    procedure _PaintArrowDown(sGrid:TStringGrid; var Rect: TRect);
    procedure _PaintArrow(ACol, ARow:Integer; ARect:TRect);

    // Grabar configuraciones
    procedure SaveConfigs();
    // Recuperar configuraciones
    procedure RetrieveConfigs();

    // Obtener el OWNER del proceso
    function _GetOwnerProcess(AHandle:string):string;

  public
    procedure _CMAfterShow(var Msg: TMessage); message CM_AFTERSHOW;
    // Ordenación
    property Ordenacion:TSortType read FOrdenacion write FOrdenacion default stNone;
    property OrdenOrdenacion:TSortOrder read FOrdenOrdenacion
                                        write FOrdenOrdenacion default soAsc;
  end;

const
  GutterSize = 15;
  LineColor = $00c8d0d4;

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
  Registry, FormAbout,
  {gnuGetText,} // Prepared for translations
  UPLProcedures, UPLconstantesMI,
  StrUtils, TypInfo;

function GetTempDirectory: String;
var
  tempFolder: array[0..MAX_PATH] of Char;
begin
  GetTempPath(MAX_PATH, @tempFolder);
  result := StrPas(tempFolder);
end;


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



// Ordena un TStringGrid.
procedure SortStringGrid(var GenStrGrid: TStringGrid;
    ThatCol: Integer;
    ColData:TGridData=gdString;
    SortOrder:TSortOrder=soASC);
const
  TheSeparator = '@';
var
  CountItem, I, J, K, ThePosition: integer;
  MyList: TStringList;
  MyString, TempString: string;
  str:string;
  vali:Integer;
  valf:Double;
begin
  CountItem := GenStrGrid.RowCount;
  MyList := TStringList.Create;
  MyList.Sorted := False;
  try
    begin
      for I := 1 to (CountItem - 1) do begin
        Str := GenStrGrid.Rows[I].Strings[ThatCol];
        if (ColData = gdInteger) then begin
          vali := StrToIntDef(Str, 0);
          Str := Format('%*d', [15,vali]);
        end;
        if (ColData = gdFloat) then begin
          valf := StrToFloat(Str);
          Str := Format('%15.2f',[valf]);
        end;
        MyList.Add(Str + TheSeparator + GenStrGrid.Rows[I].Text);
      end;
      Mylist.Sort;
 
      for K := 1 to Mylist.Count do begin
        MyString := MyList.Strings[(K - 1)];
        ThePosition := Pos(TheSeparator, MyString);
        TempString := '';
        {Eliminate the Text of the column on which we have 
          sorted the StringGrid}
        TempString := Copy(MyString, (ThePosition + 1), Length(MyString));
        MyList.Strings[(K - 1)] := '';
        MyList.Strings[(K - 1)] := TempString;
      end;

      if (SortOrder = soASC) then begin
        for J := 1 to (CountItem - 1) do begin
            GenStrGrid.Rows[J].Text := MyList.Strings[(J - 1)];
        end;
      end
      else begin
        for J := 1 to (CountItem - 1) do begin
          I := (CountItem - J);
          GenStrGrid.Rows[I].Text := MyList.Strings[(J - 1)];
        end;
      end;
    end;
 
  finally
    MyList.Free;
  end;
end;

procedure TFormMain.FormShow(Sender: TObject);
begin
  // centrar el panel de info
  pnlInfo.Left := (Self.Width - PnlInfo.Width) div 2;
  pnlInfo.Top := (Self.Height - PnlInfo.Height) div 2;

  // recuperar posicion y tamañao
  RestorePosition(Self);
  RestoreSize(Self);
  // Recuperar configuraciones.
  RetrieveConfigs();

  // Detalles
  pnlRight.Visible := ActionVerDetalles.Checked;
  Splitter1.Visible := ActionVerDetalles.Checked;

  // Nos posteamos el mensaje CM_AFTERSHOW, que nos llegará una vez
  // hecho el show
  PostMessage(Self.Handle, CM_AFTERSHOW, 0, 0);

end;

procedure TFormMain.IniColumns();
begin

  // Columnas
  sgProcess.ColCount := 10;

  // Columna 0 es el índice

  // icono
  //  sgProcess.Cells[1, 0] := 'Icono';
  sgProcess.ColWidths[0] := -1;
  sgProcess.ColWidths[1] := 16;
  // Datos
  sgProcess.Cells[2, 0] := 'Título';        // Caption
  sgProcess.Cells[3, 0] := 'Ident.';        // Handle
  sgProcess.Cells[4, 0] := 'Threads';        // Treads
  sgProcess.Cells[5, 0] := 'Descripción';   // DEsc
  sgProcess.Cells[6, 0] := 'Prioridad';     // Prioridad
  sgProcess.Cells[7, 0] := 'Path';          // Prioridad
  // Otros
  sgProcess.Cells[8, 0] := 'CommandLine';
  sgProcess.Cells[9, 0] := 'Owner';

  // Anchos
  RestoreColumnWidth();

end;

procedure TFormMain._CMAfterShow(var Msg: TMessage);
begin

  // Inicializar columnas
  IniColumns();
  // Activar el componente
  ProcessInfo1.Active := True;

  RefreshData(True);

  // activar el Timer de Refresco
  TimerRefresh.Enabled := True;

end;

procedure TFormMain.TimerRefreshTimer(Sender: TObject);
begin

  // refrescar datos
  if not (ProcessInfo1.Active) then begin
    Exit;
  end;

  // Refrescar Datos
  RefreshData({inicial}False);

end;

procedure TFormMain.RefreshData(Inicial: Boolean);
var
  i:integer;
  props:TProcessProperties;
begin

  // Visualizar el panel
  pnlInfo.Visible := Inicial;
  Application.ProcessMessages;
  pnlInfo.Refresh;

  // proteccion
  try

    // Hay que activarlo (primera vez)
    if (Inicial) then begin
      // refrescar datos
      if not (ProcessInfo1.Active) then begin
        ProcessInfo1.Active := True;
        props := ProcessInfo1.ProcessProperties;

      end;
    end
    else begin
      // !!!!!!!!!!  POR ahora sólo la primera
      // Exit;
    end;


    // refrescar columnas
    for i := 1 to (ProcessInfo1.ObjectsCount) do begin
      // Activar
      ProcessInfo1.ObjectIndex := (ProcessInfo1.ObjectsCount - (i - 1));
      props := ProcessInfo1.ProcessProperties;
      sgProcess.RowCount := ProcessInfo1.ObjectsCount + 1;
      // rellenar
      sgProcess.Cells[0, i] := IntToStr(i);        // ObjectIndex
      sgProcess.Cells[2, i] := props.Caption;        // Caption
      sgProcess.Cells[3, i] := props.Handle;        // Handle

      sgProcess.Cells[4, i] := IntToStr(props.ThreadCount);        // Threads
      sgProcess.Cells[5, i] := props.Description;   // DEsc
      sgProcess.Cells[6, i] := IntToStr(props.Priority);     // Prioridad
      sgProcess.Cells[7, i] := props.ExecutablePath;          // Prioridad

      // Otros
      sgProcess.Cells[8, i] := props.CommandLine;
      sgProcess.Cells[9, i] := _GetOwnerProcess(props.Handle);
    end;


  finally
    // Visualizar el panel
    pnlInfo.Visible := False;
    Application.ProcessMessages;
    pnlInfo.Refresh;
  end;

end;

procedure TFormMain.pnlRightClick(Sender: TObject);
begin
  if (pnlRight.Width = 16) then begin
    pnlRight.Width := 100;
  end
  else begin
    pnlRight.Width := 16;
  end;
end;

procedure TFormMain.sgProcessDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
  StrP:string;
  prior:integer;
  icn:TIcon;
  str:string;

   //···············································································
   procedure WriteText(StringGrid: TStringGrid; ACanvas: TCanvas; const ARect: TRect;
     const Text: string; Format: Word);
   const
     DX = 2;
     DY = 2;
   var
     S: array[0..255] of Char;
   begin
     with Stringgrid, ACanvas, ARect do
     begin
       case Format of
         DT_LEFT: ExtTextOut(Handle, Left + DX, Top + DY,
             ETO_OPAQUE or ETO_CLIPPED, @ARect, StrPCopy(S, Text), Length(Text), nil);

         DT_RIGHT: ExtTextOut(Handle, Right - TextWidth(Text) - 3, Top + DY,
             ETO_OPAQUE or ETO_CLIPPED, @ARect, StrPCopy(S, Text),
             Length(Text), nil);

         DT_CENTER: ExtTextOut(Handle, Left + (Right - Left - TextWidth(Text)) div 2,
             Top + DY, ETO_OPAQUE or ETO_CLIPPED, @ARect,
             StrPCopy(S, Text), Length(Text), nil);
       end;
     end;
   end;
   //···············································································
   procedure Display(StringGrid: TStringGrid; const S: string; Alignment: TAlignment;
                     BackColor:TColor=-1; OnlyColor:Boolean=False);
   const
     Formats: array[TAlignment] of Word = (DT_LEFT, DT_RIGHT, DT_CENTER);
   var
     _Align:TAlignment;
   begin
      // Fila fija?  ==> Salimos
      if (ARow < StringGrid.FixedRows) then begin
        Exit;
      end;

      // Color diferente de -1?
      if (BackColor <> -1) and (not (gdSelected in State)) then begin
        StringGrid.Canvas.Brush.Style := bsSolid;
        StringGrid.Canvas.Brush.Color := BackColor;
        StringGrid.Canvas.FillRect(Rect);
      end;

      // asignado
      _Align := Alignment;

      // Sólo color?
      if not (OnlyColor) then begin
        _Align := taLeftJustify;
      end;

      // Texto
      WriteText(StringGrid, StringGrid.Canvas, Rect, S, Formats[_Align]);
   end;
  //···············································································
  procedure GetFileIconAndDescription(AFileName:string; AIcon: TIcon);
  var
    FileInfo : SHFILEINFO;
  begin

    // Get description type
    SHGetFileInfo(PChar(AFileName),
                  FILE_ATTRIBUTE_NORMAL,
                  FileInfo,
                  SizeOf(FileInfo),
                  SHGFI_TYPENAME or SHGFI_USEFILEATTRIBUTES
                  );
    // Get icon and copy into ImageList
    SHGetFileInfo(PChar(AFileName),
                  FILE_ATTRIBUTE_NORMAL,
                  FileInfo,
                  SizeOf(FileInfo),
                  SHGFI_ICON or SHGFI_SMALLICON or
                  SHGFI_SYSICONINDEX or SHGFI_USEFILEATTRIBUTES
                  );
    AIcon.Handle := FileInfo.hIcon;
  end;
  //···············································································


begin

  // file de titulos
  if (ARow = 0) then begin
    _PaintArrow(ACol, ARow, Rect);
    Exit;
  end;


  if (ACol = 1) then begin

    icn := TIcon.Create;
    try
      Str := sgProcess.Cells[7, ARow];
      Str := AnsiReplaceText(Str, '\\', '\');
//      GetFileIcon(Str, icn);

       GetFileIconAndDescription(Str, icn);

      sgProcess.Canvas.StretchDraw(Rect, icn);
    // DrawIconEx( grid.Canvas.Handle, Rect.Left, Rect.Top, icn.Handle,
   // <-- 2
    // Rect.Right - Rect.Left, Rect.Bottom - Rect.Top, 0, 0, DI_NORMAL );
    // DrawIcon (grid.Canvas.Handle, Rect.Left, Rect.Top, icn.Handle );
    finally
      FreeAndNil(icn);
    end;
    Exit;
  end;






  // Alineación derecha...
  if (ACol = 3) or (ACol = 4) or (ACol = 6) then begin
    Display(sgProcess, sgProcess.Cells[ACol, ARow], taRightJustify, -1, True);
  end;

  // El valor de la prioridad es alto...  > 12
  if (ACol = 6) then begin
    StrP := sgProcess.Cells[6, ARow];
    Prior := StrToIntDef(StrP, 1);
    if (Prior >= 10) then begin
      Display(sgProcess, sgProcess.Cells[ACol, ARow], taRightJustify, $00D5D5FF, True);
    end
    else if (Prior > 4) then begin
      Display(sgProcess, sgProcess.Cells[ACol, ARow], taRightJustify, clMoneyGreen, True);
    end
    else begin
      Display(sgProcess, sgProcess.Cells[ACol, ARow], taRightJustify, clInfoBk, True);
    end;
  end;

  // La columna 0 y 1 del Caption, en GRIS
  if (ACol <= 2) then begin
    Display(sgProcess, sgProcess.Cells[ACol, ARow], taLeftJustify, $00DCE1E4);
  end;


end;

procedure TFormMain.ActionCerrarExecute(Sender: TObject);
begin
  // cerrar
  Self.Close;
end;

procedure TFormMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin

  // Grabar columnas
  SaveColumnWidth();

end;

procedure TFormMain.SaveColumnWidth();
var
  i:Integer;
  TS:TStrings;
begin

  // Crear la estructura
  TS := TStringList.Create();
  // proteccion
  try
    // Recorrer columnas
    for i := 0 to (sgProcess.ColCount - 1) do begin
      TS.Add('Column' + IntToStr(i) + '=' +  IntToStr(sgProcess.ColWidths[i]));
    end;
    TS.SaveToFile(_GetFileNameColumns());
  finally
    FreeAndNil(TS);
  end;
end;


function TFormMain._GetFileNameColumns: string;
begin
  // no se ha calculado todavía
  if (Self.FColumnFilename = STR_EMPTY) then begin
    // Lo calculamos
    Self.FColumnFilename := ChangeFileExt(Application.ExeName, '.col.ini');
  end;
  // retornar
  Result := Self.FColumnFilename;
end;

// Restaurar columnas
procedure TFormMain.RestoreColumnWidth;
var
  i, j:Integer;
  TS:TStrings;
begin

  // Crear la estructura
  TS := TStringList.Create();
  // proteccion
  try

    // Existe
    if not FileExists(_GetFileNameColumns()) then begin
      Exit;
    end;

    // Cargar
    TS.LoadFromFile(_GetFileNameColumns());

    // Recorrer columnas
    for i := 0 to (TS.Count - 1) do begin
      // Asegurarnos de que existe
      if (i < sgProcess.ColCount) then begin
        j := StrToIntDef(TS.Values[TS.Names[i]], 64);
        sgProcess.ColWidths[i] := j;
      end;
    end;
  finally
    FreeAndNil(TS);
  end;
end;

procedure TFormMain.sgProcessMouseDown(Sender: TObject; Button: TMouseButton;
                                    Shift: TShiftState; X, Y: Integer);
var
  pt: TGridcoord;
  i:Integer;
begin

  // No es de titulo
  if (pt.y <> 0) then begin
    Exit;
  end;
  // Punto de click
  pt:= sgProcess.MouseCoord(x, y);

  // Guardar valores
  Self._LastOrdenacion := Self.FOrdenacion;
  Self._LastOrdenOrdenacion := Self.FOrdenOrdenacion;

  // Ha cambiado la columna?
  if (pt.x <> Ord(Self.FOrdenacion))then begin
    // Asignar la nueva
    Self.FOrdenacion := TSortType(pt.x);
    Self.FOrdenOrdenacion := soASC;
  end
  else begin
    // no ha cambiado,
    i := Ord(Self.FOrdenOrdenacion);  // 0 o 1
    Self.FOrdenOrdenacion := TSortOrder((i + 1) MOD 2);
  end;

  // Repintar
  sgProcess.Invalidate;

  // Ordenacion
  _SortGrid();

end;

procedure TFormMain._SortGrid();
begin

  // Numericos?
  if (Self.Ordenacion = stPrioridad) or
     (Self.Ordenacion = stID) or (Self.Ordenacion = stThreads) then begin
    // Ordenar
    SortStringGrid(sgProcess, Ord(Ordenacion), gdInteger, OrdenOrdenacion);
  end
  else begin
    // Ordenar por tipo string
    SortStringGrid(sgProcess, Ord(Ordenacion), gdString, OrdenOrdenacion);
  end;
end;

// Pinta la que toque segun las propiedades de ordenacion.
procedure TFormMain._PaintArrow(ACol, ARow:Integer; ARect:TRect);
begin
  // Fila no de títulos
  if (ARow <> 0) then begin
    Exit;
  end;

  // Columna coincide
  if (ACol = Ord(Self.FOrdenacion)) and (Self.FOrdenacion <> stNone) and
     (Self.FOrdenacion <> stICO) then begin
    // Tipo de ordenacion
    if (Self.FOrdenOrdenacion = soASC) then begin
      _PaintArrowUp(sgProcess, ARect);
    end
    else begin
      _PaintArrowDown(sgProcess, ARect);
    end;
  end;

end;

procedure TFormMain._PaintArrowDown(sGrid:TStringGrid; var Rect: TRect);
var
 APolyLine: Array[0..2] of TPoint;
	SaveCol, BrushCol : TColor;
begin
  // Utilizamos el canvas pasado como parámetro
  with sGrid.Canvas do begin
    // Guardar los valores actuales
    SaveCol := Pen.Color;
    BrushCol := Brush.Color;
    // Activar los nuevos valores depintado
    Brush.Style := bsSolid;
    Pen.Color := sgProcess.FixedColor;
    Brush.Color := sgProcess.FixedColor;
    // Dibujar un rectágulo debajo para tapar el título
    Rectangle(Rect.Right-13, Rect.Top+3, Rect.Right-1, Rect.Top+15);
    // Dibujamos la flecha
    Pen.Color := clGray{clBlack};
    APolyLine[0]:=Point(Rect.Right-4, Rect.Top+5);
    APolyLine[1]:=Point(Rect.Right-11, Rect.Top+5);
    APolyLine[2]:=Point(Rect.Right-8, Rect.Top+11);
    PolyLine(APolyLine);
    Pen.Color := clWhite;
    MoveTo(Rect.Right-7, Rect.Top+11);
    LineTo(Rect.Right-4, Rect.Top+5);

    // Restaurar valores guardados
    Brush.Color := BrushCol;
    Pen.Color := SaveCol;
  end;
end;

procedure TFormMain._PaintArrowUp(sGrid:TStringGrid; var Rect: TRect);
var
 SaveCol, BrushCol : TColor;
begin
  // Utilizamos el canvas pasado por parámetro.
  with sGrid.Canvas do begin
    // Guardar los valores de los colores
    SaveCol := Pen.Color;
    BrushCol := Brush.Color;
    // Nuevo estilo de pintado.
    Brush.Style := bsSolid;
    Pen.Color := sGrid.FixedColor;
    Brush.Color := sGrid.FixedColor;
    // Rectangulo por debajo para tapar el título
    Rectangle(Rect.Right-13, Rect.Top+3, Rect.Right-1, Rect.Top+15);
    // Dibujar la flacha
    Pen.Color := clGray{clBlack};
    MoveTo(Rect.Right-11, Rect.Top+11);
    LineTo(Rect.Right-8, Rect.Top+5);
    LineTo(Rect.Right-7, Rect.Top+5);
    Pen.Color:=clWhite;
    MoveTo(Rect.Right-7, Rect.Top+5);
    LineTo(Rect.Right-4, Rect.Top+11);
    LineTo(Rect.Right-11, Rect.Top+11);

    //Restaurar los colores
    Brush.Color := BrushCol;
    Pen.Color := SaveCol;
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
  List.Columns[1].Width := List.Width - List.Columns[0].Width - 25;
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

  // No asignado?
  if not Assigned(OI) then begin
    OI := TMObjectInspector.Create(Self);
	List.Columns[0].Width := 100;
  end;

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


procedure TFormMain.sgProcessClick(Sender: TObject);
var
  index:integer;
begin

  // Indice
  index := StrToIntDef(sgProcess.Cells[0, sgProcess.Row], -1);

  // válido ?
  if (index <> -1) then begin
    // propiedades
    ProcessInfo1.ObjectIndex := index;
  end;
  // Actualizar propiedades
  RefreshOI(ProcessInfo1.ProcessProperties);

end;

procedure TFormMain.FormCreate(Sender: TObject);
begin

  // Traducir el formulario
  // TranslateComponent(Self);   -- Prepared for translations
  // ini
  OI := nil;

{
  XPMenu := TXPMenu.Create(Self);
  XPMenu.Active := True;
}

  // Crear componente de exportación

{  // Componente de exportación
  mxProcessExport := TmxStringGridExport.Create(Self);
  mxProcessExport.StringGrid := sgProcess;
  mxProcessExport.ExportStyle := xsFile;
  mxProcessExport.TimeFormat := 'hh:mm';
}
end;

procedure TFormMain.FormDestroy(Sender: TObject);
begin
  // Asignado?
  if Assigned(OI) then begin
    FreeAndNil(OI);
  end;
end;

procedure TFormMain.ActionVisColIconoExecute(Sender: TObject);
begin
  // cambiar la action
  ActionVisColIcono.Checked := not ActionVisColIcono.Checked;
  if (ActionVisColIcono.Checked) then begin
    sgProcess.ColWidths[1] := 16;
  end
  else begin
    sgProcess.ColWidths[1] := -1;
  end;


end;

procedure TFormMain.ActionVisColTituloExecute(Sender: TObject);
begin
  // cambiar la action
  ActionVisColTitulo.Checked := not ActionVisColTitulo.Checked;
  OcultarColumna(stTitulo, ActionVisColTitulo.Checked);
end;

procedure TFormMain.OcultarColumna(col: TSortType; Visualizar:boolean);
var
  index:integer;
begin
  index := Ord(col);
  if (Visualizar) then begin
    sgProcess.ColWidths[index] := 100;
  end
  else begin
    sgProcess.ColWidths[index] := -1;
  end;
end;

procedure TFormMain.ActionVisColIdentExecute(Sender: TObject);
begin
  // cambiar la action
  ActionVisColIdent.Checked := not ActionVisColIdent.Checked;
  OcultarColumna(stID, ActionVisColIdent.Checked);

end;

procedure TFormMain.ActionVisColThreadsExecute(Sender: TObject);
begin
  // cambiar la action
  ActionVisColThreads.Checked := not ActionVisColThreads.Checked;
  OcultarColumna(stThreads, ActionVisColThreads.Checked);
end;

procedure TFormMain.ActionVisColDescripcionExecute(Sender: TObject);
begin
  // cambiar la action
  ActionVisColDescripcion.Checked := not ActionVisColDescripcion.Checked;
  OcultarColumna(stDesc, ActionVisColDescripcion.Checked);

end;

procedure TFormMain.ActionVerDetallesExecute(Sender: TObject);
begin
  ActionVerDetalles.Checked := not ActionVerDetalles.Checked;

  // Visible?
  pnlRight.Visible := ActionVerDetalles.Checked;
  Splitter1.Visible := ActionVerDetalles.Checked;
end;

procedure TFormMain.ActionVisColPrioridadExecute(Sender: TObject);
begin
  // cambiar la action
  ActionVisColPrioridad.Checked := not ActionVisColPrioridad.Checked;
  OcultarColumna(stPrioridad, ActionVisColPrioridad.Checked);
end;

procedure TFormMain.ActionVisColPathExecute(Sender: TObject);
begin
  // cambiar la action
  ActionVisColPath.Checked := not ActionVisColPath.Checked;
  OcultarColumna(stPath, ActionVisColPath.Checked);
end;

procedure TFormMain.ActionVisColCommandLineExecute(Sender: TObject);
begin
  // cambiar la action
  ActionVisColCommandLine.Checked := not ActionVisColCommandLine.Checked;
  OcultarColumna(stCL, ActionVisColCommandLine.Checked);
end;

procedure TFormMain.sgProcessDblClick(Sender: TObject);
begin
  // detalles
  ActionVerDetalles.Execute;
end;

procedure TFormMain.Button1Click(Sender: TObject);
var
  str:string;
  i:Integer;
begin
  Str := sgProcess.Cells[3, sgProcess.Row];
  i := ProcessInfo1.Terminate('Handle', Str, 0);
  MessageDlg(IntToStr(i), mtInformation, [mbOK], 0);
end;

procedure TFormMain.Button2Click(Sender: TObject);
var
  str:string;
begin
  Str := sgProcess.Cells[3, sgProcess.Row];
  ProcessInfo1.SetPriority('Handle', Str, 128);
end;

procedure TFormMain.Button3Click(Sender: TObject);
var
  i:Integer;
begin
  i := ProcessInfo1.Create_('', '', 'c:\WINDOWS\NOTEPAD.EXE ', STR_EMPTY, '', 0);
  MessageDlg('Resultado; PID=' + IntToStr(i), mtInformation, [mbOK], 0);
end;

procedure TFormMain.Button4Click(Sender: TObject);
var
  str:string;
  AUsuario, ADominio:string;
begin
  Str := sgProcess.Cells[3, sgProcess.Row];
  ProcessInfo1.GetOwner('Handle', Str, AUsuario, ADominio);
  MessageDlg('Pertenece a: ' + ADominio + ' | ' + AUsuario, mtInformation, [mbOK], 0);
end;

procedure TFormMain.Button5Click(Sender: TObject);
var
  str:string;
  SID:string;
begin
  Str := sgProcess.Cells[3, sgProcess.Row];
  ProcessInfo1.GetOwnerSID('Handle' , Str, SID);
  MessageDlg('Pertenece a: ' + SID, mtInformation, [mbOK], 0);

end;

// Obtener el owner del proceso.
function TFormMain._GetOwnerProcess(AHandle:string): string;
var
  AUsuario, ADominio:string;
begin
  Exit;
  Result := STR_EMPTY;
  try
    ProcessInfo1.GetOwner('Handle', AHandle, AUsuario, ADominio);
    Result := ADominio + ' | ' + AUsuario;
  except
    // Nada
  end;
end;

procedure TFormMain.ActionAcercaDeExecute(Sender: TObject);
var
  FormAbout:TFAbout;
begin
  // Abrir el form
  FormAbout := TFAbout.CReate(Application);
  FormAbout.ShowModal;
end;


procedure TFormMain.StatusBar1Click(Sender: TObject);
begin
  // Abrir la página del autor
  ShellExecute(Handle, 'open',
               'http://neftali.clubdelphi.com/',
              nil, nil, SW_SHOW);end;

procedure TFormMain.ActionReempazarTaskManagerExecute(Sender: TObject);
var
  Reg:TRegistry;
  b:Boolean;
begin

  Reg := TRegistry.Create();
  try
    reg.RootKey := HKEY_LOCAL_MACHINE;
    b := reg.KeyExists(DEBUGGER_KEY);
    // Existe? => Me quedo el valor
    if (b) then begin
      reg.OpenKey(DEBUGGER_KEY, False);
      edtLastTaskMan.Text := reg.ReadString(DEBUGGER_VALUENAME);

      // Grabar el nuevo
      Reg.WriteString(DEBUGGER_VALUENAME, '"' + Application.ExeName + '"');
    end;
  finally
    FreeAndNil(reg);
  end;

  // Acciones
  ActionReempazarTaskManager.Visible := False;
  ActionRestaurarTaskManager.Visible := True;

end;

procedure TFormMain.ActionRestaurarTaskManagerExecute(Sender: TObject);
var
  Reg:TRegistry;
  b:Boolean;
begin

  // No hay nada válido?
  if (edtLastTaskMan.Text = STR_EMPTY) then begin
    ActionRestaurarTaskManager.Enabled := False;
    Exit;
  end;

  Reg := TRegistry.Create();
  try

    reg.RootKey := HKEY_LOCAL_MACHINE;
    // Había alguno antes?
    if (edtLastTaskMan.Text <> STR_EMPTY) then begin
      // Grabar el antiguo
      b := reg.OpenKey(DEBUGGER_KEY, True);
      // correcto?
      if (b) then begin
        Reg.WriteString(DEBUGGER_VALUENAME, edtLastTaskMan.text);
      end;
    end
    else begin // Eliminar la key
      // Acceder a la clave
      b := reg.OpenKey(DEBUGGER_KEY, True);
      // correcto?
      if (b) then begin
        reg.DeleteValue(DEBUGGER_VALUENAME);
      end;
    end;
  finally
    FreeAndNil(reg);
  end;

  ActionReempazarTaskManager.Visible := True;
  ActionRestaurarTaskManager.Visible := False;

  edtLastTaskMan.Text:= STR_EMPTY;

end;

procedure TFormMain.ActionEjecutarExecute(Sender: TObject);
var
  ShellApplication: Variant;
begin
  ShellApplication := CreateOleObject('Shell.Application');
  ShellApplication.FileRun;
end;

procedure TFormMain.ActionTerminarExecute(Sender: TObject);
var
  i, res:Integer;
  Str:string;
  cap, Str1, Str2:string;
begin


  // Seleccion actual
  i := sgProcess.Row;
  // No hay ninguno seleccionado?  // Nothing selected in Grid
  if (i = -1) then begin
    Exit;
  end;

  // title
  cap := sgProcess.Cells[1{colCaption.Index}, i];

  Str1 := Format(EMSG_KILL_PROCESS,[cap]);
  Str2 := EMSG_TITLE_KILLPROCESS;

  // Question
  res := MessageBox(0, PChar(Str1), PChar(Str2), MB_ICONQUESTION or MB_YESNO or MB_DEFBUTTON2);
  if (res = idYes) then begin
    // Matar el proceso
    Str := sgProcess.Cells[3{colHandle.Index}, i];
    StrToIntDef(Str, 0);
//    // Correcto
//    if (h > 0) then begin
//      ProcessInfo1.Terminate('Handle', Str, 0);
//    end;
  end;


end;

procedure TFormMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  // Grabar posicon
  SavePosition(Self);
  SaveSize(Self);
  // Grabar cnfiguraciones
  SaveConfigs();

end;

// Recuperar configuraciones
procedure TFormMain.RetrieveConfigs();
var
  path:string;
begin

  path := ConfigFilePath();

  // No existe el fichero?
  if not FileExists(path) then begin
    raise EFilerError.Create('No existe el fichero de coniguración');
    Exit;
  end;

  // Valores
  TimerRefresh.Interval := RestoreOptionValue(path, 'TimerRefresh_Interval', 500);

  ActionVisColCommandLine.Checked := RestoreOptionValue(path, 'ActionVisColCommandLine_Checked', True);
  ActionVisColDescripcion.Checked := RestoreOptionValue(path, 'ActionVisColDescripcion_Checked', True);
  ActionVisColIcono.Checked := RestoreOptionValue(path, 'ActionVisColIcono_Checked', True);
  ActionVisColIdent.Checked := RestoreOptionValue(path, 'ActionVisColIdent_Checked', True);
  ActionVisColPath.Checked := RestoreOptionValue(path, 'ActionVisColPath_Checked', True);
  ActionVisColPrioridad.Checked := RestoreOptionValue(path, 'ActionVisColPrioridad_Checked', True);
  ActionVisColThreads.Checked := RestoreOptionValue(path, 'ActionVisColThreads_Checked', True);
  ActionVisColTitulo.Checked := RestoreOptionValue(path, 'ActionVisColTitulo_Checked', True);
  ActionVerDetalles.Checked := RestoreOptionValue(path, 'ActionVerDetalles_Checked', True);

  edtLastTaskMan.Text := RestoreOptionValue(path, 'edtLastTaskMan_Text', STR_EMPTY);

  ActionReempazarTaskManager.Visible := RestoreOptionValue(path, 'ActionReempazarTaskManager_Visible', True);
  ActionRestaurarTaskManager.Visible := RestoreOptionValue(path, 'ActionRestaurarTaskManager_Visible', False);

end;

// Grabar configuraciones
procedure TFormMain.SaveConfigs;
var
  path:string;
begin

  path := ConfigFilePath();

  // No existe el fichero?
  if not FileExists(path) then begin
    raise EFilerError.Create(EMSG_CONFIGFILE_NOTEXIST);
    Exit;
  end;

  // Grabar valores
  SaveOptionValues(path, ['TimerRefresh_Interval'], [IntToStr(TimerRefresh.Interval)]);


  SaveOptionValues(path, ['ActionVisColCommandLine_Checked', 'ActionVisColDescripcion_Checked',
                          'ActionVisColIcono_Checked', 'ActionVisColIdent_Checked',
                          'ActionVisColPath_Checked','ActionVisColPrioridad_Checked',
                          'ActionVisColThreads_Checked', 'ActionVisColTitulo_Checked',
                          'ActionVerDetalles_Checked'],
                         [BoolToStr(ActionVisColCommandLine.Checked, True),
                          BoolToStr(ActionVisColDescripcion.Checked, True),
                          BoolToStr(ActionVisColIcono.Checked, True),
                          BoolToStr(ActionVisColIdent.Checked, True),
                          BoolToStr(ActionVisColPath.Checked, True),
                          BoolToStr(ActionVisColPrioridad.Checked, True),
                          BoolToStr(ActionVisColThreads.Checked, True),
                          BoolToStr(ActionVisColTitulo.Checked, True),
                          BoolToStr(ActionVerDetalles.Checked, True)]);

  // Otros
  SaveOptionValues(path, ['ActionReempazarTaskManager_Visible',
                          'ActionRestaurarTaskManager_Visible'],
                  [BoolToStr(ActionReempazarTaskManager.Visible , True),
                   BoolToStr(ActionRestaurarTaskManager.Visible, True)]);

  SaveOptionValues(path, ['edtLastTaskMan_Text'], [edtLastTaskMan.Text]);

end;

end.
