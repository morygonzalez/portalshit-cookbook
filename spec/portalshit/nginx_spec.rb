require 'spec_helper'

describe package('nginx') do
  it { should be_installed }
end

describe service('nginx') do
  it { should be_enabled   }
  it { should be_running   }
end

describe port(80) do
  it { should be_listening }
end

describe file('/etc/nginx/conf.d/portalshit.conf') do
  it { should be_file }
  its(:content) { should match(/~\(\[a-z\]\[a-z0-9\\-\]\+\?\\\.\)\?portalshit\\\.net;/) }
end
