class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
song = Song.new
song.save
return song
  end

def self.new_by_name(name)
song = Song.new
song.name = name
song
end

def self.create_by_name(name)
  song = Song.create
  song.name = name
  song
end

def self.find_by_name(name)
self.all.find {|s| s.name == name}
end

def self.find_or_create_by_name(name)
if self.find_by_name(name) == false
  self.create_by_name(name)
else
  self.find_by_name(name)
end
end

def self.alphabetical
self.all.name.sort
end

def new_from_filename

end

def create_from_filename

end

def self.destroy_all
self.all.clear
end

end
