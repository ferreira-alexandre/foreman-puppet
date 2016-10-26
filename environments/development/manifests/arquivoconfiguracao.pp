class arquivoconfiguracao{
  file{ 'c:/configuracoes/configuracao.txt':
    ensure  => 'present',
    content => 'Esta eh uma configuracao de DESENVOLVIMENTO',
  }
}