require 'spec_helper'

describe 'rbenv' do
  describe file('/usr/local/rbenv/versions') do
    it { should be_directory }
  end
end
