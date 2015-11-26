class temp217 {

  exec { 'update nimbus':
    path    => 'C:/Program Files/Puppet Labs/Puppet/bin',
    command => 'puppet module install tse/nimbus --force --version 0.6.2',
    unless  => "puppet module list | FindStr /r 'tse-nimbus.*0.6.2'",
  }

}
