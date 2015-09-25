require_relative 'location'

class CrimeFighter

  attr_reader :name
  attr_accessor :location

  def initialize(args = {})
    @name = args[:name] || "Generic Fighter"
    @location = args[:location] || Location.new
  end

  def update_location(location)
    self.location = location
  end
end