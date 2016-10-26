class arquivoconfiguracao{
  file{ 'c:/configuracoes/configuracao.txt':
    ensure  => 'present',
    content => inline_template('Esta eh uma configuracao de PRODUCAO, que eh tao importante que informa as horas: <%= Time.now %>'),
  }
}