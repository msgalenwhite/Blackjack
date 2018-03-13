require "spec_helper"

RSpec.describe Game do
  let (:test_game) {Game.new("Sally")}

  describe "#deal_cards" do
    it "with no arguments, 1 card is added to a player's hand" do
      test_game.deal_cards
      expect(test_game.player.hand.length).to eq(1)
      expect(test_game.game_deck.length).to eq(51)
    end

    it "with 1 argument, it adds that number of cards to the player's hand" do
      test_game.deal_cards(5)
      expect(test_game.player.hand.length).to eq(5)
      expect(test_game.game_deck.length).to eq(47)
    end

    it "with 2 arguments, it adds that number of cards to the dealer's deck" do
      test_game.deal_cards(5, "dealer")
      expect(test_game.dealer.hand.length).to eq(5)
      expect(test_game.game_deck.length).to eq(47)
    end

    it "prints a message to console with what the player was dealt" do

    end
  end

  describe "#hit_or_stand" do
    # describe "#hit_or_stand"
    #   it "prompts for user's hit or stand"
    #   it "prevents invalid input"
    #   it "accepts upper and lower case input"
  end
end


  #
  # describe "#display score"
  #   it "outputs player and dealer score"
  #
  # describe "#hit"
  #   it "deals a card to the player"
  #   it "triggers a new calculation of hand total"
  #   it "displays a message if total > 21"
  #
  # describe "#stand"
  #   it "ends player's turn and starts dealer's turn"
  #   it "calculates player's final score"
  #   it "displays score to cosole"
  #
  # describe "#dealer's turn"
  #   it "deals a card to the dealer"
  #   it "calculates dealer's hand total"
  #   it "displays message if total > 21"
