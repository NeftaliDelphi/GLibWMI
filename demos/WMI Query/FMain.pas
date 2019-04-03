unit FMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, ComCtrls, CWMIBase, CWMISQL, OI,
  ImgList, Grids, ValEdit;

type
  TFormMain = class(TForm)
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    pnlTitle: TPanel;
    imgComponent: TImage;
    lblTitle: TLabel;
    WMISQL: TWMISQL;
    Panel2: TPanel;
    Label15: TLabel;
    Splitter1: TSplitter;
    ImageList1: TImageList;
    edtSQL: TComboBox;
    btnExecute: TButton;
    mmVal: TMemo;
    vleProcesos: TValueListEditor;
    Label1: TLabel;
    procedure btnExecuteClick(Sender: TObject);
  private
    // Rellenar las Claves-Valor
    procedure FillValues();

  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.dfm}


procedure TFormMain.btnExecuteClick(Sender: TObject);
begin
  WMISQL.Active := False;
  WMISQL.SQL := edtSQL.Text;

  // Activar
  WMISQL.Active := True;

  // Cargar valores
  mmVal.Lines.Text := WMISQL.AllProperties.Text;

  FillValues();
end;

procedure TFormMain.FillValues;
begin

  vleProcesos.Strings.Clear;
  vleProcesos.Strings.AddStrings(WMISQL.Properties);

end;

end.
