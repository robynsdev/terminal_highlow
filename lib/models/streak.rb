# win streak
class Streak
  attr_reader :streak

  def initialize
    @streak = 0
  end

  # FEATURE 3: Token betting & win streaks 
  # if win, increase win streak, else reset win streak to 0
  def win
    @streak += 1
  end

  def lose
    @streak = 0
  end

  def win_streak
    puts "You have a win streak of #{@streak}."
    puts
  end
end