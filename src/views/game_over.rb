require 'artii'
require_relative '../models/high_score'
require_relative '../controllers/start_game'

module Views
  # FEATURE 4: High score boards
  def game_over(name=nil, total_tokens=0, streak=0)
    # puts "HIGH SCORES".colorize(:magenta)
    a = Artii::Base.new
    puts a.asciify('HIGH SCORES').colorize(:light_green)
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

