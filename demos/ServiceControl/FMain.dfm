object FormMain: TFormMain
  Left = 378
  Top = 179
  Width = 838
  Height = 425
  Caption = 'Service control Demo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  DesignSize = (
    830
    394)
  PixelsPerInch = 96
  TextHeight = 13
  object sgServices: TStringGrid
    Left = 0
    Top = 29
    Width = 673
    Height = 346
    Align = alLeft
    Anchors = [akLeft, akTop, akRight, akBottom]
    DefaultRowHeight = 18
    FixedCols = 0
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
    TabOrder = 0
    ColWidths = (
      46
      291
      184
      64
      64)
  end
  object Button1: TButton
    Left = 688
    Top = 104
    Width = 105
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Interrogate'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 688
    Top = 136
    Width = 105
    Height = 25
    Anchors = [akTop, akRight]
    Caption = '&Start'
    TabOrder = 2
    OnClick = Button2Click
  end
  object btnRefresh: TButton
    Left = 688
    Top = 40
    Width = 105
    Height = 25
    Anchors = [akTop, akRight]
    Caption = '&Refresh'
    TabOrder = 3
    OnClick = btnRefreshClick
  end
  object Button4: TButton
    Left = 688
    Top = 160
    Width = 105
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'S&top'
    TabOrder = 4
    OnClick = Button4Click
  end
  object sbMain: TStatusBar
    Left = 0
    Top = 375
    Width = 830
    Height = 19
    Panels = <>
    SimplePanel = True
  end
  object Button3: TButton
    Left = 688
    Top = 184
    Width = 105
    Height = 25
    Anchors = [akTop, akRight]
    Caption = '&Pause'
    TabOrder = 6
    OnClick = Button3Click
  end
  object Button5: TButton
    Left = 688
    Top = 208
    Width = 105
    Height = 25
    Anchors = [akTop, akRight]
    Caption = '&Resume'
    TabOrder = 7
    OnClick = Button5Click
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 830
    Height = 29
    Align = alTop
    Anchors = [akTop, akRight]
    AutoSize = True
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 8
    object ToolBar1: TToolBar
      Left = 0
      Top = 0
      Width = 830
      Height = 29
      Caption = 'ToolBar1'
      TabOrder = 0
    end
  end
  object cbStart: TComboBox
    Left = 688
    Top = 272
    Width = 105
    Height = 21
    Anchors = [akTop, akRight]
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 9
    Text = 'Boot'
    Items.Strings = (
      'Boot'
      'System'
      'Automatic'
      'Manual'
      'Disabled')
  end
  object Button6: TButton
    Left = 688
    Top = 296
    Width = 105
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Start &mode'
    TabOrder = 10
    OnClick = Button6Click
  end
  object ServiceInfo1: TServiceInfo
    Host = '.'
    Active = True
    AllProperties.Strings = (
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "a3ERP Admin Services";'#10#9'CheckPoint = 0;'#10#9'Crea' +
        'tionClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Des' +
        'cription = "Administraci'#243'n cliente de a3ERP ";'#10#9'DesktopInteract ' +
        '= FALSE;'#10#9'DisplayName = "a3ERP Admin Services";'#10#9'ErrorControl = ' +
        '"Normal";'#10#9'ExitCode = 0;'#10#9'Name = "a3ERPAdminServices";'#10#9'PathName' +
        ' = "\"C:\\Program Files (x86)\\A3\\ERP\\Bin\\AdminServices\\a3.E' +
        'RP.Setup.AdminHost.exe\"";'#10#9'ProcessId = 5112;'#10#9'ServiceSpecificEx' +
        'itCode = 0;'#10#9'ServiceType = "Own Process";'#10#9'Started = TRUE;'#10#9'Star' +
        'tMode = "Auto";'#10#9'StartName = "LocalSystem";'#10#9'State = "Running";'#10 +
        #9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem' +
        '";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'}' +
        ';'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "a3ERP Server";'#10#9'CheckPoint = 0;'#10#9'CreationClas' +
        'sName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Description' +
        ' = "Servidor de los servicios de a3ERP ";'#10#9'DesktopInteract = FAL' +
        'SE;'#10#9'DisplayName = "a3ERP Server";'#10#9'ErrorControl = "Normal";'#10#9'Ex' +
        'itCode = 0;'#10#9'Name = "a3ERPServer";'#10#9'PathName = "\"C:\\Program Fi' +
        'les (x86)\\A3\\ERP\\Bin\\Host Server\\a3.ERP.Servidor.Host.exe\"' +
        '";'#10#9'ProcessId = 6508;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType' +
        ' = "Own Process";'#10#9'Started = TRUE;'#10#9'StartMode = "Auto";'#10#9'StartNa' +
        'me = ".\\__a3Erphost__";'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9'Sy' +
        'stemCreationClassName = "Win32_ComputerSystem";'#10#9'SystemName = "E' +
        'UES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio de enrutador de AllJoyn";'#10#9'CheckPoi' +
        'nt = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart ' +
        '= FALSE;'#10#9'Description = "Enruta los mensajes AllJoyn de los clie' +
        'ntes AllJoyn locales. Si este servicio se interrumpe, los client' +
        'es AllJoyn que no tengan sus propios enrutadores integrados no p' +
        'odr'#225'n ejecutarse.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Se' +
        'rvicio de enrutador de AllJoyn";'#10#9'ErrorControl = "Normal";'#10#9'Exit' +
        'Code = 1077;'#10#9'Name = "AJRouter";'#10#9'PathName = "C:\\Windows\\syste' +
        'm32\\svchost.exe -k LocalServiceNetworkRestricted -p";'#10#9'ProcessI' +
        'd = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Share Proce' +
        'ss";'#10#9'Started = FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName = "NT A' +
        'UTHORITY\\LocalService";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'Sy' +
        'stemCreationClassName = "Win32_ComputerSystem";'#10#9'SystemName = "E' +
        'UES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio de puerta de enlace de nivel de apl' +
        'icaci'#243'n";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";' +
        #10#9'DelayedAutoStart = FALSE;'#10#9'Description = "Proporciona compatib' +
        'ilidad entre los complementos de protocolo de terceros y la Cone' +
        'xi'#243'n compartida a Internet";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayN' +
        'ame = "Servicio de puerta de enlace de nivel de aplicaci'#243'n";'#10#9'Er' +
        'rorControl = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "ALG";'#10#9'PathNam' +
        'e = "C:\\Windows\\System32\\alg.exe";'#10#9'ProcessId = 0;'#10#9'ServiceSp' +
        'ecificExitCode = 0;'#10#9'ServiceType = "Own Process";'#10#9'Started = FAL' +
        'SE;'#10#9'StartMode = "Manual";'#10#9'StartName = "NT AUTHORITY\\LocalServ' +
        'ice";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassNa' +
        'me = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'T' +
        'agId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = TRUE;'#10#9'AcceptStop = ' +
        'TRUE;'#10#9'Caption = "Servicio auxiliar de host para aplicaciones";'#10 +
        #9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedA' +
        'utoStart = FALSE;'#10#9'Description = "Proporciona servicios administ' +
        'rativos para IIS, por ejemplo, historial de configuraci'#243'n y asig' +
        'naci'#243'n de cuentas del grupo de aplicaciones. Si este servicio se' +
        ' detiene, no funcionar'#225' el historial de configuraci'#243'n y el bloqu' +
        'eo de archivos o directorios con entradas de control de acceso e' +
        'spec'#237'ficas del grupo de aplicaciones.";'#10#9'DesktopInteract = FALSE' +
        ';'#10#9'DisplayName = "Servicio auxiliar de host para aplicaciones";'#10 +
        #9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "AppHostSvc";'#10#9 +
        'PathName = "C:\\Windows\\system32\\svchost.exe -k apphost";'#10#9'Pro' +
        'cessId = 5076;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Sha' +
        're Process";'#10#9'Started = TRUE;'#10#9'StartMode = "Auto";'#10#9'StartName = ' +
        '"localSystem";'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9'SystemCreati' +
        'onClassName = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGES' +
        'TEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Identidad de aplicaci'#243'n";'#10#9'CheckPoint = 0;'#10#9 +
        'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10 +
        #9'Description = "Determina y comprueba la identidad de una aplica' +
        'ci'#243'n. Si se deshabilita este servicio, no se aplicar'#225' AppLocker.' +
        '";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Identidad de aplica' +
        'ci'#243'n";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "AppI' +
        'DSvc";'#10#9'PathName = "C:\\Windows\\system32\\svchost.exe -k LocalS' +
        'erviceNetworkRestricted -p";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExi' +
        'tCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = FALSE;'#10#9'St' +
        'artMode = "Manual";'#10#9'StartName = "NT Authority\\LocalService";'#10#9 +
        'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "W' +
        'in32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = ' +
        '0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Informaci'#243'n de la aplicaci'#243'n";'#10#9'CheckPoint = ' +
        '0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart = FAL' +
        'SE;'#10#9'Description = "Facilita la ejecuci'#243'n de aplicaciones intera' +
        'ctivas con privilegios administrativos adicionales. Si este serv' +
        'icio se detiene, los usuarios no podr'#225'n iniciar las aplicaciones' +
        ' con los privilegios administrativos adicionales necesarios para' +
        ' realizar las tareas de usuario deseadas.";'#10#9'DesktopInteract = F' +
        'ALSE;'#10#9'DisplayName = "Informaci'#243'n de la aplicaci'#243'n";'#10#9'ErrorContr' +
        'ol = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "Appinfo";'#10#9'PathName = "C:' +
        '\\Windows\\system32\\svchost.exe -k netsvcs -p";'#10#9'ProcessId = 33' +
        '20;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Share Process"' +
        ';'#10#9'Started = TRUE;'#10#9'StartMode = "Manual";'#10#9'StartName = "LocalSys' +
        'tem";'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9'SystemCreationClassNa' +
        'me = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'T' +
        'agId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Administraci'#243'n de aplicaciones";'#10#9'CheckPoint' +
        ' = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart = ' +
        'FALSE;'#10#9'Description = "Procesa las solicitudes de instalaci'#243'n, e' +
        'liminaci'#243'n y enumeraci'#243'n para el software implementado mediante ' +
        'la directiva de grupo. Si se deshabilita el servicio, no podr'#225' i' +
        'nstalar, quitar ni enumerar el software implementado mediante la' +
        ' directiva de grupo. Adem'#225's, los servicios que dependan expl'#237'cit' +
        'amente de '#233'l no se iniciar'#225'n.";'#10#9'DesktopInteract = FALSE;'#10#9'Displ' +
        'ayName = "Administraci'#243'n de aplicaciones";'#10#9'ErrorControl = "Norm' +
        'al";'#10#9'ExitCode = 1077;'#10#9'Name = "AppMgmt";'#10#9'PathName = "C:\\Windo' +
        'ws\\system32\\svchost.exe -k netsvcs -p";'#10#9'ProcessId = 0;'#10#9'Servi' +
        'ceSpecificExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started' +
        ' = FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName = "LocalSystem";'#10#9'St' +
        'ate = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win' +
        '32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;' +
        #10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Preparaci'#243'n de aplicaciones";'#10#9'CheckPoint = ' +
        '0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart = FAL' +
        'SE;'#10#9'Description = "Preparar las aplicaciones para que se usen p' +
        'or primera vez cuando un usuario inicie sesi'#243'n en este equipo y ' +
        'al agregar nuevas aplicaciones.";'#10#9'DesktopInteract = FALSE;'#10#9'Dis' +
        'playName = "Preparaci'#243'n de aplicaciones";'#10#9'ErrorControl = "Norma' +
        'l";'#10#9'ExitCode = 1077;'#10#9'Name = "AppReadiness";'#10#9'PathName = "C:\\W' +
        'indows\\System32\\svchost.exe -k AppReadiness -p";'#10#9'ProcessId = ' +
        '0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Share Process";' +
        #10#9'Started = FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName = "LocalSys' +
        'tem";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassNa' +
        'me = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'T' +
        'agId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Microsoft App-V Client";'#10#9'CheckPoint = 0;'#10#9'C' +
        'reationClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9 +
        'Description = "Manages App-V users and virtual applications";'#10#9'D' +
        'esktopInteract = FALSE;'#10#9'DisplayName = "Microsoft App-V Client";' +
        #10#9'ErrorControl = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "AppVClient' +
        '";'#10#9'PathName = "C:\\Windows\\system32\\AppVClient.exe";'#10#9'Process' +
        'Id = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Own Proces' +
        's";'#10#9'Started = FALSE;'#10#9'StartMode = "Disabled";'#10#9'StartName = "Loc' +
        'alSystem";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationCl' +
        'assName = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE' +
        '";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio de implementaci'#243'n de AppX (AppXSVC)' +
        '";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'Delay' +
        'edAutoStart = FALSE;'#10#9'Description = "Proporciona compatibilidad ' +
        'con infraestructuras para la implementaci'#243'n de aplicaciones de S' +
        'tore. Este servicio se inicia bajo petici'#243'n y, si est'#225' deshabili' +
        'tado, las aplicaciones de Store no se implementar'#225'n en el sistem' +
        'a y podr'#237'an no funcionar correctamente.";'#10#9'DesktopInteract = FAL' +
        'SE;'#10#9'DisplayName = "Servicio de implementaci'#243'n de AppX (AppXSVC)' +
        '";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "AppXSvc";'#10#9 +
        'PathName = "C:\\Windows\\system32\\svchost.exe -k wsappx -p";'#10#9'P' +
        'rocessId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Shar' +
        'e Process";'#10#9'Started = FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName ' +
        '= "LocalSystem";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCrea' +
        'tionClassName = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXG' +
        'ESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "ARMOURY CRATE Service";'#10#9'CheckPoint = 0;'#10#9'Cre' +
        'ationClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'De' +
        'scription = "ARMOURY CRATE Service";'#10#9'DesktopInteract = FALSE;'#10#9 +
        'DisplayName = "ARMOURY CRATE Service";'#10#9'ErrorControl = "Normal";' +
        #10#9'ExitCode = 0;'#10#9'Name = "ArmouryCrateService";'#10#9'PathName = "C:\\' +
        'Program Files\\ASUS\\ARMOURY CRATE Service\\ArmouryCrate.Service' +
        '.exe";'#10#9'ProcessId = 4740;'#10#9'ServiceSpecificExitCode = 0;'#10#9'Service' +
        'Type = "Own Process";'#10#9'Started = TRUE;'#10#9'StartMode = "Auto";'#10#9'Sta' +
        'rtName = "LocalSystem";'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9'Sys' +
        'temCreationClassName = "Win32_ComputerSystem";'#10#9'SystemName = "EU' +
        'ES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "ASP.NET State Service";'#10#9'CheckPoint = 0;'#10#9'Cr' +
        'eationClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'D' +
        'escription = "Provides support for out-of-process session states' +
        ' for ASP.NET. If this service is stopped, out-of-process request' +
        's will not be processed. If this service is disabled, any servic' +
        'es that explicitly depend on it will fail to start.";'#10#9'DesktopIn' +
        'teract = FALSE;'#10#9'DisplayName = "ASP.NET State Service";'#10#9'ErrorCo' +
        'ntrol = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "aspnet_state";'#10#9'Pat' +
        'hName = "C:\\Windows\\Microsoft.NET\\Framework64\\v4.0.30319\\as' +
        'pnet_state.exe";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9 +
        'ServiceType = "Own Process";'#10#9'Started = FALSE;'#10#9'StartMode = "Man' +
        'ual";'#10#9'StartName = "NT AUTHORITY\\NetworkService";'#10#9'State = "Sto' +
        'pped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_Compute' +
        'rSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint' +
        ' = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio AssignedAccessManager";'#10#9'CheckPoint' +
        ' = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart = ' +
        'FALSE;'#10#9'Description = "El servicio AssignedAccessManager admite ' +
        'la experiencia de quiosco multimedia en Windows.";'#10#9'DesktopInter' +
        'act = FALSE;'#10#9'DisplayName = "Servicio AssignedAccessManager";'#10#9'E' +
        'rrorControl = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "AssignedAcces' +
        'sManagerSvc";'#10#9'PathName = "C:\\Windows\\system32\\svchost.exe -k' +
        ' AssignedAccessManagerSvc";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExit' +
        'Code = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = FALSE;'#10#9'Sta' +
        'rtMode = "Manual";'#10#9'StartName = "LocalSystem";'#10#9'State = "Stopped' +
        '";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSys' +
        'tem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0' +
        ';'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio de ASUS Update (asus)";'#10#9'CheckPoint' +
        ' = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart = ' +
        'TRUE;'#10#9'Description = "Mantiene actualizado el software de ASUS. ' +
        'Si este servicio se inhabilita o se detiene, el software de ASUS' +
        ' no se mantendr'#225' actualizado, lo que significa que las vulnerabi' +
        'lidades de seguridad que puedan surgir no se podr'#225'n solucionar y' +
        ' es posible que el rendimiento del producto se vea afectado. Est' +
        'e servicio se desinstala por s'#237' solo cuando no lo est'#225' utilizand' +
        'o ning'#250'n software de ASUS.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayN' +
        'ame = "Servicio de ASUS Update (asus)";'#10#9'ErrorControl = "Normal"' +
        ';'#10#9'ExitCode = 0;'#10#9'Name = "asus";'#10#9'PathName = "\"C:\\Program File' +
        's (x86)\\ASUS\\Update\\AsusUpdate.exe\" /svc";'#10#9'ProcessId = 0;'#10#9 +
        'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Own Process";'#10#9'Star' +
        'ted = FALSE;'#10#9'StartMode = "Auto";'#10#9'StartName = "LocalSystem";'#10#9'S' +
        'tate = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Wi' +
        'n32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0' +
        ';'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "ASUS Link Near";'#10#9'CheckPoint = 0;'#10#9'CreationCl' +
        'assName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Descripti' +
        'on = NULL;'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "ASUS Link N' +
        'ear";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "ASUSLink' +
        'Near";'#10#9'PathName = "C:\\Windows\\System32\\DriverStore\\FileRepo' +
        'sitory\\asussci2.inf_amd64_bede890419895f27\\ASUSLinkNear\\AsusL' +
        'inkNear.exe";'#10#9'ProcessId = 5096;'#10#9'ServiceSpecificExitCode = 0;'#10#9 +
        'ServiceType = "Own Process";'#10#9'Started = TRUE;'#10#9'StartMode = "Auto' +
        '";'#10#9'StartName = "LocalSystem";'#10#9'State = "Running";'#10#9'Status = "OK' +
        '";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'SystemNam' +
        'e = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "ASUS Link Remote";'#10#9'CheckPoint = 0;'#10#9'Creation' +
        'ClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Descrip' +
        'tion = NULL;'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "ASUS Link' +
        ' Remote";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "ASUS' +
        'LinkRemote";'#10#9'PathName = "C:\\Windows\\System32\\DriverStore\\Fi' +
        'leRepository\\asussci2.inf_amd64_bede890419895f27\\ASUSLinkRemot' +
        'e\\AsusLinkRemote.exe";'#10#9'ProcessId = 5104;'#10#9'ServiceSpecificExitC' +
        'ode = 0;'#10#9'ServiceType = "Own Process";'#10#9'Started = TRUE;'#10#9'StartMo' +
        'de = "Auto";'#10#9'StartName = "LocalSystem";'#10#9'State = "Running";'#10#9'St' +
        'atus = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10 +
        #9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio de ASUS Update (asusm)";'#10#9'CheckPoin' +
        't = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart =' +
        ' TRUE;'#10#9'Description = "Mantiene actualizado el software de ASUS.' +
        ' Si este servicio se inhabilita o se detiene, el software de ASU' +
        'S no se mantendr'#225' actualizado, lo que significa que las vulnerab' +
        'ilidades de seguridad que puedan surgir no se podr'#225'n solucionar ' +
        'y es posible que el rendimiento del producto se vea afectado. Es' +
        'te servicio se desinstala por s'#237' solo cuando no lo est'#225' utilizan' +
        'do ning'#250'n software de ASUS.";'#10#9'DesktopInteract = FALSE;'#10#9'Display' +
        'Name = "Servicio de ASUS Update (asusm)";'#10#9'ErrorControl = "Norma' +
        'l";'#10#9'ExitCode = 1077;'#10#9'Name = "asusm";'#10#9'PathName = "\"C:\\Progra' +
        'm Files (x86)\\ASUS\\Update\\AsusUpdate.exe\" /medsvc";'#10#9'Process' +
        'Id = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Own Proces' +
        's";'#10#9'Started = FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName = "Local' +
        'System";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClas' +
        'sName = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";' +
        #10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "ASUS Optimization";'#10#9'CheckPoint = 0;'#10#9'Creatio' +
        'nClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Descri' +
        'ption = NULL;'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "ASUS Opt' +
        'imization";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "AS' +
        'USOptimization";'#10#9'PathName = "C:\\Windows\\System32\\DriverStore' +
        '\\FileRepository\\asussci2.inf_amd64_bede890419895f27\\ASUSOptim' +
        'ization\\AsusOptimization.exe";'#10#9'ProcessId = 4584;'#10#9'ServiceSpeci' +
        'ficExitCode = 0;'#10#9'ServiceType = "Own Process";'#10#9'Started = TRUE;'#10 +
        #9'StartMode = "Auto";'#10#9'StartName = "LocalSystem";'#10#9'State = "Runni' +
        'ng";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerS' +
        'ystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint =' +
        ' 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "ASUS Software Manager";'#10#9'CheckPoint = 0;'#10#9'Cre' +
        'ationClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'De' +
        'scription = NULL;'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "ASUS' +
        ' Software Manager";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Na' +
        'me = "ASUSSoftwareManager";'#10#9'PathName = "C:\\Windows\\System32\\' +
        'DriverStore\\FileRepository\\asussci2.inf_amd64_bede890419895f27' +
        '\\ASUSSoftwareManager\\AsusSoftwareManager.exe";'#10#9'ProcessId = 45' +
        '12;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Own Process";'#10 +
        #9'Started = TRUE;'#10#9'StartMode = "Auto";'#10#9'StartName = "LocalSystem"' +
        ';'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9'SystemCreationClassName =' +
        ' "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId' +
        ' = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "ASUS System Analysis";'#10#9'CheckPoint = 0;'#10#9'Crea' +
        'tionClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Des' +
        'cription = NULL;'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "ASUS ' +
        'System Analysis";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name' +
        ' = "ASUSSystemAnalysis";'#10#9'PathName = "C:\\Windows\\System32\\Dri' +
        'verStore\\FileRepository\\asussci2.inf_amd64_bede890419895f27\\A' +
        'SUSSystemAnalysis\\AsusSystemAnalysis.exe";'#10#9'ProcessId = 4132;'#10#9 +
        'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Own Process";'#10#9'Star' +
        'ted = TRUE;'#10#9'StartMode = "Auto";'#10#9'StartName = "LocalSystem";'#10#9'St' +
        'ate = "Running";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win' +
        '32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;' +
        #10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "ASUS System Diagnosis";'#10#9'CheckPoint = 0;'#10#9'Cre' +
        'ationClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'De' +
        'scription = NULL;'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "ASUS' +
        ' System Diagnosis";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Na' +
        'me = "ASUSSystemDiagnosis";'#10#9'PathName = "C:\\Windows\\System32\\' +
        'DriverStore\\FileRepository\\asussci2.inf_amd64_bede890419895f27' +
        '\\ASUSSystemDiagnosis\\AsusSystemDiagnosis.exe";'#10#9'ProcessId = 45' +
        '00;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Own Process";'#10 +
        #9'Started = TRUE;'#10#9'StartMode = "Auto";'#10#9'StartName = "LocalSystem"' +
        ';'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9'SystemCreationClassName =' +
        ' "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId' +
        ' = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Compilador de extremo de audio de Windows";'#10#9 +
        'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAu' +
        'toStart = FALSE;'#10#9'Description = "Administra los dispositivos de ' +
        'audio para el servicio de Audio de Windows. Si este servicio se ' +
        'detiene, los dispositivos y efectos de audio no funcionar'#225'n corr' +
        'ectamente. Si este servicio se deshabilita, no se podr'#225' iniciar ' +
        'ning'#250'n servicio que dependa expl'#237'citamente de '#233'l.";'#10#9'DesktopInte' +
        'ract = FALSE;'#10#9'DisplayName = "Compilador de extremo de audio de ' +
        'Windows";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "Audi' +
        'oEndpointBuilder";'#10#9'PathName = "C:\\Windows\\System32\\svchost.e' +
        'xe -k LocalSystemNetworkRestricted -p";'#10#9'ProcessId = 3708;'#10#9'Serv' +
        'iceSpecificExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Starte' +
        'd = TRUE;'#10#9'StartMode = "Auto";'#10#9'StartName = "LocalSystem";'#10#9'Stat' +
        'e = "Running";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32' +
        '_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9 +
        'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Audio de Windows";'#10#9'CheckPoint = 0;'#10#9'Creation' +
        'ClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Descrip' +
        'tion = "Administra el audio para programas basados en Windows. S' +
        'i este servicio se detiene, los dispositivos y efectos de audio ' +
        'no funcionar'#225'n correctamente. Si este servicio se deshabilita, n' +
        'o se podr'#225' iniciar ning'#250'n servicio que dependa expl'#237'citamente de' +
        ' '#233'l.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Audio de Window' +
        's";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "Audiosrv";' +
        #10#9'PathName = "C:\\Windows\\System32\\svchost.exe -k LocalService' +
        'NetworkRestricted -p";'#10#9'ProcessId = 3728;'#10#9'ServiceSpecificExitCo' +
        'de = 0;'#10#9'ServiceType = "Own Process";'#10#9'Started = TRUE;'#10#9'StartMod' +
        'e = "Auto";'#10#9'StartName = "NT AUTHORITY\\LocalService";'#10#9'State = ' +
        '"Running";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_Com' +
        'puterSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'Wait' +
        'Hint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Hora de la red de telefon'#237'a m'#243'vil";'#10#9'CheckPo' +
        'int = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart' +
        ' = FALSE;'#10#9'Description = "Este servicio establece la hora en fun' +
        'ci'#243'n de los mensajes NITZ de una red m'#243'vil";'#10#9'DesktopInteract = ' +
        'FALSE;'#10#9'DisplayName = "Hora de la red de telefon'#237'a m'#243'vil";'#10#9'Erro' +
        'rControl = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "autotimesvc";'#10#9'P' +
        'athName = "C:\\Windows\\system32\\svchost.exe -k autoTimeSvc";'#10#9 +
        'ProcessId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Own' +
        ' Process";'#10#9'Started = FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName =' +
        ' "NT AUTHORITY\\LocalService";'#10#9'State = "Stopped";'#10#9'Status = "OK' +
        '";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'SystemNam' +
        'e = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Instalador de ActiveX (AxInstSV)";'#10#9'CheckPoi' +
        'nt = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart ' +
        '= FALSE;'#10#9'Description = "Proporciona validaci'#243'n de Control de cu' +
        'entas de usuario para la instalaci'#243'n de controles ActiveX desde ' +
        'Internet y habilita la administraci'#243'n de la instalaci'#243'n de contr' +
        'oles ActiveX basada en la configuraci'#243'n de directiva de grupo. E' +
        'ste servicio se inicia a petici'#243'n y, si se deshabilita, la insta' +
        'laci'#243'n de controles ActiveX se realizar'#225' seg'#250'n la configuraci'#243'n ' +
        'predeterminada del explorador.";'#10#9'DesktopInteract = FALSE;'#10#9'Disp' +
        'layName = "Instalador de ActiveX (AxInstSV)";'#10#9'ErrorControl = "N' +
        'ormal";'#10#9'ExitCode = 1077;'#10#9'Name = "AxInstSV";'#10#9'PathName = "C:\\W' +
        'indows\\system32\\svchost.exe -k AxInstSVGroup";'#10#9'ProcessId = 0;' +
        #10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9 +
        'Started = FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName = "LocalSyste' +
        'm";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName' +
        ' = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'Tag' +
        'Id = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio Cifrado de unidad BitLocker";'#10#9'Chec' +
        'kPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoSt' +
        'art = FALSE;'#10#9'Description = "BDESVC hospeda el servicio Cifrado ' +
        'de unidad BitLocker. El Cifrado de unidad BitLocker proporciona ' +
        'un inicio seguro del sistema operativo, as'#237' como un cifrado de v' +
        'olumen completo para vol'#250'menes extra'#237'bles, fijos o del sistema o' +
        'perativo. Este servicio permite que BitLocker solicite a los usu' +
        'arios diversas acciones relacionadas con sus vol'#250'menes cuando se' +
        ' montan, y desbloquea los vol'#250'menes autom'#225'ticamente sin la inter' +
        'venci'#243'n del usuario. Adem'#225's, almacena la informaci'#243'n de recupera' +
        'ci'#243'n en Active Directory, si est'#225' disponible, y se asegura, si f' +
        'uera necesario, de que se usen los certificados de recuperaci'#243'n ' +
        'm'#225's recientes. Si se detiene o se deshabilita este servicio, los' +
        ' usuarios no podr'#225'n sacar provecho de esta funci'#243'n.";'#10#9'DesktopIn' +
        'teract = FALSE;'#10#9'DisplayName = "Servicio Cifrado de unidad BitLo' +
        'cker";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "BDESVC"' +
        ';'#10#9'PathName = "C:\\Windows\\System32\\svchost.exe -k netsvcs -p"' +
        ';'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "' +
        'Share Process";'#10#9'Started = FALSE;'#10#9'StartMode = "Manual";'#10#9'StartN' +
        'ame = "localSystem";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'System' +
        'CreationClassName = "Win32_ComputerSystem";'#10#9'SystemName = "EUES0' +
        '2EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Motor de filtrado de base";'#10#9'CheckPoint = 0;'#10 +
        #9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;' +
        #10#9'Description = "El Motor de filtrado de base (BFE) es un servic' +
        'io que administra las directivas de firewall y del protocolo de ' +
        'seguridad de Internet (IPsec) e implementa el filtrado de modo u' +
        'suario. Si se detiene o deshabilita el servicio BFE, se reducir'#225 +
        ' de forma significativa la seguridad del sistema. Tambi'#233'n dar'#225' l' +
        'ugar a un comportamiento impredecible en las aplicaciones de adm' +
        'inistraci'#243'n de IPsec y firewall.";'#10#9'DesktopInteract = FALSE;'#10#9'Di' +
        'splayName = "Motor de filtrado de base";'#10#9'ErrorControl = "Normal' +
        '";'#10#9'ExitCode = 0;'#10#9'Name = "BFE";'#10#9'PathName = "C:\\Windows\\syste' +
        'm32\\svchost.exe -k LocalServiceNoNetworkFirewall -p";'#10#9'ProcessI' +
        'd = 2176;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Share Pr' +
        'ocess";'#10#9'Started = TRUE;'#10#9'StartMode = "Auto";'#10#9'StartName = "NT A' +
        'UTHORITY\\LocalService";'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9'Sy' +
        'stemCreationClassName = "Win32_ComputerSystem";'#10#9'SystemName = "E' +
        'UES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Servicio de transferencia inteligente en segu' +
        'ndo plano (BITS)";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_' +
        'Service";'#10#9'DelayedAutoStart = TRUE;'#10#9'Description = "Transfiere a' +
        'rchivos en segundo plano mediante el uso de ancho de banda de re' +
        'd inactivo. Si el servicio est'#225' deshabilitado, las aplicaciones ' +
        'que dependen de BITS, como Windows Update o MSN Explorer, no pod' +
        'r'#225'n descargar programas ni otra informaci'#243'n de forma autom'#225'tica.' +
        '";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Servicio de transfe' +
        'rencia inteligente en segundo plano (BITS)";'#10#9'ErrorControl = "No' +
        'rmal";'#10#9'ExitCode = 0;'#10#9'Name = "BITS";'#10#9'PathName = "C:\\Windows\\' +
        'System32\\svchost.exe -k netsvcs -p";'#10#9'ProcessId = 4112;'#10#9'Servic' +
        'eSpecificExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started ' +
        '= TRUE;'#10#9'StartMode = "Auto";'#10#9'StartName = "LocalSystem";'#10#9'State ' +
        '= "Running";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_C' +
        'omputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'Wa' +
        'itHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio de infraestructura de tareas en seg' +
        'undo plano";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Servic' +
        'e";'#10#9'DelayedAutoStart = FALSE;'#10#9'Description = "Servicio de infra' +
        'estructura de Windows que controla qu'#233' tareas en segundo plano s' +
        'e pueden ejecutar en el sistema.";'#10#9'DesktopInteract = FALSE;'#10#9'Di' +
        'splayName = "Servicio de infraestructura de tareas en segundo pl' +
        'ano";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "BrokerIn' +
        'frastructure";'#10#9'PathName = "C:\\Windows\\system32\\svchost.exe -' +
        'k DcomLaunch -p";'#10#9'ProcessId = 1080;'#10#9'ServiceSpecificExitCode = ' +
        '0;'#10#9'ServiceType = "Share Process";'#10#9'Started = TRUE;'#10#9'StartMode =' +
        ' "Auto";'#10#9'StartName = "LocalSystem";'#10#9'State = "Running";'#10#9'Status' +
        ' = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'Sys' +
        'temName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Servicio de puerta de enlace de audio de Blue' +
        'tooth";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9 +
        'DelayedAutoStart = FALSE;'#10#9'Description = "Servicio compatible co' +
        'n el rol de puerta de enlace de audio del perfil de manos libres' +
        ' de Bluetooth.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Servi' +
        'cio de puerta de enlace de audio de Bluetooth";'#10#9'ErrorControl = ' +
        '"Normal";'#10#9'ExitCode = 0;'#10#9'Name = "BTAGService";'#10#9'PathName = "C:\' +
        '\Windows\\system32\\svchost.exe -k LocalServiceNetworkRestricted' +
        '";'#10#9'ProcessId = 1728;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType' +
        ' = "Share Process";'#10#9'Started = TRUE;'#10#9'StartMode = "Manual";'#10#9'Sta' +
        'rtName = "NT AUTHORITY\\LocalService";'#10#9'State = "Running";'#10#9'Stat' +
        'us = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'S' +
        'ystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Servicio AVCTP";'#10#9'CheckPoint = 0;'#10#9'CreationCl' +
        'assName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Descripti' +
        'on = "Este es el servicio de protocolo de transporte de control ' +
        'de audio y v'#237'deo";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Ser' +
        'vicio AVCTP";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "' +
        'BthAvctpSvc";'#10#9'PathName = "C:\\Windows\\system32\\svchost.exe -k' +
        ' LocalService -p";'#10#9'ProcessId = 1736;'#10#9'ServiceSpecificExitCode =' +
        ' 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = TRUE;'#10#9'StartMode ' +
        '= "Manual";'#10#9'StartName = "NT AUTHORITY\\LocalService";'#10#9'State = ' +
        '"Running";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_Com' +
        'puterSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'Wait' +
        'Hint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Servicio de compatibilidad con Bluetooth";'#10#9'C' +
        'heckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAut' +
        'oStart = FALSE;'#10#9'Description = "El servicio Bluetooth admite la ' +
        'detecci'#243'n y la asociaci'#243'n de dispositivos Bluetooth remotos. Si ' +
        'el servicio se detiene o deshabilita, puede que los dispositivos' +
        ' Bluetooth ya instalados dejen de funcionar correctamente y no s' +
        'e puedan detectar ni asociar dispositivos nuevos.";'#10#9'DesktopInte' +
        'ract = FALSE;'#10#9'DisplayName = "Servicio de compatibilidad con Blu' +
        'etooth";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "bthse' +
        'rv";'#10#9'PathName = "C:\\Windows\\system32\\svchost.exe -k LocalSer' +
        'vice -p";'#10#9'ProcessId = 1752;'#10#9'ServiceSpecificExitCode = 0;'#10#9'Serv' +
        'iceType = "Share Process";'#10#9'Started = TRUE;'#10#9'StartMode = "Manual' +
        '";'#10#9'StartName = "NT AUTHORITY\\LocalService";'#10#9'State = "Running"' +
        ';'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSyst' +
        'em";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;' +
        #10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio Administrador de funcionalidad de a' +
        'cceso";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9 +
        'DelayedAutoStart = FALSE;'#10#9'Description = "Proporciona funciones ' +
        'para administrar el acceso de aplicaciones UWP a capacidades de ' +
        'la aplicaci'#243'n, as'#237' como la comprobaci'#243'n de acceso de la aplicaci' +
        #243'n a capacidades de la aplicaci'#243'n espec'#237'fica";'#10#9'DesktopInteract ' +
        '= FALSE;'#10#9'DisplayName = "Servicio Administrador de funcionalidad' +
        ' de acceso";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "c' +
        'amsvc";'#10#9'PathName = "C:\\Windows\\system32\\svchost.exe -k appmo' +
        'del -p";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceT' +
        'ype = "Share Process";'#10#9'Started = FALSE;'#10#9'StartMode = "Manual";'#10 +
        #9'StartName = "LocalSystem";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10 +
        #9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'SystemName =' +
        ' "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Servicio de plataforma de dispositivos conect' +
        'ados";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'D' +
        'elayedAutoStart = TRUE;'#10#9'Description = "Este servicio se usa par' +
        'a los escenarios de la plataforma de dispositivos conectados";'#10#9 +
        'DesktopInteract = FALSE;'#10#9'DisplayName = "Servicio de plataforma ' +
        'de dispositivos conectados";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode' +
        ' = 0;'#10#9'Name = "CDPSvc";'#10#9'PathName = "C:\\Windows\\system32\\svch' +
        'ost.exe -k LocalService -p";'#10#9'ProcessId = 1820;'#10#9'ServiceSpecific' +
        'ExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = TRUE;'#10#9 +
        'StartMode = "Auto";'#10#9'StartName = "NT AUTHORITY\\LocalService";'#10#9 +
        'State = "Running";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "W' +
        'in32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = ' +
        '0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Propagaci'#243'n de certificados";'#10#9'CheckPoint = 0' +
        ';'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALS' +
        'E;'#10#9'Description = "Copia los certificados de usuario y certifica' +
        'dos ra'#237'z de tarjetas inteligentes en el almac'#233'n de certificados ' +
        'del usuario actual, detecta la inserci'#243'n de una tarjeta intelige' +
        'nte en un lector de tarjetas inteligentes y, si es necesario, in' +
        'stala el minicontrolador Plug and Play para tarjetas inteligente' +
        's.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Propagaci'#243'n de ce' +
        'rtificados";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "C' +
        'ertPropSvc";'#10#9'PathName = "C:\\Windows\\system32\\svchost.exe -k ' +
        'netsvcs";'#10#9'ProcessId = 3068;'#10#9'ServiceSpecificExitCode = 0;'#10#9'Serv' +
        'iceType = "Share Process";'#10#9'Started = TRUE;'#10#9'StartMode = "Manual' +
        '";'#10#9'StartName = "LocalSystem";'#10#9'State = "Running";'#10#9'Status = "OK' +
        '";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'SystemNam' +
        'e = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Servicio de Escritorio Remoto de Chrome";'#10#9'Ch' +
        'eckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAuto' +
        'Start = FALSE;'#10#9'Description = "Este servicio permite las conexio' +
        'nes entrantes de los clientes de Escritorio Remoto de Chrome.";'#10 +
        #9'DesktopInteract = FALSE;'#10#9'DisplayName = "Servicio de Escritorio' +
        ' Remoto de Chrome";'#10#9'ErrorControl = "Ignore";'#10#9'ExitCode = 0;'#10#9'Na' +
        'me = "chromoting";'#10#9'PathName = "\"C:\\Program Files (x86)\\Googl' +
        'e\\Chrome Remote Desktop\\83.0.4103.2\\remoting_host.exe\" --typ' +
        'e=daemon --host-config=\"C:\\ProgramData\\Google\\Chrome Remote ' +
        'Desktop\\host.json\"";'#10#9'ProcessId = 4272;'#10#9'ServiceSpecificExitCo' +
        'de = 0;'#10#9'ServiceType = "Own Process";'#10#9'Started = TRUE;'#10#9'StartMod' +
        'e = "Auto";'#10#9'StartName = "LocalSystem";'#10#9'State = "Running";'#10#9'Sta' +
        'tus = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9 +
        'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Servicio Hacer clic y ejecutar de Microsoft O' +
        'ffice";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9 +
        'DelayedAutoStart = FALSE;'#10#9'Description = "?Administra la coordin' +
        'aci'#243'n de recursos, la descarga en segundo plano y la integraci'#243'n' +
        ' de los productos de Microsoft Office y de las actualizaciones r' +
        'elacionadas. Este servicio debe estar iniciado durante el uso de' +
        ' cualquier programa de Microsoft Office, durante la instalaci'#243'n ' +
        'inicial de la descarga y durante el resto de actualizaciones sub' +
        'siguientes.?";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Servici' +
        'o Hacer clic y ejecutar de Microsoft Office";'#10#9'ErrorControl = "N' +
        'ormal";'#10#9'ExitCode = 0;'#10#9'Name = "ClickToRunSvc";'#10#9'PathName = "\"C' +
        ':\\Program Files\\Common Files\\Microsoft Shared\\ClickToRun\\Of' +
        'ficeClickToRun.exe\" /service";'#10#9'ProcessId = 5132;'#10#9'ServiceSpeci' +
        'ficExitCode = 0;'#10#9'ServiceType = "Own Process";'#10#9'Started = TRUE;'#10 +
        #9'StartMode = "Auto";'#10#9'StartName = "LocalSystem";'#10#9'State = "Runni' +
        'ng";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerS' +
        'ystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint =' +
        ' 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio de licencia de cliente (ClipSVC)";'#10 +
        #9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedA' +
        'utoStart = FALSE;'#10#9'Description = "Proporciona compatibilidad con' +
        ' infraestructura para Microsoft Store. Este servicio se inicia a' +
        ' petici'#243'n y, si se deshabilita, las aplicaciones compradas en la' +
        ' Tienda Windows no funcionar'#225'n correctamente.";'#10#9'DesktopInteract' +
        ' = FALSE;'#10#9'DisplayName = "Servicio de licencia de cliente (ClipS' +
        'VC)";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "ClipSVC"' +
        ';'#10#9'PathName = "C:\\Windows\\System32\\svchost.exe -k wsappx -p";' +
        #10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "S' +
        'hare Process";'#10#9'Started = FALSE;'#10#9'StartMode = "Manual";'#10#9'StartNa' +
        'me = "LocalSystem";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemC' +
        'reationClassName = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02' +
        'EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Aplicaci'#243'n del sistema COM+";'#10#9'CheckPoint = ' +
        '0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart = FAL' +
        'SE;'#10#9'Description = "Administra la configuraci'#243'n y el seguimiento' +
        ' de los componentes del Modelo de objetos componentes (COM+). Si' +
        ' se detiene el servicio, la mayor'#237'a de los componentes COM+ no f' +
        'uncionar'#225'n correctamente. Si se deshabilita este servicio, no se' +
        ' podr'#225' iniciar ning'#250'n servicio que dependa espec'#237'ficamente de '#233'l' +
        '.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Aplicaci'#243'n del sis' +
        'tema COM+";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name = ' +
        '"COMSysApp";'#10#9'PathName = "C:\\Windows\\system32\\dllhost.exe /Pr' +
        'ocessid:{02D4B3F1-FD88-11D1-960D-00805FC79235}";'#10#9'ProcessId = 0;' +
        #10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Own Process";'#10#9'St' +
        'arted = FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName = "LocalSystem"' +
        ';'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName =' +
        ' "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId' +
        ' = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "CoreMessaging";'#10#9'CheckPoint = 0;'#10#9'CreationCl' +
        'assName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Descripti' +
        'on = "Manages communication between system components.";'#10#9'Deskto' +
        'pInteract = FALSE;'#10#9'DisplayName = "CoreMessaging";'#10#9'ErrorControl' +
        ' = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "CoreMessagingRegistrar";'#10#9'P' +
        'athName = "C:\\Windows\\system32\\svchost.exe -k LocalServiceNoN' +
        'etwork -p";'#10#9'ProcessId = 2352;'#10#9'ServiceSpecificExitCode = 0;'#10#9'Se' +
        'rviceType = "Share Process";'#10#9'Started = TRUE;'#10#9'StartMode = "Auto' +
        '";'#10#9'StartName = "NT AUTHORITY\\LocalService";'#10#9'State = "Running"' +
        ';'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSyst' +
        'em";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;' +
        #10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Intel(R) Content Protection HECI Service";'#10#9'C' +
        'heckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAut' +
        'oStart = FALSE;'#10#9'Description = "Intel(R) Content Protection HECI' +
        ' Service - enables communication with the Content Protection FW"' +
        ';'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Intel(R) Content Pro' +
        'tection HECI Service";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10 +
        #9'Name = "cphs";'#10#9'PathName = "C:\\Windows\\System32\\DriverStore\' +
        '\FileRepository\\iigd_dch.inf_amd64_d00bfc0321d1b42a\\IntelCpHec' +
        'iSvc.exe";'#10#9'ProcessId = 5960;'#10#9'ServiceSpecificExitCode = 0;'#10#9'Ser' +
        'viceType = "Own Process";'#10#9'Started = TRUE;'#10#9'StartMode = "Manual"' +
        ';'#10#9'StartName = "LocalSystem";'#10#9'State = "Running";'#10#9'Status = "OK"' +
        ';'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'SystemName' +
        ' = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Intel(R) Content Protection HDCP Service";'#10#9'C' +
        'heckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAut' +
        'oStart = FALSE;'#10#9'Description = "Intel(R) Content Protection HDCP' +
        ' Service - enables communication with Content Protection HDCP HW' +
        '";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Intel(R) Content Pr' +
        'otection HDCP Service";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;' +
        #10#9'Name = "cplspcon";'#10#9'PathName = "C:\\Windows\\System32\\DriverS' +
        'tore\\FileRepository\\iigd_dch.inf_amd64_d00bfc0321d1b42a\\Intel' +
        'CpHDCPSvc.exe";'#10#9'ProcessId = 4624;'#10#9'ServiceSpecificExitCode = 0;' +
        #10#9'ServiceType = "Own Process";'#10#9'Started = TRUE;'#10#9'StartMode = "Au' +
        'to";'#10#9'StartName = "LocalSystem";'#10#9'State = "Running";'#10#9'Status = "' +
        'OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'SystemN' +
        'ame = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Servicios de cifrado";'#10#9'CheckPoint = 0;'#10#9'Crea' +
        'tionClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Des' +
        'cription = "Proporciona tres servicios de administraci'#243'n: Servic' +
        'io de cat'#225'logo de base de datos, que confirma las firmas de arch' +
        'ivos de Windows y permite la instalaci'#243'n de nuevos programas; Se' +
        'rvicio de ra'#237'z protegida, que agrega y quita certificados de ent' +
        'idades de certificaci'#243'n ra'#237'z de confianza del equipo, y Servicio' +
        ' autom'#225'tico de actualizaci'#243'n de certificados ra'#237'z, que recupera ' +
        'certificados ra'#237'z de Windows Update y habilita escenarios como S' +
        'SL. Si se detiene este servicio, los servicios de administraci'#243'n' +
        ' mencionados no funcionar'#225'n correctamente. Si se deshabilita est' +
        'e servicio, no se podr'#225'n iniciar ninguno de los servicios que de' +
        'penden expl'#237'citamente de '#233'l.";'#10#9'DesktopInteract = FALSE;'#10#9'Displa' +
        'yName = "Servicios de cifrado";'#10#9'ErrorControl = "Normal";'#10#9'ExitC' +
        'ode = 0;'#10#9'Name = "CryptSvc";'#10#9'PathName = "C:\\Windows\\system32\' +
        '\svchost.exe -k NetworkService -p";'#10#9'ProcessId = 4516;'#10#9'ServiceS' +
        'pecificExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = ' +
        'TRUE;'#10#9'StartMode = "Auto";'#10#9'StartName = "NT Authority\\NetworkSe' +
        'rvice";'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9'SystemCreationClass' +
        'Name = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10 +
        #9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Archivos sin conexi'#243'n";'#10#9'CheckPoint = 0;'#10#9'Cr' +
        'eationClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'D' +
        'escription = "El servicio de archivos sin conexi'#243'n realiza activ' +
        'idades de mantenimiento en la cach'#233' de archivos sin conexi'#243'n, re' +
        'sponde a eventos de inicio y cierre de sesi'#243'n del usuario, imple' +
        'menta la informaci'#243'n interna de la API p'#250'blica y procesa eventos' +
        ' interesantes para los interesados en las actividades de archivo' +
        's sin conexi'#243'n y los cambios de estado de la cach'#233'.";'#10#9'DesktopIn' +
        'teract = FALSE;'#10#9'DisplayName = "Archivos sin conexi'#243'n";'#10#9'ErrorCo' +
        'ntrol = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "CscService";'#10#9'PathN' +
        'ame = "C:\\Windows\\System32\\svchost.exe -k LocalSystemNetworkR' +
        'estricted -p";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'Se' +
        'rviceType = "Share Process";'#10#9'Started = FALSE;'#10#9'StartMode = "Man' +
        'ual";'#10#9'StartName = "LocalSystem";'#10#9'State = "Stopped";'#10#9'Status = ' +
        '"OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'System' +
        'Name = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "CrowdStrike Falcon Sensor Service";'#10#9'CheckPoi' +
        'nt = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart ' +
        '= FALSE;'#10#9'Description = "Helps protect the system from malicious' +
        ' activities";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "CrowdStr' +
        'ike Falcon Sensor Service";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode ' +
        '= 0;'#10#9'Name = "CSFalconService";'#10#9'PathName = "\"C:\\Program Files' +
        '\\CrowdStrike\\CSFalconService.exe\"";'#10#9'ProcessId = 5068;'#10#9'Servi' +
        'ceSpecificExitCode = 0;'#10#9'ServiceType = "Own Process";'#10#9'Started =' +
        ' TRUE;'#10#9'StartMode = "Auto";'#10#9'StartName = "LocalSystem";'#10#9'State =' +
        ' "Running";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_Co' +
        'mputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'Wai' +
        'tHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Iniciador de procesos de servidor DCOM";'#10#9'Ch' +
        'eckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAuto' +
        'Start = FALSE;'#10#9'Description = "El servicio DCOMLAUNCH inicia los' +
        ' servidores COM y DCOM en respuesta a las solicitudes de activac' +
        'i'#243'n de objetos. Si este servicio se detiene o se deshabilita, lo' +
        's programas que usen COM o DCOM no funcionar'#225'n correctamente. Po' +
        'r ello, es muy recomendable que ejecute el servicio DCOMLAUNCH."' +
        ';'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Iniciador de proceso' +
        's de servidor DCOM";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'N' +
        'ame = "DcomLaunch";'#10#9'PathName = "C:\\Windows\\system32\\svchost.' +
        'exe -k DcomLaunch -p";'#10#9'ProcessId = 1080;'#10#9'ServiceSpecificExitCo' +
        'de = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = TRUE;'#10#9'StartM' +
        'ode = "Auto";'#10#9'StartName = "LocalSystem";'#10#9'State = "Running";'#10#9'S' +
        'tatus = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";' +
        #10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Optimizar unidades";'#10#9'CheckPoint = 0;'#10#9'Creat' +
        'ionClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Desc' +
        'ription = "Ayuda al equipo a ejecutarse de manera m'#225's eficaz med' +
        'iante la optimizaci'#243'n de archivos en las unidades de almacenamie' +
        'nto.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Optimizar unida' +
        'des";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "defra' +
        'gsvc";'#10#9'PathName = "C:\\Windows\\system32\\svchost.exe -k defrag' +
        'svc";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType' +
        ' = "Own Process";'#10#9'Started = FALSE;'#10#9'StartMode = "Manual";'#10#9'Star' +
        'tName = "localSystem";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'Syst' +
        'emCreationClassName = "Win32_ComputerSystem";'#10#9'SystemName = "EUE' +
        'S02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Servicio de asociaci'#243'n de dispositivos";'#10#9'Che' +
        'ckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoS' +
        'tart = FALSE;'#10#9'Description = "Permite el emparejamiento entre el' +
        ' sistema y dispositivos con cable e inal'#225'mbricos.";'#10#9'DesktopInte' +
        'ract = FALSE;'#10#9'DisplayName = "Servicio de asociaci'#243'n de disposit' +
        'ivos";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "DeviceA' +
        'ssociationService";'#10#9'PathName = "C:\\Windows\\system32\\svchost.' +
        'exe -k LocalSystemNetworkRestricted -p";'#10#9'ProcessId = 2668;'#10#9'Ser' +
        'viceSpecificExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Start' +
        'ed = TRUE;'#10#9'StartMode = "Auto";'#10#9'StartName = "LocalSystem";'#10#9'Sta' +
        'te = "Running";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win3' +
        '2_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10 +
        #9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio de instalaci'#243'n de dispositivos";'#10#9'C' +
        'heckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAut' +
        'oStart = FALSE;'#10#9'Description = "Habilita un equipo para que reco' +
        'nozca y adapte los cambios de hardware con el menor esfuerzo por' +
        ' parte del usuario. Si se detiene o deshabilita este servicio, e' +
        'l sistema se volver'#225' inestable.";'#10#9'DesktopInteract = FALSE;'#10#9'Dis' +
        'playName = "Servicio de instalaci'#243'n de dispositivos";'#10#9'ErrorCont' +
        'rol = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "DeviceInstall";'#10#9'Path' +
        'Name = "C:\\Windows\\system32\\svchost.exe -k DcomLaunch -p";'#10#9'P' +
        'rocessId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Shar' +
        'e Process";'#10#9'Started = FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName ' +
        '= "LocalSystem";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCrea' +
        'tionClassName = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXG' +
        'ESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Agente de detecci'#243'n en segundo plano de DevQ' +
        'uery";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'D' +
        'elayedAutoStart = FALSE;'#10#9'Description = "Permite a las aplicacio' +
        'nes detectar dispositivos con una tarea en segundo plano";'#10#9'Desk' +
        'topInteract = FALSE;'#10#9'DisplayName = "Agente de detecci'#243'n en segu' +
        'ndo plano de DevQuery";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 10' +
        '77;'#10#9'Name = "DevQueryBroker";'#10#9'PathName = "C:\\Windows\\system32' +
        '\\svchost.exe -k LocalSystemNetworkRestricted -p";'#10#9'ProcessId = ' +
        '0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Share Process";' +
        #10#9'Started = FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName = "LocalSys' +
        'tem";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassNa' +
        'me = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'T' +
        'agId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Cliente DHCP";'#10#9'CheckPoint = 0;'#10#9'CreationClas' +
        'sName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Description' +
        ' = "Registra y actualiza las direcciones IP y los registros DNS ' +
        'en este equipo. Si se detiene este servicio, el equipo no recibi' +
        'r'#225' direcciones IP din'#225'micas ni actualizaciones de DNS. Si se des' +
        'habilita este servicio, no se podr'#225' iniciar ning'#250'n servicio que ' +
        'dependa expl'#237'citamente de '#233'l.";'#10#9'DesktopInteract = FALSE;'#10#9'Displ' +
        'ayName = "Cliente DHCP";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0' +
        ';'#10#9'Name = "Dhcp";'#10#9'PathName = "C:\\Windows\\system32\\svchost.ex' +
        'e -k LocalServiceNetworkRestricted -p";'#10#9'ProcessId = 1932;'#10#9'Serv' +
        'iceSpecificExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Starte' +
        'd = TRUE;'#10#9'StartMode = "Auto";'#10#9'StartName = "NT Authority\\Local' +
        'Service";'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9'SystemCreationCla' +
        'ssName = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE"' +
        ';'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio Recopilador est'#225'ndar del concentrad' +
        'or de diagn'#243'sticos de Microsoft (R)";'#10#9'CheckPoint = 0;'#10#9'Creation' +
        'ClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Descrip' +
        'tion = "Servicio Recopilador est'#225'ndar del concentrador de diagn'#243 +
        'sticos. Cuando se ejecuta, este servicio recopila eventos ETW en' +
        ' tiempo real y los procesa.";'#10#9'DesktopInteract = FALSE;'#10#9'Display' +
        'Name = "Servicio Recopilador est'#225'ndar del concentrador de diagn'#243 +
        'sticos de Microsoft (R)";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = ' +
        '1077;'#10#9'Name = "diagnosticshub.standardcollector.service";'#10#9'PathN' +
        'ame = "C:\\Windows\\system32\\DiagSvcs\\DiagnosticsHub.StandardC' +
        'ollector.Service.exe";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode ' +
        '= 0;'#10#9'ServiceType = "Own Process";'#10#9'Started = FALSE;'#10#9'StartMode ' +
        '= "Manual";'#10#9'StartName = "LocalSystem";'#10#9'State = "Stopped";'#10#9'Sta' +
        'tus = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9 +
        'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Diagnostic Execution Service";'#10#9'CheckPoint =' +
        ' 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart = FA' +
        'LSE;'#10#9'Description = "Executes diagnostic actions for troubleshoo' +
        'ting support";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Diagnos' +
        'tic Execution Service";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 10' +
        '77;'#10#9'Name = "diagsvc";'#10#9'PathName = "C:\\Windows\\System32\\svcho' +
        'st.exe -k diagnostics";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode' +
        ' = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = FALSE;'#10#9'StartMo' +
        'de = "Manual";'#10#9'StartName = "LocalSystem";'#10#9'State = "Stopped";'#10#9 +
        'Status = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem"' +
        ';'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};' +
        #10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Experiencias del usuario y telemetr'#237'a asociad' +
        'as";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'Del' +
        'ayedAutoStart = FALSE;'#10#9'Description = "El servicio Experiencias ' +
        'del usuario y telemetr'#237'a asociadas proporciona caracter'#237'sticas c' +
        'ompatibles con las experiencias del usuario conectado y en aplic' +
        'aci'#243'n. Adem'#225's, este servicio administra la transmisi'#243'n y colecci' +
        #243'n basada en eventos de informaci'#243'n de uso y diagn'#243'stico (que se' +
        ' usa para mejorar la experiencia y la calidad de la plataforma W' +
        'indows) cuando la configuraci'#243'n de la opci'#243'n de privacidad de us' +
        'o y diagn'#243'stico est'#225' habilitada en Comentarios y diagn'#243'sticos.";' +
        #10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Experiencias del usua' +
        'rio y telemetr'#237'a asociadas";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode' +
        ' = 0;'#10#9'Name = "DiagTrack";'#10#9'PathName = "C:\\Windows\\System32\\s' +
        'vchost.exe -k utcsvc -p";'#10#9'ProcessId = 4808;'#10#9'ServiceSpecificExi' +
        'tCode = 0;'#10#9'ServiceType = "Own Process";'#10#9'Started = TRUE;'#10#9'Start' +
        'Mode = "Auto";'#10#9'StartName = "LocalSystem";'#10#9'State = "Running";'#10#9 +
        'Status = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem"' +
        ';'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};' +
        #10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Mostrar el servicio de directivas";'#10#9'CheckPoi' +
        'nt = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart ' +
        '= TRUE;'#10#9'Description = "Administra la conexi'#243'n y la configuraci'#243 +
        'n de las pantallas locales y remotas";'#10#9'DesktopInteract = FALSE;' +
        #10#9'DisplayName = "Mostrar el servicio de directivas";'#10#9'ErrorContr' +
        'ol = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "DispBrokerDesktopSvc";'#10#9'P' +
        'athName = "C:\\Windows\\system32\\svchost.exe -k LocalService -p' +
        '";'#10#9'ProcessId = 2428;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType' +
        ' = "Share Process";'#10#9'Started = TRUE;'#10#9'StartMode = "Auto";'#10#9'Start' +
        'Name = "NT AUTHORITY\\LocalService";'#10#9'State = "Running";'#10#9'Status' +
        ' = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'Sys' +
        'temName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Servicio de mejora de visualizaci'#243'n";'#10#9'CheckP' +
        'oint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStar' +
        't = FALSE;'#10#9'Description = "Un servicio para administrar la mejor' +
        'a de visualizaci'#243'n, como el control de brillo.";'#10#9'DesktopInterac' +
        't = FALSE;'#10#9'DisplayName = "Servicio de mejora de visualizaci'#243'n";' +
        #10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "DisplayEnhanc' +
        'ementService";'#10#9'PathName = "C:\\Windows\\system32\\svchost.exe -' +
        'k LocalSystemNetworkRestricted -p";'#10#9'ProcessId = 2128;'#10#9'ServiceS' +
        'pecificExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = ' +
        'TRUE;'#10#9'StartMode = "Manual";'#10#9'StartName = "LocalSystem";'#10#9'State ' +
        '= "Running";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_C' +
        'omputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'Wa' +
        'itHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio de inscripci'#243'n de administraci'#243'n de' +
        ' dispositivos";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Ser' +
        'vice";'#10#9'DelayedAutoStart = FALSE;'#10#9'Description = "Realiza activi' +
        'dades de inscripci'#243'n de dispositivos para la administraci'#243'n de d' +
        'ispositivos";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Servicio' +
        ' de inscripci'#243'n de administraci'#243'n de dispositivos";'#10#9'ErrorContro' +
        'l = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "DmEnrollmentSvc";'#10#9'Path' +
        'Name = "C:\\Windows\\system32\\svchost.exe -k netsvcs -p";'#10#9'Proc' +
        'essId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Own Pro' +
        'cess";'#10#9'Started = FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName = "Lo' +
        'calSystem";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationC' +
        'lassName = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEV' +
        'E";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio de enrutamiento de mensajes de inse' +
        'rci'#243'n del Protocolo de aplicaci'#243'n inal'#225'mbrica (WAP) de administr' +
        'aci'#243'n de dispositivos";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "W' +
        'in32_Service";'#10#9'DelayedAutoStart = TRUE;'#10#9'Description = "Redirig' +
        'e los mensajes de inserci'#243'n del Protocolo de aplicaci'#243'n inal'#225'mbr' +
        'ica (WAP) que recibe el dispositivo y sincroniza las sesiones de' +
        ' administraci'#243'n de dispositivos";'#10#9'DesktopInteract = FALSE;'#10#9'Dis' +
        'playName = "Servicio de enrutamiento de mensajes de inserci'#243'n de' +
        'l Protocolo de aplicaci'#243'n inal'#225'mbrica (WAP) de administraci'#243'n de' +
        ' dispositivos";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 1077;'#10#9'Nam' +
        'e = "dmwappushservice";'#10#9'PathName = "C:\\Windows\\system32\\svch' +
        'ost.exe -k netsvcs -p";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode' +
        ' = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = FALSE;'#10#9'StartMo' +
        'de = "Manual";'#10#9'StartName = "LocalSystem";'#10#9'State = "Stopped";'#10#9 +
        'Status = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem"' +
        ';'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};' +
        #10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Cliente DNS";'#10#9'CheckPoint = 0;'#10#9'CreationClas' +
        'sName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Description' +
        ' = "El servicio Cliente DNS (dnscache) almacena en cach'#233' los nom' +
        'bres de Sistema de nombres de dominio (DNS) y registra el nombre' +
        ' de equipo completo para este equipo. Si este servicio se detien' +
        'e, los nombres DNS se seguir'#225'n resolviendo. Sin embargo, los res' +
        'ultados de las consultas de nombres DNS no se almacenar'#225'n en cac' +
        'h'#233' y el nombre del equipo no se registrar'#225'. Si este servicio se ' +
        'deshabilita, todos los servicios que dependen expl'#237'citamente de ' +
        #233'l no podr'#225'n iniciarse.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName' +
        ' = "Cliente DNS";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name' +
        ' = "Dnscache";'#10#9'PathName = "C:\\Windows\\system32\\svchost.exe -' +
        'k NetworkService -p";'#10#9'ProcessId = 2032;'#10#9'ServiceSpecificExitCod' +
        'e = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = TRUE;'#10#9'StartMo' +
        'de = "Auto";'#10#9'StartName = "NT AUTHORITY\\NetworkService";'#10#9'State' +
        ' = "Running";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_' +
        'ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'W' +
        'aitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Optimizaci'#243'n de distribuci'#243'n";'#10#9'CheckPoint = ' +
        '0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart = TRU' +
        'E;'#10#9'Description = "Realiza tareas de optimizaci'#243'n de entrega de ' +
        'contenido";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Optimizaci' +
        #243'n de distribuci'#243'n";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'N' +
        'ame = "DoSvc";'#10#9'PathName = "C:\\Windows\\System32\\svchost.exe -' +
        'k NetworkService -p";'#10#9'ProcessId = 4080;'#10#9'ServiceSpecificExitCod' +
        'e = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = TRUE;'#10#9'StartMo' +
        'de = "Auto";'#10#9'StartName = "NT Authority\\NetworkService";'#10#9'State' +
        ' = "Running";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_' +
        'ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'W' +
        'aitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Configuraci'#243'n autom'#225'tica de redes cableadas";' +
        #10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'Delayed' +
        'AutoStart = FALSE;'#10#9'Description = "El Servicio de configuraci'#243'n ' +
        'autom'#225'tica de redes cableadas (DOT3SVC) se encarga de realizar l' +
        'a autenticaci'#243'n IEEE 802.1X en interfaces Ethernet. Si la implem' +
        'entaci'#243'n de la red cableada actual exige autenticaci'#243'n 802.1X, e' +
        'l servicio DOT3SVC debe configurarse de modo que se ejecute para' +
        ' establecer la conectividad de nivel 2 y/o proporcionar acceso a' +
        ' los recursos de red. Las redes cableadas que no exigen autentic' +
        'aci'#243'n 802.1X no se ver'#225'n afectadas por el servicio DOT3SVC.";'#10#9'D' +
        'esktopInteract = FALSE;'#10#9'DisplayName = "Configuraci'#243'n autom'#225'tica' +
        ' de redes cableadas";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9 +
        'Name = "dot3svc";'#10#9'PathName = "C:\\Windows\\system32\\svchost.ex' +
        'e -k LocalSystemNetworkRestricted -p";'#10#9'ProcessId = 4372;'#10#9'Servi' +
        'ceSpecificExitCode = 0;'#10#9'ServiceType = "Own Process";'#10#9'Started =' +
        ' TRUE;'#10#9'StartMode = "Auto";'#10#9'StartName = "localSystem";'#10#9'State =' +
        ' "Running";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_Co' +
        'mputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'Wai' +
        'tHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Servicio de directivas de diagn'#243'stico";'#10#9'Chec' +
        'kPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoSt' +
        'art = FALSE;'#10#9'Description = "El Servicio de directivas de diagn'#243 +
        'stico permite detectar, solucionar y resolver problemas de compo' +
        'nentes de Windows. Si se detiene este servicio, los diagn'#243'sticos' +
        ' dejar'#225'n de funcionar.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName ' +
        '= "Servicio de directivas de diagn'#243'stico";'#10#9'ErrorControl = "Norm' +
        'al";'#10#9'ExitCode = 0;'#10#9'Name = "DPS";'#10#9'PathName = "C:\\Windows\\Sys' +
        'tem32\\svchost.exe -k LocalServiceNoNetwork -p";'#10#9'ProcessId = 46' +
        '68;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Share Process"' +
        ';'#10#9'Started = TRUE;'#10#9'StartMode = "Auto";'#10#9'StartName = "NT AUTHORI' +
        'TY\\LocalService";'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9'SystemCr' +
        'eationClassName = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02E' +
        'XGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Administrador de configuraci'#243'n de dispositiv' +
        'os";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'Del' +
        'ayedAutoStart = FALSE;'#10#9'Description = "Habilita la detecci'#243'n, la' +
        ' descarga y la instalaci'#243'n del software relacionado con el dispo' +
        'sitivo. Si se deshabilita este servicio, los dispositivos podr'#237'a' +
        'n configurarse con un software desfasado y podr'#237'an no funcionar ' +
        'correctamente.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Admin' +
        'istrador de configuraci'#243'n de dispositivos";'#10#9'ErrorControl = "Nor' +
        'mal";'#10#9'ExitCode = 0;'#10#9'Name = "DsmSvc";'#10#9'PathName = "C:\\Windows\' +
        '\system32\\svchost.exe -k netsvcs -p";'#10#9'ProcessId = 0;'#10#9'ServiceS' +
        'pecificExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = ' +
        'FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName = "LocalSystem";'#10#9'State' +
        ' = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_' +
        'ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'W' +
        'aitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio de uso compartido de datos";'#10#9'Check' +
        'Point = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoSta' +
        'rt = FALSE;'#10#9'Description = "Proporciona servicios de administrac' +
        'i'#243'n de datos entre aplicaciones.";'#10#9'DesktopInteract = FALSE;'#10#9'Di' +
        'splayName = "Servicio de uso compartido de datos";'#10#9'ErrorControl' +
        ' = "Ignore";'#10#9'ExitCode = 1077;'#10#9'Name = "DsSvc";'#10#9'PathName = "C:\' +
        '\Windows\\System32\\svchost.exe -k LocalSystemNetworkRestricted ' +
        '-p";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType ' +
        '= "Share Process";'#10#9'Started = FALSE;'#10#9'StartMode = "Manual";'#10#9'Sta' +
        'rtName = "LocalSystem";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'Sys' +
        'temCreationClassName = "Win32_ComputerSystem";'#10#9'SystemName = "EU' +
        'ES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Uso de datos";'#10#9'CheckPoint = 0;'#10#9'CreationClas' +
        'sName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Description' +
        ' = "Uso de datos de red, l'#237'mite de datos, restringir datos en se' +
        'gundo plano, redes de uso medido.";'#10#9'DesktopInteract = FALSE;'#10#9'D' +
        'isplayName = "Uso de datos";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode' +
        ' = 0;'#10#9'Name = "DusmSvc";'#10#9'PathName = "C:\\Windows\\System32\\svc' +
        'host.exe -k LocalServiceNetworkRestricted -p";'#10#9'ProcessId = 4116' +
        ';'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Own Process";'#10#9'S' +
        'tarted = TRUE;'#10#9'StartMode = "Auto";'#10#9'StartName = "NT Authority\\' +
        'LocalService";'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9'SystemCreati' +
        'onClassName = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGES' +
        'TEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Protocolo de autenticaci'#243'n extensible";'#10#9'Chec' +
        'kPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoSt' +
        'art = FALSE;'#10#9'Description = "El servicio Protocolo de autenticac' +
        'i'#243'n extensible (EAP) proporciona autenticaci'#243'n de red en escenar' +
        'ios como 802.1x con cable e inal'#225'mbrica, VPN y Protecci'#243'n de acc' +
        'eso a redes (NAP). EAP tambi'#233'n proporciona interfaces de program' +
        'aci'#243'n de aplicaciones (API) usadas por clientes de acceso a rede' +
        's, incluidos clientes inal'#225'mbricos y VPN, durante el proceso de ' +
        'autenticaci'#243'n. Si deshabilita este servicio, este equipo no podr' +
        #225' obtener acceso a redes que requieran autenticaci'#243'n EAP.";'#10#9'Des' +
        'ktopInteract = FALSE;'#10#9'DisplayName = "Protocolo de autenticaci'#243'n' +
        ' extensible";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "' +
        'Eaphost";'#10#9'PathName = "C:\\Windows\\System32\\svchost.exe -k net' +
        'svcs -p";'#10#9'ProcessId = 4176;'#10#9'ServiceSpecificExitCode = 0;'#10#9'Serv' +
        'iceType = "Share Process";'#10#9'Started = TRUE;'#10#9'StartMode = "Manual' +
        '";'#10#9'StartName = "localSystem";'#10#9'State = "Running";'#10#9'Status = "OK' +
        '";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'SystemNam' +
        'e = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Sistema de cifrado de archivos (EFS)";'#10#9'Chec' +
        'kPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoSt' +
        'art = FALSE;'#10#9'Description = "Proporciona la tecnolog'#237'a de cifrad' +
        'o de archivos b'#225'sica usada para almacenar archivos cifrados en v' +
        'ol'#250'menes del sistema de archivos NTFS. Si este servicio se detie' +
        'ne o se deshabilita, las aplicaciones no podr'#225'n tener acceso a l' +
        'os archivos cifrados.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName =' +
        ' "Sistema de cifrado de archivos (EFS)";'#10#9'ErrorControl = "Normal' +
        '";'#10#9'ExitCode = 1077;'#10#9'Name = "EFS";'#10#9'PathName = "C:\\Windows\\Sy' +
        'stem32\\lsass.exe";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode = 0' +
        ';'#10#9'ServiceType = "Share Process";'#10#9'Started = FALSE;'#10#9'StartMode =' +
        ' "Manual";'#10#9'StartName = "LocalSystem";'#10#9'State = "Stopped";'#10#9'Stat' +
        'us = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'S' +
        'ystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Modo incrustado";'#10#9'CheckPoint = 0;'#10#9'Creation' +
        'ClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Descrip' +
        'tion = "El servicio de modo incrustado habilita escenarios relac' +
        'ionados con las aplicaciones en segundo plano. Al deshabilitar e' +
        'ste servicio se impedir'#225' que se activen las aplicaciones en segu' +
        'ndo plano.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Modo incr' +
        'ustado";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "em' +
        'beddedmode";'#10#9'PathName = "C:\\Windows\\System32\\svchost.exe -k ' +
        'LocalSystemNetworkRestricted -p";'#10#9'ProcessId = 0;'#10#9'ServiceSpecif' +
        'icExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = FALSE' +
        ';'#10#9'StartMode = "Manual";'#10#9'StartName = "LocalSystem";'#10#9'State = "S' +
        'topped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_Compu' +
        'terSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHi' +
        'nt = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio de administraci'#243'n de aplicaciones d' +
        'e empresa";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service' +
        '";'#10#9'DelayedAutoStart = FALSE;'#10#9'Description = "Habilita la admini' +
        'straci'#243'n de aplicaciones de empresa.";'#10#9'DesktopInteract = FALSE;' +
        #10#9'DisplayName = "Servicio de administraci'#243'n de aplicaciones de e' +
        'mpresa";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "En' +
        'tAppSvc";'#10#9'PathName = "C:\\Windows\\system32\\svchost.exe -k app' +
        'model -p";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'Servic' +
        'eType = "Share Process";'#10#9'Started = FALSE;'#10#9'StartMode = "Manual"' +
        ';'#10#9'StartName = "LocalSystem";'#10#9'State = "Stopped";'#10#9'Status = "OK"' +
        ';'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'SystemName' +
        ' = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = TRUE;'#10#9'AcceptStop = ' +
        'TRUE;'#10#9'Caption = "Intel(R) Dynamic Platform and Thermal Framewor' +
        'k service";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service' +
        '";'#10#9'DelayedAutoStart = FALSE;'#10#9'Description = "Intel(R) Dynamic P' +
        'latform and Thermal Framework service";'#10#9'DesktopInteract = FALSE' +
        ';'#10#9'DisplayName = "Intel(R) Dynamic Platform and Thermal Framewor' +
        'k service";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "es' +
        'ifsvc";'#10#9'PathName = "C:\\Windows\\System32\\Intel\\DPTF\\esif_uf' +
        '.exe";'#10#9'ProcessId = 4936;'#10#9'ServiceSpecificExitCode = 0;'#10#9'Service' +
        'Type = "Own Process";'#10#9'Started = TRUE;'#10#9'StartMode = "Auto";'#10#9'Sta' +
        'rtName = "LocalSystem";'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9'Sys' +
        'temCreationClassName = "Win32_ComputerSystem";'#10#9'SystemName = "EU' +
        'ES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Registro de eventos de Windows";'#10#9'CheckPoint ' +
        '= 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart = F' +
        'ALSE;'#10#9'Description = "Este servicio administra eventos y registr' +
        'os de eventos. Permite registrar eventos, consultar eventos, sus' +
        'cribirse a eventos, archivar registros de eventos y administrar ' +
        'metadatos de eventos. Puede mostrar los eventos en formato XML y' +
        ' de texto simple. Si se detiene este servicio, podr'#237'a ponerse en' +
        ' peligro la seguridad y confiabilidad del sistema.";'#10#9'DesktopInt' +
        'eract = FALSE;'#10#9'DisplayName = "Registro de eventos de Windows";'#10 +
        #9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "EventLog";'#10#9'Pa' +
        'thName = "C:\\Windows\\System32\\svchost.exe -k LocalServiceNetw' +
        'orkRestricted -p";'#10#9'ProcessId = 2328;'#10#9'ServiceSpecificExitCode =' +
        ' 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = TRUE;'#10#9'StartMode ' +
        '= "Auto";'#10#9'StartName = "NT AUTHORITY\\LocalService";'#10#9'State = "R' +
        'unning";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_Compu' +
        'terSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHi' +
        'nt = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Sistema de eventos COM+";'#10#9'CheckPoint = 0;'#10#9'C' +
        'reationClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9 +
        'Description = "Admite el Servicio de notificaci'#243'n de eventos del' +
        ' sistema (SENS), que proporciona la distribuci'#243'n autom'#225'tica de e' +
        'ventos a los componentes del Modelo de objetos componentes (COM)' +
        '. Si se detiene este servicio, SENS se cerrar'#225' y no podr'#225' ofrece' +
        'r notificaciones de inicio ni de cierre de sesi'#243'n. Si se deshabi' +
        'lita el servicio, no se podr'#225' iniciar ning'#250'n servicio que depend' +
        'a espec'#237'ficamente de '#233'l.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayNam' +
        'e = "Sistema de eventos COM+";'#10#9'ErrorControl = "Normal";'#10#9'ExitCo' +
        'de = 0;'#10#9'Name = "EventSystem";'#10#9'PathName = "C:\\Windows\\system3' +
        '2\\svchost.exe -k LocalService -p";'#10#9'ProcessId = 3128;'#10#9'ServiceS' +
        'pecificExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = ' +
        'TRUE;'#10#9'StartMode = "Auto";'#10#9'StartName = "NT AUTHORITY\\LocalServ' +
        'ice";'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9'SystemCreationClassNa' +
        'me = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'T' +
        'agId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Fax";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = ' +
        '"Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Description = "Le p' +
        'ermite enviar y recibir faxes, con los recursos disponibles en e' +
        'ste equipo o en la red.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName' +
        ' = "Fax";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "F' +
        'ax";'#10#9'PathName = "C:\\Windows\\system32\\fxssvc.exe";'#10#9'ProcessId' +
        ' = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Own Process"' +
        ';'#10#9'Started = FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName = "NT AUTH' +
        'ORITY\\NetworkService";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'Sys' +
        'temCreationClassName = "Win32_ComputerSystem";'#10#9'SystemName = "EU' +
        'ES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Host de proveedor de detecci'#243'n de funci'#243'n";'#10 +
        #9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedA' +
        'utoStart = FALSE;'#10#9'Description = "El servicio FDPHOST hospeda pr' +
        'oveedores de detecci'#243'n de redes FD (detecci'#243'n de funciones). Est' +
        'os proveedores FD proporcionan servicios de detecci'#243'n de redes p' +
        'ara el Protocolo de detecci'#243'n de servicios simple (SSDP) y el pr' +
        'otocolo de detecci'#243'n de servicios web (WS-D). Si se detiene o de' +
        'shabilita el servicio FDPHOST, se deshabilitar'#225' la detecci'#243'n de ' +
        'redes para estos protocolos cuando se use FD. Si este servicio n' +
        'o est'#225' disponible, los servicios de red que usen FD y est'#233'n basa' +
        'dos en estos protocolos de detecci'#243'n no podr'#225'n encontrar disposi' +
        'tivos o recursos de red.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayNam' +
        'e = "Host de proveedor de detecci'#243'n de funci'#243'n";'#10#9'ErrorControl =' +
        ' "Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "fdPHost";'#10#9'PathName = "C:\' +
        '\Windows\\system32\\svchost.exe -k LocalService -p";'#10#9'ProcessId ' +
        '= 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Share Process' +
        '";'#10#9'Started = FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName = "NT AUT' +
        'HORITY\\LocalService";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'Syst' +
        'emCreationClassName = "Win32_ComputerSystem";'#10#9'SystemName = "EUE' +
        'S02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Publicaci'#243'n de recurso de detecci'#243'n de funci' +
        #243'n";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'Del' +
        'ayedAutoStart = FALSE;'#10#9'Description = "Publica este equipo y los' +
        ' recursos conectados a '#233'l para que puedan detectarse a trav'#233's de' +
        ' la red. Si se detiene este servicio, los recursos de red dejar'#225 +
        'n de publicarse y no podr'#225'n detectarlos otros equipos de la red.' +
        '";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Publicaci'#243'n de recu' +
        'rso de detecci'#243'n de funci'#243'n";'#10#9'ErrorControl = "Normal";'#10#9'ExitCod' +
        'e = 1077;'#10#9'Name = "FDResPub";'#10#9'PathName = "C:\\Windows\\system32' +
        '\\svchost.exe -k LocalServiceAndNoImpersonation -p";'#10#9'ProcessId ' +
        '= 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Share Process' +
        '";'#10#9'Started = FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName = "NT AUT' +
        'HORITY\\LocalService";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'Syst' +
        'emCreationClassName = "Win32_ComputerSystem";'#10#9'SystemName = "EUE' +
        'S02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio de historial de archivos";'#10#9'CheckPo' +
        'int = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart' +
        ' = FALSE;'#10#9'Description = "Protege los archivos de usuario frente' +
        ' a p'#233'rdidas accidentales copi'#225'ndolos en una ubicaci'#243'n de copia d' +
        'e seguridad";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Servicio' +
        ' de historial de archivos";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode ' +
        '= 0;'#10#9'Name = "fhsvc";'#10#9'PathName = "C:\\Windows\\system32\\svchos' +
        't.exe -k LocalSystemNetworkRestricted -p";'#10#9'ProcessId = 0;'#10#9'Serv' +
        'iceSpecificExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Starte' +
        'd = FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName = "LocalSystem";'#10#9'S' +
        'tate = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Wi' +
        'n32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0' +
        ';'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Servicio de cach'#233' de fuentes de Windows";'#10#9'Ch' +
        'eckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAuto' +
        'Start = FALSE;'#10#9'Description = "Optimiza el rendimiento de las ap' +
        'licaciones copiando en la memoria cach'#233' los datos de fuente m'#225's ' +
        'usados. Las aplicaciones iniciar'#225'n este servicio si no se est'#225' e' +
        'jecutando. Es posible deshabilitarlo, aunque si se hace, el rend' +
        'imiento de las aplicaciones se reducir'#225'.";'#10#9'DesktopInteract = FA' +
        'LSE;'#10#9'DisplayName = "Servicio de cach'#233' de fuentes de Windows";'#10#9 +
        'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "FontCache";'#10#9'Pa' +
        'thName = "C:\\Windows\\system32\\svchost.exe -k LocalService -p"' +
        ';'#10#9'ProcessId = 3716;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType ' +
        '= "Share Process";'#10#9'Started = TRUE;'#10#9'StartMode = "Auto";'#10#9'StartN' +
        'ame = "NT AUTHORITY\\LocalService";'#10#9'State = "Running";'#10#9'Status ' +
        '= "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'Syst' +
        'emName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Windows Presentation Foundation Font Cache 3.' +
        '0.0.0";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9 +
        'DelayedAutoStart = FALSE;'#10#9'Description = "Optimiza el rendimient' +
        'o de las aplicaciones Windows Presentation Foundation (WPF) copi' +
        'ando en la memoria cach'#233' los datos de fuente m'#225's usados. Las apl' +
        'icaciones WPF iniciar'#225'n este servicio si no se est'#225' ejecutando. ' +
        'Es posible deshabilitarlo, aunque si se hace, el rendimiento de ' +
        'las aplicaciones WPF se reducir'#225'.";'#10#9'DesktopInteract = FALSE;'#10#9'D' +
        'isplayName = "Windows Presentation Foundation Font Cache 3.0.0.0' +
        '";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "FontCache3.' +
        '0.0.0";'#10#9'PathName = "C:\\Windows\\Microsoft.Net\\Framework64\\v3' +
        '.0\\WPF\\PresentationFontCache.exe";'#10#9'ProcessId = 6172;'#10#9'Service' +
        'SpecificExitCode = 0;'#10#9'ServiceType = "Own Process";'#10#9'Started = T' +
        'RUE;'#10#9'StartMode = "Manual";'#10#9'StartName = "NT Authority\\LocalSer' +
        'vice";'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9'SystemCreationClassN' +
        'ame = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9 +
        'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio FrameServer de la C'#225'mara de Windows' +
        '";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'Delay' +
        'edAutoStart = FALSE;'#10#9'Description = "Permite que varios clientes' +
        ' tengan acceso a los fotogramas de v'#237'deo de las c'#225'maras.";'#10#9'Desk' +
        'topInteract = FALSE;'#10#9'DisplayName = "Servicio FrameServer de la ' +
        'C'#225'mara de Windows";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 1077;'#10 +
        #9'Name = "FrameServer";'#10#9'PathName = "C:\\Windows\\System32\\svcho' +
        'st.exe -k Camera";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode = 0;' +
        #10#9'ServiceType = "Share Process";'#10#9'Started = FALSE;'#10#9'StartMode = ' +
        '"Manual";'#10#9'StartName = "NT AUTHORITY\\LocalService";'#10#9'State = "S' +
        'topped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_Compu' +
        'terSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHi' +
        'nt = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Google Chrome Elevation Service";'#10#9'CheckPoin' +
        't = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart =' +
        ' FALSE;'#10#9'Description = NULL;'#10#9'DesktopInteract = FALSE;'#10#9'DisplayN' +
        'ame = "Google Chrome Elevation Service";'#10#9'ErrorControl = "Normal' +
        '";'#10#9'ExitCode = 1077;'#10#9'Name = "GoogleChromeElevationService";'#10#9'Pa' +
        'thName = "\"C:\\Program Files (x86)\\Google\\Chrome\\Application' +
        '\\83.0.4103.97\\elevation_service.exe\"";'#10#9'ProcessId = 0;'#10#9'Servi' +
        'ceSpecificExitCode = 0;'#10#9'ServiceType = "Own Process";'#10#9'Started =' +
        ' FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName = "LocalSystem";'#10#9'Stat' +
        'e = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32' +
        '_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9 +
        'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Cliente de directiva de grupo";'#10#9'CheckPoint ' +
        '= 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart = F' +
        'ALSE;'#10#9'Description = "Este servicio es responsable de aplicar en' +
        ' el equipo y los usuarios la configuraci'#243'n establecida por los a' +
        'dministradores, a trav'#233's del componente Directiva de grupo. Si e' +
        'l servicio se deshabilita, la configuraci'#243'n no se aplicar'#225' y las' +
        ' aplicaciones y componentes no se podr'#225'n administrar a trav'#233's de' +
        ' Directiva de grupo. Cualquier componente o aplicaci'#243'n que depen' +
        'da del componente Directiva de grupo podr'#237'a dejar de funcionar s' +
        'i el servicio se deshabilita.";'#10#9'DesktopInteract = FALSE;'#10#9'Displ' +
        'ayName = "Cliente de directiva de grupo";'#10#9'ErrorControl = "Norma' +
        'l";'#10#9'ExitCode = 0;'#10#9'Name = "gpsvc";'#10#9'PathName = "C:\\Windows\\sy' +
        'stem32\\svchost.exe -k netsvcs -p";'#10#9'ProcessId = 0;'#10#9'ServiceSpec' +
        'ificExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = FAL' +
        'SE;'#10#9'StartMode = "Auto";'#10#9'StartName = "LocalSystem";'#10#9'State = "S' +
        'topped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_Compu' +
        'terSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHi' +
        'nt = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "GraphicsPerfSvc";'#10#9'CheckPoint = 0;'#10#9'Creation' +
        'ClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Descrip' +
        'tion = "Graphics performance monitor service";'#10#9'DesktopInteract ' +
        '= FALSE;'#10#9'DisplayName = "GraphicsPerfSvc";'#10#9'ErrorControl = "Igno' +
        're";'#10#9'ExitCode = 1077;'#10#9'Name = "GraphicsPerfSvc";'#10#9'PathName = "C' +
        ':\\Windows\\System32\\svchost.exe -k GraphicsPerfSvcGroup";'#10#9'Pro' +
        'cessId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Share ' +
        'Process";'#10#9'Started = FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName = ' +
        '"LocalSystem";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreati' +
        'onClassName = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGES' +
        'TEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio de Google Update (gupdate)";'#10#9'Check' +
        'Point = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoSta' +
        'rt = TRUE;'#10#9'Description = "Mantiene actualizado el software de G' +
        'oogle. Si este servicio se inhabilita o se detiene, el software ' +
        'de Google no se mantendr'#225' actualizado, lo que significa que las ' +
        'vulnerabilidades de seguridad que puedan surgir no se podr'#225'n sol' +
        'ucionar y es posible que el rendimiento del producto se vea afec' +
        'tado. Este servicio se desinstala por s'#237' solo cuando no lo est'#225' ' +
        'utilizando ning'#250'n software de Google.";'#10#9'DesktopInteract = FALSE' +
        ';'#10#9'DisplayName = "Servicio de Google Update (gupdate)";'#10#9'ErrorCo' +
        'ntrol = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "gupdate";'#10#9'PathName = ' +
        '"\"C:\\Program Files (x86)\\Google\\Update\\GoogleUpdate.exe\" /' +
        'svc";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType' +
        ' = "Own Process";'#10#9'Started = FALSE;'#10#9'StartMode = "Auto";'#10#9'StartN' +
        'ame = "LocalSystem";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'System' +
        'CreationClassName = "Win32_ComputerSystem";'#10#9'SystemName = "EUES0' +
        '2EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio de Google Update (gupdatem)";'#10#9'Chec' +
        'kPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoSt' +
        'art = TRUE;'#10#9'Description = "Mantiene actualizado el software de ' +
        'Google. Si este servicio se inhabilita o se detiene, el software' +
        ' de Google no se mantendr'#225' actualizado, lo que significa que las' +
        ' vulnerabilidades de seguridad que puedan surgir no se podr'#225'n so' +
        'lucionar y es posible que el rendimiento del producto se vea afe' +
        'ctado. Este servicio se desinstala por s'#237' solo cuando no lo est'#225 +
        ' utilizando ning'#250'n software de Google.";'#10#9'DesktopInteract = FALS' +
        'E;'#10#9'DisplayName = "Servicio de Google Update (gupdatem)";'#10#9'Error' +
        'Control = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "gupdatem";'#10#9'PathN' +
        'ame = "\"C:\\Program Files (x86)\\Google\\Update\\GoogleUpdate.e' +
        'xe\" /medsvc";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'Se' +
        'rviceType = "Own Process";'#10#9'Started = FALSE;'#10#9'StartMode = "Manua' +
        'l";'#10#9'StartName = "LocalSystem";'#10#9'State = "Stopped";'#10#9'Status = "O' +
        'K";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'SystemNa' +
        'me = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Servicio de dispositivo de interfaz humana";'#10 +
        #9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedA' +
        'utoStart = FALSE;'#10#9'Description = "Activa y mantiene el uso de bo' +
        'tones de acceso directo predefinidos en los teclados, controles ' +
        'remotos y otros dispositivos multimedia. Se recomienda mantener ' +
        'este servicio en ejecuci'#243'n.";'#10#9'DesktopInteract = FALSE;'#10#9'Display' +
        'Name = "Servicio de dispositivo de interfaz humana";'#10#9'ErrorContr' +
        'ol = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "hidserv";'#10#9'PathName = "C:' +
        '\\Windows\\system32\\svchost.exe -k LocalSystemNetworkRestricted' +
        ' -p";'#10#9'ProcessId = 2168;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceT' +
        'ype = "Share Process";'#10#9'Started = TRUE;'#10#9'StartMode = "Manual";'#10#9 +
        'StartName = "LocalSystem";'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9 +
        'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'SystemName = ' +
        '"EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio de host HV";'#10#9'CheckPoint = 0;'#10#9'Crea' +
        'tionClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Des' +
        'cription = "Proporciona una interfaz para que el hipervisor Hype' +
        'r-V proporcione contadores de rendimiento por partici'#243'n al siste' +
        'ma operativo del host.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName ' +
        '= "Servicio de host HV";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 1' +
        '077;'#10#9'Name = "HvHost";'#10#9'PathName = "C:\\Windows\\system32\\svcho' +
        'st.exe -k LocalSystemNetworkRestricted -p";'#10#9'ProcessId = 0;'#10#9'Ser' +
        'viceSpecificExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Start' +
        'ed = FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName = "LocalSystem";'#10#9 +
        'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "W' +
        'in32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = ' +
        '0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Intel Bluetooth Service";'#10#9'CheckPoint = 0;'#10#9'C' +
        'reationClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9 +
        'Description = "Intel(R) Wireless Bluetooth(R) iBtSiva Service";'#10 +
        #9'DesktopInteract = FALSE;'#10#9'DisplayName = "Intel Bluetooth Servic' +
        'e";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "ibtsiva";'#10 +
        #9'PathName = "C:\\Windows\\System32\\ibtsiva";'#10#9'ProcessId = 4844;' +
        #10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Own Process";'#10#9'St' +
        'arted = TRUE;'#10#9'StartMode = "Auto";'#10#9'StartName = "LocalSystem";'#10#9 +
        'State = "Running";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "W' +
        'in32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = ' +
        '0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio de zona con cobertura inal'#225'mbrica m' +
        #243'vil de Windows";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_S' +
        'ervice";'#10#9'DelayedAutoStart = FALSE;'#10#9'Description = "Permite comp' +
        'artir una conexi'#243'n de datos m'#243'viles con otro dispositivo.";'#10#9'Des' +
        'ktopInteract = FALSE;'#10#9'DisplayName = "Servicio de zona con cober' +
        'tura inal'#225'mbrica m'#243'vil de Windows";'#10#9'ErrorControl = "Normal";'#10#9'E' +
        'xitCode = 1077;'#10#9'Name = "icssvc";'#10#9'PathName = "C:\\Windows\\syst' +
        'em32\\svchost.exe -k LocalServiceNetworkRestricted -p";'#10#9'Process' +
        'Id = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Share Proc' +
        'ess";'#10#9'Started = FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName = "NT ' +
        'Authority\\LocalService";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'S' +
        'ystemCreationClassName = "Win32_ComputerSystem";'#10#9'SystemName = "' +
        'EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Intel(R) HD Graphics Control Panel Service";'#10 +
        #9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedA' +
        'utoStart = FALSE;'#10#9'Description = "Service for Intel(R) HD Graphi' +
        'cs Control Panel";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Int' +
        'el(R) HD Graphics Control Panel Service";'#10#9'ErrorControl = "Norma' +
        'l";'#10#9'ExitCode = 0;'#10#9'Name = "igfxCUIService2.0.0.0";'#10#9'PathName = ' +
        '"C:\\Windows\\System32\\DriverStore\\FileRepository\\cui_dch.inf' +
        '_amd64_92cf9d9d84f1d3db\\igfxCUIService.exe";'#10#9'ProcessId = 3556;' +
        #10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Own Process";'#10#9'St' +
        'arted = TRUE;'#10#9'StartMode = "Auto";'#10#9'StartName = "LocalSystem";'#10#9 +
        'State = "Running";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "W' +
        'in32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = ' +
        '0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "M'#243'dulos de creaci'#243'n de claves de IPsec para I' +
        'KE y AuthIP";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Servi' +
        'ce";'#10#9'DelayedAutoStart = FALSE;'#10#9'Description = "El servicio IKEE' +
        'XT hospeda los m'#243'dulos de creaci'#243'n de claves de Intercambio de c' +
        'laves por red (IKE) y protocolo de Internet autenticado (AuthIP)' +
        '. Estos m'#243'dulos de creaci'#243'n de claves se usan para la autenticac' +
        'i'#243'n y el intercambio de claves en el protocolo de seguridad de I' +
        'nternet (IPsec). Si se detiene o deshabilita el servicio IKEEXT,' +
        ' se deshabilitar'#225' el intercambio de claves IKE y AuthIP con equi' +
        'pos del mismo nivel. Normalmente, IPsec est'#225' configurado para us' +
        'ar IKE o AuthIP; es posible que detener o deshabilitar el servic' +
        'io IKEEXT provoque errores de IPsec y ponga en peligro la seguri' +
        'dad del sistema. Se recomienda ejecutar el servicio IKEEXT.";'#10#9'D' +
        'esktopInteract = FALSE;'#10#9'DisplayName = "M'#243'dulos de creaci'#243'n de c' +
        'laves de IPsec para IKE y AuthIP";'#10#9'ErrorControl = "Normal";'#10#9'Ex' +
        'itCode = 0;'#10#9'Name = "IKEEXT";'#10#9'PathName = "C:\\Windows\\system32' +
        '\\svchost.exe -k netsvcs -p";'#10#9'ProcessId = 2928;'#10#9'ServiceSpecifi' +
        'cExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = TRUE;'#10 +
        #9'StartMode = "Auto";'#10#9'StartName = "LocalSystem";'#10#9'State = "Runni' +
        'ng";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerS' +
        'ystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint =' +
        ' 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Servicio de instalaci'#243'n de Microsoft Store";'#10 +
        #9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedA' +
        'utoStart = FALSE;'#10#9'Description = "Proporciona compatibilidad de ' +
        'infraestructura con Microsoft Store. Este servicio se inicia baj' +
        'o demanda y, si se desactiva, las instalaciones no funcionar'#225'n c' +
        'orrectamente.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Servic' +
        'io de instalaci'#243'n de Microsoft Store";'#10#9'ErrorControl = "Ignore";' +
        #10#9'ExitCode = 0;'#10#9'Name = "InstallService";'#10#9'PathName = "C:\\Windo' +
        'ws\\System32\\svchost.exe -k netsvcs -p";'#10#9'ProcessId = 20624;'#10#9'S' +
        'erviceSpecificExitCode = 0;'#10#9'ServiceType = "Own Process";'#10#9'Start' +
        'ed = TRUE;'#10#9'StartMode = "Manual";'#10#9'StartName = "LocalSystem";'#10#9'S' +
        'tate = "Running";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Wi' +
        'n32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0' +
        ';'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Aplicaci'#243'n auxiliar IP";'#10#9'CheckPoint = 0;'#10#9'Cr' +
        'eationClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'D' +
        'escription = "Proporciona conectividad de t'#250'nel mediante tecnolo' +
        'g'#237'as de transici'#243'n IPv6 (6to4, ISATAP, Proxy de puerto y Teredo)' +
        ' e IP-HTTPS. Si se detiene este servicio, el equipo no contar'#225' c' +
        'on los beneficios de conectividad mejorada que ofrecen estas tec' +
        'nolog'#237'as.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Aplicaci'#243'n' +
        ' auxiliar IP";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = ' +
        '"iphlpsvc";'#10#9'PathName = "C:\\Windows\\System32\\svchost.exe -k N' +
        'etSvcs -p";'#10#9'ProcessId = 3212;'#10#9'ServiceSpecificExitCode = 0;'#10#9'Se' +
        'rviceType = "Share Process";'#10#9'Started = TRUE;'#10#9'StartMode = "Auto' +
        '";'#10#9'StartName = "LocalSystem";'#10#9'State = "Running";'#10#9'Status = "OK' +
        '";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'SystemNam' +
        'e = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Windows Phone IP over USB Transport (IpOverUs' +
        'bSvc)";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9 +
        'DelayedAutoStart = FALSE;'#10#9'Description = "Enables communication ' +
        'between the Windows SDK and a Windows Device. If the service is ' +
        'stopped, application deployment and debugging will fail on devic' +
        'e.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Windows Phone IP ' +
        'over USB Transport (IpOverUsbSvc)";'#10#9'ErrorControl = "Ignore";'#10#9'E' +
        'xitCode = 0;'#10#9'Name = "IpOverUsbSvc";'#10#9'PathName = "\"C:\\Program ' +
        'Files (x86)\\Common Files\\Microsoft Shared\\Phone Tools\\CoreCo' +
        'n\\11.0\\bin\\IpOverUsbSvc.exe\"";'#10#9'ProcessId = 4836;'#10#9'ServiceSp' +
        'ecificExitCode = 0;'#10#9'ServiceType = "Own Process";'#10#9'Started = TRU' +
        'E;'#10#9'StartMode = "Auto";'#10#9'StartName = "LocalSystem";'#10#9'State = "Ru' +
        'nning";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_Comput' +
        'erSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHin' +
        't = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio de configuraci'#243'n de traslaci'#243'n de I' +
        'P";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'Dela' +
        'yedAutoStart = FALSE;'#10#9'Description = "Configura y habilita la tr' +
        'aslaci'#243'n de v4 a v6 y viceversa";'#10#9'DesktopInteract = FALSE;'#10#9'Dis' +
        'playName = "Servicio de configuraci'#243'n de traslaci'#243'n de IP";'#10#9'Err' +
        'orControl = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "IpxlatCfgSvc";'#10 +
        #9'PathName = "C:\\Windows\\System32\\svchost.exe -k LocalSystemNe' +
        'tworkRestricted -p";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode = ' +
        '0;'#10#9'ServiceType = "Share Process";'#10#9'Started = FALSE;'#10#9'StartMode ' +
        '= "Manual";'#10#9'StartName = "LocalSystem";'#10#9'State = "Stopped";'#10#9'Sta' +
        'tus = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9 +
        'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Intel(R) Dynamic Application Loader Host Inte' +
        'rface Service";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Ser' +
        'vice";'#10#9'DelayedAutoStart = FALSE;'#10#9'Description = "Intel(R) Dynam' +
        'ic Application Loader Host Interface Service - Allows applicatio' +
        'ns to access the local Intel (R) DAL";'#10#9'DesktopInteract = FALSE;' +
        #10#9'DisplayName = "Intel(R) Dynamic Application Loader Host Interf' +
        'ace Service";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "' +
        'jhi_service";'#10#9'PathName = "C:\\Windows\\System32\\jhi_service.ex' +
        'e";'#10#9'ProcessId = 4940;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceTyp' +
        'e = "Own Process";'#10#9'Started = TRUE;'#10#9'StartMode = "Auto";'#10#9'StartN' +
        'ame = "LocalSystem";'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9'System' +
        'CreationClassName = "Win32_ComputerSystem";'#10#9'SystemName = "EUES0' +
        '2EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Aislamiento de claves CNG";'#10#9'CheckPoint = 0;'#10 +
        #9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;' +
        #10#9'Description = "El servicio Aislamiento de claves CNG se hosped' +
        'a en el proceso LSA. Proporciona aislamiento de proceso de clave' +
        's para las claves privadas y las operaciones criptogr'#225'ficas asoc' +
        'iadas seg'#250'n lo requiere el Criterio com'#250'n. El servicio almacena ' +
        'y usa claves de larga duraci'#243'n en un proceso seguro que cumple l' +
        'os requisitos del Criterio com'#250'n.";'#10#9'DesktopInteract = FALSE;'#10#9'D' +
        'isplayName = "Aislamiento de claves CNG";'#10#9'ErrorControl = "Norma' +
        'l";'#10#9'ExitCode = 0;'#10#9'Name = "KeyIso";'#10#9'PathName = "C:\\Windows\\s' +
        'ystem32\\lsass.exe";'#10#9'ProcessId = 848;'#10#9'ServiceSpecificExitCode ' +
        '= 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = TRUE;'#10#9'StartMode' +
        ' = "Manual";'#10#9'StartName = "LocalSystem";'#10#9'State = "Running";'#10#9'St' +
        'atus = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10 +
        #9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "KTMRM para DTC (Coordinador de transacciones' +
        ' distribuidas)";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Se' +
        'rvice";'#10#9'DelayedAutoStart = FALSE;'#10#9'Description = "Coordina tran' +
        'sacciones entre el coordinador de transacciones distribuidas (MS' +
        'DTC) y el administrador de transacciones de kernel (KTM). Si no ' +
        'es necesario, es recomendable que este servicio permanezca deten' +
        'ido. Si es necesario, tanto MSDTC como KTM iniciar'#225'n el servicio' +
        ' autom'#225'ticamente. Si se deshabilita este servicio, cualquier tra' +
        'nsacci'#243'n de MSDTC que interact'#250'e con un administrador de transac' +
        'ciones de kernel no se podr'#225' realizar y cualquier servicio que d' +
        'ependa expl'#237'citamente de '#233'l no podr'#225' iniciarse.";'#10#9'DesktopIntera' +
        'ct = FALSE;'#10#9'DisplayName = "KTMRM para DTC (Coordinador de trans' +
        'acciones distribuidas)";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 1' +
        '077;'#10#9'Name = "KtmRm";'#10#9'PathName = "C:\\Windows\\System32\\svchos' +
        't.exe -k NetworkServiceAndNoImpersonation -p";'#10#9'ProcessId = 0;'#10#9 +
        'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'St' +
        'arted = FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName = "NT AUTHORITY' +
        '\\NetworkService";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCr' +
        'eationClassName = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02E' +
        'XGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Servidor";'#10#9'CheckPoint = 0;'#10#9'CreationClassNam' +
        'e = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Description = "' +
        'Ofrece compatibilidad con uso compartido de archivos, impresoras' +
        ' y canalizaciones con nombres en la red para este equipo. Si se ' +
        'detiene el servicio, estas funciones no estar'#225'n disponibles. Si ' +
        'se deshabilita el servicio, no se podr'#225' iniciar ninguno de los s' +
        'ervicios que dependan expl'#237'citamente de '#233'l.";'#10#9'DesktopInteract =' +
        ' FALSE;'#10#9'DisplayName = "Servidor";'#10#9'ErrorControl = "Normal";'#10#9'Ex' +
        'itCode = 0;'#10#9'Name = "LanmanServer";'#10#9'PathName = "C:\\Windows\\sy' +
        'stem32\\svchost.exe -k netsvcs -p";'#10#9'ProcessId = 5292;'#10#9'ServiceS' +
        'pecificExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = ' +
        'TRUE;'#10#9'StartMode = "Auto";'#10#9'StartName = "LocalSystem";'#10#9'State = ' +
        '"Running";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_Com' +
        'puterSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'Wait' +
        'Hint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = TRUE;'#10#9'AcceptStop = ' +
        'TRUE;'#10#9'Caption = "Estaci'#243'n de trabajo";'#10#9'CheckPoint = 0;'#10#9'Creati' +
        'onClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Descr' +
        'iption = "Crea y mantiene conexiones de red de cliente con servi' +
        'dores remotos con el protocolo SMB. Si se detiene este servicio,' +
        ' las conexiones dejar'#225'n de estar disponibles. Si se deshabilita,' +
        ' no podr'#225' iniciarse ning'#250'n servicio que dependa expl'#237'citamente d' +
        'e '#233'l.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Estaci'#243'n de tr' +
        'abajo";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "Lanman' +
        'Workstation";'#10#9'PathName = "C:\\Windows\\System32\\svchost.exe -k' +
        ' NetworkService -p";'#10#9'ProcessId = 3388;'#10#9'ServiceSpecificExitCode' +
        ' = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = TRUE;'#10#9'StartMod' +
        'e = "Auto";'#10#9'StartName = "NT AUTHORITY\\NetworkService";'#10#9'State ' +
        '= "Running";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_C' +
        'omputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'Wa' +
        'itHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Servicio de geolocalizaci'#243'n";'#10#9'CheckPoint = 0' +
        ';'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALS' +
        'E;'#10#9'Description = "Este servicio supervisa la ubicaci'#243'n actual d' +
        'el sistema y administra geovallas (ubicaci'#243'n geogr'#225'fica con even' +
        'tos asociados). Si desactiva este servicio, las aplicaciones no ' +
        'podr'#225'n usar ni recibir notificaciones de geolocalizaci'#243'n o geova' +
        'llas.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Servicio de ge' +
        'olocalizaci'#243'n";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name =' +
        ' "lfsvc";'#10#9'PathName = "C:\\Windows\\system32\\svchost.exe -k net' +
        'svcs -p";'#10#9'ProcessId = 17068;'#10#9'ServiceSpecificExitCode = 0;'#10#9'Ser' +
        'viceType = "Share Process";'#10#9'Started = TRUE;'#10#9'StartMode = "Manua' +
        'l";'#10#9'StartName = "LocalSystem";'#10#9'State = "Running";'#10#9'Status = "O' +
        'K";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'SystemNa' +
        'me = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Servicio de administrador de licencias de Win' +
        'dows";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'D' +
        'elayedAutoStart = FALSE;'#10#9'Description = "Proporciona compatibili' +
        'dad de infraestructura con Microsoft Store. Este servicio se ini' +
        'cia bajo demanda y, si se desactiva, el contenido adquirido a tr' +
        'av'#233's de Microsoft Store no funcionar'#225' correctamente.";'#10#9'DesktopI' +
        'nteract = FALSE;'#10#9'DisplayName = "Servicio de administrador de li' +
        'cencias de Windows";'#10#9'ErrorControl = "Ignore";'#10#9'ExitCode = 0;'#10#9'N' +
        'ame = "LicenseManager";'#10#9'PathName = "C:\\Windows\\System32\\svch' +
        'ost.exe -k LocalService -p";'#10#9'ProcessId = 20124;'#10#9'ServiceSpecifi' +
        'cExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = TRUE;'#10 +
        #9'StartMode = "Manual";'#10#9'StartName = "NT Authority\\LocalService"' +
        ';'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9'SystemCreationClassName =' +
        ' "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId' +
        ' = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Asignador de detecci'#243'n de topolog'#237'as de nive' +
        'l de v'#237'nculo";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Serv' +
        'ice";'#10#9'DelayedAutoStart = FALSE;'#10#9'Description = "Crea un mapa de' +
        ' red con informaci'#243'n sobre la topolog'#237'a de dispositivos y de equ' +
        'ipos (conectividad) y los metadatos que describen cada equipo y ' +
        'dispositivo.  Si se deshabilita este servicio, el mapa de red no' +
        ' funcionar'#225' correctamente";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayNa' +
        'me = "Asignador de detecci'#243'n de topolog'#237'as de nivel de v'#237'nculo";' +
        #10#9'ErrorControl = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "lltdsvc";'#10 +
        #9'PathName = "C:\\Windows\\System32\\svchost.exe -k LocalService ' +
        '-p";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType ' +
        '= "Share Process";'#10#9'Started = FALSE;'#10#9'StartMode = "Manual";'#10#9'Sta' +
        'rtName = "NT AUTHORITY\\LocalService";'#10#9'State = "Stopped";'#10#9'Stat' +
        'us = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'S' +
        'ystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Aplicaci'#243'n auxiliar de NetBIOS sobre TCP/IP";' +
        #10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'Delayed' +
        'AutoStart = FALSE;'#10#9'Description = "Proporciona compatibilidad pa' +
        'ra el servicio NetBIOS sobre TCP/IP (NetBT) y resoluci'#243'n de nomb' +
        'res NetBIOS para clientes de la red, lo que permite a los usuari' +
        'os compartir archivos, imprimir e iniciar sesi'#243'n en la red. Si s' +
        'e detiene este servicio, puede que estas funciones no est'#233'n disp' +
        'onibles. Si se deshabilita, los servicios que dependan impl'#237'cita' +
        'mente de '#233'l no se iniciar'#225'n.";'#10#9'DesktopInteract = FALSE;'#10#9'Displa' +
        'yName = "Aplicaci'#243'n auxiliar de NetBIOS sobre TCP/IP";'#10#9'ErrorCon' +
        'trol = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "lmhosts";'#10#9'PathName = "' +
        'C:\\Windows\\System32\\svchost.exe -k LocalServiceNetworkRestric' +
        'ted -p";'#10#9'ProcessId = 1712;'#10#9'ServiceSpecificExitCode = 0;'#10#9'Servi' +
        'ceType = "Share Process";'#10#9'Started = TRUE;'#10#9'StartMode = "Manual"' +
        ';'#10#9'StartName = "NT AUTHORITY\\LocalService";'#10#9'State = "Running";' +
        #10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSyste' +
        'm";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10 +
        '};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "LSM";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = ' +
        '"Win32_Service";'#10#9'DisplayName = "LSM";'#10#9'ErrorControl = "Unknown"' +
        ';'#10#9'ExitCode = 0;'#10#9'Name = "LSM";'#10#9'ProcessId = 1488;'#10#9'ServiceSpeci' +
        'ficExitCode = 0;'#10#9'ServiceType = "Unknown";'#10#9'Started = TRUE;'#10#9'Sta' +
        'rtMode = "Unknown";'#10#9'State = "Running";'#10#9'Status = "UNKNOWN";'#10#9'Sy' +
        'stemCreationClassName = "Win32_ComputerSystem";'#10#9'SystemName = "E' +
        'UES02EXGESTEVE";'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio de experiencia de idioma";'#10#9'CheckPo' +
        'int = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart' +
        ' = FALSE;'#10#9'Description = "Proporciona soporte a la infraestructu' +
        'ra necesaria para implementar y configurar recursos de Windows l' +
        'ocalizados. Este servicio se inicia bajo petici'#243'n y, si se desha' +
        'bilita, los idiomas de Windows adicionales no se implementar'#225'n e' +
        'n el sistema y es posible que Windows no funcione correctamente.' +
        '";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Servicio de experie' +
        'ncia de idioma";'#10#9'ErrorControl = "Ignore";'#10#9'ExitCode = 1077;'#10#9'Na' +
        'me = "LxpSvc";'#10#9'PathName = "C:\\Windows\\system32\\svchost.exe -' +
        'k netsvcs";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'Servi' +
        'ceType = "Share Process";'#10#9'Started = FALSE;'#10#9'StartMode = "Manual' +
        '";'#10#9'StartName = "LocalSystem";'#10#9'State = "Stopped";'#10#9'Status = "OK' +
        '";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'SystemNam' +
        'e = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "McAfee Agent Common Services";'#10#9'CheckPoint = ' +
        '0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart = FAL' +
        'SE;'#10#9'Description = "McAfee Agent Common Services";'#10#9'DesktopInter' +
        'act = FALSE;'#10#9'DisplayName = "McAfee Agent Common Services";'#10#9'Err' +
        'orControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "macmnsvc";'#10#9'PathNa' +
        'me = "\"C:\\Program Files\\McAfee\\Agent\\macmnsvc.exe\" /Servic' +
        'eStart";'#10#9'ProcessId = 5060;'#10#9'ServiceSpecificExitCode = 0;'#10#9'Servi' +
        'ceType = "Own Process";'#10#9'Started = TRUE;'#10#9'StartMode = "Auto";'#10#9'S' +
        'tartName = "NT AUTHORITY\\LocalService";'#10#9'State = "Running";'#10#9'St' +
        'atus = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10 +
        #9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Administrador de mapas descargados";'#10#9'CheckP' +
        'oint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStar' +
        't = TRUE;'#10#9'Description = "Servicio de Windows para el acceso de ' +
        'las aplicaciones a los mapas descargados. Este servicio se inici' +
        'a a petici'#243'n de la aplicaci'#243'n que accede a los mapas descargados' +
        '. Si se deshabilita este servicio, las aplicaciones no podr'#225'n te' +
        'ner acceso a los mapas.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName' +
        ' = "Administrador de mapas descargados";'#10#9'ErrorControl = "Normal' +
        '";'#10#9'ExitCode = 0;'#10#9'Name = "MapsBroker";'#10#9'PathName = "C:\\Windows' +
        '\\System32\\svchost.exe -k NetworkService -p";'#10#9'ProcessId = 0;'#10#9 +
        'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Own Process";'#10#9'Star' +
        'ted = FALSE;'#10#9'StartMode = "Auto";'#10#9'StartName = "NT AUTHORITY\\Ne' +
        'tworkService";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreati' +
        'onClassName = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGES' +
        'TEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "McAfee Agent Service";'#10#9'CheckPoint = 0;'#10#9'Crea' +
        'tionClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Des' +
        'cription = "McAfee Agent Service";'#10#9'DesktopInteract = FALSE;'#10#9'Di' +
        'splayName = "McAfee Agent Service";'#10#9'ErrorControl = "Normal";'#10#9'E' +
        'xitCode = 0;'#10#9'Name = "masvc";'#10#9'PathName = "\"C:\\Program Files\\' +
        'McAfee\\Agent\\masvc.exe\" /ServiceStart";'#10#9'ProcessId = 5152;'#10#9'S' +
        'erviceSpecificExitCode = 0;'#10#9'ServiceType = "Own Process";'#10#9'Start' +
        'ed = TRUE;'#10#9'StartMode = "Auto";'#10#9'StartName = "LocalSystem";'#10#9'Sta' +
        'te = "Running";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win3' +
        '2_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10 +
        #9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "McAfee Management of Native Encryption Servic' +
        'e";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'Dela' +
        'yedAutoStart = FALSE;'#10#9'Description = "McAfee Management of Nativ' +
        'e Encryption Service";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = ' +
        '"McAfee Management of Native Encryption Service";'#10#9'ErrorControl ' +
        '= "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "McAfee Management of Native ' +
        'Encryption Service";'#10#9'PathName = "\"C:\\Program Files (x86)\\McA' +
        'fee\\Management of Native Encryption\\MNEService.exe\"";'#10#9'Proces' +
        'sId = 5144;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Own Pr' +
        'ocess";'#10#9'Started = TRUE;'#10#9'StartMode = "Auto";'#10#9'StartName = "Loca' +
        'lSystem";'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9'SystemCreationCla' +
        'ssName = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE"' +
        ';'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "McAfee Agent Backwards Compatibility Service"' +
        ';'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'Delaye' +
        'dAutoStart = FALSE;'#10#9'Description = "McAfee Agent Backwards Compa' +
        'tibility Service";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "McA' +
        'fee Agent Backwards Compatibility Service";'#10#9'ErrorControl = "Nor' +
        'mal";'#10#9'ExitCode = 0;'#10#9'Name = "McAfeeFramework";'#10#9'PathName = "\"C' +
        ':\\Program Files\\McAfee\\Agent\\x86\\macompatsvc.exe\"";'#10#9'Proce' +
        'ssId = 8464;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Own P' +
        'rocess";'#10#9'Started = TRUE;'#10#9'StartMode = "Manual";'#10#9'StartName = "L' +
        'ocalSystem";'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9'SystemCreation' +
        'ClassName = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTE' +
        'VE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "McAfee McShield";'#10#9'CheckPoint = 0;'#10#9'CreationC' +
        'lassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Descript' +
        'ion = "McAfee OnAccess Scanner";'#10#9'DesktopInteract = FALSE;'#10#9'Disp' +
        'layName = "McAfee McShield";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode' +
        ' = 0;'#10#9'Name = "McShield";'#10#9'PathName = "\"C:\\Program Files\\Comm' +
        'on Files\\McAfee\\SystemCore\\mcshield.exe\"";'#10#9'ProcessId = 8196' +
        ';'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Own Process";'#10#9'S' +
        'tarted = TRUE;'#10#9'StartMode = "Auto";'#10#9'StartName = "LocalSystem";'#10 +
        #9'State = "Running";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "' +
        'Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId =' +
        ' 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "McAfee Task Manager";'#10#9'CheckPoint = 0;'#10#9'Creat' +
        'ionClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Desc' +
        'ription = "Permite planificar las actividades de an'#225'lisis y actu' +
        'alizaci'#243'n de McAfee.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = ' +
        '"McAfee Task Manager";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10 +
        #9'Name = "McTaskManager";'#10#9'PathName = "\"C:\\Program Files (x86)\' +
        '\McAfee\\VirusScan Enterprise\\VsTskMgr.exe\"";'#10#9'ProcessId = 533' +
        '2;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Own Process";'#10#9 +
        'Started = TRUE;'#10#9'StartMode = "Auto";'#10#9'StartName = "LocalSystem";' +
        #10#9'State = "Running";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = ' +
        '"Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId ' +
        '= 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "McAfee Firewall Core Service";'#10#9'CheckPoint =' +
        ' 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart = FA' +
        'LSE;'#10#9'Description = "Provides firewall services to McAfee produc' +
        'ts";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "McAfee Firewall C' +
        'ore Service";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name ' +
        '= "mfefire";'#10#9'PathName = "\"C:\\Program Files\\Common Files\\McA' +
        'fee\\SystemCore\\mfemms.exe\"";'#10#9'ProcessId = 0;'#10#9'ServiceSpecific' +
        'ExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = FALSE;'#10 +
        #9'StartMode = "Manual";'#10#9'StartName = "LocalSystem";'#10#9'State = "Sto' +
        'pped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_Compute' +
        'rSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint' +
        ' = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "McAfee Service Controller";'#10#9'CheckPoint = 0;'#10 +
        #9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;' +
        #10#9'Description = "Manages McAfee Services";'#10#9'DesktopInteract = FA' +
        'LSE;'#10#9'DisplayName = "McAfee Service Controller";'#10#9'ErrorControl =' +
        ' "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "mfemms";'#10#9'PathName = "\"C:\\P' +
        'rogram Files\\Common Files\\McAfee\\SystemCore\\mfemms.exe\"";'#10#9 +
        'ProcessId = 5308;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "' +
        'Share Process";'#10#9'Started = TRUE;'#10#9'StartMode = "Auto";'#10#9'StartName' +
        ' = "LocalSystem";'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9'SystemCre' +
        'ationClassName = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EX' +
        'GESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "McAfee Validation Trust Protection Service";'#10 +
        #9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedA' +
        'utoStart = FALSE;'#10#9'Description = "Provides validation trust prot' +
        'ection services";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "McAf' +
        'ee Validation Trust Protection Service";'#10#9'ErrorControl = "Normal' +
        '";'#10#9'ExitCode = 0;'#10#9'Name = "mfevtp";'#10#9'PathName = "\"C:\\Program F' +
        'iles\\Common Files\\McAfee\\SystemCore\\mfemms.exe\"";'#10#9'ProcessI' +
        'd = 5308;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Share Pr' +
        'ocess";'#10#9'Started = TRUE;'#10#9'StartMode = "Auto";'#10#9'StartName = "Loca' +
        'lSystem";'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9'SystemCreationCla' +
        'ssName = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE"' +
        ';'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Windows Mixed Reality OpenXR Service";'#10#9'Chec' +
        'kPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoSt' +
        'art = FALSE;'#10#9'Description = "Enables Mixed Reality OpenXR runtim' +
        'e functionality";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Wind' +
        'ows Mixed Reality OpenXR Service";'#10#9'ErrorControl = "Normal";'#10#9'Ex' +
        'itCode = 1077;'#10#9'Name = "MixedRealityOpenXRSvc";'#10#9'PathName = "C:\' +
        '\Windows\\system32\\svchost.exe -k LocalSystemNetworkRestricted ' +
        '-p";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType ' +
        '= "Share Process";'#10#9'Started = FALSE;'#10#9'StartMode = "Manual";'#10#9'Sta' +
        'rtName = "LocalSystem";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'Sys' +
        'temCreationClassName = "Win32_ComputerSystem";'#10#9'SystemName = "EU' +
        'ES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Mozilla Maintenance Service";'#10#9'CheckPoint = ' +
        '0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart = FAL' +
        'SE;'#10#9'Description = "El servicio de mantenimiento de Mozilla se a' +
        'segura de que tiene la '#250'ltima y m'#225's segura versi'#243'n de Mozilla Fi' +
        'refox en su equipo. Mantener Firefox actualizado es muy importan' +
        'te para su seguridad online, y Mozilla le recomienda que manteng' +
        'a este servicio activado.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayNa' +
        'me = "Mozilla Maintenance Service";'#10#9'ErrorControl = "Normal";'#10#9'E' +
        'xitCode = 1077;'#10#9'Name = "MozillaMaintenance";'#10#9'PathName = "\"C:\' +
        '\Program Files (x86)\\Mozilla Maintenance Service\\maintenancese' +
        'rvice.exe\"";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'Ser' +
        'viceType = "Own Process";'#10#9'Started = FALSE;'#10#9'StartMode = "Manual' +
        '";'#10#9'StartName = "LocalSystem";'#10#9'State = "Stopped";'#10#9'Status = "OK' +
        '";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'SystemNam' +
        'e = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Firewall de Windows Defender";'#10#9'CheckPoint =' +
        ' 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart = FA' +
        'LSE;'#10#9'Description = "Firewall de Windows Defender ayuda a proteg' +
        'er su equipo al impedir que los usuarios no autorizados obtengan' +
        ' acceso a su equipo a trav'#233's de Internet o en una red.";'#10#9'Deskto' +
        'pInteract = FALSE;'#10#9'DisplayName = "Firewall de Windows Defender"' +
        ';'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "mpssvc";'#10#9'Pa' +
        'thName = "C:\\Windows\\system32\\svchost.exe -k LocalServiceNoNe' +
        'tworkFirewall -p";'#10#9'ProcessId = 2176;'#10#9'ServiceSpecificExitCode =' +
        ' 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = TRUE;'#10#9'StartMode ' +
        '= "Auto";'#10#9'StartName = "NT Authority\\LocalService";'#10#9'State = "R' +
        'unning";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_Compu' +
        'terSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHi' +
        'nt = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Coordinador de transacciones distribuidas";'#10#9 +
        'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAu' +
        'toStart = TRUE;'#10#9'Description = "Coordina las transacciones que a' +
        'barcan varios administradores de recursos, como bases de datos, ' +
        'colas de mensajes y sistemas de archivos. Si se detiene este ser' +
        'vicio, estas transacciones no podr'#225'n realizarse. Si se deshabili' +
        'ta el servicio, no se podr'#225' iniciar ning'#250'n servicio que dependa ' +
        'espec'#237'ficamente de '#233'l.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName ' +
        '= "Coordinador de transacciones distribuidas";'#10#9'ErrorControl = "' +
        'Normal";'#10#9'ExitCode = 0;'#10#9'Name = "MSDTC";'#10#9'PathName = "C:\\Window' +
        's\\System32\\msdtc.exe";'#10#9'ProcessId = 18220;'#10#9'ServiceSpecificExi' +
        'tCode = 0;'#10#9'ServiceType = "Own Process";'#10#9'Started = TRUE;'#10#9'Start' +
        'Mode = "Auto";'#10#9'StartName = "NT AUTHORITY\\NetworkService";'#10#9'Sta' +
        'te = "Running";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win3' +
        '2_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10 +
        #9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio del iniciador iSCSI de Microsoft";'#10 +
        #9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedA' +
        'utoStart = FALSE;'#10#9'Description = "Administra las sesiones SCSI d' +
        'e Internet (iSCSI) desde este equipo hacia los dispositivos de d' +
        'estino iSCSI remotos. Si se detiene este servicio, el equipo no ' +
        'podr'#225' iniciar sesi'#243'n en los destinos iSCSI ni tener acceso a ell' +
        'os. Si se deshabilita, todos los servicios que dependan expl'#237'cit' +
        'amente de '#233'l no se podr'#225'n iniciar.";'#10#9'DesktopInteract = FALSE;'#10#9 +
        'DisplayName = "Servicio del iniciador iSCSI de Microsoft";'#10#9'Erro' +
        'rControl = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "MSiSCSI";'#10#9'PathN' +
        'ame = "C:\\Windows\\system32\\svchost.exe -k netsvcs -p";'#10#9'Proce' +
        'ssId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Share Pr' +
        'ocess";'#10#9'Started = FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName = "L' +
        'ocalSystem";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreation' +
        'ClassName = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTE' +
        'VE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Windows Installer";'#10#9'CheckPoint = 0;'#10#9'Creati' +
        'onClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Descr' +
        'iption = "Agrega, modifica y quita aplicaciones proporcionadas c' +
        'omo paquetes de Windows Installer (*.msi, *.msp, *.appx). Si se ' +
        'deshabilita este servicio, no se podr'#225' iniciar ninguno de los se' +
        'rvicios que dependan expl'#237'citamente de '#233'l.";'#10#9'DesktopInteract = ' +
        'FALSE;'#10#9'DisplayName = "Windows Installer";'#10#9'ErrorControl = "Norm' +
        'al";'#10#9'ExitCode = 1077;'#10#9'Name = "msiserver";'#10#9'PathName = "C:\\Win' +
        'dows\\system32\\msiexec.exe /V";'#10#9'ProcessId = 0;'#10#9'ServiceSpecifi' +
        'cExitCode = 0;'#10#9'ServiceType = "Own Process";'#10#9'Started = FALSE;'#10#9 +
        'StartMode = "Manual";'#10#9'StartName = "LocalSystem";'#10#9'State = "Stop' +
        'ped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_Computer' +
        'System";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint ' +
        '= 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = TRUE;'#10#9'AcceptStop = ' +
        'TRUE;'#10#9'Caption = "SQL Server Analysis Services (GESTEVEZ1)";'#10#9'Ch' +
        'eckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAuto' +
        'Start = FALSE;'#10#9'Description = "Proporciona procesamiento anal'#237'ti' +
        'co en l'#237'nea (OLAP) y funcionalidad de miner'#237'a de datos para apli' +
        'caciones de Business Intelligence.";'#10#9'DesktopInteract = FALSE;'#10#9 +
        'DisplayName = "SQL Server Analysis Services (GESTEVEZ1)";'#10#9'Error' +
        'Control = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "MSOLAP$GESTEVEZ1";'#10#9 +
        'PathName = "\"C:\\Program Files\\Microsoft SQL Server\\MSAS12.GE' +
        'STEVEZ1\\OLAP\\bin\\msmdsrv.exe\" -s \"C:\\Program Files\\Micros' +
        'oft SQL Server\\MSAS12.GESTEVEZ1\\OLAP\\Config\"";'#10#9'ProcessId = ' +
        '8404;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Own Process"' +
        ';'#10#9'Started = TRUE;'#10#9'StartMode = "Auto";'#10#9'StartName = "NT Service' +
        '\\MSOLAP$GESTEVEZ1";'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9'System' +
        'CreationClassName = "Win32_ComputerSystem";'#10#9'SystemName = "EUES0' +
        '2EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = TRUE;'#10#9'AcceptStop = ' +
        'TRUE;'#10#9'Caption = "SQL Server (GESTEVEZ1)";'#10#9'CheckPoint = 0;'#10#9'Cre' +
        'ationClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'De' +
        'scription = "Proporciona almacenamiento, procesamiento y acceso ' +
        'controlado de datos, y procesamiento de transacciones r'#225'pido.";'#10 +
        #9'DesktopInteract = FALSE;'#10#9'DisplayName = "SQL Server (GESTEVEZ1)' +
        '";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "MSSQL$GESTE' +
        'VEZ1";'#10#9'PathName = "\"C:\\Program Files\\Microsoft SQL Server\\M' +
        'SSQL12.GESTEVEZ1\\MSSQL\\Binn\\sqlservr.exe\" -sGESTEVEZ1";'#10#9'Pro' +
        'cessId = 8340;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Own' +
        ' Process";'#10#9'Started = TRUE;'#10#9'StartMode = "Auto";'#10#9'StartName = "N' +
        'T Service\\MSSQL$GESTEVEZ1";'#10#9'State = "Running";'#10#9'Status = "OK";' +
        #10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'SystemName ' +
        '= "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Nahimic service";'#10#9'CheckPoint = 0;'#10#9'CreationC' +
        'lassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Descript' +
        'ion = "Nahimic service";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName ' +
        '= "Nahimic service";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'N' +
        'ame = "NahimicService";'#10#9'PathName = "\"C:\\Windows\\system32\\Na' +
        'himicService.exe\"";'#10#9'ProcessId = 5316;'#10#9'ServiceSpecificExitCode' +
        ' = 0;'#10#9'ServiceType = "Own Process";'#10#9'Started = TRUE;'#10#9'StartMode ' +
        '= "Auto";'#10#9'StartName = "LocalSystem";'#10#9'State = "Running";'#10#9'Statu' +
        's = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'Sy' +
        'stemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Autenticaci'#243'n natural";'#10#9'CheckPoint = 0;'#10#9'Cr' +
        'eationClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'D' +
        'escription = "Servicio de agregador se'#241'al, que se eval'#250'a en func' +
        'i'#243'n de tiempo, red, ubicaci'#243'n geogr'#225'fica, bluetooth y cdf factor' +
        'es de se'#241'ales. Caracter'#237'sticas admitidas son directivas desbloqu' +
        'ear el dispositivo, bloqueo din'#225'mico y Dynamo MDM";'#10#9'DesktopInte' +
        'ract = FALSE;'#10#9'DisplayName = "Autenticaci'#243'n natural";'#10#9'ErrorCont' +
        'rol = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "NaturalAuthentication' +
        '";'#10#9'PathName = "C:\\Windows\\system32\\svchost.exe -k netsvcs -p' +
        '";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = ' +
        '"Share Process";'#10#9'Started = FALSE;'#10#9'StartMode = "Manual";'#10#9'Start' +
        'Name = "LocalSystem";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'Syste' +
        'mCreationClassName = "Win32_ComputerSystem";'#10#9'SystemName = "EUES' +
        '02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Asistente para la conectividad de red";'#10#9'Che' +
        'ckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoS' +
        'tart = FALSE;'#10#9'Description = "Proporciona notificaci'#243'n de estado' +
        ' de DirectAccess para componentes de UI";'#10#9'DesktopInteract = FAL' +
        'SE;'#10#9'DisplayName = "Asistente para la conectividad de red";'#10#9'Err' +
        'orControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "NcaSvc";'#10#9'PathName' +
        ' = "C:\\Windows\\System32\\svchost.exe -k NetSvcs -p";'#10#9'ProcessI' +
        'd = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Share Proce' +
        'ss";'#10#9'Started = FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName = "Loca' +
        'lSystem";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationCla' +
        'ssName = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE"' +
        ';'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Agente de conexi'#243'n de red";'#10#9'CheckPoint = 0;'#10 +
        #9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;' +
        #10#9'Description = "Conexiones de agentes que permiten que las apli' +
        'caciones de la Tienda Windows reciban notificaciones de Internet' +
        '.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Agente de conexi'#243'n' +
        ' de red";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "NcbS' +
        'ervice";'#10#9'PathName = "C:\\Windows\\System32\\svchost.exe -k Loca' +
        'lSystemNetworkRestricted -p";'#10#9'ProcessId = 908;'#10#9'ServiceSpecific' +
        'ExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = TRUE;'#10#9 +
        'StartMode = "Manual";'#10#9'StartName = "LocalSystem";'#10#9'State = "Runn' +
        'ing";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_Computer' +
        'System";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint ' +
        '= 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Configuraci'#243'n autom'#225'tica de dispositivos con' +
        'ectados a la red";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_' +
        'Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Description = "El servicio' +
        ' Configuraci'#243'n autom'#225'tica de dispositivos conectados a la red su' +
        'pervisa e instala dispositivos calificados que se conectan a red' +
        'es calificadas. Si se detiene o se deshabilita este servicio. Wi' +
        'ndows no podr'#225' detectar e instalar autom'#225'ticamente los dispositi' +
        'vos conectados a la red calificados. Los usuarios pueden agregar' +
        ' manualmente los dispositivos conectados a la red a un equipo me' +
        'diante la interfaz de usuario.";'#10#9'DesktopInteract = FALSE;'#10#9'Disp' +
        'layName = "Configuraci'#243'n autom'#225'tica de dispositivos conectados a' +
        ' la red";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "N' +
        'cdAutoSetup";'#10#9'PathName = "C:\\Windows\\System32\\svchost.exe -k' +
        ' LocalServiceNoNetwork -p";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExit' +
        'Code = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = FALSE;'#10#9'Sta' +
        'rtMode = "Manual";'#10#9'StartName = "NT AUTHORITY\\LocalService";'#10#9'S' +
        'tate = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Wi' +
        'n32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0' +
        ';'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = TRUE;'#10#9'AcceptStop = ' +
        'TRUE;'#10#9'Caption = "Net Logon";'#10#9'CheckPoint = 0;'#10#9'CreationClassNam' +
        'e = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Description = "' +
        'Mantiene un canal seguro entre el equipo y el controlador de dom' +
        'inio para autenticar usuarios y servicios. Si se detiene este se' +
        'rvicio, puede que el equipo no autentique usuarios y servicios y' +
        ' que el controlador de dominio no pueda registrar los registros ' +
        'DNS. Si se deshabilita este servicio, los servicios que depende ' +
        'de '#233'l expl'#237'citamente no se podr'#225'n iniciar.";'#10#9'DesktopInteract = ' +
        'FALSE;'#10#9'DisplayName = "Net Logon";'#10#9'ErrorControl = "Normal";'#10#9'Ex' +
        'itCode = 0;'#10#9'Name = "Netlogon";'#10#9'PathName = "C:\\Windows\\system' +
        '32\\lsass.exe";'#10#9'ProcessId = 848;'#10#9'ServiceSpecificExitCode = 0;'#10 +
        #9'ServiceType = "Share Process";'#10#9'Started = TRUE;'#10#9'StartMode = "A' +
        'uto";'#10#9'StartName = "LocalSystem";'#10#9'State = "Running";'#10#9'Status = ' +
        '"OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'System' +
        'Name = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Conexiones de red";'#10#9'CheckPoint = 0;'#10#9'Creati' +
        'onClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Descr' +
        'iption = "Administra objetos en la carpeta Conexiones de red y a' +
        'cceso telef'#243'nico, donde se pueden ver conexiones de red de '#225'rea ' +
        'local y remotas.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Con' +
        'exiones de red";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 1077;'#10#9'Na' +
        'me = "Netman";'#10#9'PathName = "C:\\Windows\\System32\\svchost.exe -' +
        'k LocalSystemNetworkRestricted -p";'#10#9'ProcessId = 0;'#10#9'ServiceSpec' +
        'ificExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = FAL' +
        'SE;'#10#9'StartMode = "Manual";'#10#9'StartName = "LocalSystem";'#10#9'State = ' +
        '"Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_Com' +
        'puterSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'Wait' +
        'Hint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Servicio de lista de redes";'#10#9'CheckPoint = 0;' +
        #10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE' +
        ';'#10#9'Description = "Identifica las redes a las que se conect'#243' el e' +
        'quipo, recopila y almacena las propiedades de estas redes y noti' +
        'fica a las aplicaciones cuando estas propiedades cambian.";'#10#9'Des' +
        'ktopInteract = FALSE;'#10#9'DisplayName = "Servicio de lista de redes' +
        '";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "netprofm";'#10 +
        #9'PathName = "C:\\Windows\\System32\\svchost.exe -k LocalService ' +
        '-p";'#10#9'ProcessId = 2812;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceTy' +
        'pe = "Share Process";'#10#9'Started = TRUE;'#10#9'StartMode = "Manual";'#10#9'S' +
        'tartName = "NT AUTHORITY\\LocalService";'#10#9'State = "Running";'#10#9'St' +
        'atus = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10 +
        #9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "NetSetupSvc";'#10#9'CheckPoint = 0;'#10#9'CreationClass' +
        'Name = "Win32_Service";'#10#9'DisplayName = "NetSetupSvc";'#10#9'ErrorCont' +
        'rol = "Unknown";'#10#9'ExitCode = 0;'#10#9'Name = "NetSetupSvc";'#10#9'ProcessI' +
        'd = 5016;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Unknown"' +
        ';'#10#9'Started = TRUE;'#10#9'StartMode = "Unknown";'#10#9'State = "Running";'#10#9 +
        'Status = "UNKNOWN";'#10#9'SystemCreationClassName = "Win32_ComputerSy' +
        'stem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio de uso compartido de puertos Net.Tc' +
        'p";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'Dela' +
        'yedAutoStart = FALSE;'#10#9'Description = "Ofrece la posibilidad de c' +
        'ompartir puertos TCP a trav'#233's del protocolo net.tcp.";'#10#9'DesktopI' +
        'nteract = FALSE;'#10#9'DisplayName = "Servicio de uso compartido de p' +
        'uertos Net.Tcp";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 1077;'#10#9'Na' +
        'me = "NetTcpPortSharing";'#10#9'PathName = "C:\\Windows\\Microsoft.NE' +
        'T\\Framework64\\v4.0.30319\\SMSvcHost.exe";'#10#9'ProcessId = 0;'#10#9'Ser' +
        'viceSpecificExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Start' +
        'ed = FALSE;'#10#9'StartMode = "Disabled";'#10#9'StartName = "NT AUTHORITY\' +
        '\LocalService";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreat' +
        'ionClassName = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGE' +
        'STEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Contenedor de Microsoft Passport";'#10#9'CheckPoi' +
        'nt = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart ' +
        '= FALSE;'#10#9'Description = "Administra claves de identidad de usuar' +
        'io locales para autenticar al usuario en proveedores de identida' +
        'd, as'#237' como tarjetas inteligentes virtuales del TPM. Si se desha' +
        'bilita este servicio, no se podr'#225' acceder a las claves de identi' +
        'dad de usuario locales y las tarjetas inteligentes virtuales del' +
        ' TPM. Te recomendamos que no configures este servicio.";'#10#9'Deskto' +
        'pInteract = FALSE;'#10#9'DisplayName = "Contenedor de Microsoft Passp' +
        'ort";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "NgcCtnrS' +
        'vc";'#10#9'PathName = "C:\\Windows\\system32\\svchost.exe -k LocalSer' +
        'viceNetworkRestricted -p";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitC' +
        'ode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = FALSE;'#10#9'Star' +
        'tMode = "Manual";'#10#9'StartName = "NT AUTHORITY\\LocalService";'#10#9'St' +
        'ate = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win' +
        '32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;' +
        #10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Microsoft Passport";'#10#9'CheckPoint = 0;'#10#9'Creat' +
        'ionClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Desc' +
        'ription = "Proporciona aislamiento de procesos de claves criptog' +
        'r'#225'ficas usadas para autenticarse en los proveedores de identidad' +
        'es asociados de un usuario. Si se deshabilita este servicio, tod' +
        'os los usos y administraci'#243'n de estas claves dejar'#225'n de estar di' +
        'sponibles, lo cual incluye el inicio de sesi'#243'n de m'#225'quina y el i' +
        'nicio de sesi'#243'n '#250'nico para aplicaciones y sitios web. Este servi' +
        'cio se inicia y detiene autom'#225'ticamente. Es recomendable no reco' +
        'nfigurar el servicio.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName =' +
        ' "Microsoft Passport";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10 +
        #9'Name = "NgcSvc";'#10#9'PathName = "C:\\Windows\\system32\\svchost.ex' +
        'e -k LocalSystemNetworkRestricted -p";'#10#9'ProcessId = 0;'#10#9'ServiceS' +
        'pecificExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = ' +
        'FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName = "LocalSystem";'#10#9'State' +
        ' = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_' +
        'ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'W' +
        'aitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Reconoc. ubicaci'#243'n de red";'#10#9'CheckPoint = 0;'#10 +
        #9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;' +
        #10#9'Description = "Recopila y almacena informaci'#243'n de configuraci'#243 +
        'n de la red y notifica a los programas cuando esta informaci'#243'n s' +
        'e modifica. Si se detiene este servicio, es posible que la infor' +
        'maci'#243'n de configuraci'#243'n no est'#233' disponible. Si se deshabilita es' +
        'te servicio, no se iniciar'#225' ning'#250'n servicio que dependa de '#233'l de' +
        ' forma expl'#237'cita.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Re' +
        'conoc. ubicaci'#243'n de red";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = ' +
        '0;'#10#9'Name = "NlaSvc";'#10#9'PathName = "C:\\Windows\\System32\\svchost' +
        '.exe -k NetworkService -p";'#10#9'ProcessId = 2548;'#10#9'ServiceSpecificE' +
        'xitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = TRUE;'#10#9'S' +
        'tartMode = "Auto";'#10#9'StartName = "NT AUTHORITY\\NetworkService";'#10 +
        #9'State = "Running";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "' +
        'Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId =' +
        ' 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Servicio Interfaz de almacenamiento en red";'#10 +
        #9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedA' +
        'utoStart = FALSE;'#10#9'Description = "Este servicio entrega notifica' +
        'ciones de red (por ejemplo, interfaces agregadas/eliminadas, etc' +
        '.) a los clientes en modo usuario. Si se detiene este servicio, ' +
        'se perder'#225' la conectividad de la red. Si se deshabilita este ser' +
        'vicio, no se iniciar'#225' ning'#250'n servicio que dependa de '#233'l de forma' +
        ' expl'#237'cita.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Servicio' +
        ' Interfaz de almacenamiento en red";'#10#9'ErrorControl = "Normal";'#10#9 +
        'ExitCode = 0;'#10#9'Name = "nsi";'#10#9'PathName = "C:\\Windows\\system32\' +
        '\svchost.exe -k LocalService -p";'#10#9'ProcessId = 1704;'#10#9'ServiceSpe' +
        'cificExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = TR' +
        'UE;'#10#9'StartMode = "Auto";'#10#9'StartName = "NT Authority\\LocalServic' +
        'e";'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9'SystemCreationClassName' +
        ' = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'Tag' +
        'Id = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "NVIDIA Display Container LS";'#10#9'CheckPoint = 0' +
        ';'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALS' +
        'E;'#10#9'Description = "Container service for NVIDIA root features";'#10 +
        #9'DesktopInteract = FALSE;'#10#9'DisplayName = "NVIDIA Display Contain' +
        'er LS";'#10#9'ErrorControl = "Ignore";'#10#9'ExitCode = 0;'#10#9'Name = "NVDisp' +
        'lay.ContainerLocalSystem";'#10#9'PathName = "C:\\Windows\\System32\\D' +
        'riverStore\\FileRepository\\nvam.inf_amd64_5fd47f468d410be6\\Dis' +
        'play.NvContainer\\NVDisplay.Container.exe -s NVDisplay.Container' +
        'LocalSystem -f C:\\ProgramData\\NVDisplay.ContainerLocalSystem.l' +
        'og -l 3 -d C:\\Windows\\System32\\DriverStore\\FileRepository\\n' +
        'vam.inf_amd64_5fd47f468d410be6\\Display.NvContainer\\plugins\\Lo' +
        'calSystem -r -p 30000 -cfg NVDisplay.ContainerLocalSystem\\Local' +
        'System";'#10#9'ProcessId = 2708;'#10#9'ServiceSpecificExitCode = 0;'#10#9'Servi' +
        'ceType = "Own Process";'#10#9'Started = TRUE;'#10#9'StartMode = "Auto";'#10#9'S' +
        'tartName = "LocalSystem";'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9'S' +
        'ystemCreationClassName = "Win32_ComputerSystem";'#10#9'SystemName = "' +
        'EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Office  Source Engine";'#10#9'CheckPoint = 0;'#10#9'Cr' +
        'eationClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'D' +
        'escription = "Saves installation files used for updates and repa' +
        'irs and is required for the downloading of Setup updates and Wat' +
        'son error reports.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "O' +
        'ffice  Source Engine";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 107' +
        '7;'#10#9'Name = "ose";'#10#9'PathName = "\"c:\\Program Files (x86)\\Common' +
        ' Files\\Microsoft Shared\\Source Engine\\OSE.EXE\"";'#10#9'ProcessId ' +
        '= 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Own Process";' +
        #10#9'Started = FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName = "LocalSys' +
        'tem";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassNa' +
        'me = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'T' +
        'agId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Administrador de identidad de redes de mismo' +
        ' nivel";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10 +
        #9'DelayedAutoStart = FALSE;'#10#9'Description = "Proporciona servicios' +
        ' de identidad para los servicios de Protocolo de resoluci'#243'n de n' +
        'ombres de mismo nivel (PNRP) y Agrupaci'#243'n de punto a punto. Si s' +
        'e deshabilita, es posible que los servicios de Protocolo de reso' +
        'luci'#243'n de nombres de mismo nivel (PNRP) y Agrupaci'#243'n de punto a ' +
        'punto no funcionen y que algunas aplicaciones, como Grupo Hogar ' +
        'y Asistencia remota, no funcionen correctamente.";'#10#9'DesktopInter' +
        'act = FALSE;'#10#9'DisplayName = "Administrador de identidad de redes' +
        ' de mismo nivel";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 1077;'#10#9'N' +
        'ame = "p2pimsvc";'#10#9'PathName = "C:\\Windows\\System32\\svchost.ex' +
        'e -k LocalServicePeerNet";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitC' +
        'ode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = FALSE;'#10#9'Star' +
        'tMode = "Manual";'#10#9'StartName = "NT AUTHORITY\\LocalService";'#10#9'St' +
        'ate = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win' +
        '32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;' +
        #10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Agrupaci'#243'n de red del mismo nivel";'#10#9'CheckPo' +
        'int = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart' +
        ' = FALSE;'#10#9'Description = "Permite la comunicaci'#243'n de varios part' +
        'icipantes mediante Agrupaci'#243'n de punto a punto. Si se deshabilit' +
        'a, es posible que algunas aplicaciones, como Grupo Hogar, no fun' +
        'cionen.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Agrupaci'#243'n d' +
        'e red del mismo nivel";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 10' +
        '77;'#10#9'Name = "p2psvc";'#10#9'PathName = "C:\\Windows\\System32\\svchos' +
        't.exe -k LocalServicePeerNet";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificE' +
        'xitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = FALSE;'#10#9 +
        'StartMode = "Manual";'#10#9'StartName = "NT AUTHORITY\\LocalService";' +
        #10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = ' +
        '"Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId ' +
        '= 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Servicio Asistente para la compatibilidad de ' +
        'programas";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service' +
        '";'#10#9'DelayedAutoStart = FALSE;'#10#9'Description = "Este servicio prop' +
        'orciona soporte al Asistente para la compatibilidad de programas' +
        ' (PCA). PCA supervisa los programas que instala y ejecuta el usu' +
        'ario, y detecta problemas de compatibilidad conocidos. Si se det' +
        'iene este servicio, PCA no funcionar'#225' correctamente.";'#10#9'DesktopI' +
        'nteract = FALSE;'#10#9'DisplayName = "Servicio Asistente para la comp' +
        'atibilidad de programas";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = ' +
        '0;'#10#9'Name = "PcaSvc";'#10#9'PathName = "C:\\Windows\\system32\\svchost' +
        '.exe -k LocalSystemNetworkRestricted -p";'#10#9'ProcessId = 14684;'#10#9'S' +
        'erviceSpecificExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Sta' +
        'rted = TRUE;'#10#9'StartMode = "Manual";'#10#9'StartName = "LocalSystem";'#10 +
        #9'State = "Running";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "' +
        'Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId =' +
        ' 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "BranchCache";'#10#9'CheckPoint = 0;'#10#9'CreationClas' +
        'sName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Description' +
        ' = "Este servicio almacena en cach'#233' el contenido de la red de lo' +
        's sistemas del mismo nivel de la subred local.";'#10#9'DesktopInterac' +
        't = FALSE;'#10#9'DisplayName = "BranchCache";'#10#9'ErrorControl = "Normal' +
        '";'#10#9'ExitCode = 1077;'#10#9'Name = "PeerDistSvc";'#10#9'PathName = "C:\\Win' +
        'dows\\System32\\svchost.exe -k PeerDist";'#10#9'ProcessId = 0;'#10#9'Servi' +
        'ceSpecificExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started' +
        ' = FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName = "NT AUTHORITY\\Net' +
        'workService";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreatio' +
        'nClassName = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGEST' +
        'EVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio de simulaci'#243'n de percepci'#243'n de Wind' +
        'ows";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'De' +
        'layedAutoStart = FALSE;'#10#9'Description = "Permite la simulaci'#243'n de' +
        ' percepci'#243'n espacial, la administraci'#243'n de c'#225'maras virtuales y l' +
        'a simulaci'#243'n de entrada espacial.";'#10#9'DesktopInteract = FALSE;'#10#9'D' +
        'isplayName = "Servicio de simulaci'#243'n de percepci'#243'n de Windows";'#10 +
        #9'ErrorControl = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "perceptions' +
        'imulation";'#10#9'PathName = "C:\\Windows\\system32\\PerceptionSimula' +
        'tion\\PerceptionSimulationService.exe";'#10#9'ProcessId = 0;'#10#9'Service' +
        'SpecificExitCode = 0;'#10#9'ServiceType = "Own Process";'#10#9'Started = F' +
        'ALSE;'#10#9'StartMode = "Manual";'#10#9'StartName = "LocalSystem";'#10#9'State ' +
        '= "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_C' +
        'omputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'Wa' +
        'itHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "DLL de host del Contador de rendimiento";'#10#9'C' +
        'heckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAut' +
        'oStart = FALSE;'#10#9'Description = "Habilita a los usuarios remotos ' +
        'y los procesos de 64-bits consultar con los contadores de rendim' +
        'iento proporcionados por las DLLs de 32-bits. Si este servicio s' +
        'e detuviera, solo los usuarios locales y los procesos de 32-bits' +
        ' podr'#225'n consultar con los contadores de rendimiento proporcionad' +
        'os por las DLLs de 32-bits.";'#10#9'DesktopInteract = FALSE;'#10#9'Display' +
        'Name = "DLL de host del Contador de rendimiento";'#10#9'ErrorControl ' +
        '= "Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "PerfHost";'#10#9'PathName = "C' +
        ':\\Windows\\SysWow64\\perfhost.exe";'#10#9'ProcessId = 0;'#10#9'ServiceSpe' +
        'cificExitCode = 0;'#10#9'ServiceType = "Own Process";'#10#9'Started = FALS' +
        'E;'#10#9'StartMode = "Manual";'#10#9'StartName = "NT AUTHORITY\\LocalServi' +
        'ce";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassNam' +
        'e = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'Ta' +
        'gId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Servicio telef'#243'nico";'#10#9'CheckPoint = 0;'#10#9'Creat' +
        'ionClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Desc' +
        'ription = "Administra el estado de telefon'#237'a en el dispositivo";' +
        #10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Servicio telef'#243'nico";' +
        #10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "PhoneSvc";'#10#9'P' +
        'athName = "C:\\Windows\\system32\\svchost.exe -k LocalService -p' +
        '";'#10#9'ProcessId = 2480;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType' +
        ' = "Share Process";'#10#9'Started = TRUE;'#10#9'StartMode = "Manual";'#10#9'Sta' +
        'rtName = "NT Authority\\LocalService";'#10#9'State = "Running";'#10#9'Stat' +
        'us = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'S' +
        'ystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Intel'#174' PROSet/Wireless Service";'#10#9'CheckPoint ' +
        '= 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart = F' +
        'ALSE;'#10#9'Description = "This service is part of the Intel'#174' PROSet/' +
        'Wireless WiFi Software";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName ' +
        '= "Intel'#174' PROSet/Wireless Service";'#10#9'ErrorControl = "Normal";'#10#9'E' +
        'xitCode = 0;'#10#9'Name = "PIEServiceNew";'#10#9'PathName = "C:\\Windows\\' +
        'System32\\DriverStore\\FileRepository\\piecomponent.inf_amd64_ca' +
        'abc087e4b97a65\\Intel_PIE_Service.exe";'#10#9'ProcessId = 5756;'#10#9'Serv' +
        'iceSpecificExitCode = 0;'#10#9'ServiceType = "Own Process";'#10#9'Started ' +
        '= TRUE;'#10#9'StartMode = "Manual";'#10#9'StartName = "LocalSystem";'#10#9'Stat' +
        'e = "Running";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32' +
        '_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9 +
        'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Registros y alertas de rendimiento";'#10#9'CheckP' +
        'oint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStar' +
        't = FALSE;'#10#9'Description = "Registros y alertas de rendimiento re' +
        'copila informaci'#243'n de rendimiento de equipos locales o remotos s' +
        'eg'#250'n par'#225'metros programados configurados previamente y los escri' +
        'be en un registro o activa una alerta. Si se detiene este servic' +
        'io, no se recopilar'#225' informaci'#243'n de rendimiento. Si se deshabili' +
        'ta, no se iniciar'#225'n los servicios que dependan de '#233'l expl'#237'citame' +
        'nte.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Registros y ale' +
        'rtas de rendimiento";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 1077' +
        ';'#10#9'Name = "pla";'#10#9'PathName = "C:\\Windows\\System32\\svchost.exe' +
        ' -k LocalServiceNoNetwork -p";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificE' +
        'xitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = FALSE;'#10#9 +
        'StartMode = "Manual";'#10#9'StartName = "NT AUTHORITY\\LocalService";' +
        #10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = ' +
        '"Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId ' +
        '= 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Plug and Play";'#10#9'CheckPoint = 0;'#10#9'CreationCla' +
        'ssName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Descriptio' +
        'n = "Habilita un equipo para que reconozca y adapte los cambios ' +
        'de hardware con el menor esfuerzo por parte del usuario. Si se d' +
        'etiene o deshabilita este servicio, el sistema se volver'#225' inesta' +
        'ble.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Plug and Play";' +
        #10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "PlugPlay";'#10#9'P' +
        'athName = "C:\\Windows\\system32\\svchost.exe -k DcomLaunch -p";' +
        #10#9'ProcessId = 1052;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType =' +
        ' "Share Process";'#10#9'Started = TRUE;'#10#9'StartMode = "Manual";'#10#9'Start' +
        'Name = "LocalSystem";'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9'Syste' +
        'mCreationClassName = "Win32_ComputerSystem";'#10#9'SystemName = "EUES' +
        '02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio de publicaci'#243'n de nombres de equipo' +
        ' PNRP";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9 +
        'DelayedAutoStart = FALSE;'#10#9'Description = "Este servicio publica ' +
        'un nombre de equipo con el Protocolo de resoluci'#243'n de nombres de' +
        ' mismo nivel. La configuraci'#243'n se administra con el contexto net' +
        'sh \"p2p pnrp peer\". ";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName ' +
        '= "Servicio de publicaci'#243'n de nombres de equipo PNRP";'#10#9'ErrorCon' +
        'trol = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "PNRPAutoReg";'#10#9'PathN' +
        'ame = "C:\\Windows\\System32\\svchost.exe -k LocalServicePeerNet' +
        '";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = ' +
        '"Share Process";'#10#9'Started = FALSE;'#10#9'StartMode = "Manual";'#10#9'Start' +
        'Name = "NT AUTHORITY\\LocalService";'#10#9'State = "Stopped";'#10#9'Status' +
        ' = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'Sys' +
        'temName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Protocolo de resoluci'#243'n de nombres de mismo ' +
        'nivel";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9 +
        'DelayedAutoStart = FALSE;'#10#9'Description = "Habilita la resoluci'#243'n' +
        ' de nombres del mismo nivel sin servidor a trav'#233's de Internet me' +
        'diante el Protocolo de resoluci'#243'n de nombres de mismo nivel (PNR' +
        'P). Si se deshabilita, algunas aplicaciones de colaboraci'#243'n y de' +
        ' punto a punto, como Asistencia remota, pueden dejar de funciona' +
        'r.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Protocolo de reso' +
        'luci'#243'n de nombres de mismo nivel";'#10#9'ErrorControl = "Normal";'#10#9'Ex' +
        'itCode = 1077;'#10#9'Name = "PNRPsvc";'#10#9'PathName = "C:\\Windows\\Syst' +
        'em32\\svchost.exe -k LocalServicePeerNet";'#10#9'ProcessId = 0;'#10#9'Serv' +
        'iceSpecificExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Starte' +
        'd = FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName = "NT AUTHORITY\\Lo' +
        'calService";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreation' +
        'ClassName = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTE' +
        'VE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Agente de directiva IPsec";'#10#9'CheckPoint = 0;'#10 +
        #9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;' +
        #10#9'Description = "El protocolo de seguridad de Internet (IPSec) a' +
        'dmite la autenticaci'#243'n del mismo nivel de la red, la autenticaci' +
        #243'n de or'#237'genes de datos, la integridad de datos, la confidencial' +
        'idad de datos (cifrado) y la protecci'#243'n de reproducci'#243'n. Este se' +
        'rvicio aplica las directivas IPSec creadas a trav'#233's del compleme' +
        'nto Directivas de seguridad IP o la herramienta de la l'#237'nea de c' +
        'omandos \"netsh ipsec\". Si detienes este servicio, es posible q' +
        'ue experimentes problemas de conectividad de red si la directiva' +
        ' requiere que las conexiones usen IPSec. Adem'#225's, la administraci' +
        #243'n remota del Firewall de Windows Defender no est'#225' disponible cu' +
        'ando se detiene este servicio.";'#10#9'DesktopInteract = FALSE;'#10#9'Disp' +
        'layName = "Agente de directiva IPsec";'#10#9'ErrorControl = "Normal";' +
        #10#9'ExitCode = 0;'#10#9'Name = "PolicyAgent";'#10#9'PathName = "C:\\Windows\' +
        '\system32\\svchost.exe -k NetworkServiceNetworkRestricted -p";'#10#9 +
        'ProcessId = 2936;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "' +
        'Share Process";'#10#9'Started = TRUE;'#10#9'StartMode = "Manual";'#10#9'StartNa' +
        'me = "NT Authority\\NetworkService";'#10#9'State = "Running";'#10#9'Status' +
        ' = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'Sys' +
        'temName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Energ'#237'a";'#10#9'CheckPoint = 0;'#10#9'CreationClassNam' +
        'e = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Description = "' +
        'Administra la directiva de energ'#237'a y la entrega de notificacione' +
        's de dicha directiva.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName =' +
        ' "Energ'#237'a";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "Po' +
        'wer";'#10#9'PathName = "C:\\Windows\\system32\\svchost.exe -k DcomLau' +
        'nch -p";'#10#9'ProcessId = 1080;'#10#9'ServiceSpecificExitCode = 0;'#10#9'Servi' +
        'ceType = "Share Process";'#10#9'Started = TRUE;'#10#9'StartMode = "Auto";'#10 +
        #9'StartName = "LocalSystem";'#10#9'State = "Running";'#10#9'Status = "OK";'#10 +
        #9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'SystemName =' +
        ' "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Extensiones y notificaciones de impresora";'#10 +
        #9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedA' +
        'utoStart = FALSE;'#10#9'Description = "Este servicio abre cuadros de ' +
        'di'#225'logo personalizados de la impresora y administra notificacion' +
        'es desde un servidor de impresi'#243'n o una impresora remotos. Si lo' +
        ' desactiva, no podr'#225' ver las extensiones ni las notificaciones d' +
        'e impresora.";'#10#9'DesktopInteract = TRUE;'#10#9'DisplayName = "Extensio' +
        'nes y notificaciones de impresora";'#10#9'ErrorControl = "Normal";'#10#9'E' +
        'xitCode = 1077;'#10#9'Name = "PrintNotify";'#10#9'PathName = "C:\\Windows\' +
        '\system32\\svchost.exe -k print";'#10#9'ProcessId = 0;'#10#9'ServiceSpecif' +
        'icExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = FALSE' +
        ';'#10#9'StartMode = "Manual";'#10#9'StartName = "LocalSystem";'#10#9'State = "S' +
        'topped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_Compu' +
        'terSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHi' +
        'nt = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Servicio de perfil de usuario";'#10#9'CheckPoint =' +
        ' 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart = FA' +
        'LSE;'#10#9'Description = "Este servicio es responsable de cargar y de' +
        'scargar los perfiles de usuario. Si se detiene o se deshabilita,' +
        ' los usuarios no podr'#225'n iniciar ni cerrar la sesi'#243'n, las aplicac' +
        'iones pueden experimentar problemas para obtener los datos de lo' +
        's usuarios y no recibir'#225'n notificaciones de eventos de perfil lo' +
        's componentes registrados para recibirlas.";'#10#9'DesktopInteract = ' +
        'FALSE;'#10#9'DisplayName = "Servicio de perfil de usuario";'#10#9'ErrorCon' +
        'trol = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "ProfSvc";'#10#9'PathName = "' +
        'C:\\Windows\\system32\\svchost.exe -k netsvcs -p";'#10#9'ProcessId = ' +
        '2920;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Share Proces' +
        's";'#10#9'Started = TRUE;'#10#9'StartMode = "Auto";'#10#9'StartName = "LocalSys' +
        'tem";'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9'SystemCreationClassNa' +
        'me = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'T' +
        'agId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Pulse Secure Service";'#10#9'CheckPoint = 0;'#10#9'Crea' +
        'tionClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Des' +
        'cription = "Manages Pulse Secure Software";'#10#9'DesktopInteract = F' +
        'ALSE;'#10#9'DisplayName = "Pulse Secure Service";'#10#9'ErrorControl = "No' +
        'rmal";'#10#9'ExitCode = 0;'#10#9'Name = "PulseSecureService";'#10#9'PathName = ' +
        '"\"C:\\Program Files (x86)\\Common Files\\Pulse Secure\\JUNS\\Pu' +
        'lseSecureService.exe\"";'#10#9'ProcessId = 4156;'#10#9'ServiceSpecificExit' +
        'Code = 0;'#10#9'ServiceType = "Own Process";'#10#9'Started = TRUE;'#10#9'StartM' +
        'ode = "Auto";'#10#9'StartName = "LocalSystem";'#10#9'State = "Running";'#10#9'S' +
        'tatus = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";' +
        #10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio PushToInstall de Windows";'#10#9'CheckPo' +
        'int = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart' +
        ' = FALSE;'#10#9'Description = "Proporciona compatibilidad de infraest' +
        'ructura con Microsoft Store. Este servicio se inicia autom'#225'ticam' +
        'ente y, si se desactiva, las instalaciones remotas no funcionar'#225 +
        'n correctamente.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Ser' +
        'vicio PushToInstall de Windows";'#10#9'ErrorControl = "Ignore";'#10#9'Exit' +
        'Code = 0;'#10#9'Name = "PushToInstall";'#10#9'PathName = "C:\\Windows\\Sys' +
        'tem32\\svchost.exe -k netsvcs -p";'#10#9'ProcessId = 0;'#10#9'ServiceSpeci' +
        'ficExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = FALS' +
        'E;'#10#9'StartMode = "Manual";'#10#9'StartName = "LocalSystem";'#10#9'State = "' +
        'Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_Comp' +
        'uterSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitH' +
        'int = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Experiencia de calidad de audio y v'#237'deo de W' +
        'indows (qWave)";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Se' +
        'rvice";'#10#9'DelayedAutoStart = FALSE;'#10#9'Description = "Experiencia d' +
        'e calidad de audio y v'#237'deo de Windows (qWave) es una plataforma ' +
        'de red para aplicaciones de transmisi'#243'n de audio y v'#237'deo (AV) po' +
        'r secuencias en redes dom'#233'sticas IP. qWave mejora el rendimiento' +
        ' y confiabilidad de la transmisi'#243'n de AV por secuencias al garan' +
        'tizar la calidad de servicio (QoS) para aplicaciones de AV en la' +
        ' red. Proporciona mecanismos para control de admisi'#243'n, supervisi' +
        #243'n y cumplimiento en tiempo de ejecuci'#243'n, recopilaci'#243'n de coment' +
        'arios acerca de aplicaciones y establecimiento de la prioridad d' +
        'el tr'#225'fico.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Experien' +
        'cia de calidad de audio y v'#237'deo de Windows (qWave)";'#10#9'ErrorContr' +
        'ol = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "QWAVE";'#10#9'PathName = "C' +
        ':\\Windows\\system32\\svchost.exe -k LocalServiceAndNoImpersonat' +
        'ion -p";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceT' +
        'ype = "Share Process";'#10#9'Started = FALSE;'#10#9'StartMode = "Manual";'#10 +
        #9'StartName = "NT AUTHORITY\\LocalService";'#10#9'State = "Stopped";'#10#9 +
        'Status = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem"' +
        ';'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};' +
        #10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Administrador de conexiones autom'#225'ticas de a' +
        'cceso remoto";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Serv' +
        'ice";'#10#9'DelayedAutoStart = FALSE;'#10#9'Description = "Crea una conexi' +
        #243'n a una red remota siempre que un programa hace referencia a un' +
        ' nombre o direcci'#243'n DNS o NetBIOS remoto.";'#10#9'DesktopInteract = F' +
        'ALSE;'#10#9'DisplayName = "Administrador de conexiones autom'#225'ticas de' +
        ' acceso remoto";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 1077;'#10#9'Na' +
        'me = "RasAuto";'#10#9'PathName = "C:\\Windows\\System32\\svchost.exe ' +
        '-k netsvcs -p";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'S' +
        'erviceType = "Share Process";'#10#9'Started = FALSE;'#10#9'StartMode = "Ma' +
        'nual";'#10#9'StartName = "localSystem";'#10#9'State = "Stopped";'#10#9'Status =' +
        ' "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'Syste' +
        'mName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Administrador de conexiones de acceso remoto"' +
        ';'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'Delaye' +
        'dAutoStart = FALSE;'#10#9'Description = "Administra conexiones de acc' +
        'eso telef'#243'nico y de red privada virtual (VPN) desde este equipo ' +
        'a Internet u otras redes remotas. Si se deshabilita este servici' +
        'o, no se iniciar'#225' ning'#250'n otro servicio que dependa de forma expl' +
        #237'cita de '#233'l.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Adminis' +
        'trador de conexiones de acceso remoto";'#10#9'ErrorControl = "Normal"' +
        ';'#10#9'ExitCode = 0;'#10#9'Name = "RasMan";'#10#9'PathName = "C:\\Windows\\Sys' +
        'tem32\\svchost.exe -k netsvcs";'#10#9'ProcessId = 6548;'#10#9'ServiceSpeci' +
        'ficExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = TRUE' +
        ';'#10#9'StartMode = "Auto";'#10#9'StartName = "localSystem";'#10#9'State = "Run' +
        'ning";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_Compute' +
        'rSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint' +
        ' = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "RefreshRateService";'#10#9'CheckPoint = 0;'#10#9'Creat' +
        'ionClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Desc' +
        'ription = "RefreshRateService";'#10#9'DesktopInteract = FALSE;'#10#9'Displ' +
        'ayName = "RefreshRateService";'#10#9'ErrorControl = "Normal";'#10#9'ExitCo' +
        'de = 1067;'#10#9'Name = "RefreshRateService";'#10#9'PathName = "\"C:\\Prog' +
        'ram Files (x86)\\ASUSTeK COMPUTER INC\\RefreshRateService\\Refre' +
        'shRateService.exe\"";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode =' +
        ' 0;'#10#9'ServiceType = "Own Process";'#10#9'Started = FALSE;'#10#9'StartMode =' +
        ' "Auto";'#10#9'StartName = "LocalSystem";'#10#9'State = "Stopped";'#10#9'Status' +
        ' = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'Sys' +
        'temName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Enrutamiento y acceso remoto";'#10#9'CheckPoint =' +
        ' 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart = FA' +
        'LSE;'#10#9'Description = "Ofrece servicios de enrutamiento a empresas' +
        ' en entornos de red de '#225'rea local y extensa.";'#10#9'DesktopInteract ' +
        '= FALSE;'#10#9'DisplayName = "Enrutamiento y acceso remoto";'#10#9'ErrorCo' +
        'ntrol = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "RemoteAccess";'#10#9'Pat' +
        'hName = "C:\\Windows\\System32\\svchost.exe -k netsvcs";'#10#9'Proces' +
        'sId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Share Pro' +
        'cess";'#10#9'Started = FALSE;'#10#9'StartMode = "Disabled";'#10#9'StartName = "' +
        'localSystem";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreatio' +
        'nClassName = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGEST' +
        'EVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Registro remoto";'#10#9'CheckPoint = 0;'#10#9'Creation' +
        'ClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Descrip' +
        'tion = "Habilita usuarios remotos para que modifiquen la configu' +
        'raci'#243'n del Registro en este equipo. Si se detiene este servicio,' +
        ' cualquier usuario en este equipo puede modificar el Registro. S' +
        'i este servicio est'#225' deshabilitado, cualquier servicio que expl'#237 +
        'citamente dependa de '#233'l no podr'#225' iniciarse.";'#10#9'DesktopInteract =' +
        ' FALSE;'#10#9'DisplayName = "Registro remoto";'#10#9'ErrorControl = "Norma' +
        'l";'#10#9'ExitCode = 1077;'#10#9'Name = "RemoteRegistry";'#10#9'PathName = "C:\' +
        '\Windows\\system32\\svchost.exe -k localService -p";'#10#9'ProcessId ' +
        '= 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Share Process' +
        '";'#10#9'Started = FALSE;'#10#9'StartMode = "Disabled";'#10#9'StartName = "NT A' +
        'UTHORITY\\LocalService";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'Sy' +
        'stemCreationClassName = "Win32_ComputerSystem";'#10#9'SystemName = "E' +
        'UES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio de prueba comercial";'#10#9'CheckPoint =' +
        ' 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart = FA' +
        'LSE;'#10#9'Description = "El servicio de prueba comercial controla la' +
        ' actividad del dispositivo mientras este est'#233' en el modo de prue' +
        'ba comercial.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Servic' +
        'io de prueba comercial";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 1' +
        '077;'#10#9'Name = "RetailDemo";'#10#9'PathName = "C:\\Windows\\System32\\s' +
        'vchost.exe -k rdxgroup";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCod' +
        'e = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = FALSE;'#10#9'StartM' +
        'ode = "Manual";'#10#9'StartName = "LocalSystem";'#10#9'State = "Stopped";'#10 +
        #9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem' +
        '";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'}' +
        ';'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio de administraci'#243'n de radio";'#10#9'Check' +
        'Point = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoSta' +
        'rt = FALSE;'#10#9'Description = "Servicio de administraci'#243'n de radio ' +
        'y modo avi'#243'n";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Servici' +
        'o de administraci'#243'n de radio";'#10#9'ErrorControl = "Normal";'#10#9'ExitCo' +
        'de = 1077;'#10#9'Name = "RmSvc";'#10#9'PathName = "C:\\Windows\\System32\\' +
        'svchost.exe -k LocalServiceNetworkRestricted";'#10#9'ProcessId = 0;'#10#9 +
        'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'St' +
        'arted = FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName = "NT AUTHORITY' +
        '\\LocalService";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCrea' +
        'tionClassName = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXG' +
        'ESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Asignador de extremos de RPC";'#10#9'CheckPoint =' +
        ' 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart = FA' +
        'LSE;'#10#9'Description = "Resuelve identificadores de interfaces RPC ' +
        'en extremos de transporte. Si se detiene o deshabilita este serv' +
        'icio, los programas que usen servicios de llamada a procedimient' +
        'o remoto (RPC) no funcionar'#225'n correctamente.";'#10#9'DesktopInteract ' +
        '= FALSE;'#10#9'DisplayName = "Asignador de extremos de RPC";'#10#9'ErrorCo' +
        'ntrol = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "RpcEptMapper";'#10#9'PathNa' +
        'me = "C:\\Windows\\system32\\svchost.exe -k RPCSS -p";'#10#9'ProcessI' +
        'd = 1440;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Share Pr' +
        'ocess";'#10#9'Started = TRUE;'#10#9'StartMode = "Auto";'#10#9'StartName = "NT A' +
        'UTHORITY\\NetworkService";'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9 +
        'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'SystemName = ' +
        '"EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Ubicador de llamada a procedimiento remoto (' +
        'RPC)";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'D' +
        'elayedAutoStart = FALSE;'#10#9'Description = "En Windows 2003 y versi' +
        'ones anteriores de Windows, el servicio Ubicador de llamada a pr' +
        'ocedimiento remoto (RPC) administra la base de datos de servicio' +
        ' de nombres de RPC. En Windows Vista y versiones posteriores de ' +
        'Windows, este servicio no proporciona ninguna funcionalidad y so' +
        'lo est'#225' presente por motivos de compatibilidad con algunas aplic' +
        'aciones.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Ubicador de' +
        ' llamada a procedimiento remoto (RPC)";'#10#9'ErrorControl = "Normal"' +
        ';'#10#9'ExitCode = 1077;'#10#9'Name = "RpcLocator";'#10#9'PathName = "C:\\Windo' +
        'ws\\system32\\locator.exe";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExit' +
        'Code = 0;'#10#9'ServiceType = "Own Process";'#10#9'Started = FALSE;'#10#9'Start' +
        'Mode = "Manual";'#10#9'StartName = "NT AUTHORITY\\NetworkService";'#10#9'S' +
        'tate = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Wi' +
        'n32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0' +
        ';'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Llamada a procedimiento remoto (RPC)";'#10#9'Chec' +
        'kPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoSt' +
        'art = FALSE;'#10#9'Description = "El servicio RPCSS es el Administrad' +
        'or de control de servicios para servidores COM y DCOM. Realiza s' +
        'olicitudes de activaci'#243'n de objetos, resoluciones del exportador' +
        ' de objetos y recolecci'#243'n distribuida de elementos no usados par' +
        'a servidores COM y DCOM. Si este servicio se detiene o se deshab' +
        'ilita, los programas que usen COM o DCOM no funcionar'#225'n correcta' +
        'mente. Por ello, es muy recomendable que ejecute el servicio RPC' +
        'SS.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Llamada a proced' +
        'imiento remoto (RPC)";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10 +
        #9'Name = "RpcSs";'#10#9'PathName = "C:\\Windows\\system32\\svchost.exe' +
        ' -k rpcss -p";'#10#9'ProcessId = 1440;'#10#9'ServiceSpecificExitCode = 0;'#10 +
        #9'ServiceType = "Share Process";'#10#9'Started = TRUE;'#10#9'StartMode = "A' +
        'uto";'#10#9'StartName = "NT AUTHORITY\\NetworkService";'#10#9'State = "Run' +
        'ning";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_Compute' +
        'rSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint' +
        ' = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Realtek Audio Universal Service";'#10#9'CheckPoint' +
        ' = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart = ' +
        'FALSE;'#10#9'Description = "Realtek Audio Universal Service";'#10#9'Deskto' +
        'pInteract = FALSE;'#10#9'DisplayName = "Realtek Audio Universal Servi' +
        'ce";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "RtkAudioU' +
        'niversalService";'#10#9'PathName = "\"C:\\Windows\\System32\\RtkAudUS' +
        'ervice64.exe\"";'#10#9'ProcessId = 5324;'#10#9'ServiceSpecificExitCode = 0' +
        ';'#10#9'ServiceType = "Own Process";'#10#9'Started = TRUE;'#10#9'StartMode = "A' +
        'uto";'#10#9'StartName = "LocalSystem";'#10#9'State = "Running";'#10#9'Status = ' +
        '"OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'System' +
        'Name = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Administrador de cuentas de seguridad";'#10#9'Che' +
        'ckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoS' +
        'tart = FALSE;'#10#9'Description = "El inicio de este servicio indica ' +
        'a otros servicios que el Administrador de cuentas de seguridad (' +
        'SAM) est'#225' listo para aceptar solicitudes. Si deshabilita este se' +
        'rvicio, impedir'#225' que se notifique a otros servicios del sistema ' +
        'cu'#225'ndo est'#225' listo SAM, lo que a su vez puede provocar un error d' +
        'e inicio de dichos servicios. No debe deshabilitar este servicio' +
        '.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Administrador de c' +
        'uentas de seguridad";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9 +
        'Name = "SamSs";'#10#9'PathName = "C:\\Windows\\system32\\lsass.exe";'#10 +
        #9'ProcessId = 848;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "' +
        'Share Process";'#10#9'Started = TRUE;'#10#9'StartMode = "Auto";'#10#9'StartName' +
        ' = "LocalSystem";'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9'SystemCre' +
        'ationClassName = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EX' +
        'GESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Tarjeta inteligente";'#10#9'CheckPoint = 0;'#10#9'Crea' +
        'tionClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Des' +
        'cription = "Administra el acceso a tarjetas inteligentes le'#237'das ' +
        'por el equipo. Si este servicio se detiene, el equipo no podr'#225' l' +
        'eer las tarjetas inteligentes. Si este servicio est'#225' deshabilita' +
        'do, cualquier servicio que expl'#237'citamente dependa de '#233'l no podr'#225 +
        ' iniciarse.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Tarjeta ' +
        'inteligente";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name ' +
        '= "SCardSvr";'#10#9'PathName = "C:\\Windows\\system32\\svchost.exe -k' +
        ' LocalServiceAndNoImpersonation";'#10#9'ProcessId = 0;'#10#9'ServiceSpecif' +
        'icExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = FALSE' +
        ';'#10#9'StartMode = "Manual";'#10#9'StartName = "NT AUTHORITY\\LocalServic' +
        'e";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName' +
        ' = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'Tag' +
        'Id = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio de enumeraci'#243'n de dispositivos de t' +
        'arjeta inteligente";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win3' +
        '2_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Description = "Crea nodo' +
        's de dispositivos de software para todos los lectores de tarjeta' +
        's inteligentes accesibles a una sesi'#243'n determinada. Si se deshab' +
        'ilita este servicio, las API de WinRT no podr'#225'n enumerar los lec' +
        'tores de tarjetas inteligentes.";'#10#9'DesktopInteract = FALSE;'#10#9'Dis' +
        'playName = "Servicio de enumeraci'#243'n de dispositivos de tarjeta i' +
        'nteligente";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name =' +
        ' "ScDeviceEnum";'#10#9'PathName = "C:\\Windows\\system32\\svchost.exe' +
        ' -k LocalSystemNetworkRestricted";'#10#9'ProcessId = 0;'#10#9'ServiceSpeci' +
        'ficExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = FALS' +
        'E;'#10#9'StartMode = "Manual";'#10#9'StartName = "LocalSystem";'#10#9'State = "' +
        'Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_Comp' +
        'uterSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitH' +
        'int = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Programador de tareas";'#10#9'CheckPoint = 0;'#10#9'Cre' +
        'ationClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'De' +
        'scription = "Permite a un usuario configurar y programar tareas ' +
        'autom'#225'ticas en este equipo. El servicio tambi'#233'n hospeda varias t' +
        'areas cr'#237'ticas para el sistema Windows. Si se detiene o deshabil' +
        'ita este servicio, estas tareas no se ejecutar'#225'n en sus horas pr' +
        'ogramadas. Si se deshabilita este servicio, no podr'#225' iniciarse n' +
        'ing'#250'n servicio que dependa de '#233'l de forma expl'#237'cita.";'#10#9'DesktopI' +
        'nteract = FALSE;'#10#9'DisplayName = "Programador de tareas";'#10#9'ErrorC' +
        'ontrol = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "Schedule";'#10#9'PathName ' +
        '= "C:\\Windows\\system32\\svchost.exe -k netsvcs -p";'#10#9'ProcessId' +
        ' = 1508;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Share Pro' +
        'cess";'#10#9'Started = TRUE;'#10#9'StartMode = "Auto";'#10#9'StartName = "Local' +
        'System";'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9'SystemCreationClas' +
        'sName = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";' +
        #10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Directiva de extracci'#243'n de tarjetas intelige' +
        'ntes";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'D' +
        'elayedAutoStart = FALSE;'#10#9'Description = "Permite configurar el s' +
        'istema para bloquear el escritorio del usuario al quitar la tarj' +
        'eta inteligente.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Dir' +
        'ectiva de extracci'#243'n de tarjetas inteligentes";'#10#9'ErrorControl = ' +
        '"Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "SCPolicySvc";'#10#9'PathName = "' +
        'C:\\Windows\\system32\\svchost.exe -k netsvcs";'#10#9'ProcessId = 0;'#10 +
        #9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'S' +
        'tarted = FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName = "LocalSystem' +
        '";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName ' +
        '= "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagI' +
        'd = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Copias de seguridad de Windows";'#10#9'CheckPoint' +
        ' = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart = ' +
        'FALSE;'#10#9'Description = "Ofrece funcionalidad de Copias de segurid' +
        'ad y restauraci'#243'n de Windows.";'#10#9'DesktopInteract = FALSE;'#10#9'Displ' +
        'ayName = "Copias de seguridad de Windows";'#10#9'ErrorControl = "Norm' +
        'al";'#10#9'ExitCode = 1077;'#10#9'Name = "SDRSVC";'#10#9'PathName = "C:\\Window' +
        's\\system32\\svchost.exe -k SDRSVC";'#10#9'ProcessId = 0;'#10#9'ServiceSpe' +
        'cificExitCode = 0;'#10#9'ServiceType = "Own Process";'#10#9'Started = FALS' +
        'E;'#10#9'StartMode = "Manual";'#10#9'StartName = "localSystem";'#10#9'State = "' +
        'Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_Comp' +
        'uterSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitH' +
        'int = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Inicio de sesi'#243'n secundario";'#10#9'CheckPoint = ' +
        '0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart = FAL' +
        'SE;'#10#9'Description = "Habilita procesos de inicio bajo credenciale' +
        's alternadas. Si se detiene, este tipo de acceso de inicio de se' +
        'si'#243'n no estar'#225' disponible. Si el servicio est'#225' deshabilitado, cu' +
        'alquiera de los servicios que dependan expl'#237'citamente de '#233'l, no ' +
        'se iniciaran.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Inicio' +
        ' de sesi'#243'n secundario";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 10' +
        '77;'#10#9'Name = "seclogon";'#10#9'PathName = "C:\\Windows\\system32\\svch' +
        'ost.exe -k netsvcs -p";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode' +
        ' = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = FALSE;'#10#9'StartMo' +
        'de = "Manual";'#10#9'StartName = "LocalSystem";'#10#9'State = "Stopped";'#10#9 +
        'Status = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem"' +
        ';'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};' +
        #10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio Seguridad de Windows";'#10#9'CheckPoint ' +
        '= 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart = F' +
        'ALSE;'#10#9'Description = "El servicio Seguridad de Windows controla ' +
        'la protecci'#243'n de dispositivos unificados y la informaci'#243'n sobre ' +
        'el estado";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Servicio S' +
        'eguridad de Windows";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9 +
        'Name = "SecurityHealthService";'#10#9'PathName = "C:\\Windows\\system' +
        '32\\SecurityHealthService.exe";'#10#9'ProcessId = 17576;'#10#9'ServiceSpec' +
        'ificExitCode = 0;'#10#9'ServiceType = "Own Process";'#10#9'Started = TRUE;' +
        #10#9'StartMode = "Manual";'#10#9'StartName = "LocalSystem";'#10#9'State = "Ru' +
        'nning";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_Comput' +
        'erSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHin' +
        't = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Administrador de pagos y NFC/SE";'#10#9'CheckPoint' +
        ' = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart = ' +
        'FALSE;'#10#9'Description = "Administra los pagos y la transmisi'#243'n de ' +
        'datos en proximidad (NFC) basada en elementos seguros.";'#10#9'Deskto' +
        'pInteract = FALSE;'#10#9'DisplayName = "Administrador de pagos y NFC/' +
        'SE";'#10#9'ErrorControl = "Ignore";'#10#9'ExitCode = 0;'#10#9'Name = "SEMgrSvc"' +
        ';'#10#9'PathName = "C:\\Windows\\system32\\svchost.exe -k LocalServic' +
        'e -p";'#10#9'ProcessId = 2232;'#10#9'ServiceSpecificExitCode = 0;'#10#9'Service' +
        'Type = "Own Process";'#10#9'Started = TRUE;'#10#9'StartMode = "Manual";'#10#9'S' +
        'tartName = "NT AUTHORITY\\LocalService";'#10#9'State = "Running";'#10#9'St' +
        'atus = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10 +
        #9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Servicio de notificaci'#243'n de eventos de sistem' +
        'a";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'Dela' +
        'yedAutoStart = FALSE;'#10#9'Description = "Supervisa los eventos de s' +
        'istema y notifica a los suscriptores del sistema de eventos COM+' +
        ' de estos eventos.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "S' +
        'ervicio de notificaci'#243'n de eventos de sistema";'#10#9'ErrorControl = ' +
        '"Normal";'#10#9'ExitCode = 0;'#10#9'Name = "SENS";'#10#9'PathName = "C:\\Window' +
        's\\system32\\svchost.exe -k netsvcs -p";'#10#9'ProcessId = 3372;'#10#9'Ser' +
        'viceSpecificExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Start' +
        'ed = TRUE;'#10#9'StartMode = "Auto";'#10#9'StartName = "LocalSystem";'#10#9'Sta' +
        'te = "Running";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win3' +
        '2_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10 +
        #9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio de Protecci'#243'n contra amenazas avanz' +
        'ada de Windows Defender";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = ' +
        '"Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Description = "El s' +
        'ervicio de Protecci'#243'n contra amenazas avanzada de Windows Defend' +
        'er ayuda a proteger contra las amenazas avanzadas mediante la su' +
        'pervisi'#243'n y la generaci'#243'n de informes de eventos de seguridad qu' +
        'e se produzcan en el equipo.";'#10#9'DesktopInteract = FALSE;'#10#9'Displa' +
        'yName = "Servicio de Protecci'#243'n contra amenazas avanzada de Wind' +
        'ows Defender";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name' +
        ' = "Sense";'#10#9'PathName = "\"C:\\Program Files\\Windows Defender A' +
        'dvanced Threat Protection\\MsSense.exe\"";'#10#9'ProcessId = 0;'#10#9'Serv' +
        'iceSpecificExitCode = 0;'#10#9'ServiceType = "Own Process";'#10#9'Started ' +
        '= FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName = "LocalSystem";'#10#9'Sta' +
        'te = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win3' +
        '2_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10 +
        #9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio de datos del sensor";'#10#9'CheckPoint =' +
        ' 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart = FA' +
        'LSE;'#10#9'Description = "Entrega datos de varios sensores";'#10#9'Desktop' +
        'Interact = FALSE;'#10#9'DisplayName = "Servicio de datos del sensor";' +
        #10#9'ErrorControl = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "SensorData' +
        'Service";'#10#9'PathName = "C:\\Windows\\System32\\SensorDataService.' +
        'exe";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType' +
        ' = "Own Process";'#10#9'Started = FALSE;'#10#9'StartMode = "Manual";'#10#9'Star' +
        'tName = "LocalSystem";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'Syst' +
        'emCreationClassName = "Win32_ComputerSystem";'#10#9'SystemName = "EUE' +
        'S02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio de sensores";'#10#9'CheckPoint = 0;'#10#9'Cre' +
        'ationClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'De' +
        'scription = "Servicio para sensores que administra diferentes fu' +
        'nciones de sensor. Administra la orientaci'#243'n de dispositivo simp' +
        'le (SDO) y el historial de los sensores. Carga el sensor SDO que' +
        ' notifica cambios en la orientaci'#243'n del dispositivo. Si se detie' +
        'ne o deshabilita este servicio, el sensor SDO no se carga y no f' +
        'unciona la rotaci'#243'n autom'#225'tica. Tambi'#233'n se detiene la recopilaci' +
        #243'n de historial de los sensores.";'#10#9'DesktopInteract = FALSE;'#10#9'Di' +
        'splayName = "Servicio de sensores";'#10#9'ErrorControl = "Normal";'#10#9'E' +
        'xitCode = 1077;'#10#9'Name = "SensorService";'#10#9'PathName = "C:\\Window' +
        's\\system32\\svchost.exe -k LocalSystemNetworkRestricted -p";'#10#9'P' +
        'rocessId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Shar' +
        'e Process";'#10#9'Started = FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName ' +
        '= "LocalSystem";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCrea' +
        'tionClassName = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXG' +
        'ESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio de supervisi'#243'n de sensores";'#10#9'Check' +
        'Point = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoSta' +
        'rt = FALSE;'#10#9'Description = "Supervisa los diversos sensores para' +
        ' exponer los datos y adaptarse al sistema y el estado del usuari' +
        'o. Si se detiene o se deshabilita, el brillo de la pantalla no s' +
        'e adaptar'#225' a las condiciones de iluminaci'#243'n. Al detenerlo, proba' +
        'blemente tambi'#233'n se vean afectadas otras caracter'#237'sticas y funci' +
        'onalidades.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Servicio' +
        ' de supervisi'#243'n de sensores";'#10#9'ErrorControl = "Normal";'#10#9'ExitCod' +
        'e = 1077;'#10#9'Name = "SensrSvc";'#10#9'PathName = "C:\\Windows\\system32' +
        '\\svchost.exe -k LocalServiceAndNoImpersonation -p";'#10#9'ProcessId ' +
        '= 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Share Process' +
        '";'#10#9'Started = FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName = "NT AUT' +
        'HORITY\\LocalService";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'Syst' +
        'emCreationClassName = "Win32_ComputerSystem";'#10#9'SystemName = "EUE' +
        'S02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Configuraci'#243'n de Escritorio remoto";'#10#9'CheckPo' +
        'int = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart' +
        ' = FALSE;'#10#9'Description = "El servicio Configuraci'#243'n de Escritori' +
        'o remoto (RDCS) se encarga de todas las actividades de mantenimi' +
        'ento de sesiones y configuraci'#243'n relacionadas con Servicios de E' +
        'scritorio remoto y Escritorio remoto que requieran el contexto S' +
        'YSTEM. Entre ellas, se incluyen las carpetas temporales por sesi' +
        #243'n, los temas de Escritorio remoto y los certificados de Escrito' +
        'rio remoto.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Configur' +
        'aci'#243'n de Escritorio remoto";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode' +
        ' = 0;'#10#9'Name = "SessionEnv";'#10#9'PathName = "C:\\Windows\\System32\\' +
        'svchost.exe -k netsvcs -p";'#10#9'ProcessId = 3608;'#10#9'ServiceSpecificE' +
        'xitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = TRUE;'#10#9'S' +
        'tartMode = "Manual";'#10#9'StartName = "localSystem";'#10#9'State = "Runni' +
        'ng";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerS' +
        'ystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint =' +
        ' 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Agente de supervisi'#243'n en tiempo de ejecuci'#243'n' +
        ' de Protecci'#243'n del sistema";'#10#9'CheckPoint = 0;'#10#9'CreationClassName' +
        ' = "Win32_Service";'#10#9'DelayedAutoStart = TRUE;'#10#9'Description = "Su' +
        'pervisa y certifica la integridad de la plataforma Windows.";'#10#9'D' +
        'esktopInteract = FALSE;'#10#9'DisplayName = "Agente de supervisi'#243'n en' +
        ' tiempo de ejecuci'#243'n de Protecci'#243'n del sistema";'#10#9'ErrorControl =' +
        ' "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "SgrmBroker";'#10#9'PathName = "C:\' +
        '\Windows\\system32\\SgrmBroker.exe";'#10#9'ProcessId = 20100;'#10#9'Servic' +
        'eSpecificExitCode = 0;'#10#9'ServiceType = "Own Process";'#10#9'Started = ' +
        'TRUE;'#10#9'StartMode = "Auto";'#10#9'StartName = "LocalSystem";'#10#9'State = ' +
        '"Running";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_Com' +
        'puterSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'Wait' +
        'Hint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Conexi'#243'n compartida a Internet (ICS)";'#10#9'Chec' +
        'kPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoSt' +
        'art = FALSE;'#10#9'Description = "Proporciona servicios de traducci'#243'n' +
        ' de direcciones de red, direccionamiento, resoluci'#243'n de nombres ' +
        'y prevenci'#243'n de intrusiones para una red dom'#233'stica o de oficina ' +
        'peque'#241'a.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Conexi'#243'n co' +
        'mpartida a Internet (ICS)";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode ' +
        '= 1077;'#10#9'Name = "SharedAccess";'#10#9'PathName = "C:\\Windows\\System' +
        '32\\svchost.exe -k netsvcs -p";'#10#9'ProcessId = 0;'#10#9'ServiceSpecific' +
        'ExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = FALSE;'#10 +
        #9'StartMode = "Manual";'#10#9'StartName = "LocalSystem";'#10#9'State = "Sto' +
        'pped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_Compute' +
        'rSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint' +
        ' = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio de datos espacial";'#10#9'CheckPoint = 0' +
        ';'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALS' +
        'E;'#10#9'Description = "Este servicio se usa para los escenarios de p' +
        'ercepci'#243'n espacial";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "S' +
        'ervicio de datos espacial";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode ' +
        '= 1077;'#10#9'Name = "SharedRealitySvc";'#10#9'PathName = "C:\\Windows\\sy' +
        'stem32\\svchost.exe -k LocalService -p";'#10#9'ProcessId = 0;'#10#9'Servic' +
        'eSpecificExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started ' +
        '= FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName = "NT AUTHORITY\\Loca' +
        'lService";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationCl' +
        'assName = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE' +
        '";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Detecci'#243'n de hardware shell";'#10#9'CheckPoint = 0' +
        ';'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALS' +
        'E;'#10#9'Description = "Proporciona notificaciones sobre eventos de h' +
        'ardware AutoPlay.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "De' +
        'tecci'#243'n de hardware shell";'#10#9'ErrorControl = "Ignore";'#10#9'ExitCode ' +
        '= 0;'#10#9'Name = "ShellHWDetection";'#10#9'PathName = "C:\\Windows\\Syste' +
        'm32\\svchost.exe -k netsvcs -p";'#10#9'ProcessId = 4576;'#10#9'ServiceSpec' +
        'ificExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = TRU' +
        'E;'#10#9'StartMode = "Auto";'#10#9'StartName = "LocalSystem";'#10#9'State = "Ru' +
        'nning";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_Comput' +
        'erSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHin' +
        't = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Shared PC Account Manager";'#10#9'CheckPoint = 0;' +
        #10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE' +
        ';'#10#9'Description = "Manages profiles and accounts on a SharedPC co' +
        'nfigured device";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Shar' +
        'ed PC Account Manager";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 10' +
        '77;'#10#9'Name = "shpamsvc";'#10#9'PathName = "C:\\Windows\\System32\\svch' +
        'ost.exe -k netsvcs -p";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode' +
        ' = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = FALSE;'#10#9'StartMo' +
        'de = "Disabled";'#10#9'StartName = "LocalSystem";'#10#9'State = "Stopped";' +
        #10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSyste' +
        'm";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10 +
        '};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "SMP de Espacios de almacenamiento de Microso' +
        'ft";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'Del' +
        'ayedAutoStart = FALSE;'#10#9'Description = "Servicio host para el pro' +
        'veedor de administraci'#243'n de Espacios de almacenamiento de Micros' +
        'oft. Si se detiene o deshabilita este servicio, Espacios de alma' +
        'cenamiento no se puede administrar.";'#10#9'DesktopInteract = FALSE;'#10 +
        #9'DisplayName = "SMP de Espacios de almacenamiento de Microsoft";' +
        #10#9'ErrorControl = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "smphost";'#10 +
        #9'PathName = "C:\\Windows\\System32\\svchost.exe -k smphost";'#10#9'Pr' +
        'ocessId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Own P' +
        'rocess";'#10#9'Started = FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName = "' +
        'NT AUTHORITY\\NetworkService";'#10#9'State = "Stopped";'#10#9'Status = "OK' +
        '";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'SystemNam' +
        'e = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio enrutador de SMS de Microsoft Windo' +
        'ws.";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'De' +
        'layedAutoStart = FALSE;'#10#9'Description = "Enruta mensajes en funci' +
        #243'n de reglas para clientes concretos.";'#10#9'DesktopInteract = FALSE' +
        ';'#10#9'DisplayName = "Servicio enrutador de SMS de Microsoft Windows' +
        '.";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "SmsRout' +
        'er";'#10#9'PathName = "C:\\Windows\\system32\\svchost.exe -k LocalSer' +
        'viceNetworkRestricted -p";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitC' +
        'ode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = FALSE;'#10#9'Star' +
        'tMode = "Manual";'#10#9'StartName = "NT Authority\\LocalService";'#10#9'St' +
        'ate = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win' +
        '32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;' +
        #10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Captura de SNMP";'#10#9'CheckPoint = 0;'#10#9'Creation' +
        'ClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Descrip' +
        'tion = "Recibe mensajes de captura generados por agentes locales' +
        ' o remotos del Servicio de Protocolo simple de administraci'#243'n de' +
        ' redes (SNMP) y retransmite los mensajes a programas de administ' +
        'raci'#243'n de SNMP que se ejecutan en este equipo. Si se detiene est' +
        'e servicio, los programas basados en SNMP en este equipo no reci' +
        'bir'#225'n mensajes de captura SNMP. Si se deshabilita este servicio,' +
        ' cualquier servicio que dependa expl'#237'citamente de '#233'l tendr'#225' un e' +
        'rror al iniciar.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Cap' +
        'tura de SNMP";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name' +
        ' = "SNMPTRAP";'#10#9'PathName = "C:\\Windows\\System32\\snmptrap.exe"' +
        ';'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "' +
        'Own Process";'#10#9'Started = FALSE;'#10#9'StartMode = "Manual";'#10#9'StartNam' +
        'e = "NT AUTHORITY\\LocalService";'#10#9'State = "Stopped";'#10#9'Status = ' +
        '"OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'System' +
        'Name = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio de percepci'#243'n de Windows";'#10#9'CheckPo' +
        'int = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart' +
        ' = FALSE;'#10#9'Description = "Habilita la percepci'#243'n espacial, la en' +
        'trada espacial y la representaci'#243'n hologr'#225'fica.";'#10#9'DesktopIntera' +
        'ct = FALSE;'#10#9'DisplayName = "Servicio de percepci'#243'n de Windows";'#10 +
        #9'ErrorControl = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "spectrum";'#10 +
        #9'PathName = "C:\\Windows\\system32\\spectrum.exe";'#10#9'ProcessId = ' +
        '0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Own Process";'#10#9 +
        'Started = FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName = "NT AUTHORI' +
        'TY\\LocalService";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCr' +
        'eationClassName = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02E' +
        'XGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Cola de impresi'#243'n";'#10#9'CheckPoint = 0;'#10#9'Creatio' +
        'nClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Descri' +
        'ption = "Este servicio pone en cola los trabajos de impresi'#243'n y ' +
        'administra la interacci'#243'n con la impresora. Si lo desactiva, no ' +
        'podr'#225' imprimir ni ver las impresoras.";'#10#9'DesktopInteract = TRUE;' +
        #10#9'DisplayName = "Cola de impresi'#243'n";'#10#9'ErrorControl = "Normal";'#10#9 +
        'ExitCode = 0;'#10#9'Name = "Spooler";'#10#9'PathName = "C:\\Windows\\Syste' +
        'm32\\spoolsv.exe";'#10#9'ProcessId = 4860;'#10#9'ServiceSpecificExitCode =' +
        ' 0;'#10#9'ServiceType = "Own Process";'#10#9'Started = TRUE;'#10#9'StartMode = ' +
        '"Auto";'#10#9'StartName = "LocalSystem";'#10#9'State = "Running";'#10#9'Status ' +
        '= "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'Syst' +
        'emName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Protecci'#243'n de software";'#10#9'CheckPoint = 0;'#10#9'C' +
        'reationClassName = "Win32_Service";'#10#9'DelayedAutoStart = TRUE;'#10#9'D' +
        'escription = "Habilita la descarga, instalaci'#243'n y aplicaci'#243'n de ' +
        'licencias digitales para Windows y aplicaciones para Windows. Si' +
        ' el servicio est'#225' deshabilitado, es posible que el sistema opera' +
        'tivo y las aplicaciones bajo licencia se ejecuten en modo de not' +
        'ificaci'#243'n. Es muy recomendable no deshabilitar el servicio de pr' +
        'otecci'#243'n de software.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName =' +
        ' "Protecci'#243'n de software";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode =' +
        ' 0;'#10#9'Name = "sppsvc";'#10#9'PathName = "C:\\Windows\\system32\\sppsvc' +
        '.exe";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceTyp' +
        'e = "Own Process";'#10#9'Started = FALSE;'#10#9'StartMode = "Auto";'#10#9'Start' +
        'Name = "NT AUTHORITY\\NetworkService";'#10#9'State = "Stopped";'#10#9'Stat' +
        'us = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'S' +
        'ystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Agente SQL Server (GESTEVEZ1)";'#10#9'CheckPoint ' +
        '= 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart = F' +
        'ALSE;'#10#9'Description = "Ejecuta tareas, realiza el seguimiento de ' +
        'SQL Server, activa alertas y permite la automatizaci'#243'n de alguna' +
        's tareas administrativas.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayNa' +
        'me = "Agente SQL Server (GESTEVEZ1)";'#10#9'ErrorControl = "Normal";'#10 +
        #9'ExitCode = 1077;'#10#9'Name = "SQLAgent$GESTEVEZ1";'#10#9'PathName = "\"C' +
        ':\\Program Files\\Microsoft SQL Server\\MSSQL12.GESTEVEZ1\\MSSQL' +
        '\\Binn\\SQLAGENT.EXE\" -i GESTEVEZ1";'#10#9'ProcessId = 0;'#10#9'ServiceSp' +
        'ecificExitCode = 0;'#10#9'ServiceType = "Own Process";'#10#9'Started = FAL' +
        'SE;'#10#9'StartMode = "Manual";'#10#9'StartName = "NT Service\\SQLAgent$GE' +
        'STEVEZ1";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationCla' +
        'ssName = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE"' +
        ';'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = TRUE;'#10#9'AcceptStop = ' +
        'TRUE;'#10#9'Caption = "SQL Server Browser";'#10#9'CheckPoint = 0;'#10#9'Creatio' +
        'nClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Descri' +
        'ption = "Proporciona informaci'#243'n sobre la conexi'#243'n de SQL Server' +
        ' a los equipos cliente.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName' +
        ' = "SQL Server Browser";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0' +
        ';'#10#9'Name = "SQLBrowser";'#10#9'PathName = "\"C:\\Program Files (x86)\\' +
        'Microsoft SQL Server\\90\\Shared\\sqlbrowser.exe\"";'#10#9'ProcessId ' +
        '= 5508;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Own Proces' +
        's";'#10#9'Started = TRUE;'#10#9'StartMode = "Auto";'#10#9'StartName = "NT AUTHO' +
        'RITY\\LOCALSERVICE";'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9'System' +
        'CreationClassName = "Win32_ComputerSystem";'#10#9'SystemName = "EUES0' +
        '2EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "SQL Server VSS Writer";'#10#9'CheckPoint = 0;'#10#9'Cre' +
        'ationClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'De' +
        'scription = "Proporciona la interfaz para realizar copias de seg' +
        'uridad y restaurar Microsoft SQL Server a trav'#233's de la infraestr' +
        'uctura de Windows VSS.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName ' +
        '= "SQL Server VSS Writer";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode =' +
        ' 0;'#10#9'Name = "SQLWriter";'#10#9'PathName = "\"C:\\Program Files\\Micro' +
        'soft SQL Server\\90\\Shared\\sqlwriter.exe\"";'#10#9'ProcessId = 5348' +
        ';'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Own Process";'#10#9'S' +
        'tarted = TRUE;'#10#9'StartMode = "Auto";'#10#9'StartName = "LocalSystem";'#10 +
        #9'State = "Running";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "' +
        'Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId =' +
        ' 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Detecci'#243'n SSDP";'#10#9'CheckPoint = 0;'#10#9'CreationCl' +
        'assName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Descripti' +
        'on = "Detecta dispositivos y servicios en red que usan el protoc' +
        'olo de detecci'#243'n SSDP, como los dispositivos UPnP. Tambi'#233'n anunc' +
        'ia dispositivos y servicios SSDP que se ejecutan en el equipo lo' +
        'cal. Si se detiene este servicio, no se detectar'#225'n los dispositi' +
        'vos basados en SSDP. Si se deshabilita este servicio, no podr'#225'n ' +
        'iniciarse los servicios que dependan expl'#237'citamente del mismo.";' +
        #10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Detecci'#243'n SSDP";'#10#9'Err' +
        'orControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "SSDPSRV";'#10#9'PathNam' +
        'e = "C:\\Windows\\system32\\svchost.exe -k LocalServiceAndNoImpe' +
        'rsonation -p";'#10#9'ProcessId = 4932;'#10#9'ServiceSpecificExitCode = 0;'#10 +
        #9'ServiceType = "Share Process";'#10#9'Started = TRUE;'#10#9'StartMode = "M' +
        'anual";'#10#9'StartName = "NT AUTHORITY\\LocalService";'#10#9'State = "Run' +
        'ning";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_Compute' +
        'rSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint' +
        ' = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "OpenSSH Authentication Agent";'#10#9'CheckPoint =' +
        ' 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart = FA' +
        'LSE;'#10#9'Description = "Agent to hold private keys used for public ' +
        'key authentication.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "' +
        'OpenSSH Authentication Agent";'#10#9'ErrorControl = "Normal";'#10#9'ExitCo' +
        'de = 1077;'#10#9'Name = "ssh-agent";'#10#9'PathName = "C:\\Windows\\System' +
        '32\\OpenSSH\\ssh-agent.exe";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExi' +
        'tCode = 0;'#10#9'ServiceType = "Own Process";'#10#9'Started = FALSE;'#10#9'Star' +
        'tMode = "Disabled";'#10#9'StartName = "LocalSystem";'#10#9'State = "Stoppe' +
        'd";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSy' +
        'stem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = ' +
        '0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Servicio de protocolo de t'#250'nel de sockets seg' +
        'uros";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'D' +
        'elayedAutoStart = FALSE;'#10#9'Description = "Ofrece compatibilidad c' +
        'on el protocolo de t'#250'nel de sockets seguros (SSTP) para conectar' +
        'se con equipos remotos usando VPN. Si se deshabilita este servic' +
        'io, los usuarios no podr'#225'n usar SSTP para tener acceso a servido' +
        'res remotos.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Servici' +
        'o de protocolo de t'#250'nel de sockets seguros";'#10#9'ErrorControl = "No' +
        'rmal";'#10#9'ExitCode = 0;'#10#9'Name = "SstpSvc";'#10#9'PathName = "C:\\Window' +
        's\\system32\\svchost.exe -k LocalService -p";'#10#9'ProcessId = 5264;' +
        #10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9 +
        'Started = TRUE;'#10#9'StartMode = "Manual";'#10#9'StartName = "NT Authorit' +
        'y\\LocalService";'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9'SystemCre' +
        'ationClassName = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EX' +
        'GESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Servicio de repositorio de estado";'#10#9'CheckPoi' +
        'nt = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart ' +
        '= FALSE;'#10#9'Description = "Proporciona soporte a la infraestructur' +
        'a necesaria para el modelo de aplicaci'#243'n.";'#10#9'DesktopInteract = F' +
        'ALSE;'#10#9'DisplayName = "Servicio de repositorio de estado";'#10#9'Error' +
        'Control = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "StateRepository";'#10#9'P' +
        'athName = "C:\\Windows\\system32\\svchost.exe -k appmodel -p";'#10#9 +
        'ProcessId = 4016;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "' +
        'Share Process";'#10#9'Started = TRUE;'#10#9'StartMode = "Manual";'#10#9'StartNa' +
        'me = "LocalSystem";'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9'SystemC' +
        'reationClassName = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02' +
        'EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = TRUE;'#10#9'AcceptStop = ' +
        'TRUE;'#10#9'Caption = "Adquisici'#243'n de im'#225'genes de Windows (WIA)";'#10#9'Ch' +
        'eckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAuto' +
        'Start = FALSE;'#10#9'Description = "Proporciona servicios de adquisic' +
        'i'#243'n de im'#225'genes para esc'#225'neres y c'#225'maras.";'#10#9'DesktopInteract = F' +
        'ALSE;'#10#9'DisplayName = "Adquisici'#243'n de im'#225'genes de Windows (WIA)";' +
        #10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "stisvc";'#10#9'Pat' +
        'hName = "C:\\Windows\\system32\\svchost.exe -k imgsvc";'#10#9'Process' +
        'Id = 5272;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Own Pro' +
        'cess";'#10#9'Started = TRUE;'#10#9'StartMode = "Auto";'#10#9'StartName = "NT Au' +
        'thority\\LocalService";'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9'Sys' +
        'temCreationClassName = "Win32_ComputerSystem";'#10#9'SystemName = "EU' +
        'ES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Servicio de almacenamiento";'#10#9'CheckPoint = 0;' +
        #10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE' +
        ';'#10#9'Description = "Ofrece servicios de habilitaci'#243'n para la confi' +
        'guraci'#243'n de almacenamiento y la expansi'#243'n del almacenamiento ext' +
        'erno";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Servicio de alm' +
        'acenamiento";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "' +
        'StorSvc";'#10#9'PathName = "C:\\Windows\\System32\\svchost.exe -k Loc' +
        'alSystemNetworkRestricted -p";'#10#9'ProcessId = 11800;'#10#9'ServiceSpeci' +
        'ficExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = TRUE' +
        ';'#10#9'StartMode = "Manual";'#10#9'StartName = "LocalSystem";'#10#9'State = "R' +
        'unning";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_Compu' +
        'terSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHi' +
        'nt = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Comprobador puntual";'#10#9'CheckPoint = 0;'#10#9'Crea' +
        'tionClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Des' +
        'cription = "Comprueba posibles da'#241'os en el sistema de archivos."' +
        ';'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Comprobador puntual"' +
        ';'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "svsvc";'#10#9 +
        'PathName = "C:\\Windows\\system32\\svchost.exe -k LocalSystemNet' +
        'workRestricted -p";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode = 0' +
        ';'#10#9'ServiceType = "Share Process";'#10#9'Started = FALSE;'#10#9'StartMode =' +
        ' "Manual";'#10#9'StartName = "LocalSystem";'#10#9'State = "Stopped";'#10#9'Stat' +
        'us = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'S' +
        'ystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Proveedor de instant'#225'neas de software de Mic' +
        'rosoft";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10 +
        #9'DelayedAutoStart = FALSE;'#10#9'Description = "Administra instant'#225'ne' +
        'as de volumen basadas en software y tomadas por el Servicio de i' +
        'nstant'#225'neas de volumen. Si se detiene el servicio, no se podr'#225'n ' +
        'administrar las instant'#225'neas de volumen basadas en software. Si ' +
        'se deshabilita el servicio, se producir'#225' un error al iniciar cua' +
        'lquiera de los servicios que dependen expl'#237'citamente de '#233'l.";'#10#9'D' +
        'esktopInteract = FALSE;'#10#9'DisplayName = "Proveedor de instant'#225'nea' +
        's de software de Microsoft";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode' +
        ' = 1077;'#10#9'Name = "swprv";'#10#9'PathName = "C:\\Windows\\System32\\sv' +
        'chost.exe -k swprv";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode = ' +
        '0;'#10#9'ServiceType = "Own Process";'#10#9'Started = FALSE;'#10#9'StartMode = ' +
        '"Manual";'#10#9'StartName = "LocalSystem";'#10#9'State = "Stopped";'#10#9'Statu' +
        's = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'Sy' +
        'stemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "SysMain";'#10#9'CheckPoint = 0;'#10#9'CreationClassName' +
        ' = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Description = "M' +
        'antiene y mejora el rendimiento del sistema a lo largo del tiemp' +
        'o.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "SysMain";'#10#9'ErrorC' +
        'ontrol = "Ignore";'#10#9'ExitCode = 0;'#10#9'Name = "SysMain";'#10#9'PathName =' +
        ' "C:\\Windows\\system32\\svchost.exe -k LocalSystemNetworkRestri' +
        'cted -p";'#10#9'ProcessId = 3108;'#10#9'ServiceSpecificExitCode = 0;'#10#9'Serv' +
        'iceType = "Share Process";'#10#9'Started = TRUE;'#10#9'StartMode = "Auto";' +
        #10#9'StartName = "LocalSystem";'#10#9'State = "Running";'#10#9'Status = "OK";' +
        #10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'SystemName ' +
        '= "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Agente de eventos del sistema";'#10#9'CheckPoint =' +
        ' 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart = FA' +
        'LSE;'#10#9'Description = "Coordina la ejecuci'#243'n de trabajo en segundo' +
        ' plano para la aplicaci'#243'n WinRT. Si se deshabilita o se detiene ' +
        'este servicio, el trabajo en segundo plano podr'#237'a no activarse."' +
        ';'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Agente de eventos de' +
        'l sistema";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "Sy' +
        'stemEventsBroker";'#10#9'PathName = "C:\\Windows\\system32\\svchost.e' +
        'xe -k DcomLaunch -p";'#10#9'ProcessId = 1080;'#10#9'ServiceSpecificExitCod' +
        'e = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = TRUE;'#10#9'StartMo' +
        'de = "Auto";'#10#9'StartName = "LocalSystem";'#10#9'State = "Running";'#10#9'St' +
        'atus = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10 +
        #9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio de Panel de escritura a mano y tecl' +
        'ado t'#225'ctil";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Servic' +
        'e";'#10#9'DelayedAutoStart = FALSE;'#10#9'Description = "Habilita la funci' +
        'onalidad de l'#225'piz y entrada de l'#225'piz del Panel de escritura a ma' +
        'no y teclado t'#225'ctil";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "' +
        'Servicio de Panel de escritura a mano y teclado t'#225'ctil";'#10#9'ErrorC' +
        'ontrol = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "TabletInputService";'#10 +
        #9'PathName = "C:\\Windows\\System32\\svchost.exe -k LocalSystemNe' +
        'tworkRestricted -p";'#10#9'ProcessId = 10500;'#10#9'ServiceSpecificExitCod' +
        'e = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = TRUE;'#10#9'StartMo' +
        'de = "Manual";'#10#9'StartName = "LocalSystem";'#10#9'State = "Running";'#10#9 +
        'Status = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem"' +
        ';'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};' +
        #10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Telefon'#237'a";'#10#9'CheckPoint = 0;'#10#9'CreationClassN' +
        'ame = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Description =' +
        ' "Ofrece compatibilidad con la API de telefon'#237'a (TAPI) para prog' +
        'ramas que controlan dispositivos de telefon'#237'a en el equipo local' +
        ' y, a trav'#233's de la LAN, en servidores que tambi'#233'n usan el servic' +
        'io.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Telefon'#237'a";'#10#9'Err' +
        'orControl = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "TapiSrv";'#10#9'Path' +
        'Name = "C:\\Windows\\System32\\svchost.exe -k NetworkService -p"' +
        ';'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "' +
        'Share Process";'#10#9'Started = FALSE;'#10#9'StartMode = "Manual";'#10#9'StartN' +
        'ame = "NT AUTHORITY\\NetworkService";'#10#9'State = "Stopped";'#10#9'Statu' +
        's = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'Sy' +
        'stemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Te.Service";'#10#9'CheckPoint = 0;'#10#9'CreationClass' +
        'Name = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Description ' +
        '= NULL;'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Te.Service";'#10#9 +
        'ErrorControl = "Ignore";'#10#9'ExitCode = 1077;'#10#9'Name = "Te.Service";' +
        #10#9'PathName = "\"C:\\Program Files (x86)\\Windows Kits\\10\\Testi' +
        'ng\\Runtimes\\TAEF\\Wex.Services.exe\"";'#10#9'ProcessId = 0;'#10#9'Servic' +
        'eSpecificExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started ' +
        '= FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName = "LocalSystem";'#10#9'Sta' +
        'te = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win3' +
        '2_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10 +
        #9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_TerminalService'#10'{'#10#9'AcceptPause = FALSE;'#10#9'Acce' +
        'ptStop = TRUE;'#10#9'Caption = "Servicios de Escritorio remoto";'#10#9'Che' +
        'ckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoS' +
        'tart = FALSE;'#10#9'Description = "Permite a los usuarios conectarse ' +
        'de forma interactiva a un equipo remoto. Escritorio remoto y el ' +
        'servidor host de sesi'#243'n de Escritorio remoto dependen de este se' +
        'rvicio. Para impedir el uso remoto de este equipo, desactive las' +
        ' casillas de la pesta'#241'a Acceso remoto, en el elemento Propiedade' +
        's del sistema del Panel de control.";'#10#9'DesktopInteract = FALSE;'#10 +
        #9'DisconnectedSessions = 1;'#10#9'DisplayName = "Servicios de Escritor' +
        'io remoto";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "Te' +
        'rmService";'#10#9'PathName = "C:\\Windows\\System32\\svchost.exe -k N' +
        'etworkService";'#10#9'ProcessId = 1676;'#10#9'ServiceSpecificExitCode = 0;' +
        #10#9'ServiceType = "Share Process";'#10#9'Started = TRUE;'#10#9'StartMode = "' +
        'Manual";'#10#9'StartName = "NT Authority\\NetworkService";'#10#9'State = "' +
        'Running";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_Comp' +
        'uterSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'Total' +
        'Sessions = 2;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Temas";'#10#9'CheckPoint = 0;'#10#9'CreationClassName =' +
        ' "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Description = "Pro' +
        'porciona administraci'#243'n de temas de experiencia de usuario.";'#10#9'D' +
        'esktopInteract = FALSE;'#10#9'DisplayName = "Temas";'#10#9'ErrorControl = ' +
        '"Normal";'#10#9'ExitCode = 0;'#10#9'Name = "Themes";'#10#9'PathName = "C:\\Wind' +
        'ows\\System32\\svchost.exe -k netsvcs -p";'#10#9'ProcessId = 3116;'#10#9'S' +
        'erviceSpecificExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Sta' +
        'rted = TRUE;'#10#9'StartMode = "Auto";'#10#9'StartName = "LocalSystem";'#10#9'S' +
        'tate = "Running";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Wi' +
        'n32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0' +
        ';'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Administraci'#243'n de capas de almacenamiento";'#10 +
        #9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedA' +
        'utoStart = FALSE;'#10#9'Description = "Optimiza la colocaci'#243'n de los ' +
        'datos en capas de almacenamiento en todos los espacios de almace' +
        'namiento en capas del sistema.";'#10#9'DesktopInteract = FALSE;'#10#9'Disp' +
        'layName = "Administraci'#243'n de capas de almacenamiento";'#10#9'ErrorCon' +
        'trol = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "TieringEngineService' +
        '";'#10#9'PathName = "C:\\Windows\\system32\\TieringEngineService.exe"' +
        ';'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "' +
        'Own Process";'#10#9'Started = FALSE;'#10#9'StartMode = "Manual";'#10#9'StartNam' +
        'e = "localSystem";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCr' +
        'eationClassName = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02E' +
        'XGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Agente de eventos de tiempo";'#10#9'CheckPoint = 0' +
        ';'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALS' +
        'E;'#10#9'Description = "Coordina la ejecuci'#243'n de trabajo en segundo p' +
        'lano para la aplicaci'#243'n WinRT. Si se deshabilita o se detiene es' +
        'te servicio, el trabajo en segundo plano podr'#237'a no activarse.";'#10 +
        #9'DesktopInteract = FALSE;'#10#9'DisplayName = "Agente de eventos de t' +
        'iempo";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "TimeBr' +
        'okerSvc";'#10#9'PathName = "C:\\Windows\\system32\\svchost.exe -k Loc' +
        'alServiceNetworkRestricted -p";'#10#9'ProcessId = 856;'#10#9'ServiceSpecif' +
        'icExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = TRUE;' +
        #10#9'StartMode = "Manual";'#10#9'StartName = "NT AUTHORITY\\LocalService' +
        '";'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9'SystemCreationClassName ' +
        '= "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagI' +
        'd = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Administrador de cuentas web";'#10#9'CheckPoint = ' +
        '0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart = FAL' +
        'SE;'#10#9'Description = "El Administrador de cuentas web usa este ser' +
        'vicio para proporcionar el inicio de sesi'#243'n '#250'nico a aplicaciones' +
        ' y servicios.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Admini' +
        'strador de cuentas web";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0' +
        ';'#10#9'Name = "TokenBroker";'#10#9'PathName = "C:\\Windows\\system32\\svc' +
        'host.exe -k netsvcs -p";'#10#9'ProcessId = 11276;'#10#9'ServiceSpecificExi' +
        'tCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = TRUE;'#10#9'Sta' +
        'rtMode = "Manual";'#10#9'StartName = "LocalSystem";'#10#9'State = "Running' +
        '";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSys' +
        'tem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0' +
        ';'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Cliente de seguimiento de v'#237'nculos distribuid' +
        'os";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'Del' +
        'ayedAutoStart = FALSE;'#10#9'Description = "Mantiene los v'#237'nculos ent' +
        're archivos NTFS dentro de un equipo o entre equipos de una red.' +
        '";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Cliente de seguimie' +
        'nto de v'#237'nculos distribuidos";'#10#9'ErrorControl = "Normal";'#10#9'ExitCo' +
        'de = 0;'#10#9'Name = "TrkWks";'#10#9'PathName = "C:\\Windows\\System32\\sv' +
        'chost.exe -k LocalSystemNetworkRestricted -p";'#10#9'ProcessId = 5280' +
        ';'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Share Process";'#10 +
        #9'Started = TRUE;'#10#9'StartMode = "Auto";'#10#9'StartName = "LocalSystem"' +
        ';'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9'SystemCreationClassName =' +
        ' "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId' +
        ' = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio de soluci'#243'n de problemas recomendad' +
        'o";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'Dela' +
        'yedAutoStart = FALSE;'#10#9'Description = "Permite la mitigaci'#243'n auto' +
        'm'#225'tica de problemas conocidos mediante la aplicaci'#243'n de la resol' +
        'uci'#243'n de problemas recomendada. Si se detiene, el dispositivo no' +
        ' recomendar'#225' la resoluci'#243'n de problemas en el dispositivo.";'#10#9'De' +
        'sktopInteract = FALSE;'#10#9'DisplayName = "Servicio de soluci'#243'n de p' +
        'roblemas recomendado";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 107' +
        '7;'#10#9'Name = "TroubleshootingSvc";'#10#9'PathName = "C:\\Windows\\syste' +
        'm32\\svchost.exe -k netsvcs -p";'#10#9'ProcessId = 0;'#10#9'ServiceSpecifi' +
        'cExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = FALSE;' +
        #10#9'StartMode = "Manual";'#10#9'StartName = "LocalSystem";'#10#9'State = "St' +
        'opped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_Comput' +
        'erSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHin' +
        't = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Instalador de m'#243'dulos de Windows";'#10#9'CheckPoi' +
        'nt = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart ' +
        '= FALSE;'#10#9'Description = "Habilita la instalaci'#243'n, modificaci'#243'n y' +
        ' eliminaci'#243'n de actualizaciones y componentes opcionales de Wind' +
        'ows. Si este servicio est'#225' deshabilitado, es posible que no se p' +
        'uedan instalar o desinstalar correctamente las actualizaciones d' +
        'e Windows en este equipo.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayNa' +
        'me = "Instalador de m'#243'dulos de Windows";'#10#9'ErrorControl = "Normal' +
        '";'#10#9'ExitCode = 0;'#10#9'Name = "TrustedInstaller";'#10#9'PathName = "C:\\W' +
        'indows\\servicing\\TrustedInstaller.exe";'#10#9'ProcessId = 0;'#10#9'Servi' +
        'ceSpecificExitCode = 0;'#10#9'ServiceType = "Own Process";'#10#9'Started =' +
        ' FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName = "localSystem";'#10#9'Stat' +
        'e = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32' +
        '_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9 +
        'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Actualizador de zona horaria autom'#225'tica";'#10#9'C' +
        'heckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAut' +
        'oStart = FALSE;'#10#9'Description = "Establece la zona horaria del si' +
        'stema autom'#225'ticamente.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName ' +
        '= "Actualizador de zona horaria autom'#225'tica";'#10#9'ErrorControl = "No' +
        'rmal";'#10#9'ExitCode = 1077;'#10#9'Name = "tzautoupdate";'#10#9'PathName = "C:' +
        '\\Windows\\system32\\svchost.exe -k LocalService -p";'#10#9'ProcessId' +
        ' = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Share Proces' +
        's";'#10#9'Started = FALSE;'#10#9'StartMode = "Disabled";'#10#9'StartName = "NT ' +
        'AUTHORITY\\LocalService";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'S' +
        'ystemCreationClassName = "Win32_ComputerSystem";'#10#9'SystemName = "' +
        'EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio de virtualizaci'#243'n de la experiencia' +
        ' de usuario";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Servi' +
        'ce";'#10#9'DelayedAutoStart = FALSE;'#10#9'Description = "Proporciona comp' +
        'atibilidad para la itinerancia de configuraci'#243'n de las aplicacio' +
        'nes y el sistema operativo";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayN' +
        'ame = "Servicio de virtualizaci'#243'n de la experiencia de usuario";' +
        #10#9'ErrorControl = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "UevAgentSe' +
        'rvice";'#10#9'PathName = "C:\\Windows\\system32\\AgentService.exe";'#10#9 +
        'ProcessId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Own' +
        ' Process";'#10#9'Started = FALSE;'#10#9'StartMode = "Disabled";'#10#9'StartName' +
        ' = "LocalSystem";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCre' +
        'ationClassName = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EX' +
        'GESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Redirector de puerto en modo usuario de Servi' +
        'cios de Escritorio remoto";'#10#9'CheckPoint = 0;'#10#9'CreationClassName ' +
        '= "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Description = "Pe' +
        'rmite la redirecci'#243'n de impresoras, unidades o puertos para cone' +
        'xiones RDP.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Redirect' +
        'or de puerto en modo usuario de Servicios de Escritorio remoto";' +
        #10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "UmRdpService"' +
        ';'#10#9'PathName = "C:\\Windows\\System32\\svchost.exe -k LocalSystem' +
        'NetworkRestricted -p";'#10#9'ProcessId = 2660;'#10#9'ServiceSpecificExitCo' +
        'de = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = TRUE;'#10#9'StartM' +
        'ode = "Manual";'#10#9'StartName = "localSystem";'#10#9'State = "Running";'#10 +
        #9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem' +
        '";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'}' +
        ';'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Dispositivo host de UPnP";'#10#9'CheckPoint = 0;'#10 +
        #9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;' +
        #10#9'Description = "Permite que los dispositivos UPnP se hospeden e' +
        'n el equipo. Si se detiene el servicio, todos los dispositivos U' +
        'PnP hospedados dejar'#225'n de funcionar y no se podr'#225' agregar ning'#250'n' +
        ' dispositivo hospedado adicional. Si se deshabilita este servici' +
        'o, no podr'#225'n iniciarse los servicios que dependan expl'#237'citamente' +
        ' del mismo.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Disposit' +
        'ivo host de UPnP";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 1077;'#10#9 +
        'Name = "upnphost";'#10#9'PathName = "C:\\Windows\\system32\\svchost.e' +
        'xe -k LocalServiceAndNoImpersonation -p";'#10#9'ProcessId = 0;'#10#9'Servi' +
        'ceSpecificExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started' +
        ' = FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName = "NT AUTHORITY\\Loc' +
        'alService";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationC' +
        'lassName = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEV' +
        'E";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Administrador de usuarios";'#10#9'CheckPoint = 0;'#10 +
        #9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;' +
        #10#9'Description = "El administrador de usuarios proporciona los co' +
        'mponentes de tiempo de ejecuci'#243'n necesarios para la interacci'#243'n ' +
        'con m'#250'ltiples usuarios. Si se detiene este servicio, es posible ' +
        'que algunas aplicaciones no funcionen correctamente.";'#10#9'DesktopI' +
        'nteract = FALSE;'#10#9'DisplayName = "Administrador de usuarios";'#10#9'Er' +
        'rorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "UserManager";'#10#9'Pa' +
        'thName = "C:\\Windows\\system32\\svchost.exe -k netsvcs -p";'#10#9'Pr' +
        'ocessId = 3100;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Sh' +
        'are Process";'#10#9'Started = TRUE;'#10#9'StartMode = "Auto";'#10#9'StartName =' +
        ' "LocalSystem";'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9'SystemCreat' +
        'ionClassName = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGE' +
        'STEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Servicio Orquestador de actualizaciones";'#10#9'Ch' +
        'eckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAuto' +
        'Start = TRUE;'#10#9'Description = "Administra las actualizaciones de ' +
        'Windows. Si se detiene, los dispositivos no podr'#225'n descargar ni ' +
        'instalar las actualizaciones m'#225's recientes.";'#10#9'DesktopInteract =' +
        ' FALSE;'#10#9'DisplayName = "Servicio Orquestador de actualizaciones"' +
        ';'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "UsoSvc";'#10#9'Pa' +
        'thName = "C:\\Windows\\system32\\svchost.exe -k netsvcs -p";'#10#9'Pr' +
        'ocessId = 1800;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Sh' +
        'are Process";'#10#9'Started = TRUE;'#10#9'StartMode = "Auto";'#10#9'StartName =' +
        ' "LocalSystem";'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9'SystemCreat' +
        'ionClassName = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGE' +
        'STEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio Volumetric Audio Compositor";'#10#9'Chec' +
        'kPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoSt' +
        'art = FALSE;'#10#9'Description = "Hospeda el an'#225'lisis espacial para l' +
        'a simulaci'#243'n de audio de la realidad mixta.";'#10#9'DesktopInteract =' +
        ' FALSE;'#10#9'DisplayName = "Servicio Volumetric Audio Compositor";'#10#9 +
        'ErrorControl = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "VacSvc";'#10#9'Pa' +
        'thName = "C:\\Windows\\System32\\svchost.exe -k LocalServiceNetw' +
        'orkRestricted -p";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode = 0;' +
        #10#9'ServiceType = "Own Process";'#10#9'Started = FALSE;'#10#9'StartMode = "M' +
        'anual";'#10#9'StartName = "NT AUTHORITY\\LocalService";'#10#9'State = "Sto' +
        'pped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_Compute' +
        'rSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint' +
        ' = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Administrador de credenciales";'#10#9'CheckPoint =' +
        ' 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart = FA' +
        'LSE;'#10#9'Description = "Proporciona un almacenamiento seguro y la r' +
        'ecuperaci'#243'n de credenciales para usuarios, aplicaciones y paquet' +
        'es de servicios de seguridad.";'#10#9'DesktopInteract = FALSE;'#10#9'Displ' +
        'ayName = "Administrador de credenciales";'#10#9'ErrorControl = "Norma' +
        'l";'#10#9'ExitCode = 0;'#10#9'Name = "VaultSvc";'#10#9'PathName = "C:\\Windows\' +
        '\system32\\lsass.exe";'#10#9'ProcessId = 848;'#10#9'ServiceSpecificExitCod' +
        'e = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = TRUE;'#10#9'StartMo' +
        'de = "Manual";'#10#9'StartName = "LocalSystem";'#10#9'State = "Running";'#10#9 +
        'Status = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem"' +
        ';'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};' +
        #10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "VirtualBox system service";'#10#9'CheckPoint = 0;' +
        #10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE' +
        ';'#10#9'Description = "Used as a COM server for VirtualBox API.";'#10#9'De' +
        'sktopInteract = FALSE;'#10#9'DisplayName = "VirtualBox system service' +
        '";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "VBoxSDS"' +
        ';'#10#9'PathName = "\"C:\\Program Files\\Oracle\\VirtualBox\\VBoxSDS.' +
        'exe\"";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceTy' +
        'pe = "Own Process";'#10#9'Started = FALSE;'#10#9'StartMode = "Manual";'#10#9'St' +
        'artName = "LocalSystem";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'Sy' +
        'stemCreationClassName = "Win32_ComputerSystem";'#10#9'SystemName = "E' +
        'UES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Disco virtual";'#10#9'CheckPoint = 0;'#10#9'CreationCl' +
        'assName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Descripti' +
        'on = "Proporciona servicios de administraci'#243'n para discos, vol'#250'm' +
        'enes, sistemas de archivos y matrices de almacenamiento.";'#10#9'Desk' +
        'topInteract = FALSE;'#10#9'DisplayName = "Disco virtual";'#10#9'ErrorContr' +
        'ol = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "vds";'#10#9'PathName = "C:\' +
        '\Windows\\System32\\vds.exe";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificEx' +
        'itCode = 0;'#10#9'ServiceType = "Own Process";'#10#9'Started = FALSE;'#10#9'Sta' +
        'rtMode = "Manual";'#10#9'StartName = "LocalSystem";'#10#9'State = "Stopped' +
        '";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSys' +
        'tem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0' +
        ';'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Interfaz de servicio invitado de Hyper-V";'#10#9 +
        'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAu' +
        'toStart = FALSE;'#10#9'Description = "Proporciona una interfaz para q' +
        'ue el host de Hyper-V interact'#250'e con servicios espec'#237'ficos que s' +
        'e ejecutan en la m'#225'quina virtual.";'#10#9'DesktopInteract = FALSE;'#10#9'D' +
        'isplayName = "Interfaz de servicio invitado de Hyper-V";'#10#9'ErrorC' +
        'ontrol = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "vmicguestinterface' +
        '";'#10#9'PathName = "C:\\Windows\\system32\\svchost.exe -k LocalSyste' +
        'mNetworkRestricted -p";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode' +
        ' = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = FALSE;'#10#9'StartMo' +
        'de = "Manual";'#10#9'StartName = "LocalSystem";'#10#9'State = "Stopped";'#10#9 +
        'Status = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem"' +
        ';'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};' +
        #10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio de latido de Hyper-V";'#10#9'CheckPoint ' +
        '= 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart = F' +
        'ALSE;'#10#9'Description = "Supervisa el estado de la m'#225'quina virtual ' +
        'mediante la notificaci'#243'n de un latido a intervalos regulares. Es' +
        'te servicio ayuda a identificar las m'#225'quinas virtuales en ejecuc' +
        'i'#243'n que dejaron de responder.";'#10#9'DesktopInteract = FALSE;'#10#9'Displ' +
        'ayName = "Servicio de latido de Hyper-V";'#10#9'ErrorControl = "Norma' +
        'l";'#10#9'ExitCode = 1077;'#10#9'Name = "vmicheartbeat";'#10#9'PathName = "C:\\' +
        'Windows\\system32\\svchost.exe -k ICService -p";'#10#9'ProcessId = 0;' +
        #10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9 +
        'Started = FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName = "LocalSyste' +
        'm";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName' +
        ' = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'Tag' +
        'Id = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio de intercambio de datos de Hyper-V"' +
        ';'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'Delaye' +
        'dAutoStart = FALSE;'#10#9'Description = "Ofrece un mecanismo para int' +
        'ercambiar datos entre la m'#225'quina virtual y el sistema operativo ' +
        'que se ejecuta en el equipo f'#237'sico.";'#10#9'DesktopInteract = FALSE;'#10 +
        #9'DisplayName = "Servicio de intercambio de datos de Hyper-V";'#10#9'E' +
        'rrorControl = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "vmickvpexchan' +
        'ge";'#10#9'PathName = "C:\\Windows\\system32\\svchost.exe -k LocalSys' +
        'temNetworkRestricted -p";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCo' +
        'de = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = FALSE;'#10#9'Start' +
        'Mode = "Manual";'#10#9'StartName = "LocalSystem";'#10#9'State = "Stopped";' +
        #10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSyste' +
        'm";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10 +
        '};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio de virtualizaci'#243'n de Escritorio rem' +
        'oto de Hyper-V";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Se' +
        'rvice";'#10#9'DelayedAutoStart = FALSE;'#10#9'Description = "Proporciona u' +
        'na plataforma para la comunicaci'#243'n entre la m'#225'quina virtual y el' +
        ' sistema operativo que se ejecuta en el equipo f'#237'sico.";'#10#9'Deskto' +
        'pInteract = FALSE;'#10#9'DisplayName = "Servicio de virtualizaci'#243'n de' +
        ' Escritorio remoto de Hyper-V";'#10#9'ErrorControl = "Normal";'#10#9'ExitC' +
        'ode = 1077;'#10#9'Name = "vmicrdv";'#10#9'PathName = "C:\\Windows\\system3' +
        '2\\svchost.exe -k ICService -p";'#10#9'ProcessId = 0;'#10#9'ServiceSpecifi' +
        'cExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = FALSE;' +
        #10#9'StartMode = "Manual";'#10#9'StartName = "LocalSystem";'#10#9'State = "St' +
        'opped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_Comput' +
        'erSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHin' +
        't = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio de cierre de invitado de Hyper-V";'#10 +
        #9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedA' +
        'utoStart = FALSE;'#10#9'Description = "Ofrece un mecanismo para apaga' +
        'r el sistema operativo de esta m'#225'quina virtual desde las interfa' +
        'ces de administraci'#243'n del equipo f'#237'sico.";'#10#9'DesktopInteract = FA' +
        'LSE;'#10#9'DisplayName = "Servicio de cierre de invitado de Hyper-V";' +
        #10#9'ErrorControl = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "vmicshutdo' +
        'wn";'#10#9'PathName = "C:\\Windows\\system32\\svchost.exe -k LocalSys' +
        'temNetworkRestricted -p";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCo' +
        'de = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = FALSE;'#10#9'Start' +
        'Mode = "Manual";'#10#9'StartName = "LocalSystem";'#10#9'State = "Stopped";' +
        #10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSyste' +
        'm";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10 +
        '};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio de sincronizaci'#243'n de hora de Hyper-' +
        'V";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'Dela' +
        'yedAutoStart = FALSE;'#10#9'Description = "Sincroniza la hora del sis' +
        'tema de esta m'#225'quina virtual con la hora del sistema del equipo ' +
        'f'#237'sico.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Servicio de ' +
        'sincronizaci'#243'n de hora de Hyper-V";'#10#9'ErrorControl = "Normal";'#10#9'E' +
        'xitCode = 1077;'#10#9'Name = "vmictimesync";'#10#9'PathName = "C:\\Windows' +
        '\\system32\\svchost.exe -k LocalServiceNetworkRestricted -p";'#10#9'P' +
        'rocessId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Shar' +
        'e Process";'#10#9'Started = FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName ' +
        '= "NT AUTHORITY\\LocalService";'#10#9'State = "Stopped";'#10#9'Status = "O' +
        'K";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'SystemNa' +
        'me = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio PowerShell Direct de Hyper-V";'#10#9'Che' +
        'ckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoS' +
        'tart = FALSE;'#10#9'Description = "Proporciona un mecanismo para admi' +
        'nistrar la m'#225'quina virtual con PowerShell a trav'#233's de una sesi'#243'n' +
        ' de m'#225'quina virtual sin una red virtual.";'#10#9'DesktopInteract = FA' +
        'LSE;'#10#9'DisplayName = "Servicio PowerShell Direct de Hyper-V";'#10#9'Er' +
        'rorControl = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "vmicvmsession"' +
        ';'#10#9'PathName = "C:\\Windows\\system32\\svchost.exe -k LocalSystem' +
        'NetworkRestricted -p";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode ' +
        '= 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = FALSE;'#10#9'StartMod' +
        'e = "Manual";'#10#9'StartName = "LocalSystem";'#10#9'State = "Stopped";'#10#9'S' +
        'tatus = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";' +
        #10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Solicitante de instant'#225'neas de volumen de Hy' +
        'per-V";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9 +
        'DelayedAutoStart = FALSE;'#10#9'Description = "Coordina las comunicac' +
        'iones que requieren el uso del Servicio de instant'#225'neas de volum' +
        'en para realizar copias de seguridad de las aplicaciones y los d' +
        'atos de esta m'#225'quina virtual desde el sistema operativo del equi' +
        'po f'#237'sico.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Solicitan' +
        'te de instant'#225'neas de volumen de Hyper-V";'#10#9'ErrorControl = "Norm' +
        'al";'#10#9'ExitCode = 1077;'#10#9'Name = "vmicvss";'#10#9'PathName = "C:\\Windo' +
        'ws\\system32\\svchost.exe -k LocalSystemNetworkRestricted -p";'#10#9 +
        'ProcessId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Sha' +
        're Process";'#10#9'Started = FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName' +
        ' = "LocalSystem";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCre' +
        'ationClassName = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EX' +
        'GESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Instant'#225'neas de volumen";'#10#9'CheckPoint = 0;'#10#9 +
        'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10 +
        #9'Description = "Administra e implementa Instant'#225'neas de volumen ' +
        'usadas para copias de seguridad y otros prop'#243'sitos. Si este serv' +
        'icio se detiene, las instant'#225'neas se deshabilitar'#225'n para la copi' +
        'a de seguridad y '#233'sta generar'#225' un error. Si este servicio est'#225' d' +
        'eshabilitado, se producir'#225' un error al iniciar cualquier servici' +
        'o que expl'#237'citamente dependa de '#233'l.";'#10#9'DesktopInteract = FALSE;'#10 +
        #9'DisplayName = "Instant'#225'neas de volumen";'#10#9'ErrorControl = "Norma' +
        'l";'#10#9'ExitCode = 1077;'#10#9'Name = "VSS";'#10#9'PathName = "C:\\Windows\\s' +
        'ystem32\\vssvc.exe";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode = ' +
        '0;'#10#9'ServiceType = "Own Process";'#10#9'Started = FALSE;'#10#9'StartMode = ' +
        '"Manual";'#10#9'StartName = "LocalSystem";'#10#9'State = "Stopped";'#10#9'Statu' +
        's = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'Sy' +
        'stemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Visual Studio Standard Collector Service 150' +
        '";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'Delay' +
        'edAutoStart = FALSE;'#10#9'Description = "Visual Studio Data Collecti' +
        'on Service. When running, this service collects real-time ETW ev' +
        'ents and processes them.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayNam' +
        'e = "Visual Studio Standard Collector Service 150";'#10#9'ErrorContro' +
        'l = "Ignore";'#10#9'ExitCode = 1077;'#10#9'Name = "VSStandardCollectorServ' +
        'ice150";'#10#9'PathName = "\"C:\\Program Files (x86)\\Microsoft Visua' +
        'l Studio\\Shared\\Common\\DiagnosticsHub.Collection.Service\\Sta' +
        'ndardCollector.Service.exe\"";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificE' +
        'xitCode = 0;'#10#9'ServiceType = "Own Process";'#10#9'Started = FALSE;'#10#9'St' +
        'artMode = "Manual";'#10#9'StartName = "LocalSystem";'#10#9'State = "Stoppe' +
        'd";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSy' +
        'stem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = ' +
        '0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Hora de Windows";'#10#9'CheckPoint = 0;'#10#9'CreationC' +
        'lassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Descript' +
        'ion = "Mantiene la sincronizaci'#243'n de fecha y hora en todos los c' +
        'lientes y servidores de la red. Si se detiene este servicio, no ' +
        'estar'#225' disponible la sincronizaci'#243'n de fecha y hora. Si se desha' +
        'bilita este servicio, no se podr'#225' iniciar ninguno de los servici' +
        'os que dependen expl'#237'citamente de '#233'l.";'#10#9'DesktopInteract = FALSE' +
        ';'#10#9'DisplayName = "Hora de Windows";'#10#9'ErrorControl = "Normal";'#10#9'E' +
        'xitCode = 0;'#10#9'Name = "W32Time";'#10#9'PathName = "C:\\Windows\\system' +
        '32\\svchost.exe -k LocalService";'#10#9'ProcessId = 1720;'#10#9'ServiceSpe' +
        'cificExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = TR' +
        'UE;'#10#9'StartMode = "Manual";'#10#9'StartName = "NT AUTHORITY\\LocalServ' +
        'ice";'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9'SystemCreationClassNa' +
        'me = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'T' +
        'agId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio de registro de W3C";'#10#9'CheckPoint = ' +
        '0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart = FAL' +
        'SE;'#10#9'Description = "Proporciona el registro de W3C para Internet' +
        ' Information Services (IIS). Si se detiene este servicio, el reg' +
        'istro de W3C configurado por IIS no funcionar'#225'.";'#10#9'DesktopIntera' +
        'ct = FALSE;'#10#9'DisplayName = "Servicio de registro de W3C";'#10#9'Error' +
        'Control = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "w3logsvc";'#10#9'PathN' +
        'ame = "C:\\Windows\\system32\\svchost.exe -k apphost";'#10#9'ProcessI' +
        'd = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Share Proce' +
        'ss";'#10#9'Started = FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName = "loca' +
        'lSystem";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationCla' +
        'ssName = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE"' +
        ';'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Windows Update Medic Service";'#10#9'CheckPoint =' +
        ' 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart = FA' +
        'LSE;'#10#9'Description = "Enables remediation and protection of Windo' +
        'ws Update components.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName =' +
        ' "Windows Update Medic Service";'#10#9'ErrorControl = "Normal";'#10#9'Exit' +
        'Code = 0;'#10#9'Name = "WaaSMedicSvc";'#10#9'PathName = "C:\\Windows\\syst' +
        'em32\\svchost.exe -k wusvcs -p";'#10#9'ProcessId = 0;'#10#9'ServiceSpecifi' +
        'cExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = FALSE;' +
        #10#9'StartMode = "Manual";'#10#9'StartName = "LocalSystem";'#10#9'State = "St' +
        'opped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_Comput' +
        'erSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHin' +
        't = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "WalletService";'#10#9'CheckPoint = 0;'#10#9'CreationCl' +
        'assName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Descripti' +
        'on = "Almacena objetos usados por los clientes de la cartera";'#10#9 +
        'DesktopInteract = FALSE;'#10#9'DisplayName = "WalletService";'#10#9'ErrorC' +
        'ontrol = "Ignore";'#10#9'ExitCode = 1077;'#10#9'Name = "WalletService";'#10#9'P' +
        'athName = "C:\\Windows\\System32\\svchost.exe -k appmodel -p";'#10#9 +
        'ProcessId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Sha' +
        're Process";'#10#9'Started = FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName' +
        ' = "LocalSystem";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCre' +
        'ationClassName = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EX' +
        'GESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "WarpJITSvc";'#10#9'CheckPoint = 0;'#10#9'CreationClass' +
        'Name = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Description ' +
        '= "Provides a JIT out of process service for WARP when running w' +
        'ith ACG enabled.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "War' +
        'pJITSvc";'#10#9'ErrorControl = "Ignore";'#10#9'ExitCode = 1077;'#10#9'Name = "W' +
        'arpJITSvc";'#10#9'PathName = "C:\\Windows\\System32\\svchost.exe -k L' +
        'ocalServiceNetworkRestricted";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificE' +
        'xitCode = 0;'#10#9'ServiceType = "Own Process";'#10#9'Started = FALSE;'#10#9'St' +
        'artMode = "Manual";'#10#9'StartName = "NT Authority\\LocalService";'#10#9 +
        'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "W' +
        'in32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = ' +
        '0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio WAS (Windows Process Activation Ser' +
        'vice)";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9 +
        'DelayedAutoStart = FALSE;'#10#9'Description = "El servicio WAS (Windo' +
        'ws Process Activation Service) proporciona la activaci'#243'n de proc' +
        'esos, administraci'#243'n de recursos y servicios de administraci'#243'n d' +
        'e estado para aplicaciones activadas por medio de mensajes.";'#10#9'D' +
        'esktopInteract = FALSE;'#10#9'DisplayName = "Servicio WAS (Windows Pr' +
        'ocess Activation Service)";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode ' +
        '= 1077;'#10#9'Name = "WAS";'#10#9'PathName = "C:\\Windows\\system32\\svcho' +
        'st.exe -k iissvcs";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode = 0' +
        ';'#10#9'ServiceType = "Share Process";'#10#9'Started = FALSE;'#10#9'StartMode =' +
        ' "Manual";'#10#9'StartName = "localSystem";'#10#9'State = "Stopped";'#10#9'Stat' +
        'us = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'S' +
        'ystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio del m'#243'dulo de copia de seguridad a ' +
        'nivel de bloque";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_S' +
        'ervice";'#10#9'DelayedAutoStart = FALSE;'#10#9'Description = "Copias de se' +
        'guridad de Windows usa el servicio WBENGINE para realizar operac' +
        'iones de copia de seguridad y recuperaci'#243'n. Si el usuario detien' +
        'e este servicio, es posible que se produzcan errores en la opera' +
        'ci'#243'n de copia de seguridad o de recuperaci'#243'n que se est'#233' ejecuta' +
        'ndo. Si se deshabilita este servicio, es posible que se deshabil' +
        'iten las operaciones de copia de seguridad y de recuperaci'#243'n que' +
        ' usan Copias de seguridad de Windows en este equipo.";'#10#9'DesktopI' +
        'nteract = FALSE;'#10#9'DisplayName = "Servicio del m'#243'dulo de copia de' +
        ' seguridad a nivel de bloque";'#10#9'ErrorControl = "Normal";'#10#9'ExitCo' +
        'de = 1077;'#10#9'Name = "wbengine";'#10#9'PathName = "\"C:\\Windows\\syste' +
        'm32\\wbengine.exe\"";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode =' +
        ' 0;'#10#9'ServiceType = "Own Process";'#10#9'Started = FALSE;'#10#9'StartMode =' +
        ' "Manual";'#10#9'StartName = "localSystem";'#10#9'State = "Stopped";'#10#9'Stat' +
        'us = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'S' +
        'ystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Servicio biom'#233'trico de Windows";'#10#9'CheckPoint ' +
        '= 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart = F' +
        'ALSE;'#10#9'Description = "El Servicio biom'#233'trico de Windows proporci' +
        'ona a las aplicaciones cliente la posibilidad de capturar, compa' +
        'rar, manipular y almacenar datos biom'#233'tricos sin obtener acceso ' +
        'directo a ninguna muestra ni hardware biom'#233'tricos. El servicio s' +
        'e hospeda en un proceso SVCHOST con privilegios.";'#10#9'DesktopInter' +
        'act = FALSE;'#10#9'DisplayName = "Servicio biom'#233'trico de Windows";'#10#9'E' +
        'rrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "WbioSrvc";'#10#9'Path' +
        'Name = "C:\\Windows\\system32\\svchost.exe -k WbioSvcGroup";'#10#9'Pr' +
        'ocessId = 4848;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Sh' +
        'are Process";'#10#9'Started = TRUE;'#10#9'StartMode = "Manual";'#10#9'StartName' +
        ' = "LocalSystem";'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9'SystemCre' +
        'ationClassName = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EX' +
        'GESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Administrador de conexiones de Windows";'#10#9'Che' +
        'ckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoS' +
        'tart = FALSE;'#10#9'Description = "Toma decisiones de conexi'#243'n/descon' +
        'exi'#243'n autom'#225'ticas en funci'#243'n de las opciones de conectividad de ' +
        'red disponibles actualmente para el equipo y permite administrar' +
        ' la conectividad de red bas'#225'ndose en la configuraci'#243'n de directi' +
        'vas de grupo.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Admini' +
        'strador de conexiones de Windows";'#10#9'ErrorControl = "Normal";'#10#9'Ex' +
        'itCode = 0;'#10#9'Name = "Wcmsvc";'#10#9'PathName = "C:\\Windows\\system32' +
        '\\svchost.exe -k LocalServiceNetworkRestricted -p";'#10#9'ProcessId =' +
        ' 4124;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Own Process' +
        '";'#10#9'Started = TRUE;'#10#9'StartMode = "Auto";'#10#9'StartName = "NT Author' +
        'ity\\LocalService";'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9'SystemC' +
        'reationClassName = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02' +
        'EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Registrador de configuraci'#243'n de Windows Conn' +
        'ect Now";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";' +
        #10#9'DelayedAutoStart = FALSE;'#10#9'Description = "WCNCSVC hospeda la c' +
        'onfiguraci'#243'n de Windows Connect Now, que es la implementaci'#243'n de' +
        ' Microsoft del protocolo WPS (Wi-Fi Protected Setup). Se usa par' +
        'a configurar las opciones de LAN inal'#225'mbrica para un punto de ac' +
        'ceso (AP) o un dispositivo Wi-Fi. El servicio se inicia mediante' +
        ' programaci'#243'n cuando es necesario.";'#10#9'DesktopInteract = FALSE;'#10#9 +
        'DisplayName = "Registrador de configuraci'#243'n de Windows Connect N' +
        'ow";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "wcncsv' +
        'c";'#10#9'PathName = "C:\\Windows\\System32\\svchost.exe -k LocalServ' +
        'iceAndNoImpersonation -p";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitC' +
        'ode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = FALSE;'#10#9'Star' +
        'tMode = "Manual";'#10#9'StartName = "NT AUTHORITY\\LocalService";'#10#9'St' +
        'ate = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win' +
        '32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;' +
        #10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Host del servicio de diagn'#243'stico";'#10#9'CheckPoin' +
        't = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart =' +
        ' FALSE;'#10#9'Description = "El Servicio de directivas de diagn'#243'stico' +
        ' usa el Host del servicio de diagn'#243'stico para hospedar los diagn' +
        #243'sticos que deben ejecutarse en un contexto de Servicio local. S' +
        'i se detiene este servicio, los diagn'#243'sticos que dependan de '#233'l ' +
        'dejar'#225'n de funcionar.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName =' +
        ' "Host del servicio de diagn'#243'stico";'#10#9'ErrorControl = "Normal";'#10#9 +
        'ExitCode = 0;'#10#9'Name = "WdiServiceHost";'#10#9'PathName = "C:\\Windows' +
        '\\System32\\svchost.exe -k LocalService -p";'#10#9'ProcessId = 5924;'#10 +
        #9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'S' +
        'tarted = TRUE;'#10#9'StartMode = "Manual";'#10#9'StartName = "NT AUTHORITY' +
        '\\LocalService";'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9'SystemCrea' +
        'tionClassName = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXG' +
        'ESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Host de sistema de diagn'#243'stico";'#10#9'CheckPoint' +
        ' = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart = ' +
        'FALSE;'#10#9'Description = "El Servicio de directivas de diagn'#243'stico ' +
        'usa el Host de sistema de diagn'#243'stico para hospedar los diagn'#243'st' +
        'icos que deben ejecutarse en un contexto de Sistema local. Si se' +
        ' detiene este servicio, los diagn'#243'sticos que dependan de '#233'l deja' +
        'r'#225'n de funcionar.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Ho' +
        'st de sistema de diagn'#243'stico";'#10#9'ErrorControl = "Normal";'#10#9'ExitCo' +
        'de = 0;'#10#9'Name = "WdiSystemHost";'#10#9'PathName = "C:\\Windows\\Syste' +
        'm32\\svchost.exe -k LocalSystemNetworkRestricted -p";'#10#9'ProcessId' +
        ' = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Share Proces' +
        's";'#10#9'Started = FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName = "Local' +
        'System";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClas' +
        'sName = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";' +
        #10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio de inspecci'#243'n de red de Antivirus d' +
        'e Windows Defender";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win3' +
        '2_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Description = "Ayuda a p' +
        'roteger contra intentos de intrusi'#243'n dirigidos a vulnerabilidade' +
        's conocidas o recientemente descubiertas en protocolos de red";'#10 +
        #9'DesktopInteract = FALSE;'#10#9'DisplayName = "Servicio de inspecci'#243'n' +
        ' de red de Antivirus de Windows Defender";'#10#9'ErrorControl = "Norm' +
        'al";'#10#9'ExitCode = 1077;'#10#9'Name = "WdNisSvc";'#10#9'PathName = "\"C:\\Pr' +
        'ogram Files\\Windows Defender\\NisSrv.exe\"";'#10#9'ProcessId = 0;'#10#9'S' +
        'erviceSpecificExitCode = 0;'#10#9'ServiceType = "Own Process";'#10#9'Start' +
        'ed = FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName = "NT AUTHORITY\\L' +
        'ocalService";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreatio' +
        'nClassName = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGEST' +
        'EVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Cliente web";'#10#9'CheckPoint = 0;'#10#9'CreationClas' +
        'sName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Description' +
        ' = "Habilita los programas basados en Windows para que creen, te' +
        'ngan acceso y modifiquen archivos basados en Internet. Si este s' +
        'ervicio se detiene, estas funciones no estar'#225'n disponibles. Si e' +
        'ste servicio est'#225' deshabilitado, cualquier servicio que expl'#237'cit' +
        'amente dependa de '#233'l no podr'#225' iniciarse.";'#10#9'DesktopInteract = FA' +
        'LSE;'#10#9'DisplayName = "Cliente web";'#10#9'ErrorControl = "Normal";'#10#9'Ex' +
        'itCode = 1077;'#10#9'Name = "WebClient";'#10#9'PathName = "C:\\Windows\\sy' +
        'stem32\\svchost.exe -k LocalService -p";'#10#9'ProcessId = 0;'#10#9'Servic' +
        'eSpecificExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started ' +
        '= FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName = "NT AUTHORITY\\Loca' +
        'lService";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationCl' +
        'assName = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE' +
        '";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Recopilador de eventos de Windows";'#10#9'CheckPo' +
        'int = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart' +
        ' = FALSE;'#10#9'Description = "Este servicio administra suscripciones' +
        ' persistentes a eventos desde or'#237'genes remotos que admiten el pr' +
        'otocolo WS-Management. Esto incluye registros de eventos de Wind' +
        'ows Vista, hardware y or'#237'genes de eventos con la interfaz IPMI h' +
        'abilitada. El servicio almacena los eventos reenviados en un reg' +
        'istro de eventos local. Si se detiene o deshabilita este servici' +
        'o, no podr'#225'n crearse suscripciones de eventos y no podr'#225'n acepta' +
        'rse los eventos reenviados.";'#10#9'DesktopInteract = FALSE;'#10#9'Display' +
        'Name = "Recopilador de eventos de Windows";'#10#9'ErrorControl = "Nor' +
        'mal";'#10#9'ExitCode = 1077;'#10#9'Name = "Wecsvc";'#10#9'PathName = "C:\\Windo' +
        'ws\\system32\\svchost.exe -k NetworkService -p";'#10#9'ProcessId = 0;' +
        #10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9 +
        'Started = FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName = "NT AUTHORI' +
        'TY\\NetworkService";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'System' +
        'CreationClassName = "Win32_ComputerSystem";'#10#9'SystemName = "EUES0' +
        '2EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio host de proveedor de cifrado de Win' +
        'dows";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'D' +
        'elayedAutoStart = FALSE;'#10#9'Description = "El servicio host de pro' +
        'veedor de cifrado de Windows sirve como intermediario para propo' +
        'rcionar funcionalidades de cifrado de proveedores de cifrado de ' +
        'terceros a los procesos que necesitan evaluar y aplicar directiv' +
        'as EAS. Si lo detiene, se ver'#225'n afectadas las comprobaciones de ' +
        'cumplimiento de EAS que han establecido las cuentas de correo co' +
        'nectadas";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Servicio ho' +
        'st de proveedor de cifrado de Windows";'#10#9'ErrorControl = "Normal"' +
        ';'#10#9'ExitCode = 1077;'#10#9'Name = "WEPHOSTSVC";'#10#9'PathName = "C:\\Windo' +
        'ws\\system32\\svchost.exe -k WepHostSvcGroup";'#10#9'ProcessId = 0;'#10#9 +
        'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'St' +
        'arted = FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName = "NT AUTHORITY' +
        '\\LocalService";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCrea' +
        'tionClassName = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXG' +
        'ESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Ayuda del Panel de control de Informes de pr' +
        'oblemas y soluciones";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Wi' +
        'n32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Description = "Este se' +
        'rvicio proporciona ayuda para ver, enviar y borrar los informes ' +
        'de problemas del nivel de sistema para el panel de control de lo' +
        's Informes de problemas y soluciones.";'#10#9'DesktopInteract = FALSE' +
        ';'#10#9'DisplayName = "Ayuda del Panel de control de Informes de prob' +
        'lemas y soluciones";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 1077;' +
        #10#9'Name = "wercplsupport";'#10#9'PathName = "C:\\Windows\\System32\\sv' +
        'chost.exe -k netsvcs -p";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCo' +
        'de = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = FALSE;'#10#9'Start' +
        'Mode = "Manual";'#10#9'StartName = "localSystem";'#10#9'State = "Stopped";' +
        #10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSyste' +
        'm";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10 +
        '};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio Informe de errores de Windows";'#10#9'Ch' +
        'eckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAuto' +
        'Start = FALSE;'#10#9'Description = "Permite informar de errores cuand' +
        'o los programas dejan de funcionar o responder y proporcionar la' +
        's soluciones existentes. Tambi'#233'n permite generar registros para ' +
        'servicios de diagn'#243'stico y reparaci'#243'n. Si se detiene este servic' +
        'io, es posible que los informes de errores no funcionen correcta' +
        'mente y que los resultados de los servicios de diagn'#243'stico y las' +
        ' reparaciones no se muestren.";'#10#9'DesktopInteract = FALSE;'#10#9'Displ' +
        'ayName = "Servicio Informe de errores de Windows";'#10#9'ErrorControl' +
        ' = "Ignore";'#10#9'ExitCode = 0;'#10#9'Name = "WerSvc";'#10#9'PathName = "C:\\W' +
        'indows\\System32\\svchost.exe -k WerSvcGroup";'#10#9'ProcessId = 0;'#10#9 +
        'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Own Process";'#10#9'Star' +
        'ted = FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName = "localSystem";'#10 +
        #9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "' +
        'Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId =' +
        ' 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio de administrador de conexiones con ' +
        'servicios Wi-Fi Direct";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "' +
        'Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Description = "Admin' +
        'istra las conexiones con servicios inal'#225'mbricos, incluidas bases' +
        ' y proyecciones inal'#225'mbricas.";'#10#9'DesktopInteract = FALSE;'#10#9'Displ' +
        'ayName = "Servicio de administrador de conexiones con servicios ' +
        'Wi-Fi Direct";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name' +
        ' = "WFDSConMgrSvc";'#10#9'PathName = "C:\\Windows\\system32\\svchost.' +
        'exe -k LocalServiceNetworkRestricted -p";'#10#9'ProcessId = 0;'#10#9'Servi' +
        'ceSpecificExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started' +
        ' = FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName = "NT AUTHORITY\\Loc' +
        'alService";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationC' +
        'lassName = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEV' +
        'E";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Eventos de adquisici'#243'n de im'#225'genes est'#225'ticas' +
        '";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'Delay' +
        'edAutoStart = FALSE;'#10#9'Description = "Inicia aplicaciones asociad' +
        'as con eventos de adquisici'#243'n de im'#225'genes est'#225'ticas.";'#10#9'DesktopI' +
        'nteract = FALSE;'#10#9'DisplayName = "Eventos de adquisici'#243'n de im'#225'ge' +
        'nes est'#225'ticas";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 1077;'#10#9'Nam' +
        'e = "WiaRpc";'#10#9'PathName = "C:\\Windows\\system32\\svchost.exe -k' +
        ' LocalSystemNetworkRestricted -p";'#10#9'ProcessId = 0;'#10#9'ServiceSpeci' +
        'ficExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = FALS' +
        'E;'#10#9'StartMode = "Manual";'#10#9'StartName = "LocalSystem";'#10#9'State = "' +
        'Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_Comp' +
        'uterSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitH' +
        'int = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio de Antivirus de Windows Defender";'#10 +
        #9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedA' +
        'utoStart = FALSE;'#10#9'Description = "Ayuda a proteger a los usuario' +
        's contra malware y otro software potencialmente no deseado";'#10#9'De' +
        'sktopInteract = FALSE;'#10#9'DisplayName = "Servicio de Antivirus de ' +
        'Windows Defender";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 1077;'#10#9 +
        'Name = "WinDefend";'#10#9'PathName = "\"C:\\Program Files\\Windows De' +
        'fender\\MsMpEng.exe\"";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode' +
        ' = 0;'#10#9'ServiceType = "Own Process";'#10#9'Started = FALSE;'#10#9'StartMode' +
        ' = "Manual";'#10#9'StartName = "LocalSystem";'#10#9'State = "Stopped";'#10#9'St' +
        'atus = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10 +
        #9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio de detecci'#243'n autom'#225'tica de proxy we' +
        'b WinHTTP";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service' +
        '";'#10#9'DelayedAutoStart = FALSE;'#10#9'Description = "WinHTTP implementa' +
        ' la pila HTTP de cliente y proporciona a los programadores una A' +
        'PI Win32 y un componente de automatizaci'#243'n COM para enviar solic' +
        'itudes HTTP y recibir respuestas. Adem'#225's, WinHTTP ofrece compati' +
        'bilidad con la detecci'#243'n autom'#225'tica de una configuraci'#243'n proxy m' +
        'ediante la implementaci'#243'n del protocolo de detecci'#243'n autom'#225'tica ' +
        'de proxy web (WPAD).";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = ' +
        '"Servicio de detecci'#243'n autom'#225'tica de proxy web WinHTTP";'#10#9'ErrorC' +
        'ontrol = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "WinHttpAutoProxySvc";' +
        #10#9'PathName = "C:\\Windows\\system32\\svchost.exe -k LocalService' +
        'NetworkRestricted -p";'#10#9'ProcessId = 2944;'#10#9'ServiceSpecificExitCo' +
        'de = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = TRUE;'#10#9'StartM' +
        'ode = "Manual";'#10#9'StartName = "NT AUTHORITY\\LocalService";'#10#9'Stat' +
        'e = "Running";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32' +
        '_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9 +
        'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = TRUE;'#10#9'AcceptStop = ' +
        'TRUE;'#10#9'Caption = "Instrumental de administraci'#243'n de Windows";'#10#9'C' +
        'heckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAut' +
        'oStart = FALSE;'#10#9'Description = "Proporciona una interfaz com'#250'n y' +
        ' un modelo de objeto para tener acceso a la informaci'#243'n de admin' +
        'istraci'#243'n acerca de un sistema operativo, dispositivos, aplicaci' +
        'ones y servicios. Si se detiene este servicio, la mayor'#237'a del so' +
        'ftware basado en Windows no funcionar'#225' correctamente. Si este se' +
        'rvicio est'#225' deshabilitado, cualquier servicio que expl'#237'citamente' +
        ' dependa de '#233'l no podr'#225' iniciarse.";'#10#9'DesktopInteract = FALSE;'#10#9 +
        'DisplayName = "Instrumental de administraci'#243'n de Windows";'#10#9'Erro' +
        'rControl = "Ignore";'#10#9'ExitCode = 0;'#10#9'Name = "Winmgmt";'#10#9'PathName' +
        ' = "C:\\Windows\\system32\\svchost.exe -k netsvcs -p";'#10#9'ProcessI' +
        'd = 3044;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Share Pr' +
        'ocess";'#10#9'Started = TRUE;'#10#9'StartMode = "Auto";'#10#9'StartName = "loca' +
        'lSystem";'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9'SystemCreationCla' +
        'ssName = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE"' +
        ';'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Administraci'#243'n remota de Windows (WS-Managem' +
        'ent)";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'D' +
        'elayedAutoStart = TRUE;'#10#9'Description = "El servicio Administraci' +
        #243'n remota de Windows (WinRM) implementa el protocolo WS-Manageme' +
        'nt para la administraci'#243'n remota. WS-Management es un protocolo ' +
        'est'#225'ndar de servicios web usado para la administraci'#243'n remota de' +
        ' software y hardware. El servicio WinRM escucha solicitudes de W' +
        'S-Management y las procesa en la red. Para tal fin, debe configu' +
        'rarse con una escucha que use la herramienta de l'#237'nea de comando' +
        's winrm.cmd o a trav'#233's de la directiva de grupo. El servicio Win' +
        'RM ofrece acceso a los datos WMI y, si est'#225' en ejecuci'#243'n, permit' +
        'e la recopilaci'#243'n y suscripci'#243'n a eventos. Los mensajes WinRM us' +
        'an HTTP y HTTPS como transporte. El servicio WinRM no depende de' +
        ' IIS pero est'#225' preconfigurado para compartir un puerto con IIS e' +
        'n el mismo equipo. El servicio WinRM reserva el prefijo de URL /' +
        'wsman. Para evitar conflictos con IIS, los administradores deben' +
        ' asegurarse de que ning'#250'n sitio web hospedado en IIS use el pref' +
        'ijo de URL /wsman.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "A' +
        'dministraci'#243'n remota de Windows (WS-Management)";'#10#9'ErrorControl ' +
        '= "Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "WinRM";'#10#9'PathName = "C:\\' +
        'Windows\\System32\\svchost.exe -k NetworkService -p";'#10#9'ProcessId' +
        ' = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Share Proces' +
        's";'#10#9'Started = FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName = "NT AU' +
        'THORITY\\NetworkService";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'S' +
        'ystemCreationClassName = "Win32_ComputerSystem";'#10#9'SystemName = "' +
        'EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio de Windows Insider";'#10#9'CheckPoint = ' +
        '0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart = FAL' +
        'SE;'#10#9'Description = "Proporciona compatibilidad de infraestructur' +
        'a para el programa Windows Insider. Este servicio debe permanece' +
        'r habilitado para el programa Windows Insider funcionar.";'#10#9'Desk' +
        'topInteract = FALSE;'#10#9'DisplayName = "Servicio de Windows Insider' +
        '";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "wisvc";'#10#9'Pa' +
        'thName = "C:\\Windows\\system32\\svchost.exe -k netsvcs -p";'#10#9'Pr' +
        'ocessId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Share' +
        ' Process";'#10#9'Started = FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName =' +
        ' "LocalSystem";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreat' +
        'ionClassName = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGE' +
        'STEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "WKE - Servicio de Integraci'#243'n Local";'#10#9'CheckP' +
        'oint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStar' +
        't = FALSE;'#10#9'Description = "Administra la ejecuci'#243'n del Servidor ' +
        'de Integraci'#243'n Local para aplicaciones Wolters Kluwer";'#10#9'Desktop' +
        'Interact = FALSE;'#10#9'DisplayName = "WKE - Servicio de Integraci'#243'n ' +
        'Local";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "WKE.SI' +
        'L.Service";'#10#9'PathName = "\"C:\\Program Files (x86)\\Wolters Kluw' +
        'er\\WKE.LServer\\SIL\\WKE.SIL.Service.exe\"";'#10#9'ProcessId = 5356;' +
        #10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Own Process";'#10#9'St' +
        'arted = TRUE;'#10#9'StartMode = "Auto";'#10#9'StartName = "LocalSystem";'#10#9 +
        'State = "Running";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "W' +
        'in32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = ' +
        '0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "WKE - Gestor de Licencias";'#10#9'CheckPoint = 0;'#10 +
        #9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;' +
        #10#9'Description = "Servicio para el control del servidor y la actu' +
        'alizaci'#243'n del licenciamiento para aplicaciones Wolters Kluwer";'#10 +
        #9'DesktopInteract = FALSE;'#10#9'DisplayName = "WKE - Gestor de Licenc' +
        'ias";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "WKEL.Ser' +
        'vice";'#10#9'PathName = "\"C:\\Program Files (x86)\\Wolters Kluwer\\W' +
        'KE.LServer\\WKE.Licensing.Local.Service.exe\"";'#10#9'ProcessId = 540' +
        '0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Own Process";'#10#9 +
        'Started = TRUE;'#10#9'StartMode = "Auto";'#10#9'StartName = "LocalSystem";' +
        #10#9'State = "Running";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = ' +
        '"Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId ' +
        '= 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Configuraci'#243'n autom'#225'tica de WLAN";'#10#9'CheckPoin' +
        't = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart =' +
        ' FALSE;'#10#9'Description = "El servicio WLANSVC proporciona la l'#243'gic' +
        'a necesaria para configurar, detectar, conectarse y desconectars' +
        'e de una red de '#225'rea local inal'#225'mbrica (WLAN), tal y como se def' +
        'ine en los est'#225'ndares IEEE 802.11. Tambi'#233'n incluye la l'#243'gica nec' +
        'esaria para convertir el equipo en un punto de acceso de softwar' +
        'e de modo que otros dispositivos puedan conectarse a '#233'l de forma' +
        ' inal'#225'mbrica mediante un adaptador de WLAN compatible. Detener o' +
        ' deshabilitar el servicio WLANSVC har'#225' que todos los adaptadores' +
        ' de WLAN del equipo sean inaccesibles desde la interfaz de usuar' +
        'io de red de Windows. Se recomienda encarecidamente mantener el ' +
        'servicio WLANSVC en ejecuci'#243'n si el equipo dispone de un adaptad' +
        'or de WLAN.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Configur' +
        'aci'#243'n autom'#225'tica de WLAN";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode =' +
        ' 0;'#10#9'Name = "WlanSvc";'#10#9'PathName = "C:\\Windows\\system32\\svcho' +
        'st.exe -k LocalSystemNetworkRestricted -p";'#10#9'ProcessId = 4400;'#10#9 +
        'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Own Process";'#10#9'Star' +
        'ted = TRUE;'#10#9'StartMode = "Auto";'#10#9'StartName = "LocalSystem";'#10#9'St' +
        'ate = "Running";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win' +
        '32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;' +
        #10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Ayudante para el inicio de sesi'#243'n de cuenta ' +
        'Microsoft";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service' +
        '";'#10#9'DelayedAutoStart = FALSE;'#10#9'Description = "Permite al usuario' +
        ' iniciar sesi'#243'n mediante los servicios de identidad de cuentas M' +
        'icrosoft. Si se detuvo este servicio, los usuarios no podr'#225'n ini' +
        'ciar sesi'#243'n en el equipo con sus cuentas Microsoft.";'#10#9'DesktopIn' +
        'teract = FALSE;'#10#9'DisplayName = "Ayudante para el inicio de sesi'#243 +
        'n de cuenta Microsoft";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;' +
        #10#9'Name = "wlidsvc";'#10#9'PathName = "C:\\Windows\\system32\\svchost.' +
        'exe -k netsvcs -p";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode = 0' +
        ';'#10#9'ServiceType = "Share Process";'#10#9'Started = FALSE;'#10#9'StartMode =' +
        ' "Manual";'#10#9'StartName = "LocalSystem";'#10#9'State = "Stopped";'#10#9'Stat' +
        'us = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'S' +
        'ystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio de asistente para perfil local";'#10#9'C' +
        'heckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAut' +
        'oStart = FALSE;'#10#9'Description = "Este servicio proporciona admini' +
        'straci'#243'n de perfil para los m'#243'dulos de identidad del suscriptor"' +
        ';'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Servicio de asistent' +
        'e para perfil local";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 1077' +
        ';'#10#9'Name = "wlpasvc";'#10#9'PathName = "C:\\Windows\\system32\\svchost' +
        '.exe -k LocalServiceNetworkRestricted -p";'#10#9'ProcessId = 0;'#10#9'Serv' +
        'iceSpecificExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Starte' +
        'd = FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName = "NT Authority\\Lo' +
        'calService";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreation' +
        'ClassName = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTE' +
        'VE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio de administraci'#243'n de Windows";'#10#9'Che' +
        'ckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoS' +
        'tart = FALSE;'#10#9'Description = "Realiza la gesti'#243'n, incluyendo act' +
        'ividades de aprovisionamiento e inscripci'#243'n";'#10#9'DesktopInteract =' +
        ' FALSE;'#10#9'DisplayName = "Servicio de administraci'#243'n de Windows";'#10 +
        #9'ErrorControl = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "WManSvc";'#10#9 +
        'PathName = "C:\\Windows\\system32\\svchost.exe -k netsvcs -p";'#10#9 +
        'ProcessId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Sha' +
        're Process";'#10#9'Started = FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName' +
        ' = "LocalSystem";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCre' +
        'ationClassName = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EX' +
        'GESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Adaptador de rendimiento de WMI";'#10#9'CheckPoin' +
        't = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart =' +
        ' FALSE;'#10#9'Description = "Proporciona informaci'#243'n sobre la bibliot' +
        'eca de rendimiento de proveedores del servicio Instrumental de a' +
        'dministraci'#243'n de Windows (WMI) a clientes de la red. Este servic' +
        'io solo se ejecuta si el Ayudante de datos de rendimiento est'#225' a' +
        'ctivado.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Adaptador d' +
        'e rendimiento de WMI";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10 +
        #9'Name = "wmiApSrv";'#10#9'PathName = "C:\\Windows\\system32\\wbem\\Wm' +
        'iApSrv.exe";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'Serv' +
        'iceType = "Own Process";'#10#9'Started = FALSE;'#10#9'StartMode = "Manual"' +
        ';'#10#9'StartName = "localSystem";'#10#9'State = "Stopped";'#10#9'Status = "OK"' +
        ';'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'SystemName' +
        ' = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio de uso compartido de red del Reprod' +
        'uctor de Windows Media";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "' +
        'Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Description = "Compa' +
        'rte las bibliotecas del Reproductor de Windows Media con otros d' +
        'ispositivos multimedia  y reproductores en red mediante Plug and' +
        ' Play universal.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Ser' +
        'vicio de uso compartido de red del Reproductor de Windows Media"' +
        ';'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "WMPNetwor' +
        'kSvc";'#10#9'PathName = "\"C:\\Program Files\\Windows Media Player\\w' +
        'mpnetwk.exe\"";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'S' +
        'erviceType = "Own Process";'#10#9'Started = FALSE;'#10#9'StartMode = "Manu' +
        'al";'#10#9'StartName = "NT AUTHORITY\\NetworkService";'#10#9'State = "Stop' +
        'ped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_Computer' +
        'System";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint ' +
        '= 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Carpetas de trabajo";'#10#9'CheckPoint = 0;'#10#9'Crea' +
        'tionClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Des' +
        'cription = "Este servicio sincroniza archivos con el servidor de' +
        ' Carpetas de trabajo, lo que le permite usar los archivos en cua' +
        'lquiera de los equipos y dispositivos en los que configur'#243' Carpe' +
        'tas de trabajo.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Carp' +
        'etas de trabajo";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 1077;'#10#9'N' +
        'ame = "workfolderssvc";'#10#9'PathName = "C:\\Windows\\System32\\svch' +
        'ost.exe -k LocalService -p";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExi' +
        'tCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = FALSE;'#10#9'St' +
        'artMode = "Manual";'#10#9'StartName = "NT AUTHORITY\\LocalService";'#10#9 +
        'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "W' +
        'in32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = ' +
        '0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Control parental";'#10#9'CheckPoint = 0;'#10#9'Creatio' +
        'nClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Descri' +
        'ption = "Aplica el control parental a las cuentas infantiles de ' +
        'Windows. Si este servicio se detiene o deshabilita, no se puede ' +
        'aplicar el control parental.";'#10#9'DesktopInteract = FALSE;'#10#9'Displa' +
        'yName = "Control parental";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode ' +
        '= 1077;'#10#9'Name = "WpcMonSvc";'#10#9'PathName = "C:\\Windows\\system32\' +
        '\svchost.exe -k LocalService";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificE' +
        'xitCode = 0;'#10#9'ServiceType = "Own Process";'#10#9'Started = FALSE;'#10#9'St' +
        'artMode = "Manual";'#10#9'StartName = "LocalSystem";'#10#9'State = "Stoppe' +
        'd";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSy' +
        'stem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = ' +
        '0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio enumerador de dispositivos port'#225'til' +
        'es";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'Del' +
        'ayedAutoStart = FALSE;'#10#9'Description = "Exige el cumplimiento de ' +
        'directivas de grupo para dispositivos extra'#237'bles de almacenamien' +
        'to. Habilita aplicaciones como Windows Media Player y Asistente ' +
        'para importaci'#243'n de im'#225'genes para transferir y sincronizador con' +
        'tenido mediante el uso de dispositivos de almacenamiento.";'#10#9'Des' +
        'ktopInteract = FALSE;'#10#9'DisplayName = "Servicio enumerador de dis' +
        'positivos port'#225'tiles";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10 +
        #9'Name = "WPDBusEnum";'#10#9'PathName = "C:\\Windows\\system32\\svchos' +
        't.exe -k LocalSystemNetworkRestricted";'#10#9'ProcessId = 0;'#10#9'Service' +
        'SpecificExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started =' +
        ' FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName = "LocalSystem";'#10#9'Stat' +
        'e = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32' +
        '_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9 +
        'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Servicio del sistema de notificaciones de ins' +
        'erci'#243'n de Windows";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32' +
        '_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Description = "Este servi' +
        'cio se ejecuta en la sesi'#243'n 0 y aloja el proveedor de conexi'#243'n y' +
        ' la plataforma de notificaciones que administra la conexi'#243'n entr' +
        'e el dispositivo y el servidor WNS.";'#10#9'DesktopInteract = FALSE;'#10 +
        #9'DisplayName = "Servicio del sistema de notificaciones de inserc' +
        'i'#243'n de Windows";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name ' +
        '= "WpnService";'#10#9'PathName = "C:\\Windows\\system32\\svchost.exe ' +
        '-k netsvcs -p";'#10#9'ProcessId = 5388;'#10#9'ServiceSpecificExitCode = 0;' +
        #10#9'ServiceType = "Share Process";'#10#9'Started = TRUE;'#10#9'StartMode = "' +
        'Auto";'#10#9'StartName = "LocalSystem";'#10#9'State = "Running";'#10#9'Status =' +
        ' "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'Syste' +
        'mName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Centro de seguridad";'#10#9'CheckPoint = 0;'#10#9'Creat' +
        'ionClassName = "Win32_Service";'#10#9'DelayedAutoStart = TRUE;'#10#9'Descr' +
        'iption = "El servicio WSCSVC (Centro de seguridad de Windows) su' +
        'pervisa e informa acerca de la configuraci'#243'n de mantenimiento de' +
        ' seguridad del equipo. La configuraci'#243'n de mantenimiento incluye' +
        ' la configuraci'#243'n de firewall (activado o desactivado), antiviru' +
        's (activado, desactivado o sin actualizar), anti spyware (activa' +
        'do, desactivado o sin actualizar), Windows Update (descargar e i' +
        'nstalar actualizaciones autom'#225'ticamente o manualmente), Control ' +
        'de cuentas de usuario (activado o desactivado) e Internet (recom' +
        'endada o no recomendada). El servicio proporciona unas API de CO' +
        'M para que los fabricantes de software independientes puedan reg' +
        'istrar el estado de sus productos en el servicio Centro de segur' +
        'idad. La interfaz de usuario de Seguridad y mantenimiento usa el' +
        ' servicio para proporcionar alertas de la bandeja del sistema y ' +
        'una vista gr'#225'fica de los estados de mantenimiento de seguridad e' +
        'n el panel de control de Seguridad y mantenimiento. Protecci'#243'n d' +
        'e acceso a redes (NAP) usa el servicio para informar sobre los e' +
        'stados de mantenimiento de seguridad de los clientes al Servidor' +
        ' de directivas de redes de NAP para tomar decisiones de cuarente' +
        'na de red. El servicio tambi'#233'n tiene una API p'#250'blica que permite' +
        ' a los consumidores externos recuperar mediante programaci'#243'n el ' +
        'estado de mantenimiento de seguridad agregado del sistema.";'#10#9'De' +
        'sktopInteract = FALSE;'#10#9'DisplayName = "Centro de seguridad";'#10#9'Er' +
        'rorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "wscsvc";'#10#9'PathNam' +
        'e = "C:\\Windows\\System32\\svchost.exe -k LocalServiceNetworkRe' +
        'stricted -p";'#10#9'ProcessId = 19936;'#10#9'ServiceSpecificExitCode = 0;'#10 +
        #9'ServiceType = "Share Process";'#10#9'Started = TRUE;'#10#9'StartMode = "A' +
        'uto";'#10#9'StartName = "NT AUTHORITY\\LocalService";'#10#9'State = "Runni' +
        'ng";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerS' +
        'ystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint =' +
        ' 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Windows Search";'#10#9'CheckPoint = 0;'#10#9'CreationCl' +
        'assName = "Win32_Service";'#10#9'DelayedAutoStart = TRUE;'#10#9'Descriptio' +
        'n = "Proporciona indizaci'#243'n de contenido, almacenamiento en cach' +
        #233' de propiedades y resultados de b'#250'squeda para archivos, correo ' +
        'electr'#243'nico y otro tipo de contenido.";'#10#9'DesktopInteract = FALSE' +
        ';'#10#9'DisplayName = "Windows Search";'#10#9'ErrorControl = "Normal";'#10#9'Ex' +
        'itCode = 0;'#10#9'Name = "WSearch";'#10#9'PathName = "C:\\Windows\\system3' +
        '2\\SearchIndexer.exe /Embedding";'#10#9'ProcessId = 12456;'#10#9'ServiceSp' +
        'ecificExitCode = 0;'#10#9'ServiceType = "Own Process";'#10#9'Started = TRU' +
        'E;'#10#9'StartMode = "Auto";'#10#9'StartName = "LocalSystem";'#10#9'State = "Ru' +
        'nning";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_Comput' +
        'erSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHin' +
        't = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Windows Update";'#10#9'CheckPoint = 0;'#10#9'CreationC' +
        'lassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Descript' +
        'ion = "Habilita la detecci'#243'n, descarga e instalaci'#243'n de actualiz' +
        'aciones de Windows y otros programas. Si se deshabilita este ser' +
        'vicio, los usuarios de este equipo no podr'#225'n usar Windows Update' +
        ' ni su funci'#243'n de actualizaci'#243'n autom'#225'tica y los programas no po' +
        'dr'#225'n usar la API del Agente de Windows Update (WUA).";'#10#9'DesktopI' +
        'nteract = FALSE;'#10#9'DisplayName = "Windows Update";'#10#9'ErrorControl ' +
        '= "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "wuauserv";'#10#9'PathName = "C:\\' +
        'Windows\\system32\\svchost.exe -k netsvcs -p";'#10#9'ProcessId = 0;'#10#9 +
        'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'St' +
        'arted = FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName = "LocalSystem"' +
        ';'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName =' +
        ' "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId' +
        ' = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Configuraci'#243'n autom'#225'tica de WWAN";'#10#9'CheckPoi' +
        'nt = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart ' +
        '= FALSE;'#10#9'Description = "Este servicio administra conexiones y a' +
        'daptadores de m'#243'dulos incrustados/de tarjeta de datos (GSM y CDM' +
        'A) de banda ancha m'#243'vil mediante la configuraci'#243'n autom'#225'tica de ' +
        'redes. S recomienda encarecidamente mantener este servicio en ej' +
        'ecuci'#243'n para obtener una mejor experiencia de usuario de los dis' +
        'positivos de banda ancha m'#243'vil.";'#10#9'DesktopInteract = FALSE;'#10#9'Dis' +
        'playName = "Configuraci'#243'n autom'#225'tica de WWAN";'#10#9'ErrorControl = "' +
        'Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "WwanSvc";'#10#9'PathName = "C:\\W' +
        'indows\\system32\\svchost.exe -k LocalSystemNetworkRestricted -p' +
        '";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = ' +
        '"Share Process";'#10#9'Started = FALSE;'#10#9'StartMode = "Manual";'#10#9'Start' +
        'Name = "localSystem";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'Syste' +
        'mCreationClassName = "Win32_ComputerSystem";'#10#9'SystemName = "EUES' +
        '02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Administraci'#243'n de autenticaci'#243'n de Xbox Live' +
        '";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'Delay' +
        'edAutoStart = FALSE;'#10#9'Description = "Proporciona servicios de au' +
        'tenticaci'#243'n y autorizaci'#243'n para interactuar con Xbox Live. Si se' +
        ' detiene este servicio puede que algunas aplicaciones no funcion' +
        'en correctamente.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Ad' +
        'ministraci'#243'n de autenticaci'#243'n de Xbox Live";'#10#9'ErrorControl = "No' +
        'rmal";'#10#9'ExitCode = 0;'#10#9'Name = "XblAuthManager";'#10#9'PathName = "C:\' +
        '\Windows\\system32\\svchost.exe -k netsvcs -p";'#10#9'ProcessId = 0;'#10 +
        #9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'S' +
        'tarted = FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName = "LocalSystem' +
        '";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName ' +
        '= "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagI' +
        'd = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Partida guardada en Xbox Live";'#10#9'CheckPoint ' +
        '= 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart = F' +
        'ALSE;'#10#9'Description = "Este servicio sincroniza los datos guardad' +
        'os para los juegos que pueden guardarse en Xbox Live. Si se deti' +
        'ene el servicio, la partida guardada no se cargar'#225' a, o descarga' +
        'r'#225' desde, Xbox Live.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = ' +
        '"Partida guardada en Xbox Live";'#10#9'ErrorControl = "Normal";'#10#9'Exit' +
        'Code = 1077;'#10#9'Name = "XblGameSave";'#10#9'PathName = "C:\\Windows\\sy' +
        'stem32\\svchost.exe -k netsvcs -p";'#10#9'ProcessId = 0;'#10#9'ServiceSpec' +
        'ificExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = FAL' +
        'SE;'#10#9'StartMode = "Manual";'#10#9'StartName = "LocalSystem";'#10#9'State = ' +
        '"Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_Com' +
        'puterSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'Wait' +
        'Hint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Xbox Accessory Management Service";'#10#9'CheckPo' +
        'int = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart' +
        ' = FALSE;'#10#9'Description = "This service manages connected Xbox Ac' +
        'cessories.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Xbox Acce' +
        'ssory Management Service";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode =' +
        ' 1077;'#10#9'Name = "XboxGipSvc";'#10#9'PathName = "C:\\Windows\\system32\' +
        '\svchost.exe -k netsvcs -p";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExi' +
        'tCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = FALSE;'#10#9'St' +
        'artMode = "Manual";'#10#9'StartName = "LocalSystem";'#10#9'State = "Stoppe' +
        'd";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSy' +
        'stem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = ' +
        '0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio de red de Xbox Live";'#10#9'CheckPoint =' +
        ' 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart = FA' +
        'LSE;'#10#9'Description = "Este servicio presta soporte a la interfaz ' +
        'de programaci'#243'n de aplicaciones Windows.Networking.XboxLive.";'#10#9 +
        'DesktopInteract = FALSE;'#10#9'DisplayName = "Servicio de red de Xbox' +
        ' Live";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "Xbo' +
        'xNetApiSvc";'#10#9'PathName = "C:\\Windows\\system32\\svchost.exe -k ' +
        'netsvcs -p";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'Serv' +
        'iceType = "Share Process";'#10#9'Started = FALSE;'#10#9'StartMode = "Manua' +
        'l";'#10#9'StartName = "LocalSystem";'#10#9'State = "Stopped";'#10#9'Status = "O' +
        'K";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'SystemNa' +
        'me = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "XTUOCDriverService";'#10#9'CheckPoint = 0;'#10#9'Creati' +
        'onClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Descr' +
        'iption = "Intel(R) Overclocking Component Service";'#10#9'DesktopInte' +
        'ract = FALSE;'#10#9'DisplayName = "XTUOCDriverService";'#10#9'ErrorControl' +
        ' = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "XTU3SERVICE";'#10#9'PathName = "' +
        'C:\\Windows\\SysWOW64\\XtuService.exe";'#10#9'ProcessId = 5800;'#10#9'Serv' +
        'iceSpecificExitCode = 0;'#10#9'ServiceType = "Own Process";'#10#9'Started ' +
        '= TRUE;'#10#9'StartMode = "Auto";'#10#9'StartName = "LocalSystem";'#10#9'State ' +
        '= "Running";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_C' +
        'omputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'Wa' +
        'itHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Agent Activation Runtime_e1b09";'#10#9'CheckPoint' +
        ' = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart = ' +
        'FALSE;'#10#9'Description = "Runtime for activating conversational age' +
        'nt applications";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Agen' +
        't Activation Runtime_e1b09";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode' +
        ' = 1077;'#10#9'Name = "AarSvc_e1b09";'#10#9'PathName = "C:\\Windows\\syste' +
        'm32\\svchost.exe -k AarSvcGroup -p";'#10#9'ProcessId = 0;'#10#9'ServiceSpe' +
        'cificExitCode = 0;'#10#9'ServiceType = "Unknown";'#10#9'Started = FALSE;'#10#9 +
        'StartMode = "Manual";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'Syste' +
        'mCreationClassName = "Win32_ComputerSystem";'#10#9'SystemName = "EUES' +
        '02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio de usuario de difusi'#243'n y GameDVR_e1' +
        'b09";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'De' +
        'layedAutoStart = FALSE;'#10#9'Description = "Este servicio de usuario' +
        ' se usa para grabaciones de juegos y difusiones en directo.";'#10#9'D' +
        'esktopInteract = FALSE;'#10#9'DisplayName = "Servicio de usuario de d' +
        'ifusi'#243'n y GameDVR_e1b09";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = ' +
        '1077;'#10#9'Name = "BcastDVRUserService_e1b09";'#10#9'PathName = "C:\\Wind' +
        'ows\\system32\\svchost.exe -k BcastDVRUserService";'#10#9'ProcessId =' +
        ' 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Unknown";'#10#9'Sta' +
        'rted = FALSE;'#10#9'StartMode = "Manual";'#10#9'State = "Stopped";'#10#9'Status' +
        ' = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'Sys' +
        'temName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Servicio de soporte t'#233'cnico de usuario de Blu' +
        'etooth_e1b09";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Serv' +
        'ice";'#10#9'DelayedAutoStart = FALSE;'#10#9'Description = "El servicio de ' +
        'usuario de Bluetooth permite el funcionamiento correcto de carac' +
        'ter'#237'sticas de Bluetooth pertinentes para cada sesi'#243'n de usuario.' +
        '";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Servicio de soporte' +
        ' t'#233'cnico de usuario de Bluetooth_e1b09";'#10#9'ErrorControl = "Normal' +
        '";'#10#9'ExitCode = 0;'#10#9'Name = "BluetoothUserService_e1b09";'#10#9'PathNam' +
        'e = "C:\\Windows\\system32\\svchost.exe -k BthAppGroup -p";'#10#9'Pro' +
        'cessId = 5816;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Unk' +
        'nown";'#10#9'Started = TRUE;'#10#9'StartMode = "Manual";'#10#9'State = "Running' +
        '";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSys' +
        'tem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0' +
        ';'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "CaptureService_e1b09";'#10#9'CheckPoint = 0;'#10#9'Cre' +
        'ationClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'De' +
        'scription = "Habilita la funcionalidad de captura de pantalla op' +
        'cional para las aplicaciones que llaman a la API Windows.Graphic' +
        's.Capture.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "CaptureSe' +
        'rvice_e1b09";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name ' +
        '= "CaptureService_e1b09";'#10#9'PathName = "C:\\Windows\\system32\\sv' +
        'chost.exe -k LocalService -p";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificE' +
        'xitCode = 0;'#10#9'ServiceType = "Unknown";'#10#9'Started = FALSE;'#10#9'StartM' +
        'ode = "Manual";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreat' +
        'ionClassName = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGE' +
        'STEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Servicio de usuario del portapapeles_e1b09";'#10 +
        #9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedA' +
        'utoStart = FALSE;'#10#9'Description = "Este servicio de usuario se ut' +
        'iliza para escenarios de portapapeles";'#10#9'DesktopInteract = FALSE' +
        ';'#10#9'DisplayName = "Servicio de usuario del portapapeles_e1b09";'#10#9 +
        'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "cbdhsvc_e1b09";' +
        #10#9'PathName = "C:\\Windows\\system32\\svchost.exe -k ClipboardSvc' +
        'Group -p";'#10#9'ProcessId = 12408;'#10#9'ServiceSpecificExitCode = 0;'#10#9'Se' +
        'rviceType = "Unknown";'#10#9'Started = TRUE;'#10#9'StartMode = "Manual";'#10#9 +
        'State = "Running";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "W' +
        'in32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = ' +
        '0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Servicio de usuario de plataforma de disposit' +
        'ivos conectados_e1b09";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "W' +
        'in32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Description = "Este s' +
        'ervicio de usuario se usa para los escenarios de la plataforma d' +
        'e dispositivos conectados";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayNa' +
        'me = "Servicio de usuario de plataforma de dispositivos conectad' +
        'os_e1b09";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "CDP' +
        'UserSvc_e1b09";'#10#9'PathName = "C:\\Windows\\system32\\svchost.exe ' +
        '-k UnistackSvcGroup";'#10#9'ProcessId = 5700;'#10#9'ServiceSpecificExitCod' +
        'e = 0;'#10#9'ServiceType = "Unknown";'#10#9'Started = TRUE;'#10#9'StartMode = "' +
        'Auto";'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9'SystemCreationClassN' +
        'ame = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9 +
        'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "ConsentUX_e1b09";'#10#9'CheckPoint = 0;'#10#9'Creation' +
        'ClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Descrip' +
        'tion = "Permite que ConnectUX y la Configuraci'#243'n del PC se conec' +
        'ten y emparejen con pantallas Wi-Fi y dispositivos Bluetooth.";'#10 +
        #9'DesktopInteract = FALSE;'#10#9'DisplayName = "ConsentUX_e1b09";'#10#9'Err' +
        'orControl = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "ConsentUxUserSv' +
        'c_e1b09";'#10#9'PathName = "C:\\Windows\\system32\\svchost.exe -k Dev' +
        'icesFlow";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'Servic' +
        'eType = "Unknown";'#10#9'Started = FALSE;'#10#9'StartMode = "Manual";'#10#9'Sta' +
        'te = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win3' +
        '2_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10 +
        #9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "CredentialEnrollmentManagerUserSvc_e1b09";'#10#9 +
        'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAu' +
        'toStart = FALSE;'#10#9'Description = "Administrador de inscripciones ' +
        'de credenciales";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Cred' +
        'entialEnrollmentManagerUserSvc_e1b09";'#10#9'ErrorControl = "Normal";' +
        #10#9'ExitCode = 1077;'#10#9'Name = "CredentialEnrollmentManagerUserSvc_e' +
        '1b09";'#10#9'PathName = "C:\\Windows\\system32\\CredentialEnrollmentM' +
        'anager.exe";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'Serv' +
        'iceType = "Unknown";'#10#9'Started = FALSE;'#10#9'StartMode = "Manual";'#10#9'S' +
        'tate = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Wi' +
        'n32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0' +
        ';'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "DeviceAssociationBroker_e1b09";'#10#9'CheckPoint ' +
        '= 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart = F' +
        'ALSE;'#10#9'Description = "Enables apps to pair devices";'#10#9'DesktopInt' +
        'eract = FALSE;'#10#9'DisplayName = "DeviceAssociationBroker_e1b09";'#10#9 +
        'ErrorControl = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "DeviceAssoci' +
        'ationBrokerSvc_e1b09";'#10#9'PathName = "C:\\Windows\\system32\\svcho' +
        'st.exe -k DevicesFlow -p";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitC' +
        'ode = 0;'#10#9'ServiceType = "Unknown";'#10#9'Started = FALSE;'#10#9'StartMode ' +
        '= "Manual";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationC' +
        'lassName = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEV' +
        'E";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "DevicePicker_e1b09";'#10#9'CheckPoint = 0;'#10#9'Creat' +
        'ionClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Desc' +
        'ription = "Este servicio de usuario se utiliza para administrar ' +
        'la IU de Miracast, DLNA y DIAL";'#10#9'DesktopInteract = FALSE;'#10#9'Disp' +
        'layName = "DevicePicker_e1b09";'#10#9'ErrorControl = "Normal";'#10#9'ExitC' +
        'ode = 1077;'#10#9'Name = "DevicePickerUserSvc_e1b09";'#10#9'PathName = "C:' +
        '\\Windows\\system32\\svchost.exe -k DevicesFlow";'#10#9'ProcessId = 0' +
        ';'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Unknown";'#10#9'Start' +
        'ed = FALSE;'#10#9'StartMode = "Manual";'#10#9'State = "Stopped";'#10#9'Status =' +
        ' "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'Syste' +
        'mName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "DevicesFlow_e1b09";'#10#9'CheckPoint = 0;'#10#9'Creati' +
        'onClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Descr' +
        'iption = "Permite que ConnectUX y la Configuraci'#243'n del PC se con' +
        'ecten y emparejen con pantallas Wi-Fi y dispositivos Bluetooth."' +
        ';'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "DevicesFlow_e1b09";'#10 +
        #9'ErrorControl = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "DevicesFlow' +
        'UserSvc_e1b09";'#10#9'PathName = "C:\\Windows\\system32\\svchost.exe ' +
        '-k DevicesFlow";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9 +
        'ServiceType = "Unknown";'#10#9'Started = FALSE;'#10#9'StartMode = "Manual"' +
        ';'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName =' +
        ' "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId' +
        ' = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "MessagingService_e1b09";'#10#9'CheckPoint = 0;'#10#9'C' +
        'reationClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9 +
        'Description = "El servicio auxiliar de mensajer'#237'a de texto y sus' +
        ' funciones relacionadas.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayNam' +
        'e = "MessagingService_e1b09";'#10#9'ErrorControl = "Ignore";'#10#9'ExitCod' +
        'e = 1077;'#10#9'Name = "MessagingService_e1b09";'#10#9'PathName = "C:\\Win' +
        'dows\\system32\\svchost.exe -k UnistackSvcGroup";'#10#9'ProcessId = 0' +
        ';'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Unknown";'#10#9'Start' +
        'ed = FALSE;'#10#9'StartMode = "Manual";'#10#9'State = "Stopped";'#10#9'Status =' +
        ' "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'Syste' +
        'mName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Sincronizar host_e1b09";'#10#9'CheckPoint = 0;'#10#9'Cr' +
        'eationClassName = "Win32_Service";'#10#9'DelayedAutoStart = TRUE;'#10#9'De' +
        'scription = "Este servicio sincroniza el correo, los contactos, ' +
        'el calendario y otros datos del usuario. El correo y otras aplic' +
        'aciones que dependen de esta funcionalidad no funcionar'#225'n correc' +
        'tamente si est'#233' servicio no se est'#225' ejecutando.";'#10#9'DesktopIntera' +
        'ct = FALSE;'#10#9'DisplayName = "Sincronizar host_e1b09";'#10#9'ErrorContr' +
        'ol = "Ignore";'#10#9'ExitCode = 0;'#10#9'Name = "OneSyncSvc_e1b09";'#10#9'PathN' +
        'ame = "C:\\Windows\\system32\\svchost.exe -k UnistackSvcGroup";'#10 +
        #9'ProcessId = 17328;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType =' +
        ' "Unknown";'#10#9'Started = TRUE;'#10#9'StartMode = "Auto";'#10#9'State = "Runn' +
        'ing";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_Computer' +
        'System";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint ' +
        '= 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Datos de contactos_e1b09";'#10#9'CheckPoint = 0;'#10 +
        #9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;' +
        #10#9'Description = "Indiza los datos de contacto para buscar contac' +
        'tos r'#225'pidamente. Si detienes o deshabilitas este servicio, puede' +
        ' que no aparezcan todos los contactos en los resultados de la b'#250 +
        'squeda.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Datos de con' +
        'tactos_e1b09";'#10#9'ErrorControl = "Ignore";'#10#9'ExitCode = 1077;'#10#9'Name' +
        ' = "PimIndexMaintenanceSvc_e1b09";'#10#9'PathName = "C:\\Windows\\sys' +
        'tem32\\svchost.exe -k UnistackSvcGroup";'#10#9'ProcessId = 0;'#10#9'Servic' +
        'eSpecificExitCode = 0;'#10#9'ServiceType = "Unknown";'#10#9'Started = FALS' +
        'E;'#10#9'StartMode = "Manual";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'S' +
        'ystemCreationClassName = "Win32_ComputerSystem";'#10#9'SystemName = "' +
        'EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "PrintWorkflow_e1b09";'#10#9'CheckPoint = 0;'#10#9'Crea' +
        'tionClassName = "Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Des' +
        'cription = "Flujo de trabajo de impresi'#243'n";'#10#9'DesktopInteract = F' +
        'ALSE;'#10#9'DisplayName = "PrintWorkflow_e1b09";'#10#9'ErrorControl = "Nor' +
        'mal";'#10#9'ExitCode = 1077;'#10#9'Name = "PrintWorkflowUserSvc_e1b09";'#10#9'P' +
        'athName = "C:\\Windows\\system32\\svchost.exe -k PrintWorkflow";' +
        #10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "U' +
        'nknown";'#10#9'Started = FALSE;'#10#9'StartMode = "Manual";'#10#9'State = "Stop' +
        'ped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_Computer' +
        'System";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint ' +
        '= 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Almacenamiento de datos de usuarios_e1b09";'#10 +
        #9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedA' +
        'utoStart = FALSE;'#10#9'Description = "Controla el almacenamiento de ' +
        'datos de usuario estructurados, incluida informaci'#243'n de contacto' +
        ', calendarios, mensajes y otro contenido. Si detienes o deshabil' +
        'itas este servicio, puede que las aplicaciones que usen estos da' +
        'tos no funcionen correctamente.";'#10#9'DesktopInteract = FALSE;'#10#9'Dis' +
        'playName = "Almacenamiento de datos de usuarios_e1b09";'#10#9'ErrorCo' +
        'ntrol = "Ignore";'#10#9'ExitCode = 1077;'#10#9'Name = "UnistoreSvc_e1b09";' +
        #10#9'PathName = "C:\\Windows\\System32\\svchost.exe -k UnistackSvcG' +
        'roup";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceTyp' +
        'e = "Unknown";'#10#9'Started = FALSE;'#10#9'StartMode = "Manual";'#10#9'State =' +
        ' "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_Co' +
        'mputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'Wai' +
        'tHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Acceso a datos de usuarios_e1b09";'#10#9'CheckPoi' +
        'nt = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'DelayedAutoStart ' +
        '= FALSE;'#10#9'Description = "Proporciona a las aplicaciones acceso a' +
        ' datos de usuario estructurados, incluida informaci'#243'n de contact' +
        'o, calendarios, mensajes y otro contenido. Si detienes o deshabi' +
        'litas este servicio, puede que las aplicaciones que usen estos d' +
        'atos no funcionen correctamente.";'#10#9'DesktopInteract = FALSE;'#10#9'Di' +
        'splayName = "Acceso a datos de usuarios_e1b09";'#10#9'ErrorControl = ' +
        '"Ignore";'#10#9'ExitCode = 1077;'#10#9'Name = "UserDataSvc_e1b09";'#10#9'PathNa' +
        'me = "C:\\Windows\\system32\\svchost.exe -k UnistackSvcGroup";'#10#9 +
        'ProcessId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Unk' +
        'nown";'#10#9'Started = FALSE;'#10#9'StartMode = "Manual";'#10#9'State = "Stoppe' +
        'd";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSy' +
        'stem";'#10#9'SystemName = "EUES02EXGESTEVE";'#10#9'TagId = 0;'#10#9'WaitHint = ' +
        '0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Servicio de usuario de notificaciones de inse' +
        'rci'#243'n de Windows_e1b09";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "' +
        'Win32_Service";'#10#9'DelayedAutoStart = FALSE;'#10#9'Description = "Este ' +
        'servicio hospeda la plataforma de notificaciones de Windows que ' +
        'proporciona compatibilidad para notificaciones locales y de inse' +
        'rci'#243'n. Las notificaciones admitidas son icono, notificaci'#243'n del ' +
        'sistema y sin procesar.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName' +
        ' = "Servicio de usuario de notificaciones de inserci'#243'n de Window' +
        's_e1b09";'#10#9'ErrorControl = "Ignore";'#10#9'ExitCode = 0;'#10#9'Name = "WpnU' +
        'serService_e1b09";'#10#9'PathName = "C:\\Windows\\system32\\svchost.e' +
        'xe -k UnistackSvcGroup";'#10#9'ProcessId = 7936;'#10#9'ServiceSpecificExit' +
        'Code = 0;'#10#9'ServiceType = "Unknown";'#10#9'Started = TRUE;'#10#9'StartMode ' +
        '= "Auto";'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9'SystemCreationCla' +
        'ssName = "Win32_ComputerSystem";'#10#9'SystemName = "EUES02EXGESTEVE"' +
        ';'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10)
    Left = 392
    Top = 8
  end
  object Timer1: TTimer
    Interval = 4000
    OnTimer = Timer1Timer
    Left = 424
    Top = 8
  end
  object ActionList1: TActionList
    Left = 456
    Top = 8
  end
  object ImageList1: TImageList
    Left = 488
    Top = 8
  end
end
