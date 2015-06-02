cwd = File.expand_path(File.dirname(__FILE__))
home = File.expand_path('~')

data_bag_path cwd + "/data_bags"
cookbook_path cwd + "/cookbooks"
environment_path cwd + "/environment"
environment "default"
cache_path "#{home}/.local/share/chef-client-cache"
