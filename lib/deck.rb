SUITS = ["Hearts", "Diamonds", "Spades", "Clubs"]
VALUES = [2,3,4,5,6,7,8,9,10, "A", "K", "Q", "J"]

class Deck
  # Your code here
  attr_reader :deck
  def initialize
    deck = []
    SUITS.each do |suit|
      VALUES.each do |value|
        deck << Card.new(suit, value)
      end
    end
    @deck = deck
  end
end
