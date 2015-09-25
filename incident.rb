class Incident
	attr_reader :descriptor, :complaint_type, :latitude, :longitude

	def initialize(args = {})
		@descriptor = args["descriptor"]
		@complaint_type = args["complaint_type"]
		@latitude = args["latitude"]
		@longitude = args["longitude"]
	end

	def to_s
		"Description:#{descriptor}" "\n" "Complaint:#{complaint_type}" "\n" "Latitude:#{latitude}" "\n" "Longitude:#{longitude}"
	end
end

# blah = Incident.new("descriptor" => "anything", "complaint_type" => "anything else", "latitude" => "123456", "longitude" => "1234567")
# puts blah
