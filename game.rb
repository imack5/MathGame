require './Player.rb'
require './Question.rb'

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
    @turn = GameManager.new()
  end

  def game_over?
  end

  def winner
  end

  def run
    newQuestion = QuestionManager.new()
    newQuestion.new_question
    puts newQuestion.current_question
  end

end





