class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artist = []
    @@genre = []
end

def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count +=1
    @@artist << artist
    @@genre << genre
end

def self.count
    @@count
end

def self.artist
    @@artist.uniq
end

def self.genre
    @@genre.uniq
end

def self.genre_count
    @@genre_count
  end

  def self.artist_count
    @@artist_count
  end