require_relative '../models/deck'
require_relative '../models/get_name'
require_relative '../models/token'


deck = Deck.new
name = Name.new
token = Token.new

  # get name
  name.get_name
  token.total_tokens

  # play game
  # bet tokens
  while true
    token.bet_tokens
    
    # play for 15 rounds before deck shuffle
    15.times do
      token.tokens_remaining
      
      dealer = deck.draw_card
      deck.add_card(dealer)

      puts
      sleep(0.3)
      puts "The dealer deals himself a facedown card."
      puts

      player = deck.draw_card
      deck.add_card(player)

      sleep(0.3)
      puts "The dealer deals you a card."
      sleep(0.3)
      puts "You check it. It's the #{deck.rank(player[1])} of #{deck.suit(player[0])}."
      sleep(0.3)
      puts 
      sleep(0.3)

      puts "Do you think the dealer's card is higher or lower than yours?"
      puts "Choose high or low."
      choice = gets.chomp.downcase
      # puts choice = gets.chomp.downcase if choice != "high" || choice != "low"
      puts

      # show dealer card
      sleep(0.3)
      puts "The dealer flips his card. It's the #{deck.rank(dealer[1])} of #{deck.suit(dealer[0])}."
      puts

      # compare both dealer and player cards, which is greater?
      dealer = dealer.reverse.join.to_i
      player = player.reverse.join.to_i
    
      if (dealer > player && choice == 'high') || (dealer < player && choice == 'low')
        puts "Congratulations, #{Name.name}. You won!"
        token.double_tokens
      else 
        puts "Too bad, #{Name.name}. You lose."
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
        play_again = gets.chomp.downcase
      end  
    end

    puts 
    puts "Alright, that's 15 rounds. Let's shuffle the deck."
    puts 
    puts
    # loop
  end