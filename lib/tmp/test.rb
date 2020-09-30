dealer = [4, 14]
player = [3, 12]

  # p dealer.reverse.join.to_i

  dealer = dealer.reverse.join.to_i
  player = player.reverse.join.to_i
  choice = 'low'

  if (dealer > player && choice == 'high') || (dealer < player && choice == 'low')
    puts "Congratulations. You won!"
  else 
    puts "You lose."
  end


