class Song
  attr_accessor :name, :artist

  @@all =[]

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end





end #end of class Song


# # akon = Artist.new("Akon")
# # akon.add_song(freedom)
# freedom.artist
