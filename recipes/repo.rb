#
# Cookbook Name:: centreon-engine
# Recipe:: repo
#
# Copyright (c) 2016 Criteo, All Rights Reserved.
node['centreon_engine']['repositories'].each do |repo|

  if node['centreon_engine'][repo]['managed']
    yum_repository repo do
      baseurl node['centreon_engine'][repo]['baseurl']
      cost node['centreon_engine'][repo]['cost']
      description node['centreon_engine'][repo]['description']
      enabled node['centreon_engine'][repo]['enabled']
      gpgcheck node['centreon_engine'][repo]['gpgcheck']
      gpgkey node['centreon_engine'][repo]['gpgkey']
      repositoryid node['centreon_engine'][repo]['repositoryid']

      action :create
    end
  end
end
