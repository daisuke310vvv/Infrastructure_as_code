require 'spec_helper'

describe user('dsk') do
	it { should exist }
	it { should belong_to_group 'dsk' }
	it { should have_home_directory '/home/dsk' }
	it { should have_login_shell '/bin/bash' }
end
