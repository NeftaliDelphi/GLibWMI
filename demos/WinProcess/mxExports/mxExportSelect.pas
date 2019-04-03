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

Unit mxExportSelect;

Interface

Uses
  Classes, Controls, Forms, 
  StdCtrls, ExtCtrls, ImgList;

Type
  Tfrm_Selection = Class( TForm )
    btn_Selection: TButton;
    btn_Cancel: TButton;
    GroupBox: TGroupBox;
    SelectionCombo: TComboBox;
    rdo_View: TRadioButton;
    rdo_File: TRadioButton;
    ImageList: TImageList;
    IconImage: TPaintBox;
  Private
    { Private declarations }
  Public
    { Public declarations }
  End;

Implementation

{$R *.DFM}

End.

