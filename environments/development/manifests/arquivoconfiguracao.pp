class arquivoconfiguracao{
  file{ 'c:/configuracoes/configuracao.txt':
    ensure  => 'present',
    content => 'Esta é uma configuração de DESENVOLVIMENTO',
  }
}