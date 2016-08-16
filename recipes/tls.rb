#
# Cookbook Name:: loggly
# Recipe:: tls
#
# Copyright (C) 2014 Matt Veitas
#
# All rights reserved - Do Not Redistribute
#

package 'rsyslog-gnutls' do
  action :install
end

directory node['loggly']['tls']['cert_path'] do
  owner 'root'
  group 'syslog'
  mode 0750
  action :create
  recursive true
end

remote_file "#{node['loggly']['tls']['cert_path']}/#{node['loggly']['tls']['cert_file_name']}" do
  owner 'root'
  group 'root'
  mode 0644
  source node['loggly']['tls']['cert_url']
  checksum node['loggly']['tls']['cert_checksum']
end
