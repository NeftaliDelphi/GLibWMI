# GLibWMI

## DESCRIPCIÓN

___________________________________________________________________________
**NOTA**: ¡Por favor "marque" este proyecto en GitHub! No cuesta nada y ayuda para hacer referencia al código. Gracias.  

**NOTE**: Please "star" (like) this project in GitHub! It's cost nothing but help to reference the code. Thanks.  
<img src=https://i.imgur.com/lK6aU2Z.png> 
___________________________________________________________________________

### (English)  
GLibWMI is a Delphi library of components, focused on the Administration of Windows Systems. 
They are based on Windows WMI (Windows Management Instrumentation). 

### (Spanish)  
GLibWMI es una librería/biblioteca de componentes para Delphi, enfocados a la Administración de Sistemas Windows. 
Están basados en la WMI de Windows (Windows Management Instrumentation).  

<img src=https://neftali.clubdelphi.com/GLibWMI/imagenes/imagen_libreria2.png> 

## CÓMO UTILIZAR LOS COMPONENTES.
(ES) Una vez instalada la librería, suelte el componente en un formulario y actívelo.
(En) Once the library is installed, drop the component on a form and activate it.


## LISTA DE COMPONENTES
Los componentes se instalan en la paleta de componentes dividivos en 2 categorías (Software y Hardware).

<img src=https://neftali.clubdelphi.com/GLibWMI/imagenes/componentes_liberia.png> 

A continuación hay una descripción básica de la funcionalidad de cada uno de los componentes.



<img src=https://neftali.clubdelphi.com/GLibWMI/imagenes/CBIOSInfo.jpg> 
- <b>TBIOSInfo</b>: La clase Win32_BIOS representa los atributos del servicio de entrada y salida básico del sistema (BIOS, Basic Input/Output Service) instalado en el equipo.

MSDN link: https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-bios


<img src=https://neftali.clubdelphi.com/GLibWMI/imagenes/CComputerSystemInfo.jpg> 
- <b>TComputerSystemInfo</b>: La clase Win32_ComputerSystem representa el sistema operativo de un equipo en un entorno Win32.

MSDN link: https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-computersystem


<img src=https://neftali.clubdelphi.com/GLibWMI/imagenes/CServiceInfo.jpg> 
- <b>TServiceInfo</b>: La clase Win32_Service representa un servicio en un sistema Win32. Un aplicación de servicio cumple las reglas de la interfaz del Administrador de control de servicios (SCM, Service Control Manager) y un usuario la puede iniciar automáticamente al arrancar el sistema a través del programa Servicios del Panel de control o mediante una aplicación que utilice las funciones de servicio de la API de Win32. Los servicios se pueden ejecutar aunque ningún usuario haya iniciado sesión en el sistema.

MSDN link: https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-service


<img src=https://neftali.clubdelphi.com/GLibWMI/imagenes/CPnPEntityInfo.jpg> 
- <b>TPnPEntityInfo</b>: La clase Win32_PnPEntity representa las propiedades de un dispositivo Plug and Play. Las entidades Plug and Play se muestran como entradas en el Administrador de dispositivos que se encuentra en el Panel de control.

MSDN link: https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-pnpentity


<img src=https://neftali.clubdelphi.com/GLibWMI/imagenes/CDiskPartitionInfo.jpg> 
- <b>TDiskPartitionInfo</b>: La clase Win32_DiskPartition representa las posibilidades y la capacidad de administración de un área con particiones en un disco físico de un sistema Win32.
Ejemplo: Disco nº 0, Partición nº1.

MSDN link: https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-diskpartition


<img src=https://neftali.clubdelphi.com/GLibWMI/imagenes/CProcessorInfo.jpg> 
- <b>TProcessorInfo</b>: La clase Win32_Processor representa un dispositivo capaz de interpretar una secuencia de instrucciones de código máquina en un equipo Win32. En un equipo multiprocesador, habrá una instancia de esta clase para cada procesador.

MSDN link: https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-processor


