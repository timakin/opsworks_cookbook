#
# Cookbook Name:: goserver
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# 

# Create the directory for unix domain socket
[
    "/var/run",
    "/var/run/#{node[:deploy][:nginx][:app_name]}"
].each do |path|
    directory path do
        owner 'user'
        group 'user'
        mode '0755'
    end
end
