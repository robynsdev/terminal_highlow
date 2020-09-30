class Name
  def initialize
    @name = nil
  end

  def get_name
    puts "Hi, what's your name?"
    @name = gets.chomp.capitalize
    puts
    puts "Hi #{@name}. Let's play high low!"
    puts
  end

end