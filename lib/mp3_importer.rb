require "pry"

class MP3Importer

  attr_accessor :path, :files

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.entries(path).grep(/.*\.mp3/)
  end

  def import
    files.each {| filename | Song.new_by_filename(filename)}
  end
  
end
