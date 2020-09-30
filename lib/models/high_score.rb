require 'tty-table'

class High_score

  def file_read
    File.open("./high_score.txt", "r") do |file|
      puts file.read
    end
      
  end

  def file_write
    File.open("./high_score.txt", "r") do |file|
      file.write("\n")
    end
  end

  def self.streak_table
    headers = %w[Player Win_streak]
    attrs = streak_rows  
    table = TTY::Table.new headers, attrs
    puts table.render(:ascii)
  end

  def self.streak_rows
    # File.open("high_score.txt", "r") do |file|
    #   puts file
    # end
    rows = []
    rows << ['Jane', '10']
    rows << ['John', '8']
    rows << ['Mary', '5']
    rows << ['Matthew', '3']
  end

  def self.token_table
    headers = %w[Player Total_tokens]
    attrs = token_rows  
    table = TTY::Table.new headers, attrs
    puts table.render(:ascii)
  end

  def self.token_rows
    # File.open("high_score.txt", "r") do |file|
    #   puts file
    # end
    rows = []
    rows << ['Fish', '10']
    rows << ['Asprin', '8']
    rows << ['Chocolate', '5']
    rows << ['Cake', '3']
  end


end

High_score.streak_table
High_score.token_table