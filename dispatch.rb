require_relative 'lib/controllers/menu_controller'

def dispatch(cmd)
  case cmd
  when "Start game"
    Menu_controller.start_game
  when "How to play"
    Menu_controller.how_to_play
  when "High scores"
    Menu_controller.high_scores
  when "Quit"
    Menu_controller.quit
  end
end