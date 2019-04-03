// ****************************************************************************
// * Native Excel Export component for Delphi.
// ****************************************************************************
// * Copyright 2001-2002, Bitvadász Kft. All Rights Reserved.
// ****************************************************************************
// * This component can be freely used and distributed in commercial and
// * private environments, provied this notice is not modified in any way.
// ****************************************************************************
// * Feel free to contact me if you have any questions, comments or suggestions
// * at support@maxcomponents.net
// ****************************************************************************
// * PLEASE READ LICENCE.TXT FOR MORE INFORMATION
// ****************************************************************************
// * Web page: www.maxcomponents.net
// ****************************************************************************
// * Date last modified: 22.10.2002
// ****************************************************************************
// * TmxNativeExcel v1.23
// ****************************************************************************
// * Description:
// *
// * The TmxNativeExcel is a 100% native VCL component to create
// * Excel BIFF files without any OLE objects..
// *
// ****************************************************************************
// * I used Mark O'Brien MICROSOFT EXCEL BINARY FILE FORMAT documentation
// * to develop this component. You can find it in the document folder.
// ****************************************************************************

// ****************************************************************************
// ** Here is the order in which records are written in a BIFF file:
// ** --------------------------------------------------------------
// ** BOF, FILEPASS, INDEX, CALCCOUNT, CALCMODE, PRECISION, REFMODE, DELTA
// ** ITERATION, 1904, BACKUP, PRINT ROW HEADERS, PRINT GRIDLINES,
// ** HORIZONTAL PAGE BREAKS, VERTICAL PAGE BREAKS, DEFAULT ROW HEIGHT
// ** FONT, FONT2, HEADER, FOOTER, LEFT MARGIN, RIGHT MARGIN, TOP MARGIN
// ** BOTTOM MARGIN, COLWIDTH, EXTERNCOUNT, EXTERNSHEET, EXTERNNAME
// ** FORMAT, NAME, DIMENSIONS, COLUMN DEFAULT, Cell table, ROW, BLANK,
// ** INTEGER, NUMBER, LABEL,  BOOLERR, FORMULA, ARRAY, STRING, TABLE, TABLE2
// ** PROTECT, WINDOW PROTECT, PASSWORD, NOTE, WINDOW1, WINDOW2, PANE,
// ** SELECTION, EOF
// ****************************************************************************

Unit mxNativeExcel;

Interface

{$I MAX.INC}

Uses
     
     
     SysUtils,
     Classes,
     Graphics,
     
     
{$IFDEF DELPHI6_UP}
     Variants,
{$ENDIF}
     Dialogs;

{$IFDEF USE_FORMULAS}
// ****************************************************************************
WARNING: EXCEL FORMULA PARSER Is Not COMPLETED, PLEASE SWITCH USE_FORMULAS
DIRECTIVE OFF!
// ****************************************************************************
{$ENDIF}

Const

     mxNativeExcelVersion = $0117;

     // *************************************************************************************
     // ** Excel contants
     // *************************************************************************************

     EXCEL_EXTENSION = '.XLS';

     EXCEL_BOF = $0009;
     EXCEL_EOF = $000A;

     EXCEL_BIFF3 = $0200;
     EXCEL_BIFF4 = $0400;
     EXCEL_BIFF5 = $0800;

     EXCEL_BOF_BIFF5 = EXCEL_BOF Or EXCEL_BIFF5;
     EXCEL_BOF_BIFF4 = EXCEL_BOF Or EXCEL_BIFF4;
     EXCEL_BOF_BIFF3 = EXCEL_BOF Or EXCEL_BIFF3;

     // *** Dimensions of worksheets ***

     EXCEL_DIMENSIONS = $0000;

     EXCEL_DIMENSIONS_BIFF5 = EXCEL_DIMENSIONS Or EXCEL_BIFF3;
     EXCEL_DIMENSIONS_BIFF4 = EXCEL_DIMENSIONS Or EXCEL_BIFF3;
     EXCEL_DIMENSIONS_BIFF3 = EXCEL_DIMENSIONS Or EXCEL_BIFF3;

     // *** USED By WriteRecordHeader ***

     EXCEL_INDIVIDUAL_VERSION = $0200;
     EXCEL_MULTIPLAN_DOCUMENT = $0300;

     EXCEL_WORKSHEET = $0010;
     EXCEL_CHART = $0020;
     EXCEL_MACROSHEET = $0040;

     // *** Cell types ***

     EXCEL_CELL_BLANK = $0001;
     EXCEL_CELL_INTEGER = $0002;
     EXCEL_CELL_NUMBER = $0003;
     EXCEL_CELL_LABEL = $0004;
     EXCEL_CELL_BOOLERR = $0005;
     EXCEL_CELL_FORMULA = $0006;
     EXCEL_CELL_STRING = $0007;

     // *** Formulas ***

     EXCEL_OTSTRING = $00;
     EXCEL_OTBOOL = $01;
     EXCEL_OTERR = $02;

     // *** Commands ***

     EXCEL_PROTECT = $0012;
     EXCEL_COLUMNDEFAULT = $0020;
     EXCEL_HEADER = $0014;
     EXCEL_FOOTER = $0015;
     EXCEL_COLUMNWIDTH = $0024;

     // *** Boolean Codes ***

     EXCEL_BOOLERR_TRUE = $0001;
     EXCEL_BOOLERR_FALSE = $0000;

     EXCEL_BOOLERR_NULL = $0000;
     EXCEL_BOOLERR_DIV = $0007;
     EXCEL_BOOLERR_VALUE = $000F;
     EXCEL_BOOLERR_REF = $0017;
     EXCEL_BOOLERR_NAME = $001D;
     EXCEL_BOOLERR_NUM = $0024;
     EXCEL_BOOLERR_NA = $002A;

     // *** ALIGNMENT ***

     EXCEL_ALIGN_GENERAL = $0000;
     EXCEL_ALIGN_LEFT = $0001;
     EXCEL_ALIGN_CENTER = $002;
     EXCEL_ALIGN_RIGHT = $003;
     EXCEL_ALIGN_FILL = $004;
     EXCEL_ALIGN_MULTIPLAN = $007;

     // *** Formats ***

     EXCEL_DEFAULT_FORMATINDEX = -1;

     // *** Fonts ***

     EXCEL_FONT = $0031;

     EXCEL_FONT_BOLD = $0001;
     EXCEL_FONT_ITALIC = $0002;
     EXCEL_FONT_UNDERLINE = $0004;
     EXCEL_FONT_STRIKEOUT = $0008;

     EXCEL_FONT_00 = $0000; // ** DEFAULT FONT **
     EXCEL_FONT_01 = $0040;
     EXCEL_FONT_02 = $0080;
     EXCEL_FONT_03 = $00C0;

     // *** Shading ***

     EXCEL_SHADING = $0080;

     // *** Borders ***

     EXCEL_BORDER_BOTTOM = $0040;
     EXCEL_BORDER_TOP = $0020;
     EXCEL_BORDER_RIGHT = $0010;
     EXCEL_BORDER_LEFT = $0008;

     // ** Protection ***

     EXCEL_PROTECT_HIDDEN = $0080;
     EXCEL_PROTECT_LOCKED = $0040;

     // *** Margins ***

     EXCEL_MARGIN_LEFT = $0026;
     EXCEL_MARGIN_RIGHT = $0027;
     EXCEL_MARGIN_TOP = $0028;
     EXCEL_MARGIN_BOTTOM = $0029;

