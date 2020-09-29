# require_relative 'dispatch'
require_relative 'lib/views/title'
require_relative 'lib/views/game'

# pseudocode
# 1. title
# 2. get name
# 3. "A dealer card is drawn face up, your card is drawn face down. You must decide whether your card is higher or lower than the dealers card. Aces are highest cards, twos are the lowest." "hi #{name}" two cardschoose high or low.


begin
  puts 
  puts 'Welcome to'
  Views.title
  puts 
  puts 'Start game'
  puts 'High scores'
  # name = gets.chomp.capitalize
  game
end 
# until ['quit', 'q'].include? command
