# == Class: dashing
#
class dashing(
  $service  = 'dashing',
  $homedir  = '/opt/dashing',
  $user     = 'dashing',
  $group    = 'dashing',
  $port     = '8080',
) {

  class { 'ruby': }

  bundler::install { $homedir:
    user       => $user,
    group      => $group,
    deployment => true,
    without    => 'development test doc',
  }

  user { $user:
    comment          => 'Dashing dashboard account',
    shell            => '/bin/true',
    password         => '*',
    password_min_age => '0',
    password_max_age => '99999',
    home             => $homedir,
    system           => true,
    managehome       => true,
  }

  package { [ 'dashing' ]:
    ensure   =>  'installed',
    provider => 'gem',
  }

  if !defined(Package['nodejs']) {
    package {'nodejs':
      ensure => installed,
    }
  }

  if !defined(Package['ruby-dev']) {
    package {'ruby-dev':
      ensure => installed,
    }
  }

  file { "/etc/init.d/${service}":
    owner   => root,
    group   => root,
    mode    => '0755',
    content => template('dashing/dashing.init.erb'),
  } ~>

  service { ${service}:
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }

}
