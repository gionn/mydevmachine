
group 'dev' do
  gid 2300
  action :create
end

search(:users, "*:*").each do |user|
  user user['id'] do
    manage_home true
    comment user['comment']
    uid   user['uid']
    gid   user['gid']
    home "/home/#{user['id']}"
    shell user['shell']
  end

  user['groups'].each do |g|
    group g do
      action :manage
      members user['id']
      append true
    end
  end

  user['packages'].each do |package_name|
    package package_name
  end
end
