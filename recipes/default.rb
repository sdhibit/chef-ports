#
# Cookbook Name:: ports
# Recipe:: default
#
# Copyright (C) 2013 Stephen Hibit <sdhibit@gmail.com>
# 
# All rights reserved - Do Not Redistribute
#

execute "portsnap fetch" do
  command "portsnap fetch"
  ignore_failure true
end

execute "portsnap execute" do 
  command "portsnap execute"
  ignore_failure true
  not_if do
    ::File.exists?('/usr/ports/CHANGES')
  end
end

execute "portsnap update" do 
  command "portsnap update"
  ignore_failure true
end