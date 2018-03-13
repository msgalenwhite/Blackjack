class Hand
  # Your code here
  attr_accessor :hand

  def initialize
    @hand = []
  end

  def calculate_total
    total = 0
    @hand.each do |card|
      if card.value.to_f === 0.0
        if card.value != "A"
          total += 10
        else
          total += add_an_ace(total)
        end
      else
        total += card.value
      end
    end
    return total
  end

  def add_an_ace(total)
    if total + 11 > 21
      return 1
    end

    return 11
  end

end
