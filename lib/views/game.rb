# class Game
#   def initialize
#   end
  
#   def high_low
#     puts "A dealer card is drawn face up, your card is drawn face down. You must decide whether your card is higher or lower than the dealers card. Aces are highest cards, twos are the lowest."
    
#   end

# end

# get name
puts "Hi, what's your name?"
name = gets.chomp.capitalize
puts
puts "Hi #{name}. Let's play high low!"
puts "You start with $100."
puts

# explain rules?
puts "Do you want me to explain the rules?(y/n)"
rules = gets.chomp.downcase
if rules == "y"
  puts "------------------------------------------------------"
  puts "- A dealer card is dealt face down, your card is dealt face up. You must decide whether the dealer's card is higher or lower than your card. If you play 15 rounds, the deck is reshuffled." 
  puts "- Aces are the highest cards, twos are the lowest. If the same number is drawn, suits are used to judge which card is higher. Suits in order of high to low are spades, hearts, clubs, diamonds."
  puts "See if you can get on the scoreboard by getting a long streak or winning the most money!"
  puts "------------------------------------------------------"
  puts
elsif rules == "n"
  
else
  puts "Do you want me to explain the rules?(y/n)"
end  

# play game

while true
  cards_drawn = []

  (1..15).each do |round|
    # dealer gets a card facedown
    dealer = [rand(1..4), rand(2..14)] if cards_drawn.each {|card| card == dealer}
    cards_drawn << dealer

    case dealer[0] 
    when 1
      d_suit = "diamonds"
    when 2
      d_suit = "clubs"
    when 3
      d_suit = "hearts"
    when 4
      d_suit = "spades"
    end  

    case dealer[1]
    when 11
      d_card = "Jack"
    when 12
      d_card = "Queen"
    when 13 
      d_card = "King"
    when 14
      d_card = "Ace"
    else
      d_card = dealer[1]
    end  

    puts
    sleep(0.3)
    puts "The dealer deals himself a facedown card."
    puts

    # player gets a card faceup
    player = [rand(1..4), rand(2..14)] if cards_drawn.each {|card| card == player}
    cards_drawn << player

    case player[0] 
    when 1
      p_suit = "diamonds"
    when 2
      p_suit = "clubs"
    when 3
      p_suit = "hearts"
    when 4
      p_suit = "spades"
    end  

    case player[1]
    when 11
      p_card = "Jack"
    when 12
      p_card = "Queen"
    when 13 
      p_card = "King"
    when 14
      p_card = "Ace"
    else
      p_card = player[1]
    end  

    sleep(0.3)
    puts "The dealer deals you a card."
    sleep(0.3)
    puts "You check it. It's the #{p_card} of #{p_suit}."
    sleep(0.3)
    puts 
    sleep(0.3)
    puts "Do you think the dealer's card is higher or lower than yours?"
    puts "Choose high or low"
    choice = gets.chomp.downcase
    puts "Choose high or low" if choice != "high" || choice != "low"
    puts

    # show dealer card
    sleep(0.3)
    puts "The dealer flips his card. It's the #{d_card} of #{d_suit}."
    puts

    # compare both dealer and player cards, which is greater?
    if (dealer[1] > player[1] && choice == 'high') || (dealer[1] < player[1] && choice == 'low')
      puts "Congratulations, #{name}. You won!"
    elsif dealer[1] == player[1] && (dealer[0] > player[0] && choice == 'high') || (dealer[0] < player[0] && choice == 'low')
      puts "Congratulations, #{name}. You won!"
    else
      puts "Too bad, #{name}. You lost."
    end
    
    # play again?
    puts 
    puts "Do you want to play again? (y/n)"
    play_again = gets.chomp.downcase
    if play_again == "y"
      next
    elsif play_again == "n"
      exit
    else
      puts "Do you want to play again? (y/n)"
    end  
  end

  puts 
  puts "Alright, that's 15 rounds. Let's shuffle the deck."
  puts 
  puts
  # loop
end