require 'spec_helper'

describe package('ntpdate') do
  it { should be_installed }
end

describe file('/etc/default/ntpdate') do
  its(:size) { should > 0 }
  its(:content) { should match /NTPDATE_USE_NTP_CONF=no/ }
  its(:content) { should match /NTPSERVERS="0.de.pool.ntp.org 1.de.pool.ntp.org 2.de.pool.ntp.org 3.de.pool.ntp.org"/ }
  its(:content) { should match /NTPOPTIONS=""/ }
  it { should be_mode 644 }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
end

describe file('/etc/cron.d/ntpdate') do
  its(:size) { should > 0 }
  its(:content) { should match /# This cron syncs the time on Sundays mornings./ }
  its(:content) { should match %r{SHELL=/bin/bash} }
  its(:content) { should match /MAILTO=root/ }
  its(:content) { should match %r{0 6 \* \* sun root /usr/sbin/ntpdate-debian > /dev/null} }
  it { should be_mode 600 }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
end
