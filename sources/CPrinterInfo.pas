{
TPrinterInfo Component Version 3.1 - Suite GLibWMI
Copyright (©) 2020,  by Germán Estévez (Neftalí)



Utilización/Usage:
(ES) Basta con "soltar" el componente y activarlo.
(EN) Place the component in the form and active it.

MSDN Info:
https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-printer

=========================================================================
IMPORTANTE PROGRAMADORES: Por favor, si tienes comentarios, mejoras, ampliaciones,
errores y/o cualquier otro tipo de sugerencia envíame un mail a:
german_ral@hotmail.com

IMPORTANT PROGRAMMERS: please, if you have comments, improvements, enlargements,
errors and/or any another type of suggestion send a mail to:
german_ral@hotmail.com
=========================================================================

@author Germán Estévez (Neftalí)
@web    http://neftali.clubDelphi.com
@cat    Package GLibWMI
}
unit CPrinterInfo;

//=========================================================================
//
// I N T E R F A C E
//
//=========================================================================
interface

uses
  Classes, Controls, CWMIBase;

type

  {%ClassProperties PropertiesClass%}
  //: Clase para definir las propiedades del componente.
  TPrinterProperties = class(TPersistent)
  private
    {%PrivateClassVars PropertiesClass%}
    FAttributes:integer;
    FAvailability:integer;
    FAvailableJobSheets:TArrString;
    FAvailableJobSheetsCount:integer;
    FAvailableJobSheetsAsString:string;    FAveragePagesPerMinute:integer;
    FCapabilities:TArrInteger;
    FCapabilitiesCount:integer;
    FCapabilitiesAsString:string;    FCapabilityDescriptions:TArrString;
    FCapabilityDescriptionsCount:integer;
    FCapabilityDescriptionsAsString:string;    FCaption:string;
    FCharSetsSupported:TArrString;
    FCharSetsSupportedCount:integer;
    FCharSetsSupportedAsString:string;    FComment:string;
    FConfigManagerErrorCode:integer;
    FConfigManagerUserConfig:boolean;
    FCreationClassName:string;
    FCurrentCapabilities:TArrInteger;
    FCurrentCapabilitiesCount:integer;
    FCurrentCapabilitiesAsString:string;    FCurrentCharSet:string;
    FCurrentLanguage:integer;
    FCurrentMimeType:string;
    FCurrentNaturalLanguage:string;
    FCurrentPaperType:string;
    FDefault:boolean;
    FDefaultCapabilities:TArrInteger;
    FDefaultCapabilitiesCount:integer;
    FDefaultCapabilitiesAsString:string;    FDefaultCopies:integer;
    FDefaultLanguage:integer;
    FDefaultMimeType:string;
    FDefaultNumberUp:integer;
    FDefaultPaperType:string;
    FDefaultPriority:integer;
    FDescription:string;
    FDetectedErrorState:integer;
    FDeviceID:string;
    FDirect:boolean;
    FDoCompleteFirst:boolean;
    FDriverName:string;
    FEnableBIDI:boolean;
    FEnableDevQueryPrint:boolean;
    FErrorCleared:boolean;
    FErrorDescription:string;
    FErrorInformation:TArrString;
    FErrorInformationCount:integer;
    FErrorInformationAsString:string;    FExtendedDetectedErrorState:integer;
    FExtendedPrinterStatus:integer;
    FHidden:boolean;
    FHorizontalResolution:integer;
    FInstallDate:TDatetime;
    FJobCountSinceLastReset:integer;
    FKeepPrintedJobs:boolean;
    FLanguagesSupported:TArrInteger;
    FLanguagesSupportedCount:integer;
    FLanguagesSupportedAsString:string;    FLastErrorCode:integer;
    FLocal:boolean;
    FLocation:string;
    FMarkingTechnology:integer;
    FMaxCopies:integer;
    FMaxNumberUp:integer;
    FMaxSizeSupported:integer;
    FMimeTypesSupported:TArrString;
    FMimeTypesSupportedCount:integer;
    FMimeTypesSupportedAsString:string;    FName:string;
    FNaturalLanguagesSupported:TArrString;
    FNaturalLanguagesSupportedCount:integer;
    FNaturalLanguagesSupportedAsString:string;    FNetwork:boolean;
    FPaperSizesSupported:TArrInteger;
    FPaperSizesSupportedCount:integer;
    FPaperSizesSupportedAsString:string;    FPaperTypesAvailable:TArrString;
    FPaperTypesAvailableCount:integer;
    FPaperTypesAvailableAsString:string;    FParameters:string;
    FPNPDeviceID:string;
    FPortName:string;
    FPowerManagementCapabilities:TArrInteger;
    FPowerManagementCapabilitiesCount:integer;
    FPowerManagementCapabilitiesAsString:string;    FPowerManagementSupported:boolean;
    FPrinterPaperNames:TArrString;
    FPrinterPaperNamesCount:integer;
    FPrinterPaperNamesAsString:string;    FPrinterState:integer;
    FPrinterStatus:integer;
    FPrintJobDataType:string;
    FPrintProcessor:string;
    FPriority:integer;
    FPublished:boolean;
    FQueued:boolean;
    FRawOnly:boolean;
    FSeparatorFile:string;
    FServerName:string;
    FShared:boolean;
    FShareName:string;
    FSpoolEnabled:boolean;
    FStartTime:TDatetime;
    FStatus:string;
    FStatusInfo:integer;
    FSystemCreationClassName:string;
    FSystemName:string;
    FTimeOfLastReset:TDatetime;
    FUntilTime:TDatetime;
    FVerticalResolution:integer;
    FWorkOffline:boolean;

  private
    {%PrivateGetMethods PropertiesClass%}
    function GetAvailableJobSheets(index: integer):string;
    function GetCapabilities(index: integer):integer;
    function GetCapabilityDescriptions(index: integer):string;
    function GetCharSetsSupported(index: integer):string;
    function GetCurrentCapabilities(index: integer):integer;
    function GetDefaultCapabilities(index: integer):integer;
    function GetErrorInformation(index: integer):string;
    function GetLanguagesSupported(index: integer):integer;
    function GetMimeTypesSupported(index: integer):string;
    function GetNaturalLanguagesSupported(index: integer):string;
    function GetPaperSizesSupported(index: integer):integer;
    function GetPaperTypesAvailable(index: integer):string;
    function GetPowerManagementCapabilities(index: integer):integer;
    function GetPrinterPaperNames(index: integer):string;

  public
    {%PublicGetMethods PropertiesClass%}
    // Obtener la propiedad <Availability> como string
    function GetAllAvailabilityAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <Availability>
    function GetAllAvailabilityCount:integer;
    // Obtener la propiedad <Capabilities> como string
    function GetAllCapabilitiesAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <Capabilities>
    function GetAllCapabilitiesCount:integer;
    // Obtener la propiedad <ConfigManagerErrorCode> como string
    function GetAllConfigManagerErrorCodeAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <ConfigManagerErrorCode>
    function GetAllConfigManagerErrorCodeCount:integer;
    // Obtener la propiedad <CurrentCapabilities> como string
    function GetAllCurrentCapabilitiesAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <CurrentCapabilities>
    function GetAllCurrentCapabilitiesCount:integer;
    // Obtener la propiedad <CurrentLanguage> como string
    function GetAllCurrentLanguageAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <CurrentLanguage>
    function GetAllCurrentLanguageCount:integer;
    // Obtener la propiedad <DefaultCapabilities> como string
    function GetAllDefaultCapabilitiesAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <DefaultCapabilities>
    function GetAllDefaultCapabilitiesCount:integer;
    // Obtener la propiedad <DefaultLanguage> como string
    function GetAllDefaultLanguageAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <DefaultLanguage>
    function GetAllDefaultLanguageCount:integer;
    // Obtener la propiedad <DetectedErrorState> como string
    function GetAllDetectedErrorStateAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <DetectedErrorState>
    function GetAllDetectedErrorStateCount:integer;
    // Obtener la propiedad <ExtendedDetectedErrorState> como string
    function GetAllExtendedDetectedErrorStateAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <ExtendedDetectedErrorState>
    function GetAllExtendedDetectedErrorStateCount:integer;
    // Obtener la propiedad <ExtendedPrinterStatus> como string
    function GetAllExtendedPrinterStatusAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <ExtendedPrinterStatus>
    function GetAllExtendedPrinterStatusCount:integer;
    // Obtener la propiedad <LanguagesSupported> como string
    function GetAllLanguagesSupportedAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <LanguagesSupported>
    function GetAllLanguagesSupportedCount:integer;
    // Obtener la propiedad <MarkingTechnology> como string
    function GetAllMarkingTechnologyAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <MarkingTechnology>
    function GetAllMarkingTechnologyCount:integer;
    // Obtener la propiedad <PaperSizesSupported> como string
    function GetAllPaperSizesSupportedAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <PaperSizesSupported>
    function GetAllPaperSizesSupportedCount:integer;
    // Obtener la propiedad <PowerManagementCapabilities> como string
    function GetAllPowerManagementCapabilitiesAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <PowerManagementCapabilities>
    function GetAllPowerManagementCapabilitiesCount:integer;
    // Obtener la propiedad <PrinterState> como string
    function GetAllPrinterStateAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <PrinterState>
    function GetAllPrinterStateCount:integer;
    // Obtener la propiedad <PrinterStatus> como string
    function GetAllPrinterStatusAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <PrinterStatus>
    function GetAllPrinterStatusCount:integer;
    // Obtener la propiedad <StatusInfo> como string
    function GetAllStatusInfoAsString(index:integer):string;
    // Obtener el número de elementos disponibles de la propiedad <StatusInfo>
    function GetAllStatusInfoCount:integer;

    {%PublicArrayMethods PropertiesClass%}
    property AvailableJobSheets[index:integer]:string read GetAvailableJobSheets;
    property AvailableJobSheetsCount:integer read FAvailableJobSheetsCount stored False;
    property Capabilities[index:integer]:integer read GetCapabilities;
    property CapabilitiesCount:integer read FCapabilitiesCount stored False;
    property CapabilityDescriptions[index:integer]:string read GetCapabilityDescriptions;
    property CapabilityDescriptionsCount:integer read FCapabilityDescriptionsCount stored False;
    property CharSetsSupported[index:integer]:string read GetCharSetsSupported;
    property CharSetsSupportedCount:integer read FCharSetsSupportedCount stored False;
    property CurrentCapabilities[index:integer]:integer read GetCurrentCapabilities;
    property CurrentCapabilitiesCount:integer read FCurrentCapabilitiesCount stored False;
    property DefaultCapabilities[index:integer]:integer read GetDefaultCapabilities;
    property DefaultCapabilitiesCount:integer read FDefaultCapabilitiesCount stored False;
    property ErrorInformation[index:integer]:string read GetErrorInformation;
    property ErrorInformationCount:integer read FErrorInformationCount stored False;
    property LanguagesSupported[index:integer]:integer read GetLanguagesSupported;
    property LanguagesSupportedCount:integer read FLanguagesSupportedCount stored False;
    property MimeTypesSupported[index:integer]:string read GetMimeTypesSupported;
    property MimeTypesSupportedCount:integer read FMimeTypesSupportedCount stored False;
    property NaturalLanguagesSupported[index:integer]:string read GetNaturalLanguagesSupported;
    property NaturalLanguagesSupportedCount:integer read FNaturalLanguagesSupportedCount stored False;
    property PaperSizesSupported[index:integer]:integer read GetPaperSizesSupported;
    property PaperSizesSupportedCount:integer read FPaperSizesSupportedCount stored False;
    property PaperTypesAvailable[index:integer]:string read GetPaperTypesAvailable;
    property PaperTypesAvailableCount:integer read FPaperTypesAvailableCount stored False;
    property PowerManagementCapabilities[index:integer]:integer read GetPowerManagementCapabilities;
    property PowerManagementCapabilitiesCount:integer read FPowerManagementCapabilitiesCount stored False;
    property PrinterPaperNames[index:integer]:string read GetPrinterPaperNames;
    property PrinterPaperNamesCount:integer read FPrinterPaperNamesCount stored False;

  published
    {%PublishedProperties PropertiesClass%}
    /// <summary>
    ///  The Attributes property indicates the attributes of the Win32 printing device. These attributes are represented 
    ///  through a combination of flags. Attributes of the printer include:
    ///  Queued  - Print jobs are buffered 
    ///  and queued.
    ///   Direct  - Specifies that the document should be sent directly to the printer.  This is used 
    ///  if print job are not being properly queued.
    ///  Default - The printer is the default printer on the computer.
    ///  Shared 
    ///  - Available as a shared network resource.
    ///  Network - Attached to the network.
    ///  Hidden - Hidden from some 
    ///  users on the network.
    ///  Local - Directly connected to this computer.
    ///  EnableDevQ - Enable the queue on the 
    ///  printer if available.
    ///  KeepPrintedJobs - Specifies that the spooler should not delete documents after 
    ///  they are printed.
    ///  DoCompleteFirst - Start jobs that are finished spooling first.
    ///  WorkOffline - Queue 
    ///  print jobs when printer is not available.
    ///  EnableBIDI - Enable bi-directional printing.
    ///  RawOnly - Allow 
    ///  only raw data type jobs to be spooled.
    ///  Published - Indicates whether the printer is published in the 
    ///  network directory service.
    /// </summary>
    property Attributes:integer read FAttributes write FAttributes stored False;
    /// <summary>
    ///  La disponibilidad y estado del dispositivo. Por ejemplo, la propiedad disponibilidad, indica que el dispositivo 
    ///  está en funcionamiento y tiene energía total (valor=3), o se encuentra en un estado de aviso (4), prueba 
    ///  (5), degradado (10) o ahorro de energía (valores 13-15 y 17). En relación con los estados de ahorro de 
    ///  energía, éstos se definen como sigue: Valor 13 ("Ahorro de energía: desconocido") indica que se sabe 
    ///  que el dispositivo está en un modo de ahorro de energía, pero se desconoce su estado exacto en este modo; 
    ///  14 ("Ahorro de energía: modo de bajo consumo") indica que el dispositivo está en un estado de  ahorro 
    ///  de energía, pero sigue funcionando y puede exhibir una baja de rendimiento;  15 ("Ahorro de energía: 
    ///  espera") describe que el sistema no está en funcionamiento, pero que se podría poner en operación "rápidamente"; 
    ///  y valor 17 ("Ahorro de energía: advertencia") indica que el equipo está en un estado de aviso, aunque 
    ///  está también en modo de ahorro de energía.
    /// </summary>
    property Availability:integer read FAvailability write FAvailability stored False;
    /// <summary>
    ///  Describe todos las hojas de trabajo que están disponibles en la impresora. También puede usarse para 
    ///  describir la pancarta que la impresora puede proporcionar al inicio de cada trabajo, o también puede 
    ///  describir las opciones especificadas por otros usuarios.
    /// </summary>
    property AvailableJobSheetsAsString:string read FAvailableJobSheetsAsString write FAvailableJobSheetsAsString stored False;
    /// <summary>
    ///  The AveragePagesPerMinute property specifies the rate (average number of pages per minute) that the printer 
    ///  is capable of sustaining.
    /// </summary>
    property AveragePagesPerMinute:integer read FAveragePagesPerMinute write FAveragePagesPerMinute stored False;
    /// <summary>
    ///  Una matriz de enteros que indica capacidades de impresora. Se especifica información como "Impresión 
    ///  a doble cara" (valor=3) o "Impresión de transparencia" (7).
    /// </summary>
    property CapabilitiesAsString:string read FCapabilitiesAsString write FCapabilitiesAsString stored False;
    /// <summary>
    ///  Una matriz de cadenas de forma libre que proporcionan explicaciones más detalladas para cualquiera de 
    ///  las características indicadas en la matriz de capacidades. Nota, cada entrada de esta matriz está relacionada 
    ///  a la entrada de la matriz de capacidades que está ubicada en el mismo índice.
    /// </summary>
    property CapabilityDescriptionsAsString:string read FCapabilityDescriptionsAsString write FCapabilityDescriptionsAsString stored False;
    /// <summary>
    ///  Una matriz de cadenas de forma libre que proporcionan explicaciones más detalladas para cualquiera de 
    ///  las características indicadas en la matriz de capacidades. Nota, cada entrada de esta matriz está relacionada 
    ///  a la entrada de la matriz de capacidades que está ubicada en el mismo índice.
    /// </summary>
    property Caption:string read FCaption write FCaption stored False;
    /// <summary>
    ///  Identifica los juegos de caracteres disponibles para el texto de salida relacionado con la información 
    ///  de administración de la impresora. Las cadenas proporcionadas en esta propiedad deben guardar las normas 
    ///  semánticas y sintácticas especificadas en la sección 4.1.2 ("Charset parameter") en RFC 2046 (MIME Part 
    ///  2), contenida en el Registro de juego de caracteres IANA. Por ejemplo, "utf-8", "us-ascii" y "iso-88
    ///  59-1".
    /// </summary>
    property CharSetsSupportedAsString:string read FCharSetsSupportedAsString write FCharSetsSupportedAsString stored False;
    /// <summary>
    ///  The Comment property specifies the comment of a print queue.
    ///  Example: Color printer
    /// </summary>
    property Comment:string read FComment write FComment stored False;
    /// <summary>
    ///  Indica el código de error del Administrador de configuración de Win32. Los valores siguientes pueden 
    ///  ser devueltos: 
    ///  0 Este dispositivo funciona correctamente. 
    ///  1 Este dispositivo no está configurado correctamente. 
    ///  2 Windows no puede cargar el controlador para este dispositivo. 
    ///  3 El controlador de este dispositivo 
    ///  puede estar dañado o le falta memoria o recursos a su sistema. 
    ///  4 Este dispositivo no funciona correctamente. 
    ///  Uno de sus controladores o el Registro pueden estar dañados. 
    ///  5 El controlador de este dispositivo necesita 
    ///  un recurso que Windows no puede administrar. 
    ///  6 La configuración de arranque de este dispositivo entra 
    ///  en conflicto con otros dispositivos. 
    ///  7 No se puede filtrar. 
    ///  8 Falta el cargador de controlador del 
    ///  dispositivo. 
    ///  9 Este dispositivo no funciona correctamente porque el firmware de control está informando 
    ///  incorrectamente acerca de los recursos del dispositivo. 
    ///  10 El dispositivo no puede se iniciar. 
    ///  11 Error 
    ///  en el dispositivo. 
    ///  12 Este dispositivo no encuentra suficientes recursos libres para usar. 
    ///  13 Windows 
    ///  no puede comprobar los recursos de este dispositivo. 
    ///  14 Este dispositivo no funcionará correctamente 
    ///  hasta que reinicie su equipo. 
    ///  15 Este dispositivo no funciona correctamente porque hay un posible problema 
    ///  de enumeración. 
    ///  16 Windows no puede identificar todos los recursos que utiliza este dispositivo. 
    ///  17 
    ///  Este dispositivo está solicitando un tipo de recurso desconocido. 
    ///  18 Vuelva a instalar los controladores 
    ///  de este dispositivo 
    ///  19 Su Registro debe estar dañado. 
    ///  20 Error usar el cargador VxD. 
    ///  21 Error del 
    ///  sistema: intente cambiar el controlador de este dispositivo. Si esto no funciona, consulte la documentación 
    ///  de hardware. Windows está quitando este dispositivo. 
    ///  22 Este dispositivo está deshabilitado. 
    ///  23 Error 
    ///  del ntación de hardware. 
    ///  24 Este dispositivo no está presente, no funciona correctamente o no tiene 
    ///  todos los controladores instalados. 
    ///  25 Windows aún está instalando este dispositivo. 
    ///  26 Windows aún 
    ///  está instalando este dispositivo. 
    ///  27 Este dispositivo no tiene una configuración de Registro válida. 
    ///  28 Los controladores de este dispositivo no están instalados. 
    ///  29 Este dispositivo está deshabilitado 
    ///  porque el firmware no proporcionó los recursos requeridos. 
    ///  30 Este dispositivo está utilizando una recurso 
    ///  de solicitud de interrupción (IRQ) que ya está usando otro dispositivo. 
    ///  31 Este dispositivo no funciona 
    ///  correctamente porque Windows no puede cargar los controladores requeridos.
    /// </summary>
    property ConfigManagerErrorCode:integer read FConfigManagerErrorCode write FConfigManagerErrorCode stored False;
    /// <summary>
    ///  Indica el código de error del Administrador de configuración de Win32. Los valores siguientes pueden 
    ///  ser devueltos: 
    ///  0 Este dispositivo funciona correctamente. 
    ///  1 Este dispositivo no está configurado correctamente. 
    ///  2 Windows no puede cargar el controlador para este dispositivo. 
    ///  3 El controlador de este dispositivo 
    ///  puede estar dañado o le falta memoria o recursos a su sistema. 
    ///  4 Este dispositivo no funciona correctamente. 
    ///  Uno de sus controladores o el Registro pueden estar dañados. 
    ///  5 El controlador de este dispositivo necesita 
    ///  un recurso que Windows no puede administrar. 
    ///  6 La configuración de arranque de este dispositivo entra 
    ///  en conflicto con otros dispositivos. 
    ///  7 No se puede filtrar. 
    ///  8 Falta el cargador de controlador del 
    ///  dispositivo. 
    ///  9 Este dispositivo no funciona correctamente porque el firmware de control está informando 
    ///  incorrectamente acerca de los recursos del dispositivo. 
    ///  10 El dispositivo no puede se iniciar. 
    ///  11 Error 
    ///  en el dispositivo. 
    ///  12 Este dispositivo no encuentra suficientes recursos libres para usar. 
    ///  13 Windows 
    ///  no puede comprobar los recursos de este dispositivo. 
    ///  14 Este dispositivo no funcionará correctamente 
    ///  hasta que reinicie su equipo. 
    ///  15 Este dispositivo no funciona correctamente porque hay un posible problema 
    ///  de enumeración. 
    ///  16 Windows no puede identificar todos los recursos que utiliza este dispositivo. 
    ///  17 
    ///  Este dispositivo está solicitando un tipo de recurso desconocido. 
    ///  18 Vuelva a instalar los controladores 
    ///  de este dispositivo 
    ///  19 Su Registro debe estar dañado. 
    ///  20 Error usar el cargador VxD. 
    ///  21 Error del 
    ///  sistema: intente cambiar el controlador de este dispositivo. Si esto no funciona, consulte la documentación 
    ///  de hardware. Windows está quitando este dispositivo. 
    ///  22 Este dispositivo está deshabilitado. 
    ///  23 Error 
    ///  del ntación de hardware. 
    ///  24 Este dispositivo no está presente, no funciona correctamente o no tiene 
    ///  todos los controladores instalados. 
    ///  25 Windows aún está instalando este dispositivo. 
    ///  26 Windows aún 
    ///  está instalando este dispositivo. 
    ///  27 Este dispositivo no tiene una configuración de Registro válida. 
    ///  28 Los controladores de este dispositivo no están instalados. 
    ///  29 Este dispositivo está deshabilitado 
    ///  porque el firmware no proporcionó los recursos requeridos. 
    ///  30 Este dispositivo está utilizando una recurso 
    ///  de solicitud de interrupción (IRQ) que ya está usando otro dispositivo. 
    ///  31 Este dispositivo no funciona 
    ///  correctamente porque Windows no puede cargar los controladores requeridos.
    /// </summary>
    property ConfigManagerUserConfig:boolean read FConfigManagerUserConfig write FConfigManagerUserConfig stored False;
    /// <summary>
    ///  CreationClassName indica el nombre de la clase o subclase que se usa en la creación de una instancia. 
    ///  Cuando se usa con las demás propiedades clave de esta clase, esta propiedad permite que se identifiquen 
    ///  de manera única todas las instancias de esta clase y sus subclases.
    /// </summary>
    property CreationClassName:string read FCreationClassName write FCreationClassName stored False;
    /// <summary>
    ///  Especifica qué capacidades de acabado y otras de la impresora se están utilizando actualmente. Una entrada 
    ///  en esta propiedad debería listarse también en la matriz de capacidades.
    /// </summary>
    property CurrentCapabilitiesAsString:string read FCurrentCapabilitiesAsString write FCurrentCapabilitiesAsString stored False;
    /// <summary>
    ///  Especifica el juego de caracteres usado actualmente por el texto de salida relacionado con la información 
    ///  de administración de la impresora. El juego de caracteres descrito en esta propiedad también debería 
    ///  listarse en la propiedad CharsetsSupported. La cadena especificada en esta propiedad debe guardar las 
    ///  normas semánticas y sintácticas especificadas en la sección 4.1.2 ("Charset parameter") en RFC 2046 (MIME 
    ///  Part 2), contenida en el Registro de juego de caracteres IANA. Por ejemplo, "utf-8", "us-ascii" y "i
    ///  so-8859-1".
    /// </summary>
    property CurrentCharSet:string read FCurrentCharSet write FCurrentCharSet stored False;
    /// <summary>
    ///  Indica el idioma de impresión actualmente en uso. Todo idioma usado por la impresora debería estar listado 
    ///  también en la propiedad LanguagesSupported.
    /// </summary>
    property CurrentLanguage:integer read FCurrentLanguage write FCurrentLanguage stored False;
    /// <summary>
    ///  Especifica el tipo MIME que está usando actualmente la impresora si se estableció la propiedad CurrentLanguage 
    ///  para indicar que se está usando un tipo MIME (valor = 47).
    /// </summary>
    property CurrentMimeType:string read FCurrentMimeType write FCurrentMimeType stored False;
    /// <summary>
    ///  Identifica el idioma usado actualmente por la impresora para mantenimiento. El idioma listado en la propiedad 
    ///  CurrentNaturalLanguage también debe estar en la propiedad NaturalLanguagesSupported.
    /// </summary>
    property CurrentNaturalLanguage:string read FCurrentNaturalLanguage write FCurrentNaturalLanguage stored False;
    /// <summary>
    ///  Especifica el tipo de papel que la impresora está usando actualmente. La cadena debe estar expresada 
    ///  de acuerdo al formato de ISO/IEC 10175 Document Printing Application (DPA) que también está resumido 
    ///  en el apéndice C de RFC 1759 (Printe MIB).
    /// </summary>
    property CurrentPaperType:string read FCurrentPaperType write FCurrentPaperType stored False;
    /// <summary>
    ///  The Default property indicates whether the printer is the default printer on the computer.
    /// </summary>
    property Default:boolean read FDefault write FDefault stored False;
    /// <summary>
    ///  Especifica qué capacidades de acabado y otras de la impresora se utilizarán de forma predeterminada. 
    ///  Una entrada en la propiedad DefaultCapabilities debería listarse también en la matriz de capacidades
    ///  .
    /// </summary>
    property DefaultCapabilitiesAsString:string read FDefaultCapabilitiesAsString write FDefaultCapabilitiesAsString stored False;
    /// <summary>
    ///  El número de copias que se pueden hacer en un solo trabajo a menos que se especifique lo contrario.
    /// </summary>
    property DefaultCopies:integer read FDefaultCopies write FDefaultCopies stored False;
    /// <summary>
    ///  Indica el idioma predeterminado de la impresora. Todo idioma que es usado de forma predeterminada por 
    ///  la impresora debe estar listado en LanguagesSupported.
    /// </summary>
    property DefaultLanguage:integer read FDefaultLanguage write FDefaultLanguage stored False;
    /// <summary>
    ///  Especifica el tipo MIME predeterminado usado por la impresora si se estableció la propiedad DefaultLanguage 
    ///  para indicar que se esta usando un tipo MIME (valor = 47).
    /// </summary>
    property DefaultMimeType:string read FDefaultMimeType write FDefaultMimeType stored False;
    /// <summary>
    ///  El número de páginas de impresión transmitida (print-stream) que la impresora puede representar en una 
    ///  sola hoja a menos que se especifique lo contrario en un trabajo.
    /// </summary>
    property DefaultNumberUp:integer read FDefaultNumberUp write FDefaultNumberUp stored False;
    /// <summary>
    ///  Especifica el tipo de papel que usará la impresora si PrintJob no especifica un tipo en particular. La 
    ///  cadena se debe expresar en la forma especificada por Aplicación de impresión de documentos (DPA) ISO/IEC 
    ///  10175 que se resume también en el apéndice C de RFC 1759 (Printer MIB).
    /// </summary>
    property DefaultPaperType:string read FDefaultPaperType write FDefaultPaperType stored False;
    /// <summary>
    ///  The DefaultPriority property specifies the default priority value assigned to each print job.
    /// </summary>
    property DefaultPriority:integer read FDefaultPriority write FDefaultPriority stored False;
    /// <summary>
    ///  The DefaultPriority property specifies the default priority value assigned to each print job.
    /// </summary>
    property Description:string read FDescription write FDescription stored False;
    /// <summary>
    ///  The DefaultPriority property specifies the default priority value assigned to each print job.
    /// </summary>
    property DetectedErrorState:integer read FDetectedErrorState write FDetectedErrorState stored False;
    /// <summary>
    ///  DeviceID es una dirección u otra información de identificación que da un nombre único al dispositivo 
    ///  lógico.
    /// </summary>
    property DeviceID:string read FDeviceID write FDeviceID stored False;
    /// <summary>
    ///  The Direct property indicates whether the print jobs should be sent directly to the printer.  This means 
    ///  that no spool files are created for the print jobs.
    /// </summary>
    property Direct:boolean read FDirect write FDirect stored False;
    /// <summary>
    ///  The DoCompleteFirst property indicates whether the printer should start jobs that have finished spooling 
    ///  as opposed to the order of the job received.
    /// </summary>
    property DoCompleteFirst:boolean read FDoCompleteFirst write FDoCompleteFirst stored False;
    /// <summary>
    ///  The DriverName property specifies the name of the Win32 printer driver.
    ///  Example: Windows NT Fax Driv
    ///  er
    /// </summary>
    property DriverName:string read FDriverName write FDriverName stored False;
    /// <summary>
    ///  The DriverName property specifies the name of the Win32 printer driver.
    ///  Example: Windows NT Fax Driv
    ///  er
    /// </summary>
    property EnableBIDI:boolean read FEnableBIDI write FEnableBIDI stored False;
    /// <summary>
    ///  The EnableDevQueryPrint property indicates whether to hold documents in the queue, if document and printer 
    ///  setups do not match
    /// </summary>
    property EnableDevQueryPrint:boolean read FEnableDevQueryPrint write FEnableDevQueryPrint stored False;
    /// <summary>
    ///  ErrorCleared es una propiedad booleana que indica que el error comunicado en la propiedad LastErrorCode 
    ///  se ha resuelto ahora.
    /// </summary>
    property ErrorCleared:boolean read FErrorCleared write FErrorCleared stored False;
    /// <summary>
    ///  ErrorDescription es una cadena de forma libre que ofrece más información acerca del error registrado 
    ///  en la propiedad LastErrorCode e información acerca de cualquier acción correctiva que se pueda tomar
    ///  .
    /// </summary>
    property ErrorDescription:string read FErrorDescription write FErrorDescription stored False;
    /// <summary>
    ///  Una matriz que proporciona información adicional sobre el estado de error actual indicado en Detecte
    ///  dErrorState.
    /// </summary>
    property ErrorInformationAsString:string read FErrorInformationAsString write FErrorInformationAsString stored False;
    /// <summary>
    ///  The ExtendedDetectedErrorState property reports standard error information.  Any additional information 
    ///  should be recorded in the DetecteErrorState property.
    /// </summary>
    property ExtendedDetectedErrorState:integer read FExtendedDetectedErrorState write FExtendedDetectedErrorState stored False;
    /// <summary>
    ///  Status information for a Printer, beyond that specified in the LogicalDevice Availability property. Values 
    ///  include "Idle" (3) and an indication that the Device is currently printing (4).
    /// </summary>
    property ExtendedPrinterStatus:integer read FExtendedPrinterStatus write FExtendedPrinterStatus stored False;
    /// <summary>
    ///  Status information for a Printer, beyond that specified in the LogicalDevice Availability property. Values 
    ///  include "Idle" (3) and an indication that the Device is currently printing (4).
    /// </summary>
    property Hidden:boolean read FHidden write FHidden stored False;
    /// <summary>
    ///  Status information for a Printer, beyond that specified in the LogicalDevice Availability property. Values 
    ///  include "Idle" (3) and an indication that the Device is currently printing (4).
    /// </summary>
    property HorizontalResolution:integer read FHorizontalResolution write FHorizontalResolution stored False;
    /// <summary>
    ///  Status information for a Printer, beyond that specified in the LogicalDevice Availability property. Values 
    ///  include "Idle" (3) and an indication that the Device is currently printing (4).
    /// </summary>
    property InstallDate:TDatetime read FInstallDate write FInstallDate stored False;
    /// <summary>
    ///  Trabajos de la impresora procesados desde el último restablecimiento. Es posible que estos trabajos se 
    ///  hayan procesado desde una o más colas de impresión.
    /// </summary>
    property JobCountSinceLastReset:integer read FJobCountSinceLastReset write FJobCountSinceLastReset stored False;
    /// <summary>
    ///  The KeepPrintedJobs property indicates whether the print spooler should not delete the jobs after they 
    ///  are completed.
    /// </summary>
    property KeepPrintedJobs:boolean read FKeepPrintedJobs write FKeepPrintedJobs stored False;
    /// <summary>
    ///  The KeepPrintedJobs property indicates whether the print spooler should not delete the jobs after they 
    ///  are completed.
    /// </summary>
    property LanguagesSupportedAsString:string read FLanguagesSupportedAsString write FLanguagesSupportedAsString stored False;
    /// <summary>
    ///  LastErrorCode captura el último código de error informado por el dispositivo lógico.
    /// </summary>
    property LastErrorCode:integer read FLastErrorCode write FLastErrorCode stored False;
    /// <summary>
    ///  The Local property indicates whether the printer is attached to the network.  A masquerading printer 
    ///  is printer that is implemented as local printers but has a port that refers to a remote machine.  From 
    ///  the application perspective these hybrid printers should be viewed as printer connections since that 
    ///  is their intended behavior.
    /// </summary>
    property Local:boolean read FLocal write FLocal stored False;
    /// <summary>
    ///  The Location property specifies the physical location of the printer.
    ///  Example: Bldg. 38, Room 1164
    /// </summary>
    property Location:string read FLocation write FLocation stored False;
    /// <summary>
    ///  The Location property specifies the physical location of the printer.
    ///  Example: Bldg. 38, Room 1164
    /// </summary>
    property MarkingTechnology:integer read FMarkingTechnology write FMarkingTechnology stored False;
    /// <summary>
    ///  El máximo número de copias que puede hacer una impresora en un solo trabajo de impresión.
    /// </summary>
    property MaxCopies:integer read FMaxCopies write FMaxCopies stored False;
    /// <summary>
    ///  El máximo número de páginas de impresión transmitida (print-stream) que la impresora puede representar 
    ///  en una sola hoja.
    /// </summary>
    property MaxNumberUp:integer read FMaxNumberUp write FMaxNumberUp stored False;
    /// <summary>
    ///  Especifica el trabajo más grande (como secuencia de bytes) que acepta la impresora expresado en unidades 
    ///  de Kbytes. El valor cero indica que no se han definido límites.
    /// </summary>
    property MaxSizeSupported:integer read FMaxSizeSupported write FMaxSizeSupported stored False;
    /// <summary>
    ///  Una matriz de cadenas en formato libre que proporcionan explicaciones más detalladas de todos los tipos 
    ///  MIME que son compatibles con la impresora. Si se proporciona información para esta propiedad, el valor 
    ///  47,"Mime" debería estar incluido en la propiedad LanguagesSupported.
    /// </summary>
    property MimeTypesSupportedAsString:string read FMimeTypesSupportedAsString write FMimeTypesSupportedAsString stored False;
    /// <summary>
    ///  Una matriz de cadenas en formato libre que proporcionan explicaciones más detalladas de todos los tipos 
    ///  MIME que son compatibles con la impresora. Si se proporciona información para esta propiedad, el valor 
    ///  47,"Mime" debería estar incluido en la propiedad LanguagesSupported.
    /// </summary>
    property Name:string read FName write FName stored False;
    /// <summary>
    ///  Identifica los idiomas disponibles para las cadenas que utiliza la impresora al mostrar la información 
    ///  de administración. Las cadenas deben cumplir con las normas de RFC 1766, por ejemplo "en" corresponde 
    ///  al idioma inglés.
    /// </summary>
    property NaturalLanguagesSupportedAsString:string read FNaturalLanguagesSupportedAsString write FNaturalLanguagesSupportedAsString stored False;
    /// <summary>
    ///  Identifica los idiomas disponibles para las cadenas que utiliza la impresora al mostrar la información 
    ///  de administración. Las cadenas deben cumplir con las normas de RFC 1766, por ejemplo "en" corresponde 
    ///  al idioma inglés.
    /// </summary>
    property Network:boolean read FNetwork write FNetwork stored False;
    /// <summary>
    ///  Identifica los idiomas disponibles para las cadenas que utiliza la impresora al mostrar la información 
    ///  de administración. Las cadenas deben cumplir con las normas de RFC 1766, por ejemplo "en" corresponde 
    ///  al idioma inglés.
    /// </summary>
    property PaperSizesSupportedAsString:string read FPaperSizesSupportedAsString write FPaperSizesSupportedAsString stored False;
    /// <summary>
    ///  Una matriz de cadenas en formato libre que especifican los tipos de papel que están actualmente disponibles 
    ///  en la impresora. Cada cadena debe estar expresada de acuerdo al ISO/IEC 10175 Document Printing Application 
    ///  (DPA), que también se encuentra resumido en el apéndice C de RFC 1759 (Printer MIB). Por ejemplo, son 
    ///  cadenas válidas: "iso-a4-colored" y "na-10x14-envelope". Por definición, un tamaño de papel que está 
    ///  disponible y listado en PaperTypesAvailable debería aparecer también en la propiedad PaperSizesSuppo
    ///  rted.
    /// </summary>
    property PaperTypesAvailableAsString:string read FPaperTypesAvailableAsString write FPaperTypesAvailableAsString stored False;
    /// <summary>
    ///  The Parameters property specifies optional parameters for the print processor.
    ///  Example: Copies=2
    /// </summary>
    property Parameters:string read FParameters write FParameters stored False;
    /// <summary>
    ///  The Parameters property specifies optional parameters for the print processor.
    ///  Example: Copies=2
    /// </summary>
    property PNPDeviceID:string read FPNPDeviceID write FPNPDeviceID stored False;
    /// <summary>
    ///  The PortName property identifies the ports that can be used to transmit data to the printer. If a printer 
    ///  is connected to more than one port, the names of each port are separated by commas. Under Windows 95, 
    ///  only one port can be specified. 
    ///  Example: LPT1:, LPT2:, LPT3:
    /// </summary>
    property PortName:string read FPortName write FPortName stored False;
    /// <summary>
    ///  Indica los recursos específicos relacionados con energía de dispositivo lógico. Los valores de la matriz, 
    ///  0="Desconocido", 1="No compatible" y 2="Deshabilitado" se explican por sí solos. El valor 3="Habilitado" 
    ///  indica que las características de administración de energía están habilitadas actualmente pero se desconoce 
    ///  el conjunto de características exacto o la información no está disponible. " Modos de ahorro de energía 
    ///  establecidos automáticamente " (4) describe que un dispositivo puede cambiar su estado de energía con 
    ///  base en el uso u otros criterios. " Estado de energía configurable " (5) indica que se admite el método 
    ///  SetPowerState. " Ciclo de energía permitido " (6) indica que se puede invocar el método SetPowerState 
    ///  con la variable de entrada PowerState establecida a 5 ("Ciclo de energía "). " Se admite el encendido 
    ///  por tiempo " (7) indica que el método SetPowerState puede ser invocado con la variable de entrada PowerState 
    ///  establecida  a 5 ("Ciclo de energía ") y el parámetro Time establecido a un fecha y hora específica, 
    ///  o intervalo, para encendido.
    /// </summary>
    property PowerManagementCapabilitiesAsString:string read FPowerManagementCapabilitiesAsString write FPowerManagementCapabilitiesAsString stored False;
    /// <summary>
    ///  Booleano que indica que el Dispositivo se puede administrar con energía - por ej., ponerlo en un estado 
    ///  de ahorro de energía. Este booleano no indica que las características de administración de energía están 
    ///  actualmente habilitadas, o si están deshabilitadas, las características que son compatibles. Consulte 
    ///  la matriz PowerManagementCapabilities para obtener esta información. Si este booleano es falso, el valor 
    ///  entero 1, para la cadena, "No compatible", debe ser la única entrada en la matriz PowerManagementCap
    ///  abilities.
    /// </summary>
    property PowerManagementSupported:boolean read FPowerManagementSupported write FPowerManagementSupported stored False;
    /// <summary>
    ///  The PrinterPaperNames property indicates the list of paper sizes supported by the printer. The printer-specified 
    ///  names are used to represent supported paper sizes.
    ///  Example: B5 (JIS).
    /// </summary>
    property PrinterPaperNamesAsString:string read FPrinterPaperNamesAsString write FPrinterPaperNamesAsString stored False;
    /// <summary>
    ///  This property has been deprecated in favor of PrinterStatus, DetectedErrorState and ErrorInformation 
    ///  CIM properties that more clearly indicate the state and error status of the printer. The PrinterState 
    ///  property specifies a values indicating one of the possible states relating to this printer.
    /// </summary>
    property PrinterState:integer read FPrinterState write FPrinterState stored False;
    /// <summary>
    ///  Información de estado de la impresora, más allá de lo especificado en la propiedad LogicalDeviceAvailability. 
    ///  Los valores incluyen "Inactivo" (3) y una indicación que el dispositivo se encuentra actualmente imprimiendo 
    ///  (4).
    /// </summary>
    property PrinterStatus:integer read FPrinterStatus write FPrinterStatus stored False;
    /// <summary>
    ///  The PrintJobDataType property indicates the default data type that will be used for a print job.
    /// </summary>
    property PrintJobDataType:string read FPrintJobDataType write FPrintJobDataType stored False;
    /// <summary>
    ///  The PrintProcessor property specifies the name of the print spooler that handles print jobs.
    ///  Example: 
    ///  SPOOLSS.DLL.
    /// </summary>
    property PrintProcessor:string read FPrintProcessor write FPrintProcessor stored False;
    /// <summary>
    ///  The Priority property specifies the priority of the  printer. The jobs on a higher priority printer are 
    ///  scheduled first.
    /// </summary>
    property Priority:integer read FPriority write FPriority stored False;
    /// <summary>
    ///  The Published property indicates whether the printer is published in the network directory service.
    /// </summary>
    property Published:boolean read FPublished write FPublished stored False;
    /// <summary>
    ///  The Published property indicates whether the printer is published in the network directory service.
    /// </summary>
    property Queued:boolean read FQueued write FQueued stored False;
    /// <summary>
    ///  The RawOnly property indicates whether the printer accepts only raw data to be spooled.
    /// </summary>
    property RawOnly:boolean read FRawOnly write FRawOnly stored False;
    /// <summary>
    ///  The SeparatorFile property specifies the name of the file used to create a separator page. This page 
    ///  is used to separate print jobs sent to the printer.
    /// </summary>
    property SeparatorFile:string read FSeparatorFile write FSeparatorFile stored False;
    /// <summary>
    ///  The ServerName property identifies the server that controls the printer. If this string is NULL, the 
    ///  printer is controlled locally. 
    /// </summary>
    property ServerName:string read FServerName write FServerName stored False;
    /// <summary>
    ///  The Shared property indicates whether the printer is available as a shared network resource.
    /// </summary>
    property Shared:boolean read FShared write FShared stored False;
    /// <summary>
    ///  The ShareName property indicates the share name of the Win32 printing device.
    ///  Example: \\PRINTSERVER
    ///  1\PRINTER2
    /// </summary>
    property ShareName:string read FShareName write FShareName stored False;
    /// <summary>
    ///  The SpoolEnabled property shows whether spooling is enabled for this printer. 
    ///  Values:TRUE or FALSE. 
    ///  The SpoolEnabled property has been deprecated.  There is no replacementvalue and this property is now 
    ///  considered obsolete.
    /// </summary>
    property SpoolEnabled:boolean read FSpoolEnabled write FSpoolEnabled stored False;
    /// <summary>
    ///  The StartTime property specifies the earliest time the printer can print a job (if the printer has been 
    ///  limited to print only at certain times). This value is expressed as time elapsed since 12:00 AM GMT (Greenwich 
    ///  mean time).
    /// </summary>
    property StartTime:TDatetime read FStartTime write FStartTime stored False;
    /// <summary>
    ///  The StartTime property specifies the earliest time the printer can print a job (if the printer has been 
    ///  limited to print only at certain times). This value is expressed as time elapsed since 12:00 AM GMT (Greenwich 
    ///  mean time).
    /// </summary>
    property Status:string read FStatus write FStatus stored False;
    /// <summary>
    ///  StatusInfo es una cadena que indica si el dispositivo lógico está en un estado habilitado (valor = 3), 
    ///  deshabilitado (valor = 4) o algún otro estado (1) o un estado desconocido (2). Si esta propiedad no se 
    ///  aplica al dispositivo lógico, el valor, 5 ("No aplicable"), debe ser usado.
    /// </summary>
    property StatusInfo:integer read FStatusInfo write FStatusInfo stored False;
    /// <summary>
    ///  StatusInfo es una cadena que indica si el dispositivo lógico está en un estado habilitado (valor = 3), 
    ///  deshabilitado (valor = 4) o algún otro estado (1) o un estado desconocido (2). Si esta propiedad no se 
    ///  aplica al dispositivo lógico, el valor, 5 ("No aplicable"), debe ser usado.
    /// </summary>
    property SystemCreationClassName:string read FSystemCreationClassName write FSystemCreationClassName stored False;
    /// <summary>
    ///  StatusInfo es una cadena que indica si el dispositivo lógico está en un estado habilitado (valor = 3), 
    ///  deshabilitado (valor = 4) o algún otro estado (1) o un estado desconocido (2). Si esta propiedad no se 
    ///  aplica al dispositivo lógico, el valor, 5 ("No aplicable"), debe ser usado.
    /// </summary>
    property SystemName:string read FSystemName write FSystemName stored False;
    /// <summary>
    ///  StatusInfo es una cadena que indica si el dispositivo lógico está en un estado habilitado (valor = 3), 
    ///  deshabilitado (valor = 4) o algún otro estado (1) o un estado desconocido (2). Si esta propiedad no se 
    ///  aplica al dispositivo lógico, el valor, 5 ("No aplicable"), debe ser usado.
    /// </summary>
    property TimeOfLastReset:TDatetime read FTimeOfLastReset write FTimeOfLastReset stored False;
    /// <summary>
    ///  The UntilTime property specifies the latest time the printer can print a job (if the printer has been 
    ///  limited to print only at certain times). This value is expressed as time elapsed since 12:00 AM GMT (Greenwich 
    ///  mean time).
    /// </summary>
    property UntilTime:TDatetime read FUntilTime write FUntilTime stored False;
    /// <summary>
    ///  The UntilTime property specifies the latest time the printer can print a job (if the printer has been 
    ///  limited to print only at certain times). This value is expressed as time elapsed since 12:00 AM GMT (Greenwich 
    ///  mean time).
    /// </summary>
    property VerticalResolution:integer read FVerticalResolution write FVerticalResolution stored False;
    /// <summary>
    ///  The WorkOffline property indicates whether to queue print jobs on the computer if the printer is off
    ///  line.
    /// </summary>
    property WorkOffline:boolean read FWorkOffline write FWorkOffline stored False;
  end;

  {%InterfaceClass WMIClass%}
  /// <summary>
  /// </summary>
  TPrinterInfo = class(TWMIBase)
  private
    FPrinterProperties: TPrinterProperties;
  protected
    //: Rellenar las propiedades.
    procedure FillProperties(aIndex:integer); override;
    // propiedad Active
    procedure SetActive(const Value: Boolean); override;
    //: Clase para el componente.
    function GetWMIClass():string; override;
    //: Obtener el root.
    function GetWMIRoot():string; override;
    //: Limpiar las propiedades
    procedure ClearProps(); override;
  public
    // redefinido el constructor
    constructor Create(AOwner: TComponent); override;
    //: destructor
    destructor Destroy; override;

    {%InterfaceClassErrorcontrol WMIClass%}
    // Obtener <ErrorControl=Resultado> como string (0=Correcto)
    function GetErrorControlAsString(FErrorControl:integer):string; 

    {%InterfacePublicMethods WMIClass%}
    /// <summary>
    ///  Solicita el reinicio del dispositivo lógico. El valor devuelto debe ser un 0 si la solicitud se ejecuta 
    ///  correctamente, 1 si no se permite la solicitud y algún otro valor si ocurrió un error.
    /// </summary>
    function Reset(AInstanceProp:string; AInstanceValue:Variant):integer;
    /// <summary>
    ///  The Pause method pauses the print queue. No jobs can print anymore until the print queue is resumed. 
    ///  The method can return the following values:
    ///  0 - Success.
    ///  5 - Access denied.
    ///  Other - For integer values 
    ///  other than those listed above, refer to the documentation on the Win32 error codes.
    /// </summary>
    function Pause(AInstanceProp:string; AInstanceValue:Variant):integer;
    /// <summary>
    ///  The Resume method resumes a paused print queue. The method can return the following values:
    ///  0 - Success.
    ///  5 
    ///  - Access denied.
    ///  Other - For integer values other than those listed above, refer to the documentation 
    ///  on the Win32 error codes.
    /// </summary>
    function Resume(AInstanceProp:string; AInstanceValue:Variant):integer;
    /// <summary>
    ///  The CancelAllJobs method cancels and removes all print jobs from the printer queue including the job 
    ///  currently printing. The method can return the following values:
    ///  0 - Success.
    ///  5 - Access denied.
    ///  Other 
    ///  - For integer values other than those listed above, refer to the documentation on the Win32 error co
    ///  des.
    /// </summary>
    function CancelAllJobs(AInstanceProp:string; AInstanceValue:Variant):integer;
    /// <summary>
    ///  The RenamePrinter method renames a printer. The method can return the following values:
    ///  0 - Success.
    ///  5 
    ///  - Access denied.
    ///  1801 - Invalid printer name.
    ///  Other - For integer values other than those listed above, 
    ///  refer to the documentation on the Win32 error codes.
    /// <param name="RenamePrinter"> string -  </param>
    /// </summary>
    function RenamePrinter(AInstanceProp:string; AInstanceValue:Variant;
      aNewPrinterName:string):integer;
    /// <summary>
    ///  The PrintTestPage method prints a test page. The method can return the following values:
    ///  0 - Success.
    ///  5 
    ///  - Access denied.
    ///  Other - For integer values other than those listed above, refer to the documentation 
    ///  on the Win32 error codes.
    /// </summary>
    function PrintTestPage(AInstanceProp:string; AInstanceValue:Variant):integer;
    /// <summary>
    ///  The SetDefaultPrinter method sets the printer to be the default printer for the user who executes the 
    ///  method. The method can return the following values:
    ///  0 - Success.
    ///  Other - For integer values other than 
    ///  those listed above, refer to the documentation on the Win32 error codes.
    /// </summary>
    function SetDefaultPrinter(AInstanceProp:string; AInstanceValue:Variant):integer;
  published
    {%InterfacePublishedPart WMIClass%}
    // propiedades de la Printer
    property PrinterProperties:TPrinterProperties read   FPrinterProperties write FPrinterProperties;
  end;


