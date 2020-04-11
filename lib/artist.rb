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

  def add_song(song)
    song.artist = self
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

<<<<<<< HEAD
  def self.find_or_create_by_name(name)
    found_artist = self.all.find {|artist| artist.name == name}
      if found_artist
        found_artist
    else
      self.new(name)
    end
  end

  def print_songs
     self.songs.each {|song| puts song.name}
=======
  def self.find_or_create_by_name
    if self.artist.nil?
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
    @name
  end

  def print_songs
    @@all
>>>>>>> 56bf75afb91e46b4006e8a8a9e197463640bcf83
  end
end
