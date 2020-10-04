class Deck
  def initialize
    @cards_drawn = []
  end

  # FEATURE 2: Randomised cards drawn are depleted from deck
  # new drawn card is checked against @cards_drawn to ensure same card is not drawn
  def draw_card
    rand_card = [rand(1..4), rand(2..14)]
    while @cards_drawn.include?(rand_card) == true
      rand_card = [rand(1..4), rand(2..14)]
    end
    rand_card
  end
  
  # FEATURE 2: Randomised cards drawn are depleted from deck
  # any cards drawn are added to @cards_drawn
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
end