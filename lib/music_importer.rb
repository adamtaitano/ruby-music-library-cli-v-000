class MusicImporter
  @@files = []
  
  def initialize(file_path)
    
  end
  
  def self.files
    @@files
  end
  
  def self.import
    @@all.each do |file|
      Song.new_from_filename(file)
    end
  end
  
end
