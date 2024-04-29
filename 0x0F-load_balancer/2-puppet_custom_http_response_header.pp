# Custom HTTP header in a nginx server

# Updating ubuntu server 
exec { 'update sever':
  command => 'apt-get update',
  user    => 'root',
  provider => 'shell',
}

#Install nginx web server on server
package { 'nginx':
  ensure => present,
  provider => 'apt'
}

file_line { 'add HTTP header':
ensure  => 'present',
path    => '/etc/nginx/sites-available/default',
after   => 'listen 80 default_server;',
line    => 'add_header X-Served-By $hostname;'
}