Type

     // *************************************************************************************
     // *************************************************************************************
     // *************************************************************************************

     TmxBIFFVersion = ( bvBIFF2, bvBIFF3, bvBIFF4, bvBIFF5 );
     TmxExcelStatus = ( esInvalid, esOpened, esClosed );
     TmxMoveAfterEnter = ( maNone, maUp, maDown, maLeft, maRight );
     TmxBoolErr = ( beTRUE, beFALSE, beNULL, beDIV0, beVALUE, beREF, beNAME, beNUM, beNA );
     TmxExcelBorders = ( ebTop, ebBottom, ebLeft, ebRight );
     TmxExcelBorderSet = Set Of TmxExcelBorders;
     TmxExcelAlignment = ( eaGeneral, eaLeft, eaRight, eaCenter, eaFill, eaMultiPlan );
     TmxExcelMargin = ( emLeft, emRight, emTop, emBottom );

     // *************************************************************************************
     // *************************************************************************************
     // *************************************************************************************

     TmxNativeExcel = Class( TComponent )
     Private

          FExcelStream: TMemoryStream;
          FBIFFVersion: TmxBIFFVersion;

          FStatus: TmxExcelStatus;

          FMinSaveRecs: Word;
          FMaxSaveRecs: Word;
          FMinSaveCols: Word;
          FMaxSaveCols: Word;

          FRecordType: Word;
          FDataLength: Word;

          FFileName: String;

          FRow: Word;
          FColumn: Word;

          FFontNumber: Byte;
          FActiveFont: Byte;

          FMoveAfterEnter: TmxMoveAfterEnter;
          FShading: Boolean;
          FBorders: TmxExcelBorderSet;
          FAlignment: TmxExcelAlignment;

          FHidden: Boolean;
          FLocked: Boolean;

          FVersion: Integer;

          Procedure SetBIFFVersion( Value: TmxBIFFVersion );
          Procedure SetFileName( Value: String );
          Procedure SetRow( Value: Word );
          Procedure SetColumn( Value: Word );
          Procedure SetActiveFont( Value: Byte );

          Procedure SetVersion( Value: String );
          Function GetVersion: String;

     Protected

          Procedure OpeningFile; Virtual;
          Procedure ClosingFile; Virtual;

          Procedure WriteRecordHeader;
          Procedure AddColRowInfo;
          Procedure AddAttributeInfo;

          Procedure _WriteBlank( FormatIndex: Integer );
          Procedure _WriteInteger( FormatIndex: Integer; Value: Integer );
          Procedure _WriteNumber( FormatIndex: Integer; Value: Double );
{$WARNINGS OFF}
          Procedure _WriteLabel( FormatIndex: Integer; Value: PChar );
          Procedure _WriteString( Value: PChar );
{$WARNINGS ON}
{$IFDEF USE_FORMULAS}
          Procedure _WriteFormula( FormatIndex: Integer; Value: Variant; Formula: PChar );
{$ENDIF}
          Procedure _WriteBoolErr( FormatIndex: Integer; Value: TmxBoolErr );
          Procedure _WriteData( FormatIndex: Integer; Value: Variant );

          Procedure _ProtectSheet( Value: Boolean; Password: String );
          Procedure _ColumnDefault( FirstCol, LastCol: Word );
{$WARNINGS OFF}
          Procedure _SetHeader( Value: PChar );
          Procedure _SetFooter( Value: PChar );
{$WARNINGS ON}
          Procedure _SetColumnWidth( FirstCol, LastCol: Word; AWidth: Integer );
          Procedure _SetMargin( Margin: TmxExcelMargin; AWidth: Double );

     Public

          Constructor Create( AOwner: TComponent ); Override;
          Destructor Destroy; Override;

          Procedure NewFile;
          Procedure CloseFile;

          Procedure SaveToFile;
          Procedure SaveToStream( AStream: TStream );

          Function IsFileOpened: Boolean;

          Procedure ProtectSheet( Value: Boolean );
          Procedure SetColumnDefault( FirstCol, LastCol: Word );
          Procedure AddFont( Value: TFont );

{$WARNINGS OFF}
          Procedure SetHeader( Value: PChar ); Overload;
{$WARNINGS ON}
          Procedure SetHeader( Value: String ); Reintroduce; Overload;

{$WARNINGS OFF}
          Procedure SetFooter( Value: PChar ); Overload;
{$WARNINGS ON}
          Procedure SetFooter( Value: String ); Reintroduce; Overload;

          Procedure WriteBlank; Overload;
          Procedure WriteBlank( FormatIndex: Integer ); Reintroduce; Overload;
          Procedure WriteBlank( ARow, ACol: Word ); Reintroduce; Overload;
          Procedure WriteBlank( ARow, ACol: Word; FormatIndex: Integer ); Reintroduce; Overload;

          Procedure WriteInteger( Value: Integer ); Overload;
          Procedure WriteInteger( FormatIndex: Integer; Value: Integer ); Overload;
          Procedure WriteInteger( ARow, ACol, Value: Word ); Reintroduce; Overload;
          Procedure WriteInteger( ARow, ACol: Word; FormatIndex: Integer; Value: Word ); Reintroduce; Overload;

          Procedure WriteNumber( Value: Double ); Overload;
          Procedure WriteNumber( FormatIndex: Integer; Value: Double ); Reintroduce; Overload;
          Procedure WriteNumber( ARow, ACol: Word; Value: Double ); Reintroduce; Overload;
          Procedure WriteNumber( ARow, ACol: Word; FormatIndex: Integer; Value: Double ); Reintroduce; Overload;

{$WARNINGS OFF}
          Procedure WriteLabel( Value: PChar ); Overload;
          Procedure WriteLabel( FormatIndex: Integer; Value: PChar ); Reintroduce; Overload;
          Procedure WriteLabel( ARow, ACol: Word; Value: PChar ); Reintroduce; Overload;
          Procedure WriteLabel( ARow, ACol: Word; FormatIndex: Integer; Value: PChar ); Reintroduce; Overload;
          Procedure WriteLabel( Value: String ); Reintroduce; Overload;
          Procedure WriteLabel( FormatIndex: Integer; Value: String ); Reintroduce; Overload;
          Procedure WriteLabel( ARow, ACol: Word; Value: String ); Reintroduce; Overload;
          Procedure WriteLabel( ARow, ACol: Word; FormatIndex: Integer; Value: String ); Reintroduce; Overload;
{$WARNINGS ON}

          Procedure WriteData( Value: Variant ); Overload;
          Procedure WriteData( FormatIndex: Integer; Value: Variant ); Reintroduce; Overload;
          Procedure WriteData( ARow, ACol: Word; Value: Variant ); Reintroduce; Overload;
          Procedure WriteData( ARow, ACol: Word; FormatIndex: Integer; Value: Variant ); Reintroduce; Overload;

{$IFDEF USE_FORMULAS}

          Procedure WriteFormula( Value: Variant; Formula: PChar ); Overload;
          Procedure WriteFormula( FormatIndex: Integer; Value: Variant; Formula: PChar ); Reintroduce; Overload;
          Procedure WriteFormula( ARow, ACol: Word; Value: Variant; Formula: PChar ); Reintroduce; Overload;
          Procedure WriteFormula( ARow, ACol: Word; FormatIndex: Integer; Value: Variant; Formula: PChar ); Reintroduce; Overload;
          Procedure WriteFormula( Value: Variant; Formula: String ); Reintroduce; Overload;
          Procedure WriteFormula( FormatIndex: Integer; Value: Variant; Formula: String ); Reintroduce; Overload;
          Procedure WriteFormula( ARow, ACol: Word; Value: Variant; Formula: String ); Reintroduce; Overload;
          Procedure WriteFormula( ARow, ACol: Word; FormatIndex: Integer; Value: Variant; Formula: String ); Reintroduce; Overload;

{$ENDIF}

          Procedure WriteBoolErr( Value: TmxBoolErr ); Overload;
          Procedure WriteBoolErr( FormatIndex: Integer; Value: TmxBoolErr ); Reintroduce; Overload;
          Procedure WriteBoolErr( ARow, ACol: Word; Value: TmxBoolErr ); Reintroduce; Overload;
          Procedure WriteBoolErr( ARow, ACol: Word; FormatIndex: Integer; Value: TmxBoolErr ); Reintroduce; Overload;

          Procedure WriteBoolean( Value: Boolean ); Overload;
          Procedure WriteBoolean( FormatIndex: Integer; Value: Boolean ); Reintroduce; Overload;
          Procedure WriteBoolean( ARow, ACol: Word; Value: Boolean ); Reintroduce; Overload;
          Procedure WriteBoolean( ARow, ACol: Word; FormatIndex: Integer; Value: Boolean ); Reintroduce; Overload;

          Procedure SetColumnWidth( Column: Word; AWidth: Integer ); Overload;
          Procedure SetColumnWidth( FirstCol, LastCol: Word; AWidth: Integer ); Reintroduce; Overload;

          Procedure SetMargin( Margin: TmxExcelMargin; AWidth: Double );
          Procedure SetLeftMargin( AWidth: Double );
          Procedure SetRightMargin( AWidth: Double );
          Procedure SetBottomMargin( AWidth: Double );
          Procedure SetTopMargin( AWidth: Double );

     Published

          Property ActiveFont: Byte Read FActiveFont Write SetActiveFont;
          Property Alignment: TmxExcelAlignment Read FAlignment Write FAlignment Default eaGeneral;

          Property BIFF: TmxBIFFVersion Read FBIFFVersion Write SetBIFFVersion Default bvBIFF5;
          Property Borders: TmxExcelBorderSet Read FBorders Write FBorders;

          Property FileName: String Read FFileName Write SetFileName;

          Property Row: Word Read FRow Write SetRow Default 1;
          Property Column: Word Read FColumn Write SetColumn Default 1;

          Property MoveAfterEnter: TmxMoveAfterEnter Read FMoveAfterEnter Write FMoveAfterEnter Default maRight;
          Property Shading: Boolean Read FShading Write FShading;

          Property Hidden: Boolean Read FHidden Write FHidden Default FALSE;
          Property Locked: Boolean Read FLocked Write FLocked Default TRUE;

          Property Version: String Read GetVersion Write SetVersion;
     End;

Implementation

// *************************************************************************************
// ** Create, 6/6/01 8:11:33 AM
// *************************************************************************************

Constructor TmxNativeExcel.Create( AOwner: TComponent );
Begin
     Inherited Create( AOwner );
     FExcelStream := TMemoryStream.Create;
     FBIFFVersion := bvBIFF5;

     FMinSaveRecs := 0;
     FMaxSaveRecs := 65535;
     FMinSaveCols := 0;
     FMaxSaveCols := 256;

     FStatus := esInvalid;

     FRow := 1;
     FColumn := 1;

     FMoveAfterEnter := maRight;
     FBorders := [ ];
     FShading := FALSE;
     fAlignment := eaGeneral;

     FHidden := FALSE;
     FLocked := TRUE;

     FFontNumber := 0;

     FVersion := mxNativeExcelVersion;

     OpeningFile;
