require_relative '../../main.rb'


module Back_menu

  def back_to_title
    puts "Return to title? (y)"
    return_title = gets.chomp.downcase
    if return_title == 'y'
      Main
    end
  end

  module_function :back_to_title
end