#
# Cookbook Name:: stormvagrant
# Recipe:: zeromq
#
# Copyright (C) 2014 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#

include_recipe 'zeromq::default'
include_recipe 'zeromq::dev'
include_recipe 'chef-jzmq::default'