// Constantes para la propiedad Availability
const 
  ENUM_STRING_AVAILABILITY_00 = 'Otros';
  ENUM_STRING_AVAILABILITY_01 = 'Desconocido';
  ENUM_STRING_AVAILABILITY_02 = 'Funcionar/Energía completa';
  ENUM_STRING_AVAILABILITY_03 = 'Advertencia';
  ENUM_STRING_AVAILABILITY_04 = 'En prueba';
  ENUM_STRING_AVAILABILITY_05 = 'No aplicable';
  ENUM_STRING_AVAILABILITY_06 = 'Apagado';
  ENUM_STRING_AVAILABILITY_07 = 'Sin conexión a la red';
  ENUM_STRING_AVAILABILITY_08 = 'Inactivo';
  ENUM_STRING_AVAILABILITY_09 = 'Degradado';
  ENUM_STRING_AVAILABILITY_10 = 'No instalado';
  ENUM_STRING_AVAILABILITY_11 = 'Error de instalación';
  ENUM_STRING_AVAILABILITY_12 = 'Ahorro de energía: desconocido';
  ENUM_STRING_AVAILABILITY_13 = 'Ahorro de energía: modo de bajo consumo';
  ENUM_STRING_AVAILABILITY_14 = 'Ahorro de energía: espera';
  ENUM_STRING_AVAILABILITY_15 = 'Ciclo de energía';
  ENUM_STRING_AVAILABILITY_16 = 'Ahorro de energía: advertencia';
  ENUM_STRING_AVAILABILITY_17 = 'Pausado';
  ENUM_STRING_AVAILABILITY_18 = 'no está listo';
  ENUM_STRING_AVAILABILITY_19 = 'No configurado';
  ENUM_STRING_AVAILABILITY_20 = 'Inactivo';

