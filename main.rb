# require_relative 'dispatch'
require "tty-prompt"
require_relative 'lib/views/title'
require_relative 'dispatch'

module Main
  begin
    puts 
    puts 'Welcome to'
    Views.title
    puts 
    choice = TTY::Prompt.new.select('', cycle: true) do |menu|
      menu.choice "Start game"
      menu.choice "How to play"
      menu.choice "High scores"
      menu.choice "Quit"
    end
    dispatch(choice)
  end
end