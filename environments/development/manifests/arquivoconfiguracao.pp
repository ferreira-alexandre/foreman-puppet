class arquivoconfiguracao{
  file{ 'c:/configuracoes/configuracao.txt':
    ensure  => 'present',
    content => 'Esta � uma configura��o de DESENVOLVIMENTO',
  }
}