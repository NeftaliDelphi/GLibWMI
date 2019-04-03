unit FormAbout;

interface

uses
  Forms, StdCtrls, ExtCtrls, Graphics,
  Controls, Classes;

type
  TFAbout = class(TForm)
    imgLogo: TImage;
    lbVersion: TLabel;
    btnCerrar: TButton;
    pnSuperior: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Label1Click(Sender: TObject);
  end;

implementation

uses
  SysUtils, UConstantes, ShellAPI, Windows;

{$R *.dfm}

procedure TFAbout.FormCreate(Sender: TObject);
begin
  lbVersion.Caption := Format(GLIBSI_LBL,[GLIBSI_VERSION]);
end;

procedure TFAbout.Label1Click(Sender: TObject);
begin
  ShellExecute(Handle,
         'open',
         PChar(TLabel(Sender).Caption),
         nil,
         nil,
         SW_SHOW);
end;

end.
