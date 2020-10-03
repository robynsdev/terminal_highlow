# win streak
class Streak
  attr_reader :streak

  def initialize
    @streak = 0
  end

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