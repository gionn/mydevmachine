
include_recipe 'prezto'

search(:users, "*:*").each do |user|
  template "/home/#{user['id']}/.zshrc" do
    mode '0775'
    owner user['id']
    group user['gid']
    variables({
      'rows' => user['zshrc']
    })
    source 'zshrc.erb'
    manage_symlink_source true
    action :create
  end
end
