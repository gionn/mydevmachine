
include_recipe 'prezto'

search(:users, "*:*").each do |user|
  file "/home/#{user['id']}/.zprofile" do
    content user['zprofile'].join("\n")
    mode '0775'
    owner user['id']
    group user['gid']
    action :create
  end
end
