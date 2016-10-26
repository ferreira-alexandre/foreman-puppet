class programasbasicos {

  package { 'notepadplusplus':
    ensure            => 'latest',
    provider          => 'chocolatey',
  }

}