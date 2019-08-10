require 'pry'
require_relative 'artist.rb'


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
        artist_songname_genre = filename.split("-")
        song = Song.new(artist_songname_genre[1].strip)
        song.artist = Artist.new(artist_songname_genre[0].strip)
        song
    end

    def artist_name=(name)
        #artist = Artist.find_or_create_by_name(name)
        #artist.add_song(self)
        self.artist = Artist.find_or_create_by_name(name)
    end

end

#song = Song.new_by_filename("Michael Jackson - Smooth Criminal - pop")
#binding.pry
0