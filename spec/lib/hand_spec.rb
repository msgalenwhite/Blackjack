require "spec_helper"

RSpec.describe Hand do
  let(:test_hand) { Hand.new }

  describe "#initialize" do
    it "is a Hand object" do
      expect(test_hand).to be_a(Hand)
    end
    it "holds cards" do
      test_hand.hand << Card.new("Hearts", 10)
      expect(test_hand.hand.length).to eq(1)
    end
  end

  describe "#calculate_total" do
    before(:each) do
      test_hand.hand = []
    end
    
    it "can sum number cards" do
      test_hand.hand << Card.new("Hearts", 10)
      expect(test_hand.calculate_total).to eq(10)
    end
    it "can add a non-ace face-card" do
      test_hand.hand << Card.new("Hearts", 10)
      test_hand.hand << Card.new("Hearts", "K")
      expect(test_hand.calculate_total).to eq(20)
    end

    context "card to add is an ace" do
      it "can add as a 1" do
        test_hand.hand << Card.new("Hearts", 10)
        test_hand.hand << Card.new("Hearts", "K")
        test_hand.hand << Card.new("Hearts", "A")
        expect(test_hand.calculate_total).to eq(21)
      end
      it "can add as an 11" do
        test_hand.hand << Card.new("Hearts", 10)
        test_hand.hand << Card.new("Hearts", "A")
        expect(test_hand.calculate_total).to eq(21)
      end
      it "can add multiple aces" do
        test_hand.hand << Card.new("Hearts", "A")
        test_hand.hand << Card.new("Diamonds", "A")
        test_hand.hand << Card.new("Clubs", "A")

        expect(test_hand.calculate_total).to eq(13)
      end
    end
  end
end
