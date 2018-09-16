class Song
 attr_accessor :name, :genre, :artist
 @@all = []
 
 def initialize(name)
  @name = name
 end
 
 def self.all
  @@all
 end
 
 def self.destroy_all
  @@all.clear
 end
 
 def save
  @@all << self
 end
 
 def self.create(name)
   Song.new(name).tap{ |s| s.save }
 end
 
 def artist=(artist)
  @artist = artist
  artist.songs << self
 end
 
 def genre=(genre)
  @genre = genre
  genre.songs << self
 end
 
 def self.find_by_name(name)
  @@all.detect{|song| song.name == name}
 end
 
 def self.find_or_create_by_name(name)
  find_by_name(name) || create(name)
 end
end
