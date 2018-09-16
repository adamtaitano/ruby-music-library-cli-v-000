class MusicImporter
  attr_reader :path
  @@files = []
  
  def initialize(file_path)
    @path = file_path
  end
  
  def self.files
    @@files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
  end
  
  def self.import
    files.each do |file|
      Song.create_from_filename(file)
    end
  end
end
