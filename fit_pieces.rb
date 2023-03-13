require 'nokogiri'
require_relative 'parsed_boiler_plate'
require_relative 'info'


class FitPieces

	attr_reader :doc

	def initialize
		@doc = ParsedBoilerPlate.new.bone_doc.dup
	end

	def append_nodes
		body = doc.at_xpath("/html/body")
		body.add_child(Info.new.node)
	end

end