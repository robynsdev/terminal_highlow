class Name
  attr_reader :name

  def initialize
    @name = nil
  end

  def get_name
    puts
    puts "Hi, what's your name?"
    @name = gets.chomp.capitalize
    puts
    puts "Hi #{@name}. Let's play high low!"
    puts
  end

end