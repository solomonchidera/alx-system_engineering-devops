# play with flask

package { 'flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}

package { 'python3-pip':
  ensure   => installed,

}

package { 'Werkzeug':
  ensure   => '2.1.1',
  provider => 'pip3',
}

exec { 'install_flask':
  command => '/usr/bin/pip3 install flask==2.1.0',
  path    => ['/usr/bin'],
}