package 'nginx' do
  action :install
end

user 'create app' do
  username 'app'
  password 'passw0rd!!!'
end
