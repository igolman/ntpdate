name             'ntpdate'
maintainer       'Ivan Golman'
maintainer_email 'ivan.golman@gmail.com'
license          'MIT License'
description      'Installs/Configures ntpdate'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.1.0'

%w{ debian ubuntu }.each do |os|
  supports os
end

depends 'cron', '~> 1.6'
