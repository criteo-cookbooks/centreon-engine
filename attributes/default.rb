#
# Cookbook Name:: centreon-engine
# Recipe:: default
#
# Copyright (c) 2016 Criteo, All Rights Reserved.

# --[ Centreon engine home dir ]--
default['centreon_engine']['user']['home_directory'] = '/var/lib/centreon-engine'

# --[ Centreon engine user parameters ]--
default['centreon_engine']['user'] = 'centreon-engine'
default['centreon_engine']['group'] = 'centreon-engine'

# --[ Packages ]--
default['centreon_engine']['server']['packages'] = %w{centreon-engine nagios-plugins nrpe-plugin}

# --[ Repository configuration ]--
case node['platform']
when 'redhat', 'centos'
  default['centreon_engine']['repositories'] = %w{ces-standard ces-standard-noarch ces-standard-deps ces-standard-deps-noarch}

  default['centreon_engine']['ces-standard']['repositoryid'] = 'ces-standard'
  default['centreon_engine']['ces-standard']['description'] = 'Centreon RPM repository for ces $releasever'
  default['centreon_engine']['ces-standard']['baseurl'] = 'http://yum.centreon.com/standard/3.0/stable/$basearch/'
  default['centreon_engine']['ces-standard']['gpgcheck'] = true
  default['centreon_engine']['ces-standard']['enabled'] = true
  default['centreon_engine']['ces-standard']['gpgkey'] = 'http://yum.centreon.com/standard/3.0/stable/RPM-GPG-KEY-CES'
  default['centreon_engine']['ces-standard']['managed'] = true

  default['centreon_engine']['ces-standard-noarch']['repositoryid'] = 'ces-standard-noarch'
  default['centreon_engine']['ces-standard-noarch']['description'] = 'Centreon RPM repository for ces $releasever'
  default['centreon_engine']['ces-standard-noarch']['baseurl'] = 'http://yum.centreon.com/standard/3.0/stable/noarch/'
  default['centreon_engine']['ces-standard-noarch']['gpgcheck'] = true
  default['centreon_engine']['ces-standard-noarch']['enabled'] = true
  default['centreon_engine']['ces-standard-noarch']['gpgkey'] = 'http://yum.centreon.com/standard/3.0/stable/RPM-GPG-KEY-CES'
  default['centreon_engine']['ces-standard-noarch']['managed'] = true

  default['centreon_engine']['ces-standard-deps']['repositoryid'] = 'ces-standard-deps'
  default['centreon_engine']['ces-standard-deps']['description'] = 'Centreon dependencies RPM repository for ces $releasever'
  default['centreon_engine']['ces-standard-deps']['baseurl'] = 'http://yum.centreon.com/standard/3.0/stable/dependencies/$basearch/'
  default['centreon_engine']['ces-standard-deps']['gpgcheck'] = true
  default['centreon_engine']['ces-standard-deps']['enabled'] = true
  default['centreon_engine']['ces-standard-deps']['gpgkey'] = 'http://yum.centreon.com/standard/3.0/stable/RPM-GPG-KEY-CES'
  default['centreon_engine']['ces-standard-deps']['managed'] = true

  default['centreon_engine']['ces-standard-deps-noarch']['repositoryid'] = 'ces-standard-deps-noarch'
  default['centreon_engine']['ces-standard-deps-noarch']['description'] = 'Centreon dependencies RPM repository for ces $releasever'
  default['centreon_engine']['ces-standard-deps-noarch']['baseurl'] = 'http://yum.centreon.com/standard/3.0/stable/dependencies/noarch/'
  default['centreon_engine']['ces-standard-deps-noarch']['gpgcheck'] = true
  default['centreon_engine']['ces-standard-deps-noarch']['enabled'] = true
  default['centreon_engine']['ces-standard-deps-noarch']['gpgkey'] = 'http://yum.centreon.com/standard/3.0/stable/RPM-GPG-KEY-CES'
  default['centreon_engine']['ces-standard-deps-noarch']['managed'] = true
end
