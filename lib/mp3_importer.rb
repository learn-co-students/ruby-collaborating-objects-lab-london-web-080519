class MP3Importer
    def initialize(path)
        @path = path
    end

    attr_accessor :path

    def files
        #files = Dir.entries(@path)  
        files = Dir["#{@path}/*.mp3"]
        clean_files = []
        files.each do |item|
            clean_files << item.split("#{@path}/")[1]
        end
        clean_files
    end

    def import
        self.files.each do |item|
            Song.new_by_filename(item)
        end
    end
end