require 'yaml'

class High_score
  def initialize player, score
    @player = player
    @score = score
  end
end

# puts Score.new(2, 2).to_yaml

File.open("lib/tmp/test.yml", "w") {|f| f.write(Score.new(2, 2).to_yaml) }


parsed = begin
  YAML.load(File.open("lib/tmp/test.yml"))
rescue ArgumentError => e
  puts "Could not parse YAML: #{e.message}"
end