// Constantes para la propiedad Capabilities
const 
  ENUM_STRING_CAPABILITIES_00 = 'Desconocido';
  ENUM_STRING_CAPABILITIES_01 = 'Otros';
  ENUM_STRING_CAPABILITIES_02 = 'Impresión en color';
  ENUM_STRING_CAPABILITIES_03 = 'Impresión a doble cara';
  ENUM_STRING_CAPABILITIES_04 = 'Copias';
  ENUM_STRING_CAPABILITIES_05 = 'Intercalación';
  ENUM_STRING_CAPABILITIES_06 = 'Engrapado';
  ENUM_STRING_CAPABILITIES_07 = 'Impresión de transparencia';
  ENUM_STRING_CAPABILITIES_08 = 'Perforación';
  ENUM_STRING_CAPABILITIES_09 = 'Portada';
  ENUM_STRING_CAPABILITIES_10 = 'Enlazar';
  ENUM_STRING_CAPABILITIES_11 = 'Impresión en blanco y negro';
  ENUM_STRING_CAPABILITIES_12 = 'A una cara';
  ENUM_STRING_CAPABILITIES_13 = 'Borde largo a doble cara';
  ENUM_STRING_CAPABILITIES_14 = 'Borde corto a doble cara';
  ENUM_STRING_CAPABILITIES_15 = 'Vertical';
  ENUM_STRING_CAPABILITIES_16 = 'Horizontal';
  ENUM_STRING_CAPABILITIES_17 = 'Vertical invertido';
  ENUM_STRING_CAPABILITIES_18 = 'Horizontal invertido';
  ENUM_STRING_CAPABILITIES_19 = 'Calidad alta';
  ENUM_STRING_CAPABILITIES_20 = 'Calidad normal';
  ENUM_STRING_CAPABILITIES_21 = 'Calidad baja';

// Constantes para la propiedad ConfigManagerErrorCode
const 
  ENUM_STRING_CONFIGMANAGERERRORCODE_00 = 'Este dispositivo funciona correctamente.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_01 = 'El dispositivo no está configurado correctamente.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_02 = 'Windows no puede cargar el controlador para este dispositivo.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_03 = 'El controlador de este dispositivo podría estar dañado o es posible que su sistema tenga poca memoria u otros recursos.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_04 = 'Este dispositivo no funciona correctamente. Podría estar dañado uno de sus controladores o el Registro.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_05 = 'El controlador de este dispositivo necesita un recurso que Windows no puede administrar.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_06 = 'La configuración de arranque de este dispositivo está en conflicto con otros dispositivos.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_07 = 'No se puede filtrar.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_08 = 'Falta el controlador del dispositivo.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_09 = 'Este dispositivo no funciona correctamente porque el firmware de control informa incorrectamente de los recursos del dispositivo.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_10 = 'No puede iniciar este dispositivo.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_11 = 'Error de este dispositivo.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_12 = 'Este dispositivo no encuentra suficientes recursos libres que pueda usar.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_13 = 'Windows no puede comprobar los recursos de este dispositivo.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_14 = 'El dispositivo no puede funcionar correctamente hasta que reinicie su equipo.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_15 = 'Este dispositivo no funciona correctamente porque quizá existe un problema de reenumeración.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_16 = 'Windows no puede identificar todos los recursos que usa este dispositivo.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_17 = 'Este dispositivo está solicitando un tipo de recurso desconocido.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_18 = 'Reinstalar los controladores de este dispositivo.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_19 = 'Error al usar el cargador VxD.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_20 = 'Su Registro podría estar dañado.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_21 = 'Error del sistema: pruebe a cambiar el controlador de este dispositivo. Si eso no funciona, consulte la documentación del hardware. Windows quitará este dispositivo.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_22 = 'Este dispositivo está deshabilitado.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_23 = 'Error del sistema: pruebe a cambiar el controlador de este dispositivo. Si eso no funciona, consulte la documentación del hardware.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_24 = 'Este dispositivo no está presente, no funciona correctamente o no tiene todos sus controladores instalados.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_25 = 'Windows sigue configurando este dispositivo.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_26 = 'Windows sigue configurando este dispositivo.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_27 = 'Este dispositivo no tiene una configuración de registro válida.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_28 = 'Los controladores de este dispositivo no están instalados.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_29 = 'Este dispositivo está deshabilitado porque su firmware no le proporcionó los recursos requeridos.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_30 = 'Este dispositivo usa un recurso de solicitud de interrupción (IRQ) que usa otro dispositivo.';
  ENUM_STRING_CONFIGMANAGERERRORCODE_31 = 'Este dispositivo no funciona correctamente porque Windows no puede cargar los controladores requeridos para este dispositivo.';

// Constantes para la propiedad CurrentCapabilities
const 
  ENUM_STRING_CURRENTCAPABILITIES_00 = 'Desconocido';
  ENUM_STRING_CURRENTCAPABILITIES_01 = 'Otros';
  ENUM_STRING_CURRENTCAPABILITIES_02 = 'Impresión en color';
  ENUM_STRING_CURRENTCAPABILITIES_03 = 'Impresión a doble cara';
  ENUM_STRING_CURRENTCAPABILITIES_04 = 'Copias';
  ENUM_STRING_CURRENTCAPABILITIES_05 = 'Intercalación';
  ENUM_STRING_CURRENTCAPABILITIES_06 = 'Engrapado';
  ENUM_STRING_CURRENTCAPABILITIES_07 = 'Impresión de transparencia';
  ENUM_STRING_CURRENTCAPABILITIES_08 = 'Perforación';
  ENUM_STRING_CURRENTCAPABILITIES_09 = 'Portada';
  ENUM_STRING_CURRENTCAPABILITIES_10 = 'Enlazar';
  ENUM_STRING_CURRENTCAPABILITIES_11 = 'Impresión en blanco y negro';
  ENUM_STRING_CURRENTCAPABILITIES_12 = 'A una cara';
  ENUM_STRING_CURRENTCAPABILITIES_13 = 'Borde largo a doble cara';
  ENUM_STRING_CURRENTCAPABILITIES_14 = 'Borde corto a doble cara';
  ENUM_STRING_CURRENTCAPABILITIES_15 = 'Vertical';
  ENUM_STRING_CURRENTCAPABILITIES_16 = 'Horizontal';
  ENUM_STRING_CURRENTCAPABILITIES_17 = 'Vertical invertido';
  ENUM_STRING_CURRENTCAPABILITIES_18 = 'Horizontal invertido';
  ENUM_STRING_CURRENTCAPABILITIES_19 = 'Calidad alta';
  ENUM_STRING_CURRENTCAPABILITIES_20 = 'Calidad normal';
  ENUM_STRING_CURRENTCAPABILITIES_21 = 'Calidad baja';

