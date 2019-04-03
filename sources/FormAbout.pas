unit FormAbout;

interface

uses
  Forms, StdCtrls, ExtCtrls, Graphics,
  Controls, Classes;

type
  TFAbout = class(TForm)
    imgLogo: TImage;
    pnSuperior: TPanel;
    Label2: TLabel;
    pnlInfo: TPanel;
    lblMail: TLabel;
    lblWeb: TLabel;
    btnCerrar: TButton;
    lbVersion: TLabel;
    Shape1: TShape;
    Label4: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure lblMailClick(Sender: TObject);
    procedure lblWebClick(Sender: TObject);
    procedure btnCerrarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  end;

implementation

uses
  SysUtils, UConstantes, ShellAPI, Windows;

{$R *.dfm}

procedure TFAbout.FormCreate(Sender: TObject);
begin
  lbVersion.Caption := GLIBSI_VERSION; // Format(GLIBSI_LBL,[GLIBSI_VERSION]);
end;

procedure TFAbout.lblMailClick(Sender: TObject);
var
  em_subject, em_body, em_mail : string;
begin
  // Email
  em_subject := '(GlibWMI Info)-';
  em_mail := 'mailto:' + (TLabel(Sender).Hint) + '?subject=' +
    em_subject + '&body=' + em_body ;
  // Enviar
  ShellExecute(Handle,'open', PChar(em_mail), nil, nil, SW_SHOWNORMAL) ;
end;

procedure TFAbout.lblWebClick(Sender: TObject);
begin
  ShellExecute(Handle,
         'open',
         PChar(TLabel(Sender).Caption),
         nil,
         nil,
         SW_SHOW);
end;

procedure TFAbout.btnCerrarClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFAbout.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
