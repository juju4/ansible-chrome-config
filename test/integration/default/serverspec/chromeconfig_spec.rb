require 'serverspec'

# Required by serverspec
set :backend, :exec

## Use Junit formatter output, supported by jenkins
#require 'yarjuf'
#RSpec.configure do |c|
#    c.formatter = 'JUnit'
#end

describe file('/usr/share/google-chrome/extensions/cjpalhdlnbpafiamejdnhcphjbkeiagm.json') do
  it { should be_file }
  it { should be_mode '644' }
end
describe file('/usr/share/google-chrome/extensions/gcbommkclmclpchllfjekcdonpmejbdp.json') do
  it { should be_file }
  it { should be_mode '644' }
end
describe file('/usr/share/google-chrome/extensions/pkehgijcmpdhfbdbbnkijodmdjhbjlgp.json') do
  it { should be_file }
  it { should be_mode '644' }
end
