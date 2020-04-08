class Artist
  
  @@all = []
   attr_accessor :name
   
   def initialize(name)
     @name = name
     @@all << []
   end
   def self.all
     @@all
   end
   def new_song(name, genre)
     Song.new(name, self, genre)
   end
   def songs
     Songs.all.select {|x| x.artist == self}
   end
  
end