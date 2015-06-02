
include_recipe "ruby_build"

package "libffi-dev"

ruby_build_ruby "2.2.0"

include_recipe "rbenv::user"
