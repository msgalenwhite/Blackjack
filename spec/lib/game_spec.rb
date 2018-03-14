require "spec_helper"

RSpec.describe Game do
  let (:test_game) {Game.new("Sally")}
  let (:dealer_hand) {[Card.new("Hearts", 5), Card.new("Diamonds", 10)]}

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

  describe "#display_score" do
    it "takes in a score and outputs a board" do
      board = [
        "   You  Dealer",
        "  ___________",
        " |     |     | ",
        " |  3  |  4  | ",
        " |_____|_____| ",
      ].join("\n") + "\n"

      expect {test_game.display_score(3, 4)}.to output(board).to_stdout
    end
  end


  describe "#dealer_turn" do
    it "deals a card to dealer" do

    end
    it "output's dealer's total to console" do

    end
    it "displays message if score > 21" do

    end
  end
end


  # describe "#stand"
  #   it "ends player's turn and starts dealer's turn"
  #   it "calculates player's final score"
  #   it "displays score to cosole"
  #
