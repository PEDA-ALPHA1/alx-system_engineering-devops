# Configuration file to login to a server without typing a password
# SSH client configuration must be configured to use the private key ~/.ssh/school
#SSH client configuration must be configured to refuse to authenticate using a password
# sets up a client SSH configuration file so that we can connect to a server without using a password
#include stdlib
#file_line { 'Declare identity file':
#  path    => '/etc/ssh/ssh_config',
#  line    => '    IdentityFile ~/.ssh/school',
#  replace => true,
#}

#file_line { 'Turn off passwd auth':
#  path    => '/etc/ssh/ssh_config',
#  line    => '    PasswordAuthentication no',
#  replace => true,
#}

# OR
# client configuration file
$file_content = file('/etc/ssh/ssh_config')
$config = "${file_content}\
    IdentityFile ~/.ssh/school
    PasswordAuthentication no
"
file {  'school':
  ensure  => 'present',
  path    => '/etc/ssh/ssh_config',
  content => $config
}
