class MP3Importer
    attr_accessor :path

    def initialize(path)
        @path = path
    end

    def files
        Dir.entries(@path).select{|file| file[0] != '.'}
    end

    def import
        files.each{|file| Song.new_by_filename(file)}
    end
end

# 
    # def get_genres_from_files
    #     self.files.map{|file| file.split(/ - |\./)[-2]}
    # end

    # def get_names_from_files
    #     self.files.map{|file| file.split(/ - /)[1]}
    # end

    # def get_artists_from_files
    #     self.files.map{|file| file.split(/ - /)[0]}
    # end