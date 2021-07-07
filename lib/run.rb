require "pry"
require_relative "artist.rb"
require_relative "mp3_importer.rb"
require_relative "song.rb"

test_music_path = "./spec/fixtures/mp3s"

importer = MP3Importer.new(test_music_path)
genres = importer.get_song_genres_from_files
names = importer.get_song_names_from_files
artists = importer.get_song_artists_from_files

binding.pry
0