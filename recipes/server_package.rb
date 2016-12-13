# Cookbook Name:: centreon-engine
# Recipe:: server_package
#
# Copyright (c) 2016 Criteo, All Rights Reserved.
include_recipe 'centreon-engine::repo'

package node['centreon_engine']['server']['packages'] do
end
