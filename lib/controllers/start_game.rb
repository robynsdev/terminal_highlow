require_relative '../views/game'

module Start_game
  def game
    puts "Start new game? (y/n)"
    start_game = gets.chomp.downcase
    puts
    if start_game == 'y'
      Views.game
    else
      exit
    end
  end

  module_function :game
end