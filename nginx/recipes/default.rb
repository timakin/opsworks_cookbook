#
# Cookbook Name:: nginx
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
# add the EPEL repo
package "nginx" do
    action :install
end
 
service "nginx" do
    action [ :enable, :start ]
end

template 'nginx.conf' do
  path      '/etc/nginx/nginx.conf'
  source    "nginx.conf.erb"
  owner     'root'
  group     'root'
  mode      0644
  notifies  :reload, "service[nginx]"
end
