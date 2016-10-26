class programasbasicos {

  package { 'notepadplusplus':
    ensure            => 'latest',
    provider          => 'chocolatey',
  }

  package { 'googlechrome':
    ensure            => 'latest',
    provider          => 'chocolatey',
  }

  package { 'jre8':
    ensure            => 'latest',
    provider          => 'chocolatey',
  }

}