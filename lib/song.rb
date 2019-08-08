require "pry"
class Song
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    attr_accessor :name, :artist

    def self.all
        @@all
    end

    def self.new_by_filename(file_name)
        file_array = file_name.split(" - ") 
        song_name = file_array[1]
        name_of_artist = file_array[0]
        artist_instance = Artist.new(name_of_artist)
        song_instance = self.new(song_name)
        artist_instance.add_song(song_instance)
        song_instance
    end
    
    def artist_name=(name)
        artist = Artist.find_or_create_by_name(name)
        artist.add_song(self)
    end
end
#binding.pry
#0