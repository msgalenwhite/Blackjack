require_relative "card"
require_relative "deck"
require_relative "hand"
require_relative 'game'



new_game = Game.new

new_game.verify_input("Pretty?", ["y", "elephant"])
