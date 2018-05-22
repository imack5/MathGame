#Generates a new question and keeps track of current question and answer
class QuestionManager
  def initialize
    @current_question = ""
    @current_answer = ""
  end

  attr_reader :current_question

  def is_right(answer)
    answer == @current_answer
  end

  def new_question
    first_number = rand(20)
    second_number = rand(20)
    @current_question = "What does #{first_number} plus #{second_number} equal?"
    @current_answer = (first_number + second_number).to_s
  end

end