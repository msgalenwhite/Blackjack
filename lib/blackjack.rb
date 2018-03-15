require_relative "game"
class Blackjack < Game

  def first_turn
    deal_cards(1)
    deal_cards(1, "Dealer")
    deal_cards(1)
    deal_cards(1, "Dealer")
  end
  
  def dealer_turn
    until @dealer.calculate_total >= 17
      deal_cards(1, "Dealer")
    end
  end

end
