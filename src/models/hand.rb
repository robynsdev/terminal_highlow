require_relative 'deck'

class Hand
  attr_reader :dealer, :player

  def initialize
    @dealer = []
    @player = []
  end

  def dealer_draw
    @dealer = deck.draw_card
    deck.add_card(@dealer)
  end

  def player_draw
    @player = deck.draw_card
    deck.add_card(@player)
  end
end