require 'pry'
class Song

  attr_accessor :artist, :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(filename)
    filename_array = filename.split(/[-]/)
    song = filename_array[1].strip
    new_instance = Song.new(song)
    # binding.pry
    new_instance_artist = filename_array[0].strip
    Artist.all.each do |new_artist|
      if new_artist.name == new_instance_artist
        new_instance.artist = new_artist
      else
      end
    end
  end

  def artist_name=(artist_name)
    Self.artist.name = artist_name
  end

  def name
    @name
  end

end
