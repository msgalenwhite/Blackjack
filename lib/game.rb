class Game
  attr_reader :player, :dealer, :player_name, :game_deck

  def initialize(player_name = "Player")
    game_deck = Deck.new
    @game_deck = game_deck.deck
    @player_name = player_name
    @player = Hand.new
    @dealer = Hand.new
  end

  def deal_cards(number = 1, target = "player")
    cards = @game_deck.pop(number)
    if target === "player"
      @player.hand.concat(cards)
    else
      @dealer.hand.concat(cards)
    end
  end

  def hit_or_stand

    # verify_input("Would you like to hit or stand?", ["H", "S"])
  end

  def verify_input(question, acceptable_options)
    while true
      print "#{question} (#{acceptable_options.join("/")})  "
      # user_answer = gets.chomp.downcase
      # if acceptable_options.include?(user_answer)
      #   return user_answer
      # else
      #   puts "I'm sorry, I didn't understand that."
      # end
      break
    end
  end

  def display_score (player_score, dealer_score)
    player_length = player_score.to_s.length
    dealer_length = dealer_score.to_s.length

    filler_player = " "*player_length
    filler_dealer = " "*dealer_length
    line_player = "_"*player_length
    line_dealer = "_"*dealer_length

    board = [
      "   You  Dealer",
      "  __#{line_player}_____#{line_dealer}__",
      " |  #{filler_player}  |  #{filler_dealer}  | ",
      " |  #{player_score}  |  #{dealer_score}  | ",
      " |__#{line_player}__|__#{line_dealer}__| "
    ]
    puts board.join("\n")
  end

end
