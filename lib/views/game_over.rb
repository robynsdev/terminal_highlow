require_relative '../models/high_score'
require_relative '../controllers/start_game'

module Views
  def game_over(name=nil, total_tokens=0)
    High_score.token_topfive?(name, total_tokens)
    High_score.token_table

    Start_game.game
  end

  module_function :game_over
end

