require 'spec_helper'

describe 'mysql' do
  describe package('mysql-server') do
    it { expect(subject).to be_installed }
  end

  describe package('mysql-client-5.5') do
    it { expect(subject).to be_installed }
  end

  describe service('mysql') do
    it { expect(subject).to be_enabled }
    it { expect(subject).to be_running }
  end

  describe file('/etc/mysql/my.cnf') do
    it { expect(subject).to be_file }
  end
end
