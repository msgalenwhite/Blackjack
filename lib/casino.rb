require_relative "card"
require_relative "deck"
require_relative "hand"
require_relative "game"
require_relative "blackjack"


puts "Welcome to Blackjack!"
puts "If you would like to enter your name, either do so now or press enter."
name = gets.chomp.capitalize!

new_game = Blackjack.new(name)
new_game.first_turn

new_game.display_score

player_response = new_game.verify_input("Would you like to hit or stand?", ["h", "s"])

if player_response === "h"
  new_game.deal_cards
  new_game.display_score
  
else
  # he stands!
end
