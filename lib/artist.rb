# The Artist class will be responsible for either creating the artist (if the artist 
# doesn't exist in our program yet) or finding the instance of that artist (if the artist does exist).

class Artist

    # Artist class initialized with a name and should have an attribute accessor for this name. 
    # The class should have an @@all class variable and store all Artist instances in this variable.

    attr_accessor :name, :song

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    # Artist.all should return all Artist instances.
    def self.all 
        @@all
    end

    # Artist#songs returns an Array of all songs that belong to this Artist instance.
    # This method should get all existing Song instances from Song and select only the ones 
    # that are associated with this Artist instance.
    def songs
        Song.all.select {|song| song.artist == self}
    end

    # Artist#add_song tell a passed in Song instance it belongs to this Artist instance.
    def add_song(song)
        song.artist = self
    end

    # Artist.find_or_create_by_name should take the name that is passed in (remember, 
    # it will be a string), and do one of two things. Find the artist instance that has 
    # that name or create one if it doesn't exist. Either way, the return value of the method 
    # will be an instance of an artist with the name attribute filled out.

    def self.find_or_create_by_name(name)

        if self.all.find{|artist| artist.name == name}
            self.all.find{|artist| artist.name == name}
        else
            artist = Artist.new(name)
        end 
    end

    # Artist#print_songs outputs the names of all songs associated with this Artist instance.
    def print_songs
        self.songs.map{|song| print "#{song.name}\n"}
    end

end







