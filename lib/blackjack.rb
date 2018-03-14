require_relative "game"
class Blackjack < Game
  def first_turn
    deal_cards(2)
    deal_cards(2, "Dealer")
  end

  def bust?
    # player_points = player.hand.calculate_total
    # dealer_points = dealer.hand.calculate_total
    #
    # if player_points === dealer_points || dealer_points > 21 || player_points > 21
    #   return true
    # end
    # false
  end

  def declare_winner
    # unless bust? do
    #   player_points = player.hand.calculate_total
    #   dealer_points = dealer.hand.calculate_total
    #   if player_points ===
    #   if player_points > dealer_points
    #     return "#{@player_name has won!}"
    #   else
    #     return "Dealer has won."
    # end
    # return "Bust! Game over..."
  end

end
