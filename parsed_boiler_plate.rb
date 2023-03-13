require 'nokogiri'
require 'open-uri'

class ParsedBoilerPlate

	attr_reader :bone_doc

	def initialize
		@bone_doc = File.open("boiler_plate.html") { |f| Nokogiri::HTML(f) }
	end
end
