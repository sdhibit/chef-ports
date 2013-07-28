#
# Cookbook Name:: ports
# Recipe:: default
#
# Copyright (C) 2013 Stephen Hibit <sdhibit@gmail.com>
# 
# All rights reserved - Do Not Redistribute
#

execute "portsnap execute" do 
  command "portsnap fetch execute"
  ignore_failure true
  only_if do
    ::Dir['/usr/ports/*'].empty?
  end
end

execute "portsnap update" do 
  command "portsnap update"
  ignore_failure true
end