class rbenv {
  class { 'rbenv::install':
    version => 'v0.4.0',
    ruby_version => '2.1.5'
  }
}