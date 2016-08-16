name             'loggly-rsyslog'
maintainer       'Jonathan Nevelson'
maintainer_email 'jnevelson@entelo.com'
license          'Apache 2.0'
description      'Configures rsyslog to send logs to Loggly'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '2.2.0'

supports 'ubuntu', '>= 12.04'

depends 'rsyslog', '~> 1.5.0'

