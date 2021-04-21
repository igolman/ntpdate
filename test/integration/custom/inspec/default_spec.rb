describe package('ntpdate') do
  it { should be_installed }
end

describe file('/etc/default/ntpdate') do
  its(:size) { should > 0 }
  its(:content) { should match %r{NTPDATE_USE_NTP_CONF=no} }
  its(:content) { should match %r{NTPSERVERS="0.de.pool.ntp.org 1.de.pool.ntp.org 2.de.pool.ntp.org 3.de.pool.ntp.org"} }
  its(:content) { should match %r{NTPOPTIONS=""} }
  its(:mode) { should cmp '0644' }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
end

describe file('/etc/cron.d/ntpdate') do
  its(:size) { should > 0 }
  its(:content) { should match %r{# This cron syncs the time on Sundays mornings.} }
  its(:content) { should match %r{SHELL=/bin/bash} }
  its(:content) { should match %r{MAILTO=root} }
  its(:content) { should match %r{0 6 \* \* sun root /usr/sbin/ntpdate-debian > /dev/null} }
  its(:mode) { should cmp '0600' }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
end