End;

// *************************************************************************************
// ** Destroy, 6/6/01 8:11:30 AM
// *************************************************************************************

Destructor TmxNativeExcel.Destroy;
Begin
     FExcelStream.Free;
     Inherited Destroy;
End;

// *************************************************************************************
// ** TmxNativeExcel.SetVersion, 6/6/01 3:19:31 PM
// *************************************************************************************

Procedure TmxNativeExcel.SetVersion( Value: String );
Begin
        // *** Does nothing ***
End;

// *************************************************************************************
// ** TmxCustomExport.GetVersion, 6/6/01 3:19:33 PM
// *************************************************************************************

Function TmxNativeExcel.GetVersion: String;
Begin
{$WARNINGS OFF}
     Result := Format( '%d.%d', [ Hi( FVersion ), Lo( FVersion ) ] );
{$WARNINGS ON}
End;

// *************************************************************************************
// ** TmxNativeExcel.SetBIFFVersion, 6/6/01 8:16:44 AM
// *************************************************************************************

Procedure TmxNativeExcel.SetBIFFVersion( Value: TmxBIFFVersion );
Begin
     If FBIFFVersion <> Value Then
     Begin
          FBIFFVersion := Value;
          OpeningFile;
     End;
End;

// *************************************************************************************
// ** TmxNativeExcel.SetFileName, 6/6/01 9:16:22 AM
// *************************************************************************************

Procedure TmxNativeExcel.SetFileName( Value: String );
Begin
     If FFileName <> Value Then
     Begin
          FFileName := Value;
          If AnsiCompareText( ExtractFileExt( FFileName ), EXCEL_EXTENSION ) <> 0 Then
          Begin
               FFileName := ChangeFileExt( FFileName, EXCEL_EXTENSION );
          End;
     End;
End;

// *************************************************************************************
// ** TmxNativeExcel.SetRow, 6/6/01 10:02:28 AM
// *************************************************************************************

Procedure TmxNativeExcel.SetRow( Value: Word );
Begin
     If ( FRow <> Value ) Then
     Begin
          If ( Value <> 0 ) And ( Value <= FMaxSaveRecs ) Then FRow := Value;
     End;
End;

// *************************************************************************************
// ** TmxNativeExcel.SetColumn, 6/6/01 10:02:30 AM
// *************************************************************************************

Procedure TmxNativeExcel.SetColumn( Value: Word );
Begin
     If ( FColumn <> Value ) Then
     Begin
          If ( Value <> 0 ) And ( Value <= FMaxSaveCols ) Then FColumn := Value;
     End;
End;

// *************************************************************************************
// ** TmxNativeExcel.SetActiveFont, 6/6/01 1:45:44 PM
// *************************************************************************************

Procedure TmxNativeExcel.SetActiveFont( Value: Byte );
Begin
     If FActiveFont <> Value Then
     Begin
          If ( Value <= FFontNumber ) Then FActiveFont := Value;
     End;
End;

// *************************************************************************************
// ** TmxNativeExcel.WriteRecordHeader, 6/6/01 8:49:36 AM
// *************************************************************************************

Procedure TmxNativeExcel.WriteRecordHeader;
Const
     HeaderStructureLength = 4;
Var
     Buffer: Array[ 0..1 ] Of Word;
Begin
     If FStatus = esClosed Then OpeningFile;

     Buffer[ 0 ] := FRecordType;
     Buffer[ 1 ] := FDataLength;
     FExcelStream.Write( Buffer[ 0 ], HeaderStructureLength );
End;

// *************************************************************************************
// ** TmxNativeExcel.OpeningFile, 6/6/01 8:17:53 AM
// *************************************************************************************

Procedure TmxNativeExcel.OpeningFile;
Var
     Buffer: Array[ 0..4 ] Of Word;
Begin
     FStatus := esOpened;

     FFontNumber := 0;
     FExcelStream.Clear;

     // *** File version & type ***

     Buffer[ 0 ] := EXCEL_INDIVIDUAL_VERSION;
     Buffer[ 1 ] := EXCEL_WORKSHEET;
     Buffer[ 2 ] := 0;
     Buffer[ 3 ] := 0;
     Buffer[ 4 ] := 0;

     Case FBIFFVersion Of

          bvBIFF2:
               Begin
                    FRecordType := EXCEL_BOF;
                    FDataLength := 4;
               End;

          bvBIFF3:
               Begin
                    FRecordType := EXCEL_BOF_BIFF3;
                    FDataLength := 6;
               End;

          bvBIFF4:
               Begin
                    FRecordType := EXCEL_BOF_BIFF4;
                    FDataLength := 6;
               End;

          bvBIFF5:
               Begin
                    FRecordType := EXCEL_BOF_BIFF5;
                    FDataLength := 6;
               End;
     End;

     WriteRecordHeader;
     FExcelStream.Write( Buffer, FDataLength );

     // *** Dimension record ***

     Buffer[ 0 ] := FMinSaveRecs; // ** First row
     Buffer[ 1 ] := FMaxSaveRecs; // ** Last Row + 1
     Buffer[ 2 ] := FMinSaveCols; // ** First column
     Buffer[ 3 ] := FMaxSaveCols; // ** Last column + 1
     Buffer[ 4 ] := 0;

     Case FBIFFVersion Of

          bvBIFF2:
               Begin
                    FRecordType := EXCEL_DIMENSIONS;
                    FDataLength := 8;
               End;

          bvBIFF3:
               Begin
                    FRecordType := EXCEL_DIMENSIONS_BIFF3;
                    FDataLength := 10;
               End;

          bvBIFF4:
               Begin
                    FRecordType := EXCEL_DIMENSIONS_BIFF4;
                    FDataLength := 10;
               End;

          bvBIFF5:
               Begin
                    FRecordType := EXCEL_DIMENSIONS_BIFF5;
                    FDataLength := 10;
               End;
     End;

     WriteRecordHeader;
     FExcelStream.Write( Buffer, FDataLength );
End;

// *************************************************************************************
// ** TmxNativeExcel.NewFile, 6/6/01 8:37:15 AM
// *************************************************************************************

Procedure TmxNativeExcel.NewFile;
Begin
     OpeningFile;
End;

// *************************************************************************************
// ** TmxNativeExcel.ClosingFile, 6/6/01 9:29:54 AM
// *************************************************************************************

Procedure TmxNativeExcel.ClosingFile;
Begin
     FRecordType := EXCEL_EOF;
     FDataLength := 0;
     WriteRecordHeader;

     FStatus := esClosed;
End;

// *************************************************************************************
// ** TmxNativeExcel.SaveToFile, 6/6/01 9:21:00 AM
// *************************************************************************************

Procedure TmxNativeExcel.SaveToFile;
Begin
     FExcelStream.SaveToFile( FFileName );
End;

// *************************************************************************************
// ** TmxNativeExcel.SaveToStream, 6/6/01 9:21:58 AM
// *************************************************************************************

Procedure TmxNativeExcel.SaveToStream( AStream: TStream );
Begin
     FExcelStream.SaveToStream( AStream );
End;

// *************************************************************************************
// ** TmxNativeExcel.CloseFile, 6/7/01 1:59:08 PM
// *************************************************************************************

Procedure TmxNativeExcel.CloseFile;
Begin
     ClosingFile;
End;

// *************************************************************************************
// ** TmxNativeExcel.IsFileOpened, 6/7/01 2:08:32 PM
// *************************************************************************************

Function TmxNativeExcel.IsFileOpened: Boolean;
Begin
     Result := FStatus = esOpened;
End;

// *************************************************************************************
// ** TmxNativeExcel.AddColRowInfo, 6/6/01 9:59:17 AM
// *************************************************************************************

Procedure TmxNativeExcel.AddColRowInfo;
Var
     Buffer: Array[ 0..1 ] Of Word;
Begin
     Buffer[ 0 ] := FRow - 1;
     Buffer[ 1 ] := FColumn - 1;

     FExcelStream.Write( Buffer, SizeOf( Buffer ) );

     Case FMoveAfterEnter Of

          maUp: If FRow > 1 Then Dec( FRow ) Else
                    If FColumn > 1 Then
                    Begin
                         FRow := FMaxSaveRecs;
                         Dec( FColumn );
                    End;

          maDown: If FRow < FMaxSaveRecs Then Inc( FRow ) Else
                    If FColumn < FMaxSaveCols Then
                    Begin
                         FRow := 1;
                         Inc( FColumn );
                    End;

          maLeft: If FColumn > 1 Then Dec( FColumn ) Else
                    If FRow > 1 Then
                    Begin
                         FColumn := FMaxSaveCols;
                         Dec( FRow );
                    End;

          maRight: If FColumn < FMaxSaveCols Then Inc( FColumn ) Else
                    If FRow < FMaxSaveRecs Then
                    Begin
                         FColumn := 1;
                         Inc( FRow );
                    End;
     End;
End;

