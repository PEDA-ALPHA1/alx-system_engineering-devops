# Create a file at /tmp directory
# Using the following requirements

file { 'school':
	path => '/tmp/school',
	mode => '0744',
	owner => 'www-data',
	group => 'www-data',
	content => 'I love Puppet',
}
