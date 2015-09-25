class View

  def display(string)
    puts string
  end

  def welcome_message
    puts "Welcome to 'Crime'fighter!!!"
  end

  def username_input
    puts "Please enter a crimefighter name..."
  end

  def ask_for_location
    puts "Please provide your current location..."
  end

  def ask_for_incident
    puts "If so desired, please select the type of crime you would like to fight: "
  end

  def ask_for_radius
    puts "Please indicate the radius of how far you are willing to fight crime..."
  end

  def match_search_done
    puts "Here are the crimes in your selected area: "
  end

  def report_matches(incident)
    puts incident
  end

  def invalid_command
    puts "Invalid command"
  end

  def prompt_for_command
    puts "Please input a command: "
  end

end