// *************************************************************************************
// ** TmxNativeExcel.AddAttributeInfo, 6/6/01 10:06:47 AM
// *************************************************************************************

{
Byte Offset     Bit   Description                     Contents
     0          7     Cell is not hidden              0b
                      Cell is hidden                  1b
                6     Cell is not locked              0b
                      Cell is locked                  1b
                5-0   Reserved, must be 0             000000b

     1          7-6   Font number (4 possible)
                5-0   Cell format code

     2          7     Cell is not shaded              0b
                      Cell is shaded                  1b
                6     Cell has no bottom border       0b
                      Cell has a bottom border        1b
                5     Cell has no top border          0b
                      Cell has a top border           1b
                4     Cell has no right border        0b
                      Cell has a right border         1b
                3     Cell has no left border         0b
                      Cell has a left border          1b
                2-0   Cell alignment code
                           general                    000b
                           left                       001b
                           center                     010b
                           right                      011b
                           fill                       100b
                           Multiplan default align.   111b
}

Procedure TmxNativeExcel.AddAttributeInfo;
Var
     Buffer: Array[ 0..2 ] Of Byte;
     TempByte: Byte;
Begin
     // *** 1st byte ***

     TempByte := 0;

     If FHidden Then TempByte := TempByte Or EXCEL_PROTECT_HIDDEN;
     If FLocked Then TempByte := TempByte Or EXCEL_PROTECT_LOCKED;

     Buffer[ 0 ] := TempByte;

     // *** 2nd byte ***

     TempByte := 0;

     Case FActiveFont Of
          0: TempByte := TempByte Or EXCEL_FONT_00;
          1: TempByte := TempByte Or EXCEL_FONT_01;
          2: TempByte := TempByte Or EXCEL_FONT_02;
          3: TempByte := TempByte Or EXCEL_FONT_03;
     End;

     Buffer[ 1 ] := TempByte;

     // *** 3rd byte ***

     TempByte := 0;

     If Shading Then TempByte := TempByte Or EXCEL_SHADING;

     Case FAlignment Of
          eaGeneral: TempByte := TempByte Or EXCEL_ALIGN_GENERAL;
          eaLeft: TempByte := TempByte Or EXCEL_ALIGN_LEFT;
          eaRight: TempByte := TempByte Or EXCEL_ALIGN_RIGHT;
          eaCenter: TempByte := TempByte Or EXCEL_ALIGN_CENTER;
          eaFill: TempByte := TempByte Or EXCEL_ALIGN_FILL;
          eaMultiPlan: TempByte := TempByte Or EXCEL_ALIGN_MULTIPLAN;
     End;

     If ebTop In FBorders Then TempByte := TempByte Or EXCEL_BORDER_TOP;
     If ebBottom In FBorders Then TempByte := TempByte Or EXCEL_BORDER_BOTTOM;
     If ebLeft In FBorders Then TempByte := TempByte Or EXCEL_BORDER_LEFT;
     If ebRight In FBorders Then TempByte := TempByte Or EXCEL_BORDER_RIGHT;

     Buffer[ 2 ] := TempByte;

     // *** Write ***

     FExcelStream.Write( Buffer, SizeOf( Buffer ) );
End;

// *************************************************************************************
// ** TmxNativeExcel._ColumnDefault, 6/6/01 12:34:37 PM
// *************************************************************************************
// ** WARNING: This procedure clears every data on your sheet...
// **          This record has to be on the first place in the BIFF structure.
// *************************************************************************************
// ** Description: Specifies default cell attributes for cells in a particular column.  The
// ** default value is overriden for individual cells by a subsequent explicit definition.
// ** Record Body Length: Variable
// ** Record Body Byte Structure:
// **       Byte Number           Byte Description         Contents (hex)
// **           0-1               Column number of first column for which a
// **                               default cell is being defined
// **           2-3               Column number of last column for which a
// **                               default cell is being defined, plus 1.
// **           4-on              Array of cell attributes
// *************************************************************************************

Procedure TmxNativeExcel._ColumnDefault( FirstCol, LastCol: Word );
Var
     I: Byte;
     Buffer: Array[ 0..1 ] Of Word;
Begin
     OpeningFile;

     If FirstCol = 0 Then FirstCol := 1;
     If LastCol > FMaxSaveCols Then LastCol := FMaxSaveCols;

     FRecordType := EXCEL_COLUMNDEFAULT;
     FDataLength := 4 + 3 * ( LastCol - FirstCol );
     WriteRecordHeader;
     FDataLength := 4;

     Buffer[ 0 ] := FirstCol - 1;
     Buffer[ 1 ] := LastCol + 1;

     FExcelStream.Write( Buffer, SizeOf( Buffer ) );

     // *** Set Default Attrs ***

     For I := 1 To LastCol - FirstCol Do AddAttributeInfo;
End;

// *************************************************************************************
// ** TmxNativeExcel.SetColumnDefault, 6/6/01 12:42:15 PM
// *************************************************************************************

Procedure TmxNativeExcel.SetColumnDefault( FirstCol, LastCol: Word );
Begin
     _ColumnDefault( FirstCol, LastCol );
End;

// *************************************************************************************
// ** TmxNativeExcel.ProtectSheet, 6/6/01 11:35:17 AM
// *************************************************************************************
// ** Description: Specifies whether the document is protected with a document password
// ** Record Body Length: 2
// ** Record Body Byte Structure:
// **       Byte Number           Byte Description         Contents (hex)
// **           0-1               Document protection
// **                               Not protected               0
// **                               Protected                   1
// *************************************************************************************
// ** OOPSSS... PASSWORD IS NOT IMPLEMENTED YET... I HAVE NOT GOT ENOUGH INFO...
// *************************************************************************************

Procedure TmxNativeExcel._ProtectSheet( Value: Boolean; Password: String );
Var
     ProtectByte: Word;
Begin
     FRecordType := EXCEL_PROTECT;
     FDataLength := 2;
     WriteRecordHeader;
     FDataLength := 2;

     If Value Then ProtectByte := 1 Else ProtectByte := 0;

     FExcelStream.Write( ProtectByte, SizeOf( ProtectByte ) );
End;

// *************************************************************************************
// ** TmxNativeExcel.ProtectSheet, 6/6/01 11:40:52 AM
// *************************************************************************************

Procedure TmxNativeExcel.ProtectSheet( Value: Boolean );
Begin
     _ProtectSheet( Value, '' );
End;

// *************************************************************************************
// ** TmxNativeExcel._WriteBlank, 6/6/01 9:49:41 AM
// *************************************************************************************
// * Description: Cell with no formula or value
// * Record Body Length: 7 bytes
// * Record Body Byte Structure:
// *       Byte Number     Byte Description
// *            0-1        Row
// *            2-3        Column
// *            4-6        Cell attributes (rgbAttr) (Table 2-3)
// *************************************************************************************

Procedure TmxNativeExcel._WriteBlank( FormatIndex: Integer );
Begin
     FRecordType := EXCEL_CELL_BLANK;
     FDataLength := 7;
     WriteRecordHeader;
     FDataLength := 0;

     AddColRowInfo;
     AddAttributeInfo;
End;

// *************************************************************************************
// ** TmxNativeExcel.WriteBlank, 6/6/01 9:49:47 AM
// *************************************************************************************

Procedure TmxNativeExcel.WriteBlank;
Begin
     _WriteBlank( EXCEL_DEFAULT_FORMATINDEX );
End;

// *************************************************************************************
// ** TmxNativeExcel.WriteBlank, 6/7/01 1:53:02 PM
// *************************************************************************************

Procedure TmxNativeExcel.WriteBlank( FormatIndex: Integer );
Begin
     _WriteBlank( FormatIndex );
End;

// *************************************************************************************
// ** TmxNativeExcel.WriteBlank, 6/6/01 10:16:30 AM
// *************************************************************************************

Procedure TmxNativeExcel.WriteBlank( ARow, ACol: Word );
Begin
     Row := ARow;
     Column := ACol;
     _WriteBlank( EXCEL_DEFAULT_FORMATINDEX );
End;

Procedure TmxNativeExcel.WriteBlank( ARow, ACol: Word; FormatIndex: Integer );
Begin
     Row := ARow;
     Column := ACol;
     _WriteBlank( FormatIndex );
End;

// *************************************************************************************
// ** TmxNativeExcel._WriteInteger, 6/6/01 10:21:14 AM
// *************************************************************************************
// * Description: Constant unsigned integer
// * Record Body Length: 9 bytes
// * Record Body Byte Structure:
// *       Byte Number     Byte Description               Contents (hex)
// *            0-1        Row
// *            2-3        Column
// *            4-6        Cell attributes (rgbAttr) (Table 2-3)
// *            7-8        Unsigned integer value (w)
// *************************************************************************************

Procedure TmxNativeExcel._WriteInteger( FormatIndex: Integer; Value: Integer );
Begin
     FRecordType := EXCEL_CELL_INTEGER;
     FDataLength := 9;
     WriteRecordHeader;
     FDataLength := 2;

     AddColRowInfo;
     AddAttributeInfo;

     FExcelStream.Write( Value, FDataLength );
End;

// *************************************************************************************
// ** TmxNativeExcel.WriteInteger, 6/6/01 10:20:09 AM
// *************************************************************************************

