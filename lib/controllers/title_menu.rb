require_relative '../views/how_to_play.rb'
# require_relative '../views/game'

module Views
  module Title_menu

    def self.menu
      title_menu = TTY::Prompt.new
      title_menu.select('') do |menu|
        menu.choice "Start game", 1
        menu.choice "How to play", -> { ::Views::How_to_play.instructions }
        menu.choice "High scores", -> { puts "Nice choice captain!" }
        menu.choice "Quit", -> { exit }
      end
    end
    
    # def self.back
    #   back_main = TTY::Prompt.new
    #   back_main.choice "Back", -> { main }
    # end
    
  end
end
