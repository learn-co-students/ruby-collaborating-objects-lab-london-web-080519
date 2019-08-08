require 'pry'

class MP3Importer 
attr_accessor :path, :files, :filenames
    def initialize(path)
        @path = path 
        @files = files
        @filenames = filenames
    end 
    
    def files
        @files || filename = Dir.chdir(@path) do | path |
        Dir.glob("*.mp3")
            end
    end
    
    def import
        self.files.each {|song| Song.new_by_filename(@filename)}
    end




end
