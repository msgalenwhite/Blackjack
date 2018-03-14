require "spec_helper"

RSpec.describe Game do
  let (:test_game) {Game.new("Sally")}

  describe "#deal_cards" do
    context "with no arguments" do
      it "adds 1 card to player's hand" do
        test_game.deal_cards
        expect(test_game.player.hand.length).to eq(1)
        expect(test_game.game_deck.length).to eq(51)
      end
    end

    context "with 1 argument" do
      it "takes in a number and adds that many cards to player's hand" do
        test_game.deal_cards(5)
        expect(test_game.player.hand.length).to eq(5)
        expect(test_game.game_deck.length).to eq(47)
      end
    end

    context "with 2 arguments" do
      it "takes in a number, and adds that number of cards to the dealer's hand" do
        test_game.deal_cards(5, "dealer")
        expect(test_game.dealer.hand.length).to eq(5)
        expect(test_game.game_deck.length).to eq(47)
      end
    end

    it "prints a message to console with what the player was dealt" do
      #how do I test this when it will be random?
    end
  end

  describe "#hit_or_stand" do
    it "prompts for user's hit or stand" do
      # expect { test_game.hit_or_stand }.to output("testing").to_stdout
    end
  #   it "prevents invalid input"
  #   it "accepts upper and lower case input"
  end

  describe "#verify_input" do
    it "outputs a question and possible answers" do
      expect {test_game.verify_input("Am I pretty?", ["y", "n"])}.to output("Am I pretty? (y/n)  ").to_stdout
    end
    # it "accepts input" do
    #   allow(user_answer).to receive(:gets).and_return("y")
    #   response = user_answer.gets
    #
    #   expect(response).to eq("y")
    # end

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
