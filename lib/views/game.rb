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
  while true
  
    # total_tokens = 10
    # puts 'How many tokens do you want to bet?'
    # pot = gets.to_i
    # total_tokens -= pot

    # puts
    # puts "You have #{total_tokens} tokens remaining."

    token.bet_tokens
    token.tokens_remaining

    15.times do

      dealer = deck.draw_card
      deck.add_card(dealer)

      puts
      sleep(0.3)
      puts "The dealer deals himself a facedown card."
      puts

      # player gets a card faceup
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

      # # test compare
      # p "dealer: #{dealer}"
      # p "player: #{player}"
      # p choice
      # p dealer[1] > player[1]
      # compare both dealer and player cards, which is greater?
      # if dealer[1].digits.length > 1
      #   p dealer.join.to_i
      # else
      #   p dealer.join(0).to_i
      # end

      if ((dealer[1] > player[1]) && choice == 'high') || ((dealer[1] < player[1]) && choice == 'low')
        puts "Congratulations, #{name}. You won!"
        pot *= 2
        puts "There are #{pot} tokens in the pot."
      # elsif (dealer[1] == player[1]) && ((dealer[0] > player[0]) && choice == 'high') || ((dealer[0] < player[0]) && choice == 'low')
      #   puts "Congratulations, #{name}. You won!"
      else
        puts "Too bad, #{name}. You lost."
        puts "You have #{total_tokens} total tokens."
        puts 'How many tokens do you want to bet?'
        pot = gets.to_i
        total_tokens -= pot
    
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