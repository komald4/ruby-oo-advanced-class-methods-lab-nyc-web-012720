class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.create
    song = self.new
    song.save
    song
  end

  def new_by_name
    new_by_name = self.new_by_name
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end
