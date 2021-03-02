class Artist
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select{|song| song.artist == self} #needs to be created before new_song is created
    end

    def genres
        songs.collect {|song| song.genre} # look above 
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end


end
