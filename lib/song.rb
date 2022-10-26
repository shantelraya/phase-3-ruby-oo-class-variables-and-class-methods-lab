require 'pry'

class Song 
    @@all = []
    @@count = 0
    @@artists = []
    @@genres = []

    attr_accessor :name, :artist, :genre

    def initialize (name, artist, genre)
        @@count += 1
        @name = name
        @artist = artist
        @genre = genre 

        @@genres << genre 
        @@artists << artist
    end 

    def Song.count
        @@count
    end

    def Song.artists
        @@artists.uniq
    end

    def Song.genres
        @@genres.uniq
    end

    def Song.genre_count
        @@genres.tally
    end

    def Song.artist_count
        @@artists.tally


    end

end 


