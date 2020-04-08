class Venue
    attr_accessor :title
    attr_reader :city
    @@all = []

    def initialize(title, city)
        @title = title
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def concerts
      Concert.all.select do |concert|
        concert.venue == self
      end
    end

    def bands
      concerts.map do |concert|
        concert.band
      end
    end

    def concert_on(date)
      concerts.find do |concert|
        concert.date == date
      end
    end

    def most_frequent_band
      bands_only = self.concerts.map(&:band)
      # Look through my own bands
      # sort based on which band shows up the most often in my concerts
      self.bands.uniq.max_by do |band|
        bands_only.count(band)
      end
    end
end