// Constantes para la propiedad CurrentLanguage
const 
  ENUM_STRING_CURRENTLANGUAGE_00 = 'Otros';
  ENUM_STRING_CURRENTLANGUAGE_01 = 'Desconocido';
  ENUM_STRING_CURRENTLANGUAGE_02 = 'PCL';
  ENUM_STRING_CURRENTLANGUAGE_03 = 'HPGL';
  ENUM_STRING_CURRENTLANGUAGE_04 = 'PJL';
  ENUM_STRING_CURRENTLANGUAGE_05 = 'PS';
  ENUM_STRING_CURRENTLANGUAGE_06 = 'PSPrinter';
  ENUM_STRING_CURRENTLANGUAGE_07 = 'IPDS';
  ENUM_STRING_CURRENTLANGUAGE_08 = 'PPDS';
  ENUM_STRING_CURRENTLANGUAGE_09 = 'EscapeP';
  ENUM_STRING_CURRENTLANGUAGE_10 = 'EPSON';
  ENUM_STRING_CURRENTLANGUAGE_11 = 'DDIF';
  ENUM_STRING_CURRENTLANGUAGE_12 = 'Interpress';
  ENUM_STRING_CURRENTLANGUAGE_13 = 'ISO6429';
  ENUM_STRING_CURRENTLANGUAGE_14 = 'Datos de línea';
  ENUM_STRING_CURRENTLANGUAGE_15 = 'MODCA';
  ENUM_STRING_CURRENTLANGUAGE_16 = 'REGIS';
  ENUM_STRING_CURRENTLANGUAGE_17 = 'SCS';
  ENUM_STRING_CURRENTLANGUAGE_18 = 'SPDL';
  ENUM_STRING_CURRENTLANGUAGE_19 = 'TEK4014';
  ENUM_STRING_CURRENTLANGUAGE_20 = 'PDS';
  ENUM_STRING_CURRENTLANGUAGE_21 = 'IGP';
  ENUM_STRING_CURRENTLANGUAGE_22 = 'CodeV';
  ENUM_STRING_CURRENTLANGUAGE_23 = 'DSCDSE';
  ENUM_STRING_CURRENTLANGUAGE_24 = 'WPS';
  ENUM_STRING_CURRENTLANGUAGE_25 = 'LN03';
  ENUM_STRING_CURRENTLANGUAGE_26 = 'CCITT';
  ENUM_STRING_CURRENTLANGUAGE_27 = 'QUIC';
  ENUM_STRING_CURRENTLANGUAGE_28 = 'CPAP';
  ENUM_STRING_CURRENTLANGUAGE_29 = 'DecPPL';
  ENUM_STRING_CURRENTLANGUAGE_30 = 'Texto simple';
  ENUM_STRING_CURRENTLANGUAGE_31 = 'NPAP';
  ENUM_STRING_CURRENTLANGUAGE_32 = 'DOC';
  ENUM_STRING_CURRENTLANGUAGE_33 = 'imPress';
  ENUM_STRING_CURRENTLANGUAGE_34 = 'Pinwriter';
  ENUM_STRING_CURRENTLANGUAGE_35 = 'NPDL';
  ENUM_STRING_CURRENTLANGUAGE_36 = 'NEC201PL';
  ENUM_STRING_CURRENTLANGUAGE_37 = 'Automático';
  ENUM_STRING_CURRENTLANGUAGE_38 = 'Páginas';
  ENUM_STRING_CURRENTLANGUAGE_39 = 'LIPS';
  ENUM_STRING_CURRENTLANGUAGE_40 = 'TIFF';
  ENUM_STRING_CURRENTLANGUAGE_41 = 'Diagnóstico';
  ENUM_STRING_CURRENTLANGUAGE_42 = 'CaPSL';
  ENUM_STRING_CURRENTLANGUAGE_43 = 'EXCL';
  ENUM_STRING_CURRENTLANGUAGE_44 = 'LCDS';
  ENUM_STRING_CURRENTLANGUAGE_45 = 'XES';
  ENUM_STRING_CURRENTLANGUAGE_46 = 'MIME';

// Constantes para la propiedad DefaultCapabilities
const 
  ENUM_STRING_DEFAULTCAPABILITIES_00 = 'Desconocido';
  ENUM_STRING_DEFAULTCAPABILITIES_01 = 'Otros';
  ENUM_STRING_DEFAULTCAPABILITIES_02 = 'Impresión en color';
  ENUM_STRING_DEFAULTCAPABILITIES_03 = 'Impresión a doble cara';
  ENUM_STRING_DEFAULTCAPABILITIES_04 = 'Copias';
  ENUM_STRING_DEFAULTCAPABILITIES_05 = 'Intercalación';
  ENUM_STRING_DEFAULTCAPABILITIES_06 = 'Engrapado';
  ENUM_STRING_DEFAULTCAPABILITIES_07 = 'Impresión de transparencia';
  ENUM_STRING_DEFAULTCAPABILITIES_08 = 'Perforación';
  ENUM_STRING_DEFAULTCAPABILITIES_09 = 'Portada';
  ENUM_STRING_DEFAULTCAPABILITIES_10 = 'Enlazar';
  ENUM_STRING_DEFAULTCAPABILITIES_11 = 'Impresión en blanco y negro';
  ENUM_STRING_DEFAULTCAPABILITIES_12 = 'A una cara';
  ENUM_STRING_DEFAULTCAPABILITIES_13 = 'Borde largo a doble cara';
  ENUM_STRING_DEFAULTCAPABILITIES_14 = 'Borde corto a doble cara';
  ENUM_STRING_DEFAULTCAPABILITIES_15 = 'Vertical';
  ENUM_STRING_DEFAULTCAPABILITIES_16 = 'Horizontal';
  ENUM_STRING_DEFAULTCAPABILITIES_17 = 'Vertical invertido';
  ENUM_STRING_DEFAULTCAPABILITIES_18 = 'Horizontal invertido';
  ENUM_STRING_DEFAULTCAPABILITIES_19 = 'Calidad alta';
  ENUM_STRING_DEFAULTCAPABILITIES_20 = 'Calidad normal';
  ENUM_STRING_DEFAULTCAPABILITIES_21 = 'Calidad baja';

// Constantes para la propiedad DefaultLanguage
const 
  ENUM_STRING_DEFAULTLANGUAGE_00 = 'Otros';
  ENUM_STRING_DEFAULTLANGUAGE_01 = 'Desconocido';
  ENUM_STRING_DEFAULTLANGUAGE_02 = 'PCL';
  ENUM_STRING_DEFAULTLANGUAGE_03 = 'HPGL';
  ENUM_STRING_DEFAULTLANGUAGE_04 = 'PJL';
  ENUM_STRING_DEFAULTLANGUAGE_05 = 'PS';
  ENUM_STRING_DEFAULTLANGUAGE_06 = 'PSPrinter';
  ENUM_STRING_DEFAULTLANGUAGE_07 = 'IPDS';
  ENUM_STRING_DEFAULTLANGUAGE_08 = 'PPDS';
  ENUM_STRING_DEFAULTLANGUAGE_09 = 'EscapeP';
  ENUM_STRING_DEFAULTLANGUAGE_10 = 'EPSON';
  ENUM_STRING_DEFAULTLANGUAGE_11 = 'DDIF';
  ENUM_STRING_DEFAULTLANGUAGE_12 = 'Interpress';
  ENUM_STRING_DEFAULTLANGUAGE_13 = 'ISO6429';
  ENUM_STRING_DEFAULTLANGUAGE_14 = 'Datos de línea';
  ENUM_STRING_DEFAULTLANGUAGE_15 = 'MODCA';
  ENUM_STRING_DEFAULTLANGUAGE_16 = 'REGIS';
  ENUM_STRING_DEFAULTLANGUAGE_17 = 'SCS';
  ENUM_STRING_DEFAULTLANGUAGE_18 = 'SPDL';
  ENUM_STRING_DEFAULTLANGUAGE_19 = 'TEK4014';
  ENUM_STRING_DEFAULTLANGUAGE_20 = 'PDS';
  ENUM_STRING_DEFAULTLANGUAGE_21 = 'IGP';
  ENUM_STRING_DEFAULTLANGUAGE_22 = 'CodeV';
  ENUM_STRING_DEFAULTLANGUAGE_23 = 'DSCDSE';
  ENUM_STRING_DEFAULTLANGUAGE_24 = 'WPS';
  ENUM_STRING_DEFAULTLANGUAGE_25 = 'LN03';
  ENUM_STRING_DEFAULTLANGUAGE_26 = 'CCITT';
  ENUM_STRING_DEFAULTLANGUAGE_27 = 'QUIC';
  ENUM_STRING_DEFAULTLANGUAGE_28 = 'CPAP';
  ENUM_STRING_DEFAULTLANGUAGE_29 = 'DecPPL';
  ENUM_STRING_DEFAULTLANGUAGE_30 = 'Texto simple';
  ENUM_STRING_DEFAULTLANGUAGE_31 = 'NPAP';
  ENUM_STRING_DEFAULTLANGUAGE_32 = 'DOC';
  ENUM_STRING_DEFAULTLANGUAGE_33 = 'imPress';
  ENUM_STRING_DEFAULTLANGUAGE_34 = 'Pinwriter';
  ENUM_STRING_DEFAULTLANGUAGE_35 = 'NPDL';
  ENUM_STRING_DEFAULTLANGUAGE_36 = 'NEC201PL';
  ENUM_STRING_DEFAULTLANGUAGE_37 = 'Automático';
  ENUM_STRING_DEFAULTLANGUAGE_38 = 'Páginas';
  ENUM_STRING_DEFAULTLANGUAGE_39 = 'LIPS';
  ENUM_STRING_DEFAULTLANGUAGE_40 = 'TIFF';
  ENUM_STRING_DEFAULTLANGUAGE_41 = 'Diagnóstico';
  ENUM_STRING_DEFAULTLANGUAGE_42 = 'CaPSL';
  ENUM_STRING_DEFAULTLANGUAGE_43 = 'EXCL';
  ENUM_STRING_DEFAULTLANGUAGE_44 = 'LCDS';
  ENUM_STRING_DEFAULTLANGUAGE_45 = 'XES';
  ENUM_STRING_DEFAULTLANGUAGE_46 = 'MIME';

// Constantes para la propiedad DetectedErrorState
const 
  ENUM_STRING_DETECTEDERRORSTATE_00 = 'Desconocido';
  ENUM_STRING_DETECTEDERRORSTATE_01 = 'Otros';
  ENUM_STRING_DETECTEDERRORSTATE_02 = 'Sin errores';
  ENUM_STRING_DETECTEDERRORSTATE_03 = 'Falta papel';
  ENUM_STRING_DETECTEDERRORSTATE_04 = 'No hay papel';
  ENUM_STRING_DETECTEDERRORSTATE_05 = 'Falta tóner';
  ENUM_STRING_DETECTEDERRORSTATE_06 = 'No hay tóner';
  ENUM_STRING_DETECTEDERRORSTATE_07 = 'La puerta está abierta';
  ENUM_STRING_DETECTEDERRORSTATE_08 = 'Papel atascado';
  ENUM_STRING_DETECTEDERRORSTATE_09 = 'Sin conexión';
  ENUM_STRING_DETECTEDERRORSTATE_10 = 'Servicio solicitado';
  ENUM_STRING_DETECTEDERRORSTATE_11 = 'Bandeja de salida llena';

// Constantes para la propiedad ExtendedDetectedErrorState
const 
  ENUM_STRING_EXTENDEDDETECTEDERRORSTATE_00 = 'Unknown';
  ENUM_STRING_EXTENDEDDETECTEDERRORSTATE_01 = 'Other';
  ENUM_STRING_EXTENDEDDETECTEDERRORSTATE_02 = 'No Error';
  ENUM_STRING_EXTENDEDDETECTEDERRORSTATE_03 = 'Low Paper';
  ENUM_STRING_EXTENDEDDETECTEDERRORSTATE_04 = 'No Paper';
  ENUM_STRING_EXTENDEDDETECTEDERRORSTATE_05 = 'Low Toner';
  ENUM_STRING_EXTENDEDDETECTEDERRORSTATE_06 = 'No Toner';
  ENUM_STRING_EXTENDEDDETECTEDERRORSTATE_07 = 'Door Open';
  ENUM_STRING_EXTENDEDDETECTEDERRORSTATE_08 = 'Jammed';
  ENUM_STRING_EXTENDEDDETECTEDERRORSTATE_09 = 'Service Requested';
  ENUM_STRING_EXTENDEDDETECTEDERRORSTATE_10 = 'Output Bin Full';
  ENUM_STRING_EXTENDEDDETECTEDERRORSTATE_11 = 'Paper Problem';
  ENUM_STRING_EXTENDEDDETECTEDERRORSTATE_12 = 'Cannot Print Page';
  ENUM_STRING_EXTENDEDDETECTEDERRORSTATE_13 = 'User Intervention Required';
  ENUM_STRING_EXTENDEDDETECTEDERRORSTATE_14 = 'Out of Memory';
  ENUM_STRING_EXTENDEDDETECTEDERRORSTATE_15 = 'Server Unknown';

// Constantes para la propiedad ExtendedPrinterStatus
const 
  ENUM_STRING_EXTENDEDPRINTERSTATUS_00 = 'Other';
  ENUM_STRING_EXTENDEDPRINTERSTATUS_01 = 'Unknown';
  ENUM_STRING_EXTENDEDPRINTERSTATUS_02 = 'Idle';
  ENUM_STRING_EXTENDEDPRINTERSTATUS_03 = 'Printing';
  ENUM_STRING_EXTENDEDPRINTERSTATUS_04 = 'Warmup';
  ENUM_STRING_EXTENDEDPRINTERSTATUS_05 = 'Stopped Printing';
  ENUM_STRING_EXTENDEDPRINTERSTATUS_06 = 'Offline';
  ENUM_STRING_EXTENDEDPRINTERSTATUS_07 = 'Paused';
  ENUM_STRING_EXTENDEDPRINTERSTATUS_08 = 'Error';
  ENUM_STRING_EXTENDEDPRINTERSTATUS_09 = 'Busy';
  ENUM_STRING_EXTENDEDPRINTERSTATUS_10 = 'Not Available';
  ENUM_STRING_EXTENDEDPRINTERSTATUS_11 = 'Waiting';
  ENUM_STRING_EXTENDEDPRINTERSTATUS_12 = 'Processing';
  ENUM_STRING_EXTENDEDPRINTERSTATUS_13 = 'Initialization';
  ENUM_STRING_EXTENDEDPRINTERSTATUS_14 = 'Power Save';
  ENUM_STRING_EXTENDEDPRINTERSTATUS_15 = 'Pending Deletion';
  ENUM_STRING_EXTENDEDPRINTERSTATUS_16 = 'I/O Active';
  ENUM_STRING_EXTENDEDPRINTERSTATUS_17 = 'Manual Feed';

// Constantes para la propiedad LanguagesSupported
const 
  ENUM_STRING_LANGUAGESSUPPORTED_00 = 'Otros';
  ENUM_STRING_LANGUAGESSUPPORTED_01 = 'Desconocido';
  ENUM_STRING_LANGUAGESSUPPORTED_02 = 'PCL';
  ENUM_STRING_LANGUAGESSUPPORTED_03 = 'HPGL';
  ENUM_STRING_LANGUAGESSUPPORTED_04 = 'PJL';
  ENUM_STRING_LANGUAGESSUPPORTED_05 = 'PS';
  ENUM_STRING_LANGUAGESSUPPORTED_06 = 'PSPrinter';
  ENUM_STRING_LANGUAGESSUPPORTED_07 = 'IPDS';
  ENUM_STRING_LANGUAGESSUPPORTED_08 = 'PPDS';
  ENUM_STRING_LANGUAGESSUPPORTED_09 = 'EscapeP';
  ENUM_STRING_LANGUAGESSUPPORTED_10 = 'EPSON';
  ENUM_STRING_LANGUAGESSUPPORTED_11 = 'DDIF';
  ENUM_STRING_LANGUAGESSUPPORTED_12 = 'Interpress';
  ENUM_STRING_LANGUAGESSUPPORTED_13 = 'ISO6429';
  ENUM_STRING_LANGUAGESSUPPORTED_14 = 'Datos de línea';
  ENUM_STRING_LANGUAGESSUPPORTED_15 = 'MODCA';
  ENUM_STRING_LANGUAGESSUPPORTED_16 = 'REGIS';
  ENUM_STRING_LANGUAGESSUPPORTED_17 = 'SCS';
  ENUM_STRING_LANGUAGESSUPPORTED_18 = 'SPDL';
  ENUM_STRING_LANGUAGESSUPPORTED_19 = 'TEK4014';
  ENUM_STRING_LANGUAGESSUPPORTED_20 = 'PDS';
  ENUM_STRING_LANGUAGESSUPPORTED_21 = 'IGP';
  ENUM_STRING_LANGUAGESSUPPORTED_22 = 'CodeV';
  ENUM_STRING_LANGUAGESSUPPORTED_23 = 'DSCDSE';
  ENUM_STRING_LANGUAGESSUPPORTED_24 = 'WPS';
  ENUM_STRING_LANGUAGESSUPPORTED_25 = 'LN03';
  ENUM_STRING_LANGUAGESSUPPORTED_26 = 'CCITT';
  ENUM_STRING_LANGUAGESSUPPORTED_27 = 'QUIC';
  ENUM_STRING_LANGUAGESSUPPORTED_28 = 'CPAP';
  ENUM_STRING_LANGUAGESSUPPORTED_29 = 'DecPPL';
  ENUM_STRING_LANGUAGESSUPPORTED_30 = 'Texto simple';
  ENUM_STRING_LANGUAGESSUPPORTED_31 = 'NPAP';
  ENUM_STRING_LANGUAGESSUPPORTED_32 = 'DOC';
  ENUM_STRING_LANGUAGESSUPPORTED_33 = 'imPress';
  ENUM_STRING_LANGUAGESSUPPORTED_34 = 'Pinwriter';
  ENUM_STRING_LANGUAGESSUPPORTED_35 = 'NPDL';
  ENUM_STRING_LANGUAGESSUPPORTED_36 = 'NEC201PL';
  ENUM_STRING_LANGUAGESSUPPORTED_37 = 'Automático';
  ENUM_STRING_LANGUAGESSUPPORTED_38 = 'Páginas';
  ENUM_STRING_LANGUAGESSUPPORTED_39 = 'LIPS';
  ENUM_STRING_LANGUAGESSUPPORTED_40 = 'TIFF';
  ENUM_STRING_LANGUAGESSUPPORTED_41 = 'Diagnóstico';
  ENUM_STRING_LANGUAGESSUPPORTED_42 = 'CaPSL';
  ENUM_STRING_LANGUAGESSUPPORTED_43 = 'EXCL';
  ENUM_STRING_LANGUAGESSUPPORTED_44 = 'LCDS';
  ENUM_STRING_LANGUAGESSUPPORTED_45 = 'XES';
  ENUM_STRING_LANGUAGESSUPPORTED_46 = 'MIME';
  ENUM_STRING_LANGUAGESSUPPORTED_47 = 'XPS';
  ENUM_STRING_LANGUAGESSUPPORTED_48 = 'HPGL2';
  ENUM_STRING_LANGUAGESSUPPORTED_49 = 'PCLXL';

