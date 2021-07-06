require 'pry'

class MP3Importer

    attr_reader :path

    def initialize(path)
        @path = path
    end

    def files
        files_array = Dir[path+"/*"]
        files_array.map {|filename| filename.sub(self.path+"/", '')}
    end


    def import
        self.files.each {|filename| Song.new_by_filename(filename)}
        binding.pry
    end

end