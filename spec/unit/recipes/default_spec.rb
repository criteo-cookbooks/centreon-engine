#
# Cookbook Name:: centreon-engine
# Spec:: default
#
# Copyright (c) 2016 Criteo, All Rights Reserved.

require 'spec_helper'

describe 'centreon-engine::default' do
  context 'When all attributes are default, on centos 6.7' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new(
        platform: 'centos',
        version: '6.7'
      )
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
  end
end
