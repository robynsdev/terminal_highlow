class Deck
  def initialize
    @cards_drawn = []
  end

  def draw_card
    rand_card = [rand(1..4), rand(2..14)]
    while @cards_drawn.include?(rand_card) == true
      rand_card = [rand(1..4), rand(2..14)]
    end
    rand_card
  end

  def add_card(card)
    @cards_drawn << card
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

  def shuffle
    @cards_drawn.clear
    p @cards_drawn
  end

  # not used in game - testing only
  def view_cards_drawn
    p @cards_drawn
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
