#Keeps track of correct guesses and number of lives remaining
class Player

  def initialize(name)
    @lives = 1
    @name = name
    @score = [0, 0];
  end

  attr_accessor :lives, :name

  def life_loss
    @lives = @lives - 1
  end

  def is_alive
    @lives > 0
  end

  def wrong_answer
    @score[1] = @score[1] + 1
    @lives = @lives - 1
  end

  def right_answer
    @score[0] = @score[0] + 1
    @score[1] = @score[1] + 1
  end

  def score
    @score
  end



end