<img src=https://neftali.clubdelphi.com/GLibWMI/imagenes/CDiskDriveInfo.jpg> 
- <b>TDiskDriveInfo</b>: La clase Win32_DiskDrive representa una unidad física de disco tal y como la percibe un equipo donde se ejecuta el sistema operativo Win32. Cualquier interfaz a una unidad física de disco de Win32 es un descendiente, o miembro, de esta clase. Las características de la unidad de disco vistas a través de este objeto corresponden a las características de administración y la lógica de la unidad. En algunos casos, esto puede no reflejar las características físicas reales del dispositivo. Cualquier objeto basado en otro dispositivo lógico no sería un miembro de esta clase.
Ejemplo: Disco fijo IDE.

MSDN link: https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-diskdrive


<img src=https://neftali.clubdelphi.com/GLibWMI/imagenes/CCDROMDriveInfo.jpg> 
- <b>TCDROMDriveInfo</b>: La clase Win32_CDROMDrive representa una unidad de CD-ROM en Win32_ComputerSystem. 

Nota: el nombre de la unidad no se corresponde con la letra de unidad lógica asignada al dispositivo.

MSDN link: https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-cdromdrive


<img src=https://neftali.clubdelphi.com/GLibWMI/imagenes/CVideoControllerInfo.jpg> 
- <b>TVideoControllerInfo</b>: La clase Win32_VideoController representa las posibilidades y la capacidad de administración de la controladora de vídeo en un equipo Win32. 
Ejemplos: fabricante del adaptador de vídeo, versión del conjunto de chips, resolución de la pantalla y número de colores.

MSDN link: https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-videocontroller


<img src=https://neftali.clubdelphi.com/GLibWMI/imagenes/CUSBControllerInfo.jpg> 
- <b>TUSBControllerInfo</b>: La clase Win32_USBController administra las capacidades de una controladora de bus serie universal (USB).

MSDN link: https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-usbcontroller


<img src=https://neftali.clubdelphi.com/GLibWMI/imagenes/CKeyboardInfo.jpg> 
- <b>TKeyboardInfo</b>: La clase Win32_Keyboard representa un teclado instalado en un sistema Win32.
Ejemplo: Un teclado Natural(R) de Microsoft

MSDN link: https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-keyboard


<img src=https://neftali.clubdelphi.com/GLibWMI/imagenes/CDesktopMonitorInfo.jpg> 
- <b>TDesktopMonitorInfo</b>: La clase Win32_DesktopMonitor representa el tipo de dispositivo de pantalla o monitor conectado al equipo.

MSDN link: https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-desktopmonitor


<img src=https://neftali.clubdelphi.com/GLibWMI/imagenes/CPointingDeviceInfo.jpg> 
- <b>TPointingDeviceInfo</b>: La clase Win32_PointingDevice representa un dispositivo de entrada usado para señalar y seleccionar zonas de la pantalla en un equipo Win32. Cualquier dispositivo usado para controlar un puntero o señalar en la pantalla de un equipo Win32 es miembro de esta clase.
Ejemplo: un mouse, teclado táctil o tablillas de escritura o plumas.

MSDN link: https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-pointingdevice


<img src=https://neftali.clubdelphi.com/GLibWMI/imagenes/CNetworkAdapterInfo.jpg> 
- <b>TNetworkAdapterInfo</b>: La clase Win32_NetworkAdapter representa un adaptador de red en un sistema Win32.

MSDN link: https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-networkadapter


<img src=https://neftali.clubdelphi.com/GLibWMI/imagenes/CBatteryInfo.jpg> 
- <b>TBatteryInfo</b>: La clase Win32_Battery  representa una batería conectada al sistema del equipo. Esta clase se aplica a las baterías en los sistemas portátiles y otras baterías internas/externas.

MSDN link: https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-battery


<img src=https://neftali.clubdelphi.com/GLibWMI/imagenes/CSoundDeviceInfo.jpg> 
- <b>TSoundDeviceInfo</b>: La clase Win32_SoundDevice representa las propiedades de un dispositivo de sonido instalado en un sistema Win32.

