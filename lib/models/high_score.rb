require 'yaml'
require 'tty-table'
require_relative 'get_name'
require_relative 'token'

class High_score

  def self.file_read
    File.open("lib/models/high_score.yml", "r") do |file|
      file.each do |line|
        puts line
      end
    end
  end


  def self.streak_table
    headers = %w[Player Win_streak]
    attrs = streak_rows  
    table = TTY::Table.new headers, attrs
    puts table.render(:ascii)
  end

  def self.streak_rows
    rows = []
    rows << ['Jane', '10']
    rows << ['poop', '13']
    rows << ['John', '8']
    rows << ['Mf', '5']
    rows << ['Matthew', '3']
    puts rows
    p rows
  end

  def self.token_table
    headers = %w[Player Total_tokens]
    attrs = @top_token
    table = TTY::Table.new headers, attrs
    puts table.render(:ascii)
  end

  def self.token_topfive?
    # read file
    File.open("lib/models/high_score.txt", "r") do |file|
      f = file.readlines.map(&:chomp)
      @ary = []
      # put into @ary array
      f.each_index do |index|
        @ary << [f[index - 1], f[index]] if index % 2 != 0
      end
      # sort by highest to lowest score
      @top_token = @ary.sort_by {|n| n[1].to_i }.reverse
      # if current player has high score, replace lowest score entry of @top_token array
      if @top_token[4][1].to_i < token.total_tokens.to_i
        @top_token[4][0] = name.name
        @top_token[4][1] = token.total_tokens
        puts "You got into the top 5 for total tokens!"
        # write @top_token array to file
        File.open("lib/models/high_score.txt", "w") do |file|
          file.puts(@top_token)
        end
      end
    end

    def self.file_write
      # player_score = [name.name, token.total_tokens]
      File.open("lib/models/high_score.txt", "w") do |file|
        # file << name.name
        # file << token.total_tokens
        # f = ["player", "10"]
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