Procedure TmxNativeExcel.WriteInteger( Value: Integer );
Begin
     _WriteInteger( EXCEL_DEFAULT_FORMATINDEX, Value );
End;

// *************************************************************************************
// ** TmxNativeExcel.WriteInteger, 6/7/01 1:53:52 PM
// *************************************************************************************

Procedure TmxNativeExcel.WriteInteger( FormatIndex: Integer; Value: Integer );
Begin
     _WriteInteger( FormatIndex, Value );
End;

// *************************************************************************************
// ** TmxNativeExcel.WriteInteger, 6/6/01 10:20:14 AM
// *************************************************************************************

Procedure TmxNativeExcel.WriteInteger( ARow, ACol, Value: Word );
Begin
     Row := ARow;
     Column := ACol;
     _WriteInteger( EXCEL_DEFAULT_FORMATINDEX, Value );
End;

// *************************************************************************************
// ** TmxNativeExcel.WriteInteger, 6/7/01 1:54:40 PM
// *************************************************************************************

Procedure TmxNativeExcel.WriteInteger( ARow, ACol: Word; FormatIndex: Integer; Value: Word );
Begin
     Row := ARow;
     Column := ACol;
     _WriteInteger( FormatIndex, Value );
End;

// *************************************************************************************
// ** TmxNativeExcel._WriteNumber, 6/6/01 10:29:29 AM
// *************************************************************************************
// ** Description: Constant floating point number
// ** Record Body Length: 15 bytes
// ** Record Body Byte Structure:
// **       Byte Number     Byte Description               Contents (hex)
// **            0-1        Row
// **            2-3        Column
// **            4-6        Cell attributes (rgbAttr) (Table 2-3)
// **            7-14       Floating point number value
// *************************************************************************************

Procedure TmxNativeExcel._WriteNumber( FormatIndex: Integer; Value: Double );
Begin
     FRecordType := EXCEL_CELL_NUMBER;
     FDataLength := 15;
     WriteRecordHeader;
     FDataLength := 8;

     AddColRowInfo;
     AddAttributeInfo;

     FExcelStream.Write( Value, FDataLength );
End;

// *************************************************************************************
// ** TmxNativeExcel.WriteNumber, 6/6/01 10:31:46 AM
// *************************************************************************************

Procedure TmxNativeExcel.WriteNumber( Value: Double );
Begin
     _WriteNumber( EXCEL_DEFAULT_FORMATINDEX, Value );
End;

// *************************************************************************************
// ** TmxNativeExcel.WriteNumber, 6/7/01 1:46:00 PM
// *************************************************************************************

Procedure TmxNativeExcel.WriteNumber( FormatIndex: Integer; Value: Double );
Begin
     _WriteNumber( FormatIndex, Value );
End;

// *************************************************************************************
// ** TmxNativeExcel.WriteNumber, 6/6/01 10:31:29 AM
// *************************************************************************************

Procedure TmxNativeExcel.WriteNumber( ARow, ACol: Word; Value: Double );
Begin
     Row := ARow;
     Column := ACol;
     _WriteNumber( EXCEL_DEFAULT_FORMATINDEX, Value );
End;

// *************************************************************************************
// ** TmxNativeExcel.WriteNumber, 6/7/01 1:46:21 PM
// *************************************************************************************

Procedure TmxNativeExcel.WriteNumber( ARow, ACol: Word; FormatIndex: Integer; Value: Double );
Begin
     Row := ARow;
     Column := ACol;
     _WriteNumber( FormatIndex, Value );
End;

// *************************************************************************************
// ** TmxNativeExcel._WriteLabel, 6/6/01 10:53:09 AM
// *************************************************************************************
// ** Description: Constant string
// ** Record Body Length: 8 to 263 bytes
// ** Record Body Byte Structure:
// **       Byte Number     Byte Description               Contents (hex)
// **            0-1        Row
// **            2-3        Column
// **            4-6        Cell attributes (rgbAttr) (Table 2-3)
// **            7          Length of string
// **            8-263      ASCII string, 0 to 255 bytes long
// *************************************************************************************

{$WARNINGS OFF}
Procedure TmxNativeExcel._WriteLabel( FormatIndex: Integer; Value: PChar );
Var
     Buffer: Array[ 0..254 ] Of Char;
     StringLength: Byte;
Begin
     If StrLen( Value ) > 255 Then
     Begin
          StrLCopy( Buffer, Value, SizeOf( Buffer ) );
          StringLength := SizeOf( Buffer );
     End
     Else
     Begin
          StrCopy( Buffer, Value );
          StringLength := StrLen( Value );
     End;

     FRecordType := EXCEL_CELL_LABEL;
     FDataLength := 8 + StringLength;
     WriteRecordHeader;
     FDataLength := StringLength;

     AddColRowInfo;
     AddAttributeInfo;

     FExcelStream.Write( StringLength, SizeOf( StringLength ) );
     FExcelStream.Write( Buffer, FDataLength );
End;
{$WARNINGS ON}

// *************************************************************************************
// ** TmxNativeExcel.WriteLabel, 6/6/01 10:52:28 AM
// *************************************************************************************

{$WARNINGS OFF}
Procedure TmxNativeExcel.WriteLabel( Value: PChar );
Begin
     _WriteLabel( EXCEL_DEFAULT_FORMATINDEX, Value );
End;
{$WARNINGS ON}

// *************************************************************************************
// ** TmxNativeExcel.WriteLabel, 6/7/01 1:47:04 PM
// *************************************************************************************

{$WARNINGS OFF}
Procedure TmxNativeExcel.WriteLabel( FormatIndex: Integer; Value: PChar );
Begin
     _WriteLabel( FormatIndex, Value );
End;
{$WARNINGS ON}

// *************************************************************************************
// ** TmxNativeExcel.WriteLabel, 6/6/01 11:16:27 AM
// *************************************************************************************

{$WARNINGS OFF}
Procedure TmxNativeExcel.WriteLabel( Value: String );
Begin
     WriteLabel( EXCEL_DEFAULT_FORMATINDEX, PChar( Value ) );
End;
{$WARNINGS ON}

// *************************************************************************************
// ** TmxNativeExcel.WriteLabel, 6/7/01 1:47:30 PM
// *************************************************************************************

Procedure TmxNativeExcel.WriteLabel( FormatIndex: Integer; Value: String );
Begin
{$WARNINGS OFF}
     WriteLabel( FormatIndex, PChar( Value ) );
{$WARNINGS ON}
End;

// *************************************************************************************
// ** TmxNativeExcel.WriteLabel, 6/6/01 10:52:25 AM
// *************************************************************************************

{$WARNINGS OFF}
Procedure TmxNativeExcel.WriteLabel( ARow, ACol: Word; Value: PChar );
Begin
     Row := ARow;
     Column := ACol;
     _WriteLabel( EXCEL_DEFAULT_FORMATINDEX, Value );
End;
{$WARNINGS ON}

// *************************************************************************************
// ** TmxNativeExcel.WriteLabel, 6/7/01 1:47:56 PM
// *************************************************************************************

{$WARNINGS OFF}
Procedure TmxNativeExcel.WriteLabel( ARow, ACol: Word; FormatIndex: Integer; Value: PChar );
Begin
     Row := ARow;
     Column := ACol;
     _WriteLabel( FormatIndex, Value );
End;
{$WARNINGS ON}

// *************************************************************************************
// ** TmxNativeExcel.WriteLabel, 6/6/01 11:16:45 AM
// *************************************************************************************

Procedure TmxNativeExcel.WriteLabel( ARow, ACol: Word; Value: String );
Begin
     Row := ARow;
     Column := ACol;
{$WARNINGS OFF}
     _WriteLabel( EXCEL_DEFAULT_FORMATINDEX, PChar( Value ) );
{$WARNINGS ON}
End;

// *************************************************************************************
// ** TmxNativeExcel.WriteLabel, 6/7/01 1:48:46 PM
// *************************************************************************************

Procedure TmxNativeExcel.WriteLabel( ARow, ACol: Word; FormatIndex: Integer; Value: String );
Begin
     Row := ARow;
     Column := ACol;
{$WARNINGS OFF}
     _WriteLabel( FormatIndex, PChar( Value ) );
{$WARNINGS ON}
End;

// *************************************************************************************
// ** TmxNativeExcel._WriteBoolErr, 6/6/01 11:23:01 AM
// *************************************************************************************
// ** Description: Boolean constant or error value
// ** Record Body Length: 9 bytes
// ** Record Body Byte Structure:
// **       Byte Number     Byte Description               Contents (hex)
// **            0-1        Row
// **            2-3        Column
// **            4-6        Cell attributes (rgbAttr) (Table 2-3)
// **            7          Boolean or error value
// **                                 Boolean
// **                                       true                 1
// **                                       false                0
// **                                 Error
// **                                       #NULL!               0
// **                                       #DIV/0!              7
// **                                       #VALUE!              0Fh
// **                                       #REF!                17h
// **                                       #NAME?               1Dh
// **                                       #NUM!                24h
// **                                       #N/A                 2Ah
// **            8          Specifies Boolean or error
// **                                 Boolean                    0
// **                                 Error                      1
// *************************************************************************************

