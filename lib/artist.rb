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

  def add_song(new_song)
    new_song.artist = self
    new_song
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

  def print_songs
    song_list = ""
    songs.each do |a_song|
      song_list = "#{song_list}#{a_song.name}\n"
    end
    puts song_list
  end

end
