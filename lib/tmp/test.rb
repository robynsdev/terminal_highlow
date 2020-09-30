class Deck
  def initialize
    @cards_drawn = []
  end

  def draw_card
    rand_card = [rand(1..2), rand(2..3)]
    while @cards_drawn.include?(rand_card) == true
      rand_card = [rand(1..2), rand(2..3)]
    end
    rand_card
  end

  def add_card(card)
    @cards_drawn << card
  end

  def view_cards_drawn
    p @cards_drawn
  end

end

deck = Deck.new

(1..10).each do |n|

  dealer = deck.draw_card
  deck.add_card(dealer)
  
  p dealer
  deck.view_cards_drawn
end


