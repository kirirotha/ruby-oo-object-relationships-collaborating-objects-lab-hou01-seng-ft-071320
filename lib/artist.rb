class Artist
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    artist_songs = []
    Song.all.each do |a_song|
      binding.pry
      if a_song.artist.name == nil
        a_song.artist.name = ""
      elsif a_song.artist.name == self.name
        artist_songs << a_song
      end
    end
    artist_songs
  end

  def self.find_or_create_by_name(name)
    @@all.each do |person|
      if person.name == name
        return person
      end
    end
      person = Artist.new(name)
  end



end
