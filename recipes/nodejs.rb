
include_recipe 'nvm'

search(:users, "*:*").each do |user|
  user['nodes'].each do |version|
    nvm_install version do
      user user['id']
      group user['gid']
      from_source false
      action :create
    end
  end
end
