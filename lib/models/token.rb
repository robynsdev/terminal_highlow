class Token
  attr_reader :total_tokens

  def initialize
    @total_tokens = 10
    @bet = nil
  end

  def tokens
    puts "You have #{@total_tokens} tokens in hand."
  end

  def tokens_remaining
    puts "You have #{@total_tokens} tokens remaining."
    puts
  end

  def bet_tokens
    bet_token = TTY::Prompt.new.ask('How many tokens would you like to bet?') do |q|
      q.validate /^[0-9]+$/
      q.convert :int
      q.messages[:convert?] = "Please input a number."
    end
    
    @bet = bet_token
    @total_tokens -= @bet
    if @total_tokens < 0
      @total_tokens += @bet
      puts "You can't bet more tokens than you have..."
      puts
      bet_tokens
    end
  end

  def double_tokens
    @bet *= 2
    puts "You've doubled the pot!"
    puts "There are #{@bet} tokens in the pot."
    puts 
  end

  def cash_in
    cash_in = TTY::Prompt.new.select('Would you like to cash in your tokens and enter a new bet?', cycle: true) do |menu|
      menu.choice "Keep playing"
      menu.choice "Cash in"
    end
    if cash_in == "Cash in"
      bet_to_total
      puts
      puts "You now have #{@total_tokens} total tokens."
      bet_tokens
    end
  end

  def bet_to_total
    @total_tokens += @bet 
  end
end