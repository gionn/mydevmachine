
group 'dev' do
  gid 2300
  action :create
end

search(:users, "*:*").each do |user|
  user user['id'] do
    supports :manage_home => true
    comment user['comment']
    uid   user['uid']
    gid   user['gid']
    home "/home/#{user['id']}"
    shell user['shell']
  end

  user['packages'].each do |package_name|
    package package_name
  end
end
