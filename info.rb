require 'nokogiri'
require 'open-uri'

class Info

	attr_reader :doc, :node

	def initialize
		@doc = Nokogiri::HTML(URI.open("https://www.espncricinfo.com/series/sri-lanka-tour-of-new-zealand-2022-23-1322351/new-zealand-vs-sri-lanka-1st-test-1322357/live-cricket-score"))
		@node = live_scoreboard << compact_scorecard 		
	end

	def live_scoreboard
		doc.at_css("div.ds-mt-3:nth-child(1)")
	end

	def compact_scorecard
		doc.at_css("div.ds-mt-3:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > div:nth-child(2) > div:nth-child(1)")
	end

end
