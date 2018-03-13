require "spec_helper"

RSpec.describe Deck do
  # Your tests here
  describe "#create_deck" do
    it "contains 52 cards" do
      test_deck = Deck.new
      expect(test_deck.deck.length).to eq(52)
    end
  end
end
