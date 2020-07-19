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

  def self.clear
    @@all = []
  end

  def self.new_by_filename(filename)
    parsed = filename.split(" - ")
    name = parsed[1]
    song = Song.new(name)
    artist = Artist.new(parsed[0])
    song.artist = artist
    song
  end

  def artist_name=(artist_name)
    self.artist = Artist.find_or_create_by_name(artist_name)
  end

end
