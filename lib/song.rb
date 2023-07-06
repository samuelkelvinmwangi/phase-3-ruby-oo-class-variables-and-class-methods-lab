class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artist = []
    @@genre = []
    @@genre_count = {}
    @@artist_count = {}
end

def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count +=1
    @@artist << artist
    @@genre << genre

    @@genre_count[genre] ||= 0
    @@genre_count[genre] += 1

    @@artist_count[artist] ||= 0
    @@artist_count[artist] += 1
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

  def self.genre_count
    genre_count = Hash.new(0)
    @@genres.each { |genre| genre_count[genre] += 1 }
    genre_count
  end