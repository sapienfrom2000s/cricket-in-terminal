require_relative 'fit_pieces'
require 'open-uri'

make_html = FitPieces.new
make_html.append_nodes
File.write('match.html',make_html.doc)
