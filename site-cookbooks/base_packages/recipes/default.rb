#
# Cookbook Name:: base_packages
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

%w{gcc make git readline readline-devel}.each do |pkg|
	package pkg do
	action :install
	end
end

#vim
package "vim-enhanced" do
	action :install
end

# dotfiles
git "/home/dsk/dotfiles" do
	repository "https://github.com/daisuke310vvv/dotfiles.git"
	user node[:user]
	group node[:user]
end
