class instalarTomcat {

  class { 'java': }

  tomcat::install { '/opt/tomcat8':
    source_url => 'http://mirror.nbtelecom.com.br/apache/tomcat/tomcat-8/v8.5.6/bin/apache-tomcat-8.5.6.tar.gz'
  }

  tomcat::instance { 'tomcat8-first':
    catalina_home => '/opt/tomcat8',
    catalina_base => '/opt/tomcat8/first',
  }

}