MSDN link: https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-sounddevice


<img src=https://neftali.clubdelphi.com/GLibWMI/imagenes/CFanInfo.jpg> 
- <b>TFanInfo</b>: La clase Win32_Fan representa las propiedades de un ventilador del equipo. Por ejemplo, el ventilador para la refrigeración de la CPU.

MSDN link: https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-fan


<img src=https://neftali.clubdelphi.com/GLibWMI/imagenes/CPrinterInfo.jpg> 
- <b>TPrinterInfo</b>: Capacidades y administración del dispositivo lógico de la impresora.

MSDN link: https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-printer


<img src=https://neftali.clubdelphi.com/GLibWMI/imagenes/CUserAccountInfo.jpg> 
- <b>TUserAccountInfo</b>: La clase Win32_UserAccount contiene información acerca de una cuenta de usuario de un sistema Win32.

MSDN link: https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-useraccount


<img src=https://neftali.clubdelphi.com/GLibWMI/imagenes/COperatingSystemInfo.jpg> 
- <b>TOperatingSystemInfo</b>: La clase Win32_OperatingSystem representa un sistema operativo instalado en un sistema Win32. Los sistemas operativos que se pueden instalar en un sistema Win32 son descendientes (o miembros) de esta clase.
Ejemplo: Microsoft Windows 95.

MSDN link: https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-operatingsystem


<img src=https://neftali.clubdelphi.com/GLibWMI/imagenes/CProcessInfo.jpg> 
- <b>TProcessInfo</b>: La clase Win32_Process representa una secuencia de eventos en un sistema Win32. Cualquier secuencia compuesta por la interacción de uno o más procesadores o intérpretes, código ejecutable y un conjunto de datos de entrada, es un descendiente (o miembro) de esta clase.
Ejemplo: una aplicación cliente que se ejecuta en un sistema Win32.

MSDN link: https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-process


<img src=https://neftali.clubdelphi.com/GLibWMI/imagenes/CPrintJobInfo.jpg> 
- <b>TPrintJobInfo</b>: CIM_Job es un elemento lógico que representa una unidad de trabajo para un sistema, tal como un trabajo de impresión. Un trabajo es distinto a un proceso, en el sentido en que un trabajo se puede programar.

MSDN link: https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-printjob


<img src=https://neftali.clubdelphi.com/GLibWMI/imagenes/CEnvironmentInfo.jpg> 
- <b>TEnvironmentInfo</b>: La clase Win32_Environment representa una configuración de entorno o de sistema en un sistema Win32.

MSDN link: https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-environment


<img src=https://neftali.clubdelphi.com/GLibWMI/imagenes/CShareInfo.jpg> 
- <b>TShareInfo</b>: La clase Win32_Share representa un recurso compartido en un sistema Win32. Puede tratarse de una unidad de disco, impresora, comunicación entre procesos u otro dispositivo que se pueda compartir.
Ejemplo: C:\PUBLIC.

MSDN link: https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-share


<img src=https://neftali.clubdelphi.com/GLibWMI/imagenes/CCodecFileInfo.jpg> 
- <b>TCodecFileInfo</b>: La clase Win32_CodecFile representa el códec de audio o vídeo instalado en el equipo. Los códecs convierten un tipo de formato de medio en otro, normalmente un formato comprimido a uno descomprimido. El nombre "códec" deriva de una combinación de "compress" (comprimir) y "decompress" (descomprimir). Por ejemplo, un códec puede convertir un formato comprimido como MS-ADPCM a un formato sin comprimir como PCM, que la mayor parte del hardware de audio puede reproducir directamente.

MSDN link: https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-codecfile


<img src=https://neftali.clubdelphi.com/GLibWMI/imagenes/CRegistryInfo.jpg> 
- <b>TRegistryInfo</b>: La clase Win32_Registry representa el Registro del sistema en un sistema Win32.

