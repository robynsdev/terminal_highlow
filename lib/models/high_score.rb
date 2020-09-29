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

  def self.table
    headers = %w[Player Win_streak]
    attrs = attribute_rows  
    table = TTY::Table.new headers, attrs
    puts table.render(:ascii)
  end

  def self.attribute_rows
    # File.open("high_score.txt", "r") do |file|
    #   puts file
    # end
    rows = []
    rows << ['Jane', '10']
    rows << ['John', '8']
    rows << ['Mary', '5']
    rows << ['Matthew', '3']
  end



end

High_score.table