// Constantes para la propiedad MarkingTechnology
const 
  ENUM_STRING_MARKINGTECHNOLOGY_00 = 'Otros';
  ENUM_STRING_MARKINGTECHNOLOGY_01 = 'Desconocido';
  ENUM_STRING_MARKINGTECHNOLOGY_02 = 'LED electrográfico';
  ENUM_STRING_MARKINGTECHNOLOGY_03 = 'Láser electrográfico';
  ENUM_STRING_MARKINGTECHNOLOGY_04 = 'Otro dispositivo electrográfico';
  ENUM_STRING_MARKINGTECHNOLOGY_05 = 'Matriz de puntos de cabezal movible de impacto de 9 clavijas';
  ENUM_STRING_MARKINGTECHNOLOGY_06 = 'Matriz de puntos de cabezal movible de impacto de 24 clavijas';
  ENUM_STRING_MARKINGTECHNOLOGY_07 = 'Otras de matriz de puntos de cabezal movible de impacto';
  ENUM_STRING_MARKINGTECHNOLOGY_08 = 'Cabezal movible de impacto totalmente formado';
  ENUM_STRING_MARKINGTECHNOLOGY_09 = 'Banda de impacto';
  ENUM_STRING_MARKINGTECHNOLOGY_10 = 'Otras de impacto';
  ENUM_STRING_MARKINGTECHNOLOGY_11 = 'Inyección acuosa';
  ENUM_STRING_MARKINGTECHNOLOGY_12 = 'Inyección sólida';
  ENUM_STRING_MARKINGTECHNOLOGY_13 = 'Otras de inyección';
  ENUM_STRING_MARKINGTECHNOLOGY_14 = 'Plumilla';
  ENUM_STRING_MARKINGTECHNOLOGY_15 = 'Transferencia térmica';
  ENUM_STRING_MARKINGTECHNOLOGY_16 = 'Sensibilidad térmica';
  ENUM_STRING_MARKINGTECHNOLOGY_17 = 'Difusión térmica';
  ENUM_STRING_MARKINGTECHNOLOGY_18 = 'Otras métodos térmicos';
  ENUM_STRING_MARKINGTECHNOLOGY_19 = 'Electroerosión';
  ENUM_STRING_MARKINGTECHNOLOGY_20 = 'Electrostática';
  ENUM_STRING_MARKINGTECHNOLOGY_21 = 'Microficha fotográfica';
  ENUM_STRING_MARKINGTECHNOLOGY_22 = 'Máquina fotográfica de composición de imágenes';
  ENUM_STRING_MARKINGTECHNOLOGY_23 = 'Otros dispositivos fotográficos';
  ENUM_STRING_MARKINGTECHNOLOGY_24 = 'Sedimentación de iones';
  ENUM_STRING_MARKINGTECHNOLOGY_25 = 'Haz de electrones (eBeam)';
  ENUM_STRING_MARKINGTECHNOLOGY_26 = 'Máquina tipográfica';

// Constantes para la propiedad PaperSizesSupported
const 
  ENUM_STRING_PAPERSIZESSUPPORTED_00 = 'Desconocido';
  ENUM_STRING_PAPERSIZESSUPPORTED_01 = 'Otros';
  ENUM_STRING_PAPERSIZESSUPPORTED_02 = 'A';
  ENUM_STRING_PAPERSIZESSUPPORTED_03 = 'B';
  ENUM_STRING_PAPERSIZESSUPPORTED_04 = 'C';
  ENUM_STRING_PAPERSIZESSUPPORTED_05 = 'D';
  ENUM_STRING_PAPERSIZESSUPPORTED_06 = 'E';
  ENUM_STRING_PAPERSIZESSUPPORTED_07 = 'Carta';
  ENUM_STRING_PAPERSIZESSUPPORTED_08 = 'Oficio';
  ENUM_STRING_PAPERSIZESSUPPORTED_09 = 'Sobre-NA-10x13';
  ENUM_STRING_PAPERSIZESSUPPORTED_10 = 'Sobre-NA-9x12';
  ENUM_STRING_PAPERSIZESSUPPORTED_11 = 'Sobre-NA-Número-10';
  ENUM_STRING_PAPERSIZESSUPPORTED_12 = 'Sobre-NA-7x9';
  ENUM_STRING_PAPERSIZESSUPPORTED_13 = 'Sobre-NA-9x11';
  ENUM_STRING_PAPERSIZESSUPPORTED_14 = 'Sobre-NA-10x14';
  ENUM_STRING_PAPERSIZESSUPPORTED_15 = 'Sobre-NA-Número-9';
  ENUM_STRING_PAPERSIZESSUPPORTED_16 = 'Sobre-NA-6x9';
  ENUM_STRING_PAPERSIZESSUPPORTED_17 = 'Sobre-NA-10x15';
  ENUM_STRING_PAPERSIZESSUPPORTED_18 = 'A0';
  ENUM_STRING_PAPERSIZESSUPPORTED_19 = 'A1';
  ENUM_STRING_PAPERSIZESSUPPORTED_20 = 'A2';
  ENUM_STRING_PAPERSIZESSUPPORTED_21 = 'A3';
  ENUM_STRING_PAPERSIZESSUPPORTED_22 = 'A4';
  ENUM_STRING_PAPERSIZESSUPPORTED_23 = 'A5';
  ENUM_STRING_PAPERSIZESSUPPORTED_24 = 'A6';
  ENUM_STRING_PAPERSIZESSUPPORTED_25 = 'A7';
  ENUM_STRING_PAPERSIZESSUPPORTED_26 = 'A8';
  ENUM_STRING_PAPERSIZESSUPPORTED_27 = 'A9A10';
  ENUM_STRING_PAPERSIZESSUPPORTED_28 = 'B0';
  ENUM_STRING_PAPERSIZESSUPPORTED_29 = 'B1';
  ENUM_STRING_PAPERSIZESSUPPORTED_30 = 'B2';
  ENUM_STRING_PAPERSIZESSUPPORTED_31 = 'B3';
  ENUM_STRING_PAPERSIZESSUPPORTED_32 = 'B4';
  ENUM_STRING_PAPERSIZESSUPPORTED_33 = 'B5';
  ENUM_STRING_PAPERSIZESSUPPORTED_34 = 'B6';
  ENUM_STRING_PAPERSIZESSUPPORTED_35 = 'B7';
  ENUM_STRING_PAPERSIZESSUPPORTED_36 = 'B8';
  ENUM_STRING_PAPERSIZESSUPPORTED_37 = 'B9';
  ENUM_STRING_PAPERSIZESSUPPORTED_38 = 'B10';
  ENUM_STRING_PAPERSIZESSUPPORTED_39 = 'C0';
  ENUM_STRING_PAPERSIZESSUPPORTED_40 = 'C1';
  ENUM_STRING_PAPERSIZESSUPPORTED_41 = 'C2C3';
  ENUM_STRING_PAPERSIZESSUPPORTED_42 = 'C4';
  ENUM_STRING_PAPERSIZESSUPPORTED_43 = 'C5';
  ENUM_STRING_PAPERSIZESSUPPORTED_44 = 'C6';
  ENUM_STRING_PAPERSIZESSUPPORTED_45 = 'C7';
  ENUM_STRING_PAPERSIZESSUPPORTED_46 = 'C8';
  ENUM_STRING_PAPERSIZESSUPPORTED_47 = 'Designado por ISO';
  ENUM_STRING_PAPERSIZESSUPPORTED_48 = 'JIS B0';
  ENUM_STRING_PAPERSIZESSUPPORTED_49 = 'JIS B1';
  ENUM_STRING_PAPERSIZESSUPPORTED_50 = 'JIS B2';
  ENUM_STRING_PAPERSIZESSUPPORTED_51 = 'JIS B3';
  ENUM_STRING_PAPERSIZESSUPPORTED_52 = 'JIS B4';
  ENUM_STRING_PAPERSIZESSUPPORTED_53 = 'JIS B5';
  ENUM_STRING_PAPERSIZESSUPPORTED_54 = 'JIS B6';
  ENUM_STRING_PAPERSIZESSUPPORTED_55 = 'JIS B7';
  ENUM_STRING_PAPERSIZESSUPPORTED_56 = 'JIS B8';
  ENUM_STRING_PAPERSIZESSUPPORTED_57 = 'JIS B9';
  ENUM_STRING_PAPERSIZESSUPPORTED_58 = 'JIS B10';
  ENUM_STRING_PAPERSIZESSUPPORTED_59 = 'Carta NA';
  ENUM_STRING_PAPERSIZESSUPPORTED_60 = 'Oficio NA';
  ENUM_STRING_PAPERSIZESSUPPORTED_61 = 'Sobre C4';
  ENUM_STRING_PAPERSIZESSUPPORTED_62 = 'Sobre B4';
  ENUM_STRING_PAPERSIZESSUPPORTED_63 = 'Sobre C3';
  ENUM_STRING_PAPERSIZESSUPPORTED_64 = 'Sobre C4';
  ENUM_STRING_PAPERSIZESSUPPORTED_65 = 'Sobre C5';
  ENUM_STRING_PAPERSIZESSUPPORTED_66 = 'Sobre C6';
  ENUM_STRING_PAPERSIZESSUPPORTED_67 = 'Sobre largo designado';
  ENUM_STRING_PAPERSIZESSUPPORTED_68 = 'Sobre Monarca';
  ENUM_STRING_PAPERSIZESSUPPORTED_69 = 'Ejecutivo';
  ENUM_STRING_PAPERSIZESSUPPORTED_70 = 'Folio';
  ENUM_STRING_PAPERSIZESSUPPORTED_71 = 'Factura';
  ENUM_STRING_PAPERSIZESSUPPORTED_72 = 'Doble carta';
  ENUM_STRING_PAPERSIZESSUPPORTED_73 = 'Cuarto';

// Constantes para la propiedad PowerManagementCapabilities
const 
  ENUM_STRING_POWERMANAGEMENTCAPABILITIES_00 = 'Desconocido';
  ENUM_STRING_POWERMANAGEMENTCAPABILITIES_01 = 'No compatible';
  ENUM_STRING_POWERMANAGEMENTCAPABILITIES_02 = 'Deshabilitado';
  ENUM_STRING_POWERMANAGEMENTCAPABILITIES_03 = 'Habilitado';
  ENUM_STRING_POWERMANAGEMENTCAPABILITIES_04 = 'Modos de ahorro de energía establecidos automáticamente';
  ENUM_STRING_POWERMANAGEMENTCAPABILITIES_05 = 'Estado de energía configurable';
  ENUM_STRING_POWERMANAGEMENTCAPABILITIES_06 = 'Ciclo de energía permitido';
  ENUM_STRING_POWERMANAGEMENTCAPABILITIES_07 = 'Se admite el encendido por tiempo';

// Constantes para la propiedad PrinterState
const 
  ENUM_STRING_PRINTERSTATE_00 = 'Paused';
  ENUM_STRING_PRINTERSTATE_01 = 'Error';
  ENUM_STRING_PRINTERSTATE_02 = 'Pending Deletion';
  ENUM_STRING_PRINTERSTATE_03 = 'Paper Jam';
  ENUM_STRING_PRINTERSTATE_04 = 'Paper Out';
  ENUM_STRING_PRINTERSTATE_05 = 'Manual Feed';
  ENUM_STRING_PRINTERSTATE_06 = 'Paper Problem';
  ENUM_STRING_PRINTERSTATE_07 = 'Offline';
  ENUM_STRING_PRINTERSTATE_08 = 'IO Active';
  ENUM_STRING_PRINTERSTATE_09 = 'Busy';
  ENUM_STRING_PRINTERSTATE_10 = 'Printing';
  ENUM_STRING_PRINTERSTATE_11 = 'Output Bin Full';
  ENUM_STRING_PRINTERSTATE_12 = 'Not Available';
  ENUM_STRING_PRINTERSTATE_13 = 'Waiting';
  ENUM_STRING_PRINTERSTATE_14 = 'Processing';
  ENUM_STRING_PRINTERSTATE_15 = 'Initialization';
  ENUM_STRING_PRINTERSTATE_16 = 'Warming Up';
  ENUM_STRING_PRINTERSTATE_17 = 'Toner Low';
  ENUM_STRING_PRINTERSTATE_18 = 'No Toner';
  ENUM_STRING_PRINTERSTATE_19 = 'Page Punt';
  ENUM_STRING_PRINTERSTATE_20 = 'User Intervention Required';
  ENUM_STRING_PRINTERSTATE_21 = 'Out of Memory';
  ENUM_STRING_PRINTERSTATE_22 = 'Door Open';
  ENUM_STRING_PRINTERSTATE_23 = 'Server_Unknown';
  ENUM_STRING_PRINTERSTATE_24 = 'Power Save';

// Constantes para la propiedad PrinterStatus
const 
  ENUM_STRING_PRINTERSTATUS_00 = 'Otros';
  ENUM_STRING_PRINTERSTATUS_01 = 'Desconocido';
  ENUM_STRING_PRINTERSTATUS_02 = 'Inactivo';
  ENUM_STRING_PRINTERSTATUS_03 = 'Imprimiendo';
  ENUM_STRING_PRINTERSTATUS_04 = 'Calentamiento';
  ENUM_STRING_PRINTERSTATUS_05 = 'Impresión detenida';
  ENUM_STRING_PRINTERSTATUS_06 = 'Sin conexión';

// Constantes para la propiedad StatusInfo
const 
  ENUM_STRING_STATUSINFO_00 = 'Otros';
  ENUM_STRING_STATUSINFO_01 = 'Desconocido';
  ENUM_STRING_STATUSINFO_02 = 'Habilitado';
  ENUM_STRING_STATUSINFO_03 = 'Deshabilitado';
  ENUM_STRING_STATUSINFO_04 = 'No aplicable';

//=========================================================================
//
// I M P L E M E N T A T I O N
//
//=========================================================================
implementation

uses
  {Generales} Forms, Dialogs, Windows, SysUtils, WbemScripting_TLB,
  {GLibWMI} UProcedures, UConstantes, Types;

// Limpiar las propiedades
procedure TPrinterInfo.ClearProps;
begin
  Self.PrinterProperties.FAttributes := 0;
  Self.PrinterProperties.FAvailability := 0;
  Self.PrinterProperties.FAvailableJobSheetsCount := 0;
  Self.PrinterProperties.FAvailableJobSheetsAsString := EmptyStr;
  SetLength(PrinterProperties.FAvailableJobSheets, 0);
  Self.PrinterProperties.FAveragePagesPerMinute := 0;
  Self.PrinterProperties.FCapabilitiesCount := 0;
  Self.PrinterProperties.FCapabilitiesAsString := EmptyStr;
  SetLength(PrinterProperties.FCapabilities, 0);
  Self.PrinterProperties.FCapabilityDescriptionsCount := 0;
  Self.PrinterProperties.FCapabilityDescriptionsAsString := EmptyStr;
  SetLength(PrinterProperties.FCapabilityDescriptions, 0);
  Self.PrinterProperties.FCaption := EmptyStr;
  Self.PrinterProperties.FCharSetsSupportedCount := 0;
  Self.PrinterProperties.FCharSetsSupportedAsString := EmptyStr;
  SetLength(PrinterProperties.FCharSetsSupported, 0);
  Self.PrinterProperties.FComment := EmptyStr;
  Self.PrinterProperties.FConfigManagerErrorCode := 0;
  Self.PrinterProperties.FConfigManagerUserConfig := False;
  Self.PrinterProperties.FCreationClassName := EmptyStr;
  Self.PrinterProperties.FCurrentCapabilitiesCount := 0;
  Self.PrinterProperties.FCurrentCapabilitiesAsString := EmptyStr;
  SetLength(PrinterProperties.FCurrentCapabilities, 0);
  Self.PrinterProperties.FCurrentCharSet := EmptyStr;
  Self.PrinterProperties.FCurrentLanguage := 0;
  Self.PrinterProperties.FCurrentMimeType := EmptyStr;
  Self.PrinterProperties.FCurrentNaturalLanguage := EmptyStr;
  Self.PrinterProperties.FCurrentPaperType := EmptyStr;
  Self.PrinterProperties.FDefault := False;
  Self.PrinterProperties.FDefaultCapabilitiesCount := 0;
  Self.PrinterProperties.FDefaultCapabilitiesAsString := EmptyStr;
  SetLength(PrinterProperties.FDefaultCapabilities, 0);
  Self.PrinterProperties.FDefaultCopies := 0;
  Self.PrinterProperties.FDefaultLanguage := 0;
  Self.PrinterProperties.FDefaultMimeType := EmptyStr;
  Self.PrinterProperties.FDefaultNumberUp := 0;
  Self.PrinterProperties.FDefaultPaperType := EmptyStr;
  Self.PrinterProperties.FDefaultPriority := 0;
  Self.PrinterProperties.FDescription := EmptyStr;
  Self.PrinterProperties.FDetectedErrorState := 0;
  Self.PrinterProperties.FDeviceID := EmptyStr;
  Self.PrinterProperties.FDirect := False;
  Self.PrinterProperties.FDoCompleteFirst := False;
  Self.PrinterProperties.FDriverName := EmptyStr;
  Self.PrinterProperties.FEnableBIDI := False;
  Self.PrinterProperties.FEnableDevQueryPrint := False;
  Self.PrinterProperties.FErrorCleared := False;
  Self.PrinterProperties.FErrorDescription := EmptyStr;
  Self.PrinterProperties.FErrorInformationCount := 0;
  Self.PrinterProperties.FErrorInformationAsString := EmptyStr;
  SetLength(PrinterProperties.FErrorInformation, 0);
  Self.PrinterProperties.FExtendedDetectedErrorState := 0;
  Self.PrinterProperties.FExtendedPrinterStatus := 0;
  Self.PrinterProperties.FHidden := False;
  Self.PrinterProperties.FHorizontalResolution := 0;
  Self.PrinterProperties.FInstallDate := 0;
  Self.PrinterProperties.FJobCountSinceLastReset := 0;
  Self.PrinterProperties.FKeepPrintedJobs := False;
  Self.PrinterProperties.FLanguagesSupportedCount := 0;
  Self.PrinterProperties.FLanguagesSupportedAsString := EmptyStr;
  SetLength(PrinterProperties.FLanguagesSupported, 0);
  Self.PrinterProperties.FLastErrorCode := 0;
  Self.PrinterProperties.FLocal := False;
  Self.PrinterProperties.FLocation := EmptyStr;
  Self.PrinterProperties.FMarkingTechnology := 0;
  Self.PrinterProperties.FMaxCopies := 0;
  Self.PrinterProperties.FMaxNumberUp := 0;
  Self.PrinterProperties.FMaxSizeSupported := 0;
  Self.PrinterProperties.FMimeTypesSupportedCount := 0;
  Self.PrinterProperties.FMimeTypesSupportedAsString := EmptyStr;
  SetLength(PrinterProperties.FMimeTypesSupported, 0);
  Self.PrinterProperties.FName := EmptyStr;
  Self.PrinterProperties.FNaturalLanguagesSupportedCount := 0;
  Self.PrinterProperties.FNaturalLanguagesSupportedAsString := EmptyStr;
  SetLength(PrinterProperties.FNaturalLanguagesSupported, 0);
  Self.PrinterProperties.FNetwork := False;
  Self.PrinterProperties.FPaperSizesSupportedCount := 0;
  Self.PrinterProperties.FPaperSizesSupportedAsString := EmptyStr;
  SetLength(PrinterProperties.FPaperSizesSupported, 0);
  Self.PrinterProperties.FPaperTypesAvailableCount := 0;
  Self.PrinterProperties.FPaperTypesAvailableAsString := EmptyStr;
  SetLength(PrinterProperties.FPaperTypesAvailable, 0);
  Self.PrinterProperties.FParameters := EmptyStr;
  Self.PrinterProperties.FPNPDeviceID := EmptyStr;
  Self.PrinterProperties.FPortName := EmptyStr;
  Self.PrinterProperties.FPowerManagementCapabilitiesCount := 0;
  Self.PrinterProperties.FPowerManagementCapabilitiesAsString := EmptyStr;
  SetLength(PrinterProperties.FPowerManagementCapabilities, 0);
  Self.PrinterProperties.FPowerManagementSupported := False;
  Self.PrinterProperties.FPrinterPaperNamesCount := 0;
  Self.PrinterProperties.FPrinterPaperNamesAsString := EmptyStr;
  SetLength(PrinterProperties.FPrinterPaperNames, 0);
  Self.PrinterProperties.FPrinterState := 0;
  Self.PrinterProperties.FPrinterStatus := 0;
  Self.PrinterProperties.FPrintJobDataType := EmptyStr;
  Self.PrinterProperties.FPrintProcessor := EmptyStr;
  Self.PrinterProperties.FPriority := 0;
  Self.PrinterProperties.FPublished := False;
  Self.PrinterProperties.FQueued := False;
  Self.PrinterProperties.FRawOnly := False;
  Self.PrinterProperties.FSeparatorFile := EmptyStr;
  Self.PrinterProperties.FServerName := EmptyStr;
  Self.PrinterProperties.FShared := False;
  Self.PrinterProperties.FShareName := EmptyStr;
  Self.PrinterProperties.FSpoolEnabled := False;
  Self.PrinterProperties.FStartTime := 0;
  Self.PrinterProperties.FStatus := EmptyStr;
  Self.PrinterProperties.FStatusInfo := 0;
  Self.PrinterProperties.FSystemCreationClassName := EmptyStr;
  Self.PrinterProperties.FSystemName := EmptyStr;
  Self.PrinterProperties.FTimeOfLastReset := 0;
  Self.PrinterProperties.FUntilTime := 0;
  Self.PrinterProperties.FVerticalResolution := 0;
  Self.PrinterProperties.FWorkOffline := False;
