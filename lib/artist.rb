class Artist

  attr_accessor :name

  @@all = []

  # Instance methods

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    songs << song
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    if Artist.all.find { |artist| artist.name == name }
      Artist.all.find { |artist| artist.name == name }
    else
      Artist.new(name).save.last
    end

  end

  def print_songs
    songs.each do |song|
      puts song.name
    end
  end

  # Class methods

  def self.all
    @@all
  end


end
