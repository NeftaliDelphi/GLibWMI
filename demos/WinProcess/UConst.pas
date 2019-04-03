unit UConst;

interface

uses
  Messages, Forms;

// Mensages
const
  CM_AFTERSHOW = WM_USER + 7841;

// Otras
const
  STR_EMPTY = '';

// Constantes para TaskManager
const
  DEBUGGER_KEY = 'Software\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\taskmgr.exe';
  DEBUGGER_VALUENAME = 'Debugger';

// constantes para terminar priocesos
const
  EMSG_KILL_PROCESS = '¿Realmente deseas finalizar este proceso <%s>?'+#13+#10;
  EMSG_TITLE_KILLPROCESS = 'Finalizar el proceso';


  
implementation



end.