MSDN link: https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-registry


<img src=https://neftali.clubdelphi.com/GLibWMI/imagenes/CPhysicalMemoryInfo.jpg> 
- <b>TPhysicalMemoryInfo</b>: La clase Win32_PhysicalMemory representa un dispositivo de memoria física que se encuentra en un sistema como disponible para el sistema operativo.

MSDN link: https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-physicalmemory


<img src=https://neftali.clubdelphi.com/GLibWMI/imagenes/CProductInfo.jpg> 
- <b>TProductInfo</b>: Las instancias de esta clase representan productos instalados por MSI. Por lo general, un producto suele estar correlacionado con un solo paquete de instalación.

MSDN link: https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-product


<img src=https://neftali.clubdelphi.com/GLibWMI/imagenes/CTimeZoneInfo.jpg> 
- <b>TTimeZoneInfo</b>: La clase Win32_TimeZone representa la información de zona horaria para un sistema Win32. Esta información incluye los cambios necesarios para la transición a y desde el horario de verano.

MSDN link: https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-timezone


<img src=https://neftali.clubdelphi.com/GLibWMI/imagenes/CDesktopInfo.jpg> 
- <b>TDesktopInfo</b>: La clase Win32_Desktop representa las características comunes del escritorio de un usuario. El usuario puede modificar las propiedades de esta clase para personalizar el escritorio.

MSDN link: https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-desktop


<img src=https://neftali.clubdelphi.com/GLibWMI/imagenes/CStartupCommandInfo.jpg> 
- <b>TStartupCommandInfo</b>: La clase Win32_StartupCommand representa un comando que se ejecuta automáticamente cuando un usuario inicia sesión en el equipo.

MSDN link: https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-startupcommand


<img src=https://neftali.clubdelphi.com/GLibWMI/imagenes/CBootConfigurationInfo.jpg> 
- <b>TBootConfigurationInfo</b>: La clase Win32_BootConfiguration representa la configuración de arranque de un sistema Win32.

MSDN link: https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-bootconfiguration


<img src=https://neftali.clubdelphi.com/GLibWMI/imagenes/CDisplayConfigurationInfo.jpg> 
- <b>TDisplayConfigurationInfo</b>: La clase Win32_DisplayConfiguration representa la información de configuración del dispositivo de pantalla en un sistema Win32. Esta clase quedó obsoleta en favor de las propiedades de las clases Win32_VideoController, Win32_DesktopMonitor y CIM_VideoControllerResolution

MSDN link: https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-displayconfiguration


## DEMOS Y EJEMPLOS
(ES) Con la librería s uincluyen varias demos y ejemplos de utilización de los diferentes componentes que la componen.
(EN) The library includes several demonstrations and examples of use of the different components that compose it.

<b>Demo general</b>: (ES) Que muestra una visión genérica de todos los componentes.
<b>Demo general</b>: (EN) It shows a generic view of all the components.
<img src=https://neftali.clubdelphi.com/GLibWMI/imagenes/imagen_libreria1.png>

<b>BiosDemo, DiskDriveInfo, ProcessorInfo</b>: (ES) Demos para mostrar información de la Bios del sistema, de los discos instalados en el equipo y del procesador de la máquina.
(EN) Demos to display information about the system's Bios, the hard disk installed on system and the processor of the machine.
<img src=https://neftali.clubdelphi.com/GLibWMI/imagenes/ejemplos_libreria.png>

<b>WinProcess</b>: (ES) jemplo que muestra una lista de los procesos activos en el sistema.
(EN) Example showing a list of the active processes in the system.
<img src=https://neftali.clubdelphi.com/GLibWMI/imagenes/lista_procesos.png>

<b>PrinterList</b>: Muestra las diferentes impresoras instaladas en el sistema y las características de cada una de ellas.
<img src=https://neftali.clubdelphi.com/GLibWMI/imagenes/PrinterList.gif>

Otras demos específicas de algunosotros componentes...

