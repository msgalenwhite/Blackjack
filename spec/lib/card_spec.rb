require "spec_helper"

RSpec.describe Card do
  # Your tests here
  it "has a suit and a value" do
    test_card = Card.new("Hearts", "A")
    expect(test_card.suit).to eq("Hearts")
    expect(test_card.value).to eq("A")
  end
end