{ 03/10/2006 17:26:41 (GMT+2:00) > [gestevez on GESTEVEZ] checked in Actualizados componentes de Exportación  }
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

Unit mxExportReg;

Interface

{$I MAX.INC}

// *************************************************************************************
// ** Component registration
// *************************************************************************************

Procedure Register;

Implementation

{IFDEF DELPHI4_UP}
{R *.DCR}
{ENDIF}

// *************************************************************************************
// ** List of used units
// *************************************************************************************

Uses
     SysUtils,
     Classes,
     comctrls,
{$IFDEF Delphi6_Up}
     DesignIntf,
     DesignEditors,
{$ELSE}
     DsgnIntf,
{$ENDIF}
{$WARNINGS OFF}
     
{$WARNINGS ON}
     Forms,
     DB,
     dbgrids,
     Grids,
{$IFNDEF NATIVEEXCEL_STANDARD}
     mxNativeExcel_Types,
     mxNativeExcel_Reg,
{$ENDIF}
     mxExportAbout,
     mxExport;

Type

{$IFNDEF DELPHI4_UP}
     IDesigner = TDesigner;
{$ELSE}
{$IFDEF Delphi6_Up}
     TFormDesigner = IDesigner;
{$ELSE}
     TFormDesigner = IFormDesigner;
{$ENDIF}
{$ENDIF}

     TDesigner = IDesigner;

// *************************************************************************************
// ** Component Editor
// *************************************************************************************

     TmxExportEditor = Class( TComponentEditor )

          Function GetVerbCount: integer; Override;
          Function GetVerb( Index: integer ): String; Override;
          Procedure ExecuteVerb( Index: integer ); Override;
     End;

// *************************************************************************************
// ** DataSet Property Editor
// *************************************************************************************

     TDataSetProperty = Class( TComponentProperty )

          Procedure GetValues( Proc: TGetStrProc ); Override;
     End;

// *************************************************************************************
// ** DbGrid Property Editor
// *************************************************************************************

     TDBGridProperty = Class( TComponentProperty )

          Procedure GetValues( Proc: TGetStrProc ); Override;
     End;

// *************************************************************************************
// ** StringGrid Property Editor
// *************************************************************************************

     TStringGridProperty = Class( TComponentProperty )

          Procedure GetValues( Proc: TGetStrProc ); Override;
     End;

// *************************************************************************************
// ** ListView Property Editor
// *************************************************************************************

     TListViewProperty = Class( TComponentProperty )

          Procedure GetValues( Proc: TGetStrProc ); Override;
     End;

// *************************************************************************************
// ** GetVerbCount
// *************************************************************************************

Function TmxExportEditor.GetVerbCount: integer;
Begin
     Result := 5;
End;

// *************************************************************************************
// ** GetVerb
// *************************************************************************************

Function TmxExportEditor.GetVerb( Index: integer ): String;
Begin
     Case Index Of
          0: Result := Format( '%s (C) 2001-2005 Bitvadász Kft', [ Component.ClassName ] );
          1: Result := '-';
          2: Result := 'Execute Export (Default)';
          3: Result := 'Select format and Export...';
          4: Result := '-';
     End;
End;

// *************************************************************************************
// ** ExecuteVerb
// *************************************************************************************

Procedure TmxExportEditor.ExecuteVerb( Index: integer );
Var
     ComponentDesigner: TFormDesigner;
Begin
     ComponentDesigner := Designer;

     Case Index Of
          0: ShowAboutBox( Format( '%s Component', [ Component.ClassName ] ) );
          2: TmxCustomExport( Component ).Execute;
          3: TmxCustomExport( Component ).Select;
     End;

     ComponentDesigner.Modified;
End;

// *************************************************************************************
// ** TDataSetProperty.GetValues, 5/17/01 2:12:27 PM
// *************************************************************************************

Procedure TDataSetProperty.GetValues( Proc: TGetStrProc );
Var
     I: Integer;
     Component: TComponent;
