name             'ports'
maintainer       'Stephen Hibit'
maintainer_email 'sdhibit@gmail.com'
license          'All rights reserved'
description      'Configures ports and portsnap and LWRPs for managing ports on BSD'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'
recipe           'ports', 'Runs portsnap fetch and update'

%w{ freebsd }.each do |os|
  supports os 
end

