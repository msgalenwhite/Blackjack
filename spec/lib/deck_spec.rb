require "spec_helper"

RSpec.describe Deck do
  # Your tests here
  describe "#create_deck" do
    let (:test_deck) {Deck.new}
    let (:test_deck_two) {Deck.new}

    it "contains 52 cards" do
      expect(test_deck.deck.length).to eq(52)
    end

    it "shuffles the deck" do
      expect(test_deck.deck).not_to eq(test_deck_two.deck)
    end
  end
end