end;

//: Constructor del componente
constructor TPrinterInfo.Create(AOwner: TComponent);
begin
  inherited;
  Self.FPrinterProperties := TPrinterProperties.Create();
  Self.MSDNHelp := 'https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-printer';
end;

//: destructor del componente
destructor TPrinterInfo.Destroy();
begin
  // liberar
  FreeAndNil(Self.FPrinterProperties);
  inherited;
end;

//: Obtener la clase
function TPrinterInfo.GetWMIClass(): string;
begin
  Result := 'Win32_Printer'
end;

//: Obtener Root
function TPrinterInfo.GetWMIRoot(): string;
begin
  Result := '';
end;

//: Procedmiento de activación
procedure TPrinterInfo.SetActive(const Value: Boolean);
begin
  // método heredado
  inherited;
end;

// Acceso a los elementos de la propiedad <AvailableJobSheets>
function TPrinterProperties.GetAvailableJobSheets(index: integer):string;
begin
  if (index >= Self.FAvailableJobSheetsCount) then begin
    Index := Self.FAvailableJobSheetsCount - 1;
  end;
  Result := Self.FAvailableJobSheets[index];
end;

// Acceso a los elementos de la propiedad <Capabilities>
function TPrinterProperties.GetCapabilities(index: integer):integer;
begin
  if (index >= Self.FCapabilitiesCount) then begin
    Index := Self.FCapabilitiesCount - 1;
  end;
  Result := Self.FCapabilities[index];
end;

// Acceso a los elementos de la propiedad <CapabilityDescriptions>
function TPrinterProperties.GetCapabilityDescriptions(index: integer):string;
begin
  if (index >= Self.FCapabilityDescriptionsCount) then begin
    Index := Self.FCapabilityDescriptionsCount - 1;
  end;
  Result := Self.FCapabilityDescriptions[index];
end;

// Acceso a los elementos de la propiedad <CharSetsSupported>
function TPrinterProperties.GetCharSetsSupported(index: integer):string;
begin
  if (index >= Self.FCharSetsSupportedCount) then begin
    Index := Self.FCharSetsSupportedCount - 1;
  end;
  Result := Self.FCharSetsSupported[index];
end;

// Acceso a los elementos de la propiedad <CurrentCapabilities>
function TPrinterProperties.GetCurrentCapabilities(index: integer):integer;
begin
  if (index >= Self.FCurrentCapabilitiesCount) then begin
    Index := Self.FCurrentCapabilitiesCount - 1;
  end;
  Result := Self.FCurrentCapabilities[index];
end;

// Acceso a los elementos de la propiedad <DefaultCapabilities>
function TPrinterProperties.GetDefaultCapabilities(index: integer):integer;
begin
  if (index >= Self.FDefaultCapabilitiesCount) then begin
    Index := Self.FDefaultCapabilitiesCount - 1;
  end;
  Result := Self.FDefaultCapabilities[index];
end;

// Acceso a los elementos de la propiedad <ErrorInformation>
function TPrinterProperties.GetErrorInformation(index: integer):string;
begin
  if (index >= Self.FErrorInformationCount) then begin
    Index := Self.FErrorInformationCount - 1;
  end;
  Result := Self.FErrorInformation[index];
end;

// Acceso a los elementos de la propiedad <LanguagesSupported>
function TPrinterProperties.GetLanguagesSupported(index: integer):integer;
begin
  if (index >= Self.FLanguagesSupportedCount) then begin
    Index := Self.FLanguagesSupportedCount - 1;
  end;
  Result := Self.FLanguagesSupported[index];
end;

// Acceso a los elementos de la propiedad <MimeTypesSupported>
function TPrinterProperties.GetMimeTypesSupported(index: integer):string;
begin
  if (index >= Self.FMimeTypesSupportedCount) then begin
    Index := Self.FMimeTypesSupportedCount - 1;
  end;
  Result := Self.FMimeTypesSupported[index];
end;

// Acceso a los elementos de la propiedad <NaturalLanguagesSupported>
function TPrinterProperties.GetNaturalLanguagesSupported(index: integer):string;
begin
  if (index >= Self.FNaturalLanguagesSupportedCount) then begin
    Index := Self.FNaturalLanguagesSupportedCount - 1;
  end;
  Result := Self.FNaturalLanguagesSupported[index];
end;

// Acceso a los elementos de la propiedad <PaperSizesSupported>
function TPrinterProperties.GetPaperSizesSupported(index: integer):integer;
begin
  if (index >= Self.FPaperSizesSupportedCount) then begin
    Index := Self.FPaperSizesSupportedCount - 1;
  end;
  Result := Self.FPaperSizesSupported[index];
end;

// Acceso a los elementos de la propiedad <PaperTypesAvailable>
function TPrinterProperties.GetPaperTypesAvailable(index: integer):string;
begin
  if (index >= Self.FPaperTypesAvailableCount) then begin
    Index := Self.FPaperTypesAvailableCount - 1;
  end;
  Result := Self.FPaperTypesAvailable[index];
end;

// Acceso a los elementos de la propiedad <PowerManagementCapabilities>
function TPrinterProperties.GetPowerManagementCapabilities(index: integer):integer;
begin
  if (index >= Self.FPowerManagementCapabilitiesCount) then begin
    Index := Self.FPowerManagementCapabilitiesCount - 1;
  end;
  Result := Self.FPowerManagementCapabilities[index];
end;

// Acceso a los elementos de la propiedad <PrinterPaperNames>
function TPrinterProperties.GetPrinterPaperNames(index: integer):string;
begin
  if (index >= Self.FPrinterPaperNamesCount) then begin
    Index := Self.FPrinterPaperNamesCount - 1;
  end;
  Result := Self.FPrinterPaperNames[index];
end;


//: Rellenar las propiedades del componente.
procedure TPrinterInfo.FillProperties(AIndex: integer);
var
  v:     variant;
  vNull: boolean;
  vp:    TPrinterProperties;
begin
  // Llamar al heredado (importante)
  inherited;
  // Rellenar propiedades...
  vp := PrinterProperties;

  GetWMIPropertyValue(Self, 'Attributes', v, vNull);
  vp.FAttributes := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Availability', v, vNull);
  vp.FAvailability := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'AvailableJobSheets', v, vNull);
  vp.FAvailableJobSheetsAsString := VariantStrValue(v, vNull);
  StringToArrayString(vp.FAvailableJobSheetsAsString, vp.FAvailableJobSheets);
  vp.FAvailableJobSheetsCount := Length(vp.FAvailableJobSheets);

  GetWMIPropertyValue(Self, 'AveragePagesPerMinute', v, vNull);
  vp.FAveragePagesPerMinute := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Capabilities', v, vNull);
  vp.FCapabilitiesAsString := VariantStrValue(v, vNull);
  StringToArrayInteger(vp.FCapabilitiesAsString, vp.FCapabilities);
  vp.FCapabilitiesCount := Length(vp.FCapabilities);

  GetWMIPropertyValue(Self, 'CapabilityDescriptions', v, vNull);
  vp.FCapabilityDescriptionsAsString := VariantStrValue(v, vNull);
  StringToArrayString(vp.FCapabilityDescriptionsAsString, vp.FCapabilityDescriptions);
  vp.FCapabilityDescriptionsCount := Length(vp.FCapabilityDescriptions);

  GetWMIPropertyValue(Self, 'Caption', v, vNull);
  vp.FCaption := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'CharSetsSupported', v, vNull);
  vp.FCharSetsSupportedAsString := VariantStrValue(v, vNull);
  StringToArrayString(vp.FCharSetsSupportedAsString, vp.FCharSetsSupported);
  vp.FCharSetsSupportedCount := Length(vp.FCharSetsSupported);

  GetWMIPropertyValue(Self, 'Comment', v, vNull);
  vp.FComment := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'ConfigManagerErrorCode', v, vNull);
  vp.FConfigManagerErrorCode := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'ConfigManagerUserConfig', v, vNull);
  vp.FConfigManagerUserConfig := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'CreationClassName', v, vNull);
  vp.FCreationClassName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'CurrentCapabilities', v, vNull);
  vp.FCurrentCapabilitiesAsString := VariantStrValue(v, vNull);
  StringToArrayInteger(vp.FCurrentCapabilitiesAsString, vp.FCurrentCapabilities);
  vp.FCurrentCapabilitiesCount := Length(vp.FCurrentCapabilities);

  GetWMIPropertyValue(Self, 'CurrentCharSet', v, vNull);
  vp.FCurrentCharSet := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'CurrentLanguage', v, vNull);
  vp.FCurrentLanguage := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'CurrentMimeType', v, vNull);
  vp.FCurrentMimeType := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'CurrentNaturalLanguage', v, vNull);
  vp.FCurrentNaturalLanguage := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'CurrentPaperType', v, vNull);
  vp.FCurrentPaperType := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Default', v, vNull);
  vp.FDefault := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'DefaultCapabilities', v, vNull);
  vp.FDefaultCapabilitiesAsString := VariantStrValue(v, vNull);
  StringToArrayInteger(vp.FDefaultCapabilitiesAsString, vp.FDefaultCapabilities);
  vp.FDefaultCapabilitiesCount := Length(vp.FDefaultCapabilities);

  GetWMIPropertyValue(Self, 'DefaultCopies', v, vNull);
  vp.FDefaultCopies := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'DefaultLanguage', v, vNull);
  vp.FDefaultLanguage := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'DefaultMimeType', v, vNull);
  vp.FDefaultMimeType := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'DefaultNumberUp', v, vNull);
  vp.FDefaultNumberUp := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'DefaultPaperType', v, vNull);
  vp.FDefaultPaperType := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'DefaultPriority', v, vNull);
  vp.FDefaultPriority := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Description', v, vNull);
  vp.FDescription := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'DetectedErrorState', v, vNull);
  vp.FDetectedErrorState := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'DeviceID', v, vNull);
  vp.FDeviceID := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Direct', v, vNull);
  vp.FDirect := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'DoCompleteFirst', v, vNull);
  vp.FDoCompleteFirst := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'DriverName', v, vNull);
  vp.FDriverName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'EnableBIDI', v, vNull);
  vp.FEnableBIDI := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'EnableDevQueryPrint', v, vNull);
  vp.FEnableDevQueryPrint := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'ErrorCleared', v, vNull);
  vp.FErrorCleared := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'ErrorDescription', v, vNull);
  vp.FErrorDescription := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'ErrorInformation', v, vNull);
  vp.FErrorInformationAsString := VariantStrValue(v, vNull);
  StringToArrayString(vp.FErrorInformationAsString, vp.FErrorInformation);
  vp.FErrorInformationCount := Length(vp.FErrorInformation);

  GetWMIPropertyValue(Self, 'ExtendedDetectedErrorState', v, vNull);
  vp.FExtendedDetectedErrorState := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'ExtendedPrinterStatus', v, vNull);
  vp.FExtendedPrinterStatus := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Hidden', v, vNull);
  vp.FHidden := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'HorizontalResolution', v, vNull);
  vp.FHorizontalResolution := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'InstallDate', v, vNull);
  vp.FInstallDate := VariantDateTimeValue(v, vNull);

  GetWMIPropertyValue(Self, 'JobCountSinceLastReset', v, vNull);
  vp.FJobCountSinceLastReset := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'KeepPrintedJobs', v, vNull);
  vp.FKeepPrintedJobs := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'LanguagesSupported', v, vNull);
  vp.FLanguagesSupportedAsString := VariantStrValue(v, vNull);
  StringToArrayInteger(vp.FLanguagesSupportedAsString, vp.FLanguagesSupported);
  vp.FLanguagesSupportedCount := Length(vp.FLanguagesSupported);

  GetWMIPropertyValue(Self, 'LastErrorCode', v, vNull);
  vp.FLastErrorCode := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Local', v, vNull);
  vp.FLocal := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'Location', v, vNull);
  vp.FLocation := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'MarkingTechnology', v, vNull);
  vp.FMarkingTechnology := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'MaxCopies', v, vNull);
  vp.FMaxCopies := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'MaxNumberUp', v, vNull);
  vp.FMaxNumberUp := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'MaxSizeSupported', v, vNull);
  vp.FMaxSizeSupported := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'MimeTypesSupported', v, vNull);
  vp.FMimeTypesSupportedAsString := VariantStrValue(v, vNull);
  StringToArrayString(vp.FMimeTypesSupportedAsString, vp.FMimeTypesSupported);
  vp.FMimeTypesSupportedCount := Length(vp.FMimeTypesSupported);

  GetWMIPropertyValue(Self, 'Name', v, vNull);
  vp.FName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'NaturalLanguagesSupported', v, vNull);
  vp.FNaturalLanguagesSupportedAsString := VariantStrValue(v, vNull);
  StringToArrayString(vp.FNaturalLanguagesSupportedAsString, vp.FNaturalLanguagesSupported);
  vp.FNaturalLanguagesSupportedCount := Length(vp.FNaturalLanguagesSupported);

  GetWMIPropertyValue(Self, 'Network', v, vNull);
  vp.FNetwork := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'PaperSizesSupported', v, vNull);
  vp.FPaperSizesSupportedAsString := VariantStrValue(v, vNull);
  StringToArrayInteger(vp.FPaperSizesSupportedAsString, vp.FPaperSizesSupported);
  vp.FPaperSizesSupportedCount := Length(vp.FPaperSizesSupported);

  GetWMIPropertyValue(Self, 'PaperTypesAvailable', v, vNull);
  vp.FPaperTypesAvailableAsString := VariantStrValue(v, vNull);
  StringToArrayString(vp.FPaperTypesAvailableAsString, vp.FPaperTypesAvailable);
  vp.FPaperTypesAvailableCount := Length(vp.FPaperTypesAvailable);

  GetWMIPropertyValue(Self, 'Parameters', v, vNull);
  vp.FParameters := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'PNPDeviceID', v, vNull);
  vp.FPNPDeviceID := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'PortName', v, vNull);
  vp.FPortName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'PowerManagementCapabilities', v, vNull);
  vp.FPowerManagementCapabilitiesAsString := VariantStrValue(v, vNull);
  StringToArrayInteger(vp.FPowerManagementCapabilitiesAsString, vp.FPowerManagementCapabilities);
  vp.FPowerManagementCapabilitiesCount := Length(vp.FPowerManagementCapabilities);

  GetWMIPropertyValue(Self, 'PowerManagementSupported', v, vNull);
  vp.FPowerManagementSupported := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'PrinterPaperNames', v, vNull);
  vp.FPrinterPaperNamesAsString := VariantStrValue(v, vNull);
  StringToArrayString(vp.FPrinterPaperNamesAsString, vp.FPrinterPaperNames);
  vp.FPrinterPaperNamesCount := Length(vp.FPrinterPaperNames);

  GetWMIPropertyValue(Self, 'PrinterState', v, vNull);
  vp.FPrinterState := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'PrinterStatus', v, vNull);
  vp.FPrinterStatus := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'PrintJobDataType', v, vNull);
  vp.FPrintJobDataType := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'PrintProcessor', v, vNull);
  vp.FPrintProcessor := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Priority', v, vNull);
  vp.FPriority := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'Published', v, vNull);
  vp.FPublished := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'Queued', v, vNull);
  vp.FQueued := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'RawOnly', v, vNull);
  vp.FRawOnly := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'SeparatorFile', v, vNull);
  vp.FSeparatorFile := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'ServerName', v, vNull);
  vp.FServerName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'Shared', v, vNull);
  vp.FShared := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'ShareName', v, vNull);
  vp.FShareName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'SpoolEnabled', v, vNull);
  vp.FSpoolEnabled := VariantBooleanValue(v, vNull);

  GetWMIPropertyValue(Self, 'StartTime', v, vNull);
  vp.FStartTime := VariantDateTimeValue(v, vNull);

  GetWMIPropertyValue(Self, 'Status', v, vNull);
  vp.FStatus := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'StatusInfo', v, vNull);
  vp.FStatusInfo := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'SystemCreationClassName', v, vNull);
  vp.FSystemCreationClassName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'SystemName', v, vNull);
  vp.FSystemName := VariantStrValue(v, vNull);

  GetWMIPropertyValue(Self, 'TimeOfLastReset', v, vNull);
  vp.FTimeOfLastReset := VariantDateTimeValue(v, vNull);

  GetWMIPropertyValue(Self, 'UntilTime', v, vNull);
  vp.FUntilTime := VariantDateTimeValue(v, vNull);

  GetWMIPropertyValue(Self, 'VerticalResolution', v, vNull);
  vp.FVerticalResolution := VariantIntegerValue(v, vNull);

  GetWMIPropertyValue(Self, 'WorkOffline', v, vNull);
  vp.FWorkOffline := VariantBooleanValue(v, vNull);
end;


