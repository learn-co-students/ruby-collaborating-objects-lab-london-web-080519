#The MP3Importer class parses all the filenames 
# in the spec/fixtures folder and send the filenames to the Song class

class MP3Importer

    attr_reader :path

    def initialize(path)
        @path = path
    end

    def files
        files = Dir["#{@path}/*"]
        files.map{|file| file.gsub("#{@path}/",'')}
    end

    def import
        files.each{|file| Song.new_by_filename(file)}
    end
end