Begin
     For I := 0 To {$IFDEF Delphi6_Up}TForm( Designer.Root ){$ELSE}Designer.Form{$ENDIF}.ComponentCount - 1 Do
     Begin
          Component := {$IFDEF Delphi6_Up}TForm( Designer.Root ){$ELSE}Designer.Form{$ENDIF}.Components[ I ];
          If ( Component.InheritsFrom( TDataSet ) ) And ( Component.Name <> '' ) Then
               Proc( Component.Name );
     End;
End;

// *************************************************************************************
// ** TDBGridProperty.GetValues, 6/8/01 10:02:56 AM
// *************************************************************************************

Procedure TDBGridProperty.GetValues( Proc: TGetStrProc );
Var
     I: Integer;
     Component: TComponent;
Begin
     For I := 0 To {$IFDEF Delphi6_Up}TForm( Designer.Root ){$ELSE}Designer.Form{$ENDIF}.ComponentCount - 1 Do
     Begin
          Component := {$IFDEF Delphi6_Up}TForm( Designer.Root ){$ELSE}Designer.Form{$ENDIF}.Components[ I ];
          If ( Component.InheritsFrom( TCustomDBGrid ) ) And ( Component.Name <> '' ) Then
               Proc( Component.Name );
     End;
End;

// *************************************************************************************
// ** TStringGridProperty.GetValues, 6/8/01 3:27:25 PM
// *************************************************************************************

Procedure TStringGridProperty.GetValues( Proc: TGetStrProc );
Var
     I: Integer;
     Component: TComponent;
Begin
     For I := 0 To {$IFDEF Delphi6_Up}TForm( Designer.Root ){$ELSE}Designer.Form{$ENDIF}.ComponentCount - 1 Do
     Begin
          Component := {$IFDEF Delphi6_Up}TForm( Designer.Root ){$ELSE}Designer.Form{$ENDIF}.Components[ I ];
          If ( Component.InheritsFrom( TStringGrid ) ) And ( Component.Name <> '' ) Then
               Proc( Component.Name );
     End;
End;

// *************************************************************************************
// ** TListViewProperty.GetValues, 6/8/01 3:27:25 PM
// *************************************************************************************

Procedure TListViewProperty.GetValues( Proc: TGetStrProc );
Var
     I: Integer;
     Component: TComponent;
Begin
     For I := 0 To {$IFDEF Delphi6_Up}TForm( Designer.Root ){$ELSE}Designer.Form{$ENDIF}.ComponentCount - 1 Do
     Begin
          Component := {$IFDEF Delphi6_Up}TForm( Designer.Root ){$ELSE}Designer.Form{$ENDIF}.Components[ I ];
          If ( Component.InheritsFrom( TListView ) ) And ( Component.Name <> '' ) Then
               Proc( Component.Name );
     End;
End;

// *************************************************************************************
// ** Register, 4/5/01 11:46:42 AM
// *************************************************************************************

Procedure Register;
Begin
     RegisterComponents( 'RALExtra', [{TmxStringsExport,}
                                      TmxDataSetExport,
                                      TmxDBGridExport{, TmxStringGridExport,
                                      TmxListViewExport, TmxAnyExport}] );
     RegisterComponentEditor( TmxCustomExport, TmxExportEditor );
     RegisterPropertyEditor( TypeInfo( TDataSet ), TmxDataSetExport, 'DataSet', TDataSetProperty );
     RegisterPropertyEditor( TypeInfo( TDBGrid ), TmxDBGridExport, 'DBGrid', TDBGridProperty );
     RegisterPropertyEditor( TypeInfo( TStringGrid ), TmxStringGridExport, 'StringGrid', TStringGridProperty );
     RegisterPropertyEditor( TypeInfo( TListView ), TmxListViewExport, 'ListView', TListViewProperty );

{$IFNDEF NATIVEEXCEL_STANDARD}
     RegisterPropertyEditor( TypeInfo( TmxExcelFont ), Nil, '', TmxNativeExcelFontProperty );
     RegisterPropertyEditor( TypeInfo( TmxExcelFont ), Nil, '', TmxNativeExcelFontProperty );
     RegisterPropertyEditor( TypeInfo( TmxExcelFont ), Nil, '', TmxNativeExcelFontProperty );
{$ENDIF}
End;

End.