Procedure TmxNativeExcel._WriteBoolErr( FormatIndex: Integer; Value: TmxBoolErr );
Var
     Bool_Code: Byte;
     Bool_Type: Byte;
Begin
     FRecordType := EXCEL_CELL_BOOLERR;
     FDataLength := 9;
     WriteRecordHeader;
     FDataLength := 0;

     AddColRowInfo;
     AddAttributeInfo;

     Case Value Of
          beTRUE: Bool_Code := EXCEL_BOOLERR_TRUE;
          beFALSE: Bool_Code := EXCEL_BOOLERR_FALSE;
          beNULL: Bool_Code := EXCEL_BOOLERR_NULL;
          beDIV0: Bool_Code := EXCEL_BOOLERR_DIV;
          beVALUE: Bool_Code := EXCEL_BOOLERR_VALUE;
          beREF: Bool_Code := EXCEL_BOOLERR_REF;
          beNAME: Bool_Code := EXCEL_BOOLERR_NAME;
          beNUM: Bool_Code := EXCEL_BOOLERR_NUM;
          beNA: Bool_Code := EXCEL_BOOLERR_NA;
     End;

     If Value In [ beTRUE, beFALSE ] Then Bool_Type := 0 Else Bool_Type := 1;

     FExcelStream.Write( Bool_Code, SizeOf( Bool_Code ) );
     FExcelStream.Write( Bool_Type, SizeOf( Bool_Type ) );
End;

// *************************************************************************************
// ** TmxNativeExcel.WriteBoolean, 6/6/01 11:22:28 AM
// *************************************************************************************

Procedure TmxNativeExcel.WriteBoolean( Value: Boolean );
Begin
     If Value Then
          _WriteBoolErr( EXCEL_DEFAULT_FORMATINDEX, beTRUE ) Else
          _WriteBoolErr( EXCEL_DEFAULT_FORMATINDEX, beFALSE );
End;

// *************************************************************************************
// ** TmxNativeExcel.WriteBoolean, 6/7/01 1:49:16 PM
// *************************************************************************************

Procedure TmxNativeExcel.WriteBoolean( FormatIndex: Integer; Value: Boolean );
Begin
     If Value Then
          _WriteBoolErr( FormatIndex, beTRUE ) Else
          _WriteBoolErr( FormatIndex, beFALSE );
End;

// *************************************************************************************
// ** TmxNativeExcel.WriteBoolean, 6/6/01 11:22:25 AM
// *************************************************************************************

Procedure TmxNativeExcel.WriteBoolean( ARow, ACol: Word; Value: Boolean );
Begin
     Row := ARow;
     Column := ACol;

     If Value Then
          _WriteBoolErr( EXCEL_DEFAULT_FORMATINDEX, beTRUE ) Else
          _WriteBoolErr( EXCEL_DEFAULT_FORMATINDEX, beFALSE );
End;

// *************************************************************************************
// ** TmxNativeExcel.WriteBoolean, 6/7/01 1:49:47 PM
// *************************************************************************************

Procedure TmxNativeExcel.WriteBoolean( ARow, ACol: Word; FormatIndex: Integer; Value: Boolean );
Begin
     Row := ARow;
     Column := ACol;

     If Value Then
          _WriteBoolErr( FormatIndex, beTRUE ) Else
          _WriteBoolErr( FormatIndex, beFALSE );
End;

// *************************************************************************************
// ** TmxNativeExcel.WriteBoolErr, 6/6/01 12:24:25 PM
// *************************************************************************************

Procedure TmxNativeExcel.WriteBoolErr( Value: TmxBoolErr );
Begin
     _WriteBoolErr( EXCEL_DEFAULT_FORMATINDEX, Value );
End;

// *************************************************************************************
// ** TmxNativeExcel.WriteBoolErr, 6/7/01 1:50:54 PM
// *************************************************************************************

Procedure TmxNativeExcel.WriteBoolErr( FormatIndex: Integer; Value: TmxBoolErr );
Begin
     _WriteBoolErr( FormatIndex, Value );
End;

// *************************************************************************************
// ** TmxNativeExcel.WriteBoolErr, 6/6/01 12:24:23 PM
// *************************************************************************************

Procedure TmxNativeExcel.WriteBoolErr( ARow, ACol: Word; Value: TmxBoolErr );
Begin
     Row := ARow;
     Column := ACol;
     _WriteBoolErr( EXCEL_DEFAULT_FORMATINDEX, Value );
End;

// *************************************************************************************
// ** TmxNativeExcel.WriteBoolErr, 6/7/01 1:51:15 PM
// *************************************************************************************

Procedure TmxNativeExcel.WriteBoolErr( ARow, ACol: Word; FormatIndex: Integer; Value: TmxBoolErr );
Begin
     Row := ARow;
     Column := ACol;
     _WriteBoolErr( FormatIndex, Value );
End;

// *************************************************************************************
// ** TmxNativeExcel.AddFont, 6/6/01 1:28:48 PM
// *************************************************************************************
// ** Description: Describes an entry in the document's font table.  A document may have up to
// ** 4 different fonts, numbered 0 to 3.  Font records are written in the font table in the
// ** order in which they are encountered in the file.
// ** Record Body Length: variable
// ** Record Body Byte Structure:
// **       Byte Number           Byte Description              Contents (binary)
// **           0-1               Height of the font (in 1/20ths of a point)
// **           2-3               Font Attributes
// **                               First byte (reserved)             00000000b
// **                               Second byte
// **                                 Bit 0 - bold                        1b
// **                                 Bit 1 - italic                      1b
// **                                 Bit 2 - underline                   1b
// **                                 Bit 3 - strikeout                   1b
// **                                 Bits 4-7 (reserved)               0000b
// **            4                Length of font name
// **           5-?               Font name
// *************************************************************************************

Procedure TmxNativeExcel.AddFont( Value: TFont );
Var
     Buffer: Array[ 0..1 ] Of Word;
     TempByte: Byte;
Begin
     If ( Value = Nil ) Or ( FFontNumber = 4 ) Then Exit;
     Inc( FFontNumber );

     FRecordType := EXCEL_FONT;
     FDataLength := 5 + Length( Value.Name );
     WriteRecordHeader;
     FDataLength := Length( Value.Name );

     Buffer[ 0 ] := Value.Size * 20;

     TempByte := 0;
     If fsBold In Value.Style Then TempByte := TempByte Or EXCEL_FONT_BOLD;
     If fsItalic In Value.Style Then TempByte := TempByte Or EXCEL_FONT_ITALIC;
     If fsUnderLine In Value.Style Then TempByte := TempByte Or EXCEL_FONT_UNDERLINE;
     If fsStrikeOut In Value.Style Then TempByte := TempByte Or EXCEL_FONT_STRIKEOUT;

     Buffer[ 1 ] := TempByte;

     FExcelStream.Write( Buffer, SizeOf( Buffer ) );

     TempByte := Length( Value.Name );
     FExcelStream.Write( TempByte, SizeOf( TempByte ) );
     FExcelStream.Write( Value.Name[ 1 ], Length( Value.Name ) );
End;

// *************************************************************************************
// ** TmxNativeExcel._SetHeader, 6/6/01 2:20:51 PM
// *************************************************************************************
// ** Description: Specifies header string that appears at the top of every page when the
// ** document is printed
// ** Record Body Length: variable
// ** Record Body Byte Structure:
// **       Byte Number           Byte Description         Contents (hex)
// **            0                Length of string (bytes)
// **          1-on               Header string (ASCII)
// *************************************************************************************

{$WARNINGS OFF}
Procedure TmxNativeExcel._SetHeader( Value: PChar );
Var
     Buffer: Array[ 0..254 ] Of Char;
     StringLength: Byte;
Begin
     If StrLen( Value ) > 255 Then
     Begin
          StrLCopy( Buffer, Value, SizeOf( Buffer ) );
          StringLength := SizeOf( Buffer );
     End
     Else
     Begin
          StrCopy( Buffer, Value );
          StringLength := StrLen( Value );
     End;

     FRecordType := EXCEL_HEADER;
     FDataLength := 1 + StringLength;
     WriteRecordHeader;
     FDataLength := StringLength;

     FExcelStream.Write( StringLength, SizeOf( StringLength ) );
     FExcelStream.Write( Buffer, FDataLength );
End;
{$WARNINGS ON}

// *************************************************************************************
// ** TmxNativeExcel._SetFooter, 6/6/01 2:24:49 PM
// *************************************************************************************
// ** Description: Specifies footer string that appears at the bottom of every page when the
// ** document is printed
// ** Record Body Length: variable
// ** Record Body Byte Structure:
// **       Byte Number           Byte Description         Contents (hex)
// **           0                 Length of string (bytes)
// **         1-on                Footer string (ASCII)
// *************************************************************************************

{$WARNINGS OFF}
Procedure TmxNativeExcel._SetFooter( Value: PChar );
Var
     Buffer: Array[ 0..254 ] Of Char;
     StringLength: Byte;
