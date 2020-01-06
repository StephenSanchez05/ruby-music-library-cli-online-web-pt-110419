require_relative "./init.rb"

class Song 
  
  @@all = []
  
  attr_accessor :name, :artist, :genre
  
  def initialize(name, artist = nil, genre = nil)
    @name = name
    self.artist = artist if artist 
    self.genre = genre if genre
  end
  
    def self.create(name)
    song = new(name)
    song.save
    song
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

  def genre=(genre)
    @genre = genre
    genre.songs << self unless genre.songs.include?(self)
  end
  
  def artist=(artist)
    @artist = artist
    artist.add_song(self)
  end
  
  def self.find_by_name(name)
    @@all.detect { |titles| titles.name == name }
  end
  
end
  
