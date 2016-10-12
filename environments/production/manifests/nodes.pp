node 'maquina1' {

  file{ '/info.txt':
    ensure  => 'present',
    content => inline_template("Created by Puppey at <%= Time.now %>\n"),
  }

}