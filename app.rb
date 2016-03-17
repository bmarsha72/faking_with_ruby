#must get the bundle of GEMS in order to work...
require 'bundler'
Bundler.require

require './user' #load user.rb file

test_user = User.new #instantiate new user
p test_user.to_s