// Obtener la propiedad como string
function TPrinterProperties.GetAllAvailabilityAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_AVAILABILITY_00;
    01: Result := ENUM_STRING_AVAILABILITY_01;
    02: Result := ENUM_STRING_AVAILABILITY_02;
    03: Result := ENUM_STRING_AVAILABILITY_03;
    04: Result := ENUM_STRING_AVAILABILITY_04;
    05: Result := ENUM_STRING_AVAILABILITY_05;
    06: Result := ENUM_STRING_AVAILABILITY_06;
    07: Result := ENUM_STRING_AVAILABILITY_07;
    08: Result := ENUM_STRING_AVAILABILITY_08;
    09: Result := ENUM_STRING_AVAILABILITY_09;
    10: Result := ENUM_STRING_AVAILABILITY_10;
    11: Result := ENUM_STRING_AVAILABILITY_11;
    12: Result := ENUM_STRING_AVAILABILITY_12;
    13: Result := ENUM_STRING_AVAILABILITY_13;
    14: Result := ENUM_STRING_AVAILABILITY_14;
    15: Result := ENUM_STRING_AVAILABILITY_15;
    16: Result := ENUM_STRING_AVAILABILITY_16;
    17: Result := ENUM_STRING_AVAILABILITY_17;
    18: Result := ENUM_STRING_AVAILABILITY_18;
    19: Result := ENUM_STRING_AVAILABILITY_19;
    20: Result := ENUM_STRING_AVAILABILITY_20;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TPrinterProperties.GetAllCapabilitiesAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_CAPABILITIES_00;
    01: Result := ENUM_STRING_CAPABILITIES_01;
    02: Result := ENUM_STRING_CAPABILITIES_02;
    03: Result := ENUM_STRING_CAPABILITIES_03;
    04: Result := ENUM_STRING_CAPABILITIES_04;
    05: Result := ENUM_STRING_CAPABILITIES_05;
    06: Result := ENUM_STRING_CAPABILITIES_06;
    07: Result := ENUM_STRING_CAPABILITIES_07;
    08: Result := ENUM_STRING_CAPABILITIES_08;
    09: Result := ENUM_STRING_CAPABILITIES_09;
    10: Result := ENUM_STRING_CAPABILITIES_10;
    11: Result := ENUM_STRING_CAPABILITIES_11;
    12: Result := ENUM_STRING_CAPABILITIES_12;
    13: Result := ENUM_STRING_CAPABILITIES_13;
    14: Result := ENUM_STRING_CAPABILITIES_14;
    15: Result := ENUM_STRING_CAPABILITIES_15;
    16: Result := ENUM_STRING_CAPABILITIES_16;
    17: Result := ENUM_STRING_CAPABILITIES_17;
    18: Result := ENUM_STRING_CAPABILITIES_18;
    19: Result := ENUM_STRING_CAPABILITIES_19;
    20: Result := ENUM_STRING_CAPABILITIES_20;
    21: Result := ENUM_STRING_CAPABILITIES_21;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TPrinterProperties.GetAllConfigManagerErrorCodeAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_00;
    01: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_01;
    02: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_02;
    03: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_03;
    04: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_04;
    05: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_05;
    06: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_06;
    07: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_07;
    08: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_08;
    09: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_09;
    10: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_10;
    11: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_11;
    12: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_12;
    13: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_13;
    14: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_14;
    15: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_15;
    16: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_16;
    17: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_17;
    18: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_18;
    19: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_19;
    20: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_20;
    21: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_21;
    22: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_22;
    23: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_23;
    24: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_24;
    25: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_25;
    26: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_26;
    27: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_27;
    28: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_28;
    29: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_29;
    30: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_30;
    31: Result := ENUM_STRING_CONFIGMANAGERERRORCODE_31;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TPrinterProperties.GetAllCurrentCapabilitiesAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_CURRENTCAPABILITIES_00;
    01: Result := ENUM_STRING_CURRENTCAPABILITIES_01;
    02: Result := ENUM_STRING_CURRENTCAPABILITIES_02;
    03: Result := ENUM_STRING_CURRENTCAPABILITIES_03;
    04: Result := ENUM_STRING_CURRENTCAPABILITIES_04;
    05: Result := ENUM_STRING_CURRENTCAPABILITIES_05;
    06: Result := ENUM_STRING_CURRENTCAPABILITIES_06;
    07: Result := ENUM_STRING_CURRENTCAPABILITIES_07;
    08: Result := ENUM_STRING_CURRENTCAPABILITIES_08;
    09: Result := ENUM_STRING_CURRENTCAPABILITIES_09;
    10: Result := ENUM_STRING_CURRENTCAPABILITIES_10;
    11: Result := ENUM_STRING_CURRENTCAPABILITIES_11;
    12: Result := ENUM_STRING_CURRENTCAPABILITIES_12;
    13: Result := ENUM_STRING_CURRENTCAPABILITIES_13;
    14: Result := ENUM_STRING_CURRENTCAPABILITIES_14;
    15: Result := ENUM_STRING_CURRENTCAPABILITIES_15;
    16: Result := ENUM_STRING_CURRENTCAPABILITIES_16;
    17: Result := ENUM_STRING_CURRENTCAPABILITIES_17;
    18: Result := ENUM_STRING_CURRENTCAPABILITIES_18;
    19: Result := ENUM_STRING_CURRENTCAPABILITIES_19;
    20: Result := ENUM_STRING_CURRENTCAPABILITIES_20;
    21: Result := ENUM_STRING_CURRENTCAPABILITIES_21;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TPrinterProperties.GetAllCurrentLanguageAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_CURRENTLANGUAGE_00;
    01: Result := ENUM_STRING_CURRENTLANGUAGE_01;
    02: Result := ENUM_STRING_CURRENTLANGUAGE_02;
    03: Result := ENUM_STRING_CURRENTLANGUAGE_03;
    04: Result := ENUM_STRING_CURRENTLANGUAGE_04;
    05: Result := ENUM_STRING_CURRENTLANGUAGE_05;
    06: Result := ENUM_STRING_CURRENTLANGUAGE_06;
    07: Result := ENUM_STRING_CURRENTLANGUAGE_07;
    08: Result := ENUM_STRING_CURRENTLANGUAGE_08;
    09: Result := ENUM_STRING_CURRENTLANGUAGE_09;
    10: Result := ENUM_STRING_CURRENTLANGUAGE_10;
    11: Result := ENUM_STRING_CURRENTLANGUAGE_11;
    12: Result := ENUM_STRING_CURRENTLANGUAGE_12;
    13: Result := ENUM_STRING_CURRENTLANGUAGE_13;
    14: Result := ENUM_STRING_CURRENTLANGUAGE_14;
    15: Result := ENUM_STRING_CURRENTLANGUAGE_15;
    16: Result := ENUM_STRING_CURRENTLANGUAGE_16;
    17: Result := ENUM_STRING_CURRENTLANGUAGE_17;
    18: Result := ENUM_STRING_CURRENTLANGUAGE_18;
    19: Result := ENUM_STRING_CURRENTLANGUAGE_19;
    20: Result := ENUM_STRING_CURRENTLANGUAGE_20;
    21: Result := ENUM_STRING_CURRENTLANGUAGE_21;
    22: Result := ENUM_STRING_CURRENTLANGUAGE_22;
    23: Result := ENUM_STRING_CURRENTLANGUAGE_23;
    24: Result := ENUM_STRING_CURRENTLANGUAGE_24;
    25: Result := ENUM_STRING_CURRENTLANGUAGE_25;
    26: Result := ENUM_STRING_CURRENTLANGUAGE_26;
    27: Result := ENUM_STRING_CURRENTLANGUAGE_27;
    28: Result := ENUM_STRING_CURRENTLANGUAGE_28;
    29: Result := ENUM_STRING_CURRENTLANGUAGE_29;
    30: Result := ENUM_STRING_CURRENTLANGUAGE_30;
    31: Result := ENUM_STRING_CURRENTLANGUAGE_31;
    32: Result := ENUM_STRING_CURRENTLANGUAGE_32;
    33: Result := ENUM_STRING_CURRENTLANGUAGE_33;
    34: Result := ENUM_STRING_CURRENTLANGUAGE_34;
    35: Result := ENUM_STRING_CURRENTLANGUAGE_35;
    36: Result := ENUM_STRING_CURRENTLANGUAGE_36;
    37: Result := ENUM_STRING_CURRENTLANGUAGE_37;
    38: Result := ENUM_STRING_CURRENTLANGUAGE_38;
    39: Result := ENUM_STRING_CURRENTLANGUAGE_39;
    40: Result := ENUM_STRING_CURRENTLANGUAGE_40;
    41: Result := ENUM_STRING_CURRENTLANGUAGE_41;
    42: Result := ENUM_STRING_CURRENTLANGUAGE_42;
    43: Result := ENUM_STRING_CURRENTLANGUAGE_43;
    44: Result := ENUM_STRING_CURRENTLANGUAGE_44;
    45: Result := ENUM_STRING_CURRENTLANGUAGE_45;
    46: Result := ENUM_STRING_CURRENTLANGUAGE_46;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TPrinterProperties.GetAllDefaultCapabilitiesAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_DEFAULTCAPABILITIES_00;
    01: Result := ENUM_STRING_DEFAULTCAPABILITIES_01;
    02: Result := ENUM_STRING_DEFAULTCAPABILITIES_02;
    03: Result := ENUM_STRING_DEFAULTCAPABILITIES_03;
    04: Result := ENUM_STRING_DEFAULTCAPABILITIES_04;
    05: Result := ENUM_STRING_DEFAULTCAPABILITIES_05;
    06: Result := ENUM_STRING_DEFAULTCAPABILITIES_06;
    07: Result := ENUM_STRING_DEFAULTCAPABILITIES_07;
    08: Result := ENUM_STRING_DEFAULTCAPABILITIES_08;
    09: Result := ENUM_STRING_DEFAULTCAPABILITIES_09;
    10: Result := ENUM_STRING_DEFAULTCAPABILITIES_10;
    11: Result := ENUM_STRING_DEFAULTCAPABILITIES_11;
    12: Result := ENUM_STRING_DEFAULTCAPABILITIES_12;
    13: Result := ENUM_STRING_DEFAULTCAPABILITIES_13;
    14: Result := ENUM_STRING_DEFAULTCAPABILITIES_14;
    15: Result := ENUM_STRING_DEFAULTCAPABILITIES_15;
    16: Result := ENUM_STRING_DEFAULTCAPABILITIES_16;
    17: Result := ENUM_STRING_DEFAULTCAPABILITIES_17;
    18: Result := ENUM_STRING_DEFAULTCAPABILITIES_18;
    19: Result := ENUM_STRING_DEFAULTCAPABILITIES_19;
    20: Result := ENUM_STRING_DEFAULTCAPABILITIES_20;
    21: Result := ENUM_STRING_DEFAULTCAPABILITIES_21;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TPrinterProperties.GetAllDefaultLanguageAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_DEFAULTLANGUAGE_00;
    01: Result := ENUM_STRING_DEFAULTLANGUAGE_01;
    02: Result := ENUM_STRING_DEFAULTLANGUAGE_02;
    03: Result := ENUM_STRING_DEFAULTLANGUAGE_03;
    04: Result := ENUM_STRING_DEFAULTLANGUAGE_04;
    05: Result := ENUM_STRING_DEFAULTLANGUAGE_05;
    06: Result := ENUM_STRING_DEFAULTLANGUAGE_06;
    07: Result := ENUM_STRING_DEFAULTLANGUAGE_07;
    08: Result := ENUM_STRING_DEFAULTLANGUAGE_08;
    09: Result := ENUM_STRING_DEFAULTLANGUAGE_09;
    10: Result := ENUM_STRING_DEFAULTLANGUAGE_10;
    11: Result := ENUM_STRING_DEFAULTLANGUAGE_11;
    12: Result := ENUM_STRING_DEFAULTLANGUAGE_12;
    13: Result := ENUM_STRING_DEFAULTLANGUAGE_13;
    14: Result := ENUM_STRING_DEFAULTLANGUAGE_14;
    15: Result := ENUM_STRING_DEFAULTLANGUAGE_15;
    16: Result := ENUM_STRING_DEFAULTLANGUAGE_16;
    17: Result := ENUM_STRING_DEFAULTLANGUAGE_17;
    18: Result := ENUM_STRING_DEFAULTLANGUAGE_18;
    19: Result := ENUM_STRING_DEFAULTLANGUAGE_19;
    20: Result := ENUM_STRING_DEFAULTLANGUAGE_20;
    21: Result := ENUM_STRING_DEFAULTLANGUAGE_21;
    22: Result := ENUM_STRING_DEFAULTLANGUAGE_22;
    23: Result := ENUM_STRING_DEFAULTLANGUAGE_23;
    24: Result := ENUM_STRING_DEFAULTLANGUAGE_24;
    25: Result := ENUM_STRING_DEFAULTLANGUAGE_25;
    26: Result := ENUM_STRING_DEFAULTLANGUAGE_26;
    27: Result := ENUM_STRING_DEFAULTLANGUAGE_27;
    28: Result := ENUM_STRING_DEFAULTLANGUAGE_28;
    29: Result := ENUM_STRING_DEFAULTLANGUAGE_29;
    30: Result := ENUM_STRING_DEFAULTLANGUAGE_30;
    31: Result := ENUM_STRING_DEFAULTLANGUAGE_31;
    32: Result := ENUM_STRING_DEFAULTLANGUAGE_32;
    33: Result := ENUM_STRING_DEFAULTLANGUAGE_33;
    34: Result := ENUM_STRING_DEFAULTLANGUAGE_34;
    35: Result := ENUM_STRING_DEFAULTLANGUAGE_35;
    36: Result := ENUM_STRING_DEFAULTLANGUAGE_36;
    37: Result := ENUM_STRING_DEFAULTLANGUAGE_37;
    38: Result := ENUM_STRING_DEFAULTLANGUAGE_38;
    39: Result := ENUM_STRING_DEFAULTLANGUAGE_39;
    40: Result := ENUM_STRING_DEFAULTLANGUAGE_40;
    41: Result := ENUM_STRING_DEFAULTLANGUAGE_41;
    42: Result := ENUM_STRING_DEFAULTLANGUAGE_42;
    43: Result := ENUM_STRING_DEFAULTLANGUAGE_43;
    44: Result := ENUM_STRING_DEFAULTLANGUAGE_44;
    45: Result := ENUM_STRING_DEFAULTLANGUAGE_45;
    46: Result := ENUM_STRING_DEFAULTLANGUAGE_46;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TPrinterProperties.GetAllDetectedErrorStateAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_DETECTEDERRORSTATE_00;
    01: Result := ENUM_STRING_DETECTEDERRORSTATE_01;
    02: Result := ENUM_STRING_DETECTEDERRORSTATE_02;
    03: Result := ENUM_STRING_DETECTEDERRORSTATE_03;
    04: Result := ENUM_STRING_DETECTEDERRORSTATE_04;
    05: Result := ENUM_STRING_DETECTEDERRORSTATE_05;
    06: Result := ENUM_STRING_DETECTEDERRORSTATE_06;
    07: Result := ENUM_STRING_DETECTEDERRORSTATE_07;
    08: Result := ENUM_STRING_DETECTEDERRORSTATE_08;
    09: Result := ENUM_STRING_DETECTEDERRORSTATE_09;
    10: Result := ENUM_STRING_DETECTEDERRORSTATE_10;
    11: Result := ENUM_STRING_DETECTEDERRORSTATE_11;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TPrinterProperties.GetAllExtendedDetectedErrorStateAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_EXTENDEDDETECTEDERRORSTATE_00;
    01: Result := ENUM_STRING_EXTENDEDDETECTEDERRORSTATE_01;
    02: Result := ENUM_STRING_EXTENDEDDETECTEDERRORSTATE_02;
    03: Result := ENUM_STRING_EXTENDEDDETECTEDERRORSTATE_03;
    04: Result := ENUM_STRING_EXTENDEDDETECTEDERRORSTATE_04;
    05: Result := ENUM_STRING_EXTENDEDDETECTEDERRORSTATE_05;
    06: Result := ENUM_STRING_EXTENDEDDETECTEDERRORSTATE_06;
    07: Result := ENUM_STRING_EXTENDEDDETECTEDERRORSTATE_07;
    08: Result := ENUM_STRING_EXTENDEDDETECTEDERRORSTATE_08;
    09: Result := ENUM_STRING_EXTENDEDDETECTEDERRORSTATE_09;
    10: Result := ENUM_STRING_EXTENDEDDETECTEDERRORSTATE_10;
    11: Result := ENUM_STRING_EXTENDEDDETECTEDERRORSTATE_11;
    12: Result := ENUM_STRING_EXTENDEDDETECTEDERRORSTATE_12;
    13: Result := ENUM_STRING_EXTENDEDDETECTEDERRORSTATE_13;
    14: Result := ENUM_STRING_EXTENDEDDETECTEDERRORSTATE_14;
    15: Result := ENUM_STRING_EXTENDEDDETECTEDERRORSTATE_15;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TPrinterProperties.GetAllExtendedPrinterStatusAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_EXTENDEDPRINTERSTATUS_00;
    01: Result := ENUM_STRING_EXTENDEDPRINTERSTATUS_01;
    02: Result := ENUM_STRING_EXTENDEDPRINTERSTATUS_02;
    03: Result := ENUM_STRING_EXTENDEDPRINTERSTATUS_03;
    04: Result := ENUM_STRING_EXTENDEDPRINTERSTATUS_04;
    05: Result := ENUM_STRING_EXTENDEDPRINTERSTATUS_05;
    06: Result := ENUM_STRING_EXTENDEDPRINTERSTATUS_06;
    07: Result := ENUM_STRING_EXTENDEDPRINTERSTATUS_07;
    08: Result := ENUM_STRING_EXTENDEDPRINTERSTATUS_08;
    09: Result := ENUM_STRING_EXTENDEDPRINTERSTATUS_09;
    10: Result := ENUM_STRING_EXTENDEDPRINTERSTATUS_10;
    11: Result := ENUM_STRING_EXTENDEDPRINTERSTATUS_11;
    12: Result := ENUM_STRING_EXTENDEDPRINTERSTATUS_12;
    13: Result := ENUM_STRING_EXTENDEDPRINTERSTATUS_13;
    14: Result := ENUM_STRING_EXTENDEDPRINTERSTATUS_14;
    15: Result := ENUM_STRING_EXTENDEDPRINTERSTATUS_15;
    16: Result := ENUM_STRING_EXTENDEDPRINTERSTATUS_16;
    17: Result := ENUM_STRING_EXTENDEDPRINTERSTATUS_17;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TPrinterProperties.GetAllLanguagesSupportedAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_LANGUAGESSUPPORTED_00;
    01: Result := ENUM_STRING_LANGUAGESSUPPORTED_01;
    02: Result := ENUM_STRING_LANGUAGESSUPPORTED_02;
    03: Result := ENUM_STRING_LANGUAGESSUPPORTED_03;
    04: Result := ENUM_STRING_LANGUAGESSUPPORTED_04;
    05: Result := ENUM_STRING_LANGUAGESSUPPORTED_05;
    06: Result := ENUM_STRING_LANGUAGESSUPPORTED_06;
    07: Result := ENUM_STRING_LANGUAGESSUPPORTED_07;
    08: Result := ENUM_STRING_LANGUAGESSUPPORTED_08;
    09: Result := ENUM_STRING_LANGUAGESSUPPORTED_09;
    10: Result := ENUM_STRING_LANGUAGESSUPPORTED_10;
    11: Result := ENUM_STRING_LANGUAGESSUPPORTED_11;
    12: Result := ENUM_STRING_LANGUAGESSUPPORTED_12;
    13: Result := ENUM_STRING_LANGUAGESSUPPORTED_13;
    14: Result := ENUM_STRING_LANGUAGESSUPPORTED_14;
    15: Result := ENUM_STRING_LANGUAGESSUPPORTED_15;
    16: Result := ENUM_STRING_LANGUAGESSUPPORTED_16;
    17: Result := ENUM_STRING_LANGUAGESSUPPORTED_17;
    18: Result := ENUM_STRING_LANGUAGESSUPPORTED_18;
    19: Result := ENUM_STRING_LANGUAGESSUPPORTED_19;
    20: Result := ENUM_STRING_LANGUAGESSUPPORTED_20;
    21: Result := ENUM_STRING_LANGUAGESSUPPORTED_21;
    22: Result := ENUM_STRING_LANGUAGESSUPPORTED_22;
    23: Result := ENUM_STRING_LANGUAGESSUPPORTED_23;
    24: Result := ENUM_STRING_LANGUAGESSUPPORTED_24;
    25: Result := ENUM_STRING_LANGUAGESSUPPORTED_25;
    26: Result := ENUM_STRING_LANGUAGESSUPPORTED_26;
    27: Result := ENUM_STRING_LANGUAGESSUPPORTED_27;
    28: Result := ENUM_STRING_LANGUAGESSUPPORTED_28;
    29: Result := ENUM_STRING_LANGUAGESSUPPORTED_29;
    30: Result := ENUM_STRING_LANGUAGESSUPPORTED_30;
    31: Result := ENUM_STRING_LANGUAGESSUPPORTED_31;
    32: Result := ENUM_STRING_LANGUAGESSUPPORTED_32;
    33: Result := ENUM_STRING_LANGUAGESSUPPORTED_33;
    34: Result := ENUM_STRING_LANGUAGESSUPPORTED_34;
    35: Result := ENUM_STRING_LANGUAGESSUPPORTED_35;
    36: Result := ENUM_STRING_LANGUAGESSUPPORTED_36;
    37: Result := ENUM_STRING_LANGUAGESSUPPORTED_37;
    38: Result := ENUM_STRING_LANGUAGESSUPPORTED_38;
    39: Result := ENUM_STRING_LANGUAGESSUPPORTED_39;
    40: Result := ENUM_STRING_LANGUAGESSUPPORTED_40;
    41: Result := ENUM_STRING_LANGUAGESSUPPORTED_41;
    42: Result := ENUM_STRING_LANGUAGESSUPPORTED_42;
    43: Result := ENUM_STRING_LANGUAGESSUPPORTED_43;
    44: Result := ENUM_STRING_LANGUAGESSUPPORTED_44;
    45: Result := ENUM_STRING_LANGUAGESSUPPORTED_45;
    46: Result := ENUM_STRING_LANGUAGESSUPPORTED_46;
    47: Result := ENUM_STRING_LANGUAGESSUPPORTED_47;
    48: Result := ENUM_STRING_LANGUAGESSUPPORTED_48;
    49: Result := ENUM_STRING_LANGUAGESSUPPORTED_49;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TPrinterProperties.GetAllMarkingTechnologyAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_MARKINGTECHNOLOGY_00;
    01: Result := ENUM_STRING_MARKINGTECHNOLOGY_01;
    02: Result := ENUM_STRING_MARKINGTECHNOLOGY_02;
    03: Result := ENUM_STRING_MARKINGTECHNOLOGY_03;
    04: Result := ENUM_STRING_MARKINGTECHNOLOGY_04;
    05: Result := ENUM_STRING_MARKINGTECHNOLOGY_05;
    06: Result := ENUM_STRING_MARKINGTECHNOLOGY_06;
    07: Result := ENUM_STRING_MARKINGTECHNOLOGY_07;
    08: Result := ENUM_STRING_MARKINGTECHNOLOGY_08;
    09: Result := ENUM_STRING_MARKINGTECHNOLOGY_09;
    10: Result := ENUM_STRING_MARKINGTECHNOLOGY_10;
    11: Result := ENUM_STRING_MARKINGTECHNOLOGY_11;
    12: Result := ENUM_STRING_MARKINGTECHNOLOGY_12;
    13: Result := ENUM_STRING_MARKINGTECHNOLOGY_13;
    14: Result := ENUM_STRING_MARKINGTECHNOLOGY_14;
    15: Result := ENUM_STRING_MARKINGTECHNOLOGY_15;
    16: Result := ENUM_STRING_MARKINGTECHNOLOGY_16;
    17: Result := ENUM_STRING_MARKINGTECHNOLOGY_17;
    18: Result := ENUM_STRING_MARKINGTECHNOLOGY_18;
    19: Result := ENUM_STRING_MARKINGTECHNOLOGY_19;
    20: Result := ENUM_STRING_MARKINGTECHNOLOGY_20;
    21: Result := ENUM_STRING_MARKINGTECHNOLOGY_21;
    22: Result := ENUM_STRING_MARKINGTECHNOLOGY_22;
    23: Result := ENUM_STRING_MARKINGTECHNOLOGY_23;
    24: Result := ENUM_STRING_MARKINGTECHNOLOGY_24;
    25: Result := ENUM_STRING_MARKINGTECHNOLOGY_25;
    26: Result := ENUM_STRING_MARKINGTECHNOLOGY_26;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TPrinterProperties.GetAllPaperSizesSupportedAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_PAPERSIZESSUPPORTED_00;
    01: Result := ENUM_STRING_PAPERSIZESSUPPORTED_01;
    02: Result := ENUM_STRING_PAPERSIZESSUPPORTED_02;
    03: Result := ENUM_STRING_PAPERSIZESSUPPORTED_03;
    04: Result := ENUM_STRING_PAPERSIZESSUPPORTED_04;
    05: Result := ENUM_STRING_PAPERSIZESSUPPORTED_05;
    06: Result := ENUM_STRING_PAPERSIZESSUPPORTED_06;
    07: Result := ENUM_STRING_PAPERSIZESSUPPORTED_07;
    08: Result := ENUM_STRING_PAPERSIZESSUPPORTED_08;
    09: Result := ENUM_STRING_PAPERSIZESSUPPORTED_09;
    10: Result := ENUM_STRING_PAPERSIZESSUPPORTED_10;
    11: Result := ENUM_STRING_PAPERSIZESSUPPORTED_11;
    12: Result := ENUM_STRING_PAPERSIZESSUPPORTED_12;
    13: Result := ENUM_STRING_PAPERSIZESSUPPORTED_13;
    14: Result := ENUM_STRING_PAPERSIZESSUPPORTED_14;
    15: Result := ENUM_STRING_PAPERSIZESSUPPORTED_15;
    16: Result := ENUM_STRING_PAPERSIZESSUPPORTED_16;
    17: Result := ENUM_STRING_PAPERSIZESSUPPORTED_17;
    18: Result := ENUM_STRING_PAPERSIZESSUPPORTED_18;
    19: Result := ENUM_STRING_PAPERSIZESSUPPORTED_19;
    20: Result := ENUM_STRING_PAPERSIZESSUPPORTED_20;
    21: Result := ENUM_STRING_PAPERSIZESSUPPORTED_21;
    22: Result := ENUM_STRING_PAPERSIZESSUPPORTED_22;
    23: Result := ENUM_STRING_PAPERSIZESSUPPORTED_23;
    24: Result := ENUM_STRING_PAPERSIZESSUPPORTED_24;
    25: Result := ENUM_STRING_PAPERSIZESSUPPORTED_25;
    26: Result := ENUM_STRING_PAPERSIZESSUPPORTED_26;
    27: Result := ENUM_STRING_PAPERSIZESSUPPORTED_27;
    28: Result := ENUM_STRING_PAPERSIZESSUPPORTED_28;
    29: Result := ENUM_STRING_PAPERSIZESSUPPORTED_29;
    30: Result := ENUM_STRING_PAPERSIZESSUPPORTED_30;
    31: Result := ENUM_STRING_PAPERSIZESSUPPORTED_31;
    32: Result := ENUM_STRING_PAPERSIZESSUPPORTED_32;
    33: Result := ENUM_STRING_PAPERSIZESSUPPORTED_33;
    34: Result := ENUM_STRING_PAPERSIZESSUPPORTED_34;
    35: Result := ENUM_STRING_PAPERSIZESSUPPORTED_35;
    36: Result := ENUM_STRING_PAPERSIZESSUPPORTED_36;
    37: Result := ENUM_STRING_PAPERSIZESSUPPORTED_37;
    38: Result := ENUM_STRING_PAPERSIZESSUPPORTED_38;
    39: Result := ENUM_STRING_PAPERSIZESSUPPORTED_39;
    40: Result := ENUM_STRING_PAPERSIZESSUPPORTED_40;
    41: Result := ENUM_STRING_PAPERSIZESSUPPORTED_41;
    42: Result := ENUM_STRING_PAPERSIZESSUPPORTED_42;
    43: Result := ENUM_STRING_PAPERSIZESSUPPORTED_43;
    44: Result := ENUM_STRING_PAPERSIZESSUPPORTED_44;
    45: Result := ENUM_STRING_PAPERSIZESSUPPORTED_45;
    46: Result := ENUM_STRING_PAPERSIZESSUPPORTED_46;
    47: Result := ENUM_STRING_PAPERSIZESSUPPORTED_47;
    48: Result := ENUM_STRING_PAPERSIZESSUPPORTED_48;
    49: Result := ENUM_STRING_PAPERSIZESSUPPORTED_49;
    50: Result := ENUM_STRING_PAPERSIZESSUPPORTED_50;
    51: Result := ENUM_STRING_PAPERSIZESSUPPORTED_51;
    52: Result := ENUM_STRING_PAPERSIZESSUPPORTED_52;
    53: Result := ENUM_STRING_PAPERSIZESSUPPORTED_53;
    54: Result := ENUM_STRING_PAPERSIZESSUPPORTED_54;
    55: Result := ENUM_STRING_PAPERSIZESSUPPORTED_55;
    56: Result := ENUM_STRING_PAPERSIZESSUPPORTED_56;
    57: Result := ENUM_STRING_PAPERSIZESSUPPORTED_57;
    58: Result := ENUM_STRING_PAPERSIZESSUPPORTED_58;
    59: Result := ENUM_STRING_PAPERSIZESSUPPORTED_59;
    60: Result := ENUM_STRING_PAPERSIZESSUPPORTED_60;
    61: Result := ENUM_STRING_PAPERSIZESSUPPORTED_61;
    62: Result := ENUM_STRING_PAPERSIZESSUPPORTED_62;
    63: Result := ENUM_STRING_PAPERSIZESSUPPORTED_63;
    64: Result := ENUM_STRING_PAPERSIZESSUPPORTED_64;
    65: Result := ENUM_STRING_PAPERSIZESSUPPORTED_65;
    66: Result := ENUM_STRING_PAPERSIZESSUPPORTED_66;
    67: Result := ENUM_STRING_PAPERSIZESSUPPORTED_67;
    68: Result := ENUM_STRING_PAPERSIZESSUPPORTED_68;
    69: Result := ENUM_STRING_PAPERSIZESSUPPORTED_69;
    70: Result := ENUM_STRING_PAPERSIZESSUPPORTED_70;
    71: Result := ENUM_STRING_PAPERSIZESSUPPORTED_71;
    72: Result := ENUM_STRING_PAPERSIZESSUPPORTED_72;
    73: Result := ENUM_STRING_PAPERSIZESSUPPORTED_73;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TPrinterProperties.GetAllPowerManagementCapabilitiesAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_POWERMANAGEMENTCAPABILITIES_00;
    01: Result := ENUM_STRING_POWERMANAGEMENTCAPABILITIES_01;
    02: Result := ENUM_STRING_POWERMANAGEMENTCAPABILITIES_02;
    03: Result := ENUM_STRING_POWERMANAGEMENTCAPABILITIES_03;
    04: Result := ENUM_STRING_POWERMANAGEMENTCAPABILITIES_04;
    05: Result := ENUM_STRING_POWERMANAGEMENTCAPABILITIES_05;
    06: Result := ENUM_STRING_POWERMANAGEMENTCAPABILITIES_06;
    07: Result := ENUM_STRING_POWERMANAGEMENTCAPABILITIES_07;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TPrinterProperties.GetAllPrinterStateAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_PRINTERSTATE_00;
    01: Result := ENUM_STRING_PRINTERSTATE_01;
    02: Result := ENUM_STRING_PRINTERSTATE_02;
    03: Result := ENUM_STRING_PRINTERSTATE_03;
    04: Result := ENUM_STRING_PRINTERSTATE_04;
    05: Result := ENUM_STRING_PRINTERSTATE_05;
    06: Result := ENUM_STRING_PRINTERSTATE_06;
    07: Result := ENUM_STRING_PRINTERSTATE_07;
    08: Result := ENUM_STRING_PRINTERSTATE_08;
    09: Result := ENUM_STRING_PRINTERSTATE_09;
    10: Result := ENUM_STRING_PRINTERSTATE_10;
    11: Result := ENUM_STRING_PRINTERSTATE_11;
    12: Result := ENUM_STRING_PRINTERSTATE_12;
    13: Result := ENUM_STRING_PRINTERSTATE_13;
    14: Result := ENUM_STRING_PRINTERSTATE_14;
    15: Result := ENUM_STRING_PRINTERSTATE_15;
    16: Result := ENUM_STRING_PRINTERSTATE_16;
    17: Result := ENUM_STRING_PRINTERSTATE_17;
    18: Result := ENUM_STRING_PRINTERSTATE_18;
    19: Result := ENUM_STRING_PRINTERSTATE_19;
    20: Result := ENUM_STRING_PRINTERSTATE_20;
    21: Result := ENUM_STRING_PRINTERSTATE_21;
    22: Result := ENUM_STRING_PRINTERSTATE_22;
    23: Result := ENUM_STRING_PRINTERSTATE_23;
    24: Result := ENUM_STRING_PRINTERSTATE_24;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TPrinterProperties.GetAllPrinterStatusAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_PRINTERSTATUS_00;
    01: Result := ENUM_STRING_PRINTERSTATUS_01;
    02: Result := ENUM_STRING_PRINTERSTATUS_02;
    03: Result := ENUM_STRING_PRINTERSTATUS_03;
    04: Result := ENUM_STRING_PRINTERSTATUS_04;
    05: Result := ENUM_STRING_PRINTERSTATUS_05;
    06: Result := ENUM_STRING_PRINTERSTATUS_06;
  else
    Result := STR_EMPTY;
  end;
