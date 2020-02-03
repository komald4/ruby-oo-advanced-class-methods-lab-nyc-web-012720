class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.create
    song = self.new
    song.save
    song
  end

  def self.new_by_name(name)
    song = self.new
    song.name = name
    song
  end

  def self.create_by_name(song_name) #object
    song = self.create  #instatiates
    song.name = song_name
    song
  end

  def self.find_by_name(song_name)
    @@all.find {|song| song.name == song_name} # find each song and matches
  end

  def self.find_or_create_by_name(song_name)
    self.find_by_name(song_name) || self.create_by_name(song_name) # OR operator
  end

  def self.alphabetical
    @@all.sort_by {|song| song_name.name }
  end

  def new_from_filename

  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end
