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

  def add_song(song_name)
    #binding.pry
    new_song = Song.new(song_name)
  end


  def songs
    artist_songs = []
    Song.all.each do |a_song|
      if defined?(a_song.artist.name)

        if a_song.artist.name == self.name
          artist_songs << a_song
        end
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
