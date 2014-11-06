#
# Cookbook Name:: user
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

group 'dsk' do
	action :create
end

user 'dsk' do
	group 'dsk'
	home '/home/dsk'
	shell '/bin/bash'
	password nil
	supports :manage_home => true
end
