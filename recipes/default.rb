# encoding: utf-8
#
# Cookbook Name:: ruby2_app_server
# Recipe:: default
#
# Copyright (C) 2013, Darron Froese <darron@froese.org>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

execute 'apt-get-update' do
  command 'apt-get update'
end

include_recipe 'build-essential::default'

include_recipe 'ruby2::default'

include_recipe 'apache2::default'

include_recipe 'passenger_apache2::default'

# Set Ruby2.0 as default.
execute 'set ruby2.0 as alternatives' do
  command 'update-alternatives --set ruby /usr/bin/ruby2.0 && update-alternatives --set gem /usr/bin/gem2.0'
end
