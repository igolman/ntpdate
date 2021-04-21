#
# Cookbook:: ntpdate
# Recipe:: default
#
# Copyright:: Ivan Golman <ivan.golman@gmail.com>
#

include_recipe 'ntpdate::install'
include_recipe 'ntpdate::configure'
