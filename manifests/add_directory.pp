define puppet-redbox::add_directory (
  $end_path         = $title,
  $owner,
  $parent_directory = undef,) {
  file { "${parent_directory}/${end_path}":
    ensure  => directory,
    recurse => true,
    owner   => $owner,
    require => Puppet-redbox::Add_systemuser[$owner],
  }
}