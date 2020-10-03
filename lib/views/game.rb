# require_relative '../models/deck'
require_relative '../models/hand'
require_relative '../models/get_name'
require_relative '../models/token'
require_relative 'game_over'


deck = Deck.new
name = Name.new
token = Token.new

round = 0
win_streak = 0

# get name
name.get_name
token.tokens

# play game
# bet tokens

token.bet_tokens

# play for 15 rounds before deck shuffle
while true 
  round += 1
  if (round % 10) == 0
    puts "Alright, that's 10 rounds. Let's shuffle the deck."
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
      game_over
    end
  end

  token.tokens
  puts "You have a win streak of #{win_streak}."
  
  # play again?
  puts 
  puts "Do you want to play again? (y/n)"
  play_again = gets.chomp.downcase
  puts
  if play_again == 'y' && win == false
    token.bet_tokens 
  elsif play_again == 'y' && win == true
    token.cash_in      
    # high_score?
  elsif play_again == 'n' && win == false
    game_over
  elsif play_again == 'n' && win == true
    token.bet_to_total
    p "totaltokensgame.rb: #{token.total_tokens}"
    game_over(name.name, token.total_tokens)
  end  
end