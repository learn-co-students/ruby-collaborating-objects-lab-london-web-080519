require "pry"
require_relative "./lib/artist.rb"
require_relative "./lib/song.rb"
require_relative "./lib/mp3_importer.rb"

michael_jackson = Artist.new("Michael Jackson")
elton_john = Artist.new("Elton John")
dirty_diana = Song.new("Dirty Diana")
billie_jean = Song.new("Billie Jean")
piano_man = Song.new("Piano Man")

michael_jackson.add_song(dirty_diana)
michael_jackson.add_song(billie_jean)
michael_jackson.add_song(piano_man)

music_importer = MP3Importer.new("./spec/fixtures/mp3sest_music_path")

binding.pry
0