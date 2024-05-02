# This manifest creates a file at /tmp
file { '/tmp/school':
  ensure  => file,
  path	  => '/tmp/school',
  owner   => 'www-data',
  group   => 'www-data',
  mode    => '0743',
  content => 'I love Puppet',
}
