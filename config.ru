require 'bundler'
Bundler.require

$LOAD_PATH.unshift(File.expand_path("app", __dir__))

require 'controllers/puppy_pals_app'

run PuppyPalsApp
