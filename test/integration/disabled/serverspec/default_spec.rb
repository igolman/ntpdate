require 'spec_helper'

describe file('/etc/default/ntpdate') do
  it { should_not exist }
end

describe file('/etc/cron.d/ntpdate') do
  it { should_not exist }
end
