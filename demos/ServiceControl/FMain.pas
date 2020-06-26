unit FMain;

interface

uses
  {$IFDEF DELPHIX_TOKYO_UP} System.ImageList, System.Actions, {$ENDIF}
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, CWMIBase, CServiceInfo, StdCtrls, ComCtrls, ExtCtrls,
  ToolWin, ImgList, ActnList;

type
  TFormMain = class(TForm)
    sgServices: TStringGrid;
    ServiceInfo1: TServiceInfo;
    Button1: TButton;
    Button2: TButton;
    btnRefresh: TButton;
    Button4: TButton;
    sbMain: TStatusBar;
    Button3: TButton;
    Button5: TButton;
    Timer1: TTimer;
    Panel1: TPanel;
    ToolBar1: TToolBar;
    ActionList1: TActionList;
    ImageList1: TImageList;
    cbStart: TComboBox;
    Button6: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    procedure CargarDatosGrid();

  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.dfm}

procedure TFormMain.FormShow(Sender: TObject);
begin

  // Cargar datso
  ServiceInfo1.Active := True;

  CargarDatosGrid();


end;

procedure TFormMain.Button1Click(Sender: TObject);
var
  i:integer;
  Str:string;
begin
  Str := sgServices.Cells[0, sgServices.Row];
  i := ServiceInfo1.InterrogateService('ProcessID', Str);
  sbMain.SimpleText := 'Resultado: ' + ServiceInfo1.GetErrorControlAsString(i);
end;


procedure TFormMain.Button2Click(Sender: TObject);
var
  i:integer;
  Str:string;
begin
  Str := sgServices.Cells[1, sgServices.Row];
  i := ServiceInfo1.StartService('DisplayName', Str);
  sbMain.SimpleText := 'Resultado: ' + ServiceInfo1.GetErrorControlAsString(i);

  // refrescar
  btnRefreshClick(nil);
end;

procedure TFormMain.btnRefreshClick(Sender: TObject);
begin
  // Cerrar
  ServiceInfo1.Active := False;
  // Abrir
  ServiceInfo1.Active := True;

  // Refrescar
  CargarDatosGrid();
end;

procedure TFormMain.CargarDatosGrid();
var
  i:Integer;
begin
  //
  sgServices.Cells[0, 0] := 'ID';
  sgServices.Cells[0, 1] := 'Name';
  sgServices.Cells[0, 2] := 'FileName';
  sgServices.Cells[0, 3] := 'State';
  sgServices.Cells[0, 4] := 'Start Mode';

  sgServices.RowCount := ServiceInfo1.ObjectsCount;


  // Cargar el Grid
  for i := 0 to (ServiceInfo1.ObjectsCount - 1) do begin 
    ServiceInfo1.ObjectIndex := i + 1;

    sgServices.Cells[0, i + 1] := IntToStr(ServiceInfo1.ServiceProperties.ProcessId);
    sgServices.Cells[1, i + 1] := ServiceInfo1.ServiceProperties.DisplayName;
    sgServices.Cells[2, i + 1] := ExtractFileName(ServiceInfo1.ServiceProperties.PathName);
    sgServices.Cells[3, i + 1] := ServiceInfo1.ServiceProperties.State;
    sgServices.Cells[4, i + 1] := ServiceInfo1.ServiceProperties.StartMode;
  end;

end;

procedure TFormMain.Button4Click(Sender: TObject);
var
  i:integer;
  Str:string;
begin
  Str := sgServices.Cells[1, sgServices.Row];
  i := ServiceInfo1.StopService('DisplayName', Str);
  sbMain.SimpleText := 'Resultado: ' + ServiceInfo1.GetErrorControlAsString(i);
  // refrescar
  btnRefreshClick(nil);
end;

procedure TFormMain.Button3Click(Sender: TObject);
var
  i:integer;
  Str:string;
begin
  Str := sgServices.Cells[1, sgServices.Row];
  i := ServiceInfo1.PauseService('DisplayName', Str);
  sbMain.SimpleText := 'Resultado: ' + ServiceInfo1.GetErrorControlAsString(i);
  // refrescar
  btnRefreshClick(nil);

end;

procedure TFormMain.Button5Click(Sender: TObject);
var
  i:integer;
  Str:string;
begin
  Str := sgServices.Cells[1, sgServices.Row];
  i := ServiceInfo1.ResumeService('DisplayName', Str);
  sbMain.SimpleText := 'Resultado: ' + ServiceInfo1.GetErrorControlAsString(i);
  // refrescar
  btnRefreshClick(nil);
end;

procedure TFormMain.Timer1Timer(Sender: TObject);
begin
  // refrescar de forma automática
  btnRefreshClick(nil);
end;

procedure TFormMain.Button6Click(Sender: TObject);
var
  i:integer;
  Str, ini:string;
begin
  Str := sgServices.Cells[1, sgServices.Row];
  ini := cbStart.Items[cbStart.ItemIndex];
  i := ServiceInfo1.ChangeStartMode('DisplayName', Str, ini);
  sbMain.SimpleText := 'Resultado: ' + ServiceInfo1.GetErrorControlAsString(i);
  // refrescar
  btnRefreshClick(nil);

end;

end.
