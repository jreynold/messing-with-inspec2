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
end
