class profile::ssh_server {
  package {'openssh-server':
            ensure => present,
  }
  server {'sshd':
          ensure => 'running',
          enable => 'true',
  }
  ssh_authorized_key {'root@0117e8c64c1c.mylabserver.com':
          ensure => present,
          user   => 'root',
          type   => 'ssh-rsa',
          key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC5Y5l4XQ8VYilkORmXUDkKpHDgdPJ2YIuAFhQsthXjuDueaS4/fuKV4Lc1DMz7EzSINrlozFHvYYzTWnY4M8Ngm63UTwPXBsixZonRHln5jLa5MgkhNNWTIUh9tGnpAknla0hd3U6nb0L3mzSAxaCR30+mT9DRJmKjWl0CSowX7gte5zSoiCddSbWWl7RkhVcp8IW8ay7ucNKwqh9LLkmvsuf8Hq2GlA0nk89/LtYQKc1vDTa1E2dXrcA4kA4TYAEUUNiM3+U38p7LdN8YPmb8PWEggasOGd8NtAp7JrXOBLf31ELiHkHBDcakwS2zYQ0Upd1WG2jyTagLJa641vIF',
  }
}
