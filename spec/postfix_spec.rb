require "spec_helper_#{ENV['SPEC_TARGET_BACKEND']}"

describe package('postfix'), :if => ['debian', 'alpine'].include?(os[:family]) do
  it { should be_installed }
end

describe command('which postfix') do
  its(:exit_status) { should eq 0 }
end
