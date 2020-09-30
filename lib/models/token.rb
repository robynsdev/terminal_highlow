class Token
  def initialize
    @total_tokens = 10
    @bet = nil
  end

  def total_tokens
    puts "You have #{@total_tokens} tokens."
    puts
  end

  def tokens_remaining
    puts "You have #{@total_tokens} tokens remaining."
    puts
  end

  def bet_tokens
    puts 'How many tokens do you want to bet?'
    bet = gets.to_i
    @total_tokens -= bet
  end

end