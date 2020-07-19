require 'pry'
require_relative 'lib/artist.rb'
require_relative 'lib/mp3_importer.rb'
require_relative 'lib/song.rb'



#binding.pry

s1 = Song.new_by_filename("Where its at - Beck")
s2 = Song.new_by_filename("Funeral - Band of Horses")
s3 = Song.new_by_filename("1234 - Feist")
s2 = Song.new_by_filename("Spotieotiedopalicious - Outkast")
binding.pry
beck = Artist.new("Beck")
feist = Artist.new("Feist")


artist = Artist.new('Michael Jackson')
dirty_diana = Song.new("Dirty Diana")
billie_jean = Song.new("Billie Jean")
piano_man = Song.new("Piano Man")
dirty_diana.artist = artist
billie_jean.artist = artist

#binding.pry
