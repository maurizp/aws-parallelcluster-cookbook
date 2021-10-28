# frozen_string_literal: true

#
# Cookbook Name:: aws-parallelcluster-byos
# Recipe:: install
#
# Copyright 2013-2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You may not use this file except in compliance with the
# License. A copy of the License is located at
#
# http://aws.amazon.com/apache2.0/
#
# or in the "LICENSE.txt" file accompanying this file. This file is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES
# OR CONDITIONS OF ANY KIND, express or implied. See the License for the specific language governing permissions and
# limitations under the License.

# setup the user accounts
include_recipe "aws-parallelcluster-byos::install_user"

# create e.g. /opt/parallelcluster/byos
directory node['cluster']['byos']['local_dir'] do
  owner node['cluster']['byos']['user']
  group node['cluster']['byos']['user']
  mode '0755'
  action :create
end

# create e.g. /opt/parallelcluster/shared/byos
directory node['cluster']['byos']['shared_dir'] do
  owner node['cluster']['byos']['user']
  group node['cluster']['byos']['user']
  mode '0755'
  action :create
end