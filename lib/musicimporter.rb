class MusicImporter
  
  attr_accessor :filepath
  
  def initialize(filepath)
    @filepath = filepath
  end
  
  def files
     @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
  end

  def import
    files.each{ |f| Song.create_from_filename(f) }
  end
end