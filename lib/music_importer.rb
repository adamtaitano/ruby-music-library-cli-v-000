class MusicImporter
  attr_reader :path
  @@files = []
  
  def initialize(file_path)
    @path = path
  end
  
  def files
    @@files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
  end
  
  def import
    files.each do |file|
      Song.create_from_filename(file)
    end
  end
end
