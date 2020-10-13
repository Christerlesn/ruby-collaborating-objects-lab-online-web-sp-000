require 'pry'

class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.name
    @@all.name
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def add_song(song)
    song.artist = self
  end

  def self.find_or_create_by_name(name)
    self.all.find do |artist_name|
      if @name = artist_name
        artist_name
      else
        @name = Artist.new(name)
      end
    end
  end


end #end of class Artist
binding.pry
