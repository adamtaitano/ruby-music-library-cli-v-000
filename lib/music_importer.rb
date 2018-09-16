class MusicImporter
  @@files = []
  
  def initialize(file_path)
    @path = path
  end
  
  def files
    @@files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
  end
  
  def self.import
    @@all.each do |file|
      Song.new_from_filename(file)
    end
  end
  
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
  end

  def import
    files.each{ |f| Song.create_from_filename(f) }
  end
end
