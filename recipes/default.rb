#
# Cookbook Name:: centreon-engine
# Recipe:: default
#
# Copyright (c) 2016 Criteo, All Rights Reserved.

include_recipe 'centreon-engine::server_package'

# sudoers configuration
sudo node['centreon_engine']['user'] do
  user node['centreon_engine']['user']
  runas 'ALL'
  commands ['/etc/init.d/centengine *', '/usr/sbin/centenginestats', '/usr/sbin/centengine *']
  nopasswd true
end
