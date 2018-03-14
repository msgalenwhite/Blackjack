require "spec_helper"

RSpec.describe Card do
  let (:test_card) {Card.new("Hearts", "A")}

  context "#initialize" do
    it "is a Card object" do
      expect(test_card).to be_a(Card)
    end
    it "has a suit and a value" do
      expect(test_card.suit).to eq("Hearts")
    end
    it "has a value" do
      expect(test_card.value).to eq("A")
    end
  end
  describe "#name" do
    it "can return a string with its name" do
      expect(test_card.name).to eq("the A of Hearts")
    end
  end
end
