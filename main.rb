# require_relative 'dispatch'
require "tty-prompt"
require_relative 'lib/views/title'
# require_relative 'lib/views/game'

# pseudocode
# 1. title
# 2. get name
# 3. "A dealer card is drawn face up, your card is drawn face down. You must decide whether your card is higher or lower than the dealers card. Aces are highest cards, twos are the lowest." "hi #{name}" two cardschoose high or low.


  puts 
  puts 'Welcome to'
  Views.title
  puts 
  prompt = TTY::Prompt.new
  prompt.select('', %w(Start_game How_to_play High_scores Quit), cycle: true)
  # choices = {"Scorpion" => 1, "Kano" => 2, "Jax" => 3}
  # prompt.select("Choose your destiny?", choices)  
  # name = gets.chomp.capitalize

# until ['quit', 'q'].include? command
