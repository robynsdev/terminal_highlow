require 'yaml'
require 'tty-table'

class High_score
  def self.token_topfive?(name, total_tokens, streak)
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
      if @top_token[4][1].to_i < total_tokens.to_i
        @top_token[4][0] = name
        @top_token[4][1] = total_tokens
        puts "You got onto the total token high score board!"
        # write @top_token array to file
        File.open("lib/models/token_topfive.txt", "w") do |file|
          file.puts(@top_token)
        end
      end
    end
  end

  def self.token_table
    headers = %w[Player Total_tokens]
    attrs = @ary.sort_by {|n| n[1].to_i }.reverse
    table = TTY::Table.new headers, attrs
    puts table.render(:ascii)
  end

  def self.streak_topfive?(name, total_tokens, streak)
    # read file
    File.open("lib/models/streak_topfive.txt", "r") do |file|
      f = file.readlines.map(&:chomp)
      @ary2 = []
      # put into @ary2 array
      f.each_index do |index|
        @ary2 << [f[index - 1], f[index]] if index % 2 != 0
      end
      # sort by highest to lowest score
      @top_streak = @ary2.sort_by {|n| n[1].to_i }.reverse
      # if current player has high score, replace lowest score entry of @top_streak array
      if @top_streak[4][1].to_i < streak.to_i
        @top_streak[4][0] = name
        @top_streak[4][1] = streak
        puts "You got onto the win streak high score board!"
        # write @top_streak array to file
        File.open("lib/models/streak_topfive.txt", "w") do |file|
          file.puts(@top_streak)
        end
      end
    end
  end

  def self.streak_table
    headers = %w[Player Win_streak]
    attrs = @ary2.sort_by {|n| n[1].to_i }.reverse  
    table = TTY::Table.new headers, attrs
    puts table.render(:ascii)
  end
end