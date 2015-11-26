class temp217 {

  exec { 'update nimbus':
    path    => 'C:/Windows/system32;C:/Program Files/Puppet Labs/Puppet/bin',
    command => 'puppet.bat module install tse/nimbus --force --version 0.6.2',
    unless  => 'cmd.exe /c puppet.bat module list | FindStr /r tse-nimbus.*0.6.2',
  }

}
