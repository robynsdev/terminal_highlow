module Deck
  def card(card)
    case card[0]
    when 1
      suit = "diamonds"
    when 2
      suit = "clubs"
    when 3
      suit = "hearts"
    when 4
      suit = "spades"
    end  
  
    case card[1]
    when 11
      num = "Jack"
    when 12
      num = "Queen"
    when 13 
      num = "King"
    when 14
      num = "Ace"
    else
      num = card[1]
    end   
  end
  

end

# 4- spades
# 3- hearts
# 2- clubs
# 1- diamonds
# -2..14 with 14 as ace

# 414 - highest card (ace of spades)
# 102 - lowest card (2 of diamonds)

# or value to keep track of if card has been dealt
# put in hash with number as key and cardface as value