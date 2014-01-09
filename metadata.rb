# encoding: utf-8
name             'ruby2_app_server'
maintainer       'Darron Froese'
maintainer_email 'darron@froese.org'
license          'Apache 2.0'
description      'Installs/configures Ruby 2.0 / Apache / Passenger'
version          '0.1.0'
recipe           'ruby2_app_server::default', 'Installs/configures Ruby 2.0 / Apache / Passenger'

depends 'build-essential'
depends 'ruby2'
depends 'apache2'
depends 'passenger_apache2', '0.2.0'
