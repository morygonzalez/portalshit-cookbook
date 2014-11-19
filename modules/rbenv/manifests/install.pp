class rbenv::install($version, $ruby_version) {
  vcsrepo {
    '/usr/local/rbenv':
      ensure => present,
      provider => git,
      user => 'root',
      source => 'git://github.com/sstephenson/rbenv.git',
      revision => $version,
      require => Class['::git::install'],
  }

  file { [
    '/usr/local/rbenv/shims',
    '/usr/local/rbenv/versions',
    '/usr/local/rbenv/plugins',
    ]:
      ensure => directory,
      owner => 'root',
      require => Vcsrepo['/usr/local/rbenv'],
  }

  file {
    '/etc/profile.d/rbenv.sh':
      content => template('rbenv/rbenv.sh.erb'),
      owner => 'root',
      mode => 644,
  }
}
