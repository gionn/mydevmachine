
include_recipe "ruby_build"

ruby_build_ruby "1.9.3-p0"

package "libffi-dev"
ruby_build_ruby "2.2.0"

include_recipe "rbenv::user"
