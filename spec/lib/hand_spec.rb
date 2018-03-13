require "spec_helper"

RSpec.describe Hand do
  # Your tests here
  before(:each) do
    @test_hand = Hand.new
  end

  it "holds cards a player was dealt" do
    expect {@test_hand.hand}.to_not raise_error
  end
  it "can be given a card to hold" do
    @test_hand.hand << Card.new("Hearts", 10)
    expect(@test_hand.hand.length).to eq(1)
  end

  describe "#calculate_total" do
    before(:all) do
      @test_hand = Hand.new
    end

    it "can sum number cards" do
      @test_hand.hand << Card.new("Hearts", 10)
      expect(@test_hand.calculate_total).to eq(10)
    end

    it "can add a non-ace face-method" do
      @test_hand.hand << Card.new("Hearts", 10)
      @test_hand.hand << Card.new("Hearts", "K")
      expect(@test_hand.calculate_total).to eq(20)
    end

    it "can add an ace as a 1" do
      @test_hand.hand << Card.new("Hearts", 10)
      @test_hand.hand << Card.new("Hearts", "K")
      @test_hand.hand << Card.new("Hearts", "A")
      expect(@test_hand.calculate_total).to eq(21)
    end

    it "can add an ace as an 11" do
      @test_hand.hand << Card.new("Hearts", 10)
      @test_hand.hand << Card.new("Hearts", "A")
      expect(@test_hand.calculate_total).to eq(21)
    end
  end
end
