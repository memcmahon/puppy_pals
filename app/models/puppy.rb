require 'sqlite3'

class Puppy
  attr_reader :name, :breed, :image

  def initialize(puppy_params)
    @database = SQLite3::Database.new('db/puppy_pals_development.db')
    @database.results_as_hash = true
    @name = puppy_params["name"]
    @breed = puppy_params["breed"]
    @image = puppy_params["image"]
  end

  def save
    @database.execute("INSERT INTO puppies (name, breed, image) VALUES (?, ?, ?);", @name, @breed, @image)
  end

  def self.all
    database = SQLite3::Database.new('db/puppy_pals_development.db')
    database.results_as_hash = true
    puppies = database.execute("SELECT * FROM puppies")
    puppies.map do |puppy|
      Puppy.new(puppy)
    end
  end

  def self.destroy_all
    database = SQLite3::Database.new('db/puppy_pals_development.db')
    puppies = database.execute("DELETE FROM puppies")
  end
end
