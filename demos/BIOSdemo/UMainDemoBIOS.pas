unit UMainDemoBIOS;

interface

{$I .\..\..\package\jedi.inc}

uses
  {$IFDEF DELPHIX_TOKYO_UP} System.UITypes, {$ENDIF}
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, ComCtrls, ToolWin, StdCtrls, ExtCtrls, ImgList,
  Buttons, CWMIBase, CBiosInfo, CheckLst, System.ImageList, System.Actions;

// Mensages
const
  CM_AFTERSHOW = WM_USER + 7841;
  STR_EMPTY = '';

type
  TFormMainBios = class(TForm)
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
    Label1: TLabel;
    edtName: TEdit;
    Label2: TLabel;
    edtManufacturer: TEdit;
    Label3: TLabel;
    edtDescription: TEdit;
    Label4: TLabel;
    edtLang: TEdit;
    Label5: TLabel;
    edtIntallLang: TEdit;
    Label6: TLabel;
    edtLangList: TEdit;
    Label7: TLabel;
    edtRelaseDate: TEdit;
    cbPrimaria: TCheckBox;
    cbPresente: TCheckBox;
    Label8: TLabel;
    edtVersion: TEdit;
    edtVersionMajor: TEdit;
    edtVersionMinor: TEdit;
    Label9: TLabel;
    edtID: TEdit;
    Label10: TLabel;
    edtState: TEdit;
    edtStateStr: TEdit;
    Label11: TLabel;
    edtStatus: TEdit;
    Label12: TLabel;
    edtVersionManufacturer: TEdit;
    Label13: TLabel;
    edtTarget: TEdit;
    edtTargetStr: TEdit;
    ToolButton5: TToolButton;
    ActionPrint: TAction;
    PrintDialog1: TPrintDialog;
    rePrint: TRichEdit;
    BiosInfo1: TBiosInfo;
    Label14: TLabel;
    clbCaract: TCheckListBox;
    Label15: TLabel;
    procedure ActionCerrarExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ActionInfoExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActionPrintExecute(Sender: TObject);
  private
    // Procedimientos para capturar mensajes
    procedure CMAfterShow(var Msg: TMessage); message CM_AFTERSHOW;
  public
    { Public declarations }
  end;


var
  FormMainBios: TFormMainBios;

//=========================================================================
//
// I M P L E M E N T A T I O N
//
//=========================================================================
implementation

{$R *.dfm}

uses
  FormAbout;

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

procedure TFormMainBios.ActionCerrarExecute(Sender: TObject);
begin
  Self.Close;
end;

procedure TFormMainBios.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := False;
  if (MessageDlg('¿Realmente desea cerrar la demostración?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then begin
    CanClose := True;
  end;
end;

procedure TFormMainBios.pnlTitleMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFormMainBios.ActionInfoExecute(Sender: TObject);
var
  fAbout:TFAbout;
begin

  fAbout := TFAbout.Create(Application);
  fAbout.ShowModal;

end;

procedure TFormMainBios.CMAfterShow(var Msg: TMessage);
var
  i,j:Integer;
  str:string;
begin

  // Activar...
  BiosInfo1.Active := True;

  // Rellenar las propiedades...
  // Ha encontrado al menos 1?
  if (BiosInfo1.ObjectsCount = 0) then begin
    Exit;
  end;

  // Rellenar...
  edtName.Text := BiosInfo1.BiosProperties.Name;
  edtManufacturer.Text := BiosInfo1.BiosProperties.Manufacturer;
  edtDescription.Text := BiosInfo1.BiosProperties.Description;

  edtLang.Text := BiosInfo1.BiosProperties.CurrentLanguage;
  try
    edtIntallLang.Text := IntToStr(BiosInfo1.BiosProperties.InstallableLanguages);
  except
    edtIntallLang.Text := STR_EMPTY;
  end;

  edtLangList.Text := BiosInfo1.BiosProperties.ListOfLanguagesAsString;

  edtRelaseDate.Text := DateToStr(BiosInfo1.BiosProperties.ReleaseDate);
  cbPrimaria.Checked := BiosInfo1.BiosProperties.PrimaryBIOS;
  cbPresente.Checked := BiosInfo1.BiosProperties.SMBIOSPresent;

  edtVersion.Text := BiosInfo1.BiosProperties.SMBIOSBIOSVersion;
  edtVersionMajor.Text := IntToStr(BiosInfo1.BiosProperties.SMBIOSMajorVersion);
  edtVersionMinor.Text := IntToStr(BiosInfo1.BiosProperties.SMBIOSMinorVersion);

  edtVersionManufacturer.Text := BiosInfo1.BiosProperties.BIOSVersionAsString;

  edtID.Text := BiosInfo1.BiosProperties.SoftwareElementID;
  edtState.Text := IntToStr(BiosInfo1.BiosProperties.SoftwareElementState);
  edtStatus.Text := BiosInfo1.BiosProperties.Status;

  edtTarget.Text := IntToStr(BiosInfo1.BiosProperties.TargetOperatingSystem);

  for i := 0 to (BiosInfo1.BiosProperties.BiosCharacteristicsCount - 1) do begin
    Str := BiosInfo1.BiosProperties.GetAllBiosCharacteristicsAsString(i);
    clbCaract.Items.Add(Str);

    for j := 0 to (BiosInfo1.BiosProperties.BiosCharacteristicsCount - 1) do begin
      if (BiosInfo1.BiosProperties.BiosCharacteristics[j] = i) then begin
        clbCaract.Checked[i] := True;
        Break;
      end;
    end;
  end;

end;

procedure TFormMainBios.FormShow(Sender: TObject);
begin
  // Nos posteamos el mensaje CM_AFTERSHOW, que nos llegará una vez
  PostMessage(Self.Handle, CM_AFTERSHOW, 0, 0);
end;

procedure TFormMainBios.ActionPrintExecute(Sender: TObject);
var
  b:Boolean;
begin

  // Diálogo
  b := PrintDialog1.Execute;

  // Aceptado?
  if (b) then begin
    rePrint.Lines.Add(BiosInfo1.AllProperties[0]);
    rePrint.Print('Información de BiosInfo (GLibWMI)');
  end;

end;

end.
