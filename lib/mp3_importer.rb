class MP3Importer
  attr_accessor :path
  def initialize(path)
    @path = path
  end

  def files
    files = []
    Dir.new(self.path).each do |file|
      files << file if file.length > 4
    end
    files
  end

  def import
<<<<<<< HEAD
    files.each {|song| Song.new_by_filename(song)}
=======

>>>>>>> 56bf75afb91e46b4006e8a8a9e197463640bcf83
  end
end
