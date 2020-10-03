require_relative '../controllers/start_game'

module Views
  def how_to_play
    puts "------------------------------------------------------"
    puts "- A dealer card is dealt face down, your card is dealt face up. You must decide whether the dealer's card is higher or lower than your card. The deck is reshuffled every 10th round." 
    puts "- Aces are the highest cards, twos are the lowest. If the same number is drawn, suits are used to judge which card is higher. Suits in order of high to low are spades, hearts, clubs, diamonds."
    puts "See if you can get on the scoreboard by getting a long streak or winning the most money!"
    puts "------------------------------------------------------"
    puts
    
    Start_game.game
  end

  module_function :how_to_play
end