Begin
     If StrLen( Value ) > 255 Then
     Begin
          StrLCopy( Buffer, Value, SizeOf( Buffer ) );
          StringLength := SizeOf( Buffer );
     End
     Else
     Begin
          StrCopy( Buffer, Value );
          StringLength := StrLen( Value );
     End;

     FRecordType := EXCEL_FOOTER;
     FDataLength := 1 + StringLength;
     WriteRecordHeader;
     FDataLength := StringLength;

     FExcelStream.Write( StringLength, SizeOf( StringLength ) );
     FExcelStream.Write( Buffer, FDataLength );
End;
{$WARNINGS ON}

// *************************************************************************************
// ** TmxNativeExcel.SetHeader, 6/6/01 2:22:09 PM
// *************************************************************************************

{$WARNINGS OFF}
Procedure TmxNativeExcel.SetHeader( Value: PChar );
Begin
     _SetHeader( Value );
End;
{$WARNINGS ON}

// *************************************************************************************
// ** TmxNativeExcel.SetHeader, 6/6/01 2:22:07 PM
// *************************************************************************************

{$WARNINGS OFF}
Procedure TmxNativeExcel.SetHeader( Value: String );
Begin
     _SetHeader( PChar( Value ) );
End;
{$WARNINGS ON}

// *************************************************************************************
// ** TmxNativeExcel.SetFooter, 6/6/01 2:22:05 PM
// *************************************************************************************

{$WARNINGS OFF}
Procedure TmxNativeExcel.SetFooter( Value: PChar );
Begin
     _SetFooter( Value );
End;
{$WARNINGS ON}

// *************************************************************************************
// ** TmxNativeExcel.SetFooter, 6/6/01 2:22:02 PM
// *************************************************************************************

{$WARNINGS OFF}
Procedure TmxNativeExcel.SetFooter( Value: String );
Begin
     _SetFooter( PChar( Value ) );
End;
{$WARNINGS ON}

// *************************************************************************************
// ** TmxNativeExcel._SetColumnWidth, 6/6/01 3:48:58 PM
// *************************************************************************************
// ** Description: Sets column width for a range of columns
// ** Record Body Length: 4 bytes
// ** Record Body Byte Structure:
// **       Byte Number           Byte Description         Contents (hex)
// **            0                First column in the range
// **            1                Last column in the range
// **           2-3               Column width in units of 1/256th of a
// **                             character
// *************************************************************************************

Procedure TmxNativeExcel._SetColumnWidth( FirstCol, LastCol: Word; AWidth: Integer );
Var
     Buffer: Array[ 0..1 ] Of Byte;
     ColWidth: Word;
Begin
     FRecordType := EXCEL_COLUMNWIDTH;
     FDataLength := 4;
     WriteRecordHeader;

     Buffer[ 0 ] := FirstCol - 1;
     Buffer[ 1 ] := LastCol - 1;
     ColWidth := AWidth * 256;

     FExcelStream.Write( Buffer, SizeOf( Buffer ) );
     FExcelStream.Write( ColWidth, SizeOf( ColWidth ) );
End;

// *************************************************************************************
// ** TmxNativeExcel.SetColumnWidth, 6/6/01 3:54:53 PM
// *************************************************************************************

Procedure TmxNativeExcel.SetColumnWidth( Column: Word; AWidth: Integer );
Begin
     _SetColumnWidth( Column, Column, AWidth );
End;

// *************************************************************************************
// ** TmxNativeExcel.SetColumnWidth, 6/6/01 3:55:15 PM
// *************************************************************************************

Procedure TmxNativeExcel.SetColumnWidth( FirstCol, LastCol: Word; AWidth: Integer );
Begin
     _SetColumnWidth( FirstCol, LastCol, AWidth );
End;

// *************************************************************************************
// ** TmxNativeExcel._SetMargin, 6/6/01 4:10:54 PM
// *************************************************************************************
// ** Description: Specifies the margins in inches when the document is printed
// ** Record Body Length: 8 bytes
// ** Record Body Byte Structure:
// **       Byte Number           Byte Description         Contents (hex)
// **           0-7               Margin (IEEE format)
// *************************************************************************************

Procedure TmxNativeExcel._SetMargin( Margin: TmxExcelMargin; AWidth: Double );
Begin
     Case Margin Of
          emLeft: FRecordType := EXCEL_MARGIN_LEFT;
          emRight: FRecordType := EXCEL_MARGIN_RIGHT;
          emTop: FRecordType := EXCEL_MARGIN_TOP;
          emBottom: FRecordType := EXCEL_MARGIN_BOTTOM;
     End;

     FDataLength := 8;
     WriteRecordHeader;

     FExcelStream.Write( AWidth, FDataLength );
End;

// *************************************************************************************
// ** TmxNativeExcel.SetMargin, 6/6/01 4:13:53 PM
// *************************************************************************************

Procedure TmxNativeExcel.SetMargin( Margin: TmxExcelMargin; AWidth: Double );
Begin
     _SetMargin( Margin, AWidth );
End;

// *************************************************************************************
// ** TmxNativeExcel.SetLeftMargin, 6/6/01 4:13:50 PM
// *************************************************************************************

Procedure TmxNativeExcel.SetLeftMargin( AWidth: Double );
Begin
     _SetMargin( emLeft, AWidth );
End;

// *************************************************************************************
// ** TmxNativeExcel.SetRightMargin, 6/6/01 4:13:46 PM
// *************************************************************************************

Procedure TmxNativeExcel.SetRightMargin( AWidth: Double );
Begin
     _SetMargin( emRight, AWidth );
End;

// *************************************************************************************
// ** TmxNativeExcel.SetBottomMargin, 6/6/01 4:13:44 PM
// *************************************************************************************

Procedure TmxNativeExcel.SetBottomMargin( AWidth: Double );
Begin
     _SetMargin( emBottom, AWidth );
End;

// *************************************************************************************
// ** TmxNativeExcel.SetTopMargin, 6/6/01 4:13:42 PM
// *************************************************************************************

Procedure TmxNativeExcel.SetTopMargin( AWidth: Double );
Begin
     _SetMargin( emTop, AWidth );
End;

// *************************************************************************************
// ** TmxNativeExcel._WriteString, 6/6/01 10:53:09 AM
// *************************************************************************************
// ** Description: Value of a string in a formula
// ** Record Body Length: variable
// ** Record Body Byte Structure:
// **       Byte Number     Byte Description           Contents (hex)
// **            0          Length of the string
// **            1-256 (max) The string itself
// ** The STRING record appears immediately after the FORMULA record that evaluates to the
// ** string, unless the formula is in an array.  In that case, the string record immediately
// ** follows the ARRAY record.
// *************************************************************************************

{$WARNINGS OFF}
Procedure TmxNativeExcel._WriteString( Value: PChar );
Var
     Buffer: Array[ 0..254 ] Of Char;
     StringLength: Byte;
Begin
     If StrLen( Value ) > 255 Then
     Begin
          StrLCopy( Buffer, Value, SizeOf( Buffer ) );
          StringLength := SizeOf( Buffer );
     End
     Else
     Begin
          StrCopy( Buffer, Value );
          StringLength := StrLen( Value );
     End;

     FRecordType := EXCEL_CELL_STRING;
     FDataLength := 1 + StringLength;
     WriteRecordHeader;
     FDataLength := StringLength;

     FExcelStream.Write( StringLength, SizeOf( StringLength ) );
     FExcelStream.Write( Buffer, FDataLength );
End;
{$WARNINGS ON}

// *************************************************************************************
// ** TmxNativeExcel._WriteFormula, 6/7/01 1:57:26 PM
// *************************************************************************************
// ** Description: Name, size, and contents of a formula cell
// ** Record Body Length: 17-272 bytes
// ** Record Body Byte Structure:
// **       Byte Number     Byte Description               Contents (hex)
// **            0-1        Row
// **            2-3        Column
// **            4-6        Cell attributes (rgbAttr) (see Table 2-3)
// **            7-14       Current value of formula
// **            15         Recalc flag
// **                       =0 if the formula is calculated
// **                       =nonzero if the formula needs to be calculated
// **                       =3 if the formula is part of a matrix that needs to be calculated
// **            16         Length of parsed expression
// **            17         Parsed expression
// **
// ** The parsed expression is the cell's formula, stored in Excel's internal compressed format.
// **
// ** If a formula must be recalculated whenever it is loaded, the recalc flag (byte 15) must
// ** be set.  Any nonzero value is a set recalc flag.  However, a flag value of 3 indicates
// ** that the cell is a part of a matrix, and the entire matrix must be recalculated. Bytes 7
// ** through 14 may contain a number, a Boolean value, an error code, or a string.  The
// ** following tables apply.
// ** Case 1: Bytes 7 - 14 contain a Boolean value.
// **      Byte Number     Byte Description          Contents (hex)
// **            7         otBool                          1
// **            8         Reserved                        0
// **            9         Boolean value
// **            10-12     Reserved                        0
// **            13-14     fExprO                          FFFFh
// ** Case 2: Bytes 7 - 14 contain an error code.
// **      Byte Number     Byte Description          Contents (hex)
// **            7         otErr                           2
// **            8         Reserved                        0
// **            9         error code
// **            10-12     Reserved                        0
// **            13-14     fExprO                          FFFFh
// ** Case 3: Bytes 7 - 14 contain a string.
// **    Byte Number     Byte Description          Contents (hex)
// **            7         otString                        0
// **            8-12      Reserved                        0
// **            13-14     fExprO                          FFFFh
// ** The string value itself is not stored in the field, but rather in a separate record of
// ** the STRING type.
// *************************************************************************************

