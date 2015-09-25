require 'json'
require 'open-uri'

module Computer

  def self.parser()
    file = open("https://data.cityofnewyork.us/resource/erm2-nwe9.json")
    data = JSON.parse(file.read)
  end

  def self.selective_parser(type)
    type = type.split(" ").join("+")
    file = open("https://data.cityofnewyork.us/resource/erm2-nwe9?Complaint+Type=#{type}")
    data = JSON.parse(file.read)
  end
end