end;

// Obtener la propiedad como string
function TPrinterProperties.GetAllStatusInfoAsString(index:integer):string;
begin
  case index of
    00: Result := ENUM_STRING_STATUSINFO_00;
    01: Result := ENUM_STRING_STATUSINFO_01;
    02: Result := ENUM_STRING_STATUSINFO_02;
    03: Result := ENUM_STRING_STATUSINFO_03;
    04: Result := ENUM_STRING_STATUSINFO_04;
  else
    Result := STR_EMPTY;
  end;
end;


// Obtener núm. de elementos de la propiedad como string
function TPrinterProperties.GetAllAvailabilityCount:integer;
begin
  Result := 21
end;

// Obtener núm. de elementos de la propiedad como string
function TPrinterProperties.GetAllCapabilitiesCount:integer;
begin
  Result := 22
end;

// Obtener núm. de elementos de la propiedad como string
function TPrinterProperties.GetAllConfigManagerErrorCodeCount:integer;
begin
  Result := 32
end;

// Obtener núm. de elementos de la propiedad como string
function TPrinterProperties.GetAllCurrentCapabilitiesCount:integer;
begin
  Result := 22
end;

// Obtener núm. de elementos de la propiedad como string
function TPrinterProperties.GetAllCurrentLanguageCount:integer;
begin
  Result := 47
end;

// Obtener núm. de elementos de la propiedad como string
function TPrinterProperties.GetAllDefaultCapabilitiesCount:integer;
begin
  Result := 22
end;

// Obtener núm. de elementos de la propiedad como string
function TPrinterProperties.GetAllDefaultLanguageCount:integer;
begin
  Result := 47
end;

// Obtener núm. de elementos de la propiedad como string
function TPrinterProperties.GetAllDetectedErrorStateCount:integer;
begin
  Result := 12
end;

// Obtener núm. de elementos de la propiedad como string
function TPrinterProperties.GetAllExtendedDetectedErrorStateCount:integer;
begin
  Result := 16
end;

// Obtener núm. de elementos de la propiedad como string
function TPrinterProperties.GetAllExtendedPrinterStatusCount:integer;
begin
  Result := 18
end;

// Obtener núm. de elementos de la propiedad como string
function TPrinterProperties.GetAllLanguagesSupportedCount:integer;
begin
  Result := 50
end;

// Obtener núm. de elementos de la propiedad como string
function TPrinterProperties.GetAllMarkingTechnologyCount:integer;
begin
  Result := 27
end;

// Obtener núm. de elementos de la propiedad como string
function TPrinterProperties.GetAllPaperSizesSupportedCount:integer;
begin
  Result := 74
end;

// Obtener núm. de elementos de la propiedad como string
function TPrinterProperties.GetAllPowerManagementCapabilitiesCount:integer;
begin
  Result := 8
end;

// Obtener núm. de elementos de la propiedad como string
function TPrinterProperties.GetAllPrinterStateCount:integer;
begin
  Result := 25
end;

// Obtener núm. de elementos de la propiedad como string
function TPrinterProperties.GetAllPrinterStatusCount:integer;
begin
  Result := 7
end;

// Obtener núm. de elementos de la propiedad como string
function TPrinterProperties.GetAllStatusInfoCount:integer;
begin
  Result := 5
end;

// Obtiene el resultado de ejecutar un método como string 
function TPrinterInfo.GetErrorControlAsString(FErrorControl:integer): string; 
begin
   case FErrorControl of
     0: Result := 'Success';
     1: Result := 'Access denied';
     2: Result := 'Other';
    else
      Result := EmptyStr
    end;
end;

function TPrinterInfo.Reset(AInstanceProp:string; AInstanceValue:Variant):integer;
var
  arr:TArrVariant;
  v:variant;
begin
  SetLength(arr, 0);
  // Ejecutar el proceso
  ExecuteClassMethod(Self, AInstanceProp, AInstanceValue,
    'Reset',
    [],
    arr,
    [],
    [],
    v);
  Result := v;
end;

function TPrinterInfo.Pause(AInstanceProp:string; AInstanceValue:Variant):integer;
var
  arr:TArrVariant;
  v:variant;
begin
  SetLength(arr, 0);
  // Ejecutar el proceso
  ExecuteClassMethod(Self, AInstanceProp, AInstanceValue,
    'Pause',
    [],
    arr,
    [],
    [],
    v);
  Result := v;
end;

function TPrinterInfo.Resume(AInstanceProp:string; AInstanceValue:Variant):integer;
var
  arr:TArrVariant;
  v:variant;
begin
  SetLength(arr, 0);
  // Ejecutar el proceso
  ExecuteClassMethod(Self, AInstanceProp, AInstanceValue,
    'Resume',
    [],
    arr,
    [],
    [],
    v);
  Result := v;
end;

function TPrinterInfo.CancelAllJobs(AInstanceProp:string; AInstanceValue:Variant):integer;
var
  arr:TArrVariant;
  v:variant;
begin
  SetLength(arr, 0);
  // Ejecutar el proceso
  ExecuteClassMethod(Self, AInstanceProp, AInstanceValue,
    'CancelAllJobs',
    [],
    arr,
    [],
    [],
    v);
  Result := v;
end;

function TPrinterInfo.RenamePrinter(AInstanceProp:string; AInstanceValue:Variant;
      aNewPrinterName:string):integer;
var
  arr:TArrVariant;
  v:variant;
begin
  SetLength(arr, 1);
  arr[0] := aNewPrinterName;
  // Ejecutar el proceso
  ExecuteClassMethod(Self, AInstanceProp, AInstanceValue,
    'RenamePrinter',
    ['NewPrinterName'],
    arr,
    [ptIn],
    [wbemCIMTypeString],
    v);
  Result := v;
end;

function TPrinterInfo.PrintTestPage(AInstanceProp:string; AInstanceValue:Variant):integer;
var
  arr:TArrVariant;
  v:variant;
begin
  SetLength(arr, 0);
  // Ejecutar el proceso
  ExecuteClassMethod(Self, AInstanceProp, AInstanceValue,
    'PrintTestPage',
    [],
    arr,
    [],
    [],
    v);
  Result := v;
end;

function TPrinterInfo.SetDefaultPrinter(AInstanceProp:string; AInstanceValue:Variant):integer;
var
  arr:TArrVariant;
  v:variant;
begin
  SetLength(arr, 0);
  // Ejecutar el proceso
  ExecuteClassMethod(Self, AInstanceProp, AInstanceValue,
    'SetDefaultPrinter',
    [],
    arr,
    [],
    [],
    v);
  Result := v;
end;

end.
