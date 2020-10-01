# require_relative '../controllers/back_menu'

module Views
    module How_to_play
      def self.instructions
        system('clear')
        puts "------------------------------------------------------"
        puts "- A dealer card is dealt face down, your card is dealt face up. You must decide whether the dealer's card is higher or lower than your card. The deck is reshuffled every 10th round." 
        puts "- Aces are the highest cards, twos are the lowest. If the same number is drawn, suits are used to judge which card is higher. Suits in order of high to low are spades, hearts, clubs, diamonds."
        puts "See if you can get on the scoreboard by getting a long streak or winning the most money!"
        puts "------------------------------------------------------"
        puts
        # ::Views::Back_menu.back
      end
    end
  end
