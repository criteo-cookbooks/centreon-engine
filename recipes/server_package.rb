# Cookbook Name:: centreon-engine
# Recipe:: server_package
#
# Copyright (c) 2016 Criteo, All Rights Reserved.
include_recipe 'centreon-engine::repo'
node['centreon_engine']['server']['packages'].each do |pkg|
  package pkg  do
    action :install
  end
end
