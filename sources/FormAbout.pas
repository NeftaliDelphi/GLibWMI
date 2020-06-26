unit FormAbout;

interface

{$I .\..\package\jedi.inc}

uses
  {$IFDEF DELPHIX_TOKYO_UP}
  VCL.Forms, VCL.StdCtrls, VCL.ExtCtrls, VCL.Graphics, VCL.Controls, System.Classes, Vcl.Imaging.jpeg;
  {$ELSE}
  Forms, StdCtrls, ExtCtrls, Graphics, Controls, Classes, jpeg;
  {$ENDIF}

type
  TFAbout = class(TForm)
    pnSuperior: TPanel;
    pnlInfo: TPanel;
    lblMail: TLabel;
    lblWeb: TLabel;
    btnCerrar: TButton;
    pnldesc: TPanel;
    lblDescription: TLabel;
    imgBlog: TImage;
    pnlSuperior: TPanel;
    lblLibreria: TLabel;
    lbVersion: TLabel;
    imgLogo: TImage;
    imgBuildwith: TImage;
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
  lbVersion.Caption := GLIBWMI_VERSION; // Format(GLIBSI_LBL,[GLIBSI_VERSION]);
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
