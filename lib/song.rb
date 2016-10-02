class Song

  attr_accessor :name, :artist


  def initialize(name)
    @name = name
  end

  # Class methods

  def self.filename_to_array(filename)
    filename.gsub(".mp3","").split(" - ")
  end


  def self.new_by_filename(filename)
    new_song = Song.new(filename_to_array(filename)[1])
    artist_name = filename_to_array(filename)[0]
    new_song.artist = Artist.find_or_create_by_name(artist_name)
    new_song.artist.songs << new_song
    new_song.artist.songs.last
  end


##needs a lot of refactoring..

end
