require_relative "game"
class Blackjack < Game
  def first_turn
    deal_cards(2)
    deal_cards(2, "Dealer")
  end

end
