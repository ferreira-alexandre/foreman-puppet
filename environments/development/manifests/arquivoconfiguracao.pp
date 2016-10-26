class arquivoconfiguracao{
  file{ 'c:/configuracoes/configuracao.txt':
    ensure  => 'file',
    content => 'Esta eh uma configuracao de DESENVOLVIMENTO',
  }
}