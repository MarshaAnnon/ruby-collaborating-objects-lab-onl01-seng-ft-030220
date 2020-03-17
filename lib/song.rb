require "pry"

class Song

  @@all = []

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @@all << self

  end

  def self.new_by_filename(file)
    song_info = file.chomp(".mp3").split(" - ")
    song = Song.new(song_info[1])
    @artist = song_info[0]
    song
  end

  def self.all
    @@all
  end

end
