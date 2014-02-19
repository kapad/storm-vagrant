name             'stormvagrant'
maintainer       'Rohan Kapadia'
maintainer_email 'rohankapadia@gmail.com'
license          'Apache2'
description      'Installs/Configures storm-vagrant'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends "java"
depends "storm"
depends "zeromq"
depends "zookeeper"
depends "build-essential"
depends "ark"
depends "chef-jzmq"

supports "ubuntu"