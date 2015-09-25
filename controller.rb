require_relative 'viewer'
require_relative 'crimefighter'
require_relative 'location'
require_relative 'computer'
require_relative 'incident'
require 'pry'

class Controller
  include Computer

  attr_accessor :done
  attr_accessor :crimefighter
  attr_reader :view

  def initialize
    @view = View.new
    @done = false
    @crimefighter = nil
  end

  def run
    view.show_batman
    view.welcome_message
    view.username_input
    username = gets.chomp
    self.crimefighter = CrimeFighter.new({name: username})
    done = false
    until done
      puts
      view.prompt_for_command
      cmd = gets.chomp
      if cmd == 'fight crime'
        fight_crime
      elsif cmd == 'exit'
        self.done == true
      else
        view.invalid_command
      end
    end
  end

  def fight_crime
    puts
    set_location
    puts
    view.ask_for_incident
    type = gets.chomp
    if type == ""
      data = Computer.parser()
    else
      data = Computer.selective_parser(type)
    end
    radius = specify_radius
    all_incidents = data.map { |datum| Incident.new(datum) }
    matches = all_incidents.select { |incident| crimefighter.calculate_distance_to(incident.latitude, incident.longitude) <= radius.to_f }
    view.match_search_done
    matches.each { |incident| view.report_matches(incident) }
  end

  def set_location
    view.ask_for_location
    current_location = gets.chomp
    crimefighter.update_location(Location.new(current_location))
  end

  def specify_radius
    view.ask_for_radius
    gets.chomp
  end

end

runner = Controller.new
runner.run

#Controller pseudocode

#when user starts game, controller will take the input (parse file) and return output of the welcome messsage.  (view.welcome)

#after the welcome message, the computer will ask the user to input an C.F. name. (view.username_input)

#once user sets name, instructions will be entered (view.instructions)

#user will input an address and controller will take the input and run it through geokit to get the longatitude/latitiude of address. (model.geokit)

#once location found, controller will iterate through the locations of incidents to find the nearest incident. keep incrementing by miles until and incident is found.
  # if theres not crime in location, increment by 1 mile until something is found.
  #set a limit of how many miles to increment.

#return those results to user and ask for new location (view.new_location)