require "spec_helper"

RSpec.describe Deck do
<<<<<<< HEAD
  # Your tests here
  describe "#create_deck" do
    let (:test_deck) {Deck.new}
    let (:test_deck_two) {Deck.new}

    it "contains 52 cards" do
      expect(test_deck.deck.length).to eq(52)
=======
  let (:test_deck) {Deck.new}

  describe "#initialize" do
    it "is a Deck Object" do
      expect(test_deck).to be_a(Deck)
    end
    it "creates a deck" do
      expect(test_deck.deck).to be_a(Array)
    end

    describe "#create_deck" do
      it "creates 52 cards" do
        expect(test_deck.deck.length).to eq(52)
      end
>>>>>>> tests
    end

    it "shuffles the deck" do
      expect(test_deck.deck).not_to eq(test_deck_two.deck)
    end
  end
end
