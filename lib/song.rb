require "pry"
class Song
    @@count=0
    @@artists=[]
    @@genres= []
    attr_accessor :name, :artist, :genre 

    def initialize(name, artist, genre)
        @@count+=1
        @name = name
        @artist = artist
        @genre = genre
        @@artists << artist
        @@genres << genre
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        result = Hash.new
        
        @@genres.each do |genre|
            if result[genre]             
                result[genre] +=1
            elsif result[genre]==nil 
                result[genre]=1
            end
        end
        result

    end

    def self.artist_count
        result = Hash.new
        @@artists.each do |artist|
            if result[artist]               
                result[artist] +=1
            elsif result[artist]==nil 
                result[artist]=1
            end
        end
        result
    end
end