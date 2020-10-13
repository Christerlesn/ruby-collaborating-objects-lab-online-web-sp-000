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
    if self.name.nil?
      name == Artist.new(name)
    else
      self.name
    end
  end


end #end of class Artist
binding.pry
