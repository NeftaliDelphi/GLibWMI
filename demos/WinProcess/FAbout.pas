unit FAbout;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, ExtCtrls, StdCtrls, System.Actions;

type
  TFormAbout = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    ActionList1: TActionList;
    ActionClose: TAction;
    Label12: TLabel;
    Label1: TLabel;
    Label11: TLabel;
    Label16: TLabel;
    Label14: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure ActionCloseExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Label16Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAbout: TFormAbout;

const
  MAILADRESS = 'german_ral@hotmail.com';

implementation

{$R *.dfm}

uses
  ShellAPI;

procedure TFormAbout.ActionCloseExecute(Sender: TObject);
begin
  Self.Close;
end;

procedure TFormAbout.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFormAbout.Label16Click(Sender: TObject);
var
  em_subject, em_body, em_mail : string;
begin
  // Email
  em_subject := '(ProcessList) - ';
  em_mail := 'mailto:' + MAILADRESS + '?subject=' +
    em_subject + '&body=' + em_body ;
  // Enviar
  ShellExecute(Handle,'open', PChar(em_mail), nil, nil, SW_SHOWNORMAL) ;

end;

procedure TFormAbout.Label2Click(Sender: TObject);
begin
  // Abrir la página de ayuda
  ShellExecute(Handle, 'open',
               'http://neftali.Clubdelphi.com/?p=589',
              nil, nil, SW_SHOW);
end;


procedure TFormAbout.Label3Click(Sender: TObject);
begin
  // Abrir la página de ayuda
  ShellExecute(Handle, 'open',
               'https://sourceforge.net/projects/glibwmi/',
               nil, nil, SW_SHOW);
end;

procedure TFormAbout.Label4Click(Sender: TObject);
begin
  // Abrir la página de ayuda
  ShellExecute(Handle, 'open',
               'http://www.embarcadero.com/products/delphi',
               nil, nil, SW_SHOW);
end;

procedure TFormAbout.Label6Click(Sender: TObject);
begin
  Self.Close;
end;

procedure TFormAbout.FormCreate(Sender: TObject);
begin
  // Traducir el formulario
//--  TranslateComponent(Self);
end;

end.
