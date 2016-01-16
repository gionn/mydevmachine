git '/usr/local/share/autoenv' do
  repository 'git://github.com/kennethreitz/autoenv.git'
  reference 'master'
  action :sync
end

# Add 'source /usr/local/share/autoenv/activate.sh' to zshrc section in users data_bag
