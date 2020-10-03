require_relative '../models/high_score'

module Views
  def game_over(name=nil, total_tokens=0)
    puts "Game over"
    p "total tokens: #{total_tokens}"
    High_score.token_topfive?(name, total_tokens)
    High_score.token_table
  end

  module_function :game_over
end

