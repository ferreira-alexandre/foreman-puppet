class instalarmysql {

  file { 'c:/temp/':
    ensure => 'directory',
  }

  download_file{ "Microsoft Visual C++ 2013 Redistributable (x64) - 12.0.30501":
    url                   => 'http://download.microsoft.com/download/2/E/6/2E61CFA4-993B-4DD4-91DA-3737CD5CD6E3/vcredist_x64.exe',
    destination_directory => 'c:\temp',
  }

  package{ "Microsoft Visual C++ 2013 Redistributable (x64) - 12.0.30501":
    ensure          => 'installed',
    source          => 'c:\temp\vcredist_x64.exe',
    install_options => ['/quiet'],
  }

  download_file{ "Microsoft .NET Framework 4 Client Profile":
    url                   => 'http://download.microsoft.com/download/5/6/2/562A10F9-C9F4-4313-A044-9C94E0A8FAC8/dotNetFx40_Client_x86_x64.exe',
    destination_directory => 'c:\temp',
  }

  package{ "Microsoft .NET Framework 4 Client Profile":
    ensure          => 'installed',
    source          => 'c:\temp\dotNetFx40_Client_x86_x64.exe',
    install_options => ['/q'],
  }

  download_file{ "MySQL Workbench 6.2 CE":
    url                   => 'http://dev.mysql.com/get/Downloads/MySQLGUITools/mysql-workbench-community-6.2.4-winx64.msi',
    destination_directory => 'c:\temp',
  }

  package{ "MySQL Workbench 6.2 CE":
    ensure          => 'installed',
    source          => 'c:\temp\mysql-workbench-community-6.2.4-winx64.msi',
  }
}