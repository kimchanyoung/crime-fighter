require 'rubygems'
require 'geokit'
require'pry'

Geokit::default_units = :miles
Geokit::default_formula = :sphere
Geokit::Geocoders::request_timeout = 3

class Location
  # include Geokit::Mappable

  attr_reader :current_loc

  def initialize(address = '48 Wall St, New York, NY')
    @current_loc = Geokit::Geocoders::GoogleGeocoder.geocode(address).ll.split(',')
  end

  def self.get_here_geocode(address)
    Geokit::Geocoders::GoogleGeocoder.geocode(address).ll.split(',')
  end

  def calculate_distance_to(lat, long)
    here = Geokit::LatLng.new(*current_loc)
    there = Geokit::LatLng.new(lat, long)
    here.distance_to(there)
  end
end