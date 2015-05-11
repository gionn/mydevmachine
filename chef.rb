cwd = File.expand_path(File.dirname(__FILE__))

data_bag_path cwd + "/data_bags"
cookbook_path cwd + "/cookbooks"
cache_path "/tmp/chef-client-cache"
