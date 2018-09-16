class Song
 attr_accesor :name
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
 
 def self.create
   Song.new.save
 end
end
