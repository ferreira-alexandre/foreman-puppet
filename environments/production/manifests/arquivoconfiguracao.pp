class arquivoconfiguracao{
  file{ 'c:/configuracoes/configuracao.txt':
    ensure  => 'present',
    content => inline_template('Esta eh uma configuracao de PRODU��O, que � t�o importante que informa as horas: <%= Time.now %>'),
  }
}