# should I remove installed NTP Packet ( activated NTP service leads to race condition on network port).

if node[:ntpdate][:ntp_pkg_remove]
	package node[:ntpdate][:ntp_pkg_name] do
		action node[:ntpdate][:enable] ? :remove : :nothing
	end
end

node[:ntpdate][:package_name].each do |pkg|
  package pkg do
    action node[:ntpdate][:enable] ? :install : :nothing
  end
end
