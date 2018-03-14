require "spec_helper"

RSpec.describe Deck do
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
    end
  end
end
