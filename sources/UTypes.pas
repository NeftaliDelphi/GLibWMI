unit UTypes;

//=========================================================================
//
// I N T E R F A C E
//
//=========================================================================
interface

type
  {: Format para el nombre de fichero
    @enum ffDateTimeFormat      Formato de fichero con fecha y hora.
    @enum ffAppNameFormat       Nombre de fichero igual a la aplicación.
    @enum ffDateFormat          Formato de fichero con la fecha.
    @enum ffAccumulative        Ficheros acumulativos, no por cada ejecución.
  }
  TFileNameFormat = (ffDateTimeFormat, ffAppNameFormat, ffDateFormat, ffAccumulative);


//=========================================================================
//
// I M P L E M E N T A T I O N
//
//=========================================================================
implementation

end.
