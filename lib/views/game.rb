require "tty-prompt"

require_relative '../models/hand'
require_relative '../models/get_name'
require_relative '../models/token'
require_relative 'game_over'

module Views
  def game
    deck = Deck.new
    name = Name.new
    token = Token.new

    round = 0
    win_streak = 0

    # get name
    name.get_name
    token.tokens

    # bet tokens
    token.bet_tokens

    # shuffle on round 10
    while true 
      round += 1
      if (round % 10) == 0
        puts "Alright, this is the #{round}th round. Let's shuffle the deck."
        puts 
        puts
        deck.shuffle
      end

      token.tokens_remaining

      puts "============================================"
      puts "Round #{round}"
      puts "============================================"
      puts 
      dealer = deck.draw_card
      deck.add_card(dealer)

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
      choice = TTY::Prompt.new.select('', cycle: true) do |menu|
        menu.choice 'higher'
        menu.choice 'lower'
      end
      # puts "Choose high or low."
      # choice = gets.chomp.downcase
      # puts choice = gets.chomp.downcase if choice != "high" || choice != "low"
      puts

      # show dealer card
      sleep(0.3)
      puts "The dealer flips his card. It's the #{deck.rank(dealer[1])} of #{deck.suit(dealer[0])}."
      puts

      # compare both dealer and player cards, which is greater?
      dealer = dealer.reverse.join.to_i
      player = player.reverse.join.to_i

      if (dealer > player && choice == 'higher') || (dealer < player && choice == 'lower')
        puts "Congratulations, #{name.name}. You won!"
        token.double_tokens
        win = true
        win_streak += 1
      else 
        puts "Too bad, #{name.name}. You lose."
        puts
        win = false
        win_streak = 0
        # if 0 remaining tokens, view high score
        puts token.total_tokens == 0
        if token.total_tokens == 0
          Views.game_over
        end
      end

      token.tokens
      puts "You have a win streak of #{win_streak}."
      puts

      # play again? 
      play_again = TTY::Prompt.new.select('Do you want to play again?', cycle: true) do |menu|
        menu.choice "Yes"
        menu.choice "No"
      end
      puts
      
      if play_again == 'Yes' && win == false
        token.bet_tokens 
      elsif play_again == 'Yes' && win == true
        token.cash_in      
        # high_score?
      elsif play_again == 'No' && win == false
        Views.game_over
      elsif play_again == 'No' && win == true
        token.bet_to_total
        Views.game_over(name.name, token.total_tokens)
      end  
    end
  end

  module_function :game
end