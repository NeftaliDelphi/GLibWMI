unit UPLConstantes;

//=========================================================================
//
// I N T E R F A C E
//
//=========================================================================
interface


uses
  {Generales} Messages;

// registro
const
  DEBUGGER_KEY = 'Software\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\taskmgr.exe';
  DEBUGGER_VALUENAME = 'Debugger';

// Mensages
const
  CM_AFTERSHOW = WM_USER + 7800;

// constantes varias
const
  DOUBLE_BACKSLASH = '\\';
  SIMPLE_BACKSLASH = '\';
  INI_MARK = '\"';
  END_MARK = '"\';


// Constantes varias
const
  STR_EMPTY         = '';
  CHAR_BACKSLASH    = '\';
  MASK_ALL_FILES    = '*.*';
  CHAR_POINT        = '.';
  SP_SENDMAIL       = '_sp_SendMail';
  CONFIG_EXT        = '.ini';
  POSITION_SECTION  = 'Positions';
  OPTION_SECTION    = 'Opciones';



//=========================================================================
//
// I M P L E M E N T A T I O N
//
//=========================================================================
implementation

end.
