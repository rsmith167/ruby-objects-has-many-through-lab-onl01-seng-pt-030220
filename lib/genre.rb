class Genre
  
  @@all = []
  attr_accessor :name
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  def songs
    Songs.all.select {|x| x.genre == self}
  end
  def artists
    self.songs.collect {|x| x.artist}
  end
  
end