# The Song class will be responsible for creating songs given each filename and sending 
# the artist's name (a string) to the Artist class

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
        'Michael Jackson - Black or White - pop.mp3'

        filename_normalized = filename.split(" - ")
        name = filename_normalized[0]
        song_name = filename_normalized[1]

        artist = Artist.find_or_create_by_name(name)
        new_instance = Song.new(song_name)
        artist.add_song(new_instance)
        new_instance
    end

    def artist_name=(name)
        artist = Artist.find_or_create_by_name(name)
        artist.add_song(self)
    end

end