name             'ntpdate'
maintainer       'Ivan Golman'
maintainer_email 'ivan.golman@gmail.com'
license          'MIT License'
description      'Installs/Configures ntpdate'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.3.0'
issues_url 'https://github.com/igolman/ntpdate/issues' if respond_to?(:issues_url)
source_url 'https://github.com/igolman/ntpdate' if respond_to?(:source_url)

%w{ debian ubuntu }.each do |os|
  supports os
end

depends 'cron'
chef_version '>= 12.8' if respond_to?(:chef_version)
