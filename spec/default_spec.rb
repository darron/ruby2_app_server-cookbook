# encoding: utf-8
require 'spec_helper'

# Write unit tests with ChefSpec - https://github.com/sethvargo/chefspec#readme
describe 'ruby2-app-server::default' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'includes the `build-essential` recipe' do
    expect(chef_run).to include_recipe('build-essential::default')
  end

  it 'includes the `ruby2` recipe' do
    expect(chef_run).to include_recipe('ruby2::default')
  end

  it 'includes the `apache2` recipe' do
    expect(chef_run).to include_recipe('apache2::default')
  end

  it 'includes the `passenger-apache2` recipe' do
    expect(chef_run).to include_recipe('passenger-apache2::default')
  end

end
