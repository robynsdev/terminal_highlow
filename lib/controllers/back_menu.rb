require_relative '../../main.rb'


module Back_menu
  def self.back
    back_main = TTY::Prompt.new
    back_main.choice "Back", -> { main }
  end
end