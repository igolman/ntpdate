node[:ntpdate][:package_name].each do |pkg|
  package pkg
end
