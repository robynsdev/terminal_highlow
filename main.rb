# require_relative 'dispatch'
require "tty-prompt"
require_relative 'lib/views/title'
require_relative 'lib/controllers/title_menu'

module Main
  begin
    puts 
    puts 'Welcome to'
    Views.title
    puts 
    ::Views::Title_menu.menu
  end
end