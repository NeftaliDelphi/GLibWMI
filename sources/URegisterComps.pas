unit URegisterComps;


//=========================================================================
//
// I N T E R F A C E
//
//=========================================================================
interface

// Procedimiento de REGISTRO
procedure Register();                           

//=========================================================================
//
// I M P L E M E N T A T I O N
//
//=========================================================================
implementation

uses
  Classes, DesignIntf, StrEdit,
  {GLibWMI} UConstantes,
  {GLibWMI Components}
    CBIOSInfo, CDiskDriveInfo, CProcessorInfo, CCDROMDriveInfo,
    CKeyboardInfo, CPrinterInfo, CBatteryInfo, CSoundDeviceInfo,
    COperatingSystemInfo, CPointingDeviceInfo, CPhysicalMemoryInfo,
    CProcessInfo, CServiceInfo, CDesktopMonitorInfo, CComputerSystemInfo,
    CStartupCommandInfo, CNetworkAdapterInfo, CUserAccountInfo, CShareInfo,
    CPrintJobInfo, CUSBControllerInfo, CDiskPartitionInfo, CFanInfo, CPnPEntityInfo,
    CDisplayConfigurationInfo, CProductInfo, CVideoControllerInfo,
    CEnvironmentInfo, CWMISQL,
    FormAbout, UTAboutProp;


// Procedimiento de REGISTRO
procedure Register();
begin
  // Componentes de Hardware
  RegisterComponents(GLIBWMI_PACKAGE_HARD, [
    TBiosInfo, TDiskDriveInfo, TDiskPartitionInfo,
    TProcessorInfo, TCDROMDriveInfo, TKeyboardInfo,
	TPrinterInfo, TBatteryInfo, TNetworkAdapterInfo,
    TSoundDeviceInfo, TPointingDeviceInfo, TUSBControllerInfo,
    TPhysicalMemoryInfo, TFanInfo, TPnPEntityInfo]);

  // Componentes de software
  RegisterComponents(GLIBWMI_PACKAGE_SOFT, [
    TWMISQL,
    TPrintJobInfo, TOperatingSystemInfo, TProcessInfo,
	TServiceInfo, TDesktopMonitorInfo, TEnvironmentInfo,
    TEnvironmentInfo, TComputerSystemInfo, TStartupCommandInfo,
    TUserAccountInfo, TShareInfo, TDisplayConfigurationInfo, 
	TProductInfo, TVideoControllerInfo]);
	
  // Editores de propiedades
  RegisterPropertyEditor(TypeInfo(TFAbout),nil,'',TAboutGlibWMIProp);
  //RegisterPropertyEditor(TypeInfo(TStrings), TWMIGenericInfo, 'Properties', TValueListProperty);
end;

end.
