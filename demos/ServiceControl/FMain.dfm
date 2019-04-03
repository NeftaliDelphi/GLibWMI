object FormMain: TFormMain
  Left = 120
  Top = 150
  Caption = 'Service control Demo'
  ClientHeight = 402
  ClientWidth = 804
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  DesignSize = (
    804
    402)
  PixelsPerInch = 96
  TextHeight = 13
  object sgServices: TStringGrid
    Left = 0
    Top = 29
    Width = 673
    Height = 354
    Align = alLeft
    Anchors = [akLeft, akTop, akRight, akBottom]
    DefaultRowHeight = 18
    FixedCols = 0
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
    TabOrder = 0
    ExplicitHeight = 329
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
    Top = 383
    Width = 804
    Height = 19
    Panels = <>
    SimplePanel = True
    ExplicitTop = 358
    ExplicitWidth = 793
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
    Width = 804
    Height = 29
    Align = alTop
    Anchors = [akTop, akRight]
    AutoSize = True
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 8
    ExplicitWidth = 793
    object ToolBar1: TToolBar
      Left = 0
      Top = 0
      Width = 804
      Height = 29
      Caption = 'ToolBar1'
      TabOrder = 0
      ExplicitWidth = 793
    end
  end
  object cbStart: TComboBox
    Left = 688
    Top = 272
    Width = 105
    Height = 21
    Anchors = [akTop, akRight]
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
    Active = False
    AllProperties.Strings = (
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Acronis Scheduler2 Service";'#10#9'CheckPoint = 0;' +
        #10#9'CreationClassName = "Win32_Service";'#10#9'Description = "Provides ' +
        'task scheduling for Acronis applications.";'#10#9'DesktopInteract = T' +
        'RUE;'#10#9'DisplayName = "Acronis Scheduler2 Service";'#10#9'ErrorControl ' +
        '= "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "AcrSch2Svc";'#10#9'PathName = "\"' +
        'C:\\Archivos de programa\\Archivos comunes\\Acronis\\Schedule2\\' +
        'schedul2.exe\"";'#10#9'ProcessId = 796;'#10#9'ServiceSpecificExitCode = 0;' +
        #10#9'ServiceType = "Own Process";'#10#9'Started = TRUE;'#10#9'StartMode = "Au' +
        'to";'#10#9'StartName = "LocalSystem";'#10#9'State = "Running";'#10#9'Status = "' +
        'OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'SystemN' +
        'ame = "GESTEVEZ";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio de alerta";'#10#9'CheckPoint = 0;'#10#9'Creat' +
        'ionClassName = "Win32_Service";'#10#9'Description = "Notifica a usuar' +
        'ios y equipos seleccionados de alertas administrativas. Si se de' +
        'tiene el servicio, los programas que utilizan alertas administra' +
        'tivas no las recibir'#225'n. Si el servicio se deshabilita, no se pod' +
        'r'#225' iniciar ninguno de los servicios que dependen expl'#237'citamente ' +
        'dependen de '#233'l.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Serv' +
        'icio de alerta";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 1077;'#10#9'Na' +
        'me = "Alerter";'#10#9'PathName = "C:\\WINDOWS\\system32\\svchost.exe ' +
        '-k LocalService";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10 +
        #9'ServiceType = "Share Process";'#10#9'Started = FALSE;'#10#9'StartMode = "' +
        'Disabled";'#10#9'StartName = "NT AUTHORITY\\LocalService";'#10#9'State = "' +
        'Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_Comp' +
        'uterSystem";'#10#9'SystemName = "GESTEVEZ";'#10#9'TagId = 0;'#10#9'WaitHint = 0' +
        ';'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Servicio de puerta de enlace de capa de aplic' +
        'aci'#243'n";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9 +
        'Description = "Proporciona compatibilidad para complementos de p' +
        'rotocolo de terceros para Conexi'#243'n compartida a Internet y para ' +
        'Firewall de Windows.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = ' +
        '"Servicio de puerta de enlace de capa de aplicaci'#243'n";'#10#9'ErrorCont' +
        'rol = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "ALG";'#10#9'PathName = "C:\\W' +
        'INDOWS\\System32\\alg.exe";'#10#9'ProcessId = 2484;'#10#9'ServiceSpecificE' +
        'xitCode = 0;'#10#9'ServiceType = "Own Process";'#10#9'Started = TRUE;'#10#9'Sta' +
        'rtMode = "Manual";'#10#9'StartName = "NT AUTHORITY\\LocalService";'#10#9'S' +
        'tate = "Running";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Wi' +
        'n32_ComputerSystem";'#10#9'SystemName = "GESTEVEZ";'#10#9'TagId = 0;'#10#9'Wait' +
        'Hint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Administraci'#243'n de aplicaciones";'#10#9'CheckPoint' +
        ' = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'Description = "Ofre' +
        'ce servicios de instalaci'#243'n de software como Asignar, Publicar y' +
        ' Quitar.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Administrac' +
        'i'#243'n de aplicaciones";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 1077' +
        ';'#10#9'Name = "AppMgmt";'#10#9'PathName = "C:\\WINDOWS\\system32\\svchost' +
        '.exe -k netsvcs";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10 +
        #9'ServiceType = "Share Process";'#10#9'Started = FALSE;'#10#9'StartMode = "' +
        'Manual";'#10#9'StartName = "LocalSystem";'#10#9'State = "Stopped";'#10#9'Status' +
        ' = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'Sys' +
        'temName = "GESTEVEZ";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio de estado de ASP.NET";'#10#9'CheckPoint ' +
        '= 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'Description = "Propo' +
        'rciona compatibilidad para los estados de sesi'#243'n fuera de proces' +
        'o de ASP.NET. Si se detiene este servicio, no se procesar'#225'n las ' +
        'solicitudes fuera de proceso. Si se deshabilita este servicio, l' +
        'os servicios que dependan expl'#237'citamente del mismo, fallar'#225'n al ' +
        'iniciarse.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Servicio ' +
        'de estado de ASP.NET";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10 +
        #9'Name = "aspnet_state";'#10#9'PathName = "C:\\WINDOWS\\Microsoft.NET\' +
        '\Framework\\v2.0.50727\\aspnet_state.exe";'#10#9'ProcessId = 0;'#10#9'Serv' +
        'iceSpecificExitCode = 0;'#10#9'ServiceType = "Own Process";'#10#9'Started ' +
        '= FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName = "NT AUTHORITY\\Netw' +
        'orkService";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreation' +
        'ClassName = "Win32_ComputerSystem";'#10#9'SystemName = "GESTEVEZ";'#10#9'T' +
        'agId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Audio de Windows";'#10#9'CheckPoint = 0;'#10#9'Creation' +
        'ClassName = "Win32_Service";'#10#9'Description = "Administra disposit' +
        'ivos de audio para programas basados en Windows. Si se detiene e' +
        'ste servicio, los dispositivos de audio y efectos no funcionar'#225'n' +
        ' correctamente. Si se deshabilita este servicio, cualquier servi' +
        'cio que dependa expl'#237'citamente de '#233'l tendr'#225' un error al iniciar.' +
        '";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Audio de Windows";'#10 +
        #9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "AudioSrv";'#10#9'Pa' +
        'thName = "C:\\WINDOWS\\System32\\svchost.exe -k netsvcs";'#10#9'Proce' +
        'ssId = 1028;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Share' +
        ' Process";'#10#9'Started = TRUE;'#10#9'StartMode = "Auto";'#10#9'StartName = "L' +
        'ocalSystem";'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9'SystemCreation' +
        'ClassName = "Win32_ComputerSystem";'#10#9'SystemName = "GESTEVEZ";'#10#9'T' +
        'agId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Symantec pcAnywhere Host Service";'#10#9'CheckPoi' +
        'nt = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'Description = "Al' +
        'lows Remote pcAnywhere users to connect to this machine.";'#10#9'Desk' +
        'topInteract = TRUE;'#10#9'DisplayName = "Symantec pcAnywhere Host Ser' +
        'vice";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "awho' +
        'st32";'#10#9'PathName = "\"C:\\Archivos de programa\\Symantec\\pcAnyw' +
        'here\\awhost32.exe\"";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode ' +
        '= 0;'#10#9'ServiceType = "Own Process";'#10#9'Started = FALSE;'#10#9'StartMode ' +
        '= "Manual";'#10#9'StartName = "LocalSystem";'#10#9'State = "Stopped";'#10#9'Sta' +
        'tus = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9 +
        'SystemName = "GESTEVEZ";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio de transferencia inteligente en seg' +
        'undo plano";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Servic' +
        'e";'#10#9'Description = "Transfiere datos entre clientes y servidores' +
        ' en segundo plano. Si est'#225' deshabilitado BITS, hay caracter'#237'stic' +
        'as como Windows Update que no funcionar'#225'n correctamente.";'#10#9'Desk' +
        'topInteract = FALSE;'#10#9'DisplayName = "Servicio de transferencia i' +
        'nteligente en segundo plano";'#10#9'ErrorControl = "Normal";'#10#9'ExitCod' +
        'e = 1077;'#10#9'Name = "BITS";'#10#9'PathName = "C:\\WINDOWS\\system32\\sv' +
        'chost.exe -k netsvcs";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode ' +
        '= 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = FALSE;'#10#9'StartMod' +
        'e = "Manual";'#10#9'StartName = "LocalSystem";'#10#9'State = "Stopped";'#10#9'S' +
        'tatus = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";' +
        #10#9'SystemName = "GESTEVEZ";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "BlackfishSQL";'#10#9'CheckPoint = 0;'#10#9'CreationClas' +
        'sName = "Win32_Service";'#10#9'Description = "CodeGear BlackfishSQL R' +
        'elational SQL Database.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName' +
        ' = "BlackfishSQL";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Nam' +
        'e = "BlackfishSQL";'#10#9'PathName = "\"C:\\Archivos de programa\\Cod' +
        'eGear\\RAD Studio\\6.0\\bin\\BSQLServer.exe\" -S=\"BlackfishSQL\' +
        '"";'#10#9'ProcessId = 816;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType' +
        ' = "Own Process";'#10#9'Started = TRUE;'#10#9'StartMode = "Auto";'#10#9'StartNa' +
        'me = "LocalSystem";'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9'SystemC' +
        'reationClassName = "Win32_ComputerSystem";'#10#9'SystemName = "GESTEV' +
        'EZ";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Examinador de equipos";'#10#9'CheckPoint = 0;'#10#9'Cre' +
        'ationClassName = "Win32_Service";'#10#9'Description = "Mantiene una l' +
        'ista actualizada de equipos en la red y proporciona esta lista a' +
        ' los equipos designados como exploradores. Si se detiene este se' +
        'rvicio, esta lista no se actualizar'#225' o mantendr'#225'. Si se deshabil' +
        'ita el servicio, no se podr'#225' iniciar ninguno de los servicios qu' +
        'e dependan expl'#237'citamente de '#233'l.";'#10#9'DesktopInteract = FALSE;'#10#9'Di' +
        'splayName = "Examinador de equipos";'#10#9'ErrorControl = "Normal";'#10#9 +
        'ExitCode = 0;'#10#9'Name = "Browser";'#10#9'PathName = "C:\\WINDOWS\\syste' +
        'm32\\svchost.exe -k netsvcs";'#10#9'ProcessId = 1028;'#10#9'ServiceSpecifi' +
        'cExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = TRUE;'#10 +
        #9'StartMode = "Auto";'#10#9'StartName = "LocalSystem";'#10#9'State = "Runni' +
        'ng";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerS' +
        'ystem";'#10#9'SystemName = "GESTEVEZ";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio de Index Server";'#10#9'CheckPoint = 0;'#10 +
        #9'CreationClassName = "Win32_Service";'#10#9'Description = "Indiza el ' +
        'contenido y las propiedades de archivos en equipos locales y rem' +
        'otos; ofrece acceso inmediato a archivos a trav'#233's de un lenguaje' +
        ' de consulta flexible.";'#10#9'DesktopInteract = TRUE;'#10#9'DisplayName =' +
        ' "Servicio de Index Server";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode' +
        ' = 1077;'#10#9'Name = "CiSvc";'#10#9'PathName = "C:\\WINDOWS\\system32\\ci' +
        'svc.exe";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'Service' +
        'Type = "Share Process";'#10#9'Started = FALSE;'#10#9'StartMode = "Manual";' +
        #10#9'StartName = "LocalSystem";'#10#9'State = "Stopped";'#10#9'Status = "OK";' +
        #10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'SystemName ' +
        '= "GESTEVEZ";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Portafolios";'#10#9'CheckPoint = 0;'#10#9'CreationClas' +
        'sName = "Win32_Service";'#10#9'Description = "Habilita el Visor del P' +
        'ortafolios para almacenar informaci'#243'n y compartirla con equipos ' +
        'remotos. Si se detiene el servicio,  el Visor del Portafolios no' +
        ' podr'#225' compartir informaci'#243'n con los equipos remotos. Si se desh' +
        'abilita este servicio, cualquier servicio que expl'#237'citamente dep' +
        'enda de '#233'l no podr'#225' iniciarse.";'#10#9'DesktopInteract = FALSE;'#10#9'Disp' +
        'layName = "Portafolios";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 1' +
        '077;'#10#9'Name = "ClipSrv";'#10#9'PathName = "C:\\WINDOWS\\system32\\clip' +
        'srv.exe";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'Service' +
        'Type = "Own Process";'#10#9'Started = FALSE;'#10#9'StartMode = "Disabled";' +
        #10#9'StartName = "LocalSystem";'#10#9'State = "Stopped";'#10#9'Status = "OK";' +
        #10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'SystemName ' +
        '= "GESTEVEZ";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = ".NET Runtime Optimization Service v2.0.50727' +
        '_X86";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'D' +
        'escription = "Microsoft .NET Framework NGEN";'#10#9'DesktopInteract =' +
        ' FALSE;'#10#9'DisplayName = ".NET Runtime Optimization Service v2.0.5' +
        '0727_X86";'#10#9'ErrorControl = "Ignore";'#10#9'ExitCode = 1077;'#10#9'Name = "' +
        'clr_optimization_v2.0.50727_32";'#10#9'PathName = "c:\\WINDOWS\\Micro' +
        'soft.NET\\Framework\\v2.0.50727\\mscorsvw.exe";'#10#9'ProcessId = 0;'#10 +
        #9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Own Process";'#10#9'Sta' +
        'rted = FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName = "LocalSystem";' +
        #10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = ' +
        '"Win32_ComputerSystem";'#10#9'SystemName = "GESTEVEZ";'#10#9'TagId = 0;'#10#9'W' +
        'aitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Aplicaci'#243'n del sistema COM+";'#10#9'CheckPoint = ' +
        '0;'#10#9'CreationClassName = "Win32_Service";'#10#9'Description = "Adminis' +
        'tra la configuraci'#243'n y el seguimiento de los componentes del Mod' +
        'elo de objetos componentes (COM+). Si se detiene el servicio, la' +
        ' mayor'#237'a de los componentes COM+ no funcionar'#225'n correctamente. S' +
        'i se deshabilita este servicio, no se podr'#225' iniciar ning'#250'n servi' +
        'cio que dependa espec'#237'ficamente de '#233'l.";'#10#9'DesktopInteract = FALS' +
        'E;'#10#9'DisplayName = "Aplicaci'#243'n del sistema COM+";'#10#9'ErrorControl =' +
        ' "Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "COMSysApp";'#10#9'PathName = "C' +
        ':\\WINDOWS\\system32\\dllhost.exe /Processid:{02D4B3F1-FD88-11D1' +
        '-960D-00805FC79235}";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode =' +
        ' 0;'#10#9'ServiceType = "Own Process";'#10#9'Started = FALSE;'#10#9'StartMode =' +
        ' "Manual";'#10#9'StartName = "LocalSystem";'#10#9'State = "Stopped";'#10#9'Stat' +
        'us = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'S' +
        'ystemName = "GESTEVEZ";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Servicios de cifrado";'#10#9'CheckPoint = 0;'#10#9'Crea' +
        'tionClassName = "Win32_Service";'#10#9'Description = "Proporciona tre' +
        's servicios de administraci'#243'n: Servicio de cat'#225'logo de base de d' +
        'atos, que confirma las firmas de archivos de Windows; Servicio d' +
        'e ra'#237'z protegida, que agrega y quita certificados de entidades e' +
        'misoras de ra'#237'z de confianza de este equipo; y el Servicio de cl' +
        'aves, que ayuda a inscribir este equipo a certificados. Si se de' +
        'tiene este servicio, sus servicios de administraci'#243'n mencionados' +
        ' no funcionar'#225'n correctamente. Si se deshabilita este servicio, ' +
        'no se podr'#225'n iniciar ninguno de los servicios que dependen expl'#237 +
        'citamente de '#233'l.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Ser' +
        'vicios de cifrado";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Na' +
        'me = "CryptSvc";'#10#9'PathName = "C:\\WINDOWS\\system32\\svchost.exe' +
        ' -k netsvcs";'#10#9'ProcessId = 1028;'#10#9'ServiceSpecificExitCode = 0;'#10#9 +
        'ServiceType = "Share Process";'#10#9'Started = TRUE;'#10#9'StartMode = "Au' +
        'to";'#10#9'StartName = "LocalSystem";'#10#9'State = "Running";'#10#9'Status = "' +
        'OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'SystemN' +
        'ame = "GESTEVEZ";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Iniciador de procesos de servidor DCOM";'#10#9'Ch' +
        'eckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'Description' +
        ' = "Ofrece el inicio de funcionalidad para los servicios DCOM.";' +
        #10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Iniciador de procesos' +
        ' de servidor DCOM";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Na' +
        'me = "DcomLaunch";'#10#9'PathName = "C:\\WINDOWS\\system32\\svchost -' +
        'k DcomLaunch";'#10#9'ProcessId = 1924;'#10#9'ServiceSpecificExitCode = 0;'#10 +
        #9'ServiceType = "Share Process";'#10#9'Started = TRUE;'#10#9'StartMode = "A' +
        'uto";'#10#9'StartName = "LocalSystem";'#10#9'State = "Running";'#10#9'Status = ' +
        '"OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'System' +
        'Name = "GESTEVEZ";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Cliente DHCP";'#10#9'CheckPoint = 0;'#10#9'CreationClas' +
        'sName = "Win32_Service";'#10#9'Description = "Administra la configura' +
        'ci'#243'n de la red registrando y actualizando direcciones IP y nombr' +
        'es DNS.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Cliente DHCP' +
        '";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "Dhcp";'#10#9'Pat' +
        'hName = "C:\\WINDOWS\\system32\\svchost.exe -k netsvcs";'#10#9'Proces' +
        'sId = 1028;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Share ' +
        'Process";'#10#9'Started = TRUE;'#10#9'StartMode = "Auto";'#10#9'StartName = "Lo' +
        'calSystem";'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9'SystemCreationC' +
        'lassName = "Win32_ComputerSystem";'#10#9'SystemName = "GESTEVEZ";'#10#9'Ta' +
        'gId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio del administrador de discos l'#243'gicos' +
        '";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'Descr' +
        'iption = "Configura las unidades de disco duro y vol'#250'menes. El s' +
        'ervicio s'#243'lo se ejecuta para procesos de configuraci'#243'n y a conti' +
        'nuaci'#243'n se detiene.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "' +
        'Servicio del administrador de discos l'#243'gicos";'#10#9'ErrorControl = "' +
        'Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "dmadmin";'#10#9'PathName = "C:\\W' +
        'INDOWS\\System32\\dmadmin.exe /com";'#10#9'ProcessId = 0;'#10#9'ServiceSpe' +
        'cificExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = FA' +
        'LSE;'#10#9'StartMode = "Manual";'#10#9'StartName = "LocalSystem";'#10#9'State =' +
        ' "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_Co' +
        'mputerSystem";'#10#9'SystemName = "GESTEVEZ";'#10#9'TagId = 0;'#10#9'WaitHint =' +
        ' 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Administrador de discos l'#243'gicos";'#10#9'CheckPoint' +
        ' = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'Description = "Dete' +
        'cta y supervisa unidades de disco duro nuevas y env'#237'a informaci'#243 +
        'n del volumen de disco al Servicio de administraci'#243'n de discos l' +
        #243'gicos para su configuraci'#243'n. Si se detiene este servicio, la in' +
        'formaci'#243'n de estado y configuraci'#243'n de discos din'#225'micos puede qu' +
        'edar desactualizada. Si se deshabilita este servicio, no se podr' +
        #225' iniciar ninguno de los servicios que dependan expl'#237'citamente d' +
        'e '#233'l.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Administrador ' +
        'de discos l'#243'gicos";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Na' +
        'me = "dmserver";'#10#9'PathName = "C:\\WINDOWS\\System32\\svchost.exe' +
        ' -k netsvcs";'#10#9'ProcessId = 1028;'#10#9'ServiceSpecificExitCode = 0;'#10#9 +
        'ServiceType = "Share Process";'#10#9'Started = TRUE;'#10#9'StartMode = "Au' +
        'to";'#10#9'StartName = "LocalSystem";'#10#9'State = "Running";'#10#9'Status = "' +
        'OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'SystemN' +
        'ame = "GESTEVEZ";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Cliente DNS";'#10#9'CheckPoint = 0;'#10#9'CreationClass' +
        'Name = "Win32_Service";'#10#9'Description = "Resuelve y almacena en c' +
        'ach'#233' los nombres del  sistema de nombres de dominio (DNS) para e' +
        'ste equipo. Si se detiene este servicio, este equipo no podr'#225' re' +
        'solver nombres DNS ni ubicar controladores de dominio en Active ' +
        'Directory. Si se deshabilita este servicio, no se podr'#225' iniciar ' +
        'ninguno de los servicios que dependen expl'#237'citamente de '#233'l.";'#10#9'D' +
        'esktopInteract = FALSE;'#10#9'DisplayName = "Cliente DNS";'#10#9'ErrorCont' +
        'rol = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "Dnscache";'#10#9'PathName = "' +
        'C:\\WINDOWS\\system32\\svchost.exe -k NetworkService";'#10#9'ProcessI' +
        'd = 1112;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Share Pr' +
        'ocess";'#10#9'Started = TRUE;'#10#9'StartMode = "Auto";'#10#9'StartName = "NT A' +
        'UTHORITY\\NetworkService";'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9 +
        'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'SystemName = ' +
        '"GESTEVEZ";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Configuraci'#243'n autom'#225'tica de redes cableadas"' +
        ';'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'Descri' +
        'ption = "Este servicio realiza la autenticaci'#243'n IEEE 802.1X en i' +
        'nterfaces Ethernet";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "C' +
        'onfiguraci'#243'n autom'#225'tica de redes cableadas";'#10#9'ErrorControl = "No' +
        'rmal";'#10#9'ExitCode = 1077;'#10#9'Name = "Dot3svc";'#10#9'PathName = "C:\\WIN' +
        'DOWS\\System32\\svchost.exe -k dot3svc";'#10#9'ProcessId = 0;'#10#9'Servic' +
        'eSpecificExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started ' +
        '= FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName = "localSystem";'#10#9'Sta' +
        'te = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win3' +
        '2_ComputerSystem";'#10#9'SystemName = "GESTEVEZ";'#10#9'TagId = 0;'#10#9'WaitHi' +
        'nt = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio de protocolo de autenticaci'#243'n exten' +
        'sible";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9 +
        'Description = "Proporciona a los clientes de Windows el Servicio' +
        ' de protocolo de autenticaci'#243'n extensible";'#10#9'DesktopInteract = F' +
        'ALSE;'#10#9'DisplayName = "Servicio de protocolo de autenticaci'#243'n ext' +
        'ensible";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "E' +
        'apHost";'#10#9'PathName = "C:\\WINDOWS\\System32\\svchost.exe -k eaps' +
        'vcs";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType' +
        ' = "Share Process";'#10#9'Started = FALSE;'#10#9'StartMode = "Manual";'#10#9'St' +
        'artName = "localSystem";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'Sy' +
        'stemCreationClassName = "Win32_ComputerSystem";'#10#9'SystemName = "G' +
        'ESTEVEZ";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio de informe de errores";'#10#9'CheckPoint' +
        ' = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'Description = "Perm' +
        'ite informar de errores para servicios y aplicaciones que se eje' +
        'cutan en entornos no est'#225'ndar.";'#10#9'DesktopInteract = FALSE;'#10#9'Disp' +
        'layName = "Servicio de informe de errores";'#10#9'ErrorControl = "Ign' +
        'ore";'#10#9'ExitCode = 1077;'#10#9'Name = "ERSvc";'#10#9'PathName = "C:\\WINDOW' +
        'S\\System32\\svchost.exe -k netsvcs";'#10#9'ProcessId = 0;'#10#9'ServiceSp' +
        'ecificExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = F' +
        'ALSE;'#10#9'StartMode = "Disabled";'#10#9'StartName = "LocalSystem";'#10#9'Stat' +
        'e = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32' +
        '_ComputerSystem";'#10#9'SystemName = "GESTEVEZ";'#10#9'TagId = 0;'#10#9'WaitHin' +
        't = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Registro de sucesos";'#10#9'CheckPoint = 0;'#10#9'Crea' +
        'tionClassName = "Win32_Service";'#10#9'Description = "Habilita mensaj' +
        'es de registro de sucesos emitidos por programas basados en Wind' +
        'ows y componentes para que se vean en Visor de sucesos. Este ser' +
        'vicio no se puede detener. ";'#10#9'DesktopInteract = FALSE;'#10#9'Display' +
        'Name = "Registro de sucesos";'#10#9'ErrorControl = "Normal";'#10#9'ExitCod' +
        'e = 0;'#10#9'Name = "Eventlog";'#10#9'PathName = "C:\\WINDOWS\\system32\\s' +
        'ervices.exe";'#10#9'ProcessId = 1688;'#10#9'ServiceSpecificExitCode = 0;'#10#9 +
        'ServiceType = "Share Process";'#10#9'Started = TRUE;'#10#9'StartMode = "Au' +
        'to";'#10#9'StartName = "LocalSystem";'#10#9'State = "Running";'#10#9'Status = "' +
        'OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'SystemN' +
        'ame = "GESTEVEZ";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Sistema de sucesos COM+";'#10#9'CheckPoint = 0;'#10#9'C' +
        'reationClassName = "Win32_Service";'#10#9'Description = "Admite el Se' +
        'rvicio de notificaci'#243'n de eventos del sistema (SENS), que propor' +
        'ciona la distribuci'#243'n autom'#225'tica de eventos a los componentes de' +
        'l Modelo de objetos componentes (COM). Si se detiene este servic' +
        'io, SENS se cerrar'#225' y no podr'#225' ofrecer notificaciones de inicio ' +
        'ni de cierre de sesi'#243'n. Si se deshabilita el servicio, no se pod' +
        'r'#225' iniciar ning'#250'n servicio que dependa espec'#237'ficamente de '#233'l.";'#10 +
        #9'DesktopInteract = FALSE;'#10#9'DisplayName = "Sistema de sucesos COM' +
        '+";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "EventSyste' +
        'm";'#10#9'PathName = "C:\\WINDOWS\\system32\\svchost.exe -k netsvcs";' +
        #10#9'ProcessId = 1028;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType =' +
        ' "Share Process";'#10#9'Started = TRUE;'#10#9'StartMode = "Manual";'#10#9'Start' +
        'Name = "LocalSystem";'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9'Syste' +
        'mCreationClassName = "Win32_ComputerSystem";'#10#9'SystemName = "GEST' +
        'EVEZ";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Compatibilidad de cambio r'#225'pido de usuario";'#10 +
        #9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'Descript' +
        'ion = "Proporciona administraci'#243'n para aplicaciones que necesita' +
        'n asistencia en un entorno de usuarios m'#250'ltiples.";'#10#9'DesktopInte' +
        'ract = FALSE;'#10#9'DisplayName = "Compatibilidad de cambio r'#225'pido de' +
        ' usuario";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "Fas' +
        'tUserSwitchingCompatibility";'#10#9'PathName = "C:\\WINDOWS\\System32' +
        '\\svchost.exe -k netsvcs";'#10#9'ProcessId = 1028;'#10#9'ServiceSpecificEx' +
        'itCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = TRUE;'#10#9'St' +
        'artMode = "Manual";'#10#9'StartName = "LocalSystem";'#10#9'State = "Runnin' +
        'g";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSy' +
        'stem";'#10#9'SystemName = "GESTEVEZ";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Windows Presentation Foundation Font Cache 3' +
        '.0.0.0";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10 +
        #9'Description = "Optimizes performance of Windows Presentation Fo' +
        'undation (WPF) applications by caching commonly used font data. ' +
        'WPF applications will start this service if it is not already ru' +
        'nning. It can be disabled, though doing so will degrade the perf' +
        'ormance of WPF applications.";'#10#9'DesktopInteract = FALSE;'#10#9'Displa' +
        'yName = "Windows Presentation Foundation Font Cache 3.0.0.0";'#10#9'E' +
        'rrorControl = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "FontCache3.0.' +
        '0.0";'#10#9'PathName = "c:\\WINDOWS\\Microsoft.NET\\Framework\\v3.0\\' +
        'WPF\\PresentationFontCache.exe";'#10#9'ProcessId = 0;'#10#9'ServiceSpecifi' +
        'cExitCode = 0;'#10#9'ServiceType = "Own Process";'#10#9'Started = FALSE;'#10#9 +
        'StartMode = "Manual";'#10#9'StartName = "NT AUTHORITY\\LocalService";' +
        #10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = ' +
        '"Win32_ComputerSystem";'#10#9'SystemName = "GESTEVEZ";'#10#9'TagId = 0;'#10#9'W' +
        'aitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Google Updater Service";'#10#9'CheckPoint = 0;'#10#9'C' +
        'reationClassName = "Win32_Service";'#10#9'Description = NULL;'#10#9'Deskto' +
        'pInteract = FALSE;'#10#9'DisplayName = "Google Updater Service";'#10#9'Err' +
        'orControl = "Ignore";'#10#9'ExitCode = 1077;'#10#9'Name = "gusvc";'#10#9'PathNa' +
        'me = "\"C:\\Archivos de programa\\Google\\Common\\Google Updater' +
        '\\GoogleUpdaterService.exe\"";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificE' +
        'xitCode = 0;'#10#9'ServiceType = "Own Process";'#10#9'Started = FALSE;'#10#9'St' +
        'artMode = "Manual";'#10#9'StartName = "LocalSystem";'#10#9'State = "Stoppe' +
        'd";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSy' +
        'stem";'#10#9'SystemName = "GESTEVEZ";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Ayuda y soporte t'#233'cnico";'#10#9'CheckPoint = 0;'#10#9'C' +
        'reationClassName = "Win32_Service";'#10#9'Description = "Habilita la ' +
        'ejecuci'#243'n del Centro de ayuda y soporte t'#233'cnico en este equipo. ' +
        'Si se detiene este servicio, el Centro de ayuda y soporte t'#233'cnic' +
        'o no estar'#225' disponible. Si se deshabilita este servicio, no se p' +
        'odr'#225' iniciar ninguno de los servicios que dependan expl'#237'citament' +
        'e de '#233'l.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Ayuda y sop' +
        'orte t'#233'cnico";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = ' +
        '"helpsvc";'#10#9'PathName = "C:\\WINDOWS\\System32\\svchost.exe -k ne' +
        'tsvcs";'#10#9'ProcessId = 1028;'#10#9'ServiceSpecificExitCode = 0;'#10#9'Servic' +
        'eType = "Share Process";'#10#9'Started = TRUE;'#10#9'StartMode = "Auto";'#10#9 +
        'StartName = "LocalSystem";'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9 +
        'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'SystemName = ' +
        '"GESTEVEZ";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Acceso a dispositivo de interfaz humana";'#10#9'C' +
        'heckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'Descriptio' +
        'n = "Habilita el acceso de entrada gen'#233'rico a los Dispositivos d' +
        'e interfaz humana (HID), que activa y mantiene el uso de botones' +
        ' de acceso directo predefinidos en los teclados, controles remot' +
        'os y otros dispositivos multimedia. Si este servicio se detiene,' +
        ' los botones de acceso directo controlados por este servicio dej' +
        'ar'#225'n de funcionar. Si este servicio est'#225' deshabilitado, cualquie' +
        'r servicio que expl'#237'citamente dependa de '#233'l no podr'#225' iniciarse."' +
        ';'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Acceso a dispositivo' +
        ' de interfaz humana";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 1077' +
        ';'#10#9'Name = "HidServ";'#10#9'PathName = "C:\\WINDOWS\\System32\\svchost' +
        '.exe -k netsvcs";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10 +
        #9'ServiceType = "Share Process";'#10#9'Started = FALSE;'#10#9'StartMode = "' +
        'Disabled";'#10#9'StartName = "LocalSystem";'#10#9'State = "Stopped";'#10#9'Stat' +
        'us = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'S' +
        'ystemName = "GESTEVEZ";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio de administraci'#243'n de certificados y' +
        ' claves de mantenimiento";'#10#9'CheckPoint = 0;'#10#9'CreationClassName =' +
        ' "Win32_Service";'#10#9'Description = "Administra certificados y clav' +
        'es de mantenimiento (usadas por NAP)";'#10#9'DesktopInteract = FALSE;' +
        #10#9'DisplayName = "Servicio de administraci'#243'n de certificados y cl' +
        'aves de mantenimiento";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 10' +
        '77;'#10#9'Name = "hkmsvc";'#10#9'PathName = "C:\\WINDOWS\\System32\\svchos' +
        't.exe -k netsvcs";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode = 0;' +
        #10#9'ServiceType = "Share Process";'#10#9'Started = FALSE;'#10#9'StartMode = ' +
        '"Manual";'#10#9'StartName = "localSystem";'#10#9'State = "Stopped";'#10#9'Statu' +
        's = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'Sy' +
        'stemName = "GESTEVEZ";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "HTTP SSL";'#10#9'CheckPoint = 0;'#10#9'CreationClassNa' +
        'me = "Win32_Service";'#10#9'Description = "Este servicio implementa e' +
        'l protocolo de transferencia de hipertexto seguro (HTTPS), usand' +
        'o la Capa de sockets seguros (SSL). Si se deshabilita este servi' +
        'cio, no se podr'#225' iniciar ning'#250'n servicio que dependa expl'#237'citame' +
        'nte de '#233'l.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "HTTP SSL"' +
        ';'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "HTTPFilte' +
        'r";'#10#9'PathName = "C:\\WINDOWS\\System32\\svchost.exe -k HTTPFilte' +
        'r";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType =' +
        ' "Share Process";'#10#9'Started = FALSE;'#10#9'StartMode = "Manual";'#10#9'Star' +
        'tName = "LocalSystem";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'Syst' +
        'emCreationClassName = "Win32_ComputerSystem";'#10#9'SystemName = "GES' +
        'TEVEZ";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Windows CardSpace";'#10#9'CheckPoint = 0;'#10#9'Creati' +
        'onClassName = "Win32_Service";'#10#9'Description = "Habilita la creac' +
        'i'#243'n, administraci'#243'n y divulgaci'#243'n de identidades digitales de un' +
        'a manera segura.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Win' +
        'dows CardSpace";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 1077;'#10#9'Na' +
        'me = "idsvc";'#10#9'PathName = "\"c:\\WINDOWS\\Microsoft.NET\\Framewo' +
        'rk\\v3.0\\Windows Communication Foundation\\infocard.exe\"";'#10#9'Pr' +
        'ocessId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Share' +
        ' Process";'#10#9'Started = FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName =' +
        ' "LocalSystem";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreat' +
        'ionClassName = "Win32_ComputerSystem";'#10#9'SystemName = "GESTEVEZ";' +
        #10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio COM de grabaci'#243'n de CD de IMAPI";'#10#9 +
        'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'Descripti' +
        'on = "Administra la grabaci'#243'n de CD usando la interfaz de progra' +
        'maci'#243'n de aplicaciones de grabaci'#243'n de im'#225'genes (IMAPI). Si se d' +
        'etiene este servicio, el equipo no podr'#225' grabar los CD. Si est'#225' ' +
        'deshabilitado, los servicios que dependan de '#233'ste no se iniciar'#225 +
        'n.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Servicio COM de g' +
        'rabaci'#243'n de CD de IMAPI";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = ' +
        '0;'#10#9'Name = "ImapiService";'#10#9'PathName = "C:\\WINDOWS\\system32\\i' +
        'mapi.exe";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'Servic' +
        'eType = "Own Process";'#10#9'Started = FALSE;'#10#9'StartMode = "Manual";'#10 +
        #9'StartName = "LocalSystem";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10 +
        #9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'SystemName =' +
        ' "GESTEVEZ";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = TRUE;'#10#9'AcceptStop = ' +
        'TRUE;'#10#9'Caption = "Java Quick Starter";'#10#9'CheckPoint = 0;'#10#9'Creatio' +
        'nClassName = "Win32_Service";'#10#9'Description = "Prefetches JRE fil' +
        'es for faster startup of Java applets and applications";'#10#9'Deskto' +
        'pInteract = FALSE;'#10#9'DisplayName = "Java Quick Starter";'#10#9'ErrorCo' +
        'ntrol = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "JavaQuickStarterServic' +
        'e";'#10#9'PathName = "\"C:\\Archivos de programa\\Java\\jre6\\bin\\jq' +
        's.exe\" -service -config \"C:\\Archivos de programa\\Java\\jre6\' +
        '\lib\\deploy\\jqs\\jqs.conf\"";'#10#9'ProcessId = 880;'#10#9'ServiceSpecif' +
        'icExitCode = 0;'#10#9'ServiceType = "Own Process";'#10#9'Started = TRUE;'#10#9 +
        'StartMode = "Auto";'#10#9'StartName = "LocalSystem";'#10#9'State = "Runnin' +
        'g";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSy' +
        'stem";'#10#9'SystemName = "GESTEVEZ";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = TRUE;'#10#9'AcceptStop = ' +
        'TRUE;'#10#9'Caption = "Servidor";'#10#9'CheckPoint = 0;'#10#9'CreationClassName' +
        ' = "Win32_Service";'#10#9'Description = "Ofrece compatibilidad con us' +
        'o compartido de archivos, impresoras y canalizaciones con nombre' +
        's en la red para este equipo. Si se detiene el servicio, estas f' +
        'unciones no estar'#225'n disponibles. Si se deshabilita el servicio, ' +
        'no se podr'#225' iniciar ninguno de los servicios que dependan expl'#237'c' +
        'itamente de '#233'l.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Serv' +
        'idor";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "LanmanS' +
        'erver";'#10#9'PathName = "C:\\WINDOWS\\system32\\svchost.exe -k netsv' +
        'cs";'#10#9'ProcessId = 1028;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceTy' +
        'pe = "Share Process";'#10#9'Started = TRUE;'#10#9'StartMode = "Auto";'#10#9'Sta' +
        'rtName = "LocalSystem";'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9'Sys' +
        'temCreationClassName = "Win32_ComputerSystem";'#10#9'SystemName = "GE' +
        'STEVEZ";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = TRUE;'#10#9'AcceptStop = ' +
        'TRUE;'#10#9'Caption = "Estaci'#243'n de trabajo";'#10#9'CheckPoint = 0;'#10#9'Creati' +
        'onClassName = "Win32_Service";'#10#9'Description = "Crea y mantiene c' +
        'onexiones de cliente de red a servidores remotos. Si se detiene ' +
        'el servicio, estas conexiones no estar'#225'n disponibles. Si se desh' +
        'abilita el servicio, no se podr'#225' iniciar ninguno de los servicio' +
        's que dependan expl'#237'citamente de '#233'l.";'#10#9'DesktopInteract = FALSE;' +
        #10#9'DisplayName = "Estaci'#243'n de trabajo";'#10#9'ErrorControl = "Normal";' +
        #10#9'ExitCode = 0;'#10#9'Name = "lanmanworkstation";'#10#9'PathName = "C:\\WI' +
        'NDOWS\\system32\\svchost.exe -k netsvcs";'#10#9'ProcessId = 1028;'#10#9'Se' +
        'rviceSpecificExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Star' +
        'ted = TRUE;'#10#9'StartMode = "Auto";'#10#9'StartName = "LocalSystem";'#10#9'St' +
        'ate = "Running";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win' +
        '32_ComputerSystem";'#10#9'SystemName = "GESTEVEZ";'#10#9'TagId = 0;'#10#9'WaitH' +
        'int = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "LiveUpdate";'#10#9'CheckPoint = 0;'#10#9'CreationClass' +
        'Name = "Win32_Service";'#10#9'Description = "LiveUpdate Core Engine";' +
        #10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "LiveUpdate";'#10#9'ErrorCo' +
        'ntrol = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "LiveUpdate";'#10#9'PathName' +
        ' = "\"C:\\ARCHIV~1\\Symantec\\LIVEUP~1\\LUCOMS~1.EXE\"";'#10#9'Proces' +
        'sId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Own Proce' +
        'ss";'#10#9'Started = FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName = "Loca' +
        'lSystem";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationCla' +
        'ssName = "Win32_ComputerSystem";'#10#9'SystemName = "GESTEVEZ";'#10#9'TagI' +
        'd = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Ayuda de NetBIOS sobre TCP/IP";'#10#9'CheckPoint =' +
        ' 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'Description = "Habili' +
        'ta la compatibilidad con NetBIOS a trav'#233's del servicio TCP/IP (N' +
        'etBT) y la resoluci'#243'n de nombres NetBIOS.";'#10#9'DesktopInteract = F' +
        'ALSE;'#10#9'DisplayName = "Ayuda de NetBIOS sobre TCP/IP";'#10#9'ErrorCont' +
        'rol = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "LmHosts";'#10#9'PathName = "C' +
        ':\\WINDOWS\\system32\\svchost.exe -k LocalService";'#10#9'ProcessId =' +
        ' 1288;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Share Proce' +
        'ss";'#10#9'Started = TRUE;'#10#9'StartMode = "Auto";'#10#9'StartName = "NT AUTH' +
        'ORITY\\LocalService";'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9'Syste' +
        'mCreationClassName = "Win32_ComputerSystem";'#10#9'SystemName = "GEST' +
        'EVEZ";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "McAfee Framework Service";'#10#9'CheckPoint = 0;'#10#9 +
        'CreationClassName = "Win32_Service";'#10#9'Description = "Shared comp' +
        'onent framework for McAfee products";'#10#9'DesktopInteract = FALSE;'#10 +
        #9'DisplayName = "McAfee Framework Service";'#10#9'ErrorControl = "Norm' +
        'al";'#10#9'ExitCode = 0;'#10#9'Name = "McAfeeFramework";'#10#9'PathName = "\"C:' +
        '\\Archivos de programa\\McAfee\\Common Framework\\FrameworkServi' +
        'ce.exe\" /ServiceStart";'#10#9'ProcessId = 896;'#10#9'ServiceSpecificExitC' +
        'ode = 0;'#10#9'ServiceType = "Own Process";'#10#9'Started = TRUE;'#10#9'StartMo' +
        'de = "Auto";'#10#9'StartName = "LocalSystem";'#10#9'State = "Running";'#10#9'St' +
        'atus = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10 +
        #9'SystemName = "GESTEVEZ";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = TRUE;'#10#9'AcceptStop = ' +
        'TRUE;'#10#9'Caption = "McAfee McShield";'#10#9'CheckPoint = 0;'#10#9'CreationCl' +
        'assName = "Win32_Service";'#10#9'Description = "Ofrece protecci'#243'n de ' +
        'an'#225'lisis en tiempo real de McAfee para su equipo.";'#10#9'DesktopInte' +
        'ract = FALSE;'#10#9'DisplayName = "McAfee McShield";'#10#9'ErrorControl = ' +
        '"Normal";'#10#9'ExitCode = 0;'#10#9'Name = "McShield";'#10#9'PathName = "\"C:\\' +
        'Archivos de programa\\McAfee\\VirusScan Enterprise\\Mcshield.exe' +
        '\"";'#10#9'ProcessId = 924;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceTyp' +
        'e = "Own Process";'#10#9'Started = TRUE;'#10#9'StartMode = "Auto";'#10#9'StartN' +
        'ame = "LocalSystem";'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9'System' +
        'CreationClassName = "Win32_ComputerSystem";'#10#9'SystemName = "GESTE' +
        'VEZ";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "McAfee Task Manager";'#10#9'CheckPoint = 0;'#10#9'Creat' +
        'ionClassName = "Win32_Service";'#10#9'Description = "Permite planific' +
        'ar las actividades de an'#225'lisis y actualizaci'#243'n de McAfee.";'#10#9'Des' +
        'ktopInteract = FALSE;'#10#9'DisplayName = "McAfee Task Manager";'#10#9'Err' +
        'orControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "McTaskManager";'#10#9'P' +
        'athName = "\"C:\\Archivos de programa\\McAfee\\VirusScan Enterpr' +
        'ise\\VsTskMgr.exe\"";'#10#9'ProcessId = 980;'#10#9'ServiceSpecificExitCode' +
        ' = 0;'#10#9'ServiceType = "Own Process";'#10#9'Started = TRUE;'#10#9'StartMode ' +
        '= "Auto";'#10#9'StartName = "LocalSystem";'#10#9'State = "Running";'#10#9'Statu' +
        's = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'Sy' +
        'stemName = "GESTEVEZ";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Machine Debug Manager";'#10#9'CheckPoint = 0;'#10#9'Cre' +
        'ationClassName = "Win32_Service";'#10#9'Description = "Admite depurac' +
        'i'#243'n local y remota para depuradores de secuencia de comandos de ' +
        'Visual Studio. Si este servicio se detiene, los depuradores no f' +
        'uncionar'#225'n adecuadamente.";'#10#9'DesktopInteract = TRUE;'#10#9'DisplayNam' +
        'e = "Machine Debug Manager";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode' +
        ' = 0;'#10#9'Name = "MDM";'#10#9'PathName = "\"C:\\Archivos de programa\\Ar' +
        'chivos comunes\\Microsoft Shared\\VS7DEBUG\\MDM.EXE\"";'#10#9'Process' +
        'Id = 1092;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Own Pro' +
        'cess";'#10#9'Started = TRUE;'#10#9'StartMode = "Auto";'#10#9'StartName = "Local' +
        'System";'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9'SystemCreationClas' +
        'sName = "Win32_ComputerSystem";'#10#9'SystemName = "GESTEVEZ";'#10#9'TagId' +
        ' = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Mensajero";'#10#9'CheckPoint = 0;'#10#9'CreationClassN' +
        'ame = "Win32_Service";'#10#9'Description = "Transmite mensajes del se' +
        'rvicio de alertas y el comando net send entre clientes y servido' +
        'res. Este servicio no est'#225' relacionado con Windows Messenger. Si' +
        ' se detiene el servicio, no se transmitir'#225'n los mensajes de aler' +
        'ta. Si se deshabilita el servicio, no se podr'#225' iniciar ninguno d' +
        'e los servicios que dependan expl'#237'citamente de '#233'l.";'#10#9'DesktopInt' +
        'eract = FALSE;'#10#9'DisplayName = "Mensajero";'#10#9'ErrorControl = "Norm' +
        'al";'#10#9'ExitCode = 1077;'#10#9'Name = "Messenger";'#10#9'PathName = "C:\\WIN' +
        'DOWS\\system32\\svchost.exe -k netsvcs";'#10#9'ProcessId = 0;'#10#9'Servic' +
        'eSpecificExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started ' +
        '= FALSE;'#10#9'StartMode = "Disabled";'#10#9'StartName = "LocalSystem";'#10#9'S' +
        'tate = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Wi' +
        'n32_ComputerSystem";'#10#9'SystemName = "GESTEVEZ";'#10#9'TagId = 0;'#10#9'Wait' +
        'Hint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Escritorio remoto compartido de NetMeeting";' +
        #10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'Descrip' +
        'tion = "Permite a los usuarios autorizados acceder remotamente a' +
        ' su escritorio Windows usando NetMeeting.";'#10#9'DesktopInteract = T' +
        'RUE;'#10#9'DisplayName = "Escritorio remoto compartido de NetMeeting"' +
        ';'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "mnmsrvc";' +
        #10#9'PathName = "C:\\WINDOWS\\system32\\mnmsrvc.exe";'#10#9'ProcessId = ' +
        '0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Own Process";'#10#9 +
        'Started = FALSE;'#10#9'StartMode = "Disabled";'#10#9'StartName = "LocalSys' +
        'tem";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassNa' +
        'me = "Win32_ComputerSystem";'#10#9'SystemName = "GESTEVEZ";'#10#9'TagId = ' +
        '0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Coordinador de transacciones distribuidas de' +
        ' Microsoft";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Servic' +
        'e";'#10#9'Description = "Coordina las transacciones que se extienden ' +
        'a varios administradores de recursos, como bases de datos, colas' +
        ' de mensajes y sistemas de archivos. Si se detiene este servicio' +
        ', estas transacciones no se producir'#225'n. Si se deshabilita el ser' +
        'vicio, no se podr'#225' iniciar ning'#250'n servicio que dependa espec'#237'fic' +
        'amente de '#233'l.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Coordi' +
        'nador de transacciones distribuidas de Microsoft";'#10#9'ErrorControl' +
        ' = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "MSDTC";'#10#9'PathName = "C:\' +
        '\WINDOWS\\system32\\msdtc.exe";'#10#9'ProcessId = 0;'#10#9'ServiceSpecific' +
        'ExitCode = 0;'#10#9'ServiceType = "Own Process";'#10#9'Started = FALSE;'#10#9'S' +
        'tartMode = "Manual";'#10#9'StartName = "NT AUTHORITY\\NetworkService"' +
        ';'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName =' +
        ' "Win32_ComputerSystem";'#10#9'SystemName = "GESTEVEZ";'#10#9'TagId = 0;'#10#9 +
        'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Windows Installer";'#10#9'CheckPoint = 0;'#10#9'Creati' +
        'onClassName = "Win32_Service";'#10#9'Description = "Agrega, modifica ' +
        'y quita aplicaciones proporcionadas como paquetes de Windows Ins' +
        'taller (*.msi). Si se deshabilita este servicio, no se podr'#225' ini' +
        'ciar ninguno de los servicios que dependan expl'#237'citamente de '#233'l.' +
        '";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Windows Installer";' +
        #10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "MSIServer";'#10#9 +
        'PathName = "C:\\WINDOWS\\system32\\msiexec.exe /V";'#10#9'ProcessId =' +
        ' 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Share Process"' +
        ';'#10#9'Started = FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName = "LocalSy' +
        'stem";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassN' +
        'ame = "Win32_ComputerSystem";'#10#9'SystemName = "GESTEVEZ";'#10#9'TagId =' +
        ' 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Agente de Protecci'#243'n de acceso a redes";'#10#9'Ch' +
        'eckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'Description' +
        ' = "Permite a los clientes de Windows participar en la Protecci'#243 +
        'n de acceso a redes";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "' +
        'Agente de Protecci'#243'n de acceso a redes";'#10#9'ErrorControl = "Normal' +
        '";'#10#9'ExitCode = 1077;'#10#9'Name = "napagent";'#10#9'PathName = "C:\\WINDOW' +
        'S\\System32\\svchost.exe -k netsvcs";'#10#9'ProcessId = 0;'#10#9'ServiceSp' +
        'ecificExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = F' +
        'ALSE;'#10#9'StartMode = "Manual";'#10#9'StartName = "localSystem";'#10#9'State ' +
        '= "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_C' +
        'omputerSystem";'#10#9'SystemName = "GESTEVEZ";'#10#9'TagId = 0;'#10#9'WaitHint ' +
        '= 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Net Driver HPZ12";'#10#9'CheckPoint = 0;'#10#9'Creation' +
        'ClassName = "Win32_Service";'#10#9'Description = NULL;'#10#9'DesktopIntera' +
        'ct = FALSE;'#10#9'DisplayName = "Net Driver HPZ12";'#10#9'ErrorControl = "' +
        'Normal";'#10#9'ExitCode = 0;'#10#9'Name = "Net Driver HPZ12";'#10#9'PathName = ' +
        '"C:\\WINDOWS\\System32\\svchost.exe -k HPZ12";'#10#9'ProcessId = 332;' +
        #10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Own Process";'#10#9'St' +
        'arted = TRUE;'#10#9'StartMode = "Auto";'#10#9'StartName = "NT AUTHORITY\\L' +
        'ocalService";'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9'SystemCreatio' +
        'nClassName = "Win32_ComputerSystem";'#10#9'SystemName = "GESTEVEZ";'#10#9 +
        'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "DDE de red";'#10#9'CheckPoint = 0;'#10#9'CreationClass' +
        'Name = "Win32_Service";'#10#9'Description = "Ofrece transporte y segu' +
        'ridad en la red para el Intercambio din'#225'mico de datos (DDE) para' +
        ' los programas que se ejecutan en el mismo equipo o en diferente' +
        's equipos. Si este servicio se detiene, se deshabilitar'#225'n el tra' +
        'nsporte y la seguridad DDE. Si este servicio est'#225' deshabilitado,' +
        ' cualquier servicio que expl'#237'citamente dependa de '#233'l no podr'#225' in' +
        'iciarse.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "DDE de red"' +
        ';'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "NetDDE";'#10 +
        #9'PathName = "C:\\WINDOWS\\system32\\netdde.exe";'#10#9'ProcessId = 0;' +
        #10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9 +
        'Started = FALSE;'#10#9'StartMode = "Disabled";'#10#9'StartName = "LocalSys' +
        'tem";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassNa' +
        'me = "Win32_ComputerSystem";'#10#9'SystemName = "GESTEVEZ";'#10#9'TagId = ' +
        '0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "DSDM de DDE de red";'#10#9'CheckPoint = 0;'#10#9'Creat' +
        'ionClassName = "Win32_Service";'#10#9'Description = "Administra los r' +
        'ecursos de red Intercambio din'#225'mico de datos (DDE). Si este serv' +
        'icio se detiene, se deshabilitar'#225'n los recursos compartidos de r' +
        'ed DDE. Si este servicio est'#225' deshabilitado, cualquier servicio ' +
        'que expl'#237'citamente dependa de '#233'l no podr'#225' iniciarse.";'#10#9'DesktopI' +
        'nteract = FALSE;'#10#9'DisplayName = "DSDM de DDE de red";'#10#9'ErrorCont' +
        'rol = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "NetDDEdsdm";'#10#9'PathNam' +
        'e = "C:\\WINDOWS\\system32\\netdde.exe";'#10#9'ProcessId = 0;'#10#9'Servic' +
        'eSpecificExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started ' +
        '= FALSE;'#10#9'StartMode = "Disabled";'#10#9'StartName = "LocalSystem";'#10#9'S' +
        'tate = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Wi' +
        'n32_ComputerSystem";'#10#9'SystemName = "GESTEVEZ";'#10#9'TagId = 0;'#10#9'Wait' +
        'Hint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Inicio de sesi'#243'n en red";'#10#9'CheckPoint = 0;'#10#9 +
        'CreationClassName = "Win32_Service";'#10#9'Description = "Admite la a' +
        'utenticaci'#243'n de paso de sucesos de inicio de sesi'#243'n de cuenta pa' +
        'ra los equipos en un dominio.";'#10#9'DesktopInteract = FALSE;'#10#9'Displ' +
        'ayName = "Inicio de sesi'#243'n en red";'#10#9'ErrorControl = "Normal";'#10#9'E' +
        'xitCode = 1077;'#10#9'Name = "Netlogon";'#10#9'PathName = "C:\\WINDOWS\\sy' +
        'stem32\\lsass.exe";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode = 0' +
        ';'#10#9'ServiceType = "Share Process";'#10#9'Started = FALSE;'#10#9'StartMode =' +
        ' "Manual";'#10#9'StartName = "LocalSystem";'#10#9'State = "Stopped";'#10#9'Stat' +
        'us = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'S' +
        'ystemName = "GESTEVEZ";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Conexiones de red";'#10#9'CheckPoint = 0;'#10#9'Creatio' +
        'nClassName = "Win32_Service";'#10#9'Description = "Administra objetos' +
        ' en la carpeta Conexiones de red y acceso telef'#243'nico, donde se p' +
        'ueden ver conexiones de red de '#225'rea local y remotas.";'#10#9'DesktopI' +
        'nteract = TRUE;'#10#9'DisplayName = "Conexiones de red";'#10#9'ErrorContro' +
        'l = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "Netman";'#10#9'PathName = "C:\\' +
        'WINDOWS\\System32\\svchost.exe -k netsvcs";'#10#9'ProcessId = 1028;'#10#9 +
        'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'St' +
        'arted = TRUE;'#10#9'StartMode = "Manual";'#10#9'StartName = "LocalSystem";' +
        #10#9'State = "Running";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = ' +
        '"Win32_ComputerSystem";'#10#9'SystemName = "GESTEVEZ";'#10#9'TagId = 0;'#10#9'W' +
        'aitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio de uso compartido de puertos Net.Tc' +
        'p";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'Desc' +
        'ription = "Ofrece la posibilidad de compartir puertos TCP a trav' +
        #233's del protocolo net.tcp.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayNa' +
        'me = "Servicio de uso compartido de puertos Net.Tcp";'#10#9'ErrorCont' +
        'rol = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "NetTcpPortSharing";'#10#9 +
        'PathName = "\"c:\\WINDOWS\\Microsoft.NET\\Framework\\v3.0\\Windo' +
        'ws Communication Foundation\\SMSvcHost.exe\"";'#10#9'ProcessId = 0;'#10#9 +
        'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'St' +
        'arted = FALSE;'#10#9'StartMode = "Disabled";'#10#9'StartName = "NT AUTHORI' +
        'TY\\LocalService";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCr' +
        'eationClassName = "Win32_ComputerSystem";'#10#9'SystemName = "GESTEVE' +
        'Z";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "NLA (Network Location Awareness)";'#10#9'CheckPoin' +
        't = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'Description = "Rec' +
        'opila y almacena informaci'#243'n de configuraci'#243'n y ubicaci'#243'n de red' +
        'es, e informa a las aplicaciones cuando esta informaci'#243'n cambia.' +
        '";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "NLA (Network Locati' +
        'on Awareness)";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name =' +
        ' "Nla";'#10#9'PathName = "C:\\WINDOWS\\system32\\svchost.exe -k netsv' +
        'cs";'#10#9'ProcessId = 1028;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceTy' +
        'pe = "Share Process";'#10#9'Started = TRUE;'#10#9'StartMode = "Manual";'#10#9'S' +
        'tartName = "LocalSystem";'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9'S' +
        'ystemCreationClassName = "Win32_ComputerSystem";'#10#9'SystemName = "' +
        'GESTEVEZ";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Proveedor de compatibilidad con seguridad LM' +
        ' de Windows NT";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Se' +
        'rvice";'#10#9'Description = "Ofrece seguridad a programas de llamada ' +
        'a procedimiento remoto (RPC) que utilizan transportes diferentes' +
        ' de conductos con nombres.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayN' +
        'ame = "Proveedor de compatibilidad con seguridad LM de Windows N' +
        'T";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "NtLmSsp' +
        '";'#10#9'PathName = "C:\\WINDOWS\\system32\\lsass.exe";'#10#9'ProcessId = ' +
        '0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Share Process";' +
        #10#9'Started = FALSE;'#10#9'StartMode = "Disabled";'#10#9'StartName = "LocalS' +
        'ystem";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClass' +
        'Name = "Win32_ComputerSystem";'#10#9'SystemName = "GESTEVEZ";'#10#9'TagId ' +
        '= 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Medios de almacenamiento extra'#237'bles";'#10#9'Check' +
        'Point = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'Description = ' +
        'NULL;'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Medios de almace' +
        'namiento extra'#237'bles";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 1077' +
        ';'#10#9'Name = "NtmsSvc";'#10#9'PathName = "C:\\WINDOWS\\system32\\svchost' +
        '.exe -k netsvcs";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10 +
        #9'ServiceType = "Share Process";'#10#9'Started = FALSE;'#10#9'StartMode = "' +
        'Manual";'#10#9'StartName = "LocalSystem";'#10#9'State = "Stopped";'#10#9'Status' +
        ' = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'Sys' +
        'temName = "GESTEVEZ";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Office Source Engine";'#10#9'CheckPoint = 0;'#10#9'Cre' +
        'ationClassName = "Win32_Service";'#10#9'Description = "Guarda los arc' +
        'hivos de instalaci'#243'n utilizados para las actualizaciones y repar' +
        'aciones, y es necesario para descargar  actualizaciones del prog' +
        'rama de instalaci'#243'n e informes de error de Watson.";'#10#9'DesktopInt' +
        'eract = FALSE;'#10#9'DisplayName = "Office Source Engine";'#10#9'ErrorCont' +
        'rol = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "ose";'#10#9'PathName = "\"' +
        'C:\\Archivos de programa\\Archivos comunes\\Microsoft Shared\\So' +
        'urce Engine\\OSE.EXE\"";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCod' +
        'e = 0;'#10#9'ServiceType = "Own Process";'#10#9'Started = FALSE;'#10#9'StartMod' +
        'e = "Manual";'#10#9'StartName = "LocalSystem";'#10#9'State = "Stopped";'#10#9'S' +
        'tatus = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";' +
        #10#9'SystemName = "GESTEVEZ";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "pdfFactory Pro Dispatcher v3";'#10#9'CheckPoint = ' +
        '0;'#10#9'CreationClassName = "Win32_Service";'#10#9'Description = NULL;'#10#9'D' +
        'esktopInteract = FALSE;'#10#9'DisplayName = "pdfFactory Pro Dispatche' +
        'r v3";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "pdfFact' +
        'ory Pro Dispatcher v3";'#10#9'PathName = "\"C:\\WINDOWS\\System32\\sp' +
        'ool\\DRIVERS\\W32X86\\3\\fppdis3a.exe\" /service";'#10#9'ProcessId = ' +
        '432;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Own Process";' +
        #10#9'Started = TRUE;'#10#9'StartMode = "Auto";'#10#9'StartName = "LocalSystem' +
        '";'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9'SystemCreationClassName ' +
        '= "Win32_ComputerSystem";'#10#9'SystemName = "GESTEVEZ";'#10#9'TagId = 0;'#10 +
        #9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Plug and Play";'#10#9'CheckPoint = 0;'#10#9'CreationCl' +
        'assName = "Win32_Service";'#10#9'Description = "Habilita un equipo pa' +
        'ra que reconozca y adapte los cambios de hardware con el menor e' +
        'sfuerzo por parte del usuario. Si se detiene o deshabilita este ' +
        'servicio, el sistema se volver'#225' inestable. ";'#10#9'DesktopInteract =' +
        ' FALSE;'#10#9'DisplayName = "Plug and Play";'#10#9'ErrorControl = "Normal"' +
        ';'#10#9'ExitCode = 0;'#10#9'Name = "PlugPlay";'#10#9'PathName = "C:\\WINDOWS\\s' +
        'ystem32\\services.exe";'#10#9'ProcessId = 1688;'#10#9'ServiceSpecificExitC' +
        'ode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = TRUE;'#10#9'Start' +
        'Mode = "Auto";'#10#9'StartName = "LocalSystem";'#10#9'State = "Running";'#10#9 +
        'Status = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem"' +
        ';'#10#9'SystemName = "GESTEVEZ";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Pml Driver HPZ12";'#10#9'CheckPoint = 0;'#10#9'Creation' +
        'ClassName = "Win32_Service";'#10#9'Description = NULL;'#10#9'DesktopIntera' +
        'ct = FALSE;'#10#9'DisplayName = "Pml Driver HPZ12";'#10#9'ErrorControl = "' +
        'Normal";'#10#9'ExitCode = 0;'#10#9'Name = "Pml Driver HPZ12";'#10#9'PathName = ' +
        '"C:\\WINDOWS\\System32\\svchost.exe -k HPZ12";'#10#9'ProcessId = 496;' +
        #10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Own Process";'#10#9'St' +
        'arted = TRUE;'#10#9'StartMode = "Auto";'#10#9'StartName = "NT AUTHORITY\\L' +
        'ocalService";'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9'SystemCreatio' +
        'nClassName = "Win32_ComputerSystem";'#10#9'SystemName = "GESTEVEZ";'#10#9 +
        'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Servicios IPSEC";'#10#9'CheckPoint = 0;'#10#9'CreationC' +
        'lassName = "Win32_Service";'#10#9'Description = "Administra la direct' +
        'iva de seguridad IP e inicia el controlador ISAKMP/Oakley (IKE) ' +
        'y de seguridad IP.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "S' +
        'ervicios IPSEC";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name ' +
        '= "PolicyAgent";'#10#9'PathName = "C:\\WINDOWS\\system32\\lsass.exe";' +
        #10#9'ProcessId = 1700;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType =' +
        ' "Share Process";'#10#9'Started = TRUE;'#10#9'StartMode = "Auto";'#10#9'StartNa' +
        'me = "LocalSystem";'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9'SystemC' +
        'reationClassName = "Win32_ComputerSystem";'#10#9'SystemName = "GESTEV' +
        'EZ";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Almacenamiento protegido";'#10#9'CheckPoint = 0;'#10#9 +
        'CreationClassName = "Win32_Service";'#10#9'Description = "Ofrece alma' +
        'cenamiento protegido para datos importantes, como claves privada' +
        's, para impedir el acceso de servicios, procesos o usuarios no a' +
        'utorizados.";'#10#9'DesktopInteract = TRUE;'#10#9'DisplayName = "Almacenam' +
        'iento protegido";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name' +
        ' = "ProtectedStorage";'#10#9'PathName = "C:\\WINDOWS\\system32\\lsass' +
        '.exe";'#10#9'ProcessId = 1700;'#10#9'ServiceSpecificExitCode = 0;'#10#9'Service' +
        'Type = "Share Process";'#10#9'Started = TRUE;'#10#9'StartMode = "Auto";'#10#9'S' +
        'tartName = "LocalSystem";'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9'S' +
        'ystemCreationClassName = "Win32_ComputerSystem";'#10#9'SystemName = "' +
        'GESTEVEZ";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Administrador de conexi'#243'n autom'#225'tica de acce' +
        'so remoto";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service' +
        '";'#10#9'Description = "Crea una conexi'#243'n a una red remota siempre qu' +
        'e un programa hace referencia a un nombre o direcci'#243'n DNS o NetB' +
        'ios remoto.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Administ' +
        'rador de conexi'#243'n autom'#225'tica de acceso remoto";'#10#9'ErrorControl = ' +
        '"Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "RasAuto";'#10#9'PathName = "C:\\' +
        'WINDOWS\\system32\\svchost.exe -k netsvcs";'#10#9'ProcessId = 0;'#10#9'Ser' +
        'viceSpecificExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Start' +
        'ed = FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName = "LocalSystem";'#10#9 +
        'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "W' +
        'in32_ComputerSystem";'#10#9'SystemName = "GESTEVEZ";'#10#9'TagId = 0;'#10#9'Wai' +
        'tHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Administrador de conexi'#243'n de acceso remoto";'#10 +
        #9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'Descript' +
        'ion = "Crea una conexi'#243'n de red.";'#10#9'DesktopInteract = FALSE;'#10#9'Di' +
        'splayName = "Administrador de conexi'#243'n de acceso remoto";'#10#9'Error' +
        'Control = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "RasMan";'#10#9'PathName =' +
        ' "C:\\WINDOWS\\system32\\svchost.exe -k netsvcs";'#10#9'ProcessId = 1' +
        '028;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Share Process' +
        '";'#10#9'Started = TRUE;'#10#9'StartMode = "Manual";'#10#9'StartName = "LocalSy' +
        'stem";'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9'SystemCreationClassN' +
        'ame = "Win32_ComputerSystem";'#10#9'SystemName = "GESTEVEZ";'#10#9'TagId =' +
        ' 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Administrador de sesi'#243'n de Ayuda de escritor' +
        'io remoto";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service' +
        '";'#10#9'Description = "Administra y controla la Asistencia remota. S' +
        'i se detiene este servicio, Asistencia remota no estar'#225' disponib' +
        'le. Antes de detener el servicio, vea la ficha Dependencias en e' +
        'l cuadro de di'#225'logo Propiedades.";'#10#9'DesktopInteract = FALSE;'#10#9'Di' +
        'splayName = "Administrador de sesi'#243'n de Ayuda de escritorio remo' +
        'to";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "RDSess' +
        'Mgr";'#10#9'PathName = "C:\\WINDOWS\\system32\\sessmgr.exe";'#10#9'Process' +
        'Id = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Own Proces' +
        's";'#10#9'Started = FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName = "Local' +
        'System";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClas' +
        'sName = "Win32_ComputerSystem";'#10#9'SystemName = "GESTEVEZ";'#10#9'TagId' +
        ' = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Enrutamiento y acceso remoto";'#10#9'CheckPoint =' +
        ' 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'Description = "Ofrece' +
        ' servicios de enrutamiento a empresas en entornos de red de '#225'rea' +
        ' local y extensa.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "En' +
        'rutamiento y acceso remoto";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode' +
        ' = 1077;'#10#9'Name = "RemoteAccess";'#10#9'PathName = "C:\\WINDOWS\\syste' +
        'm32\\svchost.exe -k netsvcs";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificEx' +
        'itCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = FALSE;'#10#9'S' +
        'tartMode = "Disabled";'#10#9'StartName = "LocalSystem";'#10#9'State = "Sto' +
        'pped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_Compute' +
        'rSystem";'#10#9'SystemName = "GESTEVEZ";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'}' +
        ';'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Registro remoto";'#10#9'CheckPoint = 0;'#10#9'Creation' +
        'ClassName = "Win32_Service";'#10#9'Description = "Habilita usuarios r' +
        'emotos para que modifiquen la configuraci'#243'n del Registro en este' +
        ' equipo. Si se detiene este servicio, cualquier usuario en este ' +
        'equipo puede modificar el Registro. Si este servicio est'#225' deshab' +
        'ilitado, cualquier servicio que expl'#237'citamente dependa de '#233'l no ' +
        'podr'#225' iniciarse.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Reg' +
        'istro remoto";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name' +
        ' = "RemoteRegistry";'#10#9'PathName = "C:\\WINDOWS\\system32\\svchost' +
        '.exe -k LocalService";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode ' +
        '= 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = FALSE;'#10#9'StartMod' +
        'e = "Disabled";'#10#9'StartName = "NT AUTHORITY\\LocalService";'#10#9'Stat' +
        'e = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32' +
        '_ComputerSystem";'#10#9'SystemName = "GESTEVEZ";'#10#9'TagId = 0;'#10#9'WaitHin' +
        't = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Localizador de llamadas a procedimiento remo' +
        'to (RPC)";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service"' +
        ';'#10#9'Description = "Administra la base de datos de servicios de no' +
        'mbres RPC.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Localizad' +
        'or de llamadas a procedimiento remoto (RPC)";'#10#9'ErrorControl = "N' +
        'ormal";'#10#9'ExitCode = 1077;'#10#9'Name = "RpcLocator";'#10#9'PathName = "C:\' +
        '\WINDOWS\\system32\\locator.exe";'#10#9'ProcessId = 0;'#10#9'ServiceSpecif' +
        'icExitCode = 0;'#10#9'ServiceType = "Own Process";'#10#9'Started = FALSE;'#10 +
        #9'StartMode = "Manual";'#10#9'StartName = "NT AUTHORITY\\NetworkServic' +
        'e";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName' +
        ' = "Win32_ComputerSystem";'#10#9'SystemName = "GESTEVEZ";'#10#9'TagId = 0;' +
        #10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Llamada a procedimiento remoto (RPC)";'#10#9'Chec' +
        'kPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'Description =' +
        ' "Ofrece el asignador de punto final y otros servicios RPC diver' +
        'sos.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Llamada a proce' +
        'dimiento remoto (RPC)";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;' +
        #10#9'Name = "RpcSs";'#10#9'PathName = "C:\\WINDOWS\\system32\\svchost -k' +
        ' rpcss";'#10#9'ProcessId = 2036;'#10#9'ServiceSpecificExitCode = 0;'#10#9'Servi' +
        'ceType = "Own Process";'#10#9'Started = TRUE;'#10#9'StartMode = "Auto";'#10#9'S' +
        'tartName = "NT AUTHORITY\\NetworkService";'#10#9'State = "Running";'#10#9 +
        'Status = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem"' +
        ';'#10#9'SystemName = "GESTEVEZ";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "QoS RSVP";'#10#9'CheckPoint = 0;'#10#9'CreationClassNa' +
        'me = "Win32_Service";'#10#9'Description = "Ofrece funcionalidad de se' +
        #241'alizaci'#243'n de red y control del tr'#225'fico local para programas y s' +
        'ubprogramas de control compatibles con QoS.";'#10#9'DesktopInteract =' +
        ' FALSE;'#10#9'DisplayName = "QoS RSVP";'#10#9'ErrorControl = "Normal";'#10#9'Ex' +
        'itCode = 1077;'#10#9'Name = "RSVP";'#10#9'PathName = "C:\\WINDOWS\\system3' +
        '2\\rsvp.exe";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'Ser' +
        'viceType = "Own Process";'#10#9'Started = FALSE;'#10#9'StartMode = "Manual' +
        '";'#10#9'StartName = "LocalSystem";'#10#9'State = "Stopped";'#10#9'Status = "OK' +
        '";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'SystemNam' +
        'e = "GESTEVEZ";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Administrador de cuentas de seguridad";'#10#9'Che' +
        'ckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'Description ' +
        '= "Almacena informaci'#243'n de seguridad de cuentas de usuario local' +
        'es.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Administrador de' +
        ' cuentas de seguridad";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;' +
        #10#9'Name = "SamSs";'#10#9'PathName = "C:\\WINDOWS\\system32\\lsass.exe"' +
        ';'#10#9'ProcessId = 1700;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType ' +
        '= "Share Process";'#10#9'Started = TRUE;'#10#9'StartMode = "Auto";'#10#9'StartN' +
        'ame = "LocalSystem";'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9'System' +
        'CreationClassName = "Win32_ComputerSystem";'#10#9'SystemName = "GESTE' +
        'VEZ";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Tarjeta inteligente";'#10#9'CheckPoint = 0;'#10#9'Crea' +
        'tionClassName = "Win32_Service";'#10#9'Description = "Administra el a' +
        'cceso a una tarjeta inteligente de la el equipo hace lectura. Si' +
        ' este servicio se detiene, el equipo no podr'#225' leer las tarjetas ' +
        'inteligentes. Si este servicio est'#225' deshabilitado, cualquier ser' +
        'vicio que expl'#237'citamente dependa de '#233'l no podr'#225' iniciarse.";'#10#9'De' +
        'sktopInteract = FALSE;'#10#9'DisplayName = "Tarjeta inteligente";'#10#9'Er' +
        'rorControl = "Ignore";'#10#9'ExitCode = 1077;'#10#9'Name = "SCardSvr";'#10#9'Pa' +
        'thName = "C:\\WINDOWS\\System32\\SCardSvr.exe";'#10#9'ProcessId = 0;'#10 +
        #9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'S' +
        'tarted = FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName = "NT AUTHORIT' +
        'Y\\LocalService";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCre' +
        'ationClassName = "Win32_ComputerSystem";'#10#9'SystemName = "GESTEVEZ' +
        '";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = TRUE;'#10#9'AcceptStop = ' +
        'TRUE;'#10#9'Caption = "Programador de tareas";'#10#9'CheckPoint = 0;'#10#9'Crea' +
        'tionClassName = "Win32_Service";'#10#9'Description = "Habilita un usu' +
        'ario para que configure y programe tareas autom'#225'ticas en este eq' +
        'uipo. Si se detiene este equipo, estas tareas no se ejecutar'#225'n e' +
        'n sus horas programadas. Si este servicio est'#225' deshabilitado, cu' +
        'alquier servicio que expl'#237'citamente dependa de '#233'l no podr'#225' inici' +
        'arse.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Programador de' +
        ' tareas";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "Sche' +
        'dule";'#10#9'PathName = "C:\\WINDOWS\\System32\\svchost.exe -k netsvc' +
        's";'#10#9'ProcessId = 1028;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceTyp' +
        'e = "Share Process";'#10#9'Started = TRUE;'#10#9'StartMode = "Auto";'#10#9'Star' +
        'tName = "LocalSystem";'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9'Syst' +
        'emCreationClassName = "Win32_ComputerSystem";'#10#9'SystemName = "GES' +
        'TEVEZ";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = TRUE;'#10#9'AcceptStop = ' +
        'TRUE;'#10#9'Caption = "Inicio de sesi'#243'n secundario";'#10#9'CheckPoint = 0;' +
        #10#9'CreationClassName = "Win32_Service";'#10#9'Description = "Habilita ' +
        'los procesos de inicio en credenciales alternas. Si se detiene e' +
        'ste servicio, se deshabilitar'#225' este tipo de acceso de inicio de ' +
        'sesi'#243'n. Si este servicio est'#225' deshabilitado, cualquier servicio ' +
        'que expl'#237'citamente dependa de '#233'l no podr'#225' iniciarse.";'#10#9'DesktopI' +
        'nteract = TRUE;'#10#9'DisplayName = "Inicio de sesi'#243'n secundario";'#10#9'E' +
        'rrorControl = "Ignore";'#10#9'ExitCode = 0;'#10#9'Name = "seclogon";'#10#9'Path' +
        'Name = "C:\\WINDOWS\\System32\\svchost.exe -k netsvcs";'#10#9'Process' +
        'Id = 1028;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Share P' +
        'rocess";'#10#9'Started = TRUE;'#10#9'StartMode = "Auto";'#10#9'StartName = "Loc' +
        'alSystem";'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9'SystemCreationCl' +
        'assName = "Win32_ComputerSystem";'#10#9'SystemName = "GESTEVEZ";'#10#9'Tag' +
        'Id = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Notificaci'#243'n de sucesos del sistema";'#10#9'CheckP' +
        'oint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'Description = "' +
        'Registra sucesos del sistema como los de inicio de sesi'#243'n en Win' +
        'dows, red y energ'#237'a, y los notifica a los suscriptores de suceso' +
        's del sistema COM+.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "' +
        'Notificaci'#243'n de sucesos del sistema";'#10#9'ErrorControl = "Normal";'#10 +
        #9'ExitCode = 0;'#10#9'Name = "SENS";'#10#9'PathName = "C:\\WINDOWS\\system3' +
        '2\\svchost.exe -k netsvcs";'#10#9'ProcessId = 1028;'#10#9'ServiceSpecificE' +
        'xitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = TRUE;'#10#9'S' +
        'tartMode = "Auto";'#10#9'StartName = "LocalSystem";'#10#9'State = "Running' +
        '";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSys' +
        'tem";'#10#9'SystemName = "GESTEVEZ";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Firewall de Windows/Conexi'#243'n compartida a Int' +
        'ernet (ICS)";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Servi' +
        'ce";'#10#9'Description = "Ofrece servicios de traducci'#243'n de direccion' +
        'es, direccionamiento, resoluci'#243'n de nombres y/o servicios de pre' +
        'venci'#243'n de intrusi'#243'n para una red dom'#233'stica o de peque'#241'a empresa' +
        '.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Firewall de Window' +
        's/Conexi'#243'n compartida a Internet (ICS)";'#10#9'ErrorControl = "Normal' +
        '";'#10#9'ExitCode = 0;'#10#9'Name = "SharedAccess";'#10#9'PathName = "C:\\WINDO' +
        'WS\\system32\\svchost.exe -k netsvcs";'#10#9'ProcessId = 1028;'#10#9'Servi' +
        'ceSpecificExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started' +
        ' = TRUE;'#10#9'StartMode = "Auto";'#10#9'StartName = "LocalSystem";'#10#9'State' +
        ' = "Running";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_' +
        'ComputerSystem";'#10#9'SystemName = "GESTEVEZ";'#10#9'TagId = 0;'#10#9'WaitHint' +
        ' = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = TRUE;'#10#9'AcceptStop = ' +
        'TRUE;'#10#9'Caption = "Detecci'#243'n de hardware shell";'#10#9'CheckPoint = 0;' +
        #10#9'CreationClassName = "Win32_Service";'#10#9'Description = "Proporcio' +
        'na notificaciones sobre eventos de hardware AutoPlay.";'#10#9'Desktop' +
        'Interact = FALSE;'#10#9'DisplayName = "Detecci'#243'n de hardware shell";'#10 +
        #9'ErrorControl = "Ignore";'#10#9'ExitCode = 0;'#10#9'Name = "ShellHWDetecti' +
        'on";'#10#9'PathName = "C:\\WINDOWS\\System32\\svchost.exe -k netsvcs"' +
        ';'#10#9'ProcessId = 1028;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType ' +
        '= "Share Process";'#10#9'Started = TRUE;'#10#9'StartMode = "Auto";'#10#9'StartN' +
        'ame = "LocalSystem";'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9'System' +
        'CreationClassName = "Win32_ComputerSystem";'#10#9'SystemName = "GESTE' +
        'VEZ";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Cola de impresi'#243'n";'#10#9'CheckPoint = 0;'#10#9'Creatio' +
        'nClassName = "Win32_Service";'#10#9'Description = "Carga archivos en ' +
        'la memoria para imprimirlos despu'#233's.";'#10#9'DesktopInteract = TRUE;'#10 +
        #9'DisplayName = "Cola de impresi'#243'n";'#10#9'ErrorControl = "Normal";'#10#9'E' +
        'xitCode = 0;'#10#9'Name = "Spooler";'#10#9'PathName = "C:\\WINDOWS\\system' +
        '32\\spoolsv.exe";'#10#9'ProcessId = 1400;'#10#9'ServiceSpecificExitCode = ' +
        '0;'#10#9'ServiceType = "Own Process";'#10#9'Started = TRUE;'#10#9'StartMode = "' +
        'Auto";'#10#9'StartName = "LocalSystem";'#10#9'State = "Running";'#10#9'Status =' +
        ' "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'Syste' +
        'mName = "GESTEVEZ";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio de restauraci'#243'n de sistema";'#10#9'Check' +
        'Point = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'Description = ' +
        '"Realiza funciones de restauraci'#243'n del sistema. Para detener el ' +
        'servicio, desactive Restaurar sistema en la ficha de Restaurar s' +
        'istema en propiedades de Mi PC";'#10#9'DesktopInteract = FALSE;'#10#9'Disp' +
        'layName = "Servicio de restauraci'#243'n de sistema";'#10#9'ErrorControl =' +
        ' "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "srservice";'#10#9'PathName = "C:\\' +
        'WINDOWS\\system32\\svchost.exe -k netsvcs";'#10#9'ProcessId = 0;'#10#9'Ser' +
        'viceSpecificExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Start' +
        'ed = FALSE;'#10#9'StartMode = "Auto";'#10#9'StartName = "LocalSystem";'#10#9'St' +
        'ate = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win' +
        '32_ComputerSystem";'#10#9'SystemName = "GESTEVEZ";'#10#9'TagId = 0;'#10#9'WaitH' +
        'int = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Servicio de descubrimientos SSDP";'#10#9'CheckPoin' +
        't = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'Description = "Hab' +
        'ilita el descubrimiento de dispositivos UPnP en su red dom'#233'stica' +
        '.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Servicio de descub' +
        'rimientos SSDP";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name ' +
        '= "SSDPSRV";'#10#9'PathName = "C:\\WINDOWS\\system32\\svchost.exe -k ' +
        'LocalService";'#10#9'ProcessId = 1288;'#10#9'ServiceSpecificExitCode = 0;'#10 +
        #9'ServiceType = "Share Process";'#10#9'Started = TRUE;'#10#9'StartMode = "M' +
        'anual";'#10#9'StartName = "NT AUTHORITY\\LocalService";'#10#9'State = "Run' +
        'ning";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_Compute' +
        'rSystem";'#10#9'SystemName = "GESTEVEZ";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'}' +
        ';'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Adquisici'#243'n de im'#225'genes de Windows (WIA)";'#10#9'C' +
        'heckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'Descriptio' +
        'n = "Proporciona servicios de digitalizaci'#243'n de im'#225'genes para es' +
        'c'#225'neres y c'#225'maras.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "A' +
        'dquisici'#243'n de im'#225'genes de Windows (WIA)";'#10#9'ErrorControl = "Norma' +
        'l";'#10#9'ExitCode = 0;'#10#9'Name = "stisvc";'#10#9'PathName = "C:\\WINDOWS\\s' +
        'ystem32\\svchost.exe -k imgsvc";'#10#9'ProcessId = 3356;'#10#9'ServiceSpec' +
        'ificExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = TRU' +
        'E;'#10#9'StartMode = "Manual";'#10#9'StartName = "LocalSystem";'#10#9'State = "' +
        'Running";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_Comp' +
        'uterSystem";'#10#9'SystemName = "GESTEVEZ";'#10#9'TagId = 0;'#10#9'WaitHint = 0' +
        ';'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "MS Software Shadow Copy Provider";'#10#9'CheckPoi' +
        'nt = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'Description = "Ad' +
        'ministra instant'#225'neas de volumen basadas en software y tomadas p' +
        'or el Servicio de instant'#225'neas de volumen. Si se detiene el serv' +
        'icio, no se podr'#225'n administrar las instant'#225'neas de volumen basad' +
        'as en software. Si se deshabilita el servicio, no se podr'#225' inici' +
        'ar ninguno de los servicios que dependen expl'#237'citamente de '#233'l.";' +
        #10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "MS Software Shadow Co' +
        'py Provider";'#10#9'ErrorControl = "Ignore";'#10#9'ExitCode = 1077;'#10#9'Name ' +
        '= "SwPrv";'#10#9'PathName = "C:\\WINDOWS\\system32\\dllhost.exe /Proc' +
        'essid:{74CFFB80-B34A-4537-B42F-23FB18958B2A}";'#10#9'ProcessId = 0;'#10#9 +
        'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Own Process";'#10#9'Star' +
        'ted = FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName = "LocalSystem";'#10 +
        #9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "' +
        'Win32_ComputerSystem";'#10#9'SystemName = "GESTEVEZ";'#10#9'TagId = 0;'#10#9'Wa' +
        'itHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Registros y alertas de rendimiento";'#10#9'CheckP' +
        'oint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'Description = "' +
        'Recopila informaci'#243'n de rendimiento de equipos locales o remotos' +
        ' de acuerdo a par'#225'metros de programaci'#243'n configurados previament' +
        'e, luego guarda la informaci'#243'n en un registro o emite una alerta' +
        '. Si se detiene el servicio, no se recopilar'#225' la informaci'#243'n de ' +
        'rendimiento. Si se deshabilita el servicio, no se podr'#225' iniciar ' +
        'ninguno de los servicios que dependan expl'#237'citamente de '#233'l.";'#10#9'D' +
        'esktopInteract = FALSE;'#10#9'DisplayName = "Registros y alertas de r' +
        'endimiento";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name =' +
        ' "SysmonLog";'#10#9'PathName = "C:\\WINDOWS\\system32\\smlogsvc.exe";' +
        #10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "O' +
        'wn Process";'#10#9'Started = FALSE;'#10#9'StartMode = "Disabled";'#10#9'StartNa' +
        'me = "NT Authority\\NetworkService";'#10#9'State = "Stopped";'#10#9'Status' +
        ' = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'Sys' +
        'temName = "GESTEVEZ";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = TRUE;'#10#9'AcceptStop = ' +
        'TRUE;'#10#9'Caption = "Telefon'#237'a";'#10#9'CheckPoint = 0;'#10#9'CreationClassNam' +
        'e = "Win32_Service";'#10#9'Description = "Ofrece compatibilidad con l' +
        'a API de telefon'#237'a (TAPI) para programas que controlan dispositi' +
        'vos de telefon'#237'a y conexiones de voz basadas en IP en el equipo ' +
        'local y, a trav'#233's de la LAN, en servidores que utilizan tambi'#233'n ' +
        'el servicio.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Telefon' +
        #237'a";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "TapiSrv";' +
        #10#9'PathName = "C:\\WINDOWS\\System32\\svchost.exe -k netsvcs";'#10#9'P' +
        'rocessId = 1028;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "S' +
        'hare Process";'#10#9'Started = TRUE;'#10#9'StartMode = "Manual";'#10#9'StartNam' +
        'e = "LocalSystem";'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9'SystemCr' +
        'eationClassName = "Win32_ComputerSystem";'#10#9'SystemName = "GESTEVE' +
        'Z";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicios de Terminal Server";'#10#9'CheckPoint =' +
        ' 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'Description = "Permit' +
        'e que varios usuarios se conecten de forma interactiva a un equi' +
        'po y que se muestren los escritorios y aplicaciones de equipos r' +
        'emotos. El acoplamiento de Escritorio remoto (incluido Escritori' +
        'o remoto para administradores), Cambio r'#225'pido de usuarios, Asist' +
        'encia remota y Terminal Server.";'#10#9'DesktopInteract = FALSE;'#10#9'Dis' +
        'playName = "Servicios de Terminal Server";'#10#9'ErrorControl = "Norm' +
        'al";'#10#9'ExitCode = 0;'#10#9'Name = "TermService";'#10#9'PathName = "C:\\WIND' +
        'OWS\\System32\\svchost -k DComLaunch";'#10#9'ProcessId = 1924;'#10#9'Servi' +
        'ceSpecificExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started' +
        ' = TRUE;'#10#9'StartMode = "Manual";'#10#9'StartName = "LocalSystem";'#10#9'Sta' +
        'te = "Running";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win3' +
        '2_ComputerSystem";'#10#9'SystemName = "GESTEVEZ";'#10#9'TagId = 0;'#10#9'WaitHi' +
        'nt = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Temas";'#10#9'CheckPoint = 0;'#10#9'CreationClassName ' +
        '= "Win32_Service";'#10#9'Description = "Proporciona administraci'#243'n de' +
        ' temas de experiencia de usuario.";'#10#9'DesktopInteract = FALSE;'#10#9'D' +
        'isplayName = "Temas";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 1077' +
        ';'#10#9'Name = "Themes";'#10#9'PathName = "C:\\WINDOWS\\System32\\svchost.' +
        'exe -k netsvcs";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9 +
        'ServiceType = "Share Process";'#10#9'Started = FALSE;'#10#9'StartMode = "D' +
        'isabled";'#10#9'StartName = "LocalSystem";'#10#9'State = "Stopped";'#10#9'Statu' +
        's = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'Sy' +
        'stemName = "GESTEVEZ";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Telnet";'#10#9'CheckPoint = 0;'#10#9'CreationClassName' +
        ' = "Win32_Service";'#10#9'Description = "Permite que un usuario remot' +
        'o inicie sesi'#243'n en el equipo y ejecute programas , y sea compati' +
        'ble con varios clientes de Telnet TCP/IP, incluyendo los equipos' +
        ' basados en UNIX y Windows. Si este servicio se detiene, es posi' +
        'ble que el acceso al usuario remoto no est'#233' disponible. Si este ' +
        'servicio est'#225' deshabilitado, cualquier servicio que expl'#237'citamen' +
        'te dependa de '#233'l no podr'#225' iniciarse.";'#10#9'DesktopInteract = FALSE;' +
        #10#9'DisplayName = "Telnet";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = ' +
        '1077;'#10#9'Name = "TlntSvr";'#10#9'PathName = "C:\\WINDOWS\\system32\\tln' +
        'tsvr.exe";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'Servic' +
        'eType = "Own Process";'#10#9'Started = FALSE;'#10#9'StartMode = "Disabled"' +
        ';'#10#9'StartName = "LocalSystem";'#10#9'State = "Stopped";'#10#9'Status = "OK"' +
        ';'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'SystemName' +
        ' = "GESTEVEZ";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Cliente de seguimiento de vinculos distribuid' +
        'os";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'Des' +
        'cription = "Mantiene v'#237'nculos entre archivos NTFS dentro de un e' +
        'quipo o entre equipos en un dominio de red.";'#10#9'DesktopInteract =' +
        ' FALSE;'#10#9'DisplayName = "Cliente de seguimiento de vinculos distr' +
        'ibuidos";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "TrkW' +
        'ks";'#10#9'PathName = "C:\\WINDOWS\\system32\\svchost.exe -k netsvcs"' +
        ';'#10#9'ProcessId = 1028;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType ' +
        '= "Share Process";'#10#9'Started = TRUE;'#10#9'StartMode = "Auto";'#10#9'StartN' +
        'ame = "LocalSystem";'#10#9'State = "Running";'#10#9'Status = "OK";'#10#9'System' +
        'CreationClassName = "Win32_ComputerSystem";'#10#9'SystemName = "GESTE' +
        'VEZ";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Host de dispositivo Plug and Play universal"' +
        ';'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'Descri' +
        'ption = "Proporciona compatibilidad para albergar dispositivos P' +
        'lug and Play universales.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayNa' +
        'me = "Host de dispositivo Plug and Play universal";'#10#9'ErrorContro' +
        'l = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "upnphost";'#10#9'PathName = ' +
        '"C:\\WINDOWS\\system32\\svchost.exe -k LocalService";'#10#9'ProcessId' +
        ' = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Share Proces' +
        's";'#10#9'Started = FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName = "NT AU' +
        'THORITY\\LocalService";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'Sys' +
        'temCreationClassName = "Win32_ComputerSystem";'#10#9'SystemName = "GE' +
        'STEVEZ";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Sistema de alimentaci'#243'n ininterrumpida";'#10#9'Ch' +
        'eckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'Description' +
        ' = "Administra un sistema de alimentaci'#243'n ininterrumpida (UPS) c' +
        'onectado al equipo.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "' +
        'Sistema de alimentaci'#243'n ininterrumpida";'#10#9'ErrorControl = "Normal' +
        '";'#10#9'ExitCode = 1077;'#10#9'Name = "UPS";'#10#9'PathName = "C:\\WINDOWS\\Sy' +
        'stem32\\ups.exe";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10 +
        #9'ServiceType = "Own Process";'#10#9'Started = FALSE;'#10#9'StartMode = "Ma' +
        'nual";'#10#9'StartName = "NT AUTHORITY\\LocalService";'#10#9'State = "Stop' +
        'ped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_Computer' +
        'System";'#10#9'SystemName = "GESTEVEZ";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};' +
        #10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Instant'#225'neas de volumen";'#10#9'CheckPoint = 0;'#10#9 +
        'CreationClassName = "Win32_Service";'#10#9'Description = "Administra ' +
        'e implementa Instant'#225'neas de volumen usadas para copias de segur' +
        'idad y otros prop'#243'sitos. Si este servicio se detiene, las instan' +
        't'#225'neas se deshabilitar'#225'n para la copia de seguridad y '#233'sta dar'#225' ' +
        'un error. Si este servicio est'#225' deshabilitado, cualquier servici' +
        'o que expl'#237'citamente dependa de '#233'l no podr'#225' iniciarse.";'#10#9'Deskto' +
        'pInteract = FALSE;'#10#9'DisplayName = "Instant'#225'neas de volumen";'#10#9'Er' +
        'rorControl = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "VSS";'#10#9'PathNam' +
        'e = "C:\\WINDOWS\\System32\\vssvc.exe";'#10#9'ProcessId = 0;'#10#9'Service' +
        'SpecificExitCode = 0;'#10#9'ServiceType = "Own Process";'#10#9'Started = F' +
        'ALSE;'#10#9'StartMode = "Manual";'#10#9'StartName = "LocalSystem";'#10#9'State ' +
        '= "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_C' +
        'omputerSystem";'#10#9'SystemName = "GESTEVEZ";'#10#9'TagId = 0;'#10#9'WaitHint ' +
        '= 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Horario de Windows";'#10#9'CheckPoint = 0;'#10#9'Creati' +
        'onClassName = "Win32_Service";'#10#9'Description = "Mantiene la sincr' +
        'onizaci'#243'n de fecha y hora en todos los clientes y servidores de ' +
        'la red. Si se detiene este servicio, no estar'#225' disponible la sin' +
        'cronizaci'#243'n de fecha y hora. Si se deshabilita este servicio, no' +
        ' se podr'#225' iniciar ninguno de los servicios que dependen expl'#237'cit' +
        'amente de '#233'l.'#13'\n";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Hor' +
        'ario de Windows";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name' +
        ' = "W32Time";'#10#9'PathName = "C:\\WINDOWS\\System32\\svchost.exe -k' +
        ' netsvcs";'#10#9'ProcessId = 1028;'#10#9'ServiceSpecificExitCode = 0;'#10#9'Ser' +
        'viceType = "Share Process";'#10#9'Started = TRUE;'#10#9'StartMode = "Auto"' +
        ';'#10#9'StartName = "LocalSystem";'#10#9'State = "Running";'#10#9'Status = "OK"' +
        ';'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'SystemName' +
        ' = "GESTEVEZ";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Cliente Web";'#10#9'CheckPoint = 0;'#10#9'CreationClass' +
        'Name = "Win32_Service";'#10#9'Description = "Habilita los programas b' +
        'asados en Windows para que creen, tengan acceso y modifiquen arc' +
        'hivos basados en Internet. Si este servicio se detiene, estas fu' +
        'nciones no estar'#225'n disponibles. Si este servicio est'#225' deshabilit' +
        'ado, cualquier servicio que expl'#237'citamente dependa de '#233'l no podr' +
        #225' iniciarse.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Cliente' +
        ' Web";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name = "WebClie' +
        'nt";'#10#9'PathName = "C:\\WINDOWS\\system32\\svchost.exe -k LocalSer' +
        'vice";'#10#9'ProcessId = 764;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceT' +
        'ype = "Own Process";'#10#9'Started = TRUE;'#10#9'StartMode = "Auto";'#10#9'Star' +
        'tName = "NT AUTHORITY\\LocalService";'#10#9'State = "Running";'#10#9'Statu' +
        's = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'Sy' +
        'stemName = "GESTEVEZ";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = TRUE;'#10#9'AcceptStop = ' +
        'TRUE;'#10#9'Caption = "Instrumental de administraci'#243'n de Windows";'#10#9'C' +
        'heckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'Descriptio' +
        'n = "Proporciona una interfaz com'#250'n y un modelo de objeto para t' +
        'ener acceso a la informaci'#243'n de administraci'#243'n acerca de un sist' +
        'ema operativo, dispositivos, aplicaciones y servicios. Si se det' +
        'iene este servicio, la mayor'#237'a del software basado en Windows no' +
        ' funcionar'#225' correctamente. Si este servicio est'#225' deshabilitado, ' +
        'cualquier servicio que expl'#237'citamente dependa de '#233'l no podr'#225' ini' +
        'ciarse.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Instrumental' +
        ' de administraci'#243'n de Windows";'#10#9'ErrorControl = "Ignore";'#10#9'ExitC' +
        'ode = 0;'#10#9'Name = "winmgmt";'#10#9'PathName = "C:\\WINDOWS\\system32\\' +
        'svchost.exe -k netsvcs";'#10#9'ProcessId = 1028;'#10#9'ServiceSpecificExit' +
        'Code = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = TRUE;'#10#9'Star' +
        'tMode = "Auto";'#10#9'StartName = "LocalSystem";'#10#9'State = "Running";'#10 +
        #9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSystem' +
        '";'#10#9'SystemName = "GESTEVEZ";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio del n'#250'mero de serie de medio port'#225't' +
        'il";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'Des' +
        'cription = "Recupera el n'#250'mero de serie de cualquier reproductor' +
        ' de medio port'#225'til conectado al equipo. Si este servicio se inte' +
        'rrumpe, puede que los contenidos protegidos no se descarguen en ' +
        'el dispositivo.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Serv' +
        'icio del n'#250'mero de serie de medio port'#225'til";'#10#9'ErrorControl = "No' +
        'rmal";'#10#9'ExitCode = 1077;'#10#9'Name = "WmdmPmSN";'#10#9'PathName = "C:\\WI' +
        'NDOWS\\System32\\svchost.exe -k netsvcs";'#10#9'ProcessId = 0;'#10#9'Servi' +
        'ceSpecificExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started' +
        ' = FALSE;'#10#9'StartMode = "Disabled";'#10#9'StartName = "LocalSystem";'#10#9 +
        'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "W' +
        'in32_ComputerSystem";'#10#9'SystemName = "GESTEVEZ";'#10#9'TagId = 0;'#10#9'Wai' +
        'tHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Extensiones de controlador de Instrumental d' +
        'e administraci'#243'n de Windows";'#10#9'CheckPoint = 0;'#10#9'CreationClassNam' +
        'e = "Win32_Service";'#10#9'Description = "Proporciona informaci'#243'n de ' +
        'administraci'#243'n de sistemas a y desde controladores.";'#10#9'DesktopIn' +
        'teract = FALSE;'#10#9'DisplayName = "Extensiones de controlador de In' +
        'strumental de administraci'#243'n de Windows";'#10#9'ErrorControl = "Norma' +
        'l";'#10#9'ExitCode = 1077;'#10#9'Name = "Wmi";'#10#9'PathName = "C:\\WINDOWS\\S' +
        'ystem32\\svchost.exe -k netsvcs";'#10#9'ProcessId = 0;'#10#9'ServiceSpecif' +
        'icExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = FALSE' +
        ';'#10#9'StartMode = "Manual";'#10#9'StartName = "LocalSystem";'#10#9'State = "S' +
        'topped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_Compu' +
        'terSystem";'#10#9'SystemName = "GESTEVEZ";'#10#9'TagId = 0;'#10#9'WaitHint = 0;' +
        #10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Adaptador de rendimiento de WMI";'#10#9'CheckPoint' +
        ' = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'Description = "Prop' +
        'orciona informaci'#243'n de la biblioteca de rendimiento desde los pr' +
        'oveedores HiPerf de WMI.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayNam' +
        'e = "Adaptador de rendimiento de WMI";'#10#9'ErrorControl = "Normal";' +
        #10#9'ExitCode = 0;'#10#9'Name = "WmiApSrv";'#10#9'PathName = "C:\\WINDOWS\\sy' +
        'stem32\\wbem\\wmiapsrv.exe";'#10#9'ProcessId = 3120;'#10#9'ServiceSpecific' +
        'ExitCode = 0;'#10#9'ServiceType = "Own Process";'#10#9'Started = TRUE;'#10#9'St' +
        'artMode = "Manual";'#10#9'StartName = "LocalSystem";'#10#9'State = "Runnin' +
        'g";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_ComputerSy' +
        'stem";'#10#9'SystemName = "GESTEVEZ";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio de uso compartido de red del Reprod' +
        'uctor de Windows Media";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "' +
        'Win32_Service";'#10#9'Description = "Comparte las bibliotecas del Rep' +
        'roductor de Windows Media con otros dispositivos multimedia  y r' +
        'eproductores en red mediante Plug and Play universal.";'#10#9'Desktop' +
        'Interact = FALSE;'#10#9'DisplayName = "Servicio de uso compartido de ' +
        'red del Reproductor de Windows Media";'#10#9'ErrorControl = "Normal";' +
        #10#9'ExitCode = 1077;'#10#9'Name = "WMPNetworkSvc";'#10#9'PathName = "\"C:\\A' +
        'rchivos de programa\\Windows Media Player\\WMPNetwk.exe\"";'#10#9'Pro' +
        'cessId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Own Pr' +
        'ocess";'#10#9'Started = FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName = "N' +
        'T AUTHORITY\\NetworkService";'#10#9'State = "Stopped";'#10#9'Status = "OK"' +
        ';'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'SystemName' +
        ' = "GESTEVEZ";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Centro de seguridad";'#10#9'CheckPoint = 0;'#10#9'Creat' +
        'ionClassName = "Win32_Service";'#10#9'Description = "Supervisa las co' +
        'nfiguraciones de seguridad del sistema.";'#10#9'DesktopInteract = FAL' +
        'SE;'#10#9'DisplayName = "Centro de seguridad";'#10#9'ErrorControl = "Norma' +
        'l";'#10#9'ExitCode = 0;'#10#9'Name = "wscsvc";'#10#9'PathName = "C:\\WINDOWS\\S' +
        'ystem32\\svchost.exe -k netsvcs";'#10#9'ProcessId = 1028;'#10#9'ServiceSpe' +
        'cificExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = TR' +
        'UE;'#10#9'StartMode = "Auto";'#10#9'StartName = "LocalSystem";'#10#9'State = "R' +
        'unning";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_Compu' +
        'terSystem";'#10#9'SystemName = "GESTEVEZ";'#10#9'TagId = 0;'#10#9'WaitHint = 0;' +
        #10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' TRUE;'#10#9'Caption = "Actualizaciones autom'#225'ticas";'#10#9'CheckPoint = 0' +
        ';'#10#9'CreationClassName = "Win32_Service";'#10#9'Description = "Habilita' +
        ' la descarga e instalaci'#243'n de actualizaciones de Windows. Si el ' +
        'servicio est'#225' deshabilitado, este equipo no podr'#225' usar la caract' +
        'er'#237'stica Actualizaciones autom'#225'ticas ni el sitio Web de Windows ' +
        'Update.";'#10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Actualizacio' +
        'nes autom'#225'ticas";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 0;'#10#9'Name' +
        ' = "wuauserv";'#10#9'PathName = "C:\\WINDOWS\\system32\\svchost.exe -' +
        'k netsvcs";'#10#9'ProcessId = 1028;'#10#9'ServiceSpecificExitCode = 0;'#10#9'Se' +
        'rviceType = "Share Process";'#10#9'Started = TRUE;'#10#9'StartMode = "Auto' +
        '";'#10#9'StartName = "LocalSystem";'#10#9'State = "Running";'#10#9'Status = "OK' +
        '";'#10#9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'SystemNam' +
        'e = "GESTEVEZ";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Windows Driver Foundation - User-mode Driver' +
        ' Framework";'#10#9'CheckPoint = 0;'#10#9'CreationClassName = "Win32_Servic' +
        'e";'#10#9'Description = "Manages user-mode driver host processes";'#10#9'D' +
        'esktopInteract = FALSE;'#10#9'DisplayName = "Windows Driver Foundatio' +
        'n - User-mode Driver Framework";'#10#9'ErrorControl = "Normal";'#10#9'Exit' +
        'Code = 1077;'#10#9'Name = "WudfSvc";'#10#9'PathName = "C:\\WINDOWS\\system' +
        '32\\svchost.exe -k WudfServiceGroup";'#10#9'ProcessId = 0;'#10#9'ServiceSp' +
        'ecificExitCode = 0;'#10#9'ServiceType = "Share Process";'#10#9'Started = F' +
        'ALSE;'#10#9'StartMode = "Manual";'#10#9'StartName = "LocalSystem";'#10#9'State ' +
        '= "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreationClassName = "Win32_C' +
        'omputerSystem";'#10#9'SystemName = "GESTEVEZ";'#10#9'TagId = 0;'#10#9'WaitHint ' +
        '= 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Configuraci'#243'n inal'#225'mbrica r'#225'pida";'#10#9'CheckPoi' +
        'nt = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'Description = "Pr' +
        'oporciona configuraci'#243'n autom'#225'tica para los adaptadores 802.11";' +
        #10#9'DesktopInteract = FALSE;'#10#9'DisplayName = "Configuraci'#243'n inal'#225'mb' +
        'rica r'#225'pida";'#10#9'ErrorControl = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name ' +
        '= "WZCSVC";'#10#9'PathName = "C:\\WINDOWS\\System32\\svchost.exe -k n' +
        'etsvcs";'#10#9'ProcessId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceT' +
        'ype = "Share Process";'#10#9'Started = FALSE;'#10#9'StartMode = "Manual";'#10 +
        #9'StartName = "LocalSystem";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10 +
        #9'SystemCreationClassName = "Win32_ComputerSystem";'#10#9'SystemName =' +
        ' "GESTEVEZ";'#10#9'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10
      
        #10'instance of Win32_Service'#10'{'#10#9'AcceptPause = FALSE;'#10#9'AcceptStop =' +
        ' FALSE;'#10#9'Caption = "Servicio de aprovisionamiento de red";'#10#9'Chec' +
        'kPoint = 0;'#10#9'CreationClassName = "Win32_Service";'#10#9'Description =' +
        ' "Administra los archivos de configuraci'#243'n XML en cada dominio p' +
        'ara el aprovisionamiento de red autom'#225'tico.";'#10#9'DesktopInteract =' +
        ' FALSE;'#10#9'DisplayName = "Servicio de aprovisionamiento de red";'#10#9 +
        'ErrorControl = "Normal";'#10#9'ExitCode = 1077;'#10#9'Name = "xmlprov";'#10#9'P' +
        'athName = "C:\\WINDOWS\\System32\\svchost.exe -k netsvcs";'#10#9'Proc' +
        'essId = 0;'#10#9'ServiceSpecificExitCode = 0;'#10#9'ServiceType = "Share P' +
        'rocess";'#10#9'Started = FALSE;'#10#9'StartMode = "Manual";'#10#9'StartName = "' +
        'LocalSystem";'#10#9'State = "Stopped";'#10#9'Status = "OK";'#10#9'SystemCreatio' +
        'nClassName = "Win32_ComputerSystem";'#10#9'SystemName = "GESTEVEZ";'#10#9 +
        'TagId = 0;'#10#9'WaitHint = 0;'#10'};'#10)
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
