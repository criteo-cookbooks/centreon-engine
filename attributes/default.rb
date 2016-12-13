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
default['centreon_engine']['server']['packages'] = 'centreon-engine'

default['release'] = node['platform_version'].to_i

# --[ Repository configuration ]--
case node['platform']
when 'redhat', 'centos'
  default['centreon_engine']['repositories'] = %w{ces-standard ces-standard-noarch}

  default['centreon_engine']['ces-standard']['repositoryid'] = 'ces-standard'
  default['centreon_engine']['ces-standard']['description'] = 'Centreon RPM repository for ces $releasever'
  default['centreon_engine']['ces-standard']['baseurl'] = "http://yum.centreon.com/standard/3.4/el#{release}/stable/$basearch/"
  default['centreon_engine']['ces-standard']['gpgcheck'] = true
  default['centreon_engine']['ces-standard']['enabled'] = true
  default['centreon_engine']['ces-standard']['gpgkey'] = "http://yum.centreon.com/standard/3.4/el#{release}/stable/RPM-GPG-KEY-CES"
  default['centreon_engine']['ces-standard']['managed'] = true

  default['centreon_engine']['ces-standard-noarch']['repositoryid'] = 'ces-standard-noarch'
  default['centreon_engine']['ces-standard-noarch']['description'] = 'Centreon RPM repository for ces $releasever'
  default['centreon_engine']['ces-standard-noarch']['baseurl'] = "http://yum.centreon.com/standard/3.4/el#{release}/stable/noarch/"
  default['centreon_engine']['ces-standard-noarch']['gpgcheck'] = true
  default['centreon_engine']['ces-standard-noarch']['enabled'] = true
  default['centreon_engine']['ces-standard-noarch']['gpgkey'] = "http://yum.centreon.com/standard/3.4/el#{release}/stable/RPM-GPG-KEY-CES"
  default['centreon_engine']['ces-standard-noarch']['managed'] = true
end
