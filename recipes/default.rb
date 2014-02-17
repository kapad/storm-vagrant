#
# Cookbook Name:: storm-vagrant
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#

log node['java']['install_flavor']

include_recipe 'java::default'

log node['java']['install_flavor']