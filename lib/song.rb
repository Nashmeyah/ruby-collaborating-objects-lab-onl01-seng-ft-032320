class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def name=(name)
    @name = name
  end

  def artist=(artist)
    @artist = artist
  end

<<<<<<< HEAD

=======
>>>>>>> 56bf75afb91e46b4006e8a8a9e197463640bcf83
  def self.all
    @@all
  end

<<<<<<< HEAD
  def self.new_by_filename(filename)
    song = self.new(filename.split(" - ")[1])
    song.artist = Artist.new(filename.split(" - ")[0])
    song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
=======
  def self.new_by_filename

>>>>>>> 56bf75afb91e46b4006e8a8a9e197463640bcf83
  end

end
