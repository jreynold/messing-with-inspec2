control 'nginx' do
  describe package('nginx') do
    it { should be_installed }
  end
  describe service('nginx') do
    it { should be_running }
  end
  describe ssl(port: 80) do
    it { should be_enabled }
  end
  describe os.family do
    it { should eq 'debian' }
  end
  describe nginx do
    its('version') { should eq '1.12.0' }
  end
  describe nginx do
    its('modules') { should include 'my_module' }
  end
  describe nginx do
    its('openssl_version.date') { should eq '11 Feb 2013' }
  end
end
