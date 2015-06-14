require 'socket'

cwd = File.expand_path(File.dirname(__FILE__))
home = File.expand_path('~')

data_bag_path cwd + "/data_bags"
cookbook_path cwd + "/cookbooks"
environment_path cwd + "/environment"
json_attribs cwd + '/nodes/' + Socket.gethostname + '.json'
environment "default"
cache_path "#{home}/.local/share/chef-client-cache"
