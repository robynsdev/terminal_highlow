require "tty-prompt"

class Name
  attr_reader :name

  def initialize
    @name = nil
  end

  def get_name
    name = TTY::Prompt.new.ask("Hi, what's your name?") do |q|
      q.validate(/^[A-Za-z]{1,20}$/, "Enter an alphabet only name which is less than 20 characters long.")
      q.modify :capitalize, :trim
    end
    @name = name
    puts "Hi #{@name}. Let's play high low!"
    puts
  end

end