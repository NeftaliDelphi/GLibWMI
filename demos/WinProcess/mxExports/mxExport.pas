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

Unit mxExport;

Interface

{$I MAX.INC}

Uses
  Windows,
  
  SysUtils,
  Classes,
  Stdctrls,
  Comctrls,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  Extctrls,
  ShellAPI,
  Clipbrd,
  mxNativeExcel,
{$IFNDEF NATIVEEXCEL_STANDARD}
  mxNativeExcel_Types,
{$ENDIF}
{$IFDEF DELPHI6_UP}
  Variants,
{$ENDIF}
  DB,
  grids,
  DBGrids,
  mxExportSelect,
  mxExportProgress;

{MXEXPORT.RES}// *** REMOVED IN 2.34 ***

// ************************************************************************
// ************************************************************************
// ************************************************************************

Const

  mxExportVersion = $0225;

// ************************************************************************
// ************************************************************************
// ************************************************************************

Resourcestring

  rsExportingStrings = 'Exporting Strings';
  rsExportingAny = 'Exporting...';
  rsExportingDataSet = 'Exporting DataSet';
  rsExportingListView = 'Exporting ListView';
  rsExportingDBGrig = 'Exporting DBGrid';
  rsExportingStringGrig = 'Exporting String Grid';
  rsFieldIsUnknown = '** UNKNOWN **';
  rsFieldIsBinary = '** BINARY **';
  rsNullValue = '** NULL **';
  rsTrue = 'True';
  rsFalse = 'False';
  rsExportCaption = 'Export';
  rsExport = '&Export';
  rsCancel = '&Cancel';
  rsCreated = 'Created:';
  rsProcessing = 'Processing...';
  rsSelectFormat = 'E&xport formats:';
  rsCopiedToClipboard = 'Data was copied to clipboard!';
  rsExportToFile = 'Export &to file';
  rsViewOnly = '&View only';
  rsTempPrefix = 'MAX';
  rsStringGridHeader = 'Name %d';

  // *** Export types ***

  rsSelectHTML = 'HTML';
  rsSelectWord = 'Microsoft Word';
  rsSelectExcel = 'Microsoft Excel';
  rsSelectText = 'Text';
  rsSelectRTF = 'Rich Text';
  rsSelectComma = 'Comma-Separated Text';
  rsSelectTab = 'Tab-Separated Text';
  rsSelectDIF = 'Data Interchange Format';
  rsSelectSYLK = 'SYLK Format';
  rsSelectClipboard = 'Clipboard';

     // *** HTML Color Templates ***

  rsDefaultFontFace = 'Arial,Helvetica';

  rsStandard_BGCOLOR = '$00FFFFFF';
  rsStandard_TEXT = '$00000000';
  rsStandard_LINK = '$000000FF';
  rsStandard_ALINK = '$00FF0000';
  rsStandard_VLINK = '$00FFFF00';
  rsStandard_HEAD_BGCOLOR = '$00336699';
  rsStandard_HEAD_FONT_COLOR = '$00FFFFFF';
  rsStandard_TABLE_BGCOLOR = '$00FFFFCF';
  rsStandard_TABLE_ODD_BGCOLOR = '$00FFFFFF';
  rsStandard_TABLE_FONT_COLOR = '$00000000';
     // *** RTF cannot handle high color backgrounds ***
  rsStandard_RTF_HEAD_BGCOLOR = '$00800000';
  rsStandard_RTF_TABLE_BGCOLOR = '$00FFFFFF';
  rsStandard_RTF_TABLE_ODD_BGCOLOR = '$0000FF80';

  rsBW_BGCOLOR = '$00FFFFFF';
  rsBW_TEXT = '$00000000';
  rsBW_LINK = '$00AAAAAA';
  rsBW_ALINK = '$00BBBBBB';
  rsBW_VLINK = '$00DDDDDD';
  rsBW_HEAD_BGCOLOR = '$00000000';
  rsBW_HEAD_FONT_COLOR = '$00FFFFFF';
  rsBW_TABLE_BGCOLOR = '$00FFFFFF';
  rsBW_TABLE_ODD_BGCOLOR = '$00F3F3F3';
  rsBW_TABLE_FONT_COLOR = '$00000000';

  rsClassic_BGCOLOR = '$00339966';
  rsClassic_TEXT = '$00000000';
  rsClassic_LINK = '$000066CC';
  rsClassic_ALINK = '$00FF0000';
  rsClassic_VLINK = '$00923FC1';
  rsClassic_HEAD_BGCOLOR = '$00000000';
  rsClassic_HEAD_FONT_COLOR = '$00FF0000';
  rsClassic_TABLE_BGCOLOR = '$00006BCE';
  rsClassic_TABLE_ODD_BGCOLOR = '$00007AEC';
  rsClassic_TABLE_FONT_COLOR = '$00FFFFFF';
     // *** RTF cannot handle high color backgrounds ***
  rsClassic_RTF_TABLE_FONT_COLOR = '$00000000';
  rsClassic_RTF_HEAD_FONT_COLOR = '$000000FF';
  rsClassic_RTF_HEAD_BGCOLOR = '$00000000';
  rsClassic_RTF_TABLE_BGCOLOR = '$00FF0000';
  rsClassic_RTF_TABLE_ODD_BGCOLOR = '$00FF8080';

  rsColorful_BGCOLOR = '$00339966';
  rsColorful_TEXT = '$00000000';
  rsColorful_LINK = '$000066CC';
  rsColorful_ALINK = '$00FF0000';
  rsColorful_VLINK = '$00923FC1';
  rsColorful_HEAD_BGCOLOR = '$00CC0033';
  rsColorful_HEAD_FONT_COLOR = '$00FFFFFF';
  rsColorful_TABLE_BGCOLOR = '$00FFFFFF';
  rsColorful_TABLE_ODD_BGCOLOR = '$00FAF100';
  rsColorful_TABLE_FONT_COLOR = '$00FFFFFF';
     // *** RTF cannot handle high color backgrounds ***
  rsColorful_RTF_TABLE_FONT_COLOR = '$00000000';
  rsColorful_RTF_HEAD_BGCOLOR = '$000000FF';
  rsColorful_RTF_TABLE_BGCOLOR = '$00FFFFFF';
  rsColorful_RTF_TABLE_ODD_BGCOLOR = '$0000FF80';

  rsGray_BGCOLOR = '$00FFFFFF';
  rsGray_TEXT = '$00000000';
  rsGray_LINK = '$000000FF';
  rsGray_ALINK = '$00FF0000';
  rsGray_VLINK = '$00FFFF00';
  rsGray_HEAD_BGCOLOR = '$00808080';
  rsGray_HEAD_FONT_COLOR = '$00FFFFFF';
  rsGray_TABLE_BGCOLOR = '$00FFFFFF';
  rsGray_TABLE_ODD_BGCOLOR = '$00EEEEEE';
  rsGray_TABLE_FONT_COLOR = '$00000000';
     // *** RTF cannot handle high color backgrounds ***
  rsGray_RTF_HEAD_BGCOLOR = '$00808080';
  rsGray_RTF_TABLE_BGCOLOR = '$00FFFFFF';
  rsGray_RTF_TABLE_ODD_BGCOLOR = '$0080FF80';

  rsMsMoney_BGCOLOR = '$00FFFFFF';
  rsMsMoney_TEXT = '$00000000';
  rsMsMoney_LINK = '$000000FF';
  rsMsMoney_ALINK = '$00FF0000';
  rsMsMoney_VLINK = '$00AABBAA';
  rsMsMoney_HEAD_BGCOLOR = '$00CEC6B5';
  rsMsMoney_HEAD_FONT_COLOR = '$00000000';
  rsMsMoney_TABLE_BGCOLOR = '$00DEE7DE';
  rsMsMoney_TABLE_ODD_BGCOLOR = '$00FFFBF0';
  rsMsMoney_TABLE_FONT_COLOR = '$00000080';

  rsOlive_BGCOLOR = '$00FFFFFF';
  rsOlive_TEXT = '$005F605F';
  rsOlive_LINK = '$000000FF';
  rsOlive_ALINK = '$00FF0000';
  rsOlive_VLINK = '$00FFFF00';
  rsOlive_HEAD_BGCOLOR = '$00CFC890';
  rsOlive_HEAD_FONT_COLOR = '$00000000';
  rsOlive_TABLE_BGCOLOR = '$00FFFFFF';
  rsOlive_TABLE_ODD_BGCOLOR = '$00FFFFCF';
  rsOlive_TABLE_FONT_COLOR = '$00000000';

  rsDark_BGCOLOR = '$00317676';
  rsDark_TEXT = '$00FFE760';
  rsDark_LINK = '$00DDE760';
  rsDark_ALINK = '$00FFFF00';
  rsDark_VLINK = '$00CCCC39';
  rsDark_HEAD_BGCOLOR = '$003A9393';
  rsDark_HEAD_FONT_COLOR = '$00FFFFFF';
  rsDark_TABLE_BGCOLOR = '$00004040';
  rsDark_TABLE_ODD_BGCOLOR = '$00000000';
  rsDark_TABLE_FONT_COLOR = '$00FFFFFF';

     // *** Default file filters ***

  rsSaveTitle = 'Save document';
  rsFilterHTML = 'HTML Documents';
  rsFilterExcel = 'Excel Files';
  rsFilterWord = 'Word Documents';
  rsFilterText = 'Text Files';
  rsFilterComma = 'CSV (Comma delimited)';
  rsFilterTab = 'Text (Tab delimited)';
  rsFilterRTF = 'Rich Text Format';
  rsFilterDIF = 'Data Interchange Format';
  rsFilterSYLK = 'SYLK Files';

Type
// ************************************************************************
// ************************************************************************
// ************************************************************************

  TmxValues = Array Of Variant;

  TmxExportHTMLOptions = (
    hoShowGridLines,
    hoBoldHeaders,
    hoAutoLink,
    hoOddRowColoring,
    hoDisplayTitle );

  TmxExportHTMLOptionSet = Set Of TmxExportHTMLOptions;

  TmxExportRTFOptions = (
    roShowGridLines,
    roOddRowColoring );

  TmxExportRTFOptionSet = Set Of TmxExportRTFOptions;

  TmxExportExcelOptions = (
    reCellsAsText,
    reSetColumnWidths
{$IFDEF NATIVEEXCEL_STANDARD}
    ,
    reSetMargins,
    reUseBorders
{$ENDIF}
    );

  TmxExportExcelOptionSet = Set Of TmxExportExcelOptions;

{$IFDEF NATIVEEXCEL_STANDARD}
  TmxExcelVersion = (
    xls21,
    xls30,
    xls40,
    xls50 );
{$ENDIF}

  TmxExportOptions = (
    xoClipboardMessage,
    xoExportInvisibles,
    xoFooterLine,
    xoHeaderLine,
    xoRowNumbers,
    xoShowExportDate,
    xoShowHeader,
    xoShowProgress,
    xoSelectedRowsOnly,
    xoTruncate,
    xoUseAlignments );

  TmxExportOptionSet = Set Of TmxExportOptions;

  TmxExportType = (
    xtHTML,
    xtExcel,
    xtWord,
    xtTXT,
    xtCSV,
    xtTAB,
    xtRTF,
    xtDIF,
    xtSYLK,
    xtClipboard );

  TmxExportTypeSet = Set Of TmxExportType;

  TmxExportError = (
    xeInvalidFileName,
    xeFileExist,
    xeComponentIsNull,
    xeGeneralExportError,
    xeUserCancelled );

  TmxExportStyle = (
    xsFile,
    xsView );

  TmxHTMLColorTemplate = (
    ctStandard,
    ctBW,
    ctClassic,
    ctColorful,
    ctDark,
    ctGray,
    ctMSMoney,
    ctOlive,
    ctCustom );

  TmxRTFColorTemplate = (
    rtStandard,
    rtClassic,
    rtColorful,
    rtGray,
    rtCustom );

  TmxHTMLFont = (
    hfDefault,
    hfTable );

  TmxHTMLColor = (
    hcALINK,
    hcBGCOLOR,
    hcLINK,
    hcTEXT,
    hcVLINK,
    hcHEAD_BGCOLOR,
    hcHEAD_FONT_COLOR,
    hcTABLE_BGCOLOR,
    hcTABLE_ODD_BGCOLOR,
    hcTABLE_FONT_COLOR );

  TmxRTFColor = (
    rcTEXT,
    rcHEAD_FONT_COLOR,
    rcTABLE_FONT_COLOR,
    rcTABLE_BGCOLOR,
    rcTABLE_HEAD_BGCOLOR,
    rcTABLE_ODD_BGCOLOR );

  TmxHTMLExtension = (
    exHTM,
    exHTML );

  TmxFieldAlignment = (
    faDefault,
    faLeft,
    faRight,
    faCenter );

// ************************************************************************
// ************************************************************************
// ************************************************************************

  TEventOnGetHeader = Procedure( Sender: TObject; RecordCount: Cardinal; Var Header: String ) Of Object;
  TEventOnGetFooter = Procedure( Sender: TObject; RecordCount: Cardinal; Var Footer: String ) Of Object;
  TEventOnError = Procedure( Sender: TObject; Error: TmxExportError ) Of Object;
  TEventOnExport = Procedure( Sender: TObject; Current, Total: Cardinal; Values: TmxValues; CanExport: Boolean ) Of Object;
  TEventOnGetExtension = Procedure( Sender: TObject; Var Extension: String ) Of Object;
  TEventOnFileExist = Procedure( Sender: TObject; OutputFileName: String; Var CanOverWrite: Boolean ) Of Object;
  TEventOnGetExportInfo = Procedure( Sender: TObject; Var RecordCount: Cardinal; Var FieldCount: Integer ) Of Object;
  TEventOnGetFieldLength = Procedure( Sender: TObject; Index: Integer; Var FieldLength: Integer ) Of Object;
  TEventOnGetFieldName = Procedure( Sender: TObject; Index: Integer; Var FieldName: String ) Of Object;
  TEventOnGetExportData = Procedure( Sender: TObject; Index: Integer; Var Data: TmxValues ) Of Object;

// ************************************************************************
// ************************************************************************
// ************************************************************************

  TmxDocumentFilter = Class( TPersistent )
  Private

    FHTML: String;
    FExcel: String;
    FWord: String;
    FText: String;
    FComma: String;
    FTab: String;
    FRTF: String;
    FDIF: String;
    FSYLK: String;

  Public

    Constructor Create; Virtual;

  Published

    Property HTML: String Read FHTML Write FHTML;
    Property Excel: String Read FExcel Write FExcel;
    Property Word: String Read FWord Write FWord;
    Property Text: String Read FText Write FText;
    Property Comma: String Read FComma Write FComma;
    Property Tab: String Read FTab Write FTab;
    Property RTF: String Read FRTF Write FRTF;
    Property DIF: String Read FDIF Write FDIF;
    Property SYLK: String Read FSYLK Write FSYLK;

  End;

// ************************************************************************
// ************************************************************************
// ************************************************************************

  TmxHTMLColors = Class( TPersistent )
  Private

    FBackground: TColor; // bgcolor in body section
    FDefaultLink: TColor; // link in body section
    FDefaultFontFace: String; // font face in body's font sections
    FVisitedLink: TColor; // vlink in body section
    FActiveLink: TColor; // alink in body section
    FDefaultText: TColor; // text in body section
    FTableFontColor: TColor; // font color in body's font sections
    FTableFontFace: String; // font face in body's font sections
    FTableBackground: TColor; // bgcolor in table section
    FTableOddBackground: TColor; // bgcolor in table section, it will be used for odd row coloring
    FHeaderBackground: TColor; // bgcolor in header's TR section
    FHeadersFontColor: TColor; // color in header's font section

  Protected

    Procedure AssignTo( Dest: TPersistent ); Override;

  Public

    Constructor Create; Virtual;

  Published

    Property Background: TColor Read FBackground Write FBackground;
    Property DefaultLink: TColor Read FDefaultLink Write FDefaultLink;
    Property DefaultFontFace: String Read FDefaultFontFace Write FDefaultFontFace;
    Property VisitedLink: TColor Read FVisitedLink Write FVisitedLink;
    Property ActiveLink: TColor Read FActiveLink Write FActiveLink;
    Property DefaultText: TColor Read FDefaultText Write FDefaultText;
    Property TableFontColor: TColor Read FTableFontColor Write FTableFontColor;
    Property TableFontFace: String Read FTableFontFace Write FTableFontFace;
    Property TableBackground: TColor Read FTableBackground Write FTableBackground;
    Property TableOddBackground: TColor Read FTableOddBackground Write FTableOddBackground;
    Property HeaderBackground: TColor Read FHeaderBackground Write FHeaderBackground;
    Property HeadersFontColor: TColor Read FHeadersFontColor Write FHeadersFontColor;

  End;

// ************************************************************************
// ************************************************************************
// ************************************************************************

  TmxRTFColors = Class( TPersistent )
  Private

    FTableBackground: TColor; // bgcolor in table section
    FTableOddBackground: TColor; // bgcolor in table section, it will be used for odd row coloring
    FHeaderBackground: TColor; // bgcolor in header's TR section

    FDefaultFont: TFont;
    FHeaderFont: TFont;
    FTableFont: TFont;

    Procedure SetDefaultFont( AValue: TFont );
    Procedure SetHeaderFont( AValue: TFont );
    Procedure SetTableFont( AValue: TFont );

  Protected

    Procedure AssignTo( Dest: TPersistent ); Override;

  Public

    Constructor Create; Virtual;
    Destructor Destroy; Override;

  Published

    Property TableBackground: TColor Read FTableBackground Write FTableBackground;
    Property TableOddBackground: TColor Read FTableOddBackground Write FTableOddBackground;
    Property HeaderBackground: TColor Read FHeaderBackground Write FHeaderBackground;

    Property DefaultFont: TFont Read FDefaultFont Write SetDefaultFont;
    Property HeaderFont: TFont Read FHeaderFont Write SetHeaderFont;
    Property TableFont: TFont Read FTableFont Write SetTableFont;

  End;

// ************************************************************************
// ************************************************************************
// ************************************************************************

  TmxHTMLOptions = Class( TPersistent )
  Private

    FOptions: TmxExportHTMLOptionSet;
    FCustomColors: TmxHTMLColors;
    FExtension: TmxHTMLExtension;
    FTemplate: TmxHTMLColorTemplate;
    FTitle: String;

    Procedure SetCustomColors( AValue: TmxHTMLColors );

  Public

    Constructor Create; Virtual;
    Destructor Destroy; Override;

  Published

    Property CustomColors: TmxHTMLColors Read FCustomColors Write SetCustomColors;
    Property Extension: TmxHTMLExtension Read FExtension Write FExtension Default exHTML;
    Property Options: TmxExportHTMLOptionSet Read FOptions Write FOptions;
    Property Template: TmxHTMLColorTemplate Read FTemplate Write FTemplate;
    Property Title: String Read FTitle Write FTitle;

  End;

// ************************************************************************
// ************************************************************************
// ************************************************************************

  TmxRTFOptions = Class( TPersistent )
  Private

    FTemplate: TmxRTFColorTemplate;
    FCustomSettings: TmxRTFColors;
    FCellWidth: Integer;
    FOptions: TmxExportRTFOptionSet;

    FTopMargin: Integer;
    FBottomMargin: Integer;
    FLeftMargin: Integer;
    FRightMargin: Integer;

    Procedure SetCustomSettings( AValue: TmxRTFColors );

  Public

    Constructor Create; Virtual;
    Destructor Destroy; Override;

  Published

    Property Template: TmxRTFColorTemplate Read FTemplate Write FTemplate;
    Property Options: TmxExportRTFOptionSet Read FOptions Write FOptions;

    Property CustomSettings: TmxRTFColors Read FCustomSettings Write SetCustomSettings;
    Property CellWidth: Integer Read FCellWidth Write FCellWidth;

    Property TopMargin: Integer Read FTopMargin Write FTopMargin;
    Property BottomMargin: Integer Read FBottomMargin Write FBottomMargin;
    Property LeftMargin: Integer Read FLeftMargin Write FLeftMargin;
    Property RightMargin: Integer Read FRightMargin Write FRightMargin;

  End;

// ************************************************************************
// ************************************************************************
// ************************************************************************

{$IFNDEF NATIVEEXCEL_STANDARD}
  TmxExportCellFormat = Class;
{$ENDIF}

  TmxExcelOptions = Class( TPersistent )
  Private

{$IFDEF NATIVEEXCEL_STANDARD}
    FDefaultFont: TFont;
    FHeaderFont: TFont;
    FTableFont: TFont;

    FExcelVersion: TmxExcelVersion;
    FHeader: String;
    FFooter: String;

    FTopMargin: Double;
    FBottomMargin: Double;
    FLeftMargin: Double;
    FRightMargin: Double;
{$ELSE}
    FDefaultFont: TmxExcelFont;

    FHeaderFormat: TmxExportCellFormat;
    FTableFormat: TmxExportCellFormat;

    FExcelVersion: TmxFileVersion;
    FPageSetup: TmxExcelPageSetup;

    FSummaryInfo: TmxSummaryInfo;

    FCodepage: TmxExcelCodePage;
    FCustomCodepage: Integer;

{$ENDIF}

    FColumnWidth: Integer;
    FOptions: TmxExportExcelOptionSet;

    FProtected: Boolean;

{$IFDEF NATIVEEXCEL_STANDARD}
    Procedure SetDefaultFont( AValue: TFont );
    Procedure SetHeaderFont( AValue: TFont );
    Procedure SetTableFont( AValue: TFont );
{$ELSE}
    Procedure SetDefaultFont( AValue: TmxExcelFont );
{$ENDIF}

  Protected

    Procedure AssignTo( Dest: TPersistent ); Override;

  Public

    Constructor Create; Virtual;
    Destructor Destroy; Override;

  Published

    Property Options: TmxExportExcelOptionSet Read FOptions Write FOptions;
    Property ColumnWidth: Integer Read FColumnWidth Write FColumnWidth;

    Property Protected: Boolean Read FProtected Write FProtected;

