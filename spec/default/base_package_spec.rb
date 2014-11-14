require 'spec_helper'

#gcc
describe package('gcc')  do
	it { should be_installed }
end

#make
describe package('make')  do
	it { should be_installed }
end

#git
describe package('git')  do
	it { should be_installed }
end

#readline/readline-devel
describe package('readline')  do
	it { should be_installed }
end

describe package('readline-devel')  do
	it { should be_installed }
end

#vim-enhanced
describe package('vim-enhanced')  do
	it { should be_installed }
end

#dotfiles
describe file('/home/dsk/dotfiles') do
	it { should be_directory}
end
