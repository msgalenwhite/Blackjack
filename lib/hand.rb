class Hand
  attr_accessor :hand

  def initialize
    @hand = []
  end

  def calculate_total
    total = 0
    num_aces = 0
    @hand.each do |card|
      if card.value.to_f === 0.0
        if card.value != "A"
          total += 10
        else
          num_aces += 1
        end
      else
        total += card.value
      end
    end
    if num_aces > 0
      total = add_an_ace(total, num_aces)
    end
    total
  end

  def add_an_ace(total, num_aces)
    total += num_aces
    if total >= 21
      return total
    else
      num_aces.times do
        if total + 10 > 21
          return total
        elsif total + 10 === 21
          return total + 10
        end
        total += 10
      end
    end
  end

end
