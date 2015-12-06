
# https://github.com/sstephenson/ruby-build/wiki#suggested-build-environment
%w(autoconf bison build-essential).each do |build_pkg|
  package build_pkg
end

%w(libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm3 libgdbm-dev).each do |dep_pkg|
  package dep_pkg
end

include_recipe "ruby_build"
include_recipe "ruby_rbenv::user"

search(:users, "*:*").each do |user|
  user['rubies'].each do |version|
    rbenv_ruby version do
      user user['id']
      action :install
    end
  end
end
