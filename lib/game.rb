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
end
