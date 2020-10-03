require 'yaml'
require 'tty-table'
require_relative 'get_name'
require_relative 'token'

class High_score

  def self.streak_table
    headers = %w[Player Win_streak]
    attrs = streak_rows  
    table = TTY::Table.new headers, attrs
    puts table.render(:ascii)
  end

  def self.token_table
    headers = %w[Player Total_tokens]
    attrs = @top_token
    table = TTY::Table.new headers, attrs
    puts table.render(:ascii)
  end

  def self.token_topfive?(name, total_tokens)
    # read file
    File.open("lib/models/token_topfive.txt", "r") do |file|
      f = file.readlines.map(&:chomp)
      @ary = []
      # put into @ary array
      f.each_index do |index|
        @ary << [f[index - 1], f[index]] if index % 2 != 0
      end
      # sort by highest to lowest score
      @top_token = @ary.sort_by {|n| n[1].to_i }.reverse
      # if current player has high score, replace lowest score entry of @top_token array
      p total_tokens
      if @top_token[4][1].to_i < total_tokens.to_i
        @top_token[4][0] = name
        @top_token[4][1] = total_tokens
        puts "You got into the top 5 for total tokens!"
        # write @top_token array to file
        File.open("lib/models/token_topfive.txt", "w") do |file|
          file.puts(@top_token)
        end
      end
    end

    def self.file_write
      File.open("lib/models/token_topfive.txt", "w") do |file|
        file.puts(@top_token)
      end 
    end
  
  end
end

# name = Name.new
# token = Token.new
# High_score.streak_rows
# High_score.file_write
# High_score.token_rows
# High_score.token_table
# High_score.file_read

# player2
# 10
# player3
# 200
# player4
# 50
# player5
# 100
# player6
# 40
