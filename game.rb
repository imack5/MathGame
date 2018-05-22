
#Where all the game logic is stored
class Game


  #Keeps track of whos turn it is
  class GameManager

    class Turn
      def initialize(players)
        @players = players
      end

      def current_player
        @players.first
      end

      def next_turn
        @players.rotate!
      end

    end

    def initialize
      @player1_score = 0
      @player2_score = 0
      @turns = 0
    end

    def next_turn

    end

    def answered_correctly(player)

    end

  end


  def initialize
    player1 = Player.new("Player1")
    player2 = Player.new("Player2")

    @players = [player1, player2]
    @turn = TurnManager.new(@robots)
  end

  def game_over?
  end

  def winner
  end

  def run
  end

end

#Generates a new question and keeps track of current question and answer
class Question
  def initialize
    @current_question = ""
    @current_answer = ""
  end

  def is_right(answer)
  end

  def new_question
  end

end

#Keeps track of correct guesses and number of lives remaining
class Player

  def initialize(name)
    @lives = 3
  end

  def lives?
  end

  def life_loss
  end

  def is_alive
  end

end

