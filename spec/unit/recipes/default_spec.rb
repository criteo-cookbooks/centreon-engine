#
# Cookbook Name:: centreon-engine
# Spec:: default
#
# Copyright (c) 2016 Criteo, All Rights Reserved.

require 'spec_helper'

describe 'centreon-engine::default' do
  platforms = {
    'centos' =>  ['6.7', '7.2.1511']
  }

  platforms.each do |platform, versions|
    versions.each do |version|
    let(:chef_run) { ChefSpec::SoloRunner.new(platform: platform, version: version).converge(described_recipe)    }
      it 'converges successfully' do
        expect { chef_run    }.to_not raise_error
      end
    end
  end
end
