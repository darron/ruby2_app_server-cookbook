# encoding: utf-8
require 'spec_helper'

# Write integration tests with Serverspec - http://serverspec.org/
describe 'ruby2-app-server::default' do

  describe package('apache2') do
    it { should be_installed }
  end

  describe package('ruby2.0') do
    it { should be_installed }
  end

  describe package('ruby2.0-dev') do
    it { should be_installed }
  end

  describe port(80) do
    it { should be_listening }
  end

  describe service('apache2') do
    it { should be_enabled }
  end
end
