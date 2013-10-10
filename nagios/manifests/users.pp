class nagios::users {
  user {
    "nagios":
      ensure  => present,
      shell   => '/bin/bash';
    "nagcmd":
      ensure  => present,
      groups  => ["nagios","www-data"];
  }
  group {
    "nagios":
      ensure  => present;
  }
}