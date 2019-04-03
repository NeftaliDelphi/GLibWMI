// ****************************************************************************
// * Export components for Delphi.
// ****************************************************************************
// * Copyright 2001-2005, Bitvadász Kft. All Rights Reserved.
// ****************************************************************************
// * This component can be freely used and distributed in commercial and
// * private environments, provied this notice is not modified in any way.
// ****************************************************************************
// * Feel free to contact me if you have any questions, comments or suggestions
// * at support@maxcomponents.net
// ****************************************************************************
// * Web page: www.maxcomponents.net
// ****************************************************************************
// * Date last modified: 03.03.2005
// ****************************************************************************
// * TmxExport v2.37
// ****************************************************************************
// * Description:
// *
// * The TmxExport is a 100% native VCL component to export tables, queries,
// * stringlists, etc. to different file formats.
// *
// ****************************************************************************

Unit mxExportAbout;

Interface

// *************************************************************************************
// ** List of used units
// *************************************************************************************

Uses
     
     Windows,
     Messages,
     Classes,
     
     Controls,
     Forms,
     
     StdCtrls,
     Buttons,
     ShellAPI,
     ExtCtrls;

Type
     Tfrm_ExportAboutBox = Class( TForm )

          lbl_Copyright: TLabel;
          Lbl_Delphi: TLabel;
          Lbl_ComponentName: TLabel;
          Label1: TLabel;
          Label4: TLabel;
          Label5: TLabel;
          Label6: TLabel;
          Label3: TLabel;
          Panel1: TPanel;
          btn_WebSite: TSpeedButton;
          btn_Close: TSpeedButton;
          Panel2: TPanel;
          SpeedButton1: TSpeedButton;
          Label2: TLabel;
          Label7: TLabel;

          Procedure Panel2MouseDown( Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer );
          Procedure btn_CloseClick( Sender: TObject );
          Procedure btn_WebSiteClick( Sender: TObject );
          Procedure SpeedButton1Click( Sender: TObject );

     Private

     End;

Procedure ShowAboutBox( Const ComponentName: String );

// *************************************************************************************
// ** End of Interface section
// *************************************************************************************

Implementation

{$R *.DFM}

// *************************************************************************************
// ** ShowAboutBox, 4/11/01 10:13:27 AM
// *************************************************************************************

Procedure ShowAboutBox( Const ComponentName: String );
Begin
     With Tfrm_ExportAboutBox.Create( Application ) Do
     Try
          Lbl_ComponentName.Caption := ComponentName;

          Lbl_Delphi.Caption := 'Compiled in ' +

{$IFDEF VER80} 'Delphi 1.0'{$ENDIF}
{$IFDEF VER90} 'Delphi 2.0'{$ENDIF}
{$IFDEF VER100} 'Delphi 3.0'{$ENDIF}
{$IFDEF VER120} 'Delphi 4.0'{$ENDIF}
{$IFDEF VER130} 'Delphi 5.0'{$ENDIF}
{$IFDEF VER140} 'Delphi 6.0'{$ENDIF}
{$IFDEF VER150} 'Delphi 7.0'{$ENDIF}
{$IFDEF VER170} 'Delphi 2005'{$ENDIF}
{$IFDEF VER180} 'Delphi 2006'{$ENDIF}
{$IFDEF VER93} 'C++Builder 1.0'{$ENDIF}
{$IFDEF VER110} 'C++Builder 3.0'{$ENDIF}
{$IFDEF VER125} 'C++Builder 4.0'{$ENDIF};

          ShowModal;

     Finally
          Free;
     End;
End;

Procedure Tfrm_ExportAboutBox.Panel2MouseDown( Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer );
Begin
     ReleaseCapture;
     Perform( WM_SYSCOMMAND, $F012, 0 );
End;

Procedure Tfrm_ExportAboutBox.btn_CloseClick( Sender: TObject );
Begin
     Close;
End;

Procedure Tfrm_ExportAboutBox.btn_WebSiteClick( Sender: TObject );
Begin
     ShellExecute( Application.Handle, Nil, 'www.maxcomponents.net', Nil, Nil, SW_SHOWNOACTIVATE );
End;

Procedure Tfrm_ExportAboutBox.SpeedButton1Click( Sender: TObject );
Begin
     ShellExecute( Application.Handle, Nil, 'mailto:support@maxcomponents.net', Nil, Nil, SW_SHOWNOACTIVATE );
End;

End.

