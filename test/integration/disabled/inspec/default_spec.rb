if os[:release].to_i > 14
  describe package('ntpdate') do
    it { should_not be_installed }
  end
end

describe file('/etc/default/ntpdate') do
  it { should_not exist }
end

describe file('/etc/cron.d/ntpdate') do
  it { should_not exist }
end
