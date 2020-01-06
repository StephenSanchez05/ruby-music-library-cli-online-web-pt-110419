require_relative "./init.rb"

class Genre 
  
  @@all = []
  
  attr_accessor :name, :songs
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
    def self.create(name)
    genre = new(name)
    genre.save
    genre
  end
  
    def self.all
    @@all
  end
  
  def name
    @name
  end
  
  def save
    @@all << self 
  end
  
  def self.destroy_all
    @@all.clear
  end
end
  
