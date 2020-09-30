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

  def suit(n)
    case n 
    when 1
      "diamonds"
    when 2
      "clubs"
    when 3
      "hearts"
    when 4
      "spades"
    end  
  end

  def rank(n)
    case n
    when 11
      "Jack"
    when 12
      "Queen"
    when 13 
      "King"
    when 14
      "Ace"
    else
      n
    end  
  end

end

# test

# deck = Deck.new

# (1..10).each do |n|

#   dealer = deck.draw_card
#   deck.add_card(dealer)
  
#   p dealer
#   deck.view_cards_drawn
# end
