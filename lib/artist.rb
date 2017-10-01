class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    self.save
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def add_songs(song)
    self.songs << song
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(artist_name)
    if @@all.find {|artist| return artist if artist.name == artist_name}
    else
      Artist.new(artist_name)
    end
  end

  def print_songs
    self.songs.each {|song| puts song.name}
  end
end
