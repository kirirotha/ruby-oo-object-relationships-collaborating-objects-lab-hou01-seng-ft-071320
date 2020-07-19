class Song
  attr_accessor :name, :artist
  @@all = []
  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  


  def self.new_by_filename(filename)
    parsed = filename.split(" - ")
    name = parsed[0]
    song = Song.new(name)
    artist = Artist.new(parsed[1])
    song.artist = artist
    song
  end

end
