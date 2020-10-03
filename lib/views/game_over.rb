require_relative '../models/high_score'
require_relative '../controllers/start_game'

module Views
  def game_over(name=nil, total_tokens=0, streak=0)
    High_score.token_topfive?(name, total_tokens, streak)
    High_score.token_table
    puts
    High_score.streak_topfive?(name, total_tokens, streak)
    High_score.streak_table
    puts
    Start_game.game
  end

  module_function :game_over
end

