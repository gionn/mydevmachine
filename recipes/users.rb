search(:users, "*:*").each do |user|
  user user['id'] do
    supports :manage_home => true
    comment user['comment']
    uid   user['uid']
    gid   user['gid']
    home "/home/#{user['uid']}"
    shell user['shell']
  end
end