{$IFDEF USE_FORMULAS}

Procedure TmxNativeExcel._WriteFormula( FormatIndex: Integer; Value: Variant; Formula: PChar );
Var
     Buffer: Array[ 0..254 ] Of Char;
     CurrentBuffer: Array[ 7..14 ] Of Byte;
     StringLength: Byte;
     RecalcFlag: Byte;
     StringField: Boolean;
     TempStr: String;
Begin
     If StrLen( Formula ) > 255 Then
     Begin
          StrLCopy( Buffer, Formula, SizeOf( Buffer ) );
          StringLength := SizeOf( Buffer );
     End
     Else
     Begin
          StrCopy( Buffer, Formula );
          StringLength := StrLen( Formula );
     End;

     FRecordType := EXCEL_CELL_FORMULA;
     FDataLength := 17 + StringLength;
     WriteRecordHeader;
     FDataLength := StringLength;

     AddColRowInfo;
     AddAttributeInfo;

     // *** Current Value ***

     StringField := FALSE;

     If VarType( Value ) = VarBoolean Then
     Begin
          CurrentBuffer[ 07 ] := EXCEL_OTBOOL;
          CurrentBuffer[ 08 ] := 0;
          If Value = TRUE Then CurrentBuffer[ 09 ] := 1 Else CurrentBuffer[ 09 ] := 0;
          CurrentBuffer[ 10 ] := 0;
          CurrentBuffer[ 11 ] := 0;
          CurrentBuffer[ 12 ] := 0;
          CurrentBuffer[ 13 ] := $FF;
          CurrentBuffer[ 14 ] := $FF;
     End
     Else
          If VarType( Value ) = VarByte Then
          Begin
               CurrentBuffer[ 07 ] := EXCEL_OTERR;
               CurrentBuffer[ 08 ] := 0;
               CurrentBuffer[ 09 ] := Value;
               CurrentBuffer[ 10 ] := 0;
               CurrentBuffer[ 11 ] := 0;
               CurrentBuffer[ 12 ] := 0;
               CurrentBuffer[ 13 ] := $FF;
               CurrentBuffer[ 14 ] := $FF;
          End
          Else // *** String ***
          Begin
               CurrentBuffer[ 07 ] := EXCEL_OTSTRING;
               CurrentBuffer[ 08 ] := 0;
               CurrentBuffer[ 09 ] := 0;
               CurrentBuffer[ 10 ] := 0;
               CurrentBuffer[ 11 ] := 0;
               CurrentBuffer[ 12 ] := 0;
               CurrentBuffer[ 13 ] := $FF;
               CurrentBuffer[ 14 ] := $FF;

               StringField := TRUE;
          End;

     FExcelStream.Write( CurrentBuffer, SizeOf( CurrentBuffer ) );

     // *** Recalc ***

     RecalcFlag := 1; // *** Always recalculate the formula *** TODO **

     FExcelStream.Write( RecalcFlag, SizeOf( RecalcFlag ) );

     // *** Parsed Expression ***

     {TODO : Formula parser is not completed..... }

     FExcelStream.Write( StringLength, SizeOf( StringLength ) );
     FExcelStream.Write( Buffer, FDataLength );

     If StringField Then
     Begin
          TempStr := Value;
          _WriteString( PChar( TempStr ) );
     End;
End;

// *************************************************************************************
// ** TmxNativeExcel.WriteFormula, 6/7/01 2:45:05 PM
// *************************************************************************************

Procedure TmxNativeExcel.WriteFormula( Value: Variant; Formula: PChar );
Begin
     _WriteFormula( EXCEL_DEFAULT_FORMATINDEX, Value, Formula );
End;

// *************************************************************************************
// ** TmxNativeExcel.WriteFormula, 6/7/01 2:45:08 PM
// *************************************************************************************

Procedure TmxNativeExcel.WriteFormula( FormatIndex: Integer; Value: Variant; Formula: PChar );
Begin
     _WriteFormula( FormatIndex, Value, Formula );
End;

// *************************************************************************************
// ** TmxNativeExcel.WriteFormula, 6/7/01 2:45:09 PM
// *************************************************************************************

Procedure TmxNativeExcel.WriteFormula( ARow, ACol: Word; Value: Variant; Formula: PChar );
Begin
     Row := ARow;
     Column := ACol;
     _WriteFormula( EXCEL_DEFAULT_FORMATINDEX, Value, Formula );
End;

// *************************************************************************************
// ** TmxNativeExcel.WriteFormula, 6/7/01 2:45:11 PM
// *************************************************************************************

Procedure TmxNativeExcel.WriteFormula( ARow, ACol: Word; FormatIndex: Integer; Value: Variant; Formula: PChar );
Begin
     Row := ARow;
     Column := ACol;
     _WriteFormula( FormatIndex, Value, Formula );
End;

// *************************************************************************************
// ** TmxNativeExcel.WriteFormula, 6/7/01 2:45:15 PM
// *************************************************************************************

Procedure TmxNativeExcel.WriteFormula( Value: Variant; Formula: String );
Begin
     _WriteFormula( EXCEL_DEFAULT_FORMATINDEX, Value, PChar( Formula ) );
End;

// *************************************************************************************
// ** TmxNativeExcel.WriteFormula, 6/7/01 2:45:18 PM
// *************************************************************************************

Procedure TmxNativeExcel.WriteFormula( FormatIndex: Integer; Value: Variant; Formula: String );
Begin
     _WriteFormula( FormatIndex, Value, PChar( Formula ) );
End;

// *************************************************************************************
// ** TmxNativeExcel.WriteFormula, 6/7/01 2:45:20 PM
// *************************************************************************************

Procedure TmxNativeExcel.WriteFormula( ARow, ACol: Word; Value: Variant; Formula: String );
Begin
     Row := ARow;
     Column := ACol;
     _WriteFormula( EXCEL_DEFAULT_FORMATINDEX, Value, PChar( Formula ) );
End;

// *************************************************************************************
// ** TmxNativeExcel.WriteFormula, 6/7/01 2:45:22 PM
// *************************************************************************************

Procedure TmxNativeExcel.WriteFormula( ARow, ACol: Word; FormatIndex: Integer; Value: Variant; Formula: String );
Begin
     Row := ARow;
     Column := ACol;
     _WriteFormula( FormatIndex, Value, PChar( Formula ) );
End;
{$ENDIF}

// *************************************************************************************
// ** TmxNativeExcel._WriteData, 6/7/01 3:41:25 PM
// *************************************************************************************

Procedure TmxNativeExcel._WriteData( FormatIndex: Integer; Value: Variant );
Var
     TempStr: String;
Begin
     Case VarType( Value ) Of

          varEmpty: _WriteBlank( FormatIndex );
          varByte, varSmallint, varInteger: _WriteInteger( FormatIndex, Value );
          varSingle, varDouble, varCurrency: _WriteNumber( FormatIndex, Value );
          varBoolean: WriteBoolean( FormatIndex, Value );
          varUnknown: _WriteBoolErr( FormatIndex, beNA );
          varVariant: _WriteBoolErr( FormatIndex, beVALUE );
          varNull: _WriteBoolErr( FormatIndex, beNULL );
          varDispatch, varError, varAny: _WriteBoolErr( FormatIndex, beNA );
          varOleStr, varStrArg, varString:
               Begin
                    TempStr := Value;
                    WriteLabel( FormatIndex, TempStr );
               End;
          varDate:
               Begin
                    TempStr := DateTimeToStr( Value );
{$WARNINGS OFF}
                    _WriteLabel( FormatIndex, PChar( TempStr ) );
{$WARNINGS ON}
               End;
     End;
End;

// *************************************************************************************
// ** TmxNativeExcel.WriteData, 6/7/01 3:42:06 PM
// *************************************************************************************

Procedure TmxNativeExcel.WriteData( Value: Variant );
Begin
     _WriteData( EXCEL_DEFAULT_FORMATINDEX, Value );
End;

// *************************************************************************************
// ** TmxNativeExcel.WriteData, 6/7/01 3:42:10 PM
// *************************************************************************************

Procedure TmxNativeExcel.WriteData( ARow, ACol: Word; Value: Variant );
Begin
     Row := ARow;
     Column := ACol;
     _WriteData( EXCEL_DEFAULT_FORMATINDEX, Value );
End;

Procedure TmxNativeExcel.WriteData( FormatIndex: Integer; Value: Variant );
Begin
     _WriteData( FormatIndex, Value );
End;

// *************************************************************************************
// ** TmxNativeExcel.WriteData, 6/7/01 3:42:12 PM
// *************************************************************************************

Procedure TmxNativeExcel.WriteData( ARow, ACol: Word; FormatIndex: Integer; Value: Variant );
Begin
     Row := ARow;
     Column := ACol;
     _WriteData( FormatIndex, Value );
End;

End.



