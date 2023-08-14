# Create a manifest that executes a process named killmenow
# Using pkill with puppet

exec { 'pkill':
  command => 'pkill -f killmenow',
  path    => '/usr/bin',
}