{$IFDEF NATIVEEXCEL_STANDARD}
    Property Header: String Read FHeader Write FHeader;
    Property Footer: String Read FFooter Write FFooter;
    Property ExcelVersion: TmxExcelVersion Read FExcelVersion Write FExcelVersion Default xls50;
    Property DefaultFont: TFont Read FDefaultFont Write SetDefaultFont;
    Property HeaderFont: TFont Read FHeaderFont Write SetHeaderFont;
    Property TableFont: TFont Read FTableFont Write SetTableFont;
    Property TopMargin: Double Read FTopMargin Write FTopMargin;
    Property BottomMargin: Double Read FBottomMargin Write FBottomMargin;
    Property LeftMargin: Double Read FLeftMargin Write FLeftMargin;
    Property RightMargin: Double Read FRightMargin Write FRightMargin;
{$ELSE}
    Property ExcelVersion: TmxFileVersion Read FExcelVersion Write FExcelVersion Default fvExcel97;
    Property DefaultFont: TmxExcelFont Read FDefaultFont Write SetDefaultFont;
    Property PageSetup: TmxExcelPageSetup Read FPageSetup Write FPageSetup;
    Property SummaryInfo: TmxSummaryInfo Read FSummaryInfo Write FSummaryInfo;
    Property Codepage: TmxExcelCodePage Read FCodepage Write FCodepage Default cp1252_Latin1;
    Property CustomCodepage: Integer Read FCustomCodepage Write FCustomCodepage Default 1252;

    Property HeaderFormat: TmxExportCellFormat Read FHeaderFormat Write FHeaderFormat;
    Property TableFormat: TmxExportCellFormat Read FTableFormat Write FTableFormat;
{$ENDIF}
  End;

// ************************************************************************
// ************************************************************************
// ************************************************************************

  TmxMessagesOptions = Class( TPersistent )
  Private

    FCaption: String;
    FCopiedToClipboard: String;
    FCreatedText: String;
    FText: String;
    FHeight: Integer;
    FWidth: Integer;
    FTrueText: String;
    FFalseText: String;
    FExportCaption: String;
    FCancelCaption: String;
    FSaveTitle: String;
    FSelectFormat: String;
    FExportToFile: String;
    FViewOnly: String;
    FDocumentFilter: TmxDocumentFilter;

  Public

    Constructor Create; Virtual;
    Destructor Destroy; Override;

  Published

    Property Caption: String Read FCaption Write FCaption;
    Property CopiedToClipboard: String Read FCopiedToClipboard Write FCopiedToClipboard;
    Property CancelCaption: String Read FCancelCaption Write FCancelCaption;
    Property CreatedText: String Read FCreatedText Write FCreatedText;
    Property DocumentFilter: TmxDocumentFilter Read FDocumentFilter Write FDocumentFilter;
    Property ExportCaption: String Read FExportCaption Write FExportCaption;
    Property ExportToFile: String Read FExportToFile Write FExportToFile;
    Property FalseText: String Read FFalseText Write FFalseText;
    Property Height: Integer Read FHeight Write FHeight;
    Property SaveTitle: String Read FSaveTitle Write FSaveTitle;
    Property SelectFormat: String Read FSelectFormat Write FSelectFormat;
    Property Text: String Read FText Write FText;
    Property TrueText: String Read FTrueText Write FTrueText;
    Property Width: Integer Read FWidth Write FWidth;
    Property ViewOnly: String Read FViewOnly Write FViewOnly;

  End;

// ************************************************************************
// ************************************************************************
// ************************************************************************

  TmxCustomExport = Class( TComponent )
  Private

    frm_ProgressForm: Tfrm_ProgressForm;
    frm_Selection: Tfrm_Selection;

    FCaptions: TStrings;
    FColumnWidths: TStrings;
    FExportTypes: TmxExportTypeSet;
    FExportType: TmxExportType;
    FFileName: String;
    FHTML: TmxHTMLOptions;
    FDOC_RTF: TmxRTFOptions;
    FEXCEL: TmxExcelOptions;
    FRTFStream: TMemoryStream;
    FExportStyle: TmxExportStyle;
    FTempDirectory: String;
    FOptions: TmxExportOptionSet;
    FMessages: TmxMessagesOptions;
    FTruncateSymbol: String;
    FRowNumberFormat: String;
    FDateFormat: String;
    FTimeFormat: String;
    FDateTimeFormat: String;
    FVersion: Integer;

    FmxNativeExcel: TmxNativeExcel;
    FExportedRowNumber: Integer;

    FOnBeginExport: TNotifyEvent;
    FOnEndExport: TNotifyEvent;
    FOnGetHeader: TEventOnGetHeader;
    FOnGetFooter: TEventOnGetFooter;
    FOnError: TEventOnError;
    FOnGetExtension: TEventOnGetExtension;
    FOnExport: TEventOnExport;
    FOnFileExist: TEventOnFileExist;
    FRecordCount: Integer;

    Procedure SetVersion( AValue: String );
    Function GetVersion: String;
    Procedure SetCaptions( AValue: TStrings );
    Procedure SetColumnWidths( AValue: TStrings );
    Procedure SetNumberFormat( AValue: String );
    Procedure SetExportType( AValue: TmxExportType );
    Procedure SetExportTypes( AValues: TmxExportTypeSet );
    Procedure SetTempDirectory( AValue: String );

          // *** RTF Support ***

    Function GetRTFFont( Index: Integer; Font: TFont ): String;
    Function GetRTFColor( ColorType: TmxRTFColor ): TColor;
    Function GetRTFColorDefinition( ColorType: TmxRTFColor ): String;
    Function GetRTFFontInfo( Font: TFont ): String;

          // *** HTML Support ***

    Function GetHTMLColor( ColorType: TmxHTMLColor ): String;
    Function GetHTMLFontFace( FontType: TmxHTMLFont ): String;

    Function IsTempStored: Boolean;

  Protected

    FCurrent: Cardinal;
    FRowNumber: Cardinal;

    Procedure GenerateOutput( Const OutputFileName: String );

    Function CheckLink( S: String ): Boolean;
    Function AddItem( AValue: Variant; MaxLength: Integer ): String;
    Function FormatLine( AValues: TmxValues; Header, RowNumber: Boolean ): String;

    Function FormatRowNumber: String;
    Function AddHorizontalLine( Header: Boolean ): String;
    Function GetHeaderLength: Integer;
    Function _GetFieldLength( Index: Integer; Len: Integer ): Integer;

    Procedure ViewFile( OutputFileName: String );
    Procedure SelectorChange( Sender: TObject );

    Function GetExtension: String;
    Function GetFilter: String;

    Procedure WriteToRTFStream( RTFString: String );
    Procedure IconImagePaint( Sender: TObject );

  Public

    Constructor Create( AOwner: TComponent ); Override;
    Destructor Destroy; Override;

    Procedure Execute;
    Procedure Select;

    Procedure BeforeExecute; Virtual;
    Procedure AfterExecute; Virtual;

    Procedure First; Virtual; Abstract;

    Function GetFieldAlignment( Index: Integer ): TmxFieldAlignment; Virtual;

    Function IsValidToExport: Boolean; Virtual; Abstract;
    Function EOF: Boolean; Virtual; Abstract;
    Function IsFieldVisible( Index: Integer ): Boolean; Virtual; Abstract;
    Function IsRowSelected( Index: Integer ): Boolean; Virtual; Abstract;
    Function GetFieldLength( Index: Integer ): Integer; Virtual; Abstract;
    Function GetFieldName( Index: Integer ): String; Virtual; Abstract;
    Function GetFieldCount: Integer; Virtual; Abstract;
    Function GetNextLine: TmxValues; Virtual; Abstract;
    Function GetRecordCount: Cardinal; Virtual; Abstract;

    Property NativeExcel: TmxNativeExcel Read FmxNativeExcel Write FmxNativeExcel;

  Published

    Property Captions: TStrings Read FCaptions Write SetCaptions;
    Property ColumnWidths: TStrings Read FColumnWidths Write SetColumnWidths;
    Property DateFormat: String Read FDateFormat Write FDateFormat;
    Property TimeFormat: String Read FTimeFormat Write FTimeFormat;
    Property DateTimeFormat: String Read FDateTimeFormat Write FDateTimeFormat;
    Property ExportType: TmxExportType Read FExportType Write SetExportType;
    Property ExportTypes: TmxExportTypeSet Read FExportTypes Write SetExportTypes;
    Property ExportStyle: TmxExportStyle Read FExportStyle Write FExportStyle;
    Property FileName: String Read FFileName Write FFileName;
    Property HTML: TmxHTMLOptions Read FHTML Write FHTML;
    Property Messages: TmxMessagesOptions Read FMessages Write FMessages;
    Property TempDir: String Read FTempDirectory Write SetTempDirectory Stored IsTempStored;
    Property TruncateSymbol: String Read FTruncateSymbol Write FTruncateSymbol;
    Property RowNumberFormat: String Read FRowNumberFormat Write SetNumberFormat;
    Property DOC_RTF: TmxRTFOptions Read FDOC_RTF Write FDOC_RTF;
    Property EXCEL: TmxExcelOptions Read FExcel Write FExcel;
    Property Options: TmxExportOptionSet Read FOptions Write FOptions;
    Property Version: String Read GetVersion Write SetVersion;

    Property OnBeginExport: TNotifyEvent Read FOnBeginExport Write FOnBeginExport;
    Property OnEndExport: TNotifyEvent Read FOnEndExport Write FOnEndExport;
    Property OnGetExtension: TEventOnGetExtension Read FOnGetExtension Write FOnGetExtension;
    Property OnError: TEventOnError Read FOnError Write FOnError;
    Property OnExport: TEventOnExport Read FOnExport Write FOnExport;
    Property OnGetHeader: TEventOnGetHeader Read FOnGetHeader Write FOnGetHeader;
    Property OnGetFooter: TEventOnGetFooter Read FOnGetFooter Write FOnGetFooter;
    Property OnFileExist: TEventOnFileExist Read FOnFileExist Write FOnFileExist;
  End;

// ************************************************************************
// ************************************************************************
// ************************************************************************

  TmxStringsExport = Class( TmxCustomExport )
  Private

    FStrings: TStrings;

  Protected

  Public

    Constructor Create( AOwner: TComponent ); Override;
    Destructor Destroy; Override;

    Function IsValidToExport: Boolean; Override;
    Function IsFieldVisible( Index: Integer ): Boolean; Override;
    Function IsRowSelected( Index: Integer ): Boolean; Override;

    Procedure First; Override;

    Function EOF: Boolean; Override;

    Function GetFieldLength( Index: Integer ): Integer; Override;
    Function GetFieldName( Index: Integer ): String; Override;
    Function GetFieldCount: Integer; Override;
    Function GetNextLine: TmxValues; Override;
    Function GetRecordCount: Cardinal; Override;

    Property Strings: TStrings Read FStrings Write FStrings;

  Published

  End;

// ************************************************************************
// ************************************************************************
// ************************************************************************

  TmxDataSetExport = Class( TmxCustomExport )
  Private

    FDataSet: TDataSet;
{$WARNINGS OFF}
    FBookMark: TBookmark;
{$WARNINGS ON}

  Protected

    Procedure Notification( AComponent: TComponent; Operation: TOperation ); Override;

  Public

    Constructor Create( AOwner: TComponent ); Override;
    Destructor Destroy; Override;

    Function IsValidToExport: Boolean; Override;
    Function IsFieldVisible( Index: Integer ): Boolean; Override;
    Function IsRowSelected( Index: Integer ): Boolean; Override;

    Procedure BeforeExecute; Override;
    Procedure AfterExecute; Override;

    Procedure First; Override;

    Function EOF: Boolean; Override;

    Function GetFieldCount: Integer; Override;
    Function GetFieldName( Index: Integer ): String; Override;
    Function GetFieldLength( Index: Integer ): Integer; Override;
    Function GetNextLine: TmxValues; Override;
    Function GetRecordCount: Cardinal; Override;

  Published

    Property DataSet: TDataSet Read FDataSet Write FDataSet;

  End;

// ************************************************************************
// ************************************************************************
// ************************************************************************

  TmxDBGridExport = Class( TmxCustomExport )
  Private

    FDBGrid: TDBGrid;
{$WARNINGS OFF}
    FBookMark: TBookmark;
{$WARNINGS ON}

  Protected

    Procedure Notification( AComponent: TComponent; Operation: TOperation ); Override;

  Public

    Constructor Create( AOwner: TComponent ); Override;
    Destructor Destroy; Override;

    Function IsValidToExport: Boolean; Override;
    Function IsFieldVisible( Index: Integer ): Boolean; Override;
    Function IsRowSelected( Index: Integer ): Boolean; Override;

    Procedure BeforeExecute; Override;
    Procedure AfterExecute; Override;

    Procedure First; Override;

    Function EOF: Boolean; Override;

    Function GetFieldAlignment( Index: Integer ): TmxFieldAlignment; Override;

    Function GetFieldCount: Integer; Override;
    Function GetFieldName( Index: Integer ): String; Override;
    Function GetFieldLength( Index: Integer ): Integer; Override;
    Function GetNextLine: TmxValues; Override;
    Function GetRecordCount: Cardinal; Override;

  Published

    Property DBGrid: TDBGrid Read FDBGrid Write FDBGrid;

  End;

// ************************************************************************
// ************************************************************************
// ************************************************************************

  TmxStringGridExport = Class( TmxCustomExport )
  Private

    FStringGrid: TStringGrid;
    FFieldLength: TStringList;

  Protected

    Procedure Notification( AComponent: TComponent; Operation: TOperation ); Override;

  Public

    Constructor Create( AOwner: TComponent ); Override;
    Destructor Destroy; Override;

    Function IsValidToExport: Boolean; Override;
    Function IsFieldVisible( Index: Integer ): Boolean; Override;
    Function IsRowSelected( Index: Integer ): Boolean; Override;

    Procedure First; Override;

    Function EOF: Boolean; Override;

    Function GetFieldAlignment( Index: Integer ): TmxFieldAlignment; Override;

    Function GetFieldCount: Integer; Override;
    Function GetFieldName( Index: Integer ): String; Override;
    Function GetFieldLength( Index: Integer ): Integer; Override;
    Function GetNextLine: TmxValues; Override;
    Function GetRecordCount: Cardinal; Override;

  Published

    Property StringGrid: TStringGrid Read FStringGrid Write FStringGrid;

  End;

// *************************************************************************************
// *************************************************************************************
// *************************************************************************************

  TmxListViewExport = Class( TmxCustomExport )
  Private

    FListView: TListView;

  Protected

    Procedure Notification( AComponent: TComponent; Operation: TOperation ); Override;

  Public

    Constructor Create( AOwner: TComponent ); Override;
    Destructor Destroy; Override;

    Function IsValidToExport: Boolean; Override;
    Function IsFieldVisible( Index: Integer ): Boolean; Override;
    Function IsRowSelected( Index: Integer ): Boolean; Override;

    Procedure First; Override;
    Function EOF: Boolean; Override;

    Function GetFieldCount: Integer; Override;
    Function GetFieldName( Index: Integer ): String; Override;
    Function GetFieldLength( Index: Integer ): Integer; Override;
    Function GetNextLine: TmxValues; Override;
    Function GetRecordCount: Cardinal; Override;

  Published

    Property ListView: TListView Read FListView Write FListView;

  End;

// *************************************************************************************
// *************************************************************************************
// *************************************************************************************

{$IFNDEF NATIVEEXCEL_STANDARD}
  TmxExportCellFormat = Class( TPersistent )
  Private

    FBorders: TmxExcelBorders;
    FOptions: TmxFormatOptions;
    FAlignment: TmxExcelAlignment;
    FPattern: TmxExcelPattern;
    FFormat: TmxCellFormat;
    FCustomFormat: String;
    FFont: TmxExcelFont;

  Protected

    Procedure SetFont( AValue: TmxExcelFont );

  Public

    Constructor Create; Virtual;
    Destructor Destroy; Override;

    Procedure AssignTo( Dest: TPersistent ); Override;

  Published

    Property Alignment: TmxExcelAlignment Read FAlignment Write FAlignment;
    Property Borders: TmxExcelBorders Read FBorders Write FBorders;
    Property CustomFormat: String Read FCustomFormat Write FCustomFormat;
    Property Font: TmxExcelFont Read FFont Write SetFont;
    Property Format: TmxCellFormat Read FFormat Write FFormat Default cfGeneral;
    Property Options: TmxFormatOptions Read FOptions Write FOptions;
    Property Pattern: TmxExcelPattern Read FPattern Write FPattern;

  End;

{$ENDIF}

// ************************************************************************
// ************************************************************************
// ************************************************************************

  TmxAnyExport = Class( TmxCustomExport )
  Private

    FAnyRecordCount: Cardinal;
    FAnyFieldCount: Integer;
    FOnGetExportInfo: TEventOnGetExportInfo;
    FOnGetFieldLength: TEventOnGetFieldLength;
    FOnGetFieldName: TEventOnGetFieldName;
    FOnGetExportData: TEventOnGetExportData;

  Protected

  Public

    Constructor Create( AOwner: TComponent ); Override;
    Destructor Destroy; Override;

    Function IsValidToExport: Boolean; Override;
    Function IsFieldVisible( Index: Integer ): Boolean; Override;
    Function IsRowSelected( Index: Integer ): Boolean; Override;

    Procedure First; Override;

    Function EOF: Boolean; Override;

    Function GetFieldLength( Index: Integer ): Integer; Override;
    Function GetFieldName( Index: Integer ): String; Override;
    Function GetFieldCount: Integer; Override;
    Function GetNextLine: TmxValues; Override;
    Function GetRecordCount: Cardinal; Override;

  Published

    Property OnGetExportInfo: TEventOnGetExportInfo Read FOnGetExportInfo Write FOnGetExportInfo;
    Property OnGetFieldLength: TEventOnGetFieldLength Read FOnGetFieldLength Write FOnGetFieldLength;
    Property OnGetFieldName: TEventOnGetFieldName Read FOnGetFieldName Write FOnGetFieldName;
    Property OnGetExportData: TEventOnGetExportData Read FOnGetExportData Write FOnGetExportData;

  End;

Implementation

// *************************************************************************************
// ** ChangeQuotationMarks, 5/29/01 1:49:29 PM
// *************************************************************************************

Function ChangeQuotationMarks( S: String; QMarkNeeded: Boolean ): String;
Var
  X: Integer;
  TempStr: String;
