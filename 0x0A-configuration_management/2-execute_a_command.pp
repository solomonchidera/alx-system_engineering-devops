# Using Puppet, create a manifest that kills a process named killmenow.

exec { 'Killmenow':
  command  => 'pkill killmenow',
  provider => 'shell'
}