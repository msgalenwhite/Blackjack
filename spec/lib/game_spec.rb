require "spec_helper"

RSpec.describe Game do
  let (:test_game) {Game.new("Sally")}
  let (:test_game_two) {Game.new}
  let (:dealer_hand) {[Card.new("Hearts", 5), Card.new("Diamonds", 10)]}

  describe "#initialize" do
    it "is a Game object" do
      expect(test_game).to be_a(Game)
    end
    it "has a deck" do
      expect(test_game.game_deck).to be_a(Array)
    end
    context "stores a player's name" do
      it "can store a custom name" do
        expect(test_game.player_name).to eq("Sally")
      end
      it "can use a default name" do
        expect(test_game_two.player_name).to eq("Player")
      end
    end
    it "has a player hand" do
      expect(test_game.player).to be_a(Hand)
    end
    it "has a dealer hand" do
      expect(test_game.player).to be_a(Hand)
    end
  end

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
  end

  describe "#print_cards" do
    it "takes in an array of card objects" do
      expect{ test_game.print_cards(dealer_hand, "Dealer") }.not_to raise_error
    end
    it "outputs a string of who got what cards" do
      expect { test_game.print_cards(dealer_hand, "Dealer") }.to output("Dealer was dealt the 5 of Hearts\nDealer was dealt the 10 of Diamonds\n").to_stdout
    end
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
end
