require_relative '../views/game'

module Start_game
  def game
    start_game = TTY::Prompt.new.select('Start new game?', cycle: true) do |menu|
      menu.choice "Yes"
      menu.choice "No"
    end
    puts
    if start_game == 'Yes'
      Views.game
    else
      exit
    end
  end

  module_function :game
end