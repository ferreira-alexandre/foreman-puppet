class programasbasicos ($ensure = latest){

  package { 'notepadplusplus.install':
    ensure            => $ensure,
    provider          => 'chocolatey',
  }

  package { 'googlechrome':
    ensure            => $ensure,
    provider          => 'chocolatey',
  }

  package { 'jre8':
    ensure            => $ensure,
    provider          => 'chocolatey',
  }

}