Begin
  Result := S;

  If Pos( #34, TempStr ) <> 0 Then
  Begin
    TempStr := '';

    For X := 0 To Length( S ) Do
    Begin
      TempStr := TempStr + S[ X ];
      If S[ X ] = #34 Then TempStr := TempStr + #34;
    End;

    Result := TempStr;
  End;

  If QMarkNeeded Then Result := '"' + Result + '"' Else
    If ( Pos( #32, Result ) <> 0 ) Or ( Pos( #44, Result ) <> 0 ) Then Result := '"' + Result + '"';
End;

// *************************************************************************************
// ** GenerateStr, 5/17/01 1:21:39 PM
// *************************************************************************************

Function GenerateStr( C: Char; Length: Integer ): String;
Var
  I: Integer;
Begin
  Result := '';
  For I := 1 To Length Do Result := Result + C;
End;

// *************************************************************************************
// ** PadRight, 6/8/01 1:02:00 PM
// *************************************************************************************

Function PadRight( Const S: String; C: Char; N: Integer ): String;
Var
  I: Integer;
Begin
  Result := S;
  If Length( S ) < N Then For I := Length( S ) To N - 1 Do Result := C + Result;
End;

// *************************************************************************************
// ** PadLeft, 5/28/01 11:05:44 AM
// *************************************************************************************

Function PadLeft( Const S: String; C: Char; N: Integer ): String;
Var
  I: Integer;
Begin
  Result := S;
  If Length( S ) < N Then For I := Length( S ) To N - 1 Do Result := Result + C;
End;

// *************************************************************************************
// ** PadCenter, 6/8/01 1:02:09 PM
// *************************************************************************************

Function PadCenter( Const S: String; C: Char; N: Integer ): String;
Begin
  If Length( S ) < N Then
  Begin
    Result := PadLeft( S, ' ', ( N Div 2 ) - ( Length( S ) Div 2 ) );
    Result := PadRight( Result, ' ', N - Length( Result ) );
  End
  Else Result := S;
End;

// *************************************************************************************
// ** Truncate, 5/17/01 5:14:24 PM
// *************************************************************************************

Function Truncate( S: String; Len: Integer; TruncateSymbol: String ): String;
Begin
  If Length( S ) > Len Then
    Result := Copy( S, 1, Len - Length( TruncateSymbol ) ) + TruncateSymbol Else
    Result := S;
End;

// *************************************************************************************
// *************************************************************************************
// *************************************************************************************
// ** TmxExportCellFormat.Create, 05/02/02 4:25:26 PM
// *************************************************************************************
// *************************************************************************************
// *************************************************************************************

{$IFNDEF NATIVEEXCEL_STANDARD}

Constructor TmxExportCellFormat.Create;
Begin
  Inherited Create;

  FFont := TmxExcelFont.Create;

  FBorders := TmxExcelBorders.Create;
  FFormat := cfGeneral;
  FAlignment := TmxExcelAlignment.Create;
  FOptions := [ foLocked ];

  FPattern := TmxExcelPattern.Create;
End;

Destructor TmxExportCellFormat.Destroy;
Begin
  FPattern.Free;
  FBorders.Free;
  FFont.Free;
  FAlignment.Free;
  Inherited Destroy;
End;

Procedure TmxExportCellFormat.SetFont( AValue: TmxExcelFont );
Begin
  FFont.Assign( AValue );
End;

Procedure TmxExportCellFormat.AssignTo( Dest: TPersistent );
Begin
  If Dest Is TmxExportCellFormat Then
  Begin
    With TmxExportCellFormat( Dest ) Do
    Begin
      Alignment.Assign( Self.Alignment );
      Borders.Assign( Self.Borders );
      CustomFormat := Self.CustomFormat;
      Font.Assign( Self.Font );
      Format := Self.Format;
      Options := Self.Options;
      Pattern.Assign( Self.Pattern );
    End
  End Else
    If Dest Is TmxFormat Then
    Begin
      With TmxFormat( Dest ) Do
      Begin
        Alignment.Assign( Self.Alignment );
        Borders.Assign( Self.Borders );
        CustomFormat := Self.CustomFormat;
        Font.Assign( Self.Font );
        Format := Self.Format;
        Options := Self.Options;
        Pattern.Assign( Self.Pattern );
      End
    End Else
      Inherited AssignTo( Dest );
End;

{$ENDIF}

// *************************************************************************************
// *************************************************************************************
// *************************************************************************************
// ** TmxDocumentFilter.Create, 5/30/01 4:25:26 PM
// *************************************************************************************
// *************************************************************************************
// *************************************************************************************

Constructor TmxDocumentFilter.Create;
Begin
  Inherited Create;

  FHTML := rsFilterHTML;
  FExcel := rsFilterExcel;
  FWord := rsFilterWord;
  FText := rsFilterText;
  FComma := rsFilterComma;
  FTab := rsFilterTab;
  FRTF := rsFilterRTF;
  FDIF := rsFilterDIF;
  FSYLK := rsFilterSYLK;
End;

// *************************************************************************************
// *************************************************************************************
// *************************************************************************************
// ** TmxHTMLColors.Create, 5/30/01 11:03:46 AM
// *************************************************************************************
// *************************************************************************************
// *************************************************************************************

Constructor TmxHTMLColors.Create;
Begin
  Inherited Create;

  FDefaultFontFace := rsDefaultFontFace;
  FTableFontFace := rsDefaultFontFace;

  FBackground := StringToColor( rsStandard_BGCOLOR );
  FDefaultLink := StringToColor( rsStandard_LINK );
  FVisitedLink := StringToColor( rsStandard_VLINK );
  FActiveLink := StringToColor( rsStandard_ALINK );
  FDefaultText := StringToColor( rsStandard_TEXT );
  FTableFontColor := StringToColor( rsStandard_TABLE_FONT_COLOR );
  FTableBackground := StringToColor( rsStandard_TABLE_BGCOLOR );
  FTableOddBackground := StringToColor( rsStandard_TABLE_ODD_BGCOLOR );
  FHeaderBackground := StringToColor( rsStandard_HEAD_BGCOLOR );
  FHeadersFontColor := StringToColor( rsStandard_HEAD_FONT_COLOR );
End;

// *************************************************************************************
// ** TmxHTMLColors.AssignTo, 5/30/01 11:04:03 AM
// *************************************************************************************

Procedure TmxHTMLColors.AssignTo( Dest: TPersistent );
Begin
  If Dest Is TmxHTMLColors Then
    With TmxHTMLColors( Dest ) Do
    Begin
      FBackground := Self.Background;
      FDefaultLink := Self.DefaultLink;
      FDefaultFontFace := Self.DefaultFontFace;
      FVisitedLink := Self.VisitedLink;
      FActiveLink := Self.ActiveLink;
      FDefaultText := Self.DefaultText;
      FTableFontColor := Self.TableFontColor;
      FTableFontFace := Self.TableFontFace;
      FTableBackground := Self.TableBackground;
      FTableOddBackground := Self.TableOddBackground;
      FHeaderBackground := Self.HeaderBackground;
      FHeadersFontColor := Self.HeadersFontColor;
    End
  Else Inherited AssignTo( Dest );
End;

// *************************************************************************************
// ** TmxRTFColors.Create, 6/5/01 10:41:28 AM
// *************************************************************************************

Constructor TmxRTFColors.Create;
Begin
  Inherited Create;

  FTableBackground := StringToColor( rsStandard_TABLE_BGCOLOR );
  FTableOddBackground := StringToColor( rsStandard_TABLE_ODD_BGCOLOR );
  FHeaderBackground := StringToColor( rsStandard_HEAD_BGCOLOR );

  FDefaultFont := TFont.Create;

  FHeaderFont := TFont.Create;
  FHeaderFont.Style := [ fsBold ];

  FTableFont := TFont.Create;
End;

// *************************************************************************************
// ** TmxRTFColors.Destroy, 6/5/01 10:43:53 AM
// *************************************************************************************

Destructor TmxRTFColors.Destroy;
Begin
  FDefaultFont.Free;
  FHeaderFont.Free;
  FTableFont.Free;

  Inherited Destroy;
End;

// *************************************************************************************
// ** TmxRTFColors.AssignTo, 6/5/01 10:41:48 AM
// *************************************************************************************

Procedure TmxRTFColors.AssignTo( Dest: TPersistent );
Begin
  If Dest Is TmxRTFColors Then
    With TmxRTFColors( Dest ) Do
    Begin
      FTableBackground := Self.TableBackground;
      FTableOddBackground := Self.TableOddBackground;
      FHeaderBackground := Self.HeaderBackground;

      FDefaultFont.Assign( Self.DefaultFont );
      FHeaderFont.Assign( Self.HeaderFont );
      FTableFont.Assign( Self.TableFont );
    End
  Else Inherited AssignTo( Dest );
End;

// *************************************************************************************
// ** TmxRTFColors.SetDefaultFont, 6/5/01 10:42:10 AM
// *************************************************************************************

Procedure TmxRTFColors.SetDefaultFont( AValue: TFont );
Begin
  FDefaultFont.Assign( AValue );
End;

// *************************************************************************************
// ** TmxRTFColors.SetHeaderFont, 6/5/01 10:42:07 AM
// *************************************************************************************

Procedure TmxRTFColors.SetHeaderFont( AValue: TFont );
Begin
  FHeaderFont.Assign( AValue );
End;

// *************************************************************************************
// ** TmxRTFColors.SetTableFont, 6/5/01 10:42:04 AM
// *************************************************************************************

Procedure TmxRTFColors.SetTableFont( AValue: TFont );
Begin
  FTableFont.Assign( AValue );
End;

// *************************************************************************************
// *************************************************************************************
// *************************************************************************************
// ** TmxHTMLOptions.Create, 5/17/01 10:38:36 AM
// *************************************************************************************
// *************************************************************************************
// *************************************************************************************

Constructor TmxHTMLOptions.Create;
Begin
  Inherited Create;

  FOptions := [ hoShowGridLines, hoBoldHeaders, hoAutoLink, hoOddRowColoring, hoDisplayTitle ];
  FExtension := exHTML;
  FCustomColors := TmxHTMLColors.Create;
  FTemplate := ctStandard;
  FTitle := '';
End;

// *************************************************************************************
// ** TmxHTMLOptions.Destroy, 5/30/01 11:01:05 AM
// *************************************************************************************

Destructor TmxHTMLOptions.Destroy;
Begin
  FCustomColors.Free;
  Inherited Destroy;
End;

// *************************************************************************************
// ** TmxHTMLOptions.SetCustomColors, 5/17/01 10:38:42 AM
// *************************************************************************************

Procedure TmxHTMLOptions.SetCustomColors( AValue: TmxHTMLColors );
Begin
  FCustomColors.Assign( AValue );
End;

// *************************************************************************************
// ** TmxRTFOptions.Create, 5/31/01 1:57:48 PM
// *************************************************************************************

Constructor TmxRTFOptions.Create;
Begin
  Inherited Create;

  FOptions := [ roShowGridLines, roOddRowColoring ];

  FTemplate := rtStandard;
  FCustomSettings := TmxRTFColors.Create;
  FCellWidth := 1400;

  FTopMargin := 101;
  FBottomMargin := 101;
  FLeftMargin := 461;
  FRightMargin := 562;
End;

// *************************************************************************************
// ** TmxRTFOptions.Destroy, 5/31/01 1:58:01 PM
// *************************************************************************************

Destructor TmxRTFOptions.Destroy;
Begin
  FCustomSettings.Free;
  Inherited Destroy;
End;

// *************************************************************************************
// ** TmxRTFOptions.SetCustomSettings, 6/5/01 10:51:45 AM
// *************************************************************************************

Procedure TmxRTFOptions.SetCustomSettings( AValue: TmxRTFColors );
Begin
  FCustomSettings.AssignTo( AValue );
End;

// *************************************************************************************
// ** TmxExcelOptions.Create, 6/7/01 4:11:21 PM
// *************************************************************************************

Constructor TmxExcelOptions.Create;
Begin
  Inherited Create;

  FColumnWidth := 20;
  FProtected := FALSE;

{$IFDEF NATIVEEXCEL_STANDARD}

  FOptions := [ reSetMargins, reUseBorders ];
  FTopMargin := 0.30;
  FBottomMargin := 0.30;
  FLeftMargin := 0.30;
  FRightMargin := 0.30;

  FHeader := '';
  FFooter := '&P';
  FExcelVersion := xls50;
  FDefaultFont := TFont.Create;

  FHeaderFont := TFont.Create;
  FHeaderFont.Style := [ fsBold ];

  FTableFont := TFont.Create;

{$ELSE}

  FOptions := [ ];
  FPageSetup := TmxExcelPageSetup.Create;
  FExcelVersion := fvExcel97;
  FDefaultFont := TmxExcelFont.Create;
  FSummaryInfo := TmxSummaryInfo.Create;

  Codepage := cp1252_Latin1;
  CustomCodepage := 1252;

  FHeaderFormat := TmxExportCellFormat.Create;
  FTableFormat := TmxExportCellFormat.Create;
{$ENDIF}
End;

// *************************************************************************************
// ** TmxExcelOptions.Destroy, 6/7/01 4:11:28 PM
// *************************************************************************************

Destructor TmxExcelOptions.Destroy;
Begin
  FDefaultFont.Free;

{$IFDEF NATIVEEXCEL_STANDARD}
  FHeaderFont.Free;
  FTableFont.Free;
{$ELSE}
  FSummaryInfo.Free;
  FHeaderFormat.Free;
  FTableFormat.Free;
  FPageSetup.Free;
{$ENDIF}
  Inherited Destroy;
End;

// *************************************************************************************
// ** TmxExcelOptions.AssignTo, 6/7/01 4:32:09 PM
// *************************************************************************************

Procedure TmxExcelOptions.AssignTo( Dest: TPersistent );
Begin
  If Dest Is TmxExcelOptions Then
    With TmxExcelOptions( Dest ) Do
    Begin
      FOptions := Self.Options;

{$IFDEF NATIVEEXCEL_STANDARD}
      FTopMargin := Self.TopMargin;
      FBottomMargin := Self.BottomMargin;
      FLeftMargin := Self.LeftMargin;
      FRightMargin := Self.RightMargin;

      FHeader := Self.Header;
      FFooter := Self.Footer;
      FHeaderFont.Assign( Self.HeaderFont );
      FTableFont.Assign( Self.TableFont );
{$ELSE}
      FPageSetup.Assign( Self.PageSetup );
      FHeaderFormat.Assign( Self.HeaderFormat );
      FTableFormat.Assign( Self.TableFormat );
{$ENDIF}
      FColumnWidth := Self.ColumnWidth;
      FProtected := Self.Protected;
      FExcelVersion := Self.ExcelVersion;

      FDefaultFont.Assign( Self.DefaultFont );
    End
  Else Inherited AssignTo( Dest );
End;

// *************************************************************************************
// ** TmxExcelOptions.SetDefaultFont, 6/7/01 4:38:20 PM
// *************************************************************************************

{$IFDEF NATIVEEXCEL_STANDARD}

Procedure TmxExcelOptions.SetDefaultFont( AValue: TFont );
Begin
  FDefaultFont.Assign( AValue );
End;

{$ELSE}

Procedure TmxExcelOptions.SetDefaultFont( AValue: TmxExcelFont );
Begin
  FDefaultFont.Assign( AValue );
End;

{$ENDIF}

// *************************************************************************************
// ** TmxExcelOptions.SetHeaderFont, 6/5/01 10:42:07 AM
// *************************************************************************************

{$IFDEF NATIVEEXCEL_STANDARD}

Procedure TmxExcelOptions.SetHeaderFont( AValue: TFont );
Begin
  FHeaderFont.Assign( AValue );
End;

{$ENDIF}

// *************************************************************************************
// ** TmxExcelOptions.SetTableFont, 6/5/01 10:42:04 AM
// *************************************************************************************

{$IFDEF NATIVEEXCEL_STANDARD}

Procedure TmxExcelOptions.SetTableFont( AValue: TFont );
Begin
  FTableFont.Assign( AValue );
End;

{$ENDIF}

// *************************************************************************************
// *************************************************************************************
// *************************************************************************************
// ** TmxMessagesOptions.Create, 5/17/01 5:26:57 PM
// *************************************************************************************
// *************************************************************************************
// *************************************************************************************

Constructor TmxMessagesOptions.Create;
Begin
  Inherited Create;

  FCaption := rsExportCaption;
  FCreatedText := rsCreated;
  FText := rsProcessing;
  FWidth := 300;
  FHeight := 80;
  FFalseText := rsFalse;
  FTrueText := rsTrue;
  FExportCaption := rsExport;
  FCancelCaption := rsCancel;
  FSelectFormat := rsSelectFormat;
  FExportToFile := rsExportToFile;
  FViewOnly := rsViewOnly;
  FCopiedToClipboard := rsCopiedToClipboard;
  FDocumentFilter := TmxDocumentFilter.Create;
  FSaveTitle := rsSaveTitle;
End;

// *************************************************************************************
// ** TmxMessagesOptions.Destroy, 5/30/01 4:38:43 PM
// *************************************************************************************

Destructor TmxMessagesOptions.Destroy;
Begin
  FDocumentFilter.Free;

  Inherited Destroy;
End;

// *************************************************************************************
// *************************************************************************************
// *************************************************************************************
// ** TmxCustomExport.Create, 5/16/01 2:25:39 PM
// *************************************************************************************
// *************************************************************************************
// *************************************************************************************

Constructor TmxCustomExport.Create( AOwner: TComponent );
Var
  Buffer: Array[ 0..512 ] Of Char;
Begin
  Inherited Create( AOwner );

  FVersion := mxExportVersion;

  FExportTypes := [ xtHTML, xtExcel, xtWord, xtTXT, xtCSV, xtTAB, xtRTF, xtDIF, xtSYLK, xtClipboard ];
  FOptions := [ xoShowProgress, xoClipboardMessage, xoHeaderLine, xoFooterLine, xoShowHeader, xoShowExportDate, xoUseAlignments ];

  FCaptions := TStringList.Create;
  FColumnWidths := TStringList.Create;

  FFileName := '';
  FExportType := xtExcel;
  FExportStyle := xsView;
  FTruncateSymbol := '...';

  SetString( FTempDirectory, Buffer, GetTempPath( SizeOf( Buffer ), Buffer ) );

  FHTML := TmxHTMLOptions.Create;
  FDOC_RTF := TmxRTFOptions.Create;

  FMessages := TmxMessagesOptions.Create;

  FRowNumberFormat := '%d';

  FDateFormat := ShortDateFormat;
  FTimeFormat := ShortTimeFormat;
  FDateTimeFormat := ShortTimeFormat + ' ' + ShortDateFormat;

  FRTFStream := TMemoryStream.Create;

  FExcel := TmxExcelOptions.Create;

  FmxNativeExcel := TmxNativeExcel.Create( Self );

{$IFNDEF NATIVEEXCEL_STANDARD}
  FmxNativeExcel.SheetNumber := 1;
{$ENDIF}

  frm_ProgressForm := Tfrm_ProgressForm.Create( Nil );
  frm_Selection := Tfrm_Selection.Create( Nil );
  frm_Selection.IconImage.OnPaint := IconImagePaint;
End;

// *************************************************************************************
// ** TmxCustomExport.Destroy, 5/16/01 2:25:37 PM
// *************************************************************************************

Destructor TmxCustomExport.Destroy;
Begin
  frm_Selection.IconImage.OnPaint := Nil;
  frm_Selection.Free;
  frm_ProgressForm.Free;

  FExcel.Free;
  FmxNativeExcel.Free;
  FCaptions.Free;
  FColumnWidths.Free;
  FHTML.Free;
  FDOC_RTF.Free;
  FMessages.Free;
  FRTFStream.Free;
  Inherited Destroy;
End;

// *************************************************************************************
// ** RemoveBackSlash, 8/10/01 7:31:00 AM
// *************************************************************************************

Function RemoveBackSlash( Const DirectoryName: String ): String;
Begin
  Result := DirectoryName;
  If ( Length( Result ) > 1 ) And ( Result[ Length( Result ) ] = '\' ) Then
  Begin
    If Not ( ( Length( Result ) = 3 ) And ( UpCase( Result[ 1 ] ) In [ 'A'..'Z' ] ) And ( Result[ 2 ] = ':' ) ) Then
      Delete( Result, Length( Result ), 1 );
  End;
End;

// *************************************************************************************
// ** TmxCustomExport.IsTempStored, 8/3/01 9:46:19 AM
// *************************************************************************************

Function TmxCustomExport.IsTempStored: Boolean;
Var
  Buffer: Array[ 0..512 ] Of Char;
Begin
  Result := FALSE;
  If FTempDirectory = '' Then Exit;

  GetTempPath( SizeOf( Buffer ), Buffer );
  Result := AnsiCompareText( RemoveBackSlash( FTempDirectory ), RemoveBackSlash( String( Buffer ) ) ) <> 0;
End;

// *************************************************************************************
// ** TmxCustomExport.SetTempDirectory, 8/10/01 7:32:36 AM
// *************************************************************************************

Procedure TmxCustomExport.SetTempDirectory( AValue: String );
Begin
  If AnsiCompareText( RemoveBackSlash( FTempDirectory ), RemoveBackSlash( AValue ) ) <> 0 Then
  Begin
    FTempDirectory := AValue;
  End;
End;

// *************************************************************************************
// ** TmxCustomExport.BeforeExecute, 6/12/01 9:32:07 AM
// *************************************************************************************

Procedure TmxCustomExport.BeforeExecute;
Begin
        // *** Does Nothing ***
End;

// *************************************************************************************
// ** TmxCustomExport.AfterExecute, 6/12/01 9:32:00 AM
// *************************************************************************************

Procedure TmxCustomExport.AfterExecute;
Begin
        // *** Does Nothing ***
End;

// *************************************************************************************
// ** TmxCustomExport.SetVersion, 5/17/01 9:42:44 AM
// *************************************************************************************

Procedure TmxCustomExport.SetVersion( AValue: String );
Begin
        // *** Does nothing ***
End;

// *************************************************************************************
// ** TmxCustomExport.GetVersion, 5/17/01 9:42:49 AM
// *************************************************************************************

Function TmxCustomExport.GetVersion: String;
Begin
{$WARNINGS OFF}
  Result := Format( '%d.%d', [ Hi( FVersion ), Lo( FVersion ) ] );
{$WARNINGS ON}
End;

// *************************************************************************************
// ** TmxCustomExport.SetExportTypes, 5/29/01 2:25:53 PM
// *************************************************************************************

Procedure TmxCustomExport.SetExportTypes( AValues: TmxExportTypeSet );
Begin
  If FExportTypes <> AValues Then
  Begin
    FExportTypes := AValues;
    If Not ( FExportType In FExportTypes ) Then Include( FExportTypes, FExportType );
  End;
End;

// *************************************************************************************
// ** TmxCustomExport.SetExportType, 5/29/01 2:31:09 PM
// *************************************************************************************

Procedure TmxCustomExport.SetExportType( AValue: TmxExportType );
Begin
  If FExportType <> AValue Then
  Begin
    FExportType := AValue;
    If Not ( FExportType In FExportTypes ) Then Include( FExportTypes, FExportType );
  End;
End;

// *************************************************************************************
// ** TmxCustomExport._GetFieldLength, 5/28/01 12:24:53 PM
// *************************************************************************************

Function TmxCustomExport._GetFieldLength( Index: Integer; Len: Integer ): Integer;
Var
  ResCode: Integer;
  TempInt: Integer;
Begin
  Result := Len;
  If Index > GetFieldCount - 1 Then Exit;

  If FColumnWidths.Count - 1 >= Index Then
  Begin
    Val( FColumnWidths[ Index ], TempInt, ResCode );

    If ResCode = 0 Then Result := TempInt Else Result := Len;

          {Try
               Result := StrToInt( FColumnWidths[ Index ] );
          Except
               Result := Len;
          End;}
  End;
End;

// *************************************************************************************
// ** TmxCustomExport.AddHorizontalLine, 5/29/01 12:15:48 PM
// *************************************************************************************

Function TmxCustomExport.AddHorizontalLine( Header: Boolean ): String;
Begin
  Result := '';

  If Header And Not ( xoHeaderLine In FOptions ) Then Exit;
  If Not Header And Not ( xoFooterLine In FOptions ) Then Exit;

  Case FExportType Of
    xtTXT: Result := GenerateStr( '-', GetHeaderLength );
    xtCSV: Result := '';
    xtClipboard: Result := GenerateStr( '-', GetHeaderLength );
    xtTAB: Result := '';
    xtHTML: Result := '  <HR>';
    xtDIF: Result := '';
    xtSYLK: Result := '';
    xtWord, xtRTF: Result := '';
    xtExcel: ;
  End;
End;

// *************************************************************************************
// ** TmxCustomExport.GetRTFFont, 5/31/01 3:26:48 PM
// *************************************************************************************

Function TmxCustomExport.GetRTFFont( Index: Integer; Font: TFont ): String;
Var
  DC: HDC;
  TxtMetrics: TTextMetric;
  RTFFont: HFont;
  TempStr: String;
Begin
  Result := '{\f' + IntToStr( Index ) + '\';

  DC := GetDC( 0 );
  RTFFont := SelectObject( DC, Font.Handle );
  GetTextMetrics( DC, TxtMetrics );
  SelectObject( DC, RTFFont );
  ReleaseDC( 0, DC );

  TempStr := 'froman'; // *** Roman Style ***

  Case ( ( ( TxtMetrics.tmPitchAndFamily ) Shr 4 ) Shl 4 ) Of

    FF_DECORATIVE: TempStr := 'fdecorative';
    FF_DONTCARE: TempStr := 'fdontcare';
    FF_MODERN: TempStr := 'fmodern';
    FF_SCRIPT: TempStr := 'fscript';
    FF_SWISS: TempStr := 'fswiss';

  End;

  Result := Result + TempStr + '\';

  TempStr := 'fcharset1'; // *** DEFAULT_CHARSET ***

  Case TxtMetrics.tmCharSet Of

    ANSI_CHARSET: TempStr := 'fcharset0';
    SYMBOL_CHARSET: TempStr := 'fcharset2';
    SHIFTJIS_CHARSET: TempStr := 'fcharset128';
    OEM_CHARSET: TempStr := 'fcharset255';

  End;

  Result := Result + TempStr + ' ' + Font.Name + ';}';
End;

// *************************************************************************************
// ** TmxCustomExport.GetRTFFontInfo, 6/1/01 9:42:08 AM
// *************************************************************************************

Function TmxCustomExport.GetRTFFontInfo( Font: TFont ): String;
Begin
  Result := Format( '\fs%d', [ Font.Size * 2 ] );
  If fsBold In Font.Style Then Result := Result + '\b';
  If fsItalic In Font.Style Then Result := Result + '\c';
  If fsUnderline In Font.Style Then Result := Result + '\ul';
  If fsStrikeOut In Font.Style Then Result := Result + '\strike';
End;

// *************************************************************************************
// ** TmxCustomExport.GetRTFColor, 5/31/01 2:31:23 PM
// *************************************************************************************

Function TmxCustomExport.GetRTFColor( ColorType: TmxRTFColor ): TColor;
Begin
  Result := clBlack;

  Case FDOC_RTF.Template Of

    rtStandard:
      Begin
        Case ColorType Of
          rcTEXT: Result := StringToColor( rsStandard_TEXT );
          rcHEAD_FONT_COLOR: Result := StringToColor( rsStandard_HEAD_FONT_COLOR );
          rcTABLE_FONT_COLOR: Result := StringToColor( rsStandard_TABLE_FONT_COLOR );
          rcTABLE_HEAD_BGCOLOR: Result := StringToColor( rsStandard_RTF_HEAD_BGCOLOR );
          rcTABLE_BGCOLOR: Result := StringToColor( rsStandard_RTF_TABLE_BGCOLOR );
          rcTABLE_ODD_BGCOLOR: Result := StringToColor( rsStandard_RTF_TABLE_ODD_BGCOLOR );
        End;
      End;

    rtClassic:
      Begin
        Case ColorType Of
          rcTEXT: Result := StringToColor( rsClassic_TEXT );
          rcHEAD_FONT_COLOR: Result := StringToColor( rsClassic_RTF_HEAD_FONT_COLOR );
          rcTABLE_FONT_COLOR: Result := StringToColor( rsClassic_RTF_TABLE_FONT_COLOR );
          rcTABLE_HEAD_BGCOLOR: Result := StringToColor( rsClassic_RTF_HEAD_BGCOLOR );
          rcTABLE_BGCOLOR: Result := StringToColor( rsClassic_RTF_TABLE_BGCOLOR );
          rcTABLE_ODD_BGCOLOR: Result := StringToColor( rsClassic_RTF_TABLE_ODD_BGCOLOR );
        End;
      End;

    rtColorful:
      Begin
        Case ColorType Of
          rcTEXT: Result := StringToColor( rsColorful_TEXT );
          rcHEAD_FONT_COLOR: Result := StringToColor( rsColorful_HEAD_FONT_COLOR );
          rcTABLE_FONT_COLOR: Result := StringToColor( rsColorful_RTF_TABLE_FONT_COLOR );
          rcTABLE_HEAD_BGCOLOR: Result := StringToColor( rsColorful_RTF_HEAD_BGCOLOR );
          rcTABLE_BGCOLOR: Result := StringToColor( rsColorful_RTF_TABLE_BGCOLOR );
          rcTABLE_ODD_BGCOLOR: Result := StringToColor( rsColorful_RTF_TABLE_ODD_BGCOLOR );
        End;
      End;

    rtGray:
      Begin
        Case ColorType Of
          rcTEXT: Result := StringToColor( rsGray_TEXT );
          rcHEAD_FONT_COLOR: Result := StringToColor( rsGray_HEAD_FONT_COLOR );
          rcTABLE_FONT_COLOR: Result := StringToColor( rsGray_TABLE_FONT_COLOR );
          rcTABLE_HEAD_BGCOLOR: Result := StringToColor( rsGray_RTF_HEAD_BGCOLOR );
          rcTABLE_BGCOLOR: Result := StringToColor( rsGray_RTF_TABLE_BGCOLOR );
          rcTABLE_ODD_BGCOLOR: Result := StringToColor( rsGray_RTF_TABLE_ODD_BGCOLOR );
        End;
      End;

    rtCustom:
      Begin
        Case ColorType Of
          rcTEXT: Result := FDOC_RTF.CustomSettings.DefaultFont.Color;
          rcHEAD_FONT_COLOR: Result := FDOC_RTF.CustomSettings.HeaderFont.Color;
          rcTABLE_FONT_COLOR: Result := FDOC_RTF.CustomSettings.TableFont.Color;
          rcTABLE_HEAD_BGCOLOR: Result := FDOC_RTF.CustomSettings.HeaderBackground;
          rcTABLE_BGCOLOR: Result := FDOC_RTF.CustomSettings.TableBackground;
          rcTABLE_ODD_BGCOLOR: Result := FDOC_RTF.CustomSettings.TableOddBackground;
        End;
      End;
  End;
End;

// *************************************************************************************
// ** TmxCustomExport.GetRTFColorDefinition, 5/31/01 5:15:22 PM
// *************************************************************************************

Function TmxCustomExport.GetRTFColorDefinition( ColorType: TmxRTFColor ): String;
Var
  Color: TColor;
Begin
  Color := GetRTFColor( Colortype );
  FmtStr( Result, '\red%d\green%d\blue%d;', [ GetRValue( Color ), GetGValue( Color ), GetBValue( Color ) ] );
End;

// *************************************************************************************
// ** TmxCustomExport.WriteToRTFStream, 5/31/01 3:19:32 PM
// *************************************************************************************

Procedure TmxCustomExport.WriteToRTFStream( RTFString: String );
Begin
{$WARNINGS OFF}
  FRTFStream.Write( RTFString[ 1 ], Length( RTFString ) );
{$WARNINGS ON}
End;

// *************************************************************************************
// ** TmxCustomExport.FormatRowNumber, 5/28/01 1:36:00 PM
// *************************************************************************************

Function TmxCustomExport.FormatRowNumber: String;
Var
  RowNumber: String;
  MaxLength: Integer;
  TempInt: Integer;
  ResCode: Integer;
Begin
  Result := '';

  Try
    RowNumber := Format( FRowNumberFormat, [ FRowNumber + 1 ] );
    MaxLength := Length( Format( FRowNumberFormat, [ FRecordCount ] ) );
  Except
    RowNumber := Format( '%d', [ FRowNumber + 1 ] );
    MaxLength := Length( Format( '%d', [ FRecordCount ] ) );
  End;

  Case FExportType Of

    xtHTML: Result := Format( '    <TD ALIGN="Right">%s</TD>', [ RowNumber ] );

    xtClipboard, xtTXT: Result := PadRight( RowNumber, ' ', MaxLength );

    xtCSV:
      Begin
        If ( Pos( #32, RowNumber ) <> 0 ) Or ( Pos( #32, RowNumber ) <> 0 ) Then
          Result := '"' + RowNumber + '"' + ',' Else Result := RowNumber + ',';
      End;

    xtTAB: Result := RowNumber + #9;

    xtDIF: Result := Format( '1,0'#13#10'"%s"'#13#10, [ RowNumber ] );

    xtSYLK: Result := Format( 'C;X1;Y%d;K"%S"'#13#10, [ FExportedRowNumber, RowNumber ] );

    xtWord, xtRTF: Result := Format( '%s\cell ', [ RowNumber ] );

    xtExcel:
      Begin

{$IFDEF NATIVEEXCEL_STANDARD}

        FmxNativeExcel.ActiveFont := 2;

        If reUseBorders In FEXCEL.Options Then
          FmxNativeExcel.Borders := [ ebTop, ebBottom, ebLeft, ebRight ] Else
          FmxNativeExcel.Borders := [ ];

        If reCellsAsText In FExcel.Options Then
        Begin
          FmxNativeExcel.WriteData( RowNumber );
          Exit;
        End;
{$ELSE}
        If reCellsAsText In FExcel.Options Then
        Begin
          FmxNativeExcel.WriteString( 0, RowNumber );
          Exit;
        End;
{$ENDIF}

        // *** 1.46 by KA ***

        Val( RowNumber, TempInt, ResCode );

{$IFDEF NATIVEEXCEL_STANDARD}

        If ResCode = 0 Then
          FmxNativeExcel.WriteInteger( TempInt ) Else
          FmxNativeExcel.WriteData( RowNumber );
{$ELSE}
        If ResCode = 0 Then
          FmxNativeExcel.WriteInteger( 0, TempInt ) Else
          FmxNativeExcel.WriteString( 0, RowNumber );
{$ENDIF}
      End;
  End;
End;

// *************************************************************************************
// ** TmxCustomExport.AddItem, 5/18/01 12:43:14 PM
// *************************************************************************************

Function TmxCustomExport.AddItem( AValue: Variant; MaxLength: Integer ): String;
Begin
  If AValue = Null Then Result := rsNullValue Else Result := AValue;

  If ( xoTruncate In FOptions ) And ( Length( Result ) > MaxLength ) And ( MaxLength > 0 ) Then
    Result := Truncate( Result, MaxLength, TruncateSymbol );
End;

// *************************************************************************************
// ** TmxCustomExport.CheckLink, 5/31/01 7:44:54 AM
// *************************************************************************************

Function TmxCustomExport.CheckLink( S: String ): Boolean;
Begin
  Result := FALSE;

  If AnsiPos( 'http:', S ) <> 0 Then Result := TRUE Else
    If AnsiPos( 'https:', S ) <> 0 Then Result := TRUE Else
      If AnsiPos( 'ftp:', S ) <> 0 Then Result := TRUE Else
        If AnsiPos( 'news:', S ) <> 0 Then Result := TRUE Else
          If AnsiPos( 'nntp:', S ) <> 0 Then Result := TRUE Else
            If AnsiPos( 'mailto:', S ) <> 0 Then Result := TRUE;
End;

// *************************************************************************************
// ** TmxCustomExport.GetHeaderLength, 5/28/01 10:08:08 AM
// *************************************************************************************

Function TmxCustomExport.GetHeaderLength: Integer;
Var
  I: Integer;
Begin
  Result := 0;

  For I := 0 To GetFieldCount - 1 Do
  Begin
    If Not ( xoExportInvisibles In FOptions ) And ( Not IsFieldVisible( I ) ) Then Continue;
    Result := Result + _GetFieldLength( I, GetFieldLength( I ) );
  End;

  If xoRowNumbers In FOptions Then
    Result := Result + GetFieldCount - 1 + Length( FormatRowNumber ) + 1 Else
    Result := Result + GetFieldCount - 1;
End;

// *************************************************************************************
// ** TmxCustomExport.SetCaptions, 5/18/01 1:39:47 PM
// *************************************************************************************

Procedure TmxCustomExport.SetCaptions( AValue: TStrings );
Begin
  FCaptions.Assign( AValue );
End;

// *************************************************************************************
// ** TmxCustomExport.SetColumnWidths, 5/18/01 1:39:44 PM
// *************************************************************************************

Procedure TmxCustomExport.SetColumnWidths( AValue: TStrings );
Begin
  FColumnWidths.Assign( AValue );
End;

// *************************************************************************************
// ** TmxCustomExport.SetNumberFormat, 5/18/01 1:58:45 PM
// *************************************************************************************

Procedure TmxCustomExport.SetNumberFormat( AValue: String );
Begin
  If Pos( '%d', AValue ) = 0 Then
    MessageDlg( 'The format has to contain %d string.', mtError, [ mbOK ], 0 ) Else
    FRowNumberFormat := AValue;
End;

// *************************************************************************************
// ** TmxCustomExport.GetHTMLFontFace, 5/30/01 12:30:27 PM
// *************************************************************************************

Function TmxCustomExport.GetHTMLFontFace( FontType: TmxHTMLFont ): String;
Begin
  Result := rsDefaultFontFace;

  If FHTML.Template <> ctCustom Then Exit;

  Case FontType Of
    hfDefault: Result := FHTML.CustomColors.FDefaultFontFace;
    hfTable: Result := FHTML.CustomColors.FTableFontFace;
  End;
End;

// *************************************************************************************
// ** TmxCustomExport.GetHTMLColor, 5/30/01 11:45:29 AM
// *************************************************************************************

Function TmxCustomExport.GetHTMLColor( ColorType: TmxHTMLColor ): String;
Var
  Color: TColor;
Begin
  Color := clBlack;

  Case FHTML.Template Of

    ctStandard:
      Begin
        Case ColorType Of
          hcALINK: Color := StringToColor( rsStandard_ALINK );
          hcBGCOLOR: Color := StringToColor( rsStandard_BGCOLOR );
          hcLINK: Color := StringToColor( rsStandard_LINK );
          hcTEXT: Color := StringToColor( rsStandard_TEXT );
          hcVLINK: Color := StringToColor( rsStandard_VLINK );
          hcHEAD_BGCOLOR: Color := StringToColor( rsStandard_HEAD_BGCOLOR );
          hcHEAD_FONT_COLOR: Color := StringToColor( rsStandard_HEAD_FONT_COLOR );
          hcTABLE_BGCOLOR: Color := StringToColor( rsStandard_TABLE_BGCOLOR );
          hcTABLE_ODD_BGCOLOR: Color := StringToColor( rsStandard_TABLE_ODD_BGCOLOR );
          hcTABLE_FONT_COLOR: Color := StringToColor( rsStandard_TABLE_FONT_COLOR );
        End;
      End;

    ctClassic:
      Begin
        Case ColorType Of
          hcALINK: Color := StringToColor( rsClassic_ALINK );
          hcBGCOLOR: Color := StringToColor( rsClassic_BGCOLOR );
          hcLINK: Color := StringToColor( rsClassic_LINK );
          hcTEXT: Color := StringToColor( rsClassic_TEXT );
          hcVLINK: Color := StringToColor( rsClassic_VLINK );
          hcHEAD_BGCOLOR: Color := StringToColor( rsClassic_HEAD_BGCOLOR );
          hcHEAD_FONT_COLOR: Color := StringToColor( rsClassic_HEAD_FONT_COLOR );
          hcTABLE_BGCOLOR: Color := StringToColor( rsClassic_TABLE_BGCOLOR );
          hcTABLE_ODD_BGCOLOR: Color := StringToColor( rsClassic_TABLE_ODD_BGCOLOR );
          hcTABLE_FONT_COLOR: Color := StringToColor( rsClassic_TABLE_FONT_COLOR );
        End;
      End;

    ctColorful:
      Begin
        Case ColorType Of
          hcALINK: Color := StringToColor( rsColorful_ALINK );
          hcBGCOLOR: Color := StringToColor( rsColorful_BGCOLOR );
          hcLINK: Color := StringToColor( rsColorful_LINK );
          hcTEXT: Color := StringToColor( rsColorful_TEXT );
          hcVLINK: Color := StringToColor( rsColorful_VLINK );
          hcHEAD_BGCOLOR: Color := StringToColor( rsColorful_HEAD_BGCOLOR );
          hcHEAD_FONT_COLOR: Color := StringToColor( rsColorful_HEAD_FONT_COLOR );
          hcTABLE_BGCOLOR: Color := StringToColor( rsColorful_TABLE_BGCOLOR );
          hcTABLE_ODD_BGCOLOR: Color := StringToColor( rsColorful_TABLE_ODD_BGCOLOR );
          hcTABLE_FONT_COLOR: Color := StringToColor( rsColorful_TABLE_FONT_COLOR );
        End;
      End;

    ctDark:
      Begin
        Case ColorType Of
          hcALINK: Color := StringToColor( rsDark_ALINK );
          hcBGCOLOR: Color := StringToColor( rsDark_BGCOLOR );
          hcLINK: Color := StringToColor( rsDark_LINK );
          hcTEXT: Color := StringToColor( rsDark_TEXT );
          hcVLINK: Color := StringToColor( rsDark_VLINK );
          hcHEAD_BGCOLOR: Color := StringToColor( rsDark_HEAD_BGCOLOR );
          hcHEAD_FONT_COLOR: Color := StringToColor( rsDark_HEAD_FONT_COLOR );
          hcTABLE_BGCOLOR: Color := StringToColor( rsDark_TABLE_BGCOLOR );
          hcTABLE_ODD_BGCOLOR: Color := StringToColor( rsDark_TABLE_ODD_BGCOLOR );
          hcTABLE_FONT_COLOR: Color := StringToColor( rsDark_TABLE_FONT_COLOR );
        End;
      End;

    ctGray:
      Begin
        Case ColorType Of
          hcALINK: Color := StringToColor( rsGray_ALINK );
          hcBGCOLOR: Color := StringToColor( rsGray_BGCOLOR );
          hcLINK: Color := StringToColor( rsGray_LINK );
          hcTEXT: Color := StringToColor( rsGray_TEXT );
          hcVLINK: Color := StringToColor( rsGray_VLINK );
          hcHEAD_BGCOLOR: Color := StringToColor( rsGray_HEAD_BGCOLOR );
          hcHEAD_FONT_COLOR: Color := StringToColor( rsGray_HEAD_FONT_COLOR );
          hcTABLE_BGCOLOR: Color := StringToColor( rsGray_TABLE_BGCOLOR );
          hcTABLE_ODD_BGCOLOR: Color := StringToColor( rsGray_TABLE_ODD_BGCOLOR );
          hcTABLE_FONT_COLOR: Color := StringToColor( rsGray_TABLE_FONT_COLOR );
        End;
      End;

    ctMSMoney:
      Begin
        Case ColorType Of
          hcALINK: Color := StringToColor( rsMsMoney_ALINK );
          hcBGCOLOR: Color := StringToColor( rsMsMoney_BGCOLOR );
          hcLINK: Color := StringToColor( rsMsMoney_LINK );
          hcTEXT: Color := StringToColor( rsMsMoney_TEXT );
          hcVLINK: Color := StringToColor( rsMsMoney_VLINK );
          hcHEAD_BGCOLOR: Color := StringToColor( rsMsMoney_HEAD_BGCOLOR );
          hcHEAD_FONT_COLOR: Color := StringToColor( rsMsMoney_HEAD_FONT_COLOR );
          hcTABLE_BGCOLOR: Color := StringToColor( rsMsMoney_TABLE_BGCOLOR );
          hcTABLE_ODD_BGCOLOR: Color := StringToColor( rsMsMoney_TABLE_ODD_BGCOLOR );
          hcTABLE_FONT_COLOR: Color := StringToColor( rsMsMoney_TABLE_FONT_COLOR );
        End;
      End;

    ctOlive:
      Begin
        Case ColorType Of
          hcALINK: Color := StringToColor( rsOlive_ALINK );
          hcBGCOLOR: Color := StringToColor( rsOlive_BGCOLOR );
          hcLINK: Color := StringToColor( rsOlive_LINK );
          hcTEXT: Color := StringToColor( rsOlive_TEXT );
          hcVLINK: Color := StringToColor( rsOlive_VLINK );
          hcHEAD_BGCOLOR: Color := StringToColor( rsOlive_HEAD_BGCOLOR );
          hcHEAD_FONT_COLOR: Color := StringToColor( rsOlive_HEAD_FONT_COLOR );
          hcTABLE_BGCOLOR: Color := StringToColor( rsOlive_TABLE_BGCOLOR );
          hcTABLE_ODD_BGCOLOR: Color := StringToColor( rsOlive_TABLE_ODD_BGCOLOR );
          hcTABLE_FONT_COLOR: Color := StringToColor( rsOlive_TABLE_FONT_COLOR );
        End;
      End;

    ctBW:
      Begin
        Case ColorType Of
          hcALINK: Color := StringToColor( rsBW_ALINK );
          hcBGCOLOR: Color := StringToColor( rsBW_BGCOLOR );
          hcLINK: Color := StringToColor( rsBW_LINK );
          hcTEXT: Color := StringToColor( rsBW_TEXT );
          hcVLINK: Color := StringToColor( rsBW_VLINK );
          hcHEAD_BGCOLOR: Color := StringToColor( rsBW_HEAD_BGCOLOR );
          hcHEAD_FONT_COLOR: Color := StringToColor( rsBW_HEAD_FONT_COLOR );
          hcTABLE_BGCOLOR: Color := StringToColor( rsBW_TABLE_BGCOLOR );
          hcTABLE_ODD_BGCOLOR: Color := StringToColor( rsBW_TABLE_ODD_BGCOLOR );
          hcTABLE_FONT_COLOR: Color := StringToColor( rsBW_TABLE_FONT_COLOR );
        End;
      End;

    ctCustom:
      Begin
        Case ColorType Of
          hcALINK: Color := FHTML.CustomColors.ActiveLink;
          hcBGCOLOR: Color := FHTML.CustomColors.Background;
          hcLINK: Color := FHTML.CustomColors.DefaultLink;
          hcTEXT: Color := FHTML.CustomColors.DefaultText;
          hcVLINK: Color := FHTML.CustomColors.VisitedLink;
          hcHEAD_BGCOLOR: Color := FHTML.CustomColors.HeaderBackground;
          hcHEAD_FONT_COLOR: Color := FHTML.CustomColors.HeadersFontColor;
          hcTABLE_BGCOLOR: Color := FHTML.CustomColors.TableBackground;
          hcTABLE_ODD_BGCOLOR: Color := FHTML.CustomColors.TableOddBackground;
          hcTABLE_FONT_COLOR: Color := FHTML.CustomColors.TableFontColor;
        End;
      End;
  End;

  FmtStr( Result, '#%.6x', [ Color ] );
End;

// *************************************************************************************
// ** TmxCustomExport.FormatLine, 5/17/01 11:30:13 AM
// *************************************************************************************

Function TmxCustomExport.FormatLine( AValues: TmxValues; Header, RowNumber: Boolean ): String;
Var
  I: Cardinal;
  TempStr: String;
  TempInt: Integer;
  TempFloat: Double;
  TempVariant: Variant;
  TemplateStr: String;
  AlignStr: String;
  ResCode: Integer;
  ColWidthStr: String;
{$IFNDEF NATIVEEXCEL_STANDARD}
  X: Byte;
{$ENDIF}
Begin
  Result := '';

  If Not Header And RowNumber Then Result := Result + FormatRowNumber;

     // *****************************************************************

  For I := 0 To High( AValues ) Do
  Begin
    If Not ( xoExportInvisibles In FOptions ) And ( Not IsFieldVisible( I ) ) Then Continue;

    Case FExportType Of

      xtHTML:
        Begin
          If xoUseAlignments In FOptions Then
          Begin
            Case GetFieldAlignment( I ) Of
              faDefault: AlignStr := '';
              faLeft: AlignStr := ' ALIGN="Left" ';
              faRight: AlignStr := ' ALIGN="Right" ';
              faCenter: AlignStr := ' ALIGN="Center" ';
            End;
          End
          Else AlignStr := '';

          If AValues[ I ] <> NULL Then // *** 1.42 ***
          Begin
            If ( hoAutoLink In FHTML.Options ) And ( CheckLink( AValues[ I ] ) ) Then
              TempStr := Format( '<A HREF="%s">%s</A>', [ AddItem( AValues[ I ], _GetFieldLength( I, GetFieldLength( I ) ) ), AValues[ I ] ] ) Else
              TempStr := AddItem( AValues[ I ], _GetFieldLength( I, GetFieldLength( I ) ) );
          End
          Else
            TempStr := AddItem( AValues[ I ], _GetFieldLength( I, GetFieldLength( I ) ) );

          If TempStr = '' Then TempStr := '&nbsp;';

          // *** 1.46 by ROD ***

{$WARNINGS OFF}
          If FColumnWidths.Count - 1 >= I Then
            ColWidthStr := ' WIDTH="' + FColumnWidths[ I ] + '"' Else
            ColWidthStr := '';
{$WARNINGS ON}

          // ***

          If Header Then
          Begin
            If hoBoldHeaders In FHTML.Options Then
              TemplateStr := Format( '    <TD%s%s><B><FONT COLOR="%s"><small>%s</small></FONT></B></TD>', [ ColWidthStr, AlignStr, GetHTMLColor( hcHEAD_FONT_COLOR ), TempStr ] ) Else
              TemplateStr := Format( '    <TD%s%s><FONT COLOR="%s"><small>%s</small></FONT></TD>', [ ColWidthStr, AlignStr, GetHTMLColor( hcHEAD_FONT_COLOR ), TempStr ] );
          End
          Else
          Begin
            TemplateStr := Format( '    <TD%s%s><small>%s</small></TD>', [ ColWidthStr, AlignStr, TempStr ] );
          End;

          If Result = '' Then Result := TemplateStr Else Result := Result + #13#10 + TemplateStr;
        End;

      xtTXT, xtClipboard:
        Begin
          TempInt := _GetFieldLength( I, GetFieldLength( I ) );
          TempStr := AddItem( AValues[ I ], TempInt );

          If xoUseAlignments In FOptions Then
          Begin
            Case GetFieldAlignment( I ) Of
              faDefault, faLeft: TempStr := PadLeft( TempStr, ' ', TempInt );
              faRight: TempStr := PadRight( TempStr, ' ', TempInt );
              faCenter: TempStr := PadCenter( TempStr, ' ', TempInt );
            End;
          End
          Else TempStr := PadLeft( TempStr, ' ', TempInt );

          If Result = '' Then Result := TempStr Else Result := Result + #32 + TempStr;
        End;

      xtCSV:
        Begin
          TempStr := ChangeQuotationMarks( AddItem( AValues[ I ], _GetFieldLength( I, GetFieldLength( I ) ) ), FALSE );
          If Result = '' Then Result := TempStr Else Result := Result + #44 + TempStr;
        End;

      xtTAB:
        Begin
          TempStr := {ChangeQuotationMarks( } AddItem( AValues[ I ], _GetFieldLength( I, GetFieldLength( I ) ) ); {, FALSE );}
          If Result = '' Then Result := TempStr Else Result := Result + #9 + TempStr;
        End;

      xtDIF:
        Begin
          TempStr := AddItem( AValues[ I ], _GetFieldLength( I, GetFieldLength( I ) ) );
          TempStr := ChangeQuotationMarks( TempStr, FALSE );
          TempStr := Format( '1,0'#13#10'%s'#13#10, [ TempStr ] );
          If Result = '' Then Result := TempStr Else Result := Result + TempStr;
        End;

      xtSYLK:
        Begin
          TempStr := AddItem( AValues[ I ], _GetFieldLength( I, GetFieldLength( I ) ) );
          TempStr := ChangeQuotationMarks( TempStr, TRUE ); // ** 1.46 **

          If RowNumber Then
            TempStr := Format( 'C;X%d;Y%d;K%S'#13#10, [ I + 2, FExportedRowNumber, TempStr ] ) Else
            TempStr := Format( 'C;X%d;Y%d;K%S'#13#10, [ I + 1, FExportedRowNumber, TempStr ] );

          If Result = '' Then Result := TempStr Else Result := Result + TempStr;
        End;

      xtWord, xtRTF:
        Begin
          TempStr := AddItem( AValues[ I ], _GetFieldLength( I, GetFieldLength( I ) ) );

          If xoUseAlignments In FOptions Then
          Begin
            Case GetFieldAlignment( I ) Of
              faDefault: AlignStr := '';
              faLeft: AlignStr := '\ql ';
              faRight: AlignStr := '\qr ';
              faCenter: AlignStr := '\qc ';
            End;
          End;

          TempStr := Format( '%s%s\cell ', [ AlignStr, TempStr ] );
          If Result = '' Then Result := TempStr Else Result := Result + TempStr;
        End;

      xtExcel:
        Begin
          TempStr := AddItem( AValues[ I ], _GetFieldLength( I, GetFieldLength( I ) ) );

{$IFNDEF NATIVEEXCEL_STANDARD}
          X := 0;
{$ENDIF}

          If xoUseAlignments In FOptions Then
          Begin
{$IFDEF NATIVEEXCEL_STANDARD}
            Case GetFieldAlignment( I ) Of
              faDefault: FmxNativeExcel.Alignment := eaGeneral;
              faLeft: FmxNativeExcel.Alignment := eaLeft;
              faRight: FmxNativeExcel.Alignment := eaRight;
              faCenter: FmxNativeExcel.Alignment := eaCenter;
            End;
{$ELSE}
            Case GetFieldAlignment( I ) Of
              faDefault: X := 1;
              faLeft: X := 2;
              faCenter: X := 3;
              faRight: X := 4;
            End;

            If Header Then X := 0;
{$ENDIF}
          End;

{$IFDEF NATIVEEXCEL_STANDARD}
          If Header Then
            FmxNativeExcel.ActiveFont := 1 Else
            FmxNativeExcel.ActiveFont := 2;

          If reUseBorders In FEXCEL.Options Then
            FmxNativeExcel.Borders := [ ebTop, ebBottom, ebLeft, ebRight ] Else
            FmxNativeExcel.Borders := [ ];
{$ENDIF}

          If reCellsAsText In FExcel.Options Then
          Begin
{$IFDEF NATIVEEXCEL_STANDARD}
            FmxNativeExcel.WriteData( TempStr );
{$ELSE}
            FmxNativeExcel.WriteString( X, TempStr );
{$ENDIF}
          End
          Else
          Begin
            // *** 1.46 by KA ***

            Val( TempStr, TempFloat, ResCode );
            If ResCode = 0 Then TempVariant := TempFloat Else
            Begin
              Val( TempStr, TempInt, ResCode );
              If ResCode = 0 Then TempVariant := TempInt;
            End;

{$IFDEF NATIVEEXCEL_STANDARD}
            If ResCode = 0 Then
              FmxNativeExcel.WriteData( TempVariant ) Else
              FmxNativeExcel.WriteData( TempStr );
{$ELSE}
            If ResCode = 0 Then
              FmxNativeExcel.WriteData( X, TempVariant ) Else
              FmxNativeExcel.WriteString( X, TempStr );
{$ENDIF}
          End;

{$IFDEF NATIVEEXCEL_STANDARD}
          FmxNativeExcel.Alignment := eaGeneral;
{$ENDIF}
        End;
    End;
  End;

  Inc( FExportedRowNumber );
End;

// *************************************************************************************
// ** TmxCustomExport.GenerateOutput, 5/17/01 11:37:28 AM
// *************************************************************************************

Procedure TmxCustomExport.GenerateOutput( Const OutputFileName: String );

Var
  X, I: Integer;
  Header: String;
  TempStr: String;
  TempInt: Integer;
  CanOverWrite: Boolean;
  CanExport: Boolean;
  AValues: TmxValues;
  OutputStrings: TStringList;
  TextOutput: TStringList;

Begin
  OutputStrings := Nil;
  TextOutput := Nil;

  If Assigned( FOnBeginExport ) Then FOnBeginExport( Self );

  Try
    SetLength( AValues, 0 );
    OutputStrings := TStringList.Create;
    TextOutput := TStringList.Create;

    // ********************************

    FRecordCount := GetRecordCount;

    // *** Creating progress window ***

    If xoShowProgress In FOptions Then
    Begin
      frm_ProgressForm.Width := FMessages.Width;
      frm_ProgressForm.Height := FMessages.Height;
      frm_ProgressForm.Caption := FMessages.Caption;

      frm_ProgressForm.ProgressBar.Left := 8;
      frm_ProgressForm.ProgressBar.Width := frm_ProgressForm.ClientWidth - 16;
      frm_ProgressForm.ProgressBar.Position := 0;
      frm_ProgressForm.ProgressBar.Max := FRecordCount;

      If FMessages.Text <> '' Then
      Begin
        frm_ProgressForm.ProgressLabel.Left := 8;
        frm_ProgressForm.ProgressLabel.Top := 8;
        frm_ProgressForm.ProgressLabel.Caption := FMessages.Text;
        frm_ProgressForm.ProgressBar.Top := ( frm_ProgressForm.Height - frm_ProgressForm.ClientHeight ) + ( frm_ProgressForm.ClientHeight - frm_ProgressForm.ProgressLabel.Height - 16 - frm_ProgressForm.ProgressBar.Height ) Div 2;
      End
      Else
      Begin
        frm_ProgressForm.ProgressBar.Top := ( ( frm_ProgressForm.Height - frm_ProgressForm.ClientHeight ) + ( frm_ProgressForm.ClientHeight - frm_ProgressForm.ProgressBar.Height - 16 ) ) Div 2;
      End;

      frm_ProgressForm.Show;
      frm_ProgressForm.Refresh;
    End;

    // *** Start Export ***

    Try
      If FileExists( OutputFileName ) Then
      Begin
        CanOverWrite := TRUE;
        If Assigned( FOnFileExist ) Then FOnFileExist( Self, OutputFileName, CanOverWrite );

        If Not CanOverwrite Then
        Begin
          If Assigned( FOnError ) Then FOnError( Self, xeFileExist );
          Abort;
        End;
      End;

      // *******************
      // *** Positioning ***
      // *******************

      FCurrent := 0;
      FRowNumber := 0;
      FExportedRowNumber := 1;

      First;

      // **********************
      // *** Field checking ***
      // **********************

      If GetFieldCount = 0 Then Exit;

      // *****************************
      // *** Write Special Headers ***
      // *****************************

      Case FExportType Of

        xtHTML:
          Begin
            TextOutput.Add( '<!-- THIS FILE WAS CREATED BY MAX''S EXPORT COMPONENTS FOR BORLAND DELPHI -->' );
            TextOutput.Add( '<!-- DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 TRANSITIONAL//EN" -->' );
            TextOutput.Add( '<HTML>' );
            TextOutput.Add( ' <HEAD>' );
            TextOutput.Add( '  <META HTTP - EQUIV = "Content - Type" CONTENT = "TEXT/HTML">' );
            TextOutput.Add( '  <META NAME = "GENERATOR" CONTENT = "Max''s Export Components for Delphi" >' );
            TextOutput.Add( '  <META NAME = "Author" CONTENT = "Lajos Farkas" >' );
            TextOutput.Add( '  <META NAME = "Description" CONTENT = "www.geocities.com\maxcomponents" >' );

            If hoDisplayTitle In FHTML.Options Then TextOutput.Add( Format( '  <TITLE>%s</TITLE>', [ FHTML.Title ] ) );

            TextOutput.Add( ' </HEAD>' );
            TextOutput.Add( Format( ' <BODY BGCOLOR="%s" LINK="%s" ALINK="%s" VLINK="%s" TEXT="%s">', [ GetHTMLColor( hcBGCOLOR ), GetHTMLColor( hcLINK ), GetHTMLColor( hcALINK ), GetHTMLColor( hcVLINK ), GetHTMLColor( hcTEXT ) ] ) );
            TextOutput.Add( Format( ' <FONT COLOR="%s" FACE="%s">', [ GetHTMLColor( hcTEXT ), GetHTMLFontFace( hfDefault ) ] ) );
          End;

        xtDIF:
          Begin
            TextOutput.Add( 'TABLE' );
            TextOutput.Add( '0,1' );
            TextOutput.Add( Format( '"%s"', [ UpperCase( Self.ClassName ) ] ) );
            TextOutput.Add( 'VECTORS' );
            TextOutput.Add( Format( '0,%d', [ FRecordCount ] ) );
            TextOutput.Add( '""' );
            TextOutput.Add( 'TUPLES' );

            If xoRowNumbers In FOptions Then
              TextOutput.Add( Format( '0,%d', [ GetFieldCount + 1 ] ) ) Else
              TextOutput.Add( Format( '0,%d', [ GetFieldCount ] ) );

            TextOutput.Add( '""' );
            TextOutput.Add( 'DATA' );
            TextOutput.Add( '0,0' );
            TextOutput.Add( '""' );
          End;

        xtSYLK: TextOutput.Add( Format( 'ID;P%s', [ UpperCase( Self.ClassName ) ] ) );

        xtRTF, xtWord:
          Begin
            FRTFStream.Clear;

            WriteToRTFStream( '{\rtf1\ansi\deff0\deftab720'#13#10 );

                     // *** Font Table ***

            WriteToRTFStream( '{\fonttbl' );
            WriteToRTFStream( GetRTFFont( 0, FDOC_RTF.CustomSettings.DefaultFont ) );
            WriteToRTFStream( GetRTFFont( 1, FDOC_RTF.CustomSettings.HeaderFont ) );
            WriteToRTFStream( GetRTFFont( 2, FDOC_RTF.CustomSettings.TableFont ) + '}'#13#10 );

                     // *** Color Table ***

            WriteToRTFStream( '{\colortbl' );
            WriteToRTFStream( GetRTFColorDefinition( rcTEXT ) );
            WriteToRTFStream( GetRTFColorDefinition( rcHEAD_FONT_COLOR ) );
            WriteToRTFStream( GetRTFColorDefinition( rcTABLE_FONT_COLOR ) );
            WriteToRTFStream( GetRTFColorDefinition( rcTABLE_HEAD_BGCOLOR ) );
            WriteToRTFStream( GetRTFColorDefinition( rcTABLE_BGCOLOR ) );
            WriteToRTFStream( GetRTFColorDefinition( rcTABLE_ODD_BGCOLOR ) + '}'#13#10 );

            WriteToRTFStream( Format( '\margl%d\margr%d\margt%d\margb%d', [ FDOC_RTF.LeftMargin, FDOC_RTF.RightMargin, FDOC_RTF.TopMargin, FDOC_RTF.BottomMargin ] ) );
          End;

        xtExcel:
          Begin
            With FmxNativeExcel Do
            Begin
              FileName := OutputFileName;
              MoveAfterEnter := maRight;

{$IFDEF NATIVEEXCEL_STANDARD}
              Column := 1;
              Row := 1;
              Borders := [ ];
              Alignment := eaGeneral;

              Case FExcel.ExcelVersion Of
                xls21: BIFF := bvBIFF2;
                xls30: BIFF := bvBIFF3;
                xls40: BIFF := bvBIFF4;
                xls50: BIFF := bvBIFF5;
              End;

              NewFile;

              AddFont( FExcel.DefaultFont );
              AddFont( FExcel.HeaderFont );
              AddFont( FExcel.TableFont );

              If FExcel.Header <> '' Then SetHeader( FExcel.Header );
              If FExcel.Footer <> '' Then SetFooter( FExcel.Footer );

              If reSetMargins In FExcel.Options Then
              Begin
                SetLeftMargin( FExcel.LeftMargin );
                SetBottomMargin( FExcel.BottomMargin );
                SetTopMargin( FExcel.FTopMargin );
                SetRightMargin( FExcel.RightMargin );
              End;

              If reSetColumnWidths In FExcel.Options Then
                SetColumnWidth( 1, 256, FExcel.ColumnWidth );

{$ELSE}
              Column := 0;
              Row := 0;

              FmxNativeExcel.FileVersion := Excel.ExcelVersion;

              FmxNativeExcel.Formats.Add( 5 );

              FmxNativeExcel.DefaultFont.Assign( FExcel.DefaultFont );
              FExcel.HeaderFormat.AssignTo( FmxNativeExcel.Formats[ 0 ] );

              FExcel.TableFormat.AssignTo( FmxNativeExcel.Formats[ 1 ] );

              FExcel.TableFormat.AssignTo( FmxNativeExcel.Formats[ 2 ] );
              FmxNativeExcel.Formats[ 2 ].Alignment.Horizontal := haLeft;
              FExcel.TableFormat.AssignTo( FmxNativeExcel.Formats[ 3 ] );
              FmxNativeExcel.Formats[ 3 ].Alignment.Horizontal := haCenter;
              FExcel.TableFormat.AssignTo( FmxNativeExcel.Formats[ 4 ] );
              FmxNativeExcel.Formats[ 4 ].Alignment.Horizontal := haRight;

              If reSetColumnWidths In FExcel.Options Then
                FmxNativeExcel.DefaultColWidth := FExcel.ColumnWidth;

              FmxNativeExcel.PageSetup.Assign( Excel.PageSetup );
              FmxNativeExcel.SummaryInfo.Assign( Excel.SummaryInfo );
              FmxNativeExcel.Codepage := EXCEL.Codepage;
              FmxNativeExcel.CustomCodepage := EXCEL.CustomCodepage;

              If Excel.Protected Then
                FmxNativeExcel.Options := FmxNativeExcel.Options + [ xsProtected ] Else
                FmxNativeExcel.Options := FmxNativeExcel.Options - [ xsProtected ];

              NewFile;
{$ENDIF}
            End;
          End;
      End;

      // ********************
      // *** Write Header ***
      // ********************

      TempStr := '';

      If Assigned( FOnGetHeader ) Then FOnGetHeader( Self, FRecordCount, TempStr );

      OutputStrings.Text := TempStr;

      If FExportType = xtHTML Then
      Begin
        TempStr := AddHorizontalLine( TRUE );
        If TempStr <> '' Then OutputStrings.Add( TempStr );
        TempStr := '';
      End;

      If FExportType In [ xtRTF, xtWord ] Then
      Begin
        For I := 0 To OutputStrings.Count - 1 Do
        Begin
          WriteToRTFStream( Format( '\par \pard\plain\f0%s\cf0 %s'#13#10, [ GetRTFFontInfo( FDOC_RTF.CustomSettings.DefaultFont ), OutputStrings[ I ] ] ) );
        End;
      End;

      If Not ( FExportType In [ xtCSV, xtDIF, xtSYLK, xtRTF, xtWORD ] ) Then
      Begin
        For I := 0 To OutputStrings.Count - 1 Do TextOutput.Add( OutputStrings[ I ] );
      End;

      If FExportType = xtExcel Then
      Begin
        FmxNativeExcel.MoveAfterEnter := maDown;

{$IFDEF NATIVEEXCEL_STANDARD}
        FmxNativeExcel.ActiveFont := 0;
        FmxNativeExcel.Borders := [ ];

        For I := 0 To OutputStrings.Count - 1 Do FmxNativeExcel.WriteData( OutputStrings[ I ] );
{$ELSE}
        For I := 0 To OutputStrings.Count - 1 Do FmxNativeExcel.WriteString( 0, OutputStrings[ I ] );
{$ENDIF}

        If OutputStrings.Count <> 0 Then FmxNativeExcel.WriteBlank;
        FmxNativeExcel.MoveAfterEnter := maRight;
      End;

      // **********************************
      // *** Creating RTF table header ****
      // **********************************

      If FExportType In [ xtRTF, xtWord ] Then
      Begin
        WriteToRTFStream( '\par \pard\plain\cgrid'#13#10 );
        WriteToRTFStream( '{\stylesheet{\nowidctlpar\widctlpar\adjustright \fs20\cgrid \snext0 Normal;}'#13#10 );
        WriteToRTFStream( '{\*\cs10 \additive Default Paragraph Font;}}'#13#10 );
        WriteToRTFStream( '{\*\pnseclvl1\pnucrm\pnstart1\pnindent720\pnhang{\pntxta.}}'#13#10 );
        WriteToRTFStream( '{\*\pnseclvl2\pnucltr\pnstart1\pnindent720\pnhang{\pntxta .}}'#13#10 );
        WriteToRTFStream( '{\*\pnseclvl3\pndec\pnstart1' + '\pnindent720\pnhang{\pntxta.}}'#13#10 );
        WriteToRTFStream( '{\*\pnseclvl4\pnlcltr\pnstart1\pnindent720\pnhang{\pntxta)}}'#13#10 );
        WriteToRTFStream( '{\*\pnseclvl5\pndec\pnstart1\pnindent720\pnhang{\pntxtb (}{\pntxta)}}'#13#10 );
        WriteToRTFStream( '{\*\pnseclvl6\pnlcltr\pnstart1\pnindent720\pnhang{\pntxtb (}{\pntxta )}}'#13#10 );
        WriteToRTFStream( '{\*\pnseclvl7\pnlcrm\pnstart1\pnindent720\pnhang{\pntxtb (}{\pntxta)}}'#13#10 );
        WriteToRTFStream( '{\*\pnseclvl8\pnlcltr\pnstart1\pnindent720\pnhang{\pntxtb (}{\pntxta)}}'#13#10 );
        WriteToRTFStream( '{\*\pnseclvl9\pnlcrm\pnstart1\pnindent720\pnhang{\pntxtb (}{\pntxta )}}'#13#10 );
      End;

      // *******************************
      // *** Creating table headers ****
      // *******************************

      OutputStrings.Text := '';

      If ( xoShowHeader In FOptions ) Then
      Begin
        TempStr := '';

        SetLength( AValues, GetFieldCount );

        For I := 0 To GetFieldCount - 1 Do
        Begin
          If FCaptions.Count - 1 >= I Then
            Header := FCaptions[ I ] Else
            Header := GetFieldName( I );

          AValues[ I ] := Header;
        End;

        If xoRowNumbers In FOptions Then
        Begin
          Case FExportType Of
            xtHTML: OutputStrings.Text := '    <TD>&nbsp;</TD>'#13#10 + FormatLine( AValues, TRUE, TRUE );
            xtDIF: OutputStrings.Text := '1,0'#13#10'""'#13#10 + FormatLine( AValues, TRUE, TRUE );
            xtExcel:
              Begin
{$IFDEF NATIVEEXCEL_STANDARD}
                FmxNativeExcel.ActiveFont := 1;
                FmxNativeExcel.WriteBlank;
{$ELSE}
                FmxNativeExcel.WriteBlank( 0 );
{$ENDIF}
                FormatLine( AValues, TRUE, TRUE );
              End;

            xtTXT, xtCSV, xtTAB, xtSYLK, xtClipboard: OutputStrings.Text := GenerateStr( ' ', Length( FormatRowNumber ) + 1 ) + FormatLine( AValues, TRUE, TRUE );
            xtRTF, xtWord: OutputStrings.Text := ' \cell ' + FormatLine( AValues, TRUE, TRUE );
          End;
        End
        Else OutputStrings.Text := FormatLine( AValues, TRUE, FALSE );

        Case FExportType Of

          xtHTML:
            Begin
              If hoShowGridLines In FHTML.Options Then
                TextOutput.Add( Format( '  <TABLE WIDTH="100%s" CELLPADDING="4" CELLSPACING="0" BORDER="1" BGCOLOR="%s">', [ '%', GetHTMLColor( hcTABLE_BGCOLOR ) ] ) ) Else
                TextOutput.Add( Format( '  <TABLE WIDTH="100%s" CELLPADDING="4" CELLSPACING="0" BGCOLOR="%s">', [ '%', GetHTMLColor( hcTABLE_BGCOLOR ) ] ) );

              TextOutput.Add( Format( '  <FONT COLOR="%s" FACE="%s">'#13#10'   <TR BGCOLOR="%s">', [ GetHTMLColor( hcTABLE_FONT_COLOR ), GetHTMLFontFace( hfTable ), GetHTMLColor( hcHEAD_BGCOLOR ) ] ) );
            End;

          xtDIF:
            Begin
              TextOutput.Add( '-1,0' );
              TextOutput.Add( 'BOT' );
            End;

          xtRTF, xtWORD:
            Begin
              WriteToRTFStream( '\trowd\trgaph108\trrh260\trleft0' );

              TempInt := GetFieldCount;
              If xoRowNumbers In FOptions Then Inc( TempInt );

              For X := 0 To TempInt - 1 Do
              Begin
                WriteToRTFStream( '\clvertalc' );

                If ( roShowGridLines In FDOC_RTF.Options ) Then
                  WriteToRTFStream( '\clbrdrt\brdrs\brdrw10\clbrdrl\brdrs\brdrw10\clbrdrb\brdrs\brdrw10\clbrdrr\brdrs\brdrw10' );

                WriteToRTFStream( ' \clcbpat3' );
                WriteToRTFStream( '\cltxlrtb\cellx' + IntToStr( Round( ( ( ( ( X + 1 ) * 100 ) / Screen.Pixelsperinch ) * FDOC_RTF.CellWidth ) ) ) );
              End;

              WriteToRTFStream( '\pard\ri-123\nowidctlpar\widctlpar\intbl\adjustright' );
              WriteToRTFStream( Format( ' {\f1%s\cf1\cgrid0 ', [ GetRTFFontInfo( FDOC_RTF.CustomSettings.HeaderFont ) ] ) );
            End;
        End;

        For I := 0 To OutputStrings.Count - 1 Do
        Begin
          If ExportType In [ xtRTF, xtWord ] Then
            WriteToRTFStream( OutputStrings[ I ] ) Else
            TextOutput.Add( OutputStrings[ I ] );
        End;

        If FExportType = xtHTML Then TempStr := '   </TR>';
        If ExportType In [ xtRTF, xtWord ] Then WriteToRTFStream( '}\pard \nowidctlpar\widctlpar\intbl\adjustright {\row}'#13#10 );
      End;

      If FExportType <> xtHTML Then TempStr := AddHorizontalLine( TRUE );

      If ( Not ( FExportType In [ xtDIF, xtSYLK, xtRTF, xtWord ] ) ) And ( TempStr <> '' ) Then TextOutput.Add( TempStr );

      // ***********************
      // *** Open HTML Table ***
      // ***********************

      If ( FExportType = xtHTML ) And Not ( xoShowHeader In FOptions ) Then
      Begin
        If hoShowGridLines In FHTML.Options Then
          TextOutput.Add( Format( '  <TABLE WIDTH="100%s" CELLPADDING="4" CELLSPACING="0" BORDER="1" BGCOLOR="%s">', [ '%', GetHTMLColor( hcTABLE_BGCOLOR ) ] ) ) Else
          TextOutput.Add( Format( '  <TABLE WIDTH="100%s" CELLPADDING="4" CELLSPACING="0" BGCOLOR="%s">', [ '%', GetHTMLColor( hcTABLE_BGCOLOR ) ] ) );

        TextOutput.Add( Format( '  <FONT COLOR="%s" FACE="%s">'#13#10'   <TR BGCOLOR="%s">', [ GetHTMLColor( hcTABLE_FONT_COLOR ), GetHTMLFontFace( hfTable ), GetHTMLColor( hcHEAD_BGCOLOR ) ] ) );
      End;

      // ****************************
      // *** Generate output data ***
      // ****************************

      While Not EOF Do
      Begin
        AValues := GetNextLine;

        If xoSelectedRowsOnly In FOptions Then
          CanExport := IsRowSelected( FCurrent ) Else
          CanExport := TRUE;

        If Assigned( FOnExport ) Then FOnExport( Self, FCurrent, FRecordCount, AValues, CanExport );
        If ( xoShowProgress In FOptions ) Then frm_ProgressForm.ProgressBar.Position := FCurrent;

        If Not CanExport Then
        Begin
          Inc( FCurrent );
          Continue;
        End;

        FmxNativeExcel.Row := FmxNativeExcel.Row + 1;
{$IFDEF NATIVEEXCEL_STANDARD}
        FmxNativeExcel.Column := 1;
{$ELSE}
        FmxNativeExcel.Column := 0;
{$ENDIF}

        OutputStrings.Text := FormatLine( AValues, FALSE, xoRowNumbers In FOptions );

        Case FExportType Of

          xtHTML:
            Begin
              If hoOddRowColoring In FHTML.Options Then
              Begin
                If ( FCurrent Mod 2 ) = 0 Then
                  TextOutput.Add( '   <TR>' ) Else
                  TextOutput.Add( Format( '   <TR BGCOLOR="%s">', [ GetHTMLColor( hcTABLE_ODD_BGCOLOR ) ] ) );
              End
              Else TextOutput.Add( '   <TR>' );
            End;

          xtDIF:
            Begin
              TextOutput.Add( '-1,0' );
              TextOutput.Add( 'BOT' );
            End;

          xtRTF, xtWord:
            Begin
              WriteToRTFStream( '\trowd\trgaph108\trrh260\trleft0' );

              TempInt := GetFieldCount;
              If xoRowNumbers In FOptions Then Inc( TempInt );

              For X := 0 To TempInt - 1 Do
              Begin
                WriteToRTFStream( '\clvertalc' );

                If ( roShowGridLines In FDOC_RTF.Options ) Then
                  WriteToRTFStream( '\clbrdrt\brdrs\brdrw10\clbrdrl\brdrs\brdrw10\clbrdrb\brdrs\brdrw10\clbrdrr\brdrs\brdrw10' );

                If ( roOddRowColoring In FDOC_RTF.Options ) Then
                Begin
                  If ( FCurrent Mod 2 ) = 0 Then
                    WriteToRTFStream( ' \clcbpat4' ) Else
                    WriteToRTFStream( ' \clcbpat5' );
                End
                Else WriteToRTFStream( ' \clcbpat4' );

                WriteToRTFStream( '\cltxlrtb\cellx' + IntToStr( Round( ( ( ( ( X + 1 ) * 100 ) / Screen.Pixelsperinch ) * FDOC_RTF.CellWidth ) ) ) );
              End;

              WriteToRTFStream( '\pard\ri-123\nowidctlpar\widctlpar\intbl\adjustright' );
              WriteToRTFStream( Format( ' {\f2%s\cf2\cgrid0 ', [ GetRTFFontInfo( FDOC_RTF.CustomSettings.TableFont ) ] ) );
            End;
        End;

        For I := 0 To OutputStrings.Count - 1 Do
        Begin
          If FExportType In [ xtRTF, xtWord ] Then WriteToRTFStream( OutputStrings[ I ] ) Else
            If FExportType In [ xtHTML, xtTXT, xtCSV, xtTAB, xtDIF, xtSYLK, xtClipboard ] Then
              TextOutput.Add( OutputStrings[ I ] ) Else
        End;

        Case FExportType Of

          xtHTML: TextOutput.Add( '   </TR>' );
          xtRTF, xtWord: WriteToRTFStream( '}\pard \nowidctlpar\widctlpar\intbl\adjustright {\row}'#13#10 );

        End;

        Inc( FCurrent );
        Inc( FRowNumber );
      End;

      // *********************************
      // *** Close HTML and RTF Tables ***
      // *********************************

      If FExportType = xtHTML Then
      Begin
        TextOutput.Add( '  </FONT>' );
        TextOutput.Add( '  </TABLE>' );
      End;

      If FExportType In [ xtRTF, xtWord ] Then
      Begin
        WriteToRTFStream( '\pard\nowidctlpar\widctlpar\adjustright {'#13#10 );
      End;

      // ********************
      // *** Write Footer ***
      // ********************

      TempStr := '';

      If Assigned( FOnGetFooter ) Then FOnGetFooter( Self, FRecordCount, TempStr );

      OutputStrings.Text := TempStr;

      If Not ( FExportType In [ xtCSV, xtDIF, xtSYLK ] ) Then
      Begin
        TempStr := AddHorizontalLine( FALSE );
        If TempStr <> '' Then TextOutput.Add( TempStr );
        For I := 0 To OutputStrings.Count - 1 Do TextOutput.Add( OutputStrings[ I ] );

        If xoShowExportDate In FOptions Then
        Begin
          If FExportType In [ xtRTF, xtWord ] Then
            OutputStrings.Add( Format( FMessages.CreatedText + ' %s', [ DateTimeToStr( Now ) ] ) ) Else
            TextOutput.Add( Format( FMessages.CreatedText + ' %s', [ DateTimeToStr( Now ) ] ) );
        End;
      End;

      If FExportType In [ xtRTF, xtWord ] Then
      Begin
        For I := 0 To OutputStrings.Count - 1 Do
        Begin
          WriteToRTFStream( Format( '\par \pard\plain\f0%s\cf0 %s'#13#10, [ GetRTFFontInfo( FDOC_RTF.CustomSettings.FDefaultFont ), OutputStrings[ I ] ] ) );
        End;
      End;

      If FExportType = xtExcel Then
      Begin
        FmxNativeExcel.Row := FmxNativeExcel.Row + 2;
        FmxNativeExcel.MoveAfterEnter := maDown;
{$IFDEF NATIVEEXCEL_STANDARD}
        FmxNativeExcel.Column := 1;
        FmxNativeExcel.ActiveFont := 0;
        FmxNativeExcel.Borders := [ ];

        For I := 0 To OutputStrings.Count - 1 Do FmxNativeExcel.WriteData( OutputStrings[ I ] );
{$ELSE}
        FmxNativeExcel.Column := 0;
        For I := 0 To OutputStrings.Count - 1 Do FmxNativeExcel.WriteString( 0, OutputStrings[ I ] );
{$ENDIF}
      End;

      // ******************
      // *** Write File ***
      // ******************

      Case FExportType Of

        xtHTML:
          Begin
            TextOutput.Add( ' </FONT>' );
            TextOutput.Add( ' </BODY>' );
            TextOutput.Add( '</HTML>' );
            TextOutput.SaveToFile( OutputFileName );
          End;

        xtTXT: TextOutput.SaveToFile( OutputFileName );

        xtCSV: TextOutput.SaveToFile( OutputFileName );

        xtTAB: TextOutput.SaveToFile( OutputFileName );

        xtDIF:
          Begin
            TextOutput.Add( '-1,0' );
            TextOutput.Add( 'EOD' );
            TextOutput.SaveToFile( OutputFileName );
          End;

        xtSYLK:
          Begin
            TextOutput.Add( 'E' );
            TextOutput.SaveToFile( OutputFileName );
          End;

        xtClipboard:
          Begin
            Clipboard.Clear;
{$WARNINGS OFF}
            Clipboard.SetTextBuf( PChar( TextOutput.Text ) );
{$WARNINGS ON}

            If xoClipBoardMessage In FOptions Then
              MessageDlg( FMessages.CopiedToClipboard, mtInformation, [ mbOK ], 0 );
          End;

        xtRTF, xtWord:
          Begin
            WriteToRTFStream( '}}' );
            FRTFStream.SaveToFile( OutputFileName );
          End;

        xtExcel:
          Begin
            With FmxNativeExcel Do
            Begin
{$IFDEF NATIVEEXCEL_STANDARD}
              If FExcel.Protected Then ProtectSheet( TRUE );
              CloseFile;
              SaveToFile;
{$ELSE}
              CloseFile;
{$ENDIF}
            End;
          End;
      End;

    Except

      If Assigned( FOnError ) Then FOnError( Self, xeGeneralExportError );

    End;

  Finally

    If xoShowProgress In FOptions Then frm_ProgressForm.Close;
    OutputStrings.Free;
    TextOutput.Free;

  End;

  If Assigned( FOnEndExport ) Then FOnEndExport( Self );
End;

// *************************************************************************************
// ** TmxCustomExport.ViewFile, 5/29/01 1:25:05 PM
// *************************************************************************************

Procedure TmxCustomExport.ViewFile( OutputFileName: String );
Begin
{$WARNINGS OFF}
  ShellExecute( Application.Handle, Nil, PChar( OutputFileName ), Nil, PChar( ExtractFilePath( OutputFileName ) ), SW_SHOWNOACTIVATE );
{$WARNINGS ON}
End;

// *************************************************************************************
// ** TmxCustomExport.Execute, 5/16/01 4:22:15 PM
// *************************************************************************************

Procedure TmxCustomExport.Execute;
Var
  Extension: String;
  OutputFileName: String;
  Buffer: Array[ 0..255 ] Of Char;
  TempFileSuffix: Integer;
Begin
  // *** 1.43 *******************

  If Not IsValidToExport Then
  Begin
    If Assigned( FOnError ) Then FOnError( Self, xeComponentIsNull );
    Exit;
  End;

  // *** 1.41 *******************

  BeforeExecute;

  // ****************************

  OutputFileName := FFileName;

  If ( OutputFileName = '' ) And ( FExportStyle = xsFile ) Then
  Begin
    If Assigned( FOnError ) Then FOnError( Self, xeInvalidFileName );
    AfterExecute;
    Exit;
  End;

  // ***********************************************

  Extension := GetExtension;
  If Assigned( FOnGetExtension ) Then FOnGetExtension( Self, Extension );

  If FExportStyle = xsView Then
  Begin
    TempFileSuffix := 1;

    Repeat

{$WARNINGS OFF}
      GetTempFileName( PChar( FTempDirectory ), PChar( rsTempPrefix ), TempFileSuffix, Buffer );
{$WARNINGS ON}
      OutputFileName := String( Buffer );
      Inc( TempFileSuffix );
      OutputFileName := ChangeFileExt( OutputFileName, '.' + Extension );

    Until Not FileExists( OutputFileName );
  End
  Else OutputFileName := ChangeFileExt( OutputFileName, '.' + Extension );

  GenerateOutput( OutputFileName );

  If FExportStyle = xsView Then ViewFile( OutputFileName );

  // *** 1.41 *******************

  AfterExecute;

  // ****************************
End;

// *************************************************************************************
// ** TmxCustomExport.SelectorChange, 5/29/01 9:46:00 AM
// *************************************************************************************

Procedure TmxCustomExport.SelectorChange( Sender: TObject );
Begin
  If Sender Is TRadioButton Then
  Begin
    Case ( Sender As TRadioButton ).Tag Of
      10: FExportStyle := xsView;
      20: FExportStyle := xsFile;
    End;
  End;

  If Sender Is TComboBox Then
  Begin
    If ( Sender As TComboBox ).Tag = 30 Then
    Begin
      frm_Selection.rdo_View.Enabled := ( Sender As TComboBox ).Text <> rsSelectClipboard;
      frm_Selection.rdo_File.Enabled := ( Sender As TComboBox ).Text <> rsSelectClipboard;

      // ***

      With frm_Selection Do
      Begin
        If SelectionCombo.Text = rsSelectHTML Then FExportType := xtHTML;
        If SelectionCombo.Text = rsSelectWord Then FExportType := xtWord;
        If SelectionCombo.Text = rsSelectExcel Then FExportType := xtExcel;
        If SelectionCombo.Text = rsSelectTEXT Then FExportType := xtTXT;
        If SelectionCombo.Text = rsSelectRTF Then FExportType := xtRTF;
        If SelectionCombo.Text = rsSelectComma Then FExportType := xtCSV;
        If SelectionCombo.Text = rsSelectTAB Then FExportType := xtTAB;
        If SelectionCombo.Text = rsSelectDIF Then FExportType := xtDIF;
        If SelectionCombo.Text = rsSelectSYLK Then FExportType := xtSYLK;
        If SelectionCombo.Text = rsSelectClipboard Then FExportType := xtClipboard;
      End;

      // ***

      frm_Selection.IconImage.Invalidate;
    End;
  End;
End;

Procedure TmxCustomExport.IconImagePaint( Sender: TObject );
Var
  ImageIndex: Integer;
Begin
  Case FExportType Of
    xtHTML: ImageIndex := 2;
    xtExcel: ImageIndex := 5;
    xtWord: ImageIndex := 4;
    xtTXT: ImageIndex := 3;
    xtCSV: ImageIndex := 1;
    xtTAB: ImageIndex := 6;
    xtRTF: ImageIndex := 0;
    xtDIF: ImageIndex := 6;
    xtSYLK: ImageIndex := 6;
    xtClipboard: ImageIndex := 7;
  Else ImageIndex := 0;
  End;

  frm_Selection.ImageList.Draw( frm_Selection.IconImage.Canvas, 0, 0, ImageIndex, True );
End;

// *************************************************************************************
// ** TmxCustomExport.GetFieldAlignment, 6/8/01 12:44:03 PM
// *************************************************************************************

Function TmxCustomExport.GetFieldAlignment( Index: Integer ): TmxFieldAlignment;
Begin
  Result := faDefault;
End;

// *************************************************************************************
// ** TmxCustomExport.GetExtension, 5/30/01 3:57:20 PM
// *************************************************************************************

Function TmxCustomExport.GetExtension: String;
Begin
  Case FExportType Of
    xtHTML:
      Begin
        Case FHTML.Extension Of
          exHTM: Result := 'HTM';
          exHTML: Result := 'HTML';
        End;
      End;
    xtExcel: Result := 'XLS';
    xtWord: Result := 'DOC';
    xtTXT: Result := 'TXT';
    xtCSV: Result := 'CSV';
    xtTAB: Result := 'TXT';
    xtRTF: Result := 'RTF';
    xtDIF: Result := 'DIF';
    xtSYLK: Result := 'SLK';
    xtClipboard: Result := 'TMP';
  End;
End;

// *************************************************************************************
// ** TmxCustomExport.GetFilter, 5/30/01 4:10:28 PM
// *************************************************************************************

Function TmxCustomExport.GetFilter: String;
Begin
  Case FExportType Of
    xtHTML: Result := FMessages.DocumentFilter.HTML;
    xtExcel: Result := FMessages.DocumentFilter.Excel;
    xtWord: Result := FMessages.DocumentFilter.Word;
    xtTXT: Result := FMessages.DocumentFilter.Text;
    xtCSV: Result := FMessages.DocumentFilter.Comma;
    xtTAB: Result := FMessages.DocumentFilter.Tab;
    xtRTF: Result := FMessages.DocumentFilter.RTF;
    xtDIF: Result := FMessages.DocumentFilter.DIF;
    xtSYLK: Result := FMessages.DocumentFilter.SYLK;
  End;

  Result := Format( '%s (*.%s)|*.%s', [ Result, LowerCase( GetExtension ), GetExtension ] );
End;

// *************************************************************************************
// ** TmxCustomExport.Select, 5/16/01 4:22:55 PM
// *************************************************************************************

Procedure TmxCustomExport.Select;
Var
  CanStart: Boolean;
  ExportTypeCount: Byte; // *** 1.42 ***
  SaveDialog: TSaveDialog;
Begin
  frm_Selection.Caption := FMessages.Caption;
  frm_Selection.btn_Selection.Caption := FMessages.ExportCaption;
  frm_Selection.btn_Cancel.Caption := FMessages.CancelCaption;

  frm_Selection.GroupBox.Caption := Format( ' %s ', [ FMessages.SelectFormat ] );
  frm_Selection.SelectionCombo.OnChange := SelectorChange;

  If Not ( FExportType In FExportTypes ) Then Include( FExportTypes, FExportType );

  ExportTypeCount := 0; // *** 1.42 ***

  frm_Selection.SelectionCombo.Items.Clear;

  If xtHTML In FExportTypes Then
  Begin
    frm_Selection.SelectionCombo.Items.Add( rsSelectHTML );
    If FExportType = xtHTML Then frm_Selection.SelectionCombo.ItemIndex := frm_Selection.SelectionCombo.Items.Count - 1;
    Inc( ExportTypeCount );
  End;

  If xtWord In FExportTypes Then
  Begin
    frm_Selection.SelectionCombo.Items.Add( rsSelectWord );
    If FExportType = xtWord Then frm_Selection.SelectionCombo.ItemIndex := frm_Selection.SelectionCombo.Items.Count - 1;
    Inc( ExportTypeCount );
  End;

  If xtExcel In FExportTypes Then
  Begin
    frm_Selection.SelectionCombo.Items.Add( rsSelectExcel );
    If FExportType = xtExcel Then frm_Selection.SelectionCombo.ItemIndex := frm_Selection.SelectionCombo.Items.Count - 1;
    Inc( ExportTypeCount );
  End;

  If xtTXT In FExportTypes Then
  Begin
    frm_Selection.SelectionCombo.Items.Add( rsSelectText );
    If FExportType = xtTXT Then frm_Selection.SelectionCombo.ItemIndex := frm_Selection.SelectionCombo.Items.Count - 1;
    Inc( ExportTypeCount );
  End;

  If xtRTF In FExportTypes Then
  Begin
    frm_Selection.SelectionCombo.Items.Add( rsSelectRTF );
    If FExportType = xtRTF Then frm_Selection.SelectionCombo.ItemIndex := frm_Selection.SelectionCombo.Items.Count - 1;
    Inc( ExportTypeCount );
  End;

  If xtCSV In FExportTypes Then
  Begin
    frm_Selection.SelectionCombo.Items.Add( rsSelectComma );
    If FExportType = xtCSV Then frm_Selection.SelectionCombo.ItemIndex := frm_Selection.SelectionCombo.Items.Count - 1;
    Inc( ExportTypeCount );
  End;

  If xtTAB In FExportTypes Then
  Begin
    frm_Selection.SelectionCombo.Items.Add( rsSelectTab );
    If FExportType = xtTAB Then frm_Selection.SelectionCombo.ItemIndex := frm_Selection.SelectionCombo.Items.Count - 1;
    Inc( ExportTypeCount );
  End;

  If xtDIF In FExportTypes Then
  Begin
    frm_Selection.SelectionCombo.Items.Add( rsSelectDIF );
    If FExportType = xtDIF Then frm_Selection.SelectionCombo.ItemIndex := frm_Selection.SelectionCombo.Items.Count - 1;
    Inc( ExportTypeCount );
  End;

  If xtSYLK In FExportTypes Then
  Begin
    frm_Selection.SelectionCombo.Items.Add( rsSelectSYLK );
    If FExportType = xtSYLK Then frm_Selection.SelectionCombo.ItemIndex := frm_Selection.SelectionCombo.Items.Count - 1;
    Inc( ExportTypeCount );
  End;

  If xtClipboard In FExportTypes Then
  Begin
    frm_Selection.SelectionCombo.Items.Add( rsSelectClipboard );
    If FExportType = xtClipboard Then frm_Selection.SelectionCombo.ItemIndex := frm_Selection.SelectionCombo.Items.Count - 1;
    Inc( ExportTypeCount );
  End;

  frm_Selection.SelectionCombo.DropDownCount := ExportTypeCount; // *** 1.42 ***

  frm_Selection.rdo_View.Tag := 10;
  frm_Selection.rdo_View.Caption := FMessages.ViewOnly;
  frm_Selection.rdo_View.OnClick := SelectorChange;
  frm_Selection.rdo_View.Checked := FExportStyle = xsView;

  frm_Selection.rdo_File.Tag := 20;
  frm_Selection.rdo_File.Caption := FMessages.ExportToFile;
  frm_Selection.rdo_File.OnClick := SelectorChange;
  frm_Selection.rdo_File.Checked := FExportStyle = xsFile;

  SelectorChange( frm_Selection.SelectionCombo ); // *** To set the Icon **

  frm_Selection.ShowModal;

  If frm_Selection.ModalResult = mrOK Then
  Begin
    CanStart := TRUE;

    If ( FFileName = '' ) And ( FExportStyle = xsFile ) Then
    Begin
      SaveDialog := Nil;
      Try
        SaveDialog := TSaveDialog.Create( Self );
        SaveDialog.DefaultExt := GetExtension;
        SaveDialog.Filter := GetFilter;
        SaveDialog.InitialDir := ExtractFilePath( ParamStr( 0 ) );
        SaveDialog.Title := FMessages.SaveTitle;

        CanStart := SaveDialog.Execute;
        If CanStart Then
          FFileName := SaveDialog.FileName Else
          If Assigned( FOnError ) Then FOnError( Self, xeUserCancelled );
      Finally
        If SaveDialog <> Nil Then SaveDialog.Free;
      End;
    End;

    If CanStart Then Execute;
  End;
End;

{
// *************************************************************************************
// *************************************************************************************
// *************************************************************************************
// ** You have to overrite these abstract functions in your classes
// *************************************************************************************
// *************************************************************************************
// *************************************************************************************

// *************************************************************************************
// ** TmxCustomExport.BeforeExecute, 6/12/01 9:32:07 AM
// *************************************************************************************

Procedure TmxCustomExport.BeforeExecute;
Begin
        // *** It runs before start of export ***
        // *** Normaly it does nothing ***
End;

// *************************************************************************************
// ** TmxCustomExport.AfterExecute, 6/12/01 9:32:00 AM
// *************************************************************************************

Procedure TmxCustomExport.AfterExecute;
Begin
        // *** It runs after export ***
        // *** Normaly it does nothing ***
End;

// *************************************************************************************
// ** TmxCustomExport.GetFieldAlignment, 6/8/01 12:40:16 PM
// *************************************************************************************

Function TmxCustomExport.GetFieldAlignment( Index: Integer ): TmxFieldAlignment;
Begin
     // *** You have to override it to check the alignment of exportable field ***

     Result := faDefault;
End;

// *************************************************************************************
// ** TmxCustomExport.IsValidToExport, 5/18/01 3:55:40 PM
// *************************************************************************************

Function TmxCustomExport.IsValidToExport: Boolean;
Begin
     // *** You have to override it to check the validity of attached exportable component ***

     Result := TRUE;
End;

// *************************************************************************************
// ** IsFieldVisible, 5/29/01 12:04:25 PM
// *************************************************************************************

Function IsFieldVisible( Index: Integer ): Boolean; Virtual; Abstract;
Begin
      // *** WARNING: It will not be used only if xoExportInvisibles is in FOptions ***
End;

// *************************************************************************************
// ** IsRowSelected, 5/29/01 12:18:36 PM
// *************************************************************************************

Function IsRowSelected( Index: Integer ): Boolean; Virtual; Abstract;
Begin
      // *** WARNING: It will be used only if xoSelectedRowsOnly is in FOptions ***
End;

// *************************************************************************************
// ** TmxCustomExport.EOF, 5/17/01 10:52:49 AM
// *************************************************************************************

Function TmxCustomExport.EOF: Boolean;
Begin
     // *** You have to override it to check the end of record list ***

     Result := TRUE;
End;

// *************************************************************************************
// ** TmxCustomExport.GetFieldCount, 5/28/01 10:09:55 AM
// *************************************************************************************

Function TmxCustomExport.GetFieldCount: Integer;
Begin
     // *** You have to override it to get the number of columns ***

     Result := 0;
End;

// *************************************************************************************
// ** TmxCustomExport.GetFieldLength, 5/17/01 1:19:50 PM
// *************************************************************************************

Function TmxCustomExport.GetFieldLength( Index: Integer ): Integer;
Begin
     // *** You have to override it to get the length of the fields ***

     Result := 0;
End;

// *************************************************************************************
// ** TmxCustomExport.GetFieldName, 5/28/01 11:58:58 AM
// *************************************************************************************

Function TmxCustomExport.GetFieldName( Index: Integer ): String;
Begin
     // *** You have to override it to get the name of the fields ***

     Result := '';
End;

// *************************************************************************************
// ** TmxCustomExport.First, 5/17/01 11:23:52 AM
// *************************************************************************************

Procedure TmxCustomExport.First;
Begin
     // *** You have to override it to move cursor to the first record **

     FCurrent := 0;
End;

// *************************************************************************************
// ** TmxCustomExport.GetNextLine, 5/17/01 11:23:57 AM
// *************************************************************************************

Function TmxCustomExport.GetNextLine: TmxValues;
Begin
     // *** You have to override it to get the field Values **

     SetLength( Result, 2 ); // *** Do not forget to set the length of the result array ***
     Result[ 0 ]:='';
     Result[ 1 ]:=''; etc..etc...
End;

// *************************************************************************************
// ** TmxCustomExport.GetRecordCount, 5/17/01 12:21:32 PM
// *************************************************************************************

Function TmxCustomExport.GetRecordCount: Cardinal;
Begin
     // *** You have to override it to get the total record count **

     Result := 0;
End;

// *************************************************************************************
// ** I recommend to override this procedure as well... Have a look at the example
// *************************************************************************************
// ** Notification, 5/28/01 10:49:49 AM
// *************************************************************************************

Procedure **************.Notification( AComponent: TComponent; Operation: TOperation );
Begin
     Inherited Notification( AComponent, Operation );
     If Operation = opRemove Then
     Begin
          If AComponent = YourExportableComponent Then YourExportableComponent := Nil;
     End;
End;

// *************************************************************************************
// ** TmxCustomExport.IsRowSelected, 5/29/01 12:20:23 PM
// *************************************************************************************
// ** Component call it if xoSelectedRowsOnly is in Options
// *************************************************************************************

Function TmxCustomExport.IsRowSelected( Index: Integer ): Boolean;
Begin
     Result := TRUE;
End;

}

// *************************************************************************************
// *************************************************************************************
// *************************************************************************************
// ** TmxStringsExport.Create, 5/17/01 2:03:32 PM
// *************************************************************************************
// *************************************************************************************
// *************************************************************************************

Constructor TmxStringsExport.Create( AOwner: TComponent );
Begin
  Inherited Create( AOwner );
  FStrings := Nil;
  FMessages.FCaption := rsExportingStrings;
End;

// *************************************************************************************
// ** TmxStringsExport.Destroy, 5/17/01 2:03:38 PM
// *************************************************************************************

Destructor TmxStringsExport.Destroy;
Begin
  FStrings := Nil;
  Inherited Destroy;
End;

// *************************************************************************************
// ** TmxStringsExport.EOF, 5/17/01 2:03:42 PM
// *************************************************************************************

Function TmxStringsExport.EOF: Boolean;
Begin
  Result := TRUE;
  If FStrings = Nil Then Exit;

{$WARNINGS OFF}
  Result := ( FCurrent = FStrings.Count ); // *** Signed and Unsigned Types ***
{$WARNINGS ON}
End;

// *************************************************************************************
// ** TmxStringsExport.GetFieldCount, 5/28/01 10:10:13 AM
// *************************************************************************************

Function TmxStringsExport.GetFieldCount: Integer;
Begin
  Result := 1;
End;

// *************************************************************************************
// ** TmxStringsExport.First, 5/31/01 8:49:14 AM
// *************************************************************************************

Procedure TmxStringsExport.First;
Begin
     // *** Does Nothing in this class, but it cannot be abstract ***
End;

// *************************************************************************************
// ** TmxStringsExport.GetFieldLength, 5/17/01 2:03:45 PM
// *************************************************************************************

Function TmxStringsExport.GetFieldLength( Index: Integer ): Integer;
Var
  I: Integer;
Begin
  Result := 0;
  If FStrings = Nil Then Exit;

  For I := 0 To FStrings.Count - 1 Do
  Begin
    If Result < Length( FStrings[ I ] ) Then Result := Length( FStrings[ I ] );
  End;
End;

// *************************************************************************************
// ** TmxStringsExport.GetFieldName, 5/28/01 11:59:15 AM
// *************************************************************************************

Function TmxStringsExport.GetFieldName( Index: Integer ): String;
Begin
  Result := FStrings.ClassName;
End;

// *************************************************************************************
// ** TmxStringsExport.GetNextLine, 5/17/01 2:03:48 PM
// *************************************************************************************

Function TmxStringsExport.GetNextLine: TmxValues;
Begin
  SetLength( Result, 1 );
  Result[ 0 ] := FStrings[ FCurrent ];
End;

// *************************************************************************************
// ** TmxStringsExport.GetRecordCount, 5/17/01 2:03:51 PM
// *************************************************************************************

Function TmxStringsExport.GetRecordCount: Cardinal;
Begin
  Result := FStrings.Count;
End;

// *************************************************************************************
// ** TmxStringsExport.IsValidToExport, 5/18/01 3:58:13 PM
// *************************************************************************************

Function TmxStringsExport.IsValidToExport: Boolean;
Begin
  Result := FStrings <> Nil;
End;

// *************************************************************************************
// ** TmxStringsExport.IsFieldVisible, 5/29/01 12:20:26 PM
// *************************************************************************************

Function TmxStringsExport.IsFieldVisible( Index: Integer ): Boolean;
Begin
  Result := TRUE;
End;

// *************************************************************************************
// ** TmxStringsExport.IsRowSelected, 5/29/01 12:20:23 PM
// *************************************************************************************

Function TmxStringsExport.IsRowSelected( Index: Integer ): Boolean;
Begin
  Result := TRUE;
End;

// *************************************************************************************
// *************************************************************************************
// *************************************************************************************
// ** TmxDataSetExport.Create, 5/17/01 2:03:32 PM
// *************************************************************************************
// *************************************************************************************
// *************************************************************************************

Constructor TmxDataSetExport.Create( AOwner: TComponent );
Begin
  Inherited Create( AOwner );
  FDataSet := Nil;
  FMessages.FCaption := rsExportingDataSet;
End;

// *************************************************************************************
// ** TmxDataSetExport.Destroy, 5/17/01 2:03:38 PM
// *************************************************************************************

Destructor TmxDataSetExport.Destroy;
Begin
  FDataSet := Nil;
  Inherited Destroy;
End;

// *************************************************************************************
// ** TmxDataSetExport.BeforeExecute, 6/12/01 9:36:52 AM
// *************************************************************************************

Procedure TmxDataSetExport.BeforeExecute;
Begin
  Inherited BeforeExecute;
{$WARNINGS OFF}
  FBookMark := FDataSet.GetBookmark; // *** 1.42 ***
{$WARNINGS ON}
  FDataSet.DisableControls;
End;

// *************************************************************************************
// ** TmxDataSetExport.AfterExecute, 6/12/01 9:36:59 AM
// *************************************************************************************

Procedure TmxDataSetExport.AfterExecute;
Begin
  Inherited AfterExecute;
{$WARNINGS OFF}
  FDataSet.GotoBookmark( FBookMark ); // *** 1.42 ***
  FDataSet.FreeBookmark( FBookMark ); // *** 1.42 ***
{$WARNINGS ON}
  FDataSet.EnableControls;
End;

// *************************************************************************************
// ** TmxDataSetExport.EOF, 5/17/01 2:03:42 PM
// *************************************************************************************

Function TmxDataSetExport.EOF: Boolean;
Begin
  Result := FDataSet.EOF;
End;

// *************************************************************************************
// ** TmxDataSetExport.First, 5/18/01 3:31:42 PM
// *************************************************************************************

Procedure TmxDataSetExport.First;
Begin
  FDataSet.First;
End;

// *************************************************************************************
// ** TmxDataSetExport.GetFieldCount, 5/28/01 10:11:30 AM
// *************************************************************************************

Function TmxDataSetExport.GetFieldCount: Integer;
Begin
  Result := FDataSet.FieldCount;
End;

// *************************************************************************************
// ** TmxDataSetExport.GetFieldLength, 5/17/01 2:03:45 PM
// *************************************************************************************

Function TmxDataSetExport.GetFieldLength( Index: Integer ): Integer;
Begin
  Result := 0;
  If Index > GetFieldCount - 1 Then Exit;

  If FDataSet.Fields[ Index ].DataType In [ ftUnknown ] Then Result := Length( rsFieldIsUnknown );
  If FDataSet.Fields[ Index ].DataType In [ ftGraphic, ftParadoxOle, ftDBaseOle, ftBlob, ftTypedBinary, ftADT, ftArray ] Then Result := Length( rsFieldIsBinary );
  If FDataSet.Fields[ Index ].DataType In [ ftDate ] Then Result := Length( FormatDateTime( DateFormat, EncodeDate( 1999, 12, 12 ) + EncodeTime( 12, 12, 12, 12 ) ) );
  If FDataSet.Fields[ Index ].DataType In [ ftTime ] Then Result := Length( FormatDateTime( TimeFormat, EncodeDate( 1999, 12, 12 ) + EncodeTime( 12, 12, 12, 12 ) ) );
  If FDataSet.Fields[ Index ].DataType In [ ftDateTime ] Then Result := Length( FormatDateTime( DateTimeFormat, EncodeDate( 1999, 12, 12 ) + EncodeTime( 12, 12, 12, 12 ) ) );
  If FDataSet.Fields[ Index ].DataType In [ ftSmallInt, ftWord, ftAutoInc, ftInteger, ftCurrency, ftFloat, ftCursor, ftReference, ftDataSet, ftBCD, ftBytes ] Then Result := 15;
  If FDataSet.Fields[ Index ].DataType In [ ftBoolean ] Then
  Begin
    Result := Length( FMessages.FalseText );
    If Result < Length( FMessages.TrueText ) Then Result := Length( FMessages.TrueText );
  End;
  If FDataSet.Fields[ Index ].DataType In [ ftString, ftVarBytes, ftFmtMemo, ftMemo ] Then Result := FDataSet.Fields[ Index ].Size;
End;

// *************************************************************************************
// ** TmxDataSetExport.GetFieldName, 5/28/01 12:01:41 PM
// *************************************************************************************

Function TmxDataSetExport.GetFieldName( Index: Integer ): String;
Begin
  Result := '';
  If Index > GetFieldCount - 1 Then Exit;

     // ** 1.42 Bug fix *** Fields insted of FieldDefs

  If FDataSet.Fields[ Index ].DisplayName <> '' Then
    Result := FDataSet.Fields[ Index ].DisplayName Else
    Result := FDataSet.Fields[ Index ].Name;
End;

// *************************************************************************************
// ** TmxDataSetExport.GetNextLine, 5/17/01 2:03:48 PM
// *************************************************************************************

Function TmxDataSetExport.GetNextLine: TmxValues;
Var
  I: Integer;
Begin
  SetLength( Result, GetFieldCount );

     {For I := 0 To GetFieldCount - 1 Do
     Begin
          If FDataSet.Fields[ I ].DataType In [ ftUnknown ] Then Result[ I ] := rsFieldIsUnknown;
          If FDataSet.Fields[ I ].DataType In [ ftGraphic, ftParadoxOle, ftDBaseOle, ftBlob, ftTypedBinary, ftADT, ftArray ] Then Result[ I ] := rsFieldIsBinary;
          If FDataSet.Fields[ I ].DataType In [ ftDate ] Then Result[ I ] := FormatDateTime( DateFormat, FDataSet.Fields[ I ].AsDateTime );
          If FDataSet.Fields[ I ].DataType In [ ftTime ] Then Result[ I ] := FormatDateTime( TimeFormat, FDataSet.Fields[ I ].AsDateTime );
          If FDataSet.Fields[ I ].DataType In [ ftDateTime ] Then Result[ I ] := FormatDateTime( DateTimeFormat, FDataSet.Fields[ I ].AsDateTime );
          If FDataSet.Fields[ I ].DataType In [ ftSmallInt, ftWord, ftAutoInc, ftInteger, ftCurrency, ftFloat, ftCursor, ftReference, ftDataSet, ftBCD, ftBytes ] Then Result[ I ] := FDataSet.Fields[ I ].asVariant;
          If FDataSet.Fields[ I ].DataType In [ ftBoolean ] Then
          Begin
               If FDataSet.Fields[ I ].AsBoolean Then
                    Result[ I ] := FMessages.TrueText Else
                    Result[ I ] := FMessages.FalseText;
          End;
          If FDataSet.Fields[ I ].DataType In [ ftString, ftVarBytes, ftFmtMemo, ftMemo ] Then Result[ I ] := FDataSet.Fields[ I ].AsVariant;
     End;}

  For I := 0 To GetFieldCount - 1 Do
  Begin
    If FDataSet.Fields[ I ].DataType In [ ftUnknown ] Then Result[ I ] := rsFieldIsUnknown
    Else If FDataSet.Fields[ I ].DataType In [ ftGraphic, ftParadoxOle, ftDBaseOle, ftBlob, ftTypedBinary, ftADT, ftArray ] Then Result[ I ] := rsFieldIsBinary
    Else If FDataSet.Fields[ I ].DataType In [ ftBoolean ] Then
    Begin
      If FDataSet.Fields[ I ].AsBoolean Then
        Result[ I ] := FMessages.TrueText Else
        Result[ I ] := FMessages.FalseText;
    End
    Else If FDataSet.Fields[ I ].DataType In [ ftString, ftVarBytes, ftFmtMemo, ftMemo ] Then Result[ I ] := FDataSet.Fields[ I ].AsVariant
    Else Result[ I ] := FDataSet.Fields[ I ].DisplayText;
  End;

     //Result[ 0 ] := NULL; // ** 1.42 HTML NULL check ***

  FDataSet.Next;
End;

// *************************************************************************************
// ** TmxDataSetExport.GetRecordCount, 5/17/01 2:03:51 PM
// *************************************************************************************
// ** I do not use RecordCount property, because It gives incorrect data in TDataSet level
// *************************************************************************************

Function TmxDataSetExport.GetRecordCount: Cardinal;
Begin
  Result := 0;
  First;

  While Not FDataSet.EOF Do
  Begin
    Inc( Result );
    FDataSet.Next;
  End;
End;

// *************************************************************************************
// ** TmxDataSetExport.Notification, 5/18/01 3:03:57 PM
// *************************************************************************************

Procedure TmxDataSetExport.Notification( AComponent: TComponent; Operation: TOperation );
Begin
  Inherited Notification( AComponent, Operation );
  If Operation = opRemove Then
  Begin
    If AComponent = DataSet Then FDataSet := Nil;
  End;
End;

// *************************************************************************************
// ** TmxDataSetExport.IsValidToExport, 5/18/01 3:56:21 PM
// *************************************************************************************

Function TmxDataSetExport.IsValidToExport: Boolean;
Begin
  Result := Not ( ( FDataSet = Nil ) Or ( Not FDataSet.Active ) );
End;

// *************************************************************************************
// ** TmxDataSetExport.IsRowSelected, 5/29/01 12:25:28 PM
// *************************************************************************************

Function TmxDataSetExport.IsRowSelected( Index: Integer ): Boolean;
Begin
  Result := TRUE;
End;

// *************************************************************************************
// ** TmxDataSetExport.IsFieldVisible, 5/29/01 12:26:06 PM
// *************************************************************************************

Function TmxDataSetExport.IsFieldVisible( Index: Integer ): Boolean;
Begin
  Result := FALSE;
  If Index > FDataSet.Fields.Count - 1 Then Exit;
  Result := FDataSet.Fields[ Index ].Visible;
End;

// *************************************************************************************
// *************************************************************************************
// *************************************************************************************
// ** TmxDBGridExport.Create, 5/17/01 2:03:32 PM
// *************************************************************************************
// *************************************************************************************
// *************************************************************************************

Constructor TmxDBGridExport.Create( AOwner: TComponent );
Begin
  Inherited Create( AOwner );
  FDBGrid := Nil;
  FMessages.FCaption := rsExportingDBGrig;
End;

// *************************************************************************************
// ** TmxDBGridExport.Destroy, 5/17/01 2:03:38 PM
// *************************************************************************************

Destructor TmxDBGridExport.Destroy;
Begin
  FDBGrid := Nil;
  Inherited Destroy;
End;

// *************************************************************************************
// ** TmxDBGridExport.BeforeExecute, 6/12/01 9:36:52 AM
// *************************************************************************************

Procedure TmxDBGridExport.BeforeExecute;
Begin
  Inherited BeforeExecute;
{$WARNINGS OFF}
  FBookMark := FDBGrid.DataSource.DataSet.GetBookmark; // *** 1.42 ***
{$WARNINGS ON}
  FDBGrid.DataSource.DataSet.DisableControls;
End;

// *************************************************************************************
// ** TmxDBGridExport.AfterExecute, 6/12/01 9:36:59 AM
// *************************************************************************************

Procedure TmxDBGridExport.AfterExecute;
Begin
  Inherited AfterExecute;
{$WARNINGS OFF}
  FDBGrid.DataSource.DataSet.GotoBookmark( FBookMark ); // *** 1.42 ***
  FDBGrid.DataSource.DataSet.FreeBookmark( FBookMark ); // *** 1.42 ***
{$WARNINGS ON}
  FDBGrid.DataSource.DataSet.EnableControls;
End;

// *************************************************************************************
// ** TmxDBGridExport.EOF, 5/17/01 2:03:42 PM
// *************************************************************************************

Function TmxDBGridExport.EOF: Boolean;
Begin
{$WARNINGS OFF}
  Result := FCurrent = FDBGrid.DataSource.DataSet.RecordCount;
{$WARNINGS ON}
End;

// *************************************************************************************
// ** TmxDBGridExport.First, 5/18/01 3:31:42 PM
// *************************************************************************************

Procedure TmxDBGridExport.First;
Begin
  FDBGrid.DataSource.DataSet.First;
End;

// *************************************************************************************
// ** TmxDBGridExport.GetFieldCount, 5/28/01 10:11:30 AM
// *************************************************************************************

Function TmxDBGridExport.GetFieldCount: Integer;
Begin
  Result := FDBGrid.FieldCount;
End;

// *************************************************************************************
// ** TmxDBGridExport.GetFieldLength, 5/17/01 2:03:45 PM
// *************************************************************************************

Function TmxDBGridExport.GetFieldLength( Index: Integer ): Integer;
Begin
  Result := 0;
  If Index > GetFieldCount - 1 Then Exit;

  If FDBGrid.Fields[ Index ].DataType In [ ftUnknown ] Then Result := Length( rsFieldIsUnknown );
  If FDBGrid.Fields[ Index ].DataType In [ ftGraphic, ftParadoxOle, ftDBaseOle, ftBlob, ftTypedBinary, ftADT, ftArray ] Then Result := Length( rsFieldIsBinary );
  If FDBGrid.Fields[ Index ].DataType In [ ftDate ] Then Result := Length( FormatDateTime( DateFormat, EncodeDate( 1999, 12, 12 ) + EncodeTime( 12, 12, 12, 12 ) ) );
  If FDBGrid.Fields[ Index ].DataType In [ ftTime ] Then Result := Length( FormatDateTime( TimeFormat, EncodeDate( 1999, 12, 12 ) + EncodeTime( 12, 12, 12, 12 ) ) );
  If FDBGrid.Fields[ Index ].DataType In [ ftDateTime ] Then Result := Length( FormatDateTime( DateTimeFormat, EncodeDate( 1999, 12, 12 ) + EncodeTime( 12, 12, 12, 12 ) ) );
  If FDBGrid.Fields[ Index ].DataType In [ ftSmallInt, ftWord, ftAutoInc, ftInteger, ftCurrency, ftFloat, ftCursor, ftReference, ftDataSet, ftBCD, ftBytes ] Then Result := 15;
  If FDBGrid.Fields[ Index ].DataType In [ ftBoolean ] Then
  Begin
    Result := Length( FMessages.FalseText );
    If Result < Length( FMessages.TrueText ) Then Result := Length( FMessages.TrueText );
  End;
  If FDBGrid.Fields[ Index ].DataType In [ ftString, ftVarBytes, ftFmtMemo, ftMemo ] Then Result := FDBGrid.Fields[ Index ].Size;
End;

// *************************************************************************************
// ** TmxDBGridExport.GetFieldName, 5/28/01 12:01:41 PM
// *************************************************************************************

Function TmxDBGridExport.GetFieldName( Index: Integer ): String;
Var
  I: Integer;
Begin
  Result := '';
  If Index > GetFieldCount - 1 Then Exit;

  //
  if not Assigned(FDBGrid.Fields[ Index ]) then begin
    Exit;
  end;

  If FDBGrid.Fields[ Index ].DisplayName <> '' Then
    Result := FDBGrid.Fields[ Index ].DisplayName Else
    Result := FDBGrid.Fields[ Index ].Name;

  For I := 0 To FDBGrid.Columns.Count - 1 Do
  Begin
    If FDBGrid.Columns[ I ].Field = FDBGrid.Fields[ Index ] Then
    Begin
      If FDBGrid.Columns[ I ].Title.Caption <> '' Then Result := FDBGrid.Columns[ I ].Title.Caption;
      Break;
    End;
  End;
End;

// *************************************************************************************
// ** TmxDBGridExport.GetNextLine, 5/17/01 2:03:48 PM
// *************************************************************************************

Function TmxDBGridExport.GetNextLine: TmxValues;
Var
  I: Integer;
Begin
  SetLength( Result, GetFieldCount );

  For I := 0 To GetFieldCount - 1 Do
  Begin
          {If FDBGrid.Fields[ I ].DataType In [ ftUnknown ] Then Result[ I ] := rsFieldIsUnknown;
          If FDBGrid.Fields[ I ].DataType In [ ftGraphic, ftParadoxOle, ftDBaseOle, ftBlob, ftTypedBinary, ftADT, ftArray ] Then Result[ I ] := rsFieldIsBinary;
          If FDBGrid.Fields[ I ].DataType In [ ftDate ] Then Result[ I ] := FormatDateTime( DateFormat, FDBGrid.Fields[ I ].AsDateTime );
          If FDBGrid.Fields[ I ].DataType In [ ftTime ] Then Result[ I ] := FormatDateTime( TimeFormat, FDBGrid.Fields[ I ].AsDateTime );
          If FDBGrid.Fields[ I ].DataType In [ ftDateTime ] Then Result[ I ] := FormatDateTime( DateTimeFormat, FDBGrid.Fields[ I ].AsDateTime );
          If FDBGrid.Fields[ I ].DataType In [ ftSmallInt, ftWord, ftAutoInc, ftInteger, ftCurrency, ftFloat, ftCursor, ftReference, ftDataSet, ftBCD, ftBytes ] Then Result[ I ] := FDBGrid.Fields[ I ].asVariant;
          If FDBGrid.Fields[ I ].DataType In [ ftBoolean ] Then
          Begin
               If FDBGrid.Fields[ I ].AsBoolean Then
                    Result[ I ] := FMessages.TrueText Else
                    Result[ I ] := FMessages.FalseText;
          End;
          If FDBGrid.Fields[ I ].DataType In [ ftString, ftVarBytes, ftFmtMemo, ftMemo ] Then Result[ I ] := FDBGrid.Fields[ I ].AsVariant;}

    // Asignado el campo?
    if Assigned(FDBGrid.Columns[ I ].Field) then begin
      Result[ I ] := FDBGrid.Columns[ I ].Field.DisplayText;
    end
    else begin
      Result[ I ] := '';
    end;
  End;

  FDBGrid.DataSource.DataSet.Next;
End;

// *************************************************************************************
// ** TmxDBGridExport.GetRecordCount, 5/17/01 2:03:51 PM
// *************************************************************************************
// ** I do not use RecordCount property, because It gives incorrect data in TDataSet level
// *************************************************************************************

Function TmxDBGridExport.GetRecordCount: Cardinal;
Var
  TempDataSource: TDataSource;
Begin
  Result := 0;
  First;

     // *** It is not the best solution, but I will try to find a new one in the future **

  TempDataSource := FDBGrid.DataSource;

  FDBGrid.DataSource := Nil;

  While Not TempDataSource.DataSet.EOF Do
  Begin
    Inc( Result );
    TempDataSource.DataSet.Next;
  End;

  FDBGrid.DataSource := TempDataSource;
End;

// *************************************************************************************
// ** TmxDBGridExport.Notification, 5/18/01 3:03:57 PM
// *************************************************************************************

Procedure TmxDBGridExport.Notification( AComponent: TComponent; Operation: TOperation );
Begin
  Inherited Notification( AComponent, Operation );
  If Operation = opRemove Then
  Begin
    If AComponent = DBGrid Then FDBGrid := Nil;
  End;
End;

// *************************************************************************************
// ** TmxDBGridExport.IsValidToExport, 5/18/01 3:56:21 PM
// *************************************************************************************

Function TmxDBGridExport.IsValidToExport: Boolean;
Begin
  Result := Not ( ( FDBGrid = Nil ) Or ( Not FDBGrid.DataSource.DataSet.Active ) );
End;

// *************************************************************************************
// ** TmxDBGridExport.IsRowSelected, 5/29/01 12:25:28 PM
// *************************************************************************************

Function TmxDBGridExport.IsRowSelected( Index: Integer ): Boolean;
Begin
  Result := FALSE;

  If Not ( dgRowSelect In FDBGrid.Options ) Then Exit;

  Result := FDBGrid.SelectedRows.CurrentRowSelected;
End;

// *************************************************************************************
// ** TmxDBGridExport.IsFieldVisible, 5/29/01 12:26:06 PM
// *************************************************************************************

Function TmxDBGridExport.IsFieldVisible( Index: Integer ): Boolean;
Var
  I: Integer;
Begin
  Result := FALSE;
  If Index > FDBGrid.FieldCount - 1 Then Exit;

  For I := 0 To FDBGrid.Columns.Count - 1 Do
  Begin
    If FDBGrid.Columns[ I ].Field = FDBGrid.Fields[ Index ] Then
    Begin
      Result := FDBGrid.Columns[ I ].Visible;
      Break;
    End;
  End;
End;

// *************************************************************************************
// ** TmxDBGridExport.GetFieldAlignment, 6/8/01 12:41:09 PM
// *************************************************************************************

Function TmxDBGridExport.GetFieldAlignment( Index: Integer ): TmxFieldAlignment;
Var
  I: Integer;
Begin
  Result := faDefault;
  If Index > FDBGrid.FieldCount - 1 Then Exit;

  For I := 0 To FDBGrid.Columns.Count - 1 Do
  Begin
    If FDBGrid.Columns[ I ].Field = FDBGrid.Fields[ Index ] Then
    Begin
      Case FDBGrid.Columns[ I ].Alignment Of
        taLeftJustify: Result := faLeft;
        taRightJustify: Result := faRight;
        taCenter: Result := faCenter;
      End;
      Break;
    End;
  End;
End;

// *************************************************************************************
// *************************************************************************************
// *************************************************************************************
// ** TmxStringGridExport.Create, 5/17/01 2:03:32 PM
// *************************************************************************************
// *************************************************************************************
// *************************************************************************************

Constructor TmxStringGridExport.Create( AOwner: TComponent );
Begin
  Inherited Create( AOwner );
  FStringGrid := Nil;
  FFieldLength := TStringList.Create;
  FMessages.FCaption := rsExportingStringGrig;
End;

// *************************************************************************************
// ** TmxStringGridExport.Destroy, 5/17/01 2:03:38 PM
// *************************************************************************************

Destructor TmxStringGridExport.Destroy;
Begin
  FStringGrid := Nil;
  FFieldLength.Free;
  Inherited Destroy;
End;

// *************************************************************************************
// ** TmxStringGridExport.EOF, 5/17/01 2:03:42 PM
// *************************************************************************************

Function TmxStringGridExport.EOF: Boolean;
Begin
{$WARNINGS OFF}
  Result := FCurrent = FStringGrid.RowCount;
{$WARNINGS ON}
End;

// *************************************************************************************
// ** TmxStringGridExport.First, 5/18/01 3:31:42 PM
// *************************************************************************************

Procedure TmxStringGridExport.First;
Begin
  If FStringGrid.FixedRows = 0 Then FCurrent := 0 Else FCurrent := FStringGrid.FixedRows;
End;

// *************************************************************************************
// ** TmxStringGridExport.GetFieldCount, 5/28/01 10:11:30 AM
// *************************************************************************************

Function TmxStringGridExport.GetFieldCount: Integer;
Var
  X, I: Integer;
  TempInt: Integer;
Begin
  Result := FStringGrid.ColCount;

     // *** I fill up FFieldLength list to store the maximum  **
     // *** field lengths to improve the speed of export...

  FFieldLength.Clear;

  For I := 0 To FStringGrid.ColCount - 1 Do
  Begin
    TempInt := 0;

    For X := 0 To FStringGrid.RowCount - 1 Do
    Begin
      If Length( FStringGrid.Cells[ I, X ] ) > TempInt Then
        TempInt := Length( FStringGrid.Cells[ I, X ] );
    End;

    FFieldLength.Add( IntToStr( TempInt ) );
  End;
End;

// *************************************************************************************
// ** TmxStringGridExport.GetFieldLength, 5/17/01 2:03:45 PM
// *************************************************************************************

Function TmxStringGridExport.GetFieldLength( Index: Integer ): Integer;
Var
  ResCode: Integer;
  TempInt: Integer;
Begin
  Result := 0;
  If Index > GetFieldCount - 1 Then Exit;

  Val( FFieldLength[ Index ], TempInt, ResCode );
  If ResCode = 0 Then Result := TempInt;
End;

// *************************************************************************************
// ** TmxStringGridExport.GetFieldName, 5/28/01 12:01:41 PM
// *************************************************************************************

Function TmxStringGridExport.GetFieldName( Index: Integer ): String;
Begin
  Result := '';
  If Index > GetFieldCount - 1 Then Exit;

  If FStringGrid.FixedRows = 0 Then
  Begin
    Result := Format( rsStringGridHeader, [ Index ] );
    Exit;
  End;

  Result := FStringGrid.Cells[ Index, 0 ];
End;

// *************************************************************************************
// ** TmxStringGridExport.GetNextLine, 5/17/01 2:03:48 PM
// *************************************************************************************

Function TmxStringGridExport.GetNextLine: TmxValues;
Var
  I: Integer;
Begin
  SetLength( Result, GetFieldCount );

  For I := 0 To GetFieldCount - 1 Do Result[ I ] := FStringGrid.Cells[ I, FCurrent ];
End;

// *************************************************************************************
// ** TmxStringGridExport.GetRecordCount, 5/17/01 2:03:51 PM
// *************************************************************************************
// ** I do not use RecordCount property, because It gives incorrect data in TDataSet level
// *************************************************************************************

Function TmxStringGridExport.GetRecordCount: Cardinal;
Begin
  Result := FStringGrid.RowCount;
End;

// *************************************************************************************
// ** TmxStringGridExport.Notification, 5/18/01 3:03:57 PM
// *************************************************************************************

Procedure TmxStringGridExport.Notification( AComponent: TComponent; Operation: TOperation );
Begin
  Inherited Notification( AComponent, Operation );
  If Operation = opRemove Then
  Begin
    If AComponent = StringGrid Then FStringGrid := Nil;
  End;
End;

// *************************************************************************************
// ** TmxStringGridExport.IsValidToExport, 5/18/01 3:56:21 PM
// *************************************************************************************

Function TmxStringGridExport.IsValidToExport: Boolean;
Begin
  Result := Not ( FStringGrid = Nil );
End;

// *************************************************************************************
// ** TmxStringGridExport.IsRowSelected, 5/29/01 12:25:28 PM
// *************************************************************************************

Function TmxStringGridExport.IsRowSelected( Index: Integer ): Boolean;
Begin
  Result := FALSE;
  If Not ( goRowSelect In FStringGrid.Options ) Then Exit;
  Result := ( FStringGrid.Selection.Top <= Index ) And ( FStringGrid.Selection.Bottom >= Index );
End;

// *************************************************************************************
// ** TmxStringGridExport.IsFieldVisible, 5/29/01 12:26:06 PM
// *************************************************************************************

Function TmxStringGridExport.IsFieldVisible( Index: Integer ): Boolean;
Begin
  Result := TRUE;
  If Not ( goRowSelect In FStringGrid.Options ) Then Exit;
  Result := ( FStringGrid.Selection.Left <= Index ) And ( FStringGrid.Selection.Right >= Index );
End;

// *************************************************************************************
// ** TmxStringGridExport.GetFieldAlignment, 6/8/01 12:41:09 PM
// *************************************************************************************

Function TmxStringGridExport.GetFieldAlignment( Index: Integer ): TmxFieldAlignment;
Begin
  Result := faDefault;
End;

// *************************************************************************************
// *************************************************************************************
// *************************************************************************************
// ** TmxListViewExport.Create, 5/17/01 2:03:32 PM
// *************************************************************************************
// *************************************************************************************
// *************************************************************************************

Constructor TmxListViewExport.Create( AOwner: TComponent );
Begin
  Inherited Create( AOwner );
  FListView := Nil;
  FMessages.FCaption := rsExportingDataSet;
End;

// *************************************************************************************
// ** TmxListViewExport.Destroy, 5/17/01 2:03:38 PM
// *************************************************************************************

Destructor TmxListViewExport.Destroy;
Begin
  FListView := Nil;
  Inherited Destroy;
End;

// *************************************************************************************
// ** TmxListViewExport.EOF, 5/17/01 2:03:42 PM
// *************************************************************************************

Function TmxListViewExport.EOF: Boolean;
Begin
{$WARNINGS OFF}
  Result := FCurrent = FListView.Items.Count;
{$WARNINGS ON}
End;

// *************************************************************************************
// ** TmxListViewExport.GetFieldCount, 5/28/01 10:11:30 AM
// *************************************************************************************

Function TmxListViewExport.GetFieldCount: Integer;
Begin
  Result := FListView.Columns.Count;
End;

// *************************************************************************************
// ** TmxListViewExport.GetFieldLength, 5/17/01 2:03:45 PM
// *************************************************************************************

Function TmxListViewExport.GetFieldLength( Index: Integer ): Integer;
Var
  I: Integer;
Begin
  Result := 0;
  If Index > FListView.Columns.Count - 1 Then Exit;
  For I := 0 To FListView.Items.Count - 1 Do
  Begin
    If Index = 0 Then
    Begin
      If Length( FListView.Items[ I ].Caption ) > Result Then Result := Length( FListView.Items[ I ].Caption );
    End
    Else
    Begin
      If Length( FListView.Items[ I ].SubItems[ Index - 1 ] ) > Result Then Result := Length( FListView.Items[ I ].SubItems[ Index - 1 ] );
    End;
  End;
End;

// *************************************************************************************
// ** TmxListViewExport.GetFieldName, 5/28/01 12:01:41 PM
// *************************************************************************************

Function TmxListViewExport.GetFieldName( Index: Integer ): String;
Begin
  Result := '';
  If Index > GetFieldCount - 1 Then Exit;
  Result := FListView.Columns[ Index ].Caption;
End;

// *************************************************************************************
// ** TmxListViewExport.GetNextLine, 5/17/01 2:03:48 PM
// *************************************************************************************

Function TmxListViewExport.GetNextLine: TmxValues;
Var
  I: Integer;
Begin
  SetLength( Result, GetFieldCount );

  For I := 0 To GetFieldCount - 1 Do
  Begin
    If I = 0 Then
    Begin
      Result[ I ] := FListView.Items[ FCurrent ].Caption;
    End
    Else
    Begin
      Result[ I ] := FListView.Items[ FCurrent ].SubItems[ I - 1 ];
    End;
  End;
End;

// *************************************************************************************
// ** TmxListViewExport.GetRecordCount, 5/17/01 2:03:51 PM
// *************************************************************************************
// ** I do not use RecordCount property, because It gives incorrect data in TDataSet level
// *************************************************************************************

Function TmxListViewExport.GetRecordCount: Cardinal;
Begin
  First;
  Result := FListView.Items.Count;
End;

// *************************************************************************************
// ** TmxListViewExport.Notification, 5/18/01 3:03:57 PM
// *************************************************************************************

Procedure TmxListViewExport.Notification( AComponent: TComponent; Operation: TOperation );
Begin
  Inherited Notification( AComponent, Operation );
  If Operation = opRemove Then
  Begin
    If AComponent = ListView Then FListView := Nil;
  End;
End;

// *************************************************************************************
// ** TmxListViewExport.IsValidToExport, 5/18/01 3:56:21 PM
// *************************************************************************************

Function TmxListViewExport.IsValidToExport: Boolean;
Begin
  Result := Not ( FListView = Nil );
End;

// *************************************************************************************
// ** TmxListViewExport.IsRowSelected, 5/29/01 12:25:28 PM
// *************************************************************************************

Function TmxListViewExport.IsRowSelected( Index: Integer ): Boolean;
Begin
  Result := FListView.Items[ Index ].Selected;
End;

// *************************************************************************************
// ** TmxListViewExport.IsFieldVisible, 5/29/01 12:26:06 PM
// *************************************************************************************

Function TmxListViewExport.IsFieldVisible( Index: Integer ): Boolean;
Begin
  Result := TRUE;
End;

Procedure TmxListViewExport.First;
Begin
  FCurrent := 0;
End;

// *************************************************************************************
// *************************************************************************************
// *************************************************************************************
// ** TmxAnyExport.Create, 5/17/01 2:03:32 PM
// *************************************************************************************
// *************************************************************************************
// *************************************************************************************

Constructor TmxAnyExport.Create( AOwner: TComponent );
Begin
  Inherited Create( AOwner );
  FMessages.FCaption := rsExportingAny;
  FRecordCount := 0;
  FAnyFieldCount := 0;
End;

// *************************************************************************************
// ** TmxAnyExport.Destroy, 5/17/01 2:03:38 PM
// *************************************************************************************

Destructor TmxAnyExport.Destroy;
Begin
  Inherited Destroy;
End;

// *************************************************************************************
// ** TmxAnyExport.EOF, 5/17/01 2:03:42 PM
// *************************************************************************************

Function TmxAnyExport.EOF: Boolean;
Begin
  Result := ( FCurrent = FAnyRecordCount );
End;

// *************************************************************************************
// ** TmxAnyExport.GetFieldCount, 5/28/01 10:10:13 AM
// *************************************************************************************

Function TmxAnyExport.GetFieldCount: Integer;
Begin
  Result := FAnyFieldCount;
End;

// *************************************************************************************
// ** TmxAnyExport.First, 5/31/01 8:49:14 AM
// *************************************************************************************

Procedure TmxAnyExport.First;
Begin
  FCurrent := 0;
  If Assigned( FOnGetExportInfo ) Then FOnGetExportInfo( Self, FAnyRecordCount, FAnyFieldCount );
End;

// *************************************************************************************
// ** TmxAnyExport.GetFieldLength, 5/17/01 2:03:45 PM
// *************************************************************************************

Function TmxAnyExport.GetFieldLength( Index: Integer ): Integer;
Begin
  Result := 255;
  If Assigned( FOnGetFieldLength ) Then FOnGetFieldLength( Self, Index, Result );
End;

// *************************************************************************************
// ** TmxAnyExport.GetFieldName, 5/28/01 11:59:15 AM
// *************************************************************************************

Function TmxAnyExport.GetFieldName( Index: Integer ): String;
Begin
  Result := '';
  If Assigned( FOnGetFieldName ) Then FOnGetFieldName( Self, Index, Result );
End;

// *************************************************************************************
// ** TmxAnyExport.GetNextLine, 5/17/01 2:03:48 PM
// *************************************************************************************

Function TmxAnyExport.GetNextLine: TmxValues;
Begin
  SetLength( Result, FAnyFieldCount );
  If Assigned( FOnGetExportData ) Then FOnGetExportData( Self, FCurrent, Result );
End;

// *************************************************************************************
// ** TmxAnyExport.GetRecordCount, 5/17/01 2:03:51 PM
// *************************************************************************************

Function TmxAnyExport.GetRecordCount: Cardinal;
Begin
  Result := FAnyRecordCount;
End;

// *************************************************************************************
// ** TmxAnyExport.IsValidToExport, 5/18/01 3:58:13 PM
// *************************************************************************************

Function TmxAnyExport.IsValidToExport: Boolean;
Begin
  Result := True;
End;

// *************************************************************************************
// ** TmxAnyExport.IsFieldVisible, 5/29/01 12:20:26 PM
// *************************************************************************************

Function TmxAnyExport.IsFieldVisible( Index: Integer ): Boolean;
Begin
  Result := TRUE;
End;

// *************************************************************************************
// ** TmxAnyExport.IsRowSelected, 5/29/01 12:20:23 PM
// *************************************************************************************

Function TmxAnyExport.IsRowSelected( Index: Integer ): Boolean;
Begin
  Result := TRUE;
End;

End.

