class Game
  attr_reader :player, :dealer, :player_name, :game_deck

  def initialize(player_name = "Player")
    game_deck = Deck.new
    @game_deck = game_deck.deck
    @player_name = player_name
    @player = Hand.new
    @dealer = Hand.new
  end

  def deal_cards(number = 1, target = "Player")
    cards = @game_deck.pop(number)
    if target === "Player"
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
