class Band
    attr_accessor :name
    attr_reader :hometown
    @@all = []

    def hometown
      @hometown
    end

    def initialize(name, hometown)
        @name = name
        @hometown = hometown
        @@all << self
    end

    def self.all
        @@all
    end

    def concerts
      Concert.all.select do |concert|
        concert.band == self
      end
    end

    def venues
      concerts.map do |concert|
        concert.venue
      end
    end

    def play_in_venue(venue, date)
      Concert.new(date, self, venue)
    end

    def all_introductions
      concerts.map do |concert|
        concert.introduction
      end
    end
end