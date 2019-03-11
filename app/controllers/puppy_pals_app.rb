require_relative '../models/puppy'
require 'pry'

class PuppyPalsApp < Sinatra::Base
  set :root, File.expand_path("..", __dir__)

  get '/' do
    @puppies = Puppy.all
    # binding.pry
    erb :dashboard
  end
end
