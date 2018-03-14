require "spec_helper"

RSpec.describe Blackjack do
  let (:test_game) {Blackjack.new}

  describe "#first_turn" do
    it "deals 2 cards to player and 2 to dealer" do
      test_game.first_turn
      expect(test_game.player.hand.length).to eq(2)
      expect(test_game.dealer.hand.length).to eq(2)
      expect(test_game.game_deck.length).to eq(48)
    end
  end
  describe "#dealer_turn" do
    ###
  end
end
