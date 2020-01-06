module Findable
  
  def self.create(name)
    song = new(name)
    song.save
    song
  end
  
   def save
    all << self 
  end
  
  def self.find_by_name(name)
    all.detect { |titles| titles.name == name }
  end
  
  def self.find_or_create_by_name(song)
    find_by_name(song) || create(song)
  end
end