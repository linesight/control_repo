class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service {'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user => root,
    type => 'ssh-rsa',
    key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC5qgZIMI9G4yywUtqrfv6xmQIsB8/a6wfGdXFlhYAkxIH9ww89+Db1shLRP3HaOPvUIsDyvhbhYZQlQES+nSSOiE/IhuGckwqxkjNxpwxVUnp3gdaZbAq9xcq86maSFgdzhVyuHDiURqGfBWtb5/9ci4i7eEcXTTqul6kYkmQFlowVUi33gvtWv95JWy5CF6TcaLFy71j2aY1SSdXxOMqozTPzcnIyo8tU2olG4EbrzWywfX3GFcPFxYU9GUw5Sj1CN+Us+8z5wIuzqc0hocxZCkZzc9Zp3qR3nAK2OyU2Tfw1DeXbcW19gZZlxWutr7X3YL44bxT5Y/7WYCLMo+NP',
  }
}
