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
player_turn = true
dealer_turn = false
if new_game.player.calculate_total === 21 || new_game.dealer.calculate_total === 21
  puts "BLACKJACK!"
  player_turn = false
end

player_response = new_game.verify_input("Would you like to hit or stand?", ["h", "s"])

while player_turn && player_response == "h"
  new_game.deal_cards
  new_game.display_score
  if new_game.player.calculate_total < 21
    player_response = new_game.verify_input("Would you like to hit or stand?", ["h", "s"])
  elsif new_game.player.calculate_total > 21
    puts "\nBUST!"
    player_turn = false
  elsif new_game.player.calculate_total === 21
    puts "BLACKJACK!"
    player_turn = false
  else
    player_turn = false
    dealer_turn = true
  end
end

if dealer_turn
  new_game.dealer_turn
end

dealer_turn = false

player_score = new_game.player.calculate_total
dealer_score = new_game.dealer.calculate_total
puts "\n~~~~~\n"
if dealer_score > 21 ||
  (dealer_score < 21 && player_score < 21 && player_score > dealer_score)
  puts "PLAYER WINS!"
else
  puts "DEALER WINS!"
end
puts "~~~~~\n\n"

puts "Final Scores:"
new_game.display_score
