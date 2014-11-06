require 'spec_helper'

describe package('nginx') do
	it { should be_installed }
end

describe service('nginx') do
	it { should be_enabled }
	it { should be_running }
end

describe port(80) do
	it { should _be_listening }
end

describe file('/etc/nginx/nginx.conf') do
	it { should be_file }
	#if be set user nginx
	it { should contain('nginx').after(/^user/) }
end

