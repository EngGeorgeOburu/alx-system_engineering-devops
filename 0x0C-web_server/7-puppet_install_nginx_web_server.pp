# Puppet manifest install nginx
package { 'nginx':
ensure => installed,
}
file_line { 'aaaaa':
ensure => 'present',
path => '/etc/nginx/sites-available/default',
after =>'listen 80 default_server;',
line => 'rewrite ^/redirect_me https://www.youtube.come/watch?v=QH2-TGUIwu4 permanent;',
}
file {'/var/ww/html/index.html':
content => 'Hello World!',
}
service { 'nginx':
ensure => running,
require => Package['nginx']
}
