unit UConstantes;

//=========================================================================
//
// I N T E R F A C E
//
//=========================================================================
interface

// constantes varias
const
  STR_EMPTY = '';
  CHAR_CRLF = #10#13;
  CHAR_SPACE = ' ';
  CHAR_TWO_POINTS = ':';
  CHAR_ARRAY_OPEN = '{';
  CHAR_ARRAY_CLOSE = '}';
  CHAR_COMMA = ',';
  CHAR_EQUAL = '=';
  CHAR_DCOMILLAS = '"';
  CHAR_COMMAPOINT = ';';


  LOCALHOST = '.';

// Classes para WMI                                    
const
  WIN32_BIOS_CLASS = 'Win32_BIOS';
  WIN32_DISKDRIVE_CLASS = 'Win32_DiskDrive';
  WIN32_COMPUTERPRODUCT_CLASS = 'Win32_ComputerSystemProduct';
  WIN32_PROCESSOR_CLASS = 'Win32_Processor';
  WIN32_DISPLAYCONFIGURATION_CLASS = 'Win32_DisplayConfiguration';
  WIN32_BATTERY_CLASS = 'Win32_Battery';
  WIN32_PHYSICALMEMORY_CLASS = 'Win32_PhysicalMemory';
  WIN32_PROCESS_CLASS = 'Win32_Process';
  WIN32_SERVICE_CLASS = 'Win32_Service';
  WIN32_DESKTOPMONITOR_CLASS = 'Win32_DesktopMonitor';
  WIN32_COMPUTERSYSTEM_CLASS = 'Win32_ComputerSystem';
  WIN32_STARTUPCOMMAND_CLASS = 'Win32_StartupCommand';
  WIN32_PRINTJOB_CLASS = 'Win32_PrintJob';
  WIN32_USBCONTROLLER_CLASS = 'Win32_USBController';

// Pestañas de instalacion
const
  GLIB_PACKAGE = 'GLib';
  GLIB_PACKAGE_WMI = 'GLibWMI';
  GLIB_PACKAGE_WMISQL = 'GLibWmiSQL';

// Constantes WMI
const
  STR_CIM2_ROOT = 'root\cimv2';


// version de los componentes
const
  GLIBSI_VERSION = '[2.2b]';
  GLIBSI_LBL = 'Componentes de GLibWMI    %s';



//=========================================================================
//
// I M P L E M E N T A T I O N
//
//=========================================================================
implementation

end.
