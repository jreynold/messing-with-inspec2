control 'nginx' do
  describe package('nginx') do
    it { should be_installed }
  end
  describe service('nginx') do
    it { should be_running }
  end
  describe os.family do
    it { should eq 'debian' }
  end
  describe nginx do
    its('version') { should eq '1.14.0' }
  end
  describe nginx do
    its('modules') { should include 'http_ssl' }
  end
end
