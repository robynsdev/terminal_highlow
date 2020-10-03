
require_relative '../views/game'
require_relative '../views/how_to_play'
require_relative '../views/game_over'

module Menu_controller

  def start_game
    Views.game
  end
  
  def how_to_play
    Views.how_to_play
  end

  def high_scores
    Views.game_over
  end

  def quit
    exit
  end

  module_function :start_game, :how_to_play, :high_scores, :quit
end
