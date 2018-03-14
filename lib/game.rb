class Game
  attr_reader :player, :dealer, :player_name, :game_deck

  def initialize(player_name = nil)
    game_deck = Deck.new
    @game_deck = game_deck.deck
    @player = Hand.new
    @dealer = Hand.new
    if player_name.nil?
      @player_name = "Player"
    else
      player_name.capitalize!
      @player_name = player_name
    end
  end

  def deal_cards(number = 1, target = nil)
    cards = @game_deck.pop(number)
    if target.nil?
      @player.hand.concat(cards)
      name = @player_name
    else
      @dealer.hand.concat(cards)
      name = "Dealer"
    end
    print_cards(cards, name)
  end

  def print_cards(card_array, target_name)
    card_array.each do |card|
      puts "#{target_name} was dealt #{card.name}"
    end
  end

  def display_score
    player_score = player.calculate_total
    dealer_score = dealer.calculate_total

    player_length = player_score.to_s.length
    dealer_length = dealer_score.to_s.length

    filler_player = " "*player_length
    filler_dealer = " "*dealer_length
    line_player = "_"*player_length
    line_dealer = "_"*dealer_length

    board = [
      "\n   You  Dealer",
      "  __#{line_player}_____#{line_dealer}__",
      " |  #{filler_player}  |  #{filler_dealer}  | ",
      " |  #{player_score}  |  #{dealer_score}  | ",
      " |__#{line_player}__|__#{line_dealer}__| "
    ]
    puts board.join("\n")
  end

  def verify_input (question, answer_array)
    print "#{question} (#{answer_array.join("/")}) > "
    user_answer = gets.chomp.downcase
    until answer_array.include?(user_answer)
      print "I didn't understand that.\n#{question} (#{answer_array.join("/")}) > "
      user_answer = gets.chomp.downcase
    end
    user_answer
  end
end
