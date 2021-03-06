# encoding: utf-8
require 'spec_helper'

# Write integration tests with Serverspec - http://serverspec.org/
describe 'ruby2_app_server::default' do

  describe package('ruby2.0') do
    it { should be_installed }
  end

  describe package('ruby2.0-dev') do
    it { should be_installed }
  end

  describe package('apache2') do
    it { should be_installed }
  end

  describe port(80) do
    it { should be_listening }
  end

  describe service('apache2') do
    it { should be_enabled }
  end

  describe package('libapache2-mod-passenger') do
    it { should be_installed }
  end

  describe file('/etc/apache2/mods-enabled/passenger.conf') do
    it { should be_file }
  end

  describe file('/etc/apache2/mods-enabled/passenger.load') do
    it { should be_file }
  end
end
