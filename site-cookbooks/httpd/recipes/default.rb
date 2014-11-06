#
# Cookbook Name:: httpd
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

#install package
package "httpd" do
	action :install
end

#start httpd
service "httpd" do
	action [:enable,:start]
end

#template the setting file
template "httpd.conf" do
	path "/etc/httpd/httpd.conf"
	owner "root"
	group "root"
	mode 0644
	#reload when the file updated
	notifies :reload, 'service[